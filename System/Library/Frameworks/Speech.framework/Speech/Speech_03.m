uint64_t sub_1AC608A00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1AC6310EC(0, v3, 0);
    v4 = v28;
    do
    {
      v27 = *(a1 + 32);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v8 = OUTLINED_FUNCTION_77();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      v10 = OUTLINED_FUNCTION_146_0();
      v19 = OUTLINED_FUNCTION_137_0(v10, v11, v12, v13, v14, v15, v16, v17, v26.n128_i64[0], v26.n128_i64[1], v27, *(&v27 + 1), v18);
      if (v20)
      {
        OUTLINED_FUNCTION_158_0();
        v26 = v21;
        sub_1AC6310EC(v22, v23, v24);
        v19 = v26;
        v4 = v28;
      }

      OUTLINED_FUNCTION_171_1(v19);
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AC608AFC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    OUTLINED_FUNCTION_122_0();
    sub_1AC6316C0();
    v5 = (v1 + 40);
    v4 = v16;
    do
    {
      v12 = *(v5 - 1);
      v13 = *v5;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE58, &qword_1AC7A8250);
      v7 = OUTLINED_FUNCTION_77();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      swift_dynamicCast();
      OUTLINED_FUNCTION_180_0();
      if (v9)
      {
        OUTLINED_FUNCTION_158_0();
        sub_1AC6316C0();
        v4 = v16;
      }

      v5 += 2;
      *(v4 + 16) = v6;
      v10 = v4 + 16 * v2;
      *(v10 + 32) = v14;
      *(v10 + 40) = v15;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1AC608C18()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = sub_1AC79FB18();
  v4 = OUTLINED_FUNCTION_40(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v37 = MEMORY[0x1E69E7CD0];
  v34 = *(v2 + 16);
  if (v34)
  {
    v11 = 0;
    v33 = v2 + 32;
    v31 = v8;
    v12 = (v8 + 8);
    do
    {
      v13 = *(v33 + 16 * v11);
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v13))
      {
        v15 = v14;
        v36 = v11;
        ObjectType = swift_getObjectType();
        v17 = v13;
        v18 = *(v15 + 32);
        v35 = v17;
        swift_unknownObjectRetain();
        v19 = *(v18(ObjectType, v15) + 16);
        if (v19)
        {
          v20 = *(v31 + 80);
          OUTLINED_FUNCTION_89_0();
          v32 = v21;
          v23 = v21 + v22;
          v25 = *(v24 + 72);
          v26 = *(v24 + 16);
          do
          {
            v26(v10, v23, v3);
            sub_1AC60FB1C(v0, v10);
            v27 = *v12;
            v28 = OUTLINED_FUNCTION_161();
            v29(v28);
            v23 += v25;
            --v19;
          }

          while (v19);
        }

        swift_unknownObjectRelease();
        v11 = v36;
      }

      ++v11;
    }

    while (v11 != v34);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC608DF4()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = sub_1AC79FB18();
  v4 = OUTLINED_FUNCTION_40(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  v12 = *(v2 + 16);
  OUTLINED_FUNCTION_10_1();
  sub_1AC61AAD8(v13, v14);
  v15 = OUTLINED_FUNCTION_110_0();
  v24[1] = MEMORY[0x1B26E9020](v15, v3);
  v16 = *(v2 + 16);
  if (v16)
  {
    v19 = *(v6 + 16);
    v17 = v6 + 16;
    v18 = v19;
    v20 = *(v17 + 64);
    OUTLINED_FUNCTION_89_0();
    v24[0] = v2;
    v22 = v2 + v21;
    v23 = *(v17 + 56);
    do
    {
      v18(v0, v22, v3);
      sub_1AC60FB1C(v11, v0);
      (*(v17 - 8))(v11, v3);
      v22 += v23;
      --v16;
    }

    while (v16);
  }

  else
  {
    OUTLINED_FUNCTION_86();
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC608F68(uint64_t a1)
{
  v3 = MEMORY[0x1B26E9020](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v14 = v3;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 32;
    do
    {
      OUTLINED_FUNCTION_183_0(v3, *(a1 + v11), v4, v5, v6, v7, v8, v9, v13);
      v3 = sub_1AC6100B0();
      v11 += 8;
      --v10;
    }

    while (v10);

    return v14;
  }

  else
  {
    OUTLINED_FUNCTION_86();
  }

  return v1;
}

uint64_t sub_1AC608FF4(uint64_t a1)
{
  result = MEMORY[0x1B26E9020](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v8 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v8;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1AC610168();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC609114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OUTLINED_FUNCTION_185_0(a1);
  v11(v10);
  v12 = OUTLINED_FUNCTION_110_0();
  v20 = MEMORY[0x1B26E9020](v12, a3);
  v16 = *(v5 + 16);
  if (v16)
  {
    v17 = 32;
    do
    {
      sub_1AC610E58(&v19 + 7, *(v5 + v17++), a4, a5, a3, v13, v14, v15, v19, v20);
      --v16;
    }

    while (v16);

    return v20;
  }

  else
  {
    OUTLINED_FUNCTION_86();
  }

  return v6;
}

void sub_1AC6091F8(unint64_t a1)
{
  sub_1AC605680(a1);
  v2 = sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
  sub_1AC61B8BC();
  v3 = OUTLINED_FUNCTION_110_0();
  MEMORY[0x1B26E9020](v3, v2);
  v4 = sub_1AC605680(a1);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = OUTLINED_FUNCTION_161();
      v6 = MEMORY[0x1B26E95B0](v15);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = OUTLINED_FUNCTION_183_0(v6, v6, v7, v8, v9, v10, v11, v12, v16);
    sub_1AC610638(v13, v14);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1AC6092E8(uint64_t a1)
{
  OUTLINED_FUNCTION_185_0(a1);
  v3 = sub_1AC61AC1C();
  MEMORY[0x1B26E9020](v2, &type metadata for NormalizingTranscriber.ContentHint, v3);
  v4 = 0;
  v5 = *(v1 + 16);
  while (1)
  {
    if (v5 == v4)
    {

      return;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = v4 + 1;
    v7 = *(v1 + 8 * v4 + 32);
    v8 = sub_1AC5D37E0(v7);
    v16 = OUTLINED_FUNCTION_183_0(v8, v9, v10, v11, v12, v13, v14, v15, v17);
    sub_1AC610A6C(v16, v7);
    sub_1AC5D9454(v17);
    v4 = v6;
  }

  __break(1u);
}

void sub_1AC609398()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_185_0(v2);
  v3 = sub_1AC61ABC8();
  v4 = MEMORY[0x1B26E9020](v1, &type metadata for NormalizingTranscriber.TranscriptionOption, v3);
  for (i = *(v0 + 16); i; --i)
  {
    v6 = *(v4 + 40);
    sub_1AC7A0E78();
    OUTLINED_FUNCTION_157_0();
    v7 = sub_1AC7A0EC8() & ~(-1 << *(v4 + 32));
    if (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1AC6138E0(v7);
    }
  }

  OUTLINED_FUNCTION_61_0();
}

uint64_t sub_1AC6094B4(uint64_t a1)
{
  OUTLINED_FUNCTION_185_0(a1);
  v3 = sub_1AC61AB20();
  v8 = MEMORY[0x1B26E9020](v2, &type metadata for NormalizingTranscriber.ResultAttributeOption, v3);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      v6 = *(v1 + v5);
      sub_1AC610984();
      ++v5;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_86();
  }

  return v2;
}

uint64_t sub_1AC609578(unint64_t a1)
{
  sub_1AC605680(a1);
  v2 = type metadata accessor for SpeechRecognizerWorker();
  sub_1AC61AAD8(&qword_1EB56B418, type metadata accessor for SpeechRecognizerWorker);
  v3 = OUTLINED_FUNCTION_110_0();
  v18 = MEMORY[0x1B26E9020](v3, v2);
  result = sub_1AC605680(a1);
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v18;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = OUTLINED_FUNCTION_161();
      result = MEMORY[0x1B26E95B0](v16);
      v7 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = OUTLINED_FUNCTION_183_0(result, v8, v9, v10, v11, v12, v13, v14, v17);
    sub_1AC610C70(v15, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1AC6096F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79FB18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a2 + 56);
  v38 = (v16 + 63) >> 6;
  v36 = v5 + 32;
  v41 = a1 + 56;
  v42 = v5 + 16;
  v19 = (v5 + 8);

  v21 = 0;
  v37 = a2;
  v34 = v13;
  v35 = v5;
  v33 = a2 + 56;
LABEL_7:
  if (v18)
  {
    v22 = v21;
LABEL_12:
    v23 = *(v5 + 72);
    v24 = *(a2 + 48) + v23 * (__clz(__rbit64(v18)) | (v22 << 6));
    v39 = *(v5 + 16);
    v40 = v23;
    v39(v13, v24, v4);
    (*(v5 + 32))(v43, v13, v4);
    if (*(a1 + 16))
    {
      v25 = a1;
      v18 &= v18 - 1;
      v26 = *(a1 + 40);
      sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
      v27 = sub_1AC79FE48();
      v28 = ~(-1 << *(v25 + 32));
      while (1)
      {
        v29 = v27 & v28;
        if (((*(v41 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
        {
          break;
        }

        v39(v9, *(v25 + 48) + v29 * v40, v4);
        sub_1AC61AAD8(&qword_1EB56B460, MEMORY[0x1E6969770]);
        v30 = sub_1AC79FED8();
        v31 = *v19;
        (*v19)(v9, v4);
        v27 = v29 + 1;
        if (v30)
        {
          result = (v31)(v43, v4);
          v21 = v22;
          a2 = v37;
          a1 = v25;
          v13 = v34;
          v5 = v35;
          v15 = v33;
          goto LABEL_7;
        }
      }
    }

    (*v19)(v43, v4);
    v14 = 0;
LABEL_19:

    return v14;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v38)
    {
      v14 = 1;
      goto LABEL_19;
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC609A84()
{
  OUTLINED_FUNCTION_62();
  if (*(v3 + 16) < *(v2 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_78_0();
  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v4 + 56;

  v12 = 0;
  v27 = v0;
  if (v9)
  {
LABEL_10:
    if (*(v1 + 16))
    {
      OUTLINED_FUNCTION_57_2();
      v15 = (*(v0 + 48) + ((v12 << 10) | (16 * v14)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v1 + 40);
      sub_1AC7A0E78();

      sub_1AC7A0048();
      sub_1AC7A0EC8();
      v19 = *(v1 + 32);
      OUTLINED_FUNCTION_63_0();
      v22 = ~v21;
      while (1)
      {
        v23 = v20 & v22;
        if (((*(v11 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
        {
          break;
        }

        v24 = (*(v1 + 48) + 16 * v23);
        if (*v24 != v17 || v24[1] != v16)
        {
          v26 = sub_1AC7A0D38();
          v20 = v23 + 1;
          if ((v26 & 1) == 0)
          {
            continue;
          }
        }

        v0 = v27;
        goto LABEL_10;
      }
    }

    else
    {
LABEL_21:
    }

    goto LABEL_20;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_21;
    }

    ++v12;
    if (*(v6 + 8 * v13))
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1AC609C18()
{
  OUTLINED_FUNCTION_62();
  if (*(v3 + 16) < *(v2 + 16))
  {
LABEL_2:
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_78_0();
  v6 = 0;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v4 + 56;
  if ((v8 & *(v5 + 56)) != 0)
  {
LABEL_7:
    v10 = v6;
LABEL_11:
    if (*(v1 + 16))
    {
      OUTLINED_FUNCTION_159_0();
      v12 = *(*(v0 + 48) + (v11 | (v10 << 6)));
      v13 = *(v1 + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v12);
      v14 = sub_1AC7A0EC8();
      v15 = ~(-1 << *(v1 + 32));
      while (1)
      {
        v16 = v14 & v15;
        if (((*(v9 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        v14 = v16 + 1;
        if (*(*(v1 + 48) + v16) == v12)
        {
          v6 = v10;
          goto LABEL_7;
        }
      }
    }

    goto LABEL_2;
  }

  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= ((v7 + 63) >> 6))
    {
      goto LABEL_2;
    }

    ++v6;
    if (*(v5 + 56 + 8 * v10))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1AC609D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC609DF0, 0, 0);
}

uint64_t sub_1AC609DF0()
{
  result = sub_1AC605680(*(v0 + 88));
  v30 = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v2 = 0;
    v3 = *(v0 + 88);
    v27 = v3 + 32;
    v28 = **(v0 + 80);
    v29 = v3 & 0xC000000000000001;
    do
    {
      if (v29)
      {
        v4 = MEMORY[0x1B26E95B0](v2, *(v0 + 88));
      }

      else
      {
        v4 = *(v27 + 8 * v2);
      }

      v5 = v4;
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = sub_1AC7A0288();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v10 = v9 + 2;
      v9[3] = 0;
      v9[4] = v5;
      v11 = OUTLINED_FUNCTION_77();
      sub_1AC61BB80(v11, v12);
      LODWORD(v7) = __swift_getEnumTagSinglePayload(v7, 1, v8);
      v13 = v5;
      v14 = *(v0 + 96);
      if (v7 == 1)
      {
        sub_1AC61BBF0(*(v0 + 96), &qword_1EB56BE70);
      }

      else
      {
        sub_1AC7A0278();
        (*(*(v8 - 8) + 8))(v14, v8);
      }

      if (*v10)
      {
        v15 = v9[3];
        v16 = *v10;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = sub_1AC7A01B8();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      OUTLINED_FUNCTION_99();
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_1AC7A8428;
      *(v20 + 24) = v9;

      if (v19 | v17)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        v21 = v0 + 16;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v21 = 0;
      }

      ++v2;
      v22 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v21;
      *(v0 + 64) = v28;
      swift_task_create();

      sub_1AC61BBF0(v22, &qword_1EB56BE70);
    }

    while (v30 != v2);
  }

  v23 = **(v0 + 80);
  OUTLINED_FUNCTION_30(&unk_1AC7A8438);
  v31 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 112) = v25;
  *v25 = v26;
  v25[1] = sub_1AC60A10C;

  return v31(v0 + 120, v23);
}

void sub_1AC60A10C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = *(v2 + 112);
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_138();

    MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1AC60A21C()
{
  OUTLINED_FUNCTION_85();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 120);
  if (v3 == 4)
  {
    LOBYTE(v3) = 3;
  }

  **(v0 + 72) = v3;

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC60A294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a1;
  *(v4 + 160) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC60A2B4, 0, 0);
}

uint64_t sub_1AC60A2B4()
{
  OUTLINED_FUNCTION_45();
  objc_opt_self();
  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = v0[20];
  v2 = type metadata accessor for ClientInfo(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB56E830);
  v5 = *v3;
  v4 = v3[1];
  v0[21] = sub_1AC79FF58();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1AC60A408;
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFF8, &qword_1AC7A8448);
  v8 = OUTLINED_FUNCTION_80_0(v7);
  v0[11] = 1107296256;
  v0[12] = sub_1AC60A60C;
  v0[13] = &block_descriptor_75;
  v0[14] = v6;
  OUTLINED_FUNCTION_190_0(v8, sel_installationStateForAssetConfig_clientIdentifier_completion_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AC60A408()
{
  OUTLINED_FUNCTION_85();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC60A4D8()
{
  OUTLINED_FUNCTION_45();
  v6 = v0;
  v1 = *(v0 + 144);

  if (v1 >= 3)
  {
    sub_1AC7A09C8();

    strcpy(v5, "Unknown state ");
    v5[15] = -18;
    *(v0 + 80) = v1;
    v4 = sub_1AC7A0CC8();
    MEMORY[0x1B26E8C40](v4);

    return sub_1AC7A0B78();
  }

  else
  {
    **(v0 + 152) = 3 - v1;
    OUTLINED_FUNCTION_44();

    return v2();
  }
}

uint64_t sub_1AC60A60C(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return sub_1AC70C6B8(v3, a2);
}

uint64_t sub_1AC60A650(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE8, &qword_1AC7A8440);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC60A71C, 0, 0);
}

uint64_t sub_1AC60A71C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[6];
  v2 = v0[3];
  sub_1AC7A0208();
  v0[7] = sub_1AC61C1F0(&qword_1EB56BFF0, &unk_1EB56BFE8);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_1AC60A7F0;
  v6 = v0[6];
  v7 = v0[4];

  return MEMORY[0x1EEE6D8C8](v0 + 12);
}

uint64_t sub_1AC60A7F0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_130_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC60A8F8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 96);
  if (v1 == 4)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    v2 = *(v0 + 48);
    **(v0 + 16) = 4;

    OUTLINED_FUNCTION_44();

    return v3();
  }

  else
  {
    *(v0 + 98) = v1;
    v5 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 80) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_73_0(v6);

    return MEMORY[0x1EEE6D8C8](v0 + 97);
  }
}

uint64_t sub_1AC60A9E0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC60AA3C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_130_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC60AB44()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 97);
  if (v1 == 4)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    v2 = *(v0 + 48);
    **(v0 + 16) = *(v0 + 98);

    OUTLINED_FUNCTION_44();

    return v3();
  }

  else
  {
    if (v1 >= *(v0 + 98))
    {
      LOBYTE(v1) = *(v0 + 98);
    }

    *(v0 + 98) = v1;
    v5 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 80) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_73_0();

    return MEMORY[0x1EEE6D8C8](v0 + 97);
  }
}

uint64_t sub_1AC60AC38()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t static AssetInventory.assetInstallationRequest(supporting:)()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1AC79FB18();
  v1[4] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1AC60AD40()
{
  v1 = 0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = v2 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v15 = v4;
LABEL_2:
  v0[7] = v5;
  v6 = (v4 + 16 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v7 = *v6;
    v6 += 2;
    swift_getObjectType();
    ++v1;
    if (dynamic_cast_existential_1_conditional(v7))
    {
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_153_1();
        v5 = v8;
      }

      if (*(v5 + 16) >= *(v5 + 24) >> 1)
      {
        sub_1AC60DAF8();
        v5 = v9;
      }

      OUTLINED_FUNCTION_174_0();
      v4 = v15;
      goto LABEL_2;
    }
  }

  sub_1AC608A00(v5, &qword_1EB56BFA8, &qword_1AC7A83B8);
  sub_1AC608C18();
  v0[8] = v10;

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_179_0(v11);
  *v12 = v13;
  v12[1] = sub_1AC60AEEC;
  v14 = v0[3];

  static AssetInventory.reservedLocales.getter();
}

uint64_t sub_1AC60AEEC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC60B228()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    v9 = v3[7];
    (*(v3[5] + 8))(v3[6], v3[4]);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_130_1();
    v11(v10);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC60B594()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[11];
  v2 = v0[6];

  OUTLINED_FUNCTION_44();
  v4 = v0[15];

  return v3();
}

uint64_t static AssetInventory.uninstallAssets(exceptFor:)()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1AC79FB18();
  v1[5] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[6] = v4;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC60B6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_137();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_169();
  a20 = v22;
  v25 = objc_opt_self();
  if (qword_1EB56B598 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_4_1();
  }

  v26 = type metadata accessor for ClientInfo(0);
  v27 = __swift_project_value_buffer(v26, qword_1EB56E830);
  v29 = *v27;
  v28 = v27[1];
  v30 = sub_1AC79FF58();
  v31 = [v25 subscriptionsForClientIdentifier_];

  sub_1AC5CF764(0, &qword_1EB56AB20, off_1E797ACC0);
  v32 = sub_1AC7A0158();

  v25 = sub_1AC605680(v32);
  v33 = sub_1AC61663C();
  a10 = MEMORY[0x1B26E9020](v25, &type metadata for HashableEntitledAssetConfig, v33);
  v34 = sub_1AC605680(v32);
  for (i = 0; v34 != i; ++i)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1B26E95B0](i, v32);
    }

    else
    {
      if (i >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v36 = *(v32 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v25 = &a10;
    sub_1AC60FDE4(&a11, v36);
  }

  v37 = *(v22 + 24);

  v63 = v22;
  *(v22 + 16) = a10;
  v38 = *(v37 + 16);
  v39 = v22 + 16;
  if (v38)
  {
    v40 = (*(v63 + 24) + 32);
    do
    {
      v41 = *v40;
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v41))
      {
        v43 = v42;
        ObjectType = swift_getObjectType();
        v45 = *(v43 + 32);
        swift_unknownObjectRetain();
        v46 = v45(ObjectType, v43);
        if (v46)
        {
          v47 = v46;
          v48 = sub_1AC6192BC(v46);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v40 += 2;
      --v38;
    }

    while (v38);
  }

  v49 = swift_task_alloc();
  *(v63 + 64) = v49;
  *(v49 + 16) = v39;
  v50 = *(MEMORY[0x1E69E88D8] + 4);
  v51 = swift_task_alloc();
  v52 = OUTLINED_FUNCTION_179_0(v51);
  *v52 = v53;
  v52[1] = sub_1AC60B998;
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DDE8](v54, v55, v56, v57, v58, v59, v60, v61, v63, a10, a11, a12, a13, a14);
}

uint64_t sub_1AC60B998()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC60BA98()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[3];
  sub_1AC608C18();
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_132_1(v3);

  return static AssetInventory.reservedLocales.getter();
}

uint64_t sub_1AC60BB28()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 88);
  *v2 = *v0;
  *(v1 + 96) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC60BC10()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  sub_1AC608DF4();
  v4 = sub_1AC60C6C4(v2, v3);
  *(v0 + 104) = v4;

  *(v0 + 136) = *(v4 + 32);
  v5 = *(v4 + 56);
  OUTLINED_FUNCTION_93_1();
  v8 = v7 & v6;
  if (v8)
  {
    v9 = 0;
    v10 = *(v0 + 104);
LABEL_6:
    *(v0 + 112) = v8;
    *(v0 + 120) = v9;
    v13 = *(v0 + 48);
    v14 = *(v0 + 40);
    v15 = OUTLINED_FUNCTION_35_0(v10, *(v0 + 56));
    v16(v15);
    v17 = swift_task_alloc();
    *(v0 + 128) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_66_0(v17);

    return static AssetInventory.release(reservedLocale:)();
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    v10 = *(v0 + 104);
    while (v12 != v11)
    {
      v10 = OUTLINED_FUNCTION_163_0(v10, v11);
      if (v8)
      {
        goto LABEL_6;
      }
    }

    v19 = *(v0 + 56);

    v20 = *(v0 + 16);

    OUTLINED_FUNCTION_44();

    return v21();
  }
}

uint64_t sub_1AC60BD48()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v2 = v1[16];
  v3 = v1[7];
  v4 = v1[6];
  v5 = v1[5];
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);
  v8 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1AC60BE88()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 120);
  v2 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (v2)
  {
    v3 = *(v0 + 104);
LABEL_7:
    *(v0 + 112) = v2;
    *(v0 + 120) = v1;
    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v3 + 48) + *(*(v0 + 48) + 72) * (__clz(__rbit64(v2)) | (v1 << 6)), *(v0 + 40));
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_66_0();

    static AssetInventory.release(reservedLocale:)();
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= (((1 << *(v0 + 136)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v0 + 104);
      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v6 = *(v0 + 104);
    v7 = *(v0 + 56);

    v8 = *(v0 + 16);

    OUTLINED_FUNCTION_44();

    v9();
  }
}

uint64_t sub_1AC60BFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC60C06C, 0, 0);
}

uint64_t sub_1AC60C06C()
{
  v1 = **(v0 + 80);
  v3 = *(v1 + 56);
  v2 = v1 + 56;
  v4 = -1 << *(**(v0 + 80) + 32);
  OUTLINED_FUNCTION_93_1();
  v7 = v6 & v5;
  v9 = (63 - v8) >> 6;
  v37 = v10;

  v12 = 0;
  v36 = v2;
  if (v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {
      break;
    }

    v7 = *(v2 + 8 * v13);
    ++v12;
    if (v7)
    {
      v12 = v13;
      do
      {
LABEL_6:
        v15 = *(v0 + 88);
        v14 = *(v0 + 96);
        v16 = *(*(v37 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));
        v17 = sub_1AC7A0288();
        v18 = OUTLINED_FUNCTION_134_0();
        __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
        v21 = swift_allocObject();
        v21[2] = 0;
        v22 = v21 + 2;
        v21[3] = 0;
        v21[4] = v16;
        sub_1AC61BB80(v14, v15);
        LODWORD(v15) = __swift_getEnumTagSinglePayload(v15, 1, v17);
        v38 = v16;
        v23 = *(v0 + 88);
        if (v15 == 1)
        {
          sub_1AC61BBF0(*(v0 + 88), &qword_1EB56BE70);
        }

        else
        {
          sub_1AC7A0278();
          (*(*(v17 - 8) + 8))(v23, v17);
        }

        if (*v22)
        {
          v24 = v21[3];
          v25 = *v22;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v26 = sub_1AC7A01B8();
          v28 = v27;
          swift_unknownObjectRelease();
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v29 = **(v0 + 72);
        OUTLINED_FUNCTION_99();
        v30 = swift_allocObject();
        *(v30 + 16) = &unk_1AC7A8400;
        *(v30 + 24) = v21;

        if (v28 | v26)
        {
          v31 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v26;
          *(v0 + 40) = v28;
        }

        else
        {
          v31 = 0;
        }

        v32 = *(v0 + 96);
        v7 &= v7 - 1;
        *(v0 + 48) = 1;
        *(v0 + 56) = v31;
        *(v0 + 64) = v29;
        swift_task_create();

        result = sub_1AC61BBF0(v32, &qword_1EB56BE70);
        v2 = v36;
      }

      while (v7);
    }
  }

  v34 = *(v0 + 88);
  v33 = *(v0 + 96);

  OUTLINED_FUNCTION_44();

  return v35();
}

uint64_t sub_1AC60C3B0()
{
  OUTLINED_FUNCTION_45();
  objc_opt_self();
  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = v0[18];
  v2 = type metadata accessor for ClientInfo(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB56E830);
  v5 = *v3;
  v4 = v3[1];
  v0[19] = sub_1AC79FF58();
  v0[2] = v0;
  v0[3] = sub_1AC60C4FC;
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
  v8 = OUTLINED_FUNCTION_80_0(v7);
  v0[11] = 1107296256;
  v0[12] = sub_1AC6BB2BC;
  v0[13] = &block_descriptor_0;
  v0[14] = v6;
  OUTLINED_FUNCTION_190_0(v8, sel_unsubscribeFromAssetWithConfig_clientIdentifier_completion_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AC60C4FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC60C5F8()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC60C650()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC60C6C4(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1AC619CBC(a1);
    return a2;
  }

  else
  {

    return sub_1AC61671C(a1, a2);
  }
}

uint64_t sub_1AC60C718(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1AC7A08E8();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v4 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1AC619ED8(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_1AC7A08E8() / 8 >= v4)
  {
    goto LABEL_14;
  }

  v6 = sub_1AC7A08E8();
  a2 = sub_1AC683844(v5, v6);
LABEL_11:

  return sub_1AC617440(a1, a2);
}

uint64_t sub_1AC60C804()
{
  *(v1 + 24) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC60C8A0, v0, 0);
}

uint64_t sub_1AC60C8A0()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    goto LABEL_3;
  }

  v3 = v0[4];
  sub_1AC7A0288();
  v4 = OUTLINED_FUNCTION_134_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_99();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1AC6C2D6C();
  v9 = *(v1 + 112);
  *(v1 + 112) = v10;

  v2 = *(v1 + 112);
  if (v2)
  {
LABEL_3:
    v0[5] = v2;
    v11 = *(MEMORY[0x1E69E86A8] + 4);

    v12 = swift_task_alloc();
    v0[6] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE78, &qword_1AC7A8288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
    *v12 = v0;
    v12[1] = sub_1AC60CA04;
    OUTLINED_FUNCTION_142_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_1AC60CA04()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = v2[6];
  v6 = v2[5];
  *v4 = *v1;
  *(v3 + 56) = v0;

  v7 = v2[3];
  if (v0)
  {
    v8 = sub_1AC60CBA0;
  }

  else
  {
    v8 = sub_1AC60CB40;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC60CB40()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = OUTLINED_FUNCTION_69_1();

  return v4(v3);
}

uint64_t sub_1AC60CBA0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1AC60CC1C()
{
  OUTLINED_FUNCTION_72();
  if (qword_1ED938050 != -1)
  {
    swift_once();
  }

  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = type metadata accessor for ClientInfo(0);
  v2 = __swift_project_value_buffer(v1, qword_1EB56E830);
  v3 = *v2;
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_85_0(v5);
  OUTLINED_FUNCTION_170();

  return sub_1AC638088();
}

uint64_t sub_1AC60CD1C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  *(v2 + 32) = v6;

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

uint64_t sub_1AC60CE38()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE78, &qword_1AC7A8288);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_132_1(v3);

  return sub_1AC6B6DDC();
}

uint64_t sub_1AC60CEF4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC60CFEC()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];

  *v3 = v2;
  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC60D050()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[7];
  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC60D0B4()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC60D0FC()
{
  type metadata accessor for AssetInventory.ServiceActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_1EB56BC98 = v0;
  return result;
}

uint64_t sub_1AC60D158(void *a1, void *a2)
{
  v4 = [a1 assetType];
  if (v4 != [a2 assetType])
  {
    goto LABEL_7;
  }

  v5 = [a1 language];
  v6 = sub_1AC79FF68();
  v8 = v7;

  v9 = [a2 language];
  v10 = sub_1AC79FF68();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_1AC7A0D38();

    if ((v14 & 1) == 0)
    {
LABEL_7:
      v15 = 0;
      return v15 & 1;
    }
  }

  v16 = sub_1AC61AA74(a1);
  v18 = v17;
  v19 = sub_1AC61AA74(a2);
  if (v18)
  {
    if (v20)
    {
      if (v16 == v19 && v18 == v20)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_1AC7A0D38();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v20)
    {
      v15 = 1;
      return v15 & 1;
    }

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1AC60D2F0(int a1, id a2)
{
  MEMORY[0x1B26E9A40]([a2 assetType]);
  v3 = [a2 language];
  sub_1AC79FF68();

  sub_1AC7A0048();

  sub_1AC61AA74(a2);
  if (!v4)
  {
    return sub_1AC7A0E98();
  }

  sub_1AC7A0E98();
  sub_1AC7A0048();
}

uint64_t sub_1AC60D3D8(void *a1)
{
  sub_1AC7A0E78();
  sub_1AC60D2F0(&v3, a1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC60D43C()
{
  v1 = *v0;
  sub_1AC7A0E78();
  sub_1AC60D2F0(&v3, v1);
  return sub_1AC7A0EC8();
}

uint64_t static AssetInventory.allocatedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return static AssetInventory.reservedLocales.getter();
}

uint64_t sub_1AC60D508()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_69_1();

  return v6(v5);
}

uint64_t static AssetInventory.allocate(locale:)()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return static AssetInventory.reserve(locale:)();
}

uint64_t sub_1AC60D674()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = *(v4 + 16);
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

uint64_t static AssetInventory.deallocate(locale:)()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return static AssetInventory.release(reservedLocale:)();
}

uint64_t sub_1AC60D7F0()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  OUTLINED_FUNCTION_82();

  return v7(v2);
}

unint64_t sub_1AC60D8D8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1AC60D8F8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC60D91C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AC60DA14;

  return v7(a1);
}

uint64_t sub_1AC60DA14()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

void sub_1AC60DAF8()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C010, &unk_1AC7A9210);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFA8, &qword_1AC7A83B8);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60DBDC()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC5D93E8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_48_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60DCAC()
{
  OUTLINED_FUNCTION_42_0();
  if (v2)
  {
    OUTLINED_FUNCTION_41_0();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_106_1();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_46_1();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_114_1();
  sub_1AC60F700(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_178_0();
  v10 = type metadata accessor for TranscriptionSegment();
  OUTLINED_FUNCTION_111_1(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_89_0();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_45_2(v13);
    sub_1AC703EF8(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }
}

void sub_1AC60DD6C()
{
  OUTLINED_FUNCTION_42_0();
  if (v2)
  {
    OUTLINED_FUNCTION_41_0();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_106_1();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_46_1();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_113_1();
  sub_1AC60F700(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_178_0();
  v10 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_111_1(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_89_0();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_45_2(v13);
    sub_1AC703EE0(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }
}

void sub_1AC60DE2C()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD30, &qword_1AC7A8160);
      v8 = OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_6_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC703F50(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_48_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60DEE0()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD38, &qword_1AC7A8168);
      v8 = OUTLINED_FUNCTION_109_0();
      OUTLINED_FUNCTION_21_2(v8);
      OUTLINED_FUNCTION_20_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_15_1();
        sub_1AC703F78(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD40, &qword_1AC7A8170);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60DFA0()
{
  OUTLINED_FUNCTION_42_0();
  if (v2)
  {
    OUTLINED_FUNCTION_41_0();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_106_1();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_46_1();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_112_1();
  sub_1AC60F700(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_178_0();
  v10 = sub_1AC79FBC8();
  OUTLINED_FUNCTION_111_1(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_89_0();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_45_2(v13);
    sub_1AC703F38(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }
}

void sub_1AC60E060()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD20, &qword_1AC7A8150);
      v8 = OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_21_2(v8);
      OUTLINED_FUNCTION_20_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D20(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD28, &qword_1AC7A8158);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E11C()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE68, &unk_1AC7A8260);
      v8 = OUTLINED_FUNCTION_109_0();
      OUTLINED_FUNCTION_21_2(v8);
      OUTLINED_FUNCTION_20_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_15_1();
        sub_1AC703F78(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_48_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E1D0()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD80, &unk_1AC7A81A0);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD88, &qword_1AC7B1D40);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E2AC()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF18, &qword_1AC7A8328);
      v8 = OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_21_2(v8);
      OUTLINED_FUNCTION_20_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D20(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF20, &qword_1AC7A8330);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E368()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFB0, &unk_1AC7A9220);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E41C()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF28, &qword_1AC7A8338);
      v8 = OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_6_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC703F98(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_48_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E4F8()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF78, &unk_1AC7A9270);
      v8 = OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_6_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC703FE4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E5B8()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEF0, &qword_1AC7A8308);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E66C()
{
  OUTLINED_FUNCTION_42_0();
  if (v4)
  {
    OUTLINED_FUNCTION_41_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_106_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_46_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_155_0(v2, v5, &qword_1EB56BF60, &unk_1AC7A8370);
  v9 = OUTLINED_FUNCTION_77();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_111_1(v11);
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_89_0();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_45_2(v14);
    sub_1AC70400C(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }
}

void sub_1AC60E740()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF98, &qword_1AC7A83A8);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFA0, &qword_1AC7A83B0);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E7F4()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCC8, &unk_1AC7A80F0);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E8A8()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCE0, &qword_1AC7A8108);
      v8 = OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_6_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC704048(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_191_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60E954()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE88, &qword_1AC7A8298);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60EA08()
{
  OUTLINED_FUNCTION_42_0();
  if (v4)
  {
    OUTLINED_FUNCTION_41_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_106_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_46_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_155_0(v2, v5, &qword_1EB56BCC0, &qword_1AC7A80E8);
  v9 = OUTLINED_FUNCTION_77();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_111_1(v11);
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_89_0();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_45_2(v14);
    sub_1AC70406C(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }
}

void sub_1AC60EADC()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE48, &qword_1AC7A8248);
      v8 = OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_21_2(v8);
      OUTLINED_FUNCTION_20_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D20(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B998, &unk_1AC7A7A10);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60EBE8()
{
  OUTLINED_FUNCTION_133();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_131_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_156_0(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_109_0();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 16);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_127();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16 + 4, (v0 + 32), 16 * v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60ECAC()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE98, &qword_1AC7A82A8);
      v8 = OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_21_2(v8);
      OUTLINED_FUNCTION_20_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D20(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEA0, &qword_1AC7A82B0);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60ED90()
{
  OUTLINED_FUNCTION_133();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_131_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_156_0(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_109_0();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_22_1();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_127();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16 + 4, (v0 + 32), 8 * v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60EE48()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEA8, &qword_1AC7A82B8);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60EEFC()
{
  OUTLINED_FUNCTION_42_0();
  if (v3)
  {
    OUTLINED_FUNCTION_41_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_106_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_46_1();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1AC60F700(*(v0 + 16), v4, &qword_1EB56BE10, &qword_1AC7A8210, type metadata accessor for LanguageDetector.LocaleAlternative);
  v7 = OUTLINED_FUNCTION_178_0();
  v8 = type metadata accessor for LanguageDetector.LocaleAlternative(v7);
  OUTLINED_FUNCTION_111_1(v8);
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_89_0();
  if (v1)
  {
    v12 = OUTLINED_FUNCTION_45_2(v11);
    sub_1AC704098(v12, v13, v14);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }
}

void sub_1AC60F01C()
{
  OUTLINED_FUNCTION_133();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_131_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_156_0(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * v17 - 64;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_127();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16 + 4, (v0 + 32), v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60F13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  v10 = a1;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      OUTLINED_FUNCTION_156_0(a1, a2, a3, a4, a5, a6);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 24);
      if (v10)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v12)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60F230()
{
  OUTLINED_FUNCTION_42_0();
  if (v4)
  {
    OUTLINED_FUNCTION_41_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_106_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_46_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_155_0(v2, v5, &qword_1EB56BE38, &unk_1AC7AFBC0);
  v9 = OUTLINED_FUNCTION_77();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_111_1(v11);
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_89_0();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_45_2(v14);
    sub_1AC7040C8(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }
}

void sub_1AC60F304()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE20, &qword_1AC7A8220);
      v8 = OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_6_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC7040DC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE28, &qword_1AC7A8228);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC60F3C4()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD18, &unk_1AC7AB420);
      v8 = OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_21_2(v8);
      OUTLINED_FUNCTION_20_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D20(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1AC60F480(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE80, &qword_1AC7A8290);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

void *sub_1AC60F504(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_1AC60F5D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD18, &unk_1AC7AB420);
  v4 = OUTLINED_FUNCTION_109_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_22_1();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1AC60F688(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v4 = OUTLINED_FUNCTION_109_0();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_1AC60F700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1AC60F7F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if (result - v14 != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC60F8EC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_26_2(v1);

  return sub_1AC606AAC(v3);
}

uint64_t sub_1AC60F978()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_26_2(v1);

  return sub_1AC607274(v3);
}

uint64_t sub_1AC60FA04()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_26_2(v1);

  return sub_1AC607DD8(v3, v4, v5);
}

uint64_t sub_1AC60FA90()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_26_2(v1);

  return sub_1AC609D44(v3, v4, v5);
}

BOOL sub_1AC60FB1C(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_1AC79FB18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
  v30 = a2;
  v11 = sub_1AC79FE48();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_1AC612818(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_1AC61AAD8(&qword_1EB56B460, MEMORY[0x1E6969770]);
    v17 = sub_1AC79FED8();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_1AC60FDE4(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1AC7A0E78();
  sub_1AC60D2F0(&v42, a2);
  v6 = sub_1AC7A0EC8();
  v7 = v4 + 56;
  v8 = -1 << *(v4 + 32);
  v9 = v6 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_25:
    v33 = *v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v39;
    v35 = a2;
    sub_1AC612AC8(v35, v9, isUniquelyReferenced_nonNull_native);
    *v39 = v42;
    *a1 = v35;
    return 1;
  }

  v10 = ~v8;
  v11 = &selRef_initWithText_confidence_startTime_duration_;
  v41 = v4 + 56;
  while (1)
  {
    v12 = *(*(v4 + 48) + 8 * v9);
    v13 = [v12 v11[171]];
    if (v13 != [a2 v11[171]])
    {

      goto LABEL_24;
    }

    v14 = v4;
    v15 = [v12 language];
    v16 = sub_1AC79FF68();
    v18 = v17;

    v19 = [a2 language];
    v20 = sub_1AC79FF68();
    v22 = v21;

    if (v16 == v20 && v18 == v22)
    {
    }

    else
    {
      v24 = sub_1AC7A0D38();

      if ((v24 & 1) == 0)
      {

        v4 = v14;
LABEL_23:
        v7 = v41;
        v11 = &selRef_initWithText_confidence_startTime_duration_;
        goto LABEL_24;
      }
    }

    v25 = sub_1AC61AA74(v12);
    v27 = v26;
    v28 = sub_1AC61AA74(a2);
    v30 = v29;
    v4 = v14;
    if (v27)
    {
      break;
    }

    v7 = v41;
    v11 = &selRef_initWithText_confidence_startTime_duration_;
    if (!v30)
    {
LABEL_27:
      v12 = a2;
      goto LABEL_29;
    }

LABEL_24:
    v9 = (v9 + 1) & v10;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (!v29)
  {

    goto LABEL_23;
  }

  if (v25 != v28 || v27 != v29)
  {
    v32 = sub_1AC7A0D38();

    v7 = v41;
    v11 = &selRef_initWithText_confidence_startTime_duration_;
    if (v32)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_29:

  v37 = *(*(v4 + 48) + 8 * v9);
  *a1 = v37;
  v38 = v37;
  return 0;
}

BOOL sub_1AC6100B0()
{
  v3 = v1;
  OUTLINED_FUNCTION_78_0();
  v4 = *v1;
  v5 = *(v4 + 40);
  sub_1AC7A0E68();
  v6 = *(v4 + 32);
  OUTLINED_FUNCTION_43_0();
  while (1)
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(v8 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v4 + 48) + 8 * v10) == v0)
    {
      goto LABEL_6;
    }

    v7 = v10 + 1;
  }

  v12 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_166_0();
  sub_1AC612DB8(v0, v10, v13);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *v2 = v0;
  return result;
}

void sub_1AC610168()
{
  OUTLINED_FUNCTION_62();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 40);
  sub_1AC7A0E78();
  sub_1AC7A0048();
  sub_1AC7A0EC8();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_63_0();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v14 = (*(v7 + 48) + 16 * v13);
    v15 = *v14 == v4 && v14[1] == v2;
    if (v15 || (sub_1AC7A0D38() & 1) != 0)
    {

      v16 = (*(v7 + 48) + 16 * v13);
      v17 = v16[1];
      *v6 = *v16;
      v6[1] = v17;

      goto LABEL_11;
    }

    v10 = v13 + 1;
  }

  v18 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v0;

  v20 = OUTLINED_FUNCTION_181_0();
  sub_1AC612EBC(v20, v2, v13, isUniquelyReferenced_nonNull_native);
  *v0 = v21;
  *v6 = v4;
  v6[1] = v2;
LABEL_11:
  OUTLINED_FUNCTION_61_0();
}

void sub_1AC6102E8()
{
  OUTLINED_FUNCTION_104();
  v4 = v3;
  v5 = sub_1AC79F5C8();
  v6 = OUTLINED_FUNCTION_40(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_83_1();
  sub_1AC61AAD8(v9, v10);
  OUTLINED_FUNCTION_110_0();
  sub_1AC79FE48();
  v11 = *(v0 + 32);
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_136_0();
  while (1)
  {
    OUTLINED_FUNCTION_99_0(v12);
    if (v13)
    {
      v17 = *v26;
      swift_isUniquelyReferenced_nonNull_native();
      v18 = OUTLINED_FUNCTION_124_2();
      v19(v18);
      v20 = OUTLINED_FUNCTION_123_0();
      sub_1AC61311C(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_121_0();
      v24(v23);
      goto LABEL_7;
    }

    v14 = OUTLINED_FUNCTION_92_0();
    v2(v14);
    OUTLINED_FUNCTION_83_1();
    sub_1AC61AAD8(&qword_1EB56BD60, v15);
    OUTLINED_FUNCTION_147_0();
    v16 = OUTLINED_FUNCTION_138_0();
    (v0)(v16);
    if (v4)
    {
      break;
    }

    v12 = v1 + 1;
  }

  (v0)(v4, v5);
  v25 = OUTLINED_FUNCTION_115_0();
  v2(v25);
LABEL_7:
  OUTLINED_FUNCTION_105();
}

void sub_1AC610490()
{
  OUTLINED_FUNCTION_104();
  v4 = v3;
  v5 = sub_1AC79FBC8();
  v6 = OUTLINED_FUNCTION_40(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_87_0();
  sub_1AC61AAD8(v9, v10);
  OUTLINED_FUNCTION_110_0();
  sub_1AC79FE48();
  v11 = *(v0 + 32);
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_136_0();
  while (1)
  {
    OUTLINED_FUNCTION_99_0(v12);
    if (v13)
    {
      v17 = *v26;
      swift_isUniquelyReferenced_nonNull_native();
      v18 = OUTLINED_FUNCTION_124_2();
      v19(v18);
      v20 = OUTLINED_FUNCTION_123_0();
      sub_1AC6133CC(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_121_0();
      v24(v23);
      goto LABEL_7;
    }

    v14 = OUTLINED_FUNCTION_92_0();
    v2(v14);
    OUTLINED_FUNCTION_87_0();
    sub_1AC61AAD8(&qword_1EB56B448, v15);
    OUTLINED_FUNCTION_147_0();
    v16 = OUTLINED_FUNCTION_138_0();
    (v0)(v16);
    if (v4)
    {
      break;
    }

    v12 = v1 + 1;
  }

  (v0)(v4, v5);
  v25 = OUTLINED_FUNCTION_115_0();
  v2(v25);
LABEL_7:
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC610638(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1AC7A08F8();

    if (v9)
    {

      sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = sub_1AC7A08E8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_1AC6836B0(v7, result + 1);
        if (v17[3] <= v17[2])
        {
          sub_1AC61209C();
        }

        v18 = v8;
        sub_1AC612688(v18, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
    v11 = *(v6 + 40);
    v12 = sub_1AC7A0748();
    v13 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v6 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        v19 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v18 = a2;
        sub_1AC61367C(v18, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_1AC7A0758();

      if (v16)
      {
        break;
      }

      v12 = v14 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v14);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

BOOL sub_1AC61085C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_157_0();
  sub_1AC7A0EC8();
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_63_0();
  v5 = v3 & ~v4;
  v6 = (1 << v5) & *(v1 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v6)
  {
    v7 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v0;
    sub_1AC6138E0(v5);
    *v0 = v9;
  }

  return v6 == 0;
}

void sub_1AC610984()
{
  OUTLINED_FUNCTION_62();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *v2;
  v8 = *(*v2 + 40);
  sub_1AC7A0E78();
  v9 = v4 & 1;
  MEMORY[0x1B26E9A40](v4 & 1);
  sub_1AC7A0EC8();
  v10 = *(v7 + 32);
  OUTLINED_FUNCTION_43_0();
  while (1)
  {
    OUTLINED_FUNCTION_120_0(v11, v12);
    if (v13)
    {
      v14 = *v2;
      swift_isUniquelyReferenced_nonNull_native();
      v15 = *v2;
      sub_1AC6137E0(v9, v1);
      *v2 = v15;
      goto LABEL_7;
    }

    if (*(*(v7 + 48) + v1) == v9)
    {
      break;
    }

    v11 = v1 + 1;
  }

  LOBYTE(v9) = *(*(v7 + 48) + v1);
LABEL_7:
  *v6 = v9;
  OUTLINED_FUNCTION_61_0();
}

uint64_t sub_1AC610A6C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1AC7A0E78();
  v20 = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = 1;
    }

    else
    {
      if (a2 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        goto LABEL_9;
      }

      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1B26E9A40](v8);
LABEL_9:
  v9 = sub_1AC7A0EC8();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_25:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1AC5D37E0(a2);
    sub_1AC6139E0(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    *v20 = a2;
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(v6 + 48);
    v14 = *(v13 + 8 * v11);
    if (!v14)
    {
      break;
    }

    if (v14 == 1)
    {
      if (a2 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    if (v14 == 2)
    {
      if (a2 == 2)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    if (a2 >= 3)
    {
      sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
      sub_1AC5D37E0(v14);
      v15 = sub_1AC7A0758();
      sub_1AC5D9454(v14);
      if (v15)
      {
        v14 = a2;
        goto LABEL_27;
      }
    }

LABEL_20:
    v11 = (v11 + 1) & v12;
    if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (a2)
  {
LABEL_19:
    sub_1AC5D9454(*(v13 + 8 * v11));
    goto LABEL_20;
  }

LABEL_26:
  sub_1AC5D9454(*(v13 + 8 * v11));
LABEL_27:
  sub_1AC5D9454(v14);
  v19 = *(*(v6 + 48) + 8 * v11);
  *v20 = v19;
  sub_1AC5D37E0(v19);
  return 0;
}

uint64_t sub_1AC610C70(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1AC7A08F8();

    if (v8)
    {

      type metadata accessor for SpeechRecognizerWorker();
      swift_dynamicCast();
      result = 0;
      *a1 = v33;
    }

    else
    {
      result = sub_1AC7A08E8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v23 = sub_1AC683844(v7, result + 1);
        v24 = v23[2];
        if (v23[3] <= v24)
        {
          sub_1AC612548(v24 + 1, v16, v17, v18, v19, v20, v21, v22, v23);
          v23 = v34;
        }

        sub_1AC6127AC();

        *v3 = v23;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40](a2);
    sub_1AC7A0EC8();
    v11 = *(v6 + 32);
    OUTLINED_FUNCTION_43_0();
    while (1)
    {
      v15 = v12 & v14;
      if (((*(v13 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
      {
        v25 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *v2;

        sub_1AC613C68(v27, v15, isUniquelyReferenced_nonNull_native, v28, v29, v30, v31, v32);
        *v2 = v35;
        goto LABEL_16;
      }

      if (*(*(v6 + 48) + 8 * v15) == a2)
      {
        break;
      }

      v12 = v15 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v15);

    return 0;
  }

  return result;
}

void sub_1AC610E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62();
  v13 = v12;
  v15 = v14;
  v16 = *v10;
  v17 = *(*v10 + 40);
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v13);
  sub_1AC7A0EC8();
  v18 = *(v16 + 32);
  OUTLINED_FUNCTION_43_0();
  while (1)
  {
    OUTLINED_FUNCTION_120_0(v19, v20);
    if (v21)
    {
      break;
    }

    if (*(*(v16 + 48) + v11) == v13)
    {
      goto LABEL_6;
    }

    v19 = v11 + 1;
  }

  v22 = *v10;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_166_0();
  sub_1AC613024(v13, v11);
  *v10 = a10;
LABEL_6:
  *v15 = v13;
  OUTLINED_FUNCTION_61_0();
}

uint64_t sub_1AC610F28(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1AC79FB18();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFB8, &qword_1AC7A83D0);
  result = sub_1AC7A0968();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1AC613DA0(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
    result = sub_1AC79FE48();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC611280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD0, &qword_1AC7A83E8);
  result = sub_1AC7A0968();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v6;
    return result;
  }

  v30 = v2;
  v31 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1AC613DA0(0, (v29 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40]([v17 assetType]);
    v19 = [v17 language];
    sub_1AC79FF68();

    sub_1AC7A0048();

    sub_1AC61AA74(v17);
    if (v20)
    {
      sub_1AC7A0E98();
      sub_1AC7A0048();
    }

    else
    {
      sub_1AC7A0E98();
    }

    result = sub_1AC7A0EC8();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v6 + 48) + 8 * v24) = v17;
    ++*(v6 + 16);
    v3 = v31;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1AC61156C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD50, &qword_1AC7A8180);
  result = sub_1AC7A0968();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_1AC613DA0(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_1AC7A0E68();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC611790(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE90, &qword_1AC7A82A0);
  result = sub_1AC7A0968();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1AC613DA0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1AC7A0E78();
    sub_1AC7A0048();
    result = sub_1AC7A0EC8();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC6119EC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1AC79F5C8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD68, &qword_1AC7A8188);
  result = sub_1AC7A0968();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1AC613DA0(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1AC61AAD8(&qword_1EB56BD58, MEMORY[0x1E6968848]);
    result = sub_1AC79FE48();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC611D44(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1AC79FBC8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCF0, &unk_1AC7A8120);
  result = sub_1AC7A0968();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1AC613DA0(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1AC61AAD8(&qword_1EB56B450, MEMORY[0x1E6969C28]);
    result = sub_1AC79FE48();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1AC61209C()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_5_3(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF10, &qword_1AC7A8320);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_101_0();
  if (!v8)
  {
LABEL_25:

    *v0 = v2;
    OUTLINED_FUNCTION_105();
    return;
  }

  v9 = 0;
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_38_0();
  if (!v4)
  {
LABEL_4:
    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v9 >= v5)
      {
        break;
      }

      ++v11;
      if (v3[v9])
      {
        OUTLINED_FUNCTION_25_0();
        v4 = v13 & v12;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_31_1();
    if (v24 != v25)
    {
      OUTLINED_FUNCTION_63_0();
      *v3 = v26;
    }

    else
    {
      v27 = OUTLINED_FUNCTION_54_0();
      sub_1AC613DA0(v27, v28, v3);
    }

    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_172_1();
LABEL_9:
    v14 = *(*(v1 + 48) + 8 * (v10 | (v9 << 6)));
    v15 = *(v2 + 40);
    v16 = sub_1AC7A0748();
    OUTLINED_FUNCTION_40_1(v16);
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_9_2();
LABEL_19:
    OUTLINED_FUNCTION_17_0();
    *(v6 + v21) |= v22;
    *(*(v2 + 48) + 8 * v23) = v14;
    OUTLINED_FUNCTION_36_0();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_1();
  while (1)
  {
    OUTLINED_FUNCTION_82_0();
    if (v17)
    {
      if (v19)
      {
        break;
      }
    }

    if (v18 == v20)
    {
      v18 = 0;
    }

    OUTLINED_FUNCTION_129_2(v18);
    if (!v17)
    {
      OUTLINED_FUNCTION_7_2();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1AC6121F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_62();
  v15 = OUTLINED_FUNCTION_5_3(v14);
  v17 = OUTLINED_FUNCTION_130_0(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_101_0();
  if (!v19)
  {
LABEL_25:

    *v9 = v11;
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_140_0();
  v21 = (v10 + 56);
  v20 = *(v10 + 56);
  v22 = *(v10 + 32);
  OUTLINED_FUNCTION_2_2();
  if (!v9)
  {
LABEL_4:
    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v12 >= v13)
      {
        break;
      }

      ++v23;
      if (v21[v12])
      {
        OUTLINED_FUNCTION_25_0();
        v9 = (v25 & v24);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_31_1();
    if (v36 != v37)
    {
      OUTLINED_FUNCTION_63_0();
      *v21 = v38;
    }

    else
    {
      v39 = OUTLINED_FUNCTION_54_0();
      sub_1AC613DA0(v39, v40, v10 + 56);
    }

    v9 = a9;
    *(v10 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_37_1();
LABEL_9:
    OUTLINED_FUNCTION_139_0();
    v28 = *(v27 + v26);
    OUTLINED_FUNCTION_135_0();
    OUTLINED_FUNCTION_194_0();
    v29 = sub_1AC7A0EC8();
    OUTLINED_FUNCTION_11_2(v29);
    if (v30)
    {
      break;
    }

    OUTLINED_FUNCTION_9_2();
LABEL_19:
    OUTLINED_FUNCTION_1_3(v31);
    *(*(v11 + 48) + v35) = v28;
    OUTLINED_FUNCTION_36_0();
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_1();
  while (1)
  {
    OUTLINED_FUNCTION_82_0();
    if (v30)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    OUTLINED_FUNCTION_44_0(v32);
    if (!v30)
    {
      OUTLINED_FUNCTION_7_2();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1AC612328()
{
  OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_5_3(v7);
  v10 = OUTLINED_FUNCTION_130_0(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_101_0();
  if (!v12)
  {
LABEL_21:

    *v0 = v2;
    OUTLINED_FUNCTION_61_0();
    return;
  }

  v13 = 0;
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_38_0();
  if (!v4)
  {
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v14 >= v5)
      {
        break;
      }

      ++v13;
      if (v3[v14])
      {
        goto LABEL_6;
      }
    }

    OUTLINED_FUNCTION_31_1();
    if (v21 != v22)
    {
      OUTLINED_FUNCTION_63_0();
      *v3 = v23;
    }

    else
    {
      v24 = OUTLINED_FUNCTION_54_0();
      sub_1AC613DA0(v24, v25, v3);
    }

    *(v1 + 16) = 0;
    goto LABEL_21;
  }

LABEL_6:
  while (1)
  {
    OUTLINED_FUNCTION_135_0();
    OUTLINED_FUNCTION_157_0();
    v15 = sub_1AC7A0EC8();
    OUTLINED_FUNCTION_40_1(v15);
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_9_2();
LABEL_16:
    OUTLINED_FUNCTION_172_1();
    *(v6 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    OUTLINED_FUNCTION_36_0();
  }

  OUTLINED_FUNCTION_8_1();
  while (1)
  {
    OUTLINED_FUNCTION_82_0();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    if (v17 == v19)
    {
      v17 = 0;
    }

    OUTLINED_FUNCTION_129_2(v17);
    if (!v16)
    {
      OUTLINED_FUNCTION_7_2();
      goto LABEL_16;
    }
  }

LABEL_23:
  __break(1u);
}

void sub_1AC61244C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_5_3(a1);
  v6 = OUTLINED_FUNCTION_130_0(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_182_0();
  if (v8)
  {
    v9 = 0;
    v11 = (v3 + 56);
    v10 = *(v3 + 56);
    v12 = *(v3 + 32);
    OUTLINED_FUNCTION_117_0();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_172_1();
LABEL_9:
        v22 = *(*(v3 + 48) + 8 * (v18 | (v9 << 6)));
        sub_1AC612704();
      }

      while (v15);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v17)
      {
        break;
      }

      ++v19;
      if (v11[v9])
      {
        OUTLINED_FUNCTION_25_0();
        v15 = v21 & v20;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_31_1();
    if (v23 != v24)
    {
      OUTLINED_FUNCTION_63_0();
      *v11 = v25;
    }

    else
    {
      v26 = OUTLINED_FUNCTION_54_0();
      sub_1AC613DA0(v26, v27, v3 + 56);
    }

    *(v3 + 16) = 0;
  }

  *v1 = v2;
}

void sub_1AC612548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_5_3(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF90, &qword_1AC7A83A0);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_101_0();
  if (!v15)
  {
LABEL_25:

    *v9 = v11;
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_140_0();
  v17 = (v10 + 56);
  v16 = *(v10 + 56);
  v18 = *(v10 + 32);
  OUTLINED_FUNCTION_2_2();
  if (!v9)
  {
LABEL_4:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v12 >= v13)
      {
        break;
      }

      ++v19;
      if (v17[v12])
      {
        OUTLINED_FUNCTION_25_0();
        v9 = (v21 & v20);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_31_1();
    if (v32 != v33)
    {
      OUTLINED_FUNCTION_63_0();
      *v17 = v34;
    }

    else
    {
      v35 = OUTLINED_FUNCTION_54_0();
      sub_1AC613DA0(v35, v36, v10 + 56);
    }

    v9 = a9;
    *(v10 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_37_1();
LABEL_9:
    OUTLINED_FUNCTION_139_0();
    v24 = *(v23 + 8 * v22);
    OUTLINED_FUNCTION_135_0();
    OUTLINED_FUNCTION_194_0();
    v25 = sub_1AC7A0EC8();
    OUTLINED_FUNCTION_11_2(v25);
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_9_2();
LABEL_19:
    OUTLINED_FUNCTION_1_3(v27);
    *(*(v11 + 48) + 8 * v31) = v24;
    OUTLINED_FUNCTION_36_0();
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_1();
  while (1)
  {
    OUTLINED_FUNCTION_82_0();
    if (v26)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    OUTLINED_FUNCTION_44_0(v28);
    if (!v26)
    {
      OUTLINED_FUNCTION_7_2();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

unint64_t sub_1AC612688(uint64_t a1, void *a2)
{
  v4 = a2[5];
  sub_1AC7A0748();
  OUTLINED_FUNCTION_53_0();
  result = sub_1AC7A0888();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_1AC612704()
{
  OUTLINED_FUNCTION_78_0();
  v2 = *(v1 + 40);
  sub_1AC7A0E78();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v0 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        goto LABEL_9;
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B26E9A40](v3);
LABEL_9:
  sub_1AC7A0EC8();
  OUTLINED_FUNCTION_53_0();
  v4 = sub_1AC7A0888();
  return OUTLINED_FUNCTION_76_0(v4);
}

unint64_t sub_1AC6127AC()
{
  OUTLINED_FUNCTION_78_0();
  v2 = *(v1 + 40);
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v0);
  sub_1AC7A0EC8();
  OUTLINED_FUNCTION_53_0();
  v3 = sub_1AC7A0888();
  return OUTLINED_FUNCTION_76_0(v3);
}

uint64_t sub_1AC612818(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1AC79FB18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AC610F28(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1AC6148F8(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
      v15 = sub_1AC79FE48();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1AC61AAD8(&qword_1EB56B460, MEMORY[0x1E6969770]);
        v17 = sub_1AC79FED8();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1AC6141EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_1AC612AC8(void *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AC611280(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1AC613E04();
        goto LABEL_31;
      }

      sub_1AC614C10(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1AC7A0E78();
    sub_1AC60D2F0(v41, a1);
    v3 = v41;
    v10 = sub_1AC7A0EC8();
    v11 = v8 + 56;
    v12 = -1 << *(v8 + 32);
    a2 = v10 & ~v12;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      v14 = &selRef_initWithText_confidence_startTime_duration_;
      v40 = v8;
      do
      {
        v3 = *(*(v8 + 48) + 8 * a2);
        v15 = [v3 v14[171]];
        if (v15 != [a1 v14[171]])
        {

          goto LABEL_30;
        }

        v16 = [v3 language];
        v17 = sub_1AC79FF68();
        v19 = v18;

        v20 = a1;
        v21 = [a1 language];
        v22 = sub_1AC79FF68();
        v24 = v23;

        if (v17 == v22 && v19 == v24)
        {
        }

        else
        {
          v26 = sub_1AC7A0D38();

          if ((v26 & 1) == 0)
          {

            v8 = v40;
            v14 = &selRef_initWithText_confidence_startTime_duration_;
            a1 = v20;
            goto LABEL_30;
          }
        }

        v27 = sub_1AC61AA74(v3);
        v29 = v28;
        a1 = v20;
        v30 = sub_1AC61AA74(v20);
        v32 = v31;
        v14 = &selRef_initWithText_confidence_startTime_duration_;
        if (v29)
        {
          if (v31)
          {
            if (v27 == v30 && v29 == v31)
            {
              goto LABEL_34;
            }

            v34 = sub_1AC7A0D38();

            v8 = v40;
            if (v34)
            {
              goto LABEL_35;
            }
          }

          else
          {

            v8 = v40;
          }
        }

        else
        {

          v8 = v40;
          if (!v32)
          {
            goto LABEL_35;
          }
        }

LABEL_30:
        a2 = (a2 + 1) & v13;
      }

      while (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_31:
  v35 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v35 + 48) + 8 * a2) = a1;
  v36 = *(v35 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_34:

LABEL_35:
    sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v35 + 16) = v38;
  }
}

uint64_t sub_1AC612DB8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AC61156C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1AC614ED0(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_1AC7A0E68();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1AC613F54();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1AC612EBC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1AC611790(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1AC6150BC(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1AC7A0E78();
      sub_1AC7A0048();
      result = sub_1AC7A0EC8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1AC7A0D38() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1AC614094();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1AC613024(unsigned __int8 a1, uint64_t a2)
{
  v4 = a1;
  OUTLINED_FUNCTION_126_0();
  if (!(!v11 & v10) || (v5 & 1) == 0)
  {
    if (v5)
    {
      v12 = OUTLINED_FUNCTION_58_2(v8);
      sub_1AC6121F4(v12, v13, v14, v15, v16, v17, v18, v19, v39);
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      v25 = OUTLINED_FUNCTION_58_2(v8);
      sub_1AC615B58(v25, v26, v27, v28, v29, v30, v31, v32, v39);
LABEL_11:
      v33 = *v2;
      v34 = *(*v2 + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v4);
      sub_1AC7A0EC8();
      v35 = *(v33 + 32);
      OUTLINED_FUNCTION_43_0();
      while (1)
      {
        OUTLINED_FUNCTION_141_0(v36, v37);
        if ((v38 & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v33 + 48) + a2) == v4)
        {
          goto LABEL_16;
        }

        v36 = a2 + 1;
      }
    }

    sub_1AC614554(v6, v7);
  }

LABEL_8:
  OUTLINED_FUNCTION_91_1();
  *(v21 + a2) = v4;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_16:
    sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

uint64_t sub_1AC61311C(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1AC79F5C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AC6119EC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1AC6152F0(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1AC61AAD8(&qword_1EB56BD58, MEMORY[0x1E6968848]);
      v15 = sub_1AC79FE48();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1AC61AAD8(&qword_1EB56BD60, MEMORY[0x1E6968848]);
        v17 = sub_1AC79FED8();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1AC6141EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1AC6133CC(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1AC79FBC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AC611D44(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1AC615608(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1AC61AAD8(&qword_1EB56B450, MEMORY[0x1E6969C28]);
      v15 = sub_1AC79FE48();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1AC61AAD8(&qword_1EB56B448, MEMORY[0x1E6969C28]);
        v17 = sub_1AC79FED8();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1AC6141EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1AC61367C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AC61209C();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1AC615920(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      result = sub_1AC7A0748();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_1AC7A0758();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1AC6143DC();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

void sub_1AC6137E0(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_126_0();
  if (!(!v11 & v10) || (v5 & 1) == 0)
  {
    if (v5)
    {
      v12 = OUTLINED_FUNCTION_58_2(v8);
      sub_1AC6121F4(v12, v13, v14, v15, v16, v17, v18, v19, v39);
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      v25 = OUTLINED_FUNCTION_58_2(v8);
      sub_1AC615B58(v25, v26, v27, v28, v29, v30, v31, v32, v39);
LABEL_11:
      v33 = *v2;
      v34 = *(*v2 + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](a1 & 1);
      sub_1AC7A0EC8();
      v35 = *(v33 + 32);
      OUTLINED_FUNCTION_43_0();
      while (1)
      {
        OUTLINED_FUNCTION_141_0(v36, v37);
        if ((v38 & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v33 + 48) + a2) == (a1 & 1))
        {
          goto LABEL_16;
        }

        v36 = a2 + 1;
      }
    }

    sub_1AC614554(v6, v7);
  }

LABEL_8:
  OUTLINED_FUNCTION_91_1();
  *(v21 + a2) = a1 & 1;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_16:
    sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void sub_1AC6138E0(unint64_t a1)
{
  OUTLINED_FUNCTION_126_0();
  if (!(!v9 & v8) || (v3 & 1) == 0)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_177_0(v6);
      sub_1AC612328();
      goto LABEL_9;
    }

    if (v7 <= v6)
    {
      OUTLINED_FUNCTION_177_0(v6);
      sub_1AC615C78();
LABEL_9:
      v10 = *v1;
      v11 = *(*v1 + 40);
      sub_1AC7A0E78();
      OUTLINED_FUNCTION_157_0();
      sub_1AC7A0EC8();
      v12 = *(v10 + 32);
      OUTLINED_FUNCTION_63_0();
      a1 = v13 & ~v14;
      if ((*(v10 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1))
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_1AC6145F4(v4, v5);
  }

LABEL_10:
  v15 = *v1;
  *(*v1 + 8 * (a1 >> 6) + 56) |= 1 << a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_13:
  sub_1AC7A0DB8();
  __break(1u);
}

void sub_1AC6139E0(unint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    sub_1AC61244C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1AC61468C(&qword_1EB56BE08, &qword_1AC7A8208, sub_1AC61C264);
      goto LABEL_30;
    }

    sub_1AC615D78();
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1AC7A0E78();
  switch(a1)
  {
    case 0uLL:
      v11 = 0;
      goto LABEL_14;
    case 1uLL:
      v11 = 1;
      goto LABEL_14;
    case 2uLL:
      v11 = 2;
LABEL_14:
      MEMORY[0x1B26E9A40](v11);
      goto LABEL_16;
  }

  MEMORY[0x1B26E9A40](3);
  sub_1AC7A0768();
LABEL_16:
  v12 = sub_1AC7A0EC8();
  v13 = -1 << *(v9 + 32);
  a2 = v12 & ~v13;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = *(*(v9 + 48) + 8 * a2);
      if (v15)
      {
        if (v15 == 1)
        {
          sub_1AC5D9454(1);
          if (a1 == 1)
          {
            goto LABEL_33;
          }
        }

        else if (v15 == 2)
        {
          sub_1AC5D9454(2);
          if (a1 == 2)
          {
            goto LABEL_33;
          }
        }

        else if (a1 >= 3)
        {
          sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
          sub_1AC5D37E0(v15);
          v16 = sub_1AC7A0758();
          sub_1AC5D9454(v15);
          if (v16)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_1AC5D9454(0);
        if (!a1)
        {
          goto LABEL_33;
        }
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_30:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = a1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_33:
    sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }
}

uint64_t sub_1AC613C68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v10 = result;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AC612548(v11 + 1, a2, a3, a4, a5, a6, a7, a8, v20);
      goto LABEL_10;
    }

    if (v12 <= v11)
    {
      sub_1AC615E70(v11 + 1);
LABEL_10:
      v17 = *v8;
      v18 = *(*v8 + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v10);
      result = sub_1AC7A0EC8();
      v19 = ~(-1 << *(v17 + 32));
      while (1)
      {
        v9 = result & v19;
        if (((*(v17 + 56 + (((result & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for SpeechRecognizerWorker();
        if (*(*(v17 + 48) + 8 * v9) == v10)
        {
          goto LABEL_15;
        }

        result = v9 + 1;
      }
    }

    result = sub_1AC6147A8();
  }

LABEL_7:
  v13 = *v8;
  *(*v8 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v13 + 48) + 8 * v9) = v10;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_1AC7A0DB8();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_1AC613DA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1AC7A7E20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_1AC613E04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD0, &qword_1AC7A83E8);
  v2 = *v0;
  v3 = sub_1AC7A0958();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AC613F54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD50, &qword_1AC7A8180);
  v2 = *v0;
  v3 = sub_1AC7A0958();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AC614094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE90, &qword_1AC7A82A0);
  v2 = *v0;
  v3 = sub_1AC7A0958();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1AC6141EC()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  v8 = OUTLINED_FUNCTION_40(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v34 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v15 = *v0;
  v16 = sub_1AC7A0958();
  if (*(v15 + 16))
  {
    v35 = v5;
    v17 = OUTLINED_FUNCTION_39_1();
    v19 = (v18 + 63) >> 6;
    if (v16 != v15 || v17 >= v15 + 56 + 8 * v19)
    {
      memmove(v17, (v15 + 56), 8 * v19);
    }

    v21 = 0;
    *(v16 + 16) = *(v15 + 16);
    v22 = 1 << *(v15 + 32);
    v23 = *(v15 + 56);
    OUTLINED_FUNCTION_165_0();
    v26 = v25 & v24;
    v28 = (v27 + 63) >> 6;
    v36 = v10 + 32;
    v37 = v10 + 16;
    if ((v25 & v24) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_57_2();
LABEL_15:
        v33 = *(v10 + 72) * (v29 | (v21 << 6));
        (*(v10 + 16))(v14, *(v15 + 48) + v33, v7);
        (*(v10 + 32))(*(v16 + 48) + v33, v14, v7);
      }

      while (v26);
    }

    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v28)
      {

        v5 = v35;
        goto LABEL_19;
      }

      ++v30;
      if (*(v15 + 56 + 8 * v21))
      {
        OUTLINED_FUNCTION_25_0();
        v26 = v32 & v31;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v5 = v16;
    OUTLINED_FUNCTION_105();
  }
}

id sub_1AC6143DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF10, &qword_1AC7A8320);
  v2 = *v0;
  v3 = sub_1AC7A0958();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1AC614554(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_182_0();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_34_2();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v3, 8 * v6);
    }

    OUTLINED_FUNCTION_24_2();
    if (v12)
    {
      do
      {
        OUTLINED_FUNCTION_144_0();
LABEL_15:
        OUTLINED_FUNCTION_170_0();
      }

      while (v15);
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v3 + v14))
      {
        OUTLINED_FUNCTION_143_1();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_1AC6145F4(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_182_0();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_34_2();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v3, 8 * v6);
    }

    OUTLINED_FUNCTION_24_2();
    if (v12)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_15;
      }

      v12 = *(v3 + v13);
      ++v10;
      if (v12)
      {
        v10 = v13;
        do
        {
LABEL_13:
          v12 &= v12 - 1;
        }

        while (v12);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v2;
  }
}

void sub_1AC61468C(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = sub_1AC7A0958();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_39_1();
    v10 = (v9 + 63) >> 6;
    if (v7 != v6 || v8 >= v6 + 56 + 8 * v10)
    {
      memmove(v8, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v7 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    OUTLINED_FUNCTION_165_0();
    v17 = v16 & v15;
    v19 = (v18 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_168_0();
LABEL_15:
        *(*(v7 + 48) + 8 * (v20 | (v12 << 6))) = *(*(v6 + 48) + 8 * (v20 | (v12 << 6)));
        a3();
      }

      while (v17);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        goto LABEL_17;
      }

      ++v21;
      if (*(v6 + 56 + 8 * v12))
      {
        OUTLINED_FUNCTION_25_0();
        v17 = v23 & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void *sub_1AC6147A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF90, &qword_1AC7A83A0);
  v2 = *v0;
  v3 = sub_1AC7A0958();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AC6148F8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1AC79FB18();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFB8, &qword_1AC7A83D0);
  v10 = sub_1AC7A0968();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
        result = sub_1AC79FE48();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

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
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1AC614C10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD0, &qword_1AC7A83E8);
  result = sub_1AC7A0968();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_1AC7A0E78();
        v19 = v17;
        MEMORY[0x1B26E9A40]([v19 assetType]);
        v20 = [v19 language];
        sub_1AC79FF68();

        sub_1AC7A0048();

        sub_1AC61AA74(v19);
        if (v21)
        {
          sub_1AC7A0E98();
          sub_1AC7A0048();
        }

        else
        {
          sub_1AC7A0E98();
        }

        result = sub_1AC7A0EC8();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        *(*(v6 + 48) + 8 * v25) = v19;
        ++*(v6 + 16);
        v3 = v31;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

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
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v30;
          goto LABEL_30;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1AC614ED0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD50, &qword_1AC7A8180);
  result = sub_1AC7A0968();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_1AC7A0E68();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1AC6150BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE90, &qword_1AC7A82A0);
  result = sub_1AC7A0968();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1AC7A0E78();

        sub_1AC7A0048();
        result = sub_1AC7A0EC8();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1AC6152F0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1AC79F5C8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD68, &qword_1AC7A8188);
  v10 = sub_1AC7A0968();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1AC61AAD8(&qword_1EB56BD58, MEMORY[0x1E6968848]);
        result = sub_1AC79FE48();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

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
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1AC615608(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1AC79FBC8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCF0, &unk_1AC7A8120);
  v10 = sub_1AC7A0968();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1AC61AAD8(&qword_1EB56B450, MEMORY[0x1E6969C28]);
        result = sub_1AC79FE48();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

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
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1AC615920(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF10, &qword_1AC7A8320);
  result = sub_1AC7A0968();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_1AC7A0748();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_1AC615B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_62();
  v15 = OUTLINED_FUNCTION_5_3(v14);
  v17 = OUTLINED_FUNCTION_130_0(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_101_0();
  if (v19)
  {
    OUTLINED_FUNCTION_140_0();
    v20 = *(v10 + 56);
    v21 = *(v10 + 32);
    OUTLINED_FUNCTION_2_2();
    if (v9)
    {
      while (1)
      {
        OUTLINED_FUNCTION_37_1();
LABEL_9:
        OUTLINED_FUNCTION_139_0();
        v27 = *(v26 + v25);
        OUTLINED_FUNCTION_135_0();
        v28 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x1B26E9A40](v28);
        v29 = sub_1AC7A0EC8();
        OUTLINED_FUNCTION_11_2(v29);
        if (v30)
        {
          break;
        }

        OUTLINED_FUNCTION_9_2();
LABEL_19:
        OUTLINED_FUNCTION_1_3(v31);
        *(*(v11 + 48) + v35) = v27;
        OUTLINED_FUNCTION_36_0();
        if (!v9)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_8_1();
      while (1)
      {
        OUTLINED_FUNCTION_82_0();
        if (v30)
        {
          if (v33)
          {
            break;
          }
        }

        if (v32 == v34)
        {
          v32 = 0;
        }

        OUTLINED_FUNCTION_44_0(v32);
        if (!v30)
        {
          OUTLINED_FUNCTION_7_2();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v22 = v12;
      while (1)
      {
        v12 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v12 >= v13)
        {

          v9 = a9;
          goto LABEL_23;
        }

        ++v22;
        if (*(v10 + 56 + 8 * v12))
        {
          OUTLINED_FUNCTION_25_0();
          v9 = (v24 & v23);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v9 = v11;
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_1AC615C78()
{
  OUTLINED_FUNCTION_62();
  v7 = OUTLINED_FUNCTION_5_3(v6);
  v9 = OUTLINED_FUNCTION_130_0(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_101_0();
  if (v11)
  {
    v12 = 0;
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_38_0();
    if (v3)
    {
LABEL_6:
      while (1)
      {
        OUTLINED_FUNCTION_135_0();
        OUTLINED_FUNCTION_157_0();
        v14 = sub_1AC7A0EC8();
        OUTLINED_FUNCTION_40_1(v14);
        if (v15)
        {
          break;
        }

        OUTLINED_FUNCTION_9_2();
LABEL_16:
        OUTLINED_FUNCTION_172_1();
        *(v5 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        OUTLINED_FUNCTION_36_0();
      }

      OUTLINED_FUNCTION_8_1();
      while (1)
      {
        OUTLINED_FUNCTION_82_0();
        if (v15)
        {
          if (v17)
          {
            break;
          }
        }

        if (v16 == v18)
        {
          v16 = 0;
        }

        OUTLINED_FUNCTION_129_2(v16);
        if (!v15)
        {
          OUTLINED_FUNCTION_7_2();
          goto LABEL_16;
        }
      }
    }

    else
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v4)
        {
          goto LABEL_17;
        }

        ++v12;
        if (*(v2 + 8 * v13))
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v1;
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_1AC615D78()
{
  OUTLINED_FUNCTION_104();
  v4 = v3;
  v5 = v0;
  v6 = *v0;
  if (*(*v0 + 24) > v1)
  {
    v7 = *(*v0 + 24);
  }

  v8 = OUTLINED_FUNCTION_130_0(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = OUTLINED_FUNCTION_193_0();
  if (*(v6 + 16))
  {
    v11 = 0;
    v12 = *(v6 + 56);
    v13 = *(v6 + 32);
    OUTLINED_FUNCTION_117_0();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_159_0();
LABEL_11:
        v4(*(*(v6 + 48) + 8 * (v19 | (v11 << 6))));
        sub_1AC612704();
      }

      while (v16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_13;
      }

      ++v20;
      if (*(v6 + 56 + 8 * v11))
      {
        OUTLINED_FUNCTION_25_0();
        v16 = v22 & v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v5 = v10;
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC615E70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF90, &qword_1AC7A83A0);
  result = sub_1AC7A0968();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](v16);
        result = sub_1AC7A0EC8();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_1AC616094()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v72[2] = *MEMORY[0x1E69E9840];
  v56 = 0;
  v4 = sub_1AC79FB18();
  v5 = OUTLINED_FUNCTION_40(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v55 - v15;
  if (!*(v1 + 16))
  {

    goto LABEL_26;
  }

  v72[0] = v3;
  v16 = *(v3 + 16);
  v66 = (v1 + 56);
  v70 = (v7 + 8);
  v71 = v7 + 16;

  v17 = 0;
  v58 = v16;
  v59 = v7;
LABEL_3:
  if (v17 == v16)
  {
LABEL_24:

LABEL_26:
    v52 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_105();
    return;
  }

  v18 = *(v7 + 72);
  v62 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v65 = v17 + 1;
  v72[1] = v17 + 1;
  v19 = *(v7 + 16);
  OUTLINED_FUNCTION_162_0();
  v68 = v20;
  v69 = v21;
  v20();
  v22 = *(v1 + 40);
  OUTLINED_FUNCTION_10_1();
  sub_1AC61AAD8(&qword_1EB56B468, v23);
  OUTLINED_FUNCTION_110_0();
  v61 = v24;
  sub_1AC79FE48();
  OUTLINED_FUNCTION_53_0();
  v63 = ~v26;
  while (1)
  {
    v27 = v25 & v63;
    v28 = (v25 & v63) >> 6;
    v29 = 1 << (v25 & v63);
    if ((v29 & v66[v28]) == 0)
    {
      (*v70)(v64, v4);
      v17 = v65;
      v16 = v58;
      v7 = v59;
      goto LABEL_3;
    }

    v30 = *(v1 + 48);
    OUTLINED_FUNCTION_162_0();
    v31();
    OUTLINED_FUNCTION_10_1();
    sub_1AC61AAD8(&qword_1EB56B460, v32);
    v33 = sub_1AC79FED8();
    v34 = *v70;
    (*v70)(v14, v4);
    if (v33)
    {
      break;
    }

    v25 = v27 + 1;
  }

  OUTLINED_FUNCTION_173_0();
  v35 = v34();
  v36 = *(v1 + 32);
  v57 = ((1 << v36) + 63) >> 6;
  v37 = 8 * v57;
  if ((v36 & 0x3Fu) > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v58 = &v55;
    MEMORY[0x1EEE9AC00](v35);
    v27 = &v55 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v27, v66, v37);
    v38 = *(v1 + 16);
    *(v27 + 8 * v28) &= ~v29;
    v39 = v38 - 1;
    v40 = *(v3 + 16);
    v63 = v27;
    v64 = v40;
    v41 = v65;
    v60 = v3;
    while (1)
    {
      v59 = v39;
      v42 = v41;
LABEL_12:
      if (v42 == v64)
      {
        sub_1AC61887C();
        goto LABEL_24;
      }

      if (v42 >= *(v3 + 16))
      {
        break;
      }

      v65 = v42 + 1;
      v37 = v67;
      OUTLINED_FUNCTION_162_0();
      v43();
      v44 = *(v1 + 40);
      sub_1AC79FE48();
      v45 = v1;
      OUTLINED_FUNCTION_53_0();
      v29 = ~v47;
      do
      {
        v48 = v46 & v29;
        v28 = (v46 & v29) >> 6;
        v27 = 1 << (v46 & v29);
        if ((v27 & v66[v28]) == 0)
        {
          OUTLINED_FUNCTION_173_0();
          v34();
          v42 = v65;
          v1 = v45;
          v3 = v60;
          goto LABEL_12;
        }

        v49 = *(v45 + 48);
        OUTLINED_FUNCTION_162_0();
        v50();
        v37 = sub_1AC79FED8();
        OUTLINED_FUNCTION_173_0();
        v34();
        v46 = v48 + 1;
      }

      while ((v37 & 1) == 0);
      OUTLINED_FUNCTION_173_0();
      v34();
      v51 = *(v63 + 8 * v28);
      *(v63 + 8 * v28) = v51 & ~v27;
      v41 = v65;
      v42 = v65;
      v1 = v45;
      v3 = v60;
      if ((v51 & v27) == 0)
      {
        goto LABEL_12;
      }

      v39 = v59 - 1;
      if (__OFSUB__(v59, 1))
      {
        __break(1u);
      }

      if (v59 == 1)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v53 = swift_slowAlloc();
  v54 = v56;
  sub_1AC6185B4(v53, v57, v66, v57, v1, v27, v72);
  if (!v54)
  {

    MEMORY[0x1B26EAB10](v53, -1, -1);
    goto LABEL_24;
  }

  MEMORY[0x1B26EAB10](v53, -1, -1);
  __break(1u);
}

unint64_t sub_1AC61663C()
{
  result = qword_1EB56BCA0;
  if (!qword_1EB56BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BCA0);
  }

  return result;
}

uint64_t sub_1AC616690()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_26_2(v1);

  return sub_1AC60BFC4(v3, v4, v5);
}

uint64_t sub_1AC61671C(unint64_t a1, void (*a2)(char *, unint64_t, uint64_t))
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v70 - v9;
  v11 = sub_1AC79FB18();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v89 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v70 - v19;
  if (!*(a2 + 2))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_44;
  }

  v76 = v8;
  v71 = 0;
  v21 = a1 + 56;
  v20 = *(a1 + 56);
  v22 = -1 << *(a1 + 32);
  v80 = ~v22;
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v77 = (63 - v22) >> 6;
  v79 = (v18 + 32);
  v87 = (a2 + 56);
  v84 = v18;
  v90 = v18 + 16;
  v91 = (v18 + 8);
  v81 = a1;

  v25 = 0;
  v78 = a1 + 56;
  v73 = v10;
LABEL_6:
  v26 = v24;
  v27 = v25;
  v88 = v25;
  if (v24)
  {
LABEL_12:
    a1 = (v26 - 1) & v26;
    v30 = v81;
    v84[2](v10, *(v81 + 48) + v84[9] * (__clz(__rbit64(v26)) | (v27 << 6)), v11);
    v31 = 0;
    v28 = v10;
    v29 = v27;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v28, v31, 1, v11);
    v92 = v30;
    v93 = v21;
    v94 = v80;
    v95 = v29;
    v96 = a1;
    if (__swift_getEnumTagSinglePayload(v28, 1, v11) == 1)
    {
      goto LABEL_46;
    }

    v75 = *v79;
    v75(v86, v28, v11);
    v32 = *(a2 + 5);
    v74 = sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
    v33 = sub_1AC79FE48();
    v85 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v21 = v33 & v85;
      if (((1 << (v33 & v85)) & v87[(v33 & v85) >> 6]) == 0)
      {
        (*v91)(v86, v11);
        v25 = v29;
        v24 = a1;
        v21 = v78;
        v10 = v73;
        goto LABEL_6;
      }

      v82 = 1 << v21;
      v83 = v21 >> 6;
      v27 = a2;
      v34 = *(a2 + 6);
      v35 = v84;
      v88 = v84[9];
      v36 = v84[2];
      (v36)(v17, v34 + v88 * v21, v11);
      v37 = sub_1AC61AAD8(&qword_1EB56B460, MEMORY[0x1E6969770]);
      v38 = sub_1AC79FED8();
      a2 = v35[1];
      (a2)(v17, v11);
      if (v38)
      {
        break;
      }

      v33 = v21 + 1;
      a2 = v27;
    }

    v84 = v36;
    v85 = v37;
    v39 = (a2)(v86, v11);
    v40 = *(v27 + 32);
    v72 = ((1 << v40) + 63) >> 6;
    v24 = 8 * v72;
    if ((v40 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v86 = a2;
      v73 = &v70;
      MEMORY[0x1EEE9AC00](v39);
      v41 = &v70 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v41, v87, v24);
      v42 = *&v41[8 * v83] & ~v82;
      v43 = *(v27 + 16);
      v82 = v41;
      *&v41[8 * v83] = v42;
      v44 = v43 - 1;
      v28 = v76;
      v45 = v78;
      v46 = v77;
      v47 = v81;
      a2 = v27;
      v48 = v84;
      while (1)
      {
        v83 = v44;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v49 = v29;
LABEL_29:
        v50 = __clz(__rbit64(a1));
        v51 = (a1 - 1) & a1;
        (v48)(v28, *(v47 + 48) + (v50 | (v49 << 6)) * v88, v11);
        v52 = 0;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v28, v52, 1, v11);
        v92 = v47;
        v93 = v45;
        v94 = v80;
        v95 = v29;
        v96 = v51;
        if (__swift_getEnumTagSinglePayload(v28, 1, v11) == 1)
        {
          sub_1AC61BBF0(v28, &qword_1EB56BFD8);
          sub_1AC61887C();
          a2 = v64;
          goto LABEL_42;
        }

        v84 = v51;
        v53 = v48;
        v75(v89, v28, v11);
        v54 = *(a2 + 5);
        v55 = sub_1AC79FE48();
        v56 = a2;
        v57 = ~(-1 << *(a2 + 32));
        do
        {
          v58 = v55 & v57;
          v59 = (v55 & v57) >> 6;
          v60 = 1 << (v55 & v57);
          if ((v60 & v87[v59]) == 0)
          {
            (v86)(v89, v11);
            a2 = v56;
            v47 = v81;
            v28 = v76;
            v45 = v78;
            v46 = v77;
            v48 = v53;
            a1 = v84;
            goto LABEL_23;
          }

          (v53)(v17, *(v56 + 6) + v58 * v88, v11);
          v61 = sub_1AC79FED8();
          (v86)(v17, v11);
          v55 = v58 + 1;
        }

        while ((v61 & 1) == 0);
        (v86)(v89, v11);
        v62 = *(v82 + 8 * v59);
        *(v82 + 8 * v59) = v62 & ~v60;
        v63 = (v62 & v60) == 0;
        a2 = v56;
        v47 = v81;
        v28 = v76;
        v45 = v78;
        v46 = v77;
        v48 = v53;
        a1 = v84;
        if (v63)
        {
          goto LABEL_23;
        }

        v44 = v83 - 1;
        if (__OFSUB__(v83, 1))
        {
          __break(1u);
        }

        if (v83 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_42;
        }
      }

      while (1)
      {
        v49 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v49 >= v46)
        {
          v51 = 0;
          v52 = 1;
          goto LABEL_30;
        }

        a1 = *(v45 + 8 * v49);
        ++v29;
        if (a1)
        {
          v29 = v49;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      sub_1AC61BBF0(v28, &qword_1EB56BFD8);
LABEL_42:
      sub_1AC5CA508();
LABEL_44:
      v65 = *MEMORY[0x1E69E9840];
      return a2;
    }
  }

  else
  {
    v28 = v10;
    v29 = v25;
    while (1)
    {
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v27 >= v77)
      {
        a1 = 0;
        v31 = 1;
        v30 = v81;
        goto LABEL_13;
      }

      v26 = *(v21 + 8 * v27);
      ++v29;
      if (v26)
      {
        v10 = v28;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v67 = swift_slowAlloc();
  v68 = v71;
  v69 = sub_1AC61863C(v67, v72, v87, v72, v27, v21, &v92);
  if (!v68)
  {
    a2 = v69;

    MEMORY[0x1B26EAB10](v67, -1, -1);
    goto LABEL_42;
  }

  result = MEMORY[0x1B26EAB10](v67, -1, -1);
  __break(1u);
  return result;
}