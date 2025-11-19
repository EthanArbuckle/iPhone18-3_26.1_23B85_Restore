size_t sub_1A5C9FB80()
{
  v1 = (*(**(v0 + 224) + 328))();
  if (v1 >> 62)
  {
    v23 = v1;
    v2 = sub_1A5FD484C();
    v1 = v23;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v24 = *(v0 + 264);

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = v1;
  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1A5C9E2C4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = *(v0 + 232);
  v7 = v3;
  v26 = v3 & 0xC000000000000001;
  v27 = *(v0 + 264);
  v8 = v30;
  v28 = v2;
  v29 = v3;
  do
  {
    if (v26)
    {
      v9 = MEMORY[0x1AC554EE0](v5, v7);
    }

    else
    {
      v9 = *(v7 + 8 * v5 + 32);
    }

    v10 = v9;
    v11 = *(v0 + 264);
    v12 = *(v0 + 240);
    v13 = &v9[OBJC_IVAR____TtC6Vision39CoreSceneUnderstandingDetectorRecipient_request];
    v15 = *(v13 + 3);
    v14 = *(v13 + 4);
    v16 = __swift_project_boxed_opaque_existential_1(v13, v15);
    *(v0 + 200) = v15;
    *(v0 + 208) = *(*(*(v14 + 8) + 8) + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    v18 = v11;
    sub_1A5B57ECC(v0 + 176, 0, v27, v12);

    v20 = *(v30 + 16);
    v19 = *(v30 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1A5C9E2C4(v19 > 1, v20 + 1, 1);
    }

    v21 = *(v0 + 240);
    ++v5;
    *(v30 + 16) = v20 + 1;
    sub_1A5B20B18(v21, v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20);
    v7 = v29;
  }

  while (v28 != v5);
  v22 = *(v0 + 264);

LABEL_14:

  v25 = *(v0 + 8);

  return v25(v8);
}

char *sub_1A5C9FE0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A5FD484C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1A5B5748C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1AC554EE0](i, a1);
        sub_1A5CA02B4();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1A5B5748C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1A5B101C8(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1A5CA02B4();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1A5B5748C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1A5B101C8(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5C9FFD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1A5C9E2A4(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1A5B180A0(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A5C9E2A4((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1A5B063D4(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A5CA01A8()
{
  sub_1A5CBAF0C();

  return swift_deallocClassInstance();
}

uint64_t sub_1A5CA01F0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1A5FD484C();
LABEL_9:
  result = sub_1A5FD46FC();
  *v1 = result;
  return result;
}

unint64_t sub_1A5CA02B4()
{
  result = qword_1EB1F44F8;
  if (!qword_1EB1F44F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F44F8);
  }

  return result;
}

uint64_t sub_1A5CA0300(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A5FD484C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A5FD484C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A5CA0508();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4530);
            v9 = sub_1A5CA0480(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A5CA02B4();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1A5CA0480(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC554EE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A5CA0500;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5CA0508()
{
  result = qword_1EB1F4538;
  if (!qword_1EB1F4538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F4530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4538);
  }

  return result;
}

uint64_t sub_1A5CA056C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v23 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v8 + 16);
  v22(v11, v10);
  v12 = (*(a4 + 32))(v24, a3, a4);
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1A5B2053C(0, v15[2] + 1, 1, v15);
    v15 = isUniquelyReferenced_nonNull_native;
    *v14 = isUniquelyReferenced_nonNull_native;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1A5B2053C((v17 > 1), v18 + 1, 1, v15);
    *v14 = isUniquelyReferenced_nonNull_native;
  }

  v19 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v20 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v22)(v20, v11, v6, v19);
  sub_1A5B20684(v18, v20, v14, v6, *(v23 + 8));
  (*(v8 + 8))(v11, v6);
  return v12(v24, 0);
}

void sub_1A5CA0784(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  NormalizedRect.init(normalizedRect:)(*&a3);
  sub_1A5B0BCC4(&v9);
  v8 = v9;
  NormalizedRect.toImageCoordinates(_:origin:)(__PAIR128__(a2, a1), &v8);
}

uint64_t sub_1A5CA07F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(type metadata accessor for VisionResult(0) - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CA08B4, 0, 0);
}

uint64_t sub_1A5CA08B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v3 = *(v1 + 24);
  }

  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  *(v0 + 64) = v3;
  v6 = sub_1A5CA0C64(v3, v4, v5, v2, *(v0 + 24), *(v0 + 32));
  if (v6)
  {
    v12 = v6;

    v13 = *(v0 + 8);

    return v13(v12);
  }

  else
  {
    v14 = (*(*(v0 + 32) + 56) + **(*(v0 + 32) + 56));
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_1A5CA0A60;
    v8 = *(v0 + 32);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    return v14(v10, v9, v8);
  }
}

uint64_t sub_1A5CA0A60(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A5CA0B60, 0, 0);
}

uint64_t sub_1A5CA0B60()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 48);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      v6 = *(v0 + 72);
      v5 = *(v0 + 80);
      v7 = *(v0 + 104);
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      sub_1A5B166B4(v4, v9);
      sub_1A5CA1738(v9, v8, v6, v5, v7);
      sub_1A5B16718(v9);
      v4 += v12;
      --v2;
    }

    while (v2);
    v1 = *(v0 + 96);
  }

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_1A5CA0C64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v29 = a3;
  v25 = a1;
  v26 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA88);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for VisionResult(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(a6 + 16))(a5, a6, v15);
  if (!*(v18 + 16))
  {

    return 0;
  }

  sub_1A5B180A0(v18 + 32, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (a4)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v20 = v27;
  ObjectType = swift_getObjectType();
  sub_1A5B18648(v25, v26, v29, ObjectType, v20, v12);
  if (v6)
  {
    return swift_unknownObjectRelease();
  }

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    swift_unknownObjectRelease();
    sub_1A5B10168(v12, &qword_1EB1EEA88);
    return 0;
  }

  sub_1A5B20B18(v12, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB48);
  v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A5FF36F0;
  sub_1A5B20B18(v17, v23 + v22);
  swift_unknownObjectRelease();
  return v23;
}

uint64_t sub_1A5CA0F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[22] = a2;
  v4[25] = *(type metadata accessor for VisionResult(0) - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v10 = (*(a3 + 64) + **(a3 + 64));
  v8 = swift_task_alloc();
  v4[28] = v8;
  *v8 = v4;
  v8[1] = sub_1A5CA10AC;

  return v10(a1, a2, a3);
}

uint64_t sub_1A5CA10AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_1A5CA140C;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_1A5CA11D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A5CA11D4()
{
  v1 = sub_1A5CA15CC(v0[30]);

  if (!v1)
  {
    return sub_1A5FD483C();
  }

  v2 = (*(v0[23] + 16))(v0[22]);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[25];
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A5C9E2C4(0, v3, 0);
    v5 = v13;
    v6 = v2 + 32;
    do
    {
      v7 = v0[27];
      sub_1A5B180A0(v6, (v0 + 12));
      sub_1A5B180A0((v0 + 12), (v0 + 17));

      sub_1A5B57ECC((v0 + 17), v1, 0, v7);
      __swift_destroy_boxed_opaque_existential_1((v0 + 12));
      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1A5C9E2C4(v8 > 1, v9 + 1, 1);
      }

      v10 = v0[27];
      *(v13 + 16) = v9 + 1;
      sub_1A5B20B18(v10, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v12 = v0[1];

  return v12(v5);
}

uint64_t sub_1A5CA140C()
{
  v1 = (*(v0[23] + 16))(v0[22]);
  v2 = *(v1 + 16);
  v3 = v0[29];
  if (v2)
  {
    v4 = v0[25];
    v16 = MEMORY[0x1E69E7CC0];
    sub_1A5C9E2C4(0, v2, 0);
    v5 = v16;
    v6 = v1 + 32;
    do
    {
      v7 = v0[29];
      v8 = v0[26];
      sub_1A5B180A0(v6, (v0 + 2));
      sub_1A5B180A0((v0 + 2), (v0 + 7));
      v9 = v7;
      sub_1A5B57ECC((v0 + 7), 0, v3, v8);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A5C9E2C4(v10 > 1, v11 + 1, 1);
      }

      v12 = v0[26];
      *(v16 + 16) = v11 + 1;
      sub_1A5B20B18(v12, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
      v6 += 40;
      --v2;
    }

    while (v2);
    v13 = v0[29];
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_1A5CA15CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A5C9E2A4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1A5B101D8(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1A5B063D4(v8, v11);
      sub_1A5B063D4(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A5C9E2A4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_1A5B063D4(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1A5B10168(v8, &qword_1EB1F45A0);
    return 0;
  }

  return v3;
}

uint64_t sub_1A5CA1738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1A5B5C574(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA70);
  result = swift_dynamicCast();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(v12 + 64))(a1, a2, a3, a4, a5 & 1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A5CA1830(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5CA1888(a1);
  return v2;
}

uint64_t sub_1A5CA1888(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v43 = a1;
  sub_1A5B180A0(a1, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  v3 = type metadata accessor for DetectTrajectoriesRequest();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = OBJC_IVAR____TtC6Vision25DetectTrajectoriesRequest_uuid;
    v6 = OBJC_IVAR____TtC6Vision37DetectTrajectoriesPerformingOperation_uuid;
    v7 = sub_1A5FD367C();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v2 + v6, v40 + v5, v7);
    DetectTrajectoriesRequest.regionOfInterest.getter(&v41);
    v9 = v42;
    *(v2 + 32) = v41;
    *(v2 + 48) = v9;
    *&v41 = v40;
    v10 = sub_1A5CA1DAC(&qword_1EB1F45A8);

    v12 = sub_1A5BDA35C(v11, v3, v10);

    *(v2 + 24) = v12;
    DetectTrajectoriesRequest.descriptor.getter(&v41);
    *(v2 + OBJC_IVAR____TtC6Vision37DetectTrajectoriesPerformingOperation_descriptor) = v41;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F45B0);
    v14 = sub_1A5CA1DAC(&qword_1EB1F0070);
    sub_1A5B17D94(sub_1A5CA1D00, 0, v3, v13, v14, &v41);
    if (v39)
    {
      __swift_destroy_boxed_opaque_existential_1(v43);

      (*(v8 + 8))(v2 + v6, v7);
      type metadata accessor for DetectTrajectoriesPerformingOperation();
      swift_deallocPartialClassInstance();
    }

    else
    {
      v15 = v41;
      *(v2 + 64) = v41;
      v16 = sub_1A5FD3D5C();
      v18 = v17;
      *(&v42 + 1) = sub_1A5B16F58(0, &qword_1EB1F45B8);
      *&v41 = *(&v15 + 1);
      swift_beginAccess();
      v38 = v15;
      v37 = *(&v15 + 1);
      sub_1A5B0DE30(&v41, v16, v18);
      swift_endAccess();
      v19 = sub_1A5FD3D5C();
      v21 = v20;
      v22 = DetectTrajectoriesRequest.objectMinimumNormalizedRadius.getter();
      v23 = MEMORY[0x1E69E6448];
      *(&v42 + 1) = MEMORY[0x1E69E6448];
      *&v41 = v22;
      swift_beginAccess();
      sub_1A5B0DE30(&v41, v19, v21);
      swift_endAccess();
      v24 = sub_1A5FD3D5C();
      v26 = v25;
      v27 = DetectTrajectoriesRequest.objectMaximumNormalizedRadius.getter();
      *(&v42 + 1) = v23;
      *&v41 = v27;
      swift_beginAccess();
      sub_1A5B0DE30(&v41, v24, v26);
      swift_endAccess();
      v36 = sub_1A5FD3D5C();
      v29 = v28;
      v30 = DetectTrajectoriesRequest.targetFrameTime.getter();
      LODWORD(v23) = v31;
      v33 = v32;
      v34 = HIDWORD(v31);
      type metadata accessor for CMTime(0);
      *&v41 = v30;
      *(&v41 + 1) = __PAIR64__(v34, v23);
      *&v42 = v33;
      *(&v42 + 1) = v35;
      swift_beginAccess();
      sub_1A5B0DE30(&v41, v36, v29);
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A5CA1D00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[2];
  v5 = objc_allocWithZone(VNTrajectoryRequestState);
  v6 = v4;
  v7 = [v5 init];
  result = (*(*a1 + 160))();
  if ((v9 & 1) == 0)
  {
    result = [v7 setTargetImageDimensionForContourDetection_];
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_1A5CA1DAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DetectTrajectoriesRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for DetectTrajectoriesPerformingOperation()
{
  result = qword_1EB25C7D0;
  if (!qword_1EB25C7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A5CA1E3C(uint64_t a1)
{
  v4 = (*(*v1 + 128))();
  if (!*(v4 + 16))
  {

    __break(1u);
    goto LABEL_7;
  }

  sub_1A5B180A0(v4 + 32, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  v5 = type metadata accessor for DetectTrajectoriesRequest();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  v9[2] = a1;
  v9[3] = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1370);
  v8 = sub_1A5CA1DAC(&qword_1EB1F0070);
  sub_1A5B17D94(sub_1A5CA1FC8, v9, v5, v7, v8, v10);

  if (!v2)
  {
    return v10[0];
  }

  return result;
}

void sub_1A5CA1FC8(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v5 = (*(**(v1 + 16) + 120))();
  if (v2)
  {
    return;
  }

  v37 = a1;
  v38 = v5;
  v6 = *(v4 + 8);
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  v11 = *(*v4 + 152);
  v12 = v11();
  sub_1A5B37FAC(v12);

  v13 = sub_1A5FD3BDC();

  v14 = [objc_allocWithZone(VNWarningRecorder) init];
  v15 = sub_1A5FD363C();
  v41[0] = 0;
  v16 = [v6 processVNImageBuffer:v38 regionOfInterest:v13 withOptions:v14 warningRecorder:v15 requestUUID:v41 error:{v7, v8, v9, v10}];

  v17 = v41[0];
  if (!v16)
  {
    v27 = v41[0];
    sub_1A5FD348C();

    swift_willThrow();
    return;
  }

  sub_1A5B16F58(0, &qword_1EB1F45C0);
  v18 = sub_1A5FD3F4C();
  v19 = v17;

  v20 = sub_1A5FD3D5C();
  v22 = v21;
  v23 = v11();
  if (!*(v23 + 16))
  {

    goto LABEL_9;
  }

  v24 = sub_1A5B0E2A4(v20, v22);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_1A5B101D8(*(v23 + 56) + 32 * v24, v41);

  sub_1A5B16F58(0, &qword_1EB1F45B8);
  if (swift_dynamicCast())
  {
    [v39 setTargetImageDimensionForContourDetection_];
  }

LABEL_10:
  if (!(v18 >> 62))
  {
    v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_12;
    }

LABEL_22:

    *a1 = MEMORY[0x1E69E7CC0];
    return;
  }

  v28 = sub_1A5FD484C();
  if (!v28)
  {
    goto LABEL_22;
  }

LABEL_12:
  v47 = MEMORY[0x1E69E7CC0];
  sub_1A5B5748C(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
  }

  else
  {
    v29 = 0;
    v30 = v47;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 1;
    v31 = *(v4 + OBJC_IVAR____TtC6Vision37DetectTrajectoriesPerformingOperation_descriptor);
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1AC554EE0](v29, v18);
      }

      else
      {
        v32 = *(v18 + 8 * v29 + 32);
      }

      v33 = v32;
      v40 = v31;
      v42 = type metadata accessor for TrajectoryObservation();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
      sub_1A5B25590(v33, &v40, boxed_opaque_existential_1);
      v47 = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1A5B5748C((v35 > 1), v36 + 1, 1);
        v30 = v47;
      }

      ++v29;
      *(v30 + 16) = v36 + 1;
      sub_1A5B101C8(v41, (v30 + 32 * v36 + 32));
    }

    while (v28 != v29);

    *v37 = v30;
  }
}

uint64_t sub_1A5CA241C()
{

  v1 = OBJC_IVAR____TtC6Vision37DetectTrajectoriesPerformingOperation_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void (*sub_1A5CA2518(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B16120;
}

uint64_t sub_1A5CA25CC()
{
  v2 = (*(*v0 + 192))();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1A5CA26A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1966FB0);
}

uint64_t sub_1A5CA2754(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

id sub_1A5CA2874(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  sub_1A5B180A0(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  v3 = type metadata accessor for DetectTrajectoriesRequest();
  if (!swift_dynamicCast())
  {
LABEL_20:
    __break(1u);
  }

  *&v25[0] = v23;
  v4 = sub_1A5CA1DAC(&qword_1EB1F45A8);
  v5 = sub_1A5BDA35C(a2, v3, v4);
  v6 = objc_opt_self();
  sub_1A5B37FAC(v5);

  v7 = sub_1A5FD3BDC();

  *&v25[0] = 0;
  v8 = [v6 supportedImageSizeSetForOptions:v7 error:v25];

  v9 = *&v25[0];
  if (!v8)
  {
    v14 = *&v25[0];
    sub_1A5FD348C();

    swift_willThrow();

    return v14;
  }

  sub_1A5B16F58(0, &unk_1EB1F1360);
  v10 = sub_1A5FD3F4C();
  v11 = v9;

  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1A5FD484C();
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_5:
  v24 = MEMORY[0x1E69E7CC0];
  sub_1A5BDAC18(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = 0;
  v14 = v24;
  if ((v10 & 0xC000000000000001) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  for (i = MEMORY[0x1AC554EE0](v13, v10); ; i = *(v10 + 8 * v13 + 32))
  {
    sub_1A5B50818(i, v25);
    v17 = v24[2];
    v16 = v24[3];
    if (v17 >= v16 >> 1)
    {
      sub_1A5BDAC18((v16 > 1), v17 + 1, 1);
    }

    v24[2] = v17 + 1;
    v18 = &v24[10 * v17];
    v18[2] = v25[0];
    v19 = v25[1];
    v20 = v25[2];
    v21 = v26[0];
    *(v18 + 89) = *(v26 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    if (v12 - 1 == v13)
    {
      break;
    }

    ++v13;
    if ((v10 & 0xC000000000000001) != 0)
    {
      goto LABEL_7;
    }

LABEL_8:
    ;
  }

  return v14;
}

uint64_t sub_1A5CA2BA4()
{
  result = sub_1A5FD367C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_1A5CA2C64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  DetectDeviceGazeRequest.descriptor.getter(v16);
  v6 = v16[0];
  DetectDeviceGazeRequest.regionOfInterest.getter(v16);
  v14 = v16[1];
  v15 = v16[0];
  v7 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_state;
  swift_beginAccess();
  v8 = *(a1 + v7);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  v10 = type metadata accessor for DetectDeviceGazeRequest();
  v11 = sub_1A5CA42A0(&qword_1EB1F09E8, type metadata accessor for DetectDeviceGazeRequest);
  v12 = sub_1A5D4F438(a2, v10, v11);

  *a3 = v6;
  *(a3 + 8) = xmmword_1A6014D50;
  *(a3 + 24) = 9;
  result = v15;
  *(a3 + 32) = v15;
  *(a3 + 48) = v14;
  *(a3 + 64) = v9;
  *(a3 + 72) = v12;
  return result;
}

uint64_t sub_1A5CA2DB8@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v10 = v1[4];
  v11 = v3;
  v12 = v1[6];
  v4 = v12;
  v5 = v1[3];
  v9[0] = v1[2];
  v6 = v9[0];
  v9[1] = v5;
  a1[2] = v10;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v6;
  a1[1] = v5;
  return sub_1A5CA2E30(v9, v8);
}

uint64_t sub_1A5CA2E68(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[5];
  v8[2] = v1[4];
  v8[3] = v3;
  v8[4] = v1[6];
  v4 = v1[3];
  v8[0] = v1[2];
  v8[1] = v4;
  v5 = a1[3];
  v1[4] = a1[2];
  v1[5] = v5;
  v1[6] = a1[4];
  v6 = a1[1];
  v1[2] = *a1;
  v1[3] = v6;
  return sub_1A5CA2EDC(v8);
}

uint64_t sub_1A5CA2F0C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A5CA2F64(a1, a2);
  return v4;
}

uint64_t sub_1A5CA2F64(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  v8 = (v2 + 24);
  *(v2 + 16) = v7;
  sub_1A5B180A0(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  type metadata accessor for DetectDeviceGazeRequest();
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v17[0];
    sub_1A5B180A0(a1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E0);
    swift_dynamicCast();
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v13 = (*(v12 + 8))(v11, v12);
    swift_beginAccess();
    *v8 = v13;

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_1A5CA2C64(v10, a2, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v3)
    {

      type metadata accessor for DeviceGazeDetectorPerformingOperation();
      swift_deallocPartialClassInstance();
    }

    else
    {
      v14 = v16[3];
      v4[4] = v16[2];
      v4[5] = v14;
      v4[6] = v16[4];
      v15 = v16[1];
      v4[2] = v16[0];
      v4[3] = v15;
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CA3144(uint64_t a1)
{
  v2[135] = v1;
  v2[134] = a1;
  v2[136] = type metadata accessor for SingleFaceTemporalGazeScoresState(0);
  v2[137] = swift_task_alloc();
  v3 = type metadata accessor for FaceObservation(0);
  v2[138] = v3;
  v2[139] = *(v3 - 8);
  v2[140] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CA3238, 0, 0);
}

uint64_t sub_1A5CA3238()
{
  v80 = v0;
  v1 = (*(**(v0 + 1080) + 128))();
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v72 = *(v1 + 16);
  if (v72)
  {
    v73 = v1;
    v2 = *(v0 + 1080);
    v3 = sub_1A5BF63A0(2, 0xD000000000000036, 0x80000001A6058E70);
    v4 = *(*v2 + 152);
    (v4)(v3);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    sub_1A5B72D90(v5, v6, v7);
    v8 = sub_1A5CA2EDC(v0 + 96);
    (v4)(v8);

    sub_1A5CA2EDC(v0 + 16);
    sub_1A5CD408C(v5, v6, v7, v0 + 736);
    v11 = *(v0 + 1072);
    sub_1A5B4F9C8(v5, v6, v7);

    sub_1A5BF63A0(2, 0xD000000000000035, 0x80000001A6058EB0);
    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
    v14 = *(v11 + 16);
    if (v14)
    {
      v15 = result;
      v71 = *(v0 + 1112);

      v16 = sub_1A5C3B40C(4u);
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1A5FF3930;
      *(v19 + 32) = v14;
      *(v0 + 800) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E8);
      *(v0 + 776) = v19;
      sub_1A5B101C8((v0 + 776), (v0 + 808));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v79[0] = v15;
      sub_1A5B0E9AC((v0 + 808), v16, v18, isUniquelyReferenced_nonNull_native);

      v21 = sub_1A5C3B40C(3u);
      v23 = v22;
      v4();
      sub_1A5CA2EDC(v0 + 256);
      v24 = *(v0 + 256);
      *(v0 + 864) = &type metadata for RequestDescriptor;
      *(v0 + 840) = v24;
      sub_1A5B101C8((v0 + 840), (v0 + 872));
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *&v79[0] = v15;
      sub_1A5B0E9AC((v0 + 872), v21, v23, v25);

      v76 = v15;
      v26 = sub_1A5B4AF3C();
      v27 = sub_1A5B4B05C();
      v77 = v12;
      v4();
      v28 = *(v0 + 240);

      v29 = sub_1A5CA2EDC(v0 + 176);
      (*(*v28 + 256))(v29);

      result = sub_1A5BF63A0(2, 0xD000000000000031, 0x80000001A6058EF0);
      v30 = 0;
      v70 = v4;
      while (v30 < *(v73 + 16))
      {
        v31 = *(v0 + 1120);
        v32 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v75 = v30;
        v33 = sub_1A5C9AF04(v73 + v32 + *(v71 + 72) * v30, v31, type metadata accessor for FaceObservation);
        (v4)(v78, v33);
        v34 = v78[4];
        v35 = v78[2];
        *(v0 + 384) = v78[3];
        *(v0 + 400) = v34;
        v36 = v78[0];
        *(v0 + 352) = v78[1];
        *(v0 + 368) = v35;
        *(v0 + 336) = v36;
        v37 = *(v0 + 400);

        sub_1A5CA2EDC(v0 + 336);
        (*(*v37 + 272))(v31, v26, v27);
        v38 = *(v0 + 1120);
        v39 = *(v0 + 1088);
        v74 = *(v0 + 1096);

        v40 = sub_1A5C3B40C(5u);
        v42 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2D00);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1A5FF36F0;
        sub_1A5C9AF04(v38, v43 + v32, type metadata accessor for FaceObservation);
        *(v0 + 928) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2980);
        *(v0 + 904) = v43;
        sub_1A5B101C8((v0 + 904), (v0 + 936));
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *&v79[0] = v76;
        sub_1A5B0E9AC((v0 + 936), v40, v42, v44);

        v45 = *&v79[0];
        v46 = sub_1A5C4946C();
        v48 = v47;
        *(v0 + 992) = v39;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 968));
        sub_1A5C9AF04(v74, boxed_opaque_existential_1, type metadata accessor for SingleFaceTemporalGazeScoresState);
        sub_1A5B101C8((v0 + 968), (v0 + 1000));
        v50 = swift_isUniquelyReferenced_nonNull_native();
        *&v79[0] = v45;
        sub_1A5B0E9AC((v0 + 1000), v46, v48, v50);

        v51 = *&v79[0];
        v52 = *(v0 + 760);
        v53 = *(v0 + 768);
        __swift_project_boxed_opaque_existential_1((v0 + 736), v52);
        (v70)(v79);
        v54 = v79[3];
        v55 = v79[4];
        *(v0 + 528) = v79[2];
        *(v0 + 544) = v54;
        *(v0 + 560) = v55;
        v56 = v79[1];
        *(v0 + 496) = v79[0];
        *(v0 + 512) = v56;
        sub_1A5CA2EDC(v0 + 496);
        v57 = *(v0 + 528);
        v58 = *(v0 + 536);
        v59 = *(v0 + 544);
        v60 = *(v0 + 552);
        v61 = *(v53 + 16);
        *(v0 + 1056) = swift_getAssociatedTypeWitness();
        __swift_allocate_boxed_opaque_existential_1((v0 + 1032));
        v76 = v51;
        v61(v51, v52, v53, v57, v58, v59, v60);
        v62 = *(v0 + 1120);
        v63 = *(v0 + 1096);
        v30 = v75 + 1;
        swift_dynamicCast();
        sub_1A5C9A3FC(*(v0 + 1064));
        *&v79[0] = 0;
        *(&v79[0] + 1) = 0xE000000000000000;
        sub_1A5FD46AC();

        *&v79[0] = 0xD000000000000038;
        *(&v79[0] + 1) = 0x80000001A6058F30;
        sub_1A5CA42A0(&qword_1EB1F2DC0, type metadata accessor for FaceObservation);
        v64 = sub_1A5FD4ACC();
        MEMORY[0x1AC554600](v64);

        sub_1A5BF63A0(2, *&v79[0], *(&v79[0] + 1));

        sub_1A5C9AF6C(v63, type metadata accessor for SingleFaceTemporalGazeScoresState);
        result = sub_1A5C9AF6C(v62, type metadata accessor for FaceObservation);
        v4 = v70;
        if (v72 == v75 + 1)
        {
          v65 = *(v0 + 1104);

          *&v79[0] = 0;
          *(&v79[0] + 1) = 0xE000000000000000;
          sub_1A5FD46AC();

          *&v79[0] = 0xD000000000000026;
          *(&v79[0] + 1) = 0x80000001A6058F70;
          v66 = MEMORY[0x1AC554750](v77, v65);
          MEMORY[0x1AC554600](v66);

          sub_1A5BF63A0(2, *&v79[0], *(&v79[0] + 1));

          v9 = sub_1A5C9A528(v77);

          (v70)(v67);
          v68 = *(v0 + 720);

          v69 = sub_1A5CA2EDC(v0 + 656);
          (*(*v68 + 264))(v69);

          __swift_destroy_boxed_opaque_existential_1(v0 + 736);
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_6:

    v10 = *(v0 + 8);

    return v10(v9);
  }

  return result;
}

uint64_t (*sub_1A5CA3E10(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5CA3EE8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 120))();
  return sub_1A5B17040;
}

uint64_t sub_1A5CA3F9C(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9A9D4;

  return v6(a1);
}

uint64_t sub_1A5CA4134(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1967070);
}

uint64_t sub_1A5CA41F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B0CE78;

  return sub_1A5CB68D0(a1, a2, &off_1EE701998);
}

uint64_t sub_1A5CA42A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5CA4324()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB48);
  v2 = *(type metadata accessor for VisionResult(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A5FF36F0;
  sub_1A5B180A0(v1 + 24, v0 + 16);
  v5 = *(v1 + 16);
  v6 = v5;
  sub_1A5B57ECC(v0 + 16, 0, v5, (v4 + v3));
  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_1A5CA4444(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1A5B063D4(a2, v4 + 24);
  return v4;
}

uint64_t sub_1A5CA4498()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1A5CA44D8(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C98C98;

  return v6(a1);
}

uint64_t sub_1A5CA45F8(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

uint64_t sub_1A5CA473C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v10 = *(v1 + 64);
  v11 = v3;
  v12 = *(v1 + 96);
  v4 = v12;
  v5 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v6 = v9[0];
  v9[1] = v5;
  *(a1 + 32) = v10;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v6;
  *(a1 + 16) = v5;
  return sub_1A5CA47A8(v9, &v8);
}

uint64_t sub_1A5CA47E0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v8[2] = *(v1 + 64);
  v8[3] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v8[1] = v4;
  v5 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v5;
  *(v1 + 96) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v6;
  return sub_1A5CA4854(v8);
}

uint64_t sub_1A5CA4884(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A5CA5AC4(a1, a2);

  return v4;
}

uint64_t sub_1A5CA48F0(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = type metadata accessor for FaceObservation(0);
  v2[95] = v3;
  v2[96] = *(v3 - 8);
  v2[97] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CA49B4, 0, 0);
}

unint64_t sub_1A5CA49B4()
{
  v113 = v0;
  v1 = (*(**(v0 + 752) + 128))();
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v102 = *(v1 + 16);
  if (v102)
  {
    v103 = v1;
    v2 = *(v0 + 752);
    v3 = sub_1A5BF63A0(2, 0xD000000000000036, 0x80000001A6058E70);
    v4 = *(*v2 + 152);
    (v4)(v106, v3);
    v5 = v106[1];
    *(v0 + 88) = v106[0];
    *(v0 + 152) = v107;
    v6 = v106[2];
    *(v0 + 136) = v106[3];
    *(v0 + 120) = v6;
    *(v0 + 104) = v5;
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    sub_1A5B72D90(v7, v8, v9);
    v10 = sub_1A5CA4854(v0 + 88);
    (v4)(&v108, v10);
    *(v0 + 80) = v112;
    v11 = v111;
    *(v0 + 48) = v110;
    *(v0 + 64) = v11;
    v12 = v109;
    *(v0 + 16) = v108;
    *(v0 + 32) = v12;

    sub_1A5CA4854(v0 + 16);
    sub_1A5CD408C(v7, v8, v9, v0 + 304);
    v101 = v4;
    v15 = *(v0 + 744);
    sub_1A5B4F9C8(v7, v8, v9);

    sub_1A5BF63A0(2, 0xD000000000000035, 0x80000001A6058EB0);
    result = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
    v17 = *(v15 + 16);
    if (v17)
    {
      v18 = result;
      v19 = *(v0 + 752);

      v20 = sub_1A5C3B40C(4u);
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1A5FF3930;
      *(v23 + 32) = v17;
      *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E8);
      *(v0 + 384) = v23;
      sub_1A5B101C8((v0 + 384), (v0 + 416));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v108 = v18;
      sub_1A5B0E9AC((v0 + 416), v20, v22, isUniquelyReferenced_nonNull_native);

      v25 = v108;
      v26 = sub_1A5C3B40C(3u);
      v28 = v27;
      v101(&v108);
      v29 = v111;
      *(v0 + 192) = v110;
      *(v0 + 208) = v29;
      *(v0 + 224) = v112;
      v30 = v109;
      *(v0 + 160) = v108;
      *(v0 + 176) = v30;
      sub_1A5CA4854(v0 + 160);
      v31 = *(v0 + 160);
      *(v0 + 472) = &type metadata for RequestDescriptor;
      *(v0 + 448) = v31;
      sub_1A5B101C8((v0 + 448), (v0 + 480));
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v106[0] = v25;
      sub_1A5B0E9AC((v0 + 480), v26, v28, v32);

      v34 = *&v106[0];
      result = (*(*v19 + 104))(v33);
      v35 = result;
      v104 = *(result + 16);
      if (v104)
      {
        v36 = 0;
        v37 = result + 32;
        do
        {
          if (v36 >= *(v35 + 16))
          {
            __break(1u);
            goto LABEL_47;
          }

          sub_1A5B180A0(v37, v0 + 344);
          v41 = *(v0 + 368);
          v42 = *(v0 + 376);
          __swift_project_boxed_opaque_existential_1((v0 + 344), v41);
          (*(v42 + 56))(&v108, v41, v42);
          HIDWORD(v43) = BYTE1(v108);
          LODWORD(v43) = v108 << 24;
          if ((v43 >> 27) != 36)
          {
            v55 = *(v0 + 368);
            v56 = *(v0 + 376);
            __swift_project_boxed_opaque_existential_1((v0 + 344), v55);
            (*(v56 + 56))(&v108, v55, v56);
            HIDWORD(v57) = BYTE1(v108);
            LODWORD(v57) = v108 << 24;
            if ((v57 >> 27) != 39)
            {
              goto LABEL_14;
            }

            v58 = sub_1A5C3B40C(0xAu);
            v60 = v59;
            *(v0 + 632) = MEMORY[0x1E69E6370];
            *(v0 + 608) = 1;
            sub_1A5B101C8((v0 + 608), (v0 + 640));
            v61 = swift_isUniquelyReferenced_nonNull_native();
            *&v108 = v34;
            result = sub_1A5B0E2A4(v58, v60);
            v63 = v34[2];
            v64 = (v62 & 1) == 0;
            v51 = __OFADD__(v63, v64);
            v65 = v63 + v64;
            if (v51)
            {
              goto LABEL_49;
            }

            v66 = v62;
            if (v34[3] < v65)
            {
              sub_1A5B0E544(v65, v61);
              result = sub_1A5B0E2A4(v58, v60);
              if ((v66 & 1) != (v67 & 1))
              {
LABEL_43:

                return sub_1A5FD4B8C();
              }

              goto LABEL_32;
            }

            if (v61)
            {
LABEL_32:
              if ((v66 & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v73 = result;
              sub_1A5B0EB68();
              result = v73;
              if ((v66 & 1) == 0)
              {
LABEL_37:
                v34 = v108;
                *(v108 + 8 * (result >> 6) + 64) |= 1 << result;
                v74 = (v34[6] + 16 * result);
                *v74 = v58;
                v74[1] = v60;
                result = sub_1A5B101C8((v0 + 640), (v34[7] + 32 * result));
                v75 = v34[2];
                v51 = __OFADD__(v75, 1);
                v70 = v75 + 1;
                if (v51)
                {
                  goto LABEL_51;
                }

                goto LABEL_38;
              }
            }

            v71 = result;

            v34 = v108;
            v39 = (*(v108 + 56) + 32 * v71);
            __swift_destroy_boxed_opaque_existential_1(v39);
            v40 = (v0 + 640);
            goto LABEL_13;
          }

          v44 = sub_1A5C3B40C(0xBu);
          v46 = v45;
          *(v0 + 696) = MEMORY[0x1E69E6370];
          *(v0 + 672) = 1;
          sub_1A5B101C8((v0 + 672), (v0 + 704));
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *&v108 = v34;
          result = sub_1A5B0E2A4(v44, v46);
          v49 = v34[2];
          v50 = (v48 & 1) == 0;
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          if (v51)
          {
            goto LABEL_48;
          }

          v53 = v48;
          if (v34[3] >= v52)
          {
            if ((v47 & 1) == 0)
            {
              v72 = result;
              sub_1A5B0EB68();
              result = v72;
              if ((v53 & 1) == 0)
              {
LABEL_28:
                v34 = v108;
                *(v108 + 8 * (result >> 6) + 64) |= 1 << result;
                v68 = (v34[6] + 16 * result);
                *v68 = v44;
                v68[1] = v46;
                result = sub_1A5B101C8((v0 + 704), (v34[7] + 32 * result));
                v69 = v34[2];
                v51 = __OFADD__(v69, 1);
                v70 = v69 + 1;
                if (v51)
                {
                  goto LABEL_50;
                }

LABEL_38:
                v34[2] = v70;
                goto LABEL_14;
              }

              goto LABEL_12;
            }
          }

          else
          {
            sub_1A5B0E544(v52, v47);
            result = sub_1A5B0E2A4(v44, v46);
            if ((v53 & 1) != (v54 & 1))
            {
              goto LABEL_43;
            }
          }

          if ((v53 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_12:
          v38 = result;

          v34 = v108;
          v39 = (*(v108 + 56) + 32 * v38);
          __swift_destroy_boxed_opaque_existential_1(v39);
          v40 = (v0 + 704);
LABEL_13:
          sub_1A5B101C8(v40, v39);
LABEL_14:
          ++v36;
          result = __swift_destroy_boxed_opaque_existential_1(v0 + 344);
          v37 += 40;
        }

        while (v104 != v36);
      }

      v105 = v34;
      v99 = *(v0 + 768);
      v100 = (v0 + 232);

      *&v106[0] = MEMORY[0x1E69E7CC0];
      result = sub_1A5BF63A0(2, 0xD000000000000031, 0x80000001A6058EF0);
      v76 = 0;
      while (v76 < *(v103 + 16))
      {
        v77 = *(v0 + 776);
        v78 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        sub_1A5B0F60C(v103 + v78 + *(v99 + 72) * v76, v77);
        v79 = sub_1A5C3B40C(5u);
        v81 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2D00);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_1A5FF36F0;
        sub_1A5B0F60C(v77, v82 + v78);
        *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2980);
        *(v0 + 512) = v82;
        sub_1A5B101C8((v0 + 512), (v0 + 544));
        v83 = swift_isUniquelyReferenced_nonNull_native();
        *&v108 = v105;
        sub_1A5B0E9AC((v0 + 544), v79, v81, v83);

        v84 = v108;
        v85 = *(v0 + 328);
        v86 = *(v0 + 336);
        __swift_project_boxed_opaque_existential_1((v0 + 304), v85);
        v101(&v108);
        v87 = v111;
        *(v0 + 264) = v110;
        *(v0 + 280) = v87;
        *(v0 + 296) = v112;
        v88 = v109;
        *v100 = v108;
        *(v0 + 248) = v88;
        sub_1A5CA4854(v100);
        v89 = *(v0 + 264);
        v90 = *(v0 + 272);
        v91 = *(v0 + 280);
        v92 = *(v0 + 288);
        v93 = *(v86 + 16);
        *(v0 + 600) = swift_getAssociatedTypeWitness();
        __swift_allocate_boxed_opaque_existential_1((v0 + 576));
        v105 = v84;
        v93(v84, v85, v86, v89, v90, v91, v92);
        v94 = *(v0 + 776);
        ++v76;
        swift_dynamicCast();
        sub_1A5C9A3FC(*(v0 + 736));
        *&v108 = 0;
        *(&v108 + 1) = 0xE000000000000000;
        sub_1A5FD46AC();

        *&v108 = 0xD000000000000038;
        *(&v108 + 1) = 0x80000001A6058F30;
        sub_1A5CA5CE0();
        v95 = sub_1A5FD4ACC();
        MEMORY[0x1AC554600](v95);

        sub_1A5BF63A0(2, v108, *(&v108 + 1));

        result = sub_1A5B0F670(v94);
        if (v102 == v76)
        {
          v96 = *(v0 + 760);

          *&v108 = 0;
          *(&v108 + 1) = 0xE000000000000000;
          sub_1A5FD46AC();

          *&v108 = 0xD000000000000026;
          *(&v108 + 1) = 0x80000001A6058F70;
          v97 = *&v106[0];
          v98 = MEMORY[0x1AC554750](*&v106[0], v96);
          MEMORY[0x1AC554600](v98);

          sub_1A5BF63A0(2, v108, *(&v108 + 1));

          v13 = sub_1A5C9A528(v97);

          __swift_destroy_boxed_opaque_existential_1(v0 + 304);
          goto LABEL_6;
        }
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_6:

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1A5CA5580()
{

  sub_1A5B4F9C8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t (*sub_1A5CA564C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5CA5724(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 120))();
  return sub_1A5B17040;
}

uint64_t sub_1A5CA57C0(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9A9D4;

  return v6(a1);
}

uint64_t sub_1A5CA5958(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F19671E8);
}

uint64_t sub_1A5CA5A14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B0CE78;

  return sub_1A5CB68D0(a1, a2, &off_1EE701AC8);
}

uint64_t sub_1A5CA5AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  *(v2 + 16) = v6;
  sub_1A5B180A0(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F45C8);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v24, v27);
    v8 = v28;
    v7 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v9 = (*(*(v7 + 8) + 8))(v8);
    swift_beginAccess();
    *(v3 + 24) = v9;

    sub_1A5B180A0(v27, v21);
    v11 = v22;
    v10 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(*(*(v10 + 16) + 8) + 56))(v20, v11);
    LOWORD(v8) = v20[0];
    v13 = v22;
    v12 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(*(v12 + 16) + 16))(v20, v13);
    v18 = v20[1];
    v19 = v20[0];
    v14 = v22;
    v15 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v16 = sub_1A5D4F438(a2, v14, *(v15 + 24));
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    *(v3 + 32) = v8;
    *(v3 + 40) = xmmword_1A6014D70;
    *(v3 + 56) = 9;
    *(v3 + 64) = v19;
    *(v3 + 80) = v18;
    *(v3 + 96) = v16;
    __swift_destroy_boxed_opaque_existential_1(v27);
    return v3;
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    result = sub_1A5CA5D78(v24);
    __break(1u);
  }

  return result;
}

unint64_t sub_1A5CA5CE0()
{
  result = qword_1EB1F2DC0;
  if (!qword_1EB1F2DC0)
  {
    type metadata accessor for FaceObservation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2DC0);
  }

  return result;
}

uint64_t sub_1A5CA5D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F45D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5CA5DE0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v9 = *(v1 + 56);
  v4 = v9;
  v10 = *(v1 + 72);
  v5 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return sub_1A5CA5E50(v8, &v7);
}

uint64_t sub_1A5CA5E88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v6[0] = *(v1 + 24);
  v6[1] = v3;
  v6[2] = *(v1 + 56);
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  v7 = *(v1 + 72);
  *(v1 + 40) = v4;
  *(v1 + 56) = *(a1 + 32);
  *(v1 + 72) = *(a1 + 48);
  return sub_1A5CA5F04(v6);
}

uint64_t sub_1A5CA5F34(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5CA5F8C(a1);
  return v2;
}

uint64_t sub_1A5CA5F8C(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1A5B180A0(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v6 = v14;
    v7 = v15;
    v8 = v16;
    v9 = v17;
    DetectFaceRectanglesRequest.descriptor.getter(&v5);

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1A5B673FC(&v10);
    *(v1 + 24) = v5;
    v4 = v11;
    *(v1 + 32) = v10;
    *(v1 + 48) = v4;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CA60A0()
{
  sub_1A5B16774();
  swift_allocError();
  sub_1A5D2869C(0xD00000000000003ALL, 0x80000001A6059410, v1);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A5CA6148()
{

  return swift_deallocClassInstance();
}

void (*sub_1A5CA61D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return sub_1A5B16120;
}

uint64_t sub_1A5CA6284(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9A9D4;

  return v6(a1);
}

uint64_t sub_1A5CA63D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F19672F0);
}

uint64_t sub_1A5CA6488(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

uint64_t sub_1A5CA65CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A5CA6628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1A5CA6698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5CA6988(a1, v8, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(a3 + 24))(MEMORY[0x1E69E7CC0], a2, a3);
    return sub_1A5CA69F0(v8, type metadata accessor for VisionResult);
  }

  else
  {
    v10 = *(v8 + 7);

    return (*(a3 + 24))(v10, a2, a3);
  }
}

uint64_t sub_1A5CA67BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A5B180A0(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E0);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v11, v14);
    v5 = v15;
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = (*(a3 + 16))(a2, a3);
    if (v7)
    {
      if (v8)
      {
        v9 = sub_1A5B0E074(v7, v8);

        if ((v9 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_8:
        __swift_destroy_boxed_opaque_existential_1(v14);
        return 1;
      }
    }

    else if (!v8)
    {
      goto LABEL_8;
    }

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v14);
    return 0;
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_1A5CA6920(v11);
  return 0;
}

uint64_t sub_1A5CA6920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F45D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5CA6988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5CA69F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5CA6A50@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v10 = *(v1 + 64);
  v11 = v3;
  v12 = *(v1 + 96);
  v4 = v12;
  v5 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v6 = v9[0];
  v9[1] = v5;
  *(a1 + 32) = v10;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v6;
  *(a1 + 16) = v5;
  return sub_1A5CA6ABC(v9, &v8);
}

uint64_t sub_1A5CA6AF4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v8[2] = *(v1 + 64);
  v8[3] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v8[1] = v4;
  v5 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v5;
  *(v1 + 96) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v6;
  return sub_1A5CA6B68(v8);
}

uint64_t sub_1A5CA6B98(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A5CA6BF0(a1, a2);
  return v4;
}

uint64_t sub_1A5CA6BF0(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  *(v2 + 16) = v5;
  sub_1A5B180A0(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  v6 = type metadata accessor for CalculateFaceLivelinessScoreRequest();
  result = swift_dynamicCast();
  if (result)
  {
    v8 = v22;
    sub_1A5B180A0(a1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E0);
    swift_dynamicCast();
    v10 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = (*(v9 + 8))(v10, v9);
    swift_beginAccess();
    *(v2 + 24) = v11;

    __swift_destroy_boxed_opaque_existential_1(v17);
    CalculateFaceLivelinessScoreRequest.descriptor.getter(v20);
    v12 = v20[0];
    CalculateFaceLivelinessScoreRequest.regionOfInterest.getter(v20);
    v13 = sub_1A5CA7B40(&qword_1EB1F0A60, type metadata accessor for CalculateFaceLivelinessScoreRequest);
    v15 = v20[1];
    v16 = v20[0];
    *&v20[0] = v8;
    v14 = sub_1A5D4F438(a2, v6, v13);

    __swift_destroy_boxed_opaque_existential_1(a1);

    *(v2 + 32) = v12;
    *(v2 + 40) = xmmword_1A6014D90;
    *(v2 + 56) = 9;
    *(v2 + 64) = v16;
    *(v2 + 80) = v15;
    *(v2 + 96) = v14;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CA6DF4(uint64_t a1)
{
  v2[73] = v1;
  v2[72] = a1;
  v3 = type metadata accessor for FaceObservation(0);
  v2[74] = v3;
  v2[75] = *(v3 - 8);
  v2[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CA6EB8, 0, 0);
}

uint64_t sub_1A5CA6EB8()
{
  v57 = v0;
  v1 = (*(**(v0 + 584) + 128))();
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v51 = *(v1 + 16);
  if (v51)
  {
    v52 = v1;
    v2 = *(v0 + 584);
    v3 = sub_1A5BF63A0(2, 0xD000000000000036, 0x80000001A6058E70);
    v4 = *(*v2 + 152);
    (v4)(v3);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    sub_1A5B72D90(v5, v6, v7);
    v8 = sub_1A5CA6B68(v0 + 88);
    (v4)(v8);

    sub_1A5CA6B68(v0 + 16);
    sub_1A5CD408C(v5, v6, v7, v0 + 304);
    v50 = v4;
    v10 = *(v0 + 576);
    sub_1A5B4F9C8(v5, v6, v7);

    sub_1A5BF63A0(2, 0xD000000000000035, 0x80000001A6058EB0);
    v11 = MEMORY[0x1E69E7CC0];
    result = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
    v13 = *(v10 + 16);
    if (v13)
    {
      v14 = result;
      v48 = *(v0 + 600);
      v49 = (v0 + 232);

      v15 = sub_1A5C3B40C(4u);
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1A5FF3930;
      *(v18 + 32) = v13;
      *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E8);
      *(v0 + 344) = v18;
      sub_1A5B101C8((v0 + 344), (v0 + 376));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v55[0] = v14;
      sub_1A5B0E9AC((v0 + 376), v15, v17, isUniquelyReferenced_nonNull_native);

      v20 = sub_1A5C3B40C(3u);
      v22 = v21;
      v50();
      sub_1A5CA6B68(v0 + 160);
      v23 = *(v0 + 160);
      *(v0 + 432) = &type metadata for RequestDescriptor;
      *(v0 + 408) = v23;
      sub_1A5B101C8((v0 + 408), (v0 + 440));
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *&v55[0] = v14;
      sub_1A5B0E9AC((v0 + 440), v20, v22, v24);

      v53 = v14;
      v54 = v11;
      result = sub_1A5BF63A0(2, 0xD000000000000031, 0x80000001A6058EF0);
      v25 = 0;
      while (v25 < *(v52 + 16))
      {
        v26 = *(v0 + 608);
        v27 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        sub_1A5B0F60C(v52 + v27 + *(v48 + 72) * v25, v26);
        v28 = sub_1A5C3B40C(5u);
        v30 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2D00);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1A5FF36F0;
        sub_1A5B0F60C(v26, v31 + v27);
        *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2980);
        *(v0 + 472) = v31;
        sub_1A5B101C8((v0 + 472), (v0 + 504));
        v32 = swift_isUniquelyReferenced_nonNull_native();
        *&v55[0] = v53;
        sub_1A5B0E9AC((v0 + 504), v28, v30, v32);

        v33 = *&v55[0];
        v35 = *(v0 + 328);
        v34 = *(v0 + 336);
        __swift_project_boxed_opaque_existential_1((v0 + 304), v35);
        (v50)(v55);
        v36 = v55[3];
        *(v0 + 264) = v55[2];
        *(v0 + 280) = v36;
        *(v0 + 296) = v56;
        v37 = v55[1];
        *v49 = v55[0];
        *(v0 + 248) = v37;
        sub_1A5CA6B68(v49);
        v38 = *(v0 + 264);
        v39 = *(v0 + 272);
        v40 = *(v0 + 280);
        v41 = *(v0 + 288);
        v42 = *(v34 + 16);
        *(v0 + 560) = swift_getAssociatedTypeWitness();
        __swift_allocate_boxed_opaque_existential_1((v0 + 536));
        v53 = v33;
        v42(v33, v35, v34, v38, v39, v40, v41);
        v43 = *(v0 + 608);
        ++v25;
        swift_dynamicCast();
        sub_1A5C9A3FC(*(v0 + 568));
        *&v55[0] = 0;
        *(&v55[0] + 1) = 0xE000000000000000;
        sub_1A5FD46AC();

        *&v55[0] = 0xD000000000000038;
        *(&v55[0] + 1) = 0x80000001A6058F30;
        sub_1A5CA7B40(&qword_1EB1F2DC0, type metadata accessor for FaceObservation);
        v44 = sub_1A5FD4ACC();
        MEMORY[0x1AC554600](v44);

        sub_1A5BF63A0(2, *&v55[0], *(&v55[0] + 1));

        result = sub_1A5B0F670(v43);
        if (v51 == v25)
        {
          v45 = *(v0 + 592);

          *&v55[0] = 0;
          *(&v55[0] + 1) = 0xE000000000000000;
          sub_1A5FD46AC();

          *&v55[0] = 0xD000000000000026;
          *(&v55[0] + 1) = 0x80000001A6058F70;
          v46 = MEMORY[0x1AC554750](v54, v45);
          MEMORY[0x1AC554600](v46);

          sub_1A5BF63A0(2, *&v55[0], *(&v55[0] + 1));

          v9 = sub_1A5C9A528(v54);

          __swift_destroy_boxed_opaque_existential_1(v0 + 304);
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_11:

    v47 = *(v0 + 8);

    return v47(v9);
  }

  return result;
}

uint64_t (*sub_1A5CA76B0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5CA7788(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 120))();
  return sub_1A5B17040;
}

uint64_t sub_1A5CA783C(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9A9D4;

  return v6(a1);
}

uint64_t sub_1A5CA79D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1967438);
}

uint64_t sub_1A5CA7A90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B0CE78;

  return sub_1A5CB68D0(a1, a2, &off_1EE701CE0);
}

uint64_t sub_1A5CA7B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_1A5CA7BC8(uint64_t a1))(_BYTE *, void)
{
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))())
  {

    result = (*((*v3 & *v1) + 0x88))(v10);
    v5 = result;
    if (*v6)
    {
      if (a1)
      {

        sub_1A5C9EC08(v7);
        return v5(v10, 0);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return result(v10, 0);
    }
  }

  else
  {
    v9 = *((*v3 & *v1) + 0x80);

    return v9(v8);
  }

  return result;
}

id sub_1A5CA7DD0(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC6Vision35ImageAnalyzerMultiDetectorRecipient_results] = 0;
  sub_1A5B180A0(a1, &v1[OBJC_IVAR____TtC6Vision35ImageAnalyzerMultiDetectorRecipient_request]);
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(*(*(v4 + 8) + 8) + 8) + 56))(&v10, v5);
  v9 = v10;
  result = sub_1A5C752E0();
  if (result)
  {
    *&v2[OBJC_IVAR____TtC6Vision35ImageAnalyzerMultiDetectorRecipient_originatingRequestSpecifier] = result;
    v8.receiver = v2;
    v8.super_class = type metadata accessor for ImageAnalyzerMultiDetectorRecipient();
    v7 = objc_msgSendSuper2(&v8, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CA7F14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Vision35ImageAnalyzerMultiDetectorRecipient_results;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1A5CA7FFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageAnalyzerMultiDetectorRecipient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A5CA808C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1A5B180A0(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4600);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v18, v21);
    v6 = v22;
    v7 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_1A5BDA80C(v4, a2, v6, *(v7 + 8));
    if (!v3)
    {
      sub_1A5B180A0(v21, v20);
      v8 = objc_allocWithZone(type metadata accessor for ImageAnalyzerMultiDetectorRecipient());
      v9 = sub_1A5CA7DD0(v20);
      v10 = *(*v4 + 344);
      v11 = v9;
      v12 = v10(v20);
      v14 = v13;
      MEMORY[0x1AC554720]();
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A5FD3F7C();
      }

      sub_1A5FD3FBC();
      v12(v20, 0);
      v15 = v22;
      v16 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v16 + 16))(v4, v11, v15, v16);
    }

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    result = sub_1A5CA8294(v18);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CA8294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5CA82FC(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v2[29] = *(type metadata accessor for VisionResult(0) - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  v2[32] = v4;
  *v4 = v2;
  v4[1] = sub_1A5CA8498;

  return v6(a1);
}

uint64_t sub_1A5CA8498()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1A5CA8ACC;
  }

  else
  {

    v2 = sub_1A5CA85B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

size_t sub_1A5CA85B8()
{
  v51 = v0;
  v1 = (*(**(v0 + 224) + 328))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v50 = MEMORY[0x1E69E7CC0];
      result = sub_1A5C9E2C4(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v44 = *(v0 + 232);
      v45 = v3;
      v42 = *(v0 + 216);
      v43 = v2;
      v6 = v50;
      v46 = v2 & 0xC000000000000001;
      v41 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = *(v0 + 264);
      while (!__OFADD__(v5, 1))
      {
        v47 = v5 + 1;
        if (v46)
        {
          v8 = MEMORY[0x1AC554EE0](v5, v2);
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            goto LABEL_21;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = sub_1A5B180A0(v8 + OBJC_IVAR____TtC6Vision35ImageAnalyzerMultiDetectorRecipient_request, v0 + 16);
        v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x78))(v10);
        v13 = *(v0 + 40);
        v12 = *(v0 + 48);
        v14 = __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
        if (v11)
        {
          v15 = sub_1A5C9FE0C(v11);

          v16 = *(v42 + 40);
          v48[0] = *(v42 + 24);
          v48[1] = v16;
          v48[2] = *(v42 + 56);
          v49 = *(v42 + 72);
          (*(*(v12 + 8) + 32))(v15, v48, v13, *(v12 + 8));
          v17 = *(v0 + 248);
          v18 = v7;

          if (v7)
          {
            v19 = *(v0 + 40);
            v20 = *(v0 + 48);
            v21 = __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
            *(v0 + 120) = v19;
            *(v0 + 128) = *(*(*(v20 + 8) + 8) + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
            (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v21, v19);
            v23 = v0 + 96;
            v24 = v17;
            v25 = 0;
            v26 = v18;
          }

          else
          {
            swift_getAssociatedTypeWitness();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4508);
            v31 = sub_1A5FD480C();

            v32 = *(v0 + 40);
            v33 = *(v0 + 48);
            v34 = __swift_project_boxed_opaque_existential_1((v0 + 16), v32);
            *(v0 + 160) = v32;
            *(v0 + 168) = *(*(*(v33 + 8) + 8) + 8);
            v35 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
            (*(*(v32 - 8) + 16))(v35, v34, v32);
            v36 = sub_1A5C9FFD8(v31);

            v23 = v0 + 136;
            v24 = v17;
            v25 = v36;
            v26 = 0;
          }

          sub_1A5B57ECC(v23, v25, v26, v24);
          v7 = 0;
          v2 = v43;
        }

        else
        {
          v27 = *(v0 + 248);
          *(v0 + 80) = v13;
          *(v0 + 88) = *(*(*(v12 + 8) + 8) + 8);
          v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
          (*(*(v13 - 8) + 16))(v28, v14, v13);
          sub_1A5B16774();
          v29 = swift_allocError();
          *v30 = 0xD000000000000024;
          *(v30 + 8) = 0x80000001A6059260;
          *(v30 + 16) = 0;
          *(v30 + 20) = 8;
          sub_1A5B57ECC(v0 + 56, 0, v29, v27);
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 16);

        v50 = v6;
        v38 = *(v6 + 16);
        v37 = *(v6 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1A5C9E2C4(v37 > 1, v38 + 1, 1);
          v6 = v50;
        }

        v39 = *(v0 + 248);
        *(v6 + 16) = v38 + 1;
        sub_1A5B20B18(v39, v6 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38);
        ++v5;
        if (v47 == v45)
        {

          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v3 = sub_1A5FD484C();
      if (!v3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    v6 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v40 = *(v0 + 8);

    return v40(v6);
  }

  return result;
}

size_t sub_1A5CA8ACC()
{
  v1 = (*(**(v0 + 224) + 328))();
  if (v1 >> 62)
  {
    v23 = v1;
    v2 = sub_1A5FD484C();
    v1 = v23;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v24 = *(v0 + 264);

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = v1;
  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1A5C9E2C4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = *(v0 + 232);
  v7 = v3;
  v26 = v3 & 0xC000000000000001;
  v27 = *(v0 + 264);
  v8 = v30;
  v28 = v2;
  v29 = v3;
  do
  {
    if (v26)
    {
      v9 = MEMORY[0x1AC554EE0](v5, v7);
    }

    else
    {
      v9 = *(v7 + 8 * v5 + 32);
    }

    v10 = v9;
    v11 = *(v0 + 264);
    v12 = *(v0 + 240);
    v13 = &v9[OBJC_IVAR____TtC6Vision35ImageAnalyzerMultiDetectorRecipient_request];
    v15 = *(v13 + 3);
    v14 = *(v13 + 4);
    v16 = __swift_project_boxed_opaque_existential_1(v13, v15);
    *(v0 + 200) = v15;
    *(v0 + 208) = *(*(*(v14 + 8) + 8) + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    v18 = v11;
    sub_1A5B57ECC(v0 + 176, 0, v27, v12);

    v20 = *(v30 + 16);
    v19 = *(v30 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1A5C9E2C4(v19 > 1, v20 + 1, 1);
    }

    v21 = *(v0 + 240);
    ++v5;
    *(v30 + 16) = v20 + 1;
    sub_1A5B20B18(v21, v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20);
    v7 = v29;
  }

  while (v28 != v5);
  v22 = *(v0 + 264);

LABEL_14:

  v25 = *(v0 + 8);

  return v25(v8);
}

uint64_t sub_1A5CA8D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A5CA8E10, 0, 0);
}

uint64_t sub_1A5CA8E10()
{
  v1 = (*(*(*(v0 + 88) + 8) + 16))(*(v0 + 80));
  if (!*(v1 + 16))
  {

LABEL_13:
    __break(1u);
  }

  sub_1A5B180A0(v1 + 32, v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4610);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v6 = (*(**(v0 + 72) + 120))();
  ObjectType = swift_getObjectType();
  *(v0 + 16) = v3;
  v37 = *(v2 + 8);
  v8 = *(v37 + 8);
  v9 = *(v8 + 80);
  v10 = v6;
  v11 = v9(ObjectType, v8);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = objc_allocWithZone(VNImageRegistrationSignature);
  *(v0 + 56) = 0;
  v19 = [v18 initWithImageBuffer:v10 regionOfInterest:v0 + 56 error:{v11, v13, v15, v17}];
  v20 = *(v0 + 56);
  if (v19)
  {
    v21 = v19;
    v35 = ObjectType;
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);
    v24 = v10;
    v25 = *(v0 + 80);
    v34 = *(v0 + 72);
    v26 = v20;

    v27 = v24;
    v36 = v24;
    v28 = swift_task_alloc();
    v28[2] = v25;
    v28[3] = v22;
    v28[4] = v27;
    v28[5] = v21;
    v28[6] = v23;
    v28[7] = v3;
    v28[8] = v2;
    v28[9] = v34;
    v29 = swift_task_alloc();
    v29[2] = v25;
    v29[3] = v35;
    v29[4] = v22;
    v29[5] = v2;
    v29[6] = sub_1A5CA91A0;
    v29[7] = v28;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1370);
    sub_1A5B17D94(sub_1A5CA95A8, v29, v35, v30, v37, v0 + 16);
    swift_unknownObjectRelease();

    v31 = *(v0 + 16);
    v32 = *(v0 + 8);

    return v32(v31);
  }

  else
  {
    v33 = v20;
    sub_1A5FD348C();

    swift_willThrow();
    swift_unknownObjectRelease();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1A5CA91A0(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v23 = v1[4];
  v24 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  swift_getAssociatedTypeWitness();
  type metadata accessor for ImageRegistrationState();
  v25 = a1;
  v9 = swift_dynamicCastClass();
  if (v9 && (v10 = (*(*v9 + 112))()) != 0)
  {
    v12 = v10;
    v13 = v11;
    v14 = *(v8 + 40);
    v31[0] = *(v8 + 24);
    v31[1] = v14;
    v31[2] = *(v8 + 56);
    v32 = *(v8 + 72);
    v15 = v35;
    v16 = (*(v3 + 24))(v24, v8, v10, v11, v31, v4, v3);
    if (!v15)
    {
      v6 = v16;
    }

    sub_1A5CA9454(v25, v23, v24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4520);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A5FF36F0;
    ObjectType = swift_getObjectType();
    v28 = v5;
    (*(*(*(*(v7 + 8) + 8) + 8) + 56))(&v27, ObjectType);
    v26 = v27;
    v33[0] = *(v8 + 24);
    v18 = *(v8 + 56);
    v33[1] = *(v8 + 40);
    v33[2] = v18;
    v34 = *(v8 + 72);
    (*(v3 + 32))(v29, &v26, v33, v4, v3);
    v19 = v30;
    v20 = __swift_project_boxed_opaque_existential_1(v29, v30);
    *(v6 + 56) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v20, v19);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1A5CA9454(v25, v23, v24);
  }

  return v6;
}

uint64_t sub_1A5CA9454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ImageRegistrationState();
  result = swift_dynamicCastClass();
  if (result)
  {
    return (*(*result + 184))(a2, a3);
  }

  return result;
}

uint64_t sub_1A5CA94F8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = a2(a1, AssociatedConformanceWitness);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1A5CA9604()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1A5CA9654(v1, *(v0 + 24));
  return v1;
}

id sub_1A5CA9654(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_1A5CA9694(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1A5CA96E8(v5, v6);
}

void sub_1A5CA96E8(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1A5CA9764(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4 & 1;
  return result;
}

uint64_t sub_1A5CA97CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD4CAC();
  v4 = sub_1A5FD456C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A5CA98A8(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD4CAC();
  v4 = sub_1A5FD456C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1A5CA99F8(void *a1, void *a2)
{
  v8 = *(*v2 + 120);
  v5 = a1;
  v6 = a2;

  return v8(a1, a2);
}

void **sub_1A5CA9A70()
{
  sub_1A5CA96E8(v0[2], v0[3]);
  v1 = *(*v0 + 13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD4CAC();
  v2 = sub_1A5FD456C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A5CA9B34()
{
  sub_1A5CA9A70();

  return swift_deallocClassInstance();
}

uint64_t sub_1A5CA9B8C()
{
  v0 = swift_allocObject();
  sub_1A5CA9BC4();
  return v0;
}

uint64_t *sub_1A5CA9BC4()
{
  v1 = *v0;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  v0[6] = 0;
  *(v0 + 56) = 1;
  v2 = *(v1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  v3 = sub_1A5FD4CAC();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  return v0;
}

uint64_t (*sub_1A5CA9CD8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 176))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5CA9DCC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 152))();
  return sub_1A5B17040;
}

uint64_t sub_1A5CA9E64(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5CA9EBC(a1);
  return v2;
}

uint64_t sub_1A5CA9EBC(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1A5B180A0(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  v4 = type metadata accessor for TrackHomographicImageRegistrationRequest();
  result = swift_dynamicCast();
  if (result)
  {
    v9[0] = v9[6];
    v6 = sub_1A5CAB32C(&qword_1EB1F4618, type metadata accessor for TrackHomographicImageRegistrationRequest);

    v8 = sub_1A5BDA358(v7, v4, v6);

    __swift_destroy_boxed_opaque_existential_1(a1);

    *(v2 + 24) = v8;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CA9FE4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v12 = (*(*v5 + 96))();
  if (!*(v12 + 16))
  {

    __break(1u);
LABEL_17:
    __break(1u);
  }

  v57 = a4;
  v59 = a1;
  sub_1A5B180A0(v12 + 32, &v66);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  v13 = type metadata accessor for TrackHomographicImageRegistrationRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  *&v66 = *&v65[0];
  v14 = *(a2 + 80);
  v15 = sub_1A5CAB32C(&qword_1EB1F4618, type metadata accessor for TrackHomographicImageRegistrationRequest);
  v16 = sub_1A5BDA554(v14, v13, v15);
  if (!v6)
  {
    v55 = a5;
    v56 = v16;

    v17 = sub_1A5FD3D5C();
    v19 = v18;
    v20 = sub_1A5B16F58(0, &qword_1EB1EEB60);
    *(&v67 + 1) = v20;
    *&v66 = a3;
    v21 = *(*v5 + 136);
    v22 = a3;
    v23 = v21(v65);
    sub_1A5B0DE30(&v66, v17, v19);
    v23(v65, 0);
    v24 = sub_1A5FD3D5C();
    v26 = v25;
    v27 = sub_1A5B16F58(0, &qword_1EB1F4620);
    *(&v67 + 1) = v27;
    *&v66 = v57;
    v28 = v57;
    v58 = v21;
    v29 = v21(v65);
    sub_1A5B0DE30(&v66, v24, v26);
    v29(v65, 0);
    v30 = sub_1A5FD3D5C();
    v32 = v31;
    v33 = *(a2 + 88);
    if (!v33)
    {
      v20 = 0;
      *(&v66 + 1) = 0;
      *&v67 = 0;
    }

    *&v66 = v33;
    *(&v67 + 1) = v20;
    v34 = v33;
    v35 = v58(v65);
    sub_1A5B0DE30(&v66, v30, v32);
    v35(v65, 0);
    v36 = sub_1A5FD3D5C();
    v38 = v37;
    *(&v67 + 1) = v27;
    *&v66 = v59;
    v39 = v59;
    v40 = v58(v65);
    sub_1A5B0DE30(&v66, v36, v38);
    v40(v65, 0);
    a3 = qos_class_self();
    v41 = (*(*v5 + 120))();
    sub_1A5B37FAC(v41);

    v42 = objc_allocWithZone(MEMORY[0x1E695DF20]);
    v43 = sub_1A5FD3BDC();

    v44 = [v42 initWithDictionary_];

    [v44 mutableCopy];
    sub_1A5FD45DC();
    swift_unknownObjectRelease();
    sub_1A5B16F58(0, &qword_1EB1EE5B8);
    swift_dynamicCast();
    v45 = v64;
    TrackHomographicImageRegistrationRequest.regionOfInterest.getter(&v61);
    v60 = 0;
    v46 = [v56 processUsingQualityOfServiceClass:a3 options:v45 regionOfInterest:0 warningRecorder:&v60 error:0 progressHandler:{*&v61, *(&v61 + 1), v62, v63}];

    v47 = v60;
    if (v46)
    {
      a3 = sub_1A5FD3F4C();
      v48 = v47;

      if (*(a3 + 16))
      {
        sub_1A5B101D8(a3 + 32, &v66);

        sub_1A5B16F58(0, &qword_1EB1F4628);
        if (swift_dynamicCast())
        {
          v49 = *&v65[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4520);
          a3 = swift_allocObject();
          *(a3 + 16) = xmmword_1A5FF36F0;
          v50 = v49;
          TrackHomographicImageRegistrationRequest.descriptor.getter(&v61);
          LOWORD(v64) = v61;
          TrackHomographicImageRegistrationRequest.regionOfInterest.getter(&v66);
          v65[0] = v66;
          v65[1] = v67;
          *(a3 + 56) = type metadata accessor for ImageHomographicAlignmentObservation();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 32));
          sub_1A5C5E398(v50, &v64, v55, boxed_opaque_existential_1);

          return a3;
        }
      }

      else
      {
      }

      sub_1A5B16774();
      swift_allocError();
      *v53 = 0xD00000000000002ALL;
      *(v53 + 8) = 0x80000001A6059570;
      *(v53 + 16) = 0;
      *(v53 + 20) = 8;
    }

    else
    {
      v52 = v60;
      sub_1A5FD348C();
    }

    swift_willThrow();

    return a3;
  }

  return a3;
}

double sub_1A5CAA67C@<D0>(_WORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1A5FD367C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(MEMORY[0x1E69E9B10] + 16);
  v14[0] = *MEMORY[0x1E69E9B10];
  v14[1] = v9;
  v14[2] = *(MEMORY[0x1E69E9B10] + 32);
  LOWORD(a1) = *a1;
  sub_1A5FD366C();
  v13 = a1;
  a3[3] = type metadata accessor for ImageHomographicAlignmentObservation();
  a3[4] = sub_1A5CAB32C(&qword_1EB1F3130, type metadata accessor for ImageHomographicAlignmentObservation);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  *&result = sub_1A5C5D674(v14, v8, a2, &v13, boxed_opaque_existential_1, 1.0).n128_u64[0];
  return result;
}

uint64_t sub_1A5CAA788(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A5CAA818, 0, 0);
}

uint64_t sub_1A5CAA818()
{
  v1 = (*(**(v0 + 72) + 96))();
  if (!*(v1 + 16))
  {

LABEL_10:
    __break(1u);
  }

  sub_1A5B180A0(v1 + 32, v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  v2 = type metadata accessor for TrackHomographicImageRegistrationRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  v4 = sub_1A5CAB32C(&qword_1EB1F4618, type metadata accessor for TrackHomographicImageRegistrationRequest);
  v5 = sub_1A5BDA554(v3, v2, v4);
  v6 = *(*(v0 + 64) + 16);
  sub_1A5B37FAC(v7);

  v8 = sub_1A5FD3BDC();

  *(v0 + 16) = 0;
  v9 = [v5 warmUpSession:v6 withOptions:v8 error:v0 + 16];

  v10 = *(v0 + 16);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v13 = v10;
    sub_1A5FD348C();

    swift_willThrow();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A5CAAA84()
{

  return swift_deallocClassInstance();
}

uint64_t (*sub_1A5CAAB68(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return sub_1A5B17040;
}

uint64_t sub_1A5CAABF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C9A9D4;

  return sub_1A5CA8D7C(a1, a2, &off_1EE702018);
}

uint64_t sub_1A5CAACE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1967540);
}

uint64_t sub_1A5CAAD94(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

uint64_t sub_1A5CAAEB4(uint64_t a1)
{
  v2 = swift_allocObject();

  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  return v2;
}

id sub_1A5CAAF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = sub_1A5FD367C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ImageTranslationAlignmentObservation();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*v5 + 88))(v13);
  if (!*(v16 + 16))
  {

    __break(1u);
LABEL_8:
    __break(1u);
  }

  sub_1A5B180A0(v16 + 32, &v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  type metadata accessor for TrackTranslationalImageRegistrationRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v17 = objc_opt_self();
  v25 = 0;
  LODWORD(v18) = 0.25;
  if ([v17 computeTransform:&v26 forRegisteringImageSignature:a4 withSignature:a1 minimumOverlap:&v25 error:v18])
  {
    v23[0] = v26;
    v23[1] = v27;
    v23[2] = v28;
    v19 = v25;
    sub_1A5FD366C();
    TrackTranslationalImageRegistrationRequest.descriptor.getter(&v25);
    v24 = v25;
    sub_1A5B8F298(v23, v11, a5, &v24, v15, 1.0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4520);
    v20 = swift_allocObject();
    *(v20 + 1) = xmmword_1A5FF36F0;
    *(v20 + 7) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20 + 4);
    sub_1A5CAB1C4(v15, boxed_opaque_existential_1);
  }

  else
  {
    v20 = v25;
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v20;
}

uint64_t sub_1A5CAB1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageTranslationAlignmentObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A5CAB228@<D0>(_WORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1A5FD367C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0x3FF0000000000000uLL;
  v14 = 0;
  v15 = 0x3FF0000000000000;
  v16 = 0;
  v17 = 0;
  LOWORD(a1) = *a1;
  sub_1A5FD366C();
  v12 = a1;
  a3[3] = type metadata accessor for ImageTranslationAlignmentObservation();
  a3[4] = sub_1A5CAB32C(&qword_1EB1F0590, type metadata accessor for ImageTranslationAlignmentObservation);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  *&result = sub_1A5B8F298(&v13, v8, a2, &v12, boxed_opaque_existential_1, 1.0).n128_u64[0];
  return result;
}

uint64_t sub_1A5CAB32C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_1A5CAB418(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 104))();
  return sub_1A5B17040;
}

uint64_t sub_1A5CAB4A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5CABA60;

  return sub_1A5CA8D7C(a1, a2, &off_1EE702040);
}

uint64_t sub_1A5CAB57C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2E10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A5FF36F0;
  sub_1A5B50670(0, 1, 0, 1, 2, 0x7FFFFFFFFFFFFFFFLL, 0, 2, v0 + 32, 0x7FFFFFFFFFFFFFFFLL, 0, 875704422, 0, 1);
  return v0;
}

uint64_t sub_1A5CAB630(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C99530;

  return sub_1A5CA07F4(a1, a2, &off_1F19675C0);
}

uint64_t sub_1A5CAB6E0(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B10404;

  return v6(a1);
}

uint64_t sub_1A5CAB804()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD4CAC();
  result = sub_1A5FD456C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A5CAB8F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A5CAB93C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5CAB984(uint64_t result, int a2, int a3)
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

__n128 sub_1A5CABA64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  DetectScreenGazeRequest.descriptor.getter(v16);
  v6 = v16[0];
  DetectScreenGazeRequest.regionOfInterest.getter(v16);
  v13 = v16[1];
  v14 = v16[0];
  v7 = OBJC_IVAR____TtC6Vision23DetectScreenGazeRequest_state;
  swift_beginAccess();
  v8 = *(a1 + v7);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  DetectScreenGazeRequest.screenSize.getter(&v15);
  v10 = v15;
  v11 = sub_1A5B53838(a2);

  *a3 = v6;
  *(a3 + 8) = xmmword_1A6014D40;
  *(a3 + 24) = 9;
  result = v14;
  *(a3 + 32) = v14;
  *(a3 + 48) = v13;
  *(a3 + 64) = v9;
  *(a3 + 72) = v10;
  *(a3 + 80) = v11;
  return result;
}

uint64_t sub_1A5CABB74@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 80);
  v11 = *(v1 + 64);
  v3 = v11;
  v12 = v4;
  v13 = *(v1 + 96);
  v5 = v13;
  v14 = *(v1 + 112);
  v7 = *(v1 + 48);
  v10[0] = *(v1 + 32);
  v6 = v10[0];
  v10[1] = v7;
  *(a1 + 80) = v14;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v6;
  *(a1 + 16) = v7;
  return sub_1A5CABBEC(v10, &v9);
}

uint64_t sub_1A5CABC24(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v8[2] = *(v1 + 64);
  v8[3] = v3;
  v8[4] = *(v1 + 96);
  v9 = *(v1 + 112);
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v8[1] = v4;
  v5 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v5;
  *(v1 + 96) = *(a1 + 64);
  *(v1 + 112) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v6;
  return sub_1A5CABCA8(v8);
}

uint64_t sub_1A5CABCD8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A5CABD30(a1, a2);
  return v4;
}

uint64_t sub_1A5CABD30(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  v8 = (v2 + 24);
  *(v2 + 16) = v7;
  sub_1A5B180A0(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  type metadata accessor for DetectScreenGazeRequest();
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v18[0];
    sub_1A5B180A0(a1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E0);
    swift_dynamicCast();
    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = (*(v12 + 8))(v11, v12);
    swift_beginAccess();
    *v8 = v13;

    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_1A5CABA64(v10, a2, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v3)
    {

      type metadata accessor for ScreenGazeDetectorPerformingOperation();
      swift_deallocPartialClassInstance();
    }

    else
    {
      v14 = v16[3];
      *(v4 + 64) = v16[2];
      *(v4 + 80) = v14;
      *(v4 + 96) = v16[4];
      *(v4 + 112) = v17;
      v15 = v16[1];
      *(v4 + 32) = v16[0];
      *(v4 + 48) = v15;
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CABF20(uint64_t a1)
{
  v2[136] = v1;
  v2[135] = a1;
  v2[137] = type metadata accessor for SingleFaceTemporalGazeState(0);
  v2[138] = swift_task_alloc();
  v2[139] = *(type metadata accessor for FaceObservation(0) - 8);
  v2[140] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CAC010, 0, 0);
}

uint64_t sub_1A5CAC010()
{
  v81 = v0;
  v1 = (*(**(v0 + 1088) + 128))();
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v72 = *(v1 + 16);
  if (v72)
  {
    v73 = v1;
    v2 = *(v0 + 1088);
    v3 = sub_1A5BF63A0(2, 0xD000000000000036, 0x80000001A6058E70);
    v4 = *(*v2 + 152);
    (v4)(v3);
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    sub_1A5B72D90(v5, v6, v7);
    v8 = sub_1A5CABCA8(v0 + 104);
    (v4)(v8);

    sub_1A5CABCA8(v0 + 16);
    sub_1A5CD408C(v5, v6, v7, v0 + 808);
    v11 = *(v0 + 1080);
    sub_1A5B4F9C8(v5, v6, v7);

    sub_1A5BF63A0(2, 0xD000000000000035, 0x80000001A6058EB0);
    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
    v14 = *(v11 + 16);
    if (!v14)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    v15 = result;
    v70 = (v0 + 544);
    v71 = *(v0 + 1112);

    v16 = sub_1A5C3B40C(4u);
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1A5FF3930;
    *(v19 + 32) = v14;
    *(v0 + 872) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E8);
    *(v0 + 848) = v19;
    sub_1A5B101C8((v0 + 848), (v0 + 880));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v75 = v15;
    sub_1A5B0E9AC((v0 + 880), v16, v18, isUniquelyReferenced_nonNull_native);

    v21 = sub_1A5C3B40C(3u);
    v23 = v22;
    v4();
    sub_1A5CABCA8(v0 + 280);
    v24 = *(v0 + 280);
    *(v0 + 936) = &type metadata for RequestDescriptor;
    *(v0 + 912) = v24;
    sub_1A5B101C8((v0 + 912), (v0 + 944));
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v75 = v15;
    sub_1A5B0E9AC((v0 + 944), v21, v23, v25);

    v26 = v15;
    v27 = sub_1A5B4AF3C();
    v28 = sub_1A5B4B05C();
    v74 = v12;
    v4();
    v29 = *(v0 + 256);

    v30 = sub_1A5CABCA8(v0 + 192);
    (*(*v29 + 256))(v30);

    v31 = 0;
    while (1)
    {
      if (v31 >= *(v73 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v32 = *(v0 + 1120);
      v33 = sub_1A5CACFC4(v73 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v31, v32, type metadata accessor for FaceObservation);
      (v4)(&v75, v33);
      v34 = v79;
      *(v0 + 416) = v78;
      *(v0 + 432) = v34;
      *(v0 + 448) = v80;
      v35 = v77;
      *(v0 + 384) = v76;
      *(v0 + 400) = v35;
      *(v0 + 368) = v75;
      v36 = *(v0 + 432);

      sub_1A5CABCA8(v0 + 368);
      (*(*v36 + 272))(v32, v27, v28);
      v37 = v4;
      v38 = *(v0 + 1104);
      v39 = *(v0 + 1096);
      sub_1A5CAD02C(*(v0 + 1120), type metadata accessor for FaceObservation);

      v40 = sub_1A5C45740(1);
      v42 = v41;
      *(v0 + 1000) = v39;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 976));
      sub_1A5CACFC4(v38, boxed_opaque_existential_1, type metadata accessor for SingleFaceTemporalGazeState);
      sub_1A5B101C8((v0 + 976), (v0 + 1008));
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v46 = sub_1A5B0E2A4(v40, v42);
      v47 = v26[2];
      v48 = (v45 & 1) == 0;
      result = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_29;
      }

      v49 = v45;
      if (v26[3] >= result)
      {
        if (v44)
        {
          if (v45)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_1A5B0EB68();
          if (v49)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_1A5B0E544(result, v44);
        v50 = sub_1A5B0E2A4(v40, v42);
        if ((v49 & 1) != (v51 & 1))
        {

          return sub_1A5FD4B8C();
        }

        v46 = v50;
        if (v49)
        {
LABEL_19:

          v52 = (v26[7] + 32 * v46);
          __swift_destroy_boxed_opaque_existential_1(v52);
          sub_1A5B101C8((v0 + 1008), v52);
          goto LABEL_23;
        }
      }

      v26[(v46 >> 6) + 8] |= 1 << v46;
      v53 = (v26[6] + 16 * v46);
      *v53 = v40;
      v53[1] = v42;
      result = sub_1A5B101C8((v0 + 1008), (v26[7] + 32 * v46));
      v54 = v26[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_30;
      }

      v26[2] = v56;
LABEL_23:
      v57 = *(v0 + 832);
      v58 = *(v0 + 840);
      __swift_project_boxed_opaque_existential_1((v0 + 808), v57);
      (v37)(&v75);
      v59 = v78;
      *(v0 + 576) = v77;
      *(v0 + 592) = v59;
      *(v0 + 608) = v79;
      *(v0 + 624) = v80;
      v60 = v76;
      *v70 = v75;
      *(v0 + 560) = v60;
      sub_1A5CABCA8(v70);
      v61 = *(v0 + 576);
      v62 = *(v0 + 584);
      v63 = *(v0 + 592);
      v64 = *(v0 + 600);
      v65 = *(v58 + 16);
      *(v0 + 1064) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1((v0 + 1040));
      v65(v26, v57, v58, v61, v62, v63, v64);
      v66 = *(v0 + 1104);
      ++v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2980);
      swift_dynamicCast();
      sub_1A5C9A3FC(*(v0 + 1072));
      result = sub_1A5CAD02C(v66, type metadata accessor for SingleFaceTemporalGazeState);
      v4 = v37;
      if (v72 == v31)
      {

        v9 = sub_1A5C9A528(v74);

        (v37)(v67);
        v68 = *(v0 + 784);

        v69 = sub_1A5CABCA8(v0 + 720);
        (*(*v68 + 264))(v69);

        __swift_destroy_boxed_opaque_existential_1(v0 + 808);
        goto LABEL_6;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_6:

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1A5CACA54()
{

  sub_1A5B4F9C8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t (*sub_1A5CACB34(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5CACC0C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 120))();
  return sub_1A5B17040;
}

uint64_t sub_1A5CACCC0(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9A9D4;

  return v6(a1);
}

uint64_t sub_1A5CACE58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1967790);
}

uint64_t sub_1A5CACF14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B0CE78;

  return sub_1A5CB68D0(a1, a2, &off_1EE702228);
}

uint64_t sub_1A5CACFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5CAD02C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5CAD098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5CAD0E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A5CAD144@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v3;
  v8 = *(v1 + 48);
  v4 = v8;
  *a1 = v7[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return sub_1A5CAD1A4(v7, &v6);
}

uint64_t sub_1A5CAD1DC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v7 = *(v1 + 48);
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(a1 + 32);
  return sub_1A5CAD240(v6);
}

uint64_t sub_1A5CAD2A8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t sub_1A5CAD378(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

__n128 sub_1A5CAD410@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1A5CAD458(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 88) = *(a1 + 16);
  *(v1 + 72) = result;
  return result;
}

uint64_t sub_1A5CAD4F0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5CAD548(a1);
  return v2;
}

uint64_t sub_1A5CAD548(uint64_t a1)
{
  v2 = v1;
  *(v1 + 64) = MEMORY[0x1E69E7CC0];
  v4 = sub_1A5CB0088(&unk_1F19678A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4630);
  swift_arrayDestroy();
  *(v1 + 104) = v4;
  sub_1A5B180A0(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  result = swift_dynamicCast();
  if (result)
  {
    *&v24[32] = v30;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    *v24 = v28;
    *&v24[16] = v29;
    v6 = sub_1A5CB0180();

    v8 = sub_1A5BDA35C(v7, &type metadata for DetectTextRectanglesRequest, v6);

    *(v2 + 56) = v8;
    v21 = v25;
    v22 = v26;
    v23 = v27;
    v18 = *v24;
    v19 = *&v24[16];
    v20 = *&v24[32];
    sub_1A5CB01D4(v24, v17);
    DetectTextRectanglesRequest.descriptor.getter(v17);

    __swift_destroy_boxed_opaque_existential_1(a1);
    v9 = v17[0];
    v10 = BYTE10(v25);
    v11 = v26;

    sub_1A5B66D6C(v24);
    v12 = v25;
    v13 = BYTE8(v25);
    v14 = BYTE9(v25);
    v15 = v24[0];
    v16 = v24[40];
    *(v2 + 16) = v9;
    *(v2 + 18) = 0;
    *(v2 + 19) = v10;
    *(v2 + 24) = v11;
    *(v2 + 40) = v12;
    *(v2 + 48) = v13;
    *(v2 + 49) = v14;
    *(v2 + 50) = v15;
    *(v2 + 51) = v16;
    sub_1A5B66D6C(v24);
    *(v2 + 72) = *&v24[8];
    *(v2 + 88) = *&v24[24];
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CAD744()
{
  v1 = *(*v0 + 120);
  (v1)(v16);
  sub_1A5CAD240(v16);
  LOBYTE(v15[0]) = BYTE3(v16[0]);
  LOBYTE(v12) = 0;
  if (static TextRecognitionCharacterSet.== infix(_:_:)(v15, &v12))
  {
    return 0;
  }

  v2 = v0[13];
  (v1)(v15);
  sub_1A5CAD240(v15);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_1A5CAFC78(BYTE3(v15[0]));
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(v2 + 56) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];

  v1(&v12, v8);
  v9 = v14;
  if (!v14)
  {
    return v6;
  }

  v10 = v13;
  v12 = v6;
  v13 = v7;
  MEMORY[0x1AC554600](59, 0xE100000000000000);
  MEMORY[0x1AC554600](v10, v9);

  return v12;
}

id sub_1A5CAD884(void *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 width];
  v3 = [a1 height];
  v15[0] = 0;
  v4 = [a1 bufferWithWidth:v2 height:v3 format:875704422 options:0 error:v15];
  v5 = v15[0];
  if (v4)
  {
    v6 = v4;
LABEL_5:
    v10 = v5;
    return v6;
  }

  v7 = v15[0];
  v8 = sub_1A5FD348C();

  swift_willThrow();
  v15[0] = 0;
  v9 = [a1 bufferWithWidth:v2 height:v3 format:1278226488 options:0 error:v15];
  v5 = v15[0];
  if (v9)
  {
    v6 = v9;
    goto LABEL_5;
  }

  v12 = v15[0];
  v13 = sub_1A5FD348C();

  swift_willThrow();
  sub_1A5B16774();
  swift_allocError();
  *v14 = 0xD00000000000001BLL;
  *(v14 + 8) = 0x80000001A6059680;
  *(v14 + 16) = 0;
  *(v14 + 20) = 4;
  swift_willThrow();
  return 0;
}

id sub_1A5CADA38(__CVBuffer *a1)
{
  v2 = v1;
  v37 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v6 = [objc_allocWithZone(MEMORY[0x1E699FD60]) initWithDimensions_];
  if (!v6)
  {
    *&v35[0] = 0;
    *(&v35[0] + 1) = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD00000000000003DLL, 0x80000001A60596A0);
    *v33 = Width;
    *(v33 + 1) = Height;
    type metadata accessor for CGSize(0);
    sub_1A5FD481C();
    MEMORY[0x1AC554600](46, 0xE100000000000000);
    v20 = 0xE000000000000000;
    sub_1A5B16774();
    swift_allocError();
    *v22 = v35[0];
    *(v22 + 16) = 0;
    *(v22 + 20) = 1;
    swift_willThrow();
    return v20;
  }

  v7 = v6;
  v8 = *(*v1 + 120);
  (v8)(v31);
  sub_1A5CAD240(v31);
  if (v32 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (v32 > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  v8(&v28, [v7 setMinimumCharacterHeight_]);
  v9 = v30;
  v33[0] = v28;
  v33[1] = v29;
  v34 = v30;
  sub_1A5CAD240(v33);
  v8(&v28, [v7 setDetectDiacritics_]);
  v10 = BYTE1(v30);
  v35[0] = v28;
  v35[1] = v29;
  v36 = v30;
  sub_1A5CAD240(v35);
  v11 = (*(*v2 + 232))([v7 setMinimizeFalseDetections_]);
  if (v12)
  {
    v13 = sub_1A5FD3D2C();

    [v7 setRecognitionLanguage_];
  }

  v8(&v25, v11);
  v14 = BYTE2(v27);
  v28 = v25;
  v29 = v26;
  v30 = v27;
  sub_1A5CAD240(&v28);
  (*(*v2 + 192))(&v24, [v7 setReturnSubFeatures_]);
  NormalizedRect.verticallyFlipped()();
  v15 = v25;
  v16 = v26;
  type metadata accessor for TextDetectorPerformingOperation();
  sub_1A5CA0784(Width, Height, *&v15, *(&v15 + 1), *&v16, *(&v16 + 1));
  *&v25 = 0;
  v17 = [v7 detectFeaturesInBuffer:a1 withRegionOfInterest:&v25 error:?];
  v18 = v25;
  if (v17)
  {
    v19 = v17;
    v20 = sub_1A5FD3F4C();
    v21 = v18;
  }

  else
  {
    v20 = v25;
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v20;
}

uint64_t sub_1A5CADE84()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](qword_1A6022708[v1]);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CADF0C()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](qword_1A6022708[v1]);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CADF58@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A5CB0254(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A5CADF9C(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = sub_1A5FD367C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for RectangleObservation();
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v30 - v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = a1 + 32;
  v16 = (v12 + 56);
  v17 = MEMORY[0x1E69E7CC0];
  v33 = v12;
  v18 = (v12 + 48);
  while (1)
  {
    sub_1A5B101D8(v15, v45);
    sub_1A5B101D8(v45, v43);
    sub_1A5B16F58(0, &qword_1EB1F4640);
    if (!swift_dynamicCast())
    {
      (*v16)(v8, 1, 1, v9);
      goto LABEL_13;
    }

    v19 = *&v37[0];
    if ([*&v37[0] type] != 1 || (result = (*(*v2 + 264))(v19)) == 0)
    {
      (*v16)(v8, 1, 1, v9);

      goto LABEL_13;
    }

    v21 = *(result + 16);
    if (!v21)
    {
      break;
    }

    v42 = *(result + 32);
    if (v21 < 4)
    {
      goto LABEL_22;
    }

    v22 = *(result + 80);
    v40 = *(result + 64);
    v41 = v22;
    v23 = *(result + 48);
    v24 = *(result + 56);

    *&v39 = v23;
    *(&v39 + 1) = v24;
    v25 = v31;
    v26 = sub_1A5FD366C();
    (*(*v2 + 120))(v37, v26);
    v43[0] = v37[0];
    v43[1] = v37[1];
    v44 = v38;
    sub_1A5CAD240(v43);
    v36 = v43[0];
    sub_1A5B26E98(&v42, &v41, &v40, &v39, v25, v32, &v36, v8, 1.0);

    (*v16)(v8, 0, 1, v9);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v45);
    if ((*v18)(v8, 1, v9) == 1)
    {
      sub_1A5B10168(v8, &qword_1EB1EF7C8);
    }

    else
    {
      v27 = v34;
      sub_1A5CB0274(v8, v34, type metadata accessor for RectangleObservation);
      sub_1A5CB0274(v27, v35, type metadata accessor for RectangleObservation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1A5CAFEAC(0, v17[2] + 1, 1, v17, &qword_1EB1EFEB0, &unk_1A6009450, type metadata accessor for RectangleObservation);
      }

      v29 = v17[2];
      v28 = v17[3];
      if (v29 >= v28 >> 1)
      {
        v17 = sub_1A5CAFEAC(v28 > 1, v29 + 1, 1, v17, &qword_1EB1EFEB0, &unk_1A6009450, type metadata accessor for RectangleObservation);
      }

      v17[2] = v29 + 1;
      sub_1A5CB0274(v35, v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, type metadata accessor for RectangleObservation);
    }

    v15 += 32;
    if (!--v14)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_1A5CAE4B0(void *a1)
{
  v2 = [a1 corners];
  if (!v2)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = sub_1A5FD3F4C();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v4 + 16))
    {
      sub_1A5B101D8(v7, v20);
      sub_1A5B101D8(v20, &v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4648);
      if (swift_dynamicCast())
      {
        if (!v17)
        {
          goto LABEL_22;
        }

        v9 = v17;
        sub_1A5FD445C();
        if (v10)
        {
          __swift_destroy_boxed_opaque_existential_1(v20);
        }

        else
        {
          VNVerticallyFlippedNormalizedPoint();
          v12 = v11;
          v14 = v13;
          (*(*v1 + 192))(&v19);
          v17 = v19;
          NormalizedPoint.init(imagePoint:in:normalizedTo:)(__PAIR128__(v14, v12), __PAIR128__(1.0, 1.0), v21);

          __swift_destroy_boxed_opaque_existential_1(v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1A5CAFDA8(0, *(v8 + 2) + 1, 1, v8);
          }

          v16 = *(v8 + 2);
          v15 = *(v8 + 3);
          if (v16 >= v15 >> 1)
          {
            v8 = sub_1A5CAFDA8((v15 > 1), v16 + 1, 1, v8);
          }

          *(v8 + 2) = v16 + 1;
          *&v8[16 * v16 + 32] = v18;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v20);
      }

      ++v6;
      v7 += 32;
      if (v5 == v6)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (*(v8 + 2) != 4)
  {
  }
}

void sub_1A5CAE718(uint64_t a1@<X0>, uint64_t a2@<X1>, CGFloat *a3@<X8>)
{
  v7 = sub_1A5FD367C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v59.cgRect.size - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B101D8(a1, v56);
  sub_1A5B16F58(0, &qword_1EB1F4640);
  if (!swift_dynamicCast())
  {
    v12 = type metadata accessor for TextObservation();
    (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
    return;
  }

  v10 = v54[0];
  if ([v54[0] type])
  {
    v11 = type metadata accessor for TextObservation();
    (*(*(v11 - 8) + 56))(a3, 1, 1, v11);

    return;
  }

  v13 = *(*v3 + 120);
  v13(v56);
  sub_1A5CAD240(v56);
  v42 = v13;
  if (BYTE2(v56[0]) == 1 && (v14 = [v10 text]) != 0)
  {
    v15 = v14;
    v16 = sub_1A5FD3D5C();
    v59.cgRect.size.height = v17;
    v41 = v16;

    v13 = v42;
  }

  else
  {
    v59.cgRect.size.height = 0.0;
    v41 = 0;
  }

  [v10 boundingBox];
  VNVerticallyFlippedNormalizedRect();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(*v3 + 192))(&v53);
  v52 = v53;
  v57.origin.x = v19;
  v57.origin.y = v21;
  v57.size.width = v23;
  v57.size.height = v25;
  v58 = NormalizedRect.init(imageRect:in:normalizedTo:)(v57, __PAIR128__(1.0, 1.0), v59);
  v27 = *v51;
  v26 = *&v51[1];
  v29 = *&v51[2];
  v28 = *&v51[3];
  (v13)(v54, v58.cgRect.origin, *&v58.cgRect.origin.y, v58.cgRect.size, *&v58.cgRect.size.height);
  sub_1A5CAD240(v54);
  if (v55 == 1)
  {
    v30 = [v10 subFeatures];
    if (!v30)
    {
      goto LABEL_21;
    }

    v31 = v30;
    v32 = sub_1A5FD3F4C();

    *&v59.cgRect.size.width = (*(*v3 + 256))(v32, a2);

    v13 = v42;
  }

  else
  {
    v59.cgRect.size.width = 0.0;
  }

  v33 = (*(*v3 + 264))(v10);
  if (!v33)
  {
    v52.origin = 0uLL;
    LOBYTE(v52.size.width) = 1;
    v49 = 0uLL;
    v50 = 1;
    v47 = 0uLL;
    v48 = 1;
    v44 = 0;
    v45 = 0;
    v46 = 1;
    v53.origin.x = v27;
    v53.origin.y = v26;
    v53.size.width = v29;
    v53.size.height = v28;
    v39 = sub_1A5FD366C();
    (v13)(v51, v39);
    goto LABEL_18;
  }

  v34 = *(v33 + 16);
  if (v34)
  {
    v52.origin = *(v33 + 32);
    LOBYTE(v52.size.width) = 0;
    if (v34 >= 4)
    {
      v35 = *(v33 + 64);
      v49 = *(v33 + 80);
      v50 = 0;
      v47 = v35;
      v48 = 0;
      v37 = *(v33 + 48);
      v36 = *(v33 + 56);

      v44 = v37;
      v45 = v36;
      v46 = 0;
      v53.origin.x = v27;
      v53.origin.y = v26;
      v53.size.width = v29;
      v53.size.height = v28;
      v38 = sub_1A5FD366C();
      (v42)(v51, v38);
LABEL_18:
      sub_1A5CAD240(v51);
      v43 = v51[0];
      sub_1A5BD6A78(&v52, &v49, &v47, &v44, &v53, *&v59.cgRect.size.width, v41, *&v59.cgRect.size.height, a3, 1.0, v9, a2, &v43);

      v40 = type metadata accessor for TextObservation();
      (*(*(v40 - 8) + 56))(a3, 0, 1, v40);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void *sub_1A5CAEBC8(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4650);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for TextObservation();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*a1 + 120))(v9);
  if (!v2)
  {
    v13 = *(*v1 + 240);
    v31 = v12;
    v14 = v13();
    v15 = (*(*v1 + 248))();
    v17 = *(v15 + 16);
    v27 = 0;
    v28 = v15;
    if (v17)
    {
      v26 = v14;
      v18 = (*v1 + 272);
      v36 = *v18;
      v19 = *(a1 + 40);
      v34[0] = *(a1 + 24);
      v34[1] = v19;
      v34[2] = *(a1 + 56);
      v20 = v15 + 32;
      v21 = v8;
      v8 = MEMORY[0x1E69E7CC0];
      v35 = *(a1 + 72);
      v29 = v21;
      v30 = v7;
      v22 = (v21 + 6);
      v32 = v18;
      do
      {
        sub_1A5B101D8(v20, v33);
        v36(v33, v34);
        __swift_destroy_boxed_opaque_existential_1(v33);
        if ((*v22)(v6, 1, v7) == 1)
        {
          sub_1A5B10168(v6, &qword_1EB1F4650);
        }

        else
        {
          sub_1A5CB0274(v6, v11, type metadata accessor for TextObservation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1A5CAFEAC(0, v8[2] + 1, 1, v8, &qword_1EB1EFEB8, &unk_1A5FFA028, type metadata accessor for TextObservation);
          }

          v24 = v8[2];
          v23 = v8[3];
          if (v24 >= v23 >> 1)
          {
            v8 = sub_1A5CAFEAC(v23 > 1, v24 + 1, 1, v8, &qword_1EB1EFEB8, &unk_1A5FFA028, type metadata accessor for TextObservation);
          }

          v8[2] = v24 + 1;
          sub_1A5CB0274(v11, v8 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + v29[9] * v24, type metadata accessor for TextObservation);
          v7 = v30;
        }

        v20 += 32;
        --v17;
      }

      while (v17);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }
  }

  return v8;
}

void *sub_1A5CAEFBC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v63 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for TextObservation();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*a1 + 120))(v8);
  if (v2)
  {
    return v3;
  }

  v12 = v11;
  v51 = v7;
  v44 = 0;
  v13 = (*(*v1 + 144))();
  sub_1A5B37FAC(v13);

  v14 = objc_allocWithZone(VNCCTextDetector);
  v15 = sub_1A5FD3BDC();

  v16 = [v14 initWithOptions_];

  v17 = *(*v4 + 120);
  v49 = *v4 + 120;
  v50 = v17;
  v17(v60);
  sub_1A5CAD240(v60);
  LOWORD(v58[0]) = v60[0];
  result = sub_1A5C752E0();
  if (result)
  {
    v19 = result;
    if (v16)
    {
      *&v58[0] = 0;
      v20 = [v16 textBoxesForImage:v12 originatingRequestSpecifier:result error:v58];
      v21 = v16;
      v22 = *&v58[0];
      if (v20)
      {
        v23 = v20;
        v43 = v21;
        sub_1A5B16F58(0, &qword_1EB1F4658);
        v24 = sub_1A5FD3F4C();
        v25 = v22;

        if (v24 >> 62)
        {
          v26 = sub_1A5FD484C();
          v27 = v43;
          if (v26)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v27 = v43;
          if (v26)
          {
LABEL_7:
            v41 = v19;
            v42 = v12;
            v54 = MEMORY[0x1E69E7CC0];
            sub_1A5B6947C(0, v26 & ~(v26 >> 63), 0);
            if (v26 < 0)
            {
              __break(1u);
            }

            v28 = v26;
            v29 = 0;
            v3 = v54;
            v30 = *(*v4 + 192);
            v46 = *v4 + 192;
            v47 = v30;
            v31 = *(a1 + 40);
            v61[0] = *(a1 + 24);
            v61[1] = v31;
            v61[2] = *(a1 + 56);
            v62 = *(a1 + 72);
            v32 = v24;
            v45 = v24 & 0xC000000000000001;
            v33 = v28 - 1;
            v48 = v24;
            if ((v24 & 0xC000000000000001) == 0)
            {
              goto LABEL_10;
            }

LABEL_9:
            for (i = MEMORY[0x1AC554EE0](v29, v32); ; i = *(v32 + 8 * v29 + 32))
            {
              v35 = i;
              v50(v56);
              v58[0] = v56[0];
              v58[1] = v56[1];
              v59 = v57;
              v36 = sub_1A5CAD240(v58);
              v55 = v58[0];
              v47(v53, v36);
              v52[0] = v53[0];
              v52[1] = v53[1];
              sub_1A5BD7F04(v35, &v55, v52, v61, v10);
              v54 = v3;
              v38 = v3[2];
              v37 = v3[3];
              if (v38 >= v37 >> 1)
              {
                sub_1A5B6947C(v37 > 1, v38 + 1, 1);
                v3 = v54;
              }

              v3[2] = v38 + 1;
              sub_1A5CB0274(v10, v3 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, type metadata accessor for TextObservation);
              if (v33 == v29)
              {
                break;
              }

              ++v29;
              v32 = v48;
              if (v45)
              {
                goto LABEL_9;
              }

LABEL_10:
              ;
            }

            return v3;
          }
        }

        return MEMORY[0x1E69E7CC0];
      }

      else
      {
        v3 = *&v58[0];
        sub_1A5FD348C();

        swift_willThrow();
      }
    }

    else
    {
      v3 = 0x80000001A60596E0;
      sub_1A5B16774();
      swift_allocError();
      *v39 = 0xD000000000000016;
      *(v39 + 8) = 0x80000001A60596E0;
      *(v39 + 16) = 0;
      *(v39 + 20) = 8;
      swift_willThrow();
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5CAF4F4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A5CAF514, 0, 0);
}

uint64_t sub_1A5CAF514()
{
  v1 = *(v0 + 64);
  (*(*v1 + 120))();
  sub_1A5CAD240(v0 + 16);
  v2 = *v1;
  v3 = *(v0 + 56);
  if (*(v0 + 51))
  {
    v4 = (*(v2 + 288))(v3);
  }

  else
  {
    v4 = (*(v2 + 280))(v3);
  }

  v5 = sub_1A5CAF664(v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1A5CAF664(uint64_t a1)
{
  v2 = type metadata accessor for TextObservation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A5B5748C(0, v6, 0);
    v7 = v15;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1A5CB075C(v8, v5);
      swift_dynamicCast();
      v15 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A5B5748C((v10 > 1), v11 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      sub_1A5B101C8(&v14, (v7 + 32 * v11 + 32));
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A5CAF7EC()
{

  return swift_deallocClassInstance();
}

void (*sub_1A5CAF884(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 184))();
  return sub_1A5B16120;
}

uint64_t sub_1A5CAF938(uint64_t a1)
{
  v6 = (*(*v1 + 296) + **(*v1 + 296));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9A9D4;

  return v6(a1);
}

uint64_t sub_1A5CAFAA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F19679E0);
}

uint64_t sub_1A5CAFB50(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

unint64_t sub_1A5CAFC78(unsigned __int8 a1)
{
  sub_1A5BE4A64();
  v1 = sub_1A5FD3CAC();
  return sub_1A5CAFCE0(a1, v1);
}

unint64_t sub_1A5CAFCE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A5C10F98();
    do
    {
      if (sub_1A5FD3D0C())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_1A5CAFDA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1A5CAFEAC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1A5CB0088(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4668);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1A5CAFC78(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A5CB0180()
{
  result = qword_1EB1F4638;
  if (!qword_1EB1F4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4638);
  }

  return result;
}

uint64_t sub_1A5CB0254(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 4;
  }

  else
  {
    return 0x1020300u >> (8 * a1);
  }
}

uint64_t sub_1A5CB0274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1A5CB02DC(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  sub_1A5B180A0(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  if (!swift_dynamicCast())
  {
LABEL_22:
    __break(1u);
  }

  v28[2] = v32;
  v28[3] = v33;
  v28[4] = v34;
  v29 = v35;
  v28[0] = v30;
  v28[1] = v31;
  if ((BYTE8(v32) & 1) == 0)
  {
LABEL_19:
    sub_1A5B66D6C(v28);
    return MEMORY[0x1E69E7CC0];
  }

  v25 = v32;
  *v26 = v33;
  *&v26[16] = v34;
  v27 = v35;
  *(&v23 + 1) = *(&v30 + 1);
  v24 = v31;
  v3 = sub_1A5CB0180();
  v4 = sub_1A5BDA35C(a2, &type metadata for DetectTextRectanglesRequest, v3);
  v5 = objc_opt_self();
  sub_1A5B37FAC(v4);

  v6 = sub_1A5FD3BDC();

  *&v23 = 0;
  v7 = [v5 supportedImageSizeSetForOptions:v6 error:&v23];

  v8 = v23;
  if (!v7)
  {
    v13 = v23;
    sub_1A5FD348C();

    swift_willThrow();
    sub_1A5B66D6C(v28);
    return v13;
  }

  sub_1A5B16F58(0, &unk_1EB1F1360);
  v9 = sub_1A5FD3F4C();
  v10 = v8;

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v11 = sub_1A5FD484C();
  if (!v11)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_6:
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A5BDAC18(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = 0;
  v13 = v22;
  if ((v9 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  for (i = MEMORY[0x1AC554EE0](v12, v9); ; i = *(v9 + 8 * v12 + 32))
  {
    sub_1A5B50818(i, &v23);
    v16 = v22[2];
    v15 = v22[3];
    if (v16 >= v15 >> 1)
    {
      sub_1A5BDAC18((v15 > 1), v16 + 1, 1);
    }

    v22[2] = v16 + 1;
    v17 = &v22[10 * v16];
    v17[2] = v23;
    v18 = v24;
    v19 = v25;
    v20 = *v26;
    *(v17 + 89) = *&v26[9];
    v17[4] = v19;
    v17[5] = v20;
    v17[3] = v18;
    if (v11 - 1 == v12)
    {
      break;
    }

    ++v12;
    if ((v9 & 0xC000000000000001) != 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    ;
  }

  sub_1A5B66D6C(v28);
  return v13;
}

unint64_t sub_1A5CB0634()
{
  result = qword_1EB1F4660;
  if (!qword_1EB1F4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4660);
  }

  return result;
}

uint64_t sub_1A5CB0688(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 36))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A5CB06E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1A5CB075C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5CB07E0(uint64_t a1)
{
  v3 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5CB0D4C(a1, v5, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    return sub_1A5CB2024(v5, type metadata accessor for VisionResult);
  }

  v6 = *(v5 + 8);

  return (*(*v1 + 184))(v6);
}

uint64_t sub_1A5CB08E8(void *a1)
{
  v2 = swift_allocObject();
  sub_1A5CB0940(a1);
  return v2;
}

uint64_t sub_1A5CB0940(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextRecognitionPerformingOperation.Options(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC6Vision34TextRecognitionPerformingOperation_barcodes) = v7;
  sub_1A5B180A0(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4670);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(&v22, v28);
    sub_1A5B180A0(v28, v25);
    v9 = v26;
    v8 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v8 + 8))(v9, v8);
    v10 = v26;
    v11 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v11 + 16))(&v22, v10, v11);
    v12 = &v6[*(v4 + 20)];
    v13 = v23;
    *v12 = v22;
    *(v12 + 1) = v13;
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v15 + 24))(&v22, v14, v15);
    *&v6[*(v4 + 24)] = v22;
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1A5CB0C7C(v6, v1 + OBJC_IVAR____TtC6Vision34TextRecognitionPerformingOperation_options);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB18);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A5FF36F0;
    v17 = a1[3];
    v18 = a1[4];
    v19 = __swift_project_boxed_opaque_existential_1(a1, v17);
    *(v16 + 56) = v17;
    *(v16 + 64) = *(v18 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);

    __swift_destroy_boxed_opaque_existential_1(v28);
    swift_beginAccess();
    *(v2 + 16) = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v2;
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_1A5B10168(&v22, &qword_1EB1F4678);
    result = sub_1A5FD483C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CB0C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextRecognitionPerformingOperation.Options(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5CB0CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision34TextRecognitionPerformingOperation_options;
  swift_beginAccess();
  return sub_1A5CB0D4C(v1 + v3, a1, type metadata accessor for TextRecognitionPerformingOperation.Options);
}

uint64_t sub_1A5CB0D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5CB0DB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Vision34TextRecognitionPerformingOperation_options;
  swift_beginAccess();
  sub_1A5CB0E14(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A5CB0E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextRecognitionPerformingOperation.Options(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5CB0F20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Vision34TextRecognitionPerformingOperation_barcodes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A5CB0FD8(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  sub_1A5FD367C();
  v2[44] = swift_task_alloc();
  v2[45] = type metadata accessor for TextRecognitionPerformingOperation.Options(0);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CB10B0, 0, 0);
}

uint64_t sub_1A5CB10B0()
{
  v1 = v0[48];
  v3 = v0[42];
  v2 = v0[43];
  sub_1A5FD396C();
  v4 = *(*v2 + 152);
  v5 = (*v2 + 152) & 0xFFFFFFFFFFFFLL | 0x3379000000000000;
  v0[49] = v4;
  v0[50] = v5;
  v4();
  v6 = sub_1A5FD3A6C();
  v0[51] = v6;
  v0[5] = v6;
  v7 = sub_1A5CB3040(&qword_1EB1EFFD8, MEMORY[0x1E69D9C70]);
  v0[52] = v7;
  v0[6] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v9 = *(v6 - 8);
  v10 = *(v9 + 32);
  v0[53] = v10;
  v0[54] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(boxed_opaque_existential_1, v1, v6);
  v11 = sub_1A5FD392C();
  v0[55] = v11;
  v12 = (*(*v3 + 120))();
  v0[56] = v12;
  v16 = (*(*v0[43] + 208) + **(*v0[43] + 208));
  v13 = v12;
  v14 = swift_task_alloc();
  v0[57] = v14;
  *v14 = v0;
  v14[1] = sub_1A5CB137C;

  return v16(v13, v11);
}

uint64_t sub_1A5CB137C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v4 = sub_1A5CB1E08;
  }

  else
  {

    v4 = sub_1A5CB1498;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A5CB1498()
{
  v1 = *(v0 + 384);
  (*(v0 + 392))();
  v2 = sub_1A5FD3A2C();
  sub_1A5CB2024(v1, type metadata accessor for TextRecognitionPerformingOperation.Options);
  v3 = *(v0 + 464);
  v4 = *(v0 + 424);
  v5 = *(v0 + 408);
  v6 = *(v0 + 416);
  v7 = *(v0 + 392);
  if (v2)
  {
    v8 = *(v0 + 376);
    type metadata accessor for CVBuffer(0);
    v9 = MEMORY[0x1E69D9C78];
    *(v0 + 160) = v10;
    *(v0 + 168) = v9;
    *(v0 + 136) = v3;
    v7(v3);
    *(v0 + 200) = v5;
    *(v0 + 208) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    v4(boxed_opaque_existential_1, v8, v5);
    v19 = (*MEMORY[0x1E69D9C40] + MEMORY[0x1E69D9C40]);
    v12 = swift_task_alloc();
    *(v0 + 480) = v12;
    *v12 = v0;
    v12[1] = sub_1A5CB16FC;

    return v19(v0 + 136, 0, v0 + 176, 0, 0);
  }

  else
  {
    v14 = *(v0 + 368);
    type metadata accessor for CVBuffer(0);
    v15 = MEMORY[0x1E69D9C78];
    *(v0 + 80) = v16;
    *(v0 + 88) = v15;
    *(v0 + 56) = v3;
    v7(v3);
    *(v0 + 120) = v5;
    *(v0 + 128) = v6;
    v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v4(v17, v14, v5);
    v20 = (*MEMORY[0x1E69D9C50] + MEMORY[0x1E69D9C50]);
    v18 = swift_task_alloc();
    *(v0 + 504) = v18;
    *v18 = v0;
    v18[1] = sub_1A5CB1A98;

    return v20(v0 + 56, 0, v0 + 96, 0, 0, 0);
  }
}

uint64_t sub_1A5CB16FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v4 = sub_1A5CB1EA4;
  }

  else
  {
    sub_1A5B10168(v3 + 176, &qword_1EB1F4680);
    __swift_destroy_boxed_opaque_existential_1(v3 + 136);
    v4 = sub_1A5CB1830;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A5CB1830()
{
  v24 = v0;
  v1 = *(v0 + 488);
  v2 = *(v1 + 16);
  if (v2)
  {
    v21 = *(v0 + 360);
    v3 = *(v0 + 336);
    v22 = MEMORY[0x1E69E7CC0];
    sub_1A5B5748C(0, v2, 0);
    v4 = v22;
    v5 = *(v3 + 40);
    v6 = *(v3 + 56);
    v7 = *(v3 + 24);
    *(v0 + 628) = *(v3 + 72);
    *(v0 + 596) = v5;
    *(v0 + 612) = v6;
    *(v0 + 580) = v7;
    v8 = v1 + 32;
    do
    {
      v9 = *(v0 + 392);
      v10 = *(v0 + 384);
      sub_1A5B180A0(v8, v0 + 216);
      sub_1A5B180A0(v0 + 216, v0 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4688);
      sub_1A5CB2FF4();
      v11 = swift_dynamicCast();
      v12 = *(v0 + 328);
      v9(v11);
      v13 = *(v10 + *(v21 + 24));
      sub_1A5CB2024(v10, type metadata accessor for TextRecognitionPerformingOperation.Options);
      v23 = v13;
      *(v0 + 320) = type metadata accessor for RecognizedTextObservation();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
      sub_1A5BCC958(v12, &v23, v0 + 580, boxed_opaque_existential_1);
      __swift_destroy_boxed_opaque_existential_1(v0 + 216);
      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1A5B5748C((v15 > 1), v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      sub_1A5B101C8((v0 + 296), (v22 + 32 * v16 + 32));
      v8 += 40;
      --v2;
    }

    while (v2);
    v17 = *(v0 + 464);
  }

  else
  {
    v18 = *(v0 + 464);

    v4 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v0 + 8);

  return v19(v4);
}

uint64_t sub_1A5CB1A98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = sub_1A5CB1F64;
  }

  else
  {
    *(v4 + 520) = a1;
    sub_1A5B10168(v4 + 96, &qword_1EB1F4680);
    __swift_destroy_boxed_opaque_existential_1(v4 + 56);
    v5 = sub_1A5CB1BDC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A5CB1BDC()
{
  v25 = v0;
  v1 = *(v0 + 520);
  v23 = *(v0 + 464);
  v21 = *(v0 + 392);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  v22 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 344);
  type metadata accessor for DocumentObservation.OutputRegion(0);
  v6 = *(*v5 + 176);
  v7 = v1;
  v8 = v6();
  v9 = v7;
  v10 = sub_1A5B81B70(v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4520);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A5FF36F0;

  v21(v12);
  LOWORD(v8) = *(v2 + *(v3 + 24));
  sub_1A5CB2024(v2, type metadata accessor for TextRecognitionPerformingOperation.Options);
  v24 = v8;
  sub_1A5FD366C();
  [v9 rawConfidence];
  v14 = v13;

  v15 = *(v4 + 24);
  v16 = *(v4 + 40);
  v17 = *(v4 + 56);
  *(v0 + 576) = *(v4 + 72);
  *(v0 + 544) = v16;
  *(v0 + 560) = v17;
  *(v0 + 528) = v15;
  *(v11 + 56) = type metadata accessor for DocumentObservation(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_1A5B83174(v10, &v24, v22, v0 + 528, boxed_opaque_existential_1, v14);

  v19 = *(v0 + 8);

  return v19(v11);
}

uint64_t sub_1A5CB1E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5CB1EA4()
{

  sub_1A5B10168(v0 + 176, &qword_1EB1F4680);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5CB1F64()
{

  sub_1A5B10168(v0 + 96, &qword_1EB1F4680);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5CB2024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5CB2084(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for TextRecognitionPerformingOperation.Options(0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CB2148, 0, 0);
}

uint64_t sub_1A5CB2148()
{
  v26 = v0;
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 72) + 152);
  v3();
  sub_1A5CB2024(v1, type metadata accessor for TextRecognitionPerformingOperation.Options);
  v4 = [v2 width];
  *&v5 = [v2 height];
  sub_1A5B0BCC4(&v23);
  v24 = v23;
  v28 = NormalizedRect.toImageCoordinates(_:origin:)(__PAIR128__(v5, v4), &v24);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  *(v0 + 16) = v28;
  v10 = CGRectGetWidth(v28);
  *(v0 + 96) = v10;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v11 = CGRectGetHeight(v29);
  *(v0 + 104) = v11;
  if (v10 < 1.0 || v11 < 1.0)
  {
    sub_1A5FD46AC();

    *&v22 = 0xD000000000000018;
    *(&v22 + 1) = 0x80000001A60597D0;
    v13 = sub_1A5FD41EC();
    MEMORY[0x1AC554600](v13);

    MEMORY[0x1AC554600](2127904, 0xE300000000000000);
    v14 = sub_1A5FD41EC();
    MEMORY[0x1AC554600](v14);

    sub_1A5B16774();
    swift_allocError();
    *v15 = v22;
    *(v15 + 16) = 0;
    *(v15 + 20) = 4;
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 88);
    v3();
    sub_1A5FD397C();
    *(v0 + 112) = v19;
    sub_1A5CB2024(v18, type metadata accessor for TextRecognitionPerformingOperation.Options);
    sub_1A5FD396C();
    sub_1A5CB3040(&qword_1EB1F4690, MEMORY[0x1E69D9C58]);
    v21 = sub_1A5FD404C();

    return MEMORY[0x1EEE6DFA0](sub_1A5CB24D4, v21, v20);
  }
}

uint64_t sub_1A5CB24D4()
{
  sub_1A5FD391C();
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A5CB2574, 0, 0);
}

uint64_t sub_1A5CB2574()
{
  v1 = *(v0 + 120);
  if (v1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = *&v1 & 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(v0 + 128);
  if (v3 > 0x7FEFFFFFFFFFFFFFLL || (*(v0 + 128) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_22;
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 56);
  *(v0 + 48) = 0;
  v11 = [v10 croppedBufferWithWidth:v2 & 0xFFFFFFFFFFFFFFFELL height:v5 & 0xFFFFFFFFFFFFFFFELL format:875704422 cropRect:0 options:v0 + 48 error:{v6, v7, v8, v9}];
  v12 = *(v0 + 48);
  if (v11)
  {
    v13 = v11;
    v14 = v12;

    v15 = *(v0 + 8);

    return v15(v13);
  }

  else
  {
    v17 = v12;
    sub_1A5FD348C();

    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1A5CB277C()
{
  *(v1 + 56) = v0;
  type metadata accessor for TextRecognitionPerformingOperation.Options(0);
  *(v1 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CB280C, 0, 0);
}

uint64_t sub_1A5CB280C()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_1A5FD396C();
  (*(*v1 + 152))();
  v3 = sub_1A5FD3A6C();
  v0[5] = v3;
  v0[6] = sub_1A5CB3040(&qword_1EB1EFFD8, MEMORY[0x1E69D9C70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 32))(boxed_opaque_existential_1, v2, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1A5CB2970;

  return MEMORY[0x1EEE48DC0](v0 + 2, 0, 0);
}

uint64_t sub_1A5CB2970()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A5CB2ABC, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A5CB2ABC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5CB2B2C()
{

  sub_1A5CB2024(v0 + OBJC_IVAR____TtC6Vision34TextRecognitionPerformingOperation_options, type metadata accessor for TextRecognitionPerformingOperation.Options);

  return swift_deallocClassInstance();
}

void (*sub_1A5CB2C04(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B16120;
}

uint64_t sub_1A5CB2CB8(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9A9D4;

  return v6(a1);
}

uint64_t sub_1A5CB2E00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1967B90);
}

uint64_t sub_1A5CB2ED4(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

unint64_t sub_1A5CB2FF4()
{
  result = qword_1EB1EF048;
  if (!qword_1EB1EF048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1EF048);
  }

  return result;
}

uint64_t sub_1A5CB3040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5CB30B0()
{
  result = type metadata accessor for TextRecognitionPerformingOperation.Options(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A5CB3178()
{
  result = sub_1A5FD3A6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A5CB3234(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A5CB328C(a1, a2);
  return v4;
}

uint64_t sub_1A5CB328C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  *(v2 + 16) = v4;
  sub_1A5B180A0(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v29;
    v7 = v30;
    v8 = v31;
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
    sub_1A5B180A0(a1, &v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4698);
    swift_dynamicCast();
    v13 = v27;
    v14 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v15 = (*(v14 + 8))(v13, v14);
    swift_beginAccess();
    *(v2 + 24) = v15;

    __swift_destroy_boxed_opaque_existential_1(v26);
    v19 = v6;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    GenerateTorsoPrintRequest.descriptor.getter(v26);
    LOWORD(v14) = v26[0];
    v19 = v6;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v16 = sub_1A5BAF998();
    v17 = sub_1A5D4F438(a2, &type metadata for GenerateTorsoPrintRequest, v16);

    __swift_destroy_boxed_opaque_existential_1(a1);

    *(v2 + 32) = v14;
    *(v2 + 40) = xmmword_1A6014D80;
    *(v2 + 56) = 9;
    *(v2 + 64) = v7;
    *(v2 + 72) = v8;
    *(v2 + 80) = v9;
    *(v2 + 88) = v10;
    *(v2 + 96) = v17;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CB3494(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = type metadata accessor for HumanObservation();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CB3554, 0, 0);
}

unint64_t sub_1A5CB3554()
{
  v1 = *(v0 + 344);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v2 + 16);
  if (v49)
  {
    v3 = *(v0 + 344);

    sub_1A5BF63A0(2, 0xD000000000000036, 0x80000001A6058E70);
    swift_beginAccess();
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
    sub_1A5B72D90(v4, v5, v6);

    sub_1A5CD408C(v4, v5, v6, v0 + 16);
    v48 = v2;
    v8 = *(v0 + 336);

    sub_1A5B4F9C8(v4, v5, v6);
    sub_1A5BF63A0(2, 0xD000000000000035, 0x80000001A6058EB0);
    v9 = MEMORY[0x1E69E7CC0];
    result = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
    v11 = *(v8 + 16);
    if (v11)
    {
      v12 = result;
      v47 = *(v0 + 360);
      v13 = *(v0 + 344);

      v14 = sub_1A5C3B40C(4u);
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A5FF3930;
      *(v17 + 32) = v11;
      *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E8);
      *(v0 + 56) = v17;
      sub_1A5B101C8((v0 + 56), (v0 + 88));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1A5B0E9AC((v0 + 88), v14, v16, isUniquelyReferenced_nonNull_native);

      v19 = sub_1A5C3B40C(3u);
      v21 = v20;
      v22 = *(v3 + 32);
      v46 = v13;
      v23 = *(v13 + 33);
      *(v0 + 144) = &type metadata for RequestDescriptor;
      *(v0 + 120) = v22;
      *(v0 + 121) = v23;
      sub_1A5B101C8((v0 + 120), (v0 + 152));
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A5B0E9AC((v0 + 152), v19, v21, v24);

      v25 = v12;
      v50 = v9;
      sub_1A5BF63A0(2, 0xD000000000000033, 0x80000001A6059830);
      v26 = 0;
      result = v48;
      while (v26 < *(result + 16))
      {
        v27 = *(v0 + 368);
        v28 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        sub_1A5B0A4A8(result + v28 + *(v47 + 72) * v26, v27);
        v29 = sub_1A5C3B40C(6u);
        v31 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2E00);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1A5FF36F0;
        sub_1A5B0A4A8(v27, v32 + v28);
        *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF350);
        *(v0 + 184) = v32;
        sub_1A5B101C8((v0 + 184), (v0 + 216));
        v33 = swift_isUniquelyReferenced_nonNull_native();
        sub_1A5B0E9AC((v0 + 216), v29, v31, v33);

        v34 = *(v0 + 40);
        v35 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v34);
        v36 = v46[8];
        v37 = v46[9];
        v38 = v46[10];
        v39 = v46[11];
        v40 = *(v35 + 16);
        *(v0 + 272) = swift_getAssociatedTypeWitness();
        __swift_allocate_boxed_opaque_existential_1((v0 + 248));
        v40(v25, v34, v35, v36, v37, v38, v39);
        v41 = *(v0 + 368);
        ++v26;
        swift_dynamicCast();
        sub_1A5CB3C04(*(v0 + 328));
        sub_1A5FD46AC();

        sub_1A5CB43B4();
        v42 = sub_1A5FD4ACC();
        MEMORY[0x1AC554600](v42);

        sub_1A5BF63A0(2, 0xD000000000000039, 0x80000001A6059870);

        sub_1A5B0A50C(v41);
        result = v48;
        if (v49 == v26)
        {
          v43 = *(v0 + 352);

          sub_1A5FD46AC();

          v44 = MEMORY[0x1AC554750](v50, v43);
          MEMORY[0x1AC554600](v44);

          sub_1A5BF63A0(2, 0xD000000000000026, 0x80000001A6058F70);

          v7 = sub_1A5CB3D30(v50);

          __swift_destroy_boxed_opaque_existential_1(v0 + 16);
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_12:

    v45 = *(v0 + 8);

    return v45(v7);
  }

  return result;
}

uint64_t sub_1A5CB3C04(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A5CB41DC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for HumanObservation();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A5CB3D30(uint64_t a1)
{
  v2 = type metadata accessor for HumanObservation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A5B5748C(0, v6, 0);
    v7 = v15;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1A5B0A4A8(v8, v5);
      swift_dynamicCast();
      v15 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A5B5748C((v10 > 1), v11 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      sub_1A5B101C8(&v14, (v7 + 32 * v11 + 32));
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A5CB3EB8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v10 = *(v1 + 64);
  v11 = v3;
  v12 = *(v1 + 96);
  v4 = v12;
  v5 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v6 = v9[0];
  v9[1] = v5;
  *(a1 + 32) = v10;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v6;
  *(a1 + 16) = v5;
  return sub_1A5CB31FC(v9, &v8);
}

uint64_t sub_1A5CB3F24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A5C9A9D4;

  return sub_1A5CB3494(a1);
}

uint64_t sub_1A5CB4008(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, v4, &off_1F1967C28);
}

uint64_t sub_1A5CB4108(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B0CE78;

  return sub_1A5CB68D0(a1, v4, &off_1EE702678);
}

size_t sub_1A5CB41DC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2E00);
  v10 = *(type metadata accessor for HumanObservation() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HumanObservation() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1A5CB43B4()
{
  result = qword_1EB1EE848;
  if (!qword_1EB1EE848)
  {
    type metadata accessor for HumanObservation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE848);
  }

  return result;
}

uint64_t sub_1A5CB444C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A5CB44A4(a1, a2);
  return v4;
}

uint64_t sub_1A5CB44A4(uint64_t a1, uint64_t a2)
{
  v118 = sub_1A5FD437C();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1A5FD436C();
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5FD3BAC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v113 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v125 = &v113 - v10;
  v11 = sub_1A5FD3B5C();
  v126 = *(v11 - 8);
  v127 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v128 = a1;
  sub_1A5B180A0(a1, &v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46A0);
  result = swift_dynamicCast();
  if (result)
  {
    v15 = v130[0];
    v14 = v130[1];
    ObjectType = swift_getObjectType();
    v131 = v15;
    v17 = *(v14 + 16);
    v18 = *(v17 + 48);

    v20 = v18(v19, ObjectType, v17);
    v123 = a2;

    v124 = v2;
    *(v2 + 24) = v20;
    v21 = sub_1A5FD3D5C();
    v23 = v22;
    v121 = *(v14 + 40);
    v122 = v14 + 40;
    v24 = v121(ObjectType, v14);
    v25 = MEMORY[0x1E69E6158];
    v133 = MEMORY[0x1E69E6158];
    v131 = v24;
    v132 = v26;
    swift_beginAccess();
    sub_1A5B0DE30(&v131, v21, v23);
    swift_endAccess();
    v27 = sub_1A5FD3D5C();
    v29 = v28;
    v30 = (*(v14 + 48))(ObjectType, v14);
    v133 = v25;
    v131 = v30;
    v132 = v31;
    swift_beginAccess();
    sub_1A5B0DE30(&v131, v27, v29);
    swift_endAccess();
    v134 = sub_1A5FD3D5C();
    v33 = v32;
    v34 = *(v14 + 32);
    v35 = v34(ObjectType, v14);
    v36 = [v35 uuid];

    v133 = sub_1A5FD367C();
    __swift_allocate_boxed_opaque_existential_1(&v131);
    sub_1A5FD365C();

    swift_beginAccess();
    sub_1A5B0DE30(&v131, v134, v33);
    swift_endAccess();
    v37 = sub_1A5FD3D5C();
    v39 = v38;
    v40 = ObjectType;
    v41 = v34(ObjectType, v14);
    [v41 boundingBox];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v135.origin.x = v43;
    v135.origin.y = v45;
    v135.size.width = v47;
    v135.size.height = v49;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v135);
    type metadata accessor for CFDictionary();
    v133 = v51;
    v131 = DictionaryRepresentation;
    swift_beginAccess();
    sub_1A5B0DE30(&v131, v37, v39);
    swift_endAccess();
    v119 = @"VNTrackingOption_CVPixelBufferFormat";
    v52 = sub_1A5FD3D5C();
    v54 = v53;
    v133 = MEMORY[0x1E69E7668];
    LODWORD(v131) = 875704422;
    swift_beginAccess();
    sub_1A5B0DE30(&v131, v52, v54);
    swift_endAccess();
    v134 = v15;
    v131 = v15;
    LOBYTE(v130[0]) = 0;
    v55 = v125;
    (*(*(*(*(v14 + 8) + 8) + 8) + 40))(v130, ObjectType);
    v57 = v126;
    v56 = v127;
    if ((*(v126 + 48))(v55, 1, v127) == 1)
    {
      sub_1A5B10168(v55, &qword_1EB1EEA90);
      v58 = sub_1A5FD3D5C();
      v60 = v59;
      v61 = [objc_opt_self() defaultDevice];
      v62 = [objc_allocWithZone(VNProcessingDeviceComputeDeviceBridge) initWithProcessingDevice_];

      v63 = [v62 computeDevice];
      v133 = swift_getObjectType();
      v131 = v63;
      swift_beginAccess();
      sub_1A5B0DE30(&v131, v58, v60);
      swift_endAccess();
    }

    else
    {
      v64 = v120;
      (*(v57 + 32))(v120, v55, v56);
      v65 = sub_1A5FD3D5C();
      v67 = v66;
      v68 = sub_1A5FD3B2C();
      v133 = swift_getObjectType();
      v131 = v68;
      swift_beginAccess();
      sub_1A5B0DE30(&v131, v65, v67);
      swift_endAccess();
      (*(v57 + 8))(v64, v56);
    }

    v69 = v121;
    v70 = v121(v40, v14);
    v72 = v71;
    if (v70 == sub_1A5FD3D5C() && v72 == v73)
    {

      goto LABEL_9;
    }

    v74 = sub_1A5FD4B0C();

    if (v74)
    {
LABEL_9:
      v75 = sub_1A5FD3D5C();
      v77 = v76;
      v78 = objc_opt_self();
      v79 = [v78 rpnTrackerInitModelName];
      v80 = sub_1A5FD3D5C();
      v82 = v81;

      v83 = MEMORY[0x1E69E6158];
      v133 = MEMORY[0x1E69E6158];
      v131 = v80;
      v132 = v82;
      swift_beginAccess();
      sub_1A5B0DE30(&v131, v75, v77);
      swift_endAccess();
      v84 = sub_1A5FD3D5C();
      v86 = v85;
      v87 = [v78 rpnTrackerTrackModelName];
      v88 = sub_1A5FD3D5C();
      v90 = v89;

      v133 = v83;
      v131 = v88;
      v132 = v90;
      swift_beginAccess();
      sub_1A5B0DE30(&v131, v84, v86);
      swift_endAccess();

      v92 = v129;
      v93 = sub_1A5CD3994(v91);
      if (v92)
      {
        v94 = v124;

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v128);
      }

      else
      {
        v95 = v93;

        v96 = sub_1A5FD3D5C();
        v98 = v97;
        v133 = sub_1A5B16F58(0, &qword_1EB1F46C8);
        v131 = v95;
        swift_beginAccess();
        v99 = v95;
        sub_1A5B0DE30(&v131, v96, v98);
        swift_endAccess();
        v100 = sub_1A5FD3D5C();
        v102 = v101;
        v133 = MEMORY[0x1E69E7668];
        LODWORD(v131) = 1111970369;
        swift_beginAccess();
        sub_1A5B0DE30(&v131, v100, v102);
        swift_endAccess();

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v128);
        return v124;
      }

      return v94;
    }

    v103 = v69(v40, v14);
    v105 = v104;
    if (v103 == sub_1A5FD3D5C() && v105 == v106)
    {
    }

    else
    {
      v107 = sub_1A5FD4B0C();

      if ((v107 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v128);
        swift_unknownObjectRelease();

        return v124;
      }
    }

    v108 = sub_1A5FD3D5C();
    v110 = v109;
    v111 = sub_1A5B16F58(0, &qword_1EB1F46A8);
    sub_1A5FD3B9C();
    v131 = MEMORY[0x1E69E7CC0];
    sub_1A5CB514C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46B8);
    sub_1A5CB51A4();
    sub_1A5FD461C();
    (*(v117 + 104))(v116, *MEMORY[0x1E69E8090], v118);
    v112 = sub_1A5FD438C();
    v133 = v111;
    v131 = v112;
    swift_beginAccess();
    sub_1A5B0DE30(&v131, v108, v110);
    swift_endAccess();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v128);
    return v124;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5CB514C()
{
  result = qword_1EB1F46B0;
  if (!qword_1EB1F46B0)
  {
    sub_1A5FD436C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F46B0);
  }

  return result;
}

unint64_t sub_1A5CB51A4()
{
  result = qword_1EB1F46C0;
  if (!qword_1EB1F46C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F46B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F46C0);
  }

  return result;
}

uint64_t sub_1A5CB5208(uint64_t a1)
{
  v4 = (*(*v1 + 96))();
  if (!*(v4 + 16))
  {

    __break(1u);
    goto LABEL_7;
  }

  sub_1A5B180A0(v4 + 32, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  v11[8] = a1;
  v11[9] = v1;
  v11[10] = v11[13];
  v11[11] = v12;
  MEMORY[0x1EEE9AC00](v7);
  v11[2] = v8;
  v11[3] = v12;
  v11[4] = sub_1A5CB53C0;
  v11[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1370);
  sub_1A5B17D94(sub_1A5CB5A7C, v11, ObjectType, v10, *(v12 + 8), v13);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    return v13[0];
  }

  return result;
}

char *sub_1A5CB53C0(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  v8 = v2[2];
  v9 = (*(*v8 + 120))();
  if (!v3)
  {
    v10 = v9;
    v45 = v8;
    v46 = a2;
    v11 = sub_1A5FD3D5C();
    v52 = v6;
    v13 = v12;
    v14 = [v10 width];
    v49 = MEMORY[0x1E69E6530];
    v48[0] = v14;
    v15 = *(*v5 + 136);
    v16 = v7;
    v17 = v15(v47);
    sub_1A5B0DE30(v48, v11, v13);
    v17(v47, 0);
    v18 = sub_1A5FD3D5C();
    v20 = v19;
    v21 = [v10 height];
    v49 = MEMORY[0x1E69E6530];
    v48[0] = v21;
    v22 = v15(v47);
    sub_1A5B0DE30(v48, v18, v20);
    v22(v47, 0);
    v23 = v52;
    ObjectType = swift_getObjectType();
    v25 = (*(*v5 + 120))();
    v26 = swift_getObjectType();
    v27 = v16;
    v28 = (*(v23 + 40))(v26, v23);
    v31 = (*(v46 + 40))(v25, v28, v29, ObjectType);

    if ([v31 isTracking])
    {
      v48[0] = 0;
      v32 = [v31 trackInFrame:v10 error:v48];
      v33 = v48[0];
      if (v32)
      {
        v34 = v27;
        v35 = v32;
        v36 = sub_1A5FD3F4C();
        v37 = v33;

        if (*(v36 + 16))
        {
LABEL_7:
          v48[0] = v34;
          v38 = *(v45 + 40);
          v50[0] = *(v45 + 24);
          v50[1] = v38;
          v50[2] = *(v45 + 56);
          v51 = v45[72];
          (*(*(v52 + 16) + 32))(v36, v50, v26, *(v52 + 16));

          swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4508);
          v44 = sub_1A5FD480C();

          v8 = sub_1A5CB58B8(v44);

LABEL_13:

          return v8;
        }

LABEL_10:

        v8 = MEMORY[0x1E69E7CC0];
        goto LABEL_13;
      }

      v8 = v48[0];
      sub_1A5FD348C();

      swift_willThrow();
    }

    else
    {
      v34 = v27;
      v39 = (*(v23 + 32))(v26, v23);
      v48[0] = 0;
      v40 = [v31 setTrackedObjects:v39 inFrame:v10 error:v48];

      v41 = v48[0];
      if (v40)
      {
        v36 = sub_1A5FD3F4C();
        v42 = v41;

        if (*(v36 + 16))
        {
          goto LABEL_7;
        }

        goto LABEL_10;
      }

      v43 = v48[0];
      v8 = sub_1A5FD348C();

      swift_willThrow();
    }
  }

  return v8;
}

uint64_t sub_1A5CB58B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1A5B5748C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1A5B180A0(v4, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4508);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A5B5748C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1A5B101C8(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A5CB59CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = a2(a1, AssociatedConformanceWitness);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void (*sub_1A5CB5AE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return sub_1A5B16120;
}

uint64_t sub_1A5CB5B98()
{
  v2 = (*(*v0 + 160))();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1A5CB5C70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1967D30);
}

uint64_t sub_1A5CB5D20(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

uint64_t sub_1A5CB5E40(uint64_t a1)
{
  sub_1A5B180A0(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46A0);
  result = swift_dynamicCast();
  if (result)
  {
    ObjectType = swift_getObjectType();
    v3 = (*(v13 + 40))(ObjectType);
    v5 = v4;
    if (sub_1A5FD3D5C() == v3 && v6 == v5)
    {
    }

    else
    {
      v8 = sub_1A5FD4B0C();

      if ((v8 & 1) == 0)
      {
        if (sub_1A5FD3D5C() == v3 && v10 == v5)
        {
        }

        else
        {
          v12 = sub_1A5FD4B0C();

          if ((v12 & 1) == 0)
          {
            v9 = MEMORY[0x1E69E7CC0];
            goto LABEL_10;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2E10);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1A5FF36F0;
        v14[0] = 1;
        sub_1A5B50670(0, 1, 0, 1, 72, 0x7FFFFFFFFFFFFFFFLL, 0, 72, v9 + 32, 0x7FFFFFFFFFFFFFFFLL, 0, 875704422, 0, 1);
        goto LABEL_10;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2E10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A5FF36F0;
    v14[0] = 1;
    sub_1A5B50670(271, 0, 271, 0, 0, 0, 1, 0, v9 + 32, 0, 1, 1111970369, 0, 1);
LABEL_10:
    swift_unknownObjectRelease();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5CB60F4(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A5CB6114, 0, 0);
}

uint64_t sub_1A5CB6114()
{
  v38 = v0;
  v2 = *(v0 + 192);
  v3 = sub_1A5FD3D5C();
  v5 = v4;
  v6 = *(*v2 + 192);
  v7 = v6();
  if (!*(v7 + 16))
  {
    goto LABEL_26;
  }

  v8 = v7;
  v9 = sub_1A5B0E2A4(v3, v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    if (sub_1A5FD484C() <= 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    v15 = sub_1A5FD412C();
    v35 = v6;
    v16 = *(v0 + 192);
    v17 = v16[2];
    v18 = (*(*v16 + 168))(v15);
    v19 = sub_1A5CD3BA4(v17, v18);
    *(v0 + 200) = v19;

    sub_1A5FD412C();
    if (v5)
    {
      v20 = sub_1A5FD484C();
    }

    else
    {
      v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      v5 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v21 = *(v1 + 32);
          goto LABEL_17;
        }

        __break(1u);
LABEL_26:

        __break(1u);
        return MEMORY[0x1EEE6DEC8](v34);
      }
    }

    else
    {
      __break(1u);
    }

    v21 = MEMORY[0x1AC554EE0](0, v1);
LABEL_17:
    v22 = v21;
    v23 = [v21 width];

    if (v5)
    {
      v24 = MEMORY[0x1AC554EE0](0, v1);
    }

    else
    {
      v24 = *(v1 + 32);
    }

    v25 = v24;
    v26 = *(v0 + 192);

    v27 = [v25 height];

    NormalizedRect.init(normalizedRect:)(*(v26 + 40));
    sub_1A5B0BCC4(&v36);
    v37 = v36;
    v40 = NormalizedRect.toImageCoordinates(_:origin:)(__PAIR128__(v27, v23), &v37);
    v41 = CGRectIntegral(v40);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    v35();
    v32 = sub_1A5FD3BDC();
    *(v0 + 208) = v32;

    *(v0 + 16) = v0;
    *(v0 + 56) = v11;
    *(v0 + 24) = sub_1A5CB65E8;
    v33 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4408);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A5C9CC60;
    *(v0 + 104) = &block_descriptor_2;
    *(v0 + 112) = v33;
    [v19 produceObservationsWithRegionOfInterest:v32 detectorProcessingOptions:x completionHandler:{y, width, height}];
    v34 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v34);
  }

  v11 = v0 + 144;
  sub_1A5B101D8(*(v8 + 56) + 32 * v9, v0 + 144);

  sub_1A5B101C8((v0 + 144), (v0 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0800);
  swift_dynamicCast();
  v1 = *(v0 + 176);
  v5 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_9;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_10;
  }

LABEL_5:

  v12 = *(v0 + 8);
  v13 = MEMORY[0x1E69E7CC0];

  return v12(v13);
}

uint64_t sub_1A5CB65E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1A5CB6768;
  }

  else
  {
    v2 = sub_1A5CB66F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5CB66F8()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1A5CB6768()
{
  v1 = v0[26];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A5CB6864()
{
  sub_1A5CBAF0C();

  return swift_deallocClassInstance();
}

uint64_t sub_1A5CB68D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[11] = AssociatedTypeWitness;
  v4[12] = *(AssociatedTypeWitness - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CB69B8, 0, 0);
}

uint64_t sub_1A5CB69B8()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v17 = v0[13];
  v5 = v0[8];
  v16 = *(v4 + 32);
  v16(v5, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 16))(v3, AssociatedConformanceWitness);
  v14 = v8;
  v15 = v7;
  v13 = v9;
  v10 = *(v2 + 8);
  v10(v1, v3);
  v16(v5, v4);
  (*(AssociatedConformanceWitness + 8))(v3, AssociatedConformanceWitness);
  v10(v17, v3);
  sub_1A5CD408C(v15, v14, v13, (v0 + 2));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  sub_1A5B4F9C8(v15, v14, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A5CB6BC8(uint64_t a1)
{
  v3 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5CBAAC8(a1);
  sub_1A5CB85BC(a1, v5, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() != 26)
  {
    return sub_1A5CB873C(v5, type metadata accessor for VisionResult);
  }

  v6 = *(v5 + 6);

  return (*(*v1 + 336))(v6);
}

uint64_t sub_1A5CB6CD4(void *a1, uint64_t a2)
{
  v4 = v2;
  result = sub_1A5CB8980(a1, a2);
  if (!v3)
  {
    sub_1A5B180A0(a1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46D0);
    if (swift_dynamicCast())
    {
      v7 = *(&v12 + 1);
      v8 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
      v9 = (*(v8 + 8))(v7, v8);
      result = __swift_destroy_boxed_opaque_existential_1(&v11);
      if (v9)
      {
        return (*(*v4 + 336))(v9);
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
      return sub_1A5B10168(&v11, &qword_1EB1F46D8);
    }
  }

  return result;
}

uint64_t sub_1A5CB6E14(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A5CB6E34, 0, 0);
}

uint64_t sub_1A5CB6E34()
{
  v1 = *((*(**(v0 + 32) + 328))() + 16);

  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = v3[2];
    v5 = (*(*v3 + 168))(v2);
    v6 = sub_1A5CD3BA4(v4, v5);
    *(v0 + 40) = v6;
    v10 = v6;
    v11 = *(v0 + 32);

    v12 = type metadata accessor for RecognizedObjectObservation();
    v13 = swift_task_alloc();
    *(v0 + 48) = v13;
    *(v13 + 16) = v11;
    *(v13 + 24) = v10;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1370);
    v15 = swift_task_alloc();
    *(v0 + 56) = v15;
    *v15 = v0;
    v15[1] = sub_1A5CB7070;

    return MEMORY[0x1EEE6DD58](v0 + 16, v12, v14, 0, 0, &unk_1A6022B48, v13, v12);
  }

  else
  {
    v7 = *(v0 + 8);
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

uint64_t sub_1A5CB7070()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1A5CB71F4;
  }

  else
  {

    v2 = sub_1A5CB718C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5CB718C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A5CB71F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5CB7260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46E0);
  v4[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46E8);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CB73AC, 0, 0);
}

uint64_t sub_1A5CB73AC()
{
  v1 = (*(**(v0 + 128) + 328))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = **(v0 + 120);
    v3 = type metadata accessor for RecognizedObjectObservation();
    v25 = *(*(v3 - 8) + 72);
    v4 = v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
    do
    {
      v27 = v2;
      v7 = *(v0 + 176);
      v8 = *(v0 + 184);
      v9 = *(v0 + 128);
      v10 = *(v0 + 136);
      v11 = swift_allocBox();
      sub_1A5CB85BC(v4, v12, type metadata accessor for RecognizedObjectObservation);
      v13 = sub_1A5FD40AC();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v8, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v11;
      v15[5] = v9;
      v15[6] = v10;
      sub_1A5BB8B94(v8, v7);
      LODWORD(v7) = (*(v14 + 48))(v7, 1, v13);

      v16 = v10;
      v17 = *(v0 + 176);
      if (v7 == 1)
      {
        sub_1A5B10168(*(v0 + 176), &unk_1EB1F30E0);
      }

      else
      {
        sub_1A5FD409C();
        (*(v14 + 8))(v17, v13);
      }

      if (v15[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1A5FD404C();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if (v20 | v18)
      {
        v5 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 184);
      *(v0 + 80) = 1;
      *(v0 + 88) = v5;
      *(v0 + 96) = v26;
      swift_task_create();

      sub_1A5B10168(v6, &unk_1EB1F30E0);

      v4 += v25;
      v2 = v27 - 1;
    }

    while (v27 != 1);
  }

  *(v0 + 192) = type metadata accessor for RecognizedObjectObservation();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
  sub_1A5FD413C();
  *(v0 + 200) = MEMORY[0x1E69E7CC0];
  v21 = swift_task_alloc();
  *(v0 + 208) = v21;
  *v21 = v0;
  v21[1] = sub_1A5CB77E4;
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);

  return MEMORY[0x1EEE6DAD8](v22, 0, 0, v23, v0 + 104);
}

uint64_t sub_1A5CB77E4()
{

  if (v0)
  {

    v1 = sub_1A5CB7B10;
  }

  else
  {
    v1 = sub_1A5CB78FC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A5CB78FC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = (*(*(v1 - 8) + 48))(v2, 1, v1);
  v4 = *(v0 + 200);
  if (v3 == 1)
  {
    v5 = *(v0 + 112);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    *v5 = v4;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 72) = v1;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    sub_1A5CB86D8(v2, boxed_opaque_existential_1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 200);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1A5CB84AC(0, *(v10 + 2) + 1, 1, *(v0 + 200));
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1A5CB84AC((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    sub_1A5B101C8((v0 + 48), &v10[32 * v12 + 32]);
    *(v0 + 200) = v10;
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_1A5CB77E4;
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);

    return MEMORY[0x1EEE6DAD8](v14, 0, 0, v15, v0 + 104);
  }
}

uint64_t sub_1A5CB7B10()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A5CB7BBC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A5B10404;

  return sub_1A5CB7260(a1, a2, v7, v6);
}

uint64_t sub_1A5CB7C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[51] = a5;
  v6[52] = a6;
  v6[50] = a1;
  type metadata accessor for RecognizedObjectObservation();
  v6[53] = swift_task_alloc();
  v6[54] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A5CB7D14, 0, 0);
}

uint64_t sub_1A5CB7D14()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  swift_beginAccess();
  sub_1A5CB85BC(v1, v2, type metadata accessor for RecognizedObjectObservation);
  v5 = sub_1A5BE92A0();
  *(v0 + 440) = v5;
  v6 = sub_1A5CB873C(v2, type metadata accessor for RecognizedObjectObservation);
  v7 = (*(*v4 + 192))(v6);
  v8 = sub_1A5FD3D5C();
  v10 = v9;
  *(v0 + 208) = sub_1A5B16F58(0, &qword_1EB1F4450);
  *(v0 + 184) = v5;
  sub_1A5B101C8((v0 + 184), (v0 + 216));
  v11 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC((v0 + 216), v8, v10, isUniquelyReferenced_nonNull_native);

  *(v0 + 448) = v7;
  v13 = v4[5];
  v14 = v4[6];
  v15 = v4[7];
  v16 = v4[8];
  v17 = sub_1A5FD3BDC();
  *(v0 + 456) = v17;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 384;
  *(v0 + 24) = sub_1A5CB7F9C;
  v18 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4408);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A5C9CC60;
  *(v0 + 104) = &block_descriptor_3;
  *(v0 + 112) = v18;
  [v3 produceObservationsWithRegionOfInterest:v17 detectorProcessingOptions:v0 + 80 completionHandler:{v13, v14, v15, v16}];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A5CB7F9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 464) = v1;
  if (v1)
  {

    v2 = sub_1A5CB8298;
  }

  else
  {
    v2 = sub_1A5CB80B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5CB80B4()
{
  v1 = *(v0 + 384);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 432);
    v4 = *(v0 + 440);
    v5 = *(v0 + 400);
    v6 = *(v0 + 408);
    sub_1A5B101D8(v1 + 32, v0 + 280);

    sub_1A5B101C8((v0 + 280), (v0 + 248));
    sub_1A5B16F58(0, &qword_1EB1F46F0);
    swift_dynamicCast();
    v7 = *(v0 + 392);

    (*(*v6 + 352))();
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v8);
    swift_beginAccess();
    (*(v9 + 16))(v3, v7, v8, v9);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v0 + 144);
    swift_beginAccess();
    sub_1A5CB85BC(v3, v5, type metadata accessor for RecognizedObjectObservation);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CB8298()
{
  v1 = v0[57];
  v2 = v0[55];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A5CB8324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1A5B180A0(a1, v7);
  v5 = sub_1A5CA15CC(a2);
  return sub_1A5B57ECC(v7, v5, 0, a3);
}

uint64_t sub_1A5CB83C4()
{
  v1 = (*(*v0 + 224))();
  if (*(v1 + 16))
  {
    sub_1A5B180A0(v1 + 32, v3);

    sub_1A5B063D4(v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46D0);
    return swift_dynamicCast();
  }

  else
  {

    __break(1u);
  }

  return result;
}

char *sub_1A5CB84AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A5CB85BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5CB8624(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A5B0CE78;

  return sub_1A5CB7C70(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A5CB86D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecognizedObjectObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5CB873C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5CB87C8(uint64_t a1)
{
  sub_1A5B180A0(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46F8);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v14, v17);
    sub_1A5B180A0(a1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4708);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      v3 = 0;
    }

    else
    {
      v4 = v1;
      v5 = v18;
      v6 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      sub_1A5BD9578(0, v5, v6);
      v8 = v7;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = v4;
      if (ObjCClassFromMetadata == swift_getObjCClassFromMetadata())
      {
        v11 = v18;
        v12 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v3 = sub_1A5BDA628(v10, v8, v11, v12);
      }

      else
      {

        v3 = 0;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
    return v3;
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    result = sub_1A5B10168(v14, &qword_1EB1F4700);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CB8980(void *a1, uint64_t a2)
{
  v4 = v2;
  sub_1A5B180A0(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46F8);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v29, v32);
    v7 = v33;
    v8 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    sub_1A5BDA80C(v4, a2, v7, v8);
    if (!v3)
    {
      v9 = a1[3];
      v27 = a1[4];
      v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
      v35 = &v25;
      v11 = *(v9 - 8);
      v12 = *(v11 + 64);
      v13 = MEMORY[0x1EEE9AC00](v10);
      v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = v11;
      v26 = *(v11 + 16);
      v26(v14, v13);
      v15 = (*(*v4 + 240))(v31);
      v17 = v16;
      v18 = *v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1A5B2053C(0, v18[2] + 1, 1, v18);
        v18 = isUniquelyReferenced_nonNull_native;
        *v17 = isUniquelyReferenced_nonNull_native;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1A5B2053C((v20 > 1), v21 + 1, 1, v18);
        *v17 = isUniquelyReferenced_nonNull_native;
      }

      v22 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      v23 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (v26)(v23, v14, v9, v22);
      sub_1A5B20684(v21, v23, v17, v9, *(v27 + 8));
      (*(v28 + 8))(v14, v9);
      v15(v31, 0);
    }

    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    result = sub_1A5B10168(v29, &qword_1EB1F4700);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CB8C84(void *a1)
{
  v3 = v2;
  v4 = v1;
  sub_1A5B180A0(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46F8);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v27, v30);
    v6 = v31;
    v7 = v32;
    v8 = __swift_project_boxed_opaque_existential_1(v30, v31);

    v10 = v6;
    v11 = v8;
    v12 = sub_1A5BD9578(v9, v10, v7);
    v14 = v13;

    if (!v3)
    {
      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      v17 = (*(v16 + 80))(v15, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = v31;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v25 = sub_1A5BDA08C(v24);
      v11 = (*(v4 + 160))(v12, v14, v25, v17, v19, v21, v23);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v11;
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    result = sub_1A5B10168(v27, &qword_1EB1F4700);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CB8EA0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  v15 = *v14;
  *(v14 + 80) = MEMORY[0x1E69E7CC0];
  *(v14 + 88) = 0;
  v16 = (*(v15 + 216))(a2);
  *(v14 + 16) = a1;
  *(v14 + 24) = v16;
  *(v14 + 32) = v16;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;
  *(v14 + 72) = a3;

  return v14;
}

double *sub_1A5CB8F90(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = sub_1A5CBB5A8(a1, a2, a3, a4, a5, a6, a7);

  return v7;
}

uint64_t sub_1A5CB8FFC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1A5CB9044()
{
  v0 = sub_1A5FD3D5C();
  v2 = v1;

  sub_1A5B0E4A0(v0, v2, v5);

  sub_1A5B10168(v5, &qword_1EB1F2E50);
  v3 = sub_1A5FD3D5C();
  sub_1A5B0E4A0(v3, v4, v5);

  sub_1A5B10168(v5, &qword_1EB1F2E50);
}

uint64_t sub_1A5CB9148(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

void *sub_1A5CB91E0()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_1A5CB9228(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_1A5CB92C0(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A5CB92E0, 0, 0);
}

uint64_t sub_1A5CB92E0()
{
  v1 = sub_1A5FD412C();
  v2 = v0[20];
  v3 = v2[2];
  v4 = (*(*v2 + 168))(v1);
  v5 = sub_1A5CD3BA4(v3, v4);
  v0[21] = v5;

  v6 = sub_1A5FD412C();
  v7 = v0[20];
  v8 = v7[5];
  v9 = v7[6];
  v10 = v7[7];
  v11 = v7[8];
  (*(*v7 + 192))(v6);
  v12 = sub_1A5FD3BDC();
  v0[22] = v12;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A5CB9548;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4408);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A5C9CC60;
  v0[13] = &block_descriptor_4;
  v0[14] = v13;
  [v5 produceObservationsWithRegionOfInterest:v12 detectorProcessingOptions:v0 + 10 completionHandler:{v8, v9, v10, v11}];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A5CB9548()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1A5CB96C8;
  }

  else
  {
    v2 = sub_1A5CB9658;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5CB9658()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1A5CB96C8()
{
  v1 = v0[22];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A5CB9740@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1A5B180A0(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46F8);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v14, v16);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(a3 + 40);
    v19[0] = *(a3 + 24);
    v19[1] = v10;
    v19[2] = *(a3 + 56);
    v20 = *(a3 + 72);
    (*(v9 + 32))(a2, v19, v8, v9);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4508);
    v11 = sub_1A5FD480C();

    sub_1A5B180A0(a1, v14);
    v12 = sub_1A5C9FFD8(v11);

    sub_1A5B57ECC(v14, v12, 0, a4);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1A5B10168(v14, &qword_1EB1F4700);
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    sub_1A5FD46AC();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1A5FD4AEC();
    MEMORY[0x1AC554600](0xD00000000000001BLL, 0x80000001A6059A10);
    result = sub_1A5FD483C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CB99AC(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *(type metadata accessor for VisionResult(0) - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CB9A80, 0, 0);
}

uint64_t sub_1A5CB9A80()
{
  v1 = (*(**(v0 + 264) + 248))();
  if (v1)
  {
    v2 = v1;
    v3 = swift_willThrow();
    v4 = (*(**(v0 + 264) + 224))(v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v0 + 272);
      v34 = MEMORY[0x1E69E7CC0];
      sub_1A5C9E2C4(0, v5, 0);
      v7 = v34;
      v8 = v4 + 32;
      do
      {
        v9 = *(v0 + 280);
        sub_1A5B180A0(v8, v0 + 16);
        sub_1A5B180A0(v0 + 16, v0 + 56);
        v10 = v2;
        sub_1A5B57ECC(v0 + 56, 0, v2, v9);
        __swift_destroy_boxed_opaque_existential_1(v0 + 16);
        v12 = *(v34 + 16);
        v11 = *(v34 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A5C9E2C4(v11 > 1, v12 + 1, 1);
        }

        v13 = *(v0 + 280);
        *(v34 + 16) = v12 + 1;
        sub_1A5B20B18(v13, v34 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12);
        v8 += 40;
        --v5;
      }

      while (v5);

      v14 = *(v34 + 16);
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
      v14 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v14)
      {
LABEL_19:

        v31 = *(v0 + 8);

        return v31(v7);
      }
    }

    v19 = *(v0 + 272);
    v20 = v7 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = *(v19 + 72);

    v22 = &qword_1EB1EEA80;
    v23 = &unk_1A5FFD120;
    v33 = v21;
    do
    {
      sub_1A5B166B4(v20, *(v0 + 288));
      sub_1A5B5C574((v0 + 136));
      __swift_instantiateConcreteTypeFromMangledNameV2(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46F8);
      v24 = swift_dynamicCast();
      v25 = *(v0 + 288);
      if (v24)
      {
        v26 = v23;
        v27 = v22;
        v28 = *(v0 + 264);
        sub_1A5B063D4((v0 + 176), v0 + 96);
        v30 = *(v0 + 120);
        v29 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), v30);
        (*(v29 + 72))(v25, v28, v30, v29);
        sub_1A5B16718(*(v0 + 288));
        __swift_destroy_boxed_opaque_existential_1(v0 + 96);
        v22 = v27;
        v23 = v26;
        v21 = v33;
      }

      else
      {
        sub_1A5B16718(*(v0 + 288));
        *(v0 + 176) = 0u;
        *(v0 + 192) = 0u;
        *(v0 + 208) = 0;
        sub_1A5B10168(v0 + 176, &qword_1EB1F4700);
      }

      v20 += v21;
      --v14;
    }

    while (v14);

    goto LABEL_19;
  }

  v15 = *(**(v0 + 264) + 272);
  v32 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v0 + 304) = v16;
  *v16 = v0;
  v16[1] = sub_1A5CB9F10;
  v17 = *(v0 + 256);

  return v32(v17);
}

uint64_t sub_1A5CB9F10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_1A5CBA3A4;
  }

  else
  {
    v4 = sub_1A5CBA024;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A5CBA024()
{
  v26 = (*(**(v0 + 264) + 224))();
  v1 = *(v26 + 16);
  if (!v1)
  {

    v4 = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A5C9E2C4(0, v1, 0);
  v4 = v28;
  v5 = *(*v2 + 280);
  v6 = v26 + 32;
  do
  {
    v7 = *(v0 + 312);
    v8 = *(v0 + 256);
    sub_1A5B180A0(v6, v0 + 216);
    v5(v0 + 216, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v0 + 216);
    v10 = *(v28 + 16);
    v9 = *(v28 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1A5C9E2C4(v9 > 1, v10 + 1, 1);
    }

    v11 = *(v0 + 296);
    *(v28 + 16) = v10 + 1;
    sub_1A5B20B18(v11, v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10);
    v6 += 40;
    --v1;
  }

  while (v1);

  v12 = *(v28 + 16);
  if (v12)
  {
LABEL_9:
    v13 = *(v0 + 320);
    v14 = *(v0 + 272);
    v15 = v4 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);

    v17 = &qword_1EB1EEA80;
    v27 = v16;
    do
    {
      sub_1A5B166B4(v15, *(v0 + 288));
      sub_1A5B5C574((v0 + 136));
      __swift_instantiateConcreteTypeFromMangledNameV2(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46F8);
      v18 = swift_dynamicCast();
      v19 = *(v0 + 288);
      if (v18)
      {
        v20 = v17;
        v21 = *(v0 + 264);
        sub_1A5B063D4((v0 + 176), v0 + 96);
        v22 = *(v0 + 120);
        v23 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), v22);
        (*(v23 + 72))(v19, v21, v22, v23);
        if (v13)
        {
        }

        sub_1A5B16718(*(v0 + 288));
        __swift_destroy_boxed_opaque_existential_1(v0 + 96);
        v13 = 0;
        v17 = v20;
        v16 = v27;
      }

      else
      {
        sub_1A5B16718(*(v0 + 288));
        *(v0 + 176) = 0u;
        *(v0 + 192) = 0u;
        *(v0 + 208) = 0;
        sub_1A5B10168(v0 + 176, &qword_1EB1F4700);
      }

      v15 += v16;
      --v12;
    }

    while (v12);
  }

LABEL_17:

  v24 = *(v0 + 8);

  return v24(v4);
}

uint64_t sub_1A5CBA3A4()
{
  v1 = *(v0 + 320);
  v2 = (*(**(v0 + 264) + 224))();
  v3 = *(v2 + 16);
  if (!v3)
  {

    v5 = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v4 = *(v0 + 272);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A5C9E2C4(0, v3, 0);
  v5 = v28;
  v6 = v2 + 32;
  do
  {
    v7 = *(v0 + 280);
    sub_1A5B180A0(v6, v0 + 16);
    sub_1A5B180A0(v0 + 16, v0 + 56);
    v8 = v1;
    sub_1A5B57ECC(v0 + 56, 0, v1, v7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v10 = *(v28 + 16);
    v9 = *(v28 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1A5C9E2C4(v9 > 1, v10 + 1, 1);
    }

    v11 = *(v0 + 280);
    *(v28 + 16) = v10 + 1;
    sub_1A5B20B18(v11, v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10);
    v6 += 40;
    --v3;
  }

  while (v3);

  v12 = *(v28 + 16);
  if (v12)
  {
LABEL_9:
    v13 = *(v0 + 272);
    v14 = v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);

    v16 = &qword_1EB1EEA80;
    v17 = &unk_1A5FFD120;
    v27 = v15;
    do
    {
      sub_1A5B166B4(v14, *(v0 + 288));
      sub_1A5B5C574((v0 + 136));
      __swift_instantiateConcreteTypeFromMangledNameV2(v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46F8);
      v18 = swift_dynamicCast();
      v19 = *(v0 + 288);
      if (v18)
      {
        v20 = v17;
        v21 = v16;
        v22 = *(v0 + 264);
        sub_1A5B063D4((v0 + 176), v0 + 96);
        v24 = *(v0 + 120);
        v23 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), v24);
        (*(v23 + 72))(v19, v22, v24, v23);
        sub_1A5B16718(*(v0 + 288));
        __swift_destroy_boxed_opaque_existential_1(v0 + 96);
        v16 = v21;
        v17 = v20;
        v15 = v27;
      }

      else
      {
        sub_1A5B16718(*(v0 + 288));
        *(v0 + 176) = 0u;
        *(v0 + 192) = 0u;
        *(v0 + 208) = 0;
        sub_1A5B10168(v0 + 176, &qword_1EB1F4700);
      }

      v14 += v15;
      --v12;
    }

    while (v12);
  }

LABEL_15:

  v25 = *(v0 + 8);

  return v25(v5);
}