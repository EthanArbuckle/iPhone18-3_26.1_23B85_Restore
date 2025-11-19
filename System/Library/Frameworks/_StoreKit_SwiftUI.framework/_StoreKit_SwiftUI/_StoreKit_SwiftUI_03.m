void sub_23B9B8584()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E199740, &unk_23BBE8208);
  v8 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void *sub_23B9B865C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0);
  v4 = OUTLINED_FUNCTION_42();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_12_5();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_23B9B86C4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

size_t sub_23B9B8734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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
    return MEMORY[0x277D84F90];
  }

  v8 = OUTLINED_FUNCTION_44(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  v9 = OUTLINED_FUNCTION_24_2();
  v10 = a5(v9);
  OUTLINED_FUNCTION_25_0(v10);
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

char *sub_23B9B8820(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_23B9B8860(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_19();
  if (v9 < v8 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4), OUTLINED_FUNCTION_4_1(), v5 + *(v10 + 72) * v4 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    OUTLINED_FUNCTION_13_5();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_13_5();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_23B9B8930(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_19();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_4_1(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_13_5();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_13_5();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_23B9B89EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_23BBE7F20;
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

void sub_23B9B8AC8()
{
  OUTLINED_FUNCTION_10_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_5_8();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_17_4();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_25_0(v17);
  v19 = *(v18 + 72);
  v20 = OUTLINED_FUNCTION_36();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v0 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v0) / v19);
LABEL_18:
  v6(0);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v10)
  {
    sub_23B9B8930(v8 + v23, v15, v20 + v23, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_9_1();
}

void *sub_23B9B8C34(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199678);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_23B9B8DA8()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0);
    v7 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_5();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23B9B8E78()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996C0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_23B9B8F64()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996D8);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_23B9B90A4()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199720);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v2] <= v9)
    {
      memmove(v9, v10, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23B9B9210()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199768);
    v7 = OUTLINED_FUNCTION_42();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199770);
    swift_arrayInitWithCopy();
  }
}

void sub_23B9B933C()
{
  OUTLINED_FUNCTION_10_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (v9)
  {
    OUTLINED_FUNCTION_5_8();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_17_4();
      if (v11)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v10 = v1;
  }

  v13 = *(v6 + 16);
  if (v10 <= v13)
  {
    v14 = *(v6 + 16);
  }

  else
  {
    v14 = v10;
  }

  if (!v14)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  v15 = OUTLINED_FUNCTION_16_4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v15);
  OUTLINED_FUNCTION_25_0(v16);
  v18 = *(v17 + 72);
  v19 = OUTLINED_FUNCTION_36();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v0 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v13;
  v19[3] = 2 * ((v20 - v0) / v18);
LABEL_18:
  v22 = OUTLINED_FUNCTION_16_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v22);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v8)
  {
    sub_23B9B8860(v6 + v23, v13, v19 + v23, v4);
    *(v6 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9B94E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  sub_23BBDDBB8();
  v9 = a4 & 1;
  OUTLINED_FUNCTION_56();
  sub_23BBA88EC(v10, v11, v12, a4 & 1);
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_41();
  v15 = v14 & ~v13;
  if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v34;
    v23 = OUTLINED_FUNCTION_46();
    sub_23B9BDCD4(v23, v24, v9);
    v25 = OUTLINED_FUNCTION_46();
    sub_23B9BAAB8(v25, v26, v9, v15, isUniquelyReferenced_nonNull_native);
    *v34 = v36;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v9;
    return 1;
  }

  v16 = ~v13;
  v17 = *(v8 + 48);
  while (1)
  {
    v18 = (v17 + 24 * v15);
    v19 = *v18;
    v20 = v18[1];
    if (v18[2])
    {
      break;
    }

    if ((a4 & 1) == 0 && v19 == a2 && ((v20 ^ a3) & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v15 = (v15 + 1) & v16;
    if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = v19 == a2 && v20 == a3;
  if (!v21 && (sub_23BBDDA88() & 1) == 0)
  {
    goto LABEL_14;
  }

  v28 = OUTLINED_FUNCTION_46();
  sub_23B979A38(v28, v29, 1);
LABEL_17:
  v30 = *(v8 + 48) + 24 * v15;
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  *a1 = *v30;
  *(a1 + 8) = v32;
  *(a1 + 16) = v33;
  sub_23B9BDCD4(v31, v32, v33);
  return 0;
}

void sub_23B9B9680()
{
  OUTLINED_FUNCTION_61();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  sub_23BBDDBB8();
  sub_23BBDD078();
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_41();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v11);
    v13 = *v12 == v4 && v12[1] == v2;
    if (v13 || (sub_23BBDDA88() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v11);
      v15 = v14[1];
      *v6 = *v14;
      v6[1] = v15;

      goto LABEL_11;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;

  sub_23B9BAC7C(v4, v2, v11, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  *v6 = v4;
  v6[1] = v2;
LABEL_11:
  OUTLINED_FUNCTION_60();
}

void sub_23B9B97B0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v27 = v3;
  v4 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v26 = v0;
  v11 = *v0;
  OUTLINED_FUNCTION_1_11();
  sub_23B9BD93C(v12, v13);
  sub_23BBDCE58();
  v28 = v11;
  v29 = v11 + 56;
  OUTLINED_FUNCTION_41();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v29 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_56();
      v24();
      v30 = *v26;
      sub_23B9BADE4(v10, v17, isUniquelyReferenced_nonNull_native);
      *v26 = v30;
      OUTLINED_FUNCTION_56();
      v25();
      goto LABEL_7;
    }

    v18 = v6[9] * v17;
    v19 = v6[2];
    v19(v10, *(v28 + 48) + v18, v4);
    OUTLINED_FUNCTION_1_11();
    sub_23B9BD93C(&qword_27E1996F0, v20);
    v21 = sub_23BBDCF38();
    v22 = v6[1];
    v22(v10, v4);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v22(v2, v4);
  v19(v27, *(v28 + 48) + v18, v4);
LABEL_7:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9B9A28(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BBDDBB8();
  sub_23BBCAB34(a2);
  sub_23BBDD078();

  v6 = sub_23BBDDBF8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = 0xE700000000000000;
      v11 = 0x746E6572727563;
      switch(*(*(v5 + 48) + v8))
      {
        case 1:
          v11 = 0x646172676E776F64;
          v10 = 0xE900000000000065;
          break;
        case 2:
          v11 = 0x61726773736F7263;
          v10 = 0xEA00000000006564;
          break;
        case 3:
          v11 = 0x65646172677075;
          break;
        case 4:
          v10 = 0xE300000000000000;
          v11 = 7105633;
          break;
        default:
          break;
      }

      v12 = 0xE700000000000000;
      v13 = 0x746E6572727563;
      switch(a2)
      {
        case 1:
          v13 = 0x646172676E776F64;
          v12 = 0xE900000000000065;
          break;
        case 2:
          v13 = 0x61726773736F7263;
          v12 = 0xEA00000000006564;
          break;
        case 3:
          v13 = 0x65646172677075;
          break;
        case 4:
          v12 = 0xE300000000000000;
          v13 = 7105633;
          break;
        default:
          break;
      }

      if (v11 == v13 && v10 == v12)
      {
        break;
      }

      v15 = sub_23BBDDA88();

      if (v15)
      {
        goto LABEL_21;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_23B9BB070(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_23B9B9CD0(double *a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_23BBDDBA8();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    v11 = *(*(v6 + 48) + 8 * v9);
    if (v11 == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  sub_23B9BB364(v9, isUniquelyReferenced_nonNull_native, a2);
  *v3 = v14;
  v11 = a2;
LABEL_6:
  result = v10 == 0;
  *a1 = v11;
  return result;
}

uint64_t sub_23B9B9DBC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997E0);
  result = sub_23BBDD738();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_30:

    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      sub_23B9B89EC(0, (v28 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    sub_23BBDDBB8();
    if (v18)
    {
      MEMORY[0x23EEB63A0](1);
      sub_23BBDD078();
    }

    else
    {
      MEMORY[0x23EEB63A0](0);
      MEMORY[0x23EEB63C0](v16);
      sub_23BBDDBD8();
    }

    result = sub_23BBDDBF8();
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v4 + 48) + 24 * v22;
    *v27 = v16;
    *(v27 + 8) = v17;
    *(v27 + 16) = v18;
    ++*(v4 + 16);
    v2 = v29;
    if (!v9)
    {
      goto LABEL_7;
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
    v26 = *(v11 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23B9BA060()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199670);
  result = sub_23BBDD738();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_23B9B89EC(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_23BBDDBB8();
    sub_23BBDD078();
    result = sub_23BBDDBF8();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_23B9BA2BC()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v36 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v35 = v6 - v5;
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996E0);
  OUTLINED_FUNCTION_16_4();
  v8 = sub_23BBDD738();
  if (!*(v7 + 16))
  {
LABEL_24:

    *v1 = v8;
    OUTLINED_FUNCTION_9_1();
    return;
  }

  v32 = v7;
  v9 = 0;
  v10 = (v7 + 56);
  OUTLINED_FUNCTION_33();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v8 + 56;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v9 >= v15)
      {
        break;
      }

      ++v18;
      if (v10[v9])
      {
        OUTLINED_FUNCTION_34();
        v13 = v20 & v19;
        goto LABEL_9;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      sub_23B9B89EC(0, (v30 + 63) >> 6, v10);
    }

    else
    {
      OUTLINED_FUNCTION_41();
      *v10 = v31;
    }

    v1 = v0;
    *(v7 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_9:
    v33 = *(v3 + 72);
    v34 = *(v3 + 32);
    v34(v35, *(v7 + 48) + v33 * (v17 | (v9 << 6)), v36);
    OUTLINED_FUNCTION_1_11();
    sub_23B9BD93C(&qword_27E1996E8, v21);
    sub_23BBDCE58();
    OUTLINED_FUNCTION_52();
    if (((v24 << v23) & ~*(v16 + 8 * v22)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_47();
LABEL_18:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v34(*(v8 + 48) + v25 * v33, v35, v36);
    ++*(v8 + 16);
    v7 = v32;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_45();
  while (++v26 != v28 || (v27 & 1) == 0)
  {
    v29 = v26 == v28;
    if (v26 == v28)
    {
      v26 = 0;
    }

    v27 |= v29;
    if (*(v16 + 8 * v26) != -1)
    {
      OUTLINED_FUNCTION_59();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_23B9BA58C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199788);
  v3 = sub_23BBDD738();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    if (v9)
    {
LABEL_6:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x23B9BA870);
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
LABEL_12:
        v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
        sub_23BBDDBB8();
        sub_23BBDD078();

        v16 = sub_23BBDDBF8();
        v17 = -1 << *(v4 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v22 && (v21 & 1) != 0)
            {
              goto LABEL_29;
            }

            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v11 + 8 * v19);
          }

          while (v24 == -1);
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        }

        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v4 + 48) + v20) = v15;
        ++*(v4 + 16);
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_23B9B89EC(0, (v25 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_23B9BA884()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199818);
  result = sub_23BBDD738();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_23B9B89EC(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_23BBDDBA8();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23B9BAAB8(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_23B9B9DBC();
    }

    else
    {
      if (v12 > v11)
      {
        result = sub_23B9BB47C();
        goto LABEL_22;
      }

      sub_23B9BBBC0();
    }

    v13 = *v5;
    sub_23BBDDBB8();
    sub_23BBA88EC(v26, v10, a2, a3 & 1);
    result = sub_23BBDDBF8();
    v14 = v13 + 56;
    v15 = -1 << *(v13 + 32);
    a4 = result & ~v15;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v16 = ~v15;
      v17 = *(v13 + 48);
      do
      {
        v18 = v17 + 24 * a4;
        result = *v18;
        v19 = *(v18 + 8);
        if (*(v18 + 16))
        {
          if (a3)
          {
            if (result == v10 && v19 == a2)
            {
              goto LABEL_25;
            }

            result = sub_23BBDDA88();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if ((a3 & 1) == 0 && result == v10 && ((v19 ^ a2) & 1) == 0)
        {
          goto LABEL_25;
        }

        a4 = (a4 + 1) & v16;
      }

      while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_22:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v10;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3 & 1;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_25:
    result = sub_23BBDDAD8();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_23B9BAC7C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_23B9BA060();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_23B9BBE3C();
LABEL_10:
      v15 = *v4;
      sub_23BBDDBB8();
      sub_23BBDD078();
      result = sub_23BBDDBF8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_23BBDDA88() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_23B9BB5E0();
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
    result = sub_23BBDDAD8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_23B9BADE4(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_23BBDC9A8();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23B9BA2BC();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_23B9BC090();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_23B9BD93C(&qword_27E1996E8, MEMORY[0x277CDD1B0]);
      v14 = sub_23BBDCE58();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_23B9BD93C(&qword_27E1996F0, MEMORY[0x277CDD1B0]);
        v16 = sub_23BBDCF38();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_23B9BB738();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23BBDDAD8();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_23B9BB070(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23B9BA58C();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_23B9BB940();
        goto LABEL_26;
      }

      sub_23B9BC328();
    }

    v9 = *v3;
    sub_23BBDDBB8();
    sub_23BBCAB34(v6);
    sub_23BBDD078();

    result = sub_23BBDDBF8();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (1)
      {
        v12 = 0xE700000000000000;
        v13 = 0x746E6572727563;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0x646172676E776F64;
            v12 = 0xE900000000000065;
            break;
          case 2:
            v13 = 0x61726773736F7263;
            v12 = 0xEA00000000006564;
            break;
          case 3:
            v13 = 0x65646172677075;
            break;
          case 4:
            v12 = 0xE300000000000000;
            v13 = 7105633;
            break;
          default:
            break;
        }

        v14 = 0xE700000000000000;
        v15 = 0x746E6572727563;
        switch(v6)
        {
          case 1:
            v15 = 0x646172676E776F64;
            v14 = 0xE900000000000065;
            break;
          case 2:
            v15 = 0x61726773736F7263;
            v14 = 0xEA00000000006564;
            break;
          case 3:
            v15 = 0x65646172677075;
            break;
          case 4:
            v14 = 0xE300000000000000;
            v15 = 7105633;
            break;
          default:
            break;
        }

        if (v13 == v15 && v12 == v14)
        {
          break;
        }

        v17 = sub_23BBDDA88();

        if (v17)
        {
          goto LABEL_30;
        }

        a2 = (a2 + 1) & v11;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_29:

LABEL_30:
      sub_23BBDDAD8();
      __break(1u);
      JUMPOUT(0x23B9BB33CLL);
    }
  }

LABEL_26:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  *(v18 + 16) = v21;
  return result;
}

uint64_t sub_23B9BB364(uint64_t result, char a2, double a3)
{
  v4 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_23B9BA884();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_23B9BC5F0();
LABEL_10:
      v12 = *v3;
      result = sub_23BBDDBA8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v4 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * v4) == a3)
        {
          goto LABEL_15;
        }

        result = v4 + 1;
      }
    }

    result = sub_23B9BBA80();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (v4 >> 6) + 56) |= 1 << v4;
  *(*(v8 + 48) + 8 * v4) = a3;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_23BBDDAD8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_23B9BB47C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997E0);
  v2 = *v0;
  v3 = sub_23BBDD728();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + 8 * v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_23B9BDCD4(v19, v20, v21);
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

void *sub_23B9BB5E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199670);
  v2 = *v0;
  v3 = sub_23BBDD728();
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

void sub_23B9BB738()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v2 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996E0);
  v9 = *v0;
  v10 = sub_23BBDD728();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v1;
    v12 = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || v12 >= v9 + 56 + 8 * v13)
    {
      memmove(v12, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v24 = *(v4 + 72) * (v20 | (v15 << 6));
      (*(v4 + 16))(v8, *(v9 + 48) + v24, v2);
      (*(v4 + 32))(*(v11 + 48) + v24, v8, v2);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v1 = v25;
        goto LABEL_21;
      }

      ++v21;
      if (*(v9 + 56 + 8 * v15))
      {
        OUTLINED_FUNCTION_34();
        v18 = v23 & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v11;
    OUTLINED_FUNCTION_9_1();
  }
}

void *sub_23B9BB940()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199788);
  v2 = *v0;
  v3 = sub_23BBDD728();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_23B9BBA80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199818);
  v2 = *v0;
  v3 = sub_23BBDD728();
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

uint64_t sub_23B9BBBC0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997E0);
  result = sub_23BBDD738();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_23BBDDBB8();
        if (v18)
        {
          MEMORY[0x23EEB63A0](1);

          sub_23BBDD078();
        }

        else
        {
          MEMORY[0x23EEB63A0](0);
          MEMORY[0x23EEB63C0](v16);
          sub_23BBDDBD8();
        }

        result = sub_23BBDDBF8();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v4 + 48) + 24 * v22;
        *v27 = v16;
        *(v27 + 8) = v17;
        *(v27 + 16) = v18;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
        {
          goto LABEL_7;
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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_28;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_23B9BBE3C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199670);
  result = sub_23BBDD738();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_23BBDDBB8();

        sub_23BBDD078();
        result = sub_23BBDDBF8();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_23B9BC090()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v36 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996E0);
  v9 = sub_23BBDD738();
  if (*(v8 + 16))
  {
    v10 = 0;
    v11 = v8 + 56;
    OUTLINED_FUNCTION_33();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    v35 = v3;
    v18 = v9 + 56;
    v33 = (v3 + 32);
    v34 = v12;
    if ((v14 & v13) != 0)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_9:
        v23 = *(v35 + 72);
        (*(v35 + 16))(v7, *(v12 + 48) + v23 * (v19 | (v10 << 6)), v36);
        OUTLINED_FUNCTION_1_11();
        sub_23B9BD93C(&qword_27E1996E8, v24);
        sub_23BBDCE58();
        OUTLINED_FUNCTION_52();
        if (((v27 << v26) & ~*(v18 + 8 * v25)) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_47();
LABEL_18:
        *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        (*v33)(*(v9 + 48) + v28 * v23, v7, v36);
        ++*(v9 + 16);
        v12 = v34;
        if (!v15)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_45();
      while (++v29 != v31 || (v30 & 1) == 0)
      {
        v32 = v29 == v31;
        if (v29 == v31)
        {
          v29 = 0;
        }

        v30 |= v32;
        if (*(v18 + 8 * v29) != -1)
        {
          OUTLINED_FUNCTION_59();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v20 = v10;
      while (1)
      {
        v10 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v10 >= v17)
        {

          v1 = v0;
          goto LABEL_22;
        }

        ++v20;
        if (*(v11 + 8 * v10))
        {
          OUTLINED_FUNCTION_34();
          v15 = v22 & v21;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v1 = v9;
    OUTLINED_FUNCTION_9_1();
  }
}

uint64_t sub_23B9BC328()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199788);
  v3 = sub_23BBDD738();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    if (v8)
    {
LABEL_6:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        JUMPOUT(0x23B9BC5DCLL);
      }

      if (v5 >= v9)
      {
        break;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_23BBDDBB8();
        sub_23BBDD078();

        v15 = sub_23BBDDBF8();
        v16 = -1 << *(v4 + 32);
        v17 = v15 & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              goto LABEL_27;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v10 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v10 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v4 + 48) + v19) = v14;
        ++*(v4 + 16);
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_23B9BC5F0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199818);
  result = sub_23BBDD738();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_23BBDDBA8();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23B9BC864(uint64_t (*a1)(__int128 *, _BYTE *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_23B9BC7EC(v5);
  }

  result = sub_23B9BC8E8(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_23B9BC8E8(uint64_t (*a1)(__int128 *, _BYTE *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_23BBDDA18();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199678);
        v9 = sub_23BBDD288();
        *(v9 + 16) = v8;
      }

      v10[0] = (v9 + 32);
      v10[1] = v8;
      sub_23B9BCB88(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_23B9BCA5C(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_23B9BC9FC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_1_4();
  (*v3)(a2);
  return a2;
}

uint64_t sub_23B9BCA5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, _BYTE *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_23B9BC9FC(v9, v17);
      sub_23B9BC9FC(v9 - 40, v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_23B98473C(v9, v17);
        v12 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v12;
        *(v9 + 32) = *(v9 - 8);
        result = sub_23B98473C(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_23B9BCB88(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v109 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    __dst = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_95;
    }

    goto LABEL_137;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if ((v9 + 1) >= v8)
    {
      goto LABEL_24;
    }

    v13 = *a3;
    v14 = (v9 + 1);
    sub_23B9BC9FC(*a3 + 40 * (v9 + 1), v108);
    sub_23B9BC9FC(v13 + 40 * v11, v107);
    v15 = a4(v108, v107);
    if (v7)
    {
LABEL_105:
      __swift_destroy_boxed_opaque_existential_1(v107);
      __swift_destroy_boxed_opaque_existential_1(v108);
      goto LABEL_106;
    }

    v16 = v15;
    v101 = v10;
    __swift_destroy_boxed_opaque_existential_1(v107);
    __swift_destroy_boxed_opaque_existential_1(v108);
    v17 = v13 + 40 * v11;
    v18 = v11;
    v19 = 40 * v11;
    v20 = v17 + 80;
    __dst = v18;
    v21 = v18 + 2;
    v12 = v14;
    while (1)
    {
      v22 = v12;
      v23 = v21;
      if (v12 + 1 >= v8)
      {
        break;
      }

      sub_23B9BC9FC(v20, v108);
      sub_23B9BC9FC(v20 - 40, v107);
      v24 = a4(v108, v107);
      __swift_destroy_boxed_opaque_existential_1(v107);
      __swift_destroy_boxed_opaque_existential_1(v108);
      v20 += 40;
      ++v12;
      v21 = (v23 + 1);
      if ((v16 ^ v24))
      {
        if (v16)
        {
          goto LABEL_9;
        }

LABEL_13:
        v10 = v101;
LABEL_23:
        v11 = __dst;
        goto LABEL_24;
      }
    }

    v12 = v8;
    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v12 < __dst)
    {
      goto LABEL_131;
    }

    if (__dst <= v22)
    {
      if (v8 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v8;
      }

      v26 = v12;
      v27 = 40 * v25 - 40;
      v28 = v26;
      v29 = __dst;
      v10 = v101;
      do
      {
        if (v29 != --v26)
        {
          v30 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          v31 = v30 + v19;
          v32 = v30 + v27;
          sub_23B98473C((v30 + v19), v108);
          v33 = *(v32 + 32);
          v34 = *(v32 + 16);
          *v31 = *v32;
          *(v31 + 16) = v34;
          *(v31 + 32) = v33;
          sub_23B98473C(v108, v32);
        }

        ++v29;
        v27 -= 40;
        v19 += 40;
      }

      while (v29 < v26);
      v12 = v28;
      goto LABEL_23;
    }

    v10 = v101;
    v11 = __dst;
LABEL_24:
    v35 = a3[1];
    if (v12 < v35)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_127;
      }

      if (v12 - v11 < a6)
      {
        v36 = &v11[a6];
        if (!__OFADD__(v11, a6))
        {
          if (v36 >= v35)
          {
            v36 = a3[1];
          }

          if (v36 < v11)
          {
            goto LABEL_130;
          }

          if (v12 != v36)
          {
            v81 = *a3;
            v82 = *a3 + 40 * v12;
            __dst = v11;
            v83 = &v11[-v12];
            v97 = v36;
            do
            {
              v98 = v83;
              v103 = v82;
              do
              {
                sub_23B9BC9FC(v82, v108);
                sub_23B9BC9FC(v82 - 40, v107);
                v84 = a4(v108, v107);
                if (v7)
                {
                  goto LABEL_105;
                }

                v85 = v84;
                __swift_destroy_boxed_opaque_existential_1(v107);
                __swift_destroy_boxed_opaque_existential_1(v108);
                if ((v85 & 1) == 0)
                {
                  break;
                }

                if (!v81)
                {
                  goto LABEL_134;
                }

                sub_23B98473C(v82, v108);
                v86 = *(v82 - 24);
                *v82 = *(v82 - 40);
                *(v82 + 16) = v86;
                *(v82 + 32) = *(v82 - 8);
                sub_23B98473C(v108, v82 - 40);
                v82 -= 40;
              }

              while (!__CFADD__(v83++, 1));
              ++v12;
              v82 = v103 + 40;
              v83 = v98 - 1;
            }

            while (v12 != v97);
            v12 = v97;
            v11 = __dst;
          }

          goto LABEL_32;
        }

        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
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
        return;
      }
    }

LABEL_32:
    if (v12 < v11)
    {
      goto LABEL_126;
    }

    v102 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B9B7D34();
      v10 = v88;
    }

    v37 = *(v10 + 16);
    v38 = v37 + 1;
    if (v37 >= *(v10 + 24) >> 1)
    {
      sub_23B9B7D34();
      v10 = v89;
    }

    *(v10 + 16) = v38;
    v39 = v10 + 32;
    v40 = (v10 + 32 + 16 * v37);
    *v40 = v11;
    v40[1] = v102;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v37)
    {
      break;
    }

LABEL_81:
    v8 = a3[1];
    v9 = v102;
    if (v102 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v41 = v38 - 1;
    v42 = (v39 + 16 * (v38 - 1));
    v43 = (v10 + 16 * v38);
    if (v38 >= 4)
    {
      v48 = v39 + 16 * v38;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_114;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_115;
      }

      v55 = v43[1];
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_117;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_120;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = v42[1];
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v46 < v72)
        {
          v41 = v38 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v38 == 3)
    {
      v44 = *(v10 + 32);
      v45 = *(v10 + 40);
      v54 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      v47 = v54;
LABEL_52:
      if (v47)
      {
        goto LABEL_116;
      }

      v59 = *v43;
      v58 = v43[1];
      v60 = __OFSUB__(v58, v59);
      v61 = v58 - v59;
      v62 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v63 = v42[1];
      v64 = v63 - *v42;
      if (__OFSUB__(v63, *v42))
      {
        goto LABEL_122;
      }

      if (__OFADD__(v61, v64))
      {
        goto LABEL_124;
      }

      if (v61 + v64 >= v46)
      {
        if (v46 < v64)
        {
          v41 = v38 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v38 < 2)
    {
      goto LABEL_118;
    }

    v66 = *v43;
    v65 = v43[1];
    v54 = __OFSUB__(v65, v66);
    v61 = v65 - v66;
    v62 = v54;
LABEL_67:
    if (v62)
    {
      goto LABEL_121;
    }

    v68 = *v42;
    v67 = v42[1];
    v54 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v54)
    {
      goto LABEL_123;
    }

    if (v69 < v61)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v41 - 1 >= v38)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_132;
    }

    v73 = v10;
    v74 = (v39 + 16 * (v41 - 1));
    v75 = *v74;
    v76 = v41;
    v77 = (v39 + 16 * v41);
    v10 = v77[1];
    sub_23B9BD2D0((*a3 + 40 * *v74), (*a3 + 40 * *v77), *a3 + 40 * v10, __dst, a4);
    if (v7)
    {
      goto LABEL_106;
    }

    if (v10 < v75)
    {
      goto LABEL_108;
    }

    v7 = v39;
    v78 = *(v73 + 16);
    if (v76 > v78)
    {
      goto LABEL_109;
    }

    *v74 = v75;
    v74[1] = v10;
    if (v76 >= v78)
    {
      goto LABEL_110;
    }

    v79 = v76;
    v38 = v78 - 1;
    memmove(v77, v77 + 2, 16 * (v78 - 1 - v79));
    v10 = v73;
    *(v73 + 16) = v78 - 1;
    v80 = v78 > 2;
    v39 = v7;
    v7 = 0;
    if (!v80)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
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
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  v10 = sub_23B9BD684(v10);
LABEL_95:
  v90 = (v10 + 16);
  v91 = *(v10 + 16);
  while (v91 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_133;
    }

    v92 = v10;
    v93 = (v10 + 16 * v91);
    v94 = *v93;
    v95 = &v90[2 * v91];
    v10 = v95[1];
    sub_23B9BD2D0((*a3 + 40 * *v93), (*a3 + 40 * *v95), *a3 + 40 * v10, __dst, a4);
    if (v7)
    {
      break;
    }

    if (v10 < v94)
    {
      goto LABEL_111;
    }

    if (v91 - 2 >= *v90)
    {
      goto LABEL_112;
    }

    *v93 = v94;
    v93[1] = v10;
    v96 = *v90 - v91;
    if (*v90 < v91)
    {
      goto LABEL_113;
    }

    v91 = *v90 - 1;
    memmove(v95, v95 + 2, 16 * v96);
    *v90 = v91;
    v10 = v92;
  }

LABEL_106:
}

uint64_t sub_23B9BD2D0(char *__src, char *a2, unint64_t a3, char *__dst, uint64_t (*a5)(_BYTE *, _BYTE *))
{
  v49 = a5;
  v6 = __dst;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = (a2 - __src) / 40;
  v11 = (a3 - a2) / 40;
  if (v10 < v11)
  {
    if (__dst != __src || &__src[40 * v10] <= __dst)
    {
      memmove(__dst, __src, 40 * v10);
    }

    v13 = v6 + 40 * v10;
    while (1)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v35 = v9;
        goto LABEL_40;
      }

      sub_23B9BC9FC(v8, v48);
      sub_23B9BC9FC(v6, v47);
      v15 = v49(v48, v47);
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1(v47);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v39 = (v13 - v6) / 40;
        v40 = v9 < v6 || v9 >= v6 + 40 * v39;
        if (v40 || v9 != v6)
        {
          v38 = 40 * v39;
          v35 = v9;
LABEL_52:
          v41 = v6;
LABEL_59:
          memmove(v35, v41, v38);
        }

        return 1;
      }

      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v47);
      __swift_destroy_boxed_opaque_existential_1(v48);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v8;
      v18 = v9 == v8;
      v8 += 40;
      if (!v18)
      {
        goto LABEL_18;
      }

LABEL_19:
      v9 += 40;
    }

    v17 = v6;
    v18 = v9 == v6;
    v6 += 40;
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_18:
    v19 = *v17;
    v20 = *(v17 + 1);
    *(v9 + 4) = *(v17 + 4);
    *v9 = v19;
    *(v9 + 1) = v20;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[40 * v11] <= __dst)
  {
    memmove(__dst, a2, 40 * v11);
  }

  v22 = v6 + 40 * v11;
  v23 = -v6;
  v44 = -v6;
  v45 = v6;
LABEL_26:
  v46 = v8;
  v24 = (v8 - 40);
  v7 -= 40;
  v25 = v22 - 40;
  for (i = v23 + v22; ; i -= 40)
  {
    v13 = v25 + 40;
    if (v25 + 40 <= v45 || v46 <= v9)
    {
      v6 = v45;
      v35 = v46;
LABEL_40:
      v36 = (v13 - v6) / 40;
      v37 = v35 < v6 || v35 >= v6 + 40 * v36;
      if (v37 || v35 != v6)
      {
        v38 = 40 * v36;
        goto LABEL_52;
      }

      return 1;
    }

    sub_23B9BC9FC(v25, v48);
    v28 = v24;
    sub_23B9BC9FC(v24, v47);
    v29 = v49(v48, v47);
    if (v5)
    {
      break;
    }

    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (v30)
    {
      v22 = v25 + 40;
      v8 = v28;
      v23 = v44;
      if (v7 + 40 != v46)
      {
        v33 = *v28;
        v34 = *(v28 + 1);
        *(v7 + 32) = *(v28 + 4);
        *v7 = v33;
        *(v7 + 16) = v34;
        v8 = v28;
      }

      goto LABEL_26;
    }

    if (v13 != v7 + 40)
    {
      v31 = *v25;
      v32 = *(v25 + 16);
      *(v7 + 32) = *(v25 + 32);
      *v7 = v31;
      *(v7 + 16) = v32;
    }

    v7 -= 40;
    v25 -= 40;
    v24 = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  v41 = v45;
  v35 = v46;
  v42 = v46 < v45 || v46 >= v45 + 40 * (i / 40);
  if (v42 || v46 != v45)
  {
    v38 = 40 * (i / 40);
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_23B9BD5FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23B9BD684(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return OUTLINED_FUNCTION_27();
  }

  return result;
}

char *sub_23B9BD698(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_23B9BD6C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199680);
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

unint64_t sub_23B9BD7C8()
{
  result = qword_27E199690;
  if (!qword_27E199690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199690);
  }

  return result;
}

uint64_t sub_23B9BD834()
{

  return swift_deallocObject();
}

uint64_t sub_23B9BD93C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B9BD984()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

unint64_t sub_23B9BD9DC()
{
  result = qword_27E199780;
  if (!qword_27E199780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199780);
  }

  return result;
}

uint64_t sub_23B9BDA4C()
{
  sub_23BBD98D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588);
  OUTLINED_FUNCTION_50();
  sub_23BBDA358();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_50();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_48();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590);
  OUTLINED_FUNCTION_50();
  sub_23BBDA358();
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for WrappedIntoUnaryVStack();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA358();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_48();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_50();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDBE28();
  sub_23BBDD2A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9B5FD8();
  swift_getWitnessTable();
  sub_23BBDAEC8();
  sub_23BBDBE28();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B9BDCD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23B9BDCE4()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_44(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return v0;
}

uint64_t sub_23B9BDD38()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_44(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return sub_23BBD9978();
}

void OUTLINED_FUNCTION_18_5(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_23B9B8930(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_32()
{

  return sub_23B9BDCE4();
}

uint64_t OUTLINED_FUNCTION_35(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * result - 64;
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_allocObject();
}

size_t OUTLINED_FUNCTION_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23B9B8734(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return sub_23BBDC1A8();
}

__n128 OUTLINED_FUNCTION_51()
{
  result = *(v1 - 112);
  v3 = *(v1 - 96);
  *v0 = result;
  *(v0 + 16) = v3;
  *(v0 + 32) = *(v1 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_23B9BE160()
{
  sub_23B9B6E40();
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v4, v2);
  sub_23B97B104(v2);
  sub_23B97B104(v4);
  return v0 & 1;
}

uint64_t sub_23B9BE1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_23B9C7374(v2 + *(a1 + 68), &v14 - v10, &qword_27E199860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23B9C7140(v11, a2);
  }

  sub_23BBDD5A8();
  v13 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23B9BE398@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23B9C7374(v2, &v13 - v9, &qword_27E199860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23B9C7140(v10, a1);
  }

  sub_23BBDD5A8();
  v12 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23B9BE608(uint64_t a1)
{
  v3 = sub_23BBDA308();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v55 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v54 = &v52[-v6];
  v7 = sub_23BBDAF68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v59 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1999A0);
  v11 = MEMORY[0x28223BE20](v10);
  v64 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v52[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v58 = &v52[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v67 = &v52[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v63 = &v52[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v52[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v52[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v52[-v28];
  v65 = a1;
  v66 = v1;
  sub_23B9BE1C4(a1, &v52[-v28]);
  v30 = *MEMORY[0x277CE0558];
  v68 = v8;
  v31 = *(v8 + 104);
  v61 = v30;
  v60 = v31;
  v31(v27);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v7);
  v62 = v10;
  v32 = *(v10 + 48);
  sub_23B9C7374(v29, v14, qword_27E199868);
  sub_23B9C7374(v27, &v14[v32], qword_27E199868);
  if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
  {
    sub_23B9846E8(v27, qword_27E199868);
    sub_23B9846E8(v29, qword_27E199868);
    if (__swift_getEnumTagSinglePayload(&v14[v32], 1, v7) == 1)
    {
      sub_23B9846E8(v14, qword_27E199868);
LABEL_15:
      v38 = 1;
      return v38 & 1;
    }

    goto LABEL_6;
  }

  sub_23B9C7374(v14, v24, qword_27E199868);
  if (__swift_getEnumTagSinglePayload(&v14[v32], 1, v7) == 1)
  {
    sub_23B9846E8(v27, qword_27E199868);
    sub_23B9846E8(v29, qword_27E199868);
    (*(v68 + 8))(v24, v7);
LABEL_6:
    sub_23B9846E8(v14, &qword_27E1999A0);
    goto LABEL_7;
  }

  v39 = v68;
  v40 = v59;
  (*(v68 + 32))(v59, &v14[v32], v7);
  sub_23B9C7578(&qword_27E1999B0, MEMORY[0x277CE0570]);
  v53 = sub_23BBDCF38();
  v41 = *(v39 + 8);
  v41(v40, v7);
  sub_23B9846E8(v27, qword_27E199868);
  sub_23B9846E8(v29, qword_27E199868);
  v41(v24, v7);
  sub_23B9846E8(v14, qword_27E199868);
  if (v53)
  {
    goto LABEL_15;
  }

LABEL_7:
  v33 = v63;
  sub_23B9BE398(v63);
  v34 = v67;
  v60(v67, v61, v7);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v7);
  v35 = *(v62 + 48);
  v36 = v64;
  sub_23B9C7374(v33, v64, qword_27E199868);
  sub_23B9C7374(v34, &v36[v35], qword_27E199868);
  if (__swift_getEnumTagSinglePayload(v36, 1, v7) == 1)
  {
    sub_23B9846E8(v34, qword_27E199868);
    sub_23B9846E8(v33, qword_27E199868);
    if (__swift_getEnumTagSinglePayload(&v36[v35], 1, v7) == 1)
    {
      sub_23B9846E8(v36, qword_27E199868);
LABEL_17:
      v46 = v54;
      sub_23B9B70F0();
      v48 = v55;
      v47 = v56;
      v49 = v57;
      (*(v56 + 104))(v55, *MEMORY[0x277CDF998], v57);
      sub_23B9C7578(&qword_27E1999A8, MEMORY[0x277CDFA28]);
      v38 = sub_23BBDCEC8();
      v50 = *(v47 + 8);
      v50(v48, v49);
      v50(v46, v49);
      return v38 & 1;
    }

    goto LABEL_12;
  }

  v37 = v58;
  sub_23B9C7374(v36, v58, qword_27E199868);
  if (__swift_getEnumTagSinglePayload(&v36[v35], 1, v7) == 1)
  {
    sub_23B9846E8(v34, qword_27E199868);
    sub_23B9846E8(v33, qword_27E199868);
    (*(v68 + 8))(v37, v7);
LABEL_12:
    sub_23B9846E8(v36, &qword_27E1999A0);
    goto LABEL_13;
  }

  v42 = v68;
  v43 = &v36[v35];
  v44 = v59;
  (*(v68 + 32))(v59, v43, v7);
  sub_23B9C7578(&qword_27E1999B0, MEMORY[0x277CE0570]);
  LODWORD(v62) = sub_23BBDCF38();
  v45 = *(v42 + 8);
  v45(v44, v7);
  sub_23B9846E8(v67, qword_27E199868);
  sub_23B9846E8(v33, qword_27E199868);
  v45(v37, v7);
  sub_23B9846E8(v36, qword_27E199868);
  if (v62)
  {
    goto LABEL_17;
  }

LABEL_13:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_23B9BEEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, double a9@<D0>, uint64_t a10, __int128 a11, uint64_t a12)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860);
  swift_storeEnumTagMultiPayload();
  __src[0] = a6;
  __src[1] = a7;
  __src[2] = a10;
  *&__src[3] = a11;
  __src[5] = a12;
  v19 = type metadata accessor for StructuredScrollView();
  v20 = v19[17];
  *(a8 + v20) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v21 = v19[18];
  *(a8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  v22 = a8 + v19[19];
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  v23 = a8 + v19[20];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v19[25];
  v38 = 1;
  v37 = 1;
  v36 = 1;
  v35 = 1;
  v39 = 0;
  v40 = 1;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  v44 = 1;
  v45 = 0;
  v46 = 1;
  sub_23BBDBF58();
  memcpy(a8 + v24, __src, 0x48uLL);
  v25 = a8 + v19[26];
  *v25 = sub_23B9BE5CC() & 1;
  *(v25 + 1) = v26;
  v27 = *(a6 - 8);
  (*(v27 + 16))(a8 + v19[21], a1, a6);
  v28 = *(a10 - 8);
  v29 = (*(v28 + 16))(a8 + v19[23], a4, a10);
  *(a8 + v19[27]) = a9;
  a5(v29);
  (*(v28 + 8))(a4, a10);
  result = (*(v27 + 8))(a1, a6);
  v31 = a8 + v19[24];
  *v31 = a2;
  v31[8] = a3 & 1;
  return result;
}

uint64_t sub_23B9BF1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t *a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v34 = a4;
  v35 = a5;
  v31 = a3;
  v30 = a12;
  v32 = a10;
  v33 = a2;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_2();
  v22 = v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (*(v22 + 16))(v26, a1, v27, v24);
  a6(v28);
  sub_23B9BEEC0(v26, v33, v31 & 1, v20, v34, a7, v32, a8, a9, a11, v30, a13);
  return (*(v22 + 8))(a1, a7);
}

void *sub_23B9BF350(uint64_t a1)
{
  memcpy(__dst, (v1 + *(a1 + 100)), sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970);
  sub_23BBDBF68();
  v3 = *(a1 + 32);
  v5[1] = *(a1 + 16);
  v5[2] = v3;
  v5[3] = *(a1 + 48);
  v6 = v1;
  return sub_23BAB3D58(sub_23B9C75C0, v5, v7, v8);
}

double sub_23B9BF3F8@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  v11 = *a1;
  __dst[0] = a3;
  __dst[1] = a4;
  __dst[2] = a5;
  __dst[3] = a6;
  __dst[4] = a7;
  __dst[5] = a8;
  v12 = *(type metadata accessor for StructuredScrollView() + 100);
  memcpy(__dst, (a2 + v12), sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970);
  sub_23BBDBF68();
  if (v19)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v18;
  }

  memcpy(__dst, (a2 + v12), sizeof(__dst));
  sub_23BBDBF68();
  v14 = v16;
  if (v17)
  {
    v14 = 0.0;
  }

  result = rint((v11 + v13 + v14) * 0.2);
  *a9 = result;
  return result;
}

uint64_t sub_23B9BF500()
{
  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D0 == 3)
  {
    storekit_dyld_fall_2025_os_versions();
    dyld_program_sdk_at_least();
  }

  return 0;
}

uint64_t sub_23B9BF570(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  result = byte_27E1A04D0;
  if (byte_27E1A04D0)
  {
    if (byte_27E1A04D0 == 3)
    {
      storekit_dyld_fall_2025_os_versions();
      if (!dyld_program_sdk_at_least())
      {
        return 0;
      }
    }

    v8 = (v1 + *(a1 + 80));
    v9 = *v8;
    if (*(v8 + 8) == 1)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v10 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v9, 0);
      (*(v4 + 8))(v6, v3);
      if (v11[15] != 1)
      {
        return 0;
      }
    }

    if (qword_27E197718 != -1)
    {
      swift_once();
    }

    return qword_27E1BFCC8;
  }

  return result;
}

uint64_t sub_23B9BF760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  OUTLINED_FUNCTION_3_2();
  v178 = v3;
  v173 = *(v4 + 64);
  MEMORY[0x28223BE20](v5);
  v172 = &v132[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199918);
  sub_23BBDB038();
  *&v176 = a1 + 5;
  v7 = a1[2];
  OUTLINED_FUNCTION_21_3();
  v174 = v7;
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_15_4();
  v196[0] = sub_23BBDA358();
  OUTLINED_FUNCTION_21_3();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  v196[1] = sub_23BBDA358();
  v170 = a1[3];
  v171 = a1;
  sub_23BBDA358();
  v8 = a1[4];
  sub_23BBDD648();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  v196[2] = sub_23BBDA358();
  v196[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  v196[4] = sub_23BBDA358();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v9, &qword_27E199918);
  v10 = sub_23BBDA018();
  OUTLINED_FUNCTION_3_9();
  v12 = sub_23B97B518(v11, &qword_27E199918);
  WitnessTable = swift_getWitnessTable();
  v196[16] = v12;
  v196[17] = WitnessTable;
  OUTLINED_FUNCTION_1_9();
  v14 = swift_getWitnessTable();
  v196[0] = v10;
  v196[1] = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v196[0] = v10;
  v196[1] = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  type metadata accessor for AutoEnablingScrollView();
  OUTLINED_FUNCTION_30_0();
  v151 = v15;
  OUTLINED_FUNCTION_3_2();
  v156 = v16;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_2();
  v144 = v18;
  v135 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v160 = v19;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_2();
  v166 = v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_21_3();
  v22 = sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  v23 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_6();
  v161 = sub_23B9C7578(v24, v25);
  v196[14] = v23;
  v196[15] = v161;
  OUTLINED_FUNCTION_10_5();
  v138 = v26;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  type metadata accessor for StructuredScrollViewBottomInset();
  OUTLINED_FUNCTION_21_3();
  sub_23BBDA358();
  sub_23BBDD648();
  OUTLINED_FUNCTION_5_9();
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_5();
  v30 = sub_23B9C7578(v28, v29);
  v196[12] = v27;
  v196[13] = v30;
  v196[11] = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  v136 = v22;
  v137 = swift_getWitnessTable();
  v143 = type metadata accessor for MagicPocketLayoutViewModifier();
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v141 = v31;
  OUTLINED_FUNCTION_3_2();
  v147 = v32;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_2();
  v134 = v34;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v142 = v35;
  OUTLINED_FUNCTION_3_2();
  v148 = v36;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22_2();
  v139 = v38;
  v146 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v153 = v39;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_2();
  v140 = v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199958);
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v150 = v42;
  OUTLINED_FUNCTION_3_2();
  v155 = v43;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_2();
  v145 = v45;
  v154 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v159 = v46;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_22_2();
  v149 = v48;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199960);
  v158 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v162 = v49;
  v51 = MEMORY[0x28223BE20](v50);
  v152 = &v132[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v51);
  v157 = &v132[-v53];
  *&v54 = v8;
  *(&v54 + 1) = *v176;
  *&v55 = v174;
  v56 = v171;
  *(&v55 + 1) = v170;
  v175 = v54;
  v176 = v55;
  v179 = v55;
  v180 = v54;
  v57 = v171[7];
  v174 = v171[6];
  v181 = v174;
  v182 = v57;
  v58 = v57;
  v168 = v57;
  v59 = v177;
  v183 = v177;
  LOBYTE(v27) = sub_23BACE838();
  v60 = OUTLINED_FUNCTION_13();
  v61 = v144;
  sub_23BA75FE8(v27, v60 & 1, sub_23B9C6A14, v144);
  v133 = sub_23BBDB3B8();
  v62 = v178;
  OpaqueTypeMetadata2 = *(v178 + 16);
  v170 = v178 + 16;
  v63 = v172;
  OpaqueTypeMetadata2(v172, v59, v56);
  v64 = v62;
  v65 = (*(v62 + 80) + 64) & ~*(v62 + 80);
  v165 = *(v62 + 80);
  v66 = swift_allocObject();
  v67 = v175;
  *(v66 + 16) = v176;
  *(v66 + 32) = v67;
  *(v66 + 48) = v174;
  *(v66 + 56) = v58;
  OpaqueTypeConformance2 = *(v64 + 32);
  OpaqueTypeConformance2(v66 + v65, v63, v56);
  v178 = v64 + 32;
  OUTLINED_FUNCTION_14_5();
  v68 = v151;
  v69 = swift_getWitnessTable();
  sub_23B9A9990(v133, sub_23B9C6A30, v66, v68, v69);

  (*(v156 + 8))(v61, v68);
  v70 = v172;
  OpaqueTypeMetadata2(v172, v177, v56);
  v164 = v65;
  v71 = swift_allocObject();
  v72 = OUTLINED_FUNCTION_27_0(v71);
  v73 = OpaqueTypeConformance2;
  v74 = v168;
  *(v75 + 48) = v76;
  *(v75 + 56) = v74;
  v73(v75 + v65, v70, v56, v72);
  v77 = sub_23B9C6B8C();
  v196[9] = v69;
  v196[10] = v77;
  v78 = v135;
  v79 = swift_getWitnessTable();
  v80 = v134;
  v81 = v166;
  sub_23B9C3C70(sub_23B9C6ACC, v71, v78, v136, v79);

  (*(v160 + 8))(v81, v78);
  v82 = sub_23BBDB3B8();
  v83 = v177;
  memcpy(v196, (v177 + *(v56 + 25)), 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970);
  sub_23BBDBF68();
  v84 = sub_23B9C3CF4();
  OUTLINED_FUNCTION_0_10();
  v85 = swift_getWitnessTable();
  v194 = v79;
  v195 = v85;
  v86 = v141;
  v87 = swift_getWitnessTable();
  v88 = v139;
  sub_23BB2FA54(v82, v84, 0, v86, v87);
  (*(v147 + 8))(v80, v86);
  v192 = v87;
  v193 = v161;
  v89 = v142;
  v90 = swift_getWitnessTable();
  v91 = v140;
  MEMORY[0x23EEB43C0](v90, v89, &type metadata for VerticalGeometryWriterModifier, v90);
  (*(v148 + 8))(v88, v89);
  v92 = v171;
  v93 = v172;
  OpaqueTypeMetadata2(v172, v83, v171);
  v94 = v164;
  v95 = swift_allocObject();
  v96 = OUTLINED_FUNCTION_27_0(v95);
  v97 = v168;
  *(v98 + 48) = v99;
  *(v98 + 56) = v97;
  (OpaqueTypeConformance2)(v98 + v94, v93, v92, v96);
  v100 = sub_23B9C6C7C();
  v190 = v90;
  v191 = v100;
  v101 = v146;
  v102 = swift_getWitnessTable();
  sub_23B9C6CD0();
  sub_23B9C695C();
  v103 = v145;
  sub_23BBDB918();

  (*(v153 + 8))(v91, v101);
  OUTLINED_FUNCTION_7_11();
  v105 = sub_23B97B518(v104, &qword_27E199958);
  v188 = v102;
  v189 = v105;
  v106 = v150;
  v107 = swift_getWitnessTable();
  v108 = v149;
  sub_23B9C3E04(v106, v107);
  (*(v155 + 8))(v103, v106);
  swift_getKeyPath();
  v109 = v171;
  OpaqueTypeMetadata2(v93, v177, v171);
  v110 = v164;
  v111 = swift_allocObject();
  v112 = OUTLINED_FUNCTION_27_0(v111);
  v113 = v168;
  *(v114 + 48) = v115;
  *(v114 + 56) = v113;
  (OpaqueTypeConformance2)(v114 + v110, v93, v109, v112);
  v116 = sub_23B9C70EC();
  v186 = v107;
  v187 = v116;
  v117 = v154;
  v118 = swift_getWitnessTable();
  v119 = v152;
  sub_23BBDB9B8();

  (*(v159 + 8))(v108, v117);
  OUTLINED_FUNCTION_13_6();
  v121 = sub_23B97B518(v120, &qword_27E199960);
  v184 = v118;
  v185 = v121;
  v122 = v158;
  swift_getWitnessTable();
  v123 = v157;
  OUTLINED_FUNCTION_29_0();
  sub_23B9D2D88(v124, v125, v126);
  v127 = *(v162 + 8);
  v127(v119, v122);
  OUTLINED_FUNCTION_29_0();
  sub_23B9D2D88(v128, v129, v130);
  return (v127)(v123, v122);
}

uint64_t sub_23B9C06FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = a7;
  v68 = a5;
  v69 = a6;
  v60 = a3;
  v62 = a1;
  v66 = a8;
  v10 = sub_23BBDAD18();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199918);
  sub_23BBDB038();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180);
  sub_23BBDA358();
  sub_23BBDB2B8();
  __dst[0] = sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928);
  sub_23BBDA358();
  sub_23BBDA358();
  __dst[1] = sub_23BBDA358();
  sub_23BBDA358();
  v12 = a4;
  v51 = a4;
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  sub_23BBDA358();
  sub_23BBDA358();
  __dst[2] = sub_23BBDA358();
  __dst[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  sub_23BBDA358();
  sub_23BBDA358();
  __dst[4] = sub_23BBDA358();
  swift_getTupleTypeMetadata();
  sub_23BBDC3D8();
  sub_23B97B518(&qword_27E199940, &qword_27E199918);
  v13 = sub_23BBDA018();
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v50 - v14;
  v15 = sub_23B97B518(&qword_27E199948, &qword_27E199918);
  WitnessTable = swift_getWitnessTable();
  v73[9] = v15;
  v73[10] = WitnessTable;
  v55 = v13;
  v54 = swift_getWitnessTable();
  __dst[0] = v13;
  __dst[1] = v54;
  v57 = MEMORY[0x277CDE858];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v58 = OpaqueTypeMetadata2;
  v59 = v18;
  v19 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v52 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v53 = &v50 - v21;
  v22 = v60;
  __dst[0] = a2;
  __dst[1] = v60;
  __dst[2] = v12;
  __dst[3] = v68;
  __dst[4] = v69;
  __dst[5] = v67;
  v23 = type metadata accessor for StructuredScrollView();
  v24 = *(v23 + 100);
  v25 = v62;
  memcpy(__dst, (v62 + v24), sizeof(__dst));
  memcpy(v73, (v62 + v24), 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970);
  sub_23BBDBF68();
  v26 = sub_23B9C1270();
  v28 = v27;
  memcpy(v73, __dst, 0x48uLL);
  sub_23BBDBF68();
  v29 = *&v73[15];
  LODWORD(v12) = v74;
  memcpy(v73, __dst, 0x48uLL);
  sub_23BBDBF68();
  v30 = sub_23B9C12CC();
  if (v12)
  {
    v29 = 0.0;
  }

  v31 = (v25 + *(v23 + 96));
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = sub_23BBDAB48();
  v72 = v28 & 1;
  v71 = v33;
  v73[0] = v26;
  LOBYTE(v73[1]) = v28 & 1;
  *&v73[2] = v29;
  v73[3] = 0;
  *&v73[4] = v30;
  v73[5] = 0;
  v73[6] = v34;
  v73[7] = v32;
  LOBYTE(v73[8]) = v33;
  v35 = v51;
  v37 = v68;
  v36 = v69;
  v38 = v67;
  v39 = sub_23B9C0ECC(v73, a2, v22, v51, v68, v69, v67);
  v70[2] = a2;
  v70[3] = v22;
  v70[4] = v35;
  v70[5] = v37;
  v70[6] = v36;
  v70[7] = v38;
  v70[8] = v25;
  v40 = v56;
  v39(sub_23B9C7278, v70);

  sub_23B9C7290();
  v41 = v63;
  sub_23BBDAFA8();
  v42 = v52;
  v43 = v54;
  v44 = v55;
  sub_23BBDB878();
  (*(v64 + 8))(v41, v65);
  (*(v61 + 8))(v40, v44);
  v70[9] = v44;
  v70[10] = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v53;
  v47 = v58;
  sub_23B9D2D88(v42, v58, OpaqueTypeConformance2);
  v48 = *(v59 + 8);
  v48(v42, v47);
  sub_23B9D2D88(v46, v47, OpaqueTypeConformance2);
  return (v48)(v46, v47);
}

uint64_t (*sub_23B9C0ECC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  memcpy(v14 + 8, a1, 0x41uLL);
  return sub_23B9C7608;
}

uint64_t sub_23B9C0F68(uint64_t a1, uint64_t a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_23BBDB038();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180);
  sub_23BBDA358();
  sub_23BBDB2B8();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928);
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  swift_getTupleTypeMetadata();
  sub_23BBDC3D8();
  sub_23B9C763C();
  swift_getWitnessTable();
  return sub_23B9D4D38(a1, a2, &type metadata for StructuredScrollViewContentLayout);
}

uint64_t sub_23B9C1270()
{
  result = *v0;
  if ((v0[1] & 1) == 0)
  {
    v2 = v0[2];
    if (*(v0 + 24))
    {
      v2 = 0.0;
    }

    *&result = *&result - v2 - sub_23B9C3CF4();
  }

  return result;
}

double sub_23B9C12CC()
{
  if (sub_23BBDC2A8())
  {
    v1 = 38.0;
  }

  else
  {
    v1 = 16.0;
  }

  if (*(v0 + 56))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = *(v0 + 48);
    if (sub_23BBDC2A8())
    {
      v3 = 14.0;
    }

    else
    {
      v3 = 24.0;
    }

    if (sub_23BBDC2A8())
    {
      v1 = v1 - v2;
    }

    else if (v1 + v2 < v3)
    {
      v1 = v3 - v2;
    }
  }

  v4 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v4 = 0.0;
  }

  return v2 + v1 + v4;
}

uint64_t sub_23B9C136C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v189 = a4;
  v190 = a7;
  v192 = a6;
  v207 = a5;
  v182 = a3;
  v197 = a1;
  v178 = a8;
  v9 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  v173 = sub_23BBDA358();
  v177 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v172 = v141 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920);
  v175 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180);
  v194 = sub_23BBDA358();
  v176 = *(v194 - 8);
  v11 = MEMORY[0x28223BE20](v194);
  v206 = v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v174 = v141 - v13;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199930);
  v14 = MEMORY[0x28223BE20](v196);
  v195 = v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v205 = (v141 - v16);
  sub_23BBDB2B8();
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v166 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v167 = sub_23BBDC078();
  v170 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v164 = v141 - v17;
  v169 = sub_23BBDA358();
  v168 = sub_23BBDA358();
  v171 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v163 = v141 - v18;
  v203 = sub_23BBDA358();
  v193 = *(v203 - 8);
  v19 = MEMORY[0x28223BE20](v203);
  v202 = v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v188 = v141 - v22;
  v185 = v9;
  v199 = *(v9 - 8);
  MEMORY[0x28223BE20](v21);
  v184 = v141 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928);
  v160 = sub_23BBDA358();
  v162 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = v141 - v24;
  v161 = sub_23BBDA358();
  v200 = sub_23BBDA358();
  v191 = *(v200 - 8);
  v25 = MEMORY[0x28223BE20](v200);
  v198 = v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v204 = v141 - v28;
  v29 = *(a2 - 8);
  MEMORY[0x28223BE20](v27);
  v31 = v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDB038();
  v144 = sub_23BBDA358();
  v148 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v33 = v141 - v32;
  v146 = sub_23BBDA358();
  v151 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = v141 - v34;
  v147 = sub_23BBDA358();
  v154 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v179 = v141 - v35;
  v152 = sub_23BBDA358();
  v156 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v149 = v141 - v36;
  v157 = sub_23BBDA358();
  v155 = sub_23BBDA358();
  v158 = *(v155 - 1);
  MEMORY[0x28223BE20](v155);
  v150 = v141 - v37;
  v181 = sub_23BBDA358();
  v187 = *(v181 - 8);
  v38 = MEMORY[0x28223BE20](v181);
  v186 = v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v153 = v141 - v41;
  MEMORY[0x28223BE20](v40);
  v201 = v141 - v42;
  __dst[0] = a2;
  __dst[1] = v182;
  v43 = v207;
  __dst[2] = v189;
  __dst[3] = v207;
  __dst[4] = v192;
  __dst[5] = v190;
  v44 = type metadata accessor for StructuredScrollView();
  v183 = *(v44 + 84);
  v45 = v29;
  v46 = *(v29 + 16);
  v47 = v197;
  v46(v31, v197 + v183, a2);
  v48 = sub_23BBDB3A8();
  v49 = *(v44 + 100);
  v143 = v44;
  memcpy(__dst, (v47 + v49), 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970);
  sub_23BBDBF68();
  if (v256)
  {
    v50 = 0;
  }

  else
  {
    v50 = v255;
  }

  v180 = a2;
  sub_23BB2FA54(v48, v50, 0, a2, v43);
  (*(v45 + 8))(v31, a2);
  v142 = sub_23BBDB3A8();
  v51 = sub_23B9BF570(v44);
  v53 = v52;
  v54 = sub_23B9C7578(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v252 = v43;
  v253 = v54;
  v141[1] = MEMORY[0x277CDFAD8];
  v55 = v144;
  v56 = swift_getWitnessTable();
  v57 = v145;
  sub_23BB2FA54(v142, v51, v53 & 1, v55, v56);
  (*(v148 + 8))(v33, v55);
  v58 = sub_23BBDB388();
  v59 = v143;
  v60 = sub_23B9BF500();
  v62 = v61;
  v250 = v56;
  v251 = v54;
  v63 = v146;
  v64 = swift_getWitnessTable();
  sub_23BB2FA54(v58, v60, v62 & 1, v63, v64);
  (*(v151 + 8))(v57, v63);
  v65 = sub_23B9BF350(v59);
  LOBYTE(v58) = v66;
  v248 = v64;
  v249 = v54;
  v67 = v147;
  v68 = swift_getWitnessTable();
  v69 = sub_23BBDC318();
  v70 = v149;
  v71 = v65;
  v72 = v179;
  sub_23B9CFA7C(0, 1, 0, 1, v71, v58 & 1, 0x7FF0000000000000, 0, v69, v73, v67, v68);
  (v154)[1](v72, v67);
  v74 = sub_23B9C72E4();
  v246 = v68;
  v247 = v74;
  v75 = v152;
  v76 = swift_getWitnessTable();
  v77 = v150;
  sub_23BAD38B8(0, v75, v76);
  (*(v156 + 8))(v70, v75);
  v179 = sub_23B97B518(&qword_27E1999D8, &qword_27E199920);
  v244 = v76;
  v245 = v179;
  v78 = swift_getWitnessTable();
  v151 = sub_23B97B518(&qword_27E198198, &qword_27E198180);
  v242 = v78;
  v243 = v151;
  v79 = v155;
  v80 = swift_getWitnessTable();
  v81 = v153;
  sub_23BBDBA68();
  (*(v158 + 1))(v77, v79);
  v152 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470]);
  v240 = v80;
  v241 = v152;
  v82 = v181;
  v156 = swift_getWitnessTable();
  sub_23B9D2D88(v81, v82, v156);
  v83 = *(v187 + 8);
  v157 = v187 + 8;
  v158 = v83;
  v83(v81, v82);
  v84 = v184;
  v85 = v180;
  v86 = v207;
  sub_23BBDBB48();
  v87 = sub_23B97AD88();
  v238 = v86;
  v239 = v87;
  v88 = v185;
  v89 = swift_getWitnessTable();
  v90 = v159;
  v91 = v89;
  v153 = v89;
  sub_23BB060E8();
  v92 = *(v199 + 8);
  v199 += 8;
  v155 = v92;
  (v92)(v84, v88);
  v154 = &unk_23BBFBEC0;
  v93 = sub_23B97B518(&qword_27E1999E0, &qword_27E199928);
  v236 = v91;
  v237 = v93;
  v94 = v160;
  v95 = swift_getWitnessTable();
  v96 = v198;
  sub_23BAD38B8(1, v94, v95);
  v162[1](v90, v94);
  v234 = v95;
  v97 = v179;
  v235 = v179;
  v232 = swift_getWitnessTable();
  v98 = v151;
  v233 = v151;
  v99 = v200;
  v160 = swift_getWitnessTable();
  sub_23B9D2D88(v96, v99, v160);
  v100 = *(v191 + 8);
  v161 = v191 + 8;
  v162 = v100;
  (v100)(v96, v99);
  v208 = v85;
  v209 = v182;
  v210 = v189;
  v211 = v207;
  v212 = v192;
  v213 = v190;
  v214 = v197;
  sub_23B9BE15C();
  v101 = v164;
  sub_23BBDC068();
  v102 = v167;
  v103 = swift_getWitnessTable();
  v104 = v163;
  sub_23BAD38B8(2, v102, v103);
  (*(v170 + 8))(v101, v102);
  v230 = v103;
  v231 = v97;
  v228 = swift_getWitnessTable();
  v105 = v98;
  v229 = v98;
  v106 = v168;
  v107 = swift_getWitnessTable();
  v108 = v202;
  sub_23BBDBA68();
  (*(v171 + 8))(v104, v106);
  v226 = v107;
  v227 = v152;
  v109 = v203;
  v189 = swift_getWitnessTable();
  v110 = v188;
  sub_23B9D2D88(v108, v109, v189);
  v111 = *(v193 + 8);
  v190 = v193 + 8;
  v192 = v111;
  v111(v108, v109);
  KeyPath = swift_getKeyPath();
  v113 = v205;
  *v205 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199808);
  swift_storeEnumTagMultiPayload();
  *(v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1999E8) + 36)) = 3;
  *(v113 + *(v196 + 36)) = 0xBFF0000000000000;
  v114 = v184;
  sub_23BBDBB48();
  v115 = v172;
  v116 = v185;
  v117 = v153;
  sub_23BB06090();
  (v155)(v114, v116);
  v118 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938);
  v224 = v117;
  v225 = v118;
  v119 = v173;
  v120 = swift_getWitnessTable();
  v121 = v206;
  sub_23BAD38B8(4, v119, v120);
  (*(v177 + 8))(v115, v119);
  v222 = v120;
  v223 = v179;
  v220 = swift_getWitnessTable();
  v221 = v105;
  v122 = v194;
  v199 = swift_getWitnessTable();
  v123 = v174;
  v124 = v121;
  sub_23B9D2D88(v121, v122, v199);
  v125 = v176;
  v207 = *(v176 + 8);
  v207(v124, v122);
  v126 = v186;
  v127 = v181;
  (*(v187 + 16))(v186, v201, v181);
  __dst[0] = v126;
  v128 = v198;
  v129 = v200;
  (*(v191 + 16))(v198, v204, v200);
  __dst[1] = v128;
  v131 = v202;
  v130 = v203;
  (*(v193 + 16))(v202, v110, v203);
  __dst[2] = v131;
  v132 = v195;
  sub_23B9C7374(v205, v195, &qword_27E199930);
  __dst[3] = v132;
  v133 = v206;
  (*(v125 + 16))(v206, v123, v122);
  __dst[4] = v133;
  v254[0] = v127;
  v254[1] = v129;
  v254[2] = v130;
  v254[3] = v196;
  v255 = v122;
  v215 = v156;
  v216 = v160;
  v217 = v189;
  v218 = sub_23B9C73D8();
  v219 = v199;
  sub_23BB6739C(__dst, 5, v254);
  v134 = v122;
  v135 = v207;
  v207(v123, v134);
  sub_23B9846E8(v205, &qword_27E199930);
  v136 = v192;
  v192(v188, v130);
  v137 = v129;
  v138 = v162;
  (v162)(v204, v137);
  v139 = v158;
  v158(v201, v127);
  v135(v206, v194);
  sub_23B9846E8(v195, &qword_27E199930);
  v136(v202, v203);
  (v138)(v198, v200);
  return v139(v186, v127);
}

uint64_t sub_23B9C2928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a5;
  v64 = a8;
  v53 = *(a4 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v52 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v51 - v16;
  v17 = sub_23BBDD648();
  v18 = *(v17 - 8);
  v60 = v17;
  v61 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v57 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v63 = &v51 - v21;
  sub_23BBDB2B8();
  v22 = sub_23BBDA358();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v51 - v27;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v72 = v62;
  v73 = a6;
  v74 = a7;
  v62 = a7;
  v29 = type metadata accessor for StructuredScrollView();
  v30 = a1;
  sub_23BBDBA68();
  v31 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470]);
  v68[2] = a6;
  v68[3] = v31;
  WitnessTable = swift_getWitnessTable();
  v59 = v28;
  v54 = WitnessTable;
  sub_23B9D2D88(v26, v22, WitnessTable);
  v58 = v23;
  v33 = *(v23 + 8);
  v34 = v26;
  v35 = v22;
  v56 = v23 + 8;
  v55 = v33;
  v33(v26, v22);
  if (sub_23B9BE608(v29))
  {
    v36 = v30 + *(v29 + 92);
    v37 = v51;
    v38 = v62;
    sub_23B9D2D88(v36, a4, v62);
    v39 = v52;
    sub_23B9D2D88(v37, a4, v38);
    v40 = v53;
    (*(v53 + 8))(v37, a4);
    v41 = v57;
    (*(v40 + 32))(v57, v39, a4);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v38 = v62;
    v41 = v57;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, a4);
  v43 = v63;
  sub_23BB2F9F4();
  v44 = v38;
  v46 = v60;
  v45 = v61;
  v47 = *(v61 + 8);
  v47(v41, v60);
  v48 = v59;
  (*(v58 + 16))(v34, v59, v35);
  v69 = v34;
  (*(v45 + 16))(v41, v43, v46);
  v70 = v41;
  v68[0] = v35;
  v68[1] = v46;
  v65 = v44;
  v66 = v54;
  v67 = swift_getWitnessTable();
  sub_23BB6739C(&v69, 2, v68);
  v47(v43, v46);
  v49 = v55;
  v55(v48, v35);
  v47(v41, v46);
  return v49(v34, v35);
}

uint64_t sub_23B9C2E48()
{
  sub_23BBDB3B8();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  type metadata accessor for StructuredScrollView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  return sub_23BBDBF78();
}

uint64_t sub_23B9C2F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v67 = a7;
  v68 = a8;
  v66 = a6;
  v62 = a2;
  v61 = a1;
  v65 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  sub_23BBDB038();
  v12 = sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  v84 = sub_23B9C7578(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v56 = v12;
  v53[1] = swift_getWitnessTable();
  v13 = type metadata accessor for StructuredScrollViewBottomInset();
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v53 - v14;
  sub_23BBDB2B8();
  v16 = sub_23BBDA358();
  v57 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v55 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v53 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v53 - v22;
  v24 = sub_23BBDD648();
  v64 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v63 = v53 - v28;
  v58 = a3;
  v77 = a3;
  v78 = a4;
  v59 = a4;
  v60 = a5;
  v79 = a5;
  v80 = v66;
  v81 = v67;
  v82 = v68;
  v29 = type metadata accessor for StructuredScrollView();
  v30 = v62;
  if (sub_23B9BE608(v29))
  {
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v16);
    v31 = swift_getWitnessTable();
    v32 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470]);
    v69 = v31;
    v70 = v32;
    swift_getWitnessTable();
  }

  else
  {
    v33 = (v30 + *(v29 + 104));
    v34 = *v33;
    v35 = *(v33 + 1);
    LOBYTE(v77) = v34;
    v78 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
    v36 = sub_23BBDBF68();
    if ((v76 & 1) == 0)
    {
      v36 = sub_23B9BE160();
    }

    MEMORY[0x28223BE20](v36);
    v37 = v59;
    v53[-8] = v58;
    v53[-7] = v37;
    v38 = v66;
    v53[-6] = v60;
    v53[-5] = v38;
    v39 = v68;
    v53[-4] = v67;
    v53[-3] = v39;
    v53[-2] = v61;
    v53[-1] = v30;
    sub_23BB89BF8(v40 & 1, sub_23B9C71B0, v15);
    v41 = swift_getWitnessTable();
    sub_23BBDBA68();
    (*(v54 + 8))(v15, v13);
    v42 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470]);
    v74 = v41;
    v75 = v42;
    v43 = swift_getWitnessTable();
    sub_23B9D2D88(v21, v16, v43);
    v44 = v57;
    v45 = *(v57 + 8);
    v45(v21, v16);
    v46 = v55;
    sub_23B9D2D88(v23, v16, v43);
    v45(v23, v16);
    (*(v44 + 32))(v27, v46, v16);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v16);
  }

  v47 = v63;
  sub_23BB2F9F4();
  v48 = *(v64 + 8);
  v48(v27, v24);
  v49 = swift_getWitnessTable();
  v50 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470]);
  v72 = v49;
  v73 = v50;
  v71 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  sub_23B9D2D88(v47, v24, v51);
  return (v48)(v47, v24);
}

uint64_t sub_23B9C36AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a6;
  v36 = a4;
  v35 = a3;
  v41 = a2;
  v40 = a1;
  v45 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_23BBDC078();
  v43 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  sub_23BBDB038();
  v18 = sub_23BBDA358();
  v44 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v39 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v42 = &v34 - v21;
  sub_23BBDC2A8();
  v37 = &v34;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v51 = a8;
  v22 = a7;
  v23 = a8;
  v24 = v41;
  v52 = v40;
  v53 = v41;
  sub_23B9BE15C();
  sub_23BBDC068();
  v25 = sub_23BBDB3A8();
  v56 = v35;
  v57 = v36;
  v58 = a5;
  v59 = v34;
  v60 = v22;
  v61 = v23;
  v26 = *(v24 + *(type metadata accessor for StructuredScrollView() + 108));
  v27 = swift_getWitnessTable();
  v28 = v39;
  sub_23BB2FA54(v25, v26, 0, v15, v27);
  (*(v43 + 8))(v17, v15);
  v29 = sub_23B9C7578(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v54 = v27;
  v55 = v29;
  v30 = swift_getWitnessTable();
  v31 = v42;
  sub_23B9D2D88(v28, v18, v30);
  v32 = *(v44 + 8);
  v32(v28, v18);
  sub_23B9D2D88(v31, v18, v30);
  return (v32)(v31, v18);
}

uint64_t sub_23B9C3AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v24 = type metadata accessor for StructuredScrollView();
  sub_23B9D2D88(a2 + *(v24 + 92), a5, a8);
  v29 = a1;
  v30 = &v29;
  (*(v12 + 16))(v15, v17, a5);
  v31 = v15;

  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199950);
  v28[1] = a5;
  v27[1] = sub_23B9C71FC();
  v27[2] = a8;
  sub_23BB6739C(&v30, 2, v28);
  v25 = *(v12 + 8);
  v25(v17, a5);
  v25(v15, a5);
}

uint64_t sub_23B9C3C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  v7 = type metadata accessor for MagicPocketLayoutViewModifier();

  MEMORY[0x23EEB43C0](v9, a3, v7, a5);
}

double sub_23B9C3CF4()
{
  if (sub_23BBDC2A8())
  {
    v1 = 38.0;
  }

  else
  {
    v1 = 16.0;
  }

  if ((*(v0 + 56) & 1) == 0)
  {
    v2 = *(v0 + 48);
    if (sub_23BBDC2A8())
    {
      v3 = 14.0;
    }

    else
    {
      v3 = 24.0;
    }

    if (sub_23BBDC2A8())
    {
      return v1 - v2;
    }

    else if (v1 + v2 < v3)
    {
      return v3 - v2;
    }
  }

  return v1;
}

uint64_t sub_23B9C3D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __dst[0] = a3;
  __dst[1] = a4;
  __dst[2] = a5;
  __dst[3] = a6;
  __dst[4] = a7;
  __dst[5] = a8;
  v9 = type metadata accessor for StructuredScrollView();
  memcpy(__dst, (a2 + *(v9 + 100)), sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970);
  return sub_23BBDBF78();
}

uint64_t sub_23B9C3E04(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1999B8);
  sub_23BBDBF58();
  MEMORY[0x23EEB43C0](v5, a1, &type metadata for HorizontalSizeClassSetterViewModifier, a2);
}

double sub_23B9C3EA4(uint64_t a1)
{
  v2 = type metadata accessor for StructuredScrollView();
  if (sub_23B9BE608(v2))
  {
    sub_23B97B104(a1 + 8);
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t sub_23B9C3F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDC318();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AA8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AB0);
  v9 = (a2 + *(result + 36));
  *v9 = sub_23B9C3FC0;
  v9[1] = 0;
  v9[2] = v4;
  v9[3] = v6;
  return result;
}

uint64_t sub_23B9C3FC0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = sub_23BBD9E98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_23B9C8090;
  a2[1] = v8;
  return result;
}

uint64_t sub_23B9C40EC(uint64_t a1)
{
  sub_23BBD9E68();
  *a1 = v2;
  *(a1 + 8) = 0;
  sub_23BBD9E58();
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  result = sub_23BBD9E58();
  *(a1 + 48) = v5;
  *(a1 + 56) = 0;
  return result;
}

void *sub_23B9C4138(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v8);
  if (*(a1 + 8) == 1)
  {
    v4 = v9;
    *a1 = v8;
    *(a1 + 8) = v4;
  }

  if (*(a1 + 40) == 1)
  {
    v5 = v13;
    *(a1 + 32) = v12;
    *(a1 + 40) = v5;
  }

  if (*(a1 + 56) == 1)
  {
    v6 = v15;
    *(a1 + 48) = v14;
    *(a1 + 56) = v6;
  }

  if (*(a1 + 24) == 1)
  {
    v7 = v11;
    *(a1 + 16) = v10;
    *(a1 + 24) = v7;
  }

  return result;
}

double sub_23B9C41E0@<D0>(_OWORD *a1@<X8>)
{
  v1 = unk_27E199830;
  *a1 = xmmword_27E199820;
  a1[1] = v1;
  a1[2] = xmmword_27E199840;
  result = *(&xmmword_27E199840 + 9);
  *(a1 + 41) = *(&xmmword_27E199840 + 9);
  return result;
}

uint64_t sub_23B9C4210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_23B9C42BC()
{
  if (*(v0 + 8) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v1 = *v0;
    sub_23BBDDBD8();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x23EEB63C0](v2);
  }

  if (*(v0 + 24) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v3 = v0[2];
    sub_23BBDDBD8();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x23EEB63C0](v4);
  }

  if (*(v0 + 40) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v5 = v0[4];
    sub_23BBDDBD8();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x23EEB63C0](v6);
  }

  if (*(v0 + 56) == 1)
  {
    return sub_23BBDDBD8();
  }

  v8 = v0[6];
  sub_23BBDDBD8();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x23EEB63C0](v9);
}

uint64_t sub_23B9C43A8()
{
  sub_23BBDDBB8();
  sub_23B9C42BC();
  return sub_23BBDDBF8();
}

uint64_t sub_23B9C43F0()
{
  sub_23BBDDBB8();
  sub_23B9C42BC();
  return sub_23BBDDBF8();
}

uint64_t sub_23B9C4430@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AB8);
  (*(*(v9 - 8) + 16))(a4, a1, v9);
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AC0) + 36));
  *v10 = sub_23B9C4588;
  v10[1] = 0;
  v10[2] = sub_23B9C8138;
  v10[3] = v8;
  KeyPath = swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AC8);
  sub_23BBDBF68();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AD0);
  v13 = a4 + *(result + 36);
  *v13 = KeyPath;
  *(v13 + 8) = v14;
  return result;
}

uint64_t sub_23B9C4588@<X0>(char *a1@<X8>)
{
  sub_23BBD9E68();
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v5 = sub_23BBAF41C(v3, KeyPath, &unk_284E56E40);

  if (v5 == 8)
  {
    v7 = 7;
  }

  else
  {
    v7 = v5;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_23B9C4668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v28 = a2;
  v27 = a1;
  v30 = a6;
  type metadata accessor for MagicPocketLayoutViewModifier();
  swift_getWitnessTable();
  sub_23BBDAE98();
  _s17_StoreKit_SwiftUI26MagicPocketApplierModifierVMa_0();
  v25 = sub_23BBDA358();
  v22[1] = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v26 = a5;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDAAC8();
  sub_23BBDA358();
  sub_23BBDACE8();
  v23 = sub_23BBDBE28();
  v24 = sub_23B9C7F48();
  v54 = WitnessTable;
  v55 = swift_getWitnessTable();
  v9 = v25;
  v22[0] = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = WitnessTable;
  v53 = swift_getWitnessTable();
  v50 = OpaqueTypeConformance2;
  v51 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v11 = v23;
  v43 = &type metadata for StoreKitViewsFeature;
  v44 = v25;
  v45 = v23;
  v46 = v24;
  v47 = v22[0];
  v48 = swift_getWitnessTable();
  v12 = type metadata accessor for FeatureView();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v38 = a4;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v32 = a4;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  v36 = v29;
  sub_23BBC691C(0, sub_23B9C7F9C, v37, sub_23B9C7FB4, v31, v9, v11);
  v19 = swift_getWitnessTable();
  sub_23B9D2D88(v16, v12, v19);
  v20 = *(v13 + 8);
  v20(v16, v12);
  sub_23B9D2D88(v18, v12, v19);
  return (v20)(v18, v12);
}

uint64_t sub_23B9C4B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24 = a5;
  type metadata accessor for MagicPocketLayoutViewModifier();
  swift_getWitnessTable();
  v7 = sub_23BBDAE98();
  _s17_StoreKit_SwiftUI26MagicPocketApplierModifierVMa_0();
  v8 = sub_23BBDA358();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_23BBDAB48();
  sub_23BBC5870(1, v16, 0, 0, a2, v22, v7, a4, WitnessTable);
  v17 = swift_getWitnessTable();
  v25 = WitnessTable;
  v26 = v17;
  v18 = swift_getWitnessTable();
  sub_23B9D2D88(v12, v8, v18);
  v19 = *(v9 + 8);
  v19(v12, v8);
  sub_23B9D2D88(v14, v8, v18);
  return (v19)(v14, v8);
}

uint64_t sub_23B9C4D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v30 = a6;
  type metadata accessor for MagicPocketLayoutViewModifier();
  swift_getWitnessTable();
  v8 = sub_23BBDAE98();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v8;
  v42 = OpaqueTypeMetadata2;
  v43 = WitnessTable;
  v44 = OpaqueTypeConformance2;
  v24[0] = MEMORY[0x277CDE708];
  swift_getOpaqueTypeMetadata2();
  sub_23BBDAAC8();
  v24[1] = sub_23BBDA358();
  sub_23BBDACE8();
  v10 = sub_23BBDBE28();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v31 = a4;
  v32 = a5;
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v41 = v8;
  v42 = OpaqueTypeMetadata2;
  v43 = WitnessTable;
  v44 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = swift_getWitnessTable();
  v39 = WitnessTable;
  v40 = v18;
  v19 = swift_getWitnessTable();
  v37 = v17;
  v38 = v19;
  v20 = swift_getWitnessTable();
  sub_23BBDBE18();
  v36 = v20;
  v21 = swift_getWitnessTable();
  sub_23B9D2D88(v14, v10, v21);
  v22 = *(v11 + 8);
  v22(v14, v10);
  sub_23B9D2D88(v16, v10, v21);
  return (v22)(v16, v10);
}

uint64_t sub_23B9C50D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a3;
  v48 = a2;
  v50 = a1;
  v54 = a6;
  type metadata accessor for MagicPocketLayoutViewModifier();
  swift_getWitnessTable();
  v8 = sub_23BBDAE98();
  v53 = sub_23BBDAAC8();
  v9 = sub_23BBDA358();
  v47 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v72 = a4;
  v73 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v72 = a4;
  v73 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = OpaqueTypeMetadata2;
  v59 = v8;
  v72 = v8;
  v73 = OpaqueTypeMetadata2;
  v55 = WitnessTable;
  v74 = WitnessTable;
  v75 = OpaqueTypeConformance2;
  v57 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v46 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v52 = sub_23BBDACE8();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v56 = &v46 - v24;
  v25 = sub_23BBDC2A8();
  v60 = a4;
  v61 = a5;
  v62 = v48;
  v63 = v49;
  if (v25)
  {
    v26 = swift_checkMetadataState();
    sub_23BBDAB48();
    v27 = v57;
    v28 = v55;
    v29 = v59;
    sub_23BBDB798();
    v72 = v29;
    v73 = v26;
    v74 = v28;
    v75 = v27;
    v30 = swift_getOpaqueTypeConformance2();
    sub_23B9D2D88(v21, v18, v30);
    v31 = *(v46 + 8);
    v31(v21, v18);
    sub_23B9D2D88(v23, v18, v30);
    v32 = swift_getWitnessTable();
    v64 = v28;
    v65 = v32;
    swift_getWitnessTable();
    sub_23BA82D64();
    v31(v21, v18);
    v31(v23, v18);
  }

  else
  {
    sub_23BBDAB48();
    v33 = v55;
    v34 = v59;
    sub_23BBDB808();
    v35 = swift_getWitnessTable();
    v70 = v33;
    v71 = v35;
    v36 = swift_getWitnessTable();
    sub_23B9D2D88(v12, v9, v36);
    v37 = *(v47 + 8);
    v37(v12, v9);
    sub_23B9D2D88(v14, v9, v36);
    v72 = v34;
    v73 = v58;
    v74 = v33;
    v75 = v57;
    swift_getOpaqueTypeConformance2();
    sub_23BA82E14();
    v37(v12, v9);
    v37(v14, v9);
  }

  v72 = v59;
  v73 = v58;
  v38 = v55;
  v74 = v55;
  v75 = v57;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = swift_getWitnessTable();
  v68 = v38;
  v69 = v40;
  v41 = swift_getWitnessTable();
  v66 = v39;
  v67 = v41;
  v42 = v52;
  v43 = swift_getWitnessTable();
  v44 = v56;
  sub_23B9D2D88(v56, v42, v43);
  return (*(v51 + 8))(v44, v42);
}

uint64_t sub_23B9C5814@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v26 = a4;
  v25 = sub_23BBDAB38();
  v23 = *(v25 - 8);
  v6 = MEMORY[0x28223BE20](v25);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v28 = a3;
  v22[1] = MEMORY[0x277CDEA38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v24(0);
  sub_23BBDAB28();
  sub_23BBDB938();
  (*(v23 + 8))(v8, v25);
  (*(v9 + 8))(v11, a2);
  v27 = a2;
  v28 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9D2D88(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v20 = *(v13 + 8);
  v20(v16, OpaqueTypeMetadata2);
  sub_23B9D2D88(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v20)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_23B9C5AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12(0);
  sub_23B9D2D88(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  sub_23B9D2D88(v11, a3, a4);
  return (v13)(v11, a3);
}

uint64_t sub_23B9C5C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23B9C7374(a1, &v5 - v3, qword_27E199868);
  return sub_23BBDA738();
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23B9C5D4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B9C5D6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
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

  *(result + 57) = v3;
  return result;
}

void sub_23B9C5DB8()
{
  sub_23B9C684C();
  if (v0 <= 0x3F)
  {
    sub_23B9C68B0();
    if (v1 <= 0x3F)
    {
      sub_23B9C6908(319, &qword_27E1998F8, &type metadata for SubscriptionStoreControlPlacementKey, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23B9C6908(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v5 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v6 <= 0x3F)
              {
                sub_23B9C6908(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_23B9C6908(319, &qword_27E199900, &type metadata for StructuredScrollViewGeometry, MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    sub_23B9C6908(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_23B9C5FC0(_DWORD *a1, unsigned int a2, void *a3)
{
  v6 = *(sub_23BBDAF68() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDA308() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = a3[2];
  v12 = a3[3];
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = *(v12 - 8);
  v16 = *(v15 + 84);
  if (v14 <= v16)
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = a3[4];
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  if (v17 <= v20)
  {
    v21 = *(v19 + 84);
  }

  else
  {
    v21 = v17;
  }

  if (v21 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  else
  {
    v22 = v21;
  }

  if (v7)
  {
    v23 = v8;
  }

  else
  {
    v23 = v8 + 1;
  }

  if (v23 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v6 + 80);
  v26 = *(v9 + 80);
  v27 = *(v13 + 80);
  v28 = *(v15 + 80);
  v29 = *(v19 + 80);
  v30 = *(v19 + 64);
  if (!a2)
  {
    return 0;
  }

  v31 = v24 + 1;
  v32 = v25 & 0xF8 | 7;
  v33 = v31 + v32;
  v34 = v26 & 0xF8 | 7;
  v35 = v10 + 56;
  v36 = v27 + 9;
  v37 = *(*(v11 - 8) + 64) + v28;
  v38 = *(*(v12 - 8) + 64) + v29;
  v39 = v30 + 23;
  if (v22 < a2)
  {
    v40 = ((((((v39 + ((v38 + ((v37 + ((v36 + ((v35 + ((v31 + v34 + (v33 & ~v32)) & ~v34)) & 0xFFFFFFFFFFFFFFF8)) & ~v27)) & ~v28)) & ~v29)) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    if ((v40 & 0xFFFFFFF8) != 0)
    {
      v41 = 2;
    }

    else
    {
      v41 = a2 - v22 + 1;
    }

    if (v41 >= 0x10000)
    {
      v42 = 4;
    }

    else
    {
      v42 = 2;
    }

    if (v41 < 0x100)
    {
      v42 = 1;
    }

    if (v41 >= 2)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    switch(v43)
    {
      case 1:
        v44 = *(a1 + v40);
        if (!*(a1 + v40))
        {
          break;
        }

        goto LABEL_37;
      case 2:
        v44 = *(a1 + v40);
        if (*(a1 + v40))
        {
          goto LABEL_37;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B9C63B0);
      case 4:
        v44 = *(a1 + v40);
        if (!v44)
        {
          break;
        }

LABEL_37:
        v46 = v44 - 1;
        if ((v40 & 0xFFFFFFF8) != 0)
        {
          v46 = 0;
          v47 = *a1;
        }

        else
        {
          v47 = 0;
        }

        v50 = v22 + (v47 | v46);
        return (v50 + 1);
      default:
        break;
    }
  }

  v48 = (v36 + ((v35 + ((((a1 + v33) & ~v32) + v31 + v34) & ~v34)) & 0xFFFFFFFFFFFFFFF8)) & ~v27;
  if (v14 == v22)
  {
    goto LABEL_45;
  }

  v48 = (v37 + v48) & ~v28;
  if (v16 == v22)
  {
    v14 = v16;
    v11 = v12;
LABEL_45:

    return __swift_getEnumTagSinglePayload(v48, v14, v11);
  }

  v48 = (v38 + v48) & ~v29;
  if (v20 == v22)
  {
    v14 = v20;
    v11 = v18;
    goto LABEL_45;
  }

  v49 = *(((v39 + v48) & 0xFFFFFFFFFFFFFFF8) + 64);
  if (v49 >= 0xFFFFFFFF)
  {
    LODWORD(v49) = -1;
  }

  v50 = v49 - 1;
  if (v50 < 0)
  {
    v50 = -1;
  }

  return (v50 + 1);
}

double sub_23B9C63C4(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(sub_23BBDAF68() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDA308() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v11 + 64);
  }

  v14 = a4[2];
  v15 = a4[3];
  v16 = *(v14 - 8);
  v17 = *(v16 + 84);
  v18 = *(v15 - 8);
  v19 = *(v18 + 84);
  if (v17 <= v19)
  {
    v20 = *(v18 + 84);
  }

  else
  {
    v20 = *(v16 + 84);
  }

  v21 = a4[4];
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  if (v20 <= v23)
  {
    v24 = *(v22 + 84);
  }

  else
  {
    v24 = v20;
  }

  if (v24 <= 0x7FFFFFFE)
  {
    v25 = 2147483646;
  }

  else
  {
    v25 = v24;
  }

  if (v9)
  {
    v26 = v10;
  }

  else
  {
    v26 = v10 + 1;
  }

  if (v26 <= 8)
  {
    v26 = 8;
  }

  v27 = v26 + 1;
  v28 = *(v8 + 80) & 0xF8 | 7;
  v29 = v26 + 1 + v28;
  v30 = *(v11 + 80) & 0xF8 | 7;
  v31 = *(v16 + 80);
  v32 = v31 + 9;
  v33 = *(v18 + 80);
  v34 = *(*(a4[2] - 8) + 64) + v33;
  v35 = *(v22 + 80);
  v36 = *(*(v15 - 8) + 64) + v35;
  v37 = *(v22 + 64) + 23;
  v38 = ((((((v37 + ((v36 + ((v34 + ((v31 + 9 + ((v13 + 56 + ((v26 + 1 + v30 + (v29 & ~v28)) & ~v30)) & 0xFFFFFFFFFFFFFFF8)) & ~v31)) & ~v33)) & ~v35)) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 >= a3)
  {
    v41 = 0;
  }

  else
  {
    if (((((((v37 + ((v36 + ((v34 + ((v31 + 9 + ((v13 + 56 + ((v26 + 1 + v30 + (v29 & ~v28)) & ~v30)) & 0xFFFFFFF8)) & ~v31)) & ~v33)) & ~v35)) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v39 = a3 - v25 + 1;
    }

    else
    {
      v39 = 2;
    }

    if (v39 >= 0x10000)
    {
      v40 = 4;
    }

    else
    {
      v40 = 2;
    }

    if (v39 < 0x100)
    {
      v40 = 1;
    }

    if (v39 >= 2)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }
  }

  if (a2 > v25)
  {
    if (v38)
    {
      v42 = 1;
    }

    else
    {
      v42 = a2 - v25;
    }

    if (v38)
    {
      v43 = ~v25 + a2;
      bzero(a1, v38);
      *a1 = v43;
    }

    switch(v41)
    {
      case 1:
        *(a1 + v38) = v42;
        return result;
      case 2:
        *(a1 + v38) = v42;
        return result;
      case 3:
        goto LABEL_61;
      case 4:
        *(a1 + v38) = v42;
        return result;
      default:
        return result;
    }
  }

  v44 = ~v28;
  v45 = ~v31;
  v46 = ~v33;
  switch(v41)
  {
    case 1:
      *(a1 + v38) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    case 2:
      *(a1 + v38) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    case 3:
LABEL_61:
      __break(1u);
      JUMPOUT(0x23B9C6824);
    case 4:
      *(a1 + v38) = 0;
      goto LABEL_45;
    default:
LABEL_45:
      if (!a2)
      {
        return result;
      }

LABEL_46:
      v47 = (v32 + ((v13 + 56 + ((((a1 + v29) & v44) + v27 + v30) & ~v30)) & 0xFFFFFFFFFFFFFFF8)) & v45;
      if (v17 == v25)
      {
        v48 = a2;
      }

      else
      {
        v47 = (v34 + v47) & v46;
        if (v19 == v25)
        {
          v48 = a2;
          v17 = v19;
          v14 = v15;
        }

        else
        {
          v47 = (v36 + v47) & ~v35;
          if (v23 != v25)
          {
            v49 = (v37 + v47) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0x7FFFFFFE)
            {
              result = 0.0;
              *(v49 + 40) = 0u;
              *(v49 + 24) = 0u;
              *(v49 + 8) = 0u;
              *(v49 + 56) = 0u;
              *v49 = (a2 - 0x7FFFFFFF);
            }

            else
            {
              *(v49 + 64) = a2;
            }

            return result;
          }

          v48 = a2;
          v17 = v23;
          v14 = v21;
        }
      }

      __swift_storeEnumTagSinglePayload(v47, v48, v17, v14);
      return result;
  }
}

void sub_23B9C684C()
{
  if (!qword_27E1998F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E199868);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1998F0);
    }
  }
}

void sub_23B9C68B0()
{
  if (!qword_27E198D30)
  {
    sub_23BBDA308();
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E198D30);
    }
  }
}

void sub_23B9C6908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23B9C695C()
{
  result = qword_27E199910;
  if (!qword_27E199910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199910);
  }

  return result;
}

uint64_t sub_23B9C6A30()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_2_8();

  return sub_23B9C2E48();
}

uint64_t sub_23B9C6ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_18_6();

  return sub_23B9C2F24(a1, v11, v5, v6, v7, v8, v9, v10, a2);
}

unint64_t sub_23B9C6B8C()
{
  result = qword_27E199968;
  if (!qword_27E199968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199968);
  }

  return result;
}

uint64_t sub_23B9C6BE0()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_2_8();

  return sub_23B9C3D74(v0, v1, v2, v3, v4, v5, v6, v7);
}

unint64_t sub_23B9C6C7C()
{
  result = qword_27E199978;
  if (!qword_27E199978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199978);
  }

  return result;
}

unint64_t sub_23B9C6CD0()
{
  result = qword_27E199980;
  if (!qword_27E199980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199980);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v15 = *(v0 + 32);
  v3 = type metadata accessor for StructuredScrollView();
  v4 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v5 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23BBDAF68();
    if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v6))
    {
      OUTLINED_FUNCTION_1_4();
      (*(v7 + 8))(v0 + v4, v6);
    }
  }

  else
  {
  }

  v8 = v3[17];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23BBDAF68();
    if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v9))
    {
      OUTLINED_FUNCTION_1_4();
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v3[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDA308();
    OUTLINED_FUNCTION_12_1();
    (*(v12 + 8))(v5 + v11);
  }

  else
  {
  }

  v13 = v5 + v3[19];
  if (*(v13 + 40))
  {
    if (*(v13 + 24) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
  }

  sub_23B97B5C0(*(v5 + v3[20]), *(v5 + v3[20] + 8));
  (*(*(v2 - 8) + 8))(v5 + v3[21], v2);
  (*(*(v1 - 8) + 8))(v5 + v3[22], v1);
  (*(*(v15 - 8) + 8))(v5 + v3[23]);

  return swift_deallocObject();
}

double sub_23B9C7050()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_2_8();

  return sub_23B9C3EA4(v0);
}

unint64_t sub_23B9C70EC()
{
  result = qword_27E199990;
  if (!qword_27E199990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199990);
  }

  return result;
}

uint64_t sub_23B9C7140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B9C71FC()
{
  result = qword_27E1999C0;
  if (!qword_27E1999C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999C0);
  }

  return result;
}

unint64_t sub_23B9C7290()
{
  result = qword_27E1999C8;
  if (!qword_27E1999C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999C8);
  }

  return result;
}

unint64_t sub_23B9C72E4()
{
  result = qword_27E1999D0;
  if (!qword_27E1999D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999D0);
  }

  return result;
}

uint64_t sub_23B9C7374(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_1_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_23B9C73D8()
{
  result = qword_27E1999F8;
  if (!qword_27E1999F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930);
    sub_23B9C7490();
    sub_23B97B518(&qword_27E198198, &qword_27E198180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999F8);
  }

  return result;
}

unint64_t sub_23B9C7490()
{
  result = qword_27E199A00;
  if (!qword_27E199A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1999E8);
    sub_23B9C7578(&qword_27E199A08, type metadata accessor for StructuredScrollViewContentBackground);
    sub_23B97B518(&qword_27E1999D8, &qword_27E199920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199A00);
  }

  return result;
}

uint64_t sub_23B9C7578(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B9C763C()
{
  result = qword_27E199A10[0];
  if (!qword_27E199A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E199A10);
  }

  return result;
}

uint64_t sub_23B9C76A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_23B9C76F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23B9C7774()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B9C77B0(uint64_t *a1, int a2)
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

uint64_t sub_23B9C77F0(uint64_t result, int a2, int a3)
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

uint64_t sub_23B9C782C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199918);
  sub_23BBDB038();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_28_0();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_29_0();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_28_0();
  sub_23BBDD648();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v0, &qword_27E199918);
  OUTLINED_FUNCTION_21_3();
  sub_23BBDA018();
  OUTLINED_FUNCTION_3_9();
  sub_23B97B518(v1, &qword_27E199918);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_9();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4();
  type metadata accessor for AutoEnablingScrollView();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_6();
  sub_23B9C7578(v2, v3);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  type metadata accessor for StructuredScrollViewBottomInset();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_29_0();
  sub_23BBDA358();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDD648();
  OUTLINED_FUNCTION_5_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_5();
  sub_23B9C7578(v4, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  type metadata accessor for MagicPocketLayoutViewModifier();
  OUTLINED_FUNCTION_28_0();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199958);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199960);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_14_5();
  swift_getWitnessTable();
  sub_23B9C6B8C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9C6C7C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_11();
  sub_23B97B518(v6, &qword_27E199958);
  swift_getWitnessTable();
  sub_23B9C70EC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_6();
  sub_23B97B518(v7, &qword_27E199960);
  return swift_getWitnessTable();
}

unint64_t sub_23B9C7E78()
{
  result = qword_27E199A98;
  if (!qword_27E199A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199A98);
  }

  return result;
}

unint64_t sub_23B9C7F48()
{
  result = qword_27E199AA0;
  if (!qword_27E199AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199AA0);
  }

  return result;
}

uint64_t sub_23B9C8014()
{
  sub_23BBD9E98();
  OUTLINED_FUNCTION_12_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_23B9C8090(uint64_t a1)
{
  sub_23BBD9E98();

  return sub_23B9C40EC(a1);
}

uint64_t sub_23B9C8100()
{

  return swift_deallocObject();
}

uint64_t sub_23B9C8144@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB51630();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CommonUIHorizontalSizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HorizontalSizeClassSetterViewModifier.GeometryResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x23B9C82F0);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23B9C8328()
{
  OUTLINED_FUNCTION_26_0();
  type metadata accessor for MagicPocketLayoutViewModifier();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDAE98();
  OUTLINED_FUNCTION_26_0();
  _s17_StoreKit_SwiftUI26MagicPocketApplierModifierVMa_0();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_23BBDAAC8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  sub_23BBDACE8();
  sub_23BBDBE28();
  sub_23B9C7F48();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_5();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for FeatureView();
  return swift_getWitnessTable();
}

unint64_t sub_23B9C85B4()
{
  result = qword_27E199AD8;
  if (!qword_27E199AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199AB0);
    sub_23B97B518(&qword_27E199AE0, &qword_27E199AA8);
    sub_23B97B518(&qword_27E199AE8, &qword_27E199AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199AD8);
  }

  return result;
}

unint64_t sub_23B9C869C()
{
  result = qword_27E199AF8;
  if (!qword_27E199AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199AD0);
    sub_23B9C8754();
    sub_23B97B518(&qword_27E199B20, &qword_27E199B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199AF8);
  }

  return result;
}

unint64_t sub_23B9C8754()
{
  result = qword_27E199B00;
  if (!qword_27E199B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199AC0);
    sub_23B97B518(&qword_27E199B08, &qword_27E199AB8);
    sub_23B97B518(&qword_27E199B10, &qword_27E199B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199B00);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_27_0(uint64_t a1)
{
  v3 = *(v1 + 336);
  result = *(v1 + 352);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_23B9C8A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B38);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_23B9C9074;
  *(v10 + 24) = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B40);
  (*(*(v11 - 8) + 16))(a4, a1, v11);
  v12 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B48) + 36));
  *v12 = KeyPath;
  v12[1] = v10;
}

uint64_t sub_23B9C8B44()
{
  sub_23B9C8BC4();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23B9C8BC4()
{
  result = qword_27E199B30;
  if (!qword_27E199B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199B30);
  }

  return result;
}

uint64_t sub_23B9C8C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_23BBDCC88();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 + 16);
  v28 = a3;

  v17(a1, a2, &v28);

  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23B9C8F9C(v12);
    return __swift_storeEnumTagSinglePayload(a5, 1, 1, v13);
  }

  else
  {
    v19 = (*(v14 + 32))(v16, v12, v13);
    MEMORY[0x28223BE20](v19);
    *(&v27 - 2) = v16;
    if (sub_23BB78900(sub_23B9C9004, (&v27 - 4), a3))
    {
      (*(v14 + 16))(a5, v16, v13);
      v20 = a5;
      v21 = 0;
    }

    else
    {
      if (qword_27E1976D0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v22, qword_27E1BFC88);
      v23 = sub_23BBDD598();
      v24 = sub_23BBD9988();
      if (os_log_type_enabled(v24, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v25 = 136446466;
        *(v25 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v28);
        *(v25 + 12) = 2082;
        *(v25 + 14) = sub_23BA5AB90(0xD000000000000059, 0x800000023BBE0710, &v28);
        _os_log_impl(&dword_23B970000, v24, v23, "%{public}s%{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEB6DC0](v26, -1, -1);
        MEMORY[0x23EEB6DC0](v25, -1, -1);
      }

      v20 = a5;
      v21 = 1;
    }

    __swift_storeEnumTagSinglePayload(v20, v21, 1, v13);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_23B9C8F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9C903C()
{

  return swift_deallocObject();
}

unint64_t sub_23B9C90B4()
{
  result = qword_27E199B50;
  if (!qword_27E199B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199B48);
    sub_23B97B518(&qword_27E199B58, &qword_27E199B40);
    sub_23B97B518(&qword_27E199B60, &qword_27E199B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199B50);
  }

  return result;
}

double AutomaticSubscriptionStoreControlStyle.Placement.init(rawValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9C9234(a1, v7);
  if (v8 >= 6)
  {
    v5 = *(a1 + 16);
    v9 = *a1;
    v10 = v5;
    v11 = *(a1 + 32);
    sub_23B9C9290(v7);
    result = *&v9;
    v6 = v10;
    *a2 = v9;
    *(a2 + 16) = v6;
    *(a2 + 32) = v11;
  }

  else
  {
    sub_23B97B104(a1);
    sub_23B9C9290(v7);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&result = 6;
    *(a2 + 24) = xmmword_23BBE8BF0;
  }

  return result;
}

unint64_t static AutomaticSubscriptionStoreControlStyle.Placement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_284E5A000;
  result = sub_23B9C9318();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23B9C9318()
{
  result = qword_27E199B70;
  if (!qword_27E199B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199B70);
  }

  return result;
}

double sub_23B9C936C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (qword_27E1977E8 != -1)
    {
      swift_once();
    }

    if (byte_27E1A04D1 != 1)
    {
      if (byte_27E1A04D1 != 3 || (storekit_dyld_fall_2024_os_versions(), !dyld_program_minos_at_least()))
      {
        *(a2 + 32) = 0;
        *&v3 = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return *&v3;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3 = xmmword_23BBE4070;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3 = xmmword_23BBE7BC0;
  }

  *(a2 + 24) = v3;
  return *&v3;
}

uint64_t AutomaticSubscriptionStoreControlStyle.makeBody(configuration:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B78);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B80);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B88);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B90);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B98);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199BA0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  SubscriptionStoreControlStyleConfiguration.options.getter();
  v23 = *(v22 + 16);

  if (v23 == 1 && (*a1 & 1) == 0)
  {
    sub_23B9C990C(a1, &v21[*(v36 + 36)]);
    sub_23BBDAFF8();
    sub_23B99FCE0(v21, v18, &qword_27E199BA0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_8();
    sub_23B9C9970(v28, v29);
    sub_23B9C99C4();
    sub_23BBDACD8();
  }

  else
  {
    if (qword_27E1977E0 != -1)
    {
      swift_once();
    }

    if (byte_27E1A04D0 && (byte_27E1A04D0 != 3 || (storekit_dyld_fall_2025_os_versions(), dyld_program_sdk_at_least())))
    {
      sub_23B9C990C(a1, &v12[*(v9 + 36)]);
      sub_23BBDAFF8();
      sub_23B99FCE0(v12, v8, &qword_27E199B88);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_8();
      sub_23B9C9970(v24, v25);
      sub_23B9C9970(&qword_27E199BB0, &qword_27E199B78);
      OUTLINED_FUNCTION_3_11();
      sub_23BBDACD8();
      OUTLINED_FUNCTION_4_8();
    }

    else
    {
      sub_23B9C990C(a1, &v5[*(v34 + 36)]);
      sub_23BBDAFF8();
      sub_23B99FCE0(v5, v8, &qword_27E199B78);
      swift_storeEnumTagMultiPayload();
      sub_23B9C9970(&qword_27E199BA8, &qword_27E199B88);
      sub_23B9C9970(&qword_27E199BB0, &qword_27E199B78);
      OUTLINED_FUNCTION_3_11();
      sub_23BBDACD8();
      v26 = v5;
      v27 = &qword_27E199B78;
    }

    sub_23B979910(v26, v27);
    sub_23B99FCE0(v15, v18, &qword_27E199B90);
    swift_storeEnumTagMultiPayload();
    sub_23B9C9970(&qword_27E199BB8, &qword_27E199BA0);
    sub_23B9C99C4();
    sub_23BBDACD8();
  }

  OUTLINED_FUNCTION_4_8();
  return sub_23B979910(v30, v31);
}

uint64_t sub_23B9C990C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9C9970(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B9C99C4()
{
  result = qword_27E199BC0;
  if (!qword_27E199BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199B90);
    sub_23B9C9970(&qword_27E199BA8, &qword_27E199B88);
    sub_23B9C9970(&qword_27E199BB0, &qword_27E199B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BC0);
  }

  return result;
}

unint64_t sub_23B9C9A80(uint64_t a1)
{
  result = sub_23B9C9AA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B9C9AA8()
{
  result = qword_27E199BC8;
  if (!qword_27E199BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BC8);
  }

  return result;
}

unint64_t sub_23B9C9B1C()
{
  result = qword_27E199BD0;
  if (!qword_27E199BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomaticSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23B9C9C0CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B9C9C50()
{
  result = qword_27E199BD8;
  if (!qword_27E199BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199BE0);
    sub_23B9C9970(&qword_27E199BB8, &qword_27E199BA0);
    sub_23B9C99C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BD8);
  }

  return result;
}

unint64_t sub_23B9C9D04()
{
  result = qword_27E199BE8;
  if (!qword_27E199BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BE8);
  }

  return result;
}

unint64_t sub_23B9C9D58(uint64_t a1)
{
  result = sub_23B9C9D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B9C9D80()
{
  result = qword_27E199BF0;
  if (!qword_27E199BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BF0);
  }

  return result;
}

uint64_t sub_23B9C9DF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B97A9E4();
  *a1 = result & 1;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_23B9C9E68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  sub_23B99FCE0(a1, &v5 - v3, qword_27E199BF8);
  sub_23BBDBF58();
  return sub_23B979910(a1, qword_27E199BF8);
}

uint64_t sub_23B9C9F24@<X0>(uint64_t a1@<X8>)
{
  if (v1[8] == 1)
  {
    v3 = *v1;
    v4 = *(*v1 + 16);
    v5 = type metadata accessor for Subscription();
    v6 = v5;
    if (v4)
    {
      sub_23B9CED4C(v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a1, type metadata accessor for Subscription);
      v7 = a1;
      v8 = 0;
    }

    else
    {
      v7 = a1;
      v8 = 1;
    }

    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for Subscription();
    v7 = a1;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_23B9CA008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_23BBDA928();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_23BBD9848();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  sub_23B9C9F24(v16);
  v20 = type metadata accessor for Subscription();
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    v21 = v28;
    sub_23B979910(v16, qword_27E197A68);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v10);
    sub_23B99FCE0(v2 + *(a1 + 48), v9, &qword_27E1996A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v11 + 32))(v21, v9, v10);
    }

    else
    {
      sub_23BBDD5A8();
      v24 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();

      (*(v26 + 8))(v6, v27);
    }

    result = __swift_getEnumTagSinglePayload(v19, 1, v10);
    if (result != 1)
    {
      return sub_23B979910(v19, qword_27E199D08);
    }
  }

  else
  {
    MEMORY[0x23EEB50B0]();
    v22 = *(v11 + 32);
    v22(v19, v13, v10);
    sub_23B9CEDAC(v16, type metadata accessor for Subscription);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v10);
    return (v22)(v28, v19, v10);
  }

  return result;
}

uint64_t sub_23B9CA3FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a1;
  v23 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = a2[2];
  LOBYTE(a2) = *(a2 + 24);
  v15 = type metadata accessor for SubscriptionStoreEntitlementLoadingView();
  v16 = v15[12];
  *(a5 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v17);
  sub_23B9C9E68(v11);
  v18 = a5 + v15[14];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v23;
  *a5 = v22;
  *(a5 + 8) = 1;
  *(a5 + 16) = v12;
  *(a5 + 24) = v13;
  *(a5 + 32) = v14;
  *(a5 + 40) = a2;
  result = (*(*(a4 - 8) + 32))(a5 + v15[10], v19, a4);
  v21 = (a5 + v15[11]);
  *v21 = 0;
  v21[1] = 0;
  return result;
}

uint64_t sub_23B9CA59C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8);
  OUTLINED_FUNCTION_13_0(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v26 = *a4;
  v16 = *(a4 + 8);
  v17 = a4[2];
  LOBYTE(a4) = *(a4 + 24);
  v18 = type metadata accessor for SubscriptionStoreEntitlementLoadingView();
  v19 = v18[12];
  *(a7 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v20);
  sub_23B9C9E68(v14);
  v21 = a7 + v18[14];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  *a7 = v15;
  *(a7 + 8) = a1;
  v22 = v27;
  *(a7 + 16) = v26;
  *(a7 + 24) = v16;
  *(a7 + 32) = v17;
  *(a7 + 40) = a4;
  result = (*(*(a6 - 8) + 32))(a7 + v18[10], v22, a6);
  v24 = (a7 + v18[11]);
  v25 = v29;
  *v24 = v28;
  v24[1] = v25;
  return result;
}

uint64_t sub_23B9CA768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v98 = a2;
  sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v96 = v4;
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_6();
  v95 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CA8);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v92 = v78 - v8;
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v93 = v10;
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_6();
  v91 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v90 = v78 - v14;
  v15 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB0);
  OUTLINED_FUNCTION_4();
  v78[2] = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8);
  OUTLINED_FUNCTION_4();
  v80 = sub_23BBDA358();
  v16 = *(a1 + 24);
  OUTLINED_FUNCTION_15_4();
  v81 = type metadata accessor for SubscriptionStoreStaticView();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_15_4();
  v89 = v15;
  sub_23BBDA358();
  v17 = sub_23B97AD88();
  v132 = v16;
  v133 = v17;
  OUTLINED_FUNCTION_7_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDACB8();
  sub_23BBDA358();
  v79 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  v82 = sub_23BBDA358();
  v78[1] = sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CC0);
  v84 = sub_23BBDA358();
  v86 = sub_23BBDA358();
  v85 = sub_23BBDA358();
  OUTLINED_FUNCTION_15_4();
  v83 = v16;
  v87 = type metadata accessor for SubscriptionStoreEntitlementLoadingView.LoadingView();
  v88 = sub_23BBDACE8();
  v78[3] = sub_23BBDACE8();
  v18 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0);
  v130 = v16;
  v131 = v18;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8);
  v128 = WitnessTable;
  v129 = v20;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_9();
  v21 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_6(v21);
  v22 = swift_getWitnessTable();
  v23 = sub_23B9CEBD4();
  OUTLINED_FUNCTION_1_12();
  v24 = swift_getWitnessTable();
  v126 = v23;
  v127 = v24;
  v25 = v99;
  v26 = swift_getWitnessTable();
  v27 = sub_23B9A243C();
  v124 = v26;
  v125 = v27;
  v28 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_11();
  v30 = sub_23B97B518(v29, &qword_27E199938);
  v122 = v28;
  v123 = v30;
  v31 = swift_getWitnessTable();
  v120 = v22;
  v121 = v31;
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_7();
  v118 = sub_23B97B518(v33, &qword_27E199CC0);
  v119 = v24;
  v116 = swift_getWitnessTable();
  v117 = v27;
  v34 = v100;
  v114 = swift_getWitnessTable();
  v115 = v30;
  v35 = v90;
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_10();
  v37 = swift_getWitnessTable();
  v112 = v36;
  v113 = v37;
  v38 = swift_getWitnessTable();
  v110 = v32;
  v111 = v38;
  swift_getWitnessTable();
  v39 = sub_23BBDC098();
  OUTLINED_FUNCTION_7();
  v79 = v40;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  v43 = v78 - v42;
  type metadata accessor for SubscriptionEntitlementValidator(255);
  v80 = v39;
  v44 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v85 = v45;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v46);
  v81 = v78 - v47;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8);
  v86 = v44;
  sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v87 = v49;
  v88 = v48;
  v50 = MEMORY[0x28223BE20](v48);
  v82 = v78 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v84 = v78 - v52;
  v101 = v89;
  v102 = v83;
  v103 = v34;
  sub_23B9C2924();
  v89 = v43;
  sub_23BBDC088();
  sub_23B9C9F24(v35);
  v53 = type metadata accessor for Subscription();
  if (__swift_getEnumTagSinglePayload(v35, 1, v53) == 1)
  {
    sub_23B979910(v35, qword_27E197A68);
    v54 = (v34 + *(v25 + 44));
    v55 = v54[1];
    if (v55)
    {
      v83 = *v54;
    }

    else
    {
      v83 = 0;
      v55 = 0xE000000000000000;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_23B9FCDA8();
    v83 = v56;
    v55 = v57;

    sub_23B9CEDAC(v35, type metadata accessor for Subscription);
  }

  v59 = v93;
  v58 = v94;
  v60 = v91;
  (*(v93 + 104))(v91, *MEMORY[0x277CDD088], v94);
  v61 = *(v34 + 8);
  v108 = *v34;
  v109 = v61;
  sub_23B9CEC34(v108, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CF0);
  v62 = v92;
  sub_23BBDBF88();
  OUTLINED_FUNCTION_11_7();
  v63 = v80;
  v64 = swift_getWitnessTable();
  v65 = v81;
  v66 = v89;
  sub_23BB529FC(v83, v55, v60, &v108, v62, v63, v64, v81);

  sub_23B979910(v62, &qword_27E199CA8);
  sub_23B9CEC50(v108, v109);
  (*(v59 + 8))(v60, v58);
  (*(v79 + 8))(v66, v63);
  swift_getKeyPath();
  v67 = v95;
  sub_23B9CA008(v99, v95);
  v68 = sub_23B9CEC6C();
  v106 = v64;
  v107 = v68;
  OUTLINED_FUNCTION_7_12();
  v69 = v86;
  v70 = swift_getWitnessTable();
  v71 = v82;
  sub_23BBDB748();

  (*(v96 + 8))(v67, v97);
  (*(v85 + 8))(v65, v69);
  v72 = sub_23B97B518(&qword_27E199D00, &qword_27E199CE8);
  v104 = v70;
  v105 = v72;
  v73 = v88;
  v74 = swift_getWitnessTable();
  v75 = v84;
  sub_23B9D2D88(v71, v73, v74);
  v76 = *(v87 + 8);
  v76(v71, v73);
  sub_23B9D2D88(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_23B9CB1BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v257 = a1;
  v262 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CC0);
  v7 = sub_23BBDA358();
  v403 = a3;
  v404 = sub_23B97AD88();
  WitnessTable = swift_getWitnessTable();
  v248 = v7;
  v8 = sub_23BBDACB8();
  v242 = v6;
  v277 = sub_23BBDA358();
  v241 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v240 = &v218 - v9;
  v10 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  v274 = v10;
  v11 = sub_23BBDA358();
  v244 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v243 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v250 = &v218 - v14;
  v15 = type metadata accessor for SubscriptionStoreEntitlementLoadingView.LoadingView();
  v273 = v11;
  v16 = sub_23BBDACE8();
  v256 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v263 = (&v218 - v18);
  v275 = v15;
  v252 = *(v15 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v251 = &v218 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v264 = &v218 - v21;
  v272 = v8;
  v22 = sub_23BBDA358();
  v225 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v224 = &v218 - v23;
  v270 = v24;
  v269 = sub_23BBDA358();
  v25 = sub_23BBDA358();
  v238 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v235 = &v218 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v234 = &v218 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB0);
  v29 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8);
  v30 = sub_23BBDA358();
  v278 = a3;
  v31 = type metadata accessor for SubscriptionStoreStaticView();
  v32 = sub_23BBDACE8();
  v271 = v25;
  v33 = sub_23BBDACE8();
  v239 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v245 = &v218 - v35;
  v254 = *(a2 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v255 = &v218 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = v31;
  v229 = *(v31 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v228 = &v218 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v227 = &v218 - v40;
  v41 = sub_23BBDA928();
  v222 = *(v41 - 8);
  v223 = v41;
  v42 = MEMORY[0x28223BE20](v41);
  v221 = &v218 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = *(v29 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v236 = &v218 - v45;
  v266 = v30;
  v46 = *(v30 - 8);
  v47 = MEMORY[0x28223BE20](v44);
  v233 = &v218 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v231 = &v218 - v50;
  MEMORY[0x28223BE20](v49);
  v232 = &v218 - v51;
  v226 = type metadata accessor for SubscriptionStaticViewConfiguration();
  v52 = MEMORY[0x28223BE20](v226);
  v237 = &v218 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = v32;
  v54 = *(v32 - 8);
  v55 = MEMORY[0x28223BE20](v52);
  v246 = &v218 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v249 = &v218 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8);
  MEMORY[0x28223BE20](v58 - 8);
  v60 = &v218 - v59;
  v61 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  v62 = MEMORY[0x28223BE20](v61);
  v64 = &v218 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v253 = &v218 - v65;
  v268 = v33;
  v66 = sub_23BBDACE8();
  v67 = v277;
  v258 = *(v66 - 8);
  v259 = v66;
  MEMORY[0x28223BE20](v66);
  v265 = &v218 - v69;
  v70 = *(v68 + 8);
  v261 = v71;
  v276 = v29;
  if (v70 != 1)
  {
    goto LABEL_12;
  }

  v219 = v46;
  v220 = v54;
  v72 = *v68;
  v73 = v68;
  v74 = type metadata accessor for SubscriptionStoreEntitlementLoadingView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CF0);
  v75 = v73;
  sub_23BBDBF68();
  if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
  {
    sub_23B9CEC50(v72, 1);
    v76 = sub_23B979910(v60, qword_27E199BF8);
    goto LABEL_9;
  }

  v77 = v253;
  sub_23B9CECE8(v60, v253);
  if (!*(v72 + 2))
  {
    sub_23B9CEDAC(v77, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
    sub_23B9CEC50(v72, 1);
LABEL_9:
    v70 = *(v73 + 8);
    v67 = v277;
    v68 = v73;
    if (v70 == 1)
    {
      v85 = v275;
      v86 = v278;
      v87 = v73;
      if (!*(*v73 + 16))
      {
        v264 = &v218;
        MEMORY[0x28223BE20](v76);
        *(&v218 - 4) = a2;
        *(&v218 - 3) = v86;
        *(&v218 - 2) = v73;
        v88 = sub_23B9CEBD4();
        sub_23B9C2924();
        v89 = v224;
        sub_23BBDB6B8();
        v90 = (*(v73 + 32) >> 1) & 1;
        v264 = swift_getWitnessTable();
        v333 = v88;
        v334 = v264;
        v91 = v270;
        v92 = swift_getWitnessTable();
        v93 = v235;
        sub_23B9A2228(v90, v91, v92);
        (*(v225 + 8))(v89, v91);
        v257 = sub_23B9A243C();
        v331 = v92;
        v332 = v257;
        v94 = swift_getWitnessTable();
        v256 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938);
        v329 = v94;
        v330 = v256;
        v95 = v271;
        v96 = swift_getWitnessTable();
        v97 = v234;
        sub_23B9D2D88(v93, v95, v96);
        v98 = *(v238 + 8);
        v238 += 8;
        v263 = v98;
        (v98)(v93, v95);
        sub_23B9D2D88(v97, v95, v96);
        v99 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0);
        v327 = v278;
        v328 = v99;
        v100 = swift_getWitnessTable();
        v101 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8);
        v325 = v100;
        v326 = v101;
        v102 = swift_getWitnessTable();
        v103 = swift_getWitnessTable();
        v323 = v102;
        v324 = v103;
        v104 = swift_getWitnessTable();
        sub_23BA82E14();
        v321 = v104;
        v322 = v96;
        v105 = v268;
        v255 = swift_getWitnessTable();
        v319 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0);
        v320 = v264;
        v317 = swift_getWitnessTable();
        v318 = v257;
        v315 = swift_getWitnessTable();
        v316 = v256;
        v106 = swift_getWitnessTable();
        v107 = swift_getWitnessTable();
        v313 = v106;
        v314 = v107;
        swift_getWitnessTable();
        v108 = v245;
        sub_23BA82D64();
        (*(v239 + 8))(v108, v105);
        v109 = v263;
        v263(v235, v95);
        v109(v234, v95);
        goto LABEL_20;
      }

LABEL_14:
      v111 = v255;
      (*(v254 + 16))(v255, v87 + *(v74 + 40), a2);
      v112 = v251;
      sub_23B9CD6AC(v111, (*(v87 + 32) & 2) != 0, a2, v251);
      v113 = swift_getWitnessTable();
      v114 = v264;
      sub_23B9D2D88(v112, v85, v113);
      v257 = *(v252 + 8);
      (v257)(v112, v85);
      sub_23B9D2D88(v114, v85, v113);
      v115 = v86;
      v116 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0);
      v255 = swift_getWitnessTable();
      v401 = v116;
      v402 = v255;
      v117 = swift_getWitnessTable();
      v254 = sub_23B9A243C();
      v399 = v117;
      v400 = v254;
      v118 = swift_getWitnessTable();
      v252 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938);
      v397 = v118;
      v398 = v252;
      v253 = swift_getWitnessTable();
      v119 = v263;
      sub_23BA82E14();
      v120 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0);
      v395 = v115;
      v396 = v120;
      v121 = swift_getWitnessTable();
      v122 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8);
      v393 = v121;
      v394 = v122;
      v123 = swift_getWitnessTable();
      v124 = swift_getWitnessTable();
      v391 = v123;
      v392 = v124;
      v125 = swift_getWitnessTable();
      v389 = sub_23B9CEBD4();
      v390 = v255;
      v387 = swift_getWitnessTable();
      v388 = v254;
      v385 = swift_getWitnessTable();
      v386 = v252;
      v126 = swift_getWitnessTable();
      v383 = v125;
      v384 = v126;
      swift_getWitnessTable();
      v381 = v253;
      v382 = v113;
      v127 = v261;
      swift_getWitnessTable();
      sub_23BA82E14();
      (*(v256 + 8))(v119, v127);
      v128 = v257;
      (v257)(v112, v85);
      (v128)(v264, v85);
      goto LABEL_20;
    }

LABEL_12:
    v110 = v68;
    if (!v70)
    {
      v257 = &v218;
      v309 = *v68;
      v264 = v309;
      v129 = MEMORY[0x28223BE20](v309);
      v130 = v278;
      *(&v218 - 4) = a2;
      *(&v218 - 3) = v130;
      *(&v218 - 2) = v110;
      v131 = v129;
      v132 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0);
      sub_23B9C2924();
      v133 = v240;
      sub_23BBDB6B8();
      v134 = (*(v110 + 32) >> 1) & 1;
      v257 = swift_getWitnessTable();
      v355 = v132;
      v356 = v257;
      v135 = swift_getWitnessTable();
      v136 = v243;
      sub_23B9A2228(v134, v67, v135);
      (*(v241 + 8))(v133, v67);
      v254 = sub_23B9A243C();
      v353 = v135;
      v354 = v254;
      v137 = swift_getWitnessTable();
      v138 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938);
      v351 = v137;
      v352 = v138;
      v139 = v273;
      v140 = swift_getWitnessTable();
      v141 = v250;
      sub_23B9D2D88(v136, v139, v140);
      v255 = *(v244 + 8);
      (v255)(v136, v139);
      sub_23B9D2D88(v141, v139, v140);
      v253 = swift_getWitnessTable();
      sub_23BA82D64();
      v142 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0);
      v349 = v278;
      v350 = v142;
      v143 = swift_getWitnessTable();
      v144 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8);
      v347 = v143;
      v348 = v144;
      v145 = swift_getWitnessTable();
      v146 = swift_getWitnessTable();
      v345 = v145;
      v346 = v146;
      v147 = swift_getWitnessTable();
      v343 = sub_23B9CEBD4();
      v344 = v257;
      v341 = swift_getWitnessTable();
      v342 = v254;
      v339 = swift_getWitnessTable();
      v340 = v138;
      v148 = swift_getWitnessTable();
      v337 = v147;
      v338 = v148;
      swift_getWitnessTable();
      v335 = v140;
      v336 = v253;
      v149 = v261;
      swift_getWitnessTable();
      v150 = v263;
      sub_23BA82E14();
      sub_23B9CEC50(v264, 0);
      (*(v256 + 8))(v150, v149);
      v151 = v255;
      (v255)(v136, v139);
      (v151)(v250, v139);
      goto LABEL_20;
    }

    v86 = v278;
    v74 = type metadata accessor for SubscriptionStoreEntitlementLoadingView();
    v85 = v275;
    v87 = v110;
    goto LABEL_14;
  }

  v78 = *(v73 + 40);
  v79 = *(v73 + 16);
  v80 = *(v73 + 24);
  v81 = *(v75 + 32);
  if (v78 == 1)
  {
    v82 = v237;
    sub_23B9CED4C(v253, v237 + *(v226 + 24), type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
    *v82 = v72;
    *(v82 + 8) = v79;
    *(v82 + 16) = v80;
    *(v82 + 24) = v81;
    *(v82 + 32) = 1;
    sub_23BA9B990(v82);
    v83 = (v75 + *(v74 + 56));
    v84 = *v83;
    if (*(v83 + 8) != 1)
    {

      sub_23BBDD5A8();
      v163 = sub_23BBDB338();
      sub_23BBD9978();

      v164 = v221;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v84, 0);
      v165 = v223;
      v166 = *(v222 + 8);
      v166(v164, v223);

      sub_23BBDD5A8();
      v167 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v84, 0);
      v166(v164, v165);
    }

    v168 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0);
    v281 = v278;
    v282 = v168;
    v169 = v276;
    v170 = swift_getWitnessTable();
    v171 = v231;
    v172 = v236;
    sub_23B97AB94();
    (*(v230 + 8))(v172, v169);
    v173 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8);
    v279 = v170;
    v280 = v173;
    v174 = v266;
    v175 = swift_getWitnessTable();
    v176 = v232;
    sub_23B9D2D88(v171, v174, v175);
    v177 = *(v219 + 8);
    v177(v171, v174);
    v178 = v233;
    sub_23B9D2D88(v176, v174, v175);
    swift_getWitnessTable();
    sub_23BA82D64();
    v177(v178, v174);
    v177(v176, v174);
    sub_23B9CEDAC(v237, type metadata accessor for SubscriptionStaticViewConfiguration);
  }

  else
  {
    v309 = *(v75 + 16);
    v310 = v80;
    v311 = v81;
    v312 = 0;
    sub_23B9CED4C(v253, v64, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
    v152 = v255;
    (*(v254 + 16))(v255, v75 + *(v74 + 40), a2);
    v153 = v228;
    v154 = v64;
    v155 = v278;
    sub_23BB5CF70(v72, &v309, v154, v152, 0, a2, v228);
    v156 = v267;
    v157 = swift_getWitnessTable();
    v158 = v227;
    sub_23B9D2D88(v153, v156, v157);
    v159 = *(v229 + 8);
    v159(v153, v156);
    sub_23B9D2D88(v158, v156, v157);
    v160 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0);
    v307 = v155;
    v308 = v160;
    v161 = swift_getWitnessTable();
    v162 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8);
    v305 = v161;
    v306 = v162;
    swift_getWitnessTable();
    sub_23BA82E14();
    v159(v153, v156);
    v159(v158, v156);
  }

  v179 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0);
  v303 = v278;
  v304 = v179;
  v180 = swift_getWitnessTable();
  v181 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8);
  v301 = v180;
  v302 = v181;
  v182 = swift_getWitnessTable();
  v183 = swift_getWitnessTable();
  v299 = v182;
  v300 = v183;
  v264 = MEMORY[0x277CE0340];
  v184 = v260;
  v185 = swift_getWitnessTable();
  sub_23B9D2D88(v249, v184, v185);
  v186 = sub_23B9CEBD4();
  v263 = swift_getWitnessTable();
  v297 = v186;
  v298 = v263;
  v187 = swift_getWitnessTable();
  v188 = sub_23B9A243C();
  v295 = v187;
  v296 = v188;
  v189 = swift_getWitnessTable();
  v190 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938);
  v293 = v189;
  v294 = v190;
  v191 = swift_getWitnessTable();
  v192 = v245;
  sub_23BA82D64();
  v291 = v185;
  v292 = v191;
  v193 = v268;
  v257 = swift_getWitnessTable();
  v289 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0);
  v290 = v263;
  v287 = swift_getWitnessTable();
  v288 = v188;
  v285 = swift_getWitnessTable();
  v286 = v190;
  v194 = swift_getWitnessTable();
  v195 = swift_getWitnessTable();
  v283 = v194;
  v284 = v195;
  swift_getWitnessTable();
  sub_23BA82D64();
  (*(v239 + 8))(v192, v193);
  v196 = *(v220 + 8);
  v196(v246, v184);
  v196(v249, v184);
  sub_23B9CEDAC(v253, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
LABEL_20:
  v197 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0);
  v379 = v278;
  v380 = v197;
  v198 = swift_getWitnessTable();
  v199 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8);
  v377 = v198;
  v378 = v199;
  v200 = swift_getWitnessTable();
  v201 = swift_getWitnessTable();
  v375 = v200;
  v376 = v201;
  v202 = swift_getWitnessTable();
  v203 = sub_23B9CEBD4();
  v204 = swift_getWitnessTable();
  v373 = v203;
  v374 = v204;
  v205 = swift_getWitnessTable();
  v206 = sub_23B9A243C();
  v371 = v205;
  v372 = v206;
  v207 = swift_getWitnessTable();
  v208 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938);
  v369 = v207;
  v370 = v208;
  v209 = swift_getWitnessTable();
  v367 = v202;
  v368 = v209;
  v210 = swift_getWitnessTable();
  v365 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0);
  v366 = v204;
  v363 = swift_getWitnessTable();
  v364 = v206;
  v361 = swift_getWitnessTable();
  v362 = v208;
  v211 = swift_getWitnessTable();
  v212 = swift_getWitnessTable();
  v359 = v211;
  v360 = v212;
  v213 = swift_getWitnessTable();
  v357 = v210;
  v358 = v213;
  v214 = v259;
  v215 = swift_getWitnessTable();
  v216 = v265;
  sub_23B9D2D88(v265, v214, v215);
  return (*(v258 + 8))(v216, v214);
}

uint64_t sub_23B9CD524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  type metadata accessor for SubscriptionStoreEntitlementLoadingView();
  sub_23BBDBB48();
  v13 = sub_23B97AD88();
  v17[0] = a3;
  v17[1] = v13;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v10, v4, WitnessTable);
  v15 = *(v6 + 8);
  v15(v10, v4);
  sub_23B9D2D88(v12, v4, WitnessTable);
  return (v15)(v12, v4);
}

uint64_t sub_23B9CD6AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SubscriptionStoreEntitlementLoadingView.LoadingView();
  *(a4 + *(result + 36)) = a2;
  return result;
}

void sub_23B9CD738()
{
  sub_23B9CE1B4(319, &qword_27E199C80, &qword_27E199C88, &unk_23BBEB260, type metadata accessor for EntitlementTaskState);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23B9CE218(319, &qword_27E197B20, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23B9CE15C();
        if (v3 <= 0x3F)
        {
          sub_23B9CE1B4(319, &qword_27E199C98, qword_27E199BF8, &unk_23BBE8DF0, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_23B9CE218(319, &qword_27E199CA0, &_s23MarketingModifierValuesVN, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B9CD8C8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_23BBD9848() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = sub_23BBDCDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = v13 - 1;
  if ((v13 - 1) <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = v14 - 1;
  if (v7 <= v14 - 1)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = v7;
  }

  v17 = *(v6 + 80);
  v18 = *(v11 + 80);
  v19 = *(*(v10 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + 7;
  v21 = *(v8 + 80) & 0xF8;
  v22 = ~v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 23;
  v24 = v18 & 0xF8 | 7;
  v25 = v9 + v24 + 1;
  v26 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (a2 <= v16)
  {
    goto LABEL_29;
  }

  v27 = ((((((v26 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + ((v25 + ((v23 + ((v20 + ((v17 + 41) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v24) + 17;
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v29 = ((a2 - v16 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v29))
    {
      v30 = *(a1 + v27);
      if (!v30)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v29 > 0xFF)
    {
      v30 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v29 < 2)
    {
      goto LABEL_29;
    }
  }

  v30 = *(a1 + v27);
  if (!*(a1 + v27))
  {
LABEL_29:
    v34 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v17 + 41) & ~v17;
    if (v7 >= v15)
    {

      return __swift_getEnumTagSinglePayload(v34, v7, v5);
    }

    else
    {
      v35 = (v20 + v34) & 0xFFFFFFFFFFFFFFF8;
      if (v16 > 0x7FFFFFFE)
      {
        v37 = (v25 + ((v23 + v35) & v22)) & ~v24;
        if (v13 <= 0)
        {
          if (v12 < 0xFD)
          {
            v41 = *(((v19 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v41 >= 2)
            {
              v42 = (v41 + 2147483646) & 0x7FFFFFFF;
            }

            else
            {
              v42 = -1;
            }

            if ((v42 + 1) >= 2)
            {
              EnumTagSinglePayload = v42;
            }

            else
            {
              EnumTagSinglePayload = 0;
            }
          }

          else
          {
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v12, v10);
          }

          v39 = EnumTagSinglePayload - 1;
          if (EnumTagSinglePayload < 2)
          {
            v39 = 0;
          }
        }

        else
        {
          v38 = *(((v26 + 9 + v37) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v38 >= 0xFFFFFFFF)
          {
            LODWORD(v38) = -1;
          }

          v39 = v38 + 1;
        }

        if (v39 >= 2)
        {
          return v39 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v36 = *(v35 + 8);
        if (v36 >= 0xFFFFFFFF)
        {
          LODWORD(v36) = -1;
        }

        if ((v36 + 1) >= 2)
        {
          return v36;
        }

        else
        {
          return 0;
        }
      }
    }
  }

LABEL_22:
  v32 = (v30 - 1) << v28;
  if (v27 >= 4)
  {
    v32 = 0;
  }

  if (((((((v26 + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + ((v25 + ((v23 + ((v20 + ((v17 + 41) & ~v17)) & 0xFFFFFFF8)) & v22)) & ~v24) == -16)
  {
    v33 = *a1;
  }

  else
  {
    v33 = *a1;
  }

  return v16 + (v33 | v32) + 1;
}