uint64_t static FileStoreError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v58 = sub_192F95A8C();
  v3 = *(v58 - 8);
  v5 = MEMORY[0x1EEE9AC00](v58, v4);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v56 - v12;
  v14 = type metadata accessor for FileStoreError();
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v56 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151B8);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v30 = &v56 - v29;
  v31 = &v56 + *(v28 + 56) - v29;
  sub_192CB4DE8(a1, &v56 - v29);
  sub_192CB4DE8(v59, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_192CB4DE8(v30, v25);
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151C0) + 48);
    v41 = *&v25[v40];
    if (!swift_getEnumCaseMultiPayload())
    {
      v49 = *&v31[v40];
      v50 = v31;
      v51 = v58;
      (*(v3 + 32))(v13, v50, v58);
      v52 = sub_192F9598C();
      v53 = *(v3 + 8);
      v53(v13, v51);
      v53(v25, v51);
      if (v52)
      {
        v39 = v41 == v49;
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v18 = v25;
LABEL_12:
    (*(v3 + 8))(v18, v58);
    sub_192CB4E4C(v30);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_192CB4DE8(v30, v18);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151C0) + 48);
    v43 = *&v18[v42];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v44 = *&v31[v42];
      v46 = v57;
      v45 = v58;
      (*(v3 + 32))(v57, v31, v58);
      v47 = sub_192F9598C();
      v48 = *(v3 + 8);
      v48(v46, v45);
      v48(v18, v45);
      if (v47)
      {
        v39 = v43 == v44;
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

  sub_192CB4DE8(v30, v22);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151C0) + 48);
  v34 = *&v22[v33];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v18 = v22;
    goto LABEL_12;
  }

  v35 = *&v31[v33];
  v36 = v58;
  (*(v3 + 32))(v10, v31, v58);
  v37 = sub_192F9598C();
  v38 = *(v3 + 8);
  v38(v10, v36);
  v38(v22, v36);
  if ((v37 & 1) == 0)
  {
LABEL_19:
    sub_192CB4EB4(v30);
    return 0;
  }

  v39 = v34 == v35;
LABEL_15:
  v54 = v39;
  sub_192CB4EB4(v30);
  return v54;
}

uint64_t type metadata accessor for FileStoreError()
{
  result = qword_1EAE11C30;
  if (!qword_1EAE11C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192CB4DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileStoreError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192CB4E4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192CB4EB4(uint64_t a1)
{
  v2 = type metadata accessor for FileStoreError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_192CB4F14()
{
  result = qword_1EAE151C8;
  if (!qword_1EAE151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE151C8);
  }

  return result;
}

uint64_t sub_192CB4F68(void *a1)
{
  a1[1] = sub_192CB50A4(&qword_1EAE151D0);
  a1[2] = sub_192CB50A4(&qword_1EAE151D8);
  result = sub_192CB50A4(&unk_1EAE151E0);
  a1[3] = result;
  return result;
}

uint64_t sub_192CB4FF4(uint64_t a1)
{
  v2 = sub_192CB50A4(&qword_1EAE151D0);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_192CB504C(uint64_t a1)
{
  v2 = sub_192CB50A4(&qword_1EAE151D0);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_192CB50A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileStoreError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FileStoreProtectionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_192CB52B8()
{
  sub_192CB531C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_192CB531C()
{
  if (!qword_1EAE11C50)
  {
    sub_192F95A8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAE11C50);
    }
  }
}

uint64_t FlagKeys.isEnabled.getter()
{
  v1 = *v0;
  v5 = &type metadata for FlagKeys;
  v6 = sub_1929247E4();
  v4[0] = v1;
  v2 = sub_192F95E6C();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

uint64_t FlagKeys.hashValue.getter()
{
  v1 = *v0;
  sub_192F9789C();
  MEMORY[0x193B11C90](v1);
  return sub_192F978DC();
}

unint64_t sub_192CB5490()
{
  result = qword_1ED6DE258;
  if (!qword_1ED6DE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DE258);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlagKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FlagKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18AppleMediaServices21ActionContextProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_192CB5660(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_192CB56A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192CB5720()
{
  if (qword_1EAE12488 != -1)
  {
    OUTLINED_FUNCTION_1_51();
    swift_once();
  }

  oslog = qword_1EAE15410;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_36_0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_192FBCD40;
  v0[13] = &type metadata for GranularNotificationAction;
  OUTLINED_FUNCTION_151();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_9_31(v2);
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    v5 = sub_192F967CC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v0[24];
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  OUTLINED_FUNCTION_28();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_192FBCD50;
  sub_19286C588((v0 + 10), (v0 + 18));
  sub_19286CFC8((v0 + 18), v5, v7, v9 + 32);
  *(v1 + 32) = v9;
  __swift_destroy_boxed_opaque_existential_0((v0 + 10));
  v10._object = 0x8000000193021A60;
  v10._countAndFlagsBits = 0xD000000000000021;
  LogInterpolation.init(stringLiteral:)(v10);
  v11 = v8[5];
  v12 = v8[6];
  v13 = v8[7];
  v0[12] = v13;
  v0[13] = &type metadata for GranularNotificationAction.Parameters;
  v0[10] = v11;
  v0[11] = v12;

  static LogInterpolation.safe(_:)((v0 + 10), (v1 + 48));
  sub_1928FC07C((v0 + 10), &unk_1EAE131B0);
  v14 = sub_192F96E7C();
  if (OUTLINED_FUNCTION_8_37(v14, v15, v16, v17, v18, v19, v20, v21, v140, v146, 3, 6, v163, v169, v176, (v0 + 18), 1, 2, oslog))
  {
    v148 = v11;
    v22 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_1_3();
      swift_once();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v23 = swift_allocObject();
    *(v23 + 16) = v13;
    v0[10] = v1;
    v0[11] = sub_192BB97CC;
    v0[12] = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v24 = OUTLINED_FUNCTION_4_48();
    v26 = v25;

    objc_autoreleasePoolPop(v22);
    v8 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    OUTLINED_FUNCTION_28();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_5_34(v27, v28, v29, v30, v31, v32, v33, v34, v141, v148, v153[0], v153[1], v164, v170, v177, aBlock, v35);
    *(v36 + 56) = MEMORY[0x1E69E6158];
    v22[8] = sub_1928FDB30();
    v22[4] = v24;
    v22[5] = v26;
    OUTLINED_FUNCTION_3_49();

    objc_autoreleasePoolPop(v8);
    v11 = v147;
  }

  v37 = v0[24];

  sub_1928F9460(v37, (v0 + 10), &qword_1EAE14D20);
  v38 = v0[13];
  if (!v38)
  {
    sub_1928FC07C((v0 + 10), &qword_1EAE14D20);
    goto LABEL_18;
  }

  v8 = v0[14];
  __swift_project_boxed_opaque_existential_0(v0 + 10, v0[13]);
  v39 = (v8[1])(v38, v8);
  v0[25] = v39;
  __swift_destroy_boxed_opaque_existential_0((v0 + 10));
  if (!v39)
  {
LABEL_18:
    OUTLINED_FUNCTION_36_0();
    v56 = swift_allocObject();
    *(v56 + 16) = *v153;
    v0[13] = &type metadata for GranularNotificationAction;
    OUTLINED_FUNCTION_151();
    v57 = swift_allocObject();
    OUTLINED_FUNCTION_9_31(v57);
    v58 = AMSLogKey();
    if (v58)
    {
      v59 = v58;
      v60 = sub_192F967CC();
    }

    else
    {
      v60 = 0;
    }

    OUTLINED_FUNCTION_28();
    v61 = swift_allocObject();
    OUTLINED_FUNCTION_10_27(v61, v62, v63, v64, v65, v66, v67, v68, v141, v147, v153[0], v153[1], v164, v170, v177, aBlock, v188);
    OUTLINED_FUNCTION_17_25();
    *(v56 + 32) = v8;
    __swift_destroy_boxed_opaque_existential_0((v0 + 10));
    OUTLINED_FUNCTION_12_24();
    v70._countAndFlagsBits = v69 + 12;
    v70._object = (v71 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v70);
    v0[13] = &type metadata for GranularNotificationAction.PerformError;
    *(v0 + 80) = 2;
    static LogInterpolation.safe(_:)((v0 + 10), (v56 + 48));
    sub_1928FC07C((v0 + 10), &unk_1EAE131B0);
    v72 = sub_192F96E5C();
    if (OUTLINED_FUNCTION_8_37(v72, v73, v74, v75, v76, v77, v78, v79, v142, v149, v155, v159, v165, v172, v179, aBlockc, v189, v191, osloga))
    {
      v80 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_1_3();
        swift_once();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v81 = swift_allocObject();
      *(v81 + 16) = v60;
      v0[10] = v56;
      v0[11] = sub_192BB97CC;
      v0[12] = v81;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      v82 = OUTLINED_FUNCTION_4_48();
      v84 = v83;

      objc_autoreleasePoolPop(v80);
      v85 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      OUTLINED_FUNCTION_28();
      v86 = swift_allocObject();
      OUTLINED_FUNCTION_5_34(v86, v87, v88, v89, v90, v91, v92, v93, v143, v150, v156, v160, v166, v173, v180, aBlocka, v94);
      *(v95 + 56) = MEMORY[0x1E69E6158];
      *(v81 + 64) = sub_1928FDB30();
      *(v81 + 32) = v82;
      *(v81 + 40) = v84;
      OUTLINED_FUNCTION_3_49();

      objc_autoreleasePoolPop(v85);
    }

    sub_192CB8E7C();
    swift_allocError();
    *v96 = 2;
    swift_willThrow();
    goto LABEL_35;
  }

  sub_1928F9460(v0[24], (v0 + 10), &qword_1EAE14D20);
  v40 = v0[13];
  if (v40)
  {
    v8 = v0[14];
    __swift_project_boxed_opaque_existential_0(v0 + 10, v0[13]);
    v41 = (v8[2])(v40, v8);
    v0[26] = v41;
    __swift_destroy_boxed_opaque_existential_0((v0 + 10));
    if (v41)
    {
      v42 = v0[24];
      v154 = [objc_allocWithZone(AMSMutableBinaryPromise) init];
      v0[27] = v154;
      v43 = objc_allocWithZone(AMSNotificationSettingsTask);

      v44 = v39;
      swift_unknownObjectRetain();
      v45 = sub_192CB8F08(v11, v12, v44, v41);
      v178 = [v45 fetchAllSettings];
      v0[28] = v178;

      sub_192CB8ED0(v42, (v0 + 10));
      v46 = swift_allocObject();
      OUTLINED_FUNCTION_14_23(v46);
      v47[10] = v154;
      v47[11] = v44;
      v47[12] = v41;
      v0[22] = sub_192CB8F84;
      v0[23] = v47;
      v171 = MEMORY[0x1E69E9820];
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_192CB8110;
      v0[21] = &block_descriptor_24;
      v48 = _Block_copy(aBlock);
      v49 = v44;
      swift_unknownObjectRetain();
      v50 = v154;

      [v178 addSuccessBlock_];
      _Block_release(v48);
      sub_192CB8ED0(v42, (v0 + 10));
      v51 = swift_allocObject();
      OUTLINED_FUNCTION_14_23(v51);
      *(v52 + 80) = v50;
      v0[22] = sub_192CB8F94;
      v0[23] = v52;
      v0[18] = v171;
      v0[19] = 1107296256;
      v0[20] = sub_192CE9DC8;
      v0[21] = &block_descriptor_28_0;
      v53 = _Block_copy(aBlock);
      v54 = v50;

      [v178 addErrorBlock_];
      _Block_release(v53);
      v0[2] = v0;
      v0[7] = aBlock;
      v0[3] = sub_192CB62A8;
      v55 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DD0);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_19294E224;
      v0[13] = &block_descriptor_31_0;
      v0[14] = v55;
      [v54 resultWithCompletion_];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  else
  {
    sub_1928FC07C((v0 + 10), &qword_1EAE14D20);
  }

  OUTLINED_FUNCTION_36_0();
  v97 = swift_allocObject();
  *(v97 + 16) = *v153;
  v0[13] = &type metadata for GranularNotificationAction;
  OUTLINED_FUNCTION_151();
  v98 = swift_allocObject();
  OUTLINED_FUNCTION_9_31(v98);
  v99 = AMSLogKey();
  if (v99)
  {
    v100 = v99;
    v101 = sub_192F967CC();
  }

  else
  {
    v101 = 0;
  }

  OUTLINED_FUNCTION_28();
  v102 = swift_allocObject();
  OUTLINED_FUNCTION_10_27(v102, v103, v104, v105, v106, v107, v108, v109, v141, v147, v153[0], v153[1], v164, v170, v177, aBlock, v188);
  OUTLINED_FUNCTION_17_25();
  *(v97 + 32) = v8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 10));
  OUTLINED_FUNCTION_12_24();
  v111._countAndFlagsBits = v110 + 7;
  v111._object = (v112 | 0x8000000000000000);
  LogInterpolation.init(stringLiteral:)(v111);
  v0[13] = &type metadata for GranularNotificationAction.PerformError;
  *(v0 + 80) = 3;
  static LogInterpolation.safe(_:)((v0 + 10), (v97 + 48));
  sub_1928FC07C((v0 + 10), &unk_1EAE131B0);
  v113 = sub_192F96E5C();
  if (OUTLINED_FUNCTION_8_37(v113, v114, v115, v116, v117, v118, v119, v120, v144, v151, v157, v161, v167, v174, v181, aBlockd, v190, v192, osloga))
  {
    v121 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_1_3();
      swift_once();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v122 = swift_allocObject();
    *(v122 + 16) = v101;
    v0[10] = v97;
    v0[11] = sub_192BB97CC;
    v0[12] = v122;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v123 = OUTLINED_FUNCTION_4_48();
    v125 = v124;

    objc_autoreleasePoolPop(v121);
    v126 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    OUTLINED_FUNCTION_28();
    v127 = swift_allocObject();
    OUTLINED_FUNCTION_5_34(v127, v128, v129, v130, v131, v132, v133, v134, v145, v152, v158, v162, v168, v175, v182, aBlockb, v135);
    *(v136 + 56) = MEMORY[0x1E69E6158];
    *(v122 + 64) = sub_1928FDB30();
    *(v122 + 32) = v123;
    *(v122 + 40) = v125;
    OUTLINED_FUNCTION_3_49();

    objc_autoreleasePoolPop(v126);
  }

  sub_192CB8E7C();
  swift_allocError();
  *v137 = 3;
  swift_willThrow();

LABEL_35:
  v138 = v0[1];

  return v138(0);
}

uint64_t sub_192CB62A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_192CB643C;
  }

  else
  {
    v2 = sub_192CB63B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192CB63B8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);

  swift_unknownObjectRelease();
  v3 = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_192CB643C()
{
  v1 = v0[28];
  v2 = v0[27];
  v3 = v0[25];
  swift_willThrow();

  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4(0);
}

void sub_192CB64D0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v146 = a5;
  v145 = a4;
  v147 = a3;
  v7 = 0;
  v8 = [a1 sections];
  sub_192874CD0(0, &qword_1EAE15200);
  v9 = sub_192F96B0C();

  v148 = a2;
  sub_192CB8ED0(a2, &v166);
  sub_192CB8ED0(&v166, &aBlock);
  v10 = swift_allocObject();
  v11 = v167;
  v10[1] = v166;
  v10[2] = v11;
  v12 = v169;
  v10[3] = v168;
  v10[4] = v12;
  v149 = v10;
  v13 = sub_19295466C(v9);
  *&v155 = v9 & 0xC000000000000001;
  v153 = v9 & 0xFFFFFFFFFFFFFF8;
  v154 = v9 + 32;
  v14 = 0;
  while (1)
  {
    v15 = v13 == v14;
    if (v13 == v14)
    {
      break;
    }

    if (v155)
    {
      v16 = MEMORY[0x193B116C0](v14, v9);
    }

    else
    {
      if (v14 >= *(v153 + 16))
      {
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        sub_192CB9AB8(&aBlock);
        __break(1u);
LABEL_148:
        swift_once();
        goto LABEL_119;
      }

      v16 = *(v9 + 8 * v14 + 32);
    }

    v17 = v16;
    v18 = [v16 items];
    sub_192874CD0(0, &qword_1EAE15208);
    v19 = sub_192F96B0C();

    if (v19 >> 62)
    {
      v5 = sub_192F971FC();
    }

    else
    {
      v5 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      goto LABEL_15;
    }

    v20 = __OFADD__(v14++, 1);
    if (v20)
    {
      goto LABEL_137;
    }
  }

  v14 = sub_19295466C(v9);
LABEL_15:
  v21 = sub_19295466C(v9);
  v22 = 0;
  for (i = v21; ; v21 = i)
  {
    v5 = (v14 == v21) & v15;
    if (v14 == v21 && v15)
    {
      goto LABEL_31;
    }

    if (v155)
    {
      v23 = MEMORY[0x193B116C0](v14, v9);
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_134;
      }

      if (v14 >= *(v153 + 16))
      {
        goto LABEL_135;
      }

      v23 = *(v154 + 8 * v14);
    }

    v24 = v23;
    v25 = [v23 items];
    sub_192874CD0(0, &qword_1EAE15208);
    v26 = sub_192F96B0C();

    if (v15)
    {
LABEL_150:
      sub_192CB9AB8(&aBlock);
      __break(1u);
LABEL_151:
      sub_192CB9AB8(&aBlock);
      __break(1u);
      goto LABEL_152;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x193B116C0](v22, v26);
    }

    else
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_136;
      }

      if (v22 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_138;
      }

      v27 = *(v26 + 8 * v22 + 32);
    }

    v28 = v27;

    v29 = v165;
    v30 = [v28 identifier];
    v31 = sub_192F967CC();
    v33 = v32;

    v170 = v31;
    v171 = v33;
    MEMORY[0x1EEE9AC00](v34, v35);
    v144 = &v170;
    LOBYTE(v29) = sub_192924FF4(sub_1929250EC, v143, v29);

    if (v29)
    {
      break;
    }

    v14 = sub_192CB96C8(v14, v22, 0, v9, sub_192CB7728);
    v22 = v36;
    v15 = v37;
  }

  v21 = v14;
LABEL_31:
  v170 = v9;
  v171 = sub_192CB7728;
  v172 = 0;
  v173 = sub_192CB9AB0;
  v174 = v149;
  v38 = sub_192CB8FA0();
  sub_192CB8FE4(v21, v22, v5, v38, v40, v39 & 1);
  if (!v41)
  {

    sub_192CB9AB8(&aBlock);
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_115;
  }

  v158 = MEMORY[0x1E69E7CC0];
  v151 = v41;
  sub_192F9735C();
  v42 = sub_19295466C(v9);
  v43 = 0;
  while (1)
  {
    v44 = v42 == v43;
    if (v42 == v43)
    {
      break;
    }

    if (v155)
    {
      v45 = MEMORY[0x193B116C0](v43, v9);
    }

    else
    {
      if (v43 >= *(v153 + 16))
      {
        goto LABEL_139;
      }

      v45 = *(v9 + 8 * v43 + 32);
    }

    v46 = v45;
    v47 = [v45 items];
    sub_192874CD0(0, &qword_1EAE15208);
    v48 = sub_192F96B0C();

    if (v48 >> 62)
    {
      v5 = sub_192F971FC();
    }

    else
    {
      v5 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      goto LABEL_47;
    }

    v20 = __OFADD__(v43++, 1);
    if (v20)
    {
      goto LABEL_143;
    }
  }

  v43 = sub_19295466C(v9);
LABEL_47:
  v50 = sub_19295466C(v9);
  v51 = 0;
  while (1)
  {
    v52 = v43 == v50 && v44;
    v53 = v151;
    if (v52)
    {
      break;
    }

    if (v155)
    {
      v54 = MEMORY[0x193B116C0](v43, v9);
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_140;
      }

      if (v43 >= *(v153 + 16))
      {
        goto LABEL_141;
      }

      v54 = *(v154 + 8 * v43);
    }

    v55 = v54;
    v56 = [v54 items];
    sub_192874CD0(0, &qword_1EAE15208);
    v5 = sub_192F96B0C();

    if (v44)
    {
      goto LABEL_151;
    }

    LODWORD(v150) = 0;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x193B116C0](v51, v5);
    }

    else
    {
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_142;
      }

      if (v51 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_144;
      }

      v57 = *(v5 + 8 * v51 + 32);
    }

    v58 = v57;

    v59 = v165;
    v60 = [v58 identifier];
    v61 = sub_192F967CC();
    v63 = v62;

    v5 = &v145;
    v156 = v61;
    v157 = v63;
    MEMORY[0x1EEE9AC00](v64, v65);
    v144 = &v156;
    LOBYTE(v59) = sub_192924FF4(sub_1929250A4, v143, v59);

    if (v59)
    {
      v50 = v43;
      v53 = v151;
      v52 = v150;
      break;
    }

    v43 = sub_192CB96C8(v43, v51, 0, v9, sub_192CB7728);
    v51 = v66;
    v44 = v67;
  }

  if (v53 < 0)
  {
    goto LABEL_146;
  }

  v68 = 0;
  v69 = v153;
  if (v9 < 0)
  {
    v69 = v9;
  }

  i = v69;
  while (2)
  {
    v70 = v155;
    sub_192CD452C(v50, v155 == 0, v9);
    v150 = v68;
    if (v70)
    {
      v71 = MEMORY[0x193B116C0](v50, v9);
    }

    else
    {
      v71 = *(v154 + 8 * v50);
    }

    v72 = v71;
    v73 = [v71 items];
    v5 = sub_192874CD0(0, &qword_1EAE15208);
    v74 = sub_192F96B0C();

    if (v52)
    {
LABEL_152:
      sub_192CB9AB8(&aBlock);
      __break(1u);
      return;
    }

    sub_192CD452C(v51, (v74 & 0xC000000000000001) == 0, v74);
    if ((v74 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x193B116C0](v51, v74);
    }

    else
    {
      v75 = *(v74 + 8 * v51 + 32);
    }

    v76 = v75;

    [v76 setEnabled_];
    sub_192F9733C();
    sub_192F9736C();
    sub_192F9737C();
    sub_192F9734C();
    sub_19295466C(v9);
    while (1)
    {
      v77 = v155;
      sub_192CD452C(v50, v155 == 0, v9);
      if (v77)
      {
        v78 = MEMORY[0x193B116C0](v50, v9);
      }

      else
      {
        v78 = *(v154 + 8 * v50);
      }

      v79 = v78;
      v80 = [v78 items];
      v81 = sub_192F96B0C();

      v20 = __OFADD__(v51++, 1);
      if (v20)
      {
        __break(1u);
        goto LABEL_123;
      }

      v82 = sub_19295466C(v81);

      v83 = v9 >> 62;
      if (v51 == v82)
      {
        break;
      }

LABEL_79:
      v84 = 0;
      v85 = 0;
      if (v83)
      {
        goto LABEL_80;
      }

LABEL_82:
      if (v155)
      {
        v87 = MEMORY[0x193B116C0](v50, v9);
      }

      else
      {
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_131;
        }

        if (v50 >= *(v153 + 16))
        {
          goto LABEL_132;
        }

        v87 = *(v154 + 8 * v50);
      }

      v88 = v87;
      v89 = [v87 items];
      v90 = sub_192F96B0C();

      if (v85)
      {
        goto LABEL_147;
      }

      if ((v90 & 0xC000000000000001) != 0)
      {
        v91 = MEMORY[0x193B116C0](v51, v90);
      }

      else
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v51 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_130;
        }

        v91 = *(v90 + 8 * v51 + 32);
      }

      v92 = v91;

      v93 = v165;
      v94 = [v92 identifier];
      v95 = sub_192F967CC();
      v97 = v96;

      v156 = v95;
      v157 = v97;
      MEMORY[0x1EEE9AC00](v98, v99);
      v144 = &v156;
      LOBYTE(v95) = sub_192924FF4(sub_1929250A4, v143, v93);

      if (v95)
      {
        v52 = 0;
        goto LABEL_112;
      }
    }

    v20 = __OFADD__(v50++, 1);
    if (v20)
    {
      __break(1u);
      goto LABEL_150;
    }

    if (v83)
    {
      v100 = sub_192F971FC();
    }

    else
    {
      v100 = *(v153 + 16);
    }

    while (v50 != v100)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15210);
      sub_192CB9B60();
      v101 = sub_192CB98E0(&v156, v50, v9, sub_192CB7728);
      v103 = *v102;

      (v101)(&v156, 0);
      if (v103 >> 62)
      {
        v104 = sub_192F971FC();
      }

      else
      {
        v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v104)
      {
        v51 = 0;
        goto LABEL_79;
      }

      v20 = __OFADD__(v50++, 1);
      if (v20)
      {
        goto LABEL_145;
      }
    }

    if (!v83)
    {
      v51 = 0;
      v50 = *(v153 + 16);
      v85 = 1;
      v86 = v50;
      goto LABEL_81;
    }

    v50 = sub_192F971FC();
    v51 = 0;
    v84 = 1;
LABEL_80:
    v86 = sub_192F971FC();
    v85 = v84;
    if (!v84)
    {
      goto LABEL_82;
    }

LABEL_81:
    if (v50 != v86)
    {
      goto LABEL_82;
    }

    v52 = 1;
LABEL_112:
    v68 = v150 + 1;
    if (v150 + 1 != v151)
    {
      continue;
    }

    break;
  }

  sub_192CB9AB8(&aBlock);
  v49 = v158;
LABEL_115:
  v105 = sub_19295466C(v49);
  v5 = v148;
  if (v105)
  {
    v106 = *(v148 + 40);
    v107 = *(v148 + 48);
    v108 = objc_allocWithZone(AMSNotificationSettingsTask);

    v109 = v145;
    v110 = v146;
    swift_unknownObjectRetain();
    v111 = sub_192CB8F08(v106, v107, v109, v110);
    sub_192874CD0(0, &qword_1EAE15208);
    v112 = sub_192F96AFC();
    v113 = [v111 updateSettings_];

    if (v113)
    {
      sub_192CB8ED0(v5, &v166);
      v114 = swift_allocObject();
      v115 = v167;
      *(v114 + 16) = v166;
      *(v114 + 32) = v115;
      v116 = v169;
      *(v114 + 48) = v168;
      *(v114 + 64) = v116;
      v117 = v147;
      *(v114 + 80) = v49;
      *(v114 + 88) = v117;
      v163 = sub_192CB9AE8;
      v164 = v114;
      aBlock = MEMORY[0x1E69E9820];
      v160 = 1107296256;
      v161 = sub_192910FD8;
      v162 = &block_descriptor_52_0;
      v118 = _Block_copy(&aBlock);
      v119 = v113;

      v120 = v117;

      [v119 addSuccessBlock_];
      _Block_release(v118);

      sub_192CB8ED0(v5, &v166);
      v121 = swift_allocObject();
      v122 = v167;
      *(v121 + 16) = v166;
      *(v121 + 32) = v122;
      v123 = v169;
      *(v121 + 48) = v168;
      *(v121 + 64) = v123;
      *(v121 + 80) = v49;
      *(v121 + 88) = v120;
      v163 = sub_192CB9B54;
      v164 = v121;
      aBlock = MEMORY[0x1E69E9820];
      v160 = 1107296256;
      v161 = sub_192CE9DC8;
      v162 = &block_descriptor_58;
      v124 = _Block_copy(&aBlock);
      v125 = v119;
      v126 = v120;

      [v125 addErrorBlock_];

      _Block_release(v124);
    }

    else
    {
    }

    return;
  }

  if (qword_1EAE12488 != -1)
  {
    goto LABEL_148;
  }

LABEL_119:
  v51 = qword_1EAE15410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_192FBCD90;
  *(&v167 + 1) = &type metadata for GranularNotificationAction;
  *&v166 = swift_allocObject();
  sub_192CB8ED0(v5, v166 + 16);
  v127 = AMSLogKey();
  if (v127)
  {
    v128 = v127;
    v129 = sub_192F967CC();
    v131 = v130;
  }

  else
  {
LABEL_123:
    v129 = 0;
    v131 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v132 = swift_allocObject();
  v155 = xmmword_192FBCD50;
  *(v132 + 16) = xmmword_192FBCD50;
  sub_19286C588(&v166, &aBlock);
  sub_19286CFC8(&aBlock, v129, v131, v132 + 32);
  *(v7 + 32) = v132;
  __swift_destroy_boxed_opaque_existential_0(&v166);
  v133._object = 0x8000000193021B40;
  v133._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.init(stringLiteral:)(v133);
  v134 = sub_192F96E7C();
  if (os_log_type_enabled(v51, v134))
  {
    v135 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v136 = byte_1ED6DE5D8;
    v137 = swift_allocObject();
    *(v137 + 16) = v136;
    *&v166 = v7;
    *(&v166 + 1) = sub_192BB97CC;
    *&v167 = v137;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v138 = sub_192F9674C();
    v140 = v139;

    objc_autoreleasePoolPop(v135);
    v141 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v142 = swift_allocObject();
    *(v142 + 16) = v155;
    *(v142 + 56) = MEMORY[0x1E69E6158];
    *(v142 + 64) = sub_1928FDB30();
    *(v142 + 32) = v138;
    *(v142 + 40) = v140;
    sub_192F9622C();

    objc_autoreleasePoolPop(v141);
  }

  [v147 finishWithSuccess];
}

void sub_192CB7728(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 items];
  sub_192874CD0(0, &qword_1EAE15208);
  v4 = sub_192F96B0C();

  *a2 = v4;
}

uint64_t sub_192CB779C(id *a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = [*a1 identifier];
  v4 = sub_192F967CC();
  v6 = v5;

  v9[0] = v4;
  v9[1] = v6;
  v8[2] = v9;
  LOBYTE(v2) = sub_192924FF4(sub_1929250A4, v8, v2);

  return v2 & 1;
}

id sub_192CB7838(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EAE12488 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAE15410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_192FBCD90;
  *(&v36 + 1) = &type metadata for GranularNotificationAction;
  *&v35 = swift_allocObject();
  sub_192CB8ED0(a1, v35 + 16);
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    v10 = sub_192F967CC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_192FBCD50;
  sub_19286C588(&v35, v39);
  sub_19286CFC8(v39, v10, v12, v13 + 32);
  *(v7 + 32) = v13;
  __swift_destroy_boxed_opaque_existential_0(&v35);
  sub_19287AEE0();
  v38 = v14;
  v15._object = 0x8000000193021B90;
  v15._countAndFlagsBits = 0xD000000000000037;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15230);
  v39[0] = a2;
  sub_1928F9460(v39, v34, &unk_1EAE131B0);
  v35 = 0u;
  v36 = 0u;

  sub_19286D180(v34, &v35);
  v37 = 0;
  v16 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19287AEE0();
    v16 = v32;
  }

  v17 = *(v16 + 16);
  if (v17 >= *(v16 + 24) >> 1)
  {
    sub_19287AEE0();
    v16 = v33;
  }

  *(v16 + 16) = v17 + 1;
  v18 = v16 + 40 * v17;
  v19 = v35;
  v20 = v36;
  *(v18 + 64) = v37;
  *(v18 + 32) = v19;
  *(v18 + 48) = v20;
  v38 = v16;
  sub_1928FC07C(v39, &unk_1EAE131B0);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  *(v7 + 40) = v38;
  v22 = sub_192F96E7C();
  if (os_log_type_enabled(v6, v22))
  {
    v23 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v24 = byte_1ED6DE5D8;
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *&v35 = v7;
    *(&v35 + 1) = sub_192BB97CC;
    *&v36 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v26 = sub_192F9674C();
    v28 = v27;

    objc_autoreleasePoolPop(v23);
    v29 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_192FBCD50;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1928FDB30();
    *(v30 + 32) = v26;
    *(v30 + 40) = v28;
    sub_192F9622C();

    objc_autoreleasePoolPop(v29);
  }

  return [a3 finishWithSuccess];
}

void sub_192CB7C70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1EAE12488 != -1)
  {
    swift_once();
  }

  v7 = qword_1EAE15410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_192FBCD40;
  *(&v40 + 1) = &type metadata for GranularNotificationAction;
  *&v39 = swift_allocObject();
  sub_192CB8ED0(a2, v39 + 16);
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    v11 = sub_192F967CC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_192FBCD50;
  sub_19286C588(&v39, v43);
  sub_19286CFC8(v43, v11, v13, v14 + 32);
  *(v8 + 32) = v14;
  __swift_destroy_boxed_opaque_existential_0(&v39);
  sub_19287AEE0();
  v42 = v15;
  v16._object = 0x8000000193021B60;
  v16._countAndFlagsBits = 0xD00000000000002BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15230);
  v43[0] = a3;
  sub_1928F9460(v43, v38, &unk_1EAE131B0);
  v39 = 0u;
  v40 = 0u;

  sub_19286D180(v38, &v39);
  v41 = 0;
  v17 = v42;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19287AEE0();
    v17 = v36;
  }

  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_19287AEE0();
    v17 = v37;
  }

  *(v17 + 16) = v18 + 1;
  v19 = v17 + 40 * v18;
  v20 = v39;
  v21 = v40;
  *(v19 + 64) = v41;
  *(v19 + 32) = v20;
  *(v19 + 48) = v21;
  v42 = v17;
  sub_1928FC07C(v43, &unk_1EAE131B0);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  *(v8 + 40) = v42;
  swift_getErrorValue();
  v23 = sub_192F9783C();
  v24 = MEMORY[0x1E69E6158];
  *(&v40 + 1) = MEMORY[0x1E69E6158];
  *&v39 = v23;
  *(&v39 + 1) = v25;
  static LogInterpolation.safe(_:)(&v39, (v8 + 48));
  sub_1928FC07C(&v39, &unk_1EAE131B0);
  v26 = sub_192F96E5C();
  if (os_log_type_enabled(v7, v26))
  {
    v27 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v28 = byte_1ED6DE5D8;
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *&v39 = v8;
    *(&v39 + 1) = sub_192BB97CC;
    *&v40 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v30 = sub_192F9674C();
    v32 = v31;

    objc_autoreleasePoolPop(v27);
    v33 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_192FBCD50;
    *(v34 + 56) = v24;
    *(v34 + 64) = sub_1928FDB30();
    *(v34 + 32) = v30;
    *(v34 + 40) = v32;
    sub_192F9622C();

    objc_autoreleasePoolPop(v33);
  }

  v35 = sub_192F958CC();
  [a4 finishWithError_];
}

void sub_192CB8110(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_192CB8178(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EAE12488 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAE15410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_192FBCD40;
  v31 = &type metadata for GranularNotificationAction;
  v28 = swift_allocObject();
  sub_192CB8ED0(a2, v28 + 16);
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = sub_192F967CC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_192FBCD50;
  sub_19286C588(&v28, v27);
  sub_19286CFC8(v27, v9, v11, v12 + 32);
  *(v6 + 32) = v12;
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v13._object = 0x8000000193021B10;
  v13._countAndFlagsBits = 0xD000000000000025;
  LogInterpolation.init(stringLiteral:)(v13);
  swift_getErrorValue();
  v14 = sub_192F9783C();
  v15 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1E69E6158];
  v28 = v14;
  v29 = v16;
  static LogInterpolation.safe(_:)(&v28, (v6 + 48));
  sub_1928FC07C(&v28, &unk_1EAE131B0);
  v17 = sub_192F96E5C();
  if (os_log_type_enabled(v5, v17))
  {
    v18 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v19 = byte_1ED6DE5D8;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v28 = v6;
    v29 = sub_192BB97CC;
    v30 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v21 = sub_192F9674C();
    v23 = v22;

    objc_autoreleasePoolPop(v18);
    v24 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_192FBCD50;
    *(v25 + 56) = v15;
    *(v25 + 64) = sub_1928FDB30();
    *(v25 + 32) = v21;
    *(v25 + 40) = v23;
    sub_192F9622C();

    objc_autoreleasePoolPop(v24);
  }

  v26 = sub_192F958CC();
  [a3 finishWithError_];
}

uint64_t sub_192CB84F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192CB8580;

  return sub_192CB5700();
}

uint64_t sub_192CB8580(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

void sub_192CB8694(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_192952700(0x4965636976726573, 0xE900000000000064);
  v63 = a2;
  if (!v59)
  {
    sub_1928FC07C(&v56, &unk_1EAE131B0);
    goto LABEL_8;
  }

  v6 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v15 = MEMORY[0x1E69E6158];
    if (qword_1EAE12488 != -1)
    {
      OUTLINED_FUNCTION_1_51();
      swift_once();
    }

    v16 = qword_1EAE15410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_192FBED20;
    v18 = AMSSetLogKeyIfNeeded();
    v19 = sub_192F967CC();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    OUTLINED_FUNCTION_28();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_11_32(v22, xmmword_192FBCD50);
    v56 = 0xD00000000000001DLL;
    v57 = v23;
    MEMORY[0x193B10CE0](v19, v21);

    MEMORY[0x193B10CE0](93, 0xE100000000000000);
    v59 = v15;
    OUTLINED_FUNCTION_6_39(v56, v51, v54, v55, v56, v57);
    v22[4].n128_u8[0] = 0;
    *(v17 + 32) = v22;
    v24._countAndFlagsBits = 0xD000000000000024;
    v24._object = 0x8000000193021A00;
    LogInterpolation.init(stringLiteral:)(v24);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0);
    v56 = a1;
    static LogInterpolation.safe(_:)(&v56, (v17 + 48));
    sub_1928FC07C(&v56, &unk_1EAE131B0);
    v59 = &type metadata for GranularNotificationAction.PerformError;
    LOBYTE(v56) = 0;
    static LogInterpolation.safe(_:)(&v56, (v17 + 56));
    sub_1928FC07C(&v56, &unk_1EAE131B0);
    v25 = sub_192F96E5C();
    if (!os_log_type_enabled(v16, v25))
    {
      v33 = 0;
      goto LABEL_16;
    }

    v26 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_1_3();
      swift_once();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v27 = swift_allocObject();
    *(v27 + 16) = &unk_1EAE131B0;
    v56 = v17;
    v57 = sub_1928FA5C4;
    v58 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_13_21();
    v28 = sub_192F9674C();
    v30 = v29;

    objc_autoreleasePoolPop(v26);
    v31 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    OUTLINED_FUNCTION_28();
    v32 = swift_allocObject();
    *(v32 + 16) = v52;
    *(v32 + 56) = v15;
    *(v32 + 64) = sub_1928FDB30();
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    sub_192F9622C();
    v33 = 0;
LABEL_14:

    objc_autoreleasePoolPop(v31);
LABEL_16:
    a2 = v63;
    goto LABEL_17;
  }

  v7 = v61;
  v8 = v62;
  sub_192952700(0x6163696669746F6ELL, 0xEF7364496E6F6974);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = v61;
  sub_1928F9460(a2, &v56, &qword_1EAE14D20);
  v10 = v59;
  if (v59)
  {
    v11 = a2;
    v12 = v60;
    __swift_project_boxed_opaque_existential_0(&v56, v59);
    v13 = (*(v12 + 8))(v10, v12);
    __swift_destroy_boxed_opaque_existential_0(&v56);
    if (v13)
    {

      v14 = *(v11 + 16);
      *a3 = *v11;
      *(a3 + 16) = v14;
      *(a3 + 32) = *(v11 + 32);
      *(a3 + 40) = v7;
      *(a3 + 48) = v8;
      *(a3 + 56) = v9;
      return;
    }

    a2 = v11;
    v6 = MEMORY[0x1E69E6158];
  }

  else
  {
    sub_1928FC07C(&v56, &qword_1EAE14D20);
  }

  if (qword_1EAE12488 != -1)
  {
    OUTLINED_FUNCTION_1_51();
    swift_once();
  }

  v35 = qword_1EAE15410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_36_0();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_192FBCD40;
  v37 = AMSSetLogKeyIfNeeded();
  v38 = sub_192F967CC();
  v40 = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  OUTLINED_FUNCTION_28();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_11_32(v41, xmmword_192FBCD50);
  v56 = 0xD00000000000001DLL;
  v57 = v42;
  MEMORY[0x193B10CE0](v38, v40);

  MEMORY[0x193B10CE0](93, 0xE100000000000000);
  v59 = v6;
  OUTLINED_FUNCTION_6_39(v56, v51, v54, v55, v56, v57);
  v41[4].n128_u8[0] = 0;
  *(v36 + 32) = v41;
  v43._countAndFlagsBits = 0xD00000000000002DLL;
  v43._object = 0x8000000193021A30;
  LogInterpolation.init(stringLiteral:)(v43);
  v59 = &type metadata for GranularNotificationAction.PerformError;
  v33 = 2;
  LOBYTE(v56) = 2;
  static LogInterpolation.safe(_:)(&v56, (v36 + 48));
  sub_1928FC07C(&v56, &unk_1EAE131B0);
  v44 = sub_192F96E5C();
  if (os_log_type_enabled(v35, v44))
  {
    v45 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_1_3();
      swift_once();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v46 = swift_allocObject();
    *(v46 + 16) = &v56;
    v56 = v36;
    v57 = sub_192BB97CC;
    v58 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_13_21();
    v47 = sub_192F9674C();
    v49 = v48;

    objc_autoreleasePoolPop(v45);
    v31 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    OUTLINED_FUNCTION_28();
    v50 = swift_allocObject();
    *(v50 + 16) = v53;
    *(v50 + 56) = v6;
    *(v50 + 64) = sub_1928FDB30();
    *(v50 + 32) = v47;
    *(v50 + 40) = v49;
    v33 = 2;
    sub_192F9622C();
    goto LABEL_14;
  }

LABEL_17:

  sub_192CB8E7C();
  swift_allocError();
  *v34 = v33;
  swift_willThrow();
  sub_1928FC07C(a2, &qword_1EAE14D20);
}

unint64_t sub_192CB8E7C()
{
  result = qword_1EAE151F0;
  if (!qword_1EAE151F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE151F0);
  }

  return result;
}

id sub_192CB8F08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_192F9679C();

  v8 = [v4 initWithIdentifier:v7 account:a3 bag:a4];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_192CB8FA0()
{
  if (*v0 >> 62)
  {
    return sub_192F971FC();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_192CB8FE4(int64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a6;
  sub_192CB9314(a1, a2, a3 & 1, a4, a5, a6 & 1, *v6, *(v6 + 8));
  v13 = sub_192CB9C10(a1, a2, a3 & 1, a4, a5, v7 & 1);
  if (v13)
  {
    v14 = a4;
  }

  else
  {
    v14 = a1;
  }

  if (v13)
  {
    v15 = a5;
  }

  else
  {
    v15 = a2;
  }

  if (v13)
  {
    v16 = v7;
  }

  else
  {
    v16 = a3;
  }

  if (v13)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  if (v13)
  {
    v18 = a1;
  }

  else
  {
    v18 = a4;
  }

  if (v13)
  {
    v19 = a2;
  }

  else
  {
    v19 = a5;
  }

  if (v13)
  {
    v7 = a3;
  }

  v21 = v14;
  v22 = v15;
  v23 = v16 & 1;
  if (a1 != a4 || (v16 & 1) != 0)
  {
    if (((a1 == a4) & v7) == 1)
    {
      return;
    }
  }

  else if (!(v7 & 1 | (a2 != a5)))
  {
    return;
  }

  for (i = 0; !__OFADD__(i, v17); i += v17)
  {
    sub_192CB9140(&v21);
    if (v21 != v18 || (v23 & 1) != 0)
    {
      if (((v21 == v18) & v7) != 0)
      {
        return;
      }
    }

    else if (!(v7 & 1 | (v22 != v19)))
    {
      return;
    }
  }

  __break(1u);
}

void sub_192CB9140(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v4 == sub_19295466C(*v1) && (v6 & 1) != 0)
  {
    goto LABEL_27;
  }

  v18 = v1[3];
  while (1)
  {
    v4 = sub_192CB96C8(v4, v5, v6 & 1, v2, v3);
    v5 = v7;
    v9 = v8;
    if (v2 >> 62)
    {
      v10 = sub_192F971FC();
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = (v4 == v10) & v9;
    if (v11)
    {
LABEL_21:
      *a1 = v4;
      *(a1 + 8) = v5;
      *(a1 + 16) = v11;
      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193B116C0](v4, v2);
      goto LABEL_12;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v12 = *(v2 + 32 + 8 * v4);
LABEL_12:
    v13 = v12;
    v19 = v12;
    (v3)(&v20, &v19);

    if (v9)
    {
      goto LABEL_26;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x193B116C0](v5, v20);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v5 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v14 = v20[v5 + 4];
    }

    v15 = v14;

    v20 = v15;
    v16 = v18(&v20);

    v6 = 0;
    if (v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_192CB9314(int64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, id *a7, void (*a8)(unint64_t *__return_ptr, id **))
{
  v8 = a7;
  LOBYTE(v9) = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 < a1;
  if (a4 != a1)
  {
    goto LABEL_7;
  }

  if ((a6 & 1) == 0)
  {
    if (a3)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      return;
    }

    v15 = a5 < a2;
LABEL_7:
    LODWORD(v16) = v15;
    if (v16 && a7 >> 62)
    {
      goto LABEL_55;
    }

    goto LABEL_12;
  }

  if (a3)
  {
    return;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  v19 = MEMORY[0x193B116C0](v11, v8);
LABEL_23:
  v20 = v19;
  v35 = v19;
  a8(&v36, &v35);

  v21 = sub_19295466C(v36);
  if (v9)
  {
    goto LABEL_66;
  }

  v16 = v21;

  v22 = v10 - v16;
  if (__OFSUB__(v10, v16))
  {
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v16 = -1;
    v10 = v14;
    while (1)
    {
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      v32 = v13;
      if ((v11 + 1) >= v10)
      {
        break;
      }

      v13 = v11 + 5;
      while (1)
      {
        v11 = v13 - 4;
        if (v12)
        {
          v27 = MEMORY[0x193B116C0](v13 - 4, v8);
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v27 = *(v8 + 8 * v13);
        }

        v28 = v27;
        v35 = v27;
        a8(&v36, &v35);

        v14 = v36;
        v9 = v36 >> 62 ? sub_192F971FC() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);

        v26 = __OFADD__(v22, v9 * v16);
        v22 += v9 * v16;
        if (v26)
        {
          break;
        }

        v29 = v13 - 3;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_52;
        }

        ++v13;
        if (v29 >= v10)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_192F971FC();
LABEL_12:
      if (v11 == v14)
      {
        if (v12 & 1) != 0 || (v9)
        {
          return;
        }

        LOBYTE(v16) = v8 & 1;
        sub_192CD452C(v11, (v8 & 0xC000000000000001) == 0, v8);
        v17 = (v8 & 0xC000000000000001) != 0 ? MEMORY[0x193B116C0](v11, v8) : *(v8 + 8 * v11 + 32);
        v8 = v17;
        v35 = v17;
        a8(&v36, &v35);

        if (!__OFSUB__(v10, v13))
        {
          return;
        }

        __break(1u);
      }

      v33 = v12;
      v12 = v8 & 0xC000000000000001;
      v18 = (v8 & 0xC000000000000001) == 0;
      if (v16)
      {
        sub_192CD452C(v11, v18, v8);
        if (v12)
        {
          goto LABEL_58;
        }

        v19 = *(v8 + 8 * v11 + 32);
        goto LABEL_23;
      }

      sub_192CD452C(v14, v18, v8);
      if (v12)
      {
        v23 = MEMORY[0x193B116C0](v14, v8);
      }

      else
      {
        v23 = *(v8 + 8 * v14 + 32);
      }

      v24 = v23;
      v35 = v23;
      a8(&v36, &v35);

      if (v33)
      {
        goto LABEL_67;
      }

      v16 = v36;
      v25 = sub_19295466C(v36);

      v26 = __OFSUB__(v25, v13);
      v22 = v25 - v13;
      if (v26)
      {
        goto LABEL_62;
      }

      v16 = 1;
      v13 = v10;
      v33 = v9;
      v10 = v11;
      v11 = v14;
    }

LABEL_46:
    v13 = v32;
    if (v33)
    {
      return;
    }

    sub_192CD452C(v10, v12 == 0, v8);
    if (!v12)
    {
      v30 = *(v8 + 8 * v10 + 32);
      goto LABEL_49;
    }
  }

  v30 = MEMORY[0x193B116C0](v10, v8);
LABEL_49:
  v31 = v30;
  v35 = v30;
  a8(&v36, &v35);

  if (__OFADD__(v22, v13 * v16))
  {
    __break(1u);
    goto LABEL_65;
  }
}

uint64_t sub_192CB96C8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, void (*a5)(id *))
{
  v9 = a1;
  v10 = a4 & 0xC000000000000001;
  sub_192CD452C(a1, (a4 & 0xC000000000000001) == 0, a4);
  if (v10)
  {
    v11 = MEMORY[0x193B116C0](v9, a4);
  }

  else
  {
    v11 = *(a4 + 8 * v9 + 32);
  }

  v12 = v11;
  v24 = v11;
  (a5)(v23, &v24);

  if (a3)
  {
    goto LABEL_24;
  }

  v13 = __OFADD__(a2, 1);
  v14 = a2 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_19295466C(v23[0]);

    if (v14 != v15)
    {
      return v9;
    }
  }

  v13 = __OFADD__(v9++, 1);
  if (v13)
  {
    goto LABEL_25;
  }

  v22 = a4 >> 62;
  if (a4 >> 62)
  {
    goto LABEL_26;
  }

  v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v9 != v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15210);
    sub_192CB9B60();
    v18 = sub_192CB98E0(v23, v9, a4, a5);
    v20 = *v19;

    (v18)(v23, 0);
    if (v20 >> 62)
    {
      v21 = sub_192F971FC();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21)
    {
      return v9;
    }

    v13 = __OFADD__(v9++, 1);
    if (v13)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v17 = sub_192F971FC();
    }
  }

  if (v22)
  {
    return sub_192F971FC();
  }

  else
  {
    return *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void (*sub_192CB98E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id *)))(void *a1)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = sub_192CB99AC(v8, a2, a3, a4);
  return sub_192CB9964;
}

void sub_192CB9964(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_192CB99AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id *)))()
{
  v7 = a3 & 0xC000000000000001;
  sub_192CD452C(a2, (a3 & 0xC000000000000001) == 0, a3);
  if (v7)
  {
    v8 = MEMORY[0x193B116C0](a2, a3);
  }

  else
  {
    v8 = *(a3 + 8 * a2 + 32);
  }

  v9 = v8;
  v11 = v8;
  a4(&v11);

  return sub_192CB9A5C;
}

uint64_t objectdestroy_8Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_48Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

unint64_t sub_192CB9B60()
{
  result = qword_1EAE15218;
  if (!qword_1EAE15218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE15210);
    sub_19287AD94(&qword_1EAE15220, &qword_1EAE15228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15218);
  }

  return result;
}

BOOL sub_192CB9C10(_BOOL8 result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a4 < result;
  if (a4 == result)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

      __break(1u);
      goto LABEL_11;
    }

    if (a3)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    return a5 < a2;
  }

  return v6;
}

_BYTE *storeEnumTagSinglePayload for GranularNotificationAction.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_192CB9D34()
{
  result = qword_1EAE15238;
  if (!qword_1EAE15238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15238);
  }

  return result;
}

id sub_192CB9DA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_192C168FC(a1, a2, a3, a4 & 1);
  OUTLINED_FUNCTION_5_35(v4);

  sub_192878268(&v10, &v8);
  if (!*(&v9 + 1))
  {
    sub_1928FC07C(&v8, &unk_1EAE131B0);
LABEL_5:
    v8 = v10;
    v9 = v11;
    if (*(&v11 + 1))
    {
      if (OUTLINED_FUNCTION_45())
      {
        return v7;
      }
    }

    else
    {
      sub_1928FC07C(&v8, &unk_1EAE131B0);
    }

    return 0;
  }

  sub_192874CD0(0, &qword_1ED6DDBB0);
  if ((OUTLINED_FUNCTION_45() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [v7 integerValue];

  sub_1928FC07C(&v10, &unk_1EAE131B0);
  return v5;
}

id sub_192CB9EC8(uint64_t (*a1)(void))
{
  v1 = a1();
  OUTLINED_FUNCTION_5_35(v1);

  sub_192878268(&v7, &v5);
  if (!*(&v6 + 1))
  {
    sub_1928FC07C(&v5, &unk_1EAE131B0);
LABEL_5:
    v5 = v7;
    v6 = v8;
    if (*(&v8 + 1))
    {
      if (OUTLINED_FUNCTION_45())
      {
        return v4;
      }
    }

    else
    {
      sub_1928FC07C(&v5, &unk_1EAE131B0);
    }

    return 0;
  }

  sub_192874CD0(0, &qword_1ED6DDBB0);
  if ((OUTLINED_FUNCTION_45() & 1) == 0)
  {
    goto LABEL_5;
  }

  v2 = [v4 integerValue];

  sub_1928FC07C(&v7, &unk_1EAE131B0);
  return v2;
}

uint64_t static HTTPHelpers.Errors.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_192F95CFC();
  OUTLINED_FUNCTION_4_0();
  v62 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = type metadata accessor for HTTPHelpers.Errors();
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = (&v61 - v18);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = (&v61 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15240);
  OUTLINED_FUNCTION_142_0(v23);
  OUTLINED_FUNCTION_62();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v61 - v27;
  v29 = (&v61 + *(v26 + 56) - v27);
  sub_192CBB100(a1, &v61 - v27);
  sub_192CBB100(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_192CBB100(v28, v22);
    v43 = *v22;
    v42 = v22[1];
    v44 = v22[2];
    OUTLINED_FUNCTION_15_24();
    if (!swift_getEnumCaseMultiPayload())
    {
      v45 = *v29;
      v46 = v29[1];
      v47 = v29[2];
      if (v43 == v45 && v42 == v46)
      {
      }

      else
      {
        v49 = sub_192F9775C();

        if ((v49 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v56 = v44 == v47;
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_192CBB100(v28, v15);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15248) + 48);
    v51 = *&v15[v50];
    OUTLINED_FUNCTION_15_24();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v52 = *(v29 + v50);
      v53 = v62;
      (*(v62 + 32))(v10, v29, v4);
      v54 = sub_192F95C9C();
      v55 = *(v53 + 8);
      v55(v10, v4);
      v55(v15, v4);
      if ((v54 & 1) == 0)
      {
        goto LABEL_30;
      }

      v56 = v51 == v52;
      goto LABEL_36;
    }

    (*(v62 + 8))(v15, v4);
LABEL_23:
    sub_1928FC07C(v28, &qword_1EAE15240);
    return 0;
  }

  sub_192CBB100(v28, v19);
  v32 = *v19;
  v31 = v19[1];
  v34 = v19[2];
  v33 = v19[3];
  v35 = v19[4];
  OUTLINED_FUNCTION_15_24();
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_21:

    goto LABEL_23;
  }

  v36 = *v29;
  v37 = v29[1];
  v39 = v29[2];
  v38 = v29[3];
  v62 = v29[4];
  if (v32 == v36 && v31 == v37)
  {
  }

  else
  {
    v41 = sub_192F9775C();

    if ((v41 & 1) == 0)
    {

LABEL_30:
      sub_192CBB164(v28);
      return 0;
    }
  }

  if (v34 == v39 && v33 == v38)
  {
  }

  else
  {
    v58 = sub_192F9775C();

    if ((v58 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v56 = v35 == v62;
LABEL_36:
  v59 = v56;
  sub_192CBB164(v28);
  return v59;
}

uint64_t sub_192CBA464(uint64_t a1)
{
  v2 = sub_192CBB990(&qword_1EAE15260);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_192CBA4BC(uint64_t a1)
{
  v2 = sub_192CBB990(&qword_1EAE15260);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t static HTTPHelpers.specificHeader(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (*(a3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_192873B04();

      if (!sub_192F9711C())
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v15 = sub_192BD2C8C(v14, v13, a3);

    return v15;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t static HTTPHelpers.parseMaxAge(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15250);
  OUTLINED_FUNCTION_142_0(v4);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v32 - v7;
  v32 = a1;
  v33 = a2;
  v36 = 0x3D6567612D78616DLL;
  v37 = 0xE800000000000000;
  v9 = sub_192F95D6C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_192873B04();
  v10 = sub_192F9713C();
  v12 = v11;
  sub_1928FC07C(v8, &qword_1EAE15250);
  if ((v12 & 1) == 0)
  {
    v13 = sub_192CBA914(v10, a1, a2);
    v15 = v14;
    v32 = v13;
    v33 = v14;
    v34 = v16;
    v35 = v17;
    OUTLINED_FUNCTION_7_36();
    if (sub_192CBB740(v18, v19, v20, v21))
    {
      *&result = COERCE_DOUBLE(sub_192F968CC());
      if (*&result == 0.0)
      {
        goto LABEL_8;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_10_28();
        *&result = COERCE_DOUBLE(sub_192F9707C());
        if (v23)
        {
LABEL_15:
          __break(1u);
          return result;
        }

        if (v15 >> 14 >= result >> 14)
        {
          OUTLINED_FUNCTION_7_36();
          v24 = sub_192F970BC();
          v26 = v25;
          v28 = v27;
          v30 = v29;

          v32 = v24;
          v33 = v26;
          v34 = v28;
          v35 = v30;
LABEL_8:
          v31 = off_1EE56C858;

          v31(&v32, &v36);

          if ((v37 & 1) == 0)
          {
            *&result = v36;
            return result;
          }

          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }
  }

LABEL_11:
  *&result = 0.0;
  return result;
}

unint64_t sub_192CBA914(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_192F969EC();
  }

  __break(1u);
  return result;
}

uint64_t static HTTPHelpers.timestamp(fromSecondsHeader:headers:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = static HTTPHelpers.specificHeader(_:from:)(a1, a2, a3);
  if (!v7)
  {
    goto LABEL_74;
  }

  v8 = v7;
  v9 = HIBYTE(v7) & 0xF;
  v10 = result & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_74;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    sub_192BC8688();
    v21 = v24;
LABEL_73:

    if ((v21 & 1) == 0)
    {
      sub_192F95C3C();
      v22 = 0;
      goto LABEL_76;
    }

LABEL_74:
    v22 = 1;
LABEL_76:
    v23 = sub_192F95CFC();
    return __swift_storeEnumTagSinglePayload(a4, v22, 1, v23);
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_192F9731C();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_2_1();
              if (!v15 && v14)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_9_32();
              if (!v15)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_6_40();
              if (v14)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_5_3();
              if (v15)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      goto LABEL_82;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_71;
            }

            if (!is_mul_ok(v19, 0xAuLL))
            {
              goto LABEL_71;
            }

            v14 = __CFADD__(10 * v19, v20);
            v19 = 10 * v19 + v20;
            if (v14)
            {
              goto LABEL_71;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_71:
      v17 = 1;
      goto LABEL_72;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v13 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_2_1();
            if (!v15 && v14)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_9_32();
            if (!v15)
            {
              goto LABEL_71;
            }

            v14 = 10 * v13 >= v16;
            v13 = 10 * v13 - v16;
            if (!v14)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_5_3();
            if (v15)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_62:
        v17 = 0;
LABEL_72:
        v21 = v17;
        goto LABEL_73;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v9)
      {
        while (1)
        {
          OUTLINED_FUNCTION_2_1();
          if (!v15 && v14)
          {
            break;
          }

          OUTLINED_FUNCTION_9_32();
          if (!v15)
          {
            break;
          }

          OUTLINED_FUNCTION_6_40();
          if (v14)
          {
            break;
          }

          OUTLINED_FUNCTION_5_3();
          if (v15)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_14_24();
        while (1)
        {
          OUTLINED_FUNCTION_2_1();
          if (!v15 && v14)
          {
            break;
          }

          OUTLINED_FUNCTION_9_32();
          if (!v15)
          {
            break;
          }

          v14 = 10 * v4 >= v18;
          v4 = 10 * v4 - v18;
          if (!v14)
          {
            break;
          }

          OUTLINED_FUNCTION_5_3();
          if (v15)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_81;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      OUTLINED_FUNCTION_14_24();
      while (1)
      {
        OUTLINED_FUNCTION_2_1();
        if (!v15 && v14)
        {
          break;
        }

        OUTLINED_FUNCTION_9_32();
        if (!v15)
        {
          break;
        }

        OUTLINED_FUNCTION_6_40();
        if (v14)
        {
          break;
        }

        OUTLINED_FUNCTION_5_3();
        if (v15)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_83:
  __break(1u);
  return result;
}

void static HTTPHelpers.timestamp(fromRFC1123Header:headers:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49[1] = a4;
  v55 = sub_192F95D7C();
  OUTLINED_FUNCTION_4_0();
  v54 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  sub_192F95DFC();
  OUTLINED_FUNCTION_4_0();
  v50 = v14;
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131D0);
  OUTLINED_FUNCTION_142_0(v19);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v49 - v22;
  v24 = sub_192F95D6C();
  OUTLINED_FUNCTION_4_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_15();
  v31 = v30 - v29;
  v52 = static HTTPHelpers.specificHeader(_:from:)(a1, a2, a3);
  v53 = v32;
  if (v32)
  {
    v49[0] = a2;
    v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_192F95D4C();
    v34 = sub_192F95D5C();
    (*(v26 + 8))(v31, v24);
    [v33 setLocale_];

    sub_192F95E1C();
    v35 = sub_192F95E3C();
    v36 = 0;
    if (__swift_getEnumTagSinglePayload(v23, 1, v35) != 1)
    {
      v36 = sub_192F95E2C();
      (*(*(v35 - 8) + 8))(v23, v35);
    }

    [v33 setTimeZone_];

    sub_192CBB8A0(0xD00000000000001BLL, 0x8000000193021BF0, v33);
    v37 = v54;
    v38 = v55;
    (*(v54 + 104))(v12, *MEMORY[0x1E6969868], v55);
    sub_192F95D8C();
    (*(v37 + 8))(v12, v38);
    v39 = sub_192F95DAC();
    (*(v50 + 8))(v18, v51);
    [v33 setCalendar_];

    v41 = v52;
    v40 = v53;
    v42 = sub_192F9679C();
    v43 = [v33 dateFromString_];

    v44 = v49[0];
    if (v43)
    {

      sub_192F95CAC();
    }

    else
    {
      type metadata accessor for HTTPHelpers.Errors();
      OUTLINED_FUNCTION_0_42();
      sub_192CBB990(v47);
      OUTLINED_FUNCTION_16_25();
      *v48 = a1;
      v48[1] = v44;
      v48[2] = v41;
      v48[3] = v40;
      v48[4] = 2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for HTTPHelpers.Errors();
    OUTLINED_FUNCTION_0_42();
    sub_192CBB990(v45);
    OUTLINED_FUNCTION_16_25();
    *v46 = a1;
    v46[1] = a2;
    v46[2] = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t type metadata accessor for HTTPHelpers.Errors()
{
  result = qword_1EAE15278;
  if (!qword_1EAE15278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192CBB100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPHelpers.Errors();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192CBB164(uint64_t a1)
{
  v2 = type metadata accessor for HTTPHelpers.Errors();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static HTTPHelpers.throwForRetryAfter(statusCode:headers:now:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  OUTLINED_FUNCTION_142_0(v4);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v25 - v7;
  v9 = sub_192F95CFC();
  OUTLINED_FUNCTION_4_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  if (a1 == 429)
  {
    v17 = OUTLINED_FUNCTION_11_33();
    static HTTPHelpers.timestamp(fromSecondsHeader:headers:now:)(v17, v18, a2, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1928FC07C(v8, &qword_1EAE12E10);
    }

    else
    {
      (*(v11 + 32))(v16, v8, v9);
      type metadata accessor for HTTPHelpers.Errors();
      OUTLINED_FUNCTION_0_42();
      sub_192CBB990(v19);
      swift_allocError();
      v21 = v20;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15248) + 48);
      v23 = OUTLINED_FUNCTION_15_24();
      v24(v23);
      *(v21 + v22) = 3;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v11 + 8))(v16, v9);
    }
  }
}

uint64_t static HTTPHelpers.statusCodeString(error:)(void *a1)
{
  if (!a1 || (*&v8 = a1, v1 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0), sub_192874CD0(0, &qword_1ED6DE280), (swift_dynamicCast() & 1) == 0) || !v7)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_8:
    sub_1928FC07C(&v8, &unk_1EAE131B0);
    return 0;
  }

  v2 = [v7 userInfo];
  sub_192F9669C();

  v3 = sub_192F967CC();
  sub_192952700(v3, v4);

  if (!*(&v9 + 1))
  {

    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_17_26())
  {
    sub_192F972BC();

    *(&v8 + 1) = 0xEF3A65646F437375;
    v5 = sub_192F9771C();
    MEMORY[0x193B10CE0](v5);

    return 0x7461745370747468;
  }

  return 0;
}

uint64_t static HTTPHelpers.isAuthError(error:)()
{
  v0 = sub_192F958CC();
  v1 = [v0 userInfo];
  sub_192F9669C();

  v2 = sub_192F967CC();
  sub_192952700(v2, v3);

  if (v7)
  {
    if ((OUTLINED_FUNCTION_17_26() & 1) != 0 && v5 == 401)
    {
      return 1;
    }
  }

  else
  {
    sub_1928FC07C(v6, &unk_1EAE131B0);
  }

  return 0;
}

unint64_t sub_192CBB6A8(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      OUTLINED_FUNCTION_10_28();
      result = sub_192F9707C();
      if (v3)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if (v2 >> 14 >= result >> 14)
      {
        OUTLINED_FUNCTION_7_36();
        v4 = sub_192F970BC();
        v6 = v5;
        v8 = v7;
        v10 = v9;

        *v1 = v4;
        v1[1] = v6;
        v1[2] = v8;
        v1[3] = v10;
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_192CBB740(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  v6 = a3;
  while ((v6 ^ a4) >= 0x4000)
  {
    v7 = sub_192F970AC();
    v9 = v8;
    v6 = sub_192F9706C();
    v10 = sub_192F9690C();
    if (!v11)
    {

      return 1;
    }

    if (v7 == v10 && v11 == v9)
    {
    }

    else
    {
      v13 = sub_192F9775C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_192F9690C();
  v15 = v14;

  if (!v15)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

void sub_192CBB8A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_192F9679C();

  [a3 setDateFormat_];
}

uint64_t sub_192CBB904(void *a1)
{
  a1[1] = sub_192CBB990(&qword_1EAE15260);
  a1[2] = sub_192CBB990(&qword_1EAE15268);
  result = sub_192CBB990(&qword_1EAE15270);
  a1[3] = result;
  return result;
}

uint64_t sub_192CBB990(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HTTPHelpers.Errors();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPHelpers(_BYTE *result, int a2, int a3)
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

void sub_192CBBA80()
{
  sub_192CBBB08();
  if (v0 <= 0x3F)
  {
    sub_192CBBB6C();
    if (v1 <= 0x3F)
    {
      sub_192CBBBD4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_192CBBB08()
{
  if (!qword_1EAE15288)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAE15288);
    }
  }
}

void sub_192CBBB6C()
{
  if (!qword_1EAE15290)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EAE15290);
    }
  }
}

void sub_192CBBBD4()
{
  if (!qword_1EAE15298)
  {
    sub_192F95CFC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAE15298);
    }
  }
}

uint64_t sub_192CBBC58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_192CBBD34()
{
  v0 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_43(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBBD7C()
{
  sub_192F9789C();
  sub_192C1329C();
  sub_192F966FC();
  return sub_192F978DC();
}

uint64_t sub_192CBBDD4(char a1)
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x193B11C90]((a1 & 1u) + 3);
  return sub_192F978DC();
}

uint64_t sub_192CBBE24()
{
  v0 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_43(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBBFC0()
{
  OUTLINED_FUNCTION_24_0();
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC008(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x193B11C90](a1);
  return sub_192F978DC();
}

uint64_t sub_192CBC060(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_24_0();
  a2(v5, a1);
  return sub_192F978DC();
}

uint64_t sub_192CBC0A8()
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x193B11C90](0);
  return sub_192F978DC();
}

uint64_t sub_192CBC0FC(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_24_0();
  a2(a1);
  OUTLINED_FUNCTION_6_41();

  return sub_192F978DC();
}

uint64_t sub_192CBC158()
{
  v0 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_43(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC1B8(uint64_t a1)
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x193B11C90](a1);
  return sub_192F978DC();
}

uint64_t sub_192CBC228()
{
  v0 = sub_192F9789C();
  OUTLINED_FUNCTION_0_43(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC274()
{
  OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBC314()
{
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBC3AC()
{
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBC448(uint64_t a1, unsigned __int8 a2)
{
  sub_192F9789C();
  MEMORY[0x193B11C90](a2);
  return sub_192F978DC();
}

uint64_t sub_192CBC4EC()
{
  OUTLINED_FUNCTION_2_46();
  sub_192F968BC();

  return sub_192F978DC();
}

uint64_t sub_192CBC560()
{
  OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBC600()
{
  OUTLINED_FUNCTION_2_46();
  sub_192F968BC();

  return sub_192F978DC();
}

uint64_t sub_192CBC674()
{
  sub_192F9789C();
  sub_192C1329C();
  sub_192F966FC();
  return sub_192F978DC();
}

uint64_t sub_192CBC6C8()
{
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBC780()
{
  OUTLINED_FUNCTION_2_46();
  sub_192F968BC();

  return sub_192F978DC();
}

uint64_t sub_192CBC7EC()
{
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBC874()
{
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBC920()
{
  v0 = sub_192F9789C();
  OUTLINED_FUNCTION_0_43(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC96C()
{
  v0 = sub_192F9789C();
  OUTLINED_FUNCTION_0_43(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC9D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_192F9789C();
  a3(a2);
  OUTLINED_FUNCTION_6_41();

  return sub_192F978DC();
}

uint64_t sub_192CBCA24(uint64_t a1, char a2)
{
  sub_192F9789C();
  MEMORY[0x193B11C90](a2 & 1);
  return sub_192F978DC();
}

uint64_t sub_192CBCA68()
{
  OUTLINED_FUNCTION_2_46();
  MEMORY[0x193B11C90]((v0 & 1u) + 3);
  return sub_192F978DC();
}

uint64_t sub_192CBCAA8()
{
  sub_192F9789C();
  sub_192F968BC();

  return sub_192F978DC();
}

uint64_t sub_192CBCB40()
{
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBCBDC()
{
  sub_192F9789C();
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBCC28()
{
  OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBCCC0()
{
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBCD40()
{
  OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBCDD0()
{
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_3_50();

  return sub_192F978DC();
}

uint64_t sub_192CBCE54(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_192F9789C();
  a3(v6, a2);
  return sub_192F978DC();
}

uint64_t sub_192CBCEA0(uint64_t a1, uint64_t a2)
{
  sub_192F9789C();
  MEMORY[0x193B11C90](a2);
  return sub_192F978DC();
}

uint64_t sub_192CBCEF0@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_1_7();
  *a1 = result;
  return result;
}

uint64_t sub_192CBCF18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CBCF48(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_192CBCF50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192BAC788(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_192CBCF80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CBCFB0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_192CBCFC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_192CBCFF4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_192CBCFF4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_192CBD018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_192CBD04C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_192CBD04C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_192CBD08C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CBD0BC(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_192CBD138@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_192CBD148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CBBC58(a1);
  *a2 = result;
  return result;
}

uint64_t sub_192CBD178(void *a1)
{
  v2 = v1;
  if (qword_1ED6DF160 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6DF140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_192FBCD90;
  v6 = *(v1 + OBJC_IVAR____TtCV18AppleMediaServices9KeepAliveP33_8D5EA5EE57B6E86A66C300315FB9941621RBSAssertionComponent_logKey + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_192FBCD50;

  sub_1928FB8BC(v6, v7 + 32);
  *(v5 + 32) = v7;
  sub_19287AEE0();
  v40 = v8;
  v9._object = 0x8000000193021FB0;
  v9._countAndFlagsBits = 0xD000000000000019;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v10 = [a1 explanation];
  v11 = sub_192F967CC();
  v13 = v12;

  v14 = MEMORY[0x1E69E6158];
  v39[3] = MEMORY[0x1E69E6158];
  v39[0] = v11;
  v39[1] = v13;
  sub_1928F94C8(v39, v35, &unk_1EAE131B0);
  v36 = 0u;
  v37 = 0u;
  sub_1928FDBFC(v35, &v36, &unk_1EAE131B0);
  v38 = 0;
  v15 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19287AEE0();
    v15 = v33;
    v40 = v33;
  }

  v16 = *(v15 + 16);
  if (v16 >= *(v15 + 24) >> 1)
  {
    sub_19287AEE0();
    v15 = v34;
  }

  *(v15 + 16) = v16 + 1;
  v17 = v15 + 40 * v16;
  v18 = v36;
  v19 = v37;
  *(v17 + 64) = v38;
  *(v17 + 32) = v18;
  *(v17 + 48) = v19;
  v40 = v15;
  sub_1928FB988(v39, &unk_1EAE131B0);
  v20._countAndFlagsBits = 0xD000000000000020;
  v20._object = 0x8000000193022290;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  *(v5 + 40) = v40;
  v21 = sub_192F96E5C();
  if (os_log_type_enabled(v4, v21))
  {
    v22 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v23 = byte_1ED6DE5D8;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *&v36 = v5;
    *(&v36 + 1) = sub_192BB97CC;
    *&v37 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v25 = sub_192F9674C();
    v27 = v26;

    objc_autoreleasePoolPop(v22);
    v28 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_192FBCD50;
    *(v29 + 56) = v14;
    *(v29 + 64) = sub_1928FDB30();
    *(v29 + 32) = v25;
    *(v29 + 40) = v27;
    sub_192F9622C();

    objc_autoreleasePoolPop(v28);
  }

  v31 = *(v2 + OBJC_IVAR____TtCV18AppleMediaServices9KeepAliveP33_8D5EA5EE57B6E86A66C300315FB9941621RBSAssertionComponent_invalidationHandler);
  if (v31)
  {

    v31(v32);
    return sub_1928FB8AC(v31);
  }

  return result;
}

uint64_t sub_192CBD618(void *a1, uint64_t a2)
{
  if (qword_1ED6DF160 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED6DF140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_192FBCD90;
  v7 = *(v2 + OBJC_IVAR____TtCV18AppleMediaServices9KeepAliveP33_8D5EA5EE57B6E86A66C300315FB9941621RBSAssertionComponent_logKey + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_192FBCD50;

  sub_1928FB8BC(v7, v8 + 32);
  *(v6 + 32) = v8;
  sub_19287AEE0();
  v50 = v9;
  v10._object = 0x8000000193021FB0;
  v10._countAndFlagsBits = 0xD000000000000019;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = [a1 explanation];
  v12 = sub_192F967CC();
  v14 = v13;

  v15 = MEMORY[0x1E69E6158];
  *(&v49 + 1) = MEMORY[0x1E69E6158];
  *&v48 = v12;
  *(&v48 + 1) = v14;
  sub_1928F94C8(&v48, v44, &unk_1EAE131B0);
  v45 = 0u;
  v46 = 0u;
  sub_1928FDBFC(v44, &v45, &unk_1EAE131B0);
  v47 = 0;
  v16 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19287AEE0();
    v16 = v39;
    v50 = v39;
  }

  v17 = *(v16 + 16);
  if (v17 >= *(v16 + 24) >> 1)
  {
    sub_19287AEE0();
    v16 = v40;
  }

  *(v16 + 16) = v17 + 1;
  v18 = v16 + 40 * v17;
  v19 = v45;
  v20 = v46;
  *(v18 + 64) = v47;
  *(v18 + 32) = v19;
  *(v18 + 48) = v20;
  v50 = v16;
  sub_1928FB988(&v48, &unk_1EAE131B0);
  v21._countAndFlagsBits = 0xD00000000000001DLL;
  v21._object = 0x8000000193022270;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  if (a2)
  {
    swift_getErrorValue();
    *(&v49 + 1) = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    (*(*(v43 - 8) + 16))(boxed_opaque_existential_0);
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  sub_1928F94C8(&v48, v44, &unk_1EAE131B0);
  v45 = 0u;
  v46 = 0u;
  sub_1928FDBFC(v44, &v45, &unk_1EAE131B0);
  v47 = 0;
  v23 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19287AEE0();
    v23 = v41;
  }

  v24 = *(v23 + 16);
  if (v24 >= *(v23 + 24) >> 1)
  {
    sub_19287AEE0();
    v23 = v42;
  }

  *(v23 + 16) = v24 + 1;
  v25 = v23 + 40 * v24;
  v26 = v45;
  v27 = v46;
  *(v25 + 64) = v47;
  *(v25 + 32) = v26;
  *(v25 + 48) = v27;
  v50 = v23;
  sub_1928FB988(&v48, &unk_1EAE131B0);
  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  *(v6 + 40) = v50;
  v29 = sub_192F96E5C();
  if (os_log_type_enabled(v5, v29))
  {
    v30 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v31 = byte_1ED6DE5D8;
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *&v45 = v6;
    *(&v45 + 1) = sub_192BB97CC;
    *&v46 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v33 = sub_192F9674C();
    v35 = v34;

    objc_autoreleasePoolPop(v30);
    v36 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_192FBCD50;
    *(v37 + 56) = v15;
    *(v37 + 64) = sub_1928FDB30();
    *(v37 + 32) = v33;
    *(v37 + 40) = v35;
    sub_192F9622C();

    objc_autoreleasePoolPop(v36);
  }
}

uint64_t sub_192CBDBDC()
{
  v21 = sub_192F9629C();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15370);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_192F9625C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18AppleMediaServices9KeepAliveP33_8D5EA5EE57B6E86A66C300315FB9941619OSSignpostComponent_signpostID;
  swift_beginAccess();
  sub_1928F94C8(v0 + v14, v8, &qword_1EAE15370);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1928FB988(v8, &qword_1EAE15370);
  }

  (*(v10 + 32))(v13, v8, v9);
  if (qword_1ED6DEF20 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED6DEF30;
  sub_192F9627C();
  v17 = sub_192F9628C();
  v18 = sub_192F96F6C();
  if (sub_192F9701C())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_192F9624C();
    _os_signpost_emit_with_name_impl(&dword_192869000, v17, v18, v20, "KeepAlive invalidation warning", "", v19, 2u);
    MEMORY[0x193B13ED0](v19, -1, -1);
  }

  (*(v1 + 8))(v4, v21);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_192CBDEE4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_192CBDF2C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_192CBDEE4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_192CBDFAC()
{
  v1 = *(v0 + OBJC_IVAR___AMSRBSKeepAlive_name);

  return v1;
}

id sub_192CBE01C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return sub_1928FB7CC(a1, a2, 0);
}

void sub_192CBE0E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (**a5)(void))
{
  v9 = sub_192F9644C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v24[-v16];
  v25 = a5;
  if (a3 < 4)
  {
    v18 = qword_192FCC890[a3];
    sub_192F9641C();

    v19 = sub_19287B724(a1, a2, v18);
    if (!v19 || *(v19 + 56) != 1)
    {
      goto LABEL_6;
    }

    sub_192F9641C();
    sub_192912C1C(&qword_1ED6DDE00, MEMORY[0x1E69E7FB0]);
    v20 = sub_192F9677C();
    a3 = v10 + 8;
    v21 = *(v10 + 8);
    v21(v14, v9);
    if (v20)
    {

LABEL_6:
      a5[2](a5);
      (*(v10 + 8))(v17, v9);
LABEL_7:

      _Block_release(a5);
      return;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = sub_19291AB38;
    *(v22 + 24) = v24;
    sub_1929519E8(sub_192CBF1E8, v22, v17);

    v21(v17, v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  _Block_release(a5);
  v26 = a3;
  sub_192F9779C();
  __break(1u);
}

uint64_t sub_192CBE4E4()
{
  type metadata accessor for ShutdownState();
  v0 = swift_allocObject();
  result = sub_192CBE520();
  qword_1ED6E3388 = v0;
  return result;
}

uint64_t sub_192CBE520()
{
  v1 = v0;
  v2 = sub_192F963EC();
  OUTLINED_FUNCTION_4_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192F9644C();
  OUTLINED_FUNCTION_4_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  sub_192874CD0(0, &qword_1ED6DE6E0);
  sub_192874CD0(0, &qword_1ED6DEFE0);
  v16 = sub_192F96EBC();
  v17 = sub_192F96F0C();

  *(v1 + 16) = v17;
  swift_getObjectType();
  aBlock[4] = sub_192CBF03C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_192910FD8;
  aBlock[3] = &block_descriptor_64;
  v18 = _Block_copy(aBlock);

  sub_192F9641C();
  sub_192CBEA08();
  sub_192F96F1C();
  _Block_release(v18);
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_192F96F3C();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_192CBE7AC(uint64_t a1)
{
  if (qword_1ED6DF160 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED6DF140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  *(swift_allocObject() + 16) = xmmword_192FBCD50;
  v3._object = 0x8000000193022100;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  LogInterpolation.init(stringLiteral:)(v3);
  v4 = sub_192F96E7C();
  if (os_log_type_enabled(v2, v4))
  {
    v5 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v6 = byte_1ED6DE5D8;
    *(swift_allocObject() + 16) = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v7 = sub_192F9674C();
    v9 = v8;

    objc_autoreleasePoolPop(v5);
    v10 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_192FBCD50;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1928FDB30();
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;
    sub_192F9622C();

    objc_autoreleasePoolPop(v10);
  }

  swift_getObjectType();
  result = sub_192F96F2C();
  atomic_store(1u, (a1 + 24));
  return result;
}

uint64_t sub_192CBEA08()
{
  sub_192F963EC();
  sub_192912C1C(&unk_1ED6DF020, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13A28);
  sub_19287AD94(&unk_1ED6DF010, &qword_1EAE13A28);
  return sub_192F9719C();
}

uint64_t sub_192CBEAF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

uint64_t sub_192CBEB60(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_192CBEBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_192CBEC18()
{
  result = qword_1EAE15350;
  if (!qword_1EAE15350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15350);
  }

  return result;
}

void *sub_192CBEC6C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_192CBECDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_192CBED28(a1, a2);
  sub_192CBEE40(&unk_1F06F0340);
  return v3;
}

uint64_t sub_192CBED28(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_192F9691C())
  {
    result = sub_192CBEC6C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_192F972AC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_192F9731C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_192CBEE40(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_192CBEF24(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_192CBEF24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_192CBF058()
{
  result = qword_1EAE15388;
  if (!qword_1EAE15388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15388);
  }

  return result;
}

unint64_t sub_192CBF0B0()
{
  result = qword_1EAE15390;
  if (!qword_1EAE15390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15390);
  }

  return result;
}

unint64_t sub_192CBF108()
{
  result = qword_1EAE15398;
  if (!qword_1EAE15398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15398);
  }

  return result;
}

unint64_t sub_192CBF160()
{
  result = qword_1EAE153A0;
  if (!qword_1EAE153A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE153A0);
  }

  return result;
}

id LiveFileStore.init()@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultManager];
  *a1 = result;
  return result;
}

uint64_t LiveFileStore.contents(at:)(uint64_t a1)
{
  v3 = *v1;
  sub_192F958FC();
  v4 = sub_192F9679C();
  v5 = [v3 contentsAtPath_];

  if (v5)
  {

    v6 = sub_192F95B7C();

    return v6;
  }

  else
  {
    v8 = sub_192F9679C();

    v9 = [v3 fileExistsAtPath_];

    if (v9)
    {
      v10 = static DeviceDetails.deviceUnlockedSinceBoot()();
      if (v10 == 2)
      {
        type metadata accessor for FileStoreError();
        sub_192CBF4E0();
        OUTLINED_FUNCTION_4_49();
        v12 = v11;
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151C0) + 48);
        sub_192F95A8C();
        OUTLINED_FUNCTION_0_44();
        (*(v14 + 16))(v12, a1);
        *(v12 + v13) = 2;
      }

      else
      {
        v19 = v10;
        type metadata accessor for FileStoreError();
        sub_192CBF4E0();
        swift_allocError();
        v21 = v20;
        v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151C0) + 48);
        sub_192F95A8C();
        OUTLINED_FUNCTION_0_44();
        (*(v23 + 16))(v21, a1);
        if (v19)
        {
          *(v21 + v22) = 2;
        }

        else
        {
          *(v21 + v22) = 3;
        }
      }
    }

    else
    {
      type metadata accessor for FileStoreError();
      sub_192CBF4E0();
      OUTLINED_FUNCTION_4_49();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151C0) + 48);
      sub_192F95A8C();
      OUTLINED_FUNCTION_0_44();
      (*(v18 + 16))(v16, a1);
      *(v16 + v17) = 1;
    }

    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

unint64_t sub_192CBF4E0()
{
  result = qword_1EAE11A60;
  if (!qword_1EAE11A60)
  {
    type metadata accessor for FileStoreError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A60);
  }

  return result;
}

void LiveFileStore.createFolder(at:createIntermediateFolders:)(uint64_t a1, char a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  sub_192F957BC();
  OUTLINED_FUNCTION_4_0();
  v47 = v6;
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  sub_192F958FC();
  v18 = sub_192F9679C();

  v52[0] = 0;
  v19 = [v17 createDirectoryAtPath:v18 withIntermediateDirectories:a2 & 1 attributes:0 error:v52];

  v20 = v52[0];
  if (v19)
  {
    (*(v12 + 16))(v16, a1, v10);
    v21 = v20;
    sub_192F957AC();
    sub_192F9579C();
    v22 = v46[1];
    sub_192F9595C();
    if (!v22)
    {
      (*(v47 + 8))(v9, v48);
      (*(v12 + 8))(v16, v10);
      return;
    }

    (*(v47 + 8))(v9, v48);
    (*(v12 + 8))(v16, v10);
    v23 = v22;
  }

  else
  {
    v24 = v52[0];
    v23 = sub_192F958DC();

    swift_willThrow();
  }

  v51 = v23;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
  sub_1929333B4();
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  v26 = v50;
  v27 = [v50 userInfo];
  sub_192F9669C();

  v28 = sub_192F967CC();
  sub_192952700(v28, v29);

  if (v52[3])
  {
    if (swift_dynamicCast())
    {
      v30 = v49;
      v31 = [v26 domain];
      v32 = sub_192F967CC();
      v34 = v33;

      if (v32 == sub_192F967CC() && v34 == v35)
      {
      }

      else
      {
        v37 = OUTLINED_FUNCTION_1_52();

        if ((v37 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if ([v26 code] == 516)
      {
        v38 = [v30 domain];
        v39 = sub_192F967CC();
        v41 = v40;

        if (v39 == sub_192F967CC() && v41 == v42)
        {
        }

        else
        {
          v44 = OUTLINED_FUNCTION_1_52();

          if ((v44 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v45 = [v30 code];

        if (v45 == 17)
        {

          return;
        }

        goto LABEL_24;
      }

LABEL_23:
    }
  }

  else
  {
    sub_192907DE8(v52);
  }

LABEL_24:
  swift_willThrow();
LABEL_25:
}

void *LiveFileStore.items(within:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_192F9596C();
  v7[0] = 0;
  v2 = [v0 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:4 error:v7];

  v3 = v7[0];
  if (v2)
  {
    sub_192F95A8C();
    v1 = sub_192F96B0C();
    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    sub_192F958DC();

    swift_willThrow();
  }

  return v1;
}

void LiveFileStore.removeItem(at:)()
{
  v27[4] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  sub_192F958FC();
  v2 = sub_192F9679C();

  v27[0] = 0;
  LODWORD(v1) = [v1 removeItemAtPath:v2 error:v27];

  if (v1)
  {
    v3 = v27[0];
    return;
  }

  v4 = v27[0];
  v5 = sub_192F958DC();

  swift_willThrow();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
  sub_1929333B4();
  if (!swift_dynamicCast())
  {
    goto LABEL_22;
  }

  v7 = [v26 userInfo];
  sub_192F9669C();

  v8 = sub_192F967CC();
  sub_192952700(v8, v9);

  if (!v27[3])
  {
    sub_192907DE8(v27);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    swift_willThrow();
LABEL_22:

    return;
  }

  v10 = [v26 domain];
  v11 = sub_192F967CC();
  v13 = v12;

  if (v11 == sub_192F967CC() && v13 == v14)
  {
  }

  else
  {
    v16 = OUTLINED_FUNCTION_2_47();

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if ([v26 code] != 4)
  {
LABEL_20:

    goto LABEL_21;
  }

  v17 = [v25 domain];
  v18 = sub_192F967CC();
  v20 = v19;

  if (v18 == sub_192F967CC() && v20 == v21)
  {
  }

  else
  {
    v23 = OUTLINED_FUNCTION_2_47();

    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v24 = [v25 code];

  if (v24 != 2)
  {
    goto LABEL_21;
  }
}

uint64_t sub_192CBFF1C(uint64_t a1, char a2)
{
  if (qword_1EAE124B8 != -1)
  {
    OUTLINED_FUNCTION_10_29();
  }

  v4 = qword_1EAE15430;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_192FBCD40;
  *(&v537 + 1) = &type metadata for LocalAuthAction;
  LOBYTE(v536) = a2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_192F967CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  static LogInterpolation.prefix(_:_:)(&v536, v8, v10, (v5 + 32));

  __swift_destroy_boxed_opaque_existential_0(&v536);
  v11._countAndFlagsBits = 0xD000000000000031;
  v11._object = 0x80000001930222F0;
  LogInterpolation.init(stringLiteral:)(v11);
  sub_192C7A6B4(a2);
  v12 = MEMORY[0x1E69E6158];
  *(&v537 + 1) = MEMORY[0x1E69E6158];
  *&v536 = v13;
  *(&v536 + 1) = v14;
  static LogInterpolation.safe(_:)(&v536, (v5 + 48));
  sub_192907DE8(&v536);
  v15 = sub_192F96E7C();
  if (os_log_type_enabled(v4, v15))
  {
    v16 = a2;
    v17 = v4;
    v18 = v12;
    v19 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    v20 = OUTLINED_FUNCTION_19();
    *(v20 + 16) = v12;
    *&v536 = v5;
    *(&v536 + 1) = sub_192BB97CC;
    *&v537 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_8_38();
    v21 = sub_192F9674C();
    v23 = v22;

    objc_autoreleasePoolPop(v19);
    v24 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v25 = OUTLINED_FUNCTION_90();
    *(v25 + 16) = xmmword_192FBCD50;
    *(v25 + 56) = v18;
    *(v25 + 64) = sub_1928FDB30();
    *(v25 + 32) = v21;
    *(v25 + 40) = v23;
    v12 = v18;
    v4 = v17;
    sub_192F9622C();

    objc_autoreleasePoolPop(v24);
    a2 = v16;
  }

  switch(a2)
  {
    case 1:
      if (sub_192CBFF1C(a1, 0))
      {
        v91 = OUTLINED_FUNCTION_6_42();
        v98 = OUTLINED_FUNCTION_17_27(v91 | 0x6E6F6B6300000000, 0xED00006E7462632ELL, v92, v93, v94, v95, v96, v97, v492, v502, v512, v522, v532, v533, v534, v535, v536);
        if (*(&v537 + 1))
        {
          OUTLINED_FUNCTION_1_53(v98, v99, v100, MEMORY[0x1E69E6370], v101, v102, v103, v104, v496, v506, v516, v526, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
          if (swift_dynamicCast())
          {
            v105 = LOBYTE(v539[0]);
            goto LABEL_196;
          }
        }

        else
        {
          sub_192907DE8(&v536);
        }

        v105 = 0;
LABEL_196:
        OUTLINED_FUNCTION_26_19();
        v401 = sub_192CC1770(0xD000000000000013, v399 | 0x8000000000000000, a1, v400);
        if (*(&v537 + 1))
        {
          OUTLINED_FUNCTION_1_53(v401, v402, v403, MEMORY[0x1E69E6530], v404, v405, v406, v407, v496, v506, v516, v526, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_13_22();
            v408 = v202;
LABEL_209:
            v416 = OUTLINED_FUNCTION_3_51();
            v423 = OUTLINED_FUNCTION_17_27(v416 & 0xFFFFFFFFFFFFLL | 0x6F6B000000000000, 0xEE006E7462632E6ELL, v417, v418, v419, v420, v421, v422, v496, v506, v516, v526, v532, v533, v534, v535, v536);
            if (*(&v537 + 1))
            {
              OUTLINED_FUNCTION_1_53(v423, v424, v425, MEMORY[0x1E69E6370], v426, v427, v428, v429, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
              if (swift_dynamicCast())
              {
                v186 = v539[0];
                goto LABEL_214;
              }
            }

            else
            {
              sub_192907DE8(&v536);
            }

            v186 = 0;
LABEL_214:
            OUTLINED_FUNCTION_26_19();
            v432 = sub_192CC1770(0xD000000000000014, v430 | 0x8000000000000000, a1, v431);
            if (!*(&v537 + 1))
            {
              goto LABEL_221;
            }

            v89 = v4;
            OUTLINED_FUNCTION_1_53(v432, v433, v434, MEMORY[0x1E69E6530], v435, v436, v437, v438, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
            v201 = a2;
            if ((swift_dynamicCast() & 1) != 0 && (v105 & v408) == 1)
            {
              OUTLINED_FUNCTION_13_22();
              goto LABEL_218;
            }

            goto LABEL_223;
          }
        }

        else
        {
          sub_192907DE8(&v536);
        }

        v408 = 0;
        goto LABEL_209;
      }

      v150 = v12;
      v151 = OUTLINED_FUNCTION_18_24();
      *(v151 + 16) = xmmword_192FBCD90;
      *(&v537 + 1) = &type metadata for LocalAuthAction;
      LOBYTE(v536) = 1;
      v158 = AMSLogKey();
      if (v158)
      {
        v159 = v158;
        v160 = sub_192F967CC();
        v154 = v161;
      }

      else
      {
        v160 = 0;
        v154 = 0;
      }

      static LogInterpolation.prefix(_:_:)(&v536, v160, v154, (v151 + 32));

      __swift_destroy_boxed_opaque_existential_0(&v536);
      v409._countAndFlagsBits = 0xD000000000000038;
      v409._object = 0x80000001930223F0;
      LogInterpolation.init(stringLiteral:)(v409);
      v410 = sub_192F96E5C();
      if (!OUTLINED_FUNCTION_8_25(v410))
      {
        goto LABEL_205;
      }

      v157 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        goto LABEL_251;
      }

      goto LABEL_204;
    case 2:
      v58 = OUTLINED_FUNCTION_6_42();
      v66 = OUTLINED_FUNCTION_21_20(v58, v59, v60, v61, v62, v63, v64, v65, v492, v502, v512, v522, v532, v533, v534, v535, v536);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v66, v67, v68, MEMORY[0x1E69E6370], v69, v70, v71, v72, v494, v504, v514, v524, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          v73 = LOBYTE(v539[0]);
          goto LABEL_63;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v73 = 0;
LABEL_63:
      v162 = OUTLINED_FUNCTION_6_42();
      v169 = OUTLINED_FUNCTION_17_27(v162 | 0x6F69626300000000, 0xEE00746F6962702ELL, v163, v164, v165, v166, v167, v168, v494, v504, v514, v524, v532, v533, v534, v535, v536);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v169, v170, v171, MEMORY[0x1E69E6530], v172, v173, v174, v175, v497, v507, v517, v527, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          v176 = v539[0] == 3;
          goto LABEL_68;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v176 = 0;
LABEL_68:
      v177 = OUTLINED_FUNCTION_3_51();
      v179 = sub_192CC1770(v177 & 0xFFFFFFFFFFFFLL | 0x7462000000000000, v178 + 11, a1, &v536);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v179, v180, v181, MEMORY[0x1E69E6370], v182, v183, v184, v185, v497, v507, v517, v527, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          v186 = v539[0];
          goto LABEL_73;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v186 = 0;
LABEL_73:
      v187 = OUTLINED_FUNCTION_3_51();
      v194 = OUTLINED_FUNCTION_17_27(v187 & 0xFFFFFFFFFFFFLL | 0x6962000000000000, 0xEF746F6962702E6FLL, v188, v189, v190, v191, v192, v193, v497, v507, v517, v527, v532, v533, v534, v535, v536);
      if (!*(&v537 + 1))
      {
        goto LABEL_221;
      }

      v89 = v4;
      OUTLINED_FUNCTION_1_53(v194, v195, v196, MEMORY[0x1E69E6530], v197, v198, v199, v200, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
      v201 = a2;
      if ((swift_dynamicCast() & 1) == 0 || (v73 & v176) != 1)
      {
        goto LABEL_223;
      }

      v202 = v539[0] == 3;
LABEL_218:
      if (!v202)
      {
        v186 = 0;
      }

      goto LABEL_224;
    case 3:
      v74 = OUTLINED_FUNCTION_5_36(v26, v27, v28, v29, v30, v31, v32, v33, v492, v502, v512, v522, v532, v533, v534, v535, v536);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v74, v75, v76, MEMORY[0x1E69E6530], v77, v78, v79, v80, v495, v505, v515, v525, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_9_33();
          v41 = v202;
LABEL_79:
          v203 = OUTLINED_FUNCTION_6_42();
          v211 = OUTLINED_FUNCTION_11_34(v203, v204, v205, v206, v207, v208, v209, v210, v495, v505, v515, v525, v532, v533, v534, v535, v536);
          if (*(&v537 + 1))
          {
            OUTLINED_FUNCTION_1_53(v211, v212, v213, MEMORY[0x1E69E6530], v214, v215, v216, v217, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
            if (swift_dynamicCast())
            {
              OUTLINED_FUNCTION_9_33();
              v138 = v202;
LABEL_86:
              v218 = OUTLINED_FUNCTION_2_48();
              v221 = sub_192CC1770(v218, v219, a1, v220);
              if (*(&v537 + 1))
              {
                OUTLINED_FUNCTION_1_53(v221, v222, v223, MEMORY[0x1E69E6530], v224, v225, v226, v227, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
                if (swift_dynamicCast())
                {
                  OUTLINED_FUNCTION_9_33();
                  v146 = v202;
                  goto LABEL_93;
                }
              }

              else
              {
                sub_192907DE8(&v536);
              }

              v146 = 0;
LABEL_93:
              v228 = OUTLINED_FUNCTION_3_51();
              v147 = OUTLINED_FUNCTION_12_25(v228);
              goto LABEL_94;
            }
          }

          else
          {
            sub_192907DE8(&v536);
          }

          v138 = 0;
          goto LABEL_86;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v41 = 0;
      goto LABEL_79;
    case 4:
      v42 = sub_192CBFF1C(a1, 1);
      if (v42)
      {
        v50 = OUTLINED_FUNCTION_5_36(v42, v43, v44, v45, v46, v47, v48, v49, v492, v502, v512, v522, v532, v533, v534, v535, v536);
        if (*(&v537 + 1))
        {
          OUTLINED_FUNCTION_1_53(v50, v51, v52, MEMORY[0x1E69E6530], v53, v54, v55, v56, v493, v503, v513, v523, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_13_22();
            v57 = v202;
LABEL_165:
            v353 = OUTLINED_FUNCTION_6_42();
            v361 = OUTLINED_FUNCTION_11_34(v353, v354, v355, v356, v357, v358, v359, v360, v493, v503, v513, v523, v532, v533, v534, v535, v536);
            if (*(&v537 + 1))
            {
              OUTLINED_FUNCTION_1_53(v361, v362, v363, MEMORY[0x1E69E6530], v364, v365, v366, v367, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
              if (swift_dynamicCast())
              {
                OUTLINED_FUNCTION_13_22();
                v368 = v202;
LABEL_172:
                v369 = sub_192CC1770(0x6F6D702E6E67736FLL, 0xE900000000000063, a1, &v536);
                if (*(&v537 + 1))
                {
                  OUTLINED_FUNCTION_1_53(v369, v370, v371, MEMORY[0x1E69E6530], v372, v373, v374, v375, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
                  if (swift_dynamicCast())
                  {
                    OUTLINED_FUNCTION_9_33();
                    v376 = v202;
LABEL_179:
                    v377 = OUTLINED_FUNCTION_2_48();
                    v380 = sub_192CC1770(v377, v378, a1, v379);
                    if (*(&v537 + 1))
                    {
                      OUTLINED_FUNCTION_1_53(v380, v381, v382, MEMORY[0x1E69E6530], v383, v384, v385, v386, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
                      if (swift_dynamicCast())
                      {
                        OUTLINED_FUNCTION_13_22();
                        v387 = v202;
LABEL_186:
                        v388 = OUTLINED_FUNCTION_3_51();
                        v389 = OUTLINED_FUNCTION_12_25(v388);
                        v392 = sub_192CC1770(v389, v390, a1, v391);
                        if (*(&v537 + 1))
                        {
                          v89 = v4;
                          OUTLINED_FUNCTION_1_53(v392, v393, v394, MEMORY[0x1E69E6530], v395, v396, v397, v398, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
                          v201 = a2;
                          if ((swift_dynamicCast() & 1) != 0 && (v57 & v368 & v376 & v387) == 1)
                          {
                            OUTLINED_FUNCTION_13_22();
                            v186 = v202;
                            goto LABEL_224;
                          }
                        }

                        else
                        {
                          v89 = v4;
                          v201 = a2;
                          sub_192907DE8(&v536);
                        }

                        v186 = 0;
                        goto LABEL_224;
                      }
                    }

                    else
                    {
                      sub_192907DE8(&v536);
                    }

                    v387 = 0;
                    goto LABEL_186;
                  }
                }

                else
                {
                  sub_192907DE8(&v536);
                }

                v376 = 0;
                goto LABEL_179;
              }
            }

            else
            {
              sub_192907DE8(&v536);
            }

            v368 = 0;
            goto LABEL_172;
          }
        }

        else
        {
          sub_192907DE8(&v536);
        }

        v57 = 0;
        goto LABEL_165;
      }

      v150 = v12;
      v151 = OUTLINED_FUNCTION_18_24();
      *(v151 + 16) = xmmword_192FBCD90;
      *(&v537 + 1) = &type metadata for LocalAuthAction;
      LOBYTE(v536) = 4;
      v152 = sub_192BBE1E8();
      v154 = v153;
      static LogInterpolation.prefix(_:_:)(&v536, v152, v153, (v151 + 32));

      __swift_destroy_boxed_opaque_existential_0(&v536);
      v155._countAndFlagsBits = 0xD000000000000037;
      v155._object = 0x80000001930223B0;
      LogInterpolation.init(stringLiteral:)(v155);
      v156 = sub_192F96E5C();
      if (!OUTLINED_FUNCTION_8_25(v156))
      {
        goto LABEL_205;
      }

      v157 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
LABEL_251:
        OUTLINED_FUNCTION_0_0();
      }

LABEL_204:
      OUTLINED_FUNCTION_72();
      v411 = OUTLINED_FUNCTION_19();
      v412 = OUTLINED_FUNCTION_27_1(v411);
      *&v536 = v151;
      *(&v536 + 1) = sub_192BB97CC;
      *&v537 = v412;

      v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_8_38();
      sub_192F9674C();
      OUTLINED_FUNCTION_19_21();

      objc_autoreleasePoolPop(v157);
      v414 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v415 = OUTLINED_FUNCTION_90();
      *(v415 + 16) = xmmword_192FBCD50;
      *(v415 + 56) = v150;
      *(v415 + 64) = sub_1928FDB30();
      *(v415 + 32) = v154;
      *(v415 + 40) = v413;
      OUTLINED_FUNCTION_52();
      sub_192F9622C();

      objc_autoreleasePoolPop(v414);
LABEL_205:

LABEL_206:
      v186 = 0;
      return v186 & 1;
    case 5:
      v106 = OUTLINED_FUNCTION_7_37();
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v106, v107, v108, MEMORY[0x1E69E6370], v109, v110, v111, v112, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          HIDWORD(v512) = LOBYTE(v539[0]);
          goto LABEL_119;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      HIDWORD(v512) = 0;
LABEL_119:
      v272 = OUTLINED_FUNCTION_4_50();
      v274 = sub_192952700(v272, v273, a1);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v274, v275, v276, MEMORY[0x1E69E6370], v277, v278, v279, v280, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          LODWORD(v512) = LOBYTE(v539[0]);
          goto LABEL_124;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      LODWORD(v512) = 0;
LABEL_124:
      v281 = OUTLINED_FUNCTION_6_42();
      v289 = OUTLINED_FUNCTION_21_20(v281, v282, v283, v284, v285, v286, v287, v288, v492, v502, v512, v522, v532, v533, v534, v535, v536);
      if (*(&v537 + 1))
      {
        v296 = a1;
        OUTLINED_FUNCTION_1_53(v289, v290, v291, MEMORY[0x1E69E6370], v292, v293, v294, v295, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        v89 = v4;
        if (swift_dynamicCast())
        {
          HIDWORD(v502) = LOBYTE(v539[0]);
          goto LABEL_129;
        }
      }

      else
      {
        v296 = a1;
        v89 = v4;
        sub_192907DE8(&v536);
      }

      HIDWORD(v502) = 0;
LABEL_129:
      v201 = a2;
      OUTLINED_FUNCTION_26_19();
      v299 = sub_192CC1770(0xD000000000000011, v297 | 0x8000000000000000, v296, v298);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v299, v300, v301, MEMORY[0x1E69E6370], v302, v303, v304, v305, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          v306 = v539[0];
          goto LABEL_134;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v306 = 0;
LABEL_134:
      v307 = OUTLINED_FUNCTION_3_51();
      v309 = sub_192CC1770(v307 & 0xFFFFFFFFFFFFLL | 0x7462000000000000, v308 + 11, v296, &v536);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v309, v310, v311, MEMORY[0x1E69E6370], v312, v313, v314, v315, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          v316 = v539[0];
          goto LABEL_139;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v316 = 0;
LABEL_139:
      v317 = OUTLINED_FUNCTION_2_48();
      v320 = sub_192CC1770(v317, v318, v296, v319);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v320, v321, v322, MEMORY[0x1E69E6530], v323, v324, v325, v326, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_9_33();
          v327 = v202;
LABEL_146:
          OUTLINED_FUNCTION_26_19();
          v330 = sub_192CC1770(0xD000000000000012, v328 | 0x8000000000000000, v296, v329);
          if (*(&v537 + 1))
          {
            OUTLINED_FUNCTION_1_53(v330, v331, v332, MEMORY[0x1E69E6370], v333, v334, v335, v336, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
            if (swift_dynamicCast())
            {
              v337 = v539[0];
LABEL_151:
              v186 = BYTE4(v512) & v512 & BYTE4(v502) & v306 & v316 & v327 & v337;
              goto LABEL_224;
            }
          }

          else
          {
            sub_192907DE8(&v536);
          }

          v337 = 0;
          goto LABEL_151;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v327 = 0;
      goto LABEL_146;
    case 6:
      v113 = OUTLINED_FUNCTION_7_37();
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v113, v114, v115, MEMORY[0x1E69E6370], v116, v117, v118, v119, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          v120 = v539[0];
          goto LABEL_154;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v120 = 0;
LABEL_154:
      v338 = OUTLINED_FUNCTION_4_50();
      v340 = sub_192952700(v338, v339, a1);
      if (*(&v537 + 1))
      {
        v347 = a1;
        OUTLINED_FUNCTION_1_53(v340, v341, v342, MEMORY[0x1E69E6370], v343, v344, v345, v346, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        v89 = v4;
        if (swift_dynamicCast())
        {
          v348 = v539[0];
          goto LABEL_159;
        }
      }

      else
      {
        v347 = a1;
        v89 = v4;
        sub_192907DE8(&v536);
      }

      v348 = 0;
LABEL_159:
      v201 = a2;
      v349 = OUTLINED_FUNCTION_6_42();
      sub_192CC1770(v349 | 0x6F69626300000000, 0xE800000000000000, v347, &v536);
      v350 = *(&v537 + 1);
      sub_192907DE8(&v536);
      v351 = OUTLINED_FUNCTION_3_51();
      sub_192CC1770(v351 & 0xFFFFFFFFFFFFLL | 0x6962000000000000, v352 | 0xC, v347, &v536);
      if (!*(&v537 + 1))
      {
        goto LABEL_222;
      }

      sub_192907DE8(&v536);
      if (v350)
      {
        v186 = v120 & v348;
      }

      else
      {
        v186 = 0;
      }

      goto LABEL_224;
    case 7:
    case 8:
      v34 = OUTLINED_FUNCTION_7_37();
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v34, v35, v36, MEMORY[0x1E69E6370], v37, v38, v39, v40, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          v41 = LOBYTE(v539[0]);
          goto LABEL_43;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v41 = 0;
LABEL_43:
      v121 = OUTLINED_FUNCTION_4_50();
      v123 = sub_192952700(v121, v122, a1);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v123, v124, v125, MEMORY[0x1E69E6370], v126, v127, v128, v129, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        v130 = swift_dynamicCast();
        if (v130)
        {
          v138 = LOBYTE(v539[0]);
          goto LABEL_48;
        }
      }

      else
      {
        v130 = sub_192907DE8(&v536);
      }

      v138 = 0;
LABEL_48:
      v139 = OUTLINED_FUNCTION_5_36(v130, v131, v132, v133, v134, v135, v136, v137, v492, v502, v512, v522, v532, v533, v534, v535, v536);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v139, v140, v141, MEMORY[0x1E69E6530], v142, v143, v144, v145, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_9_33();
          v146 = v202;
LABEL_55:
          v147 = OUTLINED_FUNCTION_2_48();
LABEL_94:
          v229 = sub_192CC1770(v147, v148, a1, v149);
          if (*(&v537 + 1))
          {
            v89 = v4;
            OUTLINED_FUNCTION_1_53(v229, v230, v231, MEMORY[0x1E69E6530], v232, v233, v234, v235, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
            v201 = a2;
            if ((swift_dynamicCast() & 1) != 0 && (v41 & v138 & v146) == 1)
            {
              OUTLINED_FUNCTION_9_33();
              v186 = v202;
              goto LABEL_224;
            }
          }

          else
          {
LABEL_221:
            v89 = v4;
            v201 = a2;
LABEL_222:
            sub_192907DE8(&v536);
          }

LABEL_223:
          v186 = 0;
          goto LABEL_224;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v146 = 0;
      goto LABEL_55;
    default:
      v81 = OUTLINED_FUNCTION_7_37();
      if (*(&v537 + 1))
      {
        v88 = a1;
        OUTLINED_FUNCTION_1_53(v81, v82, v83, MEMORY[0x1E69E6370], v84, v85, v86, v87, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        v89 = v4;
        if (swift_dynamicCast())
        {
          v90 = LOBYTE(v539[0]);
          goto LABEL_102;
        }
      }

      else
      {
        v88 = a1;
        v89 = v4;
        sub_192907DE8(&v536);
      }

      v90 = 0;
LABEL_102:
      v201 = a2;
      v236 = OUTLINED_FUNCTION_4_50();
      v238 = sub_192952700(v236, v237, v88);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v238, v239, v240, MEMORY[0x1E69E6370], v241, v242, v243, v244, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          v245 = LOBYTE(v539[0]);
          goto LABEL_107;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v245 = 0;
LABEL_107:
      sub_192CC1770(0x6F6962632E6B636FLL, 0xE800000000000000, v88, &v536);
      if (!*(&v537 + 1))
      {
        goto LABEL_116;
      }

      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0);
      OUTLINED_FUNCTION_1_53(v246, v247, v248, v249, v250, v251, v252, v253, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_206;
      }

      v254 = OUTLINED_FUNCTION_3_51();
      v256 = sub_192CC1770(v254 & 0xFFFFFFFFFFFFLL | 0x6962000000000000, v255 | 0xC, v88, &v536);
      if (!*(&v537 + 1))
      {
LABEL_116:
        sub_192907DE8(&v536);
        goto LABEL_206;
      }

      OUTLINED_FUNCTION_1_53(v256, v257, v258, v259, v260, v261, v262, v263, v498, v508, v518, v528, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_206;
      }

      v264 = sub_192CC1770(0x6F6962632E6B636FLL, 0xEE00746F6962702ELL, v88, &v536);
      if (*(&v537 + 1))
      {
        OUTLINED_FUNCTION_1_53(v264, v265, v266, MEMORY[0x1E69E6530], v267, v268, v269, v270, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_9_33();
          v271 = v202;
LABEL_243:
          v480 = OUTLINED_FUNCTION_6_42();
          v481 = sub_192CC1770(v480 | 0x6E67736F00000000, 0xEE00746F6962702ELL, v88, &v536);
          if (*(&v537 + 1))
          {
            OUTLINED_FUNCTION_1_53(v481, v482, v483, MEMORY[0x1E69E6530], v484, v485, v486, v487, v492, v502, v512, v522, v532, v533, v534, v535, v536, *(&v536 + 1), v537, *(&v537 + 1), v538, v539[0]);
            if (swift_dynamicCast())
            {
              if ((v90 & v245) != 1)
              {
                goto LABEL_223;
              }

              OUTLINED_FUNCTION_9_33();
              if (v202)
              {
                v186 = v271;
              }

              else
              {
                v186 = 0;
              }

LABEL_224:
              v439 = OUTLINED_FUNCTION_18_24();
              *(v439 + 16) = xmmword_192FBCD90;
              *(&v537 + 1) = &type metadata for LocalAuthAction;
              LOBYTE(v536) = v201;
              v440 = AMSLogKey();
              if (v440)
              {
                v441 = v440;
                v442 = sub_192F967CC();
                v444 = v443;
              }

              else
              {
                v442 = 0;
                v444 = 0;
              }

              static LogInterpolation.prefix(_:_:)(&v536, v442, v444, (v439 + 32));

              __swift_destroy_boxed_opaque_existential_0(&v536);
              sub_19287AEE0();
              v541 = v445;
              v446._countAndFlagsBits = 0xD00000000000003BLL;
              v446._object = 0x8000000193022330;
              LogInterpolation.StringInterpolation.appendLiteral(_:)(v446);
              sub_192C7A6B4(v201);
              v540 = MEMORY[0x1E69E6158];
              v539[0] = v447;
              v539[1] = v448;
              v449 = sub_192878268(v539, &v532);
              OUTLINED_FUNCTION_28_19(v449, v450, v451, v452, v453, v454, v455, v456, v492, v502, v512, v522, v532, v533, v534, v535, v536, v537);
              LOBYTE(v538) = 0;
              v457 = v541;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_0();
                v457 = v488;
                v541 = v488;
              }

              v458 = MEMORY[0x1E69E6370];
              v459 = *(v457 + 16);
              if (v459 >= *(v457 + 24) >> 1)
              {
                OUTLINED_FUNCTION_20_23();
                v457 = v489;
              }

              *(v457 + 16) = v459 + 1;
              OUTLINED_FUNCTION_15_25(v457 + 40 * v459, v499, v509, v519, v529, v532, v533, v534, v535, v536, v537, v538);
              v460._countAndFlagsBits = 0x746C75736572202CLL;
              v460._object = 0xEA0000000000203ALL;
              LogInterpolation.StringInterpolation.appendLiteral(_:)(v460);
              v540 = v458;
              LOBYTE(v539[0]) = v186 & 1;
              v461 = sub_192878268(v539, &v532);
              OUTLINED_FUNCTION_28_19(v461, v462, v463, v464, v465, v466, v467, v468, v500, v510, v520, v530, v532, v533, v534, v535, v536, v537);
              LOBYTE(v538) = 0;
              v469 = v541;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_0();
                v469 = v490;
                v541 = v490;
              }

              v470 = *(v469 + 16);
              if (v470 >= *(v469 + 24) >> 1)
              {
                OUTLINED_FUNCTION_20_23();
                v469 = v491;
              }

              *(v469 + 16) = v470 + 1;
              OUTLINED_FUNCTION_15_25(v469 + 40 * v470, v501, v511, v521, v531, v532, v533, v534, v535, v536, v537, v538);
              v471._countAndFlagsBits = 0;
              v471._object = 0xE000000000000000;
              LogInterpolation.StringInterpolation.appendLiteral(_:)(v471);
              *(v439 + 40) = v541;
              v472 = sub_192F96E7C();
              if (os_log_type_enabled(v89, v472))
              {
                v473 = objc_autoreleasePoolPush();
                if (qword_1ED6DF1A0 != -1)
                {
                  OUTLINED_FUNCTION_0_0();
                }

                OUTLINED_FUNCTION_72();
                v474 = OUTLINED_FUNCTION_19();
                v475 = OUTLINED_FUNCTION_27_1(v474);
                *&v536 = v439;
                *(&v536 + 1) = sub_192BB97CC;
                *&v537 = v475;

                v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
                sub_1928FD924();
                OUTLINED_FUNCTION_8_38();
                sub_192F9674C();
                OUTLINED_FUNCTION_19_21();

                objc_autoreleasePoolPop(v473);
                v477 = objc_autoreleasePoolPush();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
                v478 = OUTLINED_FUNCTION_90();
                *(v478 + 16) = xmmword_192FBCD50;
                *(v478 + 56) = MEMORY[0x1E69E6158];
                *(v478 + 64) = sub_1928FDB30();
                *(v478 + 32) = &v541;
                *(v478 + 40) = v476;
                OUTLINED_FUNCTION_52();
                sub_192F9622C();

                objc_autoreleasePoolPop(v477);
              }

              return v186 & 1;
            }
          }

          else
          {
            sub_192907DE8(&v536);
          }

          v186 = v90 & v245 & v271;
          goto LABEL_224;
        }
      }

      else
      {
        sub_192907DE8(&v536);
      }

      v271 = 1;
      goto LABEL_243;
  }
}

uint64_t sub_192CC1314(uint64_t a1, char a2)
{
  Constraints = SecAccessControlGetConstraints();
  if (Constraints)
  {
    v4 = Constraints;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v23[0] = 0;
      sub_192F9668C();
    }
  }

  if (qword_1EAE124B8 != -1)
  {
    OUTLINED_FUNCTION_10_29();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_192FBCD90;
  v23[3] = &type metadata for LocalAuthAction;
  LOBYTE(v23[0]) = a2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_192F967CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v11 = OUTLINED_FUNCTION_90();
  *(v11 + 16) = xmmword_192FBCD50;
  sub_19286C588(v23, v22);
  sub_19286CFC8(v22, v8, v10, v11 + 32);
  *(v5 + 32) = v11;
  __swift_destroy_boxed_opaque_existential_0(v23);
  v12._object = 0x80000001930222C0;
  v12._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.init(stringLiteral:)(v12);
  v13 = sub_192F96E5C();
  if (OUTLINED_FUNCTION_8_25(v13))
  {
    v14 = MEMORY[0x1E69E6158];
    v15 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    v16 = OUTLINED_FUNCTION_19();
    v17 = OUTLINED_FUNCTION_27_1(v16);
    v23[0] = v5;
    v23[1] = sub_1928FA5C4;
    v23[2] = v17;

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    sub_192F9674C();
    OUTLINED_FUNCTION_19_21();

    objc_autoreleasePoolPop(v15);
    v19 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v20 = OUTLINED_FUNCTION_90();
    *(v20 + 16) = xmmword_192FBCD50;
    *(v20 + 56) = v14;
    *(v20 + 64) = sub_1928FDB30();
    *(v20 + 32) = v23;
    *(v20 + 40) = v18;
    OUTLINED_FUNCTION_52();
    sub_192F9622C();

    objc_autoreleasePoolPop(v19);
  }

  return 0;
}

unint64_t sub_192CC1618(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_192CC1628@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192CC1618(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_192CC1664(char a1)
{
  result = 0x44496863756F74;
  switch(a1)
  {
    case 1:
      result = 0x444965636166;
      break;
    case 2:
      result = 0x4449636974706FLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x697463416C617564;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
    case 7:
    case 8:
      result = 0x6465646E65747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192CC1770@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v27[0] = 46;
  v27[1] = 0xE100000000000000;
  v26 = v27;

  v8 = sub_192CF9420(0x7FFFFFFFFFFFFFFFLL, 1, sub_1929250EC, v25, a1, a2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v24 = a3;
    v27[0] = MEMORY[0x1E69E7CC0];
    result = sub_19290BCE0(0, v9, 0);
    v11 = 0;
    v12 = v27[0];
    v13 = (v8 + 56);
    while (v11 < *(v8 + 16))
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;

      v18 = MEMORY[0x193B10C70](v14, v15, v16, v17);
      v20 = v19;

      v27[0] = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_19290BCE0((v21 > 1), v22 + 1, 1);
        v12 = v27[0];
      }

      ++v11;
      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v13 += 4;
      if (v9 == v11)
      {

        a3 = v24;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_192CC191C(v12, a3, a4);
  }

  return result;
}

uint64_t sub_192CC191C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0);
  v18[0] = a2;
  v5 = *(a1 + 16);
  if (v5)
  {

    v6 = (a1 + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_192878268(v18, &v16);
      if (*(&v17 + 1))
      {

        if (swift_dynamicCast())
        {
          v9 = v15;
          goto LABEL_8;
        }
      }

      else
      {

        sub_192907DE8(&v16);
      }

      v9 = sub_192F966CC();
LABEL_8:
      if (!*(v9 + 16))
      {

LABEL_12:

        v16 = 0u;
        v17 = 0u;
        goto LABEL_13;
      }

      v10 = sub_1929225DC(v7, v8);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_19286C588(*(v9 + 56) + 32 * v10, &v16);

LABEL_13:
      sub_19286D180(&v16, v18);
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  sub_192878268(v18, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  return sub_192907DE8(v18);
}

uint64_t getEnumTagSinglePayload for LocalAuthAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocalAuthAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192CC1CB0()
{
  result = qword_1EAE153C0;
  if (!qword_1EAE153C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE153C0);
  }

  return result;
}

uint64_t Log.init(subsystem:category:)@<X0>(void *a1@<X8>)
{
  v2 = sub_19286D900();

  *a1 = v2;
  return result;
}

unint64_t LogCategory.init(rawValue:)(unint64_t result)
{
  if (result > 0x38)
  {
    return 0;
  }

  return result;
}

unint64_t sub_192CC1DCC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogCategory.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_192CC1E24()
{
  result = sub_19286D900();
  qword_1EAE153C8 = result;
  return result;
}

id sub_192CC1E9C()
{
  result = sub_19286D900();
  qword_1EAE153D0 = result;
  return result;
}

id sub_192CC1F14()
{
  result = sub_19286D900();
  qword_1EAE118E0 = result;
  return result;
}

id sub_192CC1F6C()
{
  result = sub_19286D900();
  qword_1EAE118C8 = result;
  return result;
}

id sub_192CC1FC0()
{
  result = sub_19286D900();
  qword_1EAE153D8 = result;
  return result;
}

id sub_192CC203C()
{
  result = sub_19286D900();
  qword_1EAE153E0 = result;
  return result;
}

id sub_192CC20B4()
{
  result = sub_19286D900();
  qword_1EAE153E8 = result;
  return result;
}

id sub_192CC212C()
{
  result = sub_19286D900();
  qword_1EAE153F0 = result;
  return result;
}

id sub_192CC21A4()
{
  result = sub_19286D900();
  qword_1EAE153F8 = result;
  return result;
}

id sub_192CC221C()
{
  result = sub_19286D900();
  qword_1EAE15400 = result;
  return result;
}

id sub_192CC22B8()
{
  result = sub_19286D900();
  qword_1EAE15408 = result;
  return result;
}

id sub_192CC2330()
{
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE15410 = result;
  return result;
}

id sub_192CC2388()
{
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE118F8 = result;
  return result;
}

id sub_192CC23F0()
{
  result = sub_19286D900();
  qword_1EAE15418 = result;
  return result;
}

id sub_192CC2468()
{
  result = sub_19286D900();
  qword_1EAE15420 = result;
  return result;
}

id sub_192CC2504()
{
  result = sub_19286D900();
  qword_1EAE15428 = result;
  return result;
}

id sub_192CC2578()
{
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE15430 = result;
  return result;
}

id sub_192CC25E4()
{
  result = OUTLINED_FUNCTION_1_54();
  qword_1EAE11BD8 = result;
  return result;
}

id sub_192CC263C()
{
  result = sub_19286D900();
  qword_1EAE11910 = result;
  return result;
}

id sub_192CC26B4()
{
  result = sub_19286D900();
  qword_1EAE15438 = result;
  return result;
}

id sub_192CC2730()
{
  result = sub_19286D900();
  qword_1EAE15440 = result;
  return result;
}

id sub_192CC27A4()
{
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE15448 = result;
  return result;
}

id sub_192CC2814()
{
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE12210 = result;
  return result;
}

id sub_192CC2880()
{
  result = sub_19286D900();
  qword_1EAE15450 = result;
  return result;
}

id sub_192CC28F0()
{
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE15458 = result;
  return result;
}

id sub_192CC2974()
{
  result = sub_19286D900();
  qword_1EAE15460 = result;
  return result;
}

id sub_192CC29EC()
{
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE15468 = result;
  return result;
}

id sub_192CC2A54()
{
  result = sub_19286D900();
  qword_1EAE15470 = result;
  return result;
}

id sub_192CC2AD0()
{
  result = sub_19286D900();
  qword_1EAE15478 = result;
  return result;
}

id sub_192CC2B3C()
{
  result = sub_19286D900();
  qword_1EAE15480 = result;
  return result;
}

id sub_192CC2BB0()
{
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE12200 = result;
  return result;
}

id sub_192CC2C18()
{
  result = sub_19286D900();
  qword_1EAE15488 = result;
  return result;
}

id sub_192CC2C90()
{
  result = sub_19286D900();
  qword_1EAE15490 = result;
  return result;
}

id sub_192CC2D08()
{
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE15498 = result;
  return result;
}

id sub_192CC2D70()
{
  result = sub_19286D900();
  qword_1EAE154A0 = result;
  return result;
}

id sub_192CC2DE0()
{
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE11D38 = result;
  return result;
}

id sub_192CC2E48()
{
  result = sub_19286D900();
  qword_1EAE154A8 = result;
  return result;
}

id sub_192CC2EC0()
{
  result = sub_19286D900();
  qword_1EAE154B0 = result;
  return result;
}

id sub_192CC2F38()
{
  result = sub_19286D900();
  qword_1EAE154B8 = result;
  return result;
}

id sub_192CC2FB4()
{
  result = sub_19286D900();
  qword_1EAE154C0 = result;
  return result;
}

id sub_192CC302C()
{
  result = sub_19286D900();
  qword_1EAE154C8 = result;
  return result;
}

id sub_192CC309C()
{
  result = sub_19286D900();
  qword_1EAE154D0 = result;
  return result;
}

id sub_192CC3138()
{
  OUTLINED_FUNCTION_0_45();
  result = sub_19286D900();
  qword_1EAE154D8 = result;
  return result;
}

id sub_192CC31A0()
{
  result = sub_19286D900();
  qword_1EAE154E0 = result;
  return result;
}

id sub_192CC3214()
{
  result = sub_19286D900();
  qword_1EAE11928 = result;
  return result;
}

id sub_192CC328C()
{
  result = sub_19286D900();
  qword_1EAE154E8 = result;
  return result;
}

id sub_192CC3304()
{
  result = sub_19286D900();
  qword_1EAE154F0 = result;
  return result;
}

id sub_192CC337C()
{
  result = sub_19286D900();
  qword_1EAE154F8 = result;
  return result;
}

id sub_192CC33E8()
{
  result = sub_19286D900();
  qword_1EAE15500 = result;
  return result;
}

id sub_192CC3460()
{
  result = sub_19286D900();
  qword_1EAE15508 = result;
  return result;
}

id sub_192CC34D8()
{
  result = OUTLINED_FUNCTION_1_54();
  qword_1ED6DE1F8 = result;
  return result;
}

unint64_t sub_192CC3560()
{
  result = qword_1EAE15510;
  if (!qword_1EAE15510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15510);
  }

  return result;
}

id AMSLogBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMSLogBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSLogBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMSLogBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSLogBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogInterpolation.ValueTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_192F9789C();
  MEMORY[0x193B11C90](v1);
  return sub_192F978DC();
}

uint64_t sub_192CC374C@<X0>(uint64_t a1@<X8>)
{
  sub_192F9676C();
  sub_192CC48C0();
  v2 = sub_192F969BC();
  v4 = v3;
  swift_getObjectType();
  v7[0] = sub_192F979EC();
  v7[1] = v5;
  MEMORY[0x193B10CE0](7876666, 0xE300000000000000);
  MEMORY[0x193B10CE0](v2, v4);

  v7[3] = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = sub_19286D180(v7, a1);
  *(a1 + 32) = 0;
  return result;
}

uint64_t static LogInterpolation.identity(_:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v2 = OUTLINED_FUNCTION_90();
  *(v2 + 16) = xmmword_192FBCD50;
  swift_unknownObjectRetain();
  result = sub_192CC374C(v2 + 32);
  *a1 = v2;
  return result;
}

uint64_t static LogInterpolation.values(of:withRedaction:)(void *a1, int a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = sub_192F9665C();
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5_37(v9);
  v75 = sub_192F9651C();
  OUTLINED_FUNCTION_4_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5_37(v14);
  v79 = sub_192F9681C();
  OUTLINED_FUNCTION_4_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5_37(v19);
  v78 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v71 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v77 = &v65 - v25;
  v26 = 0;
  v27 = a1 + 4;
  v28 = a1[2];
  v76 = v16 + 8;
  v73 = (v6 + 8);
  v72 = v11 + 8;
  v29 = a2;
  v70 = (v30 + 32);
  v31 = MEMORY[0x1E69E7CC0];
  v69 = v30 + 8;
  v82 = a2;
  v85 = v4;
LABEL_2:
  while (2)
  {
    if (v28 != v26)
    {
      if (v26 >= v28)
      {
        __break(1u);
      }

      else
      {
        v32 = v26 + 1;
        if (!__OFADD__(v26, 1))
        {
          v33 = v27[v26];
          v34 = *(v33 + 16);
          ++v26;
          if (!v34)
          {
            continue;
          }

          v67 = v28;
          v68 = v27;
          v26 = v32;
          v35 = v33 + 32;

          while (1)
          {
            sub_192CC4858(v35, v93);
            sub_192878268(v93, v91);
            if (v92)
            {
              sub_1928FA5CC(v91);
              if ((v29 & 1) == 0 || !v94)
              {
                sub_19286C588(&v88, v91);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_8_39();
                  v31 = v62;
                }

                v39 = *(v31 + 16);
                a1 = (v39 + 1);
                if (v39 >= *(v31 + 24) >> 1)
                {
                  OUTLINED_FUNCTION_7_38();
                  v31 = v63;
                }

                __swift_destroy_boxed_opaque_existential_0(&v88);
                sub_192CC4890(v93);
                *(v31 + 16) = a1;
                v40 = v91;
                goto LABEL_51;
              }

              __swift_destroy_boxed_opaque_existential_0(&v88);
            }

            else
            {
              sub_1928FC07C(v91, &unk_1EAE131B0);
            }

            sub_192878268(v93, &v88);
            if (v90)
            {
              sub_1928FA5CC(&v88);
              LOBYTE(v88) = 1;
              BYTE1(v88) = v94;
              sub_19286C588(v91, v89);
              switch(BYTE1(v88))
              {
                case 1:
                  __swift_destroy_boxed_opaque_existential_0(v91);
                  __swift_destroy_boxed_opaque_existential_0(v89);
                  a1 = 0xE90000000000005DLL;
                  v4 = 0x657461766972705BLL;
                  break;
                case 2:
                  sub_1928FA5CC(v89);
                  sub_19286C588(v87, v86);
                  sub_192F9682C();
                  sub_192F9680C();
                  v41 = sub_192F967DC();
                  v43 = v42;
                  v44 = v80;

                  v45 = OUTLINED_FUNCTION_4_52();
                  v46(v45, v79);
                  if (v43 >> 60 == 15)
                  {
                    v47 = 0;
                  }

                  else
                  {
                    v47 = v41;
                  }

                  v84 = v47;
                  if (v43 >> 60 == 15)
                  {
                    v43 = 0xC000000000000000;
                  }

                  v81 = sub_192CC4C58(&qword_1EAE15100, MEMORY[0x1E6966640]);
                  sub_192F964FC();
                  v83 = v43;
                  switch(v43 >> 62)
                  {
                    case 1uLL:
                      if (v84 >> 32 < v84)
                      {
                        goto LABEL_56;
                      }

                      v54 = v84;

                      if (!sub_192F955EC() || !__OFSUB__(v54, sub_192F9561C()))
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_59;
                    case 2uLL:
                      v53 = *(v84 + 16);
                      v66 = *(v84 + 24);

                      if (sub_192F955EC() && __OFSUB__(v53, sub_192F9561C()))
                      {
                        goto LABEL_58;
                      }

                      if (__OFSUB__(v66, v53))
                      {
                        goto LABEL_57;
                      }

LABEL_43:
                      sub_192F9560C();
                      v44 = v80;
                      v4 = v85;
LABEL_44:
                      sub_192F964DC();
                      v49 = v84;
                      v50 = v43;
LABEL_45:
                      sub_19290CA6C(v49, v50);
                      v55 = v74;
                      sub_192F964EC();
                      (*v73)(v44, v4);
                      sub_192CC4C58(&qword_1EAE15520, MEMORY[0x1E6966420]);
                      a1 = v55;
                      v56 = v75;
                      sub_192F9771C();
                      OUTLINED_FUNCTION_11_35();
                      sub_19290CA6C(v84, v83);
                      v57 = OUTLINED_FUNCTION_4_52();
                      v58(v57, v56);
                      __swift_destroy_boxed_opaque_existential_0(v87);
                      __swift_destroy_boxed_opaque_existential_0(v91);
                      v29 = v82;
                      break;
                    case 3uLL:
                      memset(v86, 0, 14);
                      goto LABEL_44;
                    default:
                      v48 = v84;
                      v86[0] = v84;
                      LOWORD(v86[1]) = v43;
                      BYTE2(v86[1]) = BYTE2(v43);
                      BYTE3(v86[1]) = BYTE3(v43);
                      BYTE4(v86[1]) = BYTE4(v43);
                      BYTE5(v86[1]) = BYTE5(v43);
                      sub_192F964DC();
                      v49 = v48;
                      v50 = v83;
                      goto LABEL_45;
                  }

                  break;
                case 3:
                  goto LABEL_33;
                default:
                  a1 = v77;
                  v4 = v78;
                  if (swift_dynamicCast())
                  {
                    (*v70)(v71, a1, v4);
                    a1 = sub_192F9596C();
                    v36 = AMSLogableURL(a1);

                    sub_192F967CC();
                    OUTLINED_FUNCTION_11_35();

                    v37 = OUTLINED_FUNCTION_4_52();
                    v29 = v82;
                    v38(v37, v4);
LABEL_32:
                    __swift_destroy_boxed_opaque_existential_0(v91);
                    __swift_destroy_boxed_opaque_existential_0(v89);
                    break;
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
                  if (swift_dynamicCast())
                  {
                    v51 = v87[0];
                    a1 = sub_192F958CC();
                    v52 = AMSLogableError(a1);

                    sub_192F967CC();
                    OUTLINED_FUNCTION_11_35();

                    v29 = v82;
                    goto LABEL_32;
                  }

LABEL_33:
                  sub_19286C588(v91, v87);
                  sub_192F9682C();
                  OUTLINED_FUNCTION_11_35();
                  __swift_destroy_boxed_opaque_existential_0(v91);
                  sub_1928FC07C(&v88, &qword_1EAE15518);
                  break;
              }
            }

            else
            {
              sub_1928FC07C(&v88, &unk_1EAE131B0);
              a1 = 0xE600000000000000;
              v4 = 0x296C6C756E28;
            }

            v90 = MEMORY[0x1E69E6158];
            v88 = v4;
            v89[0] = a1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_8_39();
              v31 = v60;
            }

            v4 = v85;
            v59 = *(v31 + 16);
            a1 = (v59 + 1);
            if (v59 >= *(v31 + 24) >> 1)
            {
              OUTLINED_FUNCTION_7_38();
              v31 = v61;
            }

            sub_192CC4890(v93);
            *(v31 + 16) = a1;
            v40 = &v88;
LABEL_51:
            sub_1928FA5CC(v40);
            v35 += 40;
            if (!--v34)
            {

              v27 = v68;
              v28 = v67;
              goto LABEL_2;
            }
          }
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    return v31;
  }
}

__n128 LogInterpolation.StringInterpolation.appendInterpolation(identity:)()
{
  swift_unknownObjectRetain();
  sub_192F9676C();
  sub_192CC48C0();
  v1 = sub_192F969BC();
  v3 = v2;
  swift_getObjectType();
  *&v19 = sub_192F979EC();
  *(&v19 + 1) = v4;
  MEMORY[0x193B10CE0](7876666, 0xE300000000000000);
  MEMORY[0x193B10CE0](v1, v3);

  v18 = MEMORY[0x1E69E6158];
  v5 = swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_26(v5, v6, v7, v8, v9, v10, v11, v12, v19, *(&v19 + 1), v17, v18, v19, v21);
  sub_1928F9D40();
  v13 = *(*v0 + 16);
  sub_1928F9D58(v13);
  v14 = *v0;
  *(v14 + 16) = v13 + 1;
  v15 = v14 + 40 * v13;
  result = v20;
  *(v15 + 64) = 0;
  *(v15 + 32) = v20;
  *(v15 + 48) = v22;
  *v0 = v14;
  return result;
}

uint64_t LogInterpolation.description.getter()
{
  if (qword_1ED6DF1A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = byte_1ED6DE5D8;
  *(swift_allocObject() + 16) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15528);
  sub_192CC4914();
  OUTLINED_FUNCTION_10_30();
  v1 = sub_192F9674C();

  return v1;
}

void sub_192CC45E8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v15;
      goto LABEL_9;
    case 2uLL:
      v12 = *(a1 + 24);
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v14 = v12;
LABEL_9:
      sub_192CC4778(a1, v14, v13, a3, a4, a5, a6);
      if (v6)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v11 = 0;
      goto LABEL_5;
    default:
      v11 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_192CC46A4(a1, v11, a3, a4, a5, a6);
      if (v6)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_192CC46A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_192CC4C58(a5, a6);
  return sub_192F964DC();
}

uint64_t sub_192CC4778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_192F955EC();
  if (!result || (result = sub_192F9561C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_192F9560C();
      a5(0);
      sub_192CC4C58(a6, a7);
      return sub_192F964DC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_192CC48C0()
{
  result = qword_1EAE11B70;
  if (!qword_1EAE11B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11B70);
  }

  return result;
}

unint64_t sub_192CC4914()
{
  result = qword_1ED6DF178;
  if (!qword_1ED6DF178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE15528);
    sub_1928FDA98(&qword_1ED6DF188, &qword_1EAE15530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DF178);
  }

  return result;
}

unint64_t sub_192CC49B4()
{
  result = qword_1EAE15538;
  if (!qword_1EAE15538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15538);
  }

  return result;
}

unint64_t sub_192CC4A18()
{
  result = qword_1EAE15540;
  if (!qword_1EAE15540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15540);
  }

  return result;
}

unint64_t sub_192CC4A70()
{
  result = qword_1EAE15548;
  if (!qword_1EAE15548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15548);
  }

  return result;
}

unint64_t sub_192CC4AC8()
{
  result = qword_1EAE15550;
  if (!qword_1EAE15550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15550);
  }

  return result;
}

unint64_t sub_192CC4B20()
{
  result = qword_1EAE15558;
  if (!qword_1EAE15558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15558);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogInterpolation.ValueTreatment(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_192CC4C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a5;
    }

    else
    {
      v12 = 6778986;
    }

    if (a6)
    {
      v13 = a6;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    if (a4)
    {
      v14 = a3;
    }

    else
    {
      v14 = 25186;
    }

    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    if (a8)
    {
      v16 = a7;
    }

    else
    {
      v16 = 12343;
    }

    if (a8)
    {
      v17 = a8;
    }

    else
    {
      v17 = 0xE200000000000000;
    }

    if ((*&a11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a11 <= -1.0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (a11 >= 1.84467441e19)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v35 = v15;

      result = sub_192F9771C();
      if ((*&a10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (a10 <= -1.0)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (a10 >= 1.84467441e19)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v20 = result;
      v21 = v19;
      v22 = sub_192F9771C();
      v34 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12F38);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_192FBED40;
      *(inited + 32) = 8217467;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = v14;
      *(inited + 56) = v35;
      *(inited + 64) = 8218235;
      *(inited + 72) = 0xE300000000000000;
      *(inited + 80) = v12;
      *(inited + 88) = v13;
      *(inited + 96) = 8218747;
      *(inited + 104) = 0xE300000000000000;
      *(inited + 112) = v20;
      *(inited + 120) = v21;
      *(inited + 128) = 8221051;
      *(inited + 136) = 0xE300000000000000;
      *(inited + 144) = v16;
      *(inited + 152) = v17;
      *(inited + 160) = 8222587;
      *(inited + 168) = 0xE300000000000000;
      *(inited + 176) = v22;
      *(inited + 184) = v34;
      v25 = sub_192F966CC();
      v26 = v25 + 64;
      v27 = 1 << *(v25 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(v25 + 64);
      v30 = (v27 + 63) >> 6;

      v31 = 0;
      if (v29)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v30)
        {

          sub_192F95A3C();
        }

        v29 = *(v26 + 8 * v32);
        ++v31;
        if (v29)
        {
          v31 = v32;
          do
          {
LABEL_34:
            v29 &= v29 - 1;
            sub_192873B04();

            sub_192F970FC();
          }

          while (v29);
          continue;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  v33 = sub_192F95A8C();

  return __swift_storeEnumTagSinglePayload(a9, 1, 1, v33);
}

id MescalFairplaySession.__allocating_init(mescalType:cachedCertificateProvider:certificateCacher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = OUTLINED_FUNCTION_13_2();
  return MescalFairplaySession.init(mescalType:cachedCertificateProvider:certificateCacher:)(v10, v11, a3, a4, a5);
}

void sub_192CC5438(double a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_192F95B5C();
  }

  v7 = v6;
  (*(a4 + 16))(a4, a1);
}

uint64_t sub_192CC54B4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_192CC5784;
  }

  else
  {
    v9 = *(v3 + 48);

    v8 = sub_192CC55CC;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_192CC55CC()
{
  if (*(v0[6] + 176) == 1)
  {
    OUTLINED_FUNCTION_3();
    sub_192907D90(v0[13], v0[14]);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    v0[23] = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_5_38(v2);

    sub_192907D5C(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192CC5670()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CC5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();

  OUTLINED_FUNCTION_22_22();

  swift_unknownObjectRelease();

  v13 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v13, v14);
  v15 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v15, v16);
  v17 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v17, v18);

  v19 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v19, v20);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_183();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_192CC584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_22_22();

  swift_unknownObjectRelease();

  v13 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v13, v14);
  v15 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v15, v16);
  v17 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v17, v18);

  v19 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v19, v20);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_183();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_192CC5904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_22_22();

  swift_unknownObjectRelease();

  v13 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v13, v14);
  v15 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v15, v16);
  v17 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v17, v18);

  v19 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v19, v20);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_183();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_192CC59BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v13;
  v8[14] = v14;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v10 = swift_task_alloc();
  v8[15] = v10;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  sub_192907D90(v13, v14);

  return MEMORY[0x1EEE6DFA0](sub_192CC5A60, a2, 0);
}

uint64_t sub_192CC5A60()
{
  OUTLINED_FUNCTION_47_0();
  v5 = OUTLINED_FUNCTION_83_6();
  v2[16] = v5;
  *(v5 + 16) = v0;
  *(v5 + 24) = v1;
  v6 = OUTLINED_FUNCTION_88();
  sub_192907D90(v6, v7);
  v8 = OUTLINED_FUNCTION_88();
  sub_192907D90(v8, v9);

  v10 = v4;
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_63_9();
  v11 = v2[6];
  if (*(*(v3 + 184) + 24) || (*(v11 + 176) & 1) != 0)
  {
    v12 = *(v11 + 168);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      *(v11 + 168) = v12 + 1;
      v13 = swift_task_alloc();
      v14 = OUTLINED_FUNCTION_106_4(v13);
      v2[20] = v14;
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      OUTLINED_FUNCTION_10_31(&qword_1EAE123D0, &qword_1EAE143E0);
      v15 = swift_task_alloc();
      v2[21] = v15;
      *v15 = v2;
      v15[1] = sub_192CC5D68;
      OUTLINED_FUNCTION_13_24();
    }

    return MEMORY[0x1EEE6DE18]();
  }

  else
  {
    v16 = v2[13];
    v17 = v2[14];
    *(v11 + 176) = 1;
    sub_192907D90(v16, v17);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    v2[17] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_5_38(v18);
    OUTLINED_FUNCTION_100_6();

    return sub_192CC8884(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_192CC5C54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CC5D68()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_192CCB9C4;
  }

  else
  {
    v9 = *(v3 + 48);

    v8 = sub_192CC5E80;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_192CC5E80()
{
  if (*(v0[6] + 176) == 1)
  {
    OUTLINED_FUNCTION_3();
    sub_192907D90(v0[13], v0[14]);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    v0[23] = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_5_38(v2);

    sub_192CC8884(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192CC5F24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CC6038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v15;
  v8[20] = v16;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v11 = swift_task_alloc();
  v8[21] = v11;
  v11[2] = a8;
  v11[3] = v15;
  v11[4] = v16;
  sub_192907D90(a8, v15);
  v12 = v16;

  return MEMORY[0x1EEE6DFA0](sub_192CC60EC, a1, 0);
}

uint64_t sub_192CC60EC()
{
  OUTLINED_FUNCTION_47_0();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[11];
  v6 = swift_task_alloc();
  v0[22] = v6;
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = v2;
  v7 = OUTLINED_FUNCTION_91();
  sub_192907D90(v7, v8);
  v9 = v2;
  v10 = OUTLINED_FUNCTION_91();
  sub_192907D90(v10, v11);
  v12 = v9;

  v13 = v4;
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_63_9();
  v14 = *(*(v5 + 184) + 24);
  v15 = v0[11];
  if (v14 || (*(v15 + 176) & 1) != 0)
  {
    v16 = *(v15 + 168);
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      *(v15 + 168) = v16 + 1;
      v17 = swift_task_alloc();
      v0[25] = v17;
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      v18 = swift_task_alloc();
      v0[26] = v18;
      *(v18 + 16) = v15;
      *(v18 + 24) = v16;
      OUTLINED_FUNCTION_10_31(&qword_1EAE123D0, &qword_1EAE143E0);
      v19 = swift_task_alloc();
      v0[27] = v19;
      *v19 = v0;
      v19[1] = sub_192CC6468;
      OUTLINED_FUNCTION_13_24();
    }

    return MEMORY[0x1EEE6DE18]();
  }

  else
  {
    v20 = v0[19];
    v21 = v0[20];
    v22 = v0[18];
    *(v15 + 176) = 1;
    sub_192907D90(v22, v20);
    v23 = v21;
    v24 = swift_task_alloc();
    v0[23] = v24;
    *v24 = v0;
    v24[1] = sub_192CC634C;
    v25 = OUTLINED_FUNCTION_51(v0[11]);

    return sub_192CC942C(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

uint64_t sub_192CC634C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *(v2 + 56) = v0;
  *(v2 + 48) = v4;
  *(v2 + 40) = v1;
  OUTLINED_FUNCTION_29_2();
  *v5 = *v1;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CC6468()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    v7 = *(v3 + 88);
    v8 = sub_192CC6768;
  }

  else
  {
    v9 = *(v3 + 88);

    v8 = sub_192CC6580;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_192CC6580()
{
  if (*(v0[11] + 176) == 1)
  {
    OUTLINED_FUNCTION_3();
    v2 = v0[20];
    sub_192907D90(v0[18], v0[19]);
    v3 = v2;
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_192CC664C;
    v5 = OUTLINED_FUNCTION_51(v0[11]);

    sub_192CC942C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192CC664C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *(v2 + 80) = v0;
  *(v2 + 72) = v4;
  *(v2 + 64) = v1;
  OUTLINED_FUNCTION_29_2();
  *v5 = *v1;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CC6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v16 = *(v15 + 200);

  OUTLINED_FUNCTION_15_26();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_192CC6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  HIDWORD(a11) = *(v14 + 72);
  v26 = *(v14 + 168);
  v15 = *(v14 + 160);
  v16 = *(v14 + 136);
  OUTLINED_FUNCTION_26_20();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, a11, a12, a13, a14);
}

uint64_t sub_192CC6904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_15_26();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_192CC69C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  HIDWORD(a11) = *(v14 + 48);
  v26 = *(v14 + 168);
  v15 = *(v14 + 160);
  v16 = *(v14 + 136);
  OUTLINED_FUNCTION_26_20();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, a11, a12, a13, a14);
}

uint64_t sub_192CC6A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_15_26();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t MescalFairplaySession.primeSignature(forData:bag:logKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CC6B68()
{
  OUTLINED_FUNCTION_47_0();
  v1 = type metadata accessor for SendableBag();
  swift_getObjectType();
  v2 = swift_unknownObjectRetain();
  *(v0 + 80) = sub_192908290(v2, v1);
  v3 = OUTLINED_FUNCTION_13_2();
  sub_192907D90(v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 88) = v5;
  *v5 = v6;
  v5[1] = sub_192CC6C8C;
  OUTLINED_FUNCTION_100_6();

  return sub_192CC59BC(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_192CC6C8C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = sub_192CC6D90;
  }

  else
  {

    v7 = sub_192954F5C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_192CC6D90()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CC6E94(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = a3;
  a5;
  v12 = sub_192F95B7C();
  v14 = v13;

  v5[5] = v12;
  v5[6] = v14;
  v15 = sub_192F967CC();
  v17 = v16;

  v5[7] = v17;
  v18 = swift_task_alloc();
  v5[8] = v18;
  *v18 = v5;
  v18[1] = sub_192CC6FC0;

  return MescalFairplaySession.primeSignature(forData:bag:logKey:)(v12, v14, a2, v15, v17);
}

uint64_t sub_192CC6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_2_44();
  OUTLINED_FUNCTION_6();
  *v15 = v14;
  v16 = v14[3];
  *v15 = *v13;

  swift_unknownObjectRelease();

  sub_19290CA6C(v14[5], v14[6]);
  if (v12)
  {
    v17 = sub_192F958CC();

    v18 = v17;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    v19 = sub_192F95B5C();
    v20 = OUTLINED_FUNCTION_7_35();
    sub_19290CA6C(v20, v21);
    v18 = v19;
  }

  v22 = OUTLINED_FUNCTION_64_6();
  v23(v22);

  _Block_release(v14);
  OUTLINED_FUNCTION_183();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t MescalFairplaySession.verifyData(_:signature:bag:logKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CC719C()
{
  OUTLINED_FUNCTION_47_0();
  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for SendableBag();
  swift_getObjectType();
  v4 = v2;
  v5 = swift_unknownObjectRetain();
  v0[9] = sub_192908290(v5, v3);
  v6 = v4;
  v7 = OUTLINED_FUNCTION_13_2();
  sub_192907D90(v7, v8);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_192CC72D0;
  v10 = OUTLINED_FUNCTION_30_3();

  return sub_192CC6038(v10, v11, 0xD000000000000011, v12, v13, v1, v14, v15);
}

uint64_t sub_192CC72D0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {

    *(v5 + 96) = v3 & 1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CC73E4()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_192CC7444()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_40();

  return v2(0);
}

uint64_t sub_192CC7564(void *a1, void *a2, uint64_t a3, void *a4, void *aBlock, void *a6)
{
  v6[3] = a3;
  v6[4] = a6;
  v6[2] = a1;
  v6[5] = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;
  swift_unknownObjectRetain();
  v14 = a4;
  a6;
  v15 = sub_192F95B7C();
  v17 = v16;

  v6[6] = v15;
  v6[7] = v17;
  v18 = sub_192F967CC();
  v20 = v19;

  v6[8] = v20;
  v21 = swift_task_alloc();
  v6[9] = v21;
  *v21 = v6;
  v21[1] = sub_192CC76A4;

  return MescalFairplaySession.verifyData(_:signature:bag:logKey:)(v12, v15, v17, a3, v18, v20);
}

uint64_t sub_192CC76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_98_3();
  OUTLINED_FUNCTION_6();
  *v15 = v14;
  v16 = *(v14 + 32);
  v17 = *(v14 + 16);
  *v15 = *v13;

  swift_unknownObjectRelease();

  sub_19290CA6C(*(v14 + 48), *(v14 + 56));
  if (v12)
  {
    v18 = sub_192F958CC();

    v19 = OUTLINED_FUNCTION_75_7();
    v20(v19);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_76_7();
    v22(v21);
  }

  _Block_release(*(v14 + 40));
  OUTLINED_FUNCTION_183();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t MescalFairplaySession.verifyPrimeSignature(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CC7888()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR___AMSMescalFairplaySession_queue);
  *(v0 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_192CC78B4, v1, 0);
}

uint64_t sub_192CC78B4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];

  v2 = v1;
  v3 = OUTLINED_FUNCTION_88();
  sub_192907D90(v3, v4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_192CC797C;
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_192C4C4A8(v6, v6, v7, v8, v9);
}