char *sub_19A69A14C()
{
  v1 = v0;
  v31 = sub_19A7A8F64();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9D0);
  v3 = *v0;
  v4 = sub_19A7ABE64();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_19A69A3C0()
{
  v1 = v0;
  v33 = sub_19A7A8F64();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9C0);
  v3 = *v0;
  v4 = sub_19A7ABE64();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_19A69A640()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9E8);
  v2 = *v0;
  v3 = sub_19A7ABE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_19A69A7C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9E0);
  v2 = *v0;
  v3 = sub_19A7ABE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_19A69A944(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_19A7ABE64();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void sub_19A69AAA4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_19A7AC004();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_19A7AAD24();
        v6 = sub_19A7AB294();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_19A69AC78(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_19A69ABA8(0, v2, 1, a1);
  }
}

void sub_19A69ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      v14 = sub_19A7AAC64();

      if ((v14 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_19A69AC78(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_19A67FC80(v8);
    }

    v88 = *(v8 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = *&v8[16 * v88];
        v90 = *&v8[16 * v88 + 24];
        sub_19A69B268((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v6);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v90 < v89)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_19A67FC80(v8);
        }

        if (v88 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v91 = &v8[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        sub_19A67FBF4(v88 - 1);
        v88 = *(v8 + 2);
        if (v88 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v93 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = v11;
      v16 = v14;
      v17 = sub_19A7AAC64();

      v95 = v7;
      v18 = v7 + 2;
      while (v6 != v18)
      {
        v19 = *(v13 - 1);
        v20 = *v13;
        v21 = v19;
        LODWORD(v19) = sub_19A7AAC64() & 1;

        ++v18;
        ++v13;
        if ((v17 & 1) != v19)
        {
          v6 = v18 - 1;
          break;
        }
      }

      if (v17)
      {
        v9 = v95;
        if (v6 < v95)
        {
          goto LABEL_117;
        }

        if (v95 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v95;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v26 + v5);
              *(v26 + v5) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v5 += 8;
          }

          while (v24 < v23);
        }

        v10 = v6;
        v5 = v93;
      }

      else
      {
        v10 = v6;
        v5 = v93;
        v9 = v95;
      }
    }

    v6 = a3;
    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v28 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_19A67FD78(0, *(v8 + 2) + 1, 1, v8);
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v8 = sub_19A67FD78((v41 > 1), v42 + 1, 1, v8);
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v10;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v7 = v10;
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
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_107;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_106;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_109;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
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
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_19A69B268((*v6 + 8 * v85), (*v6 + 8 * *&v8[16 * v46 + 32]), (*v6 + 8 * v86), v45);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v86 < v85)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_19A67FC80(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        sub_19A67FBF4(v46);
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
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_108;
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
          goto LABEL_112;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = *(v6 + 8);
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v94 = v5;
  v96 = v9;
  v29 = *a3;
  v30 = *a3 + 8 * v10 - 8;
  v31 = v9 - v10;
  v98 = v28;
LABEL_30:
  v100 = v10;
  v32 = *(v29 + 8 * v10);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    v36 = v32;
    v37 = v35;
    v38 = sub_19A7AAC64();

    if ((v38 & 1) == 0)
    {
LABEL_29:
      v10 = v100 + 1;
      v30 += 8;
      --v31;
      if (v100 + 1 != v98)
      {
        goto LABEL_30;
      }

      v10 = v98;
      v5 = v94;
      v9 = v96;
      v6 = a3;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v39 = *v34;
    v32 = *(v34 + 8);
    *v34 = v32;
    *(v34 + 8) = v39;
    v34 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_19A69B268(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_19A7AAC64();

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_19A7AAC64();

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_19A69B4E0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_19A7AC174();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19A760D74();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_19A69B70C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_19A69B5D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_19A7AC184();
  sub_19A7AB0B4();
  v6 = sub_19A7AC1B4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_19A7AC064() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19A760EB4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_19A69B890(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_19A69B70C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19A7ABB74();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_19A7AC174() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_19A69B890(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19A7ABB74();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_19A7AC184();

        sub_19A7AB0B4();
        v10 = sub_19A7AC1B4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_19A69BAD8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_19A7ABBE4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_19A69BB7C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_19A6A1694;

  return v5(v2 + 16);
}

uint64_t sub_19A69BC70(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_19A69BD64;

  return v5(v2 + 16);
}

uint64_t sub_19A69BD64()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_19A69BE94(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_19A69BF88;

  return v5(v2 + 32);
}

uint64_t sub_19A69BF88()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_19A69C0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD950);
    v3 = sub_19A7ABE94();
    v4 = a1 + 32;

    while (1)
    {
      sub_19A60F0CC(v4, v13, &qword_1EAFCD958);
      result = sub_19A6955D8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_19A625DC4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_19A69C220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAD8);
    v3 = sub_19A7ABE94();
    v4 = a1 + 32;

    while (1)
    {
      sub_19A60F0CC(v4, &v13, &qword_1EAFCFCE0);
      v5 = v13;
      v6 = v14;
      result = sub_19A6956AC(v13, v14, sub_19A695A80);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19A625DC4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_19A69C364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD940);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_19A6956AC(v5, v6, sub_19A695A80);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_19A69C478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA48);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_19A6956AC(v5, v6, sub_19A695A80);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_19A69C590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA50);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_19A69561C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_19A69C69C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9E8);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_19A6956AC(v5, v6, sub_19A695A80);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_19A69C7C8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_19A7ABE94();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_19A6956AC(v6, v7, sub_19A695A80);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_19A69C8D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAF8);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_19A69561C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_19A69C9E8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA58);
  v3 = sub_19A7ABE94();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_19A695730(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_19A695730(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19A69CAE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD988);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD990);
    v7 = sub_19A7ABE94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_19A60F0CC(v9, v5, &qword_1EAFCD988);
      v11 = *v5;
      result = sub_19A695774(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for EmojiKeyboardWaypoint();
      result = sub_19A62D7FC(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_19A69CCA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9D0);
    v7 = sub_19A7ABE94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A60F0CC(v9, v5, &qword_1EAFCD9C8);
      result = sub_19A6957E0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_19A7A8F64();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_19A69CE8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9C0);
    v7 = sub_19A7ABE94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A60F0CC(v9, v5, &qword_1EAFCD9B8);
      result = sub_19A6957E0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_19A7A8F64();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_19A69D074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAF0);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_19A6956AC(v5, v6, sub_19A695A80);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_19A69D18C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9F8);
    v7 = sub_19A7ABE94();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A60F0CC(v9, v5, &qword_1EAFCD9F0);
      result = sub_19A6958B4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_19A7A8FF4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 40 * v13;
      v17 = *(v8 + 8);
      v18 = *(v8 + 24);
      *v16 = *v8;
      *(v16 + 8) = v17;
      *(v16 + 24) = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_19A69D390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAC8);
    v7 = sub_19A7ABE94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A60F0CC(v9, v5, &qword_1EAFCDAC0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_19A6956AC(*v5, v12, sub_19A695A80);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_19A7A8F64();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_19A69D5B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_19A7ABE94();
    v8 = a1 + 32;

    while (1)
    {
      sub_19A60F0CC(v8, &v15, a4);
      v9 = v15;
      result = sub_19A69561C(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_19A625DC4(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_19A69D6CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD978);
    v3 = sub_19A7ABE94();
    v4 = a1 + 32;

    while (1)
    {
      sub_19A60F0CC(v4, &v11, &qword_1EAFCD980);
      v5 = v11;
      result = sub_19A6959CC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_19A625DC4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_19A69D7F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD968);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_19A6959CC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_19A69D8E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDA10);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_19A695988(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_19A69D9D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9E0);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_19A6956AC(v5, v6, sub_19A695A80);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_19A69DAF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDA90);
    v3 = sub_19A7ABE94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_19A69561C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void sub_19A69DBE0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (sub_19A7AB0A4() == a1 && v4 == v2)
    {

      return;
    }

    v5 = sub_19A7AC064();

    if (v5)
    {
      return;
    }
  }

  v6 = sub_19A7AAFE4();
  v7 = [objc_opt_self() defaultCenter];
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFD0440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A7B6C30;
    v9 = MEMORY[0x1E69E6158];
    sub_19A7ABC54();
    *(inited + 96) = v9;
    *(inited + 72) = a1;
    *(inited + 80) = v2;

    sub_19A69C0E4(inited);
    swift_setDeallocating();
    sub_19A5F2B54(inited + 32, &qword_1EAFCD958);
    v2 = sub_19A7AAF34();
  }

  [v7 postNotificationName:v6 object:0 userInfo:v2];
}

uint64_t sub_19A69DDE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A9058E0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_19A7600FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_19A69DE7C()
{
  result = qword_1EAFCB118;
  if (!qword_1EAFCB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCB118);
  }

  return result;
}

uint64_t sub_19A69DED0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A60FB98;

  return sub_19A685AFC(a1);
}

uint64_t sub_19A69DF7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A685FF0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_19A69E04C()
{
  result = qword_1EAFCD808;
  if (!qword_1EAFCD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCD808);
  }

  return result;
}

unint64_t sub_19A69E0A0()
{
  result = qword_1EAFCD810;
  if (!qword_1EAFCD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCD810);
  }

  return result;
}

uint64_t sub_19A69E0F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19A612F68(a1, a2);
  }

  return a1;
}

uint64_t type metadata accessor for AddStickerError()
{
  result = qword_1EAFCD910;
  if (!qword_1EAFCD910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A69E190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A69E1B4, 0, 0);
}

uint64_t sub_19A69E1B4()
{
  v30 = v0;
  v1 = v0;
  v2 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v0[3], v0[4]);
  if (!v2)
  {
    v2 = sub_19A69C220(MEMORY[0x1E69E7CC0]);
  }

  v23 = v2;
  v0[7] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 5;
  v5 = &off_1F0DC4C70;
  v24 = v0;
  do
  {
    v6 = v1[5];
    v7 = *v5;
    v25[0] = *(v5 - 1);
    v25[1] = v7;

    sub_19A686AF8(v25, v6, &v26);

    v9 = v26;
    v8 = v27;
    v11 = v28;
    v10 = v29;
    if (v27)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_19A76C2C8(0, v3[2] + 1, 1, v3);
      }

      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        v3 = sub_19A76C2C8((v12 > 1), v13 + 1, 1, v3);
      }

      v3[2] = v13 + 1;
      v14 = &v3[4 * v13];
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v11;
      v14[7] = v10;
      v1 = v24;
    }

    else
    {
      sub_19A6A0C44(v26, 0, v28, v29);
    }

    v5 += 2;
    v1[8] = v3;
    --v4;
  }

  while (v4);
  if (v3[2])
  {
    v15 = v1[6];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD998);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9A0);
    v18 = swift_task_alloc();
    v1[9] = v18;
    v18[2] = v3;
    v18[3] = v23;
    v18[4] = v15;
    v19 = swift_task_alloc();
    v1[10] = v19;
    *v19 = v1;
    v19[1] = sub_19A69E468;
    v32 = v17;

    return MEMORY[0x1EEE6DBF8](v1 + 2, v16, v17, 0, 0, &unk_19A7BB8A8, v18, v16);
  }

  else
  {

    v20 = v1[1];
    v21 = MEMORY[0x1E69E7CC0];

    return v20(v21);
  }
}

uint64_t sub_19A69E468()
{

  return MEMORY[0x1EEE6DFA0](sub_19A69E5C0, 0, 0);
}

uint64_t sub_19A69E5D8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_19A69E648, 0, 0);
}

void *sub_19A69E648()
{
  v1 = sub_19A7AAD94();
  if (v1 >> 62)
  {
    v20 = v1;
    v2 = sub_19A7ABBE4();
    v1 = v20;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = v1;
  v26 = MEMORY[0x1E69E7CC0];
  result = sub_19A65ADEC(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v26;
  v7 = v3;
  v25 = v0;
  v8 = v2;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x19A906130](v5, v7);
    }

    else
    {
      v9 = *(v7 + 8 * v5 + 32);
    }

    v10 = v9;
    v11 = sub_19A7AACF4();
    v13 = v12;
    v14 = sub_19A7AACC4();
    v16 = v15;

    v18 = *(v26 + 16);
    v17 = *(v26 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_19A65ADEC((v17 > 1), v18 + 1, 1);
    }

    ++v5;
    *(v26 + 16) = v18 + 1;
    v19 = (v26 + 32 * v18);
    v19[4] = v11;
    v19[5] = v13;
    v19[6] = v14;
    v19[7] = v16;
    v7 = v3;
  }

  while (v8 != v5);

  v0 = v25;
LABEL_14:
  v0[4] = v6;
  v21 = sub_19A7AAEF4();
  v23 = v22;
  v0[5] = v21;
  v0[6] = v22;
  v24 = swift_task_alloc();
  v0[7] = v24;
  *v24 = v0;
  v24[1] = sub_19A69E868;

  return sub_19A69E190(v21, v23, v6);
}

uint64_t sub_19A69E868(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v7 = *v1;

  sub_19A612F00(v4, v3);
  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_19A69E9BC(uint64_t a1)
{
  v2 = sub_19A7AA764();
  v18 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19A7AA7B4();
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A7AA774();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A5F5028(0, &qword_1ED8B2040);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F98], v8);
  v12 = sub_19A7AB7C4();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_19A6A0F70;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_60;
  v14 = _Block_copy(aBlock);

  sub_19A7AA784();
  v19 = MEMORY[0x1E69E7CC0];
  sub_19A6A1110(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
  sub_19A7ABB54();
  MEMORY[0x19A905BE0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

void sub_19A69ED6C(uint64_t a1, uint64_t a2, void *a3)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v6 = sub_19A7A8D44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_19A7A8DF4();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v17);
  if (a3)
  {
    v39 = a1;
    v40 = a2;
    v41 = v21;
    v42 = &v37 - v20;
    sub_19A60F0CC(a3 + OBJC_IVAR___STKImageGlyph_stickerUUID, v12, &qword_1EAFCD800);
    v22 = sub_19A7A8F64();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_19A5F2B54(v12, &qword_1EAFCD800);
    }

    else
    {
      v37 = a3;
      v24 = sub_19A7A8F14();
      v38 = v13;
      v26 = v25;
      (*(v23 + 8))(v12, v22);
      sub_19A6906D0(v19);
      v43[0] = v24;
      v43[1] = v26;
      (*(v7 + 104))(v9, *MEMORY[0x1E6968F70], v6);
      sub_19A639920();
      sub_19A7A8DC4();
      (*(v7 + 8))(v9, v6);
      v27 = v38;

      sub_19A7A8D74();
      v28 = v41;
      v29 = v42;
      (*(v41 + 32))(v42, v19, v27);
      v30 = [objc_opt_self() defaultManager];
      sub_19A7A8D84();
      sub_19A7A8DB4();
      v31 = *(v28 + 8);
      v31(v16, v27);
      v32 = sub_19A7AAFE4();

      v43[0] = 0;
      v33 = [v30 createDirectoryAtPath:v32 withIntermediateDirectories:1 attributes:0 error:v43];

      if (v33)
      {
        v34 = v43[0];
      }

      else
      {
        v35 = v43[0];
        v36 = sub_19A7A8D34();

        swift_willThrow();
      }

      sub_19A7A8E44();
      v31(v29, v27);
    }
  }
}

void *sub_19A69F360()
{
  v30[1] = *MEMORY[0x1E69E9840];
  v0 = sub_19A7A8DF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A6906D0(v3);
  v4 = [objc_opt_self() defaultManager];
  sub_19A7A8DB4();
  v5 = sub_19A7AAFE4();

  v30[0] = 0;
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:v30];

  v7 = v30[0];
  if (v6)
  {
    v8 = sub_19A7AB254();
    v9 = v7;

    v10 = *(v8 + 16);
    if (v10)
    {
      v27 = v3;
      v28 = v1;
      v29 = v0;
      v30[0] = MEMORY[0x1E69E7CC0];
      sub_19A5F6074(0, v10, 0);
      v11 = 0;
      v12 = v30[0];
      v13 = v8 + 40;
      do
      {
        if (v11 >= *(v8 + 16))
        {
          __break(1u);
LABEL_14:
          __break(1u);
        }

        v14 = sub_19A7AAFE4();
        v15 = [v14 lastPathComponent];
        if (!v15)
        {
          goto LABEL_14;
        }

        v16 = v15;

        v17 = [v16 stringByDeletingPathExtension];
        v18 = sub_19A7AB014();
        v20 = v19;

        v30[0] = v12;
        v22 = v12[2];
        v21 = v12[3];
        if (v22 >= v21 >> 1)
        {
          sub_19A5F6074((v21 > 1), v22 + 1, 1);
          v12 = v30[0];
        }

        ++v11;
        v12[2] = v22 + 1;
        v23 = &v12[2 * v22];
        v23[4] = v18;
        v23[5] = v20;
        v13 += 16;
      }

      while (v10 != v11);
      (*(v28 + 8))(v27, v29);
    }

    else
    {

      (*(v1 + 8))(v3, v0);
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v24 = v30[0];
    v25 = sub_19A7A8D34();

    swift_willThrow();
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v12;
}

uint64_t sub_19A69F698(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v24 - v3;
  v33 = sub_19A7A9304();
  i = *(v33 - 8);
  v6 = MEMORY[0x1EEE9AC00](v33);
  v30 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v29 = v24 - v8;
  v34 = MEMORY[0x1E69E7CC0];
  if (!(a1 >> 62))
  {
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_22:
  v32 = a1 & 0xFFFFFFFFFFFFFF8;
  v9 = sub_19A7ABBE4();
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v10 = 0;
  v31 = a1 & 0xC000000000000001;
  v11 = (i + 48);
  v26 = (i + 16);
  v27 = (i + 32);
  v25 = (i + 8);
  result = MEMORY[0x1E69E7CC0];
  do
  {
    v28 = result;
    for (i = v10; ; ++i)
    {
      if (v31)
      {
        v13 = MEMORY[0x19A906130](i, a1);
      }

      else
      {
        if (i >= *(v32 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(a1 + 8 * i + 32);
      }

      v14 = v13;
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v15 = [v13 type];
      sub_19A7AB014();

      sub_19A7A9314();
      if ((*v11)(v4, 1, v33) != 1)
      {
        break;
      }

      sub_19A5F2B54(v4, &qword_1EAFCD820);
      if (v10 == v9)
      {
        return v28;
      }
    }

    v16 = v29;
    v17 = v33;
    (*v27)(v29, v4, v33);
    v18 = [v14 data];
    v28 = sub_19A7A8E34();
    v24[1] = v19;

    (*v26)(v30, v16, v17);
    [v14 size];
    v20 = [v14 role];
    if (v20)
    {
      v21 = v20;
      sub_19A7AB014();
    }

    else
    {
      sub_19A7AACB4();
    }

    v22 = objc_allocWithZone(sub_19A7AAD24());
    v23 = sub_19A7AACE4();
    MEMORY[0x19A905660]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A7AB274();
    }

    sub_19A7AB2A4();

    (*v25)(v29, v33);
    result = v34;
  }

  while (v10 != v9);
  return result;
}

void _s8Stickers7StickerC0B3KitE24donateUIStickerToRecentsyySo01_E0CFZ_0(NSObject *a1)
{
  v2 = sub_19A7AAA14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 representations];
  sub_19A5F5028(0, &qword_1ED8B2000);
  v7 = sub_19A7AB254();

  v8 = sub_19A69F698(v7);

  if (v8 >> 62)
  {
    if (sub_19A7ABBE4() >= 1)
    {
LABEL_3:
      [a1 effectType];
      v62 = sub_19A7AAE94();
      v61 = v9;
      v10 = [a1 attributionInfo];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD8F0);
      v11 = sub_19A7AAF44();

      v12 = *(v11 + 16);
      v65 = v2;
      v66 = a1;
      v63 = v8;
      if (v12)
      {
        sub_19A6956AC(0x64692D6D616461, 0xE700000000000000, sub_19A695A80);
        if (v13)
        {
          objc_opt_self();
          v14 = swift_dynamicCastObjCClass();
          if (v14)
          {
            swift_unknownObjectRetain();
          }

          if (!*(v11 + 16))
          {
            goto LABEL_17;
          }
        }

        else
        {
          v14 = 0;
          if (!*(v11 + 16))
          {
            goto LABEL_17;
          }
        }

        v15 = sub_19A6956AC(0x692D656C646E7562, 0xE900000000000064, sub_19A695A80);
        if (v16)
        {
          v68 = *(*(v11 + 56) + 8 * v15);
          swift_unknownObjectRetain();
          swift_dynamicCast();
          if (!*(v11 + 16))
          {
            goto LABEL_17;
          }
        }

        else if (!*(v11 + 16))
        {
          goto LABEL_17;
        }

        v17 = sub_19A6956AC(1701667182, 0xE400000000000000, sub_19A695A80);
        if (v18)
        {
          v19 = *(*(v11 + 56) + 8 * v17);
          swift_unknownObjectRetain();

          v68 = v19;
          swift_dynamicCast();
LABEL_18:
          objc_allocWithZone(sub_19A7AAD74());
          v64 = v14;
          v20 = sub_19A7AAD54();
          (*(v3 + 104))(v5, *MEMORY[0x1E69D4638], v65);
          sub_19A7AAAC4();
          swift_allocObject();
          v21 = sub_19A7AAA04();
          v22 = v66;
          v23 = [v66 identifier];
          v60 = sub_19A7AB014();

          v24 = [v22 externalURI];
          v59 = sub_19A7AB014();

          v25 = [v22 name];
          if (v25)
          {
            v26 = v25;
            v58 = sub_19A7AB014();
          }

          else
          {
            v58 = 0;
          }

          v65 = v21;
          v27 = [v22 accessibilityName];
          if (v27)
          {
            v28 = v27;
            sub_19A7AB014();
          }

          v29 = [v22 metadata];
          if (v29)
          {
            v30 = v29;
            v31 = sub_19A7A8E34();
            v33 = v32;
          }

          else
          {
            v31 = 0;
            v33 = 0xF000000000000000;
          }

          v34 = v20;
          sub_19A7AA9D4();

          sub_19A612F00(v31, v33);

          if (qword_1EAFCB1C8 != -1)
          {
            swift_once();
          }

          v35 = sub_19A7A9384();
          __swift_project_value_buffer(v35, qword_1EAFCB1D0);
          v36 = v66;
          v37 = sub_19A7A9364();
          v38 = sub_19A7AB564();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v67 = v40;
            *v39 = 136315138;
            v41 = [v36 identifier];
            v42 = sub_19A7AB014();
            v44 = v43;

            v45 = sub_19A62540C(v42, v44, &v67);

            *(v39 + 4) = v45;
            _os_log_impl(&dword_19A5EE000, v37, v38, "Donated UI sticker to recents (%s)", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v40);
            MEMORY[0x19A907A30](v40, -1, -1);
            MEMORY[0x19A907A30](v39, -1, -1);
          }

          return;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_3;
  }

  if (qword_1EAFCB1C8 != -1)
  {
    swift_once();
  }

  v46 = sub_19A7A9384();
  __swift_project_value_buffer(v46, qword_1EAFCB1D0);
  v47 = a1;
  v66 = sub_19A7A9364();
  v48 = sub_19A7AB584();

  if (os_log_type_enabled(v66, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v67 = v50;
    *v49 = 136315138;
    v51 = [v47 identifier];
    v52 = sub_19A7AB014();
    v54 = v53;

    v55 = sub_19A62540C(v52, v54, &v67);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_19A5EE000, v66, v48, "Could not find UI sticker representations to donate to recents. (%s)", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x19A907A30](v50, -1, -1);
    MEMORY[0x19A907A30](v49, -1, -1);
  }

  else
  {
    v56 = v66;
  }
}

uint64_t sub_19A6A0544(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_19A7AAA14();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6A0604, 0, 0);
}

uint64_t sub_19A6A0604()
{
  (*(v0[9] + 104))(v0[10], *MEMORY[0x1E69D4638], v0[8]);
  sub_19A7AAAC4();
  swift_allocObject();
  sub_19A7AAA04();
  sub_19A7AA9D4();

  v1 = v0[1];

  return v1();
}

void sub_19A6A0914()
{
  sub_19A6A0988();
  if (v0 <= 0x3F)
  {
    sub_19A6A09D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_19A6A0988()
{
  if (!qword_1EAFCD920)
  {
    v0 = sub_19A7A8F64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCD920);
    }
  }
}

uint64_t sub_19A6A09D0()
{
  result = qword_1EAFCD928;
  if (!qword_1EAFCD928)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EAFCD928);
  }

  return result;
}

unint64_t sub_19A6A0A14()
{
  result = qword_1EAFCD938;
  if (!qword_1EAFCD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCD938);
  }

  return result;
}

uint64_t sub_19A6A0B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A687690(a1, v4, v5, v6, v7, v8);
}

void sub_19A6A0C44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_19A612F14(a3, a4);
  }
}

uint64_t sub_19A6A0C90(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_19A60FB98;

  return sub_19A686CD0(a1, a2, v6, v7, v8);
}

uint64_t sub_19A6A0D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19A60F860;

  return sub_19A687544(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_19A6A0E40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60F860;

  return sub_19A69BC70(a1, v4);
}

void sub_19A6A0EF8(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_19A6A0F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A6A0F78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60FB98;

  return sub_19A69BB7C(a1, v4);
}

uint64_t sub_19A6A1030(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60FB98;

  return sub_19A69BE94(a1, v4);
}

uint64_t sub_19A6A1110(unint64_t *a1, void (*a2)(uint64_t))
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

double ITKMainScreenScale()
{
  v0 = ITKMainScreenScale_once_0[0];
  v1 = &__block_literal_global_3;
  if (v0 != -1)
  {
    dispatch_once(ITKMainScreenScale_once_0, &__block_literal_global_3);
  }

  result = *&ITKMainScreenScale_sMainScreenScale_0;
  if (*&ITKMainScreenScale_sMainScreenScale_0 == 0.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_19A6A1204(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA40) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_102Tm()
{

  sub_19A612F14(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A6A133C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60FB98;

  return sub_19A69BE94(a1, v4);
}

uint64_t objectdestroy_96Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_19A6A1478(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAA8);

  return sub_19A68AA88(a1, a2);
}

uint64_t objectdestroy_4Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_19A6A1564(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60FB98;

  return sub_19A69BB7C(a1, v4);
}

uint64_t __ITKMainScreenScale_block_invoke_0()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  ITKMainScreenScale_sMainScreenScale_0 = v1;
  return result;
}

uint64_t sub_19A6A16A4()
{
  if (*(v0 + 16))
  {
    MecabraRelease();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_19A6A1738()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCDB00);
  __swift_project_value_buffer(v0, qword_1EAFCDB00);
  return sub_19A7A9374();
}

void *sub_19A6A17B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A7A8FF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + 16);
  if (result)
  {
    v8 = [result selectedSubjectIndexes];
    sub_19A7A8FD4();

    swift_beginAccess();
    v9 = *(v1 + 24);
    if (*(v9 + 16))
    {

      v10 = sub_19A6958B4(v6);
      if (v11)
      {
        v12 = *(v9 + 56) + 40 * v10;
        v13 = *v12;
        v14 = *(v12 + 8);
        v19 = *(v12 + 24);
        v20 = v14;
        v15 = *(v4 + 8);
        v16 = v13;
        v15(v6, v3);

        v18 = v19;
        v17 = v20;
LABEL_7:
        *a1 = v16;
        *(a1 + 8) = v17;
        *(a1 + 24) = v18;
        return result;
      }
    }

    result = (*(v4 + 8))(v6, v3);
    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6A1954()
{
  v1 = v0;
  v2 = sub_19A7A8FF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &aBlock[-1] - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &aBlock[-1] - v11;
  v13 = *(v0 + 16);
  if (v13)
  {
    v14 = [*(v0 + 16) selectedSubjectIndexes];
    sub_19A7A8FD4();

    swift_beginAccess();
    if (*(*(v1 + 24) + 16) && (, sub_19A6958B4(v12), v16 = v15, , (v16 & 1) != 0))
    {
      if (qword_1EAFCB588 != -1)
      {
        swift_once();
      }

      v17 = sub_19A7A9384();
      __swift_project_value_buffer(v17, qword_1EAFCDB00);
      (*(v3 + 16))(v6, v12, v2);
      v18 = sub_19A7A9364();
      v19 = sub_19A7AB574();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v20 = 136315138;
        sub_19A6A20EC();
        v21 = sub_19A7AC024();
        v23 = v22;
        v24 = *(v3 + 8);
        v24(v6, v2);
        v25 = sub_19A62540C(v21, v23, aBlock);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_19A5EE000, v18, v19, "Already have an image for %s", v20, 0xCu);
        v26 = v42;
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x19A907A30](v26, -1, -1);
        MEMORY[0x19A907A30](v20, -1, -1);

        return (v24)(v12, v2);
      }

      else
      {

        v41 = *(v3 + 8);
        v41(v6, v2);
        return (v41)(v12, v2);
      }
    }

    else
    {
      v27 = sub_19A7A8FC4();
      [v13 imageSubjectBoundsWithIndexes_];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v36 = sub_19A7A8FC4();
      v37 = swift_allocObject();
      swift_weakInit();
      (*(v3 + 16))(v9, v12, v2);
      v38 = (*(v3 + 80) + 56) & ~*(v3 + 80);
      v39 = swift_allocObject();
      *(v39 + 2) = v37;
      *(v39 + 3) = v29;
      *(v39 + 4) = v31;
      *(v39 + 5) = v33;
      *(v39 + 6) = v35;
      (*(v3 + 32))(&v39[v38], v9, v2);
      aBlock[4] = sub_19A6A2068;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19A6A1EE4;
      aBlock[3] = &block_descriptor_7;
      v40 = _Block_copy(aBlock);

      [v13 loadImageSubjectWithIndexes:v36 completion:v40];
      _Block_release(v40);

      return (*(v3 + 8))(v12, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A6A1DFC(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v18[0] = a1;
      *&v18[1] = a2;
      *&v18[2] = a3;
      *&v18[3] = a4;
      *&v18[4] = a5;
      v14 = result;
      swift_beginAccess();
      v15 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v14 + 24);
      *(v14 + 24) = 0x8000000000000000;
      sub_19A6505C4(v18, a7, isUniquelyReferenced_nonNull_native);
      *(v14 + 24) = v17;
      swift_endAccess();
    }
  }

  return result;
}

void sub_19A6A1EE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_19A6A1F50()
{

  return swift_deallocClassInstance();
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

uint64_t sub_19A6A1FC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_19A6A2010(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_19A6A2068(void *a1)
{
  v3 = *(sub_19A7A8FF4() - 8);
  v4 = *(v1 + 2);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_19A6A1DFC(a1, v5, v6, v7, v8, v4, v9);
}

unint64_t sub_19A6A20EC()
{
  result = qword_1EAFCDB18;
  if (!qword_1EAFCDB18)
  {
    sub_19A7A8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDB18);
  }

  return result;
}

uint64_t sub_19A6A2144()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCA990);
  __swift_project_value_buffer(v0, qword_1EAFCA990);
  return sub_19A7A9374();
}

unint64_t sub_19A6A21C4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19A6A5684(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_19A6A22A0()
{
  if (*v0)
  {
    return 0x646574616D696E61;
  }

  else
  {
    return 0x546E6F6974636573;
  }
}

uint64_t sub_19A6A22E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079;
  if (v6 || (sub_19A7AC064() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646574616D696E61 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A7AC064();

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

uint64_t sub_19A6A23C4(uint64_t a1)
{
  v2 = sub_19A6A5F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A6A2400(uint64_t a1)
{
  v2 = sub_19A6A5F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A6A244C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDC08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6A5F70();
  sub_19A7AC1D4();
  v10[15] = *(v3 + 16);
  v10[14] = 0;
  sub_19A6A6134();
  sub_19A7ABFE4();
  if (!v2)
  {
    v10[13] = 1;
    sub_19A7ABFC4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A6A25E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDBE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6A5F70();
  sub_19A7AC1C4();
  if (v2)
  {
  }

  else
  {
    v13 = 0;
    sub_19A6A5FC4();
    sub_19A7ABF64();
    *(v1 + 16) = v14;
    v12 = 1;
    v10 = sub_19A7ABF44();
    (*(v6 + 8))(v8, v5);
    *(v3 + 17) = v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_19A6A27C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CategoryChange();
  v5 = swift_allocObject();
  result = sub_19A6A25E4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_19A6A283C(void *a1)
{
  if ([a1 delegate])
  {
    type metadata accessor for CategoryViewController();
    if (!swift_dynamicCastClass())
    {

      goto LABEL_8;
    }

    v2 = [v1 info];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 objectForSetting_];

      if (v4)
      {
        sub_19A7ABB44();
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
      }

      v9 = v13;
      v10 = v14;
      if (*(&v14 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && !v13)
        {
          v5 = sub_19A6E3284(0);
          if (v5)
          {
            v6 = v5;
            if (*(v5 + 17))
            {
              v7 = objc_opt_self();
              v11 = sub_19A6A612C;
              v12 = v6;
              *&v9 = MEMORY[0x1E69E9820];
              *(&v9 + 1) = 1107296256;
              *&v10 = sub_19A6815D4;
              *(&v10 + 1) = &block_descriptor_75_0;
              v8 = _Block_copy(&v9);

              [v7 animateWithDuration:v8 animations:0.25];

              swift_unknownObjectRelease();
              _Block_release(v8);
              return;
            }

            [objc_opt_self() postEmojiSearchViewButtonConfigurationWillChangeNotification_];
          }
        }

LABEL_8:
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = 0u;
      v10 = 0u;
    }

    sub_19A612E20(&v9);
  }
}

id sub_19A6A2C8C(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_19A6DB1A8;
    v14[3] = &block_descriptor_8;
    v10 = _Block_copy(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for CategoryClientToHostAction();
  v15.receiver = v5;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v10, a5);
  sub_19A60126C(a3);

  _Block_release(v10);
  return v12;
}

id sub_19A6A2E50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategoryClientToHostAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A6A2FEC(uint64_t a1)
{
  swift_getObjectType();
  sub_19A6A60B4(a1, v8);
  if (!v9)
  {
    sub_19A612E20(v8);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC10StickerKit19RenderConfiguration_animatedBackground);
  v4 = v7[OBJC_IVAR____TtC10StickerKit19RenderConfiguration_animatedBackground];

  v5 = v3 ^ v4 ^ 1;
  return v5 & 1;
}

id sub_19A6A310C()
{
  v0 = type metadata accessor for RenderConfiguration();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC10StickerKit19RenderConfiguration_animatedBackground] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_1ED8B4258 = result;
  return result;
}

id sub_19A6A3164@<X0>(void *a1@<X8>)
{
  if (qword_1EAFCB318 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED8B4258;
  *a1 = qword_1ED8B4258;

  return v2;
}

uint64_t sub_19A6A322C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  return v1;
}

void sub_19A6A3298()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDB28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB30);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  v9 = type metadata accessor for CategoryBar(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v65 - v13;
  if (qword_1EAFCA980 != -1)
  {
    swift_once();
  }

  v15 = sub_19A7A9384();
  __swift_project_value_buffer(v15, qword_1EAFCA990);
  v16 = sub_19A7A9364();
  v17 = sub_19A7AB5A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_19A5EE000, v16, v17, "viewDidLoad", v18, 2u);
    MEMORY[0x19A907A30](v18, -1, -1);
  }

  v19 = [v1 view];
  if (!v19)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  v67 = v5;
  v68 = v3;
  v69 = v2;
  v66 = objc_opt_self();
  v21 = [v66 clearColor];
  [v20 setBackgroundColor_];

  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  v22 = *(qword_1ED8B2D20 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView__scrollPosition);
  type metadata accessor for CategoryBar.Configuration(0);
  v23 = swift_allocObject();
  v72 = 0;
  v73 = 0;
  type metadata accessor for CGSize(0);

  sub_19A7A9664();
  LOBYTE(v72) = 0;
  sub_19A7A9664();
  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v23;
  v24 = v1;
  sub_19A7AB654();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7AB644();

  sub_19A74802C(v22, v72, v14);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB40));
  sub_19A6A51FC(v14, v12);
  v26 = sub_19A7A9C84();
  sub_19A6A5260(v14);
  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v26;
  v27 = v24;
  sub_19A7AB654();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB50);
  sub_19A7A9674();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_19A6A52CC(&qword_1EAFCA878, &unk_1EAFCDB30);
  v28 = v71;
  v29 = sub_19A7A9724();

  (*(v70 + 8))(v8, v28);
  *&v27[OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_categoryIndexCancellable] = v29;

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCF540);
  v30 = v67;
  sub_19A7A9674();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_19A6A52CC(&qword_1EAFCA880, &qword_1EAFCDB28);
  v31 = v69;
  v32 = sub_19A7A9724();

  (*(v68 + 8))(v30, v31);
  *&v27[OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_avatarEditableCancellable] = v32;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v33 = v72;
  [v27 addChildViewController_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v34 = v72;
  v35 = [v72 view];

  if (!v35)
  {
    goto LABEL_15;
  }

  v36 = [v66 clearColor];
  [v35 setBackgroundColor_];

  v37 = [v35 layer];
  [v37 setHitTestsAsOpaque_];

  v38 = [v27 view];
  if (!v38)
  {
    goto LABEL_17;
  }

  v39 = v38;
  [v38 addSubview_];

  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_19A7BB2E0;
  v41 = [v35 topAnchor];
  v42 = [v27 view];
  if (!v42)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43 = v42;
  v44 = [v42 topAnchor];

  v45 = [v41 constraintEqualToAnchor:v44 constant:0.0];
  *(v40 + 32) = v45;
  v46 = [v35 bottomAnchor];
  v47 = [v27 view];
  if (!v47)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v48 = v47;
  v49 = [v47 bottomAnchor];

  v50 = [v46 constraintEqualToAnchor:v49 constant:-0.0];
  *(v40 + 40) = v50;
  v51 = [v35 leftAnchor];
  v52 = [v27 view];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v53 = v52;
  v54 = [v52 leftAnchor];

  v55 = [v51 constraintEqualToAnchor:v54 constant:0.0];
  *(v40 + 48) = v55;
  v56 = [v35 rightAnchor];
  v57 = [v27 view];
  if (v57)
  {
    v58 = v57;
    v59 = objc_opt_self();
    v60 = [v58 rightAnchor];

    v61 = [v56 constraintEqualToAnchor:v60 constant:-0.0];
    *(v40 + 56) = v61;
    sub_19A661654();
    v62 = sub_19A7AB234();

    [v59 activateConstraints_];

    v63 = sub_19A7AAFE4();
    [v35 setAccessibilityIdentifier_];

LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7AB644();

    v64 = v72;
    [v72 didMoveToParentViewController_];

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_19A6A3DA0(uint64_t *a1)
{
  v2 = sub_19A7A8EF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_19A7A8EE4();
    (*(v3 + 16))(v6, v11 + OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_startTime, v2);
    sub_19A7A8E84();
    v13 = v12;
    v14 = *(v3 + 8);
    v14(v6, v2);
    v14(v8, v2);
    sub_19A6A4424(v9, v13 > 0.5);
  }
}

void sub_19A6A3F30(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_19A6A4764(v1);
  }
}

void sub_19A6A3FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDC30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1EAFCA980 != -1)
    {
      swift_once();
    }

    v8 = sub_19A7A9384();
    __swift_project_value_buffer(v8, qword_1EAFCA990);
    (*(v3 + 16))(v5, a1, v2);
    v9 = sub_19A7A9364();
    v10 = sub_19A7AB574();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      sub_19A7A9394();
      v12 = v15[OBJC_IVAR____TtC10StickerKit19RenderConfiguration_animatedBackground];

      (*(v3 + 8))(v5, v2);
      *(v11 + 4) = v12;
      _os_log_impl(&dword_19A5EE000, v9, v10, "Animated background changed: %{BOOL}d", v11, 8u);
      MEMORY[0x19A907A30](v11, -1, -1);
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7AB644();

    sub_19A7A9394();
    v13 = v15[OBJC_IVAR____TtC10StickerKit19RenderConfiguration_animatedBackground];

    swift_getKeyPath();
    swift_getKeyPath();
    v14[15] = v13;
    sub_19A7A96B4();
  }
}

id sub_19A6A42F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result frame];

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_19A7A96B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19A6A4424(uint64_t a1, char a2)
{
  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7A96A4();

  v5 = sub_19A6A5694(a1, v19);
  if (qword_1EAFCA980 != -1)
  {
    swift_once();
  }

  v6 = sub_19A7A9384();
  __swift_project_value_buffer(v6, qword_1EAFCA990);

  v7 = sub_19A7A9364();
  v8 = sub_19A7AB574();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218752;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v5;
    *(v9 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    *(v9 + 24) = v18;

    *(v9 + 28) = 1024;
    *(v9 + 30) = a2 & 1;
    _os_log_impl(&dword_19A5EE000, v7, v8, "didChangeCategory: %ld sectionType: %ld avatarEditable: %{BOOL}d, animated: %{BOOL}d", v9, 0x22u);
    MEMORY[0x19A907A30](v9, -1, -1);
  }

  else
  {
  }

  v10 = [v2 _hostedWindowScene];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for CategoryChange();
    v12 = swift_allocObject();
    *(v12 + 16) = v17;
    *(v12 + 17) = a2 & 1;
    v13 = sub_19A6A5320(0, v12, 0, 0);

    [v11 sendAction_];
  }

  else
  {
    v14 = sub_19A7A9364();
    v15 = sub_19A7AB584();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_19A5EE000, v14, v15, "Can not send actionForDidChangeSection: _hostedWindowScene is nil", v16, 2u);
      MEMORY[0x19A907A30](v16, -1, -1);
    }
  }
}

uint64_t sub_19A6A4764(char a1)
{
  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7A96A4();

  v3 = sub_19A6A5694(v13, a1 & 1);
  v4 = [v1 _hostedWindowScene];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CategoryChange();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 17) = 1;
    v7 = sub_19A6A5320(0, v6, 0, 0);

    [v5 sendAction_];
  }

  if (qword_1EAFCA980 != -1)
  {
    swift_once();
  }

  v8 = sub_19A7A9384();
  __swift_project_value_buffer(v8, qword_1EAFCA990);

  v9 = sub_19A7A9364();
  v10 = sub_19A7AB574();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    *(v11 + 4) = v13;

    *(v11 + 12) = 2048;
    *(v11 + 14) = v3;
    *(v11 + 22) = 1024;
    *(v11 + 24) = a1 & 1;
    _os_log_impl(&dword_19A5EE000, v9, v10, "categoryIndex: %ld sectionType: %ld avatarEditable: %{BOOL}d", v11, 0x1Cu);
    MEMORY[0x19A907A30](v11, -1, -1);
  }

  else
  {
  }
}

id LocalCategoryViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EAFCA980 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCA990);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB5A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for LocalCategoryViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id LocalCategoryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LocalCategoryViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB40);
  sub_19A7AB664();
  type metadata accessor for CategoryBar.Configuration(0);
  sub_19A7AB664();
  sub_19A7A8EE4();
  *&v3[OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_categoryIndexCancellable] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_avatarEditableCancellable] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_renderConfigObservation] = 0;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for LocalCategoryViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id LocalCategoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalCategoryViewController.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB40);
  sub_19A7AB664();
  type metadata accessor for CategoryBar.Configuration(0);
  sub_19A7AB664();
  sub_19A7A8EE4();
  *&v1[OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_categoryIndexCancellable] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_avatarEditableCancellable] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_renderConfigObservation] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocalCategoryViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

double sub_19A6A4F90@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19A6A5010()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_19A7A96B4();
}

uint64_t sub_19A6A508C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_19A7AB654();
}

uint64_t sub_19A6A5104@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  *a1 = v3;
  return result;
}

uint64_t sub_19A6A5180(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_19A7AB654();
}

uint64_t sub_19A6A51FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryBar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A6A5260(uint64_t a1)
{
  v2 = type metadata accessor for CategoryBar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A6A52CC(unint64_t *a1, uint64_t *a2)
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

id sub_19A6A5320(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v20[5] = a2;
  v6 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v7 = [v6 init];
  if (a3)
  {
    v8 = sub_19A7A8CA4();
    swift_allocObject();
    v9 = sub_19A7A8C94();
    v10 = &unk_1EAFCB0B0;
    v11 = MEMORY[0x1E69689D8];
  }

  else
  {
    v8 = sub_19A7A8B84();
    swift_allocObject();
    v9 = sub_19A7A8B74();
    v10 = &unk_1ED8B3400;
    v11 = MEMORY[0x1E6968010];
  }

  v20[3] = v8;
  v20[4] = sub_19A6A606C(v10, 255, v11);
  v20[0] = v9;
  __swift_project_boxed_opaque_existential_1(v20, v8);
  type metadata accessor for CategoryChange();
  sub_19A6A606C(&qword_1EAFCAF40, v12, type metadata accessor for CategoryChange);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v13 = sub_19A7A8E14();
  [v7 setObject:v13 forSetting:1];

  if (a4)
  {
    v14 = [objc_opt_self() _synchronizedDrawingFence];
    [v7 setObject:v14 forSetting:2];
    sub_19A612F14(v18, v19);
  }

  else
  {
    sub_19A612F14(v18, v19);
  }

  v15 = sub_19A7AB4B4();
  [v7 setObject:v15 forSetting:0];

  type metadata accessor for CategoryClientToHostAction();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v7 responder:0];

  return v16;
}

unint64_t sub_19A6A5684(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_19A6A5694(uint64_t a1, char a2)
{
  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  v4 = sub_19A65883C(1);
  if ((v5 & 1) == 0)
  {
    if (v4 != a1)
    {
      goto LABEL_5;
    }

LABEL_9:

    return 1;
  }

  if (a1 == -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = sub_19A65883C(2);
  v8 = v7;

  if (v8)
  {
    if (a1 != -1)
    {
      return 0;
    }
  }

  else if (v6 != a1)
  {
    return 0;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_19A6A5788()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDC18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  if (qword_1EAFCA980 != -1)
  {
    swift_once();
  }

  v5 = sub_19A7A9384();
  __swift_project_value_buffer(v5, qword_1EAFCA990);
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB5A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_19A5EE000, v6, v7, "viewDidAppear", v8, 2u);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7A96A4();

  sub_19A6A4424(v17[1], 0);
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 window];

    if (v11)
    {
      v12 = [v11 windowScene];

      if (v12)
      {
        v13 = v12;
        sub_19A7AB8F4();

        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDC20);
        v15 = *(v14 - 8);
        if ((*(v15 + 48))(v4, 1, v14) == 1)
        {

          sub_19A5FA874(v4);
          v16 = 0;
        }

        else
        {
          swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_getOpaqueTypeConformance2();
          sub_19A6A6190();
          v16 = sub_19A7A93C4();

          (*(v15 + 8))(v4, v14);
        }

        *&v1[OBJC_IVAR____TtC10StickerKit27LocalCategoryViewController_renderConfigObservation] = v16;
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for LocalCategoryViewController()
{
  result = qword_1EAFCABD8;
  if (!qword_1EAFCABD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A6A5BE4()
{
  sub_19A6A5D0C();
  if (v0 <= 0x3F)
  {
    sub_19A6A5D70();
    if (v1 <= 0x3F)
    {
      sub_19A7A8EF4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_19A6A5D0C()
{
  if (!qword_1EAFCA528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAFCDB40);
    v0 = sub_19A7AB674();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA528);
    }
  }
}

void sub_19A6A5D70()
{
  if (!qword_1EAFCA520)
  {
    type metadata accessor for CategoryBar.Configuration(255);
    v0 = sub_19A7AB674();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA520);
    }
  }
}

uint64_t getEnumTagSinglePayload for ImageGlyphUIConfiguration.SectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageGlyphUIConfiguration.SectionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A6A5F1C()
{
  result = qword_1EAFCDBD8;
  if (!qword_1EAFCDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDBD8);
  }

  return result;
}

unint64_t sub_19A6A5F70()
{
  result = qword_1ED8B2E40[0];
  if (!qword_1ED8B2E40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8B2E40);
  }

  return result;
}

unint64_t sub_19A6A5FC4()
{
  result = qword_1EAFCB308;
  if (!qword_1EAFCB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCB308);
  }

  return result;
}

unint64_t sub_19A6A6018()
{
  result = qword_1ED8B26D0;
  if (!qword_1ED8B26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B26D0);
  }

  return result;
}

uint64_t sub_19A6A606C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_19A6A60B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A6A6134()
{
  result = qword_1EAFCAD10;
  if (!qword_1EAFCAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCAD10);
  }

  return result;
}

unint64_t sub_19A6A6190()
{
  result = qword_1ED8B2CD0;
  if (!qword_1ED8B2CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B2CD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageGlyphSectionConfiguration.GroupingStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageGlyphSectionConfiguration.GroupingStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A6A6348()
{
  result = qword_1EAFCDC38;
  if (!qword_1EAFCDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDC38);
  }

  return result;
}

unint64_t sub_19A6A63A0()
{
  result = qword_1ED8B2E30;
  if (!qword_1ED8B2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B2E30);
  }

  return result;
}

unint64_t sub_19A6A63F8()
{
  result = qword_1ED8B2E38;
  if (!qword_1ED8B2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B2E38);
  }

  return result;
}

uint64_t sub_19A6A6468()
{
  sub_19A601244(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_19A6A64A0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
  [v0 setStiffness_];
  [v0 stiffness];
  v2 = sqrt(v1);
  [v0 setDamping_];
  v3 = v0;
  v4 = sub_19A7A9154();
  [v3 setFromValue_];

  v5 = sub_19A7A9154();
  [v3 setToValue_];

  v6 = v3;
  [v6 settlingDuration];
  [v6 setDuration_];

  return v6;
}

uint64_t sub_19A6A6594(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == a2;
  }

  return result;
}

uint64_t sub_19A6A65E4()
{
  type metadata accessor for StickerEffectMotionManager();
  swift_allocObject();
  result = sub_19A6A6620();
  qword_1EAFDD6E0 = result;
  return result;
}

uint64_t sub_19A6A6620()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = sub_19A6A64A0();
  *(v0 + 112) = 0x3FF0000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = MEMORY[0x1E69E7CC0];
  v1 = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  *(v0 + 16) = v1;
  if (v1)
  {
    [v1 setDeviceMotionUpdateInterval_];
  }

  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v0 selector:sel_backgroundFrom_ name:*MEMORY[0x1E69DDAC8] object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v0 selector:sel_foregroundFrom_ name:*MEMORY[0x1E69DDBC0] object:0];

  return v0;
}

void sub_19A6A675C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 136);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_77;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v4)
      {
        v6 = sub_19A7ABBE4();
      }

      else
      {
        v6 = *(v3 + 16);
      }

      goto LABEL_21;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A906130](v6, v2);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_68;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v8 = __OFADD__(v6++, 1);
    if (v8)
    {
      goto LABEL_69;
    }
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_83;
  }

  if (v4)
  {
    if (v9 != sub_19A7ABBE4())
    {
LABEL_34:
      v3 = v6 + 5;
      do
      {
        v20 = v3 - 4;
        v4 = v2 & 0xC000000000000001;
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A906130](v3 - 4, v2);
        }

        else
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          if (v20 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }
        }

        v21 = swift_unknownObjectWeakLoadStrong();

        if (v21)
        {
          swift_unknownObjectRelease();
          if (v20 != v6)
          {
            if (v4)
            {
              v22 = MEMORY[0x19A906130](v6, v2);
              v23 = MEMORY[0x19A906130](v3 - 4, v2);
            }

            else
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_80;
              }

              v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v6 >= v24)
              {
                goto LABEL_81;
              }

              if (v20 >= v24)
              {
                goto LABEL_82;
              }

              v22 = *(v2 + 8 * v6 + 32);
              v23 = *(v2 + 8 * v3);
            }

            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v1 + 136) = v2;
            if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_19A787AC0(v2);
              *(v1 + 136) = v2;
            }

            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_74;
            }

            v4 = v2 & 0xFFFFFFFFFFFFFF8;
            if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v23;

            *(v1 + 136) = v2;
            if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_19A787AC0(v2);
              *(v1 + 136) = v2;
              v4 = v2 & 0xFFFFFFFFFFFFFF8;
              if ((v20 & 0x8000000000000000) != 0)
              {
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                v5 = sub_19A7ABBE4();
                goto LABEL_3;
              }
            }

            else if ((v20 & 0x8000000000000000) != 0)
            {
              goto LABEL_67;
            }

            if (v20 >= *(v4 + 16))
            {
              goto LABEL_76;
            }

            *(v4 + 8 * v3) = v22;

            *(v1 + 136) = v2;
          }

          v8 = __OFADD__(v6++, 1);
          if (v8)
          {
            goto LABEL_73;
          }
        }

        v8 = __OFADD__(v20, 1);
        v26 = v3 - 3;
        if (v8)
        {
          goto LABEL_72;
        }

        if (v2 >> 62)
        {
          v27 = sub_19A7ABBE4();
        }

        else
        {
          v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v3;
      }

      while (v26 != v27);
    }
  }

  else if (v9 != *(v3 + 16))
  {
    goto LABEL_34;
  }

LABEL_21:
  if (!(v2 >> 62))
  {
    v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    goto LABEL_79;
  }

  v10 = sub_19A7ABBE4();
  if (v10 < v6)
  {
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

LABEL_23:
  sub_19A6C0C2C(v6, v10);
  swift_endAccess();
  v11 = *(v1 + 16);
  if (!v11)
  {
    return;
  }

  v12 = *(v1 + 24);
  v13 = v11;
  v2 = v13;
  if (v12)
  {
    goto LABEL_25;
  }

  v6 = &off_1E751B000;
  if ([v13 isDeviceMotionActive])
  {
    v16 = *(v1 + 136);
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

LABEL_25:
      [v2 stopDeviceMotionUpdates];
      v14 = *(v1 + 48);
      *(v1 + 64) = *(v1 + 32);
      *(v1 + 80) = v14;
      v15 = CACurrentMediaTime();

      *(v1 + 88) = v15;
      *(v1 + 96) = 0;
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      *(v1 + 48) = 1;
      return;
    }

LABEL_84:
    if (sub_19A7ABBE4())
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_29:
  if ((*(v1 + 24) & 1) == 0 && ([v2 *(v6 + 4088)] & 1) == 0)
  {
    v17 = *(v1 + 136);
    if (v17 >> 62)
    {
      if (sub_19A7ABBE4())
      {
        goto LABEL_33;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      v18 = [objc_opt_self() mainQueue];
      v28[4] = sub_19A6A77C4;
      v28[5] = v1;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 1107296256;
      v28[2] = sub_19A65E348;
      v28[3] = &block_descriptor_9;
      v19 = _Block_copy(v28);

      [v2 startDeviceMotionUpdatesToQueue:v18 withHandler:v19];

      _Block_release(v19);
      return;
    }
  }
}

uint64_t sub_19A6A6C90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_19A7A8C04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8BC4();
  *(a1 + 24) = a4;

  sub_19A6A675C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_19A6A6D84(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = CACurrentMediaTime();
    v6 = [a2 attitude];
    [v6 quaternion];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    *&v15 = v8;
    *&v16 = v10;
    *&v17 = v12;
    *&v18 = v14;
    v20.i64[0] = __PAIR64__(v16, v15);
    v20.i64[1] = v17;
    v19 = vmulq_f32(v20, xmmword_19A7BC120);
    v20.i32[3] = v18;
    *&v21 = v19.f32[2] + vaddv_f32(*v19.f32);
    v22.f32[0] = *&v21 * 0.0;
    v22.f32[1] = *&v21 * 0.0;
    v22.i64[1] = __PAIR64__(v18, v21);
    v23 = vmulq_f32(v22, v22);
    v24 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    if (vaddv_f32(v24) == 0.0)
    {
      v25 = xmmword_19A7BC130;
    }

    else
    {
      v26 = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
      v27 = vrsqrte_f32(v26);
      v28 = vmul_f32(v27, vrsqrts_f32(v26, vmul_f32(v27, v27)));
      v25 = vmulq_f32(vmulq_n_f32(v22, vmul_f32(v28, vrsqrts_f32(v26, vmul_f32(v28, v28))).f32[0]), xmmword_19A7BC140);
    }

    v29 = vnegq_f32(v20);
    v30 = vtrn2q_s32(v20, vtrn1q_s32(v20, v29));
    v31 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v20, v29, 8uLL), *v25.f32, 1), vextq_s8(v30, v30, 8uLL), v25.f32[0]);
    v32 = vrev64q_s32(v20);
    v32.i32[0] = v29.i32[1];
    v32.i32[3] = v29.i32[2];
    v33 = vaddq_f32(v31, vmlaq_laneq_f32(vmulq_laneq_f32(v20, v25, 3), v32, v25, 2));
    v34 = *(v4 + 32);
    if (*(v4 + 48) == 1)
    {
      *(v4 + 32) = v33;
      *(v4 + 48) = 0;
      v35 = v33.i64[1];
      v34 = v33.i64[0];
    }

    else
    {
      v35 = *(v4 + 40);
    }

    v36.i64[0] = v34;
    v36.i64[1] = v35;
    v99 = (v4 + 32);
    v101 = v33;
    v106 = v36;
    if ((*(v4 + 80) & 1) == 0 && (*(v4 + 96) & 1) == 0)
    {
      v104 = *(v4 + 64);
      v37 = v5 - *(v4 + 88);
      [*(v4 + 104) duration];
      v39 = fmin(fmax(v37 / v38, 0.0), 1.0);
      *&v39 = v39;
      [*(v4 + 104) _solveForInput_];
      simd_slerp(v104, v106, v40);
      v106 = v41;
    }

    result = swift_beginAccess();
    v42 = *(v4 + 136);
    if (v42 >> 62)
    {
      result = sub_19A7ABBE4();
      v43 = result;
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v101;
    v45 = xmmword_19A7BC140;
    if (v43)
    {
      if (v43 >= 1)
      {
        v100 = v4;
        v46 = vmulq_f32(v106, xmmword_19A7BC140);
        v47 = vnegq_f32(v46);
        v48 = vrev64q_s32(v46);
        v49 = vtrn2q_s32(v46, vtrn1q_s32(v46, v47));
        v48.i32[0] = v47.i32[1];
        v48.i32[3] = v47.i32[2];
        v50 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v46, v101, 3), v48, v101, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v46, v47, 8uLL), *v101.f32, 1), vextq_s8(v49, v49, 8uLL), v101.f32[0]));
        v103 = vdupq_lane_s32(*v50.i8, 0);
        v107 = v50;
        v102 = vdupq_laneq_s32(v50, 2);

        v51 = 0;
        while (1)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            MEMORY[0x19A906130](v51, v42);
          }

          else
          {
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_18;
          }

          v53 = Strong;
          v105 = *(Strong + OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation);
          *(Strong + OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation) = v107;
          v54 = swift_unknownObjectWeakLoadStrong();
          if (!v54)
          {
            goto LABEL_28;
          }

          v55 = v54;
          [v54 _horizontalVelocity];
          v57 = fabs(v56);
          [v55 _verticalVelocity];
          v59 = v58;

          v60 = fabs(v59);
          if (v57 > v60)
          {
            v60 = v57;
          }

          v61 = v60;
          if (v61 != 0.0)
          {
            v71 = v61 >= 0.0 && v61 < 0.2;
            v63 = xmmword_19A7BC140;
            if (v71)
            {
              *&v76 = 0.01;
            }

            else
            {
              if (v61 < 0.2 || v61 >= 0.5)
              {
                v73 = 100.0;
                if (v61 >= 100.0 || v61 < 1.0)
                {
                  v73 = 0.004;
                }

                if (v61 >= 0.5 && v61 < 1.0)
                {
                  v62 = 0.1;
                }

                else
                {
                  v62 = v73;
                }

                goto LABEL_29;
              }

              *&v76 = 0.05;
            }

            v62 = *&v76;
          }

          else
          {
LABEL_28:
            v62 = 0.003;
            v63 = xmmword_19A7BC140;
          }

LABEL_29:
          v64 = vmulq_f32(v105, v63);
          v65 = vnegq_f32(v64);
          v66 = vtrn2q_s32(v64, vtrn1q_s32(v64, v65));
          v67 = vrev64q_s32(v64);
          v67.i32[0] = v65.i32[1];
          v67.i32[3] = v65.i32[2];
          v68 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v64, v107, 3), v67, v102), vmlaq_f32(vmulq_lane_f32(vextq_s8(v64, v65, 8uLL), *v107.f32, 1), vextq_s8(v66, v66, 8uLL), v103));
          v69 = vmulq_f32(v68, v68);
          v70 = atan2f(sqrtf(v69.f32[2] + vaddv_f32(*v69.f32)), v68.f32[3]);
          if (fabsf(v70 + v70) >= v62)
          {
            v53[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
            if (!*&v53[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
            {
              [v53 itk_setNeedsLayout];
            }
          }

          if (!*&v53[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
          {
            if (v53[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] == 1)
            {
              [v53 itk_setNeedsLayout];
            }

            swift_unknownObjectRelease();
            goto LABEL_19;
          }

          swift_unknownObjectRelease();
LABEL_18:

LABEL_19:
          if (v43 == ++v51)
          {

            v4 = v100;
            v44 = v101;
            v45 = xmmword_19A7BC140;
            goto LABEL_59;
          }
        }
      }

      __break(1u);
      goto LABEL_75;
    }

LABEL_59:
    if (*(v4 + 48))
    {
LABEL_75:
      __break(1u);
      return result;
    }

    v77 = *(v4 + 32);
    v78 = *(v4 + 40);
    v79.i64[0] = v77;
    v79.i64[1] = v78;
    v80 = vmulq_f32(v79, v45);
    v81 = vnegq_f32(v80);
    v82 = vtrn2q_s32(v80, vtrn1q_s32(v80, v81));
    v83 = vrev64q_s32(v80);
    v83.i32[0] = v81.i32[1];
    v83.i32[3] = v81.i32[2];
    v84 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v80, v44, 3), v83, vdupq_laneq_s32(v44, 2)), vmlaq_f32(vmulq_lane_f32(vextq_s8(v80, v81, 8uLL), *v44.f32, 1), vextq_s8(v82, v82, 8uLL), vdupq_lane_s32(*v44.f32, 0)));
    v85 = vmulq_f32(v84, xmmword_19A7BC120);
    v80.f32[0] = v85.f32[2] + vaddv_f32(*v85.f32);
    v86.f32[0] = v80.f32[0] * 0.0;
    v86.f32[1] = v80.f32[0] * 0.0;
    v86.i64[1] = __PAIR64__(v84.u32[3], v80.u32[0]);
    v87 = vmulq_f32(v86, v86);
    v88 = vadd_f32(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
    if (vaddv_f32(v88) == 0.0)
    {
      v89 = xmmword_19A7BC130;
    }

    else
    {
      v90 = vadd_f32(v88, vdup_lane_s32(v88, 1)).u32[0];
      v91 = vrsqrte_f32(v90);
      v92 = vmul_f32(v91, vrsqrts_f32(v90, vmul_f32(v91, v91)));
      v89 = vmulq_f32(vmulq_n_f32(v86, vmul_f32(v92, vrsqrts_f32(v90, vmul_f32(v92, v92))).f32[0]), v45);
    }

    v93 = vnegq_f32(v89);
    v94 = vtrn2q_s32(v89, vtrn1q_s32(v89, v93));
    v95 = vrev64q_s32(v89);
    v95.i32[0] = v93.i32[1];
    v95.i32[3] = v93.i32[2];
    v96 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v89, v84, 3), v95, v84, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v89, v93, 8uLL), *v84.f32, 1), vextq_s8(v94, v94, 8uLL), v84.f32[0]));
    v97 = vmulq_f32(v96, v96);
    v98 = atan2f(sqrtf(v97.f32[2] + vaddv_f32(*v97.f32)), v96.f32[3]);
    if (fabsf(v98 + v98) <= 0.62832)
    {
      if (*(v4 + 128))
      {
      }

      *(v4 + 120) = 0;
    }

    else
    {
      if (*(v4 + 128) == 1)
      {
        *(v4 + 120) = v5;
        *(v4 + 128) = 0;
      }

      if (v5 - *(v4 + 120) <= 1.0)
      {
      }

      *(v4 + 64) = v77;
      *(v4 + 72) = v78;
      *(v4 + 80) = 0;
      *(v4 + 88) = CACurrentMediaTime();
      *(v4 + 96) = 0;
      *v99 = 0;
      v99[1] = 0;
      *(v4 + 48) = 1;
      *(v4 + 120) = 0;
    }

    *(v4 + 128) = 1;
  }

  return result;
}

uint64_t sub_19A6A74B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A6A7540(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_19A6F1448(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_19A7ABBE4();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_19A7ABBE4())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x19A906130](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x19A906130](v2, v6);
    v15 = MEMORY[0x19A906130](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_19A787AC0(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_19A787AC0(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_19A7ABBE4();
}

id sub_19A6A77D0()
{
  v1 = v0;
  v2 = sub_19A7AA764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A7AA7B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + 16);
  if (result)
  {
    result = [result deviceMotion];
    if (result)
    {
      v11 = result;
      sub_19A631AE0();
      v19 = v3;
      v18 = sub_19A7AB794();
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v11;
      aBlock[4] = sub_19A6A7ABC;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19A6815D4;
      aBlock[3] = &block_descriptor_41_0;
      v14 = _Block_copy(aBlock);

      v15 = v11;
      sub_19A7AA784();
      v20 = MEMORY[0x1E69E7CC0];
      sub_19A6A7AC4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
      sub_19A612560();
      sub_19A7ABB54();
      v16 = v18;
      MEMORY[0x19A905BE0](0, v9, v5, v14);
      _Block_release(v14);

      (*(v19 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

unint64_t sub_19A6A7AC4()
{
  result = qword_1ED8B20A0;
  if (!qword_1ED8B20A0)
  {
    sub_19A7AA764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B20A0);
  }

  return result;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

uint64_t sub_19A6A7CB8()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCDC40);
  __swift_project_value_buffer(v0, qword_1EAFCDC40);
  return sub_19A7A9374();
}

uint64_t sub_19A6A7E6C()
{
  if (*v0)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x696A6F6D65;
  }
}

uint64_t sub_19A6A7E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
  if (v6 || (sub_19A7AC064() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A7AC064();

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

uint64_t sub_19A6A7F6C(uint64_t a1)
{
  v2 = sub_19A6AA30C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A6A7FA8(uint64_t a1)
{
  v2 = sub_19A6AA30C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A6A801C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDC98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6AA30C();
  sub_19A7AC1D4();
  v8[15] = 0;

  sub_19A7ABFB4();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v8[14] = 1;
    sub_19A7ABFD4();
    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_19A6A81D0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDC88);
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = &v1[OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult_emoji];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult_index;
  *&v1[OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult_index] = 0;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6AA30C();
  v11 = v19;
  sub_19A7AC1C4();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v9;
    v13 = v17;
    v12 = v18;
    v21 = 0;
    *v8 = sub_19A7ABF34();
    v8[1] = v14;

    v21 = 1;
    *&v2[v19] = sub_19A7ABF54();
    v20.receiver = v2;
    v20.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v20, sel_init);
    (*(v13 + 8))(v7, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t sub_19A6A8514()
{
  if (*v0)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x72656B63697473;
  }
}

uint64_t sub_19A6A854C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656B63697473 && a2 == 0xE700000000000000;
  if (v6 || (sub_19A7AC064() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A7AC064();

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

uint64_t sub_19A6A8624(uint64_t a1)
{
  v2 = sub_19A6AA360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A6A8660(uint64_t a1)
{
  v2 = sub_19A6AA360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A6A86D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDCB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6AA360();
  sub_19A7AC1D4();
  v11 = *(v3 + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_sticker);
  v10[7] = 0;
  sub_19A7AAF14();
  sub_19A6AA3B4(&qword_1EAFCA600);
  sub_19A7ABFA4();
  if (!v2)
  {
    v10[6] = 1;
    sub_19A7ABFD4();
  }

  return (*(v6 + 8))(v8, v5);
}

char *sub_19A6A889C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDCA0);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_sticker;
  *(v1 + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_sticker) = 0;
  v8 = OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_index;
  *(v1 + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_index) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6AA360();
  v20 = v6;
  v9 = v22;
  v10 = ObjectType;
  sub_19A7AC1C4();
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v8;
    v18 = a1;
    v22 = v7;
    v11 = v19;
    sub_19A7AAF14();
    v24 = 0;
    sub_19A6AA3B4(&unk_1EAFCA5F0);
    v12 = v21;
    v13 = v20;
    sub_19A7ABF24();
    v14 = *&v22[v2];
    *&v22[v2] = v25;

    LOBYTE(v25) = 1;
    *(v2 + v17) = sub_19A7ABF54();
    v23.receiver = v2;
    v23.super_class = v10;
    v7 = objc_msgSendSuper2(&v23, sel_init);
    (*(v11 + 8))(v13, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return v7;
}

uint64_t sub_19A6A8B54@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_19A6A8BE4()
{
  sub_19A7AC184();
  sub_19A7AB0B4();

  return sub_19A7AC1B4();
}

uint64_t sub_19A6A8CCC()
{
  sub_19A7AB0B4();
}

uint64_t sub_19A6A8DA0()
{
  sub_19A7AC184();
  sub_19A7AB0B4();

  return sub_19A7AC1B4();
}

uint64_t sub_19A6A8E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A6AA400();
  *a1 = result;
  return result;
}

void sub_19A6A8EB4(uint64_t *a1@<X8>)
{
  v2 = 0xEF7475706E496465;
  v3 = 0x696669646F6D6E75;
  v4 = 0xED00007367616C46;
  v5 = 0x7265696669646F6DLL;
  if (*v1 != 2)
  {
    v5 = 0x65646F4379656BLL;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6465696669646F6DLL;
    v2 = 0xED00007475706E49;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_19A6A8F58()
{
  v1 = 0x696669646F6D6E75;
  v2 = 0x7265696669646F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x65646F4379656BLL;
  }

  if (*v0)
  {
    v1 = 0x6465696669646F6DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A6A8FF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A6AA400();
  *a1 = result;
  return result;
}

uint64_t sub_19A6A902C(uint64_t a1)
{
  v2 = sub_19A6AA908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A6A9068(uint64_t a1)
{
  v2 = sub_19A6AA908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A6A90A4(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDD00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6AA908();
  sub_19A7AC1D4();
  v9 = [a2 unmodifiedInput];
  if (v9)
  {
    v10 = v9;
    v11 = sub_19A7AB014();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v23 = v11;
  v24 = v13;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0);
  sub_19A6AA95C();
  sub_19A7ABFE4();

  if (!v2)
  {
    v14 = [a2 modifiedInput];
    if (v14)
    {
      v22 = v6;
      v15 = a2;
      v16 = v14;
      v17 = sub_19A7AB014();
      v19 = v18;

      a2 = v15;
      v6 = v22;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v23 = v17;
    v24 = v19;
    v25 = 1;
    sub_19A7ABFE4();

    [a2 modifierFlags];
    LOBYTE(v23) = 2;
    sub_19A7ABFD4();
    [a2 keyCode];
    LOBYTE(v23) = 3;
    sub_19A7ABFD4();
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_19A6A9348@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_19A6AA44C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_19A6A9390(void *a1)
{
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 delegate])
  {
    return;
  }

  v28 = &unk_1F0E1CD18;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = v7;
  v9 = [v1 info];
  if (!v9)
  {
    swift_unknownObjectRelease();
    v26 = 0u;
    v27 = 0u;
LABEL_17:
    sub_19A612E20(&v26);
    return;
  }

  v10 = v9;
  v11 = [v9 objectForSetting_];

  if (v11)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (v24 <= 1)
  {
    if (v24)
    {
      if (v24 == 1)
      {
        v12 = sub_19A6E39A4(1);
        if (v12)
        {
          v13 = *(v12 + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_sticker);
          if (v13)
          {
            v14 = v12;
            v15 = v13;
            sub_19A7A9074();
            v16 = sub_19A7A9014();
            (*(v4 + 8))(v6, v3);
            [v8 didSelectSticker:v15 indexPath:v16];

            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }
    }

    else
    {
      v19 = sub_19A6E3618(0);
      if (v19)
      {
        v20 = v19;

        v21 = sub_19A7AAFE4();

        sub_19A7A9074();
        v22 = sub_19A7A9014();
        (*(v4 + 8))(v6, v3);
        [v8 didSelectEmoji:v21 indexPath:v22];
      }
    }

    goto LABEL_27;
  }

  if (v24 == 2)
  {
    v23 = sub_19A6EAF00(0);
    if (v23 != 2)
    {
      [v8 toggleGlow_];
    }

    goto LABEL_27;
  }

  if (v24 != 3 || (v17 = sub_19A6E3D30(0)) == 0)
  {
LABEL_27:
    swift_unknownObjectRelease();
    return;
  }

  if (*(v17 + 16))
  {

    v18 = sub_19A7AAFE4();
  }

  else
  {

    v18 = 0;
  }

  [v8 didRequestEmojiCreationWithSearchString_];
  swift_unknownObjectRelease();
}

void sub_19A6A9944(void *a1)
{
  if ([a1 delegate])
  {
    v33 = &unk_1F0E30DD8;
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (!v2)
    {
LABEL_42:
      swift_unknownObjectRelease();
      return;
    }

    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 window];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 rootViewController];

        if (v6)
        {
          type metadata accessor for StickerSearchViewController();
          if (swift_dynamicCastClass())
          {
            v7 = [v1 info];
            if (v7)
            {
              v8 = v7;
              v9 = [v7 objectForSetting_];

              if (v9)
              {
                sub_19A7ABB44();
                swift_unknownObjectRelease();
              }

              else
              {
                v29 = 0u;
                v30 = 0u;
              }

              v31 = v29;
              v32 = v30;
              if (*(&v30 + 1))
              {
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_55;
                }

                if (v29)
                {
                  if (v29 != 1)
                  {
                    if (v29 == 2)
                    {
                      if (qword_1EAFCB598 != -1)
                      {
                        swift_once();
                      }

                      v17 = sub_19A7A9384();
                      __swift_project_value_buffer(v17, qword_1EAFCDC40);
                      v18 = sub_19A7A9364();
                      v19 = sub_19A7AB584();
                      if (!os_log_type_enabled(v18, v19))
                      {
                        goto LABEL_51;
                      }

                      v20 = swift_slowAlloc();
                      *v20 = 0;
                      v21 = "Performing unsupported action on StickerSearchViewController";
LABEL_50:
                      _os_log_impl(&dword_19A5EE000, v18, v19, v21, v20, 2u);
                      MEMORY[0x19A907A30](v20, -1, -1);
LABEL_51:
                      swift_unknownObjectRelease();

                      return;
                    }

                    goto LABEL_55;
                  }

                  v23 = sub_19A6E4458(0);
                  if (v23)
                  {
                    v24 = v23;
                    sub_19A6B43C4(v23);

                    goto LABEL_42;
                  }

LABEL_55:
                  swift_unknownObjectRelease();

                  return;
                }

                v25 = sub_19A6E40CC(0);
                if (!v25)
                {
                  goto LABEL_55;
                }

                v26 = v25;
                sub_19A6B4F04(v25);
LABEL_54:

                goto LABEL_55;
              }

LABEL_38:
              swift_unknownObjectRelease();

              goto LABEL_39;
            }

            goto LABEL_18;
          }
        }
      }
    }

    if (([v3 respondsToSelector_] & 1) == 0)
    {
      goto LABEL_42;
    }

    v10 = [v3 window];
    if (!v10)
    {
      goto LABEL_42;
    }

    v11 = v10;
    v6 = [v10 rootViewController];

    if (!v6)
    {
      goto LABEL_42;
    }

    type metadata accessor for LocalEmojiAndStickerCollectionViewController(0);
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      goto LABEL_55;
    }

    v13 = v12;
    v14 = [v1 info];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 objectForSetting_];

      if (v16)
      {
        sub_19A7ABB44();
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
      }

      v31 = v29;
      v32 = v30;
      if (*(&v30 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_55;
        }

        if (v29)
        {
          if (v29 == 1)
          {
            if (qword_1EAFCB598 != -1)
            {
              swift_once();
            }

            v27 = sub_19A7A9384();
            __swift_project_value_buffer(v27, qword_1EAFCDC40);
            v18 = sub_19A7A9364();
            v19 = sub_19A7AB584();
            if (!os_log_type_enabled(v18, v19))
            {
              goto LABEL_51;
            }

            v20 = swift_slowAlloc();
            *v20 = 0;
            v21 = "Performing unsupported action on LocalEmojiAndStickerCollectionViewController";
            goto LABEL_50;
          }

          if (v29 == 2)
          {
            v22 = sub_19A6E47E4(0);
            if (v22)
            {
              v18 = v22;
              if (*(v13 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_uiEmojiAndStickerCollectionViewController))
              {
                [swift_unknownObjectRetain() handleKeyEvent_];
                swift_unknownObjectRelease();
              }

              goto LABEL_51;
            }
          }

          goto LABEL_55;
        }

        v28 = sub_19A6E40CC(0);
        if (!v28)
        {
          goto LABEL_55;
        }

        v26 = v28;
        sub_19A79F5C0(v28);
        goto LABEL_54;
      }

      goto LABEL_38;
    }

LABEL_18:
    swift_unknownObjectRelease();

    v31 = 0u;
    v32 = 0u;
LABEL_39:
    sub_19A612E20(&v31);
  }
}

id sub_19A6A9EBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8.receiver = a1;
  v8.super_class = a5();
  return objc_msgSendSuper2(&v8, sel_initWithInfo_responder_, a3, a4);
}

id sub_19A6A9F30(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_19A6A9F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7.receiver = a1;
  v7.super_class = a4();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v7, sel_initWithXPCDictionary_, a3);
  swift_unknownObjectRelease();
  if (v5)
  {
  }

  return v5;
}

id sub_19A6AA01C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_19A6AA0B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), double a7)
{
  v12 = a1;
  if (a3)
  {
    v17[4] = a3;
    v17[5] = a4;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_19A6DB1A8;
    v17[3] = a5;
    v13 = _Block_copy(v17);
  }

  else
  {
    v13 = 0;
  }

  v14 = a6(a1);
  v18.receiver = v7;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, v12, a2, v13, a7);
  sub_19A60126C(a3);

  _Block_release(v13);
  return v15;
}

id sub_19A6AA2B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_19A6AA30C()
{
  result = qword_1EAFCDC90;
  if (!qword_1EAFCDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDC90);
  }

  return result;
}

unint64_t sub_19A6AA360()
{
  result = qword_1EAFCDCA8;
  if (!qword_1EAFCDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDCA8);
  }

  return result;
}

uint64_t sub_19A6AA3B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19A7AAF14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A6AA400()
{
  v0 = sub_19A7ABEC4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_19A6AA44C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDCF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCB98]) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6AA908();
  sub_19A7AC1C4();
  if (v1)
  {
  }

  else
  {
    v15 = 0;
    sub_19A7ABF34();
    v8 = sub_19A7AAFE4();

    [v7 _setUnmodifiedInput_];

    v14 = 1;
    sub_19A7ABF34();
    v9 = sub_19A7AAFE4();

    [v7 _setModifiedInput_];

    v13 = 2;
    [v7 _setModifierFlags_];
    v12 = 3;
    [v7 _setKeyCode_];
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_19A6AA6FC()
{
  result = qword_1EAFCDCC0;
  if (!qword_1EAFCDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDCC0);
  }

  return result;
}

unint64_t sub_19A6AA754()
{
  result = qword_1EAFCDCC8;
  if (!qword_1EAFCDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDCC8);
  }

  return result;
}

unint64_t sub_19A6AA7AC()
{
  result = qword_1EAFCDCD0;
  if (!qword_1EAFCDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDCD0);
  }

  return result;
}

unint64_t sub_19A6AA804()
{
  result = qword_1EAFCDCD8;
  if (!qword_1EAFCDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDCD8);
  }

  return result;
}

unint64_t sub_19A6AA85C()
{
  result = qword_1EAFCDCE0;
  if (!qword_1EAFCDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDCE0);
  }

  return result;
}

unint64_t sub_19A6AA8B4()
{
  result = qword_1EAFCDCE8;
  if (!qword_1EAFCDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDCE8);
  }

  return result;
}

unint64_t sub_19A6AA908()
{
  result = qword_1EAFCDCF8;
  if (!qword_1EAFCDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDCF8);
  }

  return result;
}

unint64_t sub_19A6AA95C()
{
  result = qword_1EAFCDD10;
  if (!qword_1EAFCDD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAFCEEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDD10);
  }

  return result;
}

unint64_t sub_19A6AA9EC()
{
  result = qword_1EAFCDD18;
  if (!qword_1EAFCDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDD18);
  }

  return result;
}

unint64_t sub_19A6AAA44()
{
  result = qword_1EAFCDD20;
  if (!qword_1EAFCDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDD20);
  }

  return result;
}

unint64_t sub_19A6AAA9C()
{
  result = qword_1EAFCDD28;
  if (!qword_1EAFCDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDD28);
  }

  return result;
}

uint64_t sub_19A6AAB18()
{
  sub_19A6BABA8();
  sub_19A7A9B44();
  return v1;
}

double sub_19A6AAB54@<D0>(_OWORD *a1@<X8>)
{
  sub_19A6BABA8();
  sub_19A7A9B44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19A6AABA4()
{
  sub_19A6BABA8();

  return sub_19A7A9B54();
}

uint64_t sub_19A6AAC04()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCAA98);
  __swift_project_value_buffer(v0, qword_1EAFCAA98);
  return sub_19A7A9374();
}

uint64_t sub_19A6AAC84@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v40) = a2;
  v42 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE178);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v32 - v4;
  v6 = sub_19A7A99C4();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A7A9B74();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE180);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE188);
  v38 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v35 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE190);
  MEMORY[0x1EEE9AC00](v41);
  v20 = &v32 - v19;
  if (v40)
  {
    sub_19A7A9B64();
    sub_19A7AA744();
    sub_19A7A99D4();
    v21 = sub_19A6BA204(&qword_1EAFCE1C0, MEMORY[0x1E697F260]);
    v33 = v5;
    v22 = v21;
    v23 = sub_19A6BA204(&qword_1EAFCE1C8, MEMORY[0x1E697E898]);
    v40 = a3;
    v24 = v23;
    sub_19A7A9774();
    (*(v36 + 8))(v8, v6);
    (*(v34 + 8))(v11, v9);
    sub_19A7AA6D4();
    sub_19A7AA694();

    v44 = v9;
    v45 = v6;
    v46 = v22;
    v47 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = v39;
    sub_19A7A9784();

    (*(v37 + 8))(v13, v26);
    v27 = v38;
    (*(v38 + 16))(v35, v18, v14);
    v44 = v26;
    v45 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v28 = sub_19A7A9884();
    (*(v27 + 8))(v18, v14);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE198);
    (*(*(v29 - 8) + 16))(v20, v42, v29);
    *&v20[*(v41 + 36)] = v28;
    sub_19A60F0CC(v20, v33, &qword_1EAFCE190);
    swift_storeEnumTagMultiPayload();
    sub_19A6BB988();
    sub_19A623714(&qword_1EAFCE1A8, &qword_1EAFCE198);
    sub_19A7A9D64();
    return sub_19A5F2B54(v20, &qword_1EAFCE190);
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE198);
    (*(*(v31 - 8) + 16))(v5, v42, v31);
    swift_storeEnumTagMultiPayload();
    sub_19A6BB988();
    sub_19A623714(&qword_1EAFCE1A8, &qword_1EAFCE198);
    return sub_19A7A9D64();
  }
}

uint64_t sub_19A6AB360(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - v4;
  if (a2 < 0)
  {
    sub_19A60F0CC((a2 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___STKImageGlyph_stickerUUID, v5, &qword_1EAFCD800);
    v7 = sub_19A7A8F64();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v5, 1, v7);
    v10 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 == 1)
    {
      sub_19A5F2B54(v5, &qword_1EAFCD800);
      v6 = 0;
    }

    else
    {
      v6 = sub_19A7A8F14();
      (*(v8 + 8))(v5, v7);
    }
  }

  else
  {
    swift_getKeyPath();
    v12[1] = a2;
    sub_19A6BA204(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);

    sub_19A7A90C4();

    v6 = *(a2 + 56);
  }

  sub_19A6B9BA8(a2);
  return v6;
}

uint64_t sub_19A6AB558()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  return v1;
}

uint64_t sub_19A6AB5CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19A6AB360(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_19A6AB620()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  return v1;
}

uint64_t sub_19A6AB68C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  return v1;
}

uint64_t sub_19A6AB700()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  return v1;
}

double sub_19A6AB788()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  return v1;
}

uint64_t sub_19A6AB810()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  return v1;
}

uint64_t sub_19A6AB87C()
{
  v1 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel____lazy_storage___recencyService;
  if (*(v0 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel____lazy_storage___recencyService))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel____lazy_storage___recencyService);
  }

  else
  {
    sub_19A7AAB34();
    v2 = sub_19A7AAB24();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_19A6AB8EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE050);
  v131 = *(v1 - 8);
  v132 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v130 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v129 = &v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE058);
  v6 = *(v5 - 8);
  v127 = v5;
  v128 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v88 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE060);
  v125 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v116 = &v88 - v8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE068);
  v126 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v88 - v9;
  v109 = sub_19A7AB754();
  v112 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = &v88 - v12;
  v107 = sub_19A7AB744();
  v110 = *(v107 - 8);
  v111 = *(v110 + 64);
  v13 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v135 = &v88 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE078);
  v133 = *(v103 - 1);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v88 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE080);
  v115 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v88 - v17;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE088);
  v118 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v88 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE090);
  v120 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v114 = &v88 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE028);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v88 - v20;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCF540);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v88 - v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE020);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v88 - v22;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF530);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v24 = &v88 - v23;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE018);
  v25 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v27 = &v88 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE010);
  v28 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v30 = &v88 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB50);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v88 - v33;
  *(v0 + 16) = 0x3FC3333333333333;
  v35 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__queryCounter;
  v138 = 0;
  sub_19A7A9664();
  v36 = v0 + v35;
  v37 = v0;
  (*(v32 + 32))(v36, v34, v31);
  v38 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__results;
  v138 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE48);
  sub_19A7A9664();
  (*(v28 + 32))(v37 + v38, v30, v88);
  v40 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__debouncedResults;
  v104 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__debouncedResults;
  v138 = v39;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE50);
  sub_19A7A9664();
  (*(v25 + 32))(v37 + v40, v27, v134);
  v41 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__searchString;
  v138 = 0;
  v139 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0);
  sub_19A7A9664();
  (*(v89 + 32))(v37 + v41, v24, v90);
  v42 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__configuration;
  v138 = [objc_allocWithZone(type metadata accessor for StickerSearchConfiguration()) init];
  v43 = v91;
  sub_19A7A9664();
  (*(v92 + 32))(v37 + v42, v43, v93);
  v44 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__enableAnimations;
  LOBYTE(v138) = 1;
  v45 = v94;
  sub_19A7A9664();
  v46 = *(v95 + 32);
  v47 = v96;
  v46(v37 + v44, v45, v96);
  v48 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__size;
  type metadata accessor for CGSize(0);
  v138 = 0;
  v139 = 0;
  v49 = v97;
  sub_19A7A9664();
  (*(v99 + 32))(v37 + v48, v49, v100);
  v50 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__shouldShowGenmojiButton;
  LOBYTE(v138) = 0;
  sub_19A7A9664();
  v46(v37 + v50, v45, v47);
  *(v37 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_searchRanAtLeastOnce) = 0;
  v51 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_generatedStickers;
  *(v37 + v51) = sub_19A69D390(MEMORY[0x1E69E7CC0]);
  v52 = (v37 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectEmoji);
  *v52 = 0;
  v52[1] = 0;
  v53 = (v37 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectSticker);
  *v53 = 0;
  v53[1] = 0;
  v54 = (v37 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didRequestEmojiGeneration);
  *v54 = 0;
  v54[1] = 0;
  *(v37 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel____lazy_storage___recencyService) = 0;
  v98 = v37;
  swift_beginAccess();
  v55 = v101;
  sub_19A7A9674();
  swift_endAccess();
  sub_19A623714(&qword_1EAFCA888, &qword_1EAFCE078);
  v100 = sub_19A6BADF8();
  v56 = v103;
  sub_19A7A9714();
  (*(v133 + 8))(v55, v56);
  v57 = v135;
  sub_19A7AB734();
  v101 = sub_19A5F5028(0, &qword_1ED8B2040);
  v58 = sub_19A7AB794();
  v59 = sub_19A7AB724();
  v60 = v105;
  (*(*(v59 - 8) + 56))(v105, 1, 1, v59);
  v138 = v58;
  v61 = v109;
  v133 = swift_allocBox();
  v62 = v108;
  sub_19A7AB784();
  sub_19A6BA204(&qword_1EAFCA4F8, MEMORY[0x1E69E8060]);
  v63 = v106;
  v64 = v107;
  sub_19A7ABD34();
  sub_19A6BA204(&qword_1EAFCA4F0, MEMORY[0x1E69E8080]);
  sub_19A7ABAC4();
  v65 = v110;
  v103 = *(v110 + 8);
  (v103)(v63, v64);
  (*(v112 + 8))(v62, v61);
  v66 = v57;
  v67 = v64;
  (*(v65 + 16))(v63, v66, v64);
  v68 = v65;
  v69 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = v133;
  *(v70 + 24) = v58;
  (*(v68 + 32))(v70 + v69, v63, v64);
  v112 = MEMORY[0x1E695BD38];
  sub_19A623714(&qword_1EAFCA8B8, &qword_1EAFCE080);

  v111 = v58;
  v71 = v116;
  v72 = v136;
  sub_19A7A96F4();

  sub_19A6BAF34();
  v73 = v122;
  v74 = v60;
  sub_19A7A9704();
  sub_19A623714(&qword_1EAFCA898, &qword_1EAFCE060);
  sub_19A623714(&qword_1EAFCA890, &qword_1EAFCE058);
  v75 = v121;
  v76 = v123;
  v77 = v127;
  sub_19A7A96E4();
  (*(v128 + 8))(v73, v77);
  (*(v125 + 8))(v71, v76);
  sub_19A623714(&qword_1EAFCA8A0, &qword_1EAFCE068);
  v78 = v113;
  v79 = v124;
  sub_19A7A9714();

  (*(v126 + 8))(v75, v79);
  sub_19A5F2B54(v74, &qword_1EAFCE070);
  (v103)(v135, v67);
  (*(v115 + 8))(v72, v137);

  swift_allocObject();
  v80 = v98;
  swift_weakInit();
  sub_19A623714(&qword_1EAFCA8B0, &qword_1EAFCE088);
  v81 = v114;
  v82 = v117;
  sub_19A7A96D4();

  (*(v118 + 8))(v78, v82);
  swift_beginAccess();
  v83 = v129;
  sub_19A7A9674();
  swift_endAccess();
  sub_19A623714(&qword_1EAFCA8A8, &qword_1EAFCE090);
  v84 = v119;
  sub_19A7A9734();
  (*(v120 + 8))(v81, v84);
  v85 = v131;
  v86 = v132;
  (*(v131 + 16))(v130, v83, v132);
  swift_beginAccess();
  sub_19A7A9684();
  swift_endAccess();
  (*(v85 + 8))(v83, v86);
  return v80;
}

uint64_t sub_19A6ACD10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v4 = *(v3 + 16);
  if (v4)
  {
    v38 = a2;
    v62 = MEMORY[0x1E69E7CC0];
    sub_19A65AE2C(0, v4, 0);
    v5 = *(v3 + 16);
    v6 = v62;
    result = swift_beginAccess();
    v44 = v5;
    if (v5)
    {
      v8 = 0;
      v9 = (v3 + 80);
      v45 = v4 - 1;
      v46 = v3;
      do
      {
        if (v8 >= *(v3 + 16))
        {
          goto LABEL_51;
        }

        v50 = v6;
        v10 = *(v9 - 6);
        v11 = *(v9 - 5);
        v12 = *(v9 - 4);
        v13 = *(v9 - 3);
        v14 = *(v9 - 2);
        v15 = *(v9 - 1);
        v16 = *v9;
        v55 = v8;
        *&v56 = v10;
        *(&v56 + 1) = v11;
        *&v57 = v12;
        *(&v57 + 1) = v13;
        *&v58 = v14;
        *(&v58 + 1) = v15;
        v59 = v16;
        v60[0] = v8;
        v60[1] = v10;
        v60[2] = v11;
        v60[3] = v12;
        v60[4] = v13;
        v60[5] = v14;
        v60[6] = v15;
        v61 = v16;
        sub_19A6BAFA4(v10, v11, v12, v13, v14, v15, v16);
        sub_19A6BAFA4(v10, v11, v12, v13, v14, v15, v16);
        result = sub_19A5F2B54(v60, &qword_1EAFCE098);
        v18 = v55;
        v17 = v56;
        v19 = v59;
        if (v59 < 0)
        {
          v22 = v56 | 0x8000000000000000;
          v3 = v46;
          v6 = v50;
          goto LABEL_42;
        }

        v49 = v55;
        v21 = *(&v56 + 1);
        v20 = v57;
        v63 = v56;
        v64 = v57;
        v48 = *(&v57 + 1);
        v42 = v58;
        v65 = v58;
        v40 = *(&v58 + 1);
        v66 = v59 & 0x1FF;
        type metadata accessor for EmojiCellViewModel();
        v22 = swift_allocObject();
        *(v22 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v22 + 32) = 0;
        *(v22 + 40) = 256;
        *(v22 + 48) = 0x4043000000000000;
        sub_19A60F0CC(&v55, v53, &qword_1EAFCE098);
        if (qword_1EAFCADC8 != -1)
        {
          swift_once();
        }

        v23 = *&qword_1EAFDD5E0;
        v53[0] = xmmword_1EAFDD5D0;
        v53[1] = *&qword_1EAFDD5E0;
        v24 = xmmword_1EAFDD5F0;
        v53[2] = xmmword_1EAFDD5F0;
        v25 = word_1EAFDD600;
        v54 = word_1EAFDD600;
        *(v22 + 56) = xmmword_1EAFDD5D0;
        *(v22 + 72) = v23;
        *(v22 + 88) = v24;
        *(v22 + 104) = v25;
        *(v22 + 112) = 0u;
        *(v22 + 128) = 0u;
        sub_19A60F01C(v53, v51);
        sub_19A7A90F4();
        v27 = *(v22 + 72);
        v26 = *(v22 + 80);
        v41 = *(v22 + 88);
        v39 = *(v22 + 96);
        v47 = *(v22 + 104);
        v43 = *(v22 + 105);
        if (*(v22 + 56) == v17 && v21 == *(v22 + 64) || (sub_19A7AC064()) && (v27 == v20 && v48 == v26 || (sub_19A7AC064()))
        {
          if (v47 <= 0xFD)
          {
            if (v19 >= 0xFEu)
            {
              goto LABEL_33;
            }

            if ((v47 & 0x80) != 0)
            {
              if ((v19 & 0x80) == 0 || !sub_19A72AA08(v41, v42) || (sub_19A72AB08(v39, v40) & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              if ((v19 & 0x80) != 0 || (sub_19A72AB7C(v41, v42) & 1) == 0)
              {
                goto LABEL_33;
              }

              if (v47)
              {
                if ((v19 & 1) == 0)
                {
                  goto LABEL_33;
                }
              }

              else if ((v19 & 1) != 0 || v39 != v40)
              {
                goto LABEL_33;
              }
            }
          }

          else if (v19 < 0xFEu)
          {
            goto LABEL_33;
          }

          if (((v43 ^ ((v19 & 0xFF00) >> 8)) & 1) == 0)
          {
            v28 = *(v22 + 72);
            v51[0] = *(v22 + 56);
            v51[1] = v28;
            v51[2] = *(v22 + 88);
            v29 = v64;
            *(v22 + 56) = v63;
            v52 = *(v22 + 104);
            *(v22 + 72) = v29;
            *(v22 + 88) = v65;
            *(v22 + 104) = v66;
            sub_19A60F078(v51);
            sub_19A63EB60();
            v30 = *(v22 + 120);
            if (!v30)
            {
              goto LABEL_38;
            }

            goto LABEL_34;
          }
        }

LABEL_33:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *&v51[0] = v22;
        sub_19A6BA204(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
        sub_19A7A90B4();
        sub_19A5F2B54(&v55, &qword_1EAFCE098);

        v30 = *(v22 + 120);
        if (!v30)
        {
          goto LABEL_38;
        }

LABEL_34:
        if ((*(v22 + 112) != 0x616553696A6F6D45 || v30 != 0xEB00000000686372) && (sub_19A7AC064() & 1) == 0)
        {
LABEL_38:
          v32 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v32);
          *&v51[0] = v22;
          sub_19A6BA204(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
          sub_19A7A90B4();

          goto LABEL_39;
        }

        *(v22 + 112) = xmmword_19A7BC7D0;

LABEL_39:
        v3 = v46;
        Strong = swift_weakLoadStrong();
        v34 = &off_1F0DC93E8;
        if (!Strong)
        {
          v34 = 0;
        }

        *(v22 + 24) = v34;
        swift_unknownObjectWeakAssign();

        result = sub_19A5F2B54(&v55, &qword_1EAFCE098);
        v6 = v50;
        v18 = v49;
LABEL_42:
        v62 = v6;
        v36 = *(v6 + 16);
        v35 = *(v6 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_19A65AE2C((v35 > 1), v36 + 1, 1);
          v6 = v62;
        }

        *(v6 + 16) = v36 + 1;
        v37 = v6 + 16 * v36;
        *(v37 + 32) = v18;
        *(v37 + 40) = v22;
        if (v45 == v8)
        {

          a2 = v38;
          goto LABEL_49;
        }

        ++v8;
        v9 += 28;
      }

      while (v44 != v8);
    }

    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_49:
    result = swift_weakDestroy();
    *a2 = v6;
  }

  return result;
}

uint64_t sub_19A6AD460()
{
  v1 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__queryCounter;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__results;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE010);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__debouncedResults;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE018);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__searchString;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF530);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__configuration;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE020);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__enableAnimations;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCF540);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v14 = OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__size;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE028);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v13(v0 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel__shouldShowGenmojiButton, v12);

  sub_19A60126C(*(v0 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectEmoji));
  sub_19A60126C(*(v0 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectSticker));
  sub_19A60126C(*(v0 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didRequestEmojiGeneration));

  return v0;
}

uint64_t sub_19A6AD720()
{
  sub_19A6AD460();

  return swift_deallocClassInstance();
}

uint64_t sub_19A6AD774@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SearchViewModel(0);
  result = sub_19A7A9654();
  *a1 = result;
  return result;
}

uint64_t sub_19A6AD7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_19A7AB354();
  v6[6] = sub_19A7AB344();
  v8 = sub_19A7AB2E4();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_19A6AD850, v8, v7);
}

uint64_t sub_19A6AD850()
{
  v0[9] = sub_19A6AB87C();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_19A6AD8F8;
  v3 = v0[4];
  v2 = v0[5];

  return MEMORY[0x1EEE42808](v3, v2);
}

uint64_t sub_19A6AD8F8(double a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_19A6ADA94;
  }

  else
  {

    *(v4 + 96) = a1;
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_19A6ADA24;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_19A6ADA24()
{
  v1 = v0[12];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_19A6ADA94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A6ADB04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A7A9B34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  Button = type metadata accessor for CreateButton(0);
  sub_19A60F0CC(v1 + *(Button + 20), v9, &qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A97A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_19A7AB594();
    v13 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_19A6ADD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC900);
    sub_19A7AA534();
  }

  return result;
}

uint64_t sub_19A6ADDA4()
{
  v1 = sub_19A7A9E14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  sub_19A7A9E24();
  v10[15] = sub_19A7A9E34() & 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;
  sub_19A6BC234(v5, v6);
  sub_19A6BA204(&qword_1EAFCC7C8, MEMORY[0x1E697C8D0]);
  sub_19A7AA224();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_19A6ADF50@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  Button = type metadata accessor for CreateButton(0);
  v3 = Button - 8;
  v4 = *(Button - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](Button);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE0B8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE0C0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  sub_19A6BBC58(v1, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateButton);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_19A6BB920(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CreateButton);
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE0C8);
  sub_19A6BB6A4();
  sub_19A7AA4A4();
  sub_19A7AA654();
  sub_19A7A9A44();
  (*(v7 + 32))(v12, v9, v6);
  v15 = &v12[*(v10 + 36)];
  v16 = v32;
  *(v15 + 4) = v31;
  *(v15 + 5) = v16;
  *(v15 + 6) = v33;
  v17 = v28;
  *v15 = v27;
  *(v15 + 1) = v17;
  v18 = v30;
  *(v15 + 2) = v29;
  *(v15 + 3) = v18;
  v19 = v1 + *(v3 + 52);
  v20 = *v19;
  v21 = *(v19 + 8);
  v25 = v20;
  v26 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  sub_19A7AA484();
  sub_19A6BB814();
  sub_19A6BB8CC();
  sub_19A7AA0D4();

  return sub_19A5F2B54(v12, &qword_1EAFCE0C0);
}

void sub_19A6AE2E8(uint64_t a1)
{
  if (qword_1EAFCAD68 != -1)
  {
    swift_once();
  }

  if (qword_1EAFCA410 != -1)
  {
    swift_once();
  }

  sub_19A661F84(qword_1EAFDD4E0, 0xD000000000000016, 0x800000019A7C8FB0, 0, 0, 0, 0, 2, 0, 1, 0);
  v2 = *(*(a1 + 8) + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didRequestEmojiGeneration);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_19A7A96A4();

    if (v6)
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }

    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    v2(v3, v4);
    sub_19A60126C(v2);
  }
}

uint64_t sub_19A6AE470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_19A7A9BA4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE110) + 44));
  *v4 = sub_19A7AA654();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE118);
  sub_19A6AE578(a1, v4 + *(v6 + 44));
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE0E0) + 36)) = 0;
  LOBYTE(v4) = sub_19A7A9EF4();
  type metadata accessor for CreateButton(0);
  sub_19A7A9754();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE0C8);
  v16 = a2 + *(result + 36);
  *v16 = v4;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_19A6AE578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE120);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = (&v51 - v6);
  v7 = sub_19A7A97A4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v14 = sub_19A7A9A24();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE128);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v51 - v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE130) - 8;
  v21 = MEMORY[0x1EEE9AC00](v55);
  v56 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v53 = &v51 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v54 = &v51 - v25;
  Button = type metadata accessor for CreateButton(0);
  v27 = *(a1 + *(Button + 32));
  v28 = *(v15 + 28);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_19A7A9BC4();
  (*(*(v30 - 8) + 104))(&v17[v28], v29, v30);
  *v17 = v27;
  *(v17 + 1) = v27;
  v31 = a1;
  sub_19A6ADB04(v13);
  v32 = v11;
  (*(v8 + 104))(v11, *MEMORY[0x1E697DBB8], v7);
  LOBYTE(v11) = sub_19A7A9794();
  v33 = *(v8 + 8);
  v33(v32, v7);
  v33(v13, v7);
  v34 = 40;
  if (v11)
  {
    v34 = 36;
  }

  v35 = *(v31 + *(Button + v34));

  v36 = v52;
  sub_19A6BB920(v17, v52, MEMORY[0x1E697EAF0]);
  *(v36 + *(v19 + 44)) = v35;
  v37 = v31 + *(Button + 44);
  v38 = *v37;
  v39 = *(v37 + 8);
  v61 = v38;
  v62 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  sub_19A7AA464();
  if (v60)
  {
    v40 = 1.0;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v53;
  sub_19A62376C(v36, v53, &qword_1EAFCE128);
  v42 = v54;
  *(v41 + *(v55 + 44)) = v40;
  sub_19A62376C(v41, v42, &qword_1EAFCE130);
  v43 = sub_19A7A9BA4();
  v44 = v57;
  *v57 = v43;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE138);
  sub_19A6AEAE0(v31, v44 + *(v45 + 44));
  v46 = v56;
  sub_19A60F0CC(v42, v56, &qword_1EAFCE130);
  v47 = v58;
  sub_19A60F0CC(v44, v58, &qword_1EAFCE120);
  v48 = v59;
  sub_19A60F0CC(v46, v59, &qword_1EAFCE130);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE140);
  sub_19A60F0CC(v47, v48 + *(v49 + 48), &qword_1EAFCE120);
  sub_19A5F2B54(v44, &qword_1EAFCE120);
  sub_19A5F2B54(v42, &qword_1EAFCE130);
  sub_19A5F2B54(v47, &qword_1EAFCE120);
  return sub_19A5F2B54(v46, &qword_1EAFCE130);
}

uint64_t sub_19A6AEAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v93 = sub_19A7A97A4();
  v83 = *(v93 - 8);
  v3 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD1A8);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v77 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE148) - 8;
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v77 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE150) - 8;
  v11 = MEMORY[0x1EEE9AC00](v85);
  v95 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v84 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC670);
  v17 = v16 - 8;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v88 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE158);
  v23 = v22 - 8;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v94 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v98 = &v77 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v89 = &v77 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v90 = &v77 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v77 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v77 - v35;
  sub_19A7AA574();
  Button = type metadata accessor for CreateButton(0);
  v82 = *(a1 + *(Button + 28));
  sub_19A7AA654();
  sub_19A7A9864();
  v38 = &v21[*(v17 + 44)];
  v39 = v103;
  *v38 = v102;
  *(v38 + 1) = v39;
  *(v38 + 2) = v104;
  v40 = (a1 + *(Button + 44));
  v81 = *v40;
  v80 = *(v40 + 1);
  LOBYTE(v105) = v81;
  *(&v105 + 1) = v80;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  sub_19A7AA464();
  v41 = 1.0;
  if (v100)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = 1.0;
  }

  sub_19A62376C(v21, v34, &qword_1EAFCC670);
  *&v34[*(v23 + 44)] = v42;
  v78 = v36;
  sub_19A62376C(v34, v36, &qword_1EAFCE158);
  v43 = sub_19A7AB0A4();
  v45 = v44;
  v46 = &v9[*(v7 + 44)];
  *v46 = 1;
  *(v46 + 1) = 0;
  v100 = 0;
  sub_19A7AA454();
  v47 = *(&v105 + 1);
  v46[16] = v105;
  *(v46 + 3) = v47;
  v48 = *(type metadata accessor for IntelligenceLightEffect(0) + 32);
  *&v46[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  swift_storeEnumTagMultiPayload();
  *v9 = v43;
  *(v9 + 1) = v45;
  v9[16] = 0;
  *(v9 + 3) = MEMORY[0x1E69E7CC0];
  v49 = v87;
  sub_19A6ADB04(v87);
  v50 = v83;
  v51 = v92;
  v52 = v93;
  (*(v83 + 104))(v92, *MEMORY[0x1E697DBB8], v93);
  LOBYTE(v43) = sub_19A7A9794();
  v53 = *(v50 + 8);
  v53(v51, v52);
  v53(v49, v52);
  if (v43)
  {
    v54 = -0.2;
  }

  else
  {
    v54 = 0.2;
  }

  v55 = v86;
  sub_19A62376C(v9, v86, &qword_1EAFCD1A8);
  *(v55 + *(v91 + 44)) = v54;
  v56 = v84;
  v57 = &v84[*(v85 + 44)];
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE160) + 28);
  sub_19A7AA364();
  v59 = sub_19A7AA374();
  (*(*(v59 - 8) + 56))(v57 + v58, 0, 1, v59);
  *v57 = swift_getKeyPath();
  sub_19A62376C(v55, v56, &qword_1EAFCE148);
  v60 = v97;
  sub_19A62376C(v56, v97, &qword_1EAFCE150);
  v61 = v88;
  sub_19A7AA574();
  sub_19A7AA654();
  sub_19A7A9864();
  v62 = (v61 + *(v17 + 44));
  v63 = v106;
  *v62 = v105;
  v62[1] = v63;
  v62[2] = v107;
  v100 = v81;
  v101 = v80;
  sub_19A7AA464();
  if (v99)
  {
    v41 = 0.0;
  }

  v64 = v89;
  sub_19A62376C(v61, v89, &qword_1EAFCC670);
  *(v64 + *(v23 + 44)) = v41;
  v65 = v90;
  sub_19A62376C(v64, v90, &qword_1EAFCE158);
  v66 = v98;
  sub_19A60F0CC(v36, v98, &qword_1EAFCE158);
  v67 = v60;
  v68 = v95;
  sub_19A60F0CC(v67, v95, &qword_1EAFCE150);
  v69 = v65;
  v70 = v65;
  v71 = v94;
  sub_19A60F0CC(v69, v94, &qword_1EAFCE158);
  v72 = v96;
  sub_19A60F0CC(v66, v96, &qword_1EAFCE158);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE168);
  v74 = v72 + v73[12];
  *v74 = 0;
  *(v74 + 8) = 1;
  sub_19A60F0CC(v68, v72 + v73[16], &qword_1EAFCE150);
  v75 = v72 + v73[20];
  *v75 = 0;
  *(v75 + 8) = 1;
  sub_19A60F0CC(v71, v72 + v73[24], &qword_1EAFCE158);
  sub_19A5F2B54(v70, &qword_1EAFCE158);
  sub_19A5F2B54(v97, &qword_1EAFCE150);
  sub_19A5F2B54(v78, &qword_1EAFCE158);
  sub_19A5F2B54(v71, &qword_1EAFCE158);
  sub_19A5F2B54(v68, &qword_1EAFCE150);
  return sub_19A5F2B54(v98, &qword_1EAFCE158);
}

uint64_t sub_19A6AF474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a1;
  v43 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDFD0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v37 - v7);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDFC8);
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDFF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDFF8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v37 - v15);
  if (a2 < 0)
  {
    v38 = a2 & 0x7FFFFFFFFFFFFFFFLL;
    v21 = swift_allocObject();
    v39 = v12;
    v22 = *(v4 + 16);
    *(v21 + 16) = *v4;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(v4 + 32);
    *(v21 + 56) = a2 & 0x7FFFFFFFFFFFFFFFLL;
    *(v21 + 64) = v40;
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v24 = type metadata accessor for StickerCell();
    v40 = v11;
    v25 = v24;
    v26 = v8 + *(v24 + 20);
    *v26 = KeyPath;
    v26[8] = 0;
    v27 = v8 + *(v24 + 24);
    LOBYTE(v45) = 0;
    sub_19A6BAB60(a2);
    sub_19A6BAB60(a2);
    sub_19A6BAB60(a2);
    sub_19A6BAB70(v4, &v46);
    sub_19A7AA454();
    v28 = v47;
    *v27 = v46;
    *(v27 + 1) = v28;
    *(v8 + *(v25 + 28)) = v38;
    v29 = swift_getKeyPath();
    v30 = v8 + *(v6 + 36);
    *v30 = v29;
    *(v30 + 8) = xmmword_19A7BC7D0;
    v31 = sub_19A6BAA14();
    sub_19A7AA104();
    sub_19A5F2B54(v8, &qword_1EAFCDFD0);
    v46 = v6;
    v47 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v42;
    v34 = v44;
    sub_19A7AA164();
    (*(v41 + 8))(v10, v34);
    v35 = v39;
    v36 = v40;
    (*(v39 + 16))(v16, v33, v40);
    swift_storeEnumTagMultiPayload();
    sub_19A6BA9C0();
    v46 = v34;
    v47 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_19A7A9D64();

    sub_19A6B9BA8(a2);
    return (*(v35 + 8))(v33, v36);
  }

  else
  {
    v45 = a2;
    type metadata accessor for EmojiCellViewModel();

    sub_19A7AA454();
    v17 = v47;
    *v16 = v46;
    v16[1] = v17;
    swift_storeEnumTagMultiPayload();
    sub_19A6BA9C0();
    v18 = sub_19A6BAA14();
    v46 = v6;
    v47 = v18;
    v19 = swift_getOpaqueTypeConformance2();
    v46 = v44;
    v47 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_19A7A9D64();
  }
}

uint64_t sub_19A6AF9D8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = (*(a1 + 8) + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectSticker);
  v11 = *v10;
  if (*v10)
  {
    v12 = v10[1];
    v13 = sub_19A7AB394();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_19A7AB354();
    sub_19A60138C(v11);
    sub_19A60138C(v11);
    v14 = a2;
    v15 = sub_19A7AB344();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    v16[5] = v11;
    v16[6] = v12;
    v16[7] = a3;
    sub_19A6816F0(0, 0, v9, &unk_19A7BCE58, v16);
    sub_19A60126C(v11);
  }

  return result;
}

uint64_t sub_19A6AFB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_19A7A8F64();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v9 = sub_19A7AAA14();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_19A7AAC14();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();
  sub_19A7AB354();
  v7[19] = sub_19A7AB344();
  v12 = sub_19A7AB2E4();
  v7[20] = v12;
  v7[21] = v11;

  return MEMORY[0x1EEE6DFA0](sub_19A6AFD14, v12, v11);
}

uint64_t sub_19A6AFD14()
{
  (*(v0[17] + 104))(v0[18], *MEMORY[0x1E69D4708], v0[16]);
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_19A6AFDD0;
  v2 = v0[18];

  return sub_19A7697C0(v2);
}

uint64_t sub_19A6AFDD0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](sub_19A6AFF5C, v7, v6);
}

uint64_t sub_19A6AFF5C()
{
  v1 = *(v0 + 184);

  if (v1)
  {
    v2 = *(v0 + 184);
    (*(*(v0 + 112) + 104))(*(v0 + 120), *MEMORY[0x1E69D4638], *(v0 + 104));
    sub_19A7AAAC4();
    swift_allocObject();
    sub_19A7AAA04();
    MEMORY[0x19A905020]();
    sub_19A7AA9C4();
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    (*(v0 + 56))(v2, *(v0 + 72));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19A6B01F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v9 = v19[3];
  swift_beginAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  sub_19A6AF474(a1, a2, a3);
  v10 = sub_19A7A9F84();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = sub_19A7A9FC4();
  sub_19A5F2B54(v8, &qword_1EAFCFFF0);
  KeyPath = swift_getKeyPath();
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDFA8) + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v14 = v19[0];
  v15 = OBJC_IVAR___STKStickerSearchConfiguration_spacing;
  swift_beginAccess();
  v16 = *&v14[v15];

  LOBYTE(v14) = sub_19A7A9F04();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF98);
  v18 = a3 + *(result + 36);
  *v18 = v14;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_19A6B04BC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE58);
  MEMORY[0x1EEE9AC00](v55);
  v48 = v47 - v2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE60);
  MEMORY[0x1EEE9AC00](v50);
  v4 = v47 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE68);
  MEMORY[0x1EEE9AC00](v51);
  v53 = v47 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE70);
  MEMORY[0x1EEE9AC00](v49);
  v7 = v47 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE78);
  MEMORY[0x1EEE9AC00](v52);
  v9 = v47 - v8;
  v10 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v66 == 1)
  {
    static StickersFeatureFlags.keyForEmojiCreationForOS.getter(&v66);
    v11 = sub_19A7A9194();
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    v11 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v12 = v66;
  v13 = OBJC_IVAR___STKStickerSearchConfiguration_visible;
  swift_beginAccess();
  LOBYTE(v13) = v12[v13];

  if (v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v14 = *(v66 + 16);

    if (v14)
    {
      v15 = sub_19A7A9EC4();
      MEMORY[0x1EEE9AC00](v15);
      v47[1] = v10;
      v47[-2] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDEB0);
      sub_19A623714(&qword_1EAFCDEB8, &qword_1EAFCDEB0);
      v16 = v48;
      sub_19A7A9764();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_19A7A96A4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_19A7A96A4();

      sub_19A7AA654();
      sub_19A7A9864();
      v17 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE98) + 36));
      v18 = v75;
      *v17 = v74;
      v17[1] = v18;
      v17[2] = v76;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_19A7A96A4();

      v19 = *&v66 * 0.5;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_19A7A96A4();

      v20 = *(&v66 + 1) * 0.5;
      v21 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE90) + 36));
      *v21 = v19;
      v21[1] = v20;
      v22 = sub_19A7AA654();
      v24 = v23;
      sub_19A6B2C98(&v57);
      *&v64[0] = v22;
      *(&v64[0] + 1) = v24;
      v25 = v59;
      v26 = v63;
      v27 = v63;
      v65 = v63;
      v28 = v62;
      v31 = v60;
      v64[5] = v61;
      v29 = v61;
      v30 = v61;
      v64[6] = v62;
      v32 = v60;
      v34 = v58;
      v64[3] = v59;
      v33 = v59;
      v64[4] = v60;
      v35 = v57;
      v36 = v57;
      v64[1] = v57;
      v64[2] = v58;
      v37 = v16 + *(v55 + 36);
      *(v37 + 32) = v58;
      *(v37 + 48) = v33;
      *v37 = v64[0];
      *(v37 + 16) = v35;
      *(v37 + 80) = v30;
      *(v37 + 96) = v28;
      *(v37 + 112) = v26;
      *(v37 + 64) = v32;
      *&v66 = v22;
      *(&v66 + 1) = v24;
      v67 = v36;
      v68 = v34;
      v73 = v27;
      v71 = v29;
      v72 = v62;
      v69 = v25;
      v70 = v31;
      sub_19A60F0CC(v64, &v56, &qword_1EAFCDEA8);
      sub_19A5F2B54(&v66, &qword_1EAFCDEA8);
      sub_19A5FAC30(v16, v53);
      swift_storeEnumTagMultiPayload();
      sub_19A6B9DC4();
      sub_19A6B9E50();
      sub_19A7A9D64();
      return sub_19A5F2B54(v16, &qword_1EAFCDE58);
    }

    *v4 = sub_19A7A9BA4();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDEC0);
    sub_19A6B0EAC(v11 & 1, v10, &v4[*(v41 + 44)]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    sub_19A7AA654();
    sub_19A7A9864();
    v42 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE80) + 36)];
    v43 = v67;
    *v42 = v66;
    *(v42 + 1) = v43;
    *(v42 + 2) = v68;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v44 = *v64 * 0.5;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v45 = *(v64 + 1) * 0.5;
    v46 = &v4[*(v50 + 36)];
    *v46 = v44;
    v46[1] = v45;
    sub_19A60F0CC(v4, v7, &qword_1EAFCDE60);
    swift_storeEnumTagMultiPayload();
    sub_19A6B9C80();
    sub_19A7A9D64();
    sub_19A60F0CC(v9, v53, &qword_1EAFCDE78);
    swift_storeEnumTagMultiPayload();
    sub_19A6B9DC4();
    sub_19A6B9E50();
    sub_19A7A9D64();
    sub_19A5F2B54(v9, &qword_1EAFCDE78);
    v39 = v4;
    v40 = &qword_1EAFCDE60;
  }

  else
  {
    *v7 = 0;
    v7[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_19A6B9C80();
    sub_19A7A9D64();
    sub_19A60F0CC(v9, v53, &qword_1EAFCDE78);
    swift_storeEnumTagMultiPayload();
    sub_19A6B9DC4();
    sub_19A6B9E50();
    sub_19A7A9D64();
    v39 = v9;
    v40 = &qword_1EAFCDE78;
  }

  return sub_19A5F2B54(v39, v40);
}