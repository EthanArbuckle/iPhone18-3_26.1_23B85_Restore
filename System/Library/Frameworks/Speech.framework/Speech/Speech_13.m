uint64_t Transcriber.__allocating_init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_16_2();
  Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  return v0;
}

void Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v3 = v0;
  v87 = v4;
  v6 = v5;
  v83 = v7;
  v9 = v8;
  v11 = v10;
  v89 = v12;
  v90 = v3;
  v79 = *v3;
  v13 = sub_1AC79FB18();
  v14 = OUTLINED_FUNCTION_40(v13);
  v85 = v15;
  v86 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v84 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D110, &qword_1AC7AD738);
  OUTLINED_FUNCTION_167(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_49_1();
  v24 = type metadata accessor for Transcriber.ModelOptions();
  v25 = OUTLINED_FUNCTION_80(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  v29 = OUTLINED_FUNCTION_167(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v82 = v32 - v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v72 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v72 - v38;
  v81 = *v11;
  v88 = v9;
  OUTLINED_FUNCTION_50_7();
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v24) == 1)
  {
    sub_1AC5C720C(v2, &qword_1EB56D110, &qword_1AC7AD738);
    v40 = type metadata accessor for TranscriberCommon.ModelOptions(0);
    v41 = v37;
    v42 = 1;
  }

  else
  {
    v78 = type metadata accessor for Transcriber.ModelOptions;
    sub_1AC6D7FEC();
    sub_1AC5C6E6C();
    v43 = v24[6];
    v76 = *(v1 + v24[5]);
    v44 = *(v1 + v43 + 8);
    v77 = *(v1 + v43);
    v80 = v6;
    v45 = v24[7];
    v46 = type metadata accessor for TranscriberCommon.ModelOptions(0);
    v47 = v46[7];
    sub_1AC5C6E6C();
    v48 = *(v1 + v24[9]);
    v49 = v24[13];
    v50 = *(v1 + v24[12]);
    v51 = (v1 + v24[8]);
    v52 = v51[1];
    v74 = *v51;
    LODWORD(v51) = *(v1 + v24[11]);
    v72 = *(v1 + v24[10]);
    v73 = v51;
    v53 = v24[14];
    v54 = *(v1 + v24[15]);
    v75 = *(v1 + v49);
    v55 = *(v1 + v53);
    v56 = v55;

    sub_1AC6D8044(v1, v78);
    v37[v46[5]] = v76;
    v57 = &v37[v46[6]];
    *v57 = v77;
    *(v57 + 1) = v44;
    *&v37[v46[9]] = v48;
    v58 = &v37[v46[8]];
    *v58 = v74;
    *(v58 + 1) = v52;
    v6 = v80;
    v59 = v73;
    v37[v46[10]] = v72;
    v37[v46[11]] = v59;
    *&v37[v46[12]] = v50;
    *&v37[v46[15]] = v54;
    v37[v46[13]] = v75;
    *&v37[v46[14]] = v55;
    v41 = v37;
    v42 = 0;
    v40 = v46;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  sub_1AC637E08();
  sub_1AC6D32F8(v83, sub_1AC63129C, sub_1AC6C2CA0);
  v61 = v60;

  sub_1AC6090E4(v61);
  sub_1AC6D32F8(v6, sub_1AC63175C, sub_1AC6C2CA0);
  v63 = v62;

  sub_1AC6091C8(v63);
  v64 = v85;
  v65 = v89;
  v66 = v86;
  (*(v85 + 16))(v84, v89, v86);
  v91 = v81;
  sub_1AC5C6E6C();
  v67 = type metadata accessor for TranscriberCommon(0);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  sub_1AC7489A0();
  v71 = v70;
  sub_1AC5C720C(v88, &qword_1EB56D110, &qword_1AC7AD738);
  (*(v64 + 8))(v65, v66);
  sub_1AC5C720C(v39, &qword_1EB56C318, &unk_1AC7A8790);
  v90[2] = v71;
  OUTLINED_FUNCTION_105();
}

uint64_t type metadata accessor for Transcriber.ModelOptions()
{
  result = qword_1EB56B2D0;
  if (!qword_1EB56B2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Transcriber.taskHint.getter(_BYTE *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint);
  if (v2 == 16)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }
}

void Transcriber.modelOptions.getter()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_602();
  v8 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  v9 = OUTLINED_FUNCTION_80(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  v15 = *(v0 + 16);
  OUTLINED_FUNCTION_51();
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
  {
    sub_1AC5C720C(v1, &qword_1EB56C318, &unk_1AC7A8790);
    v16 = type metadata accessor for Transcriber.ModelOptions();
    v17 = v3;
    v18 = 1;
  }

  else
  {
    sub_1AC6D7FEC();
    sub_1AC5C6E6C();
    v19 = v8[6];
    v37 = *(v14 + v8[5]);
    v20 = *(v14 + v19 + 8);
    v38 = *(v14 + v19);
    v21 = v8[7];
    v22 = type metadata accessor for Transcriber.ModelOptions();
    v23 = v22[7];
    sub_1AC5C6E6C();
    v24 = *(v14 + v8[9]);
    v25 = v8[13];
    v26 = *(v14 + v8[12]);
    v27 = (v14 + v8[8]);
    v28 = *(v14 + v8[10]);
    v29 = *(v14 + v8[11]);
    v30 = *v27;
    v31 = v27[1];
    v32 = *(v14 + v8[15]);
    v35 = v29;
    v36 = *(v14 + v25);

    sub_1AC6D8044(v14, type metadata accessor for TranscriberCommon.ModelOptions);
    *(v3 + v22[5]) = v37;
    v33 = (v3 + v22[6]);
    *v33 = v38;
    v33[1] = v20;
    *(v3 + v22[9]) = v24;
    v34 = (v3 + v22[8]);
    *v34 = v30;
    v34[1] = v31;
    *(v3 + v22[10]) = v28;
    *(v3 + v22[11]) = v35;
    *(v3 + v22[12]) = v26;
    *(v3 + v22[15]) = v32;
    *(v3 + v22[13]) = v36;
    *(v3 + v22[14]) = 0;
    v17 = v3;
    v18 = 0;
    v16 = v22;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
  OUTLINED_FUNCTION_105();
}

uint64_t Transcriber.ModelOptions.init(supplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:speechProfileContainers:enableFullPayloadCorrection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, char a13)
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v15 = type metadata accessor for Transcriber.ModelOptions();
  OUTLINED_FUNCTION_2_16(v15);
  OUTLINED_FUNCTION_17_7();
  result = sub_1AC637E08();
  *(v14 + v13[9]) = a6;
  v17 = (v14 + v13[8]);
  *v17 = a8;
  v17[1] = a9;
  *(v14 + v13[10]) = a10;
  *(v14 + v13[11]) = a11;
  *(v14 + v13[12]) = a7;
  *(v14 + v13[15]) = a12;
  *(v14 + v13[13]) = a13;
  *(v14 + v13[14]) = 0;
  return result;
}

uint64_t sub_1AC6D43C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_4();
  v16 = v15;
  v42 = v17;
  v19 = *(*(v14 + 16) + *v18);
  v20 = *(v19 + 56);
  v21 = *(v19 + 32);
  OUTLINED_FUNCTION_117_0();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v30 >= v26)
    {
      break;
    }

    v24 = *(v19 + 56 + 8 * v30);
    ++v28;
    if (v24)
    {
      v28 = v30;
      do
      {
LABEL_6:
        v31 = *(*(v19 + 48) + (__clz(__rbit64(v24)) | (v28 << 6)));
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = v16(0, *(v29 + 16) + 1, 1, v29);
          v29 = result;
        }

        v33 = *(v29 + 16);
        v32 = *(v29 + 24);
        if (v33 >= v32 >> 1)
        {
          result = v16(v32 > 1, v33 + 1, 1, v29);
          v29 = result;
        }

        v24 &= v24 - 1;
        *(v29 + 16) = v33 + 1;
        *(v29 + v33 + 32) = v31;
      }

      while (v24);
    }
  }

  OUTLINED_FUNCTION_14();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v42, a11, a12, a13, a14);
}

uint64_t static Transcriber.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for TranscriberCommon(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC748000();
}

uint64_t static Transcriber.supportedLocale(equivalentTo:)()
{
  type metadata accessor for TranscriberCommon(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC740D54();
}

uint64_t static Transcriber.installedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for TranscriberCommon(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC74809C();
}

uint64_t sub_1AC6D4720()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC741794();
}

uint64_t Transcriber.requestResultAtEndpoints(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D47B8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_109_1(v2);

  return sub_1AC742780(v3);
}

uint64_t sub_1AC6D4858()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7429DC();
}

uint64_t sub_1AC6D48F0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC742BD0();
}

uint64_t Transcriber.setLeftContextText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D498C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 32) + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_45_1(v2);

  return sub_1AC742DC4(v3, v4);
}

uint64_t Transcriber.setRightContext(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D4A30()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 32) + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_45_1(v2);

  return sub_1AC742FBC(v3, v4);
}

uint64_t Transcriber.setSelectedText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D4AD4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 32) + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_45_1(v2);

  return sub_1AC743210(v3, v4);
}

uint64_t Transcriber.results.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C330, &qword_1AC7A8800);
  OUTLINED_FUNCTION_40(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_1();
  v5 = *(v0 + 16);
  v6 = OUTLINED_FUNCTION_77_0();
  v7(v6);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v8, &qword_1EB56C330, &qword_1AC7A8800);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

void static Transcriber.Result.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v10 = *a1;
  v11 = a1[1];
  v2 = *(a1 + 6);
  v3 = *(a1 + 7);
  v5 = *(a1 + 8);
  v4 = *(a1 + 9);
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v9 = *(a2 + 8);
  v8 = *(a2 + 9);
  if (sub_1AC7A0548())
  {
    OUTLINED_FUNCTION_51();
    if (sub_1AC7A06A8())
    {
      OUTLINED_FUNCTION_39();

      sub_1AC6285F8();
    }
  }
}

void Transcriber.Result.hash(into:)()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  sub_1AC7A0568();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_50_7();

  sub_1AC6336F0();
}

uint64_t Transcriber.Result.hashValue.getter()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  OUTLINED_FUNCTION_85_1();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC6336F0();
  return sub_1AC7A0EC8();
}

double sub_1AC6D4E88()
{
  v0 = Transcriber.Result.range.getter(v10);
  *&result = OUTLINED_FUNCTION_21_0(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1], v8).n128_u64[0];
  return result;
}

uint64_t Transcriber.multisegmentResults.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_40(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_1();
  v5 = *(v0 + 16);
  v6 = OUTLINED_FUNCTION_77_0();
  v7(v6);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v8, &qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t Transcriber.muxMultisegmentResults.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_1();
  v5 = *(v0 + 16);
  v6 = OUTLINED_FUNCTION_77_0();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D118, &qword_1AC7AD7C0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_51();
  sub_1AC5C8BE0(v8, v9, v10);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC6D50E8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC6D510C, 0, 0);
}

void sub_1AC6D510C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D188, &qword_1AC7ADD98);
  sub_1AC7A0BA8();
  v2 = 0;
  v3 = *(v1 + 64);
  v47 = v1 + 64;
  v49 = v1;
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_117_0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v48 = v11 + 64;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_8:
      v15 = v12 | (v2 << 6);
      v16 = (*(v49 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = 33 * v15;
      v20 = *(v49 + 56) + 264 * v15;
      v50 = *v20;
      v51 = *(v20 + 16);
      v52 = *(v20 + 32);
      v21 = *(v20 + 48);
      v22 = *(v20 + 64);
      v23 = *(v20 + 72);
      v25 = *(v20 + 80);
      v24 = *(v20 + 88);
      v26 = *(v20 + 96);
      v27 = *(v20 + 104);
      v28 = *(v20 + 160);
      v29 = *(v20 + 168);
      v30 = *(v20 + 200);
      v31 = *(v20 + 224);
      v32 = *(v20 + 232);
      *&v53[3] = *(v20 + 108);
      *&v53[19] = *(v20 + 124);
      *&v53[35] = *(v20 + 140);
      v54 = *(v20 + 192);
      v55 = *(v20 + 256);
      v33 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v34 = *(v48 + v33) | (1 << v15);
      v35 = (v5[6] + 16 * v15);
      v36 = *(v20 + 240);
      v37 = *(v20 + 208);
      v38 = *(v20 + 176);
      v39 = *(v20 + 56);
      *(v48 + v33) = v34;
      *v35 = v18;
      v35[1] = v17;
      v40 = v5[7] + 8 * v19;
      *v40 = v50;
      *(v40 + 16) = v51;
      *(v40 + 32) = v52;
      *(v40 + 48) = v21;
      *(v40 + 56) = v39;
      *(v40 + 64) = v22;
      *(v40 + 72) = v23;
      *(v40 + 80) = v25;
      *(v40 + 88) = v24;
      *(v40 + 96) = v26;
      *(v40 + 104) = v27;
      *(v40 + 152) = *&v53[47];
      *(v40 + 137) = *&v53[32];
      *(v40 + 121) = *&v53[16];
      *(v40 + 105) = *v53;
      *(v40 + 160) = v28;
      *(v40 + 168) = v29;
      *(v40 + 176) = v38;
      *(v40 + 192) = v54;
      *(v40 + 200) = v30;
      *(v40 + 208) = v37;
      *(v40 + 224) = v31;
      *(v40 + 232) = v32;
      *(v40 + 240) = v36;
      *(v40 + 256) = v55;
      v41 = v5[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        break;
      }

      v5[2] = v43;
      v44 = v5;

      sub_1AC63482C(v28);

      v5 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v13 = v2;
    while (1)
    {
      v2 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v2 >= v10)
      {
        break;
      }

      v14 = *(v47 + 8 * v2);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_8;
      }
    }

    **(v46 + 16) = v5;
    OUTLINED_FUNCTION_44();

    v45();
  }
}

uint64_t static Transcriber.MultisegmentResult.split(result:)()
{
  OUTLINED_FUNCTION_50_0();
  memcpy(__dst, v2, 0x101uLL);
  return sub_1AC62C474(v1, v0, __dst);
}

uint64_t static Transcriber.MultisegmentResult.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v80 = *a1;
  v81 = v2;
  v82 = a1[2];
  v3 = *(a1 + 6);
  v4 = *(a1 + 7);
  v6 = *(a1 + 8);
  v5 = *(a1 + 9);
  v68 = *(a1 + 11);
  v69 = *(a1 + 10);
  v67 = *(a1 + 12);
  v65 = *(a1 + 104);
  v7 = *(a1 + 124);
  v74 = *(a1 + 108);
  v75 = v7;
  v76 = *(a1 + 140);
  v61 = *(a1 + 20);
  v62 = *(a1 + 21);
  v63 = *(a1 + 22);
  v8 = *(a1 + 23);
  v57 = *(a1 + 192);
  v53 = *(a1 + 216);
  v54 = *(a1 + 200);
  v52 = *(a1 + 232);
  v51 = *(a1 + 30);
  v43 = *(a1 + 31);
  v45 = *(a1 + 256);
  v9 = a2[1];
  v83 = *a2;
  v84 = v9;
  v85 = a2[2];
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v15 = *(a2 + 10);
  v14 = *(a2 + 11);
  v66 = *(a2 + 12);
  v64 = *(a2 + 104);
  v16 = *(a2 + 140);
  v17 = *(a2 + 108);
  v78 = *(a2 + 124);
  v79 = v16;
  v77 = v17;
  v58 = *(a2 + 20);
  v59 = *(a2 + 21);
  v60 = *(a2 + 22);
  v18 = *(a2 + 23);
  v56 = *(a2 + 192);
  v55 = *(a2 + 26);
  v46 = *(a2 + 25);
  v47 = *(a2 + 27);
  v48 = *(a2 + 28);
  v49 = *(a2 + 232);
  v50 = *(a2 + 30);
  v42 = *(a2 + 31);
  v44 = *(a2 + 256);
  if ((sub_1AC7A0548() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_51();
  if ((sub_1AC7A06A8() & 1) == 0)
  {
    return 0;
  }

  sub_1AC6285F8();
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628640();
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628938();
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628F50();
  v23 = v22;
  result = 0;
  if ((v23 & 1) != 0 && v65 == v64)
  {
    if ((sub_1AC7A0548() & 1) == 0)
    {
      return 0;
    }

    if (v61)
    {
      if (v58)
      {
        v25 = OUTLINED_FUNCTION_15();
        sub_1AC63482C(v25);
        v26 = OUTLINED_FUNCTION_16_2();
        sub_1AC63482C(v26);
        v27 = OUTLINED_FUNCTION_15();
        sub_1AC63482C(v27);
        sub_1AC6305D8();
        if (v28)
        {
          sub_1AC6306C8(v62, v59);
          v30 = v29;
          v31 = OUTLINED_FUNCTION_16_2();
          sub_1AC63486C(v31);

          v32 = OUTLINED_FUNCTION_15();
          sub_1AC63486C(v32);
          result = 0;
          if ((v30 & 1) == 0 || v63 != v60)
          {
            return result;
          }

LABEL_24:
          if (v57)
          {
            if (!v56)
            {
              return 0;
            }
          }

          else
          {
            v39 = v56;
            if (v8 != v18)
            {
              v39 = 1;
            }

            if (v39)
            {
              return 0;
            }
          }

          if (*(&v54 + 1))
          {
            v72[0] = v54;
            v72[1] = v53;
            v73 = v52;
            if (v55)
            {
              v70[0] = v46;
              v70[1] = v55;
              v70[2] = v47;
              v70[3] = v48;
              v71 = v49 & 1;
              v40 = static TranscriptionLatticeMitigatorResult.== infix(_:_:)(v72, v70);
              swift_bridgeObjectRetain_n();

              result = 0;
              if ((v40 & 1) == 0 || v51 != v50)
              {
                return result;
              }

LABEL_38:
              if (v45)
              {
                if (v44)
                {
                  return 1;
                }
              }

              else
              {
                v41 = v44;
                if (v43 != v42)
                {
                  v41 = 1;
                }

                if ((v41 & 1) == 0)
                {
                  return 1;
                }
              }

              return 0;
            }
          }

          else if (!v55)
          {

            if (v51 != v50)
            {
              return 0;
            }

            goto LABEL_38;
          }

          return 0;
        }

        v38 = OUTLINED_FUNCTION_16_2();
        sub_1AC63486C(v38);

        v37 = OUTLINED_FUNCTION_15();
LABEL_20:
        sub_1AC63486C(v37);
        return 0;
      }

      v34 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v34);
      sub_1AC63482C(0);
      v35 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v35);
    }

    else
    {
      sub_1AC63482C(0);
      if (!v58)
      {
        sub_1AC63482C(0);
        sub_1AC63486C(0);
        goto LABEL_24;
      }

      v33 = OUTLINED_FUNCTION_16_2();
      sub_1AC63482C(v33);
    }

    v36 = OUTLINED_FUNCTION_15();
    sub_1AC63486C(v36);
    v37 = OUTLINED_FUNCTION_16_2();
    goto LABEL_20;
  }

  return result;
}

uint64_t Transcriber.MultisegmentResult.hash(into:)(const void *a1)
{
  v30 = *v1;
  v31 = v1[1];
  v32 = v1[2];
  v3 = *(v1 + 6);
  v4 = *(v1 + 7);
  v6 = *(v1 + 8);
  v5 = *(v1 + 9);
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v22 = *(v1 + 104);
  v28 = *(v1 + 124);
  v29 = *(v1 + 140);
  v27 = *(v1 + 108);
  v10 = *(v1 + 20);
  v16 = *(v1 + 21);
  v17 = *(v1 + 22);
  v23 = *(v1 + 192);
  v18 = *(v1 + 25);
  v19 = *(v1 + 27);
  v20 = *(v1 + 28);
  v21 = *(v1 + 232);
  v24 = *(v1 + 26);
  v25 = *(v1 + 30);
  v14 = *(v1 + 23);
  v15 = *(v1 + 31);
  v26 = *(v1 + 256);
  sub_1AC7A0568();
  OUTLINED_FUNCTION_17_7();
  sub_1AC7A06E8();
  sub_1AC6336F0();
  sub_1AC633C28();
  OUTLINED_FUNCTION_50_7();
  sub_1AC6337D8();
  sub_1AC633790();
  MEMORY[0x1B26E9A40](v22);
  sub_1AC7A0568();
  if (v10)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC63459C(a1, v10);
    sub_1AC634414(a1, v16);
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1B26E9A70](v11);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (v23)
  {
    OUTLINED_FUNCTION_80_1();
    if (v24)
    {
LABEL_9:
      OUTLINED_FUNCTION_83();

      TranscriptionLatticeMitigatorResult.hash(into:)();

      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B26E9A70](v12);
    if (v24)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_80_1();
LABEL_15:
  MEMORY[0x1B26E9A40](v25);
  if (v26)
  {
    return OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_83();
  return MEMORY[0x1B26E9A40](v15);
}

uint64_t Transcriber.MultisegmentResult.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  Transcriber.MultisegmentResult.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

double sub_1AC6D5B28()
{
  v0 = Transcriber.MultisegmentResult.range.getter(v10);
  *&result = OUTLINED_FUNCTION_21_0(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1], v8).n128_u64[0];
  return result;
}

uint64_t sub_1AC6D5B70()
{
  sub_1AC7A0E78();
  Transcriber.MultisegmentResult.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D5BC0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC748138();
}

uint64_t sub_1AC6D5C44()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  OUTLINED_FUNCTION_82();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t Transcriber.ModelOptions.geoLMRegionID.getter()
{
  v1 = (v0 + *(type metadata accessor for Transcriber.ModelOptions() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t Transcriber.ModelOptions.taskForMemoryLock.getter()
{
  v1 = (v0 + *(type metadata accessor for Transcriber.ModelOptions() + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t Transcriber.ModelOptions.speechProfiles.getter()
{
  v1 = *(v0 + *(type metadata accessor for Transcriber.ModelOptions() + 36));
}

uint64_t Transcriber.ModelOptions.userIdMask.getter()
{
  v1 = *(v0 + *(type metadata accessor for Transcriber.ModelOptions() + 48));
}

void *Transcriber.ModelOptions.languageModelCustomizationConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for Transcriber.ModelOptions() + 56));
  v2 = v1;
  return v1;
}

uint64_t Transcriber.ModelOptions.speechProfileContainers.getter()
{
  v1 = *(v0 + *(type metadata accessor for Transcriber.ModelOptions() + 60));
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:speechProfileContainers:enableFullPayloadCorrection:languageModelCustomizationConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13)
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v15 = type metadata accessor for Transcriber.ModelOptions();
  OUTLINED_FUNCTION_2_16(v15);
  OUTLINED_FUNCTION_17_7();
  v16 = sub_1AC637E08();
  OUTLINED_FUNCTION_32_7(v16, v17, v18, v19, v20, v21, v22, v23, v36, v39, a6);
  *v24 = v25;
  v24[1] = a9;
  *(v14 + *(v13 + 40)) = a10;
  OUTLINED_FUNCTION_22_6(v26, v27, v28, v29, v30, v31, v32, v33, v37, v40, v42);
  OUTLINED_FUNCTION_41_7(v34, v38, v41, v44, v45);
  *(v14 + v35) = a12;
  *(v14 + *(v13 + 56)) = a13;
}

void static Transcriber.ModelOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v5 = sub_1AC79F7F8();
  v6 = OUTLINED_FUNCTION_40(v5);
  v92 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v11 = OUTLINED_FUNCTION_167(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v89 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v89 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  v20 = OUTLINED_FUNCTION_80(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v90 = v23 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v89 - v27;
  v29 = *(v26 + 48);
  v91 = v4;
  sub_1AC5C6E6C();
  v30 = v2;
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(v28);
  if (v31)
  {
    OUTLINED_FUNCTION_14_7(&v28[v29]);
    if (v31)
    {
      sub_1AC5C720C(v28, &qword_1EB56BB68, &qword_1AC7A8490);
      goto LABEL_12;
    }

LABEL_9:
    v32 = v28;
LABEL_10:
    sub_1AC5C720C(v32, &qword_1EB56C320, &qword_1AC7A87A0);
    goto LABEL_13;
  }

  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(&v28[v29]);
  if (v31)
  {
    (*(v92 + 8))(v18, v5);
    goto LABEL_9;
  }

  v33 = v92;
  (*(v92 + 32))(v0, &v28[v29], v5);
  OUTLINED_FUNCTION_1_14();
  sub_1AC6D84E0(v34, 255, v35);
  v36 = sub_1AC79FED8();
  v37 = *(v33 + 8);
  v37(v0, v5);
  v37(v18, v5);
  sub_1AC5C720C(v28, &qword_1EB56BB68, &qword_1AC7A8490);
  if ((v36 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_12:
  v38 = type metadata accessor for Transcriber.ModelOptions();
  v39 = v91;
  if (*(v91 + *(v38 + 20)) != *(v30 + *(v38 + 20)))
  {
    goto LABEL_13;
  }

  v40 = v38;
  v41 = v30;
  v42 = *(v38 + 24);
  v43 = (v91 + v42);
  v44 = *(v91 + v42 + 8);
  v45 = (v30 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_13;
    }

    v47 = *v43 == *v45 && v44 == v46;
    if (!v47 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v46)
  {
    goto LABEL_13;
  }

  v48 = v40[7];
  v49 = *(v19 + 48);
  v50 = v90;
  sub_1AC5C6E6C();
  v51 = v50;
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(v50);
  if (!v31)
  {
    v52 = v89;
    sub_1AC5C6E6C();
    OUTLINED_FUNCTION_14_7(v50 + v49);
    if (!v53)
    {
      v57 = v92;
      (*(v92 + 32))(v0, v51 + v49, v5);
      OUTLINED_FUNCTION_1_14();
      sub_1AC6D84E0(v58, 255, v59);
      v60 = v52;
      v61 = sub_1AC79FED8();
      v62 = *(v57 + 8);
      v62(v0, v5);
      v62(v60, v5);
      sub_1AC5C720C(v51, &qword_1EB56BB68, &qword_1AC7A8490);
      if ((v61 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }

    v54 = *(v92 + 8);
    v55 = OUTLINED_FUNCTION_39();
    v56(v55);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_14_7(v50 + v49);
  if (!v31)
  {
LABEL_31:
    v32 = v50;
    goto LABEL_10;
  }

  sub_1AC5C720C(v50, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_33:
  v63 = v40[8];
  v64 = (v39 + v63);
  v65 = *(v39 + v63 + 8);
  v66 = (v41 + v63);
  v67 = v66[1];
  if (v65)
  {
    if (!v67)
    {
      goto LABEL_13;
    }

    v68 = *v64 == *v66 && v65 == v67;
    if (!v68 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v67)
  {
    goto LABEL_13;
  }

  v69 = v40[9];
  v70 = *(v39 + v69);
  v71 = *(v41 + v69);
  sub_1AC6290FC();
  if (v72)
  {
    OUTLINED_FUNCTION_39_6(v40[10]);
    if (v31)
    {
      OUTLINED_FUNCTION_39_6(v40[11]);
      if (v31)
      {
        v73 = v40[12];
        v74 = *(v39 + v73);
        v75 = *(v41 + v73);
        if (v74)
        {
          if (!v75)
          {
            goto LABEL_13;
          }

          v76 = *(v41 + v73);

          sub_1AC630858(v74, v75);
          v78 = v77;

          if ((v78 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (v75)
        {
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_39_6(v40[13]);
        if (!v31)
        {
          goto LABEL_13;
        }

        v79 = v40[14];
        v80 = *(v39 + v79);
        v81 = *(v41 + v79);
        if (v80)
        {
          if (!v81)
          {
            goto LABEL_13;
          }

          sub_1AC6D809C();
          v82 = v81;
          v83 = v80;
          v84 = sub_1AC7A0758();

          if ((v84 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (v81)
        {
          goto LABEL_13;
        }

        v85 = v40[15];
        v86 = *(v91 + v85);
        v87 = *(v41 + v85);
        if (v86 && v87)
        {
          v88 = *(v41 + v85);

          sub_1AC629308(v86, v87);
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_105();
}

void Transcriber.ModelOptions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_1AC79F7F8();
  v27 = OUTLINED_FUNCTION_40(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v36 = OUTLINED_FUNCTION_167(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &a9 - v43;
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v44, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    (*(v29 + 32))(v34, v44, v26);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_1_14();
    sub_1AC6D84E0(v45, 255, v46);
    OUTLINED_FUNCTION_42_6();
    sub_1AC79FE58();
    (*(v29 + 8))(v34, v26);
  }

  v47 = type metadata accessor for Transcriber.ModelOptions();
  v48 = *(v23 + v47[5]);
  sub_1AC7A0E98();
  v49 = (v23 + v47[6]);
  if (v49[1])
  {
    v50 = *v49;
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v51 = v47[7];
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v41, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    (*(v29 + 32))(v34, v41, v26);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_1_14();
    sub_1AC6D84E0(v52, 255, v53);
    OUTLINED_FUNCTION_42_6();
    sub_1AC79FE58();
    (*(v29 + 8))(v34, v26);
  }

  v54 = (v23 + v47[8]);
  if (v54[1])
  {
    v55 = *v54;
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_50_7();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v56 = *(v23 + v47[9]);
  sub_1AC633F38();
  v57 = *(v23 + v47[10]);
  sub_1AC7A0E98();
  v58 = *(v23 + v47[11]);
  sub_1AC7A0E98();
  v59 = *(v23 + v47[12]);
  if (v59)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC6346E0(v25, v59);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v60 = *(v23 + v47[13]);
  sub_1AC7A0E98();
  v61 = *(v23 + v47[14]);
  if (v61)
  {
    OUTLINED_FUNCTION_83();
    v62 = v61;
    sub_1AC7A0768();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (*(v23 + v47[15]))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC633E98();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_105();
}

uint64_t Transcriber.ModelOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  Transcriber.ModelOptions.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D6A6C()
{
  sub_1AC7A0E78();
  Transcriber.ModelOptions.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D6B14()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D6B78()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC74338C();
}

uint64_t sub_1AC6D6C10()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC743518();
}

uint64_t sub_1AC6D6CA8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7483E0();
}

uint64_t sub_1AC6D6D2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_50();
  v7 = *(v6 + 24);
  v8 = *v3;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v2)
  {
    v10 = a1;
    v11 = a2;
  }

  return v12(v10, v11);
}

uint64_t sub_1AC6D6E44()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC748624();
}

uint64_t sub_1AC6D6EEC()
{
  OUTLINED_FUNCTION_85();
  v1[21] = v0;
  v2 = sub_1AC79FB18();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6D6FA8, 0, 0);
}

uint64_t sub_1AC6D6FA8()
{
  v8 = v0;
  v1 = v0[21];
  v2 = objc_opt_self();
  v0[25] = v2;
  if (*(*(v1 + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint) == 16)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v7 = *(*(v1 + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint);
    v4 = sub_1AC6F4C94(&v7);
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_1AC6D7110;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D180, &qword_1AC7ADD88);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1AC70C6FC;
    v0[13] = &block_descriptor_6;
    v0[14] = v5;
    [v3 supportedLanguagesForTaskHint:v4 completion:v0 + 10];
    v2 = (v0 + 2);
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1AC6D7110()
{
  OUTLINED_FUNCTION_85();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC6D71E4, 0, 0);
}

uint64_t sub_1AC6D71E4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  (*(v4 + 16))(v1, *(v0[21] + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v3);
  sub_1AC79F978();
  (*(v4 + 8))(v1, v3);
  v6 = sub_1AC79FF58();

  v7 = [v2 languageCode_];

  v8 = sub_1AC79FF68();
  v10 = v9;

  v0[18] = v8;
  v0[19] = v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 18;
  v12 = sub_1AC6F488C(sub_1AC637CD4, v11, v5);

  OUTLINED_FUNCTION_82();

  return v13(v12);
}

uint64_t sub_1AC6D7368(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D737C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_109_1(v2);

  return sub_1AC743644();
}

uint64_t sub_1AC6D7408()
{
  v1 = *(v0 + 16);
  sub_1AC744558();
  return v2 & 1;
}

uint64_t Transcriber.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Transcriber.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1AC6D75F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC637EE4;

  return Transcriber.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC6D7684(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC5C5380;

  return sub_1AC6D7368(a1);
}

uint64_t sub_1AC6D771C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return sub_1AC6D6EEC();
}

uint64_t sub_1AC6D784C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC637EE4;

  return static Transcriber.supportedLocales.getter();
}

uint64_t sub_1AC6D78D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return static Transcriber.supportedLocale(equivalentTo:)();
}

void Transcriber.__allocating_init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D110, &qword_1AC7AD738);
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1AC79FB18();
  v12 = OUTLINED_FUNCTION_40(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  (*(v14 + 16))(v0, v6, v11);
  sub_1AC6F4A30(v4, &v17);
  sub_1AC5C6E6C();
  swift_allocObject();
  Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  sub_1AC5C720C(v2, &qword_1EB56D110, &qword_1AC7AD738);
  (*(v14 + 8))(v6, v11);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6D7B4C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC741794();
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:modelOverrideURL:speechProfiles:taskForMemoryLock:atypicalSpeech:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1AC637E08();
  v12 = type metadata accessor for Transcriber.ModelOptions();
  *(v11 + v12[5]) = v9;
  v13 = (v11 + v12[6]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v12[7];
  sub_1AC637E08();
  *(v11 + v12[9]) = v7;
  v15 = (v11 + v12[8]);
  *v15 = v5;
  v15[1] = v3;
  *(v11 + v12[10]) = v1;
  *(v11 + v12[11]) = 0;
  *(v11 + v12[12]) = 0;
  *(v11 + v12[15]) = 0;
  *(v11 + v12[13]) = 0;
  *(v11 + v12[14]) = 0;
  OUTLINED_FUNCTION_105();
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:modelOverrideURL:speechProfiles:taskForMemoryLock:atypicalSpeech:enableParallelLoading:)()
{
  OUTLINED_FUNCTION_21_4();
  v13[0] = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v8 = type metadata accessor for Transcriber.ModelOptions();
  v9 = OUTLINED_FUNCTION_7_10(v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = *(v9 + 28);
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  *(v2 + v8[9]) = v1;
  v12 = (v2 + v8[8]);
  *v12 = v0;
  v12[1] = v7;
  *(v2 + v8[10]) = v5;
  *(v2 + v8[11]) = v13[0];
  *(v2 + v8[12]) = 0;
  *(v2 + v8[15]) = 0;
  *(v2 + v8[13]) = 0;
  *(v2 + v8[14]) = 0;
  OUTLINED_FUNCTION_14();
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  OUTLINED_FUNCTION_21_4();
  v38 = v23;
  v25 = v24;
  v27 = v26;
  v39 = v28;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v33 = type metadata accessor for Transcriber.ModelOptions();
  v34 = OUTLINED_FUNCTION_7_10(v33);
  *v35 = 0;
  v35[1] = 0;
  v36 = *(v34 + 28);
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  *(v32 + v33[9]) = v30;
  v37 = (v32 + v33[8]);
  *v37 = v27;
  v37[1] = v25;
  *(v32 + v33[10]) = v38;
  *(v32 + v33[11]) = a23;
  *(v32 + v33[12]) = v39;
  *(v32 + v33[15]) = 0;
  *(v32 + v33[13]) = 0;
  *(v32 + v33[14]) = 0;
  OUTLINED_FUNCTION_14();
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  OUTLINED_FUNCTION_4_9();
  sub_1AC637E08();
  v14 = type metadata accessor for Transcriber.ModelOptions();
  OUTLINED_FUNCTION_2_16(v14);
  v15 = sub_1AC637E08();
  *(v12 + v11[9]) = a6;
  v16 = (v12 + v11[8]);
  *v16 = a8;
  v16[1] = a9;
  *(v12 + v11[10]) = a10;
  OUTLINED_FUNCTION_22_6(v15, v17, v18, v19, v20, v21, v22, v23, v25, v26, a11);
  *(v12 + v24) = a7;
  *(v12 + v11[15]) = 0;
  *(v12 + v11[13]) = 0;
  *(v12 + v11[14]) = 0;
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:speechProfileContainers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v12 = type metadata accessor for Transcriber.ModelOptions();
  OUTLINED_FUNCTION_2_16(v12);
  OUTLINED_FUNCTION_17_7();
  v13 = sub_1AC637E08();
  OUTLINED_FUNCTION_32_7(v13, v14, v15, v16, v17, v18, v19, v20, v33, v36, a6);
  *v21 = v22;
  v21[1] = a9;
  *(v11 + *(v10 + 40)) = a10;
  OUTLINED_FUNCTION_22_6(v23, v24, v25, v26, v27, v28, v29, v30, v34, v37, v39);
  OUTLINED_FUNCTION_41_7(v31, v35, v38, v41, v42);
  *(v11 + v32) = 0;
  *(v11 + *(v10 + 56)) = 0;
}

uint64_t sub_1AC6D7FEC()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v0;
}

uint64_t sub_1AC6D8044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_80(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1AC6D809C()
{
  result = qword_1EB56D120;
  if (!qword_1EB56D120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56D120);
  }

  return result;
}

unint64_t sub_1AC6D80E4()
{
  result = qword_1EB56D128;
  if (!qword_1EB56D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D128);
  }

  return result;
}

unint64_t sub_1AC6D813C()
{
  result = qword_1EB56D130;
  if (!qword_1EB56D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D130);
  }

  return result;
}

unint64_t sub_1AC6D8224()
{
  result = qword_1EB56B2B0;
  if (!qword_1EB56B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B2B0);
  }

  return result;
}

unint64_t sub_1AC6D82C0()
{
  result = qword_1EB56B2C0;
  if (!qword_1EB56B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B2C0);
  }

  return result;
}

uint64_t sub_1AC6D833C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1AC6D84E0(&qword_1EB56B2A8, a2, type metadata accessor for Transcriber);
  result = sub_1AC6D84E0(&qword_1EB56B2A0, v3, type metadata accessor for Transcriber);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC6D83E4(uint64_t a1, uint64_t a2)
{
  result = sub_1AC6D84E0(&qword_1EB56B2A0, a2, type metadata accessor for Transcriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6D843C(uint64_t a1, uint64_t a2)
{
  result = sub_1AC6D84E0(&qword_1EB56B2A8, a2, type metadata accessor for Transcriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6D84E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Transcriber.ModelOptions(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79F7F8();
    if (__swift_getEnumTagSinglePayload(a2, 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
    }

    v10 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v11 = (a1 + v10);
    v12 = (a2 + v10);
    v13 = v12[1];
    *v11 = *v12;
    v11[1] = v13;
    v14 = a3[7];

    if (__swift_getEnumTagSinglePayload(a2 + v14, 1, v7))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(a1 + v14, a2 + v14, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(a1 + v14, a2 + v14, v7);
      __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v7);
    }

    v16 = a3[8];
    v17 = a3[9];
    v18 = (a1 + v16);
    v19 = (a2 + v16);
    v20 = v19[1];
    *v18 = *v19;
    v18[1] = v20;
    *(a1 + v17) = *(a2 + v17);
    v21 = a3[11];
    *(a1 + a3[10]) = *(a2 + a3[10]);
    *(a1 + v21) = *(a2 + v21);
    v22 = a3[13];
    *(a1 + a3[12]) = *(a2 + a3[12]);
    *(a1 + v22) = *(a2 + v22);
    v23 = a3[14];
    v24 = a3[15];
    v25 = *(a2 + v23);
    *(a1 + v23) = v25;
    *(a1 + v24) = *(a2 + v24);

    v26 = v25;
  }

  return a1;
}

uint64_t destroy for Transcriber.ModelOptions(uint64_t a1, int *a2)
{
  v4 = sub_1AC79F7F8();
  if (!__swift_getEnumTagSinglePayload(a1, 1, v4))
  {
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v5 = *(a1 + a2[6] + 8);

  v6 = a2[7];
  if (!__swift_getEnumTagSinglePayload(a1 + v6, 1, v4))
  {
    (*(*(v4 - 8) + 8))(a1 + v6, v4);
  }

  v7 = *(a1 + a2[8] + 8);

  v8 = *(a1 + a2[9]);

  v9 = *(a1 + a2[12]);

  v10 = *(a1 + a2[15]);
}

char *initializeWithCopy for Transcriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *(v10 + 1);
  *v9 = *v10;
  *(v9 + 1) = v11;
  v12 = a3[7];

  if (__swift_getEnumTagSinglePayload(&a2[v12], 1, v6))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v12], &a2[v12], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(&a1[v12], &a2[v12], v6);
    __swift_storeEnumTagSinglePayload(&a1[v12], 0, 1, v6);
  }

  v14 = a3[8];
  v15 = a3[9];
  v16 = &a1[v14];
  v17 = &a2[v14];
  v18 = *(v17 + 1);
  *v16 = *v17;
  *(v16 + 1) = v18;
  *&a1[v15] = *&a2[v15];
  v19 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v19] = a2[v19];
  v20 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  a1[v20] = a2[v20];
  v21 = a3[14];
  v22 = a3[15];
  v23 = *&a2[v21];
  *&a1[v21] = v23;
  *&a1[v22] = *&a2[v22];

  v24 = v23;

  return a1;
}

char *assignWithCopy for Transcriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = *(v6 - 8);
  if (v8)
  {
    (*(v9 + 8))(a1, v6);
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 24))(a1, a2, v6);
LABEL_7:
  a1[a3[5]] = a2[a3[5]];
  v11 = a3[6];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  v14 = *(v12 + 1);
  *(v12 + 1) = *(v13 + 1);

  v15 = a3[7];
  LODWORD(v14) = __swift_getEnumTagSinglePayload(&a1[v15], 1, v6);
  v16 = __swift_getEnumTagSinglePayload(&a2[v15], 1, v6);
  if (!v14)
  {
    v17 = *(v6 - 8);
    if (!v16)
    {
      (*(v17 + 24))(&a1[v15], &a2[v15], v6);
      goto LABEL_13;
    }

    (*(v17 + 8))(&a1[v15], v6);
    goto LABEL_12;
  }

  if (v16)
  {
LABEL_12:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
    goto LABEL_13;
  }

  (*(*(v6 - 8) + 16))(&a1[v15], &a2[v15], v6);
  __swift_storeEnumTagSinglePayload(&a1[v15], 0, 1, v6);
LABEL_13:
  v19 = a3[8];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *v20 = *v21;
  v22 = *(v20 + 1);
  *(v20 + 1) = *(v21 + 1);

  v23 = a3[9];
  v24 = *&a1[v23];
  *&a1[v23] = *&a2[v23];

  a1[a3[10]] = a2[a3[10]];
  a1[a3[11]] = a2[a3[11]];
  v25 = a3[12];
  v26 = *&a1[v25];
  *&a1[v25] = *&a2[v25];

  a1[a3[13]] = a2[a3[13]];
  v27 = a3[14];
  v28 = *&a1[v27];
  v29 = *&a2[v27];
  *&a1[v27] = v29;
  v30 = v29;

  v31 = a3[15];
  v32 = *&a1[v31];
  *&a1[v31] = *&a2[v31];

  return a1;
}

char *initializeWithTake for Transcriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v8] = *&a2[v8];
  v9 = a3[7];
  if (__swift_getEnumTagSinglePayload(&a2[v9], 1, v6))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v9], &a2[v9], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(&a1[v9], &a2[v9], v6);
    __swift_storeEnumTagSinglePayload(&a1[v9], 0, 1, v6);
  }

  v11 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v12] = a2[v12];
  v13 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  a1[v13] = a2[v13];
  v14 = a3[15];
  *&a1[a3[14]] = *&a2[a3[14]];
  *&a1[v14] = *&a2[v14];
  return a1;
}

char *assignWithTake for Transcriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 32))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = *(v6 - 8);
  if (v8)
  {
    (*(v9 + 8))(a1, v6);
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(a1, a2, v6);
LABEL_7:
  v11 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = *(v12 + 1);
  *v12 = v15;
  *(v12 + 1) = v14;

  v17 = a3[7];
  v18 = __swift_getEnumTagSinglePayload(&a1[v17], 1, v6);
  v19 = __swift_getEnumTagSinglePayload(&a2[v17], 1, v6);
  if (!v18)
  {
    v20 = *(v6 - 8);
    if (!v19)
    {
      (*(v20 + 40))(&a1[v17], &a2[v17], v6);
      goto LABEL_13;
    }

    (*(v20 + 8))(&a1[v17], v6);
    goto LABEL_12;
  }

  if (v19)
  {
LABEL_12:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v17], &a2[v17], *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  (*(*(v6 - 8) + 32))(&a1[v17], &a2[v17], v6);
  __swift_storeEnumTagSinglePayload(&a1[v17], 0, 1, v6);
LABEL_13:
  v22 = a3[8];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v26 = *v24;
  v25 = *(v24 + 1);
  v27 = *(v23 + 1);
  *v23 = v26;
  *(v23 + 1) = v25;

  v28 = a3[9];
  v29 = *&a1[v28];
  *&a1[v28] = *&a2[v28];

  v30 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v30] = a2[v30];
  v31 = a3[12];
  v32 = *&a1[v31];
  *&a1[v31] = *&a2[v31];

  v33 = a3[14];
  a1[a3[13]] = a2[a3[13]];
  v34 = *&a1[v33];
  *&a1[v33] = *&a2[v33];

  v35 = a3[15];
  v36 = *&a1[v35];
  *&a1[v35] = *&a2[v35];

  return a1;
}

void sub_1AC6D9370()
{
  sub_1AC622E1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

uint64_t getEnumTagSinglePayload for SFCustomLanguageModelData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1AC6D94CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1AC6D963C(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  v4 = sub_1AC7A0288();
  v5 = OUTLINED_FUNCTION_4_10(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = OUTLINED_FUNCTION_16_8();
  v11 = type metadata accessor for SpeechAnalyzer.Options(v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_11();
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_1AC5C720C(a1, &qword_1EB56C7D0, &qword_1AC7ACB40);
    type metadata accessor for AnalysisOptions(0);
    OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_105();

    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  else
  {
    sub_1AC6DBCF0();
    OUTLINED_FUNCTION_7_11();
    if (a1)
    {
      OUTLINED_FUNCTION_24_10(v20);
    }

    else
    {
      OUTLINED_FUNCTION_23_7();
    }

    v21 = OUTLINED_FUNCTION_22_7();
    v22(v21);
    v23 = *(v7 + 32);
    v24 = OUTLINED_FUNCTION_25_9();
    v25(v24);
    v26 = type metadata accessor for AnalysisOptions(0);
    OUTLINED_FUNCTION_9_13(v26);
    sub_1AC6DBD44();
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC6D980C(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  v4 = sub_1AC7A0288();
  v5 = OUTLINED_FUNCTION_4_10(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = OUTLINED_FUNCTION_16_8();
  v11 = type metadata accessor for AnalysisOptions(v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_11();
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_1AC5C720C(a1, &qword_1EB56C7E8, &qword_1AC7AA900);
    type metadata accessor for SpeechAnalyzer.Options(0);
    OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_105();

    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  else
  {
    sub_1AC6DBCF0();
    OUTLINED_FUNCTION_7_11();
    if (a1)
    {
      OUTLINED_FUNCTION_24_10(v20);
    }

    else
    {
      OUTLINED_FUNCTION_23_7();
    }

    v21 = OUTLINED_FUNCTION_22_7();
    v22(v21);
    v23 = *(v7 + 32);
    v24 = OUTLINED_FUNCTION_25_9();
    v25(v24);
    v26 = type metadata accessor for SpeechAnalyzer.Options(0);
    OUTLINED_FUNCTION_9_13(v26);
    sub_1AC6DBD44();
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
    OUTLINED_FUNCTION_105();
  }
}

id sub_1AC6D99DC()
{
  v1 = type metadata accessor for SpeechAnalyzer.Options(0);
  v2 = *(v0 + *(v1 + 20));
  v3 = sub_1AC7A0278();
  v4 = (v0 + *(v1 + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v8 = v4[2];
    v7 = v4[3];
    v10 = v4[4];
    v9 = v4[5];
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v10 = 0;
    v9 = 0;
  }

  v11 = objc_allocWithZone(_SFAnalysisOptions);
  return sub_1AC6DBBF4(v3, v6, v5, v8, v7, v10, v9, (v2 - 3) < 2);
}

uint64_t SpeechAnalyzer.Options.modelRetention.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  result = type metadata accessor for SpeechAnalyzer.Options(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t SpeechAnalyzer.Options.PowerContext.ane.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t SpeechAnalyzer.Options.PowerContext.cpu.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_39();
}

uint64_t SpeechAnalyzer.Options.PowerContext.gpu.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_39();
}

uint64_t SpeechAnalyzer.Options.PowerContext.init(ane:cpu:gpu:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t AnalysisOptions.modelRetention.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  result = type metadata accessor for AnalysisOptions(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1AC6D9D04()
{
  v2 = OUTLINED_FUNCTION_56();
  v4 = (v1 + *(v3(v2) + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  *v0 = *v4;
  v0[1] = v6;
  v0[2] = v7;
  v0[3] = v8;
  v0[4] = v9;
  v0[5] = v10;
  return sub_1AC6D9D54(v5, v6);
}

uint64_t sub_1AC6D9D54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t _s6Speech0A8AnalyzerC7OptionsV14ModelRetentionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t _s6Speech0A8AnalyzerC7OptionsV12PowerContextV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_39();

  return sub_1AC7A0D38();
}

uint64_t _s6Speech0A8AnalyzerC7OptionsV12PowerContextV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1AC7A0048();
  OUTLINED_FUNCTION_170();
  sub_1AC7A0048();

  return sub_1AC7A0048();
}

uint64_t _s6Speech0A8AnalyzerC7OptionsV12PowerContextV9hashValueSivg_0()
{
  OUTLINED_FUNCTION_31_7();
  v0 = sub_1AC7A0E78();
  OUTLINED_FUNCTION_18_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1AC7A0048();
  sub_1AC7A0048();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D9FC8()
{
  OUTLINED_FUNCTION_31_7();
  v0 = sub_1AC7A0E78();
  OUTLINED_FUNCTION_18_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1AC7A0048();
  sub_1AC7A0048();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

double sub_1AC6DA04C@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11(v8);
  (*(v9 + 32))(a4, a1);
  v10 = a3(0);
  *(a4 + *(v10 + 20)) = v7;
  v11 = (a4 + *(v10 + 24));
  result = 0.0;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = 0u;
  return result;
}

void sub_1AC6DA0F0(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = *(a3 + 4);
  v11 = *(a3 + 5);
  v12 = sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11(v12);
  v25 = a3[1];
  v26 = *a3;
  (*(v13 + 32))(a5, a1);
  v14 = a4(0);
  *(a5 + *(v14 + 20)) = v9;
  OUTLINED_FUNCTION_29_11(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  *(v24 + 32) = v10;
  *(v24 + 40) = v11;
}

double AnalysisOptions.init(highPriority:loggingInfo:powerContext:)(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_56();
  v5 = sub_1AC7A0288();
  v6 = OUTLINED_FUNCTION_4_10(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_11();
  sub_1AC5C720C(a2, &qword_1EB56D190, &qword_1AC7ADDA0);
  OUTLINED_FUNCTION_27_8();
  if (a1)
  {
    sub_1AC7A0258();
  }

  else
  {
    sub_1AC7A0268();
  }

  v11 = *(v8 + 32);
  v12 = OUTLINED_FUNCTION_170();
  v13(v12);
  v14 = type metadata accessor for AnalysisOptions(0);
  *(v2 + *(v14 + 20)) = 0;
  *&result = OUTLINED_FUNCTION_14_8(v14).n128_u64[0];
  return result;
}

double AnalysisOptions.init(highPriority:modelRetention:loggingInfo:powerContext:)(char a1, char *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_56();
  v7 = sub_1AC7A0288();
  v8 = OUTLINED_FUNCTION_4_10(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_11();
  sub_1AC5C720C(a3, &qword_1EB56D190, &qword_1AC7ADDA0);
  v13 = *a2;
  OUTLINED_FUNCTION_27_8();
  if (a1)
  {
    sub_1AC7A0258();
  }

  else
  {
    sub_1AC7A0268();
  }

  v14 = *(v10 + 32);
  v15 = OUTLINED_FUNCTION_170();
  v16(v15);
  v17 = type metadata accessor for AnalysisOptions(0);
  *(v3 + *(v17 + 20)) = v13;
  *&result = OUTLINED_FUNCTION_14_8(v17).n128_u64[0];
  return result;
}

void AnalysisOptions.init(priority:modelRetention:loggingInfo:powerContext:)(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1AC5C720C(a3, &qword_1EB56D190, &qword_1AC7ADDA0);
  LOBYTE(a2) = *a2;
  v9 = *(a4 + 4);
  v10 = *(a4 + 5);
  v11 = sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11(v11);
  v24 = a4[1];
  v25 = *a4;
  (*(v12 + 32))(a5, a1);
  v13 = type metadata accessor for AnalysisOptions(0);
  *(a5 + *(v13 + 20)) = a2;
  OUTLINED_FUNCTION_29_11(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  *(v23 + 32) = v9;
  *(v23 + 40) = v10;
}

uint64_t sub_1AC6DA460()
{
  v0 = OUTLINED_FUNCTION_56();
  v2 = v1(v0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_39();

  return v6(v5);
}

uint64_t AnalysisOptions.LoggingInfo.requestID.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  v3 = *(type metadata accessor for AnalysisOptions.LoggingInfo(v2) + 20);
  v4 = sub_1AC79F958();
  v5 = OUTLINED_FUNCTION_80(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t AnalysisOptions.LoggingInfo.init(asrID:requestID:)()
{
  OUTLINED_FUNCTION_50_0();
  sub_1AC79F948();
  OUTLINED_FUNCTION_33_6();
  sub_1AC79F948();
  v2 = sub_1AC79F958();
  OUTLINED_FUNCTION_80(v2);
  v5 = *(v3 + 8);
  v5(v0, v2);

  return (v5)(v1, v2);
}

uint64_t static AnalysisOptions.LoggingInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  if ((sub_1AC79F928() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_33_6();

  return sub_1AC79F928();
}

uint64_t AnalysisOptions.LoggingInfo.hash(into:)()
{
  OUTLINED_FUNCTION_25();
  sub_1AC79F958();
  OUTLINED_FUNCTION_6_10();
  sub_1AC6DACF8(v0, v1);
  OUTLINED_FUNCTION_170();
  sub_1AC79FE58();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_170();
  return sub_1AC79FE58();
}

uint64_t AnalysisOptions.LoggingInfo.hashValue.getter()
{
  sub_1AC7A0E78();
  sub_1AC79F958();
  OUTLINED_FUNCTION_6_10();
  v2 = sub_1AC6DACF8(v0, v1);
  OUTLINED_FUNCTION_18_7(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_1AC79FE58();
  OUTLINED_FUNCTION_33_6();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6DA760(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0E78();
  sub_1AC79F958();
  sub_1AC6DACF8(&qword_1EB56CE18, MEMORY[0x1E69695A8]);
  sub_1AC79FE58();
  v4 = v2 + *(a2 + 20);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

BOOL sub_1AC6DA838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, void *))
{
  if ((sub_1AC7A0248() & 1) == 0)
  {
    return 0;
  }

  v8 = a3(0);
  if (*(a1 + *(v8 + 20)) != *(a2 + *(v8 + 20)))
  {
    return 0;
  }

  v9 = *(v8 + 24);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v13 = *(a1 + v9 + 16);
  v12 = *(a1 + v9 + 24);
  v14 = *(a1 + v9 + 32);
  v15 = *(a1 + v9 + 40);
  v16 = (a2 + v9);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  v21 = v16[4];
  v22 = v16[5];
  v51 = *v16;
  if (!v11)
  {
    v31 = OUTLINED_FUNCTION_28_8();
    sub_1AC6D9D54(v31, v32);
    if (!v18)
    {
      OUTLINED_FUNCTION_5_10();
      sub_1AC6D9D54(v46, v47);
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_21_9();
      sub_1AC6DAA4C(v48, v49);
      return 1;
    }

    OUTLINED_FUNCTION_5_10();
    sub_1AC6D9D54(v33, v34);
    goto LABEL_10;
  }

  v53[0] = v10;
  v53[1] = v11;
  v53[2] = v13;
  v53[3] = v12;
  v53[4] = v14;
  v53[5] = v15;
  if (!v18)
  {
    v35 = OUTLINED_FUNCTION_2_17();
    sub_1AC6D9D54(v35, v36);
    OUTLINED_FUNCTION_5_10();
    sub_1AC6D9D54(v37, v38);
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_21_9();
    sub_1AC6D9D54(v39, v40);

LABEL_10:
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_21_9();
    sub_1AC6DAA4C(v41, v42);
    OUTLINED_FUNCTION_5_10();
    sub_1AC6DAA4C(v43, v44);
    return 0;
  }

  v52[0] = v17;
  v52[1] = v18;
  v52[2] = v19;
  v52[3] = v20;
  v52[4] = v21;
  v52[5] = v22;
  v50 = a4(v53, v52);
  v23 = OUTLINED_FUNCTION_2_17();
  sub_1AC6D9D54(v23, v24);
  OUTLINED_FUNCTION_5_10();
  sub_1AC6D9D54(v25, v26);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_21_9();
  sub_1AC6D9D54(v27, v28);

  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_21_9();
  sub_1AC6DAA4C(v29, v30);
  return (v50 & 1) != 0;
}

uint64_t sub_1AC6DAA4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1AC6DAAD0()
{
  result = qword_1EB56D1A8;
  if (!qword_1EB56D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D1A8);
  }

  return result;
}

unint64_t sub_1AC6DAB28()
{
  result = qword_1EB56D1B0;
  if (!qword_1EB56D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D1B0);
  }

  return result;
}

uint64_t sub_1AC6DABAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AC6DAC04()
{
  result = qword_1EB56D1C8;
  if (!qword_1EB56D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D1C8);
  }

  return result;
}

unint64_t sub_1AC6DAC5C()
{
  result = qword_1EB56D1D0;
  if (!qword_1EB56D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D1D0);
  }

  return result;
}

uint64_t sub_1AC6DACF8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1AC6DADEC(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC7A0288();
    OUTLINED_FUNCTION_0_11(v7);
    v9 = *(v8 + 16);
    v10 = OUTLINED_FUNCTION_39();
    v11(v10);
    v12 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v13 = (a1 + v12);
    v14 = *(a2 + v12 + 8);
    if (v14)
    {
      OUTLINED_FUNCTION_19_7(v14, v13);
    }

    else
    {
      OUTLINED_FUNCTION_8_9(v13);
    }
  }

  return a1;
}

uint64_t sub_1AC6DAED0()
{
  OUTLINED_FUNCTION_50_0();
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_80(v2);
  (*(v3 + 8))(v1);
  v4 = (v1 + *(v0 + 24));
  result = v4[1];
  if (result)
  {

    v6 = v4[3];

    v7 = v4[5];
  }

  return result;
}

uint64_t sub_1AC6DAF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25();
  v6 = sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_170();
  v10(v9);
  v11 = *(a3 + 24);
  *(v3 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v12 = (v3 + v11);
  v13 = *(a2 + v11 + 8);
  if (v13)
  {
    OUTLINED_FUNCTION_19_7(v13, v12);
  }

  else
  {
    OUTLINED_FUNCTION_8_9(v12);
  }

  return v3;
}

uint64_t sub_1AC6DB008(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_25();
  v8 = sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11(v8);
  v10 = *(v9 + 24);
  v11 = OUTLINED_FUNCTION_25_9();
  v12(v11);
  *(v4 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v13 = *(a3 + 24);
  v14 = v4 + v13;
  v15 = (a2 + v13);
  v16 = *(v4 + v13 + 8);
  v17 = *(v15 + 1);
  if (v16)
  {
    if (v17)
    {
      OUTLINED_FUNCTION_30_6();

      *(v14 + 16) = *(v15 + 2);
      v18 = *(v14 + 24);
      *(v14 + 24) = *(v15 + 3);

      *(v14 + 32) = *(v15 + 4);
      v19 = *(v14 + 40);
      *(v14 + 40) = *(v15 + 5);
    }

    else
    {
      a4(v14);
      v21 = v15[1];
      v20 = v15[2];
      *v14 = *v15;
      *(v14 + 16) = v21;
      *(v14 + 32) = v20;
    }
  }

  else if (v17)
  {
    OUTLINED_FUNCTION_30_6();
    *(v14 + 16) = *(v15 + 2);
    *(v14 + 24) = *(v15 + 3);
    *(v14 + 32) = *(v15 + 4);
    *(v14 + 40) = *(v15 + 5);
  }

  else
  {
    v22 = *v15;
    v23 = v15[2];
    *(v14 + 16) = v15[1];
    *(v14 + 32) = v23;
    *v14 = v22;
  }

  return v4;
}

uint64_t sub_1AC6DB18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11(v6);
  (*(v7 + 32))(a1, a2);
  v8 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  OUTLINED_FUNCTION_8_9(a1 + v8);
  return a1;
}

uint64_t sub_1AC6DB220(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_25();
  v8 = sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11(v8);
  v10 = *(v9 + 40);
  v11 = OUTLINED_FUNCTION_25_9();
  v12(v11);
  v13 = *(a3 + 24);
  *(v4 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v14 = v4 + v13;
  v15 = a2 + v13;
  if (!*(v4 + v13 + 8))
  {
    goto LABEL_5;
  }

  v16 = *(v15 + 8);
  if (!v16)
  {
    a4(v4 + v13);
LABEL_5:
    v21 = *(v15 + 16);
    *v14 = *v15;
    *(v14 + 16) = v21;
    *(v14 + 32) = *(v15 + 32);
    return v4;
  }

  *v14 = *v15;
  *(v14 + 8) = v16;

  v17 = *(v15 + 24);
  v18 = *(v14 + 24);
  *(v14 + 16) = *(v15 + 16);
  *(v14 + 24) = v17;

  v19 = *(v15 + 40);
  v20 = *(v14 + 40);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 40) = v19;

  return v4;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25();
  v6 = sub_1AC7A0288();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_8();
  result = sub_1AC7A0288();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_26_10();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 24) + 8) = v4;
  }

  return result;
}

uint64_t sub_1AC6DB468()
{
  result = sub_1AC7A0288();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Instrumentation.CompletionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1AC6DB590(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void *sub_1AC6DB66C()
{
  OUTLINED_FUNCTION_50_0();
  *v3 = *v2;
  v4 = v1[1];
  v1[1] = v2[1];

  v1[2] = v0[2];
  v5 = v1[3];
  v1[3] = v0[3];

  v1[4] = v0[4];
  v6 = v0[5];
  v7 = v1[5];
  v1[5] = v6;

  return v1;
}

void *sub_1AC6DB6F8()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2[1];
  v5 = *(v4 + 8);
  *v1 = *v2;
  v1[1] = v3;

  v6 = v0[3];
  v7 = v1[3];
  v1[2] = v0[2];
  v1[3] = v6;

  v8 = v0[5];
  v9 = v1[5];
  v1[4] = v0[4];
  v1[5] = v8;

  return v1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnalysisOptions.LoggingInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79F958();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v7);
  }

  return a1;
}

uint64_t destroy for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79F958();
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), a1, v4);
  v5 = a1 + *(a2 + 20);

  return v7(v5, v4);
}

uint64_t initializeWithCopy for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  return a1;
}

uint64_t assignWithCopy for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  return a1;
}

uint64_t initializeWithTake for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  return a1;
}

uint64_t assignWithTake for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  return a1;
}

uint64_t sub_1AC6DBB68()
{
  result = sub_1AC79F958();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_1AC6DBBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3)
  {
    v13 = sub_1AC79FF58();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1AC79FF58();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v15 = sub_1AC79FF58();

LABEL_8:
  v16 = [v8 initWithPriority:a1 aneContext:v13 cpuContext:v14 gpuContext:v15 keepANEModelLoaded:a8 & 1];

  return v16;
}

uint64_t sub_1AC6DBCF0()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_11(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v0;
}

uint64_t sub_1AC6DBD44()
{
  v1 = OUTLINED_FUNCTION_25();
  v3 = v2(v1);
  OUTLINED_FUNCTION_80(v3);
  (*(v4 + 8))(v0);
  return v0;
}

__n128 OUTLINED_FUNCTION_8_9@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_6()
{
  *v0 = *v1;
  result = v1[1];
  v0[1] = result;
  return result;
}

double sub_1AC6DBEFC()
{
  v0 = [objc_opt_self() cooldownTimerTimeoutSeconds];
  sub_1AC6DBF60(1, 0, v2, v0);
  result = *v2;
  xmmword_1ED937970 = v2[0];
  unk_1ED937980 = v2[1];
  byte_1ED937990 = v3;
  return result;
}

uint64_t sub_1AC6DBF60@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = ceil(a4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    v7 = result;
    result = sub_1AC7A0F48();
    *a3 = v7;
    *(a3 + 8) = a2 & 1;
    *(a3 + 16) = result;
    *(a3 + 24) = v8;
    *(a3 + 32) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AC6DBFF4()
{
  if (qword_1ED937968 != -1)
  {
    swift_once();
  }

  v1[0] = xmmword_1ED937970;
  v1[1] = unk_1ED937980;
  v2 = byte_1ED937990;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C880, &unk_1AC7AE290);
  swift_allocObject();
  result = sub_1AC6DC09C(v1, 0, 0);
  qword_1ED938600 = result;
  return result;
}

uint64_t sub_1AC6DC09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 168) = 0;
  *(v3 + 176) = v7;
  v8 = *(a1 + 16);
  *(v3 + 112) = *a1;
  *(v3 + 128) = v8;
  *(v3 + 144) = *(a1 + 32);
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  return v3;
}

uint64_t *sub_1AC6DC0F8()
{
  if (v0[21])
  {
    v1 = v0[21];

    sub_1AC7A0318();
  }

  v2 = v0[20];
  sub_1AC5C3958(v0[19]);
  v3 = v0[21];

  v4 = v0[22];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC6DC170()
{
  sub_1AC6DC0F8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t getEnumTagSinglePayload for KeepAliveCachePolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for KeepAliveCachePolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t AnalysisContext.__allocating_init()()
{
  v0 = swift_allocObject();
  AnalysisContext.init()();
  return v0;
}

uint64_t sub_1AC6DC27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[2] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6DC294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_85();
  if (*(*(v14 + 40) + 16))
  {
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_508(v15);
    v16 = *(MEMORY[0x1E69E88D8] + 4);
    v17 = swift_task_alloc();
    *(v14 + 56) = v17;
    *v17 = v14;
    v17[1] = sub_1AC6DC380;
    OUTLINED_FUNCTION_18_8();

    return MEMORY[0x1EEE6DDE8](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v26();
  }
}

uint64_t sub_1AC6DC380()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6DC484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[2] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6DC4A8, 0, 0);
}

uint64_t sub_1AC6DC4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_85();
  if (*(*(v14 + 40) + 16))
  {
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_508(v15);
    v16 = *(MEMORY[0x1E69E88D8] + 4);
    v17 = swift_task_alloc();
    *(v14 + 56) = v17;
    *v17 = v14;
    v17[1] = sub_1AC6DC594;
    OUTLINED_FUNCTION_18_8();

    return MEMORY[0x1EEE6DDE8](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v26();
  }
}

uint64_t sub_1AC6DC594()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6DC694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1AC6E0808();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56_5(v3);
}

uint64_t sub_1AC6DC6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1AC6E0868();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56_5(v3);
}

double sub_1AC6DC72C@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (sub_1AC6E0868(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1AC5CFF64(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1AC6DC790(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1AC6E08C4(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56_5(v2);
}

uint64_t sub_1AC6DC7DC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1AC6E08C4(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56_5(v2);
}

uint64_t sub_1AC6DC828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_1AC6E0808();
    if (v5)
    {
      v6 = (*(a3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return OUTLINED_FUNCTION_39();
}

void *sub_1AC6DC87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1AC6E0808();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void *sub_1AC6DC8C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = sub_1AC5D0E20(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a4 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

uint64_t AnalysisContext.contextualStrings.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t AnalysisContext.userData.getter()
{
  os_unfair_lock_lock((v0 + 48));
  v1 = *(v0 + 56);

  os_unfair_lock_unlock((v0 + 48));
  return v1;
}

void sub_1AC6DC984()
{
  v0 = AnalysisContext.contextualStrings.getter();
  v1 = sub_1AC6E1808(v0, &qword_1EB56D2A8);

  v2 = v1[8];
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_117_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    while (2)
    {
      if (v6)
      {
        goto LABEL_7;
      }

      do
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          return;
        }

        if (v11 >= v8)
        {
          goto LABEL_18;
        }

        v6 = v1[v11 + 8];
        ++v9;
      }

      while (!v6);
      v9 = v11;
LABEL_7:
      OUTLINED_FUNCTION_42_7();
      v14 = *(v13 + v12);

      v15 = *(v14 + 16);
      v16 = *(v10 + 16);
      if (__OFADD__(v16, v15))
      {
        goto LABEL_60;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v15 > *(v10 + 24) >> 1)
      {
        sub_1AC60DBDC();
        v10 = v17;
      }

      v6 &= v6 - 1;
      if (*(v14 + 16))
      {
        if ((*(v10 + 24) >> 1) - *(v10 + 16) < v15)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v18 = *(v10 + 16);
          v19 = __OFADD__(v18, v15);
          v20 = v18 + v15;
          if (v19)
          {
            goto LABEL_63;
          }

          *(v10 + 16) = v20;
        }

        continue;
      }

      break;
    }

    if (!v15)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_18:

  os_unfair_lock_lock((v82 + 32));
  v21 = *(v82 + 40);

  os_unfair_lock_unlock((v82 + 32));
  v81 = v10;
  if (v21)
  {
    v22 = sub_1AC6E1808(v21, &qword_1EB56D298);

    v23 = v22[8];
    v24 = *(v22 + 32);
    OUTLINED_FUNCTION_117_0();
    v27 = v26 & v25;
    v29 = (v28 + 63) >> 6;

    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        if (!v27)
        {
          do
          {
            v32 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_59;
            }

            if (v32 >= v29)
            {
              goto LABEL_36;
            }

            v27 = v22[v32 + 8];
            ++v30;
          }

          while (!v27);
          v30 = v32;
        }

        OUTLINED_FUNCTION_42_7();
        v35 = *(v34 + v33);

        v36 = *(v35 + 16);
        v37 = *(v31 + 16);
        if (__OFADD__(v37, v36))
        {
          goto LABEL_62;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v37 + v36 > *(v31 + 24) >> 1)
        {
          sub_1AC60E41C();
          v31 = v38;
        }

        v27 &= v27 - 1;
        if (!*(v35 + 16))
        {
          break;
        }

        if ((*(v31 + 24) >> 1) - *(v31 + 16) < v36)
        {
          goto LABEL_64;
        }

        swift_arrayInitWithCopy();

        if (v36)
        {
          v39 = *(v31 + 16);
          v19 = __OFADD__(v39, v36);
          v40 = v39 + v36;
          if (v19)
          {
            goto LABEL_65;
          }

          *(v31 + 16) = v40;
        }
      }
    }

    while (!v36);
    __break(1u);
LABEL_36:

    v41 = *(v31 + 16);
    if (v41)
    {
      v85 = MEMORY[0x1E69E7CC0];
      sub_1AC7A0A88();
      v42 = (v31 + 64);
      do
      {
        v43 = *(v42 - 4);
        v44 = *(v42 - 3);
        v45 = *(v42 - 2);
        v46 = *(v42 - 1);
        v47 = *v42;
        v42 += 40;
        objc_allocWithZone(_SFEnhancedContextualString);

        v48 = OUTLINED_FUNCTION_39();
        sub_1AC6E0474(v48, v49, v45, v46, v47);
        sub_1AC7A0A68();
        v50 = *(v85 + 16);
        sub_1AC7A0A98();
        sub_1AC7A0AA8();
        sub_1AC7A0A78();
        --v41;
      }

      while (v41);

      v51 = v85;
    }

    else
    {

      v51 = MEMORY[0x1E69E7CC0];
    }

    v10 = v81;
  }

  else
  {
    v51 = 0;
  }

  v52 = AnalysisContext.contextualNamedEntities.getter();
  if (v52)
  {
    v53 = v52;
    v54 = *(v52 + 16);
    if (v54)
    {
      v80 = v51;
      v86 = MEMORY[0x1E69E7CC0];
      sub_1AC7A0A88();
      v55 = 0;
      v84 = v53;
      while (1)
      {
        v56 = *(v53 + v55 + 32);
        v57 = *(v53 + v55 + 40);
        v58 = *(v53 + v55 + 48);
        v59 = *(v53 + v55 + 72);
        v60 = *(v53 + v55 + 80);
        v62 = *(v53 + v55 + 88);
        v61 = *(v53 + v55 + 96);
        if (*(v53 + v55 + 64))
        {
          OUTLINED_FUNCTION_61_4();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v63 = 0;
          if (v60)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v65 = *(v53 + v55 + 56);
          v83 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          OUTLINED_FUNCTION_61_4();
          swift_bridgeObjectRetain_n();

          v63 = [v83 initWithDouble_];
          if (v60)
          {
LABEL_50:
            v64 = 0;
            goto LABEL_51;
          }
        }

        v64 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_51:
        v66 = objc_allocWithZone(_SFContextualNamedEntityCodingObject);
        sub_1AC6E0748(v56, v57, v58, v63, v64, v62, v61);

        sub_1AC7A0A68();
        v67 = *(v86 + 16);
        sub_1AC7A0A98();
        sub_1AC7A0AA8();
        sub_1AC7A0A78();
        v55 += 72;
        --v54;
        v53 = v84;
        if (!v54)
        {

          v68 = v86;
          v10 = v81;
          v51 = v80;
          goto LABEL_55;
        }
      }
    }

    v68 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v68 = 0;
  }

LABEL_55:
  v69 = AnalysisContext.contextualStrings.getter();
  v70 = sub_1AC6DC6E0(0x6E6F437466656C5FLL, 0xEC00000074786574, v69);

  AnalysisContext.contextualStrings.getter();
  v71 = OUTLINED_FUNCTION_68_5(0x6F4374686769725FLL, 0x746Eu);

  AnalysisContext.contextualStrings.getter();
  v72 = OUTLINED_FUNCTION_68_5(0x657463656C65735FLL, 0x5464u);

  if (!*(v10 + 16))
  {

    v10 = 0;
  }

  v73 = AnalysisContext.profileData.getter();
  v75 = v74;
  v76 = AnalysisContext.jitProfileData.getter();
  v78 = v77;
  v79 = objc_allocWithZone(_SFAnalysisContextCodingObject);
  sub_1AC6E0510(v70, v71, v72, v10, v68, v73, v75, v76, v78, v51);
}

uint64_t sub_1AC6DD08C()
{
  OUTLINED_FUNCTION_78_0();
  v0 = AnalysisContext.userData.getter();
  sub_1AC6DC72C(v0, &v3);

  if (v4)
  {
    sub_1AC5C3968(&v3, &v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    sub_1AC5C720C(&v3, &qword_1EB56CA20, &qword_1AC7AE2A0);
    return 0;
  }
}

uint64_t AnalysisContext.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  sub_1AC6DD204();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1AC79FE38();
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
  sub_1AC6DD258();
  v3 = sub_1AC79FE38();
  *(v0 + 48) = 0;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0;
  *(v0 + 72) = v1;
  return v0;
}

unint64_t sub_1AC6DD204()
{
  result = qword_1EB56B0B0;
  if (!qword_1EB56B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B0B0);
  }

  return result;
}

unint64_t sub_1AC6DD258()
{
  result = qword_1EB56B0C0;
  if (!qword_1EB56B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B0C0);
  }

  return result;
}

void sub_1AC6DD2D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  AnalysisContext.contextualStrings.setter(v4);
}

void AnalysisContext.contextualStrings.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);

  *(v1 + 24) = a1;

  os_unfair_lock_lock((v1 + 64));
  OUTLINED_FUNCTION_46_8();
  if (v2)
  {
    os_unfair_lock_unlock((v1 + 64));
    __break(1u);
  }

  else
  {

    os_unfair_lock_unlock((v1 + 64));

    os_unfair_lock_unlock((v1 + 16));
  }
}

uint64_t AnalysisContext.contextualStrings.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_64_5(a1);
  *v1 = AnalysisContext.contextualStrings.getter();
  return OUTLINED_FUNCTION_196_0();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_1AC6DD418(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  AnalysisContext.userData.setter(v4);
}

void AnalysisContext.userData.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 48));
  v4 = *(v1 + 56);

  *(v1 + 56) = a1;

  os_unfair_lock_lock((v1 + 64));
  OUTLINED_FUNCTION_46_8();
  if (v2)
  {
    os_unfair_lock_unlock((v1 + 64));
    __break(1u);
  }

  else
  {

    os_unfair_lock_unlock((v1 + 64));

    os_unfair_lock_unlock((v1 + 48));
  }
}

uint64_t AnalysisContext.userData.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_64_5(a1);
  *v1 = AnalysisContext.userData.getter();
  return OUTLINED_FUNCTION_196_0();
}

uint64_t AnalysisContext.enhancedContextualStrings.getter()
{
  os_unfair_lock_lock((v0 + 32));
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1E0, &qword_1AC7AE2A8);
    sub_1AC6DD204();
    v1 = sub_1AC79FE38();
  }

  os_unfair_lock_unlock((v0 + 32));
  return v1;
}

void sub_1AC6DD5AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  AnalysisContext.enhancedContextualStrings.setter(v4);
}

void AnalysisContext.enhancedContextualStrings.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;

  os_unfair_lock_lock((v1 + 64));
  OUTLINED_FUNCTION_46_8();
  os_unfair_lock_unlock((v1 + 64));

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_1AC6DD654(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *result;
  v5 = *(*result + 16);
  v6 = (*result + 40);
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 - 1);
    v8 = *v6;

    v7(&v10, v9);
    if (v10)
    {
      sub_1AC67C4F8(a2);
      swift_unknownObjectRelease();
    }

    v6 += 2;
    ++v3;
  }

  return result;
}

uint64_t AnalysisContext.enhancedContextualStrings.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_64_5(a1);
  *v1 = AnalysisContext.enhancedContextualStrings.getter();
  return OUTLINED_FUNCTION_196_0();
}

uint64_t sub_1AC6DD764(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t AnalysisContext.setWait(contextualStrings:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6DD7E8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];

  AnalysisContext.contextualStrings.setter(v3);
  os_unfair_lock_lock((v2 + 64));
  v4 = *(v2 + 72);
  v0[4] = v4;

  os_unfair_lock_unlock((v2 + 64));
  v5 = OUTLINED_FUNCTION_24_11(&unk_1AC7AE2C0);
  v6 = OUTLINED_FUNCTION_422(v5);
  *v6 = v7;
  v6[1] = sub_1AC6DD8BC;

  return v9(&unk_1AC7AE2B8, 0, v4);
}

uint64_t sub_1AC6DD8BC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  OUTLINED_FUNCTION_44();

  return v6();
}

uint64_t sub_1AC6DD9DC()
{
  OUTLINED_FUNCTION_72();
  v9 = v0;
  v1 = *(v0 + 24);
  (*(v0 + 16))(&v8);
  v2 = v8;
  *(v0 + 32) = v8;
  if (v2)
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_422(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_85_0(v4);

    return sub_1AC674E40();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC6DDAA4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_44();

  return v6();
}

uint64_t AnalysisContext.setWait<A>(userData:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6DDBB8()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
  sub_1AC6DD258();
  v4 = sub_1AC7A0B88();
  AnalysisContext.userData.setter(v4);
  os_unfair_lock_lock((v2 + 64));
  v5 = *(v2 + 72);
  v0[5] = v5;

  os_unfair_lock_unlock((v2 + 64));
  v6 = OUTLINED_FUNCTION_24_11(&unk_1AC7AE2C0);
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1AC6DDCD8;

  return v8(&unk_1AC7AE2D0, 0, v5);
}

uint64_t sub_1AC6DDCD8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  OUTLINED_FUNCTION_44();

  return v6();
}

uint64_t sub_1AC6DDDF8()
{
  OUTLINED_FUNCTION_72();
  v9 = v0;
  v1 = *(v0 + 24);
  (*(v0 + 16))(&v8);
  v2 = v8;
  *(v0 + 32) = v8;
  if (v2)
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_422(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_85_0(v4);

    return sub_1AC674E40();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t AnalysisContext.setWait(enhancedContextualStrings:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6DDED4()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];

  AnalysisContext.enhancedContextualStrings.setter(v3);
  os_unfair_lock_lock((v2 + 64));
  v4 = *(v2 + 72);
  v0[4] = v4;

  os_unfair_lock_unlock((v2 + 64));
  v5 = OUTLINED_FUNCTION_24_11(&unk_1AC7AE2C0);
  v6 = OUTLINED_FUNCTION_422(v5);
  *v6 = v7;
  v6[1] = sub_1AC6E3518;

  return v9(&unk_1AC7AE2E0, 0, v4);
}

uint64_t AnalysisContext.contextualNamedEntities.getter()
{
  v0 = AnalysisContext.userData.getter();
  sub_1AC6DC72C(v0, &v3);

  if (v4)
  {
    sub_1AC5C3968(&v3, &v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1E8, &qword_1AC7AE2E8);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    sub_1AC5C720C(&v3, &qword_1EB56CA20, &qword_1AC7AE2A0);
    return 0;
  }
}

void sub_1AC6DE084(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  AnalysisContext.contextualNamedEntities.setter(v4);
}

void AnalysisContext.contextualNamedEntities.setter(uint64_t a1)
{
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1E8, &qword_1AC7AE2E8);
  }

  else
  {
    v2 = 0;
    *(&v11 + 1) = 0;
    v12 = 0;
  }

  *&v11 = a1;
  v13 = v2;
  v3 = AnalysisContext.userData.getter();
  if (v2)
  {
    sub_1AC5C3968(&v11, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AC6E0E44(v10, 0xD000000000000018, 0x80000001AC7B7C00, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_1AC5C720C(&v11, &qword_1EB56CA20, &qword_1AC7AE2A0);
    sub_1AC6E0868();
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      v8 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1F0, &qword_1AC7AE2F0);
      sub_1AC7A0B18();
      v9 = *(v3[6] + 16 * v7 + 8);

      sub_1AC5C3968((v3[7] + 32 * v7), v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
      sub_1AC6DD258();
      sub_1AC7A0B38();
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    sub_1AC5C720C(v10, &qword_1EB56CA20, &qword_1AC7AE2A0);
  }

  AnalysisContext.userData.setter(v3);
}

uint64_t AnalysisContext.contextualNamedEntities.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_64_5(a1);
  *v1 = AnalysisContext.contextualNamedEntities.getter();
  return OUTLINED_FUNCTION_196_0();
}

void sub_1AC6DE2AC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    AnalysisContext.contextualNamedEntities.setter(v5);
  }

  else
  {
    AnalysisContext.contextualNamedEntities.setter(*a1);
  }
}

void AnalysisContext.voiceCommandContext.getter()
{
  v0 = AnalysisContext.userData.getter();
  sub_1AC6DC72C(v0, &v1);
  if (v2)
  {

    sub_1AC5C3968(&v1, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1AC6DE3B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  AnalysisContext.voiceCommandContext.getter();
  return memcpy(a2, __src, 0x58uLL);
}

void sub_1AC6DE3F4(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  sub_1AC6AA558(__dst, &v4);
  AnalysisContext.voiceCommandContext.setter();
}

void AnalysisContext.voiceCommandContext.setter()
{
  v13 = &type metadata for VoiceCommandContext;
  *&v12 = swift_allocObject();
  OUTLINED_FUNCTION_52_5((v12 + 16));
  v0 = AnalysisContext.userData.getter();
  sub_1AC5C3968(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v0;
  v2 = v11;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v7 = (v6 - v5);
  (*(v8 + 16))(v6 - v5);
  memcpy(__dst, v7, sizeof(__dst));
  sub_1AC6E2098(__dst, 0xD000000000000014, 0x80000001AC7B7410, isUniquelyReferenced_nonNull_native, &v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  AnalysisContext.userData.setter(v9);
}

void (*AnalysisContext.voiceCommandContext.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x168uLL);
  *a1 = v3;
  v3[44] = v1;
  AnalysisContext.voiceCommandContext.getter();
  return sub_1AC6DE61C;
}

void sub_1AC6DE61C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 352);
  if (a2)
  {
    OUTLINED_FUNCTION_52_5((v2 + 176));
    OUTLINED_FUNCTION_52_5(v4);
    sub_1AC6AA558(v2 + 176, v2 + 264);
    AnalysisContext.voiceCommandContext.setter();
    OUTLINED_FUNCTION_52_5((v2 + 88));
    sub_1AC6AA5B4(v2 + 88);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v4);
    AnalysisContext.voiceCommandContext.setter();
  }

  free(v2);
}

uint64_t AnalysisContext.profileData.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = AnalysisContext.profileData.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_196_0();
}

uint64_t sub_1AC6DE728(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v9 = OUTLINED_FUNCTION_143();
  sub_1AC641BD8(v9, v10);
  v11 = OUTLINED_FUNCTION_143();
  return a5(v11);
}

void sub_1AC6DE790()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_78_0();
  v7 = v6 >> 60;
  if (v6 >> 60 == 15)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v29 = 0;
  }

  else
  {
    v10 = MEMORY[0x1E6969080];
    v8 = v1;
    v9 = v0;
  }

  *&v28 = v8;
  *(&v28 + 1) = v9;
  v30 = v10;
  sub_1AC641BD8(v1, v0);
  v11 = AnalysisContext.userData.getter();
  if (v7 <= 0xE)
  {
    sub_1AC5C3968(&v28, &v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v11;
    v18 = *(&v27 + 1);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v20 = *(*(v18 - 8) + 64);
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_6();
    v23 = v22 - v21;
    (*(v24 + 16))(v22 - v21);
    sub_1AC6E2254(v23, v5, v3, isUniquelyReferenced_nonNull_native, &v25, v18);
    __swift_destroy_boxed_opaque_existential_0(&v26);
    v11 = v25;
  }

  else
  {
    sub_1AC5C720C(&v28, &qword_1EB56CA20, &qword_1AC7AE2A0);
    sub_1AC6E0868();
    if (v13)
    {
      v14 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v25 = v11;
      v15 = v11[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1F0, &qword_1AC7AE2F0);
      sub_1AC7A0B18();
      v16 = *(v11[6] + 16 * v14 + 8);

      sub_1AC5C3968((v11[7] + 32 * v14), &v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
      sub_1AC6DD258();
      sub_1AC7A0B38();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    sub_1AC5C720C(&v26, &qword_1EB56CA20, &qword_1AC7AE2A0);
  }

  AnalysisContext.userData.setter(v11);
  sub_1AC604184(v1, v0);
  OUTLINED_FUNCTION_105();
}

uint64_t AnalysisContext.jitProfileData.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = AnalysisContext.jitProfileData.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_196_0();
}

uint64_t sub_1AC6DEA68(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_57_0();
    sub_1AC641BD8(v7, v8);
    v9 = OUTLINED_FUNCTION_57_0();
    a3(v9);
    v10 = OUTLINED_FUNCTION_57_0();

    return sub_1AC604184(v10, v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_57_0();
    return (a3)(v13);
  }
}

void *sub_1AC6DEC7C@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

uint64_t AnalysisContext.EnhancedContextualString.tagName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_39();
}

void __swiftcall AnalysisContext.EnhancedContextualString.init(context:tagName:isLoggable:)(Speech::AnalysisContext::EnhancedContextualString *__return_ptr retstr, Swift::String context, Swift::String_optional tagName, Swift::Bool isLoggable)
{
  retstr->context = context;
  retstr->tagName = tagName;
  retstr->isLoggable = isLoggable;
}

uint64_t sub_1AC6DED28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_99();
  v5 = swift_allocObject();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakInit();

  sub_1AC703C14();
  v6 = *(*a1 + 16);
  sub_1AC703D64(v6);
  v7 = *a1;
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = sub_1AC6B18F4;
  *(v8 + 40) = v5;

  *a1 = v7;
  return result;
}

uint64_t sub_1AC6DEDD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *result;
  v6 = *(*result + 16);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v4)
    {

      *v3 = v7;
      return result;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    v12 = *(v5 + 16 * v4 + 32);

    (v12)(&v13, v8);
    v9 = v13;
    if (v13 && (swift_unknownObjectRelease(), v9 == a2))
    {

      ++v4;
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v14 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1AC631518(0, *(v7 + 16) + 1, 1);
        v7 = v14;
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1AC631518((v10 > 1), v11 + 1, 1);
        v7 = v14;
      }

      ++v4;
      *(v7 + 16) = v11 + 1;
      *(v7 + 16 * v11 + 32) = v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnalysisContext.deinit()
{
  sub_1AC5C720C(v0 + 24, &qword_1EB56D1F8, &qword_1AC7AE2F8);
  sub_1AC5C720C(v0 + 40, &qword_1EB56D200, &qword_1AC7AE300);
  sub_1AC5C720C(v0 + 56, &qword_1EB56D208, &qword_1AC7AE308);
  sub_1AC5C720C(v0 + 72, &qword_1EB56D210, &qword_1AC7AE310);
  return v0;
}

uint64_t AnalysisContext.__deallocating_deinit()
{
  AnalysisContext.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t ContextualNamedEntity.score.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ContextualNamedEntity.category.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ContextualNamedEntity.language.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_39();
}

Speech::ContextualNamedEntity::SourceFramework_optional __swiftcall ContextualNamedEntity.SourceFramework.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1AC6DF07C@<X0>(uint64_t *a1@<X8>)
{
  result = ContextualNamedEntity.SourceFramework.rawValue.getter();
  *a1 = result;
  return result;
}

void __swiftcall ContextualNamedEntity.init(personalizationPortraitName:score:category:language:)(Speech::ContextualNamedEntity *__return_ptr retstr, Swift::String personalizationPortraitName, Swift::Double score, Swift::Int category, Swift::String language)
{
  retstr->content = personalizationPortraitName;
  retstr->sourceFramework = Speech_ContextualNamedEntity_SourceFramework_personalizationPortrait;
  retstr->score.value = score;
  retstr->score.is_nil = 0;
  retstr->category.value = category;
  retstr->category.is_nil = 0;
  retstr->language.value = language;
}

uint64_t sub_1AC6DF0F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  return result;
}

BOOL static ContextualNamedEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v16 = *(a2 + 56);
  v15 = *(a2 + 64);
  if (v14)
  {
    if (v2 != v9)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v22 = *(a2 + 40);
  v23 = *(a2 + 48);
  v17 = sub_1AC7A0D38();
  result = 0;
  if (v17)
  {
    v13 = v23;
    v12 = v22;
    if (v2 == v9)
    {
LABEL_9:
      if (v4)
      {
        if (!v11)
        {
          return 0;
        }
      }

      else
      {
        if (v3 == v10)
        {
          v19 = v11;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          return 0;
        }
      }

      if (v6)
      {
        if (!v13)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == v12)
        {
          v20 = v13;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          return 0;
        }
      }

      if (v7)
      {
        if (!v15)
        {
          return 0;
        }

        if (v8 != v16 || v7 != v15)
        {
          OUTLINED_FUNCTION_143();
          if ((sub_1AC7A0D38() & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

      return !v15;
    }
  }

  return result;
}

void ContextualNamedEntity.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = v0[7];
  v9 = v0[8];
  sub_1AC7A0048();
  MEMORY[0x1B26E9A40](v3);
  if (v5 == 1)
  {
    sub_1AC7A0E98();
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1AC7A0E98();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_12:
    sub_1AC7A0E98();
    OUTLINED_FUNCTION_66_6();
    return;
  }

  sub_1AC7A0E98();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1B26E9A70](v11);
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1AC7A0E98();
  MEMORY[0x1B26E9A40](v6);
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_4:
  sub_1AC7A0E98();
  OUTLINED_FUNCTION_66_6();

  sub_1AC7A0048();
}

uint64_t ContextualNamedEntity.hashValue.getter()
{
  sub_1AC7A0E78();
  ContextualNamedEntity.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6DF3A4()
{
  sub_1AC7A0E78();
  ContextualNamedEntity.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t VoiceCommandContext.postfixText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_39();
}

uint64_t VoiceCommandContext.selectedText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_39();
}

void *VoiceCommandContext.disambiguationActive.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *VoiceCommandContext.cursorInVisibleText.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *VoiceCommandContext.favorCommandSuppression.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void *VoiceCommandContext.abortCommandSuppression.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *VoiceCommandContext.undoEvent.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

__n128 VoiceCommandContext.init(prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t VoiceCommandContext.init(prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  a9[10] = 0;
  return result;
}

uint64_t static VoiceCommandContext.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[10];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v21 = a2[9];
  v20 = a2[10];
  v74 = v20;
  v75 = a1[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v65 = a1[2];
      v66 = a2[9];
      v68 = a1[7];
      v69 = a2[8];
      v67 = a1[8];
      v23 = a2[7];
      v24 = a1[6];
      v25 = a2[6];
      v72 = a2[5];
      v26 = a2[4];
      v27 = sub_1AC7A0D38();
      v14 = v26;
      v16 = v25;
      v7 = v24;
      v18 = v23;
      v4 = v65;
      v21 = v66;
      v10 = v67;
      v9 = v68;
      v19 = v69;
      v17 = v72;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v5 != v15)
    {
      v70 = v11;
      v73 = v17;
      v29 = v18;
      v30 = v7;
      v31 = v16;
      v32 = v8;
      v33 = v14;
      v34 = sub_1AC7A0D38();
      v14 = v33;
      v8 = v32;
      v16 = v31;
      v7 = v30;
      v18 = v29;
      v11 = v70;
      v17 = v73;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v8)
  {
    if (!v17)
    {
      return 0;
    }

    if (v6 != v14 || v8 != v17)
    {
      v36 = v18;
      v37 = v7;
      v38 = v16;
      v39 = sub_1AC7A0D38();
      v16 = v38;
      v7 = v37;
      v18 = v36;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v16)
    {
      return 0;
    }

    v71 = v19;
    v40 = v18;
    v41 = v7;
    v42 = v16;
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v43 = v42;
    v44 = v21;
    v45 = v43;
    v46 = v41;
    v47 = OUTLINED_FUNCTION_53_6();

    v21 = v44;
    v18 = v40;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v71 = v19;
    if (v16)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v18)
    {
      return 0;
    }

    v48 = v18;
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v49 = v48;
    v50 = v21;
    v51 = v49;
    v52 = v9;
    v53 = OUTLINED_FUNCTION_53_6();

    v21 = v50;
    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v10)
  {
    if (!v71)
    {
      return 0;
    }

    v9 = v10;
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v54 = v21;
    v55 = v71;
    v56 = v10;
    v57 = OUTLINED_FUNCTION_53_6();

    v21 = v54;
    if ((v57 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  if (v75)
  {
    if (!v21)
    {
      return 0;
    }

    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v58 = v21;
    v59 = v75;
    v60 = OUTLINED_FUNCTION_53_6();

    if ((v60 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v11)
  {
    if (v74)
    {
      sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
      v61 = v74;
      v62 = v11;
      v63 = OUTLINED_FUNCTION_53_6();

      if (v63)
      {
        return 1;
      }
    }
  }

  else if (!v74)
  {
    return 1;
  }

  return 0;
}

void VoiceCommandContext.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[7];
  v5 = v0[8];
  v14 = v0[9];
  v12 = v0[4];
  v13 = v0[10];
  if (v0[1])
  {
    v7 = *v0;
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_80_1();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_80_1();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_83();
  sub_1AC7A0048();
  if (v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_80_1();
LABEL_8:
  if (v3)
  {
    OUTLINED_FUNCTION_83();
    v8 = v3;
    OUTLINED_FUNCTION_71_4();

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    if (v6)
    {
LABEL_10:
      OUTLINED_FUNCTION_83();
      v9 = v6;
      OUTLINED_FUNCTION_71_4();

      if (v5)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_80_1();
  if (v5)
  {
LABEL_11:
    OUTLINED_FUNCTION_83();
    v10 = v5;
    OUTLINED_FUNCTION_71_4();

    if (v14)
    {
      goto LABEL_12;
    }

LABEL_19:
    OUTLINED_FUNCTION_80_1();
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_20:
    OUTLINED_FUNCTION_80_1();
    return;
  }

LABEL_18:
  OUTLINED_FUNCTION_80_1();
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_12:
  OUTLINED_FUNCTION_83();
  v11 = v14;
  OUTLINED_FUNCTION_71_4();

  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_13:
  OUTLINED_FUNCTION_83();
  v15 = v13;
  sub_1AC7A0768();
}

uint64_t VoiceCommandContext.hashValue.getter()
{
  sub_1AC7A0E78();
  VoiceCommandContext.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6DFAC8()
{
  sub_1AC7A0E78();
  VoiceCommandContext.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6DFB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6DFBB0, 0, 0);
}

uint64_t sub_1AC6DFBB0()
{
  OUTLINED_FUNCTION_38_7();
  while (1)
  {
    v6 = *(v1 + 104);
    if (!v0)
    {
      break;
    }

    v8 = *(v1 + 88);
    v7 = *(v1 + 96);
    v9 = sub_1AC7A0288();
    OUTLINED_FUNCTION_25_10(v9);
    OUTLINED_FUNCTION_613();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_16_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v32, v33);
    LODWORD(v8) = __swift_getEnumTagSinglePayload(v6, 1, v5);
    OUTLINED_FUNCTION_61_4();
    swift_unknownObjectRetain_n();

    v18 = *(v1 + 104);
    if (v8 == 1)
    {
      sub_1AC5C720C(*(v1 + 104), &qword_1EB56BE70, &qword_1AC7A8270);
      v5 = 28928;
    }

    else
    {
      sub_1AC7A0278();
      OUTLINED_FUNCTION_63_4();
      (*(v19 + 8))(v18, v5);
      v5 = v7 | 0x7100;
    }

    v20 = *v3;
    if (*v3)
    {
      v21 = *(v4 + 24);
      v22 = *v3;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = sub_1AC7A01B8();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v3 = **(v1 + 72);
    OUTLINED_FUNCTION_99();
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_1AC7AE830;
    *(v26 + 24) = v4;
    v27 = v25 | v23;
    if (v25 | v23)
    {
      v27 = v32;
      *v32 = 0;
      v32[1] = 0;
      *(v1 + 32) = v23;
      *(v1 + 40) = v25;
    }

    OUTLINED_FUNCTION_58_4(v27);
    swift_task_create();

    sub_1AC5C720C(v20, &qword_1EB56BE70, &qword_1AC7A8270);
    swift_unknownObjectRelease();
    v2 += 16;
    --v0;
  }

  v28 = *(v1 + 112);

  OUTLINED_FUNCTION_44();

  return v29();
}

uint64_t sub_1AC6DFDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6DFE88, 0, 0);
}

uint64_t sub_1AC6DFE88()
{
  OUTLINED_FUNCTION_38_7();
  while (1)
  {
    v6 = *(v1 + 104);
    if (!v0)
    {
      break;
    }

    v8 = *(v1 + 88);
    v7 = *(v1 + 96);
    v9 = sub_1AC7A0288();
    OUTLINED_FUNCTION_25_10(v9);
    OUTLINED_FUNCTION_613();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_16_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v32, v33);
    LODWORD(v8) = __swift_getEnumTagSinglePayload(v6, 1, v5);
    OUTLINED_FUNCTION_61_4();
    swift_retain_n();

    v18 = *(v1 + 104);
    if (v8 == 1)
    {
      sub_1AC5C720C(*(v1 + 104), &qword_1EB56BE70, &qword_1AC7A8270);
      v5 = 28928;
    }

    else
    {
      sub_1AC7A0278();
      OUTLINED_FUNCTION_63_4();
      (*(v19 + 8))(v18, v5);
      v5 = v7 | 0x7100;
    }

    v20 = *v3;
    if (*v3)
    {
      v21 = *(v4 + 24);
      v22 = *v3;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = sub_1AC7A01B8();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v3 = **(v1 + 72);
    OUTLINED_FUNCTION_99();
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_1AC7AE7D8;
    *(v26 + 24) = v4;
    v27 = v25 | v23;
    if (v25 | v23)
    {
      v27 = v32;
      *v32 = 0;
      v32[1] = 0;
      *(v1 + 32) = v23;
      *(v1 + 40) = v25;
    }

    OUTLINED_FUNCTION_58_4(v27);
    swift_task_create();

    sub_1AC5C720C(v20, &qword_1EB56BE70, &qword_1AC7A8270);

    v2 += 16;
    --v0;
  }

  v28 = *(v1 + 112);

  OUTLINED_FUNCTION_44();

  return v29();
}

uint64_t sub_1AC6E00B4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_1AC6E01B0;

  return v10(v6 + 2);
}

uint64_t sub_1AC6E01B0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6E0294(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_1AC6E0390;

  return v10(v6 + 2);
}

uint64_t sub_1AC6E0390()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

id sub_1AC6E0474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1AC79FF58();

  if (a4)
  {
    v9 = sub_1AC79FF58();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithContext:v8 tagName:v9 isLoggable:a5 & 1];

  return v10;
}

id sub_1AC6E0510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  if (a1)
  {
    v17 = sub_1AC7A0148();

    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    if (a2)
    {
LABEL_3:
      v18 = sub_1AC7A0148();

      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v18 = 0;
  if (a3)
  {
LABEL_4:
    v19 = sub_1AC7A0148();

    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:
    v20 = 0;
    if (a5)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v19 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v20 = sub_1AC7A0148();

  if (a5)
  {
LABEL_6:
    sub_1AC5CF764(0, &qword_1EB56D2A0, off_1E797ADD0);
    v21 = sub_1AC7A0148();

    goto LABEL_12;
  }

LABEL_11:
  v21 = 0;
LABEL_12:
  if (a7 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_1AC79F858();
    sub_1AC604184(a6, a7);
  }

  if (a9 >> 60 != 15)
  {
    v23 = sub_1AC79F858();
    sub_1AC604184(a8, a9);
    if (a10)
    {
      goto LABEL_17;
    }

LABEL_19:
    v24 = 0;
    goto LABEL_20;
  }

  v23 = 0;
  if (!a10)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_1AC5CF764(0, &qword_1EB56CA30, off_1E797ADE8);
  v24 = sub_1AC7A0148();

LABEL_20:
  v25 = [v27 initWithLeftContext:v17 rightContext:v18 selectedText:v19 contextualStrings:v20 contextualNamedEntities:v21 profileData:v22 jitProfileData:v23 enhancedContextualStrings:v24];

  return v25;
}

id sub_1AC6E0748(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = sub_1AC79FF58();

  if (a7)
  {
    v14 = sub_1AC79FF58();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 initWithContent:v13 sourceFramework:a3 score:a4 category:a5 language:v14];

  return v15;
}

unint64_t sub_1AC6E0808()
{
  OUTLINED_FUNCTION_50_8();
  sub_1AC7A0048();
  sub_1AC7A0EC8();
  v0 = OUTLINED_FUNCTION_143();

  return sub_1AC6E0930(v0, v1, v2);
}

void sub_1AC6E0868()
{
  OUTLINED_FUNCTION_50_8();
  sub_1AC7A0048();
  sub_1AC7A0EC8();
  OUTLINED_FUNCTION_143();
  sub_1AC6E09E4();
}

unint64_t sub_1AC6E08C4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1AC7A0E78();
  sub_1AC6F7B7C(v6);
  v4 = sub_1AC7A0EC8();

  return sub_1AC6E0A90(a1, v4);
}

unint64_t sub_1AC6E0930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1AC7A0D38() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_1AC6E09E4()
{
  OUTLINED_FUNCTION_78_0();
  v3 = ~(-1 << *(v1 + 32));
  for (i = v4 & v3; ((1 << i) & *(v1 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v6 = (*(v1 + 48) + 16 * i);
    v7 = *v6 == v2 && v6[1] == v0;
    if (v7 || (sub_1AC7A0D38() & 1) != 0)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_66_6();
}

unint64_t sub_1AC6E0A90(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = ~(-1 << *(v2 + 32));
  for (i = a2 & v10; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    sub_1AC61B924(*(v2 + 48) + *(v6 + 72) * i, v9);
    sub_1AC6F77D4(v9, a1, v12, v13, v14, v15, v16, v17, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v19 = v18;
    sub_1AC6E34BC(v9);
    if (v19)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1AC6E0BC4()
{
  OUTLINED_FUNCTION_85();
  v6 = (v0 + *v0);
  v1 = v0[1];
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_64_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return v6();
}

uint64_t *sub_1AC6E0CA0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1AC6E196C(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_1AC6E0D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_15_8(a1, a2);
  v8 = sub_1AC6E0808();
  OUTLINED_FUNCTION_0_12(v8, v9);
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D278, &qword_1AC7AE790);
  if ((OUTLINED_FUNCTION_23_8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_1AC6E0808();
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1AC7A0DC8();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    OUTLINED_FUNCTION_66_6();

    return sub_1AC6E2FA4(v20, v21);
  }

  else
  {
    sub_1AC7042B8(v13, a2, a3, a1, v18);
    OUTLINED_FUNCTION_66_6();
  }
}

uint64_t sub_1AC6E0E44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_1AC6E2254(v13, a2, a3, a4, v4, v9);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_1AC6E0F44()
{
  OUTLINED_FUNCTION_104();
  v3 = OUTLINED_FUNCTION_48_7();
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v7 = OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_0_12(v7, v8);
  if (v10)
  {
    __break(1u);
LABEL_11:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C910, &qword_1AC7AAE78);
  OUTLINED_FUNCTION_34_8();
  if (sub_1AC7A0B18())
  {
    v12 = *v1;
    sub_1AC6E08C4(v0);
    OUTLINED_FUNCTION_5_11();
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v14 = *v1;
  if (v11)
  {
    OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_105();
  }

  else
  {
    sub_1AC61B924(v0, v2);
    v16 = OUTLINED_FUNCTION_62_5();
    sub_1AC704304(v16, v17, v18, v19);
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC6E1048()
{
  OUTLINED_FUNCTION_104();
  v3 = OUTLINED_FUNCTION_48_7();
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v7 = OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_0_12(v7, v8);
  if (v10)
  {
    __break(1u);
LABEL_11:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C998, &unk_1AC7AE850);
  OUTLINED_FUNCTION_34_8();
  if (sub_1AC7A0B18())
  {
    v12 = *v1;
    sub_1AC6E08C4(v0);
    OUTLINED_FUNCTION_5_11();
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v14 = *v1;
  if (v11)
  {
    OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_105();
  }

  else
  {
    sub_1AC61B924(v0, v2);
    v16 = OUTLINED_FUNCTION_62_5();
    sub_1AC704304(v16, v17, v18, v19);
    OUTLINED_FUNCTION_105();
  }
}

_OWORD *sub_1AC6E114C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_15_8(a1, a2);
  v8 = sub_1AC6E0808();
  OUTLINED_FUNCTION_0_12(v8, v9);
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D280, &qword_1AC7AE798);
  if ((OUTLINED_FUNCTION_23_8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  OUTLINED_FUNCTION_143();
  v16 = sub_1AC6E0808();
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1AC7A0DC8();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0((*(v18 + 56) + 32 * v13));
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_66_6();

    return sub_1AC5C3968(v19, v20);
  }

  else
  {
    sub_1AC704380(v13, a2, a3, a1, v18);
    OUTLINED_FUNCTION_66_6();
  }
}

id sub_1AC6E1260()
{
  OUTLINED_FUNCTION_104();
  v8 = OUTLINED_FUNCTION_11_12(v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_0_12(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_1AC7A0DC8();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D4A0, &qword_1AC7AE768);
  if (OUTLINED_FUNCTION_22_8())
  {
    v15 = *v2;
    v16 = OUTLINED_FUNCTION_10_13();
    sub_1AC5D0E20(v16, v17, v18);
    OUTLINED_FUNCTION_5_11();
    if (!v20)
    {
      goto LABEL_14;
    }

    v13 = v19;
  }

  if (v14)
  {
    v21 = (*(*v2 + 56) + 16 * v13);
    v22 = v21[1];
    *v21 = v1;
    v21[1] = v0;
    OUTLINED_FUNCTION_105();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_27_9();
    sub_1AC7043C4(v25, v26, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_105();

    return sub_1AC5D0DD0(v32, v33, v34);
  }
}

uint64_t sub_1AC6E1340()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1AC6E0808();
  OUTLINED_FUNCTION_0_12(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D288, &unk_1AC7AE7A0);
  OUTLINED_FUNCTION_34_8();
  if ((sub_1AC7A0B18() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_1AC6E0808();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1AC7A0DC8();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    v22 = (*(v21 + 56) + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    OUTLINED_FUNCTION_105();
  }

  else
  {
    sub_1AC704404(v16, v5, v3, v9, v7, v21);
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC6E14E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v15 = OUTLINED_FUNCTION_15_8(a1, a2);
  v18 = sub_1AC5D0E20(v15, v16, v17);
  OUTLINED_FUNCTION_0_12(v18, v19);
  if (v22)
  {
    __break(1u);
LABEL_14:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v23 = v20;
  v24 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (OUTLINED_FUNCTION_22_8())
  {
    v25 = *v8;
    v26 = OUTLINED_FUNCTION_32_8();
    sub_1AC5D0E20(v26, v27, v28);
    OUTLINED_FUNCTION_5_11();
    if (!v30)
    {
      goto LABEL_14;
    }

    v23 = v29;
  }

  v31 = *v11;
  if (v24)
  {
    v32 = *(v31 + 56);
    v33 = *(v32 + 8 * v23);
    *(v32 + 8 * v23) = a1;
    OUTLINED_FUNCTION_14();
  }

  else
  {
    a8(v23, a2, a3, a4, a1, v31);
    OUTLINED_FUNCTION_32_8();
    OUTLINED_FUNCTION_14();

    sub_1AC5D0DD0(v36, v37, v38);
  }
}

void sub_1AC6E1600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = OUTLINED_FUNCTION_11_12(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_0_12(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_14:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D270, &qword_1AC7AE788);
  if (OUTLINED_FUNCTION_22_8())
  {
    v15 = *v7;
    v16 = OUTLINED_FUNCTION_10_13();
    sub_1AC5D0E20(v16, v17, v18);
    OUTLINED_FUNCTION_5_11();
    if (!v20)
    {
      goto LABEL_14;
    }

    v13 = v19;
  }

  if (v14)
  {
    v21 = (*(*v7 + 56) + 16 * v13);
    v22 = v21[1];
    v36 = *v21;
    *v21 = v6;
    v21[1] = v5;
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_27_9();
    sub_1AC7043C4(v25, v26, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_14();

    sub_1AC5D0DD0(v32, v33, v34);
  }
}

uint64_t sub_1AC6E16F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_15_8(a1, a2);
  v8 = sub_1AC6E0808();
  OUTLINED_FUNCTION_0_12(v8, v9);
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D290, &unk_1AC7AFB60);
  if ((OUTLINED_FUNCTION_23_8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_1AC6E0808();
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1AC7A0DC8();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;
    OUTLINED_FUNCTION_66_6();
  }

  else
  {
    sub_1AC7044A0(v13, a2, a3, a1, v18);
    OUTLINED_FUNCTION_66_6();
  }
}

uint64_t *sub_1AC6E1808(uint64_t a1, uint64_t *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_7();
      a2 = sub_1AC6E0CA0(v15, v16, v17, v18, v19);
      MEMORY[0x1B26EAB10](v14, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1AC613DA0(0, v5, v20 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_40_7();
  sub_1AC6E196C(v6, v7, v8, v9, v10);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v11;
  }

LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1AC6E196C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = 0;
  v7 = a3 + 64;
  v6 = *(a3 + 64);
  v8 = *(a3 + 32);
  OUTLINED_FUNCTION_117_0();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  while (v12)
  {
    OUTLINED_FUNCTION_59_5();
LABEL_9:
    v19 = v15 | (v5 << 6);
    v20 = (*(v9 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    if (*v20 != v17 || v22 != v16)
    {
      OUTLINED_FUNCTION_39();
      sub_1AC7A0D38();
      OUTLINED_FUNCTION_33_7();
      if ((v24 & 1) == 0 && (v21 != 0x6F4374686769725FLL || v22 != 0xED0000747865746ELL))
      {
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_67_6();
        OUTLINED_FUNCTION_33_7();
        if ((v26 & 1) == 0 && (v21 != 0x657463656C65735FLL || v22 != 0xED00007478655464))
        {
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_67_6();
          OUTLINED_FUNCTION_33_7();
          if ((v28 & 1) == 0)
          {
            *(a1 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
            if (__OFADD__(v34++, 1))
            {
              __break(1u);
LABEL_27:
              sub_1AC6E1B5C(a1, a2, v34, v9, a4, a5);
              return;
            }
          }
        }
      }
    }
  }

  v18 = v5;
  while (1)
  {
    v5 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v5 >= v14)
    {
      goto LABEL_27;
    }

    ++v18;
    if (*(v7 + 8 * v5))
    {
      OUTLINED_FUNCTION_57_5();
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1AC6E1B5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1AC7A0BC8();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v34 = v6;
  while (v12)
  {
    OUTLINED_FUNCTION_59_5();
LABEL_16:
    v17 = v15 | (v13 << 6);
    v18 = *(v6 + 56);
    v19 = (*(v6 + 48) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v18 + 8 * v17);
    v23 = *(v11 + 40);
    sub_1AC7A0E78();

    sub_1AC7A0048();
    result = sub_1AC7A0EC8();
    v24 = -1 << *(v11 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v14 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v11 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v11 + 56) + 8 * v27) = v22;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_31;
    }

    v6 = v34;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    ++v16;
    if (a1[v13])
    {
      OUTLINED_FUNCTION_57_5();
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC6E1D78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C5380;

  return sub_1AC6DFB04(a1, a2, v10, a4, a5);
}

uint64_t sub_1AC6E1E40(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1AC5C4D48;

  return sub_1AC6E00B4(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1AC6E1F08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C4D48;

  return sub_1AC6DFDDC(a1, a2, v10, a4, a5);
}

uint64_t sub_1AC6E1FD0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1AC5C4D48;

  return sub_1AC6E0294(a1, a2, a3, a4, v10, v11);
}

_OWORD *sub_1AC6E2098(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = &type metadata for VoiceCommandContext;
  *&v23 = swift_allocObject();
  memcpy((v23 + 16), a1, 0x58uLL);
  v9 = *a5;
  sub_1AC6E0868();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1F0, &qword_1AC7AE2F0);
  if ((sub_1AC7A0B18() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *a5;
  sub_1AC6E0868();
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_1AC7A0DC8();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *a5;
  if (v13)
  {
    v18 = (v17[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0(v18);
    return sub_1AC5C3968(&v23, v18);
  }

  else
  {
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v23, &type metadata for VoiceCommandContext);
    MEMORY[0x1EEE9AC00](v20);
    initializeWithCopy for VoiceCommandContext(v22, v21);
    memcpy(__dst, v22, sizeof(__dst));
    sub_1AC6E3000(v12, a2, a3, __dst, v17);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }
}

_OWORD *sub_1AC6E2254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v30 = a6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v29);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0Tm, a1, a6);
  v12 = *a5;
  sub_1AC6E0868();
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1F0, &qword_1AC7AE2F0);
  if ((sub_1AC7A0B18() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *a5;
  sub_1AC6E0868();
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_10:
    result = sub_1AC7A0DC8();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *a5;
  if (v16)
  {
    v21 = (v20[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_0(v21);
    return sub_1AC5C3968(&v29, v21);
  }

  else
  {
    v23 = v30;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
    v25 = *(*(v23 - 8) + 64);
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27);
    sub_1AC6E30C8(v15, a2, a3, v27, v20, a6);
    __swift_destroy_boxed_opaque_existential_0(&v29);
  }
}

unint64_t sub_1AC6E246C()
{
  result = qword_1EB56B0A8;
  if (!qword_1EB56B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B0A8);
  }

  return result;
}

unint64_t sub_1AC6E24C4()
{
  result = qword_1EB56B0B8;
  if (!qword_1EB56B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B0B8);
  }

  return result;
}

unint64_t sub_1AC6E251C()
{
  result = qword_1EB56D218;
  if (!qword_1EB56D218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D220, &qword_1AC7AE490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D218);
  }

  return result;
}

unint64_t sub_1AC6E2584()
{
  result = qword_1EB56D228;
  if (!qword_1EB56D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D228);
  }

  return result;
}

unint64_t sub_1AC6E25DC()
{
  result = qword_1EB56D230;
  if (!qword_1EB56D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D230);
  }

  return result;
}

unint64_t sub_1AC6E2634()
{
  result = qword_1EB56D238;
  if (!qword_1EB56D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D238);
  }

  return result;
}

void *sub_1AC6E26E8(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

uint64_t sub_1AC6E272C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1AC6E276C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AnalysisContext.EnhancedContextualString(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

uint64_t initializeWithCopy for AnalysisContext.EnhancedContextualString(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for AnalysisContext.EnhancedContextualString(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for AnalysisContext.EnhancedContextualString(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t destroy for ContextualNamedEntity(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 64);
}

uint64_t initializeWithCopy for ContextualNamedEntity(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  return a1;
}

uint64_t assignWithCopy for ContextualNamedEntity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a1 + 64);
  *(a1 + 64) = v7;

  return a1;
}

uint64_t assignWithTake for ContextualNamedEntity(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for ContextualNamedEntity(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for ContextualNamedEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextualNamedEntity.SourceFramework(_BYTE *result, unsigned int a2, unsigned int a3)
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

void destroy for VoiceCommandContext(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);

  v4 = *(a1 + 40);

  v5 = *(a1 + 80);
}

void *initializeWithCopy for VoiceCommandContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[6];
  v7 = a2[7];
  a1[6] = v6;
  a1[7] = v7;
  v8 = a2[8];
  v9 = a2[9];
  a1[8] = v8;
  a1[9] = v9;
  v10 = a2[10];
  a1[10] = v10;

  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  return a1;
}

void *assignWithCopy for VoiceCommandContext(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v6 = a1[5];
  a1[5] = a2[5];

  v7 = a1[6];
  v8 = a2[6];
  a1[6] = v8;
  v9 = v8;

  v10 = a1[7];
  v11 = a2[7];
  a1[7] = v11;
  v12 = v11;

  v13 = a1[8];
  v14 = a2[8];
  a1[8] = v14;
  v15 = v14;

  v16 = a1[9];
  v17 = a2[9];
  a1[9] = v17;
  v18 = v17;

  v19 = a1[10];
  v20 = a2[10];
  a1[10] = v20;
  v21 = v20;

  return a1;
}

uint64_t assignWithTake for VoiceCommandContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  v8 = *(a1 + 40);

  v9 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);

  v10 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);

  v11 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for VoiceCommandContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for VoiceCommandContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_OWORD *sub_1AC6E3000(unint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v16 = &type metadata for VoiceCommandContext;
  *&v15 = swift_allocObject();
  memcpy((v15 + 16), a4, 0x58uLL);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1AC5C3968(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_1AC6E30C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0Tm, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_1AC5C3968(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1AC6E319C()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_78_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_45_0(v5);

  return v8(v7);
}

uint64_t sub_1AC6E3240()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_12_9(v6);

  return v9(v8);
}

uint64_t sub_1AC6E32DC()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_78_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_45_0(v5);

  return v8(v7);
}

uint64_t sub_1AC6E3380()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_12_9(v6);

  return v9(v8);
}

uint64_t sub_1AC6E341C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C5380;
  v6 = OUTLINED_FUNCTION_39();

  return v7(v6);
}

uint64_t sub_1AC6E34BC(uint64_t a1)
{
  v2 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_25_10(uint64_t a1)
{
  v5 = *v1;

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_46_8()
{

  return sub_1AC6DD654(v0 + 72, v0);
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return type metadata accessor for SpeechRecognizerSupportedFeatures();
}

void *OUTLINED_FUNCTION_52_5(void *a1)
{

  return memcpy(a1, v1, 0x58uLL);
}

void OUTLINED_FUNCTION_58_4(uint64_t a1@<X8>)
{
  v3 = v1[14];
  v1[6] = 1;
  v1[7] = a1;
  v1[8] = v2;
}

uint64_t sub_1AC6E3718()
{
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC79FDE8();
  __swift_project_value_buffer(v0, qword_1ED9386C8);
  v1 = sub_1AC79FDC8();
  v2 = sub_1AC7A05E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1AC5CFE74(0xD00000000000003CLL, 0x80000001AC7B7D80, &v6);
    _os_log_impl(&dword_1AC5BC000, v1, v2, "EARSpeechRecognitionResultStream.%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B26EAB10](v4, -1, -1);
    MEMORY[0x1B26EAB10](v3, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC6A37F8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC6E38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC6A55BC(a1, a2, a3, a4, a5, a6, a7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC6E3978(double a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC6A5880(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC6E39F4(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC6E3A64(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFE44(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARSpeechRecognitionResultStream();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

void *sub_1AC6E3AEC()
{
  v1 = v0;
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[17];
  sub_1AC6E80A4(v2, v3, *(v1 + 128));
  sub_1AC5D1128(v1[14], v1[15], *(v1 + 128));
  v5 = v1[17];

  sub_1AC6E64F0((v1 + 18));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1AC6E3B44()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_1AC5D1128(*(v0 + 112), *(v0 + 120), *(v0 + 128));
    v1 = *(v0 + 136);

    swift_defaultActor_destroy();
  }

  else
  {
    sub_1AC6E3AEC();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC6E3BC0()
{
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognitionResultStream();
  OUTLINED_FUNCTION_4_11();
  sub_1AC6E5160(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6E3C3C()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARSpeechRecognitionResultStream();
    OUTLINED_FUNCTION_4_11();
    sub_1AC6E5160(v1, v2, v3);
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC6E3D04()
{
  v1 = *v0;
  type metadata accessor for EARSpeechRecognitionResultStream();
  sub_1AC6E5160(&qword_1EB56C9D0, v2, type metadata accessor for EARSpeechRecognitionResultStream);
  return sub_1AC79FC28();
}

uint64_t sub_1AC6E3D7C()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognitionResultStream();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6E3DD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARSpeechRecognitionResultStream();
  v6 = sub_1AC6E5160(&qword_1EB56C9D0, v5, type metadata accessor for EARSpeechRecognitionResultStream);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC6E3E5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EARSpeechRecognitionResultStream();
  sub_1AC6E5160(&qword_1EB56C9D0, v3, type metadata accessor for EARSpeechRecognitionResultStream);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AC6E3EF8()
{
  v1 = *v0;
  type metadata accessor for EARSpeechRecognitionResultStream();
  sub_1AC6E5160(&qword_1EB56C9D0, v2, type metadata accessor for EARSpeechRecognitionResultStream);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

id sub_1AC6E3F8C()
{
  result = xpcInterface_EARSpeechRecognitionResultStream();
  qword_1EB56E600 = result;
  return result;
}

id sub_1AC6E3FB4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC6Speech32EARSpeechRecognitionResultStream8XPCProxy_enqueue;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D318, &unk_1AC7AEA48);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v2[v6] = sub_1AC6E51A8();

  sub_1AC6E407C(a1, a2);

  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  sub_1AC6E5440(a2);
  return v10;
}

uint64_t sub_1AC6E407C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D320, &qword_1AC7AEA58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1AC61BB80(a2, &v17 - v11);
  v12 = *(*v2 + 96);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, v2 + v12, v4);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v5 + 32))(v15 + v14, v8, v4);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  sub_1AC659DBC();
}

uint64_t sub_1AC6E4278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D348, &qword_1AC7AEA90);
  v5 = OUTLINED_FUNCTION_40(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v20 - v10;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  sub_1AC61BB80(a2, &v20 - v14);
  v15 = *(*v2 + 96);
  OUTLINED_FUNCTION_235();
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v11, v2 + v15, v4);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v7 + 32))(v18 + v17, v11, v4);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  sub_1AC659DBC();
}

uint64_t sub_1AC6E4460(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC6Speech32EARSpeechRecognitionResultStream8XPCProxy_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(inited + 32) = sub_1AC6E64CC;
  *(inited + 40) = v5;
  v6 = a1;
  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6E460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtCC6Speech32EARSpeechRecognitionResultStream8XPCProxy_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(inited + 32) = a3;
  *(inited + 40) = v8;

  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6E46D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AC5CF764(0, &unk_1EB56D378, off_1E797AC90);
  v8 = sub_1AC79FE28();
  v9 = a1;
  sub_1AC6E460C(v8, a4, a5);
}

uint64_t sub_1AC6E4908(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtCC6Speech32EARSpeechRecognitionResultStream8XPCProxy_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(inited + 32) = a3;
  *(inited + 40) = v8;
  v9 = a1;
  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6E4A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v15 = *(v7 + OBJC_IVAR____TtCC6Speech32EARSpeechRecognitionResultStream8XPCProxy_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a5;
  *(v17 + 40) = a3;
  *(v17 + 48) = a6;
  *(v17 + 56) = a4;
  *(v17 + 64) = a7;
  *(inited + 32) = sub_1AC6E63B4;
  *(inited + 40) = v17;

  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

void sub_1AC6E4B2C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, double a6, double a7, double a8)
{
  v15 = *a1;
  if (a4 >> 62)
  {
    v16 = sub_1AC7A08E8();
  }

  else
  {
    v16 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1AC631164();
    if (v16 < 0)
    {
      __break(1u);
      return;
    }

    v23 = a2;
    v24 = a5;
    v18 = 0;
    v17 = v25;
    do
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1B26E95B0](v18, a4);
      }

      else
      {
        v19 = *(a4 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 integerValue];

      v22 = *(v25 + 16);
      if (v22 >= *(v25 + 24) >> 1)
      {
        sub_1AC631164();
      }

      ++v18;
      *(v25 + 16) = v22 + 1;
      *(v25 + 8 * v22 + 32) = v21;
    }

    while (v16 != v18);
    a5 = v24;
    a2 = v23;
  }

  sub_1AC6E38BC(a2, a3, v17, a5, a6, a7, a8);
}

uint64_t sub_1AC6E4D94(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC6Speech32EARSpeechRecognitionResultStream8XPCProxy_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(inited + 32) = sub_1AC6E638C;
  *(inited + 40) = v5;
  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6E4E94(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC6Speech32EARSpeechRecognitionResultStream8XPCProxy_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(inited + 32) = sub_1AC6E6368;
  *(inited + 40) = v5;
  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

id _s6Speech24AssetInstallationRequestCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC6E5160(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC6E51A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D330, &qword_1AC7AEA78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D338, &qword_1AC7AEA80);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D320, &qword_1AC7AEA58);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D340, &qword_1AC7AEA88);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v1);
  sub_1AC7A0298();
  (*(v2 + 8))(v5, v1);
  (*(v11 + 32))(v0 + *(*v0 + 96), v14, v10);
  (*(v6 + 32))(v0 + *(*v0 + 104), v9, v17);
  return v0;
}

uint64_t sub_1AC6E5440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC6E54A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D358, &qword_1AC7AEAB0);
  OUTLINED_FUNCTION_40(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D360, &qword_1AC7AEAB8);
  OUTLINED_FUNCTION_40(v26);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D348, &qword_1AC7AEA90);
  OUTLINED_FUNCTION_40(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v25 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D368, &qword_1AC7AEAC0);
  (*(v3 + 104))(v8, *MEMORY[0x1E69E8650], v1);
  sub_1AC7A0298();
  (*(v3 + 8))(v8, v1);
  (*(v18 + 32))(v0 + *(*v0 + 96), v23, v16);
  (*(v10 + 32))(v0 + *(*v0 + 104), v15, v26);
  return v0;
}

uint64_t sub_1AC6E5710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D328, &qword_1AC7AEA70);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6E57DC, 0, 0);
}

uint64_t sub_1AC6E57DC()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D320, &qword_1AC7AEA58);
  sub_1AC7A02D8();
  OUTLINED_FUNCTION_16_10();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_12(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0(v6);

  return MEMORY[0x1EEE6D9C8](v8);
}

uint64_t sub_1AC6E5890()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*v0 + 96);
  v2 = *v0;
  OUTLINED_FUNCTION_18();
  *v3 = v2;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6E597C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13_6();
  if (v1)
  {
    v2 = v0[8];
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v4 = Strong;
      if (sub_1AC79FC58())
      {

        return MEMORY[0x1EEE6DFA0](sub_1AC6E5ADC, v4, 0);
      }
    }

    v8 = v0[14];
    sub_1AC5C3958(v0[13]);
    v9 = *(MEMORY[0x1E69E8678] + 4);
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_3_12(v10);
    *v11 = v12;
    v11[1] = sub_1AC6E5890;
    v13 = v0[11];
    v14 = v0[9];
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6D9C8](v15);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_12_10();
    v6(v5);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1AC6E5ADC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_11();
  v0();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC6E5B40()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[15];

  v2 = v0[14];
  sub_1AC5C3958(v0[13]);
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_12(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0(v5);

  return MEMORY[0x1EEE6D9C8](v7);
}

uint64_t sub_1AC6E5BD4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D320, &qword_1AC7AEA58) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_10_14(*(v1 + 64));
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_7_12(v3);

  return sub_1AC6E5710(v4, v5, v6, v7, v8);
}

uint64_t sub_1AC6E5CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D350, &qword_1AC7AEAA8);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6E5DA4, 0, 0);
}

uint64_t sub_1AC6E5DA4()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D348, &qword_1AC7AEA90);
  sub_1AC7A02D8();
  OUTLINED_FUNCTION_16_10();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_12(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0(v6);

  return MEMORY[0x1EEE6D9C8](v8);
}

uint64_t sub_1AC6E5E58()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*v0 + 96);
  v2 = *v0;
  OUTLINED_FUNCTION_18();
  *v3 = v2;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6E5F44()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13_6();
  if (v1)
  {
    v2 = v0[8];
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v4 = Strong;
      if (sub_1AC79FC58())
      {

        return MEMORY[0x1EEE6DFA0](sub_1AC6E60A4, v4, 0);
      }
    }

    v8 = v0[14];
    sub_1AC5C3958(v0[13]);
    v9 = *(MEMORY[0x1E69E8678] + 4);
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_3_12(v10);
    *v11 = v12;
    v11[1] = sub_1AC6E5E58;
    v13 = v0[11];
    v14 = v0[9];
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6D9C8](v15);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_12_10();
    v6(v5);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1AC6E60A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_11();
  v0();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC6E6108()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[15];

  v2 = v0[14];
  sub_1AC5C3958(v0[13]);
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_12(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0(v5);

  return MEMORY[0x1EEE6D9C8](v7);
}

uint64_t objectdestroy_9Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_40(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v5 + 8))(v2 + v7, v3);
  v11 = *(v2 + v9);

  return MEMORY[0x1EEE6BDD0](v2, v9 + 8, v6 | 7);
}

uint64_t sub_1AC6E6264()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D348, &qword_1AC7AEA90) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_10_14(*(v1 + 64));
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_7_12(v3);

  return sub_1AC6E5CD8(v4, v5, v6, v7, v8);
}

uint64_t sub_1AC6E638C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_1AC6E3978(v2);
}

__n128 sub_1AC6E65A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = swift_conformsToProtocol();
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v23 + 1) = a2;
  __swift_allocate_boxed_opaque_existential_0Tm(&v22);
  sub_1AC79FCB8();
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  DynamicType = swift_getDynamicType();
  (*(v6 + 8))(v9, a2);
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v20 = DynamicType;
  v17 = v22;
  v18 = v23;
  sub_1AC5C3968(&v20, v19);
  sub_1AC5C3978();
  v11 = *(*v3 + 16);
  sub_1AC5C1578(v11);
  v12 = *v3;
  *(v12 + 16) = v11 + 1;
  v13 = v12 + (v11 << 6);
  result = v17;
  v15 = v18;
  v16 = v19[1];
  *(v13 + 64) = v19[0];
  *(v13 + 80) = v16;
  *(v13 + 32) = result;
  *(v13 + 48) = v15;
  *v3 = v12;
  return result;
}

uint64_t sub_1AC6E6764()
{
  OUTLINED_FUNCTION_85();
  v1[11] = v13;
  v1[12] = v0;
  v1[9] = v11;
  v1[10] = v12;
  v1[7] = v2;
  v1[8] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[2] = v8;
  v1[13] = swift_conformsToProtocol();

  return MEMORY[0x1EEE6DFA0](sub_1AC6E67F8, 0, 0);
}

uint64_t sub_1AC6E67F8()
{
  v1 = *(v0 + 96);
  v2 = sub_1AC6E8900(*(v0 + 24), *(v0 + 56), *(v0 + 80));
  *(v0 + 112) = v2;
  v3 = v2;
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  v10 = *(v0 + 72);
  v11 = *(v0 + 32);
  *(v9 + 16) = *(v0 + 56);
  *(v9 + 32) = v10;
  *(v9 + 48) = v6;
  *(v9 + 56) = v4;
  *(v9 + 64) = v3;
  *(v9 + 72) = v5;
  *(v9 + 80) = v11;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 128) = v13;
  *v13 = v14;
  v13[1] = sub_1AC6E698C;
  v15 = *(v0 + 72);
  v16 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000034, 0x80000001AC7B5550, sub_1AC6EEBDC, v9, v15);
}

uint64_t sub_1AC6E698C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    v9 = sub_1AC6E6AEC;
  }

  else
  {
    v10 = *(v3 + 120);

    v9 = sub_1AC6E6A94;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1AC6E6A94()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC6E6AEC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC6E6B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a3;
  v8[10] = a5;
  v8[7] = a1;
  v8[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E6B6C()
{
  v35 = v0;
  v2 = *(v0 + 96);
  v4 = sub_1AC6E8900(*(v0 + 56), *(v0 + 80), *(v0 + 88));
  v5 = *(v0 + 64);
  v6 = [v4 remoteObjectProxy];
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v7 = *(v0 + 48);
  sub_1AC79FC68();
  v8 = sub_1AC7A0838();
  v10 = v9;

  if (v10)
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 72);
    v31 = MEMORY[0x1E69E7CC0];
    v13 = *(*(v11 + 128) + 16);

    os_unfair_lock_lock(v13);
    sub_1AC5D1B84(&v31, v12);
    os_unfair_lock_unlock(v13);
    v30 = v4;
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);
    v17 = v7;
    v18 = *(v0 + 56);

    v19 = *__swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
    v1 = v17;
    v20 = sub_1AC6B4A94();

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v21 = sub_1AC79FDE8();
    __swift_project_value_buffer(v21, qword_1ED9386C8);
    if (v20)
    {

      OUTLINED_FUNCTION_29();

      return v22();
    }
  }

  else
  {
    __break(1u);
  }

  v29 = v1;

  v23 = sub_1AC79FDC8();
  v24 = sub_1AC7A05F8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    v33 = 0;
    *v25 = 136315138;
    v34 = 0xE000000000000000;
    sub_1AC7A09C8();

    v33 = 0xD00000000000002ALL;
    v34 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v8, v10);

    v27 = sub_1AC5CFE74(v33, v34, &v32);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_1AC5BC000, v23, v24, "Failed precondition: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1B26EAB10](v26, -1, -1);
    v28 = OUTLINED_FUNCTION_28_10();
    MEMORY[0x1B26EAB10](v28);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6E6F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E6F40()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_13(v1);

  return sub_1AC6F1674();
}

uint64_t sub_1AC6E6FC8()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6E70D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E70F0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_13(v1);

  return sub_1AC6F20CC();
}

uint64_t sub_1AC6E7178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E7190()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[3] + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  v0[6] = v2;
  *v2 = v3;
  v2[1] = sub_1AC6E7224;
  v4 = v0[4];
  v5 = v0[5];
  v6 = OUTLINED_FUNCTION_20_10();

  return sub_1AC6998E0(v6, v7, v8, v9);
}

uint64_t sub_1AC6E7224()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = sub_1AC6EF1A0;
  }

  else
  {
    v9 = sub_1AC6EF194;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1AC6E7324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E733C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[3] + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  v0[6] = v2;
  *v2 = v3;
  v2[1] = sub_1AC6E73D0;
  v4 = v0[4];
  v5 = v0[5];
  v6 = OUTLINED_FUNCTION_20_10();

  return sub_1AC768D74(v6, v7, v8, v9);
}

uint64_t sub_1AC6E73D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = sub_1AC6E7534;
  }

  else
  {
    v9 = sub_1AC6E74D0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1AC6E74D0()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[2];
  sub_1AC6EDCF0(v2);
  v4 = OUTLINED_FUNCTION_30_7();

  return v5(v4);
}

uint64_t sub_1AC6E7534()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  v2 = v0[5];

  sub_1AC6EDCF0(v2);
  OUTLINED_FUNCTION_44();
  v4 = v0[7];

  return v3();
}