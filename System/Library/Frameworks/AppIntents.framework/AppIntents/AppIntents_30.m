void sub_18F3B92C0()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8620);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE54(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8628);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_18F3B93BC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0068);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_1(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_18F147B5C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0070);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_18F3B94D4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_1(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_18F16AE50(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD28);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_18F3B9614()
{
  OUTLINED_FUNCTION_20_38();
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_6();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(v0 + 16);
    if (v6 <= v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      v11 = OUTLINED_FUNCTION_62();
      v12 = _swift_stdlib_malloc_size_1(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v9, v11 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_22_39();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_26();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18F3B96E4()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8600);
      v6 = OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_5_71(v6);
      OUTLINED_FUNCTION_19_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE50(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_56();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B9798()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0028);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16A134(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_56();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B984C()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85E0);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16A154(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85E8);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B993C()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85D0);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE5C(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85D8);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B9A2C()
{
  OUTLINED_FUNCTION_20_38();
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_6();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(v0 + 16);
    if (v6 <= v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size_1(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 56);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v9, v11 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_22_39();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_26();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18F3B9B0C()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85F0);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE5C(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85F8);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B9BCC()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0018);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_5_71(v6);
      OUTLINED_FUNCTION_19_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_78();
        sub_18F16A074(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_56();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B9C88()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85C0);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16A174(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85C8);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_18F3B9D74(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_18F5226AC();
  }

  return sub_18F52283C();
}

uint64_t sub_18F3B9DD8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18F3BA964(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_18F3B9E44(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_18F3B9E44(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18F522C8C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD28);
        v6 = sub_18F521D3C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_18F3B9FAC(v7, v8, a1, v4);
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
    return sub_18F3B9F48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18F3B9F48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (*(v7 + 16) >= *(*v9 + 16))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_18F3B9FAC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_90:
      v74 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v74 = i)
      {
        if (!*a3)
        {
          goto LABEL_126;
        }

        v76 = &v8[16 * i];
        v77 = *v76;
        v78 = &v74[2 * i];
        v79 = v78[1];
        sub_18F3BA504((*a3 + 8 * *v76), (*a3 + 8 * *v78), (*a3 + 8 * v79), v84);
        if (v5)
        {
          break;
        }

        if (v79 < v77)
        {
          goto LABEL_114;
        }

        if (i - 2 >= *v74)
        {
          goto LABEL_115;
        }

        *v76 = v77;
        *(v76 + 1) = v79;
        v80 = *v74 - i;
        if (*v74 < i)
        {
          goto LABEL_116;
        }

        i = *v74 - 1;
        memmove(v78, v78 + 2, 16 * v80);
      }

LABEL_98:

      return;
    }

LABEL_123:
    v8 = sub_18F3BA714();
    goto LABEL_90;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v81 = a4;
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v10 = *(*(*a3 + 8 * v9) + 16);
      v11 = *(*(*a3 + 8 * v7) + 16);
      v12 = v7 + 2;
      v13 = v10;
      while (1)
      {
        v14 = v12;
        if (v12 >= v6)
        {
          break;
        }

        v15 = (v10 < v11) ^ (*(*(*a3 + 8 * v12++) + 16) >= v13);
        v13 = *(*(*a3 + 8 * v14) + 16);
        if ((v15 & 1) == 0)
        {
          v9 = v14;
          goto LABEL_9;
        }
      }

      v9 = v6;
LABEL_9:
      if (v10 < v11)
      {
        if (v9 < v7)
        {
          goto LABEL_120;
        }

        if (v7 < v9)
        {
          if (v6 >= v14)
          {
            v6 = v14;
          }

          v16 = 8 * v6 - 8;
          v17 = 8 * v7;
          v18 = v9;
          v19 = v7;
          do
          {
            if (v19 != --v18)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v21 = *(v20 + v17);
              *(v20 + v17) = *(v20 + v16);
              *(v20 + v16) = v21;
            }

            ++v19;
            v16 -= 8;
            v17 += 8;
          }

          while (v19 < v18);
          v6 = a3[1];
        }
      }
    }

    if (v9 < v6)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_119;
      }

      if (v9 - v7 < a4)
      {
        break;
      }
    }

LABEL_36:
    if (v9 < v7)
    {
      goto LABEL_118;
    }

    v83 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F167414();
      v8 = v72;
    }

    v30 = *(v8 + 2);
    v31 = v30 + 1;
    if (v30 >= *(v8 + 3) >> 1)
    {
      sub_18F167414();
      v8 = v73;
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v30 + 32];
    *v33 = v7;
    *(v33 + 1) = v9;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if (v30)
    {
      while (1)
      {
        v34 = v31 - 1;
        v35 = &v32[16 * v31 - 16];
        v36 = &v8[16 * v31];
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v37 = *(v8 + 4);
          v38 = *(v8 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_56:
          if (v40)
          {
            goto LABEL_105;
          }

          v52 = *v36;
          v51 = *(v36 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = *(v35 + 1);
          v57 = v56 - *v35;
          if (__OFSUB__(v56, *v35))
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v57))
          {
            goto LABEL_113;
          }

          if (v54 + v57 >= v39)
          {
            if (v39 < v57)
            {
              v34 = v31 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        if (v31 < 2)
        {
          goto LABEL_107;
        }

        v59 = *v36;
        v58 = *(v36 + 1);
        v47 = __OFSUB__(v58, v59);
        v54 = v58 - v59;
        v55 = v47;
LABEL_71:
        if (v55)
        {
          goto LABEL_110;
        }

        v61 = *v35;
        v60 = *(v35 + 1);
        v47 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v62 < v54)
        {
          goto LABEL_85;
        }

LABEL_78:
        if (v34 - 1 >= v31)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v66 = &v32[16 * v34 - 16];
        v67 = *v66;
        v68 = &v32[16 * v34];
        v69 = *(v68 + 1);
        sub_18F3BA504((*a3 + 8 * *v66), (*a3 + 8 * *v68), (*a3 + 8 * v69), v84);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v69 < v67)
        {
          goto LABEL_100;
        }

        v5 = v8;
        v70 = *(v8 + 2);
        if (v34 > v70)
        {
          goto LABEL_101;
        }

        *v66 = v67;
        *(v66 + 1) = v69;
        if (v34 >= v70)
        {
          goto LABEL_102;
        }

        v31 = v70 - 1;
        memmove(&v32[16 * v34], v68 + 16, 16 * (v70 - 1 - v34));
        *(v5 + 2) = v70 - 1;
        v71 = v70 > 2;
        v8 = v5;
        v5 = 0;
        if (!v71)
        {
          goto LABEL_85;
        }
      }

      v41 = &v32[16 * v31];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_103;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_104;
      }

      v48 = *(v36 + 1);
      v49 = v48 - *v36;
      if (__OFSUB__(v48, *v36))
      {
        goto LABEL_106;
      }

      v47 = __OFADD__(v39, v49);
      v50 = v39 + v49;
      if (v47)
      {
        goto LABEL_109;
      }

      if (v50 >= v44)
      {
        v64 = *v35;
        v63 = *(v35 + 1);
        v47 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v47)
        {
          goto LABEL_117;
        }

        if (v39 < v65)
        {
          v34 = v31 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_56;
    }

LABEL_85:
    v6 = a3[1];
    v7 = v83;
    a4 = v81;
    if (v83 >= v6)
    {
      goto LABEL_88;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_121;
  }

  if (v7 + a4 < v6)
  {
    v6 = v7 + a4;
  }

  if (v6 < v7)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v9 == v6)
  {
    goto LABEL_36;
  }

  v22 = *a3;
  v23 = *a3 + 8 * v9 - 8;
  v24 = v7 - v9;
LABEL_29:
  v25 = *(v22 + 8 * v9);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(v25 + 16) >= *(*v27 + 16))
    {
LABEL_34:
      ++v9;
      v23 += 8;
      --v24;
      if (v9 == v6)
      {
        v9 = v6;
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
}

uint64_t sub_18F3BA504(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_18F16AE50(a1);
    v10 = &a4[8 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*(*v6 + 16) >= *(*a4 + 16))
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *a4;
    v13 = v7 == a4;
    a4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_18F16AE50(a2);
  v10 = &a4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > a4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (*(v16 + 16) < *(*v14 + 16))
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - a4) / 8;
  if (v6 != a4 || v6 >= &a4[8 * v17])
  {
    memmove(v6, a4, 8 * v17);
  }

  return 1;
}

uint64_t sub_18F3BA688(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18F3BA714();
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
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_18F3BA72C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_18F3BA758(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_18F3BA858(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18F3B9D60();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_18F16AE50(v3 + 8 * a1 + 40);
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_18F3BA8D4()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18F3B9D60();
    v1 = v3;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18F3BA9BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_18F3BAA34(v2, v1);
}

uint64_t sub_18F3BAA34(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_92();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18F3BAA84(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_18F3BAB04;
}

void sub_18F3BAB04(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t AppEntityUIElementProviderWrapper.provider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_18F14A6A0();
}

uint64_t AppEntityUIElementProviderWrapper.__allocating_init(_:view:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AppEntityUIElementProviderWrapper.init(_:view:)(a1, a2, a3);
  return v6;
}

uint64_t sub_18F3BABF4(void *__src)
{
  memcpy(__dst, __src, 0x49uLL);
  v11 = MEMORY[0x1E69E7CC0];
  if (*(v1 + 48) == 1)
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    v4 = sub_18F521EBC();
    MEMORY[0x1EEE9AC00](v4);
    v9[2] = &v11;
    v9[3] = v3;
    v9[4] = v2;
    v9[5] = __dst;

    sub_18F17EBC8(sub_18F3BB40C, v9);
    sub_18F14A500();
    return v11;
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      memcpy(v10, __dst, 0x49uLL);
      v5 = (*(v6 + 8))(v10, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v5;
}

uint64_t sub_18F3BAD74(void *a1, uint64_t (*a2)(_BYTE *), int a3, void *__src)
{
  memcpy(v7, __src, 0x49uLL);
  *a1 = a2(v7);
}

uint64_t AppEntityUIElementProviderWrapper.deinit()
{
  sub_18F16A198(v0 + 16);
  sub_18F14A500();
  return v0;
}

uint64_t AppEntityUIElementProviderWrapper.__deallocating_deinit()
{
  sub_18F16A198(v0 + 16);
  sub_18F14A500();

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t AppEntityUIElementProviderWrapper.elements(for:)(void *a1)
{
  v30 = type metadata accessor for ViewAnnotation(0);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4();
  v4 = v3 - v2;
  v29 = type metadata accessor for AppEntityUIElement();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = sub_18F3BABF4(a1);
  v10 = *(v9 + 16);
  if (v10)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v11 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    while (1)
    {
      sub_18F3BB238(v11, v8, type metadata accessor for AppEntityUIElement);
      sub_18F3BB238(v8 + *(v29 + 32), v4, type metadata accessor for ViewAnnotation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_18F0FF968(v4, &v31);
        v14 = v33;
        v15 = v12;
        v16 = __swift_project_boxed_opaque_existential_1Tm(&v31, v33);
        v17 = type metadata accessor for _RepresentedEntityElement();
        MEMORY[0x1EEE9AC00](v17);
        OUTLINED_FUNCTION_4();
        v21 = v16;
        v12 = v15;
        (*(v20 + 16))(v19 - v18, v21, v14);
        OUTLINED_FUNCTION_0_119();
        _RepresentedEntityElement.__allocating_init<A>(appEntity:geometry:state:subelements:)();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_1Tm(&v31);
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          result = sub_18F522A3C();
          __break(1u);
          return result;
        }

        v24 = *(v4 + 16);
        v25 = *(v4 + 24);
        v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
        v31 = *v4;
        v32 = v24;
        v33 = v25;
        OUTLINED_FUNCTION_0_119();
        type metadata accessor for _RepresentedEntityElement();
        swift_allocObject();
        v23 = sub_18F160014(&v31, v35, &v34, MEMORY[0x1E69E7CC0]);
        sub_18F1C7564(v4 + v26);
      }

      if (*(v8 + 64) == 1)
      {
        v27 = OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_state;
        swift_beginAccess();
        *(v23 + v27) = 1;
      }

      sub_18F3BB2A0(v8);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v11 += v12;
      if (!--v10)
      {

        return v36;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18F3BB238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18F3BB2A0(uint64_t a1)
{
  v2 = type metadata accessor for AppEntityUIElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall XPCListenerSpecification.init(endpoint:auditToken:)(AppIntents::XPCListenerSpecification *__return_ptr retstr, NSXPCListenerEndpoint endpoint, audit_token_t *auditToken)
{
  retstr->endpoint = endpoint;
  *retstr->auditToken.val = auditToken;
  *&retstr->auditToken.val[2] = v3;
  *&retstr->auditToken.val[4] = v4;
  *&retstr->auditToken.val[6] = v5;
}

uint64_t dispatch thunk of XPCListenerIntent.listenerSpecification.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

uint64_t sub_18F3BB58C()
{
  OUTLINED_FUNCTION_69();
  v1[3] = v0;
  v1[4] = type metadata accessor for FetchStructuredDataTask();
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F3BB618()
{
  v68 = v0;
  sub_18F3C0660(v0[3], v0[5]);
  v1 = sub_18F52163C();
  v2 = sub_18F52220C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[5];
  if (v3)
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = *(v4 + *(v5 + 24));
    sub_18F3C06C4(v4);
    *(v6 + 4) = v7;
    _os_log_impl(&dword_18F0E9000, v1, v2, "Fetching structured data for entity identifiers of type: %ld", v6, 0xCu);
    OUTLINED_FUNCTION_32();
  }

  else
  {
    sub_18F3C06C4(v0[5]);
  }

  v8 = v0[3];
  v9 = v0[4];

  v10 = *(v8 + *(v9 + 28));
  v11 = sub_18F111F70(v10);
  v19 = 0;
  v61 = v10 & 0xC000000000000001;
  v62 = v11;
  v59 = v10 & 0xFFFFFFFFFFFFFF8;
  v60 = v10;
  v20 = MEMORY[0x1E69E7CC8];
  v21 = &unk_1E72B7000;
  while (1)
  {
    v0[6] = v20;
    if (v62 == v19)
    {
      v52 = v0[3];
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8670);
      v54 = swift_task_alloc();
      v0[7] = v54;
      *(v54 + 16) = v20;
      *(v54 + 24) = v52;
      v55 = swift_task_alloc();
      v0[8] = v55;
      *v55 = v0;
      v55[1] = sub_18F3BBB64;
      v70 = v53;
      v16 = &unk_18F5618C8;
      v11 = v0 + 2;
      v12 = v53;
      v13 = v53;
      v14 = 0;
      v15 = 0;
      v17 = v54;
      v18 = v53;

      return MEMORY[0x1EEE6DD58](v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (v61)
    {
      v11 = MEMORY[0x193ADBE10](v19, v60);
    }

    else
    {
      if (v19 >= *(v59 + 16))
      {
        goto LABEL_35;
      }

      v11 = *(v60 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return MEMORY[0x1EEE6DD58](v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v22 = v11;
    v23 = [v22 v21[308]];
    sub_18F5218DC();

    v24 = [v22 instanceIdentifier];
    v25 = sub_18F5218DC();
    v27 = v26;

    sub_18F1AF5AC(v25, v27, v67);
    if (!v67[0])
    {
      break;
    }

    v66 = v67[0];
    v28 = v21;
    v29 = v19;
    v64 = v67[2];
    v65 = v67[3];
    v63 = v67[1];
    v30 = [v22 v28 + 248];
    v31 = sub_18F5218DC();
    v33 = v32;

    swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v20;
    v11 = sub_18F0F713C(v31, v33);
    if (__OFADD__(v20[2], (v12 & 1) == 0))
    {
      goto LABEL_36;
    }

    v34 = v11;
    v35 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8668);
    v36 = sub_18F5229DC();
    v20 = v67[0];
    if (v36)
    {
      v37 = sub_18F0F713C(v31, v33);
      if ((v35 & 1) != (v38 & 1))
      {

        return sub_18F522E2C();
      }

      v34 = v37;
    }

    if (v35)
    {
    }

    else
    {
      OUTLINED_FUNCTION_21_40(&v20[v34 >> 6]);
      v39 = (v20[6] + 16 * v34);
      *v39 = v31;
      v39[1] = v33;
      *(v20[7] + 8 * v34) = MEMORY[0x1E69E7CC0];
      v40 = v20[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_37;
      }

      v20[2] = v42;
    }

    v43 = v20[7];
    v44 = *(v43 + 8 * v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 8 * v34) = v44;
    v46 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18F168A98();
      v44 = v50;
      *(v43 + 8 * v34) = v50;
    }

    v21 = &unk_1E72B7000;
    v47 = *(v44 + 16);
    if (v47 >= *(v44 + 24) >> 1)
    {
      sub_18F168A98();
      *(v43 + 8 * v34) = v51;
    }

    v48 = *(v43 + 8 * v34);
    *(v48 + 16) = v47 + 1;
    v49 = (v48 + 32 * v47);
    v49[4] = v66;
    v49[5] = v63;
    v49[6] = v64;
    v49[7] = v65;
    v19 = v46 + 1;
  }

  sub_18F1A7B64();
  swift_allocError();
  *v56 = xmmword_18F540420;
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  return v57();
}

uint64_t sub_18F3BBB64()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3BBC6C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 16);
  v2 = LNIntentsValueTypeIdentifierAsString();
  sub_18F5218DC();

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v3 = sub_18F52163C();
  v4 = sub_18F5221FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = sub_18F5226AC();
    }

    else
    {
      v7 = *(v1 + 16);
    }

    *(v5 + 4) = v7;

    *(v5 + 12) = 2080;
    v8 = OUTLINED_FUNCTION_48();
    v11 = sub_18F11897C(v8, v9, v10);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_18F0E9000, v3, v4, "Returning %ld item(s) for structured data of type: %s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
  }

  sub_18F0F21A8(0, &qword_1EACCDD20);
  sub_18F0F21A8(0, &unk_1ED6FE390);
  sub_18F3C09E8();
  OUTLINED_FUNCTION_66();
  v12 = sub_18F5216AC();

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_18F3BBE84()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F3BBEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a3;
  v4[53] = a4;
  v4[50] = a1;
  v4[51] = a2;
  v5 = *(type metadata accessor for FetchStructuredDataTask() - 8);
  v4[54] = v5;
  v4[55] = *(v5 + 64);
  v4[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8680);
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3BC064, 0, 0);
}

uint64_t sub_18F3BC064()
{
  v37 = *(v0 + 432);
  v1 = *(v0 + 416);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 416) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v34 = *(v0 + 440) + 7;
  v38 = *(v0 + 416);
  v9 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v10 = 0;
  v35 = v8;
  v36 = v3;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = *(*(v38 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
      if (!v12[2])
      {
        break;
      }

      v13 = *(v0 + 464);
      v40 = *(v0 + 448);
      v41 = *(v0 + 456);
      v39 = *(v0 + 424);
      v14 = v12[4];
      v15 = v12[5];
      v16 = *(v15 + 56);
      *(v0 + 264) = swift_getAssociatedTypeWitness();
      *(v0 + 272) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1((v0 + 240));
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v16(v14, v15);
      v17 = sub_18F521EFC();
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
      sub_18F0FD6C4(v0 + 240, v0 + 280);
      sub_18F3C0660(v39, v40);
      v18 = (*(v37 + 80) + 72) & ~*(v37 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      sub_18F0FF968((v0 + 280), v19 + 32);
      sub_18F3C0A50(v40, v19 + v18);
      *(v19 + ((v34 + v18) & 0xFFFFFFFFFFFFFFF8)) = v12;
      sub_18F2C3548(v13, v41);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v17);
      v21 = *(v0 + 456);
      if (EnumTagSinglePayload == 1)
      {
        sub_18F0FA038(*(v0 + 456), &qword_1EACD0418);
      }

      else
      {
        sub_18F521EEC();
        OUTLINED_FUNCTION_31_0();
        (*(v22 + 8))(v21, v17);
      }

      if (*(v19 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_18F521E1C();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v3 = v36;
      v26 = **(v0 + 408);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8670);
      v27 = v25 | v23;
      if (v25 | v23)
      {
        v27 = v0 + 320;
        *(v0 + 320) = 0;
        *(v0 + 328) = 0;
        *(v0 + 336) = v23;
        *(v0 + 344) = v25;
      }

      v28 = *(v0 + 464);
      v7 &= v7 - 1;
      *(v0 + 352) = 1;
      *(v0 + 360) = v27;
      *(v0 + 368) = v26;
      swift_task_create();

      sub_18F0FA038(v28, &qword_1EACD0418);
      v9 = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);
      v8 = v35;
      if (!v7)
      {
        goto LABEL_4;
      }
    }

    sub_18F1A7B64();
    swift_allocError();
    *v31 = xmmword_18F540420;
    swift_willThrow();

    OUTLINED_FUNCTION_71();

    return v32();
  }

  else
  {
    while (1)
    {
LABEL_4:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v9);
      }

      if (v11 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
    OUTLINED_FUNCTION_66();
    sub_18F521F8C();
    *(v0 + 496) = MEMORY[0x1E69E7CC8];
    OUTLINED_FUNCTION_20_5(&qword_1EACD8688, &qword_1EACD8680);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 504) = v29;
    *v29 = v30;
    v9 = OUTLINED_FUNCTION_13_49(v29);

    return MEMORY[0x1EEE6D8C8](v9);
  }
}

uint64_t sub_18F3BC584()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[64] = v0;

  if (v0)
  {
    (*(v3[60] + 8))(v3[61], v3[59]);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3BC69C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 496);
  if (!v1)
  {
    v24 = *(v0 + 400);
    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
    *v24 = v2;

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_29_1();

    __asm { BRAA            X1, X16 }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 496);
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v4 = sub_18F5226AC();
    v5 = sub_18F3C0720(v3, v4);
    *(v0 + 384) = v5;
    OUTLINED_FUNCTION_18_45();
    sub_18F353CD8(v1, v6, 0, (v0 + 16));
    v7 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v7;
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = *(v0 + 64);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    while (1)
    {
      sub_18F3540B0();
      if (!v8)
      {
        sub_18F125D0C();

        goto LABEL_36;
      }

      v10 = v8;
      v11 = v9;
      v12 = sub_18F182044(v8);
      v14 = OUTLINED_FUNCTION_35_24(v12, v13);
      if (v16)
      {
        break;
      }

      v17 = v15;
      if (v5[3] < v14)
      {
        sub_18F352288(v14, 1);
        v18 = sub_18F182044(v10);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_32;
        }

        v12 = v18;
      }

      v5 = *(v0 + 384);
      if (v17)
      {

        v20 = v5[7];
        v21 = *(v20 + 8 * v12);
        *(v20 + 8 * v12) = v11;
      }

      else
      {
        OUTLINED_FUNCTION_21_40(&v5[v12 >> 6]);
        *(v5[6] + 8 * v12) = v10;
        *(v5[7] + 8 * v12) = v11;
        v22 = v5[2];
        v16 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v16)
        {
          goto LABEL_41;
        }

        v5[2] = v23;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 392) = v2;
    OUTLINED_FUNCTION_18_45();
    sub_18F353CD8(v1, v28, 0, (v0 + 72));
    *(v0 + 184) = *(v0 + 72);
    *(v0 + 200) = *(v0 + 88);
    *(v0 + 216) = *(v0 + 104);
    *(v0 + 232) = *(v0 + 120);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v5 = *(v0 + 496);
    while (1)
    {
      sub_18F3540B0();
      if (!v29)
      {
        break;
      }

      v31 = v29;
      v32 = v30;
      v33 = sub_18F182044(v29);
      v14 = OUTLINED_FUNCTION_35_24(v33, v34);
      if (v16)
      {
        goto LABEL_40;
      }

      v36 = v35;
      if (v5[3] >= v14)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8690);
          sub_18F5229EC();
        }
      }

      else
      {
        sub_18F352288(v14, isUniquelyReferenced_nonNull_native & 1);
        v37 = sub_18F182044(v31);
        if ((v36 & 1) != (v38 & 1))
        {
LABEL_32:
          sub_18F0F21A8(0, &qword_1EACCDD20);
          OUTLINED_FUNCTION_29_1();

          return sub_18F522E2C();
        }

        v33 = v37;
      }

      v5 = *(v0 + 392);
      if (v36)
      {

        v39 = v5[7];
        v40 = *(v39 + 8 * v33);
        *(v39 + 8 * v33) = v32;

        isUniquelyReferenced_nonNull_native = 1;
      }

      else
      {
        OUTLINED_FUNCTION_21_40(&v5[v33 >> 6]);
        *(v5[6] + 8 * v33) = v31;
        *(v5[7] + 8 * v33) = v32;
        v41 = v5[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_42;
        }

        v5[2] = v42;
        isUniquelyReferenced_nonNull_native = 1;
      }
    }

    sub_18F125D0C();

LABEL_36:

    *(v0 + 496) = v5;
    OUTLINED_FUNCTION_20_5(&qword_1EACD8688, &qword_1EACD8680);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 504) = v45;
    *v45 = v46;
    OUTLINED_FUNCTION_13_49();
    OUTLINED_FUNCTION_29_1();
  }

  return MEMORY[0x1EEE6D8C8](v14);
}

uint64_t sub_18F3BCAD4()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F3BCB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18F3BCB7C, 0, 0);
}

uint64_t sub_18F3BCB7C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  v6 = *(v1 + *(type metadata accessor for FetchStructuredDataTask() + 24));
  v7 = *(v2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v9 = v0[5];
    v22 = MEMORY[0x1E69E7CC0];
    sub_18F3AA158();
    v8 = v22;
    v10 = *(v22 + 16);
    v11 = 16 * v10;
    v12 = (v9 + 56);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *(v22 + 24);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (v10 >= v15 >> 1)
      {
        sub_18F3AA158();
      }

      *(v22 + 16) = v10 + 1;
      v16 = v22 + v11;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;
      v11 += 16;
      v12 += 4;
      ++v10;
      --v7;
    }

    while (v7);
    v5 = v20;
    v4 = v21;
    v6 = v19;
  }

  v0[6] = v8;
  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_18F3BCD18;

  return sub_18F3BCE3C(v6, v8, v4, v5);
}

uint64_t sub_18F3BCD18()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (!v0)
  {

    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F3BCE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F3BCE70()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 56);
  v8 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8698);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v8;
  *(v3 + 48) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8670);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 72) = v5;
  *v5 = v6;
  v5[1] = sub_18F3BCF98;

  return MEMORY[0x1EEE6DD58](v0 + 16, v2, v4, 0, 0, &unk_18F561920, v3, v2);
}

uint64_t sub_18F3BCF98()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3BD098@<X0>(uint64_t a1@<X8>)
{
  sub_18F52165C();
  OUTLINED_FUNCTION_31_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t type metadata accessor for FetchStructuredDataTask()
{
  result = qword_1EACD8650;
  if (!qword_1EACD8650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18F3BD170()
{
  sub_18F52165C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LNIntentsValueTypeIdentifier(319);
    if (v1 <= 0x3F)
    {
      sub_18F3BD214();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18F3BD214()
{
  if (!qword_1EACD8660)
  {
    sub_18F0F21A8(255, &qword_1EACCDD20);
    v0 = sub_18F521DBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACD8660);
    }
  }
}

uint64_t sub_18F3BD27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8708);
      v6 = &unk_18F561A08;
      goto LABEL_14;
    case 1:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8700);
      v6 = &unk_18F5619F8;
      goto LABEL_14;
    case 2:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86F8);
      v6 = &unk_18F5619E8;
      goto LABEL_14;
    case 3:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86C8);
      v6 = &unk_18F561988;
      goto LABEL_14;
    case 4:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86D8);
      v6 = &unk_18F5619A8;
      goto LABEL_14;
    case 5:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86D0);
      v6 = &unk_18F561998;
      goto LABEL_14;
    case 6:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86C0);
      v6 = &unk_18F561978;
      goto LABEL_14;
    case 7:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86B8);
      v6 = &unk_18F561968;
      goto LABEL_14;
    case 8:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86B0);
      v6 = &unk_18F561958;
      goto LABEL_14;
    case 9:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86F0);
      v6 = &unk_18F5619D8;
      goto LABEL_14;
    case 10:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86E8);
      v6 = &unk_18F5619C8;
      goto LABEL_14;
    case 11:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86E0);
      v6 = &unk_18F5619B8;
LABEL_14:
      result = sub_18F3BD868(v5, v6, 0, a2, v5, a3);
      break;
    default:
      v8 = LNIntentsValueTypeIdentifierAsString();
      v9 = sub_18F5218DC();
      v11 = v10;

      if (qword_1ED6FD658 != -1)
      {
        swift_once();
      }

      v12 = sub_18F52165C();
      __swift_project_value_buffer(v12, qword_1ED707698);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v13 = sub_18F52163C();
      v14 = sub_18F52221C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_18F11897C(v9, v11, &v18);
        _os_log_impl(&dword_18F0E9000, v13, v14, "Unknown representation of type %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x193ADD350](v16, -1, -1);
        MEMORY[0x193ADD350](v15, -1, -1);
      }

      sub_18F1A7B64();
      swift_allocError();
      *v17 = v9;
      v17[1] = v11;
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_18F3BD640(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BD660, 0, 0);
}

uint64_t sub_18F3BD660()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_49(*(v0 + 24));
  OUTLINED_FUNCTION_28_46();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_72(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_57(v2);

  return v5(v4);
}

uint64_t sub_18F3BD770()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void *sub_18F3BD868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a2;
  v11[6] = a3;

  return &unk_18F561A18;
}

uint64_t sub_18F3BD8F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BD910, 0, 0);
}

uint64_t sub_18F3BDA10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BDA30, 0, 0);
}

uint64_t sub_18F3BDA30()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_49(*(v0 + 24));
  OUTLINED_FUNCTION_28_46();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_72(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_57(v2);

  return v5(v4);
}

uint64_t sub_18F3BDB40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BDB60, 0, 0);
}

uint64_t sub_18F3BDC60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BDC80, 0, 0);
}

uint64_t sub_18F3BDD80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BDDA0, 0, 0);
}

uint64_t sub_18F3BDDA0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 16);
  v17 = OUTLINED_FUNCTION_10_49(*(v0 + 24)) + 16;
  *(v1 + 24) = &type metadata for IntentMessageConversation;
  *(v1 + 32) = &protocol witness table for IntentMessageConversation;
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_33_29(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_72(v10);
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_25_39(v11);

  return v14(v13);
}

uint64_t sub_18F3BDED4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BDEF4, 0, 0);
}

uint64_t sub_18F3BDFF4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3BE0EC()
{
  OUTLINED_FUNCTION_69();
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3BE148(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BE168, 0, 0);
}

uint64_t sub_18F3BE168()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_49(*(v0 + 24));
  OUTLINED_FUNCTION_28_46();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_72(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_57(v2);

  return v5(v4);
}

uint64_t sub_18F3BE278(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BE298, 0, 0);
}

uint64_t sub_18F3BE398(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BE3B8, 0, 0);
}

uint64_t sub_18F3BE3B8()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 16);
  v17 = OUTLINED_FUNCTION_10_49(*(v0 + 24)) + 16;
  *(v1 + 24) = &type metadata for IntentTimer;
  *(v1 + 32) = &protocol witness table for IntentTimer;
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_33_29(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_72(v10);
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_25_39(v11);

  return v14(v13);
}

uint64_t sub_18F3BE4EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BE50C, 0, 0);
}

uint64_t sub_18F3BE60C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3BE62C, 0, 0);
}

uint64_t sub_18F3BE72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD86A0);
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[26] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[27] = v10;
  v7[28] = *(v10 + 64);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3BE8E0, 0, 0);
}

uint64_t sub_18F3BE8E0()
{
  v0[31] = sub_18F3BD27C(v0[16], v0[19], v0[20]);
  v0[32] = v1;
  v3 = v0[19];
  v2 = v0[20];
  v0[11] = v0[17];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  swift_getAssociatedConformanceWitness();
  v0[33] = swift_getAssociatedTypeWitness();
  sub_18F1B8B98(&qword_1EACD0640, &qword_1EACD0400);
  v0[34] = sub_18F521B3C();

  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_18F3BEAF8;
  OUTLINED_FUNCTION_29_1();

  return sub_18F1922E0();
}

uint64_t sub_18F3BEAF8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 288) = v0;

  if (!v0)
  {
    *(v5 + 296) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F3BEC04()
{
  v57 = v0;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_48();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v1 = Array<A>.items.getter();

  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v2 = sub_18F52165C();
  __swift_project_value_buffer(v2, qword_1ED707698);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v3 = sub_18F52163C();
  v4 = sub_18F52220C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 272);
  v50 = v1;
  if (v5)
  {
    v7 = *(v0 + 264);
    v8 = *(v0 + 208);
    v9 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = MEMORY[0x193ADB2B0](v1, v8);
    v12 = v11;

    v13 = sub_18F11897C(v10, v12, &v56);
    v1 = v50;

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = MEMORY[0x193ADB2B0](v6, v7);
    v16 = v15;
    swift_bridgeObjectRelease_n();
    v17 = sub_18F11897C(v14, v16, &v56);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_18F0E9000, v3, v4, "Found entities: %s for %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v18 = sub_18F521CBC();

  v56 = v18;
  if (v18 != sub_18F521D7C())
  {
    v23 = *(v0 + 216);
    v48 = (v23 + 16);
    v49 = v23;
    v46 = *(v0 + 224);
    v47 = **(v0 + 120);
    do
    {
      v24 = sub_18F521D4C();
      sub_18F521CEC();
      if (v24)
      {
        (*(v23 + 16))(*(v0 + 240), v1 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18, *(v0 + 208));
      }

      else
      {
        v22 = sub_18F52281C();
        if (v46 != 8)
        {
          __break(1u);
          return MEMORY[0x1EEE6D8C8](v22);
        }

        v42 = v22;
        v43 = *(v0 + 240);
        v44 = *(v0 + 208);
        *(v0 + 96) = v42;
        (*v48)(v43, v0 + 96, v44);
        swift_unknownObjectRelease();
      }

      v25 = *(v0 + 256);
      v53 = *(v0 + 248);
      v26 = *(v0 + 232);
      v27 = *(v0 + 240);
      v28 = *(v0 + 208);
      v29 = *(v0 + 176);
      v51 = v29;
      v54 = *(v0 + 128);
      v55 = *(v0 + 168);
      v52 = *(v0 + 152);
      sub_18F521DAC();
      v30 = sub_18F521EFC();
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
      v31 = *(v23 + 32);
      v31(v26, v27, v28);
      v32 = (*(v23 + 80) + 64) & ~*(v23 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = v52;
      *(v33 + 48) = v53;
      *(v33 + 56) = v25;
      v31(v33 + v32, v26, v28);
      *(v33 + ((v46 + 7 + v32) & 0xFFFFFFFFFFFFFFF8)) = v54;
      sub_18F2C3548(v51, v55);
      LODWORD(v26) = __swift_getEnumTagSinglePayload(v55, 1, v30);

      v34 = *(v0 + 168);
      if (v26 == 1)
      {
        sub_18F0FA038(*(v0 + 168), &qword_1EACD0418);
      }

      else
      {
        sub_18F521EEC();
        OUTLINED_FUNCTION_31_0();
        (*(v35 + 8))(v34, v30);
      }

      if (*(v33 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_48();
        v36 = sub_18F521E1C();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8698);
      v39 = v38 | v36;
      if (v38 | v36)
      {
        v39 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v36;
        *(v0 + 40) = v38;
      }

      v40 = *(v0 + 176);
      *(v0 + 48) = 1;
      *(v0 + 56) = v39;
      *(v0 + 64) = v47;
      swift_task_create();

      sub_18F0FA038(v40, &qword_1EACD0418);
      v1 = v50;
      v41 = sub_18F521D7C();
      v18 = v56;
      v23 = v49;
    }

    while (v56 != v41);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  OUTLINED_FUNCTION_66();
  sub_18F521F8C();
  v19 = MEMORY[0x1E69E7CC8];
  *(v0 + 304) = MEMORY[0x1E69E7CC8];
  *(v0 + 312) = v19;
  OUTLINED_FUNCTION_20_5(&qword_1EACD86A8, &qword_1EACD86A0);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 320) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_14_43(v20);
  v22 = v0 + 72;

  return MEMORY[0x1EEE6D8C8](v22);
}

uint64_t sub_18F3BF2E4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[41] = v0;

  if (v0)
  {
    (*(v3[24] + 8))(v3[25], v3[23]);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3BF400()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[9];
  if (v1 == 1)
  {
    v2 = v0[39];
    v3 = v0[14];
    (*(v0[24] + 8))(v0[25], v0[23]);
    *v3 = v2;

    OUTLINED_FUNCTION_71();

    return v4();
  }

  v6 = v0[39];
  if (!v1)
  {
    v13 = v0[38];
    goto LABEL_26;
  }

  v7 = v0[10];
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v8 = v0[39];
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = v1;
    v10 = v7;
    v11 = sub_18F5226AC();
    if (__OFADD__(v11, 1))
    {
      goto LABEL_30;
    }

    v12 = sub_18F3C0720(v8, v11 + 1);
  }

  else
  {
    v12 = v0[38];
    v14 = v1;
    v15 = v7;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v0[13] = v12;
  v11 = sub_18F182044(v1);
  if (__OFADD__(*(v12 + 16), (v16 & 1) == 0))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = v11;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8690);
  if ((sub_18F5229DC() & 1) == 0)
  {
LABEL_21:
    v13 = v0[13];
    if (v18)
    {
      v21 = v13[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v7;

LABEL_25:
      v6 = v13;
LABEL_26:
      v0[38] = v13;
      v0[39] = v6;
      OUTLINED_FUNCTION_20_5(&qword_1EACD86A8, &qword_1EACD86A0);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[40] = v26;
      *v26 = v27;
      OUTLINED_FUNCTION_14_43();
      v11 = (v0 + 9);

      return MEMORY[0x1EEE6D8C8](v11);
    }

    OUTLINED_FUNCTION_21_40(&v13[v17 >> 6]);
    *(v13[6] + 8 * v17) = v1;
    *(v13[7] + 8 * v17) = v7;

    v23 = v13[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v13[2] = v25;
      goto LABEL_25;
    }

LABEL_31:
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v11);
  }

  v19 = sub_18F182044(v1);
  if ((v18 & 1) == (v20 & 1))
  {
    v17 = v19;
    goto LABEL_21;
  }

  sub_18F0F21A8(0, &qword_1EACCDD20);

  return sub_18F522E2C();
}

uint64_t sub_18F3BF6FC()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F3BF798()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F3BF840(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(v1, v2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_18F3BF944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v12;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[12] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[19] = AssociatedTypeWitness;
  v8[20] = *(AssociatedTypeWitness - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3BFA38, 0, 0);
}

uint64_t sub_18F3BFA38()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[15];
  v4 = v0[13];
  v0[10] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[23] = AssociatedConformanceWitness;
  v0[11] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  v7 = *(v2 + 16);
  v0[24] = v7;
  v0[25] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(boxed_opaque_existential_1, v3, v1);
  v11 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[26] = v8;
  *v8 = v9;
  v8[1] = sub_18F3BFB90;

  return v11(v0 + 2, v0 + 7);
}

uint64_t sub_18F3BFB90()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 56);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3BFC90()
{
  v44 = v0;
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    v4 = OUTLINED_FUNCTION_48();
    AppEntity.fullyQualifiedIdentifier.getter(v4, v5, v6);
    v7 = *(v43[1] + 8);
    static AppValue._identifier.getter(v43[0], v7);
    if (dynamic_cast_existential_1_conditional(v43[0]))
    {
      if (qword_1ED6FF6D8 != -1)
      {
        swift_once();
      }

      v8 = v0[27];

      v9 = static AppValue._identifier.getter(v43[0], v7);
      v10 = sub_18F164CE8(v9);
      if (v8)
      {
      }

      else
      {
        v34 = v10;

        v35 = v34;
        sub_18F1AF344();
      }
    }

    v36 = v0[12];
    v37 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
    sub_18F166ED0();
    *v36 = v38;
    v36[1] = v3;
  }

  else
  {
    sub_18F0FA038((v0 + 2), &qword_1EACD6210);
    if (qword_1ED6FD658 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v11 = v0[24];
    v12 = v0[22];
    v13 = v0[19];
    v14 = v0[15];
    v15 = sub_18F52165C();
    __swift_project_value_buffer(v15, qword_1ED707698);
    v11(v12, v14, v13);
    v16 = sub_18F52163C();
    v17 = sub_18F52221C();
    if (os_log_type_enabled(v16, v17))
    {
      v42 = v0[24];
      v18 = v0[21];
      v41 = v0[22];
      v20 = v0[19];
      v19 = v0[20];
      v21 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v21 = 136315394;
      v22 = LNIntentsValueTypeIdentifierAsString();
      v23 = sub_18F5218DC();
      v25 = v24;

      v26 = sub_18F11897C(v23, v25, v43);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v42(v18, v41, v20);
      v27 = sub_18F52194C();
      v29 = v28;
      (*(v19 + 8))(v41, v20);
      v30 = sub_18F11897C(v27, v29, v43);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_18F0E9000, v16, v17, "Failed to extract %s for %s", v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    else
    {

      v31 = OUTLINED_FUNCTION_66();
      v32(v31);
    }

    v33 = v0[12];
    *v33 = 0;
    v33[1] = 0;
  }

  OUTLINED_FUNCTION_71();

  return v39();
}

uint64_t sub_18F3C00CC()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3C013C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a4;
  v6[11] = a6;
  v6[8] = a2;
  v6[9] = a3;
  v6[7] = a1;
  v8 = sub_18F52254C();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = *(a6 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3C025C, 0, 0);
}

uint64_t sub_18F3C025C()
{
  OUTLINED_FUNCTION_31();
  sub_18F0FD6C4(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
  if (swift_dynamicCast())
  {
    v1 = v0[9];
    __swift_storeEnumTagSinglePayload(v0[14], 0, 1, v0[11]);
    v2 = OUTLINED_FUNCTION_66();
    v3(v2);
    v13 = (v1 + *v1);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[17] = v4;
    *v4 = v5;
    v4[1] = sub_18F3C0464;
    v6 = v0[16];
    v7 = v0[7];

    return v13(v7, v6);
  }

  else
  {
    v9 = v0[7];
    __swift_storeEnumTagSinglePayload(v0[14], 1, 1, v0[11]);
    v10 = OUTLINED_FUNCTION_66();
    v11(v10);
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;

    OUTLINED_FUNCTION_71();

    return v12();
  }
}

uint64_t sub_18F3C0464()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3C055C()
{
  OUTLINED_FUNCTION_69();
  (*(v0[15] + 8))(v0[16], v0[11]);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3C05DC()
{
  OUTLINED_FUNCTION_69();
  (*(v0[15] + 8))(v0[16], v0[11]);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3C0660(uint64_t a1, uint64_t a2)
{
  StructuredDataTask = type metadata accessor for FetchStructuredDataTask();
  (*(*(StructuredDataTask - 8) + 16))(a2, a1, StructuredDataTask);
  return a2;
}

uint64_t sub_18F3C06C4(uint64_t a1)
{
  StructuredDataTask = type metadata accessor for FetchStructuredDataTask();
  (*(*(StructuredDataTask - 8) + 8))(a1, StructuredDataTask);
  return a1;
}

uint64_t sub_18F3C0720(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD70F8);
    v2 = sub_18F522ADC();
    v17 = v2;
    sub_18F522A0C();
    while (1)
    {
      v3 = sub_18F522A2C();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_18F0F21A8(0, &qword_1EACCDD20);
      swift_dynamicCast();
      sub_18F0F21A8(0, &unk_1ED6FE390);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_18F352288(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_18F52242C();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_18F3C0948()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_42(v4);

  return sub_18F3BBEF0(v6, v7, v3, v2);
}

unint64_t sub_18F3C09E8()
{
  result = qword_1EACD8678;
  if (!qword_1EACD8678)
  {
    sub_18F0F21A8(255, &qword_1EACCDD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8678);
  }

  return result;
}

uint64_t sub_18F3C0A50(uint64_t a1, uint64_t a2)
{
  StructuredDataTask = type metadata accessor for FetchStructuredDataTask();
  (*(*(StructuredDataTask - 8) + 32))(a2, a1, StructuredDataTask);
  return a2;
}

uint64_t sub_18F3C0AB4()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *(type metadata accessor for FetchStructuredDataTask() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_18F0FC870;

  return sub_18F3BCB58(v3, v6, v7, v0 + 32, v0 + v5, v8);
}

id sub_18F3C0BD0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_18F353730(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18F3C0C0C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29_38();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_19_42(v6);

  return sub_18F3BE72C(v8, v9, v4, v5, v0, v2, v3);
}

uint64_t sub_18F3C0CDC()
{
  swift_getAssociatedTypeWitness();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_29_1();

  return sub_18F3BF944(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F3C0E38()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29_38();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_42(v5);

  return sub_18F3C013C(v7, v8, v4, v0, v2, v3);
}

uint64_t sub_18F3C0F34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = v2[4];
  v7 = v2[5];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 1, v6);
  (*(v7 + 16))(v12, v6, v7);
  if (!v12[3])
  {
    sub_18F0FA038(v12, &qword_1EACD0D98);
    OUTLINED_FUNCTION_18_46();
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3AD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_9;
  }

  v8 = *(&v17 + 1);
  if (!*(&v17 + 1))
  {
LABEL_9:
    sub_18F0FA038(&v16, &qword_1EACD3AC8);
    v13 = 0u;
    v14 = 0u;
    AssociatedConformanceWitness = 0;
    goto LABEL_10;
  }

  v9 = v18;
  __swift_project_boxed_opaque_existential_1Tm(&v16, *(&v17 + 1));
  v11 = *(v9 + 24);
  *(&v14 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v13);
  v11(v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  if (!*(&v14 + 1))
  {
LABEL_10:
    sub_18F0FA038(&v13, &qword_1EACD3A78);
    OUTLINED_FUNCTION_18_46();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD8720);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

LABEL_11:
  sub_18F20E1D4(&v16, &v13);
  if (*(&v14 + 1))
  {
    sub_18F0FD0B4(&v13, a2);
  }

  else
  {
    swift_checkMetadataState();
    (*(a1 + 56))();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD8720);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    if (*(&v14 + 1))
    {
      sub_18F0FA038(&v13, &qword_1EACD27F0);
    }
  }

  return sub_18F0FA038(&v16, &qword_1EACD27F0);
}

uint64_t sub_18F3C12AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = *(v8 + 16);
  v11(&v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  if (swift_dynamicCast())
  {
    sub_18F0FD6C4(v21, v18);
    sub_18F2031A0(v21);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v24 = v12;
    v25 = *(*(v13 + 8) + 24);
    __swift_allocate_boxed_opaque_existential_1(&v23);
    OUTLINED_FUNCTION_31_0();
    (*(v14 + 16))();
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    if (v24)
    {
      return sub_18F0FD0B4(&v23, a3);
    }
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_18F0FA038(v21, &qword_1EACD6870);
    OUTLINED_FUNCTION_18_46();
  }

  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  result = (v11)(boxed_opaque_existential_1, v3, a1);
  if (v24)
  {
    return sub_18F0FA038(&v23, &qword_1EACD0620);
  }

  return result;
}

uint64_t sub_18F3C1490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F3C14A8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_14_44(*(v0 + 136));
  OUTLINED_FUNCTION_22_40();
  *(v0 + 120) = v1;
  __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_31_0();
  (*(v2 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 160) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_12_57(v3);
  OUTLINED_FUNCTION_59_1();

  return sub_18F1AD1B0(v5, v6, v7, v8);
}

uint64_t sub_18F3C1580()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 56);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3C1688()
{
  OUTLINED_FUNCTION_69();
  if (!*(v0 + 40))
  {
    sub_18F0FA038(v0 + 16, &qword_1EACD0620);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  OUTLINED_FUNCTION_12_2();
  sub_18F521DBC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_18F521D2C();
  }

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_18F3C1750()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3C17B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F3C17CC()
{
  v29 = v0;
  v1 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  if (sub_18F3C3CF8())
  {
    v2 = *(v0 + 200);
    v3 = v1[3];
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 192), v3);
    v5 = *(v2 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v27 = v4;
      v7 = *(v0 + 200);
      v28 = MEMORY[0x1E69E7CC0];
      sub_18F3AACEC();
      v6 = v28;
      v8 = v7 + 32;
      do
      {
        sub_18F0FD6C4(v8, v0 + 96);
        v9 = *(v0 + 120);
        v10 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v9);
        sub_18F3C12AC(v9, v10, (v0 + 56));
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
        v28 = v6;
        v11 = *(v6 + 16);
        if (v11 >= *(v6 + 24) >> 1)
        {
          sub_18F3AACEC();
        }

        v12 = *(v0 + 80);
        v13 = *(v0 + 88);
        v14 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v12);
        OUTLINED_FUNCTION_11_0();
        v16 = v15;
        v17 = OUTLINED_FUNCTION_34_0();
        (*(v16 + 16))(v17, v14, v12);
        sub_18F3C4108(v11, v17, &v28, v12, v13);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

        v6 = v28;
        v8 += 40;
        --v5;
      }

      while (v5);
      v4 = v27;
    }

    *(v0 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD16E8);
    *(v0 + 136) = v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 264) = v24;
    *v24 = v25;
    v24[1] = sub_18F3C1D84;

    return sub_18F1AD1B0(v0 + 16, v0 + 136, v3, v4);
  }

  else
  {
    v18 = *(v0 + 192);
    *(v0 + 168) = *(v0 + 200);
    v19 = swift_task_alloc();
    *(v0 + 224) = v19;
    *(v19 + 16) = *(v0 + 208);
    *(v19 + 32) = v18;
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD16E8);
    v22 = sub_18F521DBC();
    *(v0 + 240) = v22;
    v23 = sub_18F199A0C(&qword_1EACD8710, &qword_1EACD16E8);
    *v20 = v0;
    v20[1] = sub_18F3C1B50;

    return MEMORY[0x1EEE18F40](&unk_18F561C30, v19, v21, v22, v23);
  }
}

uint64_t sub_18F3C1B50()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 248) = v0;

  if (!v0)
  {
    *(v5 + 256) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F3C1C64()
{
  *(v0 + 176) = *(v0 + 256);
  *(swift_task_alloc() + 16) = *(v0 + 208);
  sub_18F521DBC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v1 = sub_18F521BEC();

  OUTLINED_FUNCTION_20_0();

  return v2(v1);
}

uint64_t sub_18F3C1D84()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 136);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3C1E84()
{
  OUTLINED_FUNCTION_69();
  if (!*(v0 + 40))
  {
    sub_18F0FA038(v0 + 16, &qword_1EACD0620);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  OUTLINED_FUNCTION_12_2();
  sub_18F521DBC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_18F521D2C();
  }

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_18F3C1F4C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F3C1FA8()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3C2004()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v0[21] = v1;
  v0[22] = v5;
  v0[19] = v3;
  v0[20] = v6;
  v0[18] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v0[23] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_12_2();
  v8 = sub_18F52254C();
  v0[24] = v8;
  v0[25] = *(v8 - 8);
  v9 = OUTLINED_FUNCTION_34_0();
  v0[26] = v9;
  OUTLINED_FUNCTION_11_0();
  v0[27] = v10;
  v0[28] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v11;
  *v11 = v12;
  v11[1] = sub_18F3C2188;

  return sub_18F3C288C(v9, v4, v2);
}

uint64_t sub_18F3C2188()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3C2284()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    v13 = *(v0 + 224);
    v14 = *(v0 + 144);
    v15 = *(*(v0 + 216) + 32);
    v15(v13, v1, v2);
    v15(v14, v13, v2);
    OUTLINED_FUNCTION_58_0();
    v19 = v2;
    goto LABEL_8;
  }

  v3 = *(v0 + 176);
  (*(*(v0 + 200) + 8))(v1, *(v0 + 192));
  *(v0 + 248) = type metadata accessor for IntentParameterContext();
  sub_18F3C0F34(v3, v0 + 56);
  if (!*(v0 + 80))
  {
    v20 = *(v0 + 168);
    sub_18F0FA038(v0 + 56, &qword_1EACD27F0);
    OUTLINED_FUNCTION_11();
    v19 = v20;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_12_10();

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_59_1();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 152);
  sub_18F0FD0B4((v0 + 56), v0 + 16);
  *(v0 + 120) = &type metadata for BoxedSystemIntentValue;
  *(v0 + 128) = sub_18F1E9B68();
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  sub_18F203144(v4, v5 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 256) = v6;
  *v6 = v7;
  v6[1] = sub_18F3C249C;
  OUTLINED_FUNCTION_59_1();

  return sub_18F3C1490(v8, v9, v10);
}

uint64_t sub_18F3C249C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 96);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F3C25A4()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_18F521D7C();
  if (v1 == 1)
  {
    v0[17] = v0[33];
    sub_18F521DBC();
    OUTLINED_FUNCTION_4_30();
    swift_getWitnessTable();
    sub_18F52211C();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

    goto LABEL_5;
  }

  if (!v1)
  {
    v2 = v0[21];
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
LABEL_5:
    OUTLINED_FUNCTION_12_10();

    OUTLINED_FUNCTION_6();

    return v6();
  }

  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[35] = v12;
  *v12 = v13;
  v12[1] = sub_18F3C2740;

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F3C2740()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v8 + 288) = v0;

  sub_18F0FA038(v5, &qword_1EACCF7A0);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F3C288C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v4 = sub_18F52153C();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_18F5210CC();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3C29FC, 0, 0);
}

uint64_t sub_18F3C29FC()
{
  v1 = dynamic_cast_existential_1_conditional(v0[14]);
  v0[24] = v1;
  v0[25] = v2;
  if (v1)
  {
    v3 = v0[22];
    v4 = v0[23];
    v43 = v0[21];
    v5 = v0[13];
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1Tm(v5, v6);
    v8 = *(v7 + 32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v0[5] = AssociatedTypeWitness;
    v42 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[6] = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v8(v6, v7);
    sub_18F0FD6C4(v5, (v0 + 7));
    OUTLINED_FUNCTION_22_40();
    DynamicType = swift_getDynamicType();
    v12 = v0[11];
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
    (*(*(*(v12 + 8) + 16) + 8))(DynamicType);
    v13 = sub_18F52111C();
    sub_18F5210BC();
    v14 = sub_18F19E26C(v4, v13);
    v0[26] = v14;

    (*(v3 + 8))(v4, v43);
    if (v14)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = [v15 contentType];
        v0[27] = v16;
        if (v16)
        {
          v17 = v0[19];
          v18 = v0[20];
          v19 = v0[18];
          v20 = v0[16];
          v21 = [v16 contentType];
          sub_18F5218DC();

          OUTLINED_FUNCTION_11();
          __swift_storeEnumTagSinglePayload(v22, v23, v24, v19);
          sub_18F5214EC();
          v25 = *(v17 + 16);
          v0[28] = v25;
          v0[29] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v25(v20, v18, v19);
          OUTLINED_FUNCTION_58_0();
          __swift_storeEnumTagSinglePayload(v26, v27, v28, v19);
          v29 = swift_task_alloc();
          v0[30] = v29;
          v30 = *(AssociatedConformanceWitness + 16);
          *v29 = v0;
          v29[1] = sub_18F3C2D70;
          v31 = v0[16];

          return MEMORY[0x1EEDBF598](v31, v42, v30);
        }
      }
    }

    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  }

  else
  {
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_28_47();

  OUTLINED_FUNCTION_6();

  return v40();
}

uint64_t sub_18F3C2D70()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  v10[31] = v8;
  v10[32] = v9;
  v10[33] = v0;

  sub_18F0FA038(v5, &qword_1EACD0358);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F3C2EA0()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[15];
  OUTLINED_FUNCTION_31_0();
  v7 = OUTLINED_FUNCTION_34_0();
  v0[34] = v7;
  v3(v6, v4, v5);
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
  sub_18F16AAE0(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[35] = v11;
  *v11 = v12;
  v11[1] = sub_18F3C2FBC;
  v13 = v0[31];
  v14 = v0[32];
  v15 = v0[15];

  return MEMORY[0x1EEDBF5A0](v7, v13, v14, v15);
}

uint64_t sub_18F3C2FBC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3C30B8()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 208);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);

  sub_18F123A1C(v2, v1);
  (*(v4 + 8))(v5, v6);
  v9 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v9 ^ 1u, 1, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_28_47();

  OUTLINED_FUNCTION_6();

  return v10();
}

void sub_18F3C31DC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 208);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_24_43();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F3C328C()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 208);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  sub_18F123A1C(v2, v1);
  (*(v5 + 8))(v4, v6);

  OUTLINED_FUNCTION_24_43();

  OUTLINED_FUNCTION_71();

  return v7();
}

uint64_t sub_18F3C3368()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return sub_18F3C2004();
}

unint64_t sub_18F3C3424()
{
  result = qword_1EACD1AF0;
  if (!qword_1EACD1AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD1AF8);
    sub_18F1E9B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1AF0);
  }

  return result;
}

uint64_t sub_18F3C34A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F3C34C0()
{
  OUTLINED_FUNCTION_31();
  if (*(*(v0 + 120) + 16) && dynamic_cast_existential_1_conditional(*(v0 + 136)))
  {
    *(v0 + 104) = *(v0 + 120);
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *(v1 + 16) = *(v0 + 136);
    v2 = swift_task_alloc();
    *(v0 + 160) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1AF8);
    sub_18F199A0C(&qword_1EACD1D88, qword_1EACD1AF8);
    *v2 = v0;
    v2[1] = sub_18F3C3744;
    OUTLINED_FUNCTION_59_1();

    return MEMORY[0x1EEE18F40](v3, v4, v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + 144);
    sub_18F521DBC();
    *(v0 + 96) = *(*(v9 + 8) + 24);
    swift_getWitnessTable();
    type metadata accessor for IntentParameterContext();
    sub_18F3C0F34(v9, v0 + 56);
    if (!*(v0 + 80))
    {
      sub_18F0FA038(v0 + 56, &qword_1EACD27F0);
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_59_1();

      __asm { BRAA            X2, X16 }
    }

    v10 = *(v0 + 120);
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    *(v0 + 184) = sub_18F200E20(v10);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 192) = v11;
    *v11 = v12;
    v11[1] = sub_18F3C38E8;
    OUTLINED_FUNCTION_59_1();

    return sub_18F3C17B4(v13, v14, v15, v16);
  }
}

uint64_t sub_18F3C3744()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F3C384C()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 112) = *(v0 + 168);
  sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  swift_getWitnessTable();
  if (sub_18F52213C())
  {
  }

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_18F3C38E8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 200) = v0;

  if (!v0)
  {
    *(v5 + 208) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F3C3A18()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_20_0();

  return v2(v1);
}

uint64_t sub_18F3C3A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F0FC870;

  return sub_18F3C288C(a1, a2, a3);
}

uint64_t sub_18F3C3B38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  *v8 = v4;
  v8[1] = sub_18F130D80;

  return sub_18F3C34A8(v7, a3, v9, v10);
}

uint64_t sub_18F3C3BE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F3C3C58()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_19_42(v3);

  return sub_18F3C3A7C(v5, v6, v2);
}

uint64_t sub_18F3C3CF8()
{
  v2[5] = swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8718);
  v0 = swift_dynamicCast();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  return v0;
}

uint64_t sub_18F3C3D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F3C3DA8, 0, 0);
}

uint64_t sub_18F3C3DA8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_14_44(*(v0 + 144));
  OUTLINED_FUNCTION_22_40();
  *(v0 + 120) = v1;
  __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_31_0();
  (*(v2 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 160) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_12_57(v3);
  OUTLINED_FUNCTION_59_1();

  return sub_18F1AD1B0(v5, v6, v7, v8);
}

uint64_t sub_18F3C3E80()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 56);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3C3F88()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    OUTLINED_FUNCTION_12_2();
    sub_18F521DBC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      **(v0 + 128) = 0;
    }
  }

  else
  {
    v1 = *(v0 + 128);
    sub_18F0FA038(v0 + 16, &qword_1EACD0620);
    *v1 = 0;
  }

  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_18F3C4058()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_42(v4);

  return sub_18F3C3D84(v6, v7, v3, v2);
}

uint64_t sub_18F3C4108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  OUTLINED_FUNCTION_31_0();
  (*(v7 + 32))();
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_18F0FD0B4(&v10, v8 + 40 * a1 + 32);
}

uint64_t _RawRepresentableStringQuery.entities(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  v3 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F3C41E8()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = swift_task_alloc();
  v2[2] = v1[2];
  v2[3] = v1[3];
  v2[4] = v1[4];
  swift_getAssociatedTypeWitness();
  sub_18F521DBC();
  swift_getWitnessTable();
  v3 = sub_18F521B3C();

  OUTLINED_FUNCTION_20_0();

  return v4(v3);
}

uint64_t sub_18F3C4308(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_18F521C1C();
}

uint64_t _RawRepresentableStringQuery.entities(matching:)()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v0[3] = v3;
  v0[4] = v1;
  v0[2] = v4;
  v5 = *(v1 + 16);
  v0[5] = v5;
  v6 = sub_18F52254C();
  v0[6] = v6;
  OUTLINED_FUNCTION_51(v6);
  v0[7] = v7;
  v0[8] = OUTLINED_FUNCTION_34_0();
  v0[9] = *(v5 - 8);
  v0[10] = OUTLINED_FUNCTION_34_0();
  v0[11] = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[12] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_12_2();
  v9 = sub_18F52254C();
  v0[13] = v9;
  OUTLINED_FUNCTION_51(v9);
  v0[14] = v10;
  v0[15] = OUTLINED_FUNCTION_34_0();
  v0[16] = *(AssociatedTypeWitness - 8);
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F3C4604()
{
  v1 = v0 + 15;
  v2 = v0[12];
  swift_getAssociatedConformanceWitness();
  v3 = OUTLINED_FUNCTION_2_93();
  v4(v3);
  v5 = OUTLINED_FUNCTION_171_0();
  if (__swift_getEnumTagSinglePayload(v5, v6, v2) == 1)
  {
    v7 = 13;
    v8 = 14;
  }

  else
  {
    v1 = v0 + 8;
    v9 = v0[5];
    v10 = OUTLINED_FUNCTION_14_45();
    v11(v10);
    v12 = OUTLINED_FUNCTION_12_58();
    v13(v12);
    OUTLINED_FUNCTION_7_62();
    v14 = OUTLINED_FUNCTION_171_0();
    __swift_getEnumTagSinglePayload(v14, v15, v9);
    OUTLINED_FUNCTION_11_46();
    if (!v16)
    {
      v19 = v0[5];
      v20 = *(v0[9] + 32);
      (v20)(v0[10], v0[8], v19);
      sub_18F18C388(v19, v19);
      OUTLINED_FUNCTION_3_79();
      v21 = sub_18F521CDC();
      v23 = OUTLINED_FUNCTION_10_50(v21, v22);
      v20(v23);
      v24 = sub_18F129FD4(v9);
      v25 = OUTLINED_FUNCTION_1_96();
      v26(v25);
      goto LABEL_7;
    }

    v17 = OUTLINED_FUNCTION_1_96();
    v18(v17);
    v7 = 6;
    v8 = 7;
  }

  (*(v0[v8] + 8))(*v1, v0[v7]);
  OUTLINED_FUNCTION_12_2();
  v24 = sub_18F521D2C();
LABEL_7:

  OUTLINED_FUNCTION_20_0();

  return v27(v24);
}

uint64_t sub_18F3C480C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F32F860;

  return _RawRepresentableStringQuery.entities(matching:)();
}

uint64_t sub_18F3C48BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18F3C4958;

  return _RawRepresentableStringQuery.entities(for:)(a1, a2);
}

uint64_t sub_18F3C4958()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;

  OUTLINED_FUNCTION_20_0();
  if (!v0)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t _RawRepresentableStringQuery<>.suggestedEntities()()
{
  OUTLINED_FUNCTION_69();
  v0[2] = v1;
  v0[3] = *(v2 + 16);
  v0[4] = swift_getAssociatedTypeWitness();
  v0[5] = OUTLINED_FUNCTION_34_0();
  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F3C4AE8()
{
  sub_18F5227CC();
  swift_getAssociatedConformanceWitness();
  v0 = sub_18F521DEC();

  OUTLINED_FUNCTION_20_0();

  return v1(v0);
}

uint64_t _RawRepresentableStringQuery<>.entities(matching:)()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v0[4] = v1;
  v0[5] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v6 = *(v1 + 16);
  v0[6] = v6;
  v0[7] = swift_getAssociatedTypeWitness();
  v0[8] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_12_2();
  v7 = sub_18F52254C();
  v0[9] = v7;
  OUTLINED_FUNCTION_51(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_34_0();
  v0[12] = *(v6 - 8);
  v0[13] = OUTLINED_FUNCTION_34_0();
  v0[14] = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_12_2();
  v10 = sub_18F52254C();
  v0[16] = v10;
  OUTLINED_FUNCTION_51(v10);
  v0[17] = v11;
  v0[18] = OUTLINED_FUNCTION_34_0();
  v0[19] = *(AssociatedTypeWitness - 8);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_18F3C4DC0()
{
  v1 = v0 + 18;
  v2 = v0[15];
  swift_getAssociatedConformanceWitness();
  v3 = OUTLINED_FUNCTION_2_93();
  v4(v3);
  v5 = OUTLINED_FUNCTION_171_0();
  if (__swift_getEnumTagSinglePayload(v5, v6, v2) == 1)
  {
    v7 = 16;
    v8 = 17;
  }

  else
  {
    v1 = v0 + 11;
    v9 = v0[6];
    v10 = OUTLINED_FUNCTION_14_45();
    v11(v10);
    v12 = OUTLINED_FUNCTION_12_58();
    v13(v12);
    OUTLINED_FUNCTION_7_62();
    v14 = OUTLINED_FUNCTION_171_0();
    __swift_getEnumTagSinglePayload(v14, v15, v9);
    OUTLINED_FUNCTION_11_46();
    if (!v16)
    {
      v27 = v0[6];
      v28 = *(v0[12] + 32);
      (v28)(v0[13], v0[11], v27);
      sub_18F18C388(v27, v27);
      OUTLINED_FUNCTION_3_79();
      v29 = sub_18F521CDC();
      v31 = OUTLINED_FUNCTION_10_50(v29, v30);
      v28(v31);
      v32 = sub_18F129FD4(v9);
      v33 = OUTLINED_FUNCTION_1_96();
      v34(v33);
      goto LABEL_7;
    }

    v17 = OUTLINED_FUNCTION_1_96();
    v18(v17);
    v7 = 9;
    v8 = 10;
  }

  v19 = *v1;
  v20 = v0[14];
  v22 = v0[5];
  v21 = v0[6];
  v24 = v0[3];
  v23 = v0[4];
  v25 = v0[2];
  (*(v0[v8] + 8))(v19, v0[v7]);
  sub_18F5227CC();
  v26 = swift_task_alloc();
  v26[2] = v21;
  v26[3] = v20;
  v26[4] = v22;
  v26[5] = *(v23 + 32);
  v26[6] = v25;
  v26[7] = v24;
  swift_getAssociatedConformanceWitness();
  v32 = sub_18F521BBC();

LABEL_7:

  OUTLINED_FUNCTION_20_0();

  return v35(v32);
}

uint64_t sub_18F3C506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v23 = a3;
  v7 = sub_18F520F1C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for DisplayRepresentation();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18F520B3C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  (*(*(*(a5 + 16) + 8) + 16))(a4);
  v18 = *(v12 + 16);
  v18(v17, v10, v11);
  sub_18F14372C(v10);
  static IntentContext.currentLocale.getter();
  sub_18F520E7C();
  sub_18F520B2C();
  v18(v15, v17, v11);
  v26 = sub_18F52193C();
  v27 = v19;
  v24 = v22;
  v25 = v23;
  sub_18F12A000();
  v20 = sub_18F5225EC();

  (*(v12 + 8))(v17, v11);
  return v20 & 1;
}

uint64_t sub_18F3C52F0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F3C532C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_18F3C5368(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F3C541C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for ViewAnnotation(0);
  v35 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v31 - v10;
  v11 = 0;
  v12 = *(a1 + 16);
  v13 = a1 + 32;
  v37 = MEMORY[0x1E69E7CC0];
  v32 = a1 + 32;
  v33 = v12;
  while (1)
  {
    v14 = v13 + 4 * v11;
    v15 = v12 - v11++;
    if (!v15)
    {
      return v37;
    }

    while (1)
    {
      v16 = a2[1];
      if (*(v16 + 16))
      {
        v17 = sub_18F182088();
        if (v18)
        {
          break;
        }
      }

      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
LABEL_13:
      sub_18F3C6344(v6);
      ++v11;
      v14 += 4;
      if (!--v15)
      {
        return v37;
      }
    }

    v19 = *(*(v16 + 56) + 8 * v17);
    v20 = a2[2];
    if (v20 && v19 == v20)
    {
    }

    else
    {

      sub_18F3C5AE4(v21);
      v22 = a2[2];
      if (v22)
      {
        *(v22 + *(*v22 + 120)) = v19;
        swift_retain_n();

        *(v19 + *(*v19 + 128)) = v22;

        a2[2] = v19;
      }

      else
      {
        a2[2] = v19;
        swift_retain_n();

        a2[3] = v19;
      }
    }

    v23 = *(*v19 + 112);
    swift_beginAccess();
    sub_18F3C6268(v19 + v23, v6);

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      goto LABEL_13;
    }

    v24 = v34;
    sub_18F3C63AC(v6, v34);
    sub_18F3C63AC(v24, v36);
    v25 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1698B0();
      v25 = v28;
    }

    v13 = v32;
    v12 = v33;
    v26 = *(v25 + 16);
    if (v26 >= *(v25 + 24) >> 1)
    {
      sub_18F1698B0();
      v25 = v29;
    }

    *(v25 + 16) = v26 + 1;
    v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = v25;
    sub_18F3C63AC(v36, v25 + v27 + *(v35 + 72) * v26);
  }
}

_DWORD *sub_18F3C57A0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 112);
  v10 = type metadata accessor for ViewAnnotation(0);
  __swift_storeEnumTagSinglePayload(v4 + v9, 1, 1, v10);
  *(v4 + *(*v4 + 120)) = 0;
  *(v4 + *(*v4 + 128)) = 0;
  v4[4] = a1;
  v11 = *(*v4 + 112);
  swift_beginAccess();
  sub_18F3C6474(a2, v4 + v11);
  swift_endAccess();
  *(v4 + *(*v4 + 120)) = a3;

  *(v4 + *(*v4 + 128)) = a4;

  return v4;
}

uint64_t sub_18F3C58C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_18F19E7EC(a1, v3[1]);
  if (!v9)
  {
    sub_18F3C6410(a2, v8);
    v14 = type metadata accessor for ViewAnnotation(0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4828);
    swift_allocObject();
    v15 = sub_18F3C57A0(a1, v8, 0, 0);

    swift_isUniquelyReferenced_nonNull_native();
    v28 = v3[1];
    sub_18F2C0B30();
    v16 = v28;
    v3[1] = v28;
    if (*v3 < *(v16 + 16))
    {
      v17 = v3[3];
      if (v17)
      {

        sub_18F3C5AE4(v18);
        sub_18F2BF74C(*(v17 + 16), v19, v20, v21, v22, v23, v24, v25, v27, v28);
      }
    }

    v13 = v15;
    goto LABEL_8;
  }

  v10 = v9;
  sub_18F3C6410(a2, v8);
  v11 = type metadata accessor for ViewAnnotation(0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
  v12 = *(*v10 + 112);
  swift_beginAccess();
  sub_18F3C6474(v8, v10 + v12);
  swift_endAccess();
  if (v10 != v3[2])
  {
    sub_18F3C5AE4(v10);
    v13 = v10;
LABEL_8:
    sub_18F3C5C54(v13);
  }
}

uint64_t sub_18F3C5AE4(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(*a1 + 120);
  v5 = *(a1 + v4);
  if (v5)
  {
    *(v5 + *(*v5 + 128)) = *(a1 + *(*a1 + 128));

    v3 = *a1;
  }

  v6 = *(v3 + 128);
  v7 = *(a1 + v6);
  v8 = *(a1 + v4);
  if (v7)
  {
    *(v7 + *(*v7 + 120)) = v8;

    v8 = *(a1 + v4);
  }

  if (*(v1 + 24) == a1)
  {

    *(v1 + 24) = v8;
  }

  *(a1 + v4) = 0;

  *(a1 + v6) = 0;
}

uint64_t sub_18F3C5C54(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v3 + *(*v3 + 120)) = a1;
    swift_retain_n();

    *(a1 + *(*a1 + 128)) = v3;

    *(v1 + 16) = a1;
  }

  else
  {
    *(v1 + 16) = a1;
    swift_retain_n();

    *(v1 + 24) = a1;
  }

  return result;
}

uint64_t sub_18F3C5D10()
{
  type metadata accessor for EntityInteractionsCache();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD87B0);
  result = swift_allocObject();
  *(result + 48) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(result + 16) = 1000;
  *(result + 24) = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(v0 + 16) = result;
  qword_1EACD87A8 = v0;
  return result;
}

uint64_t *sub_18F3C5D84()
{
  if (qword_1EACCF5C8 != -1)
  {
    OUTLINED_FUNCTION_0_121();
  }

  return &qword_1EACD87A8;
}

uint64_t static EntityInteractionsCache.shared.getter()
{
  if (qword_1EACCF5C8 != -1)
  {
    OUTLINED_FUNCTION_0_121();
  }

  swift_beginAccess();
}

uint64_t static EntityInteractionsCache.shared.setter(uint64_t a1)
{
  if (qword_1EACCF5C8 != -1)
  {
    OUTLINED_FUNCTION_0_121();
  }

  swift_beginAccess();
  qword_1EACD87A8 = a1;
}

uint64_t (*static EntityInteractionsCache.shared.modify())()
{
  if (qword_1EACCF5C8 != -1)
  {
    OUTLINED_FUNCTION_0_121();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F3C5F14@<X0>(void *a1@<X8>)
{
  sub_18F3C5D84();
  swift_beginAccess();
  *a1 = qword_1EACD87A8;
}

uint64_t sub_18F3C5F68(uint64_t *a1)
{
  v1 = *a1;

  sub_18F3C5D84();
  swift_beginAccess();
  qword_1EACD87A8 = v1;
}

unint64_t EntityInteractionsCache.add(_:)()
{
  result = ViewAnnotation.interactionID.getter();
  if ((result & 0x100000000) == 0)
  {
    v2 = *(v0 + 16);
    MEMORY[0x1EEE9AC00](result);

    os_unfair_lock_lock(v2 + 12);
    sub_18F3C6064();
    os_unfair_lock_unlock(v2 + 12);
  }

  return result;
}

uint64_t EntityInteractionsCache.getValue(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 48));
  v4 = *(v3 + 24);
  if (*(v4 + 16) && (v5 = sub_18F182088(), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v3 + 32);

    if (v8)
    {
      v9 = v7 == v8;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      sub_18F3C5AE4(v7);
      sub_18F3C5C54(v7);
    }

    v10 = *(*v7 + 112);
    swift_beginAccess();
    sub_18F3C6268(v7 + v10, a1);
  }

  else
  {
    v11 = type metadata accessor for ViewAnnotation(0);
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }

  os_unfair_lock_unlock((v3 + 48));
}

uint64_t EntityInteractionsCache.getValues(for:)()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 48));
  sub_18F3C62D8((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 48));
  v2 = v4;

  return v2;
}

uint64_t EntityInteractionsCache.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18F3C6268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3C62D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F3C541C(*(v2 + 16), a1);
  *a2 = result;
  return result;
}

uint64_t sub_18F3C6344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F3C63AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewAnnotation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3C6410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewAnnotation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3C6474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3C64E4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F12A054(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_18F3C658C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = dynamic_cast_existential_1_conditional(a1);
  if (result)
  {
    (*(v5 + 16))();
    swift_getAssociatedTypeWitness();
    sub_18F0F21A8(0, &qword_1EACD88B8);
    sub_18F52298C();

    v6 = sub_18F522B1C();

    if (v6)
    {
      result = sub_18F3C6688(v6, a1);
    }

    else
    {
      result = 0;
    }
  }

  *a2 = result;
  return result;
}

uint64_t sub_18F3C6688(uint64_t a1, uint64_t a2)
{
  v15[0] = a1;
  v3 = sub_18F520F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E7CC0];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  static IntentContext.currentLocale.getter();
  sub_18F520E7C();
  v8 = sub_18F520EBC();
  v9 = *(v4 + 8);
  v9(v6, v3);
  [v7 setLocale_];

  [v7 setUnitOptions_];
  v10 = v7;
  MEMORY[0x193ADB260]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  sub_18F521D6C();
  sub_18F0F21A8(0, &qword_1EACD88C0);
  if (swift_dynamicCastMetatype())
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    static IntentContext.currentLocale.getter();
    sub_18F520E7C();
    v12 = sub_18F520EBC();
    v9(v6, v3);
    [v11 setLocale_];

    MEMORY[0x193ADB260]([v11 setUnitOptions_]);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v17 = v15[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  swift_getWitnessTable();
  v16 = sub_18F52167C();
  MEMORY[0x1EEE9AC00](v16);
  v15[-2] = a2;
  v15[-1] = &v19;
  sub_18F521DBC();
  sub_18F52172C();
  swift_getWitnessTable();
  sub_18F521BCC();

  v13 = v18;

  return v13;
}

uint64_t MeasurementFromStringResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](sub_18F3C6A30, 0, 0);
}

uint64_t sub_18F3C6A30()
{
  v2 = v0[6];
  v1 = v0[7];
  if (v1)
  {
    v3 = v0[5];
    v4 = sub_18F3C6D8C(v3, 0x6D6572757361656DLL, 0xEF74696E55746E65, v2);
    v0[8] = v4;
    v5 = sub_18F3C6D8C(v3, 0xD000000000000016, 0x800000018F5263D0, v2);
    v0[9] = v5;
    v6 = swift_task_alloc();
    v0[10] = v6;
    v7 = *(v2 + 16);
    *v6 = v0;
    v6[1] = sub_18F3C6BBC;
    v8 = v0[3];
    v9 = v0[4];
    v10 = v0[2];

    return sub_18F3C6EC8(v10, v8, v9, v4, v5, v1, v7);
  }

  else
  {
    v12 = v0[2];
    v13 = sub_18F5206FC();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    OUTLINED_FUNCTION_6();

    return v14();
  }
}

uint64_t sub_18F3C6BBC()
{
  OUTLINED_FUNCTION_69();
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_18F3C6D28;
  }

  else
  {
    v2 = sub_18F3C6CCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F3C6CCC()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_18F3C6D28()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18F3C6D8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18F19E300(*a1, &v8);
  if (*(&v9 + 1))
  {
    *&v11 = *(a4 + 16);
    swift_getExtendedExistentialTypeMetadata_unique();
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_18F0FD724(&v11, &v8);
        goto LABEL_8;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_18F106E70(&v8);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  v8 = v11;
  v9 = v12;
  v10 = v13;
LABEL_8:
  v5 = *(&v9 + 1);
  if (*(&v9 + 1))
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1Tm(&v8, *(&v9 + 1));
    v5 = (*(v6 + 16))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
  }

  if (*(&v12 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }

  return v5;
}

uint64_t sub_18F3C6EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = sub_18F52072C();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3C6F94, 0, 0);
}

void sub_18F3C6F94()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 192);
  if (v1)
  {
    sub_18F18C388(*(v0 + 192), *(v0 + 192));
    swift_allocObject();
    v3 = v1;
    v4 = sub_18F521CDC();
    *v5 = v3;
    v6 = sub_18F129FD4(v4);
  }

  else
  {
    sub_18F0F21A8(0, &qword_1EACD88C0);
    if (swift_dynamicCastMetatype())
    {
      sub_18F3C7BA4();
      v6 = sub_18F52298C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
      OUTLINED_FUNCTION_0_122();
      *(v0 + 96) = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      *(swift_task_alloc() + 16) = v2;
      sub_18F5216DC();
      swift_getWitnessTable();
      v44 = sub_18F521BDC();

      *(v0 + 104) = v44;
      sub_18F521DBC();
      swift_getWitnessTable();
      v6 = sub_18F521DEC();
    }
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v7 = sub_18F521CBC();

  v53 = v7;
  if (v7 != sub_18F521D7C())
  {
    v52 = (v0 + 136);
    v47 = v6 + 32;
    v49 = (*(v0 + 208) + 8);
    v12 = MEMORY[0x1E69E6158];
    v46 = *(v0 + 176);
    while (1)
    {
      v13 = sub_18F521D4C();
      sub_18F521CEC();
      v14 = (v13 & 1) != 0 ? *(v47 + 8 * v7) : sub_18F52281C();
      v15 = v14;
      sub_18F521DAC();
      *(v0 + 120) = v15;
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
      OUTLINED_FUNCTION_0_122();
      sub_18F52175C();
      v48 = v16;

      v17 = *(v0 + 112) ? *(v0 + 112) : MEMORY[0x1E69E7CC0];
      v18 = *(v17 + 16);
      if (v18)
      {
        break;
      }

LABEL_35:

      if (v46)
      {
        v40 = *(v0 + 152);
        v39 = *(v0 + 160);
        *(v0 + 128) = 0;
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v41 = v46;
        LOBYTE(v40) = sub_18F3C87B0(v40, v39);

        if (v40)
        {
          v45 = *(v0 + 144);

          sub_18F5206DC();

          v9 = sub_18F5206FC();
          v10 = v45;
LABEL_43:
          v11 = 0;
          goto LABEL_44;
        }
      }

      else
      {
      }

      v7 = v53;
      if (v53 == sub_18F521D7C())
      {
        goto LABEL_6;
      }
    }

    v19 = 0;
    v20 = (v17 + 40);
    v50 = v17;
    v51 = *(v17 + 16);
    while (1)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        return;
      }

      v21 = *(v0 + 160);
      v23 = *(v20 - 1);
      v22 = *v20;
      *(v0 + 16) = *(v0 + 152);
      *(v0 + 24) = v21;
      *(v0 + 32) = v23;
      *(v0 + 40) = v22;
      sub_18F12A000();
      sub_18F5225DC();
      if ((v24 & 1) == 0)
      {
        break;
      }

LABEL_32:
      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_35;
      }
    }

    v25 = *(v0 + 216);
    v26 = *(v0 + 200);
    v54 = *(v0 + 152);
    v55 = *(v0 + 160);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F52199C();
    *(v0 + 48) = v54;
    *(v0 + 56) = v55;
    sub_18F52071C();
    v27 = sub_18F5225BC();
    v28 = v12;
    v30 = v29;
    (*v49)(v25, v26);

    *(v0 + 64) = v27;
    *(v0 + 72) = v30;
    v31 = v28;
    v32 = sub_18F5225AC();
    v34 = v33;

    if (!v34)
    {
      v12 = v31;
      v17 = v50;
      v18 = v51;
      goto LABEL_32;
    }

    *v52 = 0;
    *(swift_task_alloc() + 16) = v52;
    v12 = v31;
    v17 = v50;
    v18 = v51;
    if ((v34 & 0x1000000000000000) == 0)
    {
      if ((v34 & 0x2000000000000000) != 0)
      {
        *(v0 + 80) = v32;
        *(v0 + 88) = v34 & 0xFFFFFFFFFFFFFFLL;
        if (v32 < 0x21u && ((0x100003E01uLL >> v32) & 1) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v36 = _swift_stdlib_strtod_clocale();
        if (v36)
        {
          v37 = *v36 == 0;
LABEL_30:
          *(v0 + 224) = v37;
          goto LABEL_31;
        }

LABEL_29:
        v37 = 0;
        goto LABEL_30;
      }

      if ((v32 & 0x1000000000000000) != 0)
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if (v35 <= 0x20 && ((0x100003E01uLL >> v35) & 1) != 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    sub_18F52278C();
    v18 = v51;
LABEL_31:

    v38 = *(v0 + 224);

    if (v38)
    {
      v42 = *(v0 + 144);

      sub_18F5206DC();
      v9 = sub_18F5206FC();
      v10 = v42;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

LABEL_6:
  v8 = *(v0 + 144);

  v9 = sub_18F5206FC();
  v10 = v8;
  v11 = 1;
LABEL_44:
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);

  OUTLINED_FUNCTION_6();

  v43();
}

uint64_t static MeasurementFromStringResolver.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      LOBYTE(a3) = sub_18F3C8388(v3, v4, a3);

      if (a3)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t MeasurementFromStringResolver.hash(into:)()
{
  type metadata accessor for UnitResolverHelper();
  sub_18F52254C();
  swift_getWitnessTable();
  return sub_18F52255C();
}

uint64_t MeasurementFromStringResolver.hashValue.getter()
{
  sub_18F522EFC();
  MeasurementFromStringResolver.hash(into:)();
  return sub_18F522F4C();
}

uint64_t sub_18F3C77D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_18F0FB5F8;

  return MeasurementFromStringResolver.resolve(from:context:)(a1, v8, v9, a3, a4);
}

uint64_t sub_18F3C789C()
{
  sub_18F522EFC();
  MeasurementFromStringResolver.hash(into:)();
  return sub_18F522F4C();
}

uint64_t sub_18F3C78E8(uint64_t a1, id *a2)
{
  v2 = *a2;
  v3 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3C79BC(v3, v2);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0400);
  swift_getWitnessTable();
  sub_18F52172C();
  return sub_18F52176C();
}

uint64_t sub_18F3C79BC(uint64_t a1, id a2)
{
  v24 = MEMORY[0x1E69E7CD0];
  v4 = [a2 symbol];
  v5 = sub_18F5218DC();
  v7 = v6;

  sub_18F12A054(v23, v5, v7);

  result = sub_18F111F70(a1);
  if (result)
  {
    v9 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v10 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193ADBE10](v10, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      [v11 setUnitStyle_];
      v13 = [v12 stringFromUnit_];
      v14 = sub_18F5218DC();
      v16 = v15;

      sub_18F12A054(v23, v14, v16);

      [v12 setUnitStyle_];
      v17 = [v12 stringFromUnit_];
      v18 = sub_18F5218DC();
      v20 = v19;

      sub_18F12A054(v23, v18, v20);

      v21 = sub_18F3C7FBC(v12, a2);
      sub_18F3C64E4(v21);
    }

    while (v9 != v10);
  }

  v22 = v24;

  return sub_18F4617CC(v22);
}

uint64_t sub_18F3C7BA4()
{
  sub_18F0F21A8(0, qword_1EACD88D8);
  static IntentContext.currentLocale.getter();
  v0 = sub_18F3C7F48();
  v1 = [objc_opt_self() _preferredTemperatureUnit];
  if (v1)
  {
    v2 = v1;
    v3 = sub_18F5218DC();
    v5 = v4;

    *(&v20 + 1) = MEMORY[0x1E69E6158];
    *&v19 = v3;
    *(&v19 + 1) = v5;
    sub_18F118710(&v19, &v21);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    if ([v0 objectForKey_])
    {
      sub_18F52261C();
      swift_unknownObjectRelease();
      v21 = v17;
      v22 = v18;
      if (*(&v20 + 1))
      {
        sub_18F106E70(&v19);
      }
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }
  }

  sub_18F3B5938(&v21, &v19);
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = *(&v17 + 1);
      v7 = v17;
      goto LABEL_11;
    }
  }

  else
  {
    sub_18F106E70(&v19);
  }

  v7 = 0;
  v6 = 0;
LABEL_11:
  v8 = sub_18F5218DC();
  if (v6)
  {
    if (v7 == v8 && v6 == v9)
    {

LABEL_21:
      v12 = &selRef_celsius;
      v13 = &selRef_fahrenheit;
      goto LABEL_22;
    }

    v11 = sub_18F522D5C();

    if (v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v12 = &selRef_fahrenheit;
  v13 = &selRef_celsius;
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18F561DA0;
  v15 = objc_opt_self();
  *(v14 + 32) = [v15 *v13];
  *(v14 + 40) = [v15 *v12];
  *(v14 + 48) = [v15 kelvin];

  sub_18F106E70(&v21);
  return v14;
}

uint64_t sub_18F3C7E40(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 symbol];
  v4 = sub_18F5218DC();
  v6 = v5;

  v7 = [v2 symbol];
  v8 = sub_18F5218DC();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_18F522D5C();
  }

  return v12 & 1;
}

id sub_18F3C7F48()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F5218AC();

  v2 = [v0 initWithLocaleIdentifier_];

  return v2;
}

id sub_18F3C7FBC(void *a1, void *a2)
{
  v38 = a2;
  v35 = sub_18F52072C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFDD0);
  v6 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v33 - v7;
  v37 = a1;
  [a1 setUnitStyle_];
  v46 = MEMORY[0x1E69E7CC0];
  sub_18F3AA158();
  v9 = v46;
  v33 = (v6 + 8);
  v34 = (v3 + 8);
  v36 = sub_18F0F21A8(0, &qword_1EACD88B8);
  v10 = 0;
  while (1)
  {
    v11 = v38;
    sub_18F5206DC();
    v12 = sub_18F5206BC();
    v13 = v37;
    v14 = [v37 stringFromMeasurement_];

    v15 = sub_18F5218DC();
    v17 = v16;

    result = [v13 numberFormatter];
    if (!result)
    {
      break;
    }

    v19 = result;
    v20 = sub_18F521FDC();
    v21 = [v19 stringFromNumber_];

    if (v21)
    {
      v22 = sub_18F5218DC();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v44 = v15;
    v45 = v17;
    v42 = v22;
    v43 = v24;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_18F12A000();
    v25 = sub_18F5225CC();
    v27 = v26;

    v44 = v25;
    v45 = v27;
    sub_18F52070C();
    v28 = sub_18F5225BC();
    v30 = v29;
    (*v34)(v5, v35);

    (*v33)(v8, v39);
    v46 = v9;
    v31 = *(v9 + 16);
    if (v31 >= *(v9 + 24) >> 1)
    {
      sub_18F3AA158();
      v9 = v46;
    }

    *(v9 + 16) = v31 + 1;
    v32 = v9 + 16 * v31;
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    v10 += 8;
    if (v10 == 48)
    {
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F3C8388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_18F3C8714();

  return MEMORY[0x1EEE68930](a1, a2, a3, v6, WitnessTable, v8);
}

uint64_t sub_18F3C8424()
{
  sub_18F522EFC();
  sub_18F3C7F10();
  return sub_18F522F4C();
}

uint64_t sub_18F3C8494()
{
  sub_18F522EFC();
  sub_18F3C7F10();
  return sub_18F522F4C();
}

_BYTE *sub_18F3C84EC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_18F3C858C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F3C85E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F3C8638()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_18F3C86AC()
{
  result = qword_1EACD88C8;
  if (!qword_1EACD88C8)
  {
    sub_18F0F21A8(255, qword_1ED6FBD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD88C8);
  }

  return result;
}

unint64_t sub_18F3C8714()
{
  result = qword_1EACD88D0;
  if (!qword_1EACD88D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD88D0);
  }

  return result;
}

BOOL sub_18F3C87B0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_18F52278C();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

void sub_18F3C8FCC()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F3C9114()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_18();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F3C91C0()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_18();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F3C9404()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v8 - v7, v0, v3);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v2();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F3C95FC()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F3C9708()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a5;
  v39 = a7;
  v37 = a4;
  v41 = a2;
  v42 = a3;
  v36 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v35[1] = v35 - v11;
  v40 = v7;
  swift_getAssociatedTypeWitness();
  v13 = sub_18F52254C();
  v14 = OUTLINED_FUNCTION_2_2(v13, &v48);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v35 - v17;
  v19 = sub_18F520B3C();
  v20 = OUTLINED_FUNCTION_2_2(v19, &v49);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  (*(v22 + 16))(v24 - v23, a1);
  (*(v16 + 16))(v18, v42, v13);
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_71();
  sub_18F39D018(v25);
  v26 = v37;
  sub_18F15F1BC(v37, v12);
  v27 = v38;
  OUTLINED_FUNCTION_7_63();
  OUTLINED_FUNCTION_6_71();
  v30 = nullsub_1(v28, v29);
  OUTLINED_FUNCTION_6_71();
  v31 = type metadata accessor for AppEnumOptionsProvider();
  v44 = OUTLINED_FUNCTION_0_50(v31);
  v43 = v30;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  v33 = v32;
  sub_18F0EF148(v27, &qword_1EACCF7A0);
  sub_18F0EF148(v26, &qword_1EACCF7A0);
  (*(v16 + 8))(v42, v35[2]);
  sub_18F0EF148(v41, &qword_1EACCF7A8);
  (*(v22 + 8))(v36, v35[4]);
  return v33;
}

uint64_t IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v48 = a8;
  v54 = a7;
  v51 = a4;
  v52 = a5;
  v43 = a3;
  v55 = a2;
  v50 = a1;
  v47 = a13;
  v44 = a11;
  v41 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v46 = v40 - v18;
  v53 = v13;
  swift_getAssociatedTypeWitness();
  v19 = sub_18F52254C();
  v20 = OUTLINED_FUNCTION_2_2(v19, &v60);
  v22 = v21;
  v45 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v40 - v23;
  v40[1] = v40 - v23;
  v25 = sub_18F520B3C();
  v26 = OUTLINED_FUNCTION_2_2(v25, &v61);
  v28 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  (*(v28 + 16))(v30 - v29, a1);
  (*(v22 + 16))(v24, a3, v19);
  v59[3] = v41;
  v59[4] = v44;
  __swift_allocate_boxed_opaque_existential_1(v59);
  v48();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18F39D018(v58);
  sub_18F15F1BC(v51, v46);
  v32 = v52;
  OUTLINED_FUNCTION_7_63();
  v33 = nullsub_1(v54, AssociatedTypeWitness);
  v34 = type metadata accessor for AppEnumOptionsProvider();
  v57 = OUTLINED_FUNCTION_0_50(v34);
  v56 = v33;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  v36 = v35;

  sub_18F0EF148(v32, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_6_71();
  sub_18F0EF148(v37, v38);
  (*(v45 + 8))(v43, v42);
  sub_18F0EF148(v55, &qword_1EACCF7A8);
  (*(v28 + 8))(v50, v49);
  return v36;
}

uint64_t IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v51 = a8;
  v40[1] = a7;
  v48 = a5;
  v46 = a4;
  v52 = a2;
  v53 = a3;
  v44 = a1;
  v49 = a10;
  v47 = a9;
  v45 = a12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v40 - v16;
  v50 = v12;
  swift_getAssociatedTypeWitness();
  v18 = sub_18F52254C();
  v19 = OUTLINED_FUNCTION_2_2(v18, &v59);
  v21 = v20;
  v41 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v40 - v22;
  v40[0] = v40 - v22;
  v24 = sub_18F520B3C();
  v25 = OUTLINED_FUNCTION_2_2(v24, &v60);
  v27 = v26;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  v30 = v29 - v28;

  (*(v27 + 16))(v30, a1, v24);
  (*(v21 + 16))(v23, v53, v18);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  swift_getAssociatedTypeWitness();
  sub_18F39D018(v55);
  v31 = v46;
  sub_18F15F1BC(v46, v17);
  v32 = v48;
  sub_18F15F1BC(v48, v42);
  v33 = v47;
  v54[3] = v47;
  v54[4] = v49;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  v35 = *(v33 - 8);
  v36 = v51;
  (*(v35 + 16))(boxed_opaque_existential_1, v51, v33);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  v38 = v37;
  (*(v35 + 8))(v36, v33);
  sub_18F0EF148(v32, &qword_1EACCF7A0);
  sub_18F0EF148(v31, &qword_1EACCF7A0);
  (*(v41 + 8))(v53, v40[2]);
  sub_18F0EF148(v52, &qword_1EACCF7A8);
  (*(v27 + 8))(v44, v43);
  return v38;
}

uint64_t EntityQuery._runner()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t _EntityQueryRunner.entities(for:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F130C90;

  return sub_18F1922E0();
}

uint64_t _EntityQueryRunner.suggestedEntities()()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_80(v1);

  return sub_18F13FB00();
}

uint64_t _EntityQueryRunner.results()()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_80(v1);

  return sub_18F13F7EC();
}

uint64_t _EntityQueryRunner.defaultResult()()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_80(v1);

  return sub_18F13B57C();
}

uint64_t _EntityQueryRunner<>.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  v12 = *(a4 + 16);
  *v11 = v13;
  v11[1] = sub_18F38D774;

  return sub_18F354850(a1, a2, a3, v12, a5);
}

uint64_t _EntityQueryRunner<>.uniqueEntity()()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_72(v1);

  return sub_18F189FF8();
}

uint64_t _EntityQueryRunner<>.allEntities()()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_72(v1);

  return sub_18F3FA918(v3, v4, v5);
}

uint64_t _EntityQueryRunner<>.entities(matching:mode:sortedBy:limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_9_6(v16);
  v18 = *(a7 + 16);
  *v17 = v19;
  v17[1] = sub_18F38D774;

  return sub_18F383EF4(a1, a2, a3 & 1, a4, a5, a6 & 1, v18, a8);
}

uint64_t _EntityQueryRunner.displayRepresentations(for:requestedComponents:)()
{
  OUTLINED_FUNCTION_21();
  *(v0 + 16) = *v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_18F3CAD0C;

  return sub_18F192F04();
}

uint64_t sub_18F3CAD0C()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F3CAE38, 0, 0);
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(v3);
  }
}

uint64_t sub_18F3CAE50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_18F3CAF8C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_18F3CB234()
{
  v0 = sub_18F520B3C();
  __swift_allocate_value_buffer(v0, qword_1ED6FE1B8);
  __swift_project_value_buffer(v0, qword_1ED6FE1B8);
  return sub_18F520ACC();
}

uint64_t sub_18F3CB28C()
{
  if (qword_1ED6FE1B0 != -1)
  {
    OUTLINED_FUNCTION_0_123();
  }

  v0 = sub_18F520B3C();

  return __swift_project_value_buffer(v0, qword_1ED6FE1B8);
}

uint64_t static _CutIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6FE1B0 != -1)
  {
    OUTLINED_FUNCTION_0_123();
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1ED6FE1B8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static _CutIntent.title.setter(uint64_t a1)
{
  if (qword_1ED6FE1B0 != -1)
  {
    OUTLINED_FUNCTION_0_123();
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1ED6FE1B8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static _CutIntent.title.modify())()
{
  if (qword_1ED6FE1B0 != -1)
  {
    OUTLINED_FUNCTION_0_123();
  }

  v0 = sub_18F520B3C();
  __swift_project_value_buffer(v0, qword_1ED6FE1B8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F3CB4F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18F3CB28C();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18F3CB574(uint64_t a1)
{
  v2 = sub_18F3CB28C();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_18F3CB61C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F10DF80;

  return _CutIntent.perform()();
}

unint64_t sub_18F3CB6A8(uint64_t a1)
{
  result = sub_18F3CB6D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F3CB6D0()
{
  result = qword_1ED6FED30;
  if (!qword_1ED6FED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FED30);
  }

  return result;
}

unint64_t sub_18F3CB724(uint64_t a1)
{
  result = sub_18F3CB74C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F3CB74C()
{
  result = qword_1ED6FED28;
  if (!qword_1ED6FED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FED28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _CutIntent(_BYTE *result, int a2, int a3)
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

id sub_18F3CB89C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v8);
  v2 = v8[0];
  v3 = v8[1];
  v4 = v8[2];
  objc_allocWithZone(MEMORY[0x1E69ACF38]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = v2;
  v6 = sub_18F3CC618(v2, v3, v4);

  return v6;
}

void SetFocusFilterIntent.appContext.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_18F3CB95C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18F3CB9F0;

  return static SetFocusFilterIntent.suggestedFocusFilters(for:)(v4, a2);
}

uint64_t sub_18F3CB9F0()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_18F3CBB04()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_18F521D2C();
  v2 = *(v0 + 8);

  return v2(v1);
}

void static SetFocusFilterIntent.invalidateFocusFilterAppContext()(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_18F5218DC();

    sub_18F0F21A8(0, &qword_1EACCDD00);
    v4 = sub_18F10FCB8();
    static AppIntent._identifier.getter(a1);
    v5 = sub_18F5218AC();

    [v4 invalidateAppContextForActionIdentifier_];
  }
}

uint64_t SetFocusFilterIntentError.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F3CBD28()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 352);

  *(v0 + 552) = v2;
  v3 = swift_task_alloc();
  *(v0 + 560) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_0_124(v3);
  OUTLINED_FUNCTION_7_64();

  return sub_18F114AB0();
}

uint64_t sub_18F3CBDE8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  *(v8 + 624) = v7;
  *(v8 + 632) = v0;

  if (v0)
  {
    v9 = sub_18F3CC148;
  }

  else
  {
    v9 = sub_18F3CBF4C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_18F3CBF4C()
{
  if (*(v0 + 624))
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 608);
      v4 = *(v0 + 600);
      v5 = *(v0 + 592);
      v6 = *(v0 + 584);

      swift_unknownObjectRetain();
      *(v0 + 552) = v2;
      v7 = swift_task_alloc();
      *(v0 + 560) = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_0_124(v7);
      OUTLINED_FUNCTION_7_64();

      return sub_18F114AB0();
    }

    swift_unknownObjectRelease();
  }

  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 592);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  v14 = *(v0 + 520);
  sub_18F3CC690();
  v15 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_73(v15, v16);

  OUTLINED_FUNCTION_1_97();

  OUTLINED_FUNCTION_71();

  return v17();
}

uint64_t sub_18F3CC148()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);

  OUTLINED_FUNCTION_1_97();

  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F3CC240()
{
  v1 = *(v0 + 568);

  *(v0 + 384) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 456);
    v4 = *(v0 + 464);
    v5 = *(v0 + 432);

    sub_18F1F8EE4(v4, v3);
    sub_18F2DA740(v3, v5, type metadata accessor for AppIntentError.Context);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 432);
    if (EnumCaseMultiPayload)
    {
      v8 = *(v0 + 552);
      v9 = *(v0 + 520);
      v10 = *(v0 + 456);
      sub_18F3CC6E4(*(v0 + 432), type metadata accessor for AppIntentError.Context);
      sub_18F2199DC();
      OUTLINED_FUNCTION_28();
      sub_18F2DA740(v10, v11, type metadata accessor for AppIntentError);
      swift_willThrow();

      v12 = v10;
      v13 = type metadata accessor for AppIntentError;
    }

    else
    {
      v16 = *(v0 + 448);
      v15 = *(v0 + 456);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0568);
      v18 = *(v17 + 48);
      sub_18F0EF1A8(v7 + *(v17 + 64), &qword_1EACD0550);
      sub_18F0EF1A8(v7 + v18, &qword_1EACCF7A0);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      sub_18F2DA740(v15, v16, type metadata accessor for AppIntentError);
      v19 = sub_18F52163C();
      v20 = sub_18F52221C();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 448);
      if (v21)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        sub_18F2199DC();
        OUTLINED_FUNCTION_28();
        sub_18F2DA740(v22, v25, type metadata accessor for AppIntentError);
        v26 = _swift_stdlib_bridgeErrorToNSError();
        sub_18F3CC6E4(v22, type metadata accessor for AppIntentError);
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_18F0E9000, v19, v20, "Set Focus Filter %@", v23, 0xCu);
        sub_18F0EF1A8(v24, &qword_1EACD0578);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();
      }

      else
      {

        OUTLINED_FUNCTION_2_94();
        sub_18F3CC6E4(v22, v27);
      }

      v28 = *(v0 + 552);
      v29 = *(v0 + 520);
      v30 = *(v0 + 456);
      sub_18F3CC690();
      OUTLINED_FUNCTION_28();
      *v31 = 1;
      swift_willThrow();

      OUTLINED_FUNCTION_2_94();
      v12 = v30;
    }

    sub_18F3CC6E4(v12, v13);
  }

  else
  {
    v14 = *(v0 + 520);
  }

  OUTLINED_FUNCTION_1_97();

  OUTLINED_FUNCTION_71();

  return v32();
}

id sub_18F3CC618(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_18F5218AC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithNotificationFilterPredicate:a1 targetContentIdentifierPrefix:v5];

  return v6;
}

unint64_t sub_18F3CC690()
{
  result = qword_1EACD8960;
  if (!qword_1EACD8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8960);
  }

  return result;
}

uint64_t sub_18F3CC6E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_18F3CC740()
{
  result = qword_1EACD8970;
  if (!qword_1EACD8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8970);
  }

  return result;
}

uint64_t dispatch thunk of static SetFocusFilterIntent.suggestedFocusFilters(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F3CB9F0;

  return v9(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for SetFocusFilterIntentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v55 = v24;
  v56 = v23;
  v54 = v25;
  v53 = v26;
  v57 = v27;
  OUTLINED_FUNCTION_46_0(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_21_1();
  v32 = *(v20 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v33, &a12);
  v35 = v34;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_11();
  v37 = OUTLINED_FUNCTION_125_6(&a11);
  v38 = OUTLINED_FUNCTION_2_2(v37, &a15);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_4();

  v39 = OUTLINED_FUNCTION_115();
  v40(v39);
  v41 = OUTLINED_FUNCTION_45_18();
  v42(v41);
  OUTLINED_FUNCTION_11_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(v55 + 8);
  sub_18F120FCC(v32, AssociatedTypeWitness, v32, v44);
  v45 = OUTLINED_FUNCTION_107_6();
  sub_18F116908(v45, v46, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_79_7();
  sub_18F116908(v47, v48, v49);
  OUTLINED_FUNCTION_43_1();
  sub_18F12310C(v44, v50);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  sub_18F0EF148(v56, &qword_1EACCF7A0);
  sub_18F0EF148(v54, &qword_1EACCF7A0);
  (*(v35 + 8))(v53);
  sub_18F0EF148(v57, &qword_1EACCF7A8);
  v51 = OUTLINED_FUNCTION_8_58();
  v52(v51);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v59 = v24;
  v57 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_59_12(v28, v29, &a18);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  v58 = v32;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v52 - v34;
  v60 = v20;
  OUTLINED_FUNCTION_141_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v36, &a17);
  v56 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_24();
  v53 = v21;
  v39 = sub_18F520B3C();
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();

  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_79_7();
  v41();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_141_3();
  swift_getAssociatedTypeWitness();
  v42 = *(v59 + 8);
  v43 = OUTLINED_FUNCTION_34_29();
  sub_18F120FCC(v43, v44, v45, v42);
  sub_18F116908(v27, v35, &qword_1EACCF7A0);
  sub_18F116908(v57, v58, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_75_11();
  sub_18F12310C(v46, v47);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  OUTLINED_FUNCTION_128();
  sub_18F0EF148(v48, v49);
  OUTLINED_FUNCTION_128();
  sub_18F0EF148(v50, v51);
  (*(v56 + 8))(v55, v54);
  sub_18F0EF148(v61, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v68 = v27;
  v72 = v28;
  v71 = v29;
  v66 = v30;
  v73 = v31;
  v33 = v32;
  v70 = a24;
  OUTLINED_FUNCTION_54_17(a23);
  OUTLINED_FUNCTION_110_5(a22);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_11_14(v37, v38, v39, v40, v41, v42, v43, v44, v65);
  v45 = *(v24 + 80);
  OUTLINED_FUNCTION_143_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v46, &v75);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_17_14();
  v48 = sub_18F520B3C();
  v49 = OUTLINED_FUNCTION_2_2(v48, &a13);
  v51 = v50;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  v54 = v53 - v52;
  OUTLINED_FUNCTION_123_6();
  (*(v51 + 16))(v54, v33, v48);
  OUTLINED_FUNCTION_83_9();
  OUTLINED_FUNCTION_74_11();
  v55();
  OUTLINED_FUNCTION_22_0(&a12);
  v68();
  OUTLINED_FUNCTION_143_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(v70 + 8);
  sub_18F120FCC(v45, AssociatedTypeWitness, v45, v57);
  sub_18F116908(v71, v67, &qword_1EACCF7A0);
  sub_18F116908(v72, v69, &qword_1EACCF7A0);
  sub_18F12310C(v57, v74);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v58, v59);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v60, v61);
  OUTLINED_FUNCTION_23_1();
  v62(v66);
  sub_18F0EF148(v73, &qword_1EACCF7A8);
  v63 = OUTLINED_FUNCTION_24_44();
  v64(v63);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v60[0] = v26;
  v61 = v27;
  v65 = v28;
  v60[6] = v29;
  v31 = v30;
  OUTLINED_FUNCTION_59_12(v32, v30, &a14);
  v63 = a23;
  OUTLINED_FUNCTION_29_5(a22);
  OUTLINED_FUNCTION_40(a21);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  v62 = v35;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v60 - v37;
  v64 = v23;
  v39 = *(v23 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v40, &a13);
  v60[4] = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_11();
  v43 = OUTLINED_FUNCTION_125_6(&a12);
  v44 = OUTLINED_FUNCTION_10(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();

  OUTLINED_FUNCTION_25_0();
  v45 = OUTLINED_FUNCTION_56_14();
  v46(v45, v31, v23);
  v47 = OUTLINED_FUNCTION_22_0(&a18);
  v61(v47);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(v63 + 8);
  sub_18F120FCC(v39, AssociatedTypeWitness, v39, v49);
  v50 = OUTLINED_FUNCTION_89_8(&a17);
  sub_18F116908(v50, v38, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_67_12();
  sub_18F116908(v51, v52, v53);
  sub_18F12310C(v49, v67);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v54, v55);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v56, v57);
  v58 = OUTLINED_FUNCTION_24_44();
  v59(v58);
  sub_18F0EF148(v66, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v74 = v29;
  v75 = v28;
  v76 = v30;
  OUTLINED_FUNCTION_41_11(v31, v32, v33, &a9);
  OUTLINED_FUNCTION_46_0(v34);
  OUTLINED_FUNCTION_54_17(a21);
  OUTLINED_FUNCTION_29_5(a22);
  OUTLINED_FUNCTION_72_12(a23);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v66 - v38;
  v40 = v23;
  v77 = v23;
  v41 = *(v23 + 88);
  v42 = *(v40 + 80);
  OUTLINED_FUNCTION_70();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_115_7();
  OUTLINED_FUNCTION_2_2(v43, &a10);
  v45 = v44;
  v69 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_33_8();
  v67 = v25;
  v47 = sub_18F520B3C();
  v48 = OUTLINED_FUNCTION_2_2(v47, &a15);
  v72 = v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_139_3();

  OUTLINED_FUNCTION_128();
  v50();
  OUTLINED_FUNCTION_19_21();
  v51(v25, v79, v24);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_70();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_41();
  v52 = v42;
  v53 = v74;
  v54 = v42;
  v55 = v70;
  v56 = v73;
  sub_18F12A88C(v52, v74, v57, v54, v70, v58, v41);
  v59 = v75;
  sub_18F116908(v75, v39, &qword_1EACCF7A0);
  v60 = OUTLINED_FUNCTION_131_3();
  sub_18F116908(v60, v71, &qword_1EACCF7A0);
  v80[3] = v55;
  v80[4] = v56;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
  v62 = *(v55 - 8);
  (*(v62 + 16))(boxed_opaque_existential_1, v53, v55);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  (*(v62 + 8))(v53, v55);
  sub_18F0EF148(v45, &qword_1EACCF7A0);
  sub_18F0EF148(v59, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_23_1();
  v63(v79, v68);
  sub_18F0EF148(v78, &qword_1EACCF7A8);
  v64 = OUTLINED_FUNCTION_8_58();
  v65(v64);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v66 = v28;
  v67 = v27;
  v30 = v29;
  v68 = v31;
  v65[1] = v32;
  v34 = v33;
  OUTLINED_FUNCTION_59_12(v35, v33, &a16);
  v36 = a21;
  OUTLINED_FUNCTION_29_5(a22);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  v65[6] = v39;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v65 - v41;
  v65[0] = v65 - v41;
  v43 = v23;
  v69 = v23;
  v44 = *(v23 + 88);
  v45 = *(v43 + 80);
  OUTLINED_FUNCTION_70();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_2_2(v46, &a15);
  v65[4] = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_34_1();
  v49 = sub_18F520B3C();
  v50 = OUTLINED_FUNCTION_10(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();

  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_19_21();
  v51(v24, v34, v22);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_70();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_41();
  v52 = v66;
  sub_18F12A88C(v45, v30, v53, v45, v66, v54, v44);
  sub_18F116908(v67, v42, &qword_1EACCF7A0);
  v55 = v68;
  OUTLINED_FUNCTION_93();
  sub_18F116908(v56, v57, v58);
  v71[3] = v52;
  v71[4] = v36;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  v60 = *(v52 - 8);
  (*(v60 + 16))(boxed_opaque_existential_1, v30, v52);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_43_1();
  sub_18F116B3C();
  (*(v60 + 8))(v30, v52);
  sub_18F0EF148(v55, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v61, v62);
  v63 = OUTLINED_FUNCTION_8_58();
  v64(v63);
  sub_18F0EF148(v70, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_18();
  a19 = v29;
  a20 = v30;
  v66 = v31;
  v67 = v32;
  OUTLINED_FUNCTION_73_8(v33, v34, &v71);
  v68 = v35;
  OUTLINED_FUNCTION_46_0(v36);
  OUTLINED_FUNCTION_31_4(a27);
  OUTLINED_FUNCTION_110_5(a21);
  OUTLINED_FUNCTION_54_17(a26);
  v37 = a24;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v41);
  v42 = *(v27 + 80);
  v43 = *(v27 + 88);
  OUTLINED_FUNCTION_86_9();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v44, &v73);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_24();
  v46 = sub_18F520B3C();
  v47 = OUTLINED_FUNCTION_2_2(v46, &a15);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();

  v48 = OUTLINED_FUNCTION_45_18();
  v49(v48);
  OUTLINED_FUNCTION_45_0();
  v50(v28, v69, v27);
  OUTLINED_FUNCTION_22_0(&v72);
  v64();
  OUTLINED_FUNCTION_71_11();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_41();
  sub_18F12A88C(v42, v66, v51, v42, v37, v52, v43);
  sub_18F116908(v67, v63, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_131_3();
  OUTLINED_FUNCTION_74_11();
  sub_18F116908(v53, v54, v55);
  v70[3] = v37;
  v70[4] = v65;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  v57 = *(v37 - 8);
  (*(v57 + 16))(boxed_opaque_existential_1, v66, v37);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  (*(v57 + 8))(v66, v37);
  sub_18F0EF148(v28, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v58, v59);
  OUTLINED_FUNCTION_23_1();
  v60();
  sub_18F0EF148(v68, &qword_1EACCF7A8);
  v61 = OUTLINED_FUNCTION_8_58();
  v62(v61);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_18();
  a19 = v27;
  a20 = v28;
  v61 = v29;
  v31 = v30;
  v63 = v32;
  v64 = v33;
  v65 = v34;
  v62 = a25;
  OUTLINED_FUNCTION_29_5(a26);
  v35 = a23;
  OUTLINED_FUNCTION_54_17(a24);
  OUTLINED_FUNCTION_110_5(a22);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_1();
  v66 = v39;
  v40 = *(v26 + 80);
  v41 = *(v26 + 88);
  OUTLINED_FUNCTION_86_9();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v42, &a13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_24();
  v44 = sub_18F520B3C();
  v45 = OUTLINED_FUNCTION_10(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_123_6();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_142();
  v48(v46, v47);
  v49 = OUTLINED_FUNCTION_22_0(&a12);
  v61(v49, v50);
  OUTLINED_FUNCTION_71_11();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_41();
  sub_18F12A88C(v40, v31, v51, v40, v35, v52, v41);
  sub_18F116908(v63, v66, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_47_4();
  sub_18F116908(v53, v54, v55);
  v67[3] = v35;
  v67[4] = v62;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v31, v35);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  OUTLINED_FUNCTION_139_3();

  v57 = OUTLINED_FUNCTION_80_0();
  v58(v57);
  sub_18F0EF148(v64, &qword_1EACCF7A0);
  sub_18F0EF148(v63, &qword_1EACCF7A0);
  v59 = OUTLINED_FUNCTION_24_44();
  v60(v59);
  sub_18F0EF148(v65, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v68 = v26;
  v71 = v27;
  v72 = v28;
  v73 = v29;
  v31 = v30;
  v69 = v30;
  v32 = a21;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_87_10();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_77();
  OUTLINED_FUNCTION_68(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21_1();
  v74 = v38;
  v39 = *(v21 + 80);
  OUTLINED_FUNCTION_106_5();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v40, &a10);
  v42 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_125_6(&v75);
  OUTLINED_FUNCTION_115_7();
  v45 = OUTLINED_FUNCTION_2_2(v44, &a13);
  v47 = v46;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  v50 = v49 - v48;

  (*(v47 + 16))(v50, v31, v22);
  (*(v42 + 16))(v23, v73, v21);
  OUTLINED_FUNCTION_106_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89_8(&a9);
  OUTLINED_FUNCTION_67_12();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_93();
  sub_18F122E1C();
  sub_18F120FCC(v39, AssociatedTypeWitness, v39, AssociatedConformanceWitness);
  v53 = OUTLINED_FUNCTION_94_10();
  sub_18F116908(v53, v74, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_79_7();
  sub_18F116908(v54, v55, v56);
  OUTLINED_FUNCTION_31_10();
  v57(v70, v68, v32);
  OUTLINED_FUNCTION_47_4();
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider();
  v59 = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  OUTLINED_FUNCTION_96_9(v59);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_47_4();
  sub_18F123278(v60, v61, v62);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  OUTLINED_FUNCTION_136_2();
  v63(v68, v32);
  sub_18F0EF148(v71, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v64, v65);
  OUTLINED_FUNCTION_23_1();
  v66(v73);
  sub_18F0EF148(v72, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_23_1();
  v67(v69);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v67 = v26;
  v70 = v27;
  v66 = v28;
  v30 = v29;
  OUTLINED_FUNCTION_59_12(v31, v29, &a16);
  OUTLINED_FUNCTION_11_0();
  v69 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_77();
  v68 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v38);
  v71 = v21;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_2_2(v39, &a15);
  v41 = v40;
  v65[6] = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v65 - v43;
  v65[1] = v65 - v43;
  v45 = sub_18F520B3C();
  v46 = OUTLINED_FUNCTION_10(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();

  OUTLINED_FUNCTION_25_0();
  (*(v41 + 16))(v44, v30, v20);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_142();
  sub_18F122E1C();
  OUTLINED_FUNCTION_26_1();
  sub_18F120FCC(v48, v49, v50, AssociatedConformanceWitness);
  v51 = v66;
  sub_18F116908(v66, v65[2], &qword_1EACCF7A0);
  v52 = v70;
  OUTLINED_FUNCTION_93();
  sub_18F116908(v53, v54, v55);
  OUTLINED_FUNCTION_19_21();
  OUTLINED_FUNCTION_86();
  v56();
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider();
  v58 = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  OUTLINED_FUNCTION_96_9(v58);
  v59 = OUTLINED_FUNCTION_90_0();
  sub_18F123278(v59, v25, v60);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  v61 = OUTLINED_FUNCTION_43_1();
  v62(v61);
  sub_18F0EF148(v52, &qword_1EACCF7A0);
  sub_18F0EF148(v51, &qword_1EACCF7A0);
  v63 = OUTLINED_FUNCTION_8_58();
  v64(v63);
  sub_18F0EF148(v72, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v65 = v25;
  v66 = v24;
  OUTLINED_FUNCTION_73_8(v26, v27, &a14);
  OUTLINED_FUNCTION_40(a21);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v29 = OUTLINED_FUNCTION_10(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_126_5();
  v63 = v31;
  swift_getAssociatedTypeWitness();
  v32 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_28_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v36);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_0();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4_77();
  OUTLINED_FUNCTION_111_7(v42);

  OUTLINED_FUNCTION_26_1();
  sub_18F116908(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_106(v46, v47, v38);
  if (v48)
  {
    OUTLINED_FUNCTION_61_15();
    v49 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_106(v49, v50, v38);
    if (!v48)
    {
      sub_18F0EF148(v21, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v40 + 32))(v67, v21, v38);
  }

  v51 = OUTLINED_FUNCTION_107_6();
  v52(v51);
  OUTLINED_FUNCTION_11_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_97_8();
  v54 = *(v53 + 8);
  OUTLINED_FUNCTION_124_7(v63, v55, v63);
  OUTLINED_FUNCTION_67_12();
  sub_18F116908(v56, v57, v58);
  sub_18F116908(v65, v64, &qword_1EACCF7A0);
  sub_18F12310C(v54, v69);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_144_3();
  sub_18F0EF148(v65, &qword_1EACCF7A0);
  sub_18F0EF148(v66, &qword_1EACCF7A0);
  (*(v34 + 8))(v68, v32);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v59, v60);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v61, v62);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v71 = v29;
  v72 = v28;
  OUTLINED_FUNCTION_73_8(v30, v31, &a9);
  OUTLINED_FUNCTION_40(a25);
  OUTLINED_FUNCTION_54_17(a24);
  OUTLINED_FUNCTION_110_5(a23);
  OUTLINED_FUNCTION_61_0(a22);
  OUTLINED_FUNCTION_72_12(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_126_5();
  swift_getAssociatedTypeWitness();
  v36 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_28_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v38);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4_77();
  OUTLINED_FUNCTION_111_7(v44);
  OUTLINED_FUNCTION_139_3();

  OUTLINED_FUNCTION_70();
  sub_18F116908(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_106(v48, v49, v40);
  if (v50)
  {
    OUTLINED_FUNCTION_61_15();
    v51 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_106(v51, v52, v40);
    if (!v50)
    {
      sub_18F0EF148(v25, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v42 + 32))(v73, v25, v40);
  }

  v53 = OUTLINED_FUNCTION_129_1();
  v54(v53, v74, v36);
  OUTLINED_FUNCTION_22_0(&a12);
  v70();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_97_8();
  v56 = *(v55 + 8);
  v57 = OUTLINED_FUNCTION_35_25();
  sub_18F120FCC(v57, v58, v59, v56);
  v60 = OUTLINED_FUNCTION_43_1();
  sub_18F116908(v60, v61, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_93();
  sub_18F116908(v62, v63, v64);
  sub_18F12310C(v56, v75);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_144_3();

  sub_18F0EF148(v71, &qword_1EACCF7A0);
  sub_18F0EF148(v72, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_23_1();
  v65(v74, v36);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v66, v67);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v68, v69);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  v85 = v26;
  OUTLINED_FUNCTION_36_29(v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_72_12(a24);
  OUTLINED_FUNCTION_31_4(a23);
  OUTLINED_FUNCTION_49_13();
  OUTLINED_FUNCTION_54_17(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v36 = MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_11_14(v36, v37, v38, v39, v40, v41, v42, v43, v80);
  v45 = *(v24 + 80);
  v44 = *(v24 + 88);
  OUTLINED_FUNCTION_126_5();
  swift_getAssociatedTypeWitness();
  v46 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_28_0();
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v52);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_26_10();
  v54 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v56 = v55;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_4_77();
  OUTLINED_FUNCTION_111_7(v58);
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_143_0();
  sub_18F116908(v59, v60, v61);
  OUTLINED_FUNCTION_106(v25, 1, v54);
  if (v62)
  {
    OUTLINED_FUNCTION_61_15();
    OUTLINED_FUNCTION_106(v25, 1, v54);
    if (!v62)
    {
      sub_18F0EF148(v25, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v56 + 32))(v86, v25, v54);
  }

  OUTLINED_FUNCTION_45_0();
  v63(v51, v87, v46);
  OUTLINED_FUNCTION_11_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_41();
  sub_18F12A88C(v45, v81, v64, v45, v84, v65, v44);
  OUTLINED_FUNCTION_132_6();
  OUTLINED_FUNCTION_70();
  sub_18F116908(v66, v67, v68);
  sub_18F116908(v85, v83, &qword_1EACCF7A0);
  v88[3] = v84;
  v88[4] = v82;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  (*(*(v84 - 8) + 16))(boxed_opaque_existential_1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_136_2();
  v70 = OUTLINED_FUNCTION_115();
  v71(v70);
  OUTLINED_FUNCTION_143_0();
  sub_18F0EF148(v72, v73);
  v74 = OUTLINED_FUNCTION_82_6();
  sub_18F0EF148(v74, v75);
  (*(v48 + 8))(v87, v46);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v76, v77);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v78, v79);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:capabilities:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_18();
  a19 = v29;
  a20 = v30;
  v81 = v31;
  OUTLINED_FUNCTION_73_8(v32, v33, &v85);
  OUTLINED_FUNCTION_110_5(a28);
  OUTLINED_FUNCTION_72_12(a27);
  OUTLINED_FUNCTION_40(a25);
  OUTLINED_FUNCTION_61_0(a22);
  v79 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v38);
  v39 = *(v28 + 80);
  v75 = *(v28 + 88);
  swift_getAssociatedTypeWitness();
  v40 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_28_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v44);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v46 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4_77();
  v82 = v50;

  OUTLINED_FUNCTION_26_1();
  sub_18F116908(v51, v52, v53);
  v54 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_106(v54, v55, v46);
  if (v56)
  {
    OUTLINED_FUNCTION_25_0();
    v57 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_106(v57, v58, v46);
    if (!v56)
    {
      sub_18F0EF148(v28, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v48 + 32))(v82, v28, v46);
  }

  v59 = OUTLINED_FUNCTION_56_14();
  v60(v59, v83, v40);
  OUTLINED_FUNCTION_22_0(&a9);
  v76();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_41();
  sub_18F12A88C(v39, v79, v61, v39, v80, v62, v75);
  OUTLINED_FUNCTION_128();
  sub_18F116908(v63, v64, v65);
  v66 = OUTLINED_FUNCTION_118_6(&a18);
  sub_18F116908(v66, v78, &qword_1EACCF7A0);
  v84[3] = v80;
  v84[4] = v77;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
  v68 = *(v80 - 8);
  (*(v68 + 16))(boxed_opaque_existential_1, v79);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  (*(v68 + 8))(v79);
  v69 = OUTLINED_FUNCTION_93_0();
  sub_18F0EF148(v69, v70);
  sub_18F0EF148(v81, &qword_1EACCF7A0);
  (*(v42 + 8))(v83, v40);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v71, v72);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v73, v74);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v75 = v26;
  v76 = v25;
  OUTLINED_FUNCTION_100_10(v27, v28, v29, v30, &a9);
  v73 = a21;
  v71 = a22;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_87_10();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_77();
  OUTLINED_FUNCTION_68(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v36);
  v37 = *(v22 + 80);
  OUTLINED_FUNCTION_126_5();
  swift_getAssociatedTypeWitness();
  v38 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v40 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_28_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4_77();
  v77 = v48;
  OUTLINED_FUNCTION_139_3();

  OUTLINED_FUNCTION_123_6();
  sub_18F116908(v79, v22, &qword_1EACCF7A8);
  v49 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_106(v49, v50, v44);
  if (v51)
  {
    OUTLINED_FUNCTION_25_0();
    v52 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_106(v52, v53, v44);
    if (!v51)
    {
      sub_18F0EF148(v22, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v46 + 32))(v77, v22, v44);
  }

  v54 = OUTLINED_FUNCTION_129_1();
  v55(v54, v78, v38);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_79_7();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_18F122E1C();
  sub_18F120FCC(v37, AssociatedTypeWitness, v37, AssociatedConformanceWitness);
  sub_18F116908(v76, v72, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_132_6();
  sub_18F116908(v58, AssociatedTypeWitness, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_45_0();
  v59(v74, v73, v71);
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider();
  v61 = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  v62 = OUTLINED_FUNCTION_96_9(v61);
  sub_18F123278(v74, v71, v62);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_144_3();
  v63 = OUTLINED_FUNCTION_82_6();
  v64(v63);
  sub_18F0EF148(v75, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v65, v66);
  (*(v40 + 8))(v78, v38);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v67, v68);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v69, v70);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:supportedContentTypes:size:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v20;
  a20 = v21;
  v47 = v22;
  OUTLINED_FUNCTION_41_11(v23, v24, v25, &a17);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v27 = OUTLINED_FUNCTION_10(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_58_13();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v29, &a16);
  v31 = v30;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_115_7();
  v34 = OUTLINED_FUNCTION_2_2(v33, &a18);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();

  v35 = OUTLINED_FUNCTION_119_5();
  v36(v35);
  v37 = OUTLINED_FUNCTION_107_6();
  v38(v37);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_48_20();
  swift_getAssociatedTypeWitness();
  v39 = *(v47 + 8);
  v40 = OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_147_3(v40, v41, v42, v39);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_14_46();
  v43 = OUTLINED_FUNCTION_131_3();
  OUTLINED_FUNCTION_5_74(v43);
  OUTLINED_FUNCTION_93_0();
  sub_18F12310C(v39, v44);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_95_9();
  sub_18F116B3C();
  (*(v31 + 8))();
  sub_18F0EF148(v48, &qword_1EACCF7A8);
  v45 = OUTLINED_FUNCTION_127_4();
  v46(v45);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v20;
  a20 = v21;
  v47 = v22;
  OUTLINED_FUNCTION_41_11(v23, v24, v25, &a17);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v27 = OUTLINED_FUNCTION_10(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_58_13();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v29, &a15);
  v31 = v30;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_115_7();
  v34 = OUTLINED_FUNCTION_2_2(v33, &a18);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();

  v35 = OUTLINED_FUNCTION_119_5();
  v36(v35);
  v37 = OUTLINED_FUNCTION_107_6();
  v38(v37);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_48_20();
  swift_getAssociatedTypeWitness();
  v39 = *(v47 + 8);
  v40 = OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_147_3(v40, v41, v42, v39);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_14_46();
  v43 = OUTLINED_FUNCTION_131_3();
  OUTLINED_FUNCTION_5_74(v43);
  OUTLINED_FUNCTION_93_0();
  sub_18F12310C(v39, v44);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_95_9();
  sub_18F116B3C();
  (*(v31 + 8))();
  sub_18F0EF148(v48, &qword_1EACCF7A8);
  v45 = OUTLINED_FUNCTION_127_4();
  v46(v45);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(description:default:supportedContentTypes:size:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v18 = v2;
  v19 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_86_9();
  OUTLINED_FUNCTION_145_2();
  v8 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_11();
  v12 = sub_18F520B3C();
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_25_0();
  v14 = OUTLINED_FUNCTION_45_18();
  v15(v14);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_71_11();
  v16 = OUTLINED_FUNCTION_145_2();
  OUTLINED_FUNCTION_62_12(v16);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v1);
  OUTLINED_FUNCTION_5_74(v0);
  OUTLINED_FUNCTION_115();
  sub_18F12310C(v3, v17);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_93_9();
  sub_18F116B3C();
  (*(v10 + 8))(v18, v8);
  sub_18F0EF148(v19, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v18 = v2;
  v3 = v2;
  v19 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_86_9();
  OUTLINED_FUNCTION_145_2();
  v8 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_11();
  v12 = sub_18F520B3C();
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_25_0();
  v14 = OUTLINED_FUNCTION_45_18();
  v15(v14);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_71_11();
  v16 = OUTLINED_FUNCTION_145_2();
  OUTLINED_FUNCTION_62_12(v16);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v1);
  OUTLINED_FUNCTION_5_74(v0);
  OUTLINED_FUNCTION_115();
  sub_18F12310C(v3, v17);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_93_9();
  sub_18F116B3C();
  (*(v10 + 8))(v18, v8);
  sub_18F0EF148(v19, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:supportedContentTypes:size:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v54 = v26;
  v53 = v27;
  v57 = v28;
  OUTLINED_FUNCTION_46_0(v29);
  v55 = a24;
  OUTLINED_FUNCTION_49_13();
  OUTLINED_FUNCTION_31_4(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v56 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v35);
  OUTLINED_FUNCTION_111();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v36, &a11);
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_11();
  v40 = OUTLINED_FUNCTION_125_6(&a10);
  v41 = OUTLINED_FUNCTION_2_2(v40, &a15);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();

  OUTLINED_FUNCTION_19_21();
  v42 = OUTLINED_FUNCTION_43_1();
  v43(v42);
  OUTLINED_FUNCTION_56_14();
  OUTLINED_FUNCTION_67_12();
  v44();
  OUTLINED_FUNCTION_22_0(&a17);
  v54();
  OUTLINED_FUNCTION_111();
  swift_getAssociatedTypeWitness();
  v45 = *(v55 + 8);
  v46 = OUTLINED_FUNCTION_34_29();
  OUTLINED_FUNCTION_124_7(v46, v47, v48);
  type metadata accessor for IntentDialog(0);
  v49 = OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_6_0(v49);
  OUTLINED_FUNCTION_5_74(v56);
  OUTLINED_FUNCTION_80_0();
  sub_18F12310C(v45, v50);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  (*(v38 + 8))(v53);
  sub_18F0EF148(v57, &qword_1EACCF7A8);
  v51 = OUTLINED_FUNCTION_138_2();
  v52(v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v55 = v26;
  v53 = v27;
  v58 = v28;
  v54 = v29;
  v56 = a24;
  OUTLINED_FUNCTION_49_13();
  OUTLINED_FUNCTION_40(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v57 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v35);
  OUTLINED_FUNCTION_111();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v36, &a10);
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_11();
  v40 = OUTLINED_FUNCTION_125_6(&a9);
  v41 = OUTLINED_FUNCTION_2_2(v40, &a14);
  v43 = v42;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_146_3();

  OUTLINED_FUNCTION_19_21();
  v44 = OUTLINED_FUNCTION_43_1();
  v45(v44);
  OUTLINED_FUNCTION_56_14();
  OUTLINED_FUNCTION_67_12();
  v46();
  OUTLINED_FUNCTION_22_0(&a17);
  v55();
  OUTLINED_FUNCTION_111();
  swift_getAssociatedTypeWitness();
  v47 = *(v56 + 8);
  v48 = OUTLINED_FUNCTION_34_29();
  OUTLINED_FUNCTION_124_7(v48, v49, v50);
  type metadata accessor for IntentDialog(0);
  v51 = OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_6_0(v51);
  OUTLINED_FUNCTION_5_74(v57);
  OUTLINED_FUNCTION_80_0();
  sub_18F12310C(v47, v52);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  (*(v38 + 8))(v53);
  sub_18F0EF148(v58, &qword_1EACCF7A8);
  (*(v43 + 8))(v54);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:supportedContentTypes:size:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v49 = v27;
  v29 = v28;
  OUTLINED_FUNCTION_59_12(v30, v28, &a17);
  v31 = a23;
  OUTLINED_FUNCTION_29_5(a21);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  v50 = v34;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_58_13();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v36, &a16);
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_17_14();
  v40 = sub_18F520B3C();
  v41 = OUTLINED_FUNCTION_10(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_25_0();
  v42 = OUTLINED_FUNCTION_83_9();
  v43(v42, v29, v23);
  OUTLINED_FUNCTION_22_0(&a18);
  v49();
  OUTLINED_FUNCTION_48_20();
  swift_getAssociatedTypeWitness();
  v44 = *(v31 + 8);
  v45 = OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_147_3(v45, v46, v47, v44);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v24);
  OUTLINED_FUNCTION_5_74(v50);
  OUTLINED_FUNCTION_93_0();
  sub_18F12310C(v44, v48);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  (*(v38 + 8))();
  sub_18F0EF148(v51, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v50 = v28;
  v30 = v29;
  OUTLINED_FUNCTION_59_12(v31, v29, &a16);
  v32 = a23;
  OUTLINED_FUNCTION_29_5(a21);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  v51 = v35;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_58_13();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v37, &a15);
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  v41 = OUTLINED_FUNCTION_18_12();
  v42 = OUTLINED_FUNCTION_10(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_25_0();
  (*(v39 + 16))(v23, v30, v24);
  OUTLINED_FUNCTION_22_0(&a18);
  v50();
  OUTLINED_FUNCTION_48_20();
  swift_getAssociatedTypeWitness();
  v43 = *(v32 + 8);
  v44 = OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_147_3(v44, v45, v46, v43);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v25);
  OUTLINED_FUNCTION_5_74(v51);
  OUTLINED_FUNCTION_93_0();
  sub_18F12310C(v43, v47);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_95_9();
  sub_18F116B3C();

  v48 = OUTLINED_FUNCTION_138_2();
  v49(v48);
  sub_18F0EF148(v52, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:supportedContentTypes:size:inputConnectionBehavior:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_41_11(v23, v24, v25, &a10);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_87_10();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_77();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v28 = OUTLINED_FUNCTION_10(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v30 = MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_11_14(v30, v31, v32, v33, v34, v35, v36, v37, v58);
  OUTLINED_FUNCTION_47_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_2_2(v38, &a12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_17_14();
  v40 = sub_18F520B3C();
  v41 = OUTLINED_FUNCTION_2_2(v40, &a17);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_123_6();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_85_10();
  v42();
  v43 = OUTLINED_FUNCTION_83_9();
  v44(v43, v61, v20);
  OUTLINED_FUNCTION_47_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_142();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_46_22();
  OUTLINED_FUNCTION_34_12();
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v59);
  v45 = OUTLINED_FUNCTION_89_8(&a16);
  OUTLINED_FUNCTION_6_0(v45);
  v46 = OUTLINED_FUNCTION_81_7();
  v47(v46);
  OUTLINED_FUNCTION_29_21();
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider();
  v49 = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  OUTLINED_FUNCTION_96_9(v49);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_86();
  sub_18F123278(v50, v51, v52);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  v53 = OUTLINED_FUNCTION_117_6();
  v54(v53);
  OUTLINED_FUNCTION_23_1();
  v55();
  sub_18F0EF148(v60, &qword_1EACCF7A8);
  v56 = OUTLINED_FUNCTION_22_4();
  v57(v56);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_41_11(v23, v24, v25, &a11);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_87_10();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_77();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v28 = OUTLINED_FUNCTION_10(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v30 = MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_11_14(v30, v31, v32, v33, v34, v35, v36, v37, v60);
  OUTLINED_FUNCTION_47_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_2_2(v38, &a12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_17_14();
  v40 = sub_18F520B3C();
  v41 = OUTLINED_FUNCTION_2_2(v40, &a17);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_123_6();
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_85_10();
  v44(v42, v43);
  v45 = OUTLINED_FUNCTION_83_9();
  v46(v45, v63, v20);
  OUTLINED_FUNCTION_47_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_101_11();
  OUTLINED_FUNCTION_142();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_46_22();
  OUTLINED_FUNCTION_34_12();
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v61);
  v47 = OUTLINED_FUNCTION_89_8(&a16);
  OUTLINED_FUNCTION_6_0(v47);
  v48 = OUTLINED_FUNCTION_81_7();
  v49(v48);
  OUTLINED_FUNCTION_29_21();
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider();
  v51 = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  OUTLINED_FUNCTION_96_9(v51);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_86();
  sub_18F123278(v52, v53, v54);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  v55 = OUTLINED_FUNCTION_117_6();
  v56(v55);
  OUTLINED_FUNCTION_23_1();
  v57();
  sub_18F0EF148(v62, &qword_1EACCF7A8);
  v58 = OUTLINED_FUNCTION_22_4();
  v59(v58);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}