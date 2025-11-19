id sub_1AC713CC4()
{
  v1 = [*(v0 + 72) error];
  v2 = v1;
  v3 = *(v0 + 72);
  if (!v1)
  {
    v5 = sub_1AC714808(*(v0 + 72));
    v6 = v9;
    v10 = [v3 loggingInfo];
    v11 = *(v0 + 72);
    if (v10)
    {
      v12 = v10;
      v8 = sub_1AC79FE28();

      goto LABEL_10;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  result = [v3 error];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [*(v0 + 72) loggingInfo];
  v7 = *(v0 + 72);
  if (!v6)
  {

    goto LABEL_9;
  }

  v8 = sub_1AC79FE28();

  v6 = 0;
LABEL_10:
  v13 = *(v0 + 8);

  return v13(v5, v6, v2 != 0, v8);
}

uint64_t sub_1AC713E50()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[7];

  v2 = v0[10];
  v3 = v0[1];

  return v3(v2, 0, 1, 0);
}

uint64_t sub_1AC713EDC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor__fullPayloadCorrectorService;
  v0[3] = OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor__fullPayloadCorrectorService;
  if (*(v1 + v2))
  {
    v8 = v0[1];

    return v8(v3);
  }

  else
  {
    if (qword_1ED938050 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v5 = *(v1 + OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor_clientID);
    v6 = *(v1 + OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor_clientID + 8);
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_1AC71403C;

    return sub_1AC63C294();
  }
}

uint64_t sub_1AC71403C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 40) = v8;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1AC714174, v11, 0);
  }
}

uint64_t sub_1AC714174()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D9C0, &qword_1AC7B1170);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v1;
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AC714238, 0, 0);
}

uint64_t sub_1AC714238()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 48) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1AC7142C8;

  return sub_1AC754E28();
}

uint64_t sub_1AC7142C8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  v10 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_1AC7143D4;
  }

  else
  {
    v8 = sub_1AC71443C;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC7143D4()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1AC71443C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1AC7144A4, v2, 0);
}

uint64_t sub_1AC7144A4()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  result = *(v2 + v3);
  if (result)
  {
    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC714528()
{
  v1 = OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor_locale;
  v2 = sub_1AC79FB18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor_clientID + 8);

  v4 = *(v0 + OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor__fullPayloadCorrectorService);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC7145B4()
{
  v0 = sub_1AC714528();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1AC7145DC()
{
  result = qword_1EB56B458;
  if (!qword_1EB56B458)
  {
    sub_1AC79FB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B458);
  }

  return result;
}

uint64_t sub_1AC71467C()
{
  result = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AC714758()
{
  result = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AC714808(void *a1)
{
  v1 = [a1 result];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC71486C(uint64_t a1)
{
  v37 = sub_1AC79FB18();
  v2 = OUTLINED_FUNCTION_40(v37);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v33 = v8 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return OUTLINED_FUNCTION_39_9();
  }

  v40 = MEMORY[0x1E69E7CC0];
  sub_1AC63110C();
  result = sub_1AC6C2CA0(a1);
  v13 = result;
  v14 = 0;
  v15 = a1 + 56;
  v36 = v4;
  v32 = a1 + 64;
  v16 = v33;
  v34 = v9;
  v35 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_26;
      }

      v39 = v12;
      v38 = v11;
      v18 = a1;
      v19 = (*(a1 + 48) + 16 * v13);
      v20 = *v19;
      v21 = v19[1];

      sub_1AC79F968();
      v22 = v16;
      v23 = *(v40 + 16);
      if (v23 >= *(v40 + 24) >> 1)
      {
        sub_1AC63110C();
      }

      *(v40 + 16) = v23 + 1;
      result = (*(v36 + 32))(v40 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23, v22, v37);
      if (v39)
      {
        goto LABEL_30;
      }

      v24 = 1 << *(v18 + 32);
      if (v13 >= v24)
      {
        goto LABEL_27;
      }

      v16 = v22;
      a1 = v18;
      v15 = v35;
      v25 = *(v35 + 8 * v17);
      if ((v25 & (1 << v13)) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v38)
      {
        goto LABEL_29;
      }

      v26 = v25 & (-2 << (v13 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v17 << 6;
        v28 = v17 + 1;
        v29 = (v32 + 8 * v17);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1AC637E98(v13, v38, 0);
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_1AC637E98(v13, v38, 0);
LABEL_19:
        v16 = v33;
      }

      if (++v14 == v34)
      {
        return OUTLINED_FUNCTION_39_9();
      }

      v12 = 0;
      v11 = *(a1 + 36);
      v13 = v24;
      if (v24 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1AC714B6C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v37 = sub_1AC79FB18();
  v5 = OUTLINED_FUNCTION_40(v37);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v31 = v10 - v11;
  result = MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = 0;
  v36 = *(a3 + 16);
  v33 = v7 + 16;
  v17 = (v7 + 8);
  v30 = (v7 + 32);
  v32 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v36 == v16)
    {

      return OUTLINED_FUNCTION_39_9();
    }

    if (v16 >= *(a3 + 16))
    {
      break;
    }

    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = *(v7 + 72);
    v20 = a3;
    (*(v7 + 16))(v15, a3 + v18 + v19 * v16, v37);
    v21 = v34(v15);
    if (v3)
    {
      (*v17)(v15, v37);

      return OUTLINED_FUNCTION_39_9();
    }

    if (v21)
    {
      v29 = *v30;
      v29(v31, v15, v37);
      v22 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v22;
      }

      else
      {
        v25 = *(v22 + 16);
        OUTLINED_FUNCTION_37_12();
        sub_1AC63110C();
        v24 = v38;
      }

      a3 = v20;
      v26 = *(v24 + 16);
      v27 = v26 + 1;
      if (v26 >= *(v24 + 24) >> 1)
      {
        v32 = v26 + 1;
        v28 = v26;
        sub_1AC63110C();
        v27 = v32;
        v26 = v28;
        a3 = v20;
        v24 = v38;
      }

      ++v16;
      *(v24 + 16) = v27;
      v32 = v24;
      result = (v29)(v24 + v18 + v26 * v19, v31, v37);
    }

    else
    {
      result = (*v17)(v15, v37);
      ++v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC714E0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  v18 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_1AC68A30C(v8, v20);
    v10 = v5(v20);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0(v20);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_1AC5D9384(v20, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v9 + 16);
        v13 = OUTLINED_FUNCTION_37_12();
        sub_1AC631620(v13, v14, v15);
        v9 = v21;
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AC631620(v16 > 1, v17 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v17 + 1;
      result = sub_1AC5D9384(v19, v9 + 40 * v17 + 32);
      v5 = v18;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v20);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC714F68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1AC79FF68();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

Speech::PhoneticEmbedder::InputFormat_optional __swiftcall PhoneticEmbedder.InputFormat.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PhoneticEmbedder.__allocating_init(locale:clientID:inputFormat:loadingOption:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned __int8 *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned __int8 *a5)
{
  v6 = v5;
  v66 = a2;
  v67 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  v11 = OUTLINED_FUNCTION_167(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  v16 = sub_1AC79FB18();
  v17 = OUTLINED_FUNCTION_40(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v24 = v22 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v64 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v64 - v30;
  v32 = *a4;
  v33 = *a5;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder__syncClient) = 0;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_embeddingDimensions) = 40;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_maxWordLength) = 30;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_modelVersion) = 0;
  Locale.languageRegionLocale.getter(v29, v34, v35, v36, v37, v38, v39, v40, v64, v65, v66, v67, a1, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4]);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    v52 = v68;
    v53 = v28;
    sub_1AC71B9C8(v15, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 != -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v54 = sub_1AC79FDE8();
      __swift_project_value_buffer(v54, qword_1ED9386C8);
      (*(v19 + 16))(v53, v52, v16);
      v55 = sub_1AC79FDC8();
      v56 = sub_1AC7A05F8();
      if (os_log_type_enabled(v55, v56))
      {
        swift_slowAlloc();
        v57 = OUTLINED_FUNCTION_202();
        *v52 = 136315138;
        v69 = 0;
        v70 = 0xE000000000000000;
        v71[0] = v57;
        sub_1AC7A09C8();
        MEMORY[0x1B26E8C40](0xD00000000000004ELL, 0x80000001AC7B8F00);
        sub_1AC70FE1C(&qword_1EB56B458);
        v58 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v58);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v59 = *(v19 + 8);
        v19 += 8;
        v59(v53, v16);
        v60 = OUTLINED_FUNCTION_123();
        v16 = sub_1AC5CFE74(v60, v61, v62);

        *(v52 + 4) = v16;
        _os_log_impl(&dword_1AC5BC000, v55, v56, "Failed precondition: %s", v52, 0xCu);
        OUTLINED_FUNCTION_67();
        OUTLINED_FUNCTION_77_1();
      }

      else
      {

        v63 = *(v19 + 8);
        v19 += 8;
        v63(v53, v16);
      }

      __break(1u);
LABEL_8:
      OUTLINED_FUNCTION_3();
    }
  }

  v41 = *(v19 + 32);
  v41(v31, v15, v16);
  (*(v19 + 16))(v24, v31, v16);
  LOBYTE(v69) = v32;
  LOBYTE(v71[0]) = v33;
  v42 = type metadata accessor for EuclidActor(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  HIDWORD(v65) = v33;
  v45 = v32;
  v46 = v67;

  v47 = v24;
  v48 = v66;
  v49 = sub_1AC7192F0(v47, v66, v46, &v69, v71);
  (*(v19 + 8))(v68, v16);
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor) = v49;
  v41((v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_locale), v31, v16);
  v50 = (v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_clientID);
  *v50 = v48;
  v50[1] = v46;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_inputFormat) = v45;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_loadingOption) = BYTE4(v65);
  return v6;
}

char *sub_1AC715560()
{
  v1 = OBJC_IVAR____TtC6Speech16PhoneticEmbedder__syncClient;
  v2 = *&v0[OBJC_IVAR____TtC6Speech16PhoneticEmbedder__syncClient];
  if (v2)
  {
    v0 = *&v0[OBJC_IVAR____TtC6Speech16PhoneticEmbedder__syncClient];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0;

    v5 = sub_1AC7156C8(sub_1AC71BEC8, v4);

    swift_beginAccess();
    v6 = *(v4 + 16);
    if (v6)
    {
      swift_willThrow();
      v7 = v6;

      return v0;
    }

    v9 = *&v0[v1];
    *&v0[v1] = v5;
    v0 = v5;

    v2 = 0;
  }

  v3 = v2;
  return v0;
}

void sub_1AC715668(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

id sub_1AC7156C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(SFLocalSpeechRecognitionClient) init];
  Locale.languageRegionIdentifier.getter();
  v7 = sub_1AC79FF58();
  v8 = SFReplacementLocaleCodeForLocaleIdentifier(v7);

  if (v8)
  {
    sub_1AC79FF68();
  }

  v9 = sub_1AC79FF58();

  v10 = *(v3 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_clientID);
  v11 = *(v3 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_clientID + 8);
  v12 = sub_1AC79FF58();
  v13 = *(v3 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_inputFormat);
  v14 = *(v3 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_loadingOption);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v18[4] = sub_1AC71BED0;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1AC715904;
  v18[3] = &block_descriptor_79;
  v16 = _Block_copy(v18);

  [v6 synchronousCreateEuclidInstanceForLanguageStr:v9 clientID:v12 inputFormat:v13 loadingOption:v14 completion:v16];

  _Block_release(v16);
  return v6;
}

void sub_1AC715894(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = a1;
    (a2)(a1);
  }

  else
  {
    a2();
  }
}

void sub_1AC715904(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1AC715970()
{
  v1 = sub_1AC79FF48();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v66 - v7;
  v9 = sub_1AC79FAF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v68 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = v66 - v17;
  v81 = sub_1AC79FB18();
  v18 = *(v81 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v81);
  v66[3] = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v79 = v66 - v22;
  v23 = static PhoneticEmbedder.supportedLocales()();
  v24 = *(v23 + 16);
  if (v24)
  {
    v67 = v8;
    v66[1] = v0;
    v66[2] = v4;
    v84 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v24, 0);
    v80 = v84;
    v26 = *(v18 + 16);
    v25 = v18 + 16;
    v75 = v26;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v66[0] = v23;
    v28 = v23 + v27;
    v29 = (v10 + 8);
    v72 = *(v25 + 56);
    v73 = (v25 - 8);
    v76 = v25;
    v77 = v9;
    v30 = v69;
    v31 = v79;
    v74 = v29;
    do
    {
      v75(v31, v28, v81);
      v32 = v78;
      sub_1AC79FB08();
      sub_1AC79FAC8();
      v33 = *v29;
      (*v29)(v32, v9);
      v34 = v9;
      v35 = sub_1AC79F9C8();
      if (__swift_getEnumTagSinglePayload(v30, 1, v35) == 1)
      {
        sub_1AC71B9C8(v30, &qword_1EB56C070, &qword_1AC7A8770);
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      else
      {
        v70 = sub_1AC79F988();
        v71 = v38;
        (*(*(v35 - 8) + 8))(v30, v35);
        v39 = v68;
        sub_1AC79FB08();
        v40 = v67;
        sub_1AC79FAD8();
        v41 = v40;
        v33(v39, v34);
        v42 = sub_1AC79FA48();
        if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
        {
          sub_1AC71B9C8(v41, &qword_1EB56C060, &unk_1AC7A8760);
          v30 = v69;
          v36 = v70;
          v37 = v71;
        }

        else
        {
          v43 = sub_1AC79F988();
          v45 = v44;
          (*(*(v42 - 8) + 8))(v41, v42);
          v82 = v70;
          v83 = v71;
          MEMORY[0x1B26E8C40](45, 0xE100000000000000);
          MEMORY[0x1B26E8C40](v43, v45);

          v36 = v82;
          v37 = v83;
          v30 = v69;
        }
      }

      v31 = v79;
      (*v73)(v79, v81);
      v46 = v80;
      v84 = v80;
      v48 = *(v80 + 16);
      v47 = *(v80 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1AC6310CC(v47 > 1, v48 + 1, 1);
        v31 = v79;
        v46 = v84;
      }

      *(v46 + 16) = v48 + 1;
      v80 = v46;
      v49 = v46 + 16 * v48;
      *(v49 + 32) = v36;
      *(v49 + 40) = v37;
      v28 += v72;
      --v24;
      v9 = v77;
      v29 = v74;
    }

    while (v24);

    v50 = v80;
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  Locale.languageRegionIdentifier.getter();
  v82 = v51;
  v83 = v52;
  MEMORY[0x1EEE9AC00](v51);
  v66[-2] = &v82;
  v53 = sub_1AC6F488C(sub_1AC637EC4, &v66[-4], v50);

  if (!v53)
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v55 = sub_1AC79FDE8();
    __swift_project_value_buffer(v55, qword_1ED9386C8);

    v56 = sub_1AC79FDC8();
    v57 = sub_1AC7A05F8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v82 = v59;
      *v58 = 136315138;
      sub_1AC70FE1C(&qword_1EB56B458);
      v60 = sub_1AC7A0CC8();
      v62 = sub_1AC5CFE74(v60, v61, &v82);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1AC5BC000, v56, v57, "PhoneticEmbedder.nearest(_:neighborsOf:) cannot be called on an unsupported locale: %s.\nPlease consult PhoneticEmbedder.supportedLocales.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1B26EAB10](v59, -1, -1);
      MEMORY[0x1B26EAB10](v58, -1, -1);
    }

    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      swift_once();
    }

    v63 = qword_1EB56DF80;
    sub_1AC79FA88();
    v64 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(4, v64, v65);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AC7161A0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC71A464();
}

uint64_t sub_1AC716230()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = OUTLINED_FUNCTION_6_12();

    return MEMORY[0x1EEE6DFA0](v13, v14, 0);
  }
}

uint64_t sub_1AC716368()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC71A130();
}

uint64_t sub_1AC7163F8()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = OUTLINED_FUNCTION_6_12();

    return MEMORY[0x1EEE6DFA0](v13, v14, 0);
  }
}

uint64_t sub_1AC71651C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);
  v2 = [v1 integerValue];

  OUTLINED_FUNCTION_82();

  return v3(v2);
}

uint64_t sub_1AC7165A4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC71A854();
}

uint64_t sub_1AC716634()
{
  OUTLINED_FUNCTION_72();
  v4 = v3;
  OUTLINED_FUNCTION_15_3();
  v6 = *(v5 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  v11 = *(v7 + 8);
  if (!v0)
  {
    v9 = v1;
    v10 = v4;
  }

  return v11(v9, v10);
}

uint64_t sub_1AC716744()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC71ABF8();
}

uint64_t sub_1AC7167E8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC71AF38();
}

uint64_t sub_1AC71688C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC71B15C();
}

uint64_t static PhoneticEmbedder.installedVersions(for:)()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_1AC79FAF8();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64) + 15;
  v1[11] = swift_task_alloc();
  v12 = sub_1AC79FB18();
  v1[12] = v12;
  v13 = *(v12 - 8);
  v1[13] = v13;
  v14 = *(v13 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1AC716AE0()
{
  v81 = v0;
  v1 = v0 + 2;
  v2 = static PhoneticEmbedder.installedLocales()();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[13];
    v5 = v0[8];
    v79 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v3, 0);
    v6 = v79;
    v7 = *(v4 + 16);
    v4 += 16;
    v8 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v9 = (v5 + 8);
    v74 = *(v4 + 56);
    v75 = (v4 - 8);
    v76 = (v5 + 8);
    v77 = v7;
    do
    {
      v78 = v3;
      v10 = v0[11];
      v11 = v0[10];
      v12 = v0[7];
      v77(v0[15], v8, v0[12]);
      sub_1AC79FB08();
      sub_1AC79FAC8();
      v13 = *v9;
      (*v9)(v11, v12);
      v14 = sub_1AC79F9C8();
      if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
      {
        sub_1AC71B9C8(v0[11], &qword_1EB56C070, &qword_1AC7A8770);
        v15 = 0;
        v16 = 0xE000000000000000;
      }

      else
      {
        v73 = v6;
        v17 = v0[15];
        v18 = v0[11];
        v19 = v0[9];
        v21 = v0[6];
        v20 = v0[7];
        v71 = sub_1AC79F988();
        v72 = v22;
        OUTLINED_FUNCTION_106(v14);
        v24 = *(v23 + 8);
        v25 = OUTLINED_FUNCTION_123();
        v26(v25);
        sub_1AC79FB08();
        sub_1AC79FAD8();
        v13(v19, v20);
        v27 = sub_1AC79FA48();
        if (__swift_getEnumTagSinglePayload(v21, 1, v27) == 1)
        {
          sub_1AC71B9C8(v0[6], &qword_1EB56C060, &unk_1AC7A8760);
          v16 = v72;
          v6 = v73;
          v15 = v71;
        }

        else
        {
          v28 = sub_1AC79F988();
          v30 = v29;
          OUTLINED_FUNCTION_106(v27);
          v32 = *(v31 + 8);
          v33 = OUTLINED_FUNCTION_123();
          v34(v33);
          v80[0] = v71;
          v80[1] = v72;
          MEMORY[0x1B26E8C40](45, 0xE100000000000000);
          MEMORY[0x1B26E8C40](v28, v30);

          v15 = v71;
          v16 = v72;
          v6 = v73;
        }
      }

      (*v75)(v0[15], v0[12]);
      v36 = *(v6 + 16);
      v35 = *(v6 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1AC6310CC(v35 > 1, v36 + 1, 1);
      }

      *(v6 + 16) = v36 + 1;
      v37 = v6 + 16 * v36;
      *(v37 + 32) = v15;
      *(v37 + 40) = v16;
      v8 += v74;
      v3 = v78 - 1;
      v9 = v76;
    }

    while (v78 != 1);

    v1 = v0 + 2;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v38 = v0[4];
  Locale.languageRegionIdentifier.getter();
  v0[2] = v39;
  v0[3] = v40;
  v41 = swift_task_alloc();
  *(v41 + 16) = v1;
  v42 = sub_1AC6F488C(sub_1AC637CD4, v41, v6);

  if (v42)
  {
    v43 = &unk_1F212FEB8;
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v45 = v0[13];
    v44 = v0[14];
    v46 = v0[12];
    v47 = v0[4];
    v48 = sub_1AC79FDE8();
    v49 = __swift_project_value_buffer(v48, qword_1ED9386C8);
    v50 = *(v45 + 16);
    v51 = OUTLINED_FUNCTION_123();
    v52(v51);
    v53 = sub_1AC79FDC8();
    v54 = sub_1AC7A05E8();
    v55 = os_log_type_enabled(v53, v54);
    v57 = v0[13];
    v56 = v0[14];
    v58 = v0[12];
    if (v55)
    {
      swift_slowAlloc();
      v80[0] = OUTLINED_FUNCTION_202();
      *v49 = 136315138;
      v59 = sub_1AC79F978();
      v61 = v60;
      (*(v57 + 8))(v56, v58);
      v62 = sub_1AC5CFE74(v59, v61, v80);

      *(v49 + 4) = v62;
      _os_log_impl(&dword_1AC5BC000, v53, v54, "Assets needed for PhoneticEmbedder in %s are not installed on this device.", v49, 0xCu);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_77_1();
    }

    else
    {

      (*(v57 + 8))(v56, v58);
    }

    v43 = MEMORY[0x1E69E7CC0];
  }

  v64 = v0[14];
  v63 = v0[15];
  v66 = v0[10];
  v65 = v0[11];
  v67 = v0[9];
  v68 = v0[6];

  OUTLINED_FUNCTION_82();

  return v69(v43);
}

uint64_t sub_1AC717030(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = sub_1AC7A0448();

  v3 = sub_1AC71486C(v2);

  return v3;
}

uint64_t sub_1AC7170EC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v91 = a2;
  v99 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  v4 = OUTLINED_FUNCTION_167(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v80 - v7;
  v95 = sub_1AC79FAF8();
  v8 = OUTLINED_FUNCTION_40(v95);
  v88 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  v15 = OUTLINED_FUNCTION_167(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v80 - v18;
  v19 = sub_1AC79FB18();
  v20 = OUTLINED_FUNCTION_40(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v97 = &v80 - v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v80 - v29;
  v31 = [objc_opt_self() installedLanguagesForTaskHint_];
  v32 = sub_1AC7A0448();

  v33 = sub_1AC71486C(v32);
  v80 = 0;

  v35 = 0;
  v100 = *(v33 + 16);
  v101 = v22 + 16;
  v96 = (v22 + 32);
  v102 = v22;
  v98 = (v22 + 8);
  v103 = MEMORY[0x1E69E7CC0];
  v94 = v33;
  while (v35 != v100)
  {
    if (v35 >= *(v33 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v36 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v37 = *(v102 + 72);
    v38 = (*(v102 + 16))(v30, v33 + v36 + v37 * v35++, v19);
    v39 = v99(v38);
    v40 = v39 + v36;
    v41 = *(v39 + 16) + 1;
    do
    {
      if (!--v41)
      {

        result = (*v98)(v30, v19);
        goto LABEL_13;
      }

      sub_1AC70FE1C(&qword_1EB56B460);
      v40 += v37;
    }

    while ((sub_1AC79FED8() & 1) == 0);

    v42 = *v96;
    (*v96)(v93, v30, v19);
    v43 = v103;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = *(v43 + 16);
      sub_1AC63110C();
      v43 = aBlock;
    }

    v46 = *(v43 + 16);
    if (v46 >= *(v43 + 24) >> 1)
    {
      sub_1AC63110C();
      v43 = aBlock;
    }

    *(v43 + 16) = v46 + 1;
    v103 = v43;
    result = (v42)(v43 + v36 + v46 * v37, v93, v19);
LABEL_13:
    v33 = v94;
  }

  v93 = [objc_allocWithZone(SFLocalSpeechRecognitionClient) init];
  v47 = 0;
  result = v103;
  v94 = *(v103 + 16);
  v48 = v88 + 1;
  v82 = MEMORY[0x1E69E7CC0];
  v87 = v106;
  v49 = v95;
  v50 = v97;
  ++v88;
  while (v94 != v47)
  {
    if (v47 >= *(result + 16))
    {
      goto LABEL_31;
    }

    v86 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v51 = *(v102 + 72);
    v100 = v47;
    v85 = v51;
    (*(v102 + 16))(v50, result + v86 + v51 * v47, v19);
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    v99 = (v52 + 16);
    *(v52 + 24) = 0;
    v53 = v90;
    sub_1AC79FB08();
    v54 = v89;
    sub_1AC79FAC8();
    v55 = v54;
    v56 = *v48;
    (*v48)(v53, v49);
    v57 = sub_1AC79F9C8();
    if (__swift_getEnumTagSinglePayload(v55, 1, v57) == 1)
    {
      sub_1AC71B9C8(v55, &qword_1EB56C070, &qword_1AC7A8770);
    }

    else
    {
      v58 = v49;
      v59 = sub_1AC79F988();
      v61 = v60;
      OUTLINED_FUNCTION_106(v57);
      (*(v62 + 8))(v55, v57);
      v63 = v83;
      sub_1AC79FB08();
      v64 = v84;
      sub_1AC79FAD8();
      v56(v63, v58);
      v65 = sub_1AC79FA48();
      if (__swift_getEnumTagSinglePayload(v64, 1, v65) == 1)
      {
        sub_1AC71B9C8(v64, &qword_1EB56C060, &unk_1AC7A8760);
      }

      else
      {
        v66 = v64;
        v67 = sub_1AC79F988();
        v69 = v68;
        OUTLINED_FUNCTION_106(v65);
        (*(v70 + 8))(v66, v65);
        aBlock = v59;
        v105 = v61;
        MEMORY[0x1B26E8C40](45, 0xE100000000000000);
        MEMORY[0x1B26E8C40](v67, v69);
      }
    }

    v71 = v100;
    v72 = sub_1AC79FF58();

    v106[2] = v91;
    v106[3] = v52;
    aBlock = MEMORY[0x1E69E9820];
    v105 = 1107296256;
    v106[0] = sub_1AC714F68;
    v106[1] = v92;
    v73 = _Block_copy(&aBlock);

    [v93 synchronousEuclidConfigPathForLanguageStr:v72 completion:v73];
    _Block_release(v73);

    swift_beginAccess();
    v74 = *(v52 + 24);

    if (v74)
    {
      v75 = *v96;
      (*v96)(v81, v97, v19);
      v76 = v82;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v76;
      v49 = v95;
      v48 = v88;
      if ((v77 & 1) == 0)
      {
        v78 = *(v76 + 16);
        sub_1AC63110C();
        v76 = v107;
      }

      v79 = *(v76 + 16);
      if (v79 >= *(v76 + 24) >> 1)
      {
        sub_1AC63110C();
        v76 = v107;
      }

      v47 = v71 + 1;
      *(v76 + 16) = v79 + 1;
      v82 = v76;
      v75((v76 + v86 + v79 * v85), v81, v19);
      v50 = v97;
      result = v103;
    }

    else
    {
      v50 = v97;
      (*v98)(v97, v19);
      v47 = v71 + 1;
      v49 = v95;
      result = v103;
      v48 = v88;
    }
  }

  return v82;
}

uint64_t sub_1AC717A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
}

uint64_t PhoneticEmbedder.distanceBetween(source:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC717AE4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[6] + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1AC717B84;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  OUTLINED_FUNCTION_111_3(v0[2]);

  return sub_1AC7198A4();
}

uint64_t sub_1AC717B84()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v11();
  }

  else
  {
    *(v5 + 64) = v3;
    v13 = OUTLINED_FUNCTION_6_12();

    return MEMORY[0x1EEE6DFA0](v13, v14, 0);
  }
}

uint64_t sub_1AC717CA8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 64);
  sub_1AC7A03C8();
  v3 = v2;

  OUTLINED_FUNCTION_44();
  v5.n128_u64[0] = v3;

  return v4(v5);
}

uint64_t PhoneticEmbedder.nearest(_:neighborsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC717D2C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  sub_1AC715970();
  v2 = *(v0[5] + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1AC717E18;
  v4 = v0[4];
  v5 = v0[2];
  v6 = OUTLINED_FUNCTION_111_3(v0[3]);

  return sub_1AC7193BC(v6, v7, v8);
}

uint64_t sub_1AC717E18()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC717F34()
{
  v1 = sub_1AC61C24C(*(v0 + 56));
  if (v1)
  {
    v2 = v1;
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1AC7A0A88();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = *(v0 + 56);
    v6 = v5 & 0xC000000000000001;
    v20 = v5 + 32;
    do
    {
      if (v6)
      {
        v7 = MEMORY[0x1B26E95B0](v4, *(v0 + 56));
      }

      else
      {
        v7 = *(v20 + 8 * v4);
      }

      v8 = v7;
      ++v4;
      v9 = [v7 name];
      v10 = sub_1AC79FF68();
      v12 = v11;

      v13 = [v8 distance];
      sub_1AC7A03C8();
      v15 = v14;

      type metadata accessor for PhoneticNeighbor();
      v16 = swift_allocObject();
      v16[2] = v10;
      v16[3] = v12;
      v16[4] = v15;
      sub_1AC7A0A68();
      v17 = *(v21 + 16);
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
    }

    while (v2 != v4);
  }

  v18 = *(v0 + 56);

  OUTLINED_FUNCTION_82();

  return v19();
}

uint64_t PhoneticNeighbor.__allocating_init(name:distance:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t PhoneticEmbedder.nearest(_:neighborsOf:)()
{
  sub_1AC715970();
  if (!v0)
  {
    OUTLINED_FUNCTION_235();
    v1 = swift_allocObject();
    *(v1 + 16) = MEMORY[0x1E69E7CC0];
    v3 = sub_1AC715560();
    v4 = sub_1AC79FF58();
    sub_1AC71BA64();
    v5 = sub_1AC7A0738();
    OUTLINED_FUNCTION_14_14();
    v8[1] = 1107296256;
    v8[2] = sub_1AC7183FC;
    v8[3] = &block_descriptor_28_1;
    v6 = _Block_copy(v8);

    [v3 synchronousEuclidNearestNeighborsForSource:v4 numberOfNeighbors:v5 completion:v6];
    _Block_release(v6);

    OUTLINED_FUNCTION_40_10();
    v7 = *(v1 + 16);
  }

  return OUTLINED_FUNCTION_39_9();
}

uint64_t sub_1AC7182A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      v4 = *(result + 16);
      if (v4)
      {
        v6 = (result + 40);
        do
        {
          if (*(a2 + 16))
          {
            v8 = *(v6 - 1);
            v7 = *v6;

            v9 = sub_1AC6E0808();
            if (v10)
            {
              v11 = *(*(a2 + 56) + 8 * v9);
              sub_1AC7A03C8();
              v13 = v12;
              type metadata accessor for PhoneticNeighbor();
              v14 = swift_allocObject();
              v14[2] = v8;
              v14[3] = v7;
              v14[4] = v13;
              swift_beginAccess();

              MEMORY[0x1B26E8CF0](v15);
              if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1AC7A0178();
              }

              sub_1AC7A0198();
              swift_endAccess();
            }

            else
            {
            }
          }

          v6 += 2;
          --v4;
        }

        while (v4);
      }
    }
  }

  return result;
}

uint64_t sub_1AC7183FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1AC7A0158();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a3)
  {
LABEL_3:
    sub_1AC71BA64();
    v3 = sub_1AC79FE28();
  }

LABEL_4:

  v5(v6, v3);
}

uint64_t PhoneticEmbedder.embeddings(of:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC7184CC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[3] + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AC718568;
  v3 = OUTLINED_FUNCTION_111_3(v0[2]);

  return sub_1AC719CB0(v3);
}

uint64_t sub_1AC718568()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

void sub_1AC718684()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v18 = *(v0 + 40);

    v4 = MEMORY[0x1E69E7CC0];
LABEL_24:
    OUTLINED_FUNCTION_82();

    v19(v4);
    return;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1AC6317C0(0, v2, 0);
  v3 = 0;
  v4 = v24;
  v22 = v1;
  v23 = v1 + 32;
  v21 = v2;
  while (v3 < *(v1 + 16))
  {
    v5 = *(v23 + 8 * v3);
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v14 = *(v23 + 8 * v3);
      }

      v6 = sub_1AC7A08E8();
      if (!v6)
      {
LABEL_18:
        v8 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    v25 = MEMORY[0x1E69E7CC0];

    sub_1AC6312E0();
    if (v6 < 0)
    {
      goto LABEL_28;
    }

    v7 = 0;
    v8 = v25;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B26E95B0](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      sub_1AC7A03C8();
      v12 = v11;

      v13 = *(v25 + 16);
      if (v13 >= *(v25 + 24) >> 1)
      {
        sub_1AC6312E0();
      }

      ++v7;
      *(v25 + 16) = v13 + 1;
      *(v25 + 8 * v13 + 32) = v12;
    }

    while (v6 != v7);

    v2 = v21;
    v1 = v22;
LABEL_19:
    v16 = *(v24 + 16);
    v15 = *(v24 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1AC6317C0(v15 > 1, v16 + 1, 1);
    }

    ++v3;
    *(v24 + 16) = v16 + 1;
    *(v24 + 8 * v16 + 32) = v8;
    if (v3 == v2)
    {
      v17 = *(v20 + 40);

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t PhoneticEmbedder.embeddings(of:)()
{
  OUTLINED_FUNCTION_235();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = sub_1AC715560();
  if (v0)
  {
  }

  else
  {
    v3 = v2;
    v4 = sub_1AC7A0148();
    OUTLINED_FUNCTION_14_14();
    v8[1] = 1107296256;
    v8[2] = sub_1AC718C24;
    v8[3] = &block_descriptor_36;
    v5 = _Block_copy(v8);

    [v3 synchronousComputeEuclidEmbeddingsForSources:v4 completion:v5];
    _Block_release(v5);

    OUTLINED_FUNCTION_40_10();
    v6 = *(v1 + 16);
  }

  return OUTLINED_FUNCTION_39_9();
}

void sub_1AC718A0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = *(a1 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v24 = MEMORY[0x1E69E7CC0];
      sub_1AC6317C0(0, v4, 0);
      v6 = 0;
      v7 = v24;
      v22 = v4;
      v23 = a1 + 32;
      while (1)
      {
        v8 = *(v23 + 8 * v6);
        if (v8 >> 62)
        {
          if (v8 < 0)
          {
            v17 = *(v23 + 8 * v6);
          }

          v9 = sub_1AC7A08E8();
          if (!v9)
          {
LABEL_18:
            v11 = v5;
            goto LABEL_19;
          }
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v9)
          {
            goto LABEL_18;
          }
        }

        sub_1AC6312E0();
        if (v9 < 0)
        {
          __break(1u);
          return;
        }

        v10 = 0;
        v11 = v5;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1B26E95B0](v10, v8);
          }

          else
          {
            v12 = *(v8 + 8 * v10 + 32);
          }

          v13 = v12;
          sub_1AC7A03C8();
          v15 = v14;

          v16 = *(v11 + 16);
          if (v16 >= *(v11 + 24) >> 1)
          {
            sub_1AC6312E0();
          }

          ++v10;
          *(v11 + 16) = v16 + 1;
          *(v11 + 8 * v16 + 32) = v15;
        }

        while (v9 != v10);

        v5 = MEMORY[0x1E69E7CC0];
        v4 = v22;
LABEL_19:
        v19 = *(v24 + 16);
        v18 = *(v24 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1AC6317C0(v18 > 1, v19 + 1, 1);
        }

        ++v6;
        *(v24 + 16) = v19 + 1;
        *(v24 + 8 * v19 + 32) = v11;
        if (v6 == v4)
        {
          v2 = a2;
          goto LABEL_24;
        }
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_24:
    swift_beginAccess();
    v20 = *(v2 + 16);
    *(v2 + 16) = v7;
  }
}

uint64_t sub_1AC718C24(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
    v2 = sub_1AC7A0158();
  }

  v4(v2);
}

uint64_t PhoneticEmbedder.__allocating_init(locale:clientID:inputFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4;
  v10 = sub_1AC79FB18();
  v11 = OUTLINED_FUNCTION_40(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  LOBYTE(a4) = *a4;
  (*(v13 + 16))(v17 - v16, a1, v10);
  v24 = a4;
  v23 = 0;
  v19 = *(v5 + 48);
  v20 = *(v5 + 52);
  v21 = swift_allocObject();
  PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)(v18, a2, a3, &v24, &v23);
  (*(v13 + 8))(a1, v10);
  return v21;
}

void *static PhoneticEmbedder.allVersions(locale:)(uint64_t a1)
{
  v2 = static PhoneticEmbedder.supportedLocales()();
  v4[2] = a1;
  LOBYTE(a1) = sub_1AC6F47B8(sub_1AC637BAC, v4, v2);

  if (a1)
  {
    return &unk_1F212FEE8;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

{
  v2 = sub_1AC79FB18();
  v3 = OUTLINED_FUNCTION_40(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = static PhoneticEmbedder.supportedLocales()();
  v22 = a1;
  v12 = sub_1AC6F47B8(sub_1AC71BEEC, v21, v11);

  if (v12)
  {
    return &unk_1F212FF10;
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v14 = sub_1AC79FDE8();
  __swift_project_value_buffer(v14, qword_1ED9386C8);
  (*(v5 + 16))(v10, a1, v2);
  v15 = sub_1AC79FDC8();
  v16 = sub_1AC7A05E8();
  if (os_log_type_enabled(v15, v16))
  {
    swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_202();
    *v11 = 136315138;
    v17 = sub_1AC79F978();
    v19 = v18;
    (*(v5 + 8))(v10, v2);
    v20 = sub_1AC5CFE74(v17, v19, &v23);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_1AC5BC000, v15, v16, "%s is not yet supported by PhoneticEmbedder", v11, 0xCu);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_77_1();
  }

  else
  {

    (*(v5 + 8))(v10, v2);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t PhoneticEmbedder.embeddings(of:completion:)(uint64_t a1, void (*a2)(void))
{
  PhoneticEmbedder.embeddings(of:)();
  if (v2)
  {
    v4 = v2;
    (a2)(0, v2);

    return swift_willThrow();
  }

  else
  {
    a2();
  }
}

uint64_t PhoneticEmbedder.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech16PhoneticEmbedder_locale;
  v2 = sub_1AC79FB18();
  OUTLINED_FUNCTION_106(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_clientID + 8);

  v5 = *(v0 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor);

  return v0;
}

uint64_t PhoneticEmbedder.__deallocating_deinit()
{
  PhoneticEmbedder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t PhoneticNeighbor.init(name:distance:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t PhoneticNeighbor.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PhoneticNeighbor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PhoneticNeighbor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1AC7192F0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v9 = *a4;
  v10 = *a5;
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor__euclidService) = 0;
  v11 = OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_locale;
  v12 = sub_1AC79FB18();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  v13 = (v5 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_clientID);
  *v13 = a2;
  v13[1] = a3;
  *(v5 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_inputFormat) = v9;
  *(v5 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_loadingOption) = v10;
  return v5;
}

uint64_t sub_1AC7193BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_1AC719450;

  return sub_1AC71B380();
}

uint64_t sub_1AC719450()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 48);
  *v4 = *v1;
  *(v3 + 56) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v8();
  }

  else
  {
    v10 = *(v3 + 40);
    v11 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC719578()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC7195DC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[7] + 16);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1AC719674;
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_111_3(v0[2]);

  return sub_1AC756034();
}

uint64_t sub_1AC719674()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC71977C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[7];
  v2 = v0[3];

  OUTLINED_FUNCTION_82();
  v4 = v0[10];

  return v3(v4);
}

uint64_t sub_1AC7197E8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC719848()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC7198A4()
{
  OUTLINED_FUNCTION_85();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_85_0(v6);

  return sub_1AC71B380();
}

uint64_t sub_1AC719934()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  *v4 = *v1;
  *(v3 + 64) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v8();
  }

  else
  {
    v10 = *(v3 + 48);
    v11 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC719A5C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[3];

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1AC719B20;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v8 = OUTLINED_FUNCTION_111_3(v0[8]);

  return (sub_1AC6E7DA0)(v8);
}

uint64_t sub_1AC719B20()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v4[10] = v0;

  if (v0)
  {
    v10 = v4[6];
    v11 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v4[8];

    v15 = *(v8 + 8);

    return v15(v1);
  }
}

uint64_t sub_1AC719C54()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC719CB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1AC719D40;

  return sub_1AC71B380();
}

uint64_t sub_1AC719D40()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  *v4 = *v1;
  *(v3 + 40) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v8();
  }

  else
  {
    v10 = *(v3 + 24);
    v11 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC719E68()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC719ECC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[5] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1AC719F60;
  OUTLINED_FUNCTION_111_3(v0[2]);

  return sub_1AC757004();
}

uint64_t sub_1AC719F60()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC71A068()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[5];
  v2 = v0[2];

  OUTLINED_FUNCTION_82();
  v4 = v0[8];

  return v3(v4);
}

uint64_t sub_1AC71A0D4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC71A130()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71A1C0;

  return sub_1AC71B380();
}

uint64_t sub_1AC71A1C0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC71A2D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC757594();
}

uint64_t sub_1AC71A354()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v4[6] = v0;

  if (v0)
  {
    v10 = v4[2];
    v11 = OUTLINED_FUNCTION_16_14();
  }

  else
  {
    v4[7] = v1;
    v11 = OUTLINED_FUNCTION_16_14();
    v12 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_1AC71A464()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71A4F4;

  return sub_1AC71B380();
}

uint64_t sub_1AC71A4F4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC71A604()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7578DC();
}

uint64_t sub_1AC71A688()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v4[6] = v0;

  if (v0)
  {
    v10 = v4[2];
    v11 = OUTLINED_FUNCTION_16_14();
  }

  else
  {
    v4[7] = v1;
    v11 = OUTLINED_FUNCTION_16_14();
    v12 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_1AC71A798()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_82();
  v3 = *(v0 + 56);

  return v2(v3);
}

uint64_t sub_1AC71A7F8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC71A854()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71A8E4;

  return sub_1AC71B380();
}

uint64_t sub_1AC71A8E4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC71A9F4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC757C24();
}

uint64_t sub_1AC71AA78()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_50();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  *v8 = v7;
  v10 = *(v9 + 40);
  v11 = *v1;
  OUTLINED_FUNCTION_18();
  *v12 = v11;
  v7[6] = v0;

  if (v0)
  {
    v13 = v7[2];
    v14 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v7[7] = v3;
    v7[8] = v5;
    v14 = OUTLINED_FUNCTION_6_12();
  }

  return MEMORY[0x1EEE6DFA0](v14, v15, 0);
}

uint64_t sub_1AC71AB94()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];

  v2 = v0[1];
  v4 = v0[7];
  v3 = v0[8];

  return v2(v3, v4);
}

uint64_t sub_1AC71ABF8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71AC88;

  return sub_1AC71B380();
}

uint64_t sub_1AC71AC88()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC71AD98()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC757F5C();
}

uint64_t sub_1AC71AE1C()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_50();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  *v8 = v7;
  v10 = *(v9 + 40);
  v11 = *v1;
  OUTLINED_FUNCTION_18();
  *v12 = v11;
  v7[6] = v0;

  if (v0)
  {
    v13 = v7[2];
    v14 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v7[7] = v3;
    v7[8] = v5;
    v14 = OUTLINED_FUNCTION_6_12();
  }

  return MEMORY[0x1EEE6DFA0](v14, v15, 0);
}

uint64_t sub_1AC71AF38()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71AFC8;

  return sub_1AC71B380();
}

uint64_t sub_1AC71AFC8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC71B0D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC758294();
}

uint64_t sub_1AC71B15C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71B1EC;

  return sub_1AC71B380();
}

uint64_t sub_1AC71B1EC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC71B2FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7584AC();
}

uint64_t sub_1AC71B3A0()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor__euclidService;
  v0[3] = OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor__euclidService;
  if (*(v1 + v2))
  {
    OUTLINED_FUNCTION_82();
    v11 = v3;

    return v11(v4);
  }

  else
  {
    if (qword_1ED938050 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v6 = *(v1 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_clientID);
    v7 = *(v1 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_clientID + 8);
    v8 = *(v1 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_inputFormat);
    v9 = *(v1 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_loadingOption);
    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = sub_1AC71B528;

    return sub_1AC63AAB4();
  }
}

uint64_t sub_1AC71B528()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  *v4 = *v1;
  *(v3 + 40) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v8();
  }

  else
  {
    v10 = *(v3 + 16);
    v11 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC71B650()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D9F8, &qword_1AC7B1510);
  OUTLINED_FUNCTION_235();
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v1;
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC71B704()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 48) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC7586C4();
}

uint64_t sub_1AC71B790()
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
    v9 = *(v3 + 16);
    v10 = sub_1AC621648;
  }

  else
  {
    v10 = sub_1AC71B894;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC71B894()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC71B8F4()
{
  v1 = OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_locale;
  v2 = sub_1AC79FB18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_clientID + 8);

  v4 = *(v0 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor__euclidService);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC71B980()
{
  v0 = sub_1AC71B8F4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC71B9C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_106(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1AC71BA64()
{
  result = qword_1EB56AAA0;
  if (!qword_1EB56AAA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56AAA0);
  }

  return result;
}

unint64_t sub_1AC71BAEC()
{
  result = qword_1EB56D9D8;
  if (!qword_1EB56D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D9D8);
  }

  return result;
}

unint64_t sub_1AC71BB74()
{
  result = qword_1EB56D9F0;
  if (!qword_1EB56D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D9F0);
  }

  return result;
}

uint64_t sub_1AC71BBF0()
{
  result = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1AC71BCFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC71BE0C()
{
  result = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_10()
{

  return swift_beginAccess();
}

void SFAcousticFeature.acousticFeatureValuePerFrame.getter()
{
  v1 = [v0 acousticFeatureValuePerFrame];
  sub_1AC71BA64();
  v2 = sub_1AC7A0158();

  v3 = sub_1AC61C24C(v2);
  if (!v3)
  {
LABEL_10:

    return;
  }

  v4 = v3;
  v11 = MEMORY[0x1E69E7CC0];
  sub_1AC6312E0();
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B26E95B0](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      sub_1AC7A03C8();
      v9 = v8;

      v10 = *(v11 + 16);
      if (v10 >= *(v11 + 24) >> 1)
      {
        sub_1AC6312E0();
      }

      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v9;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1AC71C0CC()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC71C170()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (!v0)
    {
      nullsub_1(v7, v8);
      v16 = v1[6];
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7B68);
      v17 = swift_task_alloc();
      v1[8] = v17;
      *v17 = v1;
      OUTLINED_FUNCTION_6_0(v17);
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    v9 = v1[6];

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC71C2D8()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v7 = *(v4 + 64);
  *v6 = *v1;
  *(v5 + 72) = v0;

  v8 = *(v4 + 56);

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC71C438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC71C0CC();
}

uint64_t sub_1AC71C4D0(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_65();
  v10 = v5 == 0xD000000000000022 && v6 == a2;
  if (v10 || (v11 = v9, v12 = v8, v13 = v7, v14 = v5, (OUTLINED_FUNCTION_53() & 1) != 0))
  {
    [a3 hello];
    return 1;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000004FLL;
  v17 = v14 == 0xD00000000000004FLL && v15 == a2;
  if (v17 || (result = OUTLINED_FUNCTION_53(), (result & 1) != 0))
  {
    v18 = *(v13 + 16);
    if (v18)
    {
      result = sub_1AC5D2398(v13 + 32, &v36);
      if (!v37)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      sub_1AC5C3968(&v36, &v38);
      sub_1AC71E3DC();
      result = swift_dynamicCast();
      if (v18 != 1)
      {
        v19 = v35;
        result = sub_1AC5D2398(v13 + 64, &v32);
        if (v33)
        {
          sub_1AC5C3968(&v32, &v34);
          swift_dynamicCast();
          OUTLINED_FUNCTION_99();
          v20 = swift_allocObject();
          *(v20 + 16) = v12;
          *(v20 + 24) = v11;
          OUTLINED_FUNCTION_0_17(v20);
          v40 = 1107296256;
          v41 = sub_1AC5C0904;
          v42 = &block_descriptor_30;
          v21 = _Block_copy(aBlock);
          sub_1AC5D9374(v12);

          [a3 runLanguageDetectionWithResultStream:v19 samplingRate:v31 reply:v21];

          v22 = v21;
LABEL_25:
          _Block_release(v22);
          return 1;
        }

        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD000000000000026;
  v24 = v14 == 0xD000000000000026 && v23 == a2;
  if (v24 || (result = OUTLINED_FUNCTION_53(), (result & 1) != 0))
  {
    if (!v12)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_99();
    v25 = swift_allocObject();
    *(v25 + 16) = v12;
    *(v25 + 24) = v11;
    OUTLINED_FUNCTION_0_17(v25);
    v40 = 1107296256;
    v41 = sub_1AC5EF570;
    v42 = &block_descriptor_24;
    v26 = _Block_copy(aBlock);

    [a3 modelInfoWithReply_];
LABEL_24:
    v22 = v26;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000002DLL;
  v28 = v14 == 0xD00000000000002DLL && v27 == a2;
  if (v28 || (v29 = OUTLINED_FUNCTION_53(), result = 0, (v29 & 1) != 0))
  {
    if (!v12)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_99();
    v30 = swift_allocObject();
    *(v30 + 16) = v12;
    *(v30 + 24) = v11;
    OUTLINED_FUNCTION_0_17(v30);
    v40 = 1107296256;
    v41 = sub_1AC71E360;
    v42 = &block_descriptor_14;
    v26 = _Block_copy(aBlock);

    [a3 supportedLocalesWithReply_];
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1AC71C840()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC71C8E4()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    v5 = OUTLINED_FUNCTION_13_0(v4);
    nullsub_1(v5, v6);
    if (v0)
    {

      v7 = v1[6];

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    v14 = v1[6];
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7A78);
    v15 = swift_task_alloc();
    v1[8] = v15;
    *v15 = v1;
    OUTLINED_FUNCTION_6_0(v15);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC71CA40()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  v4 = *(v2 + 56);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC71CB68()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC71CC0C()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (!v0)
    {
      nullsub_1(v7, v8);
      v16 = v1[6];
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A68);
      v17 = swift_task_alloc();
      v1[8] = v17;
      *v17 = v1;
      OUTLINED_FUNCTION_6_0(v17);
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    v9 = v1[6];

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  v12 = swift_task_alloc();
  v1[11] = v12;
  *v12 = v1;
  v12[1] = sub_1AC71CF44;
  v13 = v1[3];
  OUTLINED_FUNCTION_155();

  return sub_1AC71D04C(v14);
}

uint64_t sub_1AC71CDA8()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v7 = *(v4 + 64);
  *v6 = *v1;
  *(v5 + 72) = v0;

  v8 = *(v4 + 56);

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC71CED8()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_61();
  v2(v1);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);

  v5 = OUTLINED_FUNCTION_12_1();

  return v6(v5);
}

uint64_t sub_1AC71CF44()
{
  OUTLINED_FUNCTION_72();
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v1 + 48);

  v6 = OUTLINED_FUNCTION_19_12();

  return v7(v6);
}

uint64_t sub_1AC71D0E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC71C840();
}

uint64_t sub_1AC71D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E63A4;

  return sub_1AC71CB68();
}

uint64_t sub_1AC71D214()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F8, &unk_1AC7A6D20);
  v1[11] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9D8, &qword_1AC7A7A58);
  v1[14] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = OUTLINED_FUNCTION_126();
  v16 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1AC71D36C()
{
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[16];
    v3 = v0[5];
    v4 = *(v0[7] + 136);
    v5 = sub_1AC5C6544();
    v0[3] = v3;
    v0[2] = v5;
    type metadata accessor for EARLanguageDetectorResultStream();

    sub_1AC79FC98();
    sub_1AC5DEEE0(v2);
    v9 = v0[13];
    v0[4] = v0[6];
    sub_1AC79FC98();
    v10 = sub_1AC5DDF60(v9);
    v12 = nullsub_1(v10, v11);
    nullsub_1(v12, v13);
    v14 = v0[10];
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7A28);
    v19 = v15;
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v16[1] = sub_1AC71D670;
    v17 = v0[10];
    v18 = v0[7];

    return v19(v18, v17, v0 + 2);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1AC71D850;
    v7 = v0[7];

    return sub_1AC71DCA4(v6);
  }
}

uint64_t sub_1AC71D670()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  v6 = v4[17];
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v5[18] = v0;

  if (!v0)
  {
    v5[19] = v3;
  }

  v9 = v5[2];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC71D790()
{
  OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_15_12();
  v6(v5);
  (*(v4 + 8))(v0, v2);
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_89();
  v9(v8);
  v10 = v1[19];
  v11 = v1[16];
  v12 = v1[13];
  v13 = v1[10];

  v14 = OUTLINED_FUNCTION_12_1();

  return v15(v14);
}

uint64_t sub_1AC71D850()
{
  OUTLINED_FUNCTION_72();
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[10];

  v8 = OUTLINED_FUNCTION_19_12();

  return v9(v8);
}

uint64_t sub_1AC71D990()
{
  OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_15_12();
  v6(v5);
  (*(v4 + 8))(v0, v2);
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_89();
  v9(v8);
  v10 = v1[18];
  v11 = v1[16];
  v12 = v1[13];
  v13 = v1[10];

  OUTLINED_FUNCTION_44();

  return v14();
}

uint64_t sub_1AC71DA50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v10 = *v8;
  v11 = a2[1];
  v3[6] = v11;
  v12 = *(v11 - 8);
  v3[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[8] = v14;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v15 = *v14;
  v16 = swift_task_alloc();
  v3[9] = v16;
  *v16 = v3;
  v16[1] = sub_1AC6F1EC0;

  return sub_1AC71D214();
}

uint64_t sub_1AC71DD0C(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFE6C(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARLanguageDetector();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC71DDB8()
{
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetector();
  OUTLINED_FUNCTION_7_18();
  sub_1AC71E428(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC71DE34()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARLanguageDetector();
    OUTLINED_FUNCTION_7_18();
    sub_1AC71E428(v1, v2, v3);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC71DEF8()
{
  v1 = *v0;
  type metadata accessor for EARLanguageDetector();
  sub_1AC71E428(&qword_1EB56B9C8, v2, type metadata accessor for EARLanguageDetector);
  return sub_1AC79FC28();
}

uint64_t sub_1AC71DF70()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetector();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC71DFC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARLanguageDetector();
  v6 = sub_1AC71E428(&qword_1EB56B9C8, v5, type metadata accessor for EARLanguageDetector);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC71E050()
{
  v1 = *v0;
  type metadata accessor for EARLanguageDetector();
  sub_1AC71E428(&qword_1EB56B9C8, v2, type metadata accessor for EARLanguageDetector);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC71E0E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EARLanguageDetector();
  sub_1AC71E428(&qword_1EB56B9C8, v3, type metadata accessor for EARLanguageDetector);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_1AC71E2A4()
{
  result = xpcInterface_EARLanguageDetector();
  qword_1EB56E890 = result;
  return result;
}

uint64_t sub_1AC71E2CC(uint64_t a1, void (*a2)(_OWORD *))
{
  if (a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    *&v5 = a1;
    sub_1AC5C3968(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  a2(v7);
  return sub_1AC641B24(v7);
}

uint64_t sub_1AC71E360(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1AC7A0158();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

unint64_t sub_1AC71E3DC()
{
  result = qword_1ED9372A0;
  if (!qword_1ED9372A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9372A0);
  }

  return result;
}

uint64_t sub_1AC71E428(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1AC71E47C(unint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v24 = a2;
  v6 = type metadata accessor for CommandRecognizer.Argument(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AC7A08E8())
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1AC6317E0();
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v26;
    v22 = i;
    v23 = a1 & 0xC000000000000001;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23)
      {
        v15 = MEMORY[0x1B26E95B0](v12, a1);
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * v12 + 32);
      }

      v3 = v15;
      v16 = a1;
      v25 = v15;
      sub_1AC722BC4(&v25, v24, v10);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v26 = v13;
      v17 = *(v13 + 16);
      v3 = (v17 + 1);
      if (v17 >= *(v13 + 24) >> 1)
      {
        sub_1AC6317E0();
        v13 = v26;
      }

      *(v13 + 16) = v3;
      v18 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v19 = *(v7 + 72);
      sub_1AC726464();
      ++v12;
      a1 = v16;
      if (v14 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_1AC71E6B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  if (!a1)
  {
    goto LABEL_5;
  }

  v9 = v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked));
  v10 = *(v9 + 16);
  os_unfair_lock_unlock(v9);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v11 = sub_1AC79FDE8();
  __swift_project_value_buffer(v11, qword_1ED9386C8);
  if (v10)
  {
    v16 = sub_1AC79FDC8();
    v17 = sub_1AC7A05F8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      OUTLINED_FUNCTION_65();
      *(v18 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, v20, &v22);
      _os_log_impl(&dword_1AC5BC000, v16, v17, "Failed precondition: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked));
    v13 = *(v12 + 8);
    *(v12 + 8) = a1;

    *(v12 + 16) = 1;
    os_unfair_lock_unlock(v12);
    v14 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = v1;

    sub_1AC659B08();
  }
}

void sub_1AC71E9B8()
{
  OUTLINED_FUNCTION_104();
  v67 = v0;
  v68 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B0, &qword_1AC7AADF0);
  OUTLINED_FUNCTION_80(v64);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v55 - v16;
  v17 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v61 = *(v17 - 8);
  v18 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_6();
  v60 = v20 - v19;
  v65 = v5;
  v66 = v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v21 = OUTLINED_FUNCTION_80(v59);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v58 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v55 - v26;
  v69 = v7;
  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5C8, &qword_1AC7B1DC0);
    OUTLINED_FUNCTION_35_7();
    v27 = sub_1AC7A0BC8();
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC8];
  }

  v29 = *(v69 + 64);
  v28 = v69 + 64;
  v30 = *(v69 + 32);
  OUTLINED_FUNCTION_35_11();
  v33 = v32 & v31;
  v35 = (v34 + 63) >> 6;
  v55 = v27 + 64;

  v36 = 0;
  for (i = v27; v33; ++*(v49 + 16))
  {
    v37 = v36;
LABEL_10:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v39 = v38 | (v37 << 6);
    v40 = v69;
    v41 = *(v69 + 48);
    v70 = *(v61 + 72);
    OUTLINED_FUNCTION_2_21();
    v42 = v57;
    sub_1AC7261C4();
    v43 = v59;
    *&v42[*(v59 + 48)] = *(*(v40 + 56) + 8 * v39);
    v44 = v58;
    sub_1AC637E08();
    v45 = *(v43 + 48);
    v46 = v63;
    v47 = *(v64 + 48);
    sub_1AC726464();
    v71 = *&v44[v45];

    __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D4F0, &unk_1AC7AF180);
    swift_dynamicCast();
    sub_1AC726464();
    v48 = *&v46[v47];
    sub_1AC726464();
    v49 = i;
    v50 = *(i + 40);
    sub_1AC7A0E78();
    sub_1AC6F7B7C(&v71);
    sub_1AC7A0EC8();
    v51 = -1 << *(v49 + 32);
    v52 = v55;
    v53 = sub_1AC7A0888();
    *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    v54 = *(v49 + 48);
    sub_1AC726464();
    *(*(v49 + 56) + 8 * v53) = v48;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      OUTLINED_FUNCTION_105();
      return;
    }

    v33 = *(v28 + 8 * v37);
    ++v36;
    if (v33)
    {
      v36 = v37;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1AC71EDEC(uint64_t a1)
{
  OUTLINED_FUNCTION_185_0(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAB0, &unk_1AC7B1D48);
    OUTLINED_FUNCTION_35_7();
    v3 = sub_1AC7A0BC8();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_35_11();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = v3 + 64;

  v13 = 0;
  if (!v8)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v8)));
    v16 = (*(v1 + 48) + v15);
    v17 = v16[1];
    v18 = (*(v1 + 56) + v15);
    v20 = *v18;
    v19 = v18[1];
    *&v39[0] = *v16;
    *(&v39[0] + 1) = v17;

    swift_dynamicCast();
    swift_dynamicCast();
    v35 = v31;
    v36 = v32;
    v37 = v33;
    sub_1AC5C3968(&v34, v38);
    v31 = v35;
    v32 = v36;
    v33 = v37;
    sub_1AC5C3968(v38, v39);
    v21 = *(v3 + 40);
    result = sub_1AC7A0948();
    v22 = -1 << *(v3 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v11 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
    v8 &= v8 - 1;
    *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v3 + 48) + 40 * v25;
    *v30 = v31;
    *(v30 + 16) = v32;
    *(v30 + 32) = v33;
    result = sub_1AC5C3968(v39, (*(v3 + 56) + 32 * v25));
    ++*(v3 + 16);
  }

  while (v8);
LABEL_5:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v3;
    }

    v8 = *(v1 + 64 + 8 * v14);
    ++v13;
    if (v8)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1AC71F090(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1AC7A08E8())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CC8];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAB0, &unk_1AC7B1D48);
  v3 = sub_1AC7A0BC8();
  if (v2)
  {
LABEL_4:
    v4 = sub_1AC7A0B48();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(a1 + 32);
  v6 = ~v9;
  v5 = a1 + 64;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v7 = v11 & *(a1 + 64);
  v8 = a1;
LABEL_11:
  v12 = (v6 + 64) >> 6;
  v13 = v3 + 64;

  v15 = 0;
  v35 = v8;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v16 = v7;
  v17 = v15;
  if (v7)
  {
LABEL_18:
    v19 = (v16 - 1) & v16;
    v20 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v21 = *(*(v8 + 48) + v20);
    v22 = *(*(v8 + 56) + v20);
    v23 = v21;
    swift_unknownObjectRetain();
    if (!v23)
    {
LABEL_33:
      sub_1AC5CA508();

      return v3;
    }

    while (1)
    {
      *&v44[0] = v23;
      sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
      swift_dynamicCast();
      swift_dynamicCast();
      v40 = v36;
      v41 = v37;
      v42 = v38;
      sub_1AC5C3968(&v39, v43);
      v36 = v40;
      v37 = v41;
      v38 = v42;
      sub_1AC5C3968(v43, v44);
      v25 = *(v3 + 40);
      result = sub_1AC7A0948();
      v26 = -1 << *(v3 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        break;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v8 = v35;
LABEL_31:
      *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = *(v3 + 48) + 40 * v29;
      *v34 = v36;
      *(v34 + 16) = v37;
      *(v34 + 32) = v38;
      result = sub_1AC5C3968(v44, (*(v3 + 56) + 32 * v29));
      ++*(v3 + 16);
      v15 = v17;
      v7 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      v24 = sub_1AC7A0B68();
      if (v24)
      {
        *&v36 = v24;
        sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
        swift_dynamicCast();
        v23 = v40;
        v17 = v15;
        v19 = v7;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    v30 = 0;
    v31 = (63 - v26) >> 6;
    v8 = v35;
    while (++v28 != v31 || (v30 & 1) == 0)
    {
      v32 = v28 == v31;
      if (v28 == v31)
      {
        v28 = 0;
      }

      v30 |= v32;
      v33 = *(v13 + 8 * v28);
      if (v33 != -1)
      {
        v29 = __clz(__rbit64(~v33)) + (v28 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = v15;
    while (1)
    {
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_33;
      }

      v16 = *(v5 + 8 * v17);
      ++v18;
      if (v16)
      {
        v8 = v35;
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t CommandRecognizer.__allocating_init(transcriber:)()
{
  return sub_1AC7233B8();
}

{
  return sub_1AC7233B8();
}

{
  return sub_1AC7233B8();
}

void CommandRecognizer.init(transcriber:)()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_53_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA18, &qword_1AC7B1860);
  OUTLINED_FUNCTION_40(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_482();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_40(v31);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_234();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA28, &qword_1AC7B1870);
  v12 = OUTLINED_FUNCTION_167(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_9_17(OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked);
  *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_5_18(v16);
  v17 = *MEMORY[0x1E69E8790];
  v18 = OUTLINED_FUNCTION_39_10();
  v19(v18);
  OUTLINED_FUNCTION_18_12();
  sub_1AC7A03B8();
  v20 = OUTLINED_FUNCTION_8_13(OBJC_IVAR____TtC6Speech17CommandRecognizer__results);
  v21(v20);
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_6_8(v3);
  if (v22)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_11();
    v24 = *(v23 + 32);
    v26 = OUTLINED_FUNCTION_38_12(v25);
    v27(v26);
    sub_1AC71F7C8(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber);
    v28 = sub_1AC71F7C8(&qword_1EB56C3D8, type metadata accessor for DictationTranscriber);
    OUTLINED_FUNCTION_25_13(v28, OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber);
    v29 = *(v1 + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig) = sub_1AC7440D4();
    v30 = OBJC_IVAR____TtC6Speech20DictationTranscriber_reportingOptions;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile) = sub_1AC637EF8(0, *(v1 + OBJC_IVAR____TtC6Speech20DictationTranscriber_reportingOptions)) & 1;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized) = 1;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives) = (sub_1AC637EF8(1, *(v1 + v30)) & 1) == 0;
    LOBYTE(v30) = sub_1AC637EF8(8, *(v1 + v30));

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) = v30 & 1;
    sub_1AC5C71B8(v2, &qword_1EB56DA28);
    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_105();
  }
}

{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_53_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA18, &qword_1AC7B1860);
  OUTLINED_FUNCTION_40(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_482();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_40(v31);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_234();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA28, &qword_1AC7B1870);
  v12 = OUTLINED_FUNCTION_167(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_9_17(OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked);
  *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_5_18(v16);
  v17 = *MEMORY[0x1E69E8790];
  v18 = OUTLINED_FUNCTION_39_10();
  v19(v18);
  OUTLINED_FUNCTION_18_12();
  sub_1AC7A03B8();
  v20 = OUTLINED_FUNCTION_8_13(OBJC_IVAR____TtC6Speech17CommandRecognizer__results);
  v21(v20);
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_6_8(v3);
  if (v22)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_11();
    v24 = *(v23 + 32);
    v26 = OUTLINED_FUNCTION_38_12(v25);
    v27(v26);
    sub_1AC71F7C8(&qword_1EB56DA38, type metadata accessor for NormalizingTranscriber);
    v28 = sub_1AC71F7C8(&qword_1EB56C970, type metadata accessor for NormalizingTranscriber);
    OUTLINED_FUNCTION_25_13(v28, OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber);
    v29 = *(v1 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common);

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig) = sub_1AC7440D4();
    v30 = OBJC_IVAR____TtC6Speech22NormalizingTranscriber_reportingOptions;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile) = sub_1AC637EF8(0, *(v1 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_reportingOptions)) & 1;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized) = 0;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives) = (sub_1AC637EF8(1, *(v1 + v30)) & 1) == 0;
    LOBYTE(v30) = sub_1AC637EF8(8, *(v1 + v30));

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) = v30 & 1;
    sub_1AC5C71B8(v2, &qword_1EB56DA28);
    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_105();
  }
}

{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_53_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA18, &qword_1AC7B1860);
  OUTLINED_FUNCTION_40(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_482();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_40(v76);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_234();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA28, &qword_1AC7B1870);
  v14 = OUTLINED_FUNCTION_167(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_9_17(OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked);
  *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_5_18(v18);
  v19 = *MEMORY[0x1E69E8790];
  v20 = OUTLINED_FUNCTION_39_10();
  v21(v20);
  OUTLINED_FUNCTION_18_12();
  sub_1AC7A03B8();
  v22 = OUTLINED_FUNCTION_8_13(OBJC_IVAR____TtC6Speech17CommandRecognizer__results);
  v23(v22);
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_6_8(v3);
  if (v24)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_11();
    v26 = *(v25 + 32);
    v28 = OUTLINED_FUNCTION_38_12(v27);
    v29(v28);
    OUTLINED_FUNCTION_14_15();
    sub_1AC71F7C8(v30, v6);
    v31 = OUTLINED_FUNCTION_16_15(&qword_1EB56B2A0);
    OUTLINED_FUNCTION_25_13(v31, OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber);
    v32 = *(v1 + 16);

    v33 = sub_1AC7440D4();
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig) = v33;
    v41 = Transcriber.reportingOptions.getter(v33, v34, v35, v36, v37, v38, v39, v40, v72, v76, v80, v84, v88, v92);
    sub_1AC637EF8(0, v41);
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_23_16(OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile);
    Transcriber.transcriptionOptions.getter(v42, v43, v44, v45, v46, v47, v48, v49, v73, v77, v81, v85, v89, v93);
    v50 = OUTLINED_FUNCTION_20_14();
    sub_1AC637EF8(v50, v51);
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_23_16(OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized);
    Transcriber.reportingOptions.getter(v52, v53, v54, v55, v56, v57, v58, v59, v74, v78, v82, v86, v90, v94);
    v60 = OUTLINED_FUNCTION_20_14();
    sub_1AC637EF8(v60, v61);
    v62 = OUTLINED_FUNCTION_44_8();
    v70 = OUTLINED_FUNCTION_58_5(v62, v63, v64, v65, v66, v67, v68, v69, OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives, v75, v79, v83, v87, v91, v95);
    v71 = sub_1AC637EF8(5, v70);

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) = v71 & 1;
    sub_1AC5C71B8(v2, &qword_1EB56DA28);
    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC71F7C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AC71FB88()
{
  OUTLINED_FUNCTION_50_0();
  sub_1AC5C71B8(v0, &qword_1EB56DA28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_80(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_39();
  v5(v4);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t CommandRecognizer.results.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_21();

  return v4(v3);
}

__n128 CommandRecognizer.Result.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t CommandRecognizer.Result.resultsFinalizationTime.getter()
{
  result = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  return result;
}

uint64_t CommandRecognizer.Result.description.getter()
{
  v1 = *(v0 + 72);
  v18.start.value = 0;
  *&v18.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v19 = *&v18.start.value;
  MEMORY[0x1B26E8C40](0xD000000000000028, 0x80000001AC7B9230);
  v2 = *(v0 + 16);
  *&v18.start.value = *v0;
  *&v18.start.epoch = v2;
  *&v18.duration.timescale = *(v0 + 32);
  v3 = CMTimeRangeCopyDescription(0, &v18);
  if (!v3)
  {
    v3 = sub_1AC79FF58();
  }

  v18.start.value = v3;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD00000000000001ALL);
  v4 = *(v1 + 16);
  value = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v18.start.value = MEMORY[0x1E69E7CC0];
    result = sub_1AC6310CC(0, v4, 0);
    v7 = 0;
    value = v18.start.value;
    while (v7 < *(v1 + 16))
    {
      v8 = *(v1 + 32 + 8 * v7);

      v10 = sub_1AC71FF18(v9);
      v12 = v11;

      v18.start.value = value;
      v14 = *(value + 16);
      v13 = *(value + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1AC6310CC(v13 > 1, v14 + 1, 1);
        value = v18.start.value;
      }

      ++v7;
      *(value + 16) = v14 + 1;
      v15 = value + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      if (v4 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v18.start.value = value;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    OUTLINED_FUNCTION_13_11();
    sub_1AC726180(v16, &unk_1EB56C640);
    sub_1AC79FEA8();

    v17 = OUTLINED_FUNCTION_57_0();
    MEMORY[0x1B26E8C40](v17);

    MEMORY[0x1B26E8C40](4095242, 0xE300000000000000);
    return v19;
  }

  return result;
}

uint64_t sub_1AC71FF18(uint64_t a1)
{
  v2 = type metadata accessor for CommandRecognizer.Interpretation(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v5, 0);
    v6 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      sub_1AC7261C4();
      CommandRecognizer.Interpretation.description.getter();
      v9 = v8;
      v11 = v10;
      sub_1AC72621C();
      v13 = *(v19 + 16);
      v12 = *(v19 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AC6310CC(v12 > 1, v13 + 1, 1);
      }

      *(v19 + 16) = v13 + 1;
      v14 = v19 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += v7;
      --v5;
    }

    while (v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  sub_1AC726180(&qword_1EB56AC88, &unk_1EB56C640);
  v15 = sub_1AC79FEA8();
  v17 = v16;

  MEMORY[0x1B26E8C40](v15, v17);

  MEMORY[0x1B26E8C40](32010, 0xE200000000000000);
  return 2683;
}

void CommandRecognizer.Interpretation.description.getter()
{
  OUTLINED_FUNCTION_104();
  v1 = type metadata accessor for CommandRecognizer.Argument(0);
  v44 = *(v1 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_6();
  v3 = sub_1AC79FBA8();
  v4 = OUTLINED_FUNCTION_40(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_234();
  sub_1AC7A09C8();
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD00000000000002BLL);
  sub_1AC5C6E6C();
  v16 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v16);

  MEMORY[0x1B26E8C40](8285, 0xE200000000000000);
  v17 = type metadata accessor for CommandRecognizer.Interpretation(0);
  MEMORY[0x1B26E8C40](*(v0 + v17[5]), *(v0 + v17[5] + 8));
  MEMORY[0x1B26E8C40](0x2065676E6172202CLL, 0xE800000000000000);
  v18 = (v0 + v17[7]);
  v19 = *v18;
  v20 = v18[1];
  v21 = sub_1AC724A88();
  MEMORY[0x1B26E8C40](v21);

  MEMORY[0x1B26E8C40](0x2062726576202CLL, 0xE700000000000000);
  (*(v6 + 16))(v11, v0 + v17[8], v3);
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v22, v23);
  sub_1AC7A0118();
  v24 = MEMORY[0x1B26E8D20]();
  v26 = v25;

  MEMORY[0x1B26E8C40](v24, v26);

  MEMORY[0x1B26E8C40](0x656D75677261202CLL, 0xEE000A7B2073746ELL);
  v27 = *(v0 + v17[9]);
  v28 = *(v27 + 16);
  if (v28)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v28, 0);
    v29 = v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v30 = *(v44 + 72);
    do
    {
      sub_1AC7261C4();
      CommandRecognizer.Argument.description.getter();
      v32 = v31;
      v34 = v33;
      sub_1AC72621C();
      v36 = *(v45 + 16);
      v35 = *(v45 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1AC6310CC(v35 > 1, v36 + 1, 1);
      }

      *(v45 + 16) = v36 + 1;
      v37 = v45 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v29 += v30;
      --v28;
    }

    while (v28);
  }

  v38 = OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  OUTLINED_FUNCTION_13_11();
  sub_1AC726180(v40, &unk_1EB56C640);
  v41 = sub_1AC79FEA8();
  v43 = v42;

  MEMORY[0x1B26E8C40](v41, v43);

  MEMORY[0x1B26E8C40](4095242, 0xE300000000000000);
  OUTLINED_FUNCTION_105();
}

double sub_1AC720584@<D0>(_OWORD *a1@<X8>)
{
  CommandRecognizer.Result.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t CommandRecognizer.availableCompatibleAudioFormats.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t CommandRecognizer.availableCompatibleAudioFormats(clientID:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t CommandRecognizer.ActiveSet.init(suiteDictionary:resourceBaseURL:)(unint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_56();
  v5 = sub_1AC79F7F8();
  v6 = OUTLINED_FUNCTION_40(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v13 = v12 - v11;
  sub_1AC5CF764(0, &unk_1EB56AB48, 0x1E699B9E0);
  sub_1AC71F090(a1);

  v14 = sub_1AC720898();
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AC7AA7F0;
    *(inited + 32) = v15;
    if (sub_1AC61C24C(inited))
    {
      v17 = v15;
      v18 = sub_1AC724688(inited);
    }

    else
    {
      swift_setDeallocating();
      v24 = v15;
      sub_1AC724138();
      v18 = MEMORY[0x1E69E7CD0];
    }

    (*(v8 + 16))(v13, a2, v5);
    v25 = objc_allocWithZone(MEMORY[0x1E699B9C8]);
    v23 = sub_1AC723FF8(v18, v13);

    v26 = *(v8 + 8);
    v27 = OUTLINED_FUNCTION_57_0();
    result = v28(v27);
  }

  else
  {
    v19 = *(v8 + 8);
    v20 = OUTLINED_FUNCTION_57_0();
    result = v21(v20);
    v23 = 0;
  }

  *v2 = v23;
  return result;
}

id sub_1AC720898()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1AC79FE18();

  v2 = [v0 initWithPlistJSONDictionary_];

  return v2;
}

uint64_t static CommandRecognizer.ActiveSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  OUTLINED_FUNCTION_39();
  return sub_1AC7A0758() & 1;
}

uint64_t CommandRecognizer.ActiveSet.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  sub_1AC7A0768();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC7209DC()
{
  v1 = *v0;
  sub_1AC7A0E78();
  sub_1AC7A0768();
  return sub_1AC7A0EC8();
}

uint64_t CommandRecognizer.Interpretation.commandIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for CommandRecognizer.Interpretation(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t CommandRecognizer.Interpretation.suiteIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for CommandRecognizer.Interpretation(0) + 24));
}

uint64_t CommandRecognizer.Interpretation.range.getter()
{
  v1 = (v0 + *(type metadata accessor for CommandRecognizer.Interpretation(0) + 28));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t CommandRecognizer.Interpretation.verbIndexes.getter()
{
  v0 = OUTLINED_FUNCTION_56();
  v1 = *(type metadata accessor for CommandRecognizer.Interpretation(v0) + 32);
  v2 = sub_1AC79FBA8();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_21();

  return v6(v5);
}

uint64_t CommandRecognizer.Interpretation.arguments.getter()
{
  v1 = *(v0 + *(type metadata accessor for CommandRecognizer.Interpretation(0) + 36));
}

void CommandRecognizer.Argument.description.getter()
{
  OUTLINED_FUNCTION_104();
  v1 = sub_1AC79FBA8();
  v2 = OUTLINED_FUNCTION_40(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  sub_1AC7A09C8();
  MEMORY[0x1B26E8C40](0xD000000000000024, 0x80000001AC7B92B0);
  v19 = *v0;
  sub_1AC7A0AF8();
  MEMORY[0x1B26E8C40](0x2074786574202CLL, 0xE700000000000000);
  MEMORY[0x1B26E8C40](*(v0 + 1), *(v0 + 2));
  MEMORY[0x1B26E8C40](0x73657865646E6920, 0xE900000000000020);
  v10 = type metadata accessor for CommandRecognizer.Argument(0);
  v11 = *(v4 + 16);
  v11(v9, &v0[*(v10 + 24)], v1);
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v12, v13);
  sub_1AC7A0118();
  v14 = MEMORY[0x1B26E8D20]();
  v16 = v15;

  MEMORY[0x1B26E8C40](v14, v16);

  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD000000000000014);
  v11(v9, &v0[*(v10 + 28)], v1);
  v17 = sub_1AC7A0118();
  MEMORY[0x1B26E8D20](v17, MEMORY[0x1E69E6530]);

  v18 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1B26E8C40](v18);

  MEMORY[0x1B26E8C40](62, 0xE100000000000000);
  OUTLINED_FUNCTION_105();
}

void CommandRecognizer.Interpretation.hash(into:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_25();
  v3 = sub_1AC79F958();
  v4 = OUTLINED_FUNCTION_40(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    sub_1AC7A0E98();
  }

  else
  {
    (*(v6 + 32))(v11, v17, v3);
    sub_1AC7A0E98();
    OUTLINED_FUNCTION_15_13();
    sub_1AC71F7C8(v18, v19);
    sub_1AC79FE58();
    (*(v6 + 8))(v11, v3);
  }

  v20 = type metadata accessor for CommandRecognizer.Interpretation(0);
  v21 = (v2 + v20[5]);
  v22 = *v21;
  v23 = v21[1];
  sub_1AC7A0048();
  sub_1AC6221D4(v0, *(v2 + v20[6]));
  v24 = (v2 + v20[7]);
  v25 = v24[1];
  MEMORY[0x1B26E9A40](*v24);
  MEMORY[0x1B26E9A40](v25);
  v26 = v20[8];
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v27, v28);
  sub_1AC79FE58();
  v29 = *(v2 + v20[9]);
  sub_1AC63405C();
}

uint64_t CommandRecognizer.Interpretation.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  CommandRecognizer.Interpretation.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC721394()
{
  sub_1AC7A0E78();
  CommandRecognizer.Interpretation.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t CommandRecognizer.Argument.text.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_39();
}

uint64_t CommandRecognizer.Argument.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CommandRecognizer.Argument.indexes.getter()
{
  v0 = OUTLINED_FUNCTION_56();
  v1 = *(type metadata accessor for CommandRecognizer.Argument(v0) + 24);
  v2 = sub_1AC79FBA8();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_21();

  return v6(v5);
}

uint64_t CommandRecognizer.Argument.indexes.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for CommandRecognizer.Argument(v2) + 24);
  v4 = sub_1AC79FBA8();
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*CommandRecognizer.Argument.indexes.modify())(void, void)
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for CommandRecognizer.Argument(v0) + 24);
  return nullsub_1;
}

uint64_t CommandRecognizer.Argument.adpositionIndexes.getter()
{
  v0 = OUTLINED_FUNCTION_56();
  v1 = *(type metadata accessor for CommandRecognizer.Argument(v0) + 28);
  v2 = sub_1AC79FBA8();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_21();

  return v6(v5);
}

uint64_t CommandRecognizer.Argument.adpositionIndexes.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for CommandRecognizer.Argument(v2) + 28);
  v4 = sub_1AC79FBA8();
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*CommandRecognizer.Argument.adpositionIndexes.modify())(void, void)
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for CommandRecognizer.Argument(v0) + 28);
  return nullsub_1;
}

uint64_t CommandRecognizer.Argument.Presence.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t static CommandRecognizer.Argument.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_50_0();
    v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
    if (v5 || (sub_1AC7A0D38() & 1) != 0)
    {
      v6 = type metadata accessor for CommandRecognizer.Argument(0);
      if (MEMORY[0x1B26E8730](v3 + *(v6 + 24), v2 + *(v6 + 24)))
      {
        v7 = *(v6 + 28);

        JUMPOUT(0x1B26E8730);
      }
    }
  }

  return 0;
}

uint64_t CommandRecognizer.Argument.hash(into:)()
{
  OUTLINED_FUNCTION_53_8();
  MEMORY[0x1B26E9A40](*v1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AC7A0048();
  v4 = type metadata accessor for CommandRecognizer.Argument(0);
  v5 = *(v4 + 24);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v6, v7);
  sub_1AC79FE58();
  v8 = v0 + *(v4 + 28);
  return sub_1AC79FE58();
}

uint64_t CommandRecognizer.Argument.hashValue.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](*v0);
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1AC7A0048();
  v4 = type metadata accessor for CommandRecognizer.Argument(0);
  v5 = *(v4 + 24);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v6, v7);
  sub_1AC79FE58();
  v8 = &v1[*(v4 + 28)];
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

void *sub_1AC72199C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig);
  v2 = v1;
  return v1;
}

uint64_t sub_1AC7219DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](*v2);
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  sub_1AC7A0048();
  v7 = *(a2 + 24);
  sub_1AC79FBA8();
  sub_1AC71F7C8(&qword_1EB56C538, MEMORY[0x1E6969B50]);
  sub_1AC79FE58();
  v8 = &v4[*(a2 + 28)];
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC721AB4()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_1AC721AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC721B20, 0, 0);
}

uint64_t sub_1AC721B20()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC721B50, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC721B50()
{
  OUTLINED_FUNCTION_85();
  sub_1AC765B60(*(v0 + 32), *(v0 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1AC6AE248, 0, 0);
}

BOOL sub_1AC721BB4(void *a1)
{
  if (object_getClass(a1) != _TtC6Speech22SpeechRecognizerWorker || a1 == 0)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  v3 = sub_1AC721C28();
  swift_unknownObjectRelease();
  return v3;
}

BOOL sub_1AC721C28()
{
  OUTLINED_FUNCTION_25();
  v2 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  if (*(v0 + *(v2 + 32)) != 1)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet);
  v4 = *(v0 + *(v2 + 48) + 8);
  result = (v3 | v4) == 0;
  if (v3)
  {
    if (v4)
    {
      sub_1AC5CF764(0, &unk_1EB56AB00, 0x1E699B9C8);
      v6 = v3;
      v7 = v4;
      v8 = sub_1AC7A0758();

      return v8 & 1;
    }
  }

  return result;
}

uint64_t sub_1AC721CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_2_21();
  sub_1AC7261C4();
  *(v9 + *(v3 + 32)) = 1;
  v10 = *(v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet);
  if (v10)
  {
    v11 = v9 + *(v3 + 48);
    v12 = *(v11 + 8);
    if (!v12)
    {
      *v11 = *v11;
      *(v11 + 8) = v10;
      OUTLINED_FUNCTION_2_21();
      sub_1AC7261C4();
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
      v18 = v10;
      return sub_1AC72621C();
    }

    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    v13 = v10;
    v14 = v12;
    v15 = sub_1AC7A0758();

    if (v15)
    {
      goto LABEL_4;
    }

LABEL_6:
    v16 = a1;
    v17 = 1;
    goto LABEL_7;
  }

  if (*(v9 + *(v3 + 48) + 8))
  {
    goto LABEL_6;
  }

LABEL_4:
  OUTLINED_FUNCTION_2_21();
  sub_1AC7261C4();
  v16 = a1;
  v17 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v16, v17, 1, v3);
  return sub_1AC72621C();
}

uint64_t CommandRecognizer.recognizerObjectIdentifier.getter()
{
  v0 = sub_1AC721AB4();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 112);

  return v1;
}

void sub_1AC721EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned __int8 *a27, uint64_t a28, __int128 *a29, uint64_t a30)
{
  OUTLINED_FUNCTION_104();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAB8, &qword_1AC7B1D78);
  OUTLINED_FUNCTION_40(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v120 - v45;
  v47 = *a27;
  if (v47 >= 3)
  {
    if (v47 == 6 && (*(v30 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  else if (*(v30 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile) != 1)
  {
    goto LABEL_77;
  }

  if (*(v30 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized))
  {
    v36 = v32;
  }

  else
  {
    a21 = v34;
  }

  v49 = *(v30 + OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives);
  v131 = v46;
  v132 = v38;
  if (v49 == 1)
  {
    v130 = a21;
    sub_1AC7536A4(1, v36);
    OUTLINED_FUNCTION_54_4();
    if (a21)
    {
      sub_1AC7A0D68();
      swift_unknownObjectRetain_n();
      v57 = swift_dynamicCastClass();
      if (!v57)
      {
        swift_unknownObjectRelease();
        v57 = MEMORY[0x1E69E7CC0];
      }

      v58 = *(v57 + 16);

      if (__OFSUB__(a21 >> 1, v36))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v58 != (a21 >> 1) - v36)
      {
        goto LABEL_88;
      }

      v55 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v56 = v130;
      v46 = v131;
      if (v55)
      {
        goto LABEL_19;
      }

      v55 = MEMORY[0x1E69E7CC0];
      goto LABEL_18;
    }

    while (1)
    {
      v50 = OUTLINED_FUNCTION_45_10();
      sub_1AC751B94(v50, v51, v52, v53);
      v55 = v54;
      v56 = v130;
LABEL_18:
      swift_unknownObjectRelease();
LABEL_19:
      v129 = v55;
      sub_1AC7536A4(1, v56);
      OUTLINED_FUNCTION_54_4();
      if ((a21 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1AC7A0D68();
      swift_unknownObjectRetain_n();
      v64 = swift_dynamicCastClass();
      if (!v64)
      {
        swift_unknownObjectRelease();
        v64 = MEMORY[0x1E69E7CC0];
      }

      v65 = *(v64 + 16);

      if (!__OFSUB__(a21 >> 1, v56))
      {
        break;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      swift_unknownObjectRelease();
      v46 = v131;
    }

    if (v65 != (a21 >> 1) - v56)
    {
      swift_unknownObjectRelease();
      v46 = v131;
LABEL_20:
      v59 = OUTLINED_FUNCTION_45_10();
      sub_1AC751E60(v59, v60, v61, v62);
      a21 = v63;
      goto LABEL_28;
    }

    a21 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v46 = v131;
    if (a21)
    {
      v38 = v132;
      v36 = v129;
      goto LABEL_29;
    }

    a21 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v36 = v129;
    swift_unknownObjectRelease();
    v38 = v132;
  }

LABEL_29:
  v66 = 0;
  v67 = 0;
  v68 = -*(v36 + 16);
  v69 = MEMORY[0x1E69E7CC0];
  v127 = a30;
  v133 = a29;
  v134 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v70 = v66 + 4;
  while (v68 + v70 != 4)
  {
    v71 = v70 - 4;
    if ((v70 - 4) >= *(v36 + 16))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v72 = *(a21 + 16);
    if (v71 == v72)
    {
      break;
    }

    if (v71 >= v72)
    {
      goto LABEL_79;
    }

    v73 = *(v36 + 8 * v70);
    v74 = *(a21 + 8 * v70);
    if (v73 >> 62)
    {
      v128 = v67;
      v125 = v74;
      v126 = v68;
      v75 = sub_1AC7A08E8();
      v69 = MEMORY[0x1E69E7CC0];
      v74 = v125;
      v68 = v126;
      v67 = v128;
    }

    else
    {
      v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v70;
    if (v75)
    {
      v140[0] = v69;
      if (v75 < 1)
      {
        __break(1u);
        goto LABEL_86;
      }

      v126 = v68;
      v128 = v67;
      v129 = v36;
      v130 = a21;
      v122 = v41;
      v123 = v39;
      v124 = v30;
      v121 = v70 - 4;
      v135 = v75;
      v136 = v73 & 0xC000000000000001;
      v76 = v74;

      v125 = v76;

      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = &selRef_initWithText_confidence_startTime_duration_;
      while (1)
      {
        if (v136)
        {
          v81 = MEMORY[0x1B26E95B0](v78, v73);
        }

        else
        {
          v81 = *(v73 + 8 * v78 + 32);
        }

        v82 = v81;
        v83 = 0;
        if ([v81 v80[310]] && v79)
        {
          v83 = [v79 hasSpaceAfter];
        }

        if ([v82 v80[310]])
        {
          v84 = v140[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = *(v84 + 16);
            OUTLINED_FUNCTION_53_3();
            sub_1AC60ED68();
            v84 = v94;
          }

          v86 = *(v84 + 16);
          v85 = *(v84 + 24);
          if (v86 >= v85 >> 1)
          {
            OUTLINED_FUNCTION_49_7(v85);
            sub_1AC60ED68();
            v84 = v95;
          }

          *(v84 + 16) = v86 + 1;
          *(v84 + 8 * v86 + 32) = v77;
          v140[0] = v84;
          if (v83)
          {
            v80 = &selRef_initWithText_confidence_startTime_duration_;
          }

          else
          {
            v87 = __OFADD__(v77++, 1);
            v80 = &selRef_initWithText_confidence_startTime_duration_;
            if (v87)
            {
              goto LABEL_83;
            }
          }
        }

        v88 = [v82 tokenName];
        sub_1AC79FF68();

        v89 = sub_1AC7A0058();

        v90 = v77 + v89;
        if (__OFADD__(v77, v89))
        {
          goto LABEL_80;
        }

        if (v90 < v77)
        {
          goto LABEL_81;
        }

        sub_1AC6593D0(v77, v90);
        if ([v82 hasSpaceAfter])
        {
          v91 = v140[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = *(v91 + 16);
            OUTLINED_FUNCTION_53_3();
            sub_1AC60ED68();
            v91 = v97;
          }

          v92 = *(v91 + 16);
          if (v92 >= *(v91 + 24) >> 1)
          {
            sub_1AC60ED68();
            v91 = v98;
          }

          *(v91 + 16) = v92 + 1;
          *(v91 + 8 * v92 + 32) = v90;
          v140[0] = v91;
          v87 = __OFADD__(v90++, 1);
          if (v87)
          {
            goto LABEL_82;
          }
        }

        else
        {
        }

        ++v78;
        v77 = v90;
        v79 = v82;
        if (v135 == v78)
        {

          MEMORY[0x1EEE9AC00](v99);
          *(&v120 - 2) = v140;
          v100 = v128;
          *(&v120 - 1) = v127;
          sub_1AC72C200(sub_1AC726330, (&v120 - 4), v125);
          v102 = v101;
          v128 = v100;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = *(v134 + 16);
            OUTLINED_FUNCTION_53_3();
            sub_1AC60ECAC();
            v134 = v107;
          }

          v39 = v123;
          v30 = v124;
          v41 = v122;
          v46 = v131;
          v38 = v132;
          v104 = *(v134 + 16);
          v103 = *(v134 + 24);
          if (v104 >= v103 >> 1)
          {
            OUTLINED_FUNCTION_49_7(v103);
            sub_1AC60ECAC();
            v134 = v108;
          }

          v105 = v134;
          *(v134 + 16) = v104 + 1;
          *(v105 + 8 * v104 + 32) = v102;

          v36 = v129;
          a21 = v130;
          v67 = v128;
          v68 = v126;
          v69 = MEMORY[0x1E69E7CC0];
          v66 = v121;
          goto LABEL_30;
        }
      }
    }
  }

  v109 = *v133;
  *&v139[4] = *(v133 + 2);
  v110 = v38[1];
  v139[0] = *v38;
  v139[1] = v110;
  v139[2] = v38[2];
  v139[3] = v109;
  memcpy(v140, v139, 0x48uLL);
  v140[9] = v134;
  memcpy(v139, v140, sizeof(v139));
  sub_1AC726350(v140, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  sub_1AC7A0388();
  (*(v41 + 8))(v46, v39);
  if (off_1ED937D60 == -1)
  {
    goto LABEL_74;
  }

LABEL_84:
  OUTLINED_FUNCTION_3();
LABEL_74:
  v111 = sub_1AC79FDE8();
  __swift_project_value_buffer(v111, qword_1ED9386C8);
  sub_1AC726350(v140, v139);
  v112 = sub_1AC79FDC8();
  v113 = sub_1AC7A05E8();
  sub_1AC726388(v140);
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v137 = v115;
    *v114 = 136315138;
    memcpy(v138, v140, sizeof(v138));
    v116 = CommandRecognizer.Result.description.getter();
    v118 = v117;
    memcpy(v139, v138, sizeof(v139));
    sub_1AC726388(v139);
    v119 = sub_1AC5CFE74(v116, v118, &v137);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_1AC5BC000, v112, v113, "CommandRecognizer: Yielded result %s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v115);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {

    sub_1AC726388(v140);
  }

LABEL_77:
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC722758@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAC0, &unk_1AC7B1D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v52 - v9;
  v11 = sub_1AC79FBA8();
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v52 - v19;
  v21 = *a1;
  v22 = [v21 arguments];
  sub_1AC5CF764(0, &qword_1EB56DAC8, 0x1E699B9D0);
  v23 = sub_1AC7A0158();

  v24 = v61;
  sub_1AC71E47C(v23, a2);
  v61 = v25;
  v58 = v24;

  v62 = v20;
  sub_1AC5C6E6C();
  v26 = [v21 commandIdentifier];
  v56 = sub_1AC79FF68();
  v28 = v27;

  v29 = [v21 suiteIdentifiers];
  v57 = sub_1AC7A0448();

  v30 = [v21 range];
  v32 = v31;
  result = sub_1AC79F448();
  v34 = 0;
  v35 = 0;
  if (v30 != result)
  {
    v34 = &v30[v32];
    if (__OFADD__(v30, v32))
    {
      __break(1u);
      return result;
    }

    v35 = v30;
  }

  v53 = v35;
  v54 = v34;
  v36 = *a2;

  v37 = [v21 verbIndexes];
  v55 = v28;
  if (v37)
  {
    v38 = v37;
    sub_1AC79FB88();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = v56;
  __swift_storeEnumTagSinglePayload(v10, v39, 1, v11);
  v41 = sub_1AC723090(v10, v36);

  sub_1AC5C71B8(v10, &qword_1EB56DAC0);
  sub_1AC71F7C8(&qword_1EB56DAD0, MEMORY[0x1E6969B50]);
  sub_1AC7A0858();
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = (v41 + 32);
    do
    {
      v44 = *v43++;
      v63 = v44;
      sub_1AC7A0848();
      --v42;
    }

    while (v42);
  }

  v45 = v59;
  v46 = *(v60 + 32);
  v46(v59, v15, v11);
  sub_1AC637E08();
  v47 = type metadata accessor for CommandRecognizer.Interpretation(0);
  v48 = (a4 + v47[5]);
  v49 = v55;
  *v48 = v40;
  v48[1] = v49;
  *(a4 + v47[6]) = v57;
  v50 = (a4 + v47[7]);
  v51 = v54;
  *v50 = v53;
  v50[1] = v51;
  result = (v46)(a4 + v47[8], v45, v11);
  *(a4 + v47[9]) = v61;
  return result;
}

uint64_t sub_1AC722BC4@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAC0, &unk_1AC7B1D80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - v10;
  v12 = sub_1AC79FBA8();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v50 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v50 - v22;
  v23 = *a1;
  v54 = [v23 presence];
  if (v54 >= 4)
  {
    result = sub_1AC7A0B78();
    __break(1u);
  }

  else
  {
    v24 = sub_1AC724A24(v23);
    v52 = v25;
    v53 = v24;
    v51 = a2;
    v26 = *a2;

    v27 = [v23 indexes];
    v58 = a3;
    if (v27)
    {
      v28 = v27;
      sub_1AC79FB88();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    __swift_storeEnumTagSinglePayload(v11, v29, 1, v12);
    v30 = sub_1AC723090(v11, v26);

    sub_1AC5C71B8(v11, &qword_1EB56DAC0);
    sub_1AC71F7C8(&qword_1EB56DAD0, MEMORY[0x1E6969B50]);
    sub_1AC7A0858();
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = (v30 + 32);
      do
      {
        v33 = *v32++;
        v60 = v33;
        sub_1AC7A0848();
        --v31;
      }

      while (v31);
    }

    v34 = *(v57 + 32);
    v34(v59, v21, v12);
    v35 = *v51;

    v36 = [v23 adpositionIndexes];
    if (v36)
    {
      v37 = v36;
      v38 = v55;
      sub_1AC79FB88();

      v39 = 0;
    }

    else
    {
      v39 = 1;
      v38 = v55;
    }

    __swift_storeEnumTagSinglePayload(v38, v39, 1, v12);
    v40 = sub_1AC723090(v38, v35);

    sub_1AC5C71B8(v38, &qword_1EB56DAC0);
    sub_1AC7A0858();
    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = (v40 + 32);
      do
      {
        v43 = *v42++;
        v60 = v43;
        sub_1AC7A0848();
        --v41;
      }

      while (v41);
    }

    if (v52)
    {
      v44 = v52;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    if (v52)
    {
      v45 = v53;
    }

    else
    {
      v45 = 0;
    }

    v46 = v56;
    v34(v56, v16, v12);
    v47 = v58;
    *v58 = v54;
    *(v47 + 1) = v45;
    *(v47 + 2) = v44;
    v48 = type metadata accessor for CommandRecognizer.Argument(0);
    v34(&v47[*(v48 + 24)], v59, v12);
    return (v34)(&v47[*(v48 + 28)], v46, v12);
  }

  return result;
}

uint64_t sub_1AC723090(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAC0, &unk_1AC7B1D80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_1AC79FBA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1AC5C71B8(v6, &qword_1EB56DAC0);
  }

  else
  {
    v12 = (*(v8 + 32))(v11, v6, v7);
    MEMORY[0x1EEE9AC00](v12);
    *(&v20 - 2) = v11;

    sub_1AC723EC4(sub_1AC7263DC, (&v20 - 4), a2);
    v14 = v13;
    v15 = *(v13 + 16);
    if (v15)
    {
      v21 = v8;
      v22 = MEMORY[0x1E69E7CC0];
      sub_1AC631164();
      a2 = v22;
      v16 = *(v22 + 16);
      v17 = 40;
      do
      {
        v18 = *(v14 + v17);
        v22 = a2;
        if (v16 >= *(a2 + 24) >> 1)
        {
          sub_1AC631164();
          a2 = v22;
        }

        *(a2 + 16) = v16 + 1;
        *(a2 + 8 * v16 + 32) = v18;
        v17 += 16;
        ++v16;
        --v15;
      }

      while (v15);

      v8 = v21;
    }

    else
    {

      a2 = MEMORY[0x1E69E7CC0];
    }

    (*(v8 + 8))(v11, v7);
  }

  return a2;
}

uint64_t sub_1AC723340(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  return sub_1AC7A0398();
}

uint64_t sub_1AC7233B8()
{
  v2 = OUTLINED_FUNCTION_43_6();
  v0(v1);
  return v2;
}

uint64_t CommandRecognizer.__allocating_init(transcriber:activeSet:)()
{
  v0 = OUTLINED_FUNCTION_43_6();
  CommandRecognizer.init(transcriber:activeSet:)();
  return v0;
}

void CommandRecognizer.init(transcriber:activeSet:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA18, &qword_1AC7B1860);
  OUTLINED_FUNCTION_40(v74);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_40(v75);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_234();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA28, &qword_1AC7B1870);
  v18 = OUTLINED_FUNCTION_167(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_14();
  v24 = *v4;
  OUTLINED_FUNCTION_9_17(OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked);
  *(v2 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_5_18(v25);
  (*(v8 + 104))(v13, *MEMORY[0x1E69E8790], v74);
  v26 = v24;
  OUTLINED_FUNCTION_18_12();
  sub_1AC7A03B8();
  v27 = OUTLINED_FUNCTION_8_13(OBJC_IVAR____TtC6Speech17CommandRecognizer__results);
  v28(v27);
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_6_8(v23);
  if (v29)
  {
    __break(1u);
  }

  else
  {

    OUTLINED_FUNCTION_21_11();
    (*(v30 + 32))(v2 + v31, v23, v4);
    OUTLINED_FUNCTION_14_15();
    sub_1AC71F7C8(v32, v23);
    v33 = OUTLINED_FUNCTION_16_15(&qword_1EB56B2A0);
    OUTLINED_FUNCTION_25_13(v33, OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber);
    v34 = *(v6 + 16);

    v35 = sub_1AC7440D4();
    *(v2 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig) = v35;
    v43 = Transcriber.reportingOptions.getter(v35, v36, v37, v38, v39, v40, v41, v42, v74, v75, v76, v77, v78, v79);
    sub_1AC637EF8(0, v43);
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_23_16(OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile);
    Transcriber.transcriptionOptions.getter(v44, v45, v46, v47, v48, v49, v50, v51, v74, v75, v76, v77, v78, v79);
    v52 = OUTLINED_FUNCTION_20_14();
    sub_1AC637EF8(v52, v53);
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_23_16(OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized);
    Transcriber.reportingOptions.getter(v54, v55, v56, v57, v58, v59, v60, v61, v74, v75, v76, v77, v78, v79);
    v62 = OUTLINED_FUNCTION_20_14();
    sub_1AC637EF8(v62, v63);
    v64 = OUTLINED_FUNCTION_44_8();
    v72 = OUTLINED_FUNCTION_58_5(v64, v65, v66, v67, v68, v69, v70, v71, OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives, v74, v75, v76, v77, v78, v79);
    v73 = sub_1AC637EF8(5, v72);

    *(v2 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) = v73 & 1;
    sub_1AC5C71B8(v1, &qword_1EB56DA28);
    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_105();
  }
}

uint64_t CommandRecognizer.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech17CommandRecognizer__results;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_80(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber);
  swift_unknownObjectRelease();

  sub_1AC5C71B8(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked + 8, &qword_1EB56CB00);
  v5 = OBJC_IVAR____TtC6Speech17CommandRecognizer_resultsBuilder;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_80(v6);
  (*(v7 + 8))(v0 + v5);
  return v0;
}

uint64_t CommandRecognizer.__deallocating_deinit()
{
  CommandRecognizer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC723C5C()
{
  v1 = CommandRecognizer.availableCompatibleAudioFormats.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AC723CD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B2F6C;

  return OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC723D68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B30E8;

  return sub_1AC6B2588();
}

void sub_1AC723EC4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_13;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    v9 = *(a3 + 8 * v6 + 32);
    v16[0] = v6;
    v16[1] = v9;
    v10 = v5(v16);
    if (v3)
    {

LABEL_13:

      return;
    }

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v8 + 16);
        sub_1AC631474();
        v8 = v17;
      }

      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_1AC631474();
        v8 = v17;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v6;
      *(v14 + 40) = v9;
      v5 = a1;
    }

    ++v6;
  }

  __break(1u);
}

id sub_1AC723FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AC5CF764(0, &unk_1EB56AB48, 0x1E699B9E0);
  sub_1AC7263FC();
  v5 = sub_1AC7A0438();

  v6 = sub_1AC79F788();
  v7 = [v3 initWithSuites:v5 resourceBaseURL:v6];

  v8 = sub_1AC79F7F8();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

uint64_t sub_1AC7240CC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1AC724138()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1AC724194(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v2, 32, 7);
}

uint64_t sub_1AC724260(uint64_t a1)
{
  OUTLINED_FUNCTION_185_0(a1);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CD0];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BDA8, &unk_1AC7B1E10);
  OUTLINED_FUNCTION_35_7();
  result = sub_1AC7A0988();
  v4 = result;
  v21 = *(v1 + 16);
  if (!v21)
  {
    goto LABEL_33;
  }

  v5 = 0;
  v6 = result + 56;
  while (1)
  {
    if (v5 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v7 = *(v1 + 32 + 8 * v5);
    v8 = *(v4 + 40);
    sub_1AC7A0E78();
    switch(v7)
    {
      case 0uLL:
        v9 = 0;
        goto LABEL_11;
      case 1uLL:
        v9 = 1;
        goto LABEL_11;
      case 2uLL:
        v9 = 2;
LABEL_11:
        MEMORY[0x1B26E9A40](v9);
        goto LABEL_13;
    }

    MEMORY[0x1B26E9A40](3);
    sub_1AC61C264(v7);
    sub_1AC7A0768();
LABEL_13:
    result = sub_1AC7A0EC8();
    v10 = ~(-1 << *(v4 + 32));
    v11 = result & v10;
    v12 = (result & v10) >> 6;
    v13 = *(v6 + 8 * v12);
    v14 = 1 << (result & v10);
    if ((v14 & v13) == 0)
    {
      break;
    }

    while (1)
    {
      v15 = *(*(v4 + 48) + 8 * v11);
      if (v15)
      {
        break;
      }

      result = sub_1AC623E3C(0);
      if (!v7)
      {
        v20 = 0;
        goto LABEL_29;
      }

LABEL_25:
      v11 = (v11 + 1) & v10;
      v12 = v11 >> 6;
      v13 = *(v6 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if ((v13 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }
    }

    if (v15 == 1)
    {
      result = sub_1AC623E3C(1);
      if (v7 == 1)
      {
        v20 = 1;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (v15 == 2)
    {
      result = sub_1AC623E3C(2);
      if (v7 == 2)
      {
        v20 = 2;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (v7 < 3)
    {
      goto LABEL_25;
    }

    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    sub_1AC61C264(v15);
    v16 = sub_1AC7A0758();
    result = sub_1AC623E3C(v15);
    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

    v20 = v7;
LABEL_29:
    result = sub_1AC623E3C(v20);
LABEL_30:
    if (++v5 == v21)
    {
LABEL_33:

      return v4;
    }
  }

LABEL_26:
  *(v6 + 8 * v12) = v13 | v14;
  *(*(v4 + 48) + 8 * v11) = v7;
  v17 = *(v4 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v4 + 16) = v19;
    goto LABEL_30;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1AC7244B8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_185_0(v2);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE90, &qword_1AC7A82A0), OUTLINED_FUNCTION_35_7(), v3 = sub_1AC7A0988(), v4 = v3, (v5 = *(v0 + 16)) != 0))
  {
    v6 = 0;
    v7 = v3 + 56;
    while (v6 < *(v0 + 16))
    {
      v8 = (v0 + 32 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];
      ++v6;
      v11 = *(v4 + 40);
      sub_1AC7A0E78();

      sub_1AC7A0048();
      v12 = sub_1AC7A0EC8();
      v13 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v14 = v12 & v13;
        v15 = (v12 & v13) >> 6;
        v16 = *(v7 + 8 * v15);
        v17 = 1 << (v12 & v13);
        if ((v17 & v16) == 0)
        {
          break;
        }

        v18 = (*(v4 + 48) + 16 * v14);
        v19 = *v18 == v10 && v18[1] == v9;
        if (v19 || (sub_1AC7A0D38() & 1) != 0)
        {

          goto LABEL_16;
        }

        v12 = v14 + 1;
      }

      *(v7 + 8 * v15) = v17 | v16;
      v20 = (*(v4 + 48) + 16 * v14);
      *v20 = v10;
      v20[1] = v9;
      v21 = *(v4 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_19;
      }

      *(v4 + 16) = v23;
LABEL_16:
      if (v6 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_61_0();
  }
}

uint64_t sub_1AC724688(uint64_t a1)
{
  v1 = a1;
  if (sub_1AC61C24C(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAD8, &unk_1AC7B1DA0);
    v2 = sub_1AC7A0988();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v21 = sub_1AC61C24C(v1);
  if (v21)
  {
    v3 = 0;
    v4 = v2 + 56;
    v19 = v1;
    v20 = v1 & 0xC000000000000001;
    v18 = v1 + 32;
    while (1)
    {
      sub_1AC61C25C(v3, v20 == 0, v1);
      result = v20 ? MEMORY[0x1B26E95B0](v3, v1) : *(v18 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      result = sub_1AC7A0748();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_1AC5CF764(0, &unk_1EB56AB48, 0x1E699B9E0);
        v14 = *(*(v2 + 48) + 8 * v10);
        v15 = sub_1AC7A0758();

        if (v15)
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v16 = *(v2 + 16);
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      v1 = v19;
      if (v3 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

void sub_1AC724860()
{
  OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_185_0(v5);
  if (v1 && (v8 = OUTLINED_FUNCTION_130_0(v6, v7), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_35_7(), v10 = sub_1AC7A0988(), (v11 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_41_10();
    while (v3 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_59_7();
      MEMORY[0x1B26E9A40](v2);
      v12 = sub_1AC7A0EC8();
      v13 = ~(v4 << *(v10 + 32));
      while (1)
      {
        OUTLINED_FUNCTION_40_11(v12, v13);
        if (v15)
        {
          break;
        }

        if (v2 == *(*(v10 + 48) + v14))
        {
          goto LABEL_11;
        }

        v12 = v14 + 1;
      }

      OUTLINED_FUNCTION_33_10();
      if (v17)
      {
        goto LABEL_14;
      }

      *(v10 + 16) = v16;
LABEL_11:
      if (v3 == v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_61_0();
  }
}

void sub_1AC72494C()
{
  OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_185_0(v5);
  if (v1 && (v8 = OUTLINED_FUNCTION_130_0(v6, v7), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_35_7(), v10 = sub_1AC7A0988(), (v11 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_41_10();
    while (v3 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_59_7();
      MEMORY[0x1B26E9A40](v2);
      v12 = sub_1AC7A0EC8();
      v13 = ~(v4 << *(v10 + 32));
      while (1)
      {
        OUTLINED_FUNCTION_40_11(v12, v13);
        if (v15)
        {
          break;
        }

        if (*(*(v10 + 48) + v14) == v2)
        {
          goto LABEL_11;
        }

        v12 = v14 + 1;
      }

      OUTLINED_FUNCTION_33_10();
      if (v17)
      {
        goto LABEL_14;
      }

      *(v10 + 16) = v16;
LABEL_11:
      if (v3 == v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_61_0();
  }
}

uint64_t sub_1AC724A24(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC724A88()
{
  sub_1AC7A0AF8();
  MEMORY[0x1B26E8C40](3943982, 0xE300000000000000);
  sub_1AC7A0AF8();
  return 0;
}

unint64_t sub_1AC724B40()
{
  result = qword_1EB56DA58;
  if (!qword_1EB56DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56DA58);
  }

  return result;
}

unint64_t sub_1AC724C24()
{
  result = qword_1EB56DA78;
  if (!qword_1EB56DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56DA78);
  }

  return result;
}

uint64_t sub_1AC724D80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1AC71F7C8(a4, type metadata accessor for CommandRecognizer);
  result = sub_1AC71F7C8(a6, type metadata accessor for CommandRecognizer);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC724DEC(uint64_t a1)
{
  result = sub_1AC71F7C8(&qword_1EB56AF88, type metadata accessor for CommandRecognizer);
  *(a1 + 8) = result;
  return result;
}

void sub_1AC724E94()
{
  sub_1AC72502C(319, &qword_1EB56AC18, MEMORY[0x1E69E87C8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1AC72502C(319, &qword_1EB56AC58, MEMORY[0x1E69E87A0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CommandRecognizer.__allocating_init(transcriber:)()
{
  return (*(v0 + 160))();
}

{
  return (*(v0 + 168))();
}

{
  return (*(v0 + 176))();
}

void sub_1AC72502C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v7 = a3(a1, &type metadata for CommandRecognizer.Result, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for CommandRecognizer.Interpretation(uint64_t *a1, uint64_t *a2, int *a3)
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
    v7 = sub_1AC79F958();
    if (__swift_getEnumTagSinglePayload(a2, 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
    }

    v10 = a3[5];
    v11 = a3[6];
    v12 = (a1 + v10);
    v13 = (a2 + v10);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    *(a1 + v11) = *(a2 + v11);
    v15 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v16 = sub_1AC79FBA8();
    v17 = *(*(v16 - 8) + 16);

    v17(a1 + v15, a2 + v15, v16);
    *(a1 + a3[9]) = *(a2 + a3[9]);
  }

  return a1;
}

uint64_t destroy for CommandRecognizer.Interpretation(uint64_t a1, int *a2)
{
  v4 = sub_1AC79F958();
  if (!__swift_getEnumTagSinglePayload(a1, 1, v4))
  {
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v5 = *(a1 + a2[5] + 8);

  v6 = *(a1 + a2[6]);

  v7 = a2[8];
  v8 = sub_1AC79FBA8();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = *(a1 + a2[9]);
}

char *initializeWithCopy for CommandRecognizer.Interpretation(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F958();
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = a3[5];
  v9 = a3[6];
  v10 = &a1[v8];
  v11 = &a2[v8];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;
  *&a1[v9] = *&a2[v9];
  v13 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v14 = sub_1AC79FBA8();
  v15 = *(*(v14 - 8) + 16);

  v15(&a1[v13], &a2[v13], v14);
  *&a1[a3[9]] = *&a2[a3[9]];

  return a1;
}

char *assignWithCopy for CommandRecognizer.Interpretation(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F958();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (!EnumTagSinglePayload)
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v6 - 8) + 16))(a1, a2, v6);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
LABEL_7:
  v11 = a3[5];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  v14 = *(v12 + 1);
  *(v12 + 1) = *(v13 + 1);

  v15 = a3[6];
  v16 = *&a1[v15];
  *&a1[v15] = *&a2[v15];

  v17 = a3[7];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *v18 = *v19;
  *(v18 + 1) = *(v19 + 1);
  v20 = a3[8];
  v21 = sub_1AC79FBA8();
  (*(*(v21 - 8) + 24))(&a1[v20], &a2[v20], v21);
  v22 = a3[9];
  v23 = *&a2[v22];
  v24 = *&a1[v22];
  *&a1[v22] = v23;

  return a1;
}

char *initializeWithTake for CommandRecognizer.Interpretation(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F958();
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v8] = *&a2[v8];
  v9 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v10 = sub_1AC79FBA8();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  *&a1[a3[9]] = *&a2[a3[9]];
  return a1;
}

char *assignWithTake for CommandRecognizer.Interpretation(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F958();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (!EnumTagSinglePayload)
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v6 - 8) + 32))(a1, a2, v6);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
LABEL_7:
  v11 = a3[5];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = *(v12 + 1);
  *v12 = v15;
  *(v12 + 1) = v14;

  v17 = a3[6];
  v18 = *&a1[v17];
  *&a1[v17] = *&a2[v17];

  v19 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v20 = sub_1AC79FBA8();
  (*(*(v20 - 8) + 40))(&a1[v19], &a2[v19], v20);
  v21 = a3[9];
  v22 = *&a1[v21];
  *&a1[v21] = *&a2[v21];

  return a1;
}

void sub_1AC725A48()
{
  sub_1AC5DBDA8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1AC79FBA8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for CommandRecognizer.Argument(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v7;
    v8 = *(a3 + 24);
    v9 = sub_1AC79FBA8();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], &a2[v8], v9);
    v10(&v4[*(a3 + 28)], &a2[*(a3 + 28)], v9);
  }

  return v4;
}

uint64_t destroy for CommandRecognizer.Argument(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);

  v5 = *(a2 + 24);
  v6 = sub_1AC79FBA8();
  v9 = *(*(v6 - 8) + 8);
  (v9)((v6 - 8), a1 + v5, v6);
  v7 = a1 + *(a2 + 28);

  return v9(v7, v6);
}

uint64_t initializeWithCopy for CommandRecognizer.Argument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  v7 = *(a3 + 24);
  v8 = sub_1AC79FBA8();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v9(a1 + *(a3 + 28), a2 + *(a3 + 28), v8);
  return a1;
}

uint64_t assignWithCopy for CommandRecognizer.Argument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a3 + 24);
  v8 = sub_1AC79FBA8();
  v9 = *(*(v8 - 8) + 24);
  v9(a1 + v7, a2 + v7, v8);
  v9(a1 + *(a3 + 28), a2 + *(a3 + 28), v8);
  return a1;
}

uint64_t initializeWithTake for CommandRecognizer.Argument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = sub_1AC79FBA8();
  v8 = *(*(v7 - 8) + 32);
  v8(a1 + v6, a2 + v6, v7);
  v8(a1 + *(a3 + 28), a2 + *(a3 + 28), v7);
  return a1;
}

uint64_t assignWithTake for CommandRecognizer.Argument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  v8 = *(a3 + 24);
  v9 = sub_1AC79FBA8();
  v10 = *(*(v9 - 8) + 40);
  v10(a1 + v8, a2 + v8, v9);
  v10(a1 + *(a3 + 28), a2 + *(a3 + 28), v9);
  return a1;
}

uint64_t sub_1AC726004()
{
  result = sub_1AC79FBA8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommandRecognizer.Argument.Presence(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC726180(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_130_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC7261C4()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v0;
}

uint64_t sub_1AC72621C()
{
  v1 = OUTLINED_FUNCTION_25();
  v3 = v2(v1);
  OUTLINED_FUNCTION_80(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1AC726270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AC6B2F6C;

  return sub_1AC721AFC(a1, v4, v5, v7, v6);
}

uint64_t sub_1AC726388(uint64_t a1)
{
  v2 = *(a1 + 72);

  return a1;
}

uint64_t sub_1AC7263B4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_1AC723E94() & 1;
}

unint64_t sub_1AC7263FC()
{
  result = qword_1EB56AB40;
  if (!qword_1EB56AB40)
  {
    sub_1AC5CF764(255, &unk_1EB56AB48, 0x1E699B9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AB40);
  }

  return result;
}

uint64_t sub_1AC726464()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_8_13@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 32);
  result = v1 + a1;
  v6 = *(v3 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_13@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = (v2 + a2);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + x8_0) = (v16 & 1) == 0;

  return Transcriber.reportingOptions.getter(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_59_7()
{
  v4 = *(v2 + v1);
  v5 = *(v0 + 40);

  return sub_1AC7A0E78();
}

uint64_t sub_1AC72657C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DBA0, &unk_1AC7B2020);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = a1[2];
  if (!v8)
  {
LABEL_5:
    if (off_1ED937D60 != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v16 = sub_1AC79FDE8();
      __swift_project_value_buffer(v16, qword_1ED9386C8);
      v17 = sub_1AC79FDC8();
      v18 = sub_1AC7A05F8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1AC5CFE74(0xD000000000000025, 0x80000001AC7B7290, v21);
        _os_log_impl(&dword_1AC5BC000, v17, v18, "Failed precondition: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1B26EAB10](v20, -1, -1);
        MEMORY[0x1B26EAB10](v19, -1, -1);
      }

      __break(1u);
LABEL_9:
      swift_once();
    }
  }

  v10 = a1[4];
  v9 = a1[5];
  OUTLINED_FUNCTION_99();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  if (v8 != 1)
  {

    goto LABEL_5;
  }

  v12 = v11;
  v13 = *(*v1 + 104);
  OUTLINED_FUNCTION_99();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AC727520;
  *(v14 + 24) = v12;
  v21[0] = sub_1AC6AA814;
  v21[1] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D338, &qword_1AC7AEA80);
  sub_1AC7A02A8();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AC726824(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DB98, &unk_1AC7B2010);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = a1[2];
  if (!v8)
  {
LABEL_5:
    if (off_1ED937D60 != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v16 = sub_1AC79FDE8();
      __swift_project_value_buffer(v16, qword_1ED9386C8);
      v17 = sub_1AC79FDC8();
      v18 = sub_1AC7A05F8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1AC5CFE74(0xD000000000000025, 0x80000001AC7B7290, v21);
        _os_log_impl(&dword_1AC5BC000, v17, v18, "Failed precondition: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1B26EAB10](v20, -1, -1);
        MEMORY[0x1B26EAB10](v19, -1, -1);
      }

      __break(1u);
LABEL_9:
      swift_once();
    }
  }

  v10 = a1[4];
  v9 = a1[5];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  if (v8 != 1)
  {

    goto LABEL_5;
  }

  v12 = v11;
  v13 = *(*v1 + 104);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AC727520;
  *(v14 + 24) = v12;
  v21[0] = sub_1AC6A92C0;
  v21[1] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D360, &qword_1AC7AEAB8);
  sub_1AC7A02A8();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AC726AD4(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC769F9C(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC726B2C(void *a1, double a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC76A8C0(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC726B98(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFE94(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARLanguageDetectorResultStream();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC726C44()
{
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetectorResultStream();
  OUTLINED_FUNCTION_0_19();
  sub_1AC7274A8(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC726CC0()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARLanguageDetectorResultStream();
    OUTLINED_FUNCTION_0_19();
    sub_1AC7274A8(v1, v2, v3);
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC726D88()
{
  v1 = *v0;
  type metadata accessor for EARLanguageDetectorResultStream();
  sub_1AC7274A8(&qword_1EB56C9D8, v2, type metadata accessor for EARLanguageDetectorResultStream);
  return sub_1AC79FC28();
}

uint64_t sub_1AC726E00()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetectorResultStream();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC726E58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARLanguageDetectorResultStream();
  v6 = sub_1AC7274A8(&qword_1EB56C9D8, v5, type metadata accessor for EARLanguageDetectorResultStream);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC726EE0()
{
  v1 = *v0;
  type metadata accessor for EARLanguageDetectorResultStream();
  sub_1AC7274A8(&qword_1EB56C9D8, v2, type metadata accessor for EARLanguageDetectorResultStream);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC726F74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EARLanguageDetectorResultStream();
  sub_1AC7274A8(&qword_1EB56C9D8, v3, type metadata accessor for EARLanguageDetectorResultStream);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_1AC727010()
{
  result = xpcInterface_EARLanguageDetectorResultStream();
  qword_1EB56E898 = result;
  return result;
}

id sub_1AC727038(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC6Speech31EARLanguageDetectorResultStream8XPCProxy_enqueue;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DB88, &unk_1AC7B1FF8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v2[v6] = sub_1AC6E54A8();

  sub_1AC6E4278(a1, a2);

  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  sub_1AC6E5440(a2);
  return v10;
}

uint64_t sub_1AC727100(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC6Speech31EARLanguageDetectorResultStream8XPCProxy_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DB90, &qword_1AC7B2008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(inited + 32) = sub_1AC727528;
  *(inited + 40) = v5;
  v6 = a1;
  sub_1AC726824(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC72720C(void *a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCC6Speech31EARLanguageDetectorResultStream8XPCProxy_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DB90, &qword_1AC7B2008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_99();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(inited + 32) = sub_1AC7274F0;
  *(inited + 40) = v7;
  v8 = a1;
  sub_1AC726824(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC7274A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1AC7274F0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  return sub_1AC726B2C(v2, v3);
}

uint64_t sub_1AC727528(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_1AC726AD4(v2);
}

uint64_t sub_1AC727560(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    if (![v2 code])
    {

      return 4;
    }

    if ([v2 code] == 2)
    {

      return 1;
    }

    v4 = [v2 code];

    if (v4 == 3)
    {
      return 2;
    }
  }

  else if (*(a2 + 176) != 1)
  {
    return 3;
  }

  return 0;
}

uint64_t sub_1AC727600(void *a1)
{
  if (!a1)
  {
    return 12589;
  }

  v1 = a1;
  if ([v1 isFinal] & 1) != 0 || (sub_1AC648F8C(), (v2))
  {

    return 12589;
  }

  result = sub_1AC648F8C();
  if ((v5 & 1) == 0)
  {
    v3 = sub_1AC7A0CC8();

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1AC7276A4()
{
  type metadata accessor for Instrumentation();
  v0 = swift_allocObject();
  result = sub_1AC72A780();
  qword_1EB56E6E8 = v0;
  return result;
}

void sub_1AC7276E0()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = sub_1AC79F958();
  v11 = OUTLINED_FUNCTION_40(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  v19 = OUTLINED_FUNCTION_23_17();
  sub_1AC5DC36C(v19, v20);
  OUTLINED_FUNCTION_96(v9, 1, v10);
  if (v21)
  {
    sub_1AC5DC870(v9);
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v22(v18, v9, v10);
    v23 = *(v0 + 16);
    sub_1AC644160();
    (*(v13 + 8))(v18, v10);
  }

  if (v3 >> 62)
  {
    v24 = sub_1AC7A08E8();
  }

  else
  {
    v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 == 2)
  {
    v25 = v3 & 0xC000000000000001;
    sub_1AC61C25C(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1B26E95B0](0, v3);
    }

    else
    {
      v26 = *(v3 + 32);
    }

    v27 = *(v26 + 16);
    v28 = v27;

    sub_1AC61C25C(1, v25 == 0, v3);
    if (v25)
    {
      v29 = *(MEMORY[0x1B26E95B0](1, v3) + 16);
      v30 = v29;
      swift_unknownObjectRelease();
      if (!v27)
      {

        goto LABEL_39;
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_39;
      }

      v29 = *(*(v3 + 40) + 16);
      v35 = v29;
    }

    v36 = [v28 startedOrChanged];
    if (v36)
    {
      v37 = v36;
      if ([v36 exists])
      {
        v38 = *(v1 + 24);
        v39 = v28;
        v40 = sub_1AC6442A4();

        OUTLINED_FUNCTION_3_14();
        sub_1AC707118(v41, v42, v43, v44, v45, v40);
        if (v29)
        {
          v46 = [v29 ended];
          if (v46 || (v46 = [v29 failed]) != 0)
          {

            v47 = [v29 ended];
            if (v47)
            {
              v48 = v47;
              v49 = [v47 status];

              if (v49 == 1)
              {
                v50 = 0x53534543435553;
              }

              else
              {
                v50 = 0x4C79646165726C41;
              }

              if (v49 == 1)
              {
                v51 = 0xE700000000000000;
              }

              else
              {
                v51 = 0xED0000646564616FLL;
              }
            }

            else
            {
              v51 = 0xE600000000000000;
              v50 = 0x64656C696146;
            }

            v55 = 0x3D737574617453;
            v56 = 0xE700000000000000;
            MEMORY[0x1B26E8C40](v50, v51);

            v52 = v55;
            v53 = v56;
            v54 = sub_1AC6442A4();
            sub_1AC7077F4("ondevice_preheat_time", 21, 2, v52, v53, v54);
          }
        }

        else
        {
        }

        goto LABEL_39;
      }
    }

    goto LABEL_39;
  }

  if (v24 >= 1)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v31 = sub_1AC79FDE8();
    __swift_project_value_buffer(v31, qword_1ED9386C8);

    v32 = sub_1AC79FDC8();
    v33 = sub_1AC7A05F8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = sub_1AC61C24C(v3);

      _os_log_impl(&dword_1AC5BC000, v32, v33, "Unexpected pending preheat event count %ld", v34, 0xCu);
      OUTLINED_FUNCTION_70();
    }

    else
    {
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_105();
}

void sub_1AC727BA8()
{
  OUTLINED_FUNCTION_104();
  v55 = v0;
  v59 = v2;
  v60 = v1;
  v58 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v11 = OUTLINED_FUNCTION_167(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = sub_1AC79F958();
  v21 = OUTLINED_FUNCTION_40(v20);
  v57 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v56 = &v55 - v29;
  v30 = [objc_opt_self() systemClientId];
  v31 = sub_1AC79FF68();
  v33 = v32;

  v34 = v31 == v9 && v33 == v7;
  if (v34)
  {
  }

  else
  {
    v35 = sub_1AC7A0D38();

    if ((v35 & 1) == 0)
    {
LABEL_35:
      OUTLINED_FUNCTION_105();
      return;
    }
  }

  if (!v60 || v59 || (OUTLINED_FUNCTION_96(v5, 1, v20), !v34) || (OUTLINED_FUNCTION_96(v58, 1, v20), !v34))
  {
    sub_1AC5DC36C(v5, v19);
    OUTLINED_FUNCTION_96(v19, 1, v20);
    if (v34)
    {
      sub_1AC5DC870(v19);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3();
      }

      v41 = sub_1AC79FDE8();
      __swift_project_value_buffer(v41, qword_1ED9386C8);
      v42 = sub_1AC79FDC8();
      v43 = sub_1AC7A05F8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1AC5BC000, v42, v43, "SELF: asrId is nil", v44, 2u);
        OUTLINED_FUNCTION_70();
      }
    }

    else
    {
      v46 = v56;
      v45 = v57;
      v47 = *(v57 + 32);
      v47(v56, v19, v20);
      sub_1AC5DC36C(v58, v16);
      OUTLINED_FUNCTION_96(v16, 1, v20);
      if (v48)
      {
        sub_1AC5DC870(v16);
        if (off_1ED937D60 != -1)
        {
          OUTLINED_FUNCTION_3();
        }

        v49 = sub_1AC79FDE8();
        __swift_project_value_buffer(v49, qword_1ED9386C8);
        v50 = sub_1AC79FDC8();
        v51 = sub_1AC7A05F8();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_1AC5BC000, v50, v51, "SELF: requestId is nil", v52, 2u);
          OUTLINED_FUNCTION_70();
        }

        (*(v45 + 8))(v46, v20);
      }

      else
      {
        v47(v27, v16, v20);
        v53 = *(v55 + 16);
        sub_1AC644360(v46, v27);
        v54 = *(v45 + 8);
        v54(v27, v20);
        v54(v46, v20);
      }
    }

    goto LABEL_35;
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v36 = sub_1AC79FDE8();
  __swift_project_value_buffer(v36, qword_1ED9386C8);
  v60 = sub_1AC79FDC8();
  v37 = sub_1AC7A05E8();
  if (os_log_type_enabled(v60, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1AC5BC000, v60, v37, "SELF: Preheating request being made; non-nil source but nil inputOrigin, asrId, & requestId", v38, 2u);
    OUTLINED_FUNCTION_70();
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC728498()
{
  OUTLINED_FUNCTION_104();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_21_12();
  v16 = OUTLINED_FUNCTION_40(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_96(v1, 1, v15);
  if (v21)
  {
    sub_1AC5DC870(v1);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_7_20();
    v23(v22);
    v24 = *(v0 + 16);
    v4(v2, v10, v8, v6);
    v25 = *(v18 + 8);
    v26 = OUTLINED_FUNCTION_23_17();
    v27(v26);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC728600()
{
  OUTLINED_FUNCTION_104();
  v30 = v3;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_20_15();
  v18 = OUTLINED_FUNCTION_40(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17_11();
  v23 = OUTLINED_FUNCTION_515();
  sub_1AC5DC36C(v23, v24);
  OUTLINED_FUNCTION_96(v1, 1, v17);
  if (v25)
  {
    sub_1AC5DC870(v1);
  }

  else
  {
    v26 = *(v20 + 32);
    v27 = OUTLINED_FUNCTION_429();
    v28(v27);
    v29 = *(v0 + 16);
    v31(v2, v12, v10, v8, v6, v30);
    (*(v20 + 8))(v2, v17);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC728A68()
{
  OUTLINED_FUNCTION_104();
  v29 = v2;
  v30 = v3;
  v4 = v0;
  v6 = v5;
  v28 = v7;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_11_18();
  v17 = OUTLINED_FUNCTION_40(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v24 = v23 - v22;
  sub_1AC5DC36C(v11, v1);
  OUTLINED_FUNCTION_6_13(v1);
  if (v25)
  {
    sub_1AC5DC870(v1);
  }

  else
  {
    (*(v19 + 32))(v24, v1, v16);
    v26 = *(v4 + 16);
    v29(v24, v9, v28, v6);
    (*(v19 + 8))(v24, v16);
  }

  v27 = *(v4 + 24);
  OUTLINED_FUNCTION_3_14();
  v30();
  OUTLINED_FUNCTION_105();
}

void sub_1AC728BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, __int128 *a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  OUTLINED_FUNCTION_104();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v113 = v41;
  v114 = v42;
  v110 = v43;
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v49);
  v50 = OUTLINED_FUNCTION_20_15();
  v51 = OUTLINED_FUNCTION_40(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6();
  v58 = v57 - v56;
  v109 = v45;
  sub_1AC5DC36C(v45, v32);
  OUTLINED_FUNCTION_96(v32, 1, v50);
  v111 = v40;
  v112 = v38;
  if (v59)
  {
    v61 = v31;
    sub_1AC5DC870(v32);
    v63 = a25;
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v60(v58, v32, v50);
    v61 = v31;
    v62 = v31[2];
    OUTLINED_FUNCTION_23_17();
    v63 = a25;
    sub_1AC646270();
    (*(v53 + 8))(v58, v50);
  }

  if (v114)
  {
    v64 = v36;
    v65 = v61[5];
    sub_1AC762938(a28, a26);
    if (v63)
    {
      v66 = v63;
      [v66 code];
      v67 = sub_1AC7A0CC8();
      v69 = v68;
      v70 = [v66 domain];
      if (!v70)
      {
        __break(1u);
        return;
      }

      v71 = v70;
      sub_1AC762838(a28, v67, v69, v70);
    }

    else
    {
      v72 = sub_1AC76244C(a28);
      sub_1AC762044(104, v72);
    }

    v36 = v64;
  }

  if (v113)
  {
    v73 = v61[6];
    LOBYTE(v108) = 2;
    sub_1AC5DBEEC(v109, v110, v111, v112, a29, a30, a21, a22, 0x100000000uLL, v108, v63, a31, a26);
  }

  v74 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v74 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v74)
  {
  }

  else
  {
    v34 = 0x80000001AC7B9C10;
    v36 = 0xD000000000000018;
  }

  v75 = v61[4];
  sub_1AC6F0980(v36, v34, a21, a22, a23, a24);

  v76 = *(a26 + 112);
  if (v76)
  {
    v77 = *(v76 + 16);
    if (v77)
    {
      v78 = *(a26 + 112);

      v79 = 32;
      do
      {
        v80 = *(v76 + v79);
        if (v80 >> 62)
        {
          if (v80 < 0)
          {
            v101 = *(v76 + v79);
          }

          v81 = sub_1AC7A08E8();
        }

        else
        {
          v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v81 == 2)
        {
          v82 = v80 & 0xC000000000000001;
          sub_1AC61C25C(0, (v80 & 0xC000000000000001) == 0, v80);
          if ((v80 & 0xC000000000000001) != 0)
          {

            v84 = MEMORY[0x1B26E95B0](0, v80);
          }

          else
          {
            v83 = *(v80 + 32);

            v84 = v83;
          }

          v85 = v84;
          v86 = [v84 unsignedLongLongValue];

          sub_1AC61C25C(1, v82 == 0, v80);
          if (v82)
          {
            v87 = MEMORY[0x1B26E95B0](1, v80);
          }

          else
          {
            v87 = *(v80 + 40);
          }

          v88 = v87;

          v89 = [v88 unsignedLongLongValue];

          v90 = v61[3];
          OUTLINED_FUNCTION_3_14();
          sub_1AC707118(v91, v92, v93, v94, v95, v86);
          OUTLINED_FUNCTION_3_14();
          sub_1AC7077F4(v96, v97, v98, v99, v100, v89);
        }

        v79 += 8;
        --v77;
      }

      while (v77);
    }
  }

  v102 = v61[3];
  sub_1AC7A09C8();
  MEMORY[0x1B26E8C40](0x203D20524E53, 0xE600000000000000);
  v103 = *(a26 + 56);
  *(a26 + 60);
  OUTLINED_FUNCTION_14_16();
  sub_1AC7A0428();
  MEMORY[0x1B26E8C40](0xD000000000000014, 0x80000001AC7B9BC0);
  v104 = *(a26 + 72);
  OUTLINED_FUNCTION_14_16();
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7B9BE0);
  v105 = *(a26 + 64) * 1000.0;
  OUTLINED_FUNCTION_14_16();
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](0x545220555043202CLL, 0xEC000000203D2046);
  v106 = *(a26 + 84);
  OUTLINED_FUNCTION_14_16();
  sub_1AC7A0428();
  v107 = mach_continuous_time();
  sub_1AC708070("ES: Engine Complete", 19, 2, 0, 0xE000000000000000, v107);

  OUTLINED_FUNCTION_105();
}

void sub_1AC729570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_104();
  v23 = v21;
  v25 = v24;
  v93 = v26;
  v94 = v27;
  v92 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v97 = a21;
  v98 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v92 - v40;
  v42 = sub_1AC79F958();
  v43 = OUTLINED_FUNCTION_40(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17_11();
  v48 = *(v25 + 4);
  v49 = *v25;
  sub_1AC5DC36C(v34, v41);
  OUTLINED_FUNCTION_6_13(v41);
  v95 = v23;
  v96 = v32;
  if (v83)
  {
    sub_1AC5DC870(v41);
    if (v30)
    {
      goto LABEL_6;
    }

LABEL_37:
    OUTLINED_FUNCTION_105();
    return;
  }

  v50 = v49 | (v48 << 32);
  (*(v45 + 32))(v22, v41, v42);
  v51 = *(v23 + 16);
  BYTE4(v100) = BYTE4(v50);
  LODWORD(v100) = v50;
  sub_1AC645020(v22, v32, v98, v30, v92, v93, v94, &v100, v97);
  v52 = *(v45 + 8);
  v53 = OUTLINED_FUNCTION_429();
  v54(v53);
  if (!v30)
  {
    goto LABEL_37;
  }

LABEL_6:
  v55 = v30;
  v56 = [v55 recognition];
  v57 = [v56 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v58 = sub_1AC7A0158();

  v59 = sub_1AC61C24C(v58);
  if (v59)
  {
    v60 = v59;
    v100 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v59 & ~(v59 >> 63), 0);
    if (v60 < 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v94 = v55;
    v61 = 0;
    v62 = v100;
    do
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x1B26E95B0](v61, v58);
      }

      else
      {
        v63 = *(v58 + 8 * v61 + 32);
      }

      v64 = v63;
      v65 = [v63 tokenName];
      v66 = sub_1AC79FF68();
      v68 = v67;

      v100 = v62;
      v70 = *(v62 + 16);
      v69 = *(v62 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1AC6310CC(v69 > 1, v70 + 1, 1);
        v62 = v100;
      }

      ++v61;
      *(v62 + 16) = v70 + 1;
      v71 = v62 + 16 * v70;
      *(v71 + 32) = v66;
      *(v71 + 40) = v68;
    }

    while (v60 != v61);

    v55 = v94;
  }

  else
  {

    v62 = MEMORY[0x1E69E7CC0];
  }

  v100 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  sub_1AC649C74();
  sub_1AC79FEA8();

  if ([v55 isFinal] & 1) != 0 || (sub_1AC648F8C(), (v72))
  {
    v73 = -1;
    v74 = v98;
    v75 = v96;
LABEL_22:
    if (sub_1AC72A62C(v75, v74))
    {
    }

    v78 = *(v95 + 24);
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1AC7A09C8();

    OUTLINED_FUNCTION_27_11();
    v100 = v79;
    v101 = v80;
    v81 = OUTLINED_FUNCTION_429();
    MEMORY[0x1B26E8C40](v81);

    OUTLINED_FUNCTION_25_14();
    v82 = [v55 isFinal];
    v83 = v82 == 0;
    if (v82)
    {
      v84 = 1702195828;
    }

    else
    {
      v84 = 0x65736C6166;
    }

    if (v83)
    {
      v85 = 0xE500000000000000;
    }

    else
    {
      v85 = 0xE400000000000000;
    }

    MEMORY[0x1B26E8C40](v84, v85);

    v86 = OUTLINED_FUNCTION_5_19();
    MEMORY[0x1B26E8C40](v86);
    v87 = [v55 firstResultAfterResume];
    v88 = v87 == 0;
    if (v87)
    {
      v89 = 1702195828;
    }

    else
    {
      v89 = 0x65736C6166;
    }

    if (v88)
    {
      v90 = 0xE500000000000000;
    }

    else
    {
      v90 = 0xE400000000000000;
    }

    MEMORY[0x1B26E8C40](v89, v90);

    OUTLINED_FUNCTION_31_11();
    v99 = v73;
    v91 = sub_1AC7A0CC8();
    MEMORY[0x1B26E8C40](v91);

    sub_1AC708070("ES: Package Recognition", 23, 2, v100, v101, v97);

    goto LABEL_37;
  }

  v76 = sub_1AC648F8C();
  if ((v77 & 1) == 0)
  {
    v73 = v76;
    v74 = v98;
    v75 = v96;
    if ((v73 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
}

void sub_1AC729A70(uint64_t a1, uint64_t a2, int64_t a3, char *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v162 = a5;
  v163 = a8;
  v161 = a6;
  v164 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v15 = OUTLINED_FUNCTION_167(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v18 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v156 = &v151 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v151 - v24;
  v26 = sub_1AC79F958();
  v27 = OUTLINED_FUNCTION_40(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v152 = (v32 - v33);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v154 = &v151 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v151 - v37;
  v158 = a1;
  v39 = a1;
  v41 = v40;
  sub_1AC5DC36C(v39, v25);
  OUTLINED_FUNCTION_96(v25, 1, v41);
  v153 = v20;
  if (v79)
  {
    v46 = a2;
    v43 = v9;
    sub_1AC5DC870(v25);
    v47 = a3;
    v48 = v164;
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v42(v38, v25, v41);
    v43 = v9;
    v44 = *(v9 + 16);
    v45 = a7;
    v46 = a2;
    v25 = v164;
    sub_1AC645590(v38, a2, a3, v164, v161, v45, v163);
    (*(v29 + 8))(v38, v41);
    v47 = a3;
    v48 = v25;
  }

  v157 = v41;
  v155 = v29;
  if (v48)
  {
    v160 = v46;
    v161 = v47;
    v49 = v48;
    v50 = [v49 recognition];
    v51 = [v50 oneBest];

    sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
    v52 = sub_1AC7A0158();

    v53 = sub_1AC61C24C(v52);
    v159 = v43;
    if (v53)
    {
      v54 = v53;
      v166 = MEMORY[0x1E69E7CC0];
      sub_1AC6310CC(0, v53 & ~(v53 >> 63), 0);
      if (v54 < 0)
      {
        __break(1u);
LABEL_62:
        v92 = MEMORY[0x1B26E95B0](0, v52);
        goto LABEL_41;
      }

      v151 = v49;
      v55 = 0;
      v56 = v166;
      do
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v57 = MEMORY[0x1B26E95B0](v55, v52);
        }

        else
        {
          v57 = *(v52 + 8 * v55 + 32);
        }

        v58 = v57;
        v59 = [v57 tokenName];
        v60 = sub_1AC79FF68();
        v62 = v61;

        v166 = v56;
        v64 = *(v56 + 16);
        v63 = *(v56 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1AC6310CC(v63 > 1, v64 + 1, 1);
          v56 = v166;
        }

        ++v55;
        *(v56 + 16) = v64 + 1;
        v65 = v56 + 16 * v64;
        *(v65 + 32) = v60;
        *(v65 + 40) = v62;
      }

      while (v54 != v55);

      v49 = v151;
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }

    v166 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC649C74();
    v66 = sub_1AC79FEA8();
    v68 = v67;

    if ([v49 isFinal] & 1) != 0 || (sub_1AC648F8C(), (v69))
    {
      v70 = -1;
    }

    else
    {
      v71 = sub_1AC648F8C();
      if (v72)
      {
LABEL_71:
        __break(1u);
        return;
      }

      v70 = v71;
      if (v71 < 0)
      {
        goto LABEL_65;
      }
    }

    if (sub_1AC72A62C(v160, v161))
    {

      v68 = 0xE800000000000000;
      v66 = 0x4445544341444552;
    }

    v73 = v159;
    v74 = *(v159 + 24);
    v166 = 0;
    v167 = 0xE000000000000000;
    sub_1AC7A09C8();

    OUTLINED_FUNCTION_27_11();
    v166 = v75;
    v167 = v76;
    v77 = v66;
    v43 = v73;
    MEMORY[0x1B26E8C40](v77, v68);

    OUTLINED_FUNCTION_25_14();
    v78 = [v49 isFinal];
    v79 = v78 == 0;
    if (v78)
    {
      v80 = 1702195828;
    }

    else
    {
      v80 = 0x65736C6166;
    }

    if (v79)
    {
      v81 = 0xE500000000000000;
    }

    else
    {
      v81 = 0xE400000000000000;
    }

    MEMORY[0x1B26E8C40](v80, v81);

    v82 = OUTLINED_FUNCTION_5_19();
    MEMORY[0x1B26E8C40](v82);
    v83 = [v49 firstResultAfterResume];
    v84 = v83 == 0;
    if (v83)
    {
      v85 = 1702195828;
    }

    else
    {
      v85 = 0x65736C6166;
    }

    if (v84)
    {
      v86 = 0xE500000000000000;
    }

    else
    {
      v86 = 0xE400000000000000;
    }

    MEMORY[0x1B26E8C40](v85, v86);

    OUTLINED_FUNCTION_31_11();
    v165 = v70;
    v87 = sub_1AC7A0CC8();
    MEMORY[0x1B26E8C40](v87);

    sub_1AC708070("ES: Final Recognition", 21, 2, v166, v167, v163);

    v48 = v164;
  }

  a3 = v162[2];
  if (a3 < 2 || !v48)
  {
    return;
  }

  v25 = (v162 + 4);
  v88 = v162[4];
  v89 = v162[6];
  v90 = [v48 recognition];
  v91 = [v90 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v52 = sub_1AC7A0158();

  if (!sub_1AC61C24C(v52))
  {

    return;
  }

  sub_1AC61C25C(0, (v52 & 0xC000000000000001) == 0, v52);
  if ((v52 & 0xC000000000000001) != 0)
  {
    goto LABEL_62;
  }

  v92 = *(v52 + 32);
LABEL_41:
  v93 = v92;

  [v93 start];

  OUTLINED_FUNCTION_13_12();
  if (!(v95 ^ v96 | v79))
  {
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v94 <= -9.22337204e18)
  {
    goto LABEL_63;
  }

  if (v94 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v97 = v94;
  if (a3 > v94)
  {
    if (v97 < 0)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v98 = *&v25[16 * v97 + 8];
    v99 = v162[5];
    v100 = *(v43 + 24);
    OUTLINED_FUNCTION_3_14();
    sub_1AC707118(v101, v102, v103, v104, v105, v106);
    OUTLINED_FUNCTION_3_14();
    sub_1AC7077F4(v107, v108, v109, v110, v111, v98);
    v112 = v156;
    sub_1AC5DC36C(v158, v156);
    v113 = v157;
    OUTLINED_FUNCTION_96(v112, 1, v157);
    if (v79)
    {
      sub_1AC5DC870(v112);
    }

    else
    {
      v114 = v155;
      OUTLINED_FUNCTION_19_13();
      v163 = v100;
      v164 = v98;
      v115 = v154;
      v116(v154, v112, v113);
      v117 = *(v43 + 16);
      OUTLINED_FUNCTION_28_13();
      sub_1AC6454EC(v118, v119, v120, v164, v121, v122, v123, v124, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
      v125 = v115;
      v98 = v164;
      (*(v114 + 8))(v125, v113);
    }

    OUTLINED_FUNCTION_13_12();
    if (!(v95 ^ v96 | v79))
    {
      goto LABEL_67;
    }

    if (v126 <= -9.22337204e18)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v126 >= 9.22337204e18)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v127 = v126;
    if (a3 > v126)
    {
      if (v127 < 0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v128 = *&v25[16 * v127 + 8];
      OUTLINED_FUNCTION_3_14();
      sub_1AC707118(v129, v130, v131, v132, v133, v98);
      OUTLINED_FUNCTION_3_14();
      sub_1AC7077F4(v134, v135, v136, v137, v138, v128);
      v139 = v153;
      sub_1AC5DC36C(v158, v153);
      v140 = v157;
      OUTLINED_FUNCTION_96(v139, 1, v157);
      if (v79)
      {
        sub_1AC5DC870(v139);
      }

      else
      {
        v141 = v155;
        v142 = v152;
        (*(v155 + 32))(v152, v139, v140);
        v143 = *(v43 + 16);
        OUTLINED_FUNCTION_28_13();
        sub_1AC6454F8(v144, v145, v146, v128, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
        (*(v141 + 8))(v142, v140);
      }
    }
  }
}