char *sub_1920C39E4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1920C3AF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1920C3BA0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1920C3C14(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1920C4474(v8);
      v8 = result;
    }

    v88 = v8 + 16;
    v89 = *(v8 + 2);
    if (v89 >= 2)
    {
      while (1)
      {
        v90 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v91 = &v8[16 * v89];
        v5 = *v91;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1920C4214((v90 + 24 * *v91), (v90 + 24 * *v92), v90 + 24 * v93, v97);
        if (v4)
        {
        }

        if (v93 < v5)
        {
          goto LABEL_129;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_130;
        }

        *v91 = v5;
        *(v91 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_131;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        v5 = a3;
        if (v89 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 24 * v7;
      result = *(v11 + 8);
      v12 = *(v11 + 16);
      v13 = *v5 + 24 * v9;
      if (result == *(v13 + 8) && v12 == *(v13 + 16))
      {
        v15 = 0;
      }

      else
      {
        result = sub_1922289A0();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 64);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 4) && *v16 == *(v16 - 3))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1922289A0();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 3;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 0;
          v19 = 24 * v7;
          v20 = 24 * v9;
          v21 = v9;
          do
          {
            if (v21 != v7 + v18 - 1)
            {
              v27 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v27 + v20);
              v23 = v27 + v19;
              v24 = *v22;
              v25 = *(v22 + 2);
              v26 = *(v23 - 8);
              *v22 = *(v23 - 24);
              *(v22 + 2) = v26;
              *(v23 - 24) = v24;
              *(v23 - 8) = v25;
            }

            ++v21;
            --v18;
            v19 -= 24;
            v20 += 24;
          }

          while (v21 < v7 + v18);
        }
      }
    }

    v28 = v5[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v28)
        {
          v29 = v5[1];
        }

        else
        {
          v29 = v9 + a4;
        }

        if (v29 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v29)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1920C2D78(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1920C2D78((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v7;
    v45 = *v97;
    if (!*v97)
    {
      goto LABEL_142;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_74:
          if (v50)
          {
            goto LABEL_120;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_123;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_127;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_88:
        if (v68)
        {
          goto LABEL_122;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_95:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
          __break(1u);
LABEL_129:
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_1920C4214((*v5 + 24 * v85), (*v5 + 24 * *&v8[16 * v46 + 32]), *v5 + 24 * v86, v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1920C4474(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_19202F018(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_118;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_119;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_121;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_124;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v30 = *v5;
  v31 = *v5 + 24 * v7;
  v95 = v9;
  v32 = v9 - v7;
LABEL_43:
  v33 = v30 + 24 * v7;
  v34 = *(v33 + 8);
  v35 = *(v33 + 16);
  v36 = v32;
  v37 = v31;
  while (1)
  {
    v38 = v34 == *(v37 - 2) && v35 == *(v37 - 1);
    if (v38 || (result = sub_1922289A0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v29)
      {
        goto LABEL_43;
      }

      v7 = v29;
      v5 = a3;
      v9 = v95;
      goto LABEL_54;
    }

    if (!v30)
    {
      break;
    }

    v39 = *v37;
    v34 = v37[1];
    v35 = v37[2];
    *v37 = *(v37 - 3);
    v37[2] = *(v37 - 1);
    *(v37 - 2) = v34;
    *(v37 - 1) = v35;
    *(v37 - 3) = v39;
    v37 -= 3;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1920C4214(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v15 && (sub_1922289A0() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v5 -= 24;
    do
    {
      v16 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v16 && (sub_1922289A0() & 1) != 0)
      {
        v19 = v6 - 24;
        if ((v5 + 24) != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v17 = v12 - 24;
      if ((v5 + 24) != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

void sub_1920C4488(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v21 = a4;

  v10 = a4;
  v11 = sub_192056340(&v21, a5);
  v13 = v12;
  v15 = v14;

  v21 = v11;
  v22 = v13;
  v23 = v15;
  if (!a2 || !a3)
  {
LABEL_17:
    *a1 = v11;
    a1[1] = v13;
    a1[2] = v15;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = v22;
      if (v22 >> 62)
      {
        v20 = sub_192228340();
        v19 = v20 - 1;
        if (v20 < 1)
        {
LABEL_14:
          v11 = v21;
          v15 = v23;
          goto LABEL_17;
        }
      }

      else
      {
        v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 - 1;
        if (v18 < 1)
        {
          goto LABEL_14;
        }
      }

      if ((sub_19205F34C(v19) & 1) == 0)
      {

        v21 = v17;

        v22 = v17;

        v23 = v17;
      }

      *(a2 + 8 * v16) = v13;
      if (a3 - 1 == v16)
      {
        break;
      }

      if (__OFADD__(++v16, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v11 = v21;
    v13 = v22;
    v15 = v23;
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1920C4600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a1;
  v7 = sub_1922261D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v57 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v52 - v15;
  v16 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *v3;
  v22 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0) + 20);
  v60 = *(v17 + 28);
  v61 = v8;
  v23 = *(v8 + 16);
  v62 = v7;
  v58 = v23;
  v59 = v8 + 16;
  v23(v20 + v60, (v4 + v22), v7);
  v24 = v21;
  v25 = sub_192056208(MEMORY[0x1E69E7CC0]);
  v63 = v24;

  v26 = v24;
  v27 = sub_192056340(&v63, v25);
  v29 = v28;
  v31 = v30;

  *v20 = v27;
  v20[1] = v29;
  v20[2] = v31;
  result = sub_19205BD2C(v4, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  if (!a2)
  {
    v33 = 0;
    goto LABEL_29;
  }

  if (!a3)
  {
LABEL_27:
    v33 = a3;
LABEL_29:
    sub_1920C55EC(v20, v53, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
    return v33;
  }

  if (a3 < 0)
  {
    goto LABEL_31;
  }

  v33 = 0;
  v54 = (v61 + 32);
  v55 = a3;
  v34 = 1;
  do
  {
    v35 = v20[1];
    if (v35 >> 62)
    {
      if (v35 < 0)
      {
        v50 = v20[1];
      }

      v51 = sub_192228340();
      v37 = v51 - 1;
      if (v51 < 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v36 - 1;
      if (v36 < 1)
      {
        goto LABEL_29;
      }
    }

    if ((sub_19205F34C(v37) & 1) == 0)
    {
      v38 = *v20;

      v39 = MEMORY[0x1E69E7CC0];
      *v20 = MEMORY[0x1E69E7CC0];
      v40 = v20[1];

      v20[1] = v39;
      v41 = v20[2];

      v20[2] = v39;
    }

    result = v58(v12, v20 + v60, v62);
    if (v35 >> 62)
    {
      result = sub_192228340();
      v42 = result;
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v42 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
        goto LABEL_19;
      }
    }

    if (v42 < 1)
    {
      goto LABEL_30;
    }

    for (i = 0; i != v42; ++i)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x193B0B410](i, v35);
      }

      else
      {
        v44 = *(v35 + 8 * i + 32);
      }

      (*(**(v44 + 16) + 112))(v12);
    }

LABEL_19:

    v45 = *v54;
    v46 = v57;
    v47 = v62;
    (*v54)(v57, v12, v62);
    v48 = v56;
    v45(v56, v46, v47);
    result = (v45)(a2, v48, v47);
    a3 = v55;
    if (v34 == v55)
    {
      goto LABEL_27;
    }

    a2 += *(v61 + 72);
    v33 = v34;
  }

  while (!__OFADD__(v34++, 1));
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_1920C4A2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1920C4BAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4F0, &qword_19222D8C8);
    v2 = sub_1922286B0();
    v20 = v2;
    sub_1922285E0();
    v3 = sub_192228610();
    if (v3)
    {
      v4 = v3;
      sub_1922282D0();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for WidgetEnvironment.AnyKey();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_19204F2A8(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_192227880();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_192228610();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t (*sub_1920C4DE4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x193B0B410](a2, a3);
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
    *v3 = v5;
    return sub_1920C4E64;
  }

  __break(1u);
  return result;
}

void (*sub_1920C4E6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193B0B410](a2, a3);
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
    return sub_1920C4EEC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1920C4EF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_192228340();
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
      result = sub_192228340();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_192031E74(&qword_1EADEF468, &qword_1EADEF460, &qword_19222D858);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF460, &qword_19222D858);
            v9 = sub_1920C4E6C(v13, i, a3);
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
        sub_19202A7A8(0, &qword_1EADECA48, 0x1E6966CE0);
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

uint64_t sub_1920C50BC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1922289A0() & 1;
  }
}

uint64_t sub_1920C5114(uint64_t a1, uint64_t a2)
{
  sub_1922282D0();
  v4 = (*(**(a1 + 16) + 104))();
  v5 = (*(**(a2 + 16) + 104))();
  v6 = MEMORY[0x193B0B270](v4, v5);

  if (v6)
  {
    return (*(**(*(a1 + 24) + 16) + 96))(*(*(a2 + 24) + 16)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920C5214(unint64_t a1, id a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    if (!a1)
    {
      v20 = 0;
LABEL_23:
      sub_192047008(v20, v9, v10, v11);
    }

    v23 = v8;
    v24 = v7;
    v25 = v6;
    v29 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      v12 = sub_192228340();
      if (!v12)
      {
LABEL_21:
        v26 = MEMORY[0x1E69E7CC0];
LABEL_22:

        v9 = v25;
        v11 = v23;
        v10 = v24;
        v20 = v26;
        goto LABEL_23;
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v22 = a2;
    v13 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193B0B410](v13, a1);
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      a2 = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v27 = v13 + 1;
      v28[3] = sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
      v28[0] = a2;
      v15 = *(**(v4 + 16) + 128);
      a2 = a2;
      v16 = v15(v28);
      __swift_destroy_boxed_opaque_existential_1(v28);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v17 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF610, &unk_19222DA18);
      v18 = swift_allocObject();
      v18[2] = v22;
      v18[3] = a2;
      v18[4] = v4;
      *(v17 + 16) = v18;
      *(v17 + 24) = v16;

      MEMORY[0x193B0AB00](v19);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v26 = v29;
      v13 = v27;
      if (v27 == v12)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEECB8, &qword_19222DA10);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C55EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920C5654(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v44);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v13 = sub_192046E20(a2, off_1ED74BF08);
    v14 = swift_endAccess();
    if (!v13)
    {
      break;
    }

    v15 = (*(**(v13 + 16) + 80))(v14);
    v18 = v15;
    v19 = v16;
    v20 = v17;
    if (!a1)
    {
      v31 = 0;
LABEL_14:
      sub_192047008(v31, v18, v19, v20);
    }

    v38 = v17;
    v39 = v16;
    v40 = v15;
    v41 = v3;
    v46 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    if (!v21)
    {
      v42 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v18 = v40;
      v20 = v38;
      v19 = v39;
      v31 = v42;
      goto LABEL_14;
    }

    v36 = v10;
    v37 = a2;
    v22 = 0;
    v3 = 0;
    v43 = v21;
    v35 = (v21 - 1);
    v42 = MEMORY[0x1E69E7CC0];
    a2 = &qword_1922363D0;
    while (1)
    {
      v10 = v22;
      if (v22 >= *(a1 + 16))
      {
        break;
      }

      sub_19202CFFC(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22++, v12, &qword_1EADEECD0, &qword_1922363D0);
      v45[3] = v44;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
      sub_19202CFFC(v12, boxed_opaque_existential_1, &qword_1EADEECD0, &qword_1922363D0);
      v34 = (*(**(v13 + 16) + 128))(v45);
      __swift_destroy_boxed_opaque_existential_1(v45);
      sub_19202CFFC(v12, v36, &qword_1EADEECD0, &qword_1922363D0);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v42 = swift_allocObject();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF590, &qword_19222D998);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      v27 = swift_allocObject();
      v27[2] = v37;
      sub_19204E300(v36, v27 + *(*v27 + 160), &qword_1EADEECD0, &qword_1922363D0);
      *(v27 + *(*v27 + 168)) = v13;
      v28 = v42;
      v29 = v34;
      *(v42 + 16) = v27;
      *(v28 + 24) = v29;

      v30 = sub_192033970(v12, &qword_1EADEECD0, &qword_1922363D0);
      MEMORY[0x193B0AB00](v30);
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v42 = v46;
      if (v35 == v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD8, &qword_19222B0C0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C5B1C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    if (!a1)
    {
      v18 = 0;
LABEL_14:
      sub_192047008(v18, v9, v10, v11);
    }

    v22 = v8;
    v23 = v7;
    v24 = v6;
    v27 = MEMORY[0x1E69E7CC0];
    v12 = *(a1 + 16);
    if (!v12)
    {
      v25 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v9 = v24;
      v11 = v22;
      v10 = v23;
      v18 = v25;
      goto LABEL_14;
    }

    v13 = 0;
    v21 = a2;
    while (1)
    {
      a2 = v13;
      if (v13 >= *(a1 + 16))
      {
        break;
      }

      v14 = *(a1 + 32 + v13++);
      v26[3] = &type metadata for WidgetBackgroundStyle;
      LOBYTE(v26[0]) = v14;
      v20 = (*(**(v4 + 16) + 128))(v26);
      __swift_destroy_boxed_opaque_existential_1(v26);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v15 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5E0, &qword_19222D9E8);
      v16 = swift_allocObject();
      *(v16 + 16) = v21;
      *(v16 + 24) = v14;
      *(v16 + 32) = v4;
      *(v15 + 16) = v16;
      *(v15 + 24) = v20;

      MEMORY[0x193B0AB00](v17);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v25 = v27;
      if (v12 - 1 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC18, &qword_19222D9E0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C5E74(uint64_t a1, uint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    if (!a1)
    {
      v18 = 0;
LABEL_14:
      sub_192047008(v18, v9, v10, v11);
    }

    v22 = v8;
    v23 = v7;
    v24 = v6;
    v27 = MEMORY[0x1E69E7CC0];
    v12 = *(a1 + 16);
    if (!v12)
    {
      v25 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v9 = v24;
      v11 = v22;
      v10 = v23;
      v18 = v25;
      goto LABEL_14;
    }

    v13 = 0;
    v21 = a2;
    while (1)
    {
      a2 = v13;
      if (v13 >= *(a1 + 16))
      {
        break;
      }

      v14 = *(a1 + 32 + v13++);
      v26[3] = &type metadata for InternalWidgetFamily;
      LOBYTE(v26[0]) = v14;
      v20 = (*(**(v4 + 16) + 128))(v26);
      __swift_destroy_boxed_opaque_existential_1(v26);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v15 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5D0, &qword_19222D9D8);
      v16 = swift_allocObject();
      *(v16 + 16) = v21;
      *(v16 + 24) = v14;
      *(v16 + 32) = v4;
      *(v15 + 16) = v16;
      *(v15 + 24) = v20;

      MEMORY[0x193B0AB00](v17);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v25 = v27;
      if (v12 - 1 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC30, &unk_19222B020);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C61CC(unint64_t a1, id a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    if (!a1)
    {
      v20 = 0;
LABEL_23:
      sub_192047008(v20, v9, v10, v11);
    }

    v23 = v8;
    v24 = v7;
    v25 = v6;
    v29 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      v12 = sub_192228340();
      if (!v12)
      {
LABEL_21:
        v26 = MEMORY[0x1E69E7CC0];
LABEL_22:

        v9 = v25;
        v11 = v23;
        v10 = v24;
        v20 = v26;
        goto LABEL_23;
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v22 = a2;
    v13 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193B0B410](v13, a1);
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      a2 = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v27 = v13 + 1;
      v28[3] = sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
      v28[0] = a2;
      v15 = *(**(v4 + 16) + 128);
      a2 = a2;
      v16 = v15(v28);
      __swift_destroy_boxed_opaque_existential_1(v28);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v17 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5C0, &unk_19222D9C8);
      v18 = swift_allocObject();
      v18[2] = v22;
      v18[3] = a2;
      v18[4] = v4;
      *(v17 + 16) = v18;
      *(v17 + 24) = v16;

      MEMORY[0x193B0AB00](v19);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v26 = v29;
      v13 = v27;
      if (v27 == v12)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEED00, &qword_19222D9C0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C65A4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    if (!a1)
    {
      v18 = 0;
LABEL_14:
      sub_192047008(v18, v9, v10, v11);
    }

    v22 = v8;
    v23 = v7;
    v24 = v6;
    v27 = MEMORY[0x1E69E7CC0];
    v12 = *(a1 + 16);
    if (!v12)
    {
      v25 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v9 = v24;
      v11 = v22;
      v10 = v23;
      v18 = v25;
      goto LABEL_14;
    }

    v13 = 0;
    v21 = a2;
    while (1)
    {
      a2 = v13;
      if (v13 >= *(a1 + 16))
      {
        break;
      }

      ++v13;
      v14 = *(a1 + 32 + a2);
      v26[3] = &type metadata for LevelOfDetail;
      LOBYTE(v26[0]) = v14;
      v20 = (*(**(v4 + 16) + 128))(v26);
      __swift_destroy_boxed_opaque_existential_1(v26);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v15 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5A0, &unk_19222D9A8);
      v16 = swift_allocObject();
      *(v16 + 16) = v21;
      *(v16 + 24) = v14;
      *(v16 + 32) = v4;
      *(v15 + 16) = v16;
      *(v15 + 24) = v20;

      MEMORY[0x193B0AB00](v17);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v25 = v27;
      if (v12 - 1 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC08, &qword_19222D9A0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C68FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_192226580();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v14 = sub_192046E20(a2, off_1ED74BF08);
    v15 = swift_endAccess();
    if (!v14)
    {
      break;
    }

    v16 = (*(**(v14 + 16) + 80))(v15);
    v19 = v16;
    v20 = v17;
    v21 = v18;
    if (!a1)
    {
      v37 = 0;
LABEL_14:
      sub_192047008(v37, v19, v20, v21);
    }

    v44 = v18;
    v45 = v17;
    v46 = v16;
    v47 = v3;
    v51 = v14;
    v53 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    if (!v22)
    {
      v48 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v19 = v46;
      v21 = v44;
      v20 = v45;
      v37 = v48;
      goto LABEL_14;
    }

    v42 = v11;
    v43 = a2;
    v23 = 0;
    v3 = 0;
    a2 = v7 + 16;
    v49 = v22;
    v50 = (v7 + 8);
    v40 = (v22 - 1);
    v41 = (v7 + 32);
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v23;
      if (v23 >= *(a1 + 16))
      {
        break;
      }

      v24 = a1;
      v25 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
      v26 = *(v7 + 16);
      v26(v13, v25, v6, v19, v20, v21);
      ++v23;
      v52[3] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      (v26)(boxed_opaque_existential_1, v13, v6);
      v39 = (*(**(v51 + 16) + 128))(v52);
      __swift_destroy_boxed_opaque_existential_1(v52);
      (v26)(v42, v13, v6);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v48 = swift_allocObject();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF578, &unk_19222D970);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v31 = swift_allocObject();
      v32 = v42;
      *(v31 + 2) = v43;
      (*v41)(&v31[*(*v31 + 160)], v32, v6);
      *&v31[*(*v31 + 168)] = v51;
      v33 = v48;
      v34 = v39;
      *(v48 + 16) = v31;
      *(v33 + 24) = v34;
      v39 = *v50;

      v35 = v39(v13, v6);
      MEMORY[0x193B0AB00](v35);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v48 = v53;
      a1 = v24;
      if (v40 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF570, &qword_19222B088);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C6DFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1922259F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v14 = sub_192046E20(a2, off_1ED74BF08);
    v15 = swift_endAccess();
    if (!v14)
    {
      break;
    }

    v16 = (*(**(v14 + 16) + 80))(v15);
    v19 = v16;
    v20 = v17;
    v21 = v18;
    if (!a1)
    {
      v37 = 0;
LABEL_14:
      sub_192047008(v37, v19, v20, v21);
    }

    v44 = v18;
    v45 = v17;
    v46 = v16;
    v47 = v3;
    v51 = v14;
    v53 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    if (!v22)
    {
      v48 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v19 = v46;
      v21 = v44;
      v20 = v45;
      v37 = v48;
      goto LABEL_14;
    }

    v42 = v11;
    v43 = a2;
    v23 = 0;
    v3 = 0;
    a2 = v7 + 16;
    v49 = v22;
    v50 = (v7 + 8);
    v40 = (v22 - 1);
    v41 = (v7 + 32);
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v23;
      if (v23 >= *(a1 + 16))
      {
        break;
      }

      v24 = a1;
      v25 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
      v26 = *(v7 + 16);
      v26(v13, v25, v6, v19, v20, v21);
      ++v23;
      v52[3] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      (v26)(boxed_opaque_existential_1, v13, v6);
      v39 = (*(**(v51 + 16) + 128))(v52);
      __swift_destroy_boxed_opaque_existential_1(v52);
      (v26)(v42, v13, v6);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v48 = swift_allocObject();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF568, &unk_19222D960);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v31 = swift_allocObject();
      v32 = v42;
      *(v31 + 2) = v43;
      (*v41)(&v31[*(*v31 + 160)], v32, v6);
      *&v31[*(*v31 + 168)] = v51;
      v33 = v48;
      v34 = v39;
      *(v48 + 16) = v31;
      *(v33 + 24) = v34;
      v39 = *v50;

      v35 = v39(v13, v6);
      MEMORY[0x193B0AB00](v35);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v48 = v53;
      a1 = v24;
      if (v40 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF560, &qword_19222B098);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C72FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1922265A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v14 = sub_192046E20(a2, off_1ED74BF08);
    v15 = swift_endAccess();
    if (!v14)
    {
      break;
    }

    v16 = (*(**(v14 + 16) + 80))(v15);
    v19 = v16;
    v20 = v17;
    v21 = v18;
    if (!a1)
    {
      v37 = 0;
LABEL_14:
      sub_192047008(v37, v19, v20, v21);
    }

    v44 = v18;
    v45 = v17;
    v46 = v16;
    v47 = v3;
    v51 = v14;
    v53 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    if (!v22)
    {
      v48 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v19 = v46;
      v21 = v44;
      v20 = v45;
      v37 = v48;
      goto LABEL_14;
    }

    v42 = v11;
    v43 = a2;
    v23 = 0;
    v3 = 0;
    a2 = v7 + 16;
    v49 = v22;
    v50 = (v7 + 8);
    v40 = (v22 - 1);
    v41 = (v7 + 32);
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v23;
      if (v23 >= *(a1 + 16))
      {
        break;
      }

      v24 = a1;
      v25 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
      v26 = *(v7 + 16);
      v26(v13, v25, v6, v19, v20, v21);
      ++v23;
      v52[3] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      (v26)(boxed_opaque_existential_1, v13, v6);
      v39 = (*(**(v51 + 16) + 128))(v52);
      __swift_destroy_boxed_opaque_existential_1(v52);
      (v26)(v42, v13, v6);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v48 = swift_allocObject();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF548, &unk_19222D940);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v31 = swift_allocObject();
      v32 = v42;
      *(v31 + 2) = v43;
      (*v41)(&v31[*(*v31 + 160)], v32, v6);
      *&v31[*(*v31 + 168)] = v51;
      v33 = v48;
      v34 = v39;
      *(v48 + 16) = v31;
      *(v33 + 24) = v34;
      v39 = *v50;

      v35 = v39(v13, v6);
      MEMORY[0x193B0AB00](v35);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v48 = v53;
      a1 = v24;
      if (v40 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF540, &qword_19222B048);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C77FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_192225D50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v14 = sub_192046E20(a2, off_1ED74BF08);
    v15 = swift_endAccess();
    if (!v14)
    {
      break;
    }

    v16 = (*(**(v14 + 16) + 80))(v15);
    v19 = v16;
    v20 = v17;
    v21 = v18;
    if (!a1)
    {
      v37 = 0;
LABEL_14:
      sub_192047008(v37, v19, v20, v21);
    }

    v44 = v18;
    v45 = v17;
    v46 = v16;
    v47 = v3;
    v51 = v14;
    v53 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    if (!v22)
    {
      v48 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v19 = v46;
      v21 = v44;
      v20 = v45;
      v37 = v48;
      goto LABEL_14;
    }

    v42 = v11;
    v43 = a2;
    v23 = 0;
    v3 = 0;
    a2 = v7 + 16;
    v49 = v22;
    v50 = (v7 + 8);
    v40 = (v22 - 1);
    v41 = (v7 + 32);
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v23;
      if (v23 >= *(a1 + 16))
      {
        break;
      }

      v24 = a1;
      v25 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
      v26 = *(v7 + 16);
      v26(v13, v25, v6, v19, v20, v21);
      ++v23;
      v52[3] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      (v26)(boxed_opaque_existential_1, v13, v6);
      v39 = (*(**(v51 + 16) + 128))(v52);
      __swift_destroy_boxed_opaque_existential_1(v52);
      (v26)(v42, v13, v6);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v48 = swift_allocObject();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF538, &unk_19222D930);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v31 = swift_allocObject();
      v32 = v42;
      *(v31 + 2) = v43;
      (*v41)(&v31[*(*v31 + 160)], v32, v6);
      *&v31[*(*v31 + 168)] = v51;
      v33 = v48;
      v34 = v39;
      *(v48 + 16) = v31;
      *(v33 + 24) = v34;
      v39 = *v50;

      v35 = v39(v13, v6);
      MEMORY[0x193B0AB00](v35);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v48 = v53;
      a1 = v24;
      if (v40 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF530, &qword_19222B038);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C7CFC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    if (!a1)
    {
      v18 = 0;
LABEL_14:
      sub_192047008(v18, v9, v10, v11);
    }

    v22 = v8;
    v23 = v7;
    v24 = v6;
    v27 = MEMORY[0x1E69E7CC0];
    v12 = *(a1 + 16);
    if (!v12)
    {
      v25 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v9 = v24;
      v11 = v22;
      v10 = v23;
      v18 = v25;
      goto LABEL_14;
    }

    v13 = 0;
    v21 = a2;
    while (1)
    {
      a2 = v13;
      if (v13 >= *(a1 + 16))
      {
        break;
      }

      ++v13;
      v14 = *(a1 + 32 + a2);
      v26[3] = &type metadata for ActivityUpdateAvailability;
      LOBYTE(v26[0]) = v14;
      v20 = (*(**(v4 + 16) + 128))(v26);
      __swift_destroy_boxed_opaque_existential_1(v26);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v15 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF508, &unk_19222D900);
      v16 = swift_allocObject();
      *(v16 + 16) = v21;
      *(v16 + 24) = v14;
      *(v16 + 32) = v4;
      *(v15 + 16) = v16;
      *(v15 + 24) = v20;

      MEMORY[0x193B0AB00](v17);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v25 = v27;
      if (v12 - 1 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC10, &unk_19222B000);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

unint64_t sub_1920C8054()
{
  result = qword_1EADEE0B8;
  if (!qword_1EADEE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE0B8);
  }

  return result;
}

uint64_t sub_1920C80A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1920C80F4()
{
  result = qword_1EADEF340;
  if (!qword_1EADEF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF340);
  }

  return result;
}

uint64_t sub_1920C8234(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1920C827C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1922261D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1920C8410(uint64_t *a1, int a2)
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

uint64_t sub_1920C8458(uint64_t result, int a2, int a3)
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

unint64_t sub_1920C84C8()
{
  result = qword_1EADEF3C0;
  if (!qword_1EADEF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF3C0);
  }

  return result;
}

uint64_t sub_1920C85B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x193B0AD20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_192082B80(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1920C8648()
{
  result = qword_1EADEF410;
  if (!qword_1EADEF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF410);
  }

  return result;
}

unint64_t sub_1920C869C()
{
  result = qword_1ED74A1D0;
  if (!qword_1ED74A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1D0);
  }

  return result;
}

unint64_t sub_1920C86F0()
{
  result = qword_1ED74A1E0;
  if (!qword_1ED74A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1E0);
  }

  return result;
}

unint64_t sub_1920C8774()
{
  result = qword_1EADEF640;
  if (!qword_1EADEF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF640);
  }

  return result;
}

unint64_t sub_1920C87CC()
{
  result = qword_1EADEF648;
  if (!qword_1EADEF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF648);
  }

  return result;
}

uint64_t sub_1920C8850(void *a1, void *a2, unsigned __int8 a3, double a4)
{
  v8 = sub_192225460();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29[-1] - v15;
  if (!a3)
  {
    return a3;
  }

  if (a3 == 1)
  {
    v17 = v14;
    sub_192225560();
    sub_192225550();
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_192225540();
    (*(v9 + 104))(v13, *MEMORY[0x1E6993F58], v17);
    v18 = sub_192225450();
    v19 = *(v9 + 8);
    v19(v13, v17);
    v19(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = fmax(a4 * 1290.0, 80.0);
    v21 = fmax(a4 * 2048.0, 80.0);
    if (v18)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }
  }

  else
  {
    [a1 size];
    v25 = v24;
    [a2 scale];
    v27 = v25 * v26;
    [a2 scale];
    v22 = fmax(v27 * a4, 80.0);
  }

  return *&v22;
}

uint64_t sub_1920C8ADC()
{
  if (qword_1ED749D58 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    sub_192140738(MEMORY[0x1E69E7CC0]);
    return 2;
  }

  else
  {
    if (qword_1ED74A638 != -1)
    {
      swift_once();
    }

    v1 = dyld_program_sdk_at_least();
    sub_192140738(MEMORY[0x1E69E7CC0]);
    if (v1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_19213DF60(2, 12, isUniquelyReferenced_nonNull_native, 1.2, 2.0);
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1920C8C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1920C8C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s21ImageAttachmentPolicyV5EntryVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s21ImageAttachmentPolicyV5EntryVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1920C8D64()
{
  result = qword_1EADEF6C0;
  if (!qword_1EADEF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF6C0);
  }

  return result;
}

double sub_1920C8DB8()
{
  qword_1EAE00848 = 0;
  result = 0.0;
  xmmword_1EAE00828 = 0u;
  unk_1EAE00838 = 0u;
  return result;
}

uint64_t sub_1920C8DD0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EADEE8E0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1920C9380(&xmmword_1EAE00828, v2);
}

double sub_1920C8E40(__int128 *a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 3))
  {
    v3 = a1[1];
    v6 = *a1;
    v7 = v3;
    v8 = *(a1 + 4);
  }

  else
  {
    a2(&v6);
  }

  result = *&v6;
  v5 = v7;
  *a1 = v6;
  a1[1] = v5;
  *(a1 + 4) = v8;
  return result;
}

uint64_t sub_1920C8EA4(uint64_t a1)
{
  v2 = sub_1920C932C();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t sub_1920C8EE0@<X0>(uint64_t a1@<X8>)
{
  v1 = qword_1EAE00868;
  *a1 = qword_1EAE00850;
  *(a1 + 8) = unk_1EAE00858;
  *(a1 + 24) = v1;
}

uint64_t sub_1920C8F3C(uint64_t a1)
{
  v2 = sub_1920C9518();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t sub_1920C8F78()
{
  v0 = sub_1922267B0();
  v1 = swift_conformsToProtocol2();
  if (v1 && v0)
  {
    return (*(v1 + 8))(v0, v1);
  }

  sub_192228400();

  sub_1922267B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6D0, &qword_19222DD58);
  v3 = sub_192227990();
  MEMORY[0x193B0A990](v3);

  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C90E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(a1 + 32);
  sub_1920C90B0();
  return 2;
}

uint64_t sub_1920C9144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(a1 + 32);
  sub_1920C910C();
  return 1;
}

uint64_t sub_1920C917C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1920C91C4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1920C9224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1920C926C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1920C92D8()
{
  result = qword_1EADEE650;
  if (!qword_1EADEE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE650);
  }

  return result;
}

unint64_t sub_1920C932C()
{
  result = qword_1EADED6D0;
  if (!qword_1EADED6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED6D0);
  }

  return result;
}

uint64_t sub_1920C9380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6C8, &qword_19222DD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920C93F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1920C944C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1920C94C4()
{
  result = qword_1EADED8D0;
  if (!qword_1EADED8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED8D0);
  }

  return result;
}

unint64_t sub_1920C9518()
{
  result = qword_1EADED8C8;
  if (!qword_1EADED8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED8C8);
  }

  return result;
}

uint64_t sub_1920C956C(void *a1, void (*a2)(void *__return_ptr))
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = v2;
  v5 = a1[4];
  v6 = a1[5];
  if (v3 == 1)
  {
    a2(v16);
    v4 = v16[0];
    v8 = v16[1];
    v9 = v16[2];
    v10 = v16[3];
    swift_beginAccess();
    v11 = a1[2];
    v14 = a1[4];
    v15 = a1[3];
    v13 = a1[5];
    a1[2] = v4;
    a1[3] = v8;
    a1[4] = v9;
    a1[5] = v10;

    sub_1920C9744(v11, v15);
  }

  sub_1920C978C(v2, v3);
  return v4;
}

uint64_t sub_1920C9660(uint64_t *a1, void (*a2)(void *__return_ptr))
{
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19222DBC0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v5 = a1[1];
  if (!v5)
  {
    v10 = v4;
    v6 = sub_1920C956C(v4, a2);
    v5 = v11;

    v4 = v10;
    v7 = a1[3];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1920C956C(v4, a2);
    v8 = v12;
    v7 = v13;

    goto LABEL_6;
  }

  v6 = *a1;
  v7 = a1[3];
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = a1[2];

LABEL_6:
  *a1 = v6;
  a1[1] = v5;
  a1[2] = v8;
  a1[3] = v7;
  return result;
}

uint64_t sub_1920C9744(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1920C978C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1920C9800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1920C9848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1920C98A4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1922289A0(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1922289A0() & 1) != 0)
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

  return result;
}

unint64_t sub_1920C9944(uint64_t a1)
{
  result = sub_1920C996C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1920C996C()
{
  result = qword_1EADEF6D8;
  if (!qword_1EADEF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF6D8);
  }

  return result;
}

unint64_t sub_1920C99C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_192228400();

  v5 = sub_1920FDB30(v1, v2, v3, v4);
  MEMORY[0x193B0A990](v5);

  MEMORY[0x193B0A990](10506, 0xE200000000000000);
  return 0xD000000000000028;
}

uint64_t sub_1920C9A70(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return v9(a1, a2);
}

WidgetKit::TimelineEntryRelevance __swiftcall TimelineEntryRelevance.init(score:duration:)(Swift::Float score, Swift::Double duration)
{
  *v2 = score;
  *(v2 + 8) = duration;
  result.duration = duration;
  result.score = score;
  return result;
}

uint64_t sub_1920C9C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1920C9CE4(uint64_t a1)
{
  v2 = sub_19205BB8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920C9D20(uint64_t a1)
{
  v2 = sub_19205BB8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimelineEntryRelevance.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6E0, &qword_19222DF30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19205BB8C();
  sub_192228B90();
  v13[15] = 0;
  sub_192228890();
  if (!v2)
  {
    v13[14] = 1;
    sub_192228880();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t TimelineEntryRelevance.hash(into:)()
{
  v1 = *(v0 + 8);
  *v0;
  sub_192228B00();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193B0BAC0](*&v2);
}

uint64_t TimelineEntryRelevance.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_192228AD0();
  sub_192228B00();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193B0BAC0](*&v3);
  return sub_192228B30();
}

uint64_t sub_1920C9FDC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_192228AD0();
  sub_192228B00();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193B0BAC0](*&v3);
  return sub_192228B30();
}

void TimelineEntry.relevance.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

unint64_t sub_1920CA0A8()
{
  result = qword_1EADEF6F0;
  if (!qword_1EADEF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF6F0);
  }

  return result;
}

unint64_t sub_1920CA100()
{
  result = qword_1EADEF6F8;
  if (!qword_1EADEF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF6F8);
  }

  return result;
}

uint64_t WidgetRelevance.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a1;
  KeyPath = swift_getKeyPath();
  type metadata accessor for WidgetRelevanceAttribute();
  v4 = sub_192227C40();
  v5 = type metadata accessor for WidgetRelevanceEntry();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_19204301C(sub_1920CA26C, KeyPath, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  result = WidgetRelevances.init(_:)(v8, &v10);
  *a2 = v10;
  return result;
}

uint64_t sub_1920CA298()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1920CA2D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1920CA330(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t (*EnvironmentValues._preferredSystemWidgetBackgroundStyle.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_1920405C0();
  sub_1922261E0();
  return sub_1920CA430;
}

uint64_t sub_1920CA430(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t sub_1920CA478(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for ControlTemplatePicker.Option(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_19209ACE8(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_19209ACE8(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1920CF508(v10, v12 + v19 + v16 * v14);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1920CA60C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v20 - v2;
  v21 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for ControlTemplatePicker(0);
  __swift_allocate_value_buffer(v8, qword_1EADEF708);
  v9 = __swift_project_value_buffer(v8, qword_1EADEF708);
  v10 = sub_192226B70();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  v12 = sub_192225020();
  v13 = *(*(v12 - 8) + 56);
  v13(v3, 1, 1, v12);
  v14 = v8[6];
  v11(&v9[v14], 1, 1, v10);
  v15 = v8[8];
  v16 = &v9[v8[7]];
  v13(&v9[v15], 1, 1, v12);
  v17 = &v9[v8[12]];
  v18 = MEMORY[0x1E69E7CC0];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = v18;
  sub_19204193C(v7, &v9[v14], &qword_1EADEF720, &unk_19222E2F0);
  *v16 = 0;
  *(v16 + 1) = 0;
  v9[v8[9]] = 0;
  result = sub_19204193C(v21, &v9[v15], &qword_1EADEEE10, &unk_19222B630);
  v9[v8[10]] = 0;
  v9[v8[11]] = 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  v9[v8[13]] = 0;
  return result;
}

uint64_t ControlTemplatePicker.init(options:title:titleIcon:subtitle:renderAsSlider:associatedURL:privacySensitive:disabled:accessibilityIdentifier:rasterizedImagesAllowed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  v19 = type metadata accessor for ControlTemplatePicker(0);
  v20 = v19[6];
  v21 = sub_192226B70();
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = v19[8];
  v23 = &a9[v19[7]];
  v24 = sub_192225020();
  (*(*(v24 - 8) + 56))(&a9[v22], 1, 1, v24);
  v25 = &a9[v19[12]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  sub_19204193C(a4, &a9[v20], &qword_1EADEF720, &unk_19222E2F0);
  *v23 = a5;
  *(v23 + 1) = a6;
  a9[v19[9]] = a7;
  result = sub_19204193C(a8, &a9[v22], &qword_1EADEEE10, &unk_19222B630);
  a9[v19[10]] = a10;
  a9[v19[11]] = a11;
  *v25 = a12;
  *(v25 + 1) = a13;
  a9[v19[13]] = a14;
  return result;
}

uint64_t static ControlTemplatePicker.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplatePicker(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEF708);
  swift_beginAccess();
  return sub_1920CF4A0(v3, a1, type metadata accessor for ControlTemplatePicker);
}

uint64_t static ControlTemplatePicker.empty.setter(uint64_t a1)
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplatePicker(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEF708);
  swift_beginAccess();
  sub_1920CAB78(a1, v3);
  swift_endAccess();
  return sub_1920CF3A4(a1, type metadata accessor for ControlTemplatePicker);
}

uint64_t sub_1920CAB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplatePicker(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static ControlTemplatePicker.empty.modify())()
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ControlTemplatePicker(0);
  __swift_project_value_buffer(v0, qword_1EADEF708);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1920CAC70@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplatePicker(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEF708);
  swift_beginAccess();
  return sub_1920CF4A0(v3, a1, type metadata accessor for ControlTemplatePicker);
}

uint64_t sub_1920CAD10(uint64_t a1)
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplatePicker(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEF708);
  swift_beginAccess();
  sub_1920CAB78(a1, v3);
  return swift_endAccess();
}

uint64_t ControlTemplatePicker.Option.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ControlTemplatePicker.Option.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlTemplatePicker.Option.tint.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplatePicker.Option(0) + 24));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t ControlTemplatePicker.Option.tint.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ControlTemplatePicker.Option(0);
  v8 = v3 + *(result + 24);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t ControlTemplatePicker.Option.actionHint.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplatePicker.Option(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlTemplatePicker.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplatePicker.Option(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplatePicker.Option.init(value:icon:tint:status:actionHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for ControlTemplatePicker.Option(0);
  v17 = v16[5];
  v18 = sub_192226B70();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = &a9[v16[6]];
  v20 = &a9[v16[7]];
  v21 = &a9[v16[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_19204193C(a3, &a9[v17], &qword_1EADEF720, &unk_19222E2F0);
  *v19 = a4;
  *(v19 + 1) = a5;
  v19[16] = a6 & 1;
  *v20 = a7;
  *(v20 + 1) = a8;
  *v21 = a10;
  *(v21 + 1) = a11;
  return result;
}

uint64_t sub_1920CB248()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 1953393012;
  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x69486E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852793705;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1920CB2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1920CFF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1920CB304(uint64_t a1)
{
  v2 = sub_1920CF2FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920CB340(uint64_t a1)
{
  v2 = sub_1920CF2FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplatePicker.Option.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF728, &qword_19222E300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920CF2FC();
  sub_192228B90();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  sub_192228830();
  if (!v2)
  {
    v13 = type metadata accessor for ControlTemplatePicker.Option(0);
    v14 = v13[5];
    LOBYTE(v25) = 1;
    sub_192226B70();
    sub_1920CF404(&qword_1EADEE4B0, MEMORY[0x1E697CB10]);
    sub_192228850();
    v15 = v3 + v13[6];
    v16 = v15[16];
    v25 = *v15;
    v26 = v16;
    v24[15] = 2;
    sub_1920CF350();
    sub_192228850();
    v17 = (v3 + v13[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v25) = 3;
    sub_192228830();
    v20 = (v3 + v13[8]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v25) = 4;
    sub_192228830();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ControlTemplatePicker.Option.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v39 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF738, &qword_19222E308);
  v42 = *(v44 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v39 - v7;
  v9 = type metadata accessor for ControlTemplatePicker.Option(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0;
  v13[1] = 0;
  v14 = v10[7];
  v15 = sub_192226B70();
  v16 = *(*(v15 - 8) + 56);
  v41 = v14;
  v16(v13 + v14, 1, 1, v15);
  v17 = v13 + v10[8];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = (v13 + v10[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = v10[10];
  v46 = v13;
  v20 = (v13 + v19);
  *v20 = 0;
  v20[1] = 0;
  v21 = a1[3];
  v22 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1920CF2FC();
  v45 = v8;
  v23 = v47;
  sub_192228B70();
  if (v23)
  {
    v24 = v46;
  }

  else
  {
    v39 = v18;
    v47 = v17;
    v25 = v43;
    v26 = v41;
    v27 = v42;
    LOBYTE(v49) = 0;
    v28 = sub_192228730();
    v24 = v46;
    *v46 = v28;
    *(v24 + 8) = v29;
    LOBYTE(v49) = 1;
    sub_1920CF404(&qword_1EADEDCE8, MEMORY[0x1E697CB10]);
    sub_192228750();
    sub_19204193C(v25, v24 + v26, &qword_1EADEF720, &unk_19222E2F0);
    v51 = 2;
    sub_1920CF44C();
    sub_192228750();
    v30 = v50;
    v31 = v47;
    *v47 = v49;
    *(v31 + 16) = v30;
    LOBYTE(v49) = 3;
    v32 = sub_192228730();
    v34 = v39;
    *v39 = v32;
    v34[1] = v35;
    LOBYTE(v49) = 4;
    v36 = sub_192228730();
    v38 = v37;
    (*(v27 + 8))(v45, v44);
    *v20 = v36;
    v20[1] = v38;
    sub_1920CF4A0(v24, v40, type metadata accessor for ControlTemplatePicker.Option);
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_1920CF3A4(v24, type metadata accessor for ControlTemplatePicker.Option);
}

uint64_t ControlTemplatePicker.options.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ControlTemplatePicker.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ControlTemplatePicker.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1920CBC34(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1920CBC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ControlTemplatePicker.renderAsSlider.setter(char a1)
{
  result = type metadata accessor for ControlTemplatePicker(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ControlTemplatePicker.privacySensitive.setter(char a1)
{
  result = type metadata accessor for ControlTemplatePicker(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ControlTemplatePicker.disabled.setter(char a1)
{
  result = type metadata accessor for ControlTemplatePicker(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ControlTemplatePicker.accessibilityIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplatePicker(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlTemplatePicker.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplatePicker(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplatePicker.rasterizedImagesAllowed.setter(char a1)
{
  result = type metadata accessor for ControlTemplatePicker(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ControlTemplatePicker.asPlaceholder()@<X0>(char *a1@<X8>)
{
  v58 = a1;
  v62 = type metadata accessor for ControlTemplatePicker.Option(0);
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v54 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v54 - v14;
  v16 = *v1;
  v17 = *(*v1 + 16);
  if (v17)
  {
    v56 = v1;
    v67 = MEMORY[0x1E69E7CC0];
    sub_19209ACE8(0, v17, 0);
    v66 = v67;
    v60 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v61 = v5;
    v18 = v16 + v60;
    v59 = *(v2 + 72);
    do
    {
      sub_1920CF4A0(v18, v5, type metadata accessor for ControlTemplatePicker.Option);
      if (qword_1EADEE988 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v19 = *algn_1EADF1AC8;
      v65 = qword_1EADF1AC0;
      v20 = v62;
      sub_19202CFFC(&v5[*(v62 + 20)], v15, &qword_1EADEF720, &unk_19222E2F0);
      v21 = &v5[v20[6]];
      v22 = *(v21 + 1);
      v64 = *v21;
      LODWORD(v63) = v21[16];

      sub_1920CF3A4(v5, type metadata accessor for ControlTemplatePicker.Option);
      v23 = v15;
      v24 = v20[5];
      v25 = sub_192226B70();
      (*(*(v25 - 8) + 56))(v8 + v24, 1, 1, v25);
      v26 = v8 + v20[6];
      v27 = (v8 + v20[7]);
      v28 = (v8 + v20[8]);
      *v8 = v65;
      v8[1] = v19;
      v29 = v8 + v24;
      v15 = v23;
      sub_19204193C(v23, v29, &qword_1EADEF720, &unk_19222E2F0);
      *v26 = v64;
      *(v26 + 1) = v22;
      v26[16] = v63;
      *v27 = 0;
      v27[1] = 0;
      *v28 = 0;
      v28[1] = 0;
      v30 = v66;
      v67 = v66;
      v32 = *(v66 + 16);
      v31 = *(v66 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_19209ACE8(v31 > 1, v32 + 1, 1);
        v30 = v67;
      }

      *(v30 + 16) = v32 + 1;
      v66 = v30;
      v33 = v59;
      sub_1920CF508(v8, v30 + v60 + v32 * v59);
      v18 += v33;
      --v17;
      v5 = v61;
    }

    while (v17);
    v1 = v56;
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EADECB28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v34 = *algn_1EADECB38;
  v64 = qword_1EADECB30;
  v35 = sub_192226B70();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v61 = (v36 + 56);
  v62 = v37;
  v37(v15, 1, 1, v35);
  v38 = qword_1EADECB10;
  v65 = v34;

  v63 = v15;
  if (v38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v39 = qword_1EADECB20;
  v60 = qword_1EADECB18;
  v40 = type metadata accessor for ControlTemplatePicker(0);
  LODWORD(v59) = *(v1 + v40[9]);
  v41 = sub_192225020();
  v42 = *(*(v41 - 8) + 56);
  v43 = v57;
  v42(v57, 1, 1, v41);
  v44 = *(v1 + v40[11]);
  v54 = *(v1 + v40[10]);
  v55 = v44;
  LODWORD(v56) = *(v1 + v40[13]);
  v45 = v40[6];
  v46 = v58;
  (v62)(&v58[v45], 1, 1, v35);
  v47 = v40[8];
  v48 = &v46[v40[7]];
  v42(&v46[v47], 1, 1, v41);
  v49 = &v46[v40[12]];
  v51 = v64;
  v50 = v65;
  *v46 = v66;
  *(v46 + 1) = v51;
  *(v46 + 2) = v50;

  sub_19204193C(v63, &v46[v45], &qword_1EADEF720, &unk_19222E2F0);
  *v48 = v60;
  v48[1] = v39;
  v46[v40[9]] = v59;
  result = sub_19204193C(v43, &v46[v47], &qword_1EADEEE10, &unk_19222B630);
  v53 = v55;
  v46[v40[10]] = v54;
  v46[v40[11]] = v53;
  *v49 = 0;
  *(v49 + 1) = 0;
  v46[v40[13]] = v56;
  return result;
}

uint64_t ControlTemplatePicker.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v33[-v13];
  v15 = *v3;
  v42 = v3;
  v43 = a1;
  v44 = a2;
  v16 = sub_1920CA478(sub_1920CF56C, v41, v15);
  v17 = v3[2];
  v39 = v3[1];
  v40 = v16;
  v18 = sub_192226B70();
  v19 = *(*(v18 - 8) + 56);
  v19(v14, 1, 1, v18);
  v20 = type metadata accessor for ControlTemplatePicker(0);
  v21 = v20[8];
  v22 = (v3 + v20[7]);
  v23 = v22[1];
  v37 = *v22;
  v36 = *(v3 + v20[9]);
  sub_19202CFFC(v3 + v21, v10, &qword_1EADEEE10, &unk_19222B630);
  v24 = *(v3 + v20[11]);
  v34 = *(v3 + v20[10]);
  v35 = v24;
  v38 = *(v3 + v20[13]);
  v25 = v20[6];
  v19(&a3[v25], 1, 1, v18);
  v26 = v20[8];
  v27 = &a3[v20[7]];
  v28 = sub_192225020();
  (*(*(v28 - 8) + 56))(&a3[v26], 1, 1, v28);
  v29 = &a3[v20[12]];
  v30 = v39;
  *a3 = v40;
  *(a3 + 1) = v30;
  *(a3 + 2) = v17;

  sub_19204193C(v14, &a3[v25], &qword_1EADEF720, &unk_19222E2F0);
  *v27 = v37;
  *(v27 + 1) = v23;
  a3[v20[9]] = v36;
  result = sub_19204193C(v10, &a3[v26], &qword_1EADEEE10, &unk_19222B630);
  v32 = v35;
  a3[v20[10]] = v34;
  a3[v20[11]] = v32;
  *v29 = 0;
  *(v29 + 1) = 0;
  a3[v20[13]] = v38;
  return result;
}

uint64_t sub_1920CCA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v63 = a3;
  v65 = a2;
  v71 = a4;
  v69 = sub_192226B50();
  v66 = *(v69 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v64 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = v59 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v59 - v13;
  v15 = sub_192226B70();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = v59 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v59 - v23;
  v25 = type metadata accessor for ControlTemplatePicker.Option(0);
  sub_19202CFFC(a1 + v25[5], v14, &qword_1EADEF720, &unk_19222E2F0);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    sub_192033970(v14, &qword_1EADEF720, &unk_19222E2F0);
    v27 = a1;
    return sub_1920CF4A0(v27, v71, type metadata accessor for ControlTemplatePicker.Option);
  }

  v61 = v26;
  v62 = a1;
  v60 = *(v16 + 32);
  v60(v24, v14, v15);
  (*(v16 + 16))(v20, v24, v15);
  if ((*(v16 + 88))(v20, v15) == *MEMORY[0x1E697CB08])
  {
    v59[1] = v16 + 32;
    (*(v16 + 96))(v20, v15);
    v28 = v66;
    v29 = v64;
    (*(v66 + 32))(v64, v20, v69);
    v30 = sub_192226AF0();
    v32 = sub_1921B01A8(v30, v31, v65);

    if (v32)
    {
      v33 = v70;
      sub_192226AA0();
      (*(v28 + 8))(v29, v69);
      (*(v16 + 8))(v24, v15);
    }

    else
    {
      (*(v28 + 8))(v29, v69);
      (*(v16 + 8))(v24, v15);
      v33 = v70;
      (*(v16 + 56))(v70, 1, 1, v15);
    }
  }

  else
  {
    v34 = *(v16 + 8);
    v34(v24, v15);
    v35 = v70;
    (*(v16 + 56))(v70, 1, 1, v15);
    v34(v20, v15);
    v33 = v35;
  }

  v36 = v61(v33, 1, v15);
  v37 = v62;
  if (v36 == 1)
  {
    sub_192033970(v33, &qword_1EADEF720, &unk_19222E2F0);
    v27 = v37;
    return sub_1920CF4A0(v27, v71, type metadata accessor for ControlTemplatePicker.Option);
  }

  v39 = v67;
  v40 = v60;
  v60(v67, v33, v15);
  v41 = *v37;
  v69 = v37[1];
  v70 = v41;
  v42 = v68;
  v40(v68, v39, v15);
  v43 = *(v16 + 56);
  v43(v42, 0, 1, v15);
  v44 = v25[5];
  v45 = v37 + v25[6];
  v46 = *v45;
  v66 = *(v45 + 1);
  v67 = v46;
  LODWORD(v65) = v45[16];
  v47 = (v37 + v25[7]);
  v48 = *v47;
  v49 = v47[1];
  v50 = (v37 + v25[8]);
  v51 = v50[1];
  v63 = *v50;
  v64 = v48;
  v52 = v71;
  v43(v71 + v44, 1, 1, v15);
  v53 = v52 + v25[6];
  v54 = (v52 + v25[7]);
  v55 = (v52 + v25[8]);
  v56 = v69;
  *v52 = v70;
  v52[1] = v56;

  result = sub_19204193C(v42, v52 + v44, &qword_1EADEF720, &unk_19222E2F0);
  v57 = v66;
  *v53 = v67;
  *(v53 + 1) = v57;
  v53[16] = v65;
  v58 = v63;
  *v54 = v64;
  v54[1] = v49;
  *v55 = v58;
  v55[1] = v51;
  return result;
}

unint64_t sub_1920CD034(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x64656C6261736964;
    if (a1 != 7)
    {
      v5 = 0xD000000000000017;
    }

    v6 = 0x73417265646E6572;
    if (a1 != 5)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736E6F6974706FLL;
    v2 = 0x6F6349656C746974;
    v3 = 0x656C746974627573;
    if (a1 != 3)
    {
      v3 = 0x746169636F737361;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1920CD198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1920D0108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1920CD1CC(uint64_t a1)
{
  v2 = sub_1920CF590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920CD208(uint64_t a1)
{
  v2 = sub_1920CF590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplatePicker.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF740, &qword_19222E310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920CF590();
  sub_192228B90();
  v28 = *v3;
  v27[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF750, &qword_19222E318);
  sub_1920CF5E4(&qword_1EADEF758, &qword_1EADEF760);
  sub_1922288C0();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v28) = 1;
    sub_192228830();
    v14 = type metadata accessor for ControlTemplatePicker(0);
    v15 = v14[6];
    LOBYTE(v28) = 2;
    sub_192226B70();
    sub_1920CF404(&qword_1EADEE4B0, MEMORY[0x1E697CB10]);
    sub_192228850();
    v16 = (v3 + v14[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v28) = 3;
    sub_192228830();
    v19 = v14[8];
    LOBYTE(v28) = 4;
    sub_192225020();
    sub_1920CF404(&qword_1ED74BB38, MEMORY[0x1E6968FB0]);
    sub_192228850();
    v20 = *(v3 + v14[9]);
    LOBYTE(v28) = 5;
    sub_192228870();
    v21 = *(v3 + v14[10]);
    LOBYTE(v28) = 6;
    sub_192228870();
    v22 = *(v3 + v14[11]);
    LOBYTE(v28) = 7;
    sub_192228870();
    v23 = (v3 + v14[12]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v28) = 8;
    sub_192228830();
    v26 = *(v3 + v14[13]);
    LOBYTE(v28) = 9;
    sub_192228870();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ControlTemplatePicker.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF768, &qword_19222E320);
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v49 - v14;
  v16 = type metadata accessor for ControlTemplatePicker(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 24);
  v22 = sub_192226B70();
  v23 = *(*(v22 - 8) + 56);
  v57 = v21;
  v23(&v20[v21], 1, 1, v22);
  v24 = *(v16 + 32);
  v25 = sub_192225020();
  v26 = *(*(v25 - 8) + 56);
  v56 = v24;
  v58 = v20;
  v26(&v20[v24], 1, 1, v25);
  v27 = a1[3];
  v28 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1920CF590();
  v53 = v15;
  v29 = v55;
  sub_192228B70();
  if (v29)
  {
    v31 = v57;
    __swift_destroy_boxed_opaque_existential_1(v54);

    v32 = v56;
    v33 = v58;
    sub_192033970(v58 + v31, &qword_1EADEF720, &unk_19222E2F0);

    sub_192033970(v33 + v32, &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    v30 = v10;
    v55 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF750, &qword_19222E318);
    v59 = 0;
    sub_1920CF5E4(&qword_1EADEF770, &qword_1EADEF778);
    sub_1922287C0();
    v34 = v58;
    *v58 = v60;
    LOBYTE(v60) = 1;
    v35 = sub_192228730();
    v36 = v57;
    v34[1] = v35;
    v34[2] = v37;
    v49[1] = v37;
    LOBYTE(v60) = 2;
    sub_1920CF404(&qword_1EADEDCE8, MEMORY[0x1E697CB10]);
    sub_192228750();
    sub_19204193C(v30, v34 + v36, &qword_1EADEF720, &unk_19222E2F0);
    LOBYTE(v60) = 3;
    v38 = sub_192228730();
    v39 = (v34 + v55[7]);
    *v39 = v38;
    v39[1] = v40;
    LOBYTE(v60) = 4;
    sub_1920CF404(qword_1ED7488E8, MEMORY[0x1E6968FB0]);
    sub_192228750();
    sub_19204193C(v6, v34 + v56, &qword_1EADEEE10, &unk_19222B630);
    LOBYTE(v60) = 5;
    v41 = sub_192228770();
    v42 = v55;
    *(v34 + v55[9]) = v41 & 1;
    LOBYTE(v60) = 6;
    *(v34 + v42[10]) = sub_192228770() & 1;
    LOBYTE(v60) = 7;
    *(v58 + v42[11]) = sub_192228770() & 1;
    LOBYTE(v60) = 8;
    v43 = sub_192228730();
    v44 = (v58 + v42[12]);
    *v44 = v43;
    v44[1] = v45;
    LOBYTE(v60) = 9;
    v46 = sub_192228770();
    (*(v52 + 8))(v53, v51);
    v47 = v58;
    *(v58 + v55[13]) = v46 & 1;
    sub_1920CF4A0(v47, v50, type metadata accessor for ControlTemplatePicker);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_1920CF3A4(v47, type metadata accessor for ControlTemplatePicker);
  }
}

uint64_t ControlTemplatePicker.validateIcon(_:)(void (*a1)(char *))
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_192226B70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ControlTemplatePicker.Option(0);
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v39 = *(*v1 + 16);
  if (v39)
  {
    v38 = v6;
    v18 = 0;
    v19 = *(result + 20);
    v36 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v37 = v19;
    v20 = (v7 + 48);
    v30 = (v7 + 32);
    v31 = (v7 + 8);
    v32 = v10;
    v21 = &qword_1EADEF720;
    v22 = &unk_19222E2F0;
    v34 = v14;
    v35 = v17;
    while (v18 < *(v17 + 16))
    {
      sub_1920CF4A0(v36 + *(v14 + 72) * v18, v16, type metadata accessor for ControlTemplatePicker.Option);
      sub_19202CFFC(&v16[v37], v5, v21, v22);
      sub_1920CF3A4(v16, type metadata accessor for ControlTemplatePicker.Option);
      v23 = v21;
      v24 = v38;
      if ((*v20)(v5, 1, v38) == 1)
      {
        result = sub_192033970(v5, v23, v22);
        v21 = v23;
      }

      else
      {
        v25 = v22;
        v26 = v20;
        v27 = v23;
        v28 = v32;
        (*v30)(v32, v5, v24);
        v29 = v40;
        v33(v28);
        v40 = v29;
        if (v29)
        {
          return (*v31)(v28, v24);
        }

        result = (*v31)(v28, v24);
        v21 = v27;
        v20 = v26;
        v22 = v25;
      }

      ++v18;
      v14 = v34;
      v17 = v35;
      if (v39 == v18)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ControlTemplatePicker.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF780, &unk_19222E328);
  v6 = *(*(v46 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v46);
  v47 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - v9;
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v39 = v0;
    v51 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v11, 0);
    v44 = *(v10 + 16);
    result = type metadata accessor for ControlTemplatePicker.Option(0);
    v14 = 0;
    v41 = *(result - 8);
    v42 = result;
    v40 = v10 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v12 = v51;
    v43 = v11;
    while (v44 != v14)
    {
      if (v14 >= *(v10 + 16))
      {
        goto LABEL_20;
      }

      v16 = v45;
      v15 = v46;
      v17 = *(v46 + 48);
      sub_1920CF4A0(v40 + *(v41 + 72) * v14, &v45[v17], type metadata accessor for ControlTemplatePicker.Option);
      v18 = v47;
      *v47 = v14;
      v19 = (v18 + *(v15 + 48));
      sub_1920CF508(&v16[v17], v19);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_192228400();

      v48 = v14;
      v49 = 91;
      v50 = 0xE100000000000000;
      v20 = sub_192228910();
      MEMORY[0x193B0A990](v20);

      MEMORY[0x193B0A990](0x76202020200A3A5DLL, 0xEE00203A65756C61);
      if (v19[1])
      {
        v21 = *v19;
        v22 = v19[1];
      }

      else
      {
        v22 = 0xE300000000000000;
        v21 = 7104878;
      }

      MEMORY[0x193B0A990](v21, v22);

      MEMORY[0x193B0A990](0x6F6369202020200ALL, 0xEB00000000203A6ELL);
      sub_19202CFFC(v19 + *(v42 + 20), v5, &qword_1EADEF720, &unk_19222E2F0);
      v23 = sub_192226B70();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v5, 1, v23) == 1)
      {
        sub_192033970(v5, &qword_1EADEF720, &unk_19222E2F0);
        v25 = 0xE300000000000000;
        v26 = 7104878;
      }

      else
      {
        v26 = sub_192226AB0();
        v25 = v27;
        (*(v24 + 8))(v5, v23);
      }

      MEMORY[0x193B0A990](v26, v25);

      v28 = v49;
      v29 = v50;
      result = sub_192033970(v47, &qword_1EADEF780, &unk_19222E328);
      v51 = v12;
      v31 = *(v12 + 16);
      v30 = *(v12 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_192071C64((v30 > 1), v31 + 1, 1);
        v12 = v51;
      }

      ++v14;
      *(v12 + 16) = v31 + 1;
      v32 = v12 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
      if (v43 == v14)
      {
        v1 = v39;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_15:
    v49 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_1920CF680();
    v33 = sub_1922278A0();
    v35 = v34;

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000022, 0x8000000192249E00);
    if (v1[2])
    {
      v36 = v1[1];
      v37 = v1[2];
    }

    else
    {
      v36 = 7104878;
      v37 = 0xE300000000000000;
    }

    MEMORY[0x193B0A990](v36, v37);

    MEMORY[0x193B0A990](0xD000000000000014, 0x8000000192249E30);
    MEMORY[0x193B0A990](v33, v35);

    MEMORY[0x193B0A990](10506, 0xE200000000000000);
    return v49;
  }

  return result;
}

uint64_t _s9WidgetKit21ControlTemplatePickerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_192225020();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D0, &qword_19222E728);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v63 - v12;
  v13 = sub_192226B70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - v24;
  if ((sub_1920E0C80(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v26 = a1[2];
  v27 = a2[2];
  if (v26)
  {
    if (!v27 || (a1[1] != a2[1] || v26 != v27) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v27)
  {
    goto LABEL_16;
  }

  v63 = v4;
  v28 = type metadata accessor for ControlTemplatePicker(0);
  v66 = a2;
  v29 = *(v28 + 24);
  v30 = *(v22 + 48);
  v64 = v28;
  v65 = a1;
  sub_19202CFFC(a1 + v29, v25, &qword_1EADEF720, &unk_19222E2F0);
  v31 = v66 + v29;
  v32 = v66;
  sub_19202CFFC(v31, &v25[v30], &qword_1EADEF720, &unk_19222E2F0);
  v33 = *(v14 + 48);
  if (v33(v25, 1, v13) == 1)
  {
    if (v33(&v25[v30], 1, v13) == 1)
    {
      sub_192033970(v25, &qword_1EADEF720, &unk_19222E2F0);
      goto LABEL_19;
    }

LABEL_14:
    v34 = &qword_1EADEF7D8;
    v35 = qword_19222E730;
LABEL_15:
    sub_192033970(v25, v34, v35);
    goto LABEL_16;
  }

  sub_19202CFFC(v25, v21, &qword_1EADEF720, &unk_19222E2F0);
  if (v33(&v25[v30], 1, v13) == 1)
  {
    (*(v14 + 8))(v21, v13);
    goto LABEL_14;
  }

  (*(v14 + 32))(v17, &v25[v30], v13);
  sub_1920CF404(&qword_1EADEF7E0, MEMORY[0x1E697CB10]);
  v38 = sub_192227910();
  v39 = *(v14 + 8);
  v39(v17, v13);
  v39(v21, v13);
  sub_192033970(v25, &qword_1EADEF720, &unk_19222E2F0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v41 = v64;
  v40 = v65;
  v42 = v64[7];
  v43 = (v65 + v42);
  v44 = *(v65 + v42 + 8);
  v45 = (v32 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v46)
  {
    goto LABEL_16;
  }

  v47 = v41[8];
  v48 = *(v10 + 48);
  v25 = v69;
  sub_19202CFFC(v40 + v47, v69, &qword_1EADEEE10, &unk_19222B630);
  v49 = v66 + v47;
  v50 = v66;
  sub_19202CFFC(v49, &v25[v48], &qword_1EADEEE10, &unk_19222B630);
  v51 = v70;
  v52 = *(v70 + 48);
  v53 = v63;
  if (v52(v25, 1, v63) != 1)
  {
    v54 = v68;
    sub_19202CFFC(v25, v68, &qword_1EADEEE10, &unk_19222B630);
    if (v52(&v25[v48], 1, v53) != 1)
    {
      v55 = v67;
      (*(v51 + 32))(v67, &v25[v48], v53);
      sub_1920CF404(&qword_1EADECF08, MEMORY[0x1E6968FB0]);
      v56 = sub_192227910();
      v57 = *(v51 + 8);
      v57(v55, v53);
      v57(v54, v53);
      sub_192033970(v25, &qword_1EADEEE10, &unk_19222B630);
      if ((v56 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

    (*(v51 + 8))(v54, v53);
    goto LABEL_31;
  }

  if (v52(&v25[v48], 1, v53) != 1)
  {
LABEL_31:
    v34 = &qword_1EADEF7D0;
    v35 = &qword_19222E728;
    goto LABEL_15;
  }

  sub_192033970(v25, &qword_1EADEEE10, &unk_19222B630);
LABEL_33:
  if (*(v40 + v41[9]) == *(v50 + v41[9]) && *(v40 + v41[10]) == *(v50 + v41[10]) && *(v40 + v41[11]) == *(v50 + v41[11]))
  {
    v58 = v41[12];
    v59 = (v40 + v58);
    v60 = *(v40 + v58 + 8);
    v61 = (v50 + v58);
    v62 = v61[1];
    if (v60)
    {
      if (v62 && (*v59 == *v61 && v60 == v62 || (sub_1922289A0() & 1) != 0))
      {
        goto LABEL_43;
      }
    }

    else if (!v62)
    {
LABEL_43:
      v36 = *(v40 + v41[13]) ^ *(v50 + v41[13]) ^ 1;
      return v36 & 1;
    }
  }

LABEL_16:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s9WidgetKit21ControlTemplatePickerV6OptionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_192226B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = type metadata accessor for ControlTemplatePicker.Option(0);
  v20 = a1;
  v21 = a2;
  v51 = v19;
  v52 = v20;
  v22 = *(v19 + 20);
  v23 = *(v13 + 48);
  sub_19202CFFC(v20 + v22, v16, &qword_1EADEF720, &unk_19222E2F0);
  v24 = v21 + v22;
  v25 = v21;
  sub_19202CFFC(v24, &v16[v23], &qword_1EADEF720, &unk_19222E2F0);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) != 1)
  {
    sub_19202CFFC(v16, v12, &qword_1EADEF720, &unk_19222E2F0);
    if (v26(&v16[v23], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v23], v4);
      sub_1920CF404(&qword_1EADEF7E0, MEMORY[0x1E697CB10]);
      v28 = sub_192227910();
      v29 = *(v5 + 8);
      v29(v8, v4);
      v29(v12, v4);
      v25 = v21;
      sub_192033970(v16, &qword_1EADEF720, &unk_19222E2F0);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v12, v4);
LABEL_13:
    sub_192033970(v16, &qword_1EADEF7D8, qword_19222E730);
    return 0;
  }

  if (v26(&v16[v23], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_192033970(v16, &qword_1EADEF720, &unk_19222E2F0);
LABEL_17:
  v31 = v51;
  v30 = v52;
  v32 = *(v51 + 24);
  v33 = (v52 + v32);
  v34 = *(v52 + v32 + 16);
  v35 = (v25 + v32);
  v36 = *(v35 + 16);
  if (v34)
  {
    if ((v35[2] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v35[2])
    {
      return 0;
    }

    v38 = *v33;
    v37 = v33[1];
    v40 = *v35;
    v39 = v35[1];
    if ((sub_192227290() & 1) == 0)
    {
      return 0;
    }
  }

  v41 = *(v31 + 28);
  v42 = (v30 + v41);
  v43 = *(v30 + v41 + 8);
  v44 = (v25 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v46 = *(v31 + 32);
  v47 = (v30 + v46);
  v48 = *(v30 + v46 + 8);
  v49 = (v25 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (v50 && (*v47 == *v49 && v48 == v50 || (sub_1922289A0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v50)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1920CF2FC()
{
  result = qword_1EADEF730;
  if (!qword_1EADEF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF730);
  }

  return result;
}

unint64_t sub_1920CF350()
{
  result = qword_1EADEE898;
  if (!qword_1EADEE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE898);
  }

  return result;
}

uint64_t sub_1920CF3A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920CF404(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1920CF44C()
{
  result = qword_1EADEDF98;
  if (!qword_1EADEDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF98);
  }

  return result;
}

uint64_t sub_1920CF4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920CF508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplatePicker.Option(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920CF590()
{
  result = qword_1EADEF748;
  if (!qword_1EADEF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF748);
  }

  return result;
}

uint64_t sub_1920CF5E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEF750, &qword_19222E318);
    sub_1920CF404(a2, type metadata accessor for ControlTemplatePicker.Option);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1920CF680()
{
  result = qword_1EADECF30;
  if (!qword_1EADECF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EADEEA20, &qword_19222A7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECF30);
  }

  return result;
}

uint64_t sub_1920CF6E4(void *a1)
{
  a1[1] = sub_1920CF404(&qword_1EADEF788, type metadata accessor for ControlTemplatePicker);
  a1[2] = sub_1920CF404(&qword_1EADEF790, type metadata accessor for ControlTemplatePicker);
  result = sub_1920CF404(&qword_1EADEF798, type metadata accessor for ControlTemplatePicker);
  a1[3] = result;
  return result;
}

void sub_1920CF7B8()
{
  sub_1920CF924(319, &qword_1EADEE618, type metadata accessor for ControlTemplatePicker.Option, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_192040778(319, &qword_1ED74B590);
    if (v1 <= 0x3F)
    {
      sub_1920CF924(319, &qword_1ED74B540, MEMORY[0x1E697CB10], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1920CF924(319, &qword_1ED74C4C0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1920CF924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1920CF9B0()
{
  sub_192040778(319, &qword_1ED74B590);
  if (v0 <= 0x3F)
  {
    sub_1920CF924(319, &qword_1ED74B540, MEMORY[0x1E697CB10], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_192040778(319, &qword_1EADEE808);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ControlTemplatePicker.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlTemplatePicker.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlTemplatePicker.Option.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlTemplatePicker.Option.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1920CFD4C()
{
  result = qword_1EADEF7A0;
  if (!qword_1EADEF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7A0);
  }

  return result;
}

unint64_t sub_1920CFDA4()
{
  result = qword_1EADEF7A8;
  if (!qword_1EADEF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7A8);
  }

  return result;
}

unint64_t sub_1920CFDFC()
{
  result = qword_1EADEF7B0;
  if (!qword_1EADEF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7B0);
  }

  return result;
}

unint64_t sub_1920CFE54()
{
  result = qword_1EADEF7B8;
  if (!qword_1EADEF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7B8);
  }

  return result;
}

unint64_t sub_1920CFEAC()
{
  result = qword_1EADEF7C0;
  if (!qword_1EADEF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7C0);
  }

  return result;
}

unint64_t sub_1920CFF04()
{
  result = qword_1EADEF7C8;
  if (!qword_1EADEF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7C8);
  }

  return result;
}

uint64_t sub_1920CFF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953393012 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69486E6F69746361 && a2 == 0xEA0000000000746ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1920D0108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6349656C746974 && a2 == 0xE90000000000006ELL || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004C52556465 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73417265646E6572 && a2 == 0xEE00726564696C53 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000192249E50 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E70 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E90 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1920D0460@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a5;
  a7[1] = a6;
  a7[2] = result;
  a7[3] = a2;
  a7[4] = a3;
  a7[5] = a4;
  return result;
}

uint64_t AppIntentConfiguration.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for ViewSource(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[2];
  v21 = v2[1];
  v22 = v8;
  v20 = *v2;
  v9 = v21;
  v10 = v8;
  v11 = swift_allocObject();
  v12 = *(a1 + 32);
  v11[1] = *(a1 + 16);
  v11[2] = v12;
  v13 = v2[1];
  v11[3] = *v2;
  v11[4] = v13;
  v11[5] = v2[2];
  v14 = v20;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *v7 = v9;
  *(v7 + 1) = v10;
  *(v7 + 4) = sub_1920D0684;
  *(v7 + 5) = v11;
  *(v7 + 6) = sub_1920D0734;
  *(v7 + 7) = v15;
  swift_storeEnumTagMultiPayload();

  (*(*(a1 - 8) + 16))(v19, &v20, a1);

  return sub_19207ED1C(v7, v18);
}

uint64_t sub_1920D0604(uint64_t a1)
{
  v1 = *(a1 + 8);
  (*a1)(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1920D0684()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1920D0604((v0 + 6));
}

uint64_t sub_1920D0694@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t *a2@<X8>)
{
  a1(v8);
  v3 = v9;
  v4 = v10;
  v5 = __swift_project_boxed_opaque_existential_1(v8, v9);
  a2[3] = v3;
  a2[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t AppIntentRecommendation.init(intent:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = *(a5 - 8);
  (*(v12 + 16))(a6, a1, a5);
  v13 = sub_192079D80(0xD000000000000017, 0x800000019222E810);
  v15 = v14;
  sub_19207A338(a2, a3, a4 & 1);

  (*(v12 + 8))(a1, a5);
  result = type metadata accessor for AppIntentRecommendation();
  v17 = (a6 + *(result + 36));
  *v17 = v13;
  v17[1] = v15;
  return result;
}

uint64_t AppIntentRecommendation.init(intent:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  (*(v6 + 16))(a3, a1, a2);
  v7 = sub_192226FC0();
  v9 = v8;
  v11 = v10;
  v12 = sub_192079D80(0xD000000000000017, 0x800000019222E810);
  v14 = v13;
  sub_19207A338(v7, v9, v11 & 1);

  (*(v6 + 8))(a1, a2);
  result = type metadata accessor for AppIntentRecommendation();
  v16 = (a3 + *(result + 36));
  *v16 = v12;
  v16[1] = v14;
  return result;
}

uint64_t AppIntentRecommendation.init<A>(intent:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v30 = a5;
  v27 = a2;
  v28 = a1;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a6);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12);
  (*(v10 + 16))(v14, a2, a4);
  v17 = sub_192226FD0();
  v19 = v18;
  v21 = v20;
  v22 = sub_192079D80(0xD000000000000017, 0x800000019222E810);
  v24 = v23;
  sub_19207A338(v17, v19, v21 & 1);

  (*(v10 + 8))(v27, a4);
  (*(v16 + 8))(v28, a3);
  result = type metadata accessor for AppIntentRecommendation();
  v26 = (v29 + *(result + 36));
  *v26 = v22;
  v26[1] = v24;
  return result;
}

uint64_t AppIntentConfiguration.init<A>(kind:intent:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t (**a8)@<X0>(char **a1@<X8>)@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_1920FDC30(a6, a1, a2, a6, AssociatedConformanceWitness);
  v18 = v17;
  v28 = v19;
  v21 = v20;
  v22 = *(a9 - 8);
  v23 = (*(v22 + 80) + 88) & ~*(v22 + 80);
  v24 = (*(v22 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = a6;
  *(v25 + 3) = a7;
  *(v25 + 4) = a9;
  *(v25 + 5) = a10;
  *(v25 + 6) = a11;
  *(v25 + 7) = v16;
  *(v25 + 8) = v18;
  *(v25 + 9) = v28;
  *(v25 + 10) = v21;
  (*(v22 + 32))(&v25[v23], a3, a9);
  v26 = &v25[v24];
  *v26 = a4;
  *(v26 + 1) = a5;
  *a8 = sub_1920D0F1C;
  a8[1] = v25;
  a8[2] = v16;
  a8[3] = v18;
  a8[4] = v28;
  a8[5] = v21;
}

uint64_t sub_1920D0DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a3;
  v27 = a6;
  v16 = *(a10 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a10;
  v29 = v20;
  v30 = v22;
  v31 = v21;
  v23 = type metadata accessor for AppIntentTimelineEntryProvider();
  (*(v16 + 16))(v19, a5, a10);
  v24 = sub_192084960(a1, a2, v26, a4, v19, v27, a7);
  a8[3] = v23;
  a8[4] = swift_getWitnessTable();
  a8[5] = &off_1F06AB620;
  *a8 = v24;
}

uint64_t sub_1920D0F1C@<X0>(char **a1@<X8>)
{
  v2 = v1[2];
  v3 = (*(*(v1[4] - 8) + 80) + 88) & ~*(*(v1[4] - 8) + 80);
  v4 = (v1 + ((*(*(v1[4] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v1[5];
  v7 = v1[6];
  return sub_1920D0DAC(v1[7], v1[8], v1[9], v1[10], v1 + v3, *v4, v4[1], a1, v1[3], v1[4]);
}

uint64_t sub_1920D0FBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1920D1000()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1920D103C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1920D1084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1920D10E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1920D1160(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1920D129C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1920D1454(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1920D1500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  *(v7 + 5) = a4;
  (*(*(*(v10 + 80) - 8) + 32))(&v7[*(v10 + 120)], a5);
  v11 = &v7[*(*v7 + 128)];
  *v11 = a6;
  *(v11 + 1) = a7;
  return v7;
}

uint64_t sub_1920D15B0()
{
  v1 = *v0;
  v2 = sub_192228BD0();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](32, 0xE100000000000000);
  MEMORY[0x193B0A990](v0[2], v0[3]);
  MEMORY[0x193B0A990](32, 0xE100000000000000);
  v5 = v0[4];
  v6 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF800, &unk_192231C10);
  v3 = sub_192227990();
  MEMORY[0x193B0A990](v3);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1920D16B0()
{
  v1 = *v0;
  v2 = (*v0 + 88);
  v3 = (*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 80);
  v6 = v0 + *(*v0 + 120);
  v7 = (*(*(v1 + 96) + 40))(*(v1 + 80), *(v1 + 96));
  *&v8 = v5;
  *(&v8 + 1) = *v2;
  v17 = v7;
  *&v9 = v4;
  *(&v9 + 1) = *v3;
  v16[1] = v8;
  v16[2] = v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AppIntentRecommendation();
  v10 = sub_192227C40();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7F8, &unk_19222E9E0);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_19204301C(sub_1920D89D0, v16, v10, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  return v14;
}

void sub_1920D1878(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    swift_getAssociatedTypeWitness();
    v6 = *(swift_getAssociatedConformanceWitness() + 8);
    sub_192224C70();
    sub_192224BE0();
    v7 = objc_allocWithZone(MEMORY[0x1E696E730]);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v8 = sub_192228980();
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v9 = [v7 initWithAppBundleIdentifier:v5 linkAction:v8 linkActionMetadata:sub_192228980()];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v10 = (a1 + *(type metadata accessor for AppIntentRecommendation() + 36));
    v11 = v10[1];
    v22[0] = *v10;
    v22[1] = v11;
    *a2 = v9;
    sub_1920D89F4();

    v12 = v9;
    v13 = sub_192226FD0();
    v15 = v14;
    v17 = v16;
    v18 = sub_192079D80(0xD000000000000014, 0x8000000192249F10);
    v20 = v19;
    sub_19207A338(v13, v15, v17 & 1);

    a2[1] = v18;
    a2[2] = v20;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1920D1AD0(void *a1, id *a2)
{
  v3 = v2;
  v128 = a1;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v142 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v121 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v121 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v145 = &v121 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v121 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v132 = &v121 - v20;
  v21 = type metadata accessor for ViewableTimelineEntry();
  v136 = *(v21 - 8);
  v139 = v21 - 8;
  v149 = v136;
  v22 = v136[8];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v140 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v141 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v121 - v27;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v28 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v147 = (&v121 - v29);
  v143 = sub_192225150();
  v146 = *(v143 - 8);
  v30 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v138 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for BundleStub();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v137 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for TimelineReloadPolicy();
  v35 = *(*(v135 - 1) + 64);
  v36 = MEMORY[0x1EEE9AC00](v135);
  v127 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *(v5 + 88);
  v126 = *(v134 - 8);
  v38 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v125 = &v121 - v39;
  v40 = v5;
  v41 = *(v5 + 96);
  v131 = v40;
  v42 = *(v40 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v123 = *(AssociatedTypeWitness - 8);
  v43 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v121 - v44;
  v46 = v2 + *(v40 + 120);
  (*(v41 + 48))(a2, v42, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v48 = *(v149 + 80);
  v49 = (v48 + 32) & ~v48;
  v139 = v136[9];
  v129 = v48;
  v130 = v47;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_19222B480;
  v51 = v3 + *(*v3 + 128);
  v52 = *v51;
  v53 = *(v51 + 1);
  v54 = v125;
  v122 = v45;
  v52(v45);
  v55 = *(v131 + 104);
  v131 = v49;
  v56 = v134;
  sub_19221A9D4(v54, v134, v55);
  (*(v126 + 8))(v54, v56);
  v57 = qword_1ED74B558;
  v125 = *a2;
  if (v57 != -1)
  {
LABEL_50:
    swift_once();
  }

  v58 = __swift_project_value_buffer(v135, qword_1ED74B570);
  sub_1920554DC(v58, v127, type metadata accessor for TimelineReloadPolicy);
  v59 = type metadata accessor for WidgetViewCollection();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  v62 = swift_allocObject();
  v63 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v64 = sub_192224E00();
  (*(*(v64 - 8) + 56))(v62 + v63, 1, 1, v64);
  v65 = [v128 extensionIdentity];
  v66 = v137;
  BundleStub.init(_:)(v65, v137);
  sub_19203D028(v66, v62 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v67 = v138;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v68 = *(v146 + 32);
  v126 = v62;
  v68(v62 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v67, v143);
  v150 = v50;

  sub_19209B0C4(&v150);

  v69 = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v69;
  *(inited + 24) = 0;
  v71 = v131;
  v136 = MEMORY[0x1E69E7CC0];
  v135 = (MEMORY[0x1E69E7CC0] + v131);
  v73 = v149 + 7;
  v72 = v149[7];
  v74 = v147;
  v146 = *(v148 + 32);
  v148 = v72;
  v72(v147 + v146, 1, 1, v21);
  *v74 = inited;
  v74[1] = sub_1920DA3A8;
  v74[2] = 0;
  v143 = v69;
  v137 = v69 + v71;
  v138 = inited;
  v149 = v73;
  v50 = (v73 - 1);

  v134 = 0;
  v75 = 0;
  v76 = v142;
  while (2)
  {
    (v148)(v19, 1, 1, v21);
    while (1)
    {
      v77 = *(v143 + 16);
      if (v75 == v77)
      {
        v78 = 1;
        v80 = v144;
        v79 = v145;
      }

      else
      {
        v80 = v144;
        v79 = v145;
        if (v75 >= v77)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_1920554DC(v137 + v75 * v139, v145, type metadata accessor for ViewableTimelineEntry);
        v78 = 0;
        *(v138 + 3) = ++v75;
      }

      (v148)(v79, v78, 1, v21);
      v81 = &unk_19222A7D0;
      sub_192033970(v19, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v79, v19);
      sub_1920D86C4(v19, v14);
      v82 = *v50;
      if ((*v50)(v14, 1, v21) == 1)
      {
        v85 = v14;
        goto LABEL_16;
      }

      sub_192033970(v14, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v19, v80);
      if ((v82)(v80, 1, v21) == 1)
      {
        v85 = v80;
        goto LABEL_16;
      }

      v81 = v141;
      sub_19203D028(v80, v141, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v147 + v146, v76);
      if ((v82)(v76, 1, v21) == 1)
      {
        break;
      }

      v83 = v140;
      sub_19203D028(v76, v140, type metadata accessor for ViewableTimelineEntry);
      v84 = sub_192225120();
      sub_1920D8734(v83, type metadata accessor for ViewableTimelineEntry);
      v76 = v142;
      sub_1920D8734(v81, type metadata accessor for ViewableTimelineEntry);
      if ((v84 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_1920D8734(v81, type metadata accessor for ViewableTimelineEntry);
    v85 = v76;
LABEL_16:
    sub_192033970(v85, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v19, v147 + v146);
    v86 = v132;
    sub_1920D8654(v19, v132);
    if ((v82)(v86, 1, v21) != 1)
    {
      sub_19203D028(v86, v133, type metadata accessor for ViewableTimelineEntry);
      v87 = v139;
      if (v134)
      {
        v88 = v136;
        v89 = v134 - 1;
        if (__OFSUB__(v134, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v90 = v136[3];
      if (((v90 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v91 = v90 & 0xFFFFFFFFFFFFFFFELL;
      if (v91 <= 1)
      {
        v92 = 1;
      }

      else
      {
        v92 = v91;
      }

      v93 = v131;
      v88 = swift_allocObject();
      v94 = _swift_stdlib_malloc_size(v88);
      if (!v87)
      {
        goto LABEL_48;
      }

      if (v94 - v93 == 0x8000000000000000 && v87 == -1)
      {
        goto LABEL_49;
      }

      v96 = v87;
      v97 = (v94 - v93) / v87;
      v88[2] = v92;
      v88[3] = 2 * v97;
      v98 = v88 + v93;
      v99 = v136;
      v100 = v136[3] >> 1;
      v101 = v100 * v96;
      if (!v136[2])
      {
LABEL_39:
        v135 = &v98[v101];
        v102 = (v97 & 0x7FFFFFFFFFFFFFFFLL) - v100;

        v103 = v102;
        v76 = v142;
        v87 = v139;
        v104 = __OFSUB__(v103, 1);
        v89 = v103 - 1;
        if (v104)
        {
          goto LABEL_46;
        }

LABEL_40:
        v134 = v89;
        v105 = v135;
        sub_19203D028(v133, v135, type metadata accessor for ViewableTimelineEntry);
        v135 = (v105 + v87);
        v136 = v88;
        continue;
      }

      if (v88 < v136 || v98 >= v136 + v93 + v101)
      {
        v135 = (v136[3] >> 1);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v88 == v136)
        {
LABEL_38:
          v99[2] = 0;
          goto LABEL_39;
        }

        v135 = (v136[3] >> 1);
        swift_arrayInitWithTakeBackToFront();
      }

      v100 = v135;
      v99 = v136;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v147, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v86, &qword_1EADEE9F8, &unk_19222A7D0);
  v106 = v136;
  v107 = v136[3];
  v108 = v128;
  v109 = v127;
  if (v107 < 2)
  {
    goto LABEL_44;
  }

  v110 = v107 >> 1;
  v104 = __OFSUB__(v110, v134);
  v111 = v110 - v134;
  if (!v104)
  {
    v136[2] = v111;
LABEL_44:
    v112 = v138;
    v113 = v106;
    swift_setDeallocating();
    v114 = *(v112 + 2);

    v115 = v126;
    *(v126 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v113;
    *(v115 + 16) = v125;
    *(v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v108;
    sub_1920554DC(v109, v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    LOBYTE(v112) = byte_1ED74B5B8;
    v116 = v108;
    sub_1920D8734(v109, type metadata accessor for TimelineReloadPolicy);
    (*(v123 + 8))(v122, AssociatedTypeWitness);
    *(v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v112;
    *(v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v115;
  }

  __break(1u);

  v118 = v126;
  sub_1920D8734(v81 + v126, type metadata accessor for BundleStub);
  sub_192033970(v118 + *(v82 + 1848), &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v146 + 8))(v118 + *v75, &qword_1EADEE9F8);
  v119 = *(*v118 + 48);
  v120 = *(*v118 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1920D29D8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *v2;
  v3[12] = *v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for ViewableTimelineEntry();
  v3[19] = v6;
  v7 = *(v6 - 8);
  v3[20] = v7;
  v8 = *(v7 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v3[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v11 = *(*(type metadata accessor for BundleStub() - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v12 = type metadata accessor for TimelineReloadPolicy();
  v3[27] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v14 = v4[11];
  v3[29] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v16 = sub_192225150();
  v3[31] = v16;
  v17 = *(v16 - 8);
  v3[32] = v17;
  v18 = *(v17 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = v4[12];
  v3[35] = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[36] = AssociatedTypeWitness;
  v20 = *(AssociatedTypeWitness - 8);
  v3[37] = v20;
  v21 = *(v20 + 64) + 15;
  v3[38] = swift_task_alloc();
  v22 = swift_getAssociatedTypeWitness();
  v3[39] = v22;
  v23 = *(v22 - 8);
  v3[40] = v23;
  v24 = *(v23 + 64) + 15;
  v3[41] = swift_task_alloc();
  v25 = sub_192228240();
  v3[42] = v25;
  v26 = *(v25 - 8);
  v3[43] = v26;
  v27 = *(v26 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  sub_192227CC0();
  v3[46] = sub_192227CB0();
  v29 = sub_192227C70();
  v3[47] = v29;
  v3[48] = v28;

  return MEMORY[0x1EEE6DFA0](sub_1920D2E4C, v29, v28);
}

uint64_t sub_1920D2E4C()
{
  v59 = v0;
  v1 = [*(v0 + 72) intentReference];
  *(v0 + 392) = v1;
  if (v1)
  {
    v2 = *(v0 + 312);
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v5 = *(MEMORY[0x1E69941A0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 400) = v6;
    v7 = *(swift_getAssociatedConformanceWitness() + 8);
    *v6 = v0;
    v6[1] = sub_1920D335C;
    v8 = *(v0 + 360);
    v9 = *(v0 + 312);

    return MEMORY[0x1EEDF3C38](v8);
  }

  else
  {
    (*(*(v0 + 320) + 56))(*(v0 + 360), 1, 1, *(v0 + 312));
    v10 = *(v0 + 352);
    v11 = *(v0 + 312);
    v12 = *(v0 + 320);
    (*(*(v0 + 344) + 16))(v10, *(v0 + 360), *(v0 + 336));
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v13 = *(v0 + 368);
      v15 = *(v0 + 344);
      v14 = *(v0 + 352);
      v16 = *(v0 + 336);

      v17 = *(v15 + 8);
      v17(v14, v16);
      if (qword_1ED74C6B0 != -1)
      {
        swift_once();
      }

      v18 = sub_1922258B0();
      __swift_project_value_buffer(v18, qword_1ED74CCC8);
      v19 = sub_192225890();
      v20 = sub_192227F90();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 360);
      v23 = *(v0 + 336);
      if (v21)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v58 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_19202B8CC(0xD000000000000013, 0x8000000192249EF0, &v58);
        _os_log_impl(&dword_192028000, v19, v20, "No AppIntent in %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x193B0C7F0](v25, -1, -1);
        MEMORY[0x193B0C7F0](v24, -1, -1);
      }

      v17(v22, v23);
      v27 = *(v0 + 352);
      v26 = *(v0 + 360);
      v28 = *(v0 + 328);
      v29 = *(v0 + 304);
      v30 = *(v0 + 264);
      v31 = *(v0 + 240);
      v32 = *(v0 + 224);
      v34 = *(v0 + 200);
      v33 = *(v0 + 208);
      v35 = *(v0 + 184);
      v48 = *(v0 + 176);
      v49 = *(v0 + 168);
      v50 = *(v0 + 144);
      v51 = *(v0 + 136);
      v52 = *(v0 + 128);
      v53 = *(v0 + 120);
      v54 = *(v0 + 112);
      v56 = *(v0 + 104);

      v36 = *(v0 + 8);

      return v36(0);
    }

    else
    {
      v57 = *(v0 + 272);
      v37 = *(v0 + 88);
      (*(*(v0 + 320) + 32))(*(v0 + 328), *(v0 + 352), *(v0 + 312));
      v38 = *(*v37 + 120);
      v39 = *(v57 + 56);
      v55 = (v39 + *v39);
      v40 = v39[1];
      v41 = swift_task_alloc();
      *(v0 + 408) = v41;
      *v41 = v0;
      v41[1] = sub_1920D38B4;
      v42 = *(v0 + 328);
      v43 = *(v0 + 304);
      v45 = *(v0 + 272);
      v44 = *(v0 + 280);
      v46 = *(v0 + 80);

      return v55(v43, v42, v46, v44, v45);
    }
  }
}

uint64_t sub_1920D335C()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);
  v7 = *v0;

  v4 = *(v1 + 384);
  v5 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1920D349C, v5, v4);
}

uint64_t sub_1920D349C()
{
  v50 = v0;
  v1 = v0[44];
  v2 = v0[39];
  v3 = v0[40];
  (*(v0[43] + 16))(v1, v0[45], v0[42]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[46];
    v6 = v0[43];
    v5 = v0[44];
    v7 = v0[42];

    v8 = *(v6 + 8);
    v8(v5, v7);
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1922258B0();
    __swift_project_value_buffer(v9, qword_1ED74CCC8);
    v10 = sub_192225890();
    v11 = sub_192227F90();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[45];
    v14 = v0[42];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_19202B8CC(0xD000000000000013, 0x8000000192249EF0, &v49);
      _os_log_impl(&dword_192028000, v10, v11, "No AppIntent in %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193B0C7F0](v16, -1, -1);
      MEMORY[0x193B0C7F0](v15, -1, -1);
    }

    v8(v13, v14);
    v18 = v0[44];
    v17 = v0[45];
    v19 = v0[41];
    v20 = v0[38];
    v21 = v0[33];
    v22 = v0[30];
    v23 = v0[28];
    v25 = v0[25];
    v24 = v0[26];
    v26 = v0[23];
    v39 = v0[22];
    v40 = v0[21];
    v41 = v0[18];
    v42 = v0[17];
    v43 = v0[16];
    v44 = v0[15];
    v45 = v0[14];
    v47 = v0[13];

    v27 = v0[1];

    return v27(0);
  }

  else
  {
    v48 = v0[34];
    v29 = v0[11];
    (*(v0[40] + 32))(v0[41], v0[44], v0[39]);
    v30 = *(*v29 + 120);
    v31 = *(v48 + 56);
    v46 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    v0[51] = v33;
    *v33 = v0;
    v33[1] = sub_1920D38B4;
    v34 = v0[41];
    v35 = v0[38];
    v37 = v0[34];
    v36 = v0[35];
    v38 = v0[10];

    return v46(v35, v34, v38, v36, v37);
  }
}

uint64_t sub_1920D38B4()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v6 = *v0;

  v3 = *(v1 + 384);
  v4 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1920D39D4, v4, v3);
}

uint64_t sub_1920D39D4()
{
  v139 = v0;
  v1 = v0[46];
  v2 = v0[38];
  v3 = v0[36];
  v111 = v0[34];
  v113 = v0[35];
  v116 = v0[33];
  v4 = v0[32];
  v134 = v0[31];
  v5 = v0[30];
  v124 = v0[29];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[11];
  v118 = v0[12];
  v127 = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v9 = *(v6 + 72);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v121 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19222B480;
  v109 = v10;
  v131 = v11;
  v12 = v11 + v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v3, AssociatedConformanceWitness);
  v14 = v8 + *(*v8 + 128);
  v15 = *(v14 + 8);
  (*v14)(v2);
  v16 = *(v118 + 104);
  v17 = sub_192227570();
  v18 = v7[7];
  v19 = type metadata accessor for WidgetViewMetadata();
  (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
  v20 = *(v4 + 32);
  v20(v12, v116, v134);
  *(v12 + v7[5]) = v17;
  v21 = v12 + v7[6];
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  *(v12 + v7[8]) = xmmword_19222A790;
  v22 = qword_1ED74B558;
  v108 = *v127;
  if (v22 != -1)
  {
LABEL_52:
    swift_once();
  }

  v23 = v0[33];
  v24 = v0[31];
  v25 = v0[28];
  v26 = v0[26];
  v27 = v0[9];
  v28 = __swift_project_value_buffer(v0[27], qword_1ED74B570);
  sub_1920554DC(v28, v25, type metadata accessor for TimelineReloadPolicy);
  v29 = type metadata accessor for WidgetViewCollection();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v34 = sub_192224E00();
  (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
  BundleStub.init(_:)([v27 extensionIdentity], v26);
  sub_19203D028(v26, v32 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v20(v32 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v23, v24);
  v138 = v131;

  sub_19209B0C4(&v138);
  v107 = v32;
  v35 = v0[24];
  v36 = v0[25];
  v37 = v0[19];
  v38 = v0[20];

  v39 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v39;
  *(inited + 24) = 0;
  v114 = MEMORY[0x1E69E7CC0];
  v110 = MEMORY[0x1E69E7CC0] + v109;
  v128 = *(v35 + 32);
  v135 = *(v38 + 56);
  v135(v36 + v128, 1, 1, v37);
  *v36 = inited;
  v36[1] = sub_1920DA3A8;
  v131 = v36;
  v36[2] = 0;
  v41 = (v38 + 48);
  v119 = inited;

  v112 = 0;
  v42 = 0;
  v20 = &unk_19222A7D0;
  while (2)
  {
    v135(v0[17], 1, 1, v0[19]);
    while (1)
    {
      v43 = v39[2];
      if (v42 == v43)
      {
        v44 = 1;
      }

      else
      {
        if (v42 >= v43)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        sub_1920554DC(v39 + v109 + v42 * v121, v0[16], type metadata accessor for ViewableTimelineEntry);
        v44 = 0;
        *(v119 + 24) = ++v42;
      }

      v45 = v0[19];
      v47 = v0[16];
      v46 = v0[17];
      v48 = v0[15];
      v135(v47, v44, 1, v45);
      sub_192033970(v46, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v47, v46);
      sub_1920D86C4(v46, v48);
      v49 = *v41;
      if ((*v41)(v48, 1, v45) == 1)
      {
        v59 = v0 + 15;
        goto LABEL_16;
      }

      v50 = v0[19];
      v51 = v0[17];
      v52 = v0[14];
      sub_192033970(v0[15], &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v51, v52);
      if (v49(v52, 1, v50) == 1)
      {
        v59 = v0 + 14;
        goto LABEL_16;
      }

      v53 = v0[19];
      v54 = v0[13];
      sub_19203D028(v0[14], v0[22], type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v131 + v128, v54);
      v55 = v49(v54, 1, v53);
      v56 = v0[22];
      if (v55 == 1)
      {
        break;
      }

      v57 = v0[21];
      sub_19203D028(v0[13], v57, type metadata accessor for ViewableTimelineEntry);
      v58 = sub_192225120();
      sub_1920D8734(v57, type metadata accessor for ViewableTimelineEntry);
      sub_1920D8734(v56, type metadata accessor for ViewableTimelineEntry);
      if ((v58 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_1920D8734(v0[22], type metadata accessor for ViewableTimelineEntry);
    v59 = v0 + 13;
LABEL_16:
    sub_192033970(*v59, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    v60 = v0[18];
    v61 = v0[19];
    v62 = v0[17];
    sub_19209B16C(v62, v131 + v128);
    sub_1920D8654(v62, v60);
    if (v49(v60, 1, v61) != 1)
    {
      sub_19203D028(v0[18], v0[23], type metadata accessor for ViewableTimelineEntry);
      v63 = v121;
      v64 = v110;
      if (v112)
      {
        v65 = v114;
        v66 = v112 - 1;
        if (__OFSUB__(v112, 1))
        {
          goto LABEL_48;
        }

        goto LABEL_40;
      }

      v67 = v114[3];
      if (((v67 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_49;
      }

      v68 = v67 & 0xFFFFFFFFFFFFFFFELL;
      if (v68 <= 1)
      {
        v69 = 1;
      }

      else
      {
        v69 = v68;
      }

      v65 = swift_allocObject();
      v70 = _swift_stdlib_malloc_size(v65);
      if (!v121)
      {
        goto LABEL_50;
      }

      v71 = v70 - v109;
      if (v70 - v109 == 0x8000000000000000 && v121 == -1)
      {
        goto LABEL_51;
      }

      v73 = v71 / v121;
      v65[2] = v69;
      v65[3] = 2 * (v71 / v121);
      v74 = v65 + v109;
      v75 = v114;
      v76 = v114[3] >> 1;
      v77 = v76 * v121;
      if (!v114[2])
      {
LABEL_39:
        v64 = &v74[v77];
        v80 = (v73 & 0x7FFFFFFFFFFFFFFFLL) - v76;

        v63 = v121;
        v66 = v80 - 1;
        if (__OFSUB__(v80, 1))
        {
          goto LABEL_48;
        }

LABEL_40:
        v112 = v66;
        sub_19203D028(v0[23], v64, type metadata accessor for ViewableTimelineEntry);
        v110 = v64 + v63;
        v114 = v65;
        continue;
      }

      if (v65 < v114 || v74 >= v114 + v109 + v77)
      {
        v79 = v0[19];
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v65 == v114)
        {
LABEL_38:
          v75[2] = 0;
          goto LABEL_39;
        }

        v78 = v0[19];
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = v114;
      goto LABEL_38;
    }

    break;
  }

  v81 = v0[18];
  sub_192033970(v0[25], &qword_1EADEEA00, &unk_19222B660);
  result = sub_192033970(v81, &qword_1EADEE9F8, &unk_19222A7D0);
  v83 = v114[3];
  if (v83 >= 2)
  {
    v84 = v83 >> 1;
    v85 = __OFSUB__(v84, v112);
    v86 = v84 - v112;
    if (v85)
    {
      __break(1u);
      return result;
    }

    v114[2] = v86;
  }

  v87 = v0[43];
  v132 = v0[42];
  v136 = v0[45];
  v88 = v0[40];
  v129 = v0[41];
  v122 = v0[38];
  v125 = v0[39];
  v89 = v0[36];
  v90 = v0[37];
  v91 = v0[28];
  v92 = v0[9];
  swift_setDeallocating();
  v93 = *(v119 + 16);

  *(v107 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v114;
  *(v107 + 16) = v108;
  *(v107 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v92;
  sub_1920554DC(v91, v107 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v94 = byte_1ED74B5B8;
  v95 = v92;
  sub_1920D8734(v91, type metadata accessor for TimelineReloadPolicy);
  (*(v90 + 8))(v122, v89);
  (*(v88 + 8))(v129, v125);
  (*(v87 + 8))(v136, v132);
  *(v107 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v94;
  *(v107 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
  v97 = v0[44];
  v96 = v0[45];
  v98 = v0[41];
  v99 = v0[38];
  v100 = v0[33];
  v101 = v0[30];
  v102 = v0[28];
  v104 = v0[25];
  v103 = v0[26];
  v105 = v0[23];
  v115 = v0[22];
  v117 = v0[21];
  v120 = v0[18];
  v123 = v0[17];
  v126 = v0[16];
  v130 = v0[15];
  v133 = v0[14];
  v137 = v0[13];

  v106 = v0[1];

  return v106(v107);
}

uint64_t sub_1920D4584(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 96);
  v3[6] = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_192228240();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_192227CC0();
  v3[14] = sub_192227CB0();
  v12 = sub_192227C70();
  v3[15] = v12;
  v3[16] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1920D4734, v12, v11);
}

uint64_t sub_1920D4734()
{
  v37 = v0;
  v1 = [*(v0 + 16) intentReference];
  *(v0 + 136) = v1;
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    v5 = *(MEMORY[0x1E69941A0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    v7 = *(swift_getAssociatedConformanceWitness() + 8);
    *v6 = v0;
    v6[1] = sub_1920D4AF8;
    v8 = *(v0 + 104);
    v9 = *(v0 + 56);

    return MEMORY[0x1EEDF3C38](v8);
  }

  else
  {
    (*(*(v0 + 64) + 56))(*(v0 + 104), 1, 1, *(v0 + 56));
    v10 = *(v0 + 96);
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    (*(*(v0 + 88) + 16))(v10, *(v0 + 104), *(v0 + 80));
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v13 = *(v0 + 112);
      v15 = *(v0 + 88);
      v14 = *(v0 + 96);
      v16 = *(v0 + 80);

      v17 = *(v15 + 8);
      v17(v14, v16);
      if (qword_1ED74C6B0 != -1)
      {
        swift_once();
      }

      v18 = sub_1922258B0();
      __swift_project_value_buffer(v18, qword_1ED74CCC8);
      v19 = sub_192225890();
      v20 = sub_192227F90();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 104);
      v23 = *(v0 + 80);
      if (v21)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v36 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_19202B8CC(0xD000000000000013, 0x8000000192249ED0, &v36);
        _os_log_impl(&dword_192028000, v19, v20, "No AppIntent in %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x193B0C7F0](v25, -1, -1);
        MEMORY[0x193B0C7F0](v24, -1, -1);
      }

      v17(v22, v23);
      v27 = *(v0 + 96);
      v26 = *(v0 + 104);
      v28 = *(v0 + 72);

      v29 = *(v0 + 8);

      return v29(0);
    }

    else
    {
      (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 96), *(v0 + 56));
      v30 = swift_task_alloc();
      *(v0 + 152) = v30;
      *v30 = v0;
      v30[1] = sub_1920D4F04;
      v31 = *(v0 + 72);
      v32 = *(v0 + 24);
      v33 = *(v0 + 32);
      v34 = *(v0 + 16);

      return sub_1920D763C(v34, v32, v31);
    }
  }
}

uint64_t sub_1920D4AF8()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1920D4C38, v5, v4);
}

uint64_t sub_1920D4C38()
{
  v28 = v0;
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  (*(v0[11] + 16))(v1, v0[13], v0[10]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[14];
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];

    v8 = *(v6 + 8);
    v8(v5, v7);
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1922258B0();
    __swift_project_value_buffer(v9, qword_1ED74CCC8);
    v10 = sub_192225890();
    v11 = sub_192227F90();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[13];
    v14 = v0[10];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_19202B8CC(0xD000000000000013, 0x8000000192249ED0, &v27);
      _os_log_impl(&dword_192028000, v10, v11, "No AppIntent in %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193B0C7F0](v16, -1, -1);
      MEMORY[0x193B0C7F0](v15, -1, -1);
    }

    v8(v13, v14);
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[9];

    v20 = v0[1];

    return v20(0);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[12], v0[7]);
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_1920D4F04;
    v23 = v0[9];
    v24 = v0[3];
    v25 = v0[4];
    v26 = v0[2];

    return sub_1920D763C(v26, v24, v23);
  }
}

uint64_t sub_1920D4F04(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = a1;

  v4 = *(v2 + 128);
  v5 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1920D502C, v5, v4);
}

uint64_t sub_1920D502C()
{
  v1 = v0[20];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[9];

  v12 = v0[1];

  return v12(v1);
}

uint64_t sub_1920D5104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v43 = a7;
  v44 = a4;
  v35 = a5;
  v38 = a3;
  v39 = a2;
  v40 = a1;
  v10 = *v7;
  v11 = type metadata accessor for TimelineProviderContext();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a6;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - v18;
  v42 = &v33 - v18;
  v20 = sub_192227CF0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v38, a6);
  sub_1920554DC(v39, &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  sub_192227CC0();

  v40 = v40;

  v21 = sub_192227CB0();
  v22 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v41 + 80) + v24 + 8) & ~*(v41 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 2) = v21;
  *(v27 + 3) = v28;
  *(v27 + 4) = v10[10];
  v29 = v34;
  *(v27 + 5) = v10[11];
  *(v27 + 6) = v29;
  *(v27 + 7) = v10[12];
  *(v27 + 8) = v10[13];
  *(v27 + 9) = v43;
  (*(v14 + 32))(&v27[v22], v36);
  *&v27[v23] = v8;
  *&v27[v24] = v40;
  sub_19203D028(v37, &v27[v25], type metadata accessor for TimelineProviderContext);
  v30 = &v27[v26];
  v31 = v35;
  *v30 = v44;
  *(v30 + 1) = v31;
  sub_19211CA04(0, 0, v42, &unk_19222E9D0, v27);
}

uint64_t sub_1920D54A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v15;
  v8[44] = v16;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  v8[45] = *a5;
  v9 = *(v16 - 8);
  v8[46] = v9;
  v10 = *(v9 + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_192227CC0();
  v8[49] = sub_192227CB0();
  v12 = sub_192227C70();
  v8[50] = v12;
  v8[51] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1920D55D4, v12, v11);
}

uint64_t sub_1920D55D4()
{
  v1 = *(*(v0 + 368) + 16);
  v1(*(v0 + 384), *(v0 + 304), *(v0 + 352));
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    *(v0 + 416) = v3;
    *(v0 + 424) = v6;
    *(v0 + 232) = v2;
    *(v0 + 240) = v3;
    *(v0 + 248) = v4;
    *(v0 + 256) = v5;
    *(v0 + 264) = v6;
    v7 = swift_task_alloc();
    *(v0 + 432) = v7;
    *v7 = v0;
    v7[1] = sub_1920D58D8;
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 312);

    return sub_1920D5DF8(v9, v8, v0 + 232);
  }

  else
  {
    v1(*(v0 + 376), *(v0 + 304), *(v0 + 352));
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v12;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v13 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v13;
      v14 = swift_task_alloc();
      *(v0 + 456) = v14;
      *v14 = v0;
      v14[1] = sub_1920D5ABC;
      v16 = *(v0 + 320);
      v15 = *(v0 + 328);
      v17 = *(v0 + 312);

      return sub_1920D6948(v16, v15, v0 + 16);
    }

    else
    {
      v18 = *(v0 + 392);
      v19 = *(v0 + 360);

      *(v0 + 184) = 0;
      *(v0 + 168) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      sub_192033970(v0 + 104, &qword_1EADEF7F0, &unk_19222F0D0);
      v20 = *(v19 + 96);
      *(v0 + 272) = *(v19 + 80);
      *(v0 + 288) = v20;
      type metadata accessor for AppIntentTimelineEntryProvider.Errors();
      swift_getWitnessTable();
      v21 = swift_allocError();
      swift_willThrow();
      v23 = *(v0 + 336);
      v22 = *(v0 + 344);
      v24 = v21;
      v23(v21, 1);

      v26 = *(v0 + 376);
      v25 = *(v0 + 384);

      v27 = *(v0 + 8);

      return v27();
    }
  }
}

uint64_t sub_1920D58D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v7 = v4[50];
    v8 = v4[51];
    v9 = sub_1920D5C8C;
  }

  else
  {
    v4[56] = a1;
    v7 = v4[50];
    v8 = v4[51];
    v9 = sub_1920D5A00;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1920D5A00()
{
  v1 = v0[56];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[49];
  v6 = v0[42];
  v5 = v0[43];

  v6(v7, 0);

  v9 = v0[47];
  v8 = v0[48];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1920D5ABC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 456);
  v6 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v7 = v4[50];
    v8 = v4[51];
    v9 = sub_1920D5D48;
  }

  else
  {
    v4[59] = a1;
    v7 = v4[50];
    v8 = v4[51];
    v9 = sub_1920D5BE4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1920D5BE4()
{
  v1 = v0[59];
  v2 = v0[49];
  v4 = v0[42];
  v3 = v0[43];

  v4(v5, 0);

  sub_1920D897C((v0 + 2));
  v7 = v0[47];
  v6 = v0[48];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1920D5C8C()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[49];

  v4 = v0[55];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v4;
  v6(v4, 1);

  v9 = v0[47];
  v8 = v0[48];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1920D5D48()
{
  v1 = v0[49];

  sub_1920D897C((v0 + 2));
  v2 = v0[58];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v2;
  v4(v2, 1);

  v7 = v0[47];
  v6 = v0[48];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1920D5DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  *(v4 + 104) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v9 = type metadata accessor for TimelineReloadPolicy();
  *(v4 + 120) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v11 = *(v6 + 96);
  v12 = *(v6 + 80);
  *(v4 + 136) = swift_getAssociatedTypeWitness();
  *(v4 + 144) = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Timeline();
  *(v4 + 152) = v13;
  v14 = *(v13 - 8);
  *(v4 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = *a3;
  *(v4 + 272) = *(a3 + 16);
  *(v4 + 200) = *(a3 + 24);
  sub_192227CC0();
  *(v4 + 216) = sub_192227CB0();
  v17 = sub_192227C70();
  *(v4 + 224) = v17;
  *(v4 + 232) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1920D6014, v17, v16);
}

uint64_t sub_1920D6014()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  *(v0 + 240) = __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview entries request being handled by AppIntentConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = *(v0 + 272);
  v10 = *(v0 + 184);
  v11 = *(v0 + 200);

  *(v0 + 16) = v10;
  *(v0 + 32) = v5;
  *(v0 + 40) = v11;
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1920D6190;
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  return TimelineEntryPreviewSource.unwrapTimeline<A>(for:)(v7, v7, v8);
}

uint64_t sub_1920D6190(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v9 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  v5 = v3[28];
  v6 = v3[29];
  if (v1)
  {
    v7 = sub_1920D66BC;
  }

  else
  {
    v7 = sub_1920D62A4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1920D62A4()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[27];

  v4 = sub_192225890();
  v5 = sub_192227FB0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = v0[17];
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v4, v5, "AppIntentConfiguration resolved entry source to have %{public}ld entries", v9, 0xCu);
    MEMORY[0x193B0C7F0](v9, -1, -1);
  }

  else
  {
    v10 = v0[32];
  }

  if (qword_1ED74B558 != -1)
  {
    swift_once();
  }

  v11 = v0[32];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[20];
  v40 = v15;
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];
  v19 = v0[14];
  v37 = v0[13];
  v38 = v0[33];
  v35 = v0[12];
  v36 = v0[11];
  v39 = v0[10];
  v20 = __swift_project_value_buffer(v0[15], qword_1ED74B570);
  sub_1920554DC(v20, v18, type metadata accessor for TimelineReloadPolicy);
  Timeline.init(entries:policy:)(v11, v18, v13);
  (*(v15 + 16))(v12, v13, v14);
  v21 = type metadata accessor for ViewableTimelineEntry();
  sub_192203450(v12, sub_1920D8A6C, v35, v21, v16, &protocol witness table for ViewableTimelineEntry, v17, v19);
  v22 = *v36;
  v23 = *v19;
  sub_1920554DC(v19 + *(v37 + 36), v18, type metadata accessor for TimelineReloadPolicy);
  v24 = type metadata accessor for WidgetViewCollection();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v29 = sub_192224E00();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = v22;

  v31 = [v39 extensionIdentity];
  BundleStub.init(_:)(v31, v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v23;
  *(v27 + 16) = v30;
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v39;
  sub_1920554DC(v18, v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  LOBYTE(v30) = byte_1ED74B5B8;
  v32 = v39;
  sub_1920D8734(v18, type metadata accessor for TimelineReloadPolicy);
  sub_192033970(v19, &qword_1EADEF7E8, &qword_19222E9C0);
  (*(v40 + 8))(v13, v14);
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v30;
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v33 = v0[1];

  return v33(v27);
}

uint64_t sub_1920D66BC()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[16];
  v5 = v0[14];

  v6 = v0[1];
  v7 = v0[33];

  return v6();
}

double sub_1920D6754@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = *a2;
  v21 = *(*a2 + 88);
  v6 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - v7;
  v9 = v5[12];
  v10 = v5[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v21 - v13;
  (*(v15 + 16))(&v21 - v13, a1, AssociatedTypeWitness);
  v16 = a2 + *(*a2 + 128);
  v17 = *(v16 + 8);
  (*v16)(a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = v5[13];
  return sub_19221A6E4(v14, v8, AssociatedTypeWitness, v21, AssociatedConformanceWitness, v22);
}

uint64_t sub_1920D6948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = *(v5 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  sub_192227CC0();
  v4[13] = sub_192227CB0();
  v13 = sub_192227C70();
  v4[14] = v13;
  v4[15] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1920D6AE4, v13, v12);
}

uint64_t sub_1920D6AE4()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview provider request being handled by AppIntentConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v9 = v0[4];

  TimelineProviderPreviewSource.unwrapContent<A>(for:)(v5, v7, v8, v8);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1920D6CD8;
  v11 = v0[12];
  v12 = v0[5];
  v14 = v0[2];
  v13 = v0[3];

  return sub_1920D763C(v14, v13, v11);
}

uint64_t sub_1920D6CD8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = a1;

  v4 = *(v2 + 120);
  v5 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1920D6E00, v5, v4);
}

uint64_t sub_1920D6E00()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];
  v9 = v0[17];

  return v8(v9);
}

uint64_t sub_1920D6EC4()
{
  sub_192228AD0();
  MEMORY[0x193B0BA90](0);
  return sub_192228B30();
}

uint64_t sub_1920D6F08()
{
  sub_192228AD0();
  MEMORY[0x193B0BA90](0);
  return sub_192228B30();
}

char *sub_1920D6F48()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 5);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 120)]);
  v4 = *&v0[*(*v0 + 128) + 8];

  return v0;
}

uint64_t sub_1920D6FFC()
{
  sub_1920D6F48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1920D706C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920D7114;

  return sub_1920D29D8(a1, a2);
}

uint64_t sub_1920D7114(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1920D7210(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920D8A84;

  return sub_1920D4584(a1, a2);
}

uint64_t sub_1920D7324()
{
  swift_getWitnessTable();

  return sub_192141600();
}

uint64_t sub_1920D739C(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 96);
  v6 = *(v5 + 96);
  v7 = *(*v1 + 80);
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920A59A8;

  return v11(a1, v7, v5);
}

uint64_t sub_1920D7504(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920B3B44;

  return sub_1920D739C(a1);
}

uint64_t sub_1920D75A0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1920D7600(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1920D763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v4[10] = a2;
  v4[11] = v3;
  v4[9] = a1;
  v8 = *v3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v10 = type metadata accessor for ViewableTimelineEntry();
  v4[18] = v10;
  v11 = *(v10 - 8);
  v4[19] = v11;
  v12 = *(v11 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v4[23] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v15 = sub_192225150();
  v4[25] = v15;
  v16 = *(v15 - 8);
  v4[26] = v16;
  v17 = *(v16 + 64) + 15;
  v4[27] = swift_task_alloc();
  v18 = *(*(type metadata accessor for BundleStub() - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v19 = *(*(type metadata accessor for TimelineReloadPolicy() - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  v4[30] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v22 = *(v8 + 96);
  v23 = *(v8 + 80);
  v4[32] = swift_getAssociatedTypeWitness();
  v4[33] = swift_getAssociatedConformanceWitness();
  v24 = type metadata accessor for Timeline();
  v4[34] = v24;
  v25 = *(v24 - 8);
  v4[35] = v25;
  v26 = *(v25 + 64) + 15;
  v4[36] = swift_task_alloc();
  v27 = swift_task_alloc();
  v4[37] = v27;
  v4[38] = sub_192227CC0();
  v4[39] = sub_192227CB0();
  v28 = *(*v5 + 120);
  v29 = *(v22 + 64);
  v33 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  v4[40] = v31;
  *v31 = v4;
  v31[1] = sub_1920D7AB0;

  return v33(v27, a3, a2, v23, v22);
}

uint64_t sub_1920D7AB0()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 304);
  v7 = *v0;

  v5 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1920D7BEC, v5, v4);
}

uint64_t sub_1920D7BEC()
{
  v116 = v0;
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[31];
  v93 = v0[33];
  v95 = v0[30];
  v98 = v0[29];
  v103 = v0[28];
  v106 = v0[27];
  v109 = v0[26];
  v112 = v0[25];
  v8 = v0[18];
  v9 = v0[10];
  v10 = v0[11];
  v100 = v0[9];

  (*(v5 + 16))(v2, v3, v4);
  sub_192203450(v2, sub_1920D8638, v10, v8, v6, &protocol witness table for ViewableTimelineEntry, v93, v7);
  v11 = *v9;
  v12 = *v7;
  sub_1920554DC(v7 + *(v95 + 36), v98, type metadata accessor for TimelineReloadPolicy);
  v13 = type metadata accessor for WidgetViewCollection();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v18 = sub_192224E00();
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  v19 = v11;
  BundleStub.init(_:)([v100 extensionIdentity], v103);
  sub_19203D028(v103, v16 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  (*(v109 + 32))(v16 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v106, v112);
  v115 = v12;

  sub_19209B0C4(&v115);
  v81 = v19;
  v82 = v16;
  v20 = v0[23];
  v21 = v0[24];
  v22 = v0[18];
  v23 = v0[19];
  v24 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v24;
  *(inited + 24) = 0;
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v91 = MEMORY[0x1E69E7CC0] + v26;
  v94 = MEMORY[0x1E69E7CC0];
  v107 = *(v20 + 32);
  v113 = *(v23 + 56);
  v113(v21 + v107, 1, 1, v22);
  v104 = v24;
  v86 = v26;
  v96 = v24 + v26;
  *v21 = inited;
  v21[1] = sub_1920DA3A8;
  v110 = v21;
  v21[2] = 0;
  v99 = inited;
  v101 = v23;
  v27 = (v23 + 48);

  v89 = 0;
  v28 = 0;
  while (2)
  {
    result = (v113)(v0[16], 1, 1, v0[18]);
    while (1)
    {
      v30 = v104[2];
      if (v28 == v30)
      {
        v31 = 1;
      }

      else
      {
        if (v28 >= v30)
        {
          __break(1u);
          goto LABEL_47;
        }

        sub_1920554DC(&v96[v101[9] * v28], v0[15], type metadata accessor for ViewableTimelineEntry);
        v31 = 0;
        *(v99 + 24) = ++v28;
      }

      v32 = v0[18];
      v34 = v0[15];
      v33 = v0[16];
      v35 = v0[14];
      v113(v34, v31, 1, v32);
      sub_192033970(v33, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v34, v33);
      sub_1920D86C4(v33, v35);
      v36 = *v27;
      if ((*v27)(v35, 1, v32) == 1)
      {
        break;
      }

      v37 = v0[18];
      v38 = v0[16];
      v39 = v0[13];
      sub_192033970(v0[14], &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v38, v39);
      if (v36(v39, 1, v37) == 1)
      {
        v46 = v0 + 13;
        goto LABEL_15;
      }

      v40 = v0[18];
      v41 = v0[12];
      sub_19203D028(v0[13], v0[21], type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v110 + v107, v41);
      v42 = v36(v41, 1, v40);
      v43 = v0[21];
      if (v42 == 1)
      {
        sub_1920D8734(v0[21], type metadata accessor for ViewableTimelineEntry);
        v46 = v0 + 12;
        goto LABEL_15;
      }

      v44 = v0[20];
      sub_19203D028(v0[12], v44, type metadata accessor for ViewableTimelineEntry);
      v45 = sub_192225120();
      sub_1920D8734(v44, type metadata accessor for ViewableTimelineEntry);
      result = sub_1920D8734(v43, type metadata accessor for ViewableTimelineEntry);
      if ((v45 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v46 = v0 + 14;
LABEL_15:
    sub_192033970(*v46, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_16:
    v47 = v0[17];
    v48 = v0[18];
    v49 = v0[16];
    sub_19209B16C(v49, v110 + v107);
    sub_1920D8654(v49, v47);
    if (v36(v47, 1, v48) != 1)
    {
      result = sub_19203D028(v0[17], v0[22], type metadata accessor for ViewableTimelineEntry);
      if (v89)
      {
        v50 = v94;
        v51 = v89 - 1;
        if (!__OFSUB__(v89, 1))
        {
          goto LABEL_39;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v52 = v94[3];
      if (((v52 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v53 = v52 & 0xFFFFFFFFFFFFFFFELL;
      if (v53 <= 1)
      {
        v54 = 1;
      }

      else
      {
        v54 = v53;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v55 = v101[9];
      v50 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v50);
      if (!v55)
      {
        goto LABEL_49;
      }

      v56 = result - v86;
      if (result - v86 == 0x8000000000000000 && v55 == -1)
      {
        goto LABEL_50;
      }

      v58 = v56 / v55;
      v50[2] = v54;
      v50[3] = 2 * (v56 / v55);
      v59 = v50 + v86;
      v60 = v94;
      v61 = v94[3] >> 1;
      v62 = v61 * v55;
      if (!v94[2])
      {
LABEL_38:
        v91 = &v59[v62];
        v65 = (v58 & 0x7FFFFFFFFFFFFFFFLL) - v61;

        v66 = __OFSUB__(v65, 1);
        v51 = v65 - 1;
        if (!v66)
        {
LABEL_39:
          v89 = v51;
          sub_19203D028(v0[22], v91, type metadata accessor for ViewableTimelineEntry);
          v91 += v101[9];
          v94 = v50;
          continue;
        }

        goto LABEL_47;
      }

      if (v50 < v94 || v59 >= v94 + v86 + v62)
      {
        v64 = v0[18];
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v50 == v94)
        {
LABEL_37:
          v60[2] = 0;
          goto LABEL_38;
        }

        v63 = v0[18];
        swift_arrayInitWithTakeBackToFront();
      }

      v60 = v94;
      goto LABEL_37;
    }

    break;
  }

  v67 = v0[17];
  sub_192033970(v0[24], &qword_1EADEEA00, &unk_19222B660);
  result = sub_192033970(v67, &qword_1EADEE9F8, &unk_19222A7D0);
  v68 = v94[3];
  if (v68 >= 2)
  {
    v69 = v68 >> 1;
    v66 = __OFSUB__(v69, v89);
    v70 = v69 - v89;
    if (v66)
    {
LABEL_51:
      __break(1u);
      return result;
    }

    v94[2] = v70;
  }

  v71 = v0[37];
  v73 = v0[34];
  v72 = v0[35];
  v74 = v0[31];
  v75 = v0[29];
  v83 = v0[36];
  v84 = v0[28];
  v85 = v0[27];
  v87 = v0[24];
  v88 = v0[22];
  v90 = v0[21];
  v92 = v0[20];
  v97 = v0[17];
  v102 = v0[16];
  v105 = v0[15];
  v108 = v0[14];
  v111 = v0[13];
  v114 = v0[12];
  v76 = v0[9];
  swift_setDeallocating();
  v77 = *(v99 + 16);

  *(v82 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v94;
  *(v82 + 16) = v81;
  *(v82 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v76;
  sub_1920554DC(v75, v82 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v78 = byte_1ED74B5B8;
  v79 = v76;
  sub_1920D8734(v75, type metadata accessor for TimelineReloadPolicy);
  sub_192033970(v74, &qword_1EADEF7E8, &qword_19222E9C0);
  (*(v72 + 8))(v71, v73);
  *(v82 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v78;
  *(v82 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v80 = v0[1];

  return v80(v82);
}

uint64_t sub_1920D8654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920D86C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920D8734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920D8794(uint64_t a1)
{
  v3 = v2;
  v4 = v1[6];
  v19 = v1[9];
  v5 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v18 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = v1[2];
  v12 = v1[3];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v13;
  v14 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1920A59A8;

  return sub_1920D54A4(a1, v11, v12, v1 + v5, v18, v10, v1 + v9, v15);
}

void sub_1920D89D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  sub_1920D1878(a1, a2);
}

unint64_t sub_1920D89F4()
{
  result = qword_1EADECAB0;
  if (!qword_1EADECAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECAB0);
  }

  return result;
}

uint64_t sub_1920D8A88(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xEB00000000656772;
    v11 = 0x614C6D6574737973;
    if (a1 != 2)
    {
      v11 = 0xD000000000000010;
      v10 = 0x8000000192249FD0;
    }

    v12 = 0xEB000000006C6C61;
    v13 = 0x6D536D6574737973;
    if (a1)
    {
      v13 = 0x654D6D6574737973;
      v12 = 0xEC0000006D756964;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v1 <= 1)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v2 = 0x726F737365636361;
    v3 = 0xEF72656E726F4379;
    v4 = 0x8000000192249F90;
    v5 = 0xD000000000000011;
    v6 = 0x8000000192249F70;
    v7 = 0xD000000000000014;
    if (a1 != 7)
    {
      v7 = 0x726F737365636361;
      v6 = 0xEF656E696C6E4979;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    if (a1 == 4)
    {
      v2 = 0xD000000000000018;
      v3 = 0x8000000192249FB0;
    }

    if (a1 <= 5u)
    {
      v8 = v2;
    }

    else
    {
      v8 = v5;
    }

    if (v1 <= 5)
    {
      v9 = v3;
    }

    else
    {
      v9 = v4;
    }
  }

  MEMORY[0x193B0A990](v8, v9);
}

uint64_t sub_1920D8C04(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1920D8C24, 0, 0);
}

uint64_t sub_1920D8C24()
{
  v34 = v0;
  v1 = *(v0 + 96);
  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  *(v0 + 104) = v2;
  v3 = [v2 intentReference];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 intent];
    *(v0 + 112) = v5;

    if (v5)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        **(v0 + 88) = 0;
        v7 = [v6 linkAction];
        v8 = v7;
        if (v7)
        {
          v7 = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
        }

        else
        {
          *(v0 + 64) = 0;
          *(v0 + 72) = 0;
        }

        *(v0 + 56) = v8;
        *(v0 + 80) = v7;
        v29 = *(MEMORY[0x1E6959D08] + 4);
        v30 = swift_task_alloc();
        *(v0 + 120) = v30;
        *v30 = v0;
        v30[1] = sub_1920D8F14;

        return MEMORY[0x1EEDB29B0](v0 + 16, v0 + 56);
      }
    }
  }

  v9 = *(v0 + 88);
  v10 = [v2 intentReference];
  v11 = [v10 _typedIntent];

  *v9 = v11;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0;
  v12 = *(v0 + 104);
  v13 = *(v0 + 88);
  InternalWidgetFamily.init(_:)([v12 family], &v31);
  v14 = v31;
  *(v13 + 32) = v31;
  v33 = v14;
  sub_19206E384(&v33, &v32);
  *(v13 + 8) = v32;
  *(v13 + 40) = [v12 family];
  v15 = [v12 kind];
  v16 = sub_192227960();
  v18 = v17;

  *(v13 + 16) = v16;
  *(v13 + 24) = v18;
  v19 = [v12 personaIdentifier];
  v20 = *(v0 + 96);
  v21 = *(v0 + 104);
  if (v19)
  {
    v22 = v19;
    v23 = sub_192227960();
    v25 = v24;

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v23 = 0;
    v25 = 0;
  }

  v26 = *(v0 + 88);
  *(v26 + 48) = v23;
  *(v26 + 56) = v25;
  v27 = *(v0 + 8);

  return v27();
}