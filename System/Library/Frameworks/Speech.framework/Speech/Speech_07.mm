uint64_t sub_1AC64C73C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(a2 + 16);
  result = sub_1AC64FC18(0, result, v2);
  if (v3)
  {
    result = v2;
  }

  if (v2 < result)
  {
    goto LABEL_8;
  }

  if (result < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_1AC64C7A0(void *a1@<X0>, int32_t a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 tokenName];
  v7 = sub_1AC79FF68();
  v9 = v8;

  *a3 = v7;
  *(a3 + 8) = v9;
  [a1 start];
  CMTimeMakeWithSeconds(&v61, v10, a2);
  v19 = OUTLINED_FUNCTION_26_3(v11, v12, v13, v14, v15, v16, v17, v18, v58, *&v61.value, *&v61.timescale);
  *(a3 + 16) = v20;
  *(a3 + 24) = v19;
  *(a3 + 32) = v21;
  [a1 end];
  CMTimeMakeWithSeconds(&v61, v22, a2);
  v31 = OUTLINED_FUNCTION_26_3(v23, v24, v25, v26, v27, v28, v29, v30, v59, *&v61.value, *&v61.timescale);
  *(a3 + 40) = v32;
  *(a3 + 48) = v31;
  *(a3 + 56) = v33;
  [a1 silenceStart];
  CMTimeMakeWithSeconds(&v61, v34, a2);
  v43 = OUTLINED_FUNCTION_26_3(v35, v36, v37, v38, v39, v40, v41, v42, v60, *&v61.value, *&v61.timescale);
  *(a3 + 64) = v44;
  *(a3 + 72) = v43;
  *(a3 + 80) = v45;
  [a1 confidence];
  *(a3 + 88) = v46;
  *(a3 + 96) = [a1 hasSpaceAfter];
  *(a3 + 97) = [a1 hasSpaceBefore];
  v47 = [a1 phoneSequence];
  v48 = sub_1AC79FF68();
  v50 = v49;

  *(a3 + 104) = v48;
  *(a3 + 112) = v50;
  v51 = [a1 ipaPhoneSequence];
  v52 = sub_1AC79FF68();
  v54 = v53;

  *(a3 + 120) = v52;
  *(a3 + 128) = v54;
  *(a3 + 136) = [a1 appendedAutoPunctuation];
  *(a3 + 137) = [a1 prependedAutoPunctuation];
  *(a3 + 138) = [a1 isModifiedByAutoPunctuation];
  [a1 graphCost];
  *(a3 + 144) = v55;
  [a1 acousticCost];
  v57 = v56;

  *(a3 + 152) = v57;
}

void static TranscriptionSegment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  if (sub_1AC79F518())
  {
    v2 = type metadata accessor for TranscriptionSegment();
    v3 = v2[5];
    v4 = *(v1 + v3);
    v5 = *(v0 + v3);
    sub_1AC6285F8();
    if (v6 & 1) != 0 && (sub_1AC628F98(*(v1 + v2[6]), *(v0 + v2[6])))
    {
      v7 = v2[7];
      v8 = *(v1 + v7);
      v9 = *(v0 + v7);

      sub_1AC628640();
    }
  }
}

void TranscriptionSegment.hash(into:)(uint64_t a1)
{
  sub_1AC79F5C8();
  OUTLINED_FUNCTION_0_5();
  sub_1AC65106C(v3, v4);
  sub_1AC79FE58();
  v5 = type metadata accessor for TranscriptionSegment();
  v6 = *(v1 + v5[5]);
  sub_1AC6336F0();
  sub_1AC633B88(a1, *(v1 + v5[6]));
  v7 = *(v1 + v5[7]);

  sub_1AC633C28();
}

uint64_t TranscriptionSegment.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC79F5C8();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1AC65106C(v1, v2);
  OUTLINED_FUNCTION_38_3(v3, v4, v3, v5, v6, v7, v8, v9, v14, v15[0]);
  sub_1AC79FE58();
  v10 = type metadata accessor for TranscriptionSegment();
  v11 = *(v0 + v10[5]);
  sub_1AC6336F0();
  sub_1AC633B88(v15, *(v0 + v10[6]));
  v12 = *(v0 + v10[7]);
  sub_1AC633C28();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64CB98(uint64_t a1, int *a2)
{
  sub_1AC7A0E78();
  sub_1AC79F5C8();
  sub_1AC65106C(&qword_1EB56BD58, MEMORY[0x1E6968848]);
  sub_1AC79FE58();
  v4 = *(v2 + a2[5]);
  sub_1AC6336F0();
  sub_1AC633B88(v7, *(v2 + a2[6]));
  v5 = *(v2 + a2[7]);
  sub_1AC633C28();
  return sub_1AC7A0EC8();
}

uint64_t TranscriptionToken.tokenName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t TranscriptionToken.start.getter()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return result;
}

uint64_t TranscriptionToken.end.getter()
{
  result = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  return result;
}

uint64_t TranscriptionToken.silenceStart.getter()
{
  result = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  return result;
}

uint64_t TranscriptionToken.phoneSequence.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_39();
}

uint64_t TranscriptionToken.ipaPhoneSequence.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_39();
}

uint64_t static TranscriptionToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v49 = *(a1 + 40);
  v48 = *(a1 + 48);
  v46 = *(a1 + 64);
  v47 = *(a1 + 56);
  v44 = *(a1 + 80);
  v45 = *(a1 + 72);
  v5 = *(a1 + 88);
  v41 = *(a1 + 96);
  v39 = *(a1 + 97);
  v36 = *(a1 + 112);
  v37 = *(a1 + 104);
  v32 = *(a1 + 128);
  v33 = *(a1 + 120);
  v29 = *(a1 + 136);
  v27 = *(a1 + 137);
  v25 = *(a1 + 138);
  v7 = *(a1 + 144);
  v6 = *(a1 + 152);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  v42 = *(a2 + 72);
  v43 = *(a2 + 64);
  v14 = *(a2 + 88);
  v16 = *(a2 + 144);
  v15 = *(a2 + 152);
  v17 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v18 = *(a2 + 80);
  v40 = *(a2 + 96);
  v38 = *(a2 + 97);
  v34 = *(a2 + 112);
  v35 = *(a2 + 104);
  v30 = *(a2 + 128);
  v31 = *(a2 + 120);
  v28 = *(a2 + 136);
  v26 = *(a2 + 137);
  v24 = *(a2 + 138);
  if (!v17 && (sub_1AC7A0D38() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0)
  {
    return 0;
  }

  sub_1AC7A06A8();
  result = OUTLINED_FUNCTION_46_5();
  if (v20 & 1) == 0 || v5 != v14 || ((v41 ^ v40) & 1) != 0 || ((v39 ^ v38))
  {
    return result;
  }

  v21 = v37 == v35 && v36 == v34;
  if (!v21 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  if (v33 != v31 || v32 != v30)
  {
    sub_1AC7A0D38();
    result = OUTLINED_FUNCTION_46_5();
    if ((v23 & 1) == 0 || v29 != v28 || v27 != v26 || v25 != v24)
    {
      return result;
    }

LABEL_31:
    if (v7 == v16)
    {
      return v6 == v15;
    }

    return result;
  }

  result = 0;
  if (v29 == v28 && ((v27 ^ v26) & 1) == 0 && ((v25 ^ v24) & 1) == 0)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t TranscriptionToken.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v10 = *(v0 + 9);
  v11 = *(v0 + 10);
  v12 = v0[11];
  v19 = *(v0 + 96);
  v20 = *(v0 + 97);
  v21 = *(v0 + 14);
  v22 = *(v0 + 13);
  v23 = *(v0 + 16);
  v24 = *(v0 + 15);
  v25 = *(v0 + 136);
  v26 = *(v0 + 137);
  v27 = *(v0 + 138);
  v14 = v0[18];
  v13 = v0[19];
  sub_1AC7A0048();
  sub_1AC7A06E8();
  sub_1AC7A06E8();
  sub_1AC7A06E8();
  if (v12 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v12;
  }

  MEMORY[0x1B26E9A70](*&v15);
  sub_1AC7A0E98();
  sub_1AC7A0E98();
  sub_1AC7A0048();
  sub_1AC7A0048();
  sub_1AC7A0E98();
  sub_1AC7A0E98();
  sub_1AC7A0E98();
  if (v14 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  MEMORY[0x1B26E9A70](*&v16);
  if (v13 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v13;
  }

  return MEMORY[0x1B26E9A70](*&v17);
}

uint64_t TranscriptionToken.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  TranscriptionToken.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64D148()
{
  sub_1AC7A0E78();
  TranscriptionToken.hash(into:)();
  return sub_1AC7A0EC8();
}

void __swiftcall TranscriptionToken.init(with:start:end:silenceStart:confidence:hasSpaceAfter:hasSpaceBefore:phoneSequence:ipaPhoneSequence:appendedAutoPunctuation:prependedAutoPunctuation:isModifiedByAutoPunctuation:graphCost:acousticCost:)(Speech::TranscriptionToken *__return_ptr retstr, Swift::String with, CMTime start, CMTime end, CMTime silenceStart, Swift::Double confidence, Swift::Bool hasSpaceAfter, Swift::Bool hasSpaceBefore, Swift::String phoneSequence, Swift::String ipaPhoneSequence, Swift::Bool appendedAutoPunctuation, Swift::Bool prependedAutoPunctuation, Swift::Bool isModifiedByAutoPunctuation, Swift::Double graphCost, Swift::Double acousticCost)
{
  retstr->tokenName = with;
  retstr->start = start;
  retstr->end = end;
  retstr->silenceStart = silenceStart;
  retstr->confidence = confidence;
  retstr->hasSpaceAfter = hasSpaceAfter;
  retstr->hasSpaceBefore = hasSpaceBefore;
  retstr->phoneSequence = phoneSequence;
  retstr->ipaPhoneSequence = ipaPhoneSequence;
  retstr->appendedAutoPunctuation = appendedAutoPunctuation;
  retstr->prependedAutoPunctuation = prependedAutoPunctuation;
  retstr->isModifiedByAutoPunctuation = isModifiedByAutoPunctuation;
  retstr->graphCost = graphCost;
  retstr->acousticCost = acousticCost;
}

void static TranscriptionToken.tokenString(from:ipa:after:attributes:)()
{
  OUTLINED_FUNCTION_129_0();
  v33 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1AC79F618();
  v8 = OUTLINED_FUNCTION_167(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = (v6 + 8);
  v12 = *(v6 + 16);
  v30 = *(v6 + 24);
  v29 = *(v6 + 28);
  v13 = *(v6 + 32);
  v28 = *(v6 + 40);
  v32 = *(v6 + 48);
  v31 = *(v6 + 52);
  v27 = *(v6 + 56);
  v14 = *(v6 + 88);
  v15 = *(v6 + 96);
  v16 = *(v6 + 97);
  if (v4)
  {
    v11 = (v6 + 128);
  }

  v17 = *v11;
  if (v4)
  {
    v18 = (v6 + 120);
  }

  else
  {
    v18 = v6;
  }

  v19 = *v18;

  memcpy(v34, v2, 0xA0uLL);
  if (sub_1AC64FB08(v34) == 1)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    MEMORY[0x1B26E8C40](v19, v17);

    OUTLINED_FUNCTION_44_3();
    goto LABEL_12;
  }

  if ((v16 & 1) != 0 && (v34[96] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v15)
  {

    OUTLINED_FUNCTION_49_4();

    OUTLINED_FUNCTION_44_3();
  }

  sub_1AC79F608();
  sub_1AC79F5D8();
  v20 = *(MEMORY[0x1E6960C70] + 8);
  v21 = *(MEMORY[0x1E6960C70] + 16);
  v22 = *MEMORY[0x1E6960C70];
  if ((sub_1AC7A06A8() & 1) == 0 || (OUTLINED_FUNCTION_29_4(), (sub_1AC7A06A8() & 1) == 0))
  {
    if (sub_1AC637EF8(0, v33))
    {
      OUTLINED_FUNCTION_29_4();
      v23 = sub_1AC7A0698();
      OUTLINED_FUNCTION_20_3();
      *(v25 - 256) = v24;
      sub_1AC64F69C();
      OUTLINED_FUNCTION_42_4();
      sub_1AC79F5E8();
      OUTLINED_FUNCTION_20_3();
      *(v26 - 256) = v23;
      sub_1AC64F6F0();
      OUTLINED_FUNCTION_42_4();
      sub_1AC79F5E8();
    }
  }

  if ((sub_1AC637EF8(1, v33) & 1) != 0 && v14 != 0.0)
  {
    OUTLINED_FUNCTION_45_5();
    sub_1AC64F5F4();
    OUTLINED_FUNCTION_42_4();
    sub_1AC79F5E8();
    OUTLINED_FUNCTION_45_5();
    sub_1AC64F648();
    OUTLINED_FUNCTION_42_4();
    sub_1AC79F5E8();
  }

  OUTLINED_FUNCTION_130();
}

uint64_t sub_1AC64D544(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C758, &qword_1AC7AA670);
  return sub_1AC79FED8() & 1;
}

uint64_t sub_1AC64D5A8(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C758, &qword_1AC7AA670);
  return sub_1AC79FE68();
}

uint64_t sub_1AC64D5F8()
{
  v0 = sub_1AC64F69C();

  return MEMORY[0x1EEDC3C18](&type metadata for AttributeScopes.SpeechAttributes.TimeRangeAttribute, &type metadata for AttributeScopes.SpeechAttributes.TimeRangeAttribute, v0);
}

uint64_t TranscriptionResultAttributeOption.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t static AttributeScopes.SpeechAttributes.TimeRangeAttribute.encode(_:to:)(__int128 *a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1AC64F0F4(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AC64D84C()
{
  sub_1AC651018();

  return sub_1AC79F4C8();
}

uint64_t sub_1AC64D898()
{
  sub_1AC651018();

  return sub_1AC79F4C8();
}

uint64_t AttributedString.rangeOfAudioTimeRangeAttributes(intersecting:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v2 = a1[1];
  *&v175.start.value = *a1;
  *&v175.start.epoch = v2;
  *&v175.duration.timescale = a1[2];
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C670, &qword_1AC7A9BF8);
  v3 = OUTLINED_FUNCTION_80(v146);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_4();
  v145 = v6;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_91();
  v144 = v8;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C678, &qword_1AC7A9C00);
  v9 = OUTLINED_FUNCTION_80(v158);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_4();
  v149 = v12;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_91();
  v157 = v14;
  v168 = sub_1AC79F598();
  v15 = OUTLINED_FUNCTION_40(v168);
  v160 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_4();
  v166 = v19;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_91();
  v164 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C680, &qword_1AC7A9C08);
  OUTLINED_FUNCTION_167(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v25);
  v156 = &v144 - v26;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C688, &qword_1AC7A9C10);
  v27 = OUTLINED_FUNCTION_80(v169);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_4();
  v147 = v30;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_26_0();
  v148 = v32;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_26_0();
  v151 = v34;
  OUTLINED_FUNCTION_34();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v144 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v144 - v39;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C690, &qword_1AC7A9C18);
  OUTLINED_FUNCTION_40(v167);
  v165 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v44);
  v154 = &v144 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C698, &qword_1AC7A9C20);
  v47 = OUTLINED_FUNCTION_167(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_4();
  v150 = v50;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_26_0();
  v155 = v52;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_26_0();
  v159 = v54;
  OUTLINED_FUNCTION_34();
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v144 - v57;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_91();
  v163 = v59;
  v162 = sub_1AC79F568();
  v60 = OUTLINED_FUNCTION_40(v162);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_6();
  v67 = v66 - v65;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C6A0, &qword_1AC7A9C28);
  v69 = OUTLINED_FUNCTION_40(v68);
  v161 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_2_4();
  v153 = v73;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v144 - v75;
  sub_1AC79F588();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1AC64F69C();
  sub_1AC79F578();

  (*(v62 + 8))(v67, v162);
  v77 = v76;
  (*(v161 + 16))(v153, v76, v68);
  sub_1AC5C8BE0(&qword_1EB56C6A8, &qword_1EB56C6A0, &qword_1AC7A9C28);
  v162 = v68;
  sub_1AC7A0108();
  sub_1AC5C8BE0(&qword_1EB56C6B0, &qword_1EB56C690, &qword_1AC7A9C18);
  while (1)
  {
    sub_1AC7A07D8();
    if (__swift_getEnumTagSinglePayload(v58, 1, v169) == 1)
    {
      v82 = OUTLINED_FUNCTION_36_3();
      v83(v82);
      v84 = 1;
      goto LABEL_8;
    }

    sub_1AC637E08();
    if ((v40[48] & 1) == 0)
    {
      v79 = *(v40 + 4);
      v78 = *(v40 + 5);
      v81 = *v40;
      v80 = *(v40 + 1);
      range = v175;
      v172.start.value = v81;
      *&v172.start.timescale = v80;
      *&v172.start.epoch = *(v40 + 1);
      *&v172.duration.timescale = v79;
      v172.duration.epoch = v78;
      CMTimeRangeGetIntersection(&v174, &range, &v172);
      if ((sub_1AC7A0598() & 1) == 0)
      {
        break;
      }
    }

    sub_1AC5C720C(v40, &qword_1EB56C688, &qword_1AC7A9C10);
  }

  v85 = OUTLINED_FUNCTION_36_3();
  v86(v85);
  sub_1AC637E08();
  v84 = 0;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v163, v84, 1, v169);
  v154 = &v144;
  v87 = sub_1AC5C8BE0(&qword_1EB56C6B8, &qword_1EB56C6A0, &qword_1AC7A9C28);
  v88 = v164;
  v165 = v87;
  sub_1AC7A04E8();
  v167 = (v160 + 8);
  while (1)
  {
    v89 = v166;
    sub_1AC7A0498();
    OUTLINED_FUNCTION_9_4();
    sub_1AC65106C(&qword_1EB56C6C0, v90);
    v91 = v168;
    v92 = sub_1AC79FED8();
    v164 = *v167;
    v164(v89, v91);
    if (v92)
    {
      break;
    }

    sub_1AC5C8BE0(&qword_1EB56C6C8, &qword_1EB56C6A0, &qword_1AC7A9C28);
    sub_1AC79FE88();
    v93 = sub_1AC7A0518();
    sub_1AC5C6E6C();
    v93(&v172, 0);
    if (v38[48])
    {
      v94 = OUTLINED_FUNCTION_25_5();
      sub_1AC5C720C(v94, v95, v96);
    }

    else
    {
      v98 = *(v38 + 4);
      v97 = *(v38 + 5);
      v100 = *v38;
      v99 = *(v38 + 1);
      v172 = v175;
      v171.start.value = v100;
      *&v171.start.timescale = v99;
      *&v171.start.epoch = *(v38 + 1);
      *&v171.duration.timescale = v98;
      v171.duration.epoch = v97;
      CMTimeRangeGetIntersection(&range, &v172, &v171);
      v101 = sub_1AC7A0598();
      v102 = OUTLINED_FUNCTION_25_5();
      sub_1AC5C720C(v102, v103, v104);
      if ((v101 & 1) == 0)
      {
        v105 = v156;
        v106 = v88;
        v107 = v168;
        (*(v160 + 32))(v156, v106, v168);
        v108 = 0;
        goto LABEL_15;
      }
    }
  }

  v109 = v88;
  v107 = v168;
  v164(v109, v168);
  v108 = 1;
  v105 = v156;
LABEL_15:
  v110 = __swift_storeEnumTagSinglePayload(v105, v108, 1, v107);
  MEMORY[0x1EEE9AC00](v110);
  v168 = v77;
  *(&v144 - 2) = v77;
  v111 = v159;
  sub_1AC64F900(sub_1AC64FC94, (&v144 - 4), v159);
  sub_1AC5C720C(v105, &qword_1EB56C680, &qword_1AC7A9C08);
  v112 = v155;
  sub_1AC5C6E6C();
  v113 = v169;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v112, 1, v169);
  v116 = v157;
  v115 = v158;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_18;
  }

  v117 = v151;
  sub_1AC637E08();
  v112 = v150;
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v112, 1, v113) == 1)
  {
    sub_1AC5C720C(v117, &qword_1EB56C688, &qword_1AC7A9C10);
LABEL_18:
    sub_1AC5C720C(v111, &qword_1EB56C698, &qword_1AC7A9C20);
    sub_1AC5C720C(v163, &qword_1EB56C698, &qword_1AC7A9C20);
    (*(v161 + 8))(v168, v162);
    sub_1AC5C720C(v112, &qword_1EB56C698, &qword_1AC7A9C20);
    v118 = v152;
    v119 = 1;
    v120 = v115;
    return __swift_storeEnumTagSinglePayload(v118, v119, 1, v120);
  }

  v121 = v148;
  sub_1AC637E08();
  sub_1AC5C6E6C();
  v122 = *(v113 + 48);
  sub_1AC637E08();
  sub_1AC5C6E6C();
  v123 = *(v113 + 48);
  v124 = v149;
  sub_1AC637E08();
  v125 = *(v115 + 36);
  OUTLINED_FUNCTION_9_4();
  sub_1AC65106C(v126, v127);
  v128 = sub_1AC79FEC8();
  sub_1AC5C720C(v121, &qword_1EB56C688, &qword_1AC7A9C10);
  sub_1AC5C720C(v151, &qword_1EB56C688, &qword_1AC7A9C10);
  sub_1AC5C720C(v159, &qword_1EB56C698, &qword_1AC7A9C20);
  sub_1AC5C720C(v163, &qword_1EB56C698, &qword_1AC7A9C20);
  result = (*(v161 + 8))(v168, v162);
  if (v128)
  {
    v130 = v160;
    v131 = *(v160 + 16);
    v132 = v144;
    v131(v144, v116, v107);
    sub_1AC5C720C(v116, &qword_1EB56C678, &qword_1AC7A9C00);
    v133 = v146;
    v131(v132 + *(v146 + 48), v124 + v125, v107);
    v134 = OUTLINED_FUNCTION_41_4();
    sub_1AC5C720C(v134, v135, &qword_1AC7A9C00);
    v136 = v145;
    sub_1AC5C6E6C();
    v137 = *(v133 + 48);
    v138 = *(v130 + 32);
    v139 = v152;
    v140 = OUTLINED_FUNCTION_41_4();
    v138(v140);
    v141 = v164;
    v164(v136 + v137, v107);
    sub_1AC637E08();
    v142 = *(v133 + 48);
    v143 = v158;
    (v138)(v139 + *(v158 + 36), v136 + v142, v107);
    v141(v136, v107);
    v118 = v139;
    v119 = 0;
    v120 = v143;
    return __swift_storeEnumTagSinglePayload(v118, v119, 1, v120);
  }

  __break(1u);
  return result;
}

uint64_t TranscriptionLatticeMitigatorResult.version.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t static TranscriptionLatticeMitigatorResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 20);
  v5 = *(a1 + 24);
  v4 = *(a1 + 28);
  v6 = *(a1 + 32);
  v8 = *(a2 + 16);
  v7 = *(a2 + 20);
  v10 = *(a2 + 24);
  v9 = *(a2 + 28);
  v11 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v8 || v2 != v7 || v5 != v10 || v4 != v9)
    {
      return 0;
    }

    return v6 ^ v11 ^ 1u;
  }

  sub_1AC7A0D38();
  result = OUTLINED_FUNCTION_46_5();
  if (v14)
  {
    v15 = v3 == v8 && v2 == v7;
    v16 = v15 && v5 == v10;
    if (v16 && v4 == v9)
    {
      return v6 ^ v11 ^ 1u;
    }
  }

  return result;
}

uint64_t TranscriptionLatticeMitigatorResult.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 7);
  v7 = *(v0 + 32);
  sub_1AC7A0048();
  sub_1AC7A0EA8();
  sub_1AC7A0EA8();
  sub_1AC7A0EA8();
  sub_1AC7A0EA8();
  return sub_1AC7A0E98();
}

uint64_t TranscriptionLatticeMitigatorResult.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_1AC7A0E78();
  TranscriptionLatticeMitigatorResult.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64E874()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_1AC7A0E78();
  TranscriptionLatticeMitigatorResult.hash(into:)();
  return sub_1AC7A0EC8();
}

void __swiftcall TranscriptionLatticeMitigatorResult.init(with:score:threshold:calibrationScale:calibrationOffset:processed:)(Speech::TranscriptionLatticeMitigatorResult *__return_ptr retstr, Swift::String with, Swift::Float score, Swift::Float threshold, Swift::Float calibrationScale, Swift::Float calibrationOffset, Swift::Bool processed)
{
  retstr->version = with;
  retstr->score = score;
  retstr->threshold = threshold;
  retstr->calibrationScale = calibrationScale;
  retstr->calibrationOffset = calibrationOffset;
  retstr->isProcessed = processed;
}

uint64_t static AudioAnalytics.AcousticFeature.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1AC6290A0(*a1, *a2) & (v2 == v3);
}

uint64_t AudioAnalytics.AcousticFeature.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1AC633738(a1, *v1);
  v3 = OUTLINED_FUNCTION_32_3();
  if (!v4)
  {
    v3 = v2;
  }

  return MEMORY[0x1B26E9A70](*&v3);
}

uint64_t AudioAnalytics.AcousticFeature.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_85_1();
  v11 = OUTLINED_FUNCTION_38_3(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17);
  sub_1AC633738(v11, v12);
  v13 = OUTLINED_FUNCTION_32_3();
  if (!v14)
  {
    v13 = v2;
  }

  MEMORY[0x1B26E9A70](*&v13);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64E9E0()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_1AC7A0E78();
  AudioAnalytics.AcousticFeature.hash(into:)(v3);
  return sub_1AC7A0EC8();
}

void sub_1AC64EA44(void *a1@<X0>, void *a2@<X8>)
{
  v2 = [a1 speechRecognitionFeatures];
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC79FE28();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C730, &qword_1AC7AA650);
  v72 = sub_1AC7A0BA8();
  v4 = 0;
  v5 = *(v3 + 64);
  v6 = *(v3 + 32);
  OUTLINED_FUNCTION_117_0();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v13 = v12 + 64;
  if ((v8 & v7) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_8:
      v17 = v14 | (v4 << 6);
      v18 = (*(v3 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = *(*(v3 + 56) + 8 * v17);

      [v21 doubleValue];
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v22 = (v72[6] + 16 * v17);
      *v22 = v20;
      v22[1] = v19;
      *(v72[7] + 8 * v17) = v23;
      v24 = v72[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v72[2] = v26;
    }

    while (v9);
  }

  v15 = v4;
  while (1)
  {
    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 >= v11)
    {
      break;
    }

    v16 = *(v3 + 64 + 8 * v4);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_8;
    }
  }

  v27 = [a1 acousticFeatures];
  sub_1AC5CF764(0, &unk_1EB56AB78, off_1E797AC50);
  v28 = sub_1AC79FE28();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C738, &qword_1AC7AA658);
  v29 = sub_1AC7A0BA8();
  v30 = 0;
  v31 = *(v28 + 64);
  v65 = v28 + 64;
  v32 = *(v28 + 32);
  OUTLINED_FUNCTION_117_0();
  v35 = v34 & v33;
  v37 = (v36 + 63) >> 6;
  v69 = v28;
  v70 = v38 + 8;
  v67 = v37;
  v68 = v38;
  if ((v34 & v33) == 0)
  {
LABEL_13:
    v40 = v30;
    while (1)
    {
      v30 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_37;
      }

      if (v30 >= v37)
      {

        [a1 snr];
        v63 = v62;

        *a2 = v72;
        a2[1] = v29;
        a2[2] = v63;
        return;
      }

      v41 = *(v65 + 8 * v30);
      ++v40;
      if (v41)
      {
        v39 = __clz(__rbit64(v41));
        v35 = (v41 - 1) & v41;
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
LABEL_18:
    v42 = v39 | (v30 << 6);
    v43 = (*(v28 + 48) + 16 * v42);
    v44 = *v43;
    v45 = *(*(v28 + 56) + 8 * v42);
    v74 = v43[1];

    v73 = v45;
    v46 = [v73 acousticFeatureValuePerFrame];
    v47 = sub_1AC7A0158();

    v48 = v47 >> 62 ? sub_1AC7A08E8() : *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v75 = v44;
    if (v48)
    {
      v71 = v35;
      v76 = MEMORY[0x1E69E7CC0];
      sub_1AC6312E0();
      if (v48 < 0)
      {
        goto LABEL_40;
      }

      v49 = 0;
      v50 = v76;
      do
      {
        if ((v47 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x1B26E95B0](v49, v47);
        }

        else
        {
          v51 = *(v47 + 8 * v49 + 32);
        }

        v52 = v51;
        [v51 doubleValue];
        v54 = v53;

        v55 = *(v76 + 16);
        if (v55 >= *(v76 + 24) >> 1)
        {
          sub_1AC6312E0();
        }

        ++v49;
        *(v76 + 16) = v55 + 1;
        *(v76 + 8 * v55 + 32) = v54;
      }

      while (v48 != v49);

      v29 = v68;
      v28 = v69;
      v37 = v67;
      v35 = v71;
    }

    else
    {

      v50 = MEMORY[0x1E69E7CC0];
    }

    [v73 frameDuration];
    v57 = v56;

    *(v70 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v58 = (v29[6] + 16 * v42);
    *v58 = v75;
    v58[1] = v74;
    v59 = (v29[7] + 16 * v42);
    *v59 = v50;
    v59[1] = v57;
    v60 = v29[2];
    v25 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v25)
    {
      break;
    }

    v29[2] = v61;
    if (!v35)
    {
      goto LABEL_13;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t static AudioAnalytics.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[2];
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = a2[2];
  sub_1AC6305D8();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_39();
  sub_1AC6306C8(v9, v10);
  return v11 & (v4 == v7);
}

uint64_t AudioAnalytics.hash(into:)(const void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1AC63459C(a1, *v1);
  sub_1AC634414(a1, v3);
  v5 = OUTLINED_FUNCTION_32_3();
  if (!v6)
  {
    v5 = v4;
  }

  return MEMORY[0x1B26E9A70](*&v5);
}

uint64_t AudioAnalytics.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_85_1();
  v12 = OUTLINED_FUNCTION_38_3(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18[0]);
  sub_1AC63459C(v12, v13);
  sub_1AC634414(v18, v2);
  v14 = OUTLINED_FUNCTION_32_3();
  if (!v15)
  {
    v14 = v3;
  }

  MEMORY[0x1B26E9A70](*&v14);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64F04C()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  sub_1AC7A0E78();
  AudioAnalytics.hash(into:)(v3);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64F0F4(__int128 *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v17 = a1[2];
  v4 = objc_opt_self();
  v5 = [objc_opt_self() valueWithCMTimeRange_];
  *&v15 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v15];

  v7 = v15;
  if (v6)
  {
    v8 = sub_1AC79F868();
    v10 = v9;

    v11 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1AC7A0F28();
    __swift_mutable_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    sub_1AC64FB70();
    sub_1AC7A0D58();
    sub_1AC5C28A8(v8, v10);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v15);
  }

  else
  {
    v13 = v7;
    sub_1AC79F748();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AC64F288@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1AC7A0A28();
  v6 = OUTLINED_FUNCTION_40(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v13 = v12 - v11;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1AC7A0F08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1AC64FBC4();
    sub_1AC7A0D48();
    sub_1AC5CF764(0, &qword_1EB56C660, 0x1E696ACD0);
    sub_1AC5CF764(0, &qword_1EB56C668, 0x1E696B098);
    v16 = sub_1AC7A0628();
    v17 = v16;
    if (v16)
    {
      [v16 CMTimeRangeValue];

      v18 = OUTLINED_FUNCTION_23_3();
      sub_1AC5C28A8(v18, v19);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v29);
      *a2 = v26;
      a2[1] = v27;
      a2[2] = v28;
    }

    else
    {
      v20 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1AC7A0EF8();
      sub_1AC7A0A18();
      v21 = sub_1AC7A0A38();
      swift_allocError();
      v23 = v22;
      (*(v8 + 16))(v22, v13, v5);
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B00], v21);
      swift_willThrow();
      v24 = OUTLINED_FUNCTION_23_3();
      sub_1AC5C28A8(v24, v25);
      (*(v8 + 8))(v13, v5);
      return __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }
  }

  return result;
}

double sub_1AC64F580@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1AC64F5F4()
{
  result = qword_1EB56B488;
  if (!qword_1EB56B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B488);
  }

  return result;
}

unint64_t sub_1AC64F648()
{
  result = qword_1EB56AEA8;
  if (!qword_1EB56AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AEA8);
  }

  return result;
}

unint64_t sub_1AC64F69C()
{
  result = qword_1EB56B480;
  if (!qword_1EB56B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B480);
  }

  return result;
}

unint64_t sub_1AC64F6F0()
{
  result = qword_1EB56AEB0;
  if (!qword_1EB56AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AEB0);
  }

  return result;
}

uint64_t sub_1AC64F78C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_1AC64F81C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C6A0, &qword_1AC7A9C28);
  sub_1AC5C8BE0(&qword_1EB56C6B8, &qword_1EB56C6A0, &qword_1AC7A9C28);
  v0 = sub_1AC7A0518();
  sub_1AC5C6E6C();
  return v0(&v2, 0);
}

uint64_t sub_1AC64F900@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a2;
  v19 = a1;
  v5 = sub_1AC79F598();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C680, &qword_1AC7A9C08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v18 - v12;
  sub_1AC5C6E6C();
  v14 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    v15 = a3;
LABEL_5:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C688, &qword_1AC7A9C10);
    return __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
  }

  (*(v6 + 32))(v9, v13, v5);
  v15 = a3;
  v19(v9);
  if (!v3)
  {
    (*(v6 + 8))(v9, v5);
    v14 = 0;
    goto LABEL_5;
  }

  result = (*(v6 + 8))(v9, v5);
  __break(1u);
  return result;
}

uint64_t sub_1AC64FB08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1AC64FB70()
{
  result = qword_1EB56D4E0;
  if (!qword_1EB56D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D4E0);
  }

  return result;
}

unint64_t sub_1AC64FBC4()
{
  result = qword_1EB56D4C0;
  if (!qword_1EB56D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D4C0);
  }

  return result;
}

uint64_t sub_1AC64FC18(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_1AC64FD00()
{
  result = qword_1EB56C6E0;
  if (!qword_1EB56C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C6E0);
  }

  return result;
}

unint64_t sub_1AC64FD9C()
{
  result = qword_1EB56AD38;
  if (!qword_1EB56AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AD38);
  }

  return result;
}

unint64_t sub_1AC64FE00()
{
  result = qword_1EB56C6F8;
  if (!qword_1EB56C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C6F8);
  }

  return result;
}

unint64_t sub_1AC64FE58()
{
  result = qword_1EB56C700;
  if (!qword_1EB56C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C700);
  }

  return result;
}

unint64_t sub_1AC64FEB0()
{
  result = qword_1EB56C708;
  if (!qword_1EB56C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C708);
  }

  return result;
}

unint64_t sub_1AC64FF08()
{
  result = qword_1EB56C710;
  if (!qword_1EB56C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C710);
  }

  return result;
}

unint64_t sub_1AC64FF60()
{
  result = qword_1EB56C718;
  if (!qword_1EB56C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C718);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TranscriptionSegment(uint64_t *a1, uint64_t *a2, int *a3)
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
    v7 = sub_1AC79F5C8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t destroy for TranscriptionSegment(uint64_t a1, int *a2)
{
  v4 = sub_1AC79F5C8();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + a2[5]);

  v6 = *(a1 + a2[6]);

  v7 = *(a1 + a2[7]);
}

uint64_t initializeWithCopy for TranscriptionSegment(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79F5C8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t assignWithCopy for TranscriptionSegment(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79F5C8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[6];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v11 = a3[7];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  return a1;
}

uint64_t initializeWithTake for TranscriptionSegment(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79F5C8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for TranscriptionSegment(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79F5C8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[6];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v11 = a3[7];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  return a1;
}

uint64_t sub_1AC6503FC()
{
  result = sub_1AC79F5C8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for TranscriptionToken(void *a1)
{
  v2 = a1[1];

  v3 = a1[14];

  v4 = a1[16];
}

uint64_t initializeWithCopy for TranscriptionToken(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;
  v6 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v6;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t assignWithCopy for TranscriptionToken(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 104) = *(a2 + 104);
  v5 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  v6 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithTake for TranscriptionToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  v6 = *(a2 + 112);
  v7 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v6;

  v8 = *(a2 + 128);
  v9 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v8;

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for TranscriptionToken(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for TranscriptionToken(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranscriptionResultAttributeOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t initializeWithCopy for TranscriptionLatticeMitigatorResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for TranscriptionLatticeMitigatorResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TranscriptionLatticeMitigatorResult(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for TranscriptionLatticeMitigatorResult(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for TranscriptionLatticeMitigatorResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AudioAnalytics(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void *sub_1AC650B30(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for AudioAnalytics(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for AudioAnalytics(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  a1[2] = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for AudioAnalytics(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for AudioAnalytics(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t *assignWithCopy for AudioAnalytics.AcousticFeature(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t *assignWithTake for AudioAnalytics.AcousticFeature(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for AudioAnalytics.AcousticFeature(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for AudioAnalytics.AcousticFeature(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SpeechModels(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_1AC650E54(_BYTE *result, int a2, int a3)
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

unint64_t sub_1AC650F24()
{
  result = qword_1EB56C720;
  if (!qword_1EB56C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C720);
  }

  return result;
}

unint64_t sub_1AC650F7C()
{
  result = qword_1EB56C728;
  if (!qword_1EB56C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C728);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_18_3(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1AC651018()
{
  result = qword_1EB56C748;
  if (!qword_1EB56C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C748);
  }

  return result;
}

uint64_t sub_1AC65106C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static TimeRangeAttribute.encode(_:to:)(__int128 *a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = static AttributeScopes.SpeechAttributes.TimeRangeAttribute.encode(_:to:)(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_20_3()
{
  *(v3 - 320) = v0;
  *(v3 - 312) = v2;
  *(v3 - 304) = v1;
}

void *sub_1AC651260()
{
  v1 = *(v0 + OBJC_IVAR___SFSpeechAnalyzerConfiguration__config);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat);
    v3 = v2;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC651304(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SFSpeechAnalyzerConfiguration__config);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat);
    *(v2 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat) = a1;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE66BB8]();
}

id SFSpeechAnalyzerConfiguration.init()()
{
  *(v0 + OBJC_IVAR___SFSpeechAnalyzerConfiguration__config) = 0;
  v2.super_class = SFSpeechAnalyzerConfiguration;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1AC651398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for ObjCSpeechAnalyzer();
  OUTLINED_FUNCTION_99();
  v18 = swift_allocObject();
  *(v18 + 16) = a13;
  *(v18 + 24) = a14;

  sub_1AC72CCE4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, sub_1AC658E88, v18, a9, a10, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29);
}

void sub_1AC651484(void *a1, void (*a2)(char *))
{
  v6 = [objc_allocWithZone(SFSpeechAnalyzerConfiguration) init];
  v4 = *&v6[OBJC_IVAR___SFSpeechAnalyzerConfiguration__config];
  *&v6[OBJC_IVAR___SFSpeechAnalyzerConfiguration__config] = a1;

  v5 = a1;
  a2(v6);
}

uint64_t sub_1AC651694(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a5;
  v39 = a8;
  v35 = a4;
  v36 = a6;
  v37 = a9;
  v13 = sub_1AC79F7F8();
  v33 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v34 = &v32 - v19;
  v21 = sub_1AC7A0288();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v14 + 16))(v16, a2, v13);
  v22 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = a1;
  *(v24 + 40) = a3;
  *(v24 + 48) = v35;
  v25 = v36;
  *(v24 + 56) = v36;
  *(v24 + 64) = a7;
  (*(v14 + 32))(v24 + v22, v16, v33);
  v26 = v39;
  *(v24 + v23) = v38;
  v27 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v37;
  *v27 = v26;
  v27[1] = v28;
  v29 = a3;
  v30 = a1;
  sub_1AC5D9374(v25);

  sub_1AC659DBC();
}

uint64_t sub_1AC6518CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v15;
  *(v8 + 104) = v16;
  *(v8 + 80) = v14;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 208) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  v9 = *(*(sub_1AC79FB18() - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v10 = *(*(sub_1AC79FF48() - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v11 = *(*(sub_1AC79FF28() - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6519D0, 0, 0);
}

char *sub_1AC6519D0()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 208);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  type metadata accessor for SFSpeechAnalyzer(v6);
  v7 = v4;
  v8 = v5;
  sub_1AC5D9374(v1);
  result = sub_1AC652140(v8, v4, v3, v1, v2);
  v10 = OBJC_IVAR___SFSpeechAnalyzer__implementation;
  *(v0 + 136) = result;
  *(v0 + 144) = v10;
  v11 = *&result[v10];
  *(v0 + 152) = v11;
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v0 + 48);
  v11;
  result = [v12 audioFormat];
  *(v0 + 160) = result;
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_1AC651B0C;
  v14 = *(v0 + 80);

  return sub_1AC73AE68();
}

uint64_t sub_1AC651B0C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2[21];
  v4 = v2[20];
  v5 = v2[19];
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 176) = v0;

  if (v0)
  {
    v9 = sub_1AC651E88;
  }

  else
  {
    v9 = sub_1AC651C48;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1AC651C48()
{
  v1 = *(v0[17] + v0[18]);
  v0[23] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_1AC651CEC;
    v5 = OUTLINED_FUNCTION_31_0(v0[11]);

    sub_1AC73B518(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC651CEC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (v0)
  {
    v9 = sub_1AC651FE0;
  }

  else
  {

    v9 = sub_1AC651DF0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1AC651DF0()
{
  OUTLINED_FUNCTION_72();
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  v4 = *(v1 + 136);
  v5 = OUTLINED_FUNCTION_108_0();
  v3(v5, 0);

  v7 = *(v1 + 120);
  v6 = *(v1 + 128);
  v8 = *(v1 + 112);

  OUTLINED_FUNCTION_44();

  return v9();
}

uint64_t sub_1AC651E88()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);

  sub_1AC79FF18();
  OUTLINED_FUNCTION_35_4();
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_1AC7A0E08();
  sub_1AC79FEF8();

  sub_1AC79FF08();
  sub_1AC79FF38();
  if (qword_1EB56B610 != -1)
  {
    OUTLINED_FUNCTION_22_4();
  }

  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = qword_1EB56DF80;
  sub_1AC79FA88();
  v12 = OUTLINED_FUNCTION_27_4();
  v14 = OUTLINED_FUNCTION_36_4(v12, v13);
  v10(0, v14);

  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 112);

  OUTLINED_FUNCTION_44();

  return v18();
}

uint64_t sub_1AC651FE0()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);

  sub_1AC79FF18();
  OUTLINED_FUNCTION_35_4();
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_1AC7A0E08();
  sub_1AC79FEF8();

  sub_1AC79FF08();
  sub_1AC79FF38();
  if (qword_1EB56B610 != -1)
  {
    OUTLINED_FUNCTION_22_4();
  }

  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = qword_1EB56DF80;
  sub_1AC79FA88();
  v12 = OUTLINED_FUNCTION_27_4();
  v14 = OUTLINED_FUNCTION_36_4(v12, v13);
  v10(0, v14);

  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 112);

  OUTLINED_FUNCTION_44();

  return v18();
}

id sub_1AC652140(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1AC658EC4;
    v11[3] = &block_descriptor_215;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initForAudioFileWithConfiguration:a1 options:a2 restrictedLogging:a3 & 1 didChangeVolatileRange:v8];
  _Block_release(v8);

  return v9;
}

void sub_1AC652424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1AC79F738();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

char *sub_1AC6524A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  HIDWORD(v28) = a4;
  *(v17 + OBJC_IVAR___SFSpeechAnalyzer__implementation) = 0;
  v32.super_class = SFSpeechAnalyzer;
  v21 = objc_msgSendSuper2(&v32, sel_init);
  objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzer());
  v22 = v21;
  sub_1AC7331CC(v22, a1, a2, a3, HIDWORD(v28), a5, a6, a7, a8, a9, a10, a11, a12, a13, a15, a16, a17, v26, a11, a12, a9, a10, a8, v28, a5, a6, a7, v32.receiver, v32.super_class);
  v23 = *&v22[OBJC_IVAR___SFSpeechAnalyzer__implementation];
  *&v22[OBJC_IVAR___SFSpeechAnalyzer__implementation] = v24;

  return v22;
}

id sub_1AC65273C(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, char a14, uint64_t a15, uint64_t a16)
{
  v28 = sub_1AC79FF58();

  if (a15)
  {
    v33 = a15;
    v34 = a16;
    OUTLINED_FUNCTION_4_5();
    v30 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v31 = v18;
    v32 = &block_descriptor_190;
    v19 = _Block_copy(aBlock);
  }

  else
  {
    v19 = 0;
  }

  LOBYTE(v21) = a14 & 1;
  v23 = [v16 initWithClientIdentifier:v28 audioFormat:a3 formatForNewLines:a4 & 1 transcriberResultDelegate:a5 endpointingResultDelegate:a6 languageDetectorResultDelegate:a7 speechDetectorResultDelegate:a8 queue:a9 transcriberOptions:a10 options:a11 languageDetectorOptions:a12 speechDetectorOptions:a13 restrictedLogging:v21 contextualNamedEntities:0 didChangeVolatileRange:v19];
  sub_1AC5C3958(a15);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v19);
  return v23;
}

uint64_t sub_1AC6528E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 40);
  v10[0] = *a2;
  v10[1] = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = v6;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(v10, a3, a4);
}

id sub_1AC652AE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v32 = sub_1AC79FF58();

  if (a14)
  {
    type metadata accessor for SFContextualNamedEntity();
    sub_1AC7A0148();
    OUTLINED_FUNCTION_108_0();
  }

  else
  {
    v17 = 0;
  }

  if (a15)
  {
    v37 = a15;
    v38 = a16;
    OUTLINED_FUNCTION_4_5();
    v25 = v19;
    v34 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v35 = v20;
    v36 = &block_descriptor_183_0;
    v21 = _Block_copy(aBlock);

    a13 = v25;
  }

  else
  {
    v21 = 0;
  }

  LOBYTE(v23) = a13 & 1;
  v24 = [v16 initWithClientIdentifier:v32 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:a5 languageDetectorResultDelegate:a6 speechDetectorResultDelegate:a7 queue:a8 transcriberOptions:a9 options:a10 languageDetectorOptions:a11 speechDetectorOptions:a12 restrictedLogging:v23 contextualNamedEntities:v17 didChangeVolatileRange:v21];
  sub_1AC5C3958(a15);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v21);
  return v24;
}

id sub_1AC652E40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15)
{
  v16 = sub_1AC79FF58();

  if (a14)
  {
    v32 = a14;
    v33 = a15;
    OUTLINED_FUNCTION_4_5();
    v29 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v30 = v17;
    v31 = &block_descriptor_176;
    v18 = _Block_copy(aBlock);
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(v20) = a13 & 1;
  v22 = [v21 initWithClientIdentifier:v16 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:a5 languageDetectorResultDelegate:a6 speechDetectorResultDelegate:a7 queue:a8 transcriberOptions:a9 options:a10 languageDetectorOptions:a11 speechDetectorOptions:a12 restrictedLogging:v20 contextualNamedEntities:0 didChangeVolatileRange:v18];
  sub_1AC5C3958(a14);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v18);
  return v22;
}

id sub_1AC65313C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25 = sub_1AC79FF58();

  if (a12)
  {
    type metadata accessor for SFContextualNamedEntity();
    sub_1AC7A0148();
    OUTLINED_FUNCTION_108_0();
  }

  else
  {
    v15 = 0;
  }

  if (a13)
  {
    v30 = a13;
    v31 = a14;
    OUTLINED_FUNCTION_4_5();
    v27 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v28 = v17;
    v29 = &block_descriptor_169;
    v18 = _Block_copy(aBlock);
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(v20) = a11 & 1;
  v21 = [v14 initWithClientIdentifier:v25 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:0 languageDetectorResultDelegate:a7 speechDetectorResultDelegate:a8 queue:a9 transcriberOptions:a10 options:0 languageDetectorOptions:v20 speechDetectorOptions:v15 restrictedLogging:v18 contextualNamedEntities:? didChangeVolatileRange:?];
  sub_1AC5C3958(a13);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v18);
  return v21;
}

id sub_1AC653444(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = a15;

  v26 = sub_1AC79FF58();

  if (a14)
  {
    type metadata accessor for SFContextualNamedEntity();
    sub_1AC7A0148();
    OUTLINED_FUNCTION_16_5();
  }

  else
  {
    v16 = 0;
  }

  if (a15)
  {
    v32 = a15;
    v33 = a16;
    OUTLINED_FUNCTION_18_4();
    v29 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v30 = v21;
    v31 = &block_descriptor_162;
    v20 = _Block_copy(aBlock);
  }

  LOBYTE(v23) = a11 & 1;
  v24 = [v25 initWithClientIdentifier:v26 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:0 languageDetectorResultDelegate:a7 speechDetectorResultDelegate:a8 queue:a9 transcriberOptions:a10 options:0 languageDetectorOptions:v23 speechDetectorOptions:v16 restrictedLogging:v20 contextualNamedEntities:? didChangeVolatileRange:?];
  sub_1AC5C3958(a15);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v20);
  return v24;
}

id sub_1AC653774(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;

  v28 = sub_1AC79FF58();

  if (a12)
  {
    type metadata accessor for SFContextualNamedEntity();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19 = a7;
    v20 = sub_1AC7A0148();
  }

  else
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = a7;
    v20 = 0;
  }

  if (a13)
  {
    v35 = a13;
    v36 = a14;
    OUTLINED_FUNCTION_18_4();
    v32 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v33 = v22;
    v34 = &block_descriptor_155;
    v23 = _Block_copy(aBlock);
  }

  else
  {
    v23 = 0;
  }

  LOBYTE(v25) = a9 & 1;
  v26 = [v15 initWithClientIdentifier:v28 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:a5 languageDetectorResultDelegate:0 speechDetectorResultDelegate:0 queue:a6 transcriberOptions:a7 options:a8 languageDetectorOptions:0 speechDetectorOptions:0 restrictedLogging:v25 contextualNamedEntities:v20 didChangeVolatileRange:v23];
  sub_1AC5C3958(a13);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v23);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v26;
}

id sub_1AC653ABC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, char a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v25 = sub_1AC79FF58();

  if (a10)
  {
    aBlock[4] = a10;
    aBlock[5] = a11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_6();
    aBlock[2] = v17;
    aBlock[3] = &block_descriptor_148_0;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19 = a7;
    sub_1AC5D9374(a10);
  }

  else
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = a7;
    v18 = 0;
  }

  LOBYTE(v22) = a9 & 1;
  v23 = [v12 initWithClientIdentifier:v25 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:a5 languageDetectorResultDelegate:0 speechDetectorResultDelegate:0 queue:a6 transcriberOptions:a7 options:a8 languageDetectorOptions:0 speechDetectorOptions:0 restrictedLogging:v22 contextualNamedEntities:0 didChangeVolatileRange:v18];
  sub_1AC5C3958(a10);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v18);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v23;
}

uint64_t sub_1AC653D9C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a5;
  v57 = a6;
  v54 = a2;
  v55 = a4;
  v58 = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C780, &qword_1AC7AA798) - 8) + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v49 - v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C788, &qword_1AC7AA7A0) - 8) + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7A0, &unk_1AC7B2560);
  OUTLINED_FUNCTION_40(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  OUTLINED_FUNCTION_40(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v49 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  OUTLINED_FUNCTION_40(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v49 - v35;
  *&v6[OBJC_IVAR___SFSpeechAnalyzer__implementation] = 0;
  v59.receiver = v6;
  v59.super_class = SFSpeechAnalyzer;
  v37 = objc_msgSendSuper2(&v59, sel_init);
  (*(v15 + 104))(v20, *MEMORY[0x1E69E8650], v13);
  v51 = v37;
  v38 = v36;
  v39 = v28;
  sub_1AC7A0298();
  result = (*(v15 + 8))(v20, v13);
  v41 = *&v58[OBJC_IVAR___SFSpeechAnalyzerConfiguration__config];
  if (v41)
  {
    v42 = *(v31 + 16);
    v43 = v52;
    v50 = v38;
    v42(v52, v38, v29);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v29);
    v44 = v53;
    (*(v23 + 16))(v53, v39, v21);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v21);
    objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzer());
    v45 = v51;
    v46 = v41;
    v47 = sub_1AC7340EC(v45, v46, v43, v44, v54, v55, v56, v57);

    (*(v23 + 8))(v39, v21);
    (*(v31 + 8))(v50, v29);
    v48 = *&v45[OBJC_IVAR___SFSpeechAnalyzer__implementation];
    *&v45[OBJC_IVAR___SFSpeechAnalyzer__implementation] = v47;

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1AC654258(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v9;
  OUTLINED_FUNCTION_78_0();

  if (!a6)
  {
    v16 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  type metadata accessor for SFContextualNamedEntity();
  v16 = sub_1AC7A0148();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21[4] = a7;
  v21[5] = a8;
  OUTLINED_FUNCTION_2_5();
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_0_6();
  v21[2] = v17;
  v21[3] = &block_descriptor_137;
  v18 = _Block_copy(v21);

LABEL_6:
  v19 = [v11 initWithConfiguration:v10 options:v8 restrictedLogging:a3 & 1 contextualNamedEntities:v16 didChangeVolatileRange:v18];
  sub_1AC5C3958(a7);

  _Block_release(v18);
  return v19;
}

id sub_1AC654470(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a4)
  {
    v15[4] = a4;
    v15[5] = a5;
    OUTLINED_FUNCTION_2_5();
    v15[1] = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v15[2] = v11;
    v15[3] = &block_descriptor_130_0;
    v12 = _Block_copy(v15);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 initWithConfiguration:a1 options:a2 restrictedLogging:a3 & 1 geoLMRegionID:0 contextualNamedEntities:0 didChangeVolatileRange:v12];
  sub_1AC5C3958(a4);

  _Block_release(v12);
  return v13;
}

char *sub_1AC654608(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C780, &qword_1AC7AA798);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C788, &qword_1AC7AA7A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - v16;
  *&v5[OBJC_IVAR___SFSpeechAnalyzer__implementation] = 0;
  v27.receiver = v5;
  v27.super_class = SFSpeechAnalyzer;
  result = objc_msgSendSuper2(&v27, sel_init);
  v19 = *&a1[OBJC_IVAR___SFSpeechAnalyzerConfiguration__config];
  if (v19)
  {
    v20 = result;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v21);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v22);
    v23 = objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzer());
    v24 = v20;
    v25 = sub_1AC7340EC(v24, v19, v17, v13, a2, 0, a4, a5);

    v26 = *&v24[OBJC_IVAR___SFSpeechAnalyzer__implementation];
    *&v24[OBJC_IVAR___SFSpeechAnalyzer__implementation] = v25;

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AC65490C()
{
  v1 = *(v0 + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  if (v1)
  {
    v2 = v1;
    sub_1AC73645C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC6549C4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC73947C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC654A64()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15_3();
  v7 = *(v6 + 32);
  v8 = *(v6 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  v11 = *(v9 + 8);

  return v11(v0, v5, v3);
}

uint64_t sub_1AC654B9C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC654C44;

  return sub_1AC6549B0();
}

uint64_t sub_1AC654C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_3();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  *v9 = v8;
  v11 = v10[4];
  v12 = v10[3];
  v13 = v10[2];
  v14 = *v4;
  OUTLINED_FUNCTION_18();
  *v15 = v14;

  if (v12)
  {
    v16 = *(v8 + 24);
    v17 = v16[2];
    *(v8 + 40) = v3;
    v18 = v8 + 40;
    *(v18 + 8) = a2;
    *(v18 + 16) = a3;
    v17(v16, v18);
    _Block_release(v16);
  }

  v19 = *(v14 + 8);

  return v19();
}

uint64_t sub_1AC654DA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

void sub_1AC654DC0()
{
  v1 = *(v0[4] + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  v0[5] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_72();
    v2 = v0[2];
    v3 = v0[3];
    v5 = v4;
    v6 = OUTLINED_FUNCTION_108_0();
    sub_1AC5D9374(v6);
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_1AC654E8C;
    v9 = v0[2];
    v8 = v0[3];

    sub_1AC7395AC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC654E8C()
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

uint64_t sub_1AC655014(const void *a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = _Block_copy(a1);
  v3[3] = _Block_copy(a2);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1AC658B94;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v6;
  v3[5] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_1AC65511C;

  return sub_1AC654DA8(v6, v7);
}

uint64_t sub_1AC65511C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = v4[3];
  v9 = v4[2];
  v10 = *v0;
  OUTLINED_FUNCTION_18();
  *v11 = v10;

  sub_1AC5C3958(v7);

  if (v8)
  {
    v12 = *(v2 + 24);
    v12[2](v12);
    _Block_release(v12);
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

void sub_1AC655290()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC7396F4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655330()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC655450, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v9();
  }
}

uint64_t sub_1AC655450()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_1AC6554CC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC658ED4;

  return sub_1AC65527C();
}

void sub_1AC655588()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC739954();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655628()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC658EC8, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v9();
  }
}

uint64_t sub_1AC655768(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC658ED4;

  return sub_1AC655574();
}

void sub_1AC655824()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_150_0();
    OUTLINED_FUNCTION_45();
    v3 = *MEMORY[0x1E6960C70];
    v2 = *(MEMORY[0x1E6960C70] + 8);
    v4 = *(MEMORY[0x1E6960C70] + 16);
    v5;
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_55(v6);
    *v7 = v8;
    v7[1] = sub_1AC655628;
    OUTLINED_FUNCTION_149_0();

    sub_1AC739B58(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655918(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC658ED4;

  return sub_1AC655810();
}

uint64_t sub_1AC6559C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

void sub_1AC6559D8()
{
  v1 = *(v0[5] + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  v0[6] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1AC655A88;
    v5 = v0[3];
    v6 = v0[4];
    v7 = OUTLINED_FUNCTION_31_0(v0[2]);

    sub_1AC739B58(v7, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655A88()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC655BA8, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v9();
  }
}

uint64_t sub_1AC655BA8()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_1AC655CA8(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  a5;
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_1AC655D7C;

  return sub_1AC6559C0(a1, a2, a3);
}

uint64_t sub_1AC655D7C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = v5[4];
  v7 = v5[3];
  v8 = v5[2];
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    if (v7)
    {
      v11 = *(v3 + 24);
      sub_1AC79F738();

      v12 = OUTLINED_FUNCTION_7_5();
      v13(v12);
      _Block_release(v11);
    }

    else
    {
    }
  }

  else if (v7)
  {
    v14 = *(v3 + 24);
    v15 = OUTLINED_FUNCTION_8_4();
    v16(v15);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_44();

  return v17();
}

void sub_1AC655EF4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC739C50();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655FB4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC658ED4;

  return sub_1AC655EE0();
}

void sub_1AC65605C()
{
  if (*(v1 + OBJC_IVAR___SFSpeechAnalyzer__implementation))
  {
    OUTLINED_FUNCTION_78_0();
    v4 = v3;
    v0(v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC656158()
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_99();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v4[4] = sub_1AC6587E8;
  v4[5] = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_31_4();
  v4[2] = sub_1AC656260;
  v4[3] = &block_descriptor_69;
  _Block_copy(v4);
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_38_4(v3, sel_getModelInfoTasksWithCompletionWithError_);
  _Block_release(v1);
}

uint64_t sub_1AC656200(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  a3(v4);
}

uint64_t sub_1AC656260(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1AC7A0448();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_1AC656334(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AC7A0438();
  (*(a2 + 16))(a2, v3);
}

void sub_1AC65639C()
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_99();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v4[4] = sub_1AC6587D8;
  v4[5] = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_31_4();
  v4[2] = sub_1AC6564AC;
  v4[3] = &block_descriptor_60;
  _Block_copy(v4);
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_38_4(v3, sel_getModelInfoLanguageWithCompletionWithError_);
  _Block_release(v1);
}

uint64_t sub_1AC656444(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t))
{
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  a4(v5, v6);
}

uint64_t sub_1AC6564AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1AC79FF68();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_1AC656578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AC79FF58();
  (*(a3 + 16))(a3, v4);
}

void sub_1AC6565D0()
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_99();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v4[4] = sub_1AC6587C8;
  v4[5] = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_31_4();
  v4[2] = sub_1AC656714;
  v4[3] = &block_descriptor_51;
  _Block_copy(v4);
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_38_4(v3, sel_getRecognitionStatisticsWithCompletionWithError_);
  _Block_release(v1);
}

uint64_t sub_1AC656678(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v4 = sub_1AC79FE38();
  }

  a3(v4);
}

uint64_t sub_1AC656714(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v4 = sub_1AC79FE28();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1AC6567FC(uint64_t a1, uint64_t a2)
{
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC79FE18();
  (*(a2 + 16))(a2, v3);
}

void sub_1AC656888()
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_99();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v4[4] = sub_1AC6587B8;
  v4[5] = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_31_4();
  v4[2] = sub_1AC6569B8;
  v4[3] = &block_descriptor_2;
  _Block_copy(v4);
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_38_4(v3, sel_getRecognitionUtteranceStatisticsWithCompletionWithError_);
  _Block_release(v1);
}

uint64_t sub_1AC656930(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = sub_1AC79FE38();
  }

  a3(v4);
}

uint64_t sub_1AC6569B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1AC79FE28();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1AC656A8C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_1AC656B20(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AC79FE18();
  (*(a2 + 16))(a2, v3);
}

void sub_1AC656BA0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC739CFC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC656C40()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = OUTLINED_FUNCTION_20_4();

    return v13(v12);
  }
}

uint64_t sub_1AC656D88(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC656E30;

  return sub_1AC656B8C();
}

uint64_t sub_1AC656E30()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = v5[4];
  v7 = v5[3];
  v8 = v5[2];
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    if (v7)
    {
      v11 = v3[3];
      sub_1AC79F738();

      v12 = OUTLINED_FUNCTION_8_4();
      v13(v12);
      v14 = v11;
LABEL_6:
      _Block_release(v14);

      goto LABEL_9;
    }
  }

  else
  {
    if (v7)
    {
      v15 = v3[3];
      sub_1AC7A0438();
      OUTLINED_FUNCTION_29_5();

      v16 = OUTLINED_FUNCTION_7_5();
      v17(v16);
      v14 = v15;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

void sub_1AC656FE0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC73A140();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC657080()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v13 = *(v7 + 8);
    OUTLINED_FUNCTION_149_0();

    return v17(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_1AC6571E8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC657290;

  return sub_1AC656FCC();
}

uint64_t sub_1AC657290()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = v6[4];
  v8 = v6[3];
  v9 = v6[2];
  v10 = *v2;
  OUTLINED_FUNCTION_18();
  *v11 = v10;

  if (v0)
  {
    if (v8)
    {
      v12 = *(v4 + 24);
      sub_1AC79F738();

      v13 = OUTLINED_FUNCTION_8_4();
      v14(v13);
      v15 = v12;
LABEL_6:
      _Block_release(v15);

      goto LABEL_9;
    }
  }

  else
  {
    if (v8)
    {
      v16 = *(v4 + 24);
      sub_1AC79FF58();
      OUTLINED_FUNCTION_29_5();

      v17 = OUTLINED_FUNCTION_7_5();
      v18(v17);
      v15 = v16;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_44();

  return v19();
}

void sub_1AC65743C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC73A3E8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC6574DC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = OUTLINED_FUNCTION_20_4();

    return v13(v12);
  }
}

uint64_t sub_1AC657624(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC6576CC;

  return sub_1AC657428();
}

uint64_t sub_1AC6576CC()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = v5[4];
  v7 = v5[3];
  v8 = v5[2];
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    if (v7)
    {
      v11 = v3[3];
      sub_1AC79F738();

      v12 = OUTLINED_FUNCTION_8_4();
      v13(v12);
      v14 = v11;
LABEL_6:
      _Block_release(v14);

      goto LABEL_9;
    }
  }

  else
  {
    if (v7)
    {
      v15 = v3[3];
      sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
      sub_1AC79FE18();
      OUTLINED_FUNCTION_29_5();

      v16 = OUTLINED_FUNCTION_7_5();
      v17(v16);
      v14 = v15;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

void sub_1AC657898()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC73A650();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC657958(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_99();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;

  return sub_1AC72CEC8();
}

uint64_t sub_1AC6579C4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC657A6C;

  return sub_1AC657884();
}

uint64_t sub_1AC657A6C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = v5[4];
  v7 = v5[3];
  v8 = v5[2];
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    if (v7)
    {
      v11 = v3[3];
      sub_1AC79F738();

      v12 = OUTLINED_FUNCTION_8_4();
      v13(v12);
      v14 = v11;
LABEL_6:
      _Block_release(v14);

      goto LABEL_9;
    }
  }

  else
  {
    if (v7)
    {
      v15 = v3[3];
      sub_1AC79FE18();
      OUTLINED_FUNCTION_29_5();

      v16 = OUTLINED_FUNCTION_7_5();
      v17(v16);
      v14 = v15;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1AC657C0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

void sub_1AC657C20()
{
  v1 = *(v0[3] + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  v0[4] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1AC657CCC;
    v5 = OUTLINED_FUNCTION_31_0(v0[2]);

    sub_1AC73AD00(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC657CCC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC657DEC, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v9();
  }
}

uint64_t sub_1AC657DEC()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_1AC657ED0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1AC657F90;

  return sub_1AC657C0C(a1);
}

uint64_t sub_1AC657F90()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[3];
  v9 = v5[2];
  v10 = *v1;
  OUTLINED_FUNCTION_18();
  *v11 = v10;

  if (v0)
  {
    if (v7)
    {
      v12 = *(v3 + 32);
      sub_1AC79F738();

      v13 = OUTLINED_FUNCTION_7_5();
      v14(v13);
      _Block_release(v12);
    }

    else
    {
    }
  }

  else if (v7)
  {
    v15 = *(v3 + 32);
    v16 = OUTLINED_FUNCTION_8_4();
    v17(v16);
    _Block_release(v15);
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1AC658128()
{
  OUTLINED_FUNCTION_85();
  if (qword_1ED9373D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED938600;
  *(v0 + 16) = qword_1ED938600;

  return MEMORY[0x1EEE6DFA0](sub_1AC6581BC, v1, 0);
}

uint64_t sub_1AC6581BC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  sub_1AC680770();

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC658284(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC658318;

  return sub_1AC65810C();
}

uint64_t sub_1AC658318()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v6)
  {
    v9 = *(v2 + 16);
    v9[2](v9);
    _Block_release(v9);
  }

  OUTLINED_FUNCTION_44();

  return v10();
}

id sub_1AC658428()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1AC6584C8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC5C4D48;
  v7 = OUTLINED_FUNCTION_16_5();

  return v8(v7, v2, v3);
}

uint64_t sub_1AC658570()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC658600()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC658690()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC658720()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC6587F0()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC658880()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_64_0(v6);
  *v7 = v8;
  v7[1] = sub_1AC5C4D48;
  v9 = OUTLINED_FUNCTION_16_5();

  return v10(v9, v2, v3, v4, v5);
}

uint64_t sub_1AC65893C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC6589CC()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC658A5C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC658AEC()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC5C4D48;
  v7 = OUTLINED_FUNCTION_16_5();

  return v8(v7, v2, v3);
}

uint64_t objectdestroy_10Tm()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC658BD8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC658C68()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_6(v4);

  return v7(v6);
}

uint64_t sub_1AC658D00(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1AC79F7F8() - 8);
  v5 = (*(v4 + 64) + ((*(v4 + 80) + 72) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v1 + 16);
  v6 = *(v1 + 32);
  v17 = *(v1 + 24);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + v5);
  v12 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1AC5C5380;

  return sub_1AC6518CC(a1, v18, v17, v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_30_2()
{
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_task_alloc();
}

uint64_t sub_1AC658F90(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1AC6A8728(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 24 * v7 + 32), (a1 + 32), 24 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AC659050(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6A8740(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1AC79F5C8();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AC659150(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1AC6A8770(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AC65922C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  result = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = a2(result, 1);
  v7 = *v2;
  if (!*(a1 + 16))
  {

    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v7 + 24) >> 1) - *(v7 + 16) < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_171();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_8:
    *v2 = v7;
    return result;
  }

  v10 = *(v7 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v7 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AC659310(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1AC6A87A0(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 48 * v7 + 32), (a1 + 32), 48 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1AC6593D0(uint64_t a1, uint64_t a2)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6A87B8(v6 + v4, 1);
  v2 = *v3;
  v8 = *(*v3 + 16);
  v9 = (*(*v3 + 24) >> 1) - v8;
  v10 = sub_1AC61B78C(&v24, *v3 + 8 * v8 + 32, v9, a1, a2);
  if (v10 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 >= 1)
  {
    v11 = *(v2 + 16);
    v12 = __OFADD__(v11, v10);
    v13 = v11 + v10;
    if (v12)
    {
      __break(1u);
LABEL_30:
      *(v2 + 16) = v13 + 1;
      goto LABEL_8;
    }

    *(v2 + 16) = v13;
  }

  if (v10 != v9)
  {
LABEL_8:
    *v3 = v2;
    return;
  }

LABEL_12:
  v14 = v25;
  v15 = v26;
  if (v26 == v25)
  {
    goto LABEL_8;
  }

  v16 = v24;
  if (v25 < v24)
  {
    goto LABEL_31;
  }

  if (v26 < v24)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v26 < v25)
  {
    v13 = *(v2 + 16);
    v17 = v26 + 1;
LABEL_17:
    v18 = *(v2 + 24) >> 1;
    if (v18 < v13 + 1)
    {
      v21 = v13;
      v22 = v17;
      sub_1AC60ED68();
      v17 = v22;
      v13 = v21;
      v2 = v23;
      v18 = *(v23 + 24) >> 1;
    }

    for (i = v17; ; ++i)
    {
      if (v13 >= v18)
      {
        *(v2 + 16) = v13;
        v17 = i;
        goto LABEL_17;
      }

      *(v2 + 8 * v13 + 32) = v15;
      if (v14 == i)
      {
        goto LABEL_30;
      }

      if (v17 < v16 || i >= v14)
      {
        break;
      }

      v15 = i;
      ++v13;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1AC65956C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_1AC79FB18();
  v6 = OUTLINED_FUNCTION_40(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v13 = v12 - v11;
  v14 = 0;
  v15 = *(a2 + 16);
  v16 = (v8 + 8);
  while (1)
  {
    if (v15 == v14)
    {
      v23 = 1;
      v24 = a3;
      return __swift_storeEnumTagSinglePayload(v24, v23, 1, v5);
    }

    v17 = *(v8 + 80);
    OUTLINED_FUNCTION_89_0();
    (*(v8 + 16))(v13, a2 + v18 + *(v8 + 72) * v14, v5);
    v19 = a1(v13);
    if (v3)
    {
      v25 = *v16;
      v26 = OUTLINED_FUNCTION_614();
      return v27(v26);
    }

    if (v19)
    {
      break;
    }

    v20 = *v16;
    v21 = OUTLINED_FUNCTION_614();
    v22(v21);
    ++v14;
  }

  v24 = a3;
  (*(v8 + 32))(a3, v13, v5);
  v23 = 0;
  return __swift_storeEnumTagSinglePayload(v24, v23, 1, v5);
}

uint64_t sub_1AC659708@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a3;
  v6 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = *(a2 + 16);
  while (1)
  {
    if (v12 == v11)
    {
      v14 = 1;
      v15 = v18;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v6);
    }

    sub_1AC68A130(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v10);
    v13 = a1(v10);
    if (v3)
    {
      return sub_1AC68A2BC();
    }

    if (v13)
    {
      break;
    }

    sub_1AC68A2BC();
    ++v11;
  }

  v15 = v18;
  sub_1AC61B988(v10, v18);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v6);
}

uint64_t sub_1AC6598AC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AC7A08A8();
    type metadata accessor for SpeechRecognizerWorker();
    sub_1AC68A730(&qword_1EB56B418, type metadata accessor for SpeechRecognizerWorker);
    result = sub_1AC7A0488();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        v19 = a1(&v27);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_23;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_1AC7A0918())
        {
          type metadata accessor for SpeechRecognizerWorker();
          swift_dynamicCast();
          v18 = v27;
          v16 = v9;
          v17 = v10;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

LABEL_23:
      sub_1AC5CA508();
    }

    else
    {
LABEL_20:
      sub_1AC5CA508();
      return 0;
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1AC659B08()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_289();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_167(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_437();
  v15 = OUTLINED_FUNCTION_509();
  sub_1AC68A3F8(v15, v16, &qword_1EB56BE70, &qword_1AC7A8270);
  v17 = sub_1AC7A0288();
  v18 = OUTLINED_FUNCTION_55_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v17);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C9624(v0, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    OUTLINED_FUNCTION_106(v17);
    v22 = *(v21 + 8);
    v23 = OUTLINED_FUNCTION_198();
    v24(v23);
  }

  v26 = *(v2 + 16);
  v25 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v26)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AC5C9624(v6, &qword_1EB56BE70, &qword_1AC7A8270);
    OUTLINED_FUNCTION_99();
    v28 = swift_allocObject();
    *(v28 + 16) = v4;
    *(v28 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7F8, &qword_1AC7AAB38);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1AC7A01B8();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_360();
  sub_1AC7A0018();
  OUTLINED_FUNCTION_99();
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7F8, &qword_1AC7AAB38);
  swift_task_create();
  OUTLINED_FUNCTION_86();

  sub_1AC5C9624(v6, &qword_1EB56BE70, &qword_1AC7A8270);

LABEL_9:
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

void sub_1AC659DBC()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_437();
  v13 = OUTLINED_FUNCTION_509();
  sub_1AC68A3F8(v13, v14, &qword_1EB56BE70, &qword_1AC7A8270);
  v15 = sub_1AC7A0288();
  v16 = OUTLINED_FUNCTION_55_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C9624(v0, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    OUTLINED_FUNCTION_106(v15);
    (*(v19 + 8))(v0, v15);
  }

  v21 = *(v2 + 16);
  v20 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v21)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AC5C9624(v6, &qword_1EB56BE70, &qword_1AC7A8270);
    OUTLINED_FUNCTION_99();
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1AC7A01B8();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_360();
  sub_1AC7A0018();
  OUTLINED_FUNCTION_99();
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v2;

  swift_task_create();

  sub_1AC5C9624(v6, &qword_1EB56BE70, &qword_1AC7A8270);

LABEL_9:
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC65A080()
{
  OUTLINED_FUNCTION_85();
  if (qword_1ED9373D0 != -1)
  {
    OUTLINED_FUNCTION_14_2();
  }

  v1 = qword_1ED938600;
  *(v0 + 16) = qword_1ED938600;

  return MEMORY[0x1EEE6DFA0](sub_1AC6581BC, v1, 0);
}

uint64_t SpeechAnalyzer.__allocating_init(modules:options:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_602();
  v11 = type metadata accessor for ClientInfo(0);
  v12 = OUTLINED_FUNCTION_80(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  __swift_project_value_buffer(v11, qword_1EB56E830);
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v18, v17);
  sub_1AC68A3F8(a2, v3, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v19 = *(v4 + 48);
  v20 = *(v4 + 52);
  v21 = swift_allocObject();
  SpeechAnalyzer.init(client:modules:options:)(v17, a1, v3);
  sub_1AC5C9624(a2, &qword_1EB56C7D0, &qword_1AC7ACB40);
  return v21;
}

uint64_t SpeechAnalyzer.__allocating_init(client:modules:options:)()
{
  v0 = OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_203_0();
  SpeechAnalyzer.init(client:modules:options:)(v1, v2, v3);
  return v0;
}

uint64_t SpeechAnalyzer.init(client:modules:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  OUTLINED_FUNCTION_108_0();
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = 0;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop) = 0;
  OUTLINED_FUNCTION_220(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange);
  OUTLINED_FUNCTION_472(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 0;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers) = v8;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers) = v8;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 0;
  OUTLINED_FUNCTION_471((v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange), v9);
  v10 = (v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  *v10 = 0;
  v10[1] = 0;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers) = v11;
  v12 = v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_1AC68A130(v4, v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_clientInfo);
  sub_1AC68A130(v4, v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_currentClientInfo);
  sub_1AC68A3F8(a3, v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v13 = *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules);
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = a2;

  type metadata accessor for AnalysisContext();
  swift_allocObject();
  v14 = AnalysisContext.init()();
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v14;

  OUTLINED_FUNCTION_38_5();
  sub_1AC6877BC(v15, v14, v16);

  v17 = OUTLINED_FUNCTION_88_0();
  sub_1AC5C9624(v17, v18, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  return v5;
}

void SpeechAnalyzer.__allocating_init<A>(inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_104();
  v37 = v2;
  v35 = v3;
  v36 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v38 = v11;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_44_4();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  v26 = type metadata accessor for ClientInfo(0);
  v27 = OUTLINED_FUNCTION_80(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_437();
  sub_1AC5D9374(v10);
  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  __swift_project_value_buffer(v26, qword_1EB56E830);
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v30, v0);
  OUTLINED_FUNCTION_504();
  v31(v25, v13, v6);
  sub_1AC68A3F8(v38, v1, &qword_1EB56C7D0, &qword_1AC7ACB40);
  SpeechAnalyzer.__allocating_init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(v0, v25, v35, v1, v37, v10, v8, v6, v36);
  v32 = OUTLINED_FUNCTION_142();
  sub_1AC5C3958(v32);
  v33 = OUTLINED_FUNCTION_289();
  sub_1AC5C9624(v33, v34, &qword_1AC7ACB40);
  (*(v19 + 8))(v13, v6);
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t SpeechAnalyzer.__allocating_init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = OUTLINED_FUNCTION_377();
  SpeechAnalyzer.init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0);
  return v17;
}

void SpeechAnalyzer.init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_104();
  v24 = v23;
  v26 = v25;
  v112 = v28;
  v113 = v27;
  v30 = v29;
  v103 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_44_4();
  v108 = v35;
  v109 = v34;
  v37 = *(v36 + 64);
  v107 = a21;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_596();
  v105 = v40;
  v106 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_602();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v46 = OUTLINED_FUNCTION_167(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v110 = v49 - v50;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v99 - v52;
  v54 = sub_1AC7A0288();
  v55 = OUTLINED_FUNCTION_40(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_597();
  v104 = v60;
  v102 = v61;
  MEMORY[0x1EEE9AC00](v62);
  v114 = &v99 - v63;
  v111 = v26;
  v64 = OUTLINED_FUNCTION_124_0();
  sub_1AC5D9374(v64);
  swift_defaultActor_initialize();
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = 0;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules) = MEMORY[0x1E69E7CC0];
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop) = 0;
  OUTLINED_FUNCTION_220(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange);
  OUTLINED_FUNCTION_472(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 0;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers) = v65;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers) = v65;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 0;
  OUTLINED_FUNCTION_471((v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange), v66);
  v67 = (v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  *v67 = 0;
  v67[1] = 0;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers) = v68;
  v69 = v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  *v69 = 0;
  *(v69 + 8) = 0;
  sub_1AC68A3F8(v30, v22, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v70 = type metadata accessor for SpeechAnalyzer.Options(0);
  OUTLINED_FUNCTION_96(v22, 1, v70);
  if (v71)
  {
    sub_1AC5C9624(v22, &qword_1EB56C7D0, &qword_1AC7ACB40);
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v54);
    sub_1AC7A0338();
    OUTLINED_FUNCTION_104_2(v53);
    if (!v71)
    {
      sub_1AC5C9624(v53, &qword_1EB56BE70, &qword_1AC7A8270);
    }
  }

  else
  {
    (*(v57 + 16))(v53, v22, v54);
    OUTLINED_FUNCTION_274();
    sub_1AC68A2BC();
    OUTLINED_FUNCTION_150_1();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v54);
    (*(v57 + 32))(v114, v53, v54);
  }

  sub_1AC68A130(v33, v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_clientInfo);
  sub_1AC68A130(v33, v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_currentClientInfo);
  v100 = v30;
  sub_1AC68A3F8(v30, v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v78 = *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules);
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = v103;

  v79 = (v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v80 = *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v81 = *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8);
  *v79 = v111;
  v79[1] = v24;
  sub_1AC5C3958(v80);
  v101 = v24;
  v82 = v112;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v112;

  OUTLINED_FUNCTION_38_5();
  sub_1AC6877BC(v83, v82, v84);

  v103 = v33;
  v85 = *(v57 + 16);
  v85(v110, v114, v54);
  OUTLINED_FUNCTION_150_1();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v54);
  v89 = v108;
  v90 = v109;
  v91 = v106;
  (*(v108 + 16))(v106, v113, v109);
  v92 = OUTLINED_FUNCTION_346();
  (v85)(v92);
  v93 = (*(v89 + 80) + 56) & ~*(v89 + 80);
  v94 = (v105 + *(v57 + 80) + v93) & ~*(v57 + 80);
  v95 = swift_allocObject();
  *(v95 + 2) = 0;
  *(v95 + 3) = 0;
  v96 = v107;
  *(v95 + 4) = v90;
  *(v95 + 5) = v96;
  *(v95 + 6) = v21;
  (*(v89 + 32))(&v95[v93], v91, v90);
  v97 = *(v57 + 32);
  OUTLINED_FUNCTION_203_0();
  v98();

  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();
  sub_1AC5C3958(v111);

  sub_1AC5C9624(v100, &qword_1EB56C7D0, &qword_1AC7ACB40);
  (*(v89 + 8))(v113, v90);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  (*(v57 + 8))(v114, v54);
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC65AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC68A844, a4, 0);
}

void sub_1AC65ADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_44_4();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_482();
  v37 = sub_1AC7A0288();
  OUTLINED_FUNCTION_80(v37);
  v39 = *(v38 + 16);
  v40 = OUTLINED_FUNCTION_289();
  v41(v40);
  OUTLINED_FUNCTION_150_1();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v37);
  v45 = *(v28 + 16);
  v46 = OUTLINED_FUNCTION_389();
  v47(v46);
  OUTLINED_FUNCTION_16_6();
  v50 = sub_1AC68A730(v48, v49);
  v51 = (*(v28 + 80) + 56) & ~*(v28 + 80);
  v52 = swift_allocObject();
  *(v52 + 2) = v20;
  *(v52 + 3) = v50;
  *(v52 + 4) = v26;
  *(v52 + 5) = v24;
  *(v52 + 6) = v20;
  (*(v28 + 32))(&v52[v51], v32, v26);
  OUTLINED_FUNCTION_168_1();
  swift_retain_n();
  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();
  v53 = *(v20 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask);
  *(v20 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = v54;

  OUTLINED_FUNCTION_105();
}

void SpeechAnalyzer.analysisOptions.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_482();
  sub_1AC68A3F8(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, v1, &qword_1EB56C7D0, &qword_1AC7ACB40);
  sub_1AC6D963C(v1);
}

uint64_t SpeechAnalyzer.setClientInfo(_:)()
{
  OUTLINED_FUNCTION_85();
  v1[8] = v2;
  v1[9] = v0;
  v3 = type metadata accessor for ClientInfo(0);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1AC65B0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_640();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_102();
  a16 = v18;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v22 = v18[9];
  v21 = v18[10];
  v23 = v18[8];
  v24 = sub_1AC79FDE8();
  v25 = __swift_project_value_buffer(v24, qword_1ED9386C8);
  v18[11] = v25;
  v26 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_currentClientInfo;
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v22 + v26, v21);
  sub_1AC6B83E0();
  LOBYTE(v23) = v27;
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  if (v23)
  {
    v28 = v18[8];
    v29 = v18[9];
    swift_beginAccess();
    sub_1AC68793C(v28, v22 + v26);
    swift_endAccess();
    v30 = sub_1AC5CAF3C();
    v18[12] = v30;
    v31 = *(v30 + 16);
    v18[13] = v31;
    if (v31)
    {
      v32 = (v30 + 32);
      while (1)
      {
        v18[14] = 0;
        v33 = *v32;
        v18[15] = *v32;
        v34 = object_getClass(v33) != _TtC6Speech22SpeechRecognizerWorker || v33 == 0;
        if (!v34)
        {
          break;
        }

        OUTLINED_FUNCTION_59_3();
        if (v34)
        {
          goto LABEL_13;
        }
      }

      swift_unknownObjectRetain();
      v44 = swift_task_alloc();
      v45 = OUTLINED_FUNCTION_584(v44);
      *v45 = v46;
      OUTLINED_FUNCTION_60_3(v45);
      OUTLINED_FUNCTION_168();

      sub_1AC68D548(v47);
    }

    else
    {
LABEL_13:
      v35 = v18[10];

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_168();

      v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
    }
  }

  else
  {
    v49 = sub_1AC79FDC8();
    v50 = sub_1AC7A05F8();
    if (OUTLINED_FUNCTION_366(v50))
    {
      OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_363();
      v51 = swift_slowAlloc();
      a10 = v51;
      *v25 = 136315138;
      OUTLINED_FUNCTION_65();
      *(v25 + 4) = sub_1AC5CFE74(0xD000000000000046, v52, &a10);
      OUTLINED_FUNCTION_635(&dword_1AC5BC000, v53, v54, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }
}

uint64_t sub_1AC65B340()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 128);
  *v4 = *v1;
  *(v3 + 136) = v0;

  v6 = *(v2 + 72);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC65B45C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v5 = v3[15];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_583();
  while (v0 != v2)
  {
    ++v2;
    v4 += 16;
    if (OUTLINED_FUNCTION_538() == _TtC6Speech22SpeechRecognizerWorker && v1 != 0)
    {
      swift_unknownObjectRetain();
      v7 = swift_task_alloc();
      v8 = OUTLINED_FUNCTION_584(v7);
      *v8 = v9;
      OUTLINED_FUNCTION_60_3();
      OUTLINED_FUNCTION_149_0();

      return sub_1AC68D548(v10);
    }
  }

  v13 = v3[12];
  v14 = v3[10];

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1AC65B550()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[17];
  v2 = v0[11];
  v3 = v1;
  v4 = sub_1AC79FDC8();
  v5 = sub_1AC7A05F8();

  v6 = OUTLINED_FUNCTION_645();
  v7 = v0[17];
  v8 = v0[15];
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_150();
    v10 = OUTLINED_FUNCTION_418();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_582(v12);
    OUTLINED_FUNCTION_309();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_1AC5C9624(v10, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_96_0();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = v0[15];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_583();
  while (v7 != v8)
  {
    ++v8;
    v5 += 16;
    if (OUTLINED_FUNCTION_538() == _TtC6Speech22SpeechRecognizerWorker && v4 != 0)
    {
      swift_unknownObjectRetain();
      v20 = swift_task_alloc();
      v21 = OUTLINED_FUNCTION_584(v20);
      *v21 = v22;
      OUTLINED_FUNCTION_60_3();
      OUTLINED_FUNCTION_523();

      return sub_1AC68D548(v23);
    }
  }

  v26 = v0[12];
  v27 = v0[10];

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t SpeechAnalyzer.prepareToAnalyze(in:)()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);
  OUTLINED_FUNCTION_138();

  return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v3, v4, v5);
}

uint64_t SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC65B7B4, v3);
}

uint64_t sub_1AC65B7B4()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[5];
  OUTLINED_FUNCTION_65();
  if (sub_1AC65BF3C(0xD00000000000002ELL, v2))
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_587(v3);
    *v4 = v5;
    v4[1] = sub_1AC65B890;
    v6 = v0[5];

    return sub_1AC5CCD68();
  }

  else
  {
    v8 = v0[4];
    sub_1AC5C3958(v0[3]);
    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t sub_1AC65B890()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    v3[12] = v0;
    v9 = v0;
    v10 = swift_task_alloc();
    v3[13] = v10;
    *v10 = v7;
    OUTLINED_FUNCTION_258(v10);
    v11 = v3[5];
    v12 = OUTLINED_FUNCTION_362();

    return sub_1AC65D064(v12, v0);
  }

  else
  {
    v14 = v3[5];
    OUTLINED_FUNCTION_496();

    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }
}

id sub_1AC65B9E8()
{
  OUTLINED_FUNCTION_640();
  v19 = v1;
  OUTLINED_FUNCTION_102();
  if (v0[3])
  {
    v3 = v0[4];
    v2 = v0[5];

    v4 = *(sub_1AC5CAF3C() + 16);

    result = [objc_opt_self() progressWithTotalUnitCount_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v8 = v0[3];
    v7 = v0[4];
    v9 = result;
    [v9 setCompletedUnitCount_];
    v10 = v9;
    v8();

    v11 = OUTLINED_FUNCTION_117();
    sub_1AC5C3958(v11);
  }

  else
  {
    v6 = 0;
  }

  v0[7] = v6;
  v12 = v0[5];
  v13 = v0[2];
  v0[8] = sub_1AC5CAF3C();
  OUTLINED_FUNCTION_99();
  v14 = swift_allocObject();
  v0[9] = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v6;
  v15 = v13;
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_588(v16);
  *v17 = v18;
  v17[1] = sub_1AC65BB74;
  OUTLINED_FUNCTION_334();

  return sub_1AC65CBAC();
}

uint64_t sub_1AC65BB74()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = v2[10];
  *v4 = *v1;
  *(v3 + 88) = v0;

  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[5];

  if (v0)
  {
    v9 = sub_1AC65BEB0;
  }

  else
  {
    v9 = sub_1AC65BCCC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1AC65BCCC()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 32);
  sub_1AC5C3958(*(v0 + 24));
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC65BD2C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[5];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC65BE40()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[12];
  v2 = v0[3];
  v3 = v0[4];
  swift_willThrow();
  v4 = OUTLINED_FUNCTION_39();
  sub_1AC5C3958(v4);
  OUTLINED_FUNCTION_44();
  v6 = v0[12];

  return v5();
}

uint64_t sub_1AC65BEB0()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 88);
  *(v0 + 96) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_585(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_258(v4);
  v6 = *(v0 + 40);
  v7 = OUTLINED_FUNCTION_362();

  return sub_1AC65D064(v7, v1);
}

BOOL sub_1AC65BF3C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished;
  if (*(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) == 1)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v7 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v7, qword_1ED9386C8);

    v8 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (OUTLINED_FUNCTION_645())
    {
      v9 = OUTLINED_FUNCTION_150();
      v16 = swift_slowAlloc();
      *v9 = 136315138;
      *(v9 + 4) = sub_1AC5CFE74(a1, a2, &v16);
      OUTLINED_FUNCTION_309();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_96_0();
    }
  }

  return (*(v3 + v4) & 1) == 0;
}

uint64_t sub_1AC65C068()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 160);
  v5 = *(v3 + 80);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v9 + 168) = v8;

  v10 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC65C160()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v2 = sub_1AC65EB54(v1[21], v1[19]);
  v3 = v1[21];
  v4 = v1[19];
  if (v2)
  {
    v5 = v1[19];
  }

  else
  {
    v6 = v1[21];
    sub_1AC616094();
    v8 = v7;
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v9 = v1[21];
    v10 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v10, qword_1ED9386C8);

    v11 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_108_0();

    v12 = os_log_type_enabled(v11, v0);
    v13 = v1[21];
    if (v12)
    {
      OUTLINED_FUNCTION_448();
      OUTLINED_FUNCTION_436();
      *v9 = 136315394;
      v14 = sub_1AC79FB18();
      sub_1AC68A730(&qword_1EB56B468, MEMORY[0x1E6969770]);
      OUTLINED_FUNCTION_623();
      sub_1AC7A0458();

      v15 = OUTLINED_FUNCTION_60_2();
      sub_1AC5CFE74(v15, v16, v17);
      OUTLINED_FUNCTION_627();

      *(v9 + 4) = v8;
      *(v9 + 12) = 2080;
      MEMORY[0x1B26E8D20](v13, v14);

      v18 = OUTLINED_FUNCTION_623();
      v21 = sub_1AC5CFE74(v18, v19, v20);

      *(v9 + 14) = v21;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();

      goto LABEL_9;
    }
  }

LABEL_9:
  v28 = v1[14];
  v27 = v1[15];
  v29 = v1[10];
  v39 = v1[17];

  OUTLINED_FUNCTION_11_7();
  sub_1AC65922C(v30, v31);
  v32 = *(v29 + v28);
  *(v29 + v28) = v39;

  v33 = swift_task_alloc();
  v1[22] = v33;
  *v33 = v1;
  OUTLINED_FUNCTION_198_0(v33);
  OUTLINED_FUNCTION_77_2();

  return sub_1AC65ECDC(v34, v35, v36);
}

uint64_t sub_1AC65C3F4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = v5[22];
  v7 = v5[18];
  v8 = v5[17];
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v3[23] = v0;

  if (v0)
  {
    v11 = v3[15];
    v12 = v3[16];
    v13 = v3[10];

    v14 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v16 = v3[15];
    v17 = v3[10];

    v14 = sub_1AC65C554;
    v15 = v17;
  }

  return MEMORY[0x1EEE6DFA0](v14, v15, 0);
}

uint64_t sub_1AC65C554()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[10];
  v2 = sub_1AC5CAF3C();
  v0[24] = v2;
  OUTLINED_FUNCTION_30(&unk_1AC7AACD0);
  v6 = v3;
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1AC65C614;

  return v6(&unk_1AC7AADE0, 0, v2);
}

void sub_1AC65C614()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 200);
  *v4 = *v1;
  v3[26] = v7;

  if (v0)
  {
  }

  else
  {
    v8 = v3[24];
    v9 = v3[10];

    OUTLINED_FUNCTION_490();

    MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

void sub_1AC65C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v12 = 0;
  v13 = *(v11[16] + 16);
  while (v13)
  {
    v14 = v11[16];
    if (!*(v14 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_399(v14);
    v15 = *(v10 + 48);
    swift_unknownObjectRetain();
    v16 = OUTLINED_FUNCTION_155_1();
    v15(v16);
    v17 = *(v10 + 56);
    v18 = OUTLINED_FUNCTION_172();
    v19(v18);
    swift_unknownObjectRelease();
    v12 += 16;
  }

  v20 = v11[26];
  v21 = v11[16];
  v23 = v11[12];
  v22 = v11[13];
  v24 = v11[10];
  v25 = v11[11];

  sub_1AC5C8C68(v20);

  v26 = *(v23 + 8);
  v27 = OUTLINED_FUNCTION_73_1();
  v28(v27);
  v29 = v11[13];

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_636();

  v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_1AC65C858()
{
  OUTLINED_FUNCTION_85();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_44();
  v2 = v0[23];

  return v1();
}

uint64_t sub_1AC65C8D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v5 = *a1;
  v6 = a1[1];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v3 + 24) = v10;
  *v10 = v3;
  v10[1] = sub_1AC65CA08;

  return v12(a2, ObjectType, v6);
}

uint64_t sub_1AC65CA08()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

char *sub_1AC65CB20()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    result = [v2 completedUnitCount];
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    [v2 setCompletedUnitCount_];
  }

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1AC65CBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[2] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC65CBD0, 0, 0);
}

uint64_t sub_1AC65CBD0()
{
  OUTLINED_FUNCTION_85();
  if (*(*(v0 + 40) + 16))
  {
    v1 = swift_task_alloc();
    OUTLINED_FUNCTION_508(v1);
    v2 = *(MEMORY[0x1E69E8928] + 4);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_42_1(v3);
    *v4 = v5;
    v4[1] = sub_1AC65CCCC;
    OUTLINED_FUNCTION_175();

    return MEMORY[0x1EEE6DE40]();
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v6();
  }
}

uint64_t sub_1AC65CCCC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC65CDCC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1AC65CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[2] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC65CE48, 0);
}

uint64_t sub_1AC65CE48()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = *(v0 + 40);
    }

    if (sub_1AC7A08E8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = swift_task_alloc();
    OUTLINED_FUNCTION_508(v2);
    v3 = *(MEMORY[0x1E69E8928] + 4);
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_42_1(v4);
    *v5 = v6;
    v5[1] = sub_1AC65CF64;
    OUTLINED_FUNCTION_175();

    return MEMORY[0x1EEE6DE40]();
  }

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1AC65CF64()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC65D064(char a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 104) = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC65D084, v2);
}

uint64_t sub_1AC65D084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_46();
  a24 = v26;
  a25 = v27;
  OUTLINED_FUNCTION_55_3();
  a23 = v25;
  v28 = *(v25 + 72);
  if (*(v28 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v29 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v29, qword_1ED9386C8);
    v30 = sub_1AC79FDC8();
    v31 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_153(v31))
    {
      v32 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v32);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_26();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v47 = *(v25 + 64);
    *(v28 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 1;
    v48 = *(v25 + 64);
    if (v47)
    {
      v49 = *(v25 + 64);
    }

    else
    {
      sub_1AC7A01F8();
      OUTLINED_FUNCTION_26_5();
      sub_1AC68A730(v50, v51);
      OUTLINED_FUNCTION_287();
      v49 = OUTLINED_FUNCTION_188();
      sub_1AC79FE08();
    }

    *(v25 + 80) = v49;
    v52 = v48;
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v53 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v53, qword_1ED9386C8);
    v54 = sub_1AC79FDC8();
    v55 = sub_1AC7A05E8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_20();
      *v56 = 0;
      _os_log_impl(&dword_1AC5BC000, v54, v55, "SpeechAnalyzer: Clearing input barriers", v56, 2u);
      OUTLINED_FUNCTION_77_1();
    }

    v57 = *(v25 + 72);

    v58 = sub_1AC675748();
    v59 = *(v58 + 16);
    if (v59)
    {
      a11 = MEMORY[0x1E69E7CC0];
      sub_1AC631660(0, v59, 0);
      v60 = a11;
      v61 = a11[2];
      v62 = 64;
      do
      {
        v63 = *(v58 + v62);
        a11 = v60;
        v64 = v60[3];
        a9 = v63;

        if (v61 >= v64 >> 1)
        {
          sub_1AC631660((v64 > 1), v61 + 1, 1);
          v60 = a11;
        }

        v60[2] = v61 + 1;
        *&v60[2 * v61 + 4] = a9;
        v62 += 48;
        ++v61;
        --v59;
      }

      while (v59);
    }

    else
    {

      v60 = MEMORY[0x1E69E7CC0];
    }

    v65 = v60[2];
    if (v65)
    {
      v66 = v60 + 5;
      do
      {
        v68 = *(v66 - 1);
        v67 = *v66;
        a11 = v49;
        a12 = 0;
        a13 = 0;
        LOBYTE(a14) = 1;

        v69 = v49;
        v68(&a11);

        v66 += 2;
        --v65;
      }

      while (v65);
    }

    v70 = *(v25 + 72);

    sub_1AC67BD18(v49);
    if (*(v70 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask))
    {

      sub_1AC7A0318();
    }

    v71 = *(v25 + 104);
    *(*(v25 + 72) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 1;
    v72 = v49;
    sub_1AC675568(v49);

    *(v25 + 88) = sub_1AC5CAF3C();
    OUTLINED_FUNCTION_30(&unk_1AC7AE808);
    *&a9 = v73;
    v74 = swift_task_alloc();
    *(v25 + 96) = v74;
    *v74 = v25;
    if (v47 || v71)
    {
      v74[1] = sub_1AC65D4D8;
    }

    else
    {
      v74[1] = sub_1AC65D738;
    }

    OUTLINED_FUNCTION_26();

    return v78(v75, v76, v77, v78, v79, v80, v81, v82, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t sub_1AC65D4D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[9];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1AC65D5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = *(v12 + 72);
  v15 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  if (*(v12 + 104) == 1)
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    OUTLINED_FUNCTION_643();
    v16 = v15 + 40;
    while (a9)
    {
      OUTLINED_FUNCTION_517();
      if (v17)
      {
        __break(1u);
        goto LABEL_14;
      }

      v18 = *(v12 + 80);
      OUTLINED_FUNCTION_562();
      OUTLINED_FUNCTION_641();
      OUTLINED_FUNCTION_246();
      v13();
      swift_unknownObjectRelease();
      v16 += 16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    OUTLINED_FUNCTION_643();
    v19 = v15 + 40;
    while (a9)
    {
      OUTLINED_FUNCTION_517();
      if (v17)
      {
LABEL_14:
        __break(1u);
        return;
      }

      v20 = *(v12 + 64);
      OUTLINED_FUNCTION_562();
      OUTLINED_FUNCTION_641();
      OUTLINED_FUNCTION_246();
      v13();
      swift_unknownObjectRelease();
      v19 += 16;
    }
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1AC65D738()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[9];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC65D84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = *(v13 + 72);
  v15 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  v31 = v13;
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v16 = *(*(v14 + v15) + 16);

  v18 = result;
  v19 = result + 40;
  while (v16)
  {
    if (!*(v18 + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v31 + 64);
    OUTLINED_FUNCTION_562();
    v21 = *(v12 + 48);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_246();
    v21();
    result = swift_unknownObjectRelease();
    v19 += 16;
  }

  v22 = *(v31 + 8);
  OUTLINED_FUNCTION_77_2();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v31, a10, a11, a12);
}

void SpeechAnalyzer.deinit()
{
  OUTLINED_FUNCTION_104();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  v3 = OUTLINED_FUNCTION_22(v2);
  v36 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask;
  if (*(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask))
  {
    v14 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask);

    sub_1AC7A0318();
  }

  v15 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v16 = *(v0 + v15);

  sub_1AC5CAF9C(v17);
  OUTLINED_FUNCTION_430();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *(v0 + v13);
  v23 = *(v0 + v15);
  v24 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options;
  sub_1AC68A3F8(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, v8, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v25 = *(v36 + 80);
  v36 = v13;
  v26 = (v25 + 56) & ~v25;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v22;
  v27[5] = v23;
  v27[6] = v1;
  sub_1AC68A444(v8, v27 + v26, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();

  sub_1AC5C9624(v0 + v24, &qword_1EB56C7D0, &qword_1AC7ACB40);
  sub_1AC68A2BC();
  sub_1AC68A2BC();
  v28 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules);

  v29 = *(v0 + v15);

  v30 = *(v0 + v36);

  v31 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers);

  v32 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers);

  v33 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8);
  sub_1AC5C3958(*(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange));
  v34 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers);

  v35 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext);

  sub_1AC5C9624(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext + 8, &qword_1EB56C7D8, &qword_1AC7AA868);
  swift_defaultActor_destroy();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC65DC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC65DD14, 0, 0);
}

uint64_t sub_1AC65DD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  if (v10[2])
  {
    v14 = *(MEMORY[0x1E69E86B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    v10[7] = v15;
    *v15 = v16;
    v15[1] = sub_1AC65DE7C;
    OUTLINED_FUNCTION_291();

    return MEMORY[0x1EEE6DA20](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_581();
    for (; v11; --v11)
    {
      v26 = *(v12 - 1);
      v25 = *v12;
      swift_getObjectType();
      OUTLINED_FUNCTION_622();
      v27 = *(v13 + 48);
      v13 += 48;
      swift_unknownObjectRetain();
      v28 = OUTLINED_FUNCTION_155_1();
      v27(v28);
      swift_unknownObjectRelease();
      v12 += 2;
    }

    OUTLINED_FUNCTION_30(&unk_1AC7AE808);
    v40 = v29;
    v30 = swift_task_alloc();
    v10[9] = v30;
    *v30 = v10;
    OUTLINED_FUNCTION_162_1(v30);
    OUTLINED_FUNCTION_291();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
  }
}

uint64_t sub_1AC65DE7C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC65DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_581();
  for (; v11; --v11)
  {
    v15 = *(v12 - 1);
    v14 = *v12;
    swift_getObjectType();
    OUTLINED_FUNCTION_622();
    v16 = *(v13 + 48);
    v13 += 48;
    swift_unknownObjectRetain();
    v17 = OUTLINED_FUNCTION_155_1();
    v16(v17);
    swift_unknownObjectRelease();
    v12 += 2;
  }

  OUTLINED_FUNCTION_30(&unk_1AC7AE808);
  v29 = v18;
  v19 = swift_task_alloc();
  *(v10 + 72) = v19;
  *v19 = v10;
  OUTLINED_FUNCTION_162_1(v19);
  OUTLINED_FUNCTION_291();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10);
}

uint64_t sub_1AC65E030()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC65E114()
{
  OUTLINED_FUNCTION_57();
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = v0[4];
  v32 = MEMORY[0x1E69E7CC0];
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v6 = _TtC6Speech22SpeechRecognizerWorker;
LABEL_2:
  v0[10] = v2;
  v7 = (v5 + 16 * v1);
  while (1)
  {
    if (v4 == v1)
    {
      sub_1AC68A3F8(v0[5], v0[6], &qword_1EB56C7D0, &qword_1AC7ACB40);
      v15 = type metadata accessor for SpeechAnalyzer.Options(0);
      v16 = OUTLINED_FUNCTION_178_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v15);
      v19 = v0[6];
      if (EnumTagSinglePayload == 1)
      {

        sub_1AC5C9624(v19, &qword_1EB56C7D0, &qword_1AC7ACB40);
LABEL_15:
        v20 = 0;
        while (v0[8])
        {
          OUTLINED_FUNCTION_399(v0[3]);
          OUTLINED_FUNCTION_622();
          cache = v6[1].cache;
          v6 = (v6 + 56);
          swift_unknownObjectRetain();
          v22 = OUTLINED_FUNCTION_172();
          cache(v22);
          swift_unknownObjectRelease();
          v20 += 16;
        }

        v23 = v0[6];

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        __asm { BRAA            X1, X16 }
      }

      v26 = *(v19 + *(v15 + 20));
      OUTLINED_FUNCTION_274();
      sub_1AC68A2BC();
      switch(v26)
      {
        case 1:
        case 3:
          if (qword_1ED9373D0 == -1)
          {
            goto LABEL_23;
          }

          goto LABEL_33;
        case 2:
        case 4:
          if (qword_1ED9373D0 != -1)
          {
            OUTLINED_FUNCTION_14_2();
          }

          v0[12] = qword_1ED938600;
          goto LABEL_27;
        default:

          goto LABEL_15;
      }
    }

    if (v1 >= v4)
    {
      break;
    }

    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_32;
    }

    v10 = *v7;
    v7 += 2;
    v9 = v10;
    ++v1;
    if (object_getClass(v10) == _TtC6Speech22SpeechRecognizerWorker && v9 != 0)
    {
      v12 = swift_unknownObjectRetain();
      MEMORY[0x1B26E8CF0](v12);
      OUTLINED_FUNCTION_483(v32);
      if (v14)
      {
        OUTLINED_FUNCTION_9(v13);
        sub_1AC7A0178();
      }

      OUTLINED_FUNCTION_172();
      sub_1AC7A0198();
      v2 = v32;
      v1 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  OUTLINED_FUNCTION_14_2();
LABEL_23:
  v0[11] = qword_1ED938600;
LABEL_27:
  OUTLINED_FUNCTION_634();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1AC65E3C4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 88);
  sub_1AC680560(*(v0 + 80), 0);

  v2 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC65E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v12 = 0;
  while (v10[8])
  {
    OUTLINED_FUNCTION_399(v10[3]);
    OUTLINED_FUNCTION_622();
    v13 = *(v11 + 56);
    v11 += 56;
    swift_unknownObjectRetain();
    v14 = OUTLINED_FUNCTION_172();
    v13(v14);
    swift_unknownObjectRelease();
    v12 += 16;
  }

  v15 = v10[6];

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1AC65E4DC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = OUTLINED_FUNCTION_178_1();
  sub_1AC680560(v3, v4);

  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC65E548(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1AC68A840;

  return v9(1, ObjectType, v2);
}

uint64_t SpeechAnalyzer.__deallocating_deinit()
{
  SpeechAnalyzer.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SpeechAnalyzer.modules.getter()
{
  v2 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v3 = *(v0 + v2);

  sub_1AC608680(v4);
  OUTLINED_FUNCTION_108_0();

  if (*(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules))
  {
    v5 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1AC65922C(v5, sub_1AC6A8758);
  return v1;
}

uint64_t SpeechAnalyzer.setModules(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC65E768, v1);
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67EE68, v1);
}

uint64_t sub_1AC65E768()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);
  if (sub_1AC65BF3C(0x6C75646F4D746573, 0xEE00293A5F287365))
  {
    v2 = *(v0 + 24);
    v3 = *(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules);
    *(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = *(v0 + 16);

    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_140_1(v5);

    return sub_1AC5CCD68();
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v8();
  }
}

uint64_t sub_1AC65E864()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[5] = v0;

  if (v0)
  {
    v9 = v0;
    v10 = swift_task_alloc();
    v3[6] = v10;
    *v10 = v7;
    v10[1] = sub_1AC65E9D0;
    v11 = v3[3];
    v12 = OUTLINED_FUNCTION_362();

    return sub_1AC65D064(v12, v0);
  }

  else
  {
    v14 = *(v7 + 8);

    return v14();
  }
}

uint64_t sub_1AC65E9D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[3];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC65EAE4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 40);
  swift_willThrow();
  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_1AC65EB54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-v6];
  v8 = *(a2 + 16);
  if (v8 == 1)
  {
    sub_1AC625B14(a2, v7);
    v10 = sub_1AC79FB18();
    result = __swift_getEnumTagSinglePayload(v7, 1, v10);
    if (result != 1)
    {
      MEMORY[0x1EEE9AC00](result);
      *&v12[-16] = v7;
      v9 = sub_1AC6F47B8(sub_1AC637BAC, &v12[-32], a1);
      (*(*(v10 - 8) + 8))(v7, v10);
      return v9;
    }

    __break(1u);
  }

  else
  {
    if (!v8)
    {
      return 1;
    }

    return sub_1AC68448C(a1, a2);
  }

  return result;
}

uint64_t sub_1AC65ECDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[87] = v3;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  v5 = sub_1AC7A0288();
  v4[88] = v5;
  v6 = *(v5 - 8);
  v4[89] = v6;
  v4[90] = *(v6 + 64);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8) - 8) + 64) + 15;
  v4[94] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
  v4[95] = v8;
  v9 = *(v8 - 8);
  v4[96] = v9;
  v10 = *(v9 + 64) + 15;
  v4[97] = swift_task_alloc();
  v11 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v4[98] = v11;
  v12 = *(v11 - 8);
  v4[99] = v12;
  v13 = *(v12 + 64) + 15;
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B0, &qword_1AC7AADF0);
  v4[106] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v4[109] = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B8, &qword_1AC7AADF8) - 8) + 64);
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v4[112] = swift_task_alloc();
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v16 = sub_1AC79FDE8();
  v4[116] = v16;
  v17 = *(v16 - 8);
  v4[117] = v17;
  v18 = *(v17 + 64) + 15;
  v4[118] = swift_task_alloc();
  v19 = *(*(type metadata accessor for ClientInfo(0) - 8) + 64) + 15;
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC65F054, v3, 0);
}

uint64_t sub_1AC660B68()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 1000);
  *v4 = *v1;
  *(v3 + 1008) = v0;

  v6 = *(v2 + 696);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC662770()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[136];
  v2 = v0[133];
  v3 = v0[119];
  v4 = v0[87];
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v2 + v1, v3);
  v5 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6640BC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 1144);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 1152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v9 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v10 = *(v3 + 696);
    v9 = sub_1AC6641E0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1AC6655DC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 1184);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 1192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v9 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v10 = *(v3 + 696);
    v9 = sub_1AC665700;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1AC666830()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 1224);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 1232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v9 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v10 = *(v3 + 696);
    v9 = sub_1AC666954;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1AC666954()
{
  v331 = v2;
  OUTLINED_FUNCTION_616();
  v5 = v2[152];
  swift_unknownObjectRelease();
  v326 = v2[154];
  v6 = v2[150];
  v7 = v2[151];
  OUTLINED_FUNCTION_342();
  while (1)
  {
    if (v6 == v3)
    {
      OUTLINED_FUNCTION_206_0();

      isa = v1[2].isa;
      v2[155] = isa;
      if (!isa)
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_206_0();

      OUTLINED_FUNCTION_393();
      do
      {
        v2[156] = v4;
        OUTLINED_FUNCTION_356();
        if (v19)
        {
          goto LABEL_121;
        }

        v2[157] = *(v2 + v1 + 600);
        type metadata accessor for NormalizingTranscriber(0);
        OUTLINED_FUNCTION_4_4();
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectRetain();
          v249 = swift_task_alloc();
          v250 = OUTLINED_FUNCTION_590(v249);
          *v250 = v251;
          OUTLINED_FUNCTION_13_4(v250);
          OUTLINED_FUNCTION_93_2();
          OUTLINED_FUNCTION_405();

          return sub_1AC66F25C(v252, v253, v254);
        }

        OUTLINED_FUNCTION_134_2();
      }

      while (!v20);

      v0 = v1[2].isa;
      v2[160] = v0;
      if (!v0)
      {
LABEL_109:
        v2[170] = v326;
        OUTLINED_FUNCTION_329();
        OUTLINED_FUNCTION_117_2();

        v2[74] = v0;
        v2[73] = MEMORY[0x1E69E7CC0];
        if (qword_1ED9373D0 != -1)
        {
          goto LABEL_125;
        }

        goto LABEL_110;
      }

      OUTLINED_FUNCTION_101_2();
      v315 = v2[99];
      v309 = v2[96];
      v311 = v2[95];
      v312 = v2[98];
      v308 = v21 + 8;
      v306 = v22 + 8;

      v23 = 0;
      v24 = &protocol descriptor for TranscriberBackedSpeechModule;
      *&v25 = 136315394;
      v307 = v25;
      v310 = xmmword_1AC7A6D00;
      v26 = v2 + 75;
      v314 = v0;
      while (1)
      {
        OUTLINED_FUNCTION_276();
        if (v23 >= v28)
        {
          goto LABEL_122;
        }

        v29 = *(v27 + 16 * v23 + 32);
        swift_getObjectType();
        v30 = OUTLINED_FUNCTION_4_4();
        v31 = dynamic_cast_existential_1_conditional(v30);
        if (v31)
        {
          isa = v31;
          v33 = v32;
          swift_getObjectType();
          OUTLINED_FUNCTION_103_2((isa + OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber));
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_653();
          v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8C8, &qword_1AC7AAE00);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
          OUTLINED_FUNCTION_170_1();
          if (swift_dynamicCast())
          {
            v316 = v33;
            v319 = isa;
            v327 = v23;
            v328 = v29;
            OUTLINED_FUNCTION_652();
            v34 = *v26;
            v35 = *v26 + 64;
            v36 = *(*v26 + 32);
            OUTLINED_FUNCTION_32_5();
            v39 = v38 & v37;
            v41 = (63 - v40) >> 6;
            OUTLINED_FUNCTION_168_1();
            swift_bridgeObjectRetain_n();
            v42 = 0;
            v324 = v34;
            if (!v39)
            {
              while (1)
              {
                isa = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_120;
                }

                if (isa >= v41)
                {

                  v64 = 1;
                  goto LABEL_31;
                }

                ++v42;
                if (*(v35 + 8 * isa))
                {
                  goto LABEL_24;
                }
              }
            }

LABEL_20:
            isa = v42;
LABEL_24:
            v43 = v2[108];
            v44 = v2[107];
            OUTLINED_FUNCTION_143_2();
            v45 = *(v315 + 72);
            OUTLINED_FUNCTION_1_7();
            sub_1AC68A130(v46, v43);
            OUTLINED_FUNCTION_326();
            *(v43 + v47) = v24;
            v48 = OUTLINED_FUNCTION_619();
            sub_1AC61B988(v48, v49);
            *(v44 + *(v34 + 48)) = *(v43 + *(v34 + 48));
            v50 = *(v44 + *(v34 + 48));
            v51 = *(v50 + 16);
            v52 = v50 + 32;

            v53 = v51 + 1;
            do
            {
              if (!--v53)
              {
                v58 = v2[107];
                OUTLINED_FUNCTION_2_6();
                sub_1AC68A2BC();
                OUTLINED_FUNCTION_130_2();
                sub_1AC5C9624(v58 + v59, &qword_1EB56C8D0, &qword_1AC7AAE18);
                v42 = isa;
                v34 = v324;
                goto LABEL_20;
              }

              v54 = *(v52 + 24);
              v55 = OUTLINED_FUNCTION_619();
              __swift_project_boxed_opaque_existential_1(v55, v56);
              v57 = sub_1AC7A0D28();
              __swift_project_boxed_opaque_existential_1(v329, v2[25]);
              v24 = sub_1AC7A0D28();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v52 += 40;
            }

            while (v57 != v24);
            v60 = v2[115];
            v61 = v2[107];

            v62 = OUTLINED_FUNCTION_506();
            sub_1AC61B988(v62, v63);
            OUTLINED_FUNCTION_130_2();
            *(v60 + v65) = *(v61 + v65);
LABEL_31:
            v66 = v2[106];
            __swift_storeEnumTagSinglePayload(v2[115], v64, 1, v66);

            v67 = OUTLINED_FUNCTION_278();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, v68, v66);
            v70 = v2[115];
            v1 = v2[114];
            v26 = v2 + 75;
            v23 = v327;
            v24 = &protocol descriptor for TranscriberBackedSpeechModule;
            if (EnumTagSinglePayload)
            {
              v71 = v2[109];
              v72 = OUTLINED_FUNCTION_123();
              memcpy(v72, v73, v74);
            }

            else
            {
              v75 = v2[106];
              OUTLINED_FUNCTION_1_7();
              v76 = OUTLINED_FUNCTION_74_0();
              sub_1AC68A130(v76, v77);
              OUTLINED_FUNCTION_130_2();
              sub_1AC68A3F8(v70 + v78, v1 + v78, &qword_1EB56C8D0, &qword_1AC7AAE18);
              v79 = OUTLINED_FUNCTION_68_3();
              __swift_storeEnumTagSinglePayload(v79, v80, v81, v75);
            }

            OUTLINED_FUNCTION_608();
            v82 = OUTLINED_FUNCTION_55_2();
            OUTLINED_FUNCTION_96(v82, v83, v70);
            if (v20)
            {
              v84 = v2[115];
              v85 = OUTLINED_FUNCTION_178_1();
              if (!__swift_getEnumTagSinglePayload(v85, v86, v70))
              {
                v87 = sub_1AC79FB18();
                OUTLINED_FUNCTION_22_0(v87);
                (*(v88 + 8))(v84);
                v70 = v312;
                v89 = *(v84 + v312[5]);

                v90 = v84 + v312[9];
                v91 = type metadata accessor for TranscriberCommon.ModelOptions(0);
                if (!OUTLINED_FUNCTION_63_3(v91))
                {
                  v92 = sub_1AC79F7F8();
                  if (!OUTLINED_FUNCTION_75_1(v92))
                  {
                    OUTLINED_FUNCTION_40_4();
                    v94 = *(v93 + 8);
                    v95 = OUTLINED_FUNCTION_123();
                    v96(v95);
                  }

                  OUTLINED_FUNCTION_119_2();
                  if (!OUTLINED_FUNCTION_88_2())
                  {
                    OUTLINED_FUNCTION_40_4();
                    v98 = *(v97 + 8);
                    v99 = OUTLINED_FUNCTION_227();
                    v100(v99);
                  }

                  OUTLINED_FUNCTION_118_2();
                  OUTLINED_FUNCTION_370();
                  OUTLINED_FUNCTION_369();
                  OUTLINED_FUNCTION_368();
                  OUTLINED_FUNCTION_367();
                  v70 = v312;
                }

                v1 = v2[115];

                v101 = *(&v1->isa + v70[13]);

                v102 = *(&v1->isa + v70[14]);

                v103 = *(&v1->isa + v70[15]);

                OUTLINED_FUNCTION_130_2();
                v105 = *(&v1->isa + v104);

                OUTLINED_FUNCTION_608();
              }

              swift_unknownObjectRelease();
              v106 = OUTLINED_FUNCTION_55_2();
              if (__swift_getEnumTagSinglePayload(v106, v107, v70))
              {
                goto LABEL_83;
              }

              v108 = OUTLINED_FUNCTION_651();
              OUTLINED_FUNCTION_22_0(v108);
              v110 = (*(v109 + 8))(v1);
              OUTLINED_FUNCTION_426(v110, v111, v112, v113, v114, v115, v116, v117, v305, v306, v307, *(&v307 + 1), v308, v309, v310, *(&v310 + 1), v311, v312);
              v118 = v70[9];
              v119 = OUTLINED_FUNCTION_364();
              if (!OUTLINED_FUNCTION_63_3(v119))
              {
                v120 = sub_1AC79F7F8();
                if (!OUTLINED_FUNCTION_75_1(v120))
                {
                  OUTLINED_FUNCTION_40_4();
                  v122 = *(v121 + 8);
                  v123 = OUTLINED_FUNCTION_123();
                  v124(v123);
                }

                OUTLINED_FUNCTION_119_2();
                if (!OUTLINED_FUNCTION_88_2())
                {
                  OUTLINED_FUNCTION_40_4();
                  v126 = *(v125 + 8);
                  v127 = OUTLINED_FUNCTION_227();
                  v128(v127);
                }

                OUTLINED_FUNCTION_118_2();
                OUTLINED_FUNCTION_370();
                OUTLINED_FUNCTION_369();
                OUTLINED_FUNCTION_368();
                OUTLINED_FUNCTION_367();
                v70 = v312;
              }

              v1 = v2[114];
              v129 = v70[12];
              v130 = v306;
            }

            else
            {
              v70 = v2[105];
              v131 = v2[97];
              OUTLINED_FUNCTION_130_2();
              v133 = *(&v1->isa + v132);
              isa = *(v311 + 48);
              sub_1AC61B988(v1, v131);
              *(v131 + isa) = v133;
              v0 = *(v131 + *(v311 + 48));
              v134 = OUTLINED_FUNCTION_506();
              sub_1AC61B988(v134, v135);
              if (off_1ED937D60 != -1)
              {
                OUTLINED_FUNCTION_3_0();
                swift_once();
              }

              OUTLINED_FUNCTION_10_3(v2[116], qword_1ED9386C8);
              OUTLINED_FUNCTION_649();
              swift_unknownObjectRetain();
              v1 = sub_1AC79FDC8();
              v136 = sub_1AC7A05E8();
              swift_unknownObjectRelease();
              v325 = v0;
              if (os_log_type_enabled(v1, v136))
              {
                isa = v328;
                v137 = OUTLINED_FUNCTION_448();
                v70 = OUTLINED_FUNCTION_494();
                v330 = v70;
                *v137 = v307;
                sub_1AC68A30C((v2 + 12), (v2 + 7));
                v138 = sub_1AC79FFF8();
                v140 = v139;
                OUTLINED_FUNCTION_648();
                sub_1AC5CFE74(v138, v140, v141);
                OUTLINED_FUNCTION_627();

                *(v137 + 4) = v138;
                *(v137 + 12) = 2080;
                v2[63] = v319;
                v2[64] = v316;
                swift_unknownObjectRetain();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFA0, &qword_1AC7A83B0);
                v142 = OUTLINED_FUNCTION_654();
                v0 = v143;
                v144 = sub_1AC5CFE74(v142, v143, &v330);

                *(v137 + 14) = v144;
                _os_log_impl(&dword_1AC5BC000, v1, v136, "SpeechAnalyzer.setWorkers: Re-resolving worker for %s with %s", v137, 0x16u);
                OUTLINED_FUNCTION_557();
                OUTLINED_FUNCTION_129();
                OUTLINED_FUNCTION_96_0();
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_0(v2 + 12);
              }

              v145 = OUTLINED_FUNCTION_358();
              if (v146(v145))
              {
                OUTLINED_FUNCTION_146_1();

                swift_unknownObjectRelease();
                OUTLINED_FUNCTION_2_6();
                sub_1AC68A2BC();
                v256 = OUTLINED_FUNCTION_55_2();
                if (!__swift_getEnumTagSinglePayload(v256, v257, v0))
                {
                  v258 = OUTLINED_FUNCTION_397();
                  OUTLINED_FUNCTION_22_0(v258);
                  v260 = (*(v259 + 8))(v1);
                  OUTLINED_FUNCTION_426(v260, v261, v262, v263, v264, v265, v266, v267, v305, v306, v307, *(&v307 + 1), v308, v309, v310, *(&v310 + 1), v311, v312);
                  v268 = v70[9];
                  v269 = OUTLINED_FUNCTION_364();
                  if (!OUTLINED_FUNCTION_63_3(v269))
                  {
                    v270 = sub_1AC79F7F8();
                    if (!OUTLINED_FUNCTION_75_1(v270))
                    {
                      OUTLINED_FUNCTION_40_4();
                      v272 = *(v271 + 8);
                      v273 = OUTLINED_FUNCTION_123();
                      v274(v273);
                    }

                    OUTLINED_FUNCTION_119_2();
                    if (!OUTLINED_FUNCTION_88_2())
                    {
                      OUTLINED_FUNCTION_40_4();
                      v276 = *(v275 + 8);
                      v277 = OUTLINED_FUNCTION_227();
                      v278(v277);
                    }

                    OUTLINED_FUNCTION_118_2();
                    OUTLINED_FUNCTION_370();
                    OUTLINED_FUNCTION_369();
                    OUTLINED_FUNCTION_368();
                    OUTLINED_FUNCTION_367();
                    v70 = v313;
                  }

                  v1 = v2[115];
                  OUTLINED_FUNCTION_522(v70[12]);
                  v279 = *(&v1->isa + v70[13]);

                  v280 = *(&v1->isa + v70[14]);

                  v281 = *(&v1->isa + v70[15]);

                  OUTLINED_FUNCTION_130_2();
                  v283 = *(&v1->isa + v282);
                }

                __swift_destroy_boxed_opaque_existential_0(v329);
LABEL_98:
                OUTLINED_FUNCTION_480();
                while (1)
                {
                  v2[161] = isa;
                  OUTLINED_FUNCTION_183_1();
                  if (v19)
                  {
                    goto LABEL_123;
                  }

                  OUTLINED_FUNCTION_546();
                  OUTLINED_FUNCTION_4_4();
                  if (swift_dynamicCastClass())
                  {
                    swift_unknownObjectRetain();
                    v291 = swift_task_alloc();
                    v292 = OUTLINED_FUNCTION_499(v291);
                    *v292 = v293;
                    OUTLINED_FUNCTION_10_5(v292);
                    OUTLINED_FUNCTION_93_2();
                    OUTLINED_FUNCTION_405();

                    return sub_1AC66FC5C(v294, v295, v296);
                  }

                  v284 = v2[160];
                  OUTLINED_FUNCTION_177_1();
                  if (isa == v285)
                  {

                    v286 = v1[2].isa;
                    v2[165] = v286;
                    if (!v286)
                    {
                      goto LABEL_109;
                    }

                    OUTLINED_FUNCTION_206_0();

                    OUTLINED_FUNCTION_393();
                    while (1)
                    {
                      OUTLINED_FUNCTION_330();
                      if (v19)
                      {
                        goto LABEL_124;
                      }

                      OUTLINED_FUNCTION_554();
                      OUTLINED_FUNCTION_4_4();
                      if (swift_dynamicCastClass())
                      {
                        swift_unknownObjectRetain();
                        v298 = swift_task_alloc();
                        v299 = OUTLINED_FUNCTION_425(v298);
                        *v299 = v300;
                        OUTLINED_FUNCTION_8_5(v299);
                        OUTLINED_FUNCTION_93_2();
                        OUTLINED_FUNCTION_405();

                        return sub_1AC6706AC(v301, v302, v303);
                      }

                      OUTLINED_FUNCTION_134_2();
                      if (v20)
                      {

                        goto LABEL_109;
                      }
                    }
                  }
                }
              }

              v147 = OUTLINED_FUNCTION_268();
              v148(v147);
              v149 = OUTLINED_FUNCTION_359();
              OUTLINED_FUNCTION_96(v149, v150, v70);
              v26 = v2 + 75;
              if (v20)
              {
                sub_1AC5C9624(v2[94], &qword_1EB56C8A0, &qword_1AC7AADE8);
                type metadata accessor for CommandRecognizer(0);
                OUTLINED_FUNCTION_124_3();
                v151 = swift_dynamicCastClass();
                if (v151)
                {
                  v152 = v151;
                  v317 = v2[139];
                  v305 = v2[138];
                  OUTLINED_FUNCTION_431();
                  v320 = v154;
                  v322 = v153;
                  v155 = v2[105];
                  v156 = v2[103];
                  v157 = v2[98];
                  OUTLINED_FUNCTION_77_3();
                  sub_1AC68A130(v155, v156);
                  *(v156 + v312[8]) = 1;
                  v158 = *&v152[OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet];
                  v159 = v156 + v312[12];
                  v160 = *v159;
                  v161 = *(v159 + 8);
                  v162 = v158;
                  OUTLINED_FUNCTION_611();
                  swift_unknownObjectRetain();
                  v318 = v152;

                  *v159 = v160;
                  *(v159 + 8) = v158;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8D8, &qword_1AC7AAE20);
                  OUTLINED_FUNCTION_64_4();
                  v165 = v164 & ~v163;
                  v166 = swift_allocObject();
                  *(v166 + 16) = v310;
                  v167 = v166 + v165;
                  isa = *(v311 + 48);
                  v168 = OUTLINED_FUNCTION_170();
                  sub_1AC68A130(v168, v169);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF78, &unk_1AC7A9270);
                  v170 = OUTLINED_FUNCTION_521();
                  *(v170 + 16) = v310;
                  sub_1AC68A30C(v329, v170 + 32);
                  *(v167 + isa) = v170;
                  sub_1AC79FE38();
                  OUTLINED_FUNCTION_493();
                  OUTLINED_FUNCTION_261();
                  OUTLINED_FUNCTION_4_6();
                  v171 = OUTLINED_FUNCTION_97_2();
                  sub_1AC684A7C(v171, v172, v173, v174, v175);
                  OUTLINED_FUNCTION_259();
                  v1 = swift_task_alloc();
                  v1[2].isa = v329;
                  v176 = OUTLINED_FUNCTION_12_5();
                  sub_1AC714E0C(v176, v177, v325);

                  v178 = v2[75];
                  swift_isUniquelyReferenced_nonNull_native();
                  OUTLINED_FUNCTION_161_1();
                  OUTLINED_FUNCTION_515();
                  sub_1AC6E0F44();
                  swift_unknownObjectRelease_n();
                  OUTLINED_FUNCTION_259();
                  OUTLINED_FUNCTION_2_6();
                  sub_1AC68A2BC();
                  v23 = v327;
                  v24 = &protocol descriptor for TranscriberBackedSpeechModule;
                  if (!__swift_getEnumTagSinglePayload(v320, 1, v322))
                  {
                    v179 = OUTLINED_FUNCTION_397();
                    OUTLINED_FUNCTION_22_0(v179);
                    (*(v180 + 8))(v1);
                    OUTLINED_FUNCTION_446();
                    v181 = OUTLINED_FUNCTION_201_0();
                    if (!OUTLINED_FUNCTION_63_3(v181))
                    {
                      v182 = sub_1AC79F7F8();
                      if (!OUTLINED_FUNCTION_75_1(v182))
                      {
                        OUTLINED_FUNCTION_40_4();
                        v184 = *(v183 + 8);
                        v185 = OUTLINED_FUNCTION_123();
                        v186(v185);
                      }

                      OUTLINED_FUNCTION_119_2();
                      if (!OUTLINED_FUNCTION_88_2())
                      {
                        OUTLINED_FUNCTION_40_4();
                        v188 = *(v187 + 8);
                        v189 = OUTLINED_FUNCTION_227();
                        v190(v189);
                      }

                      OUTLINED_FUNCTION_118_2();
                      OUTLINED_FUNCTION_370();
                      OUTLINED_FUNCTION_369();
                      OUTLINED_FUNCTION_368();
                      OUTLINED_FUNCTION_367();
                    }

                    v1 = v2[115];

                    OUTLINED_FUNCTION_468();
                    OUTLINED_FUNCTION_476();
                    OUTLINED_FUNCTION_413();
                    OUTLINED_FUNCTION_130_2();
                    v192 = *(&v1->isa + v191);
                  }

                  v193 = v2[103];
                  OUTLINED_FUNCTION_2_6();
                  sub_1AC68A2BC();
                  v26 = v2 + 75;
                  goto LABEL_83;
                }

                OUTLINED_FUNCTION_146_1();

                swift_unknownObjectRelease();
                OUTLINED_FUNCTION_2_6();
                sub_1AC68A2BC();
                v209 = OUTLINED_FUNCTION_55_2();
                v23 = v327;
                v24 = &protocol descriptor for TranscriberBackedSpeechModule;
                if (__swift_getEnumTagSinglePayload(v209, v210, v0))
                {
LABEL_83:
                  __swift_destroy_boxed_opaque_existential_0(v329);
                  v0 = v314;
                  goto LABEL_84;
                }

                v211 = OUTLINED_FUNCTION_397();
                OUTLINED_FUNCTION_22_0(v211);
                v213 = (*(v212 + 8))(v1);
                OUTLINED_FUNCTION_426(v213, v214, v215, v216, v217, v218, v219, v220, v305, v306, v307, *(&v307 + 1), v308, v309, v310, *(&v310 + 1), v311, v312);
                v221 = v70[9];
                v222 = OUTLINED_FUNCTION_364();
                if (!OUTLINED_FUNCTION_63_3(v222))
                {
LABEL_76:
                  v235 = sub_1AC79F7F8();
                  if (!OUTLINED_FUNCTION_75_1(v235))
                  {
                    OUTLINED_FUNCTION_40_4();
                    v237 = *(v236 + 8);
                    v238 = OUTLINED_FUNCTION_123();
                    v239(v238);
                  }

                  OUTLINED_FUNCTION_119_2();
                  if (!OUTLINED_FUNCTION_88_2())
                  {
                    OUTLINED_FUNCTION_40_4();
                    v241 = *(v240 + 8);
                    v242 = OUTLINED_FUNCTION_227();
                    v243(v242);
                  }

                  OUTLINED_FUNCTION_118_2();
                  OUTLINED_FUNCTION_370();
                  OUTLINED_FUNCTION_369();
                  OUTLINED_FUNCTION_368();
                  OUTLINED_FUNCTION_367();
                  v70 = v312;
                }
              }

              else
              {
                v194 = v2[139];
                v195 = v2[138];
                OUTLINED_FUNCTION_431();
                v321 = v197;
                v323 = v196;
                v198 = v2[105];
                v199 = v2[104];
                v200 = v2[98];
                sub_1AC61B988(v2[94], v199);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8D8, &qword_1AC7AAE20);
                OUTLINED_FUNCTION_64_4();
                v201 = OUTLINED_FUNCTION_549();
                *(v201 + 16) = v310;
                v202 = v201 + isa;
                isa = *(v311 + 48);
                OUTLINED_FUNCTION_1_7();
                sub_1AC68A130(v199, v202);
                *(v202 + isa) = v325;
                sub_1AC79FE38();
                OUTLINED_FUNCTION_493();
                OUTLINED_FUNCTION_261();
                OUTLINED_FUNCTION_4_6();
                v203 = OUTLINED_FUNCTION_97_2();
                v70 = v326;
                sub_1AC684A7C(v203, v204, v205, v206, v207);
                OUTLINED_FUNCTION_259();
                v1 = (v2 + 75);
                sub_1AC6EE14C(v198);
                OUTLINED_FUNCTION_611();
                swift_unknownObjectRelease();

                OUTLINED_FUNCTION_6_5();
                sub_1AC68A2BC();
                OUTLINED_FUNCTION_388();
                sub_1AC68A2BC();
                if (__swift_getEnumTagSinglePayload(v321, 1, v323))
                {
                  v23 = v327;
                  v24 = &protocol descriptor for TranscriberBackedSpeechModule;
                  goto LABEL_83;
                }

                v223 = OUTLINED_FUNCTION_397();
                OUTLINED_FUNCTION_22_0(v223);
                v225 = (*(v224 + 8))(v2 + 75);
                OUTLINED_FUNCTION_426(v225, v226, v227, v228, v229, v230, v231, v232, v305, v306, v307, *(&v307 + 1), v308, v309, v310, *(&v310 + 1), v311, v312);
                v233 = v326[9];
                v234 = OUTLINED_FUNCTION_364();
                v23 = v327;
                v24 = &protocol descriptor for TranscriberBackedSpeechModule;
                if (!OUTLINED_FUNCTION_63_3(v234))
                {
                  goto LABEL_76;
                }
              }

              v1 = v2[115];
              v129 = v70[12];
              v130 = v308;
            }

            v244 = *(&v1->isa + v70[13]);

            v245 = *(&v1->isa + v70[14]);

            v246 = *(&v1->isa + v70[15]);

            OUTLINED_FUNCTION_130_2();
            v248 = *(&v1->isa + v247);

            goto LABEL_83;
          }

          swift_unknownObjectRelease();
        }

LABEL_84:
        if (++v23 == v0)
        {
          goto LABEL_98;
        }
      }
    }

    v2[151] = v3;
    OUTLINED_FUNCTION_276();
    if (v3 >= v9)
    {
      break;
    }

    v0 = *(v8 + v4);
    v2[152] = v0;
    type metadata accessor for DictationTranscriber(0);
    OUTLINED_FUNCTION_287();
    swift_dynamicCastClass();
    OUTLINED_FUNCTION_177_1();
    if (v10)
    {
      swift_unknownObjectRetain();
      v11 = swift_task_alloc();
      v2[153] = v11;
      *v11 = v2;
      OUTLINED_FUNCTION_17_5();
      v12 = v2[87];
      OUTLINED_FUNCTION_154_1();
      OUTLINED_FUNCTION_405();

      return sub_1AC66E85C(v13, v14, v15);
    }
  }

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
  OUTLINED_FUNCTION_14_2();
LABEL_110:
  v2[171] = qword_1ED938600;
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_405();

  return MEMORY[0x1EEE6DFA0](v287, v288, v289);
}

uint64_t sub_1AC667ADC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 1264);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 1272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v9 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v10 = *(v3 + 696);
    v9 = sub_1AC667C00;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1AC668B94()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 1304);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 1312) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v9 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v10 = *(v3 + 696);
    v9 = sub_1AC668CB8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1AC668CB8()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v5 = v2[162];
  swift_unknownObjectRelease();
  v6 = v2[164];
  v7 = v2[160];
  v8 = v2[161];
  OUTLINED_FUNCTION_457();
  while (v7 != v3)
  {
    v2[161] = v3;
    OUTLINED_FUNCTION_276();
    if (v3 >= v10)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v0 = *(v9 + v4);
    v2[162] = v0;
    type metadata accessor for EndpointDetector();
    OUTLINED_FUNCTION_287();
    swift_dynamicCastClass();
    OUTLINED_FUNCTION_284();
    if (v11)
    {
      swift_unknownObjectRetain();
      v12 = swift_task_alloc();
      v13 = OUTLINED_FUNCTION_499(v12);
      *v13 = v14;
      OUTLINED_FUNCTION_10_5();
      v15 = v2[87];
      OUTLINED_FUNCTION_154_1();
      OUTLINED_FUNCTION_291();

      return sub_1AC66FC5C(v16, v17, v18);
    }
  }

  OUTLINED_FUNCTION_206_0();

  v21 = *(v1 + 16);
  v2[165] = v21;
  if (v21)
  {
    OUTLINED_FUNCTION_206_0();

    v22 = 0;
    v23 = 32;
    while (1)
    {
      v2[166] = v22;
      if (v22 >= *(v1 + 16))
      {
        goto LABEL_22;
      }

      v2[167] = *(v1 + v23);
      type metadata accessor for SpeechDetector();
      OUTLINED_FUNCTION_4_4();
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
        v28 = swift_task_alloc();
        v29 = OUTLINED_FUNCTION_425(v28);
        *v29 = v30;
        OUTLINED_FUNCTION_8_5(v29);
        v31 = v2[87];
        OUTLINED_FUNCTION_16_5();
        OUTLINED_FUNCTION_291();

        return sub_1AC6706AC(v32, v33, v34);
      }

      ++v22;
      v23 += 16;
      if (v21 == v22)
      {

        break;
      }
    }
  }

  v2[170] = v6;
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_117_2();

  v2[74] = v0;
  v2[73] = MEMORY[0x1E69E7CC0];
  if (qword_1ED9373D0 == -1)
  {
    goto LABEL_15;
  }

LABEL_23:
  OUTLINED_FUNCTION_14_2();
LABEL_15:
  v2[171] = qword_1ED938600;
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_291();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1AC668EE0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 1344);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 1352) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v9 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v10 = *(v3 + 696);
    v9 = sub_1AC669004;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1AC669004()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v4 = v1[167];
  swift_unknownObjectRelease();
  v5 = v1[169];
  v6 = v1[165];
  v7 = v1[166];
  OUTLINED_FUNCTION_457();
  while (v6 != v2)
  {
    v1[166] = v2;
    OUTLINED_FUNCTION_276();
    if (v2 >= v9)
    {
      __break(1u);
      goto LABEL_13;
    }

    v0 = *(v8 + v3);
    v1[167] = v0;
    type metadata accessor for SpeechDetector();
    OUTLINED_FUNCTION_287();
    swift_dynamicCastClass();
    OUTLINED_FUNCTION_284();
    if (v10)
    {
      swift_unknownObjectRetain();
      v11 = swift_task_alloc();
      v12 = OUTLINED_FUNCTION_425(v11);
      *v12 = v13;
      OUTLINED_FUNCTION_8_5();
      v14 = v1[87];
      OUTLINED_FUNCTION_154_1();
      OUTLINED_FUNCTION_523();

      return sub_1AC6706AC(v15, v16, v17);
    }
  }

  v20 = v1[137];

  v1[170] = v5;
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_117_2();

  v1[74] = v0;
  v1[73] = MEMORY[0x1E69E7CC0];
  if (qword_1ED9373D0 == -1)
  {
    goto LABEL_9;
  }

LABEL_13:
  OUTLINED_FUNCTION_14_2();
LABEL_9:
  v1[171] = qword_1ED938600;
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1AC669164()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[171];
  v2 = v0[87];
  v0[172] = sub_1AC6808F8();
  v3 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6691C8()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC61C24C(v0[172]);
  v0[173] = v1;
  if (v1)
  {
    if (v1 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

    v4 = v0[172];
    v0[175] = MEMORY[0x1E69E7CC0];
    v0[174] = 0;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B26E95B0](0);
    }

    else
    {
      OUTLINED_FUNCTION_537(v1, v4);
    }

    OUTLINED_FUNCTION_266();
  }

  else
  {
    v0[177] = MEMORY[0x1E69E7CC0];
    v5 = v0[172];
    v6 = v0[171];
  }

  OUTLINED_FUNCTION_490();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC66928C()
{
  v1 = *(v0 + 696);
  *(v0 + 498) = *(*(v0 + 1408) + 120);
  return OUTLINED_FUNCTION_15_5(sub_1AC6692B0, v1);
}

uint64_t sub_1AC6692B0()
{
  OUTLINED_FUNCTION_72();
  v15 = v0;
  if (*(v0 + 498))
  {
    v1 = (v0 + 584);
    v2 = *(v0 + 1408);

    MEMORY[0x1B26E8CF0](v3);
    if (*((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AC7A0178();
    }

    v4 = *(v0 + 1408);
    OUTLINED_FUNCTION_170();
    sub_1AC7A0198();
  }

  else
  {
    sub_1AC610C70(&v14, *(v0 + 1408));

    v1 = (v0 + 1400);
  }

  v5 = *v1;
  v6 = *(v0 + 1392) + 1;
  if (v6 == *(v0 + 1384))
  {
    *(v0 + 1416) = v5;
    v7 = *(v0 + 1376);
    v8 = *(v0 + 1368);
  }

  else
  {
    *(v0 + 1400) = v5;
    *(v0 + 1392) = v6;
    v9 = *(v0 + 1376);
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B26E95B0]();
    }

    else
    {
      OUTLINED_FUNCTION_535(v6, v9);
    }

    OUTLINED_FUNCTION_266();
  }

  OUTLINED_FUNCTION_490();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC6693DC()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[171];
  v2 = v0[87];
  sub_1AC680618(v0[177]);
  v3 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC669440()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  if (off_1ED937D60 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_3(*(v0 + 928), qword_1ED9386C8);
    v1 = *(v0 + 592);

    v2 = sub_1AC79FDC8();
    v3 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_366(v3))
    {
      v4 = OUTLINED_FUNCTION_448();
      *v4 = 134218240;
      OUTLINED_FUNCTION_175();
      swift_beginAccess();
      *(v4 + 4) = *(*(v0 + 600) + 16);
      *(v4 + 12) = 2048;
      *(v4 + 14) = sub_1AC672A40(v1);

      OUTLINED_FUNCTION_309();
      _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
      OUTLINED_FUNCTION_96_0();
    }

    else
    {
    }

    v10 = *(v0 + 1112);
    v84 = *(v0 + 848);
    v80 = *(v0 + 792);
    v11 = *(v0 + 784);
    *(v0 + 1424) = type metadata accessor for SpeechRecognizerWorker();
    *(v0 + 576) = sub_1AC79FE38();
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v12 = *(v0 + 600);
    *(v0 + 1432) = v12;
    v13 = v12 + 64;
    v14 = -1;
    v15 = -1 << *(v12 + 32);
    if (-v15 < 64)
    {
      v14 = ~(-1 << -v15);
    }

    v16 = v14 & *(v12 + 64);
    v17 = (63 - v15) >> 6;
    v18 = *(v0 + 1360);
    v82 = v12;

    v19 = 0;
    v81 = v1;
    v83 = v13;
    if (v16)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v66 = *(v0 + 896);
        v67 = *(v0 + 848);
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
        v16 = 0;
        goto LABEL_14;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  while (1)
  {
    v20 = v19;
LABEL_13:
    v21 = *(v0 + 896);
    v22 = *(v0 + 848);
    v23 = *(v0 + 816);
    v24 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v25 = v24 | (v20 << 6);
    v26 = *(v82 + 48);
    v27 = *(v80 + 72);
    OUTLINED_FUNCTION_1_7();
    sub_1AC68A130(v28, v23);
    v29 = *(*(v82 + 56) + 8 * v25);
    v30 = *(v84 + 48);
    v31 = OUTLINED_FUNCTION_204_0();
    sub_1AC61B988(v31, v32);
    *(v21 + v30) = v29;
    v33 = OUTLINED_FUNCTION_68_3();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v22);

    v1 = v81;
LABEL_14:
    v36 = *(v0 + 896);
    v37 = *(v0 + 848);
    v38 = OUTLINED_FUNCTION_359();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, v39, v37);
    v41 = *(v0 + 904);
    if (EnumTagSinglePayload)
    {
      memcpy(*(v0 + 904), v36, *(v0 + 872));
    }

    else
    {
      v42 = OUTLINED_FUNCTION_142();
      sub_1AC61B988(v42, v43);
      *(v41 + *(v84 + 48)) = *&v36[*(v84 + 48)];
      OUTLINED_FUNCTION_113_2();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    }

    v48 = *(v0 + 904);
    v49 = *(v0 + 848);
    v50 = OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_96(v50, v51, v52);
    if (v53)
    {
      break;
    }

    v54 = *(v0 + 960);
    v55 = *(v0 + 808);
    v56 = *(v0 + 696);
    v57 = *(v48 + *(v84 + 48));

    sub_1AC61B988(v48, v55);
    v58 = swift_task_alloc();
    v58[2] = v55;
    v58[3] = v54;
    v58[4] = v56;
    v59 = sub_1AC6598AC(sub_1AC68A370, v58, v1);

    if (v59)
    {
      v60 = *(v0 + 816);
      v61 = *(v0 + 808);
      OUTLINED_FUNCTION_1_7();
      sub_1AC68A130(v62, v60);
      v63 = OUTLINED_FUNCTION_142();
      sub_1AC672828(v63, v64);
    }

    v65 = *(v0 + 808);
    OUTLINED_FUNCTION_2_6();
    sub_1AC68A2BC();
    v13 = v83;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v72 = *(v0 + 1368);
  v73 = *(v0 + 1056);

  *(v0 + 1440) = *(v0 + 576);

  *(v0 + 1448) = sub_1AC605610(v74);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v75, v76, v77);
}

uint64_t sub_1AC669814()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[171];
  v2 = v0[87];
  sub_1AC680618(v0[181]);

  return MEMORY[0x1EEE6DFA0](sub_1AC669894, v2, 0);
}

uint64_t sub_1AC669894()
{
  v1 = v0[180];
  v2 = v0[171];
  v0[182] = *(v0[179] + 16);
  v0[183] = *(v1 + 16);
  return OUTLINED_FUNCTION_15_5(sub_1AC6698C4, v2);
}

uint64_t sub_1AC6698C4()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[171];
  v2 = v0[87];
  sub_1AC680840(v0[182] - v0[183]);
  v3 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1AC669930()
{
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1416);
  v5 = *(v0 + 696);

  v6 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext;
  *(v0 + 1472) = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext;
  *(v0 + 1480) = *(v5 + v6);
  v7 = *(v3 + 32);
  *(v0 + 499) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -(-1 << v7));
  }

  v10 = v8 & *(v3 + 64);
  *(v0 + 1488) = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options;
  v11 = MEMORY[0x1E69E7CC0];
  *(v0 + 1496) = MEMORY[0x1E69E7CC0];

  if (v10)
  {
    v1 = 0;
    v2 = *(v0 + 1432);
LABEL_8:
    v14 = *(v0 + 880);
    v15 = *(v0 + 848);
    v16 = *(v0 + 816);
    v17 = (v10 - 1) & v10;
    v18 = v2[6];
    v19 = *(*(v0 + 792) + 72);
    OUTLINED_FUNCTION_1_7();
    sub_1AC68A130(v20, v16);
    v10 = *(v2[7] + 8 * (__clz(__rbit64(v10)) | (v1 << 6)));
    v2 = *(v15 + 48);
    v21 = OUTLINED_FUNCTION_74_0();
    sub_1AC61B988(v21, v22);
    *(v2 + v14) = v10;
    v23 = OUTLINED_FUNCTION_68_3();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v15);

    v13 = v1;
  }

  else
  {
    v12 = 0;
    v13 = ((63 - v9) >> 6) - 1;
    while (v13 != v12)
    {
      v1 = v12 + 1;
      v2 = *(v0 + 1432);
      v10 = v2[v12++ + 9];
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v87 = *(v0 + 880);
    v88 = *(v0 + 848);
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    v17 = 0;
  }

  *(v0 + 1512) = v13;
  *(v0 + 1504) = v17;
  v26 = *(v0 + 880);
  v27 = *(v0 + 848);
  v28 = OUTLINED_FUNCTION_178_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, v29, v27);
  v31 = *(v0 + 888);
  if (EnumTagSinglePayload)
  {
    v32 = *(v0 + 872);
    v33 = OUTLINED_FUNCTION_172();
    memcpy(v33, v34, v35);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_170();
    sub_1AC61B988(v36, v37);
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_113_2();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  }

  v42 = *(v0 + 888);
  v43 = *(v0 + 848);
  OUTLINED_FUNCTION_104_2(v42);
  if (v44)
  {
    v45 = *(v0 + 1432);
    v46 = *(v0 + 1096);

    v47 = *(v46 + 16);
    *(v0 + 1560) = v47;
    if (v47)
    {
      v48 = v0 + 456;
      v49 = (*(v0 + 1096) + 32);
      v2 = &qword_1EB56C8C8;
      v123 = v0;
      do
      {
        v50 = *v49;
        swift_getObjectType();
        v51 = dynamic_cast_existential_1_conditional(v50);
        if (v51)
        {
          OUTLINED_FUNCTION_379(v51);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8C8, &qword_1AC7AAE00);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
          OUTLINED_FUNCTION_203_0();
          if (swift_dynamicCast())
          {
            sub_1AC5D9384((v0 + 256), v0 + 216);
            type metadata accessor for CommandRecognizer(0);
            OUTLINED_FUNCTION_93();
            if (swift_dynamicCastClass())
            {
              OUTLINED_FUNCTION_659();
              v52 = v48;
              v53 = off_1EB56C8E0;
              swift_unknownObjectRetain();
              v54 = v53(&OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber, &protocol descriptor for TranscriberBackedSpeechModule);
              v2 = &qword_1EB56C8C8;
              v48 = v52;
              v0 = v123;
              sub_1AC71E6B4(v54);
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0((v0 + 216));
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v49 += 2;
        --v47;
      }

      while (v47);
      v31 = 0;
      v10 = *(v0 + 1096);
      v1 = v10 + 32;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        OUTLINED_FUNCTION_629();
        if (v55)
        {
          __break(1u);
          goto LABEL_51;
        }

        *(v0 + 1584) = *v1;
        type metadata accessor for LanguageDetector(0);
        OUTLINED_FUNCTION_93();
        v56 = swift_dynamicCastClass();
        *(v0 + 1592) = v56;
        if (v56)
        {
          break;
        }

        OUTLINED_FUNCTION_626();
        if (v44)
        {
          goto LABEL_28;
        }
      }

      v93 = v56;
      OUTLINED_FUNCTION_567();
      OUTLINED_FUNCTION_487(OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions);
      sub_1AC68A29C(v93);
      swift_task_alloc();
      OUTLINED_FUNCTION_100();
      *(v0 + 1600) = v94;
      *v94 = v95;
      OUTLINED_FUNCTION_57_4(v94);
      OUTLINED_FUNCTION_251();

      sub_1AC765C80();
    }

    else
    {
LABEL_28:
      *(v0 + 1624) = v11;
      v57 = *(v0 + 744);
      sub_1AC7A0338();
      v58 = *(v11 + 16);
      *(v0 + 1632) = v58;
      if (v58)
      {
        OUTLINED_FUNCTION_238();
        v114 = *(v0 + 736);
        v121 = *(v0 + 728);
        OUTLINED_FUNCTION_624();
        OUTLINED_FUNCTION_310(v59);
        swift_getObjectType();
        OUTLINED_FUNCTION_235();
        v124 = swift_allocObject();
        OUTLINED_FUNCTION_444(v124);
        OUTLINED_FUNCTION_99();
        v115 = swift_allocObject();
        OUTLINED_FUNCTION_290(v115);
        v116 = *(v1 + 16);
        v60 = OUTLINED_FUNCTION_321();
        v61(v60);
        v62 = *(v1 + 80);
        OUTLINED_FUNCTION_347();
        OUTLINED_FUNCTION_173_1();
        v63 = OUTLINED_FUNCTION_656();
        v64 = OUTLINED_FUNCTION_441(v63);
        v65(v64);
        *(v2 + v63) = v124;
        *(v63 + v10) = v115;
        OUTLINED_FUNCTION_235();
        v66 = swift_allocObject();
        OUTLINED_FUNCTION_335(v66);
        swift_weakInit();
        v116(v121, v47, v31);
        v67 = OUTLINED_FUNCTION_655();
        v68 = OUTLINED_FUNCTION_345(v67);
        v69(v68);
        *(v2 + v67) = v10;
        OUTLINED_FUNCTION_610();
        swift_unknownObjectRetain();

        v125 = v1 + *v1;
        v70 = *(v1 + 4);
        v71 = swift_task_alloc();
        v72 = OUTLINED_FUNCTION_589(v71);
        *v72 = v73;
        v74 = OUTLINED_FUNCTION_35_5(v72);
        OUTLINED_FUNCTION_617(v74, sub_1AC68A188);
        OUTLINED_FUNCTION_251();

        __asm { BRAA            X6, X16 }
      }

      *(v0 + 1688) = v11;
      v97 = *(v0 + 1624);
      v98 = *(v0 + 1472);
      v99 = *(v0 + 1096);
      v100 = *(v0 + 696);

      *(v0 + 1696) = *(v100 + v98);
      v101 = sub_1AC61C24C(v11);
      *(v0 + 1704) = v101;

      if (!v101)
      {
        OUTLINED_FUNCTION_27_5();
        OUTLINED_FUNCTION_207_0();
        v119 = *(v0 + 776);
        v120 = *(v0 + 752);
        v117 = *(v0 + 800);
        v118 = *(v0 + 744);
        v122 = *(v0 + 736);
        v126 = *(v0 + 728);
        OUTLINED_FUNCTION_233();
        v111();

        OUTLINED_FUNCTION_3_7();
        sub_1AC68A2BC();

        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_251();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_514();
      if (v44)
      {
        OUTLINED_FUNCTION_513(v102, v103);
        if (!v106)
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_537(v104, v105);
      }

      else
      {
LABEL_51:
        MEMORY[0x1B26E95B0](0);
      }

      OUTLINED_FUNCTION_343();
      v107 = swift_task_alloc();
      v108 = OUTLINED_FUNCTION_497(v107);
      *v108 = v109;
      OUTLINED_FUNCTION_23_4(v108);
      OUTLINED_FUNCTION_251();

      sub_1AC690BA8();
    }
  }

  else
  {
    v77 = *(v0 + 1488);
    v78 = *(v0 + 1440);
    v79 = *(v0 + 800);
    v80 = *(v0 + 696);
    *(v0 + 1520) = *(v42 + *(v43 + 48));
    v81 = OUTLINED_FUNCTION_198();
    sub_1AC61B988(v81, v82);
    v83 = OUTLINED_FUNCTION_124_0();
    *(v0 + 1528) = sub_1AC6DC7DC(v83, v84);
    v85 = swift_task_alloc();
    *(v0 + 1536) = v85;
    *v85 = v0;
    OUTLINED_FUNCTION_185_1(v85);
    OUTLINED_FUNCTION_251();

    sub_1AC68E9AC();
  }
}