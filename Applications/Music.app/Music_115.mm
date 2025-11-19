void *sub_100C5659C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011B9B88);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        v23 = v20;
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

void *sub_100C56724()
{
  v1 = v0;
  sub_10010FC20(&qword_1011B9BC8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

Swift::Int sub_100C56894(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100C574B0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100C56900(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100C56900(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10010FC20(&qword_1011BAE78);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100C56AD8(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_100C56A08(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100C56A08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *v13;
      v14 = *v13 == v10 && *(v13 + 8) == v11;
      if (v14 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *(v13 + 32);
      v11 = *(v13 + 40);
      v15 = *(v13 + 48);
      v16 = *(v13 + 56);
      v17 = *(v13 + 16);
      *(v13 + 32) = *v13;
      *(v13 + 48) = v17;
      *v13 = v10;
      *(v13 + 8) = v11;
      *(v13 + 16) = v15;
      *(v13 + 24) = v16;
      v13 -= 32;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100C56AD8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_100C57370(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_100C570BC((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      v10 = (*a3 + 32 * v8);
      result = *v10;
      if (*v10 == *v9 && v10[1] == v9[1])
      {
        v12 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          result = *(v13 - 1);
          if (result == v13[3] && *v13 == v15)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100C2888C(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_100C2888C((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
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

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_100C570BC((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100C57370(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_100C572E4(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = *v38 == v35 && *(v38 + 8) == v36;
    if (v39 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
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

uint64_t sub_100C570BC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = *(v6 - 4) == v20 && *(v6 - 3) == v21;
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_100C572E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100C57370(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100C57384(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BA4D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

__n128 sub_100C574D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v9 = *(a6 - 8);
  __chkstk_darwin(a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  v13 = v12 - 8;
  v36 = *(v12 - 8);
  v14 = *(v36 + 64);
  v15 = __chkstk_darwin(v12);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v38 = &v36 - v17;
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  (*(v9 + 16))(v11, a1, a6);
  v20 = String.init<A>(_:)();
  v22 = v21;
  UUID.init()();
  v23 = &v19[*(v13 + 28)];
  *v23 = v39;
  *(v23 + 1) = a3;
  v24 = &v19[*(v13 + 32)];
  *v24 = v20;
  v24[1] = v22;
  v25 = qword_1011B9A38;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1011BAE90;
  v27 = *(qword_1011BAE90 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v27 + 16));
  v28 = v42;
  sub_100019508(v26, v19, v40, v41);
  os_unfair_lock_unlock(*(v27 + 16));
  if (v28)
  {
    return sub_100C5BBAC(v19, _s20KeyValueRegistrationC10IdentifierVMa);
  }

  v30 = v38;
  sub_100C5BB44(v19, v38, _s20KeyValueRegistrationC10IdentifierVMa);
  v31 = v37;
  sub_10001FCD4(v19, v37, _s20KeyValueRegistrationC10IdentifierVMa);
  v32 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v33 = swift_allocObject();
  sub_10001FCD4(v31, v33 + v32, _s20KeyValueRegistrationC10IdentifierVMa);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v34 = swift_allocObject();
  sub_10001FCD4(v30, v34 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);
  result = v34;
  v35 = (v34 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v35 = sub_100C1DEF8;
  v35[1] = v33;
  return result;
}

uint64_t sub_100C57844(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t UserDefault.init(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a2;
  v9 = type metadata accessor for UserDefault();
  (*(*(a4 - 8) + 32))(&a5[*(v9 + 44)], a3, a4);
  v10 = *(v9 + 48);
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v10], a1, v11);
}

uint64_t UserDefault.init<A>(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v21 = a2;
  v22 = a6;
  v20 = a7;
  __chkstk_darwin(a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v19 - v16;
  (*(v14 + 16))(&v19 - v16, a1, v13, v15);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(*(a5 - 8) + 8))(a3, a5);
  (*(v14 + 8))(a1, v13);
  return UserDefault.init(wrappedValue:defaults:key:)(v17, v21, v12, a4, v20);
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  NSUserDefaults.subscript.getter(v2 + *(a1 + 44), v14);
  sub_10010FC20(&qword_1011BADF0);
  v10 = swift_dynamicCast();
  v11 = *(*(v5 - 8) + 56);
  if (v10)
  {
    v12 = *(v5 - 8);
    v11(v9, 0, 1, v5);
    (*(v12 + 32))(a2, v9, v5);
    return (v11)(a2, 0, 1, v5);
  }

  else
  {
    v11(v9, 1, 1, v5);
    return (*(v7 + 16))(a2, v2 + *(a1 + 48), v6);
  }
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_100C5AC2C(a1, a2);
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = type metadata accessor for Optional();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[5] = v10;
  UserDefault.wrappedValue.getter(a2, v10);
  return sub_100C57F2C;
}

void sub_100C57F2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_100C5AC2C(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_100C5AC2C((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefault.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static NSUserDefaults.Suite.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

void NSUserDefaults.Suite.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NSUserDefaults.Suite.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100C581AC()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100C5821C()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100C58294()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100C58300(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x70uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[9] = a4;
  v9[10] = v4;
  v9[8] = a3;
  v11 = *(a3 - 8);
  v12 = v11;
  v9[11] = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[12] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[12] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v10[13] = v14;
  (*(v12 + 16))();
  NSUserDefaults.subscript.getter(a2, v10);
  return sub_100C58488;
}

void sub_100C58488(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  if (a2)
  {
    v5 = v2[11];
    v6 = v2[8];
    sub_100018B10(*a1, (v2 + 4));
    (*(v5 + 32))(v4, v3, v6);
    NSUserDefaults.subscript.setter((v2 + 4), v4, v6);
    sub_100011F28(v2);
  }

  else
  {
    NSUserDefaults.subscript.setter(*a1, v2[13], v2[8]);
  }

  free(v3);
  free(v4);

  free(v2);
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x70uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[10] = a5;
  v10[11] = v5;
  v10[8] = a3;
  v10[9] = a4;
  v12 = *(a3 - 8);
  v13 = v12;
  v10[12] = v12;
  if (&_swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
  }

  v11[13] = v14;
  (*(v13 + 16))();
  NSUserDefaults.subscript.getter(v11);
  return sub_100C58680;
}

void sub_100C58680(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[12];
    v3 = v2[13];
    v5 = v2[8];
    sub_100018B10(*a1, (v2 + 4));
    sub_1000188D4((v2 + 4));
    (*(v4 + 8))(v3, v5);
    sub_100011F28(v2);
  }

  else
  {
    v6 = v2[12];
    v3 = v2[13];
    v7 = v2[8];
    sub_1000188D4(*a1);
    (*(v6 + 8))(v3, v7);
  }

  free(v3);

  free(v2);
}

uint64_t NSUserDefaults.Migrator.init(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for NSUserDefaults.Migrator();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 44);

  return v8(v9, a2, a3);
}

uint64_t NSUserDefaults.Migrator.init<A>(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v10 = *(a3 - 8);
  __chkstk_darwin(a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(*(a4 - 8) + 8))(a2, a4);
  *a5 = a1;
  v13 = type metadata accessor for NSUserDefaults.Migrator();
  return (*(v10 + 32))(&a5[*(v13 + 44)], v12, a3);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v61 = a2;
  v9 = v8;
  v56 = a7;
  v54 = a4;
  v60 = a3;
  v50 = a1;
  v57 = a8;
  v55 = a6;
  v49 = *(a6 - 8);
  __chkstk_darwin(a1);
  v58 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v59 = *(v13 - 8);
  __chkstk_darwin(v14);
  v47 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v16;
  v52 = type metadata accessor for Optional();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = &v47 - v19;
  v20 = *(a5 + 24);
  v68 = type metadata accessor for Optional();
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v22 = &v47 - v21;
  v23 = *v9;
  v24 = *(a5 + 44);
  NSUserDefaults.subscript.getter(v9 + v24, v67);
  sub_100018B10(v67, &v65);
  sub_10010FC20(&qword_1011BADF0);
  v25 = swift_dynamicCast();
  v26 = *(v20 - 8);
  (*(v26 + 56))(v22, v25 ^ 1u, 1, v20);
  sub_100018B10(v67, &v65);
  v27 = *(&v66 + 1);
  sub_100011F28(&v65);
  if (v27 && (*(v26 + 48))(v22, 1, v20) == 1)
  {
    _s8MigratorV5ErrorOMa();
    swift_getWitnessTable();
    swift_allocError();
    (*(v59 + 16))(v28, v9 + v24, v13);
    swift_willThrow();
LABEL_5:
    sub_100011F28(v67);
    return (*(v64 + 8))(v22, v68);
  }

  v29 = v62;
  v30 = v63;
  v61(v22);
  if (v29)
  {
    goto LABEL_5;
  }

  v31 = v47;
  (*(v59 + 16))(v47, v9 + v24, v13);
  v65 = 0u;
  v66 = 0u;
  NSUserDefaults.subscript.setter(&v65, v31, v13);
  v32 = v54;
  if (v54)
  {
    v62 = v54;
  }

  else
  {
    v62 = v23;
  }

  v33 = v53;
  v34 = v52;
  v35 = v51;
  v36 = v55;
  (*(v49 + 16))(v58, v50, v55);
  v37 = v48;
  (*(v35 + 16))(v48, v30, v34);
  v38 = v35;
  v39 = *(v33 - 8);
  if ((*(v39 + 48))(v37, 1, v33) == 1)
  {
    v40 = *(v38 + 8);
    v41 = v32;
    v40(v37, v34);
    v65 = 0u;
    v66 = 0u;
  }

  else
  {
    *(&v66 + 1) = v33;
    v42 = sub_10001C8B8(&v65);
    (*(v39 + 32))(v42, v37, v33);
    v43 = v32;
  }

  v44 = v34;
  v45 = v62;
  NSUserDefaults.subscript.setter(&v65, v58, v36);

  sub_100011F28(v67);
  (*(v38 + 32))(v57, v63, v44);
  return (*(v64 + 8))(v22, v68);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v19 = a5;
  v17 = a3;
  v18 = a4;
  v16 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v15 - v12;
  dispatch thunk of RawRepresentable.rawValue.getter();
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(v13, a1, a2, v17, v18, AssociatedTypeWitness, v16, a6);
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(a1, sub_100C1D414, v13, a2, a3, a4, a5, a6);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v12 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v12 - v9;
  dispatch thunk of RawRepresentable.rawValue.getter();
  NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(v10, a1, a2, AssociatedTypeWitness, v12, a4);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a2;
  v9 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NSUserDefaults.Migrator();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v19 - v15;
  (*(v9 + 16))(v11, a1, a3, v14);
  *v16 = v5;
  (*(v9 + 32))(&v16[*(v12 + 44)], v11, a3);
  v17 = v5;
  NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(a1, v20, v12, a3, a4, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(void *a1@<X1>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v10 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v10 - v7;
  dispatch thunk of RawRepresentable.rawValue.getter();
  NSUserDefaults.migrateValue<A, B>(for:to:)(v8, a1, AssociatedTypeWitness, v10, a3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.KeyValueRegistration.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_100C5BBAC(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return v0;
}

uint64_t NSUserDefaults.KeyValueRegistration.__deallocating_deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_100C5BBAC(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return swift_deallocClassInstance();
}

void sub_100C59734(uint64_t a1)
{
  if (qword_1011B9A38 != -1)
  {
    swift_once();
  }

  v2 = qword_1011BAE90;
  v3 = *(qword_1011BAE90 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_100C5994C(v2, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[0] = a5;
  v17[1] = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = v17 - v13;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v14, a2, a3, a4, v17[0], AssociatedTypeWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

uint64_t sub_100C5994C(uint64_t a1, uint64_t a2)
{
  v4 = _s9_ObserverC18HandlerAssociationVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v43 = a2;

  v9 = sub_10001F978(sub_100C5BCC0, v42, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v13)
  {
    v41 = v9;
    v17 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v15 + 16);

    if (v20 && (v40 = v18, v21 = sub_100019C40(v18, v19), (v22 & 1) != 0))
    {
      v39 = v19;
      v23 = *(*(v15 + 56) + 8 * v21);

      v47 = v23;
      __chkstk_darwin(v24);
      *(&v36 - 2) = a2;

      v38 = sub_100C57844(sub_100C5BC0C, (&v36 - 4), v23);
      v26 = v25;

      if (v26)
      {
      }

      else
      {

        v27 = v13;
        sub_100C4EAAC(v38, v6);
        sub_100C5BBAC(v6, _s9_ObserverC18HandlerAssociationVMa);
        v38 = v47;
        v28 = v39;
        if (!*(v47 + 16))
        {
          v29 = v27;
          v30 = String._bridgeToObjectiveC()();
          [v29 removeObserver:a1 forKeyPath:v30];
        }

        v31 = v27;
        v37 = sub_100C5A460();
        v33 = sub_100C3E198(v45, v41, v11, v31);
        if (*v32)
        {
          v34 = v32;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *v34;
          *v34 = 0x8000000000000000;
          sub_100019C6C(v38, v40, v28, isUniquelyReferenced_nonNull_native);

          *v34 = v44;
        }

        else
        {
        }

        (v33)(v45, 0);

        (v37)(v46, 0);

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {

      return swift_bridgeObjectRelease_n();
    }
  }

  return result;
}

BOOL sub_100C59CDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
  v5 = v4[1];
  if (v3)
  {
    if (v5)
    {
      if (v2 != *v4 || v3 != v5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
      }

      return 1;
    }

    return 0;
  }

  return !v5;
}

void sub_100C59D64(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a1;
  v10 = _s9_ObserverC18HandlerAssociationVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  if (!a2)
  {
LABEL_12:
    sub_100018B10(a3, &v41);
    v27 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      v28 = sub_10000954C(&v41, *(&v42 + 1));
      v29 = *(v27 - 8);
      v30 = __chkstk_darwin(v28);
      v32 = v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32, v30);
      v33 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v29 + 8))(v32, v27);
      sub_10000959C(&v41);
      if (a4)
      {
LABEL_14:
        type metadata accessor for NSKeyValueChangeKey(0);
        sub_100C5BAEC();
        v34.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_17:
        v35 = _s9_ObserverCMa();
        v40.receiver = v5;
        v40.super_class = v35;
        objc_msgSendSuper2(&v40, "observeValueForKeyPath:ofObject:change:context:", a2, v33, v34.super.isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v33 = 0;
      if (a4)
      {
        goto LABEL_14;
      }
    }

    v34.super.isa = 0;
    goto LABEL_17;
  }

  v15 = v12;
  sub_100018B10(a3, &v41);
  if (!*(&v42 + 1))
  {
    sub_100011F28(&v41);
    goto LABEL_11;
  }

  sub_100009F78(0, qword_1011BAF40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_12;
  }

  v16 = v39;
  v17 = *&v5[OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock];
  os_unfair_lock_lock(*(v17 + 16));
  v18 = v16;
  sub_100C5A15C(v5, v16, v38, v37, &v41);
  os_unfair_lock_unlock(*(v17 + 16));
  v19 = *(v41 + 16);
  if (v19)
  {
    v20 = &v14[*(v15 + 20)];
    v21 = *(v11 + 80);
    v36[1] = v41;
    v22 = v41 + ((v21 + 32) & ~v21);
    v23 = *(v11 + 72);
    do
    {
      sub_100C5BB44(v22, v14, _s9_ObserverC18HandlerAssociationVMa);
      v24 = *v20;
      v25 = String._bridgeToObjectiveC()();
      v26 = [v18 valueForKey:v25];

      if (v26)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      v24(&v41);
      sub_100011F28(&v41);
      sub_100C5BBAC(v14, _s9_ObserverC18HandlerAssociationVMa);
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  else
  {
  }
}

uint64_t sub_100C5A15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  result = swift_beginAccess();
  v12 = 0;
  v13 = *(a1 + v10);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = _swiftEmptyArrayStorage;
  while (v16)
  {
    v18 = v12;
LABEL_10:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v18 << 6);
    if (*(*(v13 + 48) + 24 * v20 + 16) == a2)
    {
      v21 = *(*(v13 + 56) + 8 * v20);
      v22 = 1 << *(v21 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v21 + 64);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      while (v24)
      {
LABEL_19:
        v28 = __clz(__rbit64(v24)) | (v26 << 6);
        v29 = (*(v21 + 48) + 16 * v28);
        v17 = *(*(v21 + 56) + 8 * v28);
        if (*v29 != a3 || v29[1] != a4)
        {
          v24 &= v24 - 1;
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

LABEL_26:

        goto LABEL_27;
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_29;
        }

        if (v27 >= v25)
        {
          v17 = _swiftEmptyArrayStorage;
          goto LABEL_26;
        }

        v24 = *(v21 + 64 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_19;
        }
      }
    }
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= ((v14 + 63) >> 6))
    {
LABEL_27:
      *a5 = v17;
      return result;
    }

    v16 = *(v13 + 64 + 8 * v18);
    ++v12;
    if (v16)
    {
      v12 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100C5A4C0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
LABEL_8:
    sub_100009F78(0, &unk_1011BADB0);
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

id sub_100C5A54C()
{
  v2.receiver = v0;
  v2.super_class = _s9_ObserverCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NSUserDefaults.encodeValue(_:forKey:)(void *a1)
{
  v2 = v1;
  sub_10000954C(a1, a1[3]);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v2 setValue:isa forKey:v7];

  return sub_10002C064(v3, v5);
}

uint64_t NSUserDefaults.decodeValue<A>(_:forKey:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 valueForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_100011F28(v13);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 1;
    return (*(*(a1 - 8) + 56))(a2, v7, 1, a1);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002C064(v9, v10);

  v7 = 0;
  return (*(*(a1 - 8) + 56))(a2, v7, 1, a1);
}

uint64_t sub_100C5ABAC()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011BAE98);
  sub_1000060E4(v0, qword_1011BAE98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C5AC2C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a2 + 16);
  __chkstk_darwin(v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2 + *(a2 + 44), v11);
  (*(v7 + 16))(v10, a1, v6);
  v15 = *(v5 - 8);
  if ((*(v15 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v5;
    v16 = sub_10001C8B8(&v18);
    (*(v15 + 32))(v16, v10, v5);
  }

  return NSUserDefaults.subscript.setter(&v18, v13, v11);
}

unint64_t sub_100C5AE8C()
{
  result = qword_1011BAEB8[0];
  if (!qword_1011BAEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011BAEB8);
  }

  return result;
}

uint64_t sub_100C5AEE0()
{
  result = sub_100009F78(319, qword_1011BAF40);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100C5AF94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(v7 - 8) + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_35;
  }

  v19 = v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_35:
      if ((v12 & 0x80000000) != 0)
      {
        v28 = (a1 + v14 + 8) & ~v14;
        if (v6 == v13)
        {
          v29 = *(v5 + 48);

          return v29(v28);
        }

        else
        {
          v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16, v10, v7);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v27 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v13 + (v26 | v24) + 1;
}

void sub_100C5B1F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  v19 = ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + v18;
  v20 = a3 >= v17;
  v21 = a3 - v17;
  if (v21 == 0 || !v20)
  {
LABEL_24:
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v19 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v22 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_25:
    v24 = ~v17 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v19)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v19] = v25;
    }

    return;
  }

LABEL_34:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *&a1[v19] = 0;
  }

  else if (v6)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if ((v16 & 0x80000000) != 0)
  {
    v28 = &a1[v12 + 8] & ~v12;
    if (v8 == v17)
    {
      v29 = *(v7 + 56);

      v29(v28);
    }

    else
    {
      v30 = *(v10 + 56);
      v31 = (v28 + v13 + v14) & ~v14;
      v32 = a2 + 1;

      v30(v31, v32, v11, v9);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = a2 - 1;
    }

    *a1 = v27;
  }
}

uint64_t sub_100C5B52C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100C5B580()
{
  result = sub_100009F78(319, qword_1011BAF40);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100C5B618(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100C5B79C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_100C5BA1C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_100C5BAEC()
{
  result = qword_1011B9C08;
  if (!qword_1011B9C08)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B9C08);
  }

  return result;
}

uint64_t sub_100C5BB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C5BBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100C5BC5C()
{
  result = qword_1011BB2F0;
  if (!qword_1011BB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BB2F0);
  }

  return result;
}

uint64_t sub_100C5BCE0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C5BD28()
{
  result = sub_100C32E8C(&off_1010F00C8);
  qword_10121C0D0 = &off_1010F0128;
  return result;
}

uint64_t sub_100C5BD74()
{
  v0 = 10;
  sub_100015C44(0, 10, 0);
  v1 = &unk_1010F0150;
  do
  {
    v7 = *(v1 - 1);
    v8 = *v1;
    swift_bridgeObjectRetain_n();
    v2._countAndFlagsBits = 115;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);

    v4 = _swiftEmptyArrayStorage[2];
    v3 = _swiftEmptyArrayStorage[3];
    if (v4 >= v3 >> 1)
    {
      sub_100015C44((v3 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v4 + 1;
    v5 = &_swiftEmptyArrayStorage[2 * v4];
    v5[4] = v7;
    v5[5] = v8;
    v1 += 2;
    --v0;
  }

  while (v0);
  result = sub_100C32E8C(&off_1010F00F8);
  qword_10121C0D8 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t URL.replacingSchemeWithHTTP.getter@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011BAE70);
  __chkstk_darwin();
  v3 = &v17[-v2];
  v4 = type metadata accessor for URLComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011BAE70);
LABEL_9:
    v13 = type metadata accessor for URL();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = URLComponents.scheme.getter();
  if (!v9)
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  if (qword_1011B9A50 != -1)
  {
    swift_once();
  }

  v18 = v10;
  v19 = v11;
  __chkstk_darwin();
  *&v17[-16] = &v18;
  if (sub_10044AB94(sub_10044CF58, &v17[-32], v12))
  {
  }

  else
  {
    if (qword_1011B9A48 != -1)
    {
      swift_once();
    }

    v18 = v10;
    v19 = v11;
    __chkstk_darwin();
    *&v17[-16] = &v18;
    v16 = sub_10044AB94(sub_10044D034, &v17[-32], v15);

    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  URLComponents.scheme.setter();
LABEL_14:
  URLComponents.url.getter();
  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall URLComponents.appendPath(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = URLComponents.path.getter();
  v5 = sub_100C5C2EC(v3, v4);
  v7 = v6;

  if (v7)
  {
    if (v5 == 47 && v7 == 0xE100000000000000)
    {

LABEL_6:
      v9 = URLComponents.path.modify();
      v10._countAndFlagsBits = countAndFlagsBits;
      v10._object = object;
      String.append(_:)(v10);
      v9(v16, 0);
      return;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v11 = sub_100C5C36C(countAndFlagsBits, object);
  v13 = v12;
  v14 = URLComponents.path.modify();
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  String.append(_:)(v15);

  v14(v16, 0);
}

uint64_t sub_100C5C2EC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t sub_100C5C36C(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_100C5BCE0(a1, a2);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v4 != 47 || v5 != 0xE100000000000000)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_7:
    v7._countAndFlagsBits = v3;
    v7._object = a2;
    String.append(_:)(v7);
    return 47;
  }

LABEL_6:

  return v3;
}

Swift::Void __swiftcall URLComponents.appendQueryItems(_:)(Swift::OpaquePointer a1)
{
  if (URLComponents.queryItems.getter())
  {

    sub_100C33294(v1);
  }

  else
  {
  }

  URLComponents.queryItems.setter();
}

uint64_t URL.isSafariScriptURL.getter()
{
  v0 = type metadata accessor for URLQueryItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011BB2F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_10010FC20(&qword_1011BAE70);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for URLComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    result = URLComponents.queryItems.getter();
    if (!result)
    {
      (*(v11 + 8))(v13, v10);
      return 0;
    }

    v15 = result;
    v25 = v13;
    v26 = v11;
    v27 = v10;
    v28 = v6;
    v30 = *(result + 16);
    if (!v30)
    {
LABEL_18:

      (*(v26 + 8))(v25, v27);
      v24 = v28;
      (*(v1 + 56))(v28, 1, 1, v0);
      sub_1000095E8(v24, &qword_1011BB2F8);
      return 0;
    }

    v16 = 0;
    v17 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v29 = 0x8000000100E69BE0;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v3, v17 + *(v1 + 72) * v16, v0);
      if (URLQueryItem.name.getter() == 0x6E6F69746361 && v19 == 0xE600000000000000)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v21 = URLQueryItem.value.getter();
      if (v22)
      {
        if (v21 == 0xD000000000000016 && v22 == v29)
        {

LABEL_17:
          (*(v26 + 8))(v25, v27);

          v23 = v28;
          (*(v1 + 32))(v28, v3, v0);
          (*(v1 + 56))(v23, 0, 1, v0);
          sub_1000095E8(v23, &qword_1011BB2F8);
          return 1;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_17;
        }
      }

LABEL_7:
      ++v16;
      result = (*(v1 + 8))(v3, v0);
      if (v30 == v16)
      {
        goto LABEL_18;
      }
    }
  }

  sub_1000095E8(v9, &qword_1011BAE70);
  return 0;
}

size_t sub_100C5C944(size_t a1, int64_t a2, char a3)
{
  result = sub_100C5CA58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C5C964(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BAE88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

size_t sub_100C5CA58(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&qword_1011BA030);
  v10 = *(type metadata accessor for IndexPath() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for IndexPath() - 8);
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

void *sub_100C5CC30(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_1011BAE80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011BAE78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100C5CD64(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

const char *Feature.MediaPlayer.feature.getter(unsigned __int8 a1)
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (a1 != 2)
  {
    v2 = "RSuntory";
  }

  if (a1)
  {
    v1 = "UpgradeOnPlay";
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

const char *sub_100C5CF10()
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (*v0 != 2)
  {
    v2 = "RSuntory";
  }

  if (*v0)
  {
    v1 = "UpgradeOnPlay";
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

unint64_t sub_100C5CFC4()
{
  result = qword_1011BB300;
  if (!qword_1011BB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BB300);
  }

  return result;
}

unint64_t sub_100C5D01C()
{
  result = qword_1011BB308;
  if (!qword_1011BB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BB308);
  }

  return result;
}

unint64_t sub_100C5D074()
{
  result = qword_1011BB310;
  if (!qword_1011BB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BB310);
  }

  return result;
}

unint64_t sub_100C5D0CC()
{
  result = qword_1011BB318;
  if (!qword_1011BB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BB318);
  }

  return result;
}

unint64_t sub_100C5D164()
{
  result = qword_1011BB320;
  if (!qword_1011BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BB320);
  }

  return result;
}

uint64_t _s5MusicOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5MusicOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t GestureRecognizerHandler.__allocating_init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t GestureRecognizerHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t GestureRecognizerHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100C5D4BC(void *a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = &protocol witness table for UIGestureRecognizer;
  v5[0] = a1;
  a2(v5, [a1 state]);
  return sub_10000959C(v5);
}

void UIGestureRecognizerHandling<>.removeHandler(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1011B9A58 != -1)
  {
LABEL_25:
    swift_once();
  }

  v4 = qword_1011BB328;
  if (objc_getAssociatedObject(v2, qword_1011BB328))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_10010FC20(&qword_1011BB330);
    if (swift_dynamicCast())
    {
      v5 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    sub_100011F28(v16);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_10:
  *&v16[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_12:
      v11 = v4;
      v12 = v2;
      v7 = 0;
      v2 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v4 = v11;
            v2 = v12;
            break;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_22;
          }
        }

        if (v8 == a1)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_23;
        }
      }
    }
  }

  type metadata accessor for GestureRecognizerHandler();
  isa = Array._bridgeToObjectiveC()().super.isa;

  objc_setAssociatedObject(v2, v4, isa, 1);
}

uint64_t KeyboardAvoidance.animationOptions.getter()
{
  result = *(v0 + 72) << 16;
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

double KeyboardAvoidance.init(notification:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C5E938(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

void KeyboardAvoidance.animate(alongsideKeyboard:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 72) << 16;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a1;
    v14 = a2;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_10002BC98;
    v12 = &unk_1010F2910;
    v8 = _Block_copy(&v9);

    if (a3)
    {
      v13 = a3;
      v14 = a4;
      v9 = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_1005C3688;
      v12 = &unk_1010F2938;
      a3 = _Block_copy(&v9);
    }

    [objc_opt_self() animateWithDuration:v5 delay:v8 options:a3 animations:*(v4 + 64) completion:0.0];
    _Block_release(a3);
    _Block_release(v8);
  }
}

void KeyboardAvoidance.animate(alongsideKeyboard:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = *(v2 + 72) << 16;
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v5;
    v8 = *(v2 + 64);
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10002BC98;
    v10[3] = &unk_1010F2960;
    v9 = _Block_copy(v10);

    [v7 animateWithDuration:v6 delay:v9 options:0 animations:v8 completion:0.0];
    _Block_release(v9);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.animateContentScrollView(in:)(UIViewController in)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 48);
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v1 + 64);
  *(v3 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *(v3 + 104) = in;
  v6 = objc_opt_self();
  v7 = *(v1 + 72) << 16;
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v6;
    v9 = *(v1 + 64);
    v12[4] = sub_100C5EDE8;
    v12[5] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10002BC98;
    v12[3] = &unk_1010F29B0;
    v10 = _Block_copy(v12);
    v11 = in.super.super.isa;

    [v8 animateWithDuration:v7 delay:v10 options:0 animations:v9 completion:0.0];
    _Block_release(v10);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(UIViewController to)
{
  if ([(objc_class *)to.super.super.isa isViewLoaded])
  {
    v3 = [(objc_class *)to.super.super.isa view];
    if (v3)
    {
      v4 = v3;
      [v3 convertRect:0 fromView:{v1[4], v1[5], v1[6], v1[7]}];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [(objc_class *)to.super.super.isa view];
      if (v13)
      {
        v14 = v13;
        [v13 safeAreaInsets];
        v16 = v15;

        [(objc_class *)to.super.super.isa additionalSafeAreaInsets];
        v18 = v16 - v17;
        [v4 frame];
        Height = CGRectGetHeight(v23);
        v24.origin.x = v6;
        v24.origin.y = v8;
        v24.size.width = v10;
        v24.size.height = v12;
        MinY = CGRectGetMinY(v24);

        if (Height - MinY - v18 < 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = Height - MinY - v18;
        }

        [(objc_class *)to.super.super.isa setAdditionalSafeAreaInsets:0.0, 0.0, v21, 0.0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void KeyboardAvoidance.additionalSafeAreaInsets(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0.0;
  if (![a1 isViewLoaded] || (v6 = objc_msgSend(a1, "view")) == 0)
  {
    v24 = 1;
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = v24;
    return;
  }

  v7 = v6;
  [v6 convertRect:0 fromView:{v2[4], v2[5], v2[6], v2[7]}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    [a1 additionalSafeAreaInsets];
    v21 = v19 - v20;
    [v7 frame];
    Height = CGRectGetHeight(v25);
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MinY = CGRectGetMinY(v26);

    v24 = 0;
    if (Height - MinY - v21 < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = Height - MinY - v21;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  sub_100C5F098(a1, v54);
  if (v55)
  {
    swift_deallocUninitializedObject();
LABEL_12:
    v36 = 0uLL;
    v37 = 1;
    width = 0.0;
    v38 = 0.0;
    goto LABEL_13;
  }

  v8 = v54[1];
  *(v7 + 16) = v54[0];
  *(v7 + 32) = v8;
  v9 = [a1 contentScrollViewForEdge:1];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [a1 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (!v13 || (v14 = [v13 windowScene], v13, !v14) || (v15 = objc_msgSend(v14, "screen"), v14, !v15))
    {

      goto LABEL_12;
    }

    *(v7 + 16) = 0;
    v16 = swift_allocObject();
    [v10 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 32) = v21;
    v23 = [v15 coordinateSpace];
    v24 = v3[4];
    v25 = v3[5];
    v26 = v3[6];
    v27 = v3[7];
    v28 = v10;
    [v23 convertRect:v28 toCoordinateSpace:{v24, v25, v26, v27}];
    v30 = v29;

    swift_unknownObjectRelease();
    v31 = v30 - v20;
    *(v16 + 40) = v30 - v20;
    v56.origin.x = v18;
    v56.origin.y = v20;
    v56.size.width = v22;
    v56.size.height = v30 - v20;
    Height = CGRectGetHeight(v56);
    if (CGRectGetHeight(*(v7 + 16)) > Height)
    {
      v51 = *(v7 + 16);
      width = *(v7 + 32);
      v34 = *(v7 + 40);
      v57.origin.x = v18;
      v57.origin.y = v20;
      v57.size.width = v22;
      v57.size.height = v31;
      v35 = CGRectGetHeight(v57);

      v36 = v51;
      v37 = 0;
      v38 = v34 - v35;
LABEL_13:
      *a3 = v36;
      *(a3 + 16) = width;
      *(a3 + 24) = v38;
      *(a3 + 32) = v37;
      return;
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      v63.size.width = *(a2 + 16);
      v63.size.height = *(a2 + 24);
      v63.origin.x = *a2;
      v43 = *(a2 + 8);
      v63.origin.y = v43;
      v59 = CGRectUnion(*(v7 + 16), v63);
      y = v59.origin.y;
      x = v59.origin.x;
      width = v59.size.width;
      v38 = v59.size.height;
      v59.origin.x = v18;
      v59.origin.y = v20;
      v59.size.width = v22;
      v59.size.height = v31;
      v44 = CGRectGetHeight(v59);
      v60.origin.y = y;
      v60.origin.x = x;
      v60.size.width = width;
      v60.size.height = v38;
      if (CGRectGetHeight(v60) <= v44)
      {
        v61.origin.x = v18;
        v61.origin.y = v20;
        v61.size.width = v22;
        v61.size.height = v31;
        v45 = CGRectGetWidth(v61);
        v62.origin.y = y;
        v62.origin.x = x;
        v62.size.width = width;
        v62.size.height = v38;
        if (CGRectGetWidth(v62) <= v45)
        {

          v37 = 0;
          *&v36 = x;
          goto LABEL_22;
        }
      }

      v42 = v43;
LABEL_21:
      v46 = sub_100C5F248(v7, v16, v28, v42);
      y = v47;
      v53 = v46;
      width = v48;
      v38 = v49;

      *&v36 = v53;
      v37 = 0;
LABEL_22:
      *(&v36 + 1) = y;
      goto LABEL_13;
    }

    [v28 contentOffset];
    v40 = v39;
    if (v39 > CGRectGetMinY(*(v7 + 16)) || (v58.origin.x = v18, v58.origin.y = v20, v58.size.width = v22, v58.size.height = v31, v41 = v40 + CGRectGetHeight(v58), CGRectGetMaxY(*(v7 + 16)) > v41))
    {
      v42 = v40;
      goto LABEL_21;
    }

LABEL_11:

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static KeyboardAvoidance.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*a1, *a2) && CGRectEqualToRect(*(a1 + 32), *(a2 + 32)) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a1 + 80) ^ *(a2 + 80) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100C5E380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v16 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v15 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v17.origin.x = v2;
    v17.origin.y = v3;
    v17.size.width = v4;
    v17.size.height = v5;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    result = CGRectEqualToRect(v17, v18);
    if (result)
    {
      result = 0;
      if (v16 == v15)
      {
        if (v6 == v12)
        {
          return v7 ^ v13 ^ 1u;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KeyboardObserver.init(options:update:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = v4 + 56;
  v7 = _HashTable.startBucket.getter();
  v8 = *(v4 + 36);
  result = objc_opt_self();
  v23 = result;
  v24 = v4;
  v22 = v4 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_20;
    }

    v10 = *(*(v4 + 48) + v7);
    v26 = v5;
    v27 = v8;
    if (v10 > 2)
    {
      v11 = UIKeyboardDidHideNotification;
      if (v10 != 3)
      {
        v11 = UIKeyboardWillChangeFrameNotification;
        if (v10 != 4)
        {
          v11 = UIKeyboardDidChangeFrameNotification;
        }
      }
    }

    else
    {
      v11 = UIKeyboardWillShowNotification;
      if (v10)
      {
        v11 = UIKeyboardDidShowNotification;
        if (v10 != 1)
        {
          v11 = UIKeyboardWillHideNotification;
        }
      }
    }

    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = v10;
    type metadata accessor for NotificationObserver();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v14 + 16) = v12;
    swift_unknownObjectWeakAssign();
    *(v14 + 32) = 1;
    *(v14 + 48) = sub_100C5F378;
    *(v14 + 56) = v13;
    v15 = a3;

    v16 = v12;

    v17 = [v23 defaultCenter];
    *(v14 + 40) = v17;
    v18 = *(v14 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = v17;

    v21 = v18;
    [v20 addObserver:v14 selector:"handleNotification:" name:v21 object:Strong];

    swift_unknownObjectRelease();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    v4 = v24;
    if (v7 >= -(-1 << *(v24 + 32)))
    {
      goto LABEL_21;
    }

    v6 = v22;
    if ((*(v22 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(v24 + 36))
    {
      goto LABEL_23;
    }

    result = _HashTable.occupiedBucket(after:)();
    v7 = result;
    v8 = *(v24 + 36);
    v5 = v26 - 1;
    a3 = v15;
    if (v26 == 1)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100C5E814(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Notification();
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  result = sub_100C5E938(v10, v14);
  if (v15 != 2)
  {
    v16[3] = v14[3];
    v16[4] = v14[4];
    v16[1] = v14[1];
    v16[2] = v14[2];
    v16[0] = v14[0];
    v17 = v15;
    return a2(a4, v16);
  }

  return result;
}

uint64_t sub_100C5E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_1000160B4(v50);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10000DD18(*(v5 + 56) + 32 * v6, v51);
  sub_10001621C(v50);
  sub_100009F78(0, &qword_1011B9A70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v45 CGRectValue];
  v43 = v9;
  v44 = v8;
  v41 = v10;
  v42 = v11;

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v12 = sub_1000160B4(v50);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10000DD18(*(v5 + 56) + 32 * v12, v51);
  sub_10001621C(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v46 CGRectValue];
  v39 = v15;
  v40 = v14;
  v37 = v16;
  v38 = v17;

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v18 = sub_1000160B4(v50);
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10000DD18(*(v5 + 56) + 32 * v18, v51);
  sub_10001621C(v50);
  sub_100009F78(0, &qword_1011BA598);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v47 floatValue];
  v21 = v20;

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v22 = sub_1000160B4(v50);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10000DD18(*(v5 + 56) + 32 * v22, v51);
  sub_10001621C(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v36 = type metadata accessor for Notification();
    (*(*(v36 - 8) + 8))(a1, v36);

    goto LABEL_20;
  }

  v24 = [v48 integerValue];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v25 = sub_1000160B4(v50), (v26 & 1) == 0))
  {
LABEL_18:

    sub_10001621C(v50);
    goto LABEL_19;
  }

  sub_10000DD18(*(v5 + 56) + 32 * v25, v51);
  sub_10001621C(v50);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v35 = type metadata accessor for Notification();
    result = (*(*(v35 - 8) + 8))(a1, v35);
LABEL_20:
    v24 = 0;
    v31 = 0uLL;
    v27 = 2;
    v30 = 0.0;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    goto LABEL_21;
  }

  v27 = [v49 BOOLValue];

  v28 = type metadata accessor for Notification();
  result = (*(*(v28 - 8) + 8))(a1, v28);
  v30 = v21;
  *&v31 = v44;
  *(&v31 + 1) = v41;
  *&v32 = v43;
  *(&v32 + 1) = v42;
  *&v33 = v40;
  *(&v33 + 1) = v37;
  *&v34 = v39;
  *(&v34 + 1) = v38;
LABEL_21:
  *a2 = v31;
  *(a2 + 16) = v32;
  *(a2 + 32) = v33;
  *(a2 + 48) = v34;
  *(a2 + 64) = v30;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
  return result;
}

void sub_100C5EDE8()
{
  v1 = *(v0 + 104);
  KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(v1);

  sub_100C5EE28(v1);
}

void sub_100C5EE28(void *a1)
{
  v1 = [a1 contentScrollView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 firstResponder];
    if (v3)
    {
      v30 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = v30;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_100009F78(0, &qword_1011BADC8);
          while (1)
          {
            v9 = v2;
            v10 = v8;
            v11 = static NSObject.== infix(_:_:)();

            if (v11)
            {
              break;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
            {
              v10 = v10;

              v5 = v10;
              break;
            }

            v8 = [v10 superview];

            if (!v8)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          v10 = 0;
        }

        [v5 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v5 superview];
        [v2 convertRect:v21 fromView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [v2 scrollRectToVisible:0 animated:{v23, v25, v27, v29}];
      }

      v12 = v30;
    }

    else
    {
      v12 = v2;
    }
  }
}

void sub_100C5F098(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  v5 = [a1 contentScrollViewForEdge:1];
  v6 = 0uLL;
  if (!v5)
  {
    v28 = 0uLL;
    goto LABEL_11;
  }

  v7 = v5;
  v8 = [v5 firstResponder];
  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_8:

LABEL_10:
    v4 = 1;
    v28 = 0uLL;
    v6 = 0uLL;
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [a1 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 isDescendantOfView:v12];

    if (v14)
    {
      [v11 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [v11 superview];
      [v7 convertRect:v23 fromView:{v16, v18, v20, v22}];
      v30 = v24;
      v31 = v25;
      v29 = v26;
      v32 = v27;

      *&v28 = v29;
      *&v6 = v30;
      v4 = 0;
      *(&v6 + 1) = v31;
      *(&v28 + 1) = v32;
LABEL_11:
      *a2 = v6;
      *(a2 + 16) = v28;
      *(a2 + 32) = v4;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

double sub_100C5F248(uint64_t a1, uint64_t a2, void *a3, CGFloat a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  swift_beginAccess();
  CGRectGetHeight(*(a2 + 16));
  swift_beginAccess();
  CGRectGetHeight(*(a1 + 16));
  swift_beginAccess();
  if (CGRectGetMinY(*(a1 + 16)) > a4)
  {
    [a3 adjustedContentInset];
    swift_beginAccess();
    CGRectGetMaxY(*(a1 + 16));
  }

  return v8;
}

unint64_t sub_100C5F388()
{
  result = qword_1011BB400;
  if (!qword_1011BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BB400);
  }

  return result;
}

__n128 sub_100C5F3DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100C5F400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100C5F454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t Signpost.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id Signpost.log.getter()
{
  v1 = *(v0 + *(type metadata accessor for Signpost() + 20));

  return v1;
}

uint64_t Signpost.init(name:id:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v21 = a2;
  sub_10010FC20(&qword_1011BB408);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000782C(a4, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = a5;
    OSSignpostID.init(log:)();
    sub_10000663C(a4);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10000663C(v11);
    }
  }

  else
  {
    sub_10000663C(a4);
    (*(v13 + 32))(v15, v11, v12);
  }

  (*(v13 + 32))(a6, v15, v12);
  result = type metadata accessor for Signpost();
  *(a6 + *(result + 20)) = a5;
  v19 = a6 + *(result + 24);
  v20 = v21;
  *v19 = a1;
  *(v19 + 8) = v20;
  *(v19 + 16) = v22;
  return result;
}

uint64_t sub_100C5F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  a6();
  type metadata accessor for Signpost();
  return os_signpost(_:dso:log:name:signpostID:_:_:)();
}

uint64_t static Signpost.interval<A>(name:log:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v35 = a5;
  v36 = a4;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v33 = a7;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BB408);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for Signpost();
  __chkstk_darwin();
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin();
  v20 = &v29 - v19;
  (*(v8 + 56))(v14, 1, 1, v7, v18);
  sub_10000782C(v14, v12);
  v21 = *(v8 + 48);
  if (v21(v12, 1, v7) == 1)
  {
    v22 = v36;
    OSSignpostID.init(log:)();
    sub_10000663C(v14);
    if (v21(v12, 1, v7) != 1)
    {
      sub_10000663C(v12);
    }
  }

  else
  {
    sub_10000663C(v14);
    (*(v8 + 32))(v10, v12, v7);
  }

  (*(v8 + 32))(v17, v10, v7);
  v23 = v36;
  *&v17[*(v15 + 20)] = v36;
  v24 = &v17[*(v15 + 24)];
  v25 = v31;
  *v24 = v30;
  *(v24 + 1) = v25;
  v24[16] = v32;
  sub_10000C464(v17, v20);
  v26 = v23;
  static os_signpost_type_t.begin.getter();
  v27 = os_signpost(_:dso:log:name:signpostID:)();
  v35(v27);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return sub_100007908(v20);
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WeakArray.subscript.getter()
{
  v0 = type metadata accessor for WeakArray.WeakBox();
  Array.subscript.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v0 - 8) + 8))(v3, v0);
  return Strong;
}

{
  type metadata accessor for WeakArray.WeakBox();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  sub_10010FC20(&qword_1011BA558);
  v0 = Range.contains(_:)();
  result = 0;
  if (v0)
  {
    return WeakArray.subscript.getter();
  }

  return result;
}

uint64_t sub_100C5FE20()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t WeakArray.remove(at:)()
{
  v0 = type metadata accessor for WeakArray.WeakBox();
  type metadata accessor for Array();
  Array.remove(at:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v0 - 8) + 8))(v3, v0);
  return Strong;
}

uint64_t WeakArray.remove(_:)()
{
  WeakArray.reap()();
  type metadata accessor for WeakArray.WeakBox();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return RangeReplaceableCollection<>.removeAll(where:)();
}

Swift::Void __swiftcall WeakArray.reap()()
{
  type metadata accessor for WeakArray.WeakBox();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeAll(where:)();
}

uint64_t sub_100C60090()
{
  v1 = *(v0 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
    return v3 == v1;
  }

  return result;
}

BOOL sub_100C600D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

void (*sub_100C60154(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_100C6022C(v2);
  v3[4] = v5;
  v3[5] = v4;
  return sub_100C601E4;
}

void sub_100C601E4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_100C60298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_100C602EC()
{
  swift_getWitnessTable();
  v0 = j___ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF_0();

  return v0;
}

uint64_t WeakValuesDictionary.__allocating_init()()
{
  v0 = swift_allocObject();
  WeakValuesDictionary.init()();
  return v0;
}

void *WeakValuesDictionary.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_100C1BF7C();
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  v5 = sub_10003B618(v4, v2, v3, *(v1 + 96));

  v0[2] = v5;
  return v0;
}

uint64_t WeakValuesDictionary.subscript.getter()
{
  swift_beginAccess();
  sub_100C1BF7C();

  Dictionary.subscript.getter();

  if (v4[0])
  {
    if ([v4[0] weakObjectValue])
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v2 = 0u;
      v3 = 0u;
    }

    *v4 = v2;
    v5 = v3;
    if (*(&v3 + 1))
    {
      if (swift_dynamicCast())
      {
        return v1;
      }
    }

    else
    {
      sub_100011F28(v4);
    }
  }

  return 0;
}

void WeakValuesDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(a1);
  if (v9)
  {
    (*(v6 + 16))(&v12 - v7, a2, v5, v8);
    v12 = a1;
    swift_unknownObjectRetain();
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    v11 = [objc_opt_self() valueWithWeakObject:v10];
    swift_unknownObjectRelease();
    v13 = v11;
    swift_beginAccess();
    sub_100C1BF7C();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    swift_unknownObjectRelease_n();
    (*(v6 + 8))(a2, v5);
  }

  else
  {
    swift_beginAccess();
    sub_100C1BF7C();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();
    (*(v6 + 8))(a2, v5);
  }
}

void (*WeakValuesDictionary.subscript.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[1] = v1;
  v5 = *(*v1 + 80);
  v3[2] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[3] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[4] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v4[5] = v9;
  (*(v7 + 16))();
  *v4 = WeakValuesDictionary.subscript.getter();
  return sub_100C60934;
}

void sub_100C60934(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    (*(v2[3] + 32))((*a1)[4], v4, v2[2]);
    v5 = swift_unknownObjectRetain();
    WeakValuesDictionary.subscript.setter(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    WeakValuesDictionary.subscript.setter(**a1, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall WeakValuesDictionary.compact()()
{
  v68 = *v0;
  v1 = *(v68 + 80);
  v59 = *(v1 - 8);
  __chkstk_darwin();
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v54 - v3;
  v55 = v5;
  __chkstk_darwin();
  v69 = &v54 - v6;
  v60 = sub_100C1BF7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = type metadata accessor for Optional();
  v8 = *(v65 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v54 - v11;
  v78 = static Array._allocateUninitialized(_:)();
  swift_beginAccess();
  v58 = v0;
  v13 = v0[2];
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = __CocoaDictionary.makeIterator()();
    v15 = 0;
    v16 = 0;
    v70 = 0;
    v17 = v14 | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v16 = ~v18;
    v15 = v13 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v70 = v20 & *(v13 + 64);
    v17 = v13;
  }

  v72 = (v59 + 32);
  v64 = TupleTypeMetadata2 - 8;
  v56 = v16;
  v21 = (v16 + 64) >> 6;
  v73 = (v59 + 16);
  v63 = (v8 + 32);
  v71 = (v59 + 8);

  v22 = 0;
  v62 = v10;
  v61 = v12;
  v66 = v15;
  v67 = v17;
  v23 = v70;
  while (1)
  {
    v70 = v23;
    if ((v17 & 0x8000000000000000) != 0)
    {
      if (__CocoaDictionary.Iterator.next()())
      {
        v40 = v39;
        v41 = v69;
        _forceBridgeFromObjectiveC<A>(_:_:)();
        swift_unknownObjectRelease();
        *&v75 = v40;
        swift_dynamicCast();
        v42 = *&v77[0];
        v43 = *(TupleTypeMetadata2 + 48);
        v44 = v41;
        v10 = v62;
        (*v72)(v62, v44, v1);
        *&v10[v43] = v42;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
      }

      v27 = v22;
      v74 = v70;
      v12 = v61;
    }

    else
    {
      v24 = v23;
      v25 = v22;
      if (v23)
      {
LABEL_21:
        v74 = (v24 - 1) & v24;
        v29 = __clz(__rbit64(v24)) | (v25 << 6);
        v30 = v4;
        v31 = v59;
        v32 = v69;
        (*(v59 + 16))(v69, *(v17 + 48) + *(v59 + 72) * v29, v1);
        v33 = *(*(v17 + 56) + 8 * v29);
        v34 = *(TupleTypeMetadata2 + 48);
        v35 = *(v31 + 32);
        v4 = v30;
        v10 = v62;
        v36 = v32;
        v12 = v61;
        v35(v62, v36, v1);
        *&v10[v34] = v33;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
        v38 = v33;
        v27 = v25;
      }

      else
      {
        v26 = v21 <= v22 + 1 ? v22 + 1 : v21;
        v27 = v26 - 1;
        v28 = v22;
        while (1)
        {
          v25 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return;
          }

          if (v25 >= v21)
          {
            break;
          }

          v24 = *(v15 + 8 * v25);
          ++v28;
          if (v24)
          {
            v17 = v67;
            goto LABEL_21;
          }
        }

        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
        v74 = 0;
      }
    }

    (*v63)(v12, v10, v65);
    if ((*(v37 + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v45 = *&v12[*(TupleTypeMetadata2 + 48)];
    (*v72)(v4, v12, v1);
    if ([v45 weakObjectValue])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    v77[0] = v75;
    v77[1] = v76;
    if (!*(&v76 + 1))
    {
      sub_100011F28(v77);
LABEL_9:
      (*v73)(v69, v4, v1);
      type metadata accessor for Array();
      Array.append(_:)();

      (*v71)(v4, v1);
      goto LABEL_10;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    (*v71)(v4, v1);

    swift_unknownObjectRelease();
LABEL_10:
    v22 = v27;
    v23 = v74;
    v15 = v66;
    v17 = v67;
  }

  sub_10005C9F8();
  v46 = v78;
  v47 = Array.endIndex.getter();
  v48 = v59;
  v49 = v57;
  if (!v47)
  {
    goto LABEL_44;
  }

  v50 = 0;
  while (2)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v48 + 16))(v49, v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, v1);
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      goto LABEL_38;
    }

    v53 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v55 != 8)
    {
      goto LABEL_46;
    }

    *&v77[0] = v53;
    (*v73)(v49, v77, v1);
    swift_unknownObjectRelease();
    v52 = v50 + 1;
    if (!__OFADD__(v50, 1))
    {
LABEL_38:
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();
      swift_endAccess();

      (*v71)(v49, v1);
      ++v50;
      if (v52 == Array.endIndex.getter())
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:
}

void sub_100C616A8(id a1)
{
  v1 = objc_alloc_init(MusicMonogramArtworkDataSource);
  v2 = qword_10120B970;
  qword_10120B970 = v1;
}

void sub_100C61728(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("com.apple.Music.MusicMonogramArtworkDataSource.loadingQueue", v3);
  v2 = qword_10120B980;
  qword_10120B980 = v1;
}

void sub_100C61884(uint64_t a1)
{
  v2 = [*(a1 + 32) token];
  [*(a1 + 32) fittingSize];
  v4 = v3;
  v6 = v5;
  [*(a1 + 32) destinationScale];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C61980;
  v10[3] = &unk_1010F2D70;
  v9 = *(a1 + 40);
  v11 = *(a1 + 32);
  v13 = v4;
  v14 = v6;
  v12 = *(a1 + 48);
  [v9 _monogramImageForToken:v2 fittingSize:v10 scale:v4 completionHandler:{v6, v8}];
}

void sub_100C61980(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 visualIdenticalityIdentifier];
  v6 = [MPArtworkRepresentation representationForVisualIdentity:v5 withSize:v4 image:*(a1 + 48), *(a1 + 56)];

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100C61E70()
{
  result = sub_100C61E90();
  qword_10121C0E0 = result;
  return result;
}

uint64_t sub_100C61E90()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_10010FC20(&qword_1011BB9E8) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_10001E9A8(_swiftEmptyArrayStorage);
  sub_10010FC20(&qword_1011BB9F0);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBE260;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_100027C38(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_100027C38(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_10001F0BC(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "F0E546A8DF70B34912BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_100C63780(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_100028CA8(v6);
        v36 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_100C63780(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_100028CA8(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_100028CA8(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t variable initialization expression of LyricsOptionsManager.observers()
{
  v0 = type metadata accessor for LyricsOptionsManager.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

void variable initialization expression of SyncedLyricsViewController.Specs.selectedLinePosition(uint64_t a1@<X8>)
{
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

unint64_t sub_100C625C4()
{
  result = qword_1011BD920;
  if (!qword_1011BD920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BD920);
  }

  return result;
}

id sub_100C626CC(double *a1, double a2)
{
  v2 = [objc_opt_self() systemFontOfSize:a2 weight:*a1];

  return v2;
}

id variable initialization expression of SyncedLyricsViewController.Specs.automaticallyCreatedDisclaimerFont()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];

  return v0;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100C63958;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10003640C;
  v12[3] = &unk_1010F33C8;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100C63958;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10003640C;
  v12[3] = &unk_1010F3418;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100C63958;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10003640C;
  v12[3] = &unk_1010F3468;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.65];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100C63958;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10003640C;
  v12[3] = &unk_1010F34B8;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedScrollTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100C63958;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10003640C;
  v12[3] = &unk_1010F3508;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id sub_100C63084(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = [v7 *a1];
  v10 = objc_allocWithZone(UIColor);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v17[4] = a3;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10003640C;
  v17[3] = a4;
  v12 = _Block_copy(v17);
  v13 = v9;
  v14 = v8;

  v15 = [v10 initWithDynamicProvider:v12];

  _Block_release(v12);
  return v15;
}

id variable initialization expression of SyncedLyricsViewController.Specs.lineProgressionBackgroundVocalsGradientColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 tintColor];
  v4 = [v3 colorWithAlphaComponent:0.175];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100C63958;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10003640C;
  v12[3] = &unk_1010F35A8;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

CGFloat sub_100C6336C@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>)
{
  CGAffineTransformMakeScale(&v6, a2, a2);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id variable initialization expression of SyncedLyricsViewController.Specs.highlightViewBackgroundColor()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithWhite:1.0 alpha:0.08];
}

double variable initialization expression of SyncedLyricsViewController.Specs.lineChangeSpringTimingParametersValues()
{
  v0 = Int.seconds.getter(1);
  Int.seconds.getter(100);
  Int.seconds.getter(18);
  return v0;
}

id variable initialization expression of SyncedLyricsViewController.tapFeedbackGenerator()
{
  v0 = objc_allocWithZone(UISelectionFeedbackGenerator);

  return [v0 init];
}

uint64_t sub_100C63550@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id sub_100C635DC(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_100C63620()
{
  sub_100C63880(&qword_1011BD930);
  sub_100C63880(&qword_1011BBA20);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

__n128 sub_100C636DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100C636E8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_100C63708(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100C63780(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BB9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C63880(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s3__C3KeyVMa_2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100C6395C(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100C713C0(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100C7B4F8(v8, v5, type metadata accessor for Lyrics.TextLine);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100C713C0((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for Lyrics.TextLine;
      v12 = sub_10001C8B8(&v14);
      sub_100C7B4F8(v5, v12, type metadata accessor for Lyrics.TextLine);
      v7[2] = v11 + 1;
      sub_100059A8C(&v14, &v7[5 * v11 + 4]);
      sub_100C7B560(v5, type metadata accessor for Lyrics.TextLine);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void TimedElement.timeRange.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  if (v4 > (*(a2 + 16))(a1, a2))
  {
    __break(1u);
  }
}

uint64_t sub_100C63C08()
{
  v0 = sub_100C9C04C(&off_1010F2EA0);
  result = swift_arrayDestroy();
  static Lyrics.chineseLanguages = v0;
  return result;
}

uint64_t *Lyrics.chineseLanguages.unsafeMutableAddressor()
{
  if (qword_1011BB858 != -1)
  {
    swift_once();
  }

  return &static Lyrics.chineseLanguages;
}

uint64_t sub_100C63D5C()
{
  v0 = sub_100C76374(&off_1010F2EE0);
  sub_10010FC20(&qword_1011BC208);
  result = swift_arrayDestroy();
  static Lyrics.scriptMap = v0;
  return result;
}

uint64_t *Lyrics.scriptMap.unsafeMutableAddressor()
{
  if (qword_1011BB860 != -1)
  {
    swift_once();
  }

  return &static Lyrics.scriptMap;
}

double Lyrics.Word.startTime.getter()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.endTime.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 56 * v2 - 16);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.Emphasis.factor.getter(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

BOOL static Lyrics.Word.Emphasis.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

void Lyrics.Word.Emphasis.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }
}

Swift::Int Lyrics.Word.Emphasis.hashValue.getter(Swift::UInt64 a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

void sub_100C63F9C()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    Hasher._combine(_:)(v2);
  }
}

Swift::Int sub_100C63FEC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    Hasher._combine(_:)(v3);
  }

  return Hasher._finalize()();
}

BOOL sub_100C64058(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_100C64098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 80);
    for (i = a2 + 40; *(v3 - 6) == *(i - 8) && *(v3 - 5) == *i; i += 56)
    {
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v10 = *(i + 24);
      v9 = *(i + 32);
      v11 = *(i + 40);
      if (*(v3 - 4) == *(i + 8) && *(v3 - 3) == *(i + 16))
      {
        result = 0;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      if (v7 != v10 || v6 != v9 || *&v8 != v11)
      {
        return result;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void Lyrics.Word.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v2 + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  String.hash(into:)();
  sub_100C761EC(a1, *(v2 + 32));
  if (*(v2 + 48))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *(v2 + 40);
    Hasher._combine(_:)(1uLL);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
  }
}

Swift::Int Lyrics.Word.hashValue.getter()
{
  Hasher.init(_seed:)();
  Lyrics.Word.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100C6426C()
{
  Hasher.init(_seed:)();
  Lyrics.Word.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100C642A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void Lyrics.Syllable.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  String.hash(into:)();
  v3 = *(v0 + 40);
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(*(v0 + 48));
}

Swift::Int Lyrics.Syllable.hashValue.getter()
{
  Hasher.init(_seed:)();
  Lyrics.Syllable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100C643D8()
{
  Hasher.init(_seed:)();
  Lyrics.Syllable.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100C64414(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C8SyllableV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

double Lyrics.TextLine.backgroundVocals.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v3 + 72)))(v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t Lyrics.TextLine.backgroundText.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v1 + 72)))(v4);
  if (!v4[3])
  {
    return 0;
  }

  v2 = v4[2];

  sub_1000095E8(v4, &qword_1011BBA40);
  return v2;
}

uint64_t Lyrics.TextLine.capabilities.getter()
{
  type metadata accessor for Lyrics.TextLine(0);
}

uint64_t Lyrics.TextLine.translationKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for Lyrics.TextLine(0) + 52));

  return v1;
}

uint64_t Lyrics.TextLine.debugDescription.getter()
{
  _StringGuts.grow(_:)(54);
  v1._object = 0x8000000100E69F00;
  v1._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6954747261747320;
  v3._object = 0xEB000000003D656DLL;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 0x656D6954646E6520;
  v4._object = 0xE90000000000003DLL;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 0x3D7478657420;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7._countAndFlagsBits = (*(v0 + *(v6 + 64)))();
  String.append(_:)(v7);

  return 0;
}

uint64_t Lyrics.TextLine.textAlignment.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  if ((*(v0 + *(v1 + 56)))())
  {
    if ((*(v0 + *(v1 + 32)) & 1) == 0)
    {
      return 2;
    }
  }

  else if (*(v0 + *(v1 + 32)))
  {
    return 2;
  }

  return 0;
}

uint64_t Lyrics.TextLine.init(lineIndex:startTime:endTime:primaryVocalsStartTime:primaryVocalsEndTime:isFirstLineOfParagraph:language:translationKey:agentAlignment:capabilities:localizedLyricsDirectionProvider:localizedDirectionProvider:localizedTextProvider:localizedWordsProvider:localizedBackgroundVocalsProvider:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = type metadata accessor for Lyrics.TextLine(0);
  v32 = v31[7];
  v33 = type metadata accessor for Locale.Language();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  *(a9 + 16) = a1;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + v31[10]) = a12;
  *(a9 + v31[11]) = a13;
  *(a9 + v31[12]) = a2;
  result = sub_10006B010(a3, a9 + v32, &qword_1011BBA48);
  v35 = (a9 + v31[13]);
  *v35 = a4;
  v35[1] = a5;
  *(a9 + v31[8]) = a6 & 1;
  *(a9 + v31[9]) = a7;
  v36 = (a9 + v31[14]);
  *v36 = a8;
  v36[1] = a14;
  v37 = (a9 + v31[15]);
  *v37 = a15;
  v37[1] = a16;
  v38 = (a9 + v31[16]);
  *v38 = a17;
  v38[1] = a18;
  v39 = (a9 + v31[17]);
  *v39 = a19;
  v39[1] = a20;
  v40 = (a9 + v31[18]);
  *v40 = a21;
  v40[1] = a22;
  return result;
}

uint64_t Lyrics.TextLine.hash(into:)()
{
  Hasher._combine(_:)(*(v0 + 16));
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v3 + 64)))();
  String.hash(into:)();
}

Swift::Int Lyrics.TextLine.hashValue.getter()
{
  Hasher.init(_seed:)();
  Lyrics.TextLine.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100C64CB0(uint64_t a1)
{
  if ((*(v1 + *(a1 + 56)))())
  {
    if (*(v1 + *(a1 + 32)))
    {
      return 0;
    }
  }

  else if ((*(v1 + *(a1 + 32)) & 1) == 0)
  {
    return 0;
  }

  return 2;
}

Swift::Int sub_100C64D44()
{
  Hasher.init(_seed:)();
  Lyrics.TextLine.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Lyrics.InstrumentalLine.textAlignment.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.InstrumentalLine.debugDescription.getter()
{
  _StringGuts.grow(_:)(54);
  v0._object = 0x8000000100E69F20;
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6954747261747320;
  v2._object = 0xEB000000003D656DLL;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0x656D6954646E6520;
  v3._object = 0xE90000000000003DLL;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  return 0;
}

uint64_t Lyrics.SongwritersLine.textAlignment.getter()
{
  if (*(v0 + 24))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.SongwritersLine.debugDescription.getter()
{
  _StringGuts.grow(_:)(68);
  v0._object = 0x8000000100E69F40;
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6954747261747320;
  v2._object = 0xEB000000003D656DLL;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0x656D6954646E6520;
  v3._object = 0xE90000000000003DLL;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 0x697277676E6F7320;
  v4._object = 0xED00003D73726574;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  return 0;
}

uint64_t sub_100C650B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = (a1 + *(type metadata accessor for Lyrics.TextLine(0) + 52));
  v6 = v5[1];
  if (v6 && (v7 = *v5, v8 = *(v2 + *(type metadata accessor for Lyrics.Translation(0) + 32)), *(v8 + 16)) && (v9 = sub_10000F8B8(v7, v6), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 88 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[6];
    if (v14)
    {
      v15 = v11[5];
    }

    else
    {
      v15 = 0;
    }

    v19 = type metadata accessor for Lyrics.Translation.Line(0);
    v20 = *(v19 + 24);
    v21 = type metadata accessor for Locale.Language();
    (*(*(v21 - 8) + 16))(&a2[v20], v3, v21);
    *a2 = v13;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v14;
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  else
  {
    v16 = type metadata accessor for Lyrics.Translation.Line(0);
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

uint64_t _s7LyricsX0A0C11TranslationV8language10Foundation6LocaleV8LanguageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale.Language();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100C652E8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_100C65354@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Lyrics.Transliteration(0);
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin();
  v94 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v9 = &v80 - v8;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin();
  v13 = __chkstk_darwin();
  v15 = &v80 - v14;
  v17 = (a1 + *(v16 + 52));
  v18 = v17[1];
  if (v18)
  {
    v19 = *(v3 + *(v6 + 28));
    if (*(v19 + 16))
    {
      v90 = *v17;
      v92 = v12;
      v89 = v18;
      v20 = sub_10000F8B8(v90, v18);
      v12 = v92;
      if (v21)
      {
        v80 = v3;
        v91 = v9;
        v22 = *(v19 + 56) + 88 * v20;
        v24 = *(v22 + 32);
        v23 = *(v22 + 48);
        v25 = *(v22 + 64);
        v101 = *(v22 + 80);
        v100 = v25;
        v26 = *(v22 + 16);
        v96 = *v22;
        v97 = v26;
        v98 = v24;
        v99 = v23;
        v27 = *(a1 + v10[17]);
        v28 = sub_100C7CC04(&v96, v95);
        v29 = v27(v28);
        v30 = *(v29 + 16);
        v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v30)
        {
          v31 = *(v29 + 32);

          v32 = v91;
          if (!*(v97 + 16) || v31 != *(v97 + 32))
          {
            goto LABEL_12;
          }
        }

        else
        {

          v32 = v91;
          if (*(v97 + 16))
          {
LABEL_12:
            if (qword_1011BB880 != -1)
            {
              swift_once();
            }

            v35 = type metadata accessor for Logger();
            sub_1000060E4(v35, static Logger.lyrics);
            sub_100C7B4F8(a1, v15, type metadata accessor for Lyrics.TextLine);
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v36, v37))
            {
              LODWORD(v88) = v37;
              v38 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v95[0] = v87;
              v39 = v38;
              *v38 = 136446210;
              v40 = &v15[v10[13]];
              v41 = v40[1];
              if (v41)
              {
                v86 = *v40;
                v42 = v41;
              }

              else
              {
                v42 = 0xE300000000000000;
                v86 = 7104878;
              }

              sub_100C7B560(v15, type metadata accessor for Lyrics.TextLine);
              v43 = sub_1000109A8(v86, v42, v95);

              *(v39 + 1) = v43;
              _os_log_impl(&_mh_execute_header, v36, v88, "DEGENERATE TRANSLITERATION DATA start time of original line %{public}s and transliterated line do not match.", v39, 0xCu);
              sub_10000959C(v87);
            }

            else
            {

              sub_100C7B560(v15, type metadata accessor for Lyrics.TextLine);
            }
          }
        }

        v88 = a1[2];
        v44 = *(a1 + v10[10]);
        v45 = *a1;
        v46 = a1[1];
        v47 = *(a1 + v10[11]);
        LODWORD(v86) = *(a1 + v10[12]);
        v48 = type metadata accessor for Locale.Language();
        v49 = *(v48 - 8);
        v50 = *(v49 + 16);
        v51 = v80;
        v81 = v48;
        v50(v32, v80, v48);
        v82 = *(v49 + 56);
        v82(v32, 0, 1, v48);
        v52 = v10[9];
        LODWORD(v87) = *(a1 + v10[8]);
        v85 = *(a1 + v52);
        v53 = v83;
        sub_100C7B4F8(a1, v83, type metadata accessor for Lyrics.TextLine);
        v54 = (*(v92 + 80) + 16) & ~*(v92 + 80);
        v84 = swift_allocObject();
        sub_100C7B91C(v53, v84 + v54, type metadata accessor for Lyrics.TextLine);
        v55 = v94;
        sub_100C7B4F8(v51, v94, type metadata accessor for Lyrics.Transliteration);
        v56 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v57 = swift_allocObject();
        sub_100C7B91C(v55, v57 + v56, type metadata accessor for Lyrics.Transliteration);
        v58 = swift_allocObject();
        v59 = v99;
        v60 = v100;
        *(v58 + 48) = v98;
        *(v58 + 64) = v59;
        *(v58 + 80) = v60;
        *(v58 + 96) = v101;
        v61 = v97;
        *(v58 + 16) = v96;
        *(v58 + 32) = v61;
        v62 = swift_allocObject();
        v63 = v99;
        v64 = v100;
        *(v62 + 48) = v98;
        *(v62 + 64) = v63;
        *(v62 + 80) = v64;
        *(v62 + 96) = v101;
        v65 = v97;
        *(v62 + 16) = v96;
        *(v62 + 32) = v65;
        v66 = swift_allocObject();
        v67 = v99;
        v68 = v100;
        *(v66 + 48) = v98;
        *(v66 + 64) = v67;
        *(v66 + 80) = v68;
        *(v66 + 96) = v101;
        v69 = v97;
        *(v66 + 16) = v96;
        *(v66 + 32) = v69;
        v70 = v10[7];
        v82(a2 + v70, 1, 1, v81);
        a2[2] = v88;
        *a2 = v45;
        a2[1] = v46;
        *(a2 + v10[10]) = v44;
        *(a2 + v10[11]) = v47;
        *(a2 + v10[12]) = v86;
        sub_100C7CC04(&v96, v95);
        sub_100C7CC04(&v96, v95);
        v71 = v89;

        v72 = v85;

        sub_10006B010(v91, a2 + v70, &qword_1011BBA48);
        v73 = (a2 + v10[13]);
        *v73 = v90;
        v73[1] = v71;
        *(a2 + v10[8]) = v87;
        *(a2 + v10[9]) = v72;
        v74 = (a2 + v10[14]);
        v75 = v84;
        *v74 = sub_100C7CC3C;
        v74[1] = v75;
        v76 = (a2 + v10[15]);
        *v76 = sub_100C7CCAC;
        v76[1] = v57;
        v77 = (a2 + v10[16]);
        *v77 = Alert.message.getter;
        v77[1] = v58;
        v78 = (a2 + v10[17]);
        *v78 = Library.Menu.Request.excludedIdentifiers.getter;
        v78[1] = v62;
        v79 = (a2 + v10[18]);
        *v79 = sub_100C7CD64;
        v79[1] = v66;
        return (*(v92 + 56))(a2, 0, 1, v10);
      }
    }
  }

  v33 = *(v12 + 56);

  return v33(a2, 1, 1, v10, v13);
}

uint64_t Logger.lyrics.unsafeMutableAddressor()
{
  if (qword_1011BB880 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.lyrics);
}

uint64_t static Lyrics.useSpacesAsWordDelimiter(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Locale.Language();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v7 = &v27 - v6;
  sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  sub_1000089F8(a1, v7, &qword_1011BBA48);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v12 = &qword_1011BBA48;
    v13 = v7;
LABEL_7:
    sub_1000095E8(v13, v12);
    v21 = 1;
    return v21 & 1;
  }

  Locale.Language.languageCode.getter();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v15 = type metadata accessor for Locale.LanguageCode();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v11, 1, v15) == 1)
  {
    v12 = &qword_1011BBA50;
    v13 = v11;
    goto LABEL_7;
  }

  v28 = v14;
  Locale.LanguageCode.identifier.getter();
  v27 = v18;
  v19 = v11;
  v20 = *(v16 + 8);
  v20(v19, v15);
  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  v28(v5, v2);
  if (v17(v9, 1, v15) == 1)
  {
    v12 = &qword_1011BBA50;
    v13 = v9;
    goto LABEL_7;
  }

  v23 = Locale.LanguageCode.identifier.getter();
  v25 = v24;
  v20(v9, v15);
  if (qword_1011BB868 != -1)
  {
    swift_once();
  }

  v26 = sub_10048C9BC(v23, v25, qword_10121C0F8);

  v21 = v26 ^ 1;
  return v21 & 1;
}

uint64_t Lyrics.currentLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for Lyrics.Translation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BD4F0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = type metadata accessor for Locale.Language();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v7, &qword_1011BD4F0);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_1000095E8(v7, &qword_1011BD4F0);
    return sub_1000089F8(v1 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, v15, &qword_1011BBA48);
  }

  else
  {
    sub_100C7B4F8(v7, v5, type metadata accessor for Lyrics.Translation);
    sub_1000095E8(v7, &qword_1011BD4F0);
    (*(v9 + 16))(v11, v5, v8);
    sub_100C7B560(v5, type metadata accessor for Lyrics.Translation);
    v14 = v15;
    (*(v9 + 32))(v15, v11, v8);
    return (*(v9 + 56))(v14, 0, 1, v8);
  }
}

uint64_t sub_100C6642C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1000089F8(v3 + v6, a3, a2);
}

uint64_t sub_100C664B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  sub_10006B010(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t Lyrics.staticText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  if (*(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_100C66734(v0);
    v2 = v3;
    *v1 = v3;
    v1[1] = v4;
  }

  return v2;
}

void sub_100C66734(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  v40 = 0;
  v41 = 0xE000000000000000;
  v33 = *(v5 + 16);
  if (v33)
  {
    v6 = 0;
    v32 = v5 + 32;
    v29 = v5;
    while (v6 < *(v5 + 16))
    {
      v10 = *(v32 + 8 * v6);
      v7 = v40;
      v8 = v41;
      v38 = v40;
      v39 = v41;
      v11 = *(v10 + 16);
      if (v11)
      {
        v34 = v10;
        v35 = v6;
        v12 = &v4[*(v31 + 64)];
        v13 = &v4[*(v31 + 72)];
        v14 = v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v36 = *(v30 + 72);

        do
        {
          v21 = sub_100C7B4F8(v14, v4, type metadata accessor for Lyrics.TextLine);
          v22 = v38 & 0xFFFFFFFFFFFFLL;
          if ((v39 & 0x2000000000000000) != 0)
          {
            v22 = HIBYTE(v39) & 0xF;
          }

          if (v22)
          {
            v23._countAndFlagsBits = 10;
            v23._object = 0xE100000000000000;
            String.append(_:)(v23);
          }

          v24 = (*v12)(v21);
          v26 = v25;
          (*v13)(v42);
          v27 = v43;
          if (v43)
          {
            v15 = v42[2];

            sub_1000095E8(v42, &qword_1011BBA40);
            v37._countAndFlagsBits = 40;
            v37._object = 0xE100000000000000;

            v16._countAndFlagsBits = v15;
            v16._object = v27;
            String.append(_:)(v16);
            v17._countAndFlagsBits = 41;
            v17._object = 0xE100000000000000;
            String.append(_:)(v17);
            swift_bridgeObjectRelease_n();
            countAndFlagsBits = v37._countAndFlagsBits;
            object = v37._object;
          }

          else
          {
            countAndFlagsBits = 0;
            object = 0xE000000000000000;
          }

          v37._countAndFlagsBits = v24;
          v37._object = v26;

          v20._countAndFlagsBits = countAndFlagsBits;
          v20._object = object;
          String.append(_:)(v20);

          String.append(_:)(v37);

          sub_100C7B560(v4, type metadata accessor for Lyrics.TextLine);
          v14 += v36;
          --v11;
        }

        while (v11);
        v7 = v38;
        v8 = v39;
        v5 = v29;
        v6 = v35;
      }

      else
      {
      }

      ++v6;
      v40 = v7;
      v41 = v8;
      v9._countAndFlagsBits = 10;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);

      if (v6 == v33)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    String.trim()();
  }
}

uint64_t Lyrics.staticText.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*Lyrics.staticText.modify(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = Lyrics.staticText.getter();
  a1[1] = v3;
  return sub_100C66AB4;
}

uint64_t sub_100C66AB4(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v2 = *a1;
  v2[1] = v1;
}

uint64_t Lyrics.alignment(for:default:)(void *a1, uint64_t a2, char a3)
{
  if (!*(v3 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) && (a3 & 1) == 0)
  {
    return a2;
  }

  v4 = a1[3];
  v5 = a1[4];
  sub_10000954C(a1, v4);
  return (*(v5 + 24))(v4, v5);
}

uint64_t sub_100C66B8C(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = type metadata accessor for Lyrics.TextLine(0);
    v5 = (*(a1 + *(v4 + 64)))();
    v7 = v6;
    if (v5 == (*(a2 + *(v4 + 64)))() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100C66C74@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_100C7B4F8(v12, v10, type metadata accessor for Lyrics.TextLine);
      v14 = a1(v10);
      if (v3)
      {
        return sub_100C7B560(v10, type metadata accessor for Lyrics.TextLine);
      }

      if (v14)
      {
        break;
      }

      sub_100C7B560(v10, type metadata accessor for Lyrics.TextLine);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_100C7B91C(v10, v18, type metadata accessor for Lyrics.TextLine);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_100C66E50()
{
  v0 = sub_100C9C04C(&off_1010F2F90);
  result = swift_arrayDestroy();
  qword_10121C0F8 = v0;
  return result;
}

void Lyrics.AudioAttribute.hash(into:)(double a1)
{
  Hasher._combine(_:)(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  Hasher._combine(_:)(*&v2);
}

Swift::Int Lyrics.AudioAttribute.hashValue.getter(double a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  Hasher._combine(_:)(*&v2);
  return Hasher._finalize()();
}

Swift::Int sub_100C66F68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
  return Hasher._finalize()();
}

void sub_100C66FD0()
{
  v1 = *v0;
  Hasher._combine(_:)(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
}

Swift::Int sub_100C6701C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
  return Hasher._finalize()();
}

double Lyrics.spatialOffset.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  if (v4)
  {
    v5 = __clz(__rbit64(v4));
    return *(*(v1 + 48) + 8 * v5);
  }

  else
  {
    v6 = ((v2 + 63) >> 6) - 1;
    v7 = (v1 + 64);
    while (v6)
    {
      v9 = *v7++;
      v8 = v9;
      --v6;
      v4 -= 64;
      if (v9)
      {
        v5 = __clz(__rbit64(v8)) - v4;
        return *(*(v1 + 48) + 8 * v5);
      }
    }

    return 0.0;
  }
}

uint64_t Lyrics.__allocating_init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  Lyrics.init(identifier:songInfo:)(a1, a2, a3);
  return v6;
}

uint64_t Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v722 = a3;
  v672 = a2;
  v669 = a1;
  v716 = *v3;
  v5 = sub_10010FC20(&qword_1011BBA68);
  __chkstk_darwin(v5 - 8);
  v647 = v641 - v6;
  v7 = sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin(v7 - 8);
  v664 = v641 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v649 = v641 - v10;
  __chkstk_darwin(v11);
  v651 = v641 - v12;
  v668 = sub_10010FC20(&qword_1011BBA70);
  __chkstk_darwin(v668);
  v667 = v641 - v13;
  v14 = sub_10010FC20(&qword_1011BBA78);
  __chkstk_darwin(v14 - 8);
  v654 = v641 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v673 = v641 - v17;
  __chkstk_darwin(v18);
  v680 = v641 - v19;
  v20 = sub_10010FC20(&qword_1011BBA58);
  __chkstk_darwin(v20 - 8);
  v663 = v641 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v662 = v641 - v23;
  __chkstk_darwin(v24);
  v678 = v641 - v25;
  __chkstk_darwin(v26);
  v697 = v641 - v27;
  __chkstk_darwin(v28);
  v706 = v641 - v29;
  v30 = sub_10010FC20(&qword_1011BD4F0);
  __chkstk_darwin(v30 - 8);
  v659 = v641 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v658 = v641 - v33;
  __chkstk_darwin(v34);
  v657 = v641 - v35;
  v736 = type metadata accessor for Lyrics.TextLine(0);
  v725 = *(v736 - 8);
  __chkstk_darwin(v736);
  v728 = v641 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v727 = v641 - v38;
  __chkstk_darwin(v39);
  v740 = (v641 - v40);
  __chkstk_darwin(v41);
  v715 = v641 - v42;
  __chkstk_darwin(v43);
  v708 = v641 - v44;
  v45 = type metadata accessor for Lyrics.Transliteration(0);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v698 = v641 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v671 = (v641 - v49);
  __chkstk_darwin(v50);
  v724 = v641 - v51;
  __chkstk_darwin(v52);
  v723 = v641 - v53;
  v54 = type metadata accessor for Lyrics.Translation(0);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v674 = v641 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v688 = v641 - v58;
  __chkstk_darwin(v59);
  v675 = (v641 - v60);
  __chkstk_darwin(v61);
  v726 = v641 - v62;
  __chkstk_darwin(v63);
  v730 = v641 - v64;
  v65 = sub_10010FC20(&qword_1011BBA80);
  __chkstk_darwin(v65 - 8);
  v666 = v641 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v645 = v641 - v68;
  __chkstk_darwin(v69);
  v687 = v641 - v70;
  __chkstk_darwin(v71);
  v699 = v641 - v72;
  __chkstk_darwin(v73);
  v721 = v641 - v74;
  v737 = type metadata accessor for Locale();
  v733 = *(v737 - 8);
  __chkstk_darwin(v737);
  v650 = v641 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v690 = v641 - v77;
  __chkstk_darwin(v78);
  v739 = v641 - v79;
  __chkstk_darwin(v80);
  v729 = (v641 - v81);
  v741 = type metadata accessor for Locale.Language();
  v676 = *(v741 - 8);
  __chkstk_darwin(v741);
  v661 = v641 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v644 = v641 - v84;
  __chkstk_darwin(v85);
  v648 = v641 - v86;
  __chkstk_darwin(v87);
  v705 = v641 - v88;
  __chkstk_darwin(v89);
  v704 = v641 - v90;
  __chkstk_darwin(v91);
  v734 = v641 - v92;
  __chkstk_darwin(v93);
  v689 = v641 - v94;
  __chkstk_darwin(v95);
  v735 = v641 - v96;
  __chkstk_darwin(v97);
  v718 = v641 - v98;
  __chkstk_darwin(v99);
  v679 = v641 - v100;
  __chkstk_darwin(v101);
  v717 = v641 - v102;
  __chkstk_darwin(v103);
  v720 = v641 - v104;
  v105 = sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin(v105 - 8);
  v107 = v641 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __chkstk_darwin(v108);
  v111 = v641 - v110;
  v702 = v55;
  v112 = *(v55 + 56);
  v670 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  v112(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, 1, 1, v54, v109);
  v703 = v46;
  v113 = *(v46 + 56);
  countAndFlagsBits = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, 1, 1, v45);
  v695 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
  v114 = v54;
  v115 = v741;
  v700 = v114;
  v655 = v112;
  v656 = v55 + 56;
  (v112)(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, 1, 1);
  v646 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, 1, 1, v45);
  v660 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, 1, 1, v45);
  v683 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
  v731 = v45;
  v707 = v46 + 56;
  v701 = v113;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, 1, 1, v45);
  v116 = (v4 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v116 = 0;
  v116[1] = 0;
  v665 = v116;
  v117 = v672;
  *(v4 + 16) = v669;
  *(v4 + 24) = v117;
  v118 = *(v676 + 7);
  v118(v111, 1, 1, v115);

  v119 = [v722 language];
  if (v119)
  {
    v120 = v119;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.Language.init(identifier:)();
    v118(v107, 0, 1, v115);
    sub_10006B010(v107, v111, &qword_1011BBA48);
  }

  else
  {
    sub_1000095E8(v111, &qword_1011BBA48);
    v118(v111, 1, 1, v115);
  }

  v121 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage;
  v682 = v111;
  sub_1000089F8(v111, v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_1011BBA48);
  v122 = v722;
  [v722 leadingSilence];
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence) = v123;
  v124 = [v122 songwriters];
  v125 = sub_100009F78(0, &qword_1011BBA98);
  v126 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v126 >> 62)
  {
    v127 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v128 = _swiftEmptyArrayStorage;
  v738 = v4;
  v652 = v125;
  object = v121;
  if (v127)
  {
    v129 = v126;
    *&v742 = _swiftEmptyArrayStorage;
    sub_100015C64(0, v127 & ~(v127 >> 63), 0);
    if (v127 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v130 = 0;
    v131 = v742;
    v132 = v129;
    v732 = (v129 & 0xC000000000000001);
    v133 = v127;
    do
    {
      if (v732)
      {
        v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v134 = *(v132 + 8 * v130 + 32);
      }

      v135 = v134;
      v136 = [v134 name];
      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = v138;

      *&v742 = v131;
      v141 = v131[2];
      v140 = v131[3];
      if (v141 >= v140 >> 1)
      {
        sub_100015C64((v140 > 1), v141 + 1, 1);
        v131 = v742;
      }

      ++v130;
      v131[2] = v141 + 1;
      v142 = &v131[2 * v141];
      v142[4] = v137;
      v142[5] = v139;
      v4 = v738;
      v132 = v129;
    }

    while (v133 != v130);

    v128 = _swiftEmptyArrayStorage;
  }

  else
  {

    v131 = _swiftEmptyArrayStorage;
  }

  v143 = OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters) = v131;
  v127 = v722;
  v144 = [v722 audioAttributes];
  v129 = v729;
  v641[2] = v143;
  if (v144)
  {
    v145 = v144;
    if ([v144 isSpatialRole])
    {
      [v145 lyricsOffset];
      v147 = v146;

      sub_10010FC20(&qword_1011BBB00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = v147;
      v149 = sub_100C776BC(inited);
      swift_setDeallocating();
      goto LABEL_22;
    }
  }

  v149 = &_swiftEmptySetSingleton;
LABEL_22:
  v150 = OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes) = v149;
  v151 = [v127 type];
  v152 = v151 == 1;
  if (v151 == 2)
  {
    v152 = 2;
  }

  *(v4 + 56) = v152;
  v765 = _swiftEmptyArrayStorage;
  v696 = swift_allocObject();
  swift_weakInit();
  v692 = swift_allocObject();
  *(v692 + 16) = 0;
  v691 = swift_allocObject();
  *(v691 + 16) = 0;
  v153 = [v127 language];
  if (v153)
  {
    v154 = v153;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v155 = v720;
    Locale.Language.init(identifier:)();
    v156 = Locale.Language.characterDirection.getter();
    (*(v676 + 1))(v155, v741);
    v719 = v156 == 2;
  }

  else
  {
    v719 = 0;
  }

  v157 = [v127 language];
  if (v157)
  {
    v158 = v157;
    v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v161 = v160;
  }

  else
  {
    v159 = 0;
    v161 = 0;
  }

  v694 = sub_100C77810(v159, v161);

  v641[3] = v150;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100C77C5C(_swiftEmptyArrayStorage);
    v162 = v181;
  }

  else
  {
    v162 = &_swiftEmptySetSingleton;
  }

  v163 = swift_allocObject();
  v693 = v163;
  *(v163 + 16) = v162;
  v653 = v163 + 16;
  v164 = [v127 lyricsSections];
  sub_100009F78(0, &qword_1011BBAA0);
  v165 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v165 >> 62)
  {
    v166 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v167 = v721;
  if (v166 >= 1)
  {
    v125 = [v127 lyricsSections];
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v4 >> 62))
    {
      v168 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v168)
      {
LABEL_37:
        if (v168 < 1)
        {
          __break(1u);
          goto LABEL_429;
        }

        v169 = 0;
        v732 = _swiftEmptyArrayStorage;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v170 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v170 = *(v4 + 8 * v169 + 32);
          }

          v171 = v170;
          v172 = [v170 lines];
          sub_100009F78(0, &qword_1011BBAA8);
          v173 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v125 = sub_100C7948C(v173, v693, v691, v692, v722, v719, v694, v696);

          sub_100C6DCD4(v174);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v732 = sub_100C70E70(0, v732[2] + 1, 1, v732);
          }

          v176 = v732[2];
          v175 = v732[3];
          if (v176 >= v175 >> 1)
          {
            v732 = sub_100C70E70((v175 > 1), v176 + 1, 1, v732);
          }

          ++v169;

          v177 = v732;
          v732[2] = v176 + 1;
          v177[v176 + 4] = v125;
        }

        while (v168 != v169);

        v167 = v721;
        v129 = v729;
        v127 = v722;
        v128 = _swiftEmptyArrayStorage;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_54:
    v168 = _CocoaArrayWrapper.endIndex.getter();
    if (v168)
    {
      goto LABEL_37;
    }

LABEL_55:

    v732 = _swiftEmptyArrayStorage;
    v167 = v721;
    goto LABEL_56;
  }

  v178 = [v127 lyricsLines];
  sub_100009F78(0, &qword_1011BBAA8);
  v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v179 = sub_100C7948C(v125, v693, v691, v692, v127, v719, v694, v696);

  v765 = v179;
  sub_10010FC20(&qword_1011BBAB0);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_100EBC6B0;
  v732 = v180;
  *(v180 + 32) = v179;

LABEL_56:
  v182 = swift_allocObject();
  v720 = v182;
  v183 = v716;
  *(v182 + 16) = v127;
  *(v182 + 24) = v183;
  v184 = swift_allocObject();
  v184[2] = 0;
  v686 = v184 + 2;
  v722 = v184;
  v184[3] = _swiftEmptyArrayStorage;
  v185 = swift_allocObject();
  *(v185 + 16) = 0;
  v681 = v185 + 16;
  v716 = v185;
  *(v185 + 24) = _swiftEmptyArrayStorage;
  v677 = v127;
  v186 = static Locale.preferredLanguages.getter();
  v187 = v186;
  v714 = *(v186 + 16);
  if (!v714)
  {

    v189 = _swiftEmptyArrayStorage;
    goto LABEL_118;
  }

  v188 = 0;
  v712 = v186 + 32;
  v128 = (v676 + 8);
  v711 = (v733 + 16);
  v710 = (v733 + 8);
  v709 = (v733 + 32);
  v189 = _swiftEmptyArrayStorage;
  v713 = v186;
  do
  {
    if (v188 >= v187[2])
    {
      goto LABEL_395;
    }

    v190 = v189;

    Locale.init(identifier:)();
    v191 = v717;
    Locale.language.getter();
    Locale.Language.script.getter();
    v192 = *v128;
    (*v128)(v191, v741);
    v193 = type metadata accessor for Locale.Script();
    v194 = *(v193 - 8);
    if ((*(v194 + 48))(v167, 1, v193) == 1)
    {
      sub_1000095E8(v167, &qword_1011BBA80);
      v189 = v190;
      goto LABEL_97;
    }

    v195 = Locale.Script.identifier.getter();
    v196 = v167;
    v198 = v197;
    (*(v194 + 8))(v196, v193);
    if (qword_1011BB860 != -1)
    {
      swift_once();
    }

    v199 = static Lyrics.scriptMap;
    if (*(static Lyrics.scriptMap + 16))
    {
      v200 = sub_10000F8B8(v195, v198);
      if (v201)
      {
        v202 = (*(v199 + 56) + 16 * v200);
        v195 = *v202;
        v203 = v202[1];

        v198 = v203;
      }
    }

    v204 = *(v716 + 16);
    v205 = *(v716 + 24);
    v206 = *(v205 + 16);
    if (v204)
    {

      sub_100C756C8(v195, v198, v205 + 32, v206, (v204 + 16));
      v208 = v207;

      if ((v208 & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_77:
      sub_100C75B84(v195, v198);
      goto LABEL_78;
    }

    if (!v206)
    {
      goto LABEL_77;
    }

    v209 = (v205 + 40);
    while (1)
    {
      v210 = *(v209 - 1) == v195 && *v209 == v198;
      if (v210 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v209 += 2;
      if (!--v206)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    if (v195 == 1853120844 && v198 == 0xE400000000000000)
    {

      v189 = v190;
      v129 = v729;
      goto LABEL_97;
    }

    v211 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v189 = v190;
    v129 = v729;
    if ((v211 & 1) == 0)
    {
      if (qword_1011BB888 != -1)
      {
        swift_once();
      }

      v212 = v679;
      Locale.language.getter();
      v213 = LyricsOptionsManager.isDefaultScriptSupported(for:)(v212);
      v192(v212, v741);
      if (v213)
      {
        v214 = *(v716 + 16);
        v215 = *(v716 + 24);
        v216 = *(v215 + 16);
        if (v214)
        {

          sub_100C756C8(1853120844, 0xE400000000000000, v215 + 32, v216, (v214 + 16));
          v218 = v217;

          if (v218)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (!v216)
          {
LABEL_96:
            sub_100C75B84(1853120844, 0xE400000000000000);
            goto LABEL_97;
          }

          v219 = (v215 + 40);
          while (1)
          {
            v220 = *(v219 - 1) == 1853120844 && *v219 == 0xE400000000000000;
            if (v220 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v219 += 2;
            if (!--v216)
            {
              goto LABEL_96;
            }
          }
        }
      }
    }

LABEL_97:
    v221 = v718;
    Locale.language.getter();
    v222 = sub_100C6E0F8();
    v224 = v223;
    v192(v221, v741);
    v225 = v737;
    if (!v224)
    {
      goto LABEL_111;
    }

    v226 = *(v722 + 2);
    v227 = *(v722 + 3);
    v228 = *(v227 + 16);
    if (v226)
    {

      sub_100C756C8(v222, v224, v227 + 32, v228, (v226 + 16));
      v230 = v229;

      if ((v230 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v228)
    {
      v231 = (v227 + 40);
      do
      {
        v232 = *(v231 - 1) == v222 && v224 == *v231;
        if (v232 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_110;
        }

        v231 += 2;
      }

      while (--v228);
    }

    sub_100C75B84(v222, v224);
LABEL_110:

    v189 = v190;
    v129 = v729;
LABEL_111:
    (*v711)(v739, v129, v225);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v189 = sub_100C70C94(0, *(v189 + 16) + 1, 1, v189, &qword_1011BC190, &unk_100F0F0B8, &type metadata accessor for Locale);
    }

    v187 = v713;
    v125 = *(v189 + 16);
    v233 = *(v189 + 24);
    if (v125 >= v233 >> 1)
    {
      v189 = sub_100C70C94(v233 > 1, v125 + 1, 1, v189, &qword_1011BC190, &unk_100F0F0B8, &type metadata accessor for Locale);
    }

    ++v188;
    v234 = v733;
    (*(v733 + 8))(v129, v225);
    *(v189 + 16) = v125 + 1;
    (*(v234 + 32))(v189 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v125, v739, v225);
    v167 = v721;
  }

  while (v188 != v714);

LABEL_118:
  v125 = sub_100C76488(_swiftEmptyArrayStorage);
  v235 = [v677 translations];
  sub_100009F78(0, &qword_1011BBAB8);
  v188 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v188 >> 62)
  {
    goto LABEL_404;
  }

  v236 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v718 = v125;
    v641[1] = type metadata accessor for Lyrics(0);
    v717 = v189;
    if (v236)
    {
      v237 = 0;
      v125 = 0;
      v714 = (v188 & 0xC000000000000001);
      v684 = v188 + 32;
      v685 = v188 & 0xFFFFFFFFFFFFFF8;
      v711 = (v676 + 16);
      v710 = (v676 + 32);
      v709 = (v676 + 8);
      v729 = _swiftEmptyArrayStorage;
      v189 = v699;
      v713 = v188;
      v712 = v236;
      while (1)
      {
        while (1)
        {
          if (v714)
          {
            v238 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v237 >= *(v685 + 16))
            {
              goto LABEL_402;
            }

            v238 = *(v684 + 8 * v237);
          }

          v239 = v238;
          v240 = __OFADD__(v237++, 1);
          if (v240)
          {
            goto LABEL_396;
          }

          v241 = [v238 linesMap];
          *&v742 = 0;
          sub_100009F78(0, &qword_1011BBAA8);
          static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

          v242 = v742;
          if (v742)
          {
            break;
          }

          if (v237 == v236)
          {
            goto LABEL_151;
          }
        }

        v721 = v237;
        v243 = v720;

        v128 = v239;
        v244 = sub_100C7A874(v242, sub_100C7A84C, v243, v128);
        v739 = v125;
        if (v125)
        {
          goto LABEL_430;
        }

        v245 = v244;

        v246 = [v128 language];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v247 = v735;
        Locale.Language.init(identifier:)();
        v248 = v689;
        v249 = v741;
        (*v711)(v689, v247, v741);
        v250 = [v128 language];
        v251 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v253 = v252;

        v254 = [v128 type] == 1;
        LOBYTE(v250) = [v128 isAutomaticallyCreated];
        v255 = v730;
        (*v710)(v730, v248, v249);
        v256 = v700;
        v257 = (v255 + v700[5]);
        *v257 = v251;
        v257[1] = v253;
        *(v255 + v256[6]) = v254;
        *(v255 + v256[7]) = v250;
        *(v255 + v256[8]) = v245;
        sub_100C7B4F8(v255, v726, type metadata accessor for Lyrics.Translation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v729 = sub_100C70C94(0, v729[2] + 1, 1, v729, &qword_1011BC140, &unk_100F0F070, type metadata accessor for Lyrics.Translation);
        }

        v259 = v729[2];
        v258 = v729[3];
        v125 = v739;
        v260 = v735;
        v188 = v713;
        if (v259 >= v258 >> 1)
        {
          v729 = sub_100C70C94(v258 > 1, v259 + 1, 1, v729, &qword_1011BC140, &unk_100F0F070, type metadata accessor for Lyrics.Translation);
        }

        v261 = v729;
        v729[2] = v259 + 1;
        sub_100C7B91C(v726, v261 + ((*(v702 + 80) + 32) & ~*(v702 + 80)) + *(v702 + 72) * v259, type metadata accessor for Lyrics.Translation);
        v262 = sub_100C6E0F8();
        if (v263)
        {
          v264 = v262;
          v265 = v263;
          v267 = *(v722 + 2);
          v266 = *(v722 + 3);
          v268 = *(v266 + 16);
          if (v267)
          {

            sub_100C756C8(v264, v265, v266 + 32, v268, (v267 + 16));
            v270 = v269;

            if (v270)
            {
              goto LABEL_147;
            }
          }

          else
          {
            if (!v268)
            {
LABEL_147:

              sub_100C7B560(v730, type metadata accessor for Lyrics.Translation);
              (*v709)(v735, v741);
              goto LABEL_148;
            }

            v275 = (v266 + 40);
            while (1)
            {
              v276 = *(v275 - 1) == v264 && v265 == *v275;
              if (v276 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v275 += 2;
              if (!--v268)
              {
                goto LABEL_147;
              }
            }
          }

          v271 = v730;
          v272 = v675;
          sub_100C7B4F8(v730, v675, type metadata accessor for Lyrics.Translation);
          v273 = v718;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v742 = v273;
          sub_100C73E54(v272, v264, v265, isUniquelyReferenced_nonNull_native);

          sub_100C7B560(v271, type metadata accessor for Lyrics.Translation);
          (*v709)(v735, v741);
          v718 = v742;
        }

        else
        {

          sub_100C7B560(v730, type metadata accessor for Lyrics.Translation);
          (*v709)(v260, v741);
        }

LABEL_148:
        v189 = v699;
        v236 = v712;
        v237 = v721;
        if (v721 == v712)
        {
          goto LABEL_151;
        }
      }
    }

    v125 = 0;
    v729 = _swiftEmptyArrayStorage;
    v189 = v699;
LABEL_151:

    v277 = OBJC_IVAR____TtC7LyricsX6Lyrics_translations;
    *(v738 + OBJC_IVAR____TtC7LyricsX6Lyrics_translations) = v729;

    v709 = sub_100C76670(_swiftEmptyArrayStorage);
    v278 = [v677 transliterations];
    sub_100009F78(0, &qword_1011BBAC8);
    v279 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v279 >> 62)
    {
      v280 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v280 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v188 = v695;
    v739 = v125;
    if (v280)
    {
      v710 = v277;
      v281 = 0;
      v735 = v279 & 0xC000000000000001;
      v712 = v279 & 0xFFFFFFFFFFFFFF8;
      v711 = (v279 + 32);
      v714 = (v676 + 16);
      v713 = (v676 + 8);
      v721 = _swiftEmptyArrayStorage;
      v730 = v279;
      v726 = v280;
      while (1)
      {
        while (1)
        {
          if (v735)
          {
            v282 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v281 >= *(v712 + 16))
            {
              goto LABEL_403;
            }

            v282 = v711[v281];
          }

          v283 = v282;
          v240 = __OFADD__(v281++, 1);
          if (v240)
          {
            goto LABEL_397;
          }

          v125 = [v282 linesMap];
          *&v742 = 0;
          sub_100009F78(0, &qword_1011BBAA8);
          static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

          v284 = v742;
          if (v742)
          {
            break;
          }

          if (v281 == v280)
          {
            goto LABEL_184;
          }
        }

        v285 = v720;

        v128 = v283;
        v286 = v739;
        v287 = sub_100C7A874(v284, sub_100C7A84C, v285, v128);
        v739 = v286;
        if (v286)
        {

          v640 = v738;

          sub_1000095E8(object + v640, &qword_1011BBA48);

          sub_1000095E8(v640 + v670, &qword_1011BD4F0);
          sub_1000095E8(v640 + countAndFlagsBits, &qword_1011BBA58);
          sub_1000095E8(v640 + v188, &qword_1011BD4F0);
          sub_1000095E8(v646 + v640, &qword_1011BBA58);
          sub_1000095E8(v640 + v660, &qword_1011BBA58);
          sub_1000095E8(v640 + v683, &qword_1011BBA58);

          goto LABEL_432;
        }

        v288 = v287;

        v289 = [v128 language];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v290 = v734;
        Locale.Language.init(identifier:)();
        v291 = v723;
        (*v714)(v723, v290, v741);
        v292 = [v128 language];
        v293 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v295 = v294;

        v296 = [v128 isAutomaticallyCreated];
        v297 = v731;
        v298 = &v291[v731[5]];
        *v298 = v293;
        v298[1] = v295;
        v291[v297[6]] = v296;
        *&v291[v297[7]] = v288;
        sub_100C7B4F8(v291, v724, type metadata accessor for Lyrics.Transliteration);
        v299 = v721;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v299 = sub_100C70C94(0, *(v299 + 2) + 1, 1, v299, &qword_1011BC158, &unk_100F0F088, type metadata accessor for Lyrics.Transliteration);
        }

        v301 = *(v299 + 2);
        v300 = *(v299 + 3);
        v302 = v734;
        if (v301 >= v300 >> 1)
        {
          v299 = sub_100C70C94(v300 > 1, v301 + 1, 1, v299, &qword_1011BC158, &unk_100F0F088, type metadata accessor for Lyrics.Transliteration);
        }

        *(v299 + 2) = v301 + 1;
        v303 = (*(v703 + 80) + 32) & ~*(v703 + 80);
        v721 = v299;
        sub_100C7B91C(v724, &v299[v303 + *(v703 + 72) * v301], type metadata accessor for Lyrics.Transliteration);
        Locale.Language.script.getter();
        v125 = type metadata accessor for Locale.Script();
        v304 = *(v125 - 8);
        if ((*(v304 + 48))(v189, 1, v125) == 1)
        {

          sub_100C7B560(v723, type metadata accessor for Lyrics.Transliteration);
          (*v713)(v302, v741);
          sub_1000095E8(v189, &qword_1011BBA80);
        }

        else
        {
          v305 = Locale.Script.identifier.getter();
          v307 = v306;
          (*(v304 + 8))(v189, v125);
          v125 = *(v716 + 16);
          v308 = *(v716 + 24);
          v309 = *(v308 + 16);
          if (v125)
          {

            sub_100C756C8(v305, v307, v308 + 32, v309, (v125 + 16));
            v311 = v310;

            if (v311)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if (!v309)
            {
LABEL_180:

              sub_100C7B560(v723, type metadata accessor for Lyrics.Transliteration);
              (*v713)(v734, v741);
              goto LABEL_181;
            }

            v125 = v308 + 40;
            while (1)
            {
              v317 = *(v125 - 8) == v305 && *v125 == v307;
              if (v317 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v125 += 16;
              if (!--v309)
              {
                goto LABEL_180;
              }
            }
          }

          v125 = type metadata accessor for Lyrics.Transliteration;
          v312 = v723;
          v313 = v671;
          sub_100C7B4F8(v723, v671, type metadata accessor for Lyrics.Transliteration);
          v314 = v709;
          v315 = swift_isUniquelyReferenced_nonNull_native();
          *&v742 = v314;
          sub_100C73CC0(v313, v305, v307, v315);

          v316 = v312;
          v189 = v699;
          sub_100C7B560(v316, type metadata accessor for Lyrics.Transliteration);
          (*v713)(v734, v741);
          v709 = v742;
        }

LABEL_181:
        v188 = v695;
        v280 = v726;
        if (v281 == v726)
        {
          goto LABEL_184;
        }
      }
    }

    v721 = _swiftEmptyArrayStorage;
LABEL_184:

    v318 = v738;
    *(v738 + OBJC_IVAR____TtC7LyricsX6Lyrics_transliterations) = v721;
    v710 = *(v717 + 2);
    if (v710)
    {
      v319 = v733;
      v712 = &v717[(*(v733 + 80) + 32) & ~*(v733 + 80)];

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v320 = 0;
      v713 = (v319 + 16);
      v730 = v676 + 8;
      v689 = v676 + 48;
      v665 = (v676 + 16);
      v699 = (v703 + 48);
      v711 = (v319 + 8);
      v685 = v319 + 56;
      v671 = (v319 + 48);
      v646 = (v319 + 32);
      v675 = (v702 + 48);
      v676 = (v676 + 32);
      v188 = v687;
      v125 = v737;
      v321 = v690;
      v322 = v741;
LABEL_189:
      if (v320 >= *(v717 + 2))
      {
        goto LABEL_399;
      }

      v323 = *(v733 + 72);
      v726 = v320;
      v735 = *(v733 + 16);
      (v735)(v321, v712 + v323 * v320, v125);
      v324 = v704;
      Locale.language.getter();
      v325 = sub_100C6E0F8();
      v327 = v326;
      v189 = *v730;
      (*v730)(v324, v322);
      if (!v327)
      {
        goto LABEL_228;
      }

      if (!*(v718 + 2))
      {

        goto LABEL_228;
      }

      v328 = sub_10000F8B8(v325, v327);
      v330 = v329;

      if ((v330 & 1) == 0)
      {
        goto LABEL_228;
      }

      v331 = *(v718 + 7) + *(v702 + 72) * v328;
      v332 = v674;
      sub_100C7B4F8(v331, v674, type metadata accessor for Lyrics.Translation);
      sub_100C7B91C(v332, v688, type metadata accessor for Lyrics.Translation);
      v333 = *v689;
      v334 = v682;
      if ((*v689)(v682, 1, v322))
      {
        v335 = *(v722 + 3);
        if (v335[2])
        {
          v336 = v189;
          v337 = 0;
          v338 = 0;
LABEL_199:
          v342 = v335[4];
          v341 = v335[5];

          if (v337)
          {
            if (!v341)
            {
              v189 = v336;
LABEL_208:

LABEL_215:
              v714 = v189;
              v348 = v700;
              if (*(v688 + v700[6]))
              {
                v349 = v695;
                v350 = v738;
                v351 = v659;
                sub_1000089F8(v738 + v695, v659, &qword_1011BD4F0);
                if ((*v675)(v351, 1, v348) == 1)
                {
                  sub_1000095E8(v351, &qword_1011BD4F0);
                  v352 = v658;
                  sub_100C7B91C(v688, v658, type metadata accessor for Lyrics.Translation);
                  v655(v352, 0, 1, v348);
                  swift_beginAccess();
                  v353 = v350 + v349;
                  v354 = v352;
                  goto LABEL_220;
                }

LABEL_226:
                sub_100C7B560(v688, type metadata accessor for Lyrics.Translation);
                sub_1000095E8(v351, &qword_1011BD4F0);
              }

              else
              {
                v355 = v738;
                v351 = v657;
                sub_1000089F8(v738 + v670, v657, &qword_1011BD4F0);
                if ((*v675)(v351, 1, v348) != 1)
                {
                  goto LABEL_226;
                }

                sub_1000095E8(v351, &qword_1011BD4F0);
                v356 = v658;
                sub_100C7B91C(v688, v658, type metadata accessor for Lyrics.Translation);
                v655(v356, 0, 1, v348);
                v357 = v670;
                swift_beginAccess();
                v353 = v355 + v357;
                v354 = v356;
LABEL_220:
                sub_10006B010(v354, v353, &qword_1011BD4F0);
                swift_endAccess();
              }

              v189 = v714;
              goto LABEL_228;
            }

            if (v338 == v342 && v337 == v341)
            {

              v189 = v336;
            }

            else
            {
              v343 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v189 = v336;
              if ((v343 & 1) == 0)
              {
                goto LABEL_215;
              }
            }
          }

          else
          {
            v189 = v336;
            if (v341)
            {
              goto LABEL_208;
            }
          }
        }
      }

      else
      {
        v339 = v679;
        (*v665)(v679, v334, v322);
        v338 = sub_100C6E0F8();
        v337 = v340;
        (v189)(v339, v322);
        v335 = *(v722 + 3);
        if (v335[2])
        {
          v336 = v189;
          goto LABEL_199;
        }

        if (v337)
        {
          goto LABEL_208;
        }
      }

      v344 = v682;
      if (v333(v682, 1, v322))
      {
        sub_100C6E0F8();
        v346 = v345;
LABEL_212:
        if (!v346)
        {
          goto LABEL_215;
        }

        goto LABEL_213;
      }

      v358 = v679;
      (*v665)(v679, v344, v322);
      v359 = sub_100C6E0F8();
      v361 = v360;
      (v189)(v358, v322);
      v362 = sub_100C6E0F8();
      v346 = v363;
      if (!v361)
      {
        goto LABEL_212;
      }

      if (v363)
      {
        if (v359 == v362 && v361 == v363)
        {

          goto LABEL_208;
        }

        v487 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v487)
        {
          goto LABEL_215;
        }
      }

      else
      {
LABEL_213:
      }

      LOBYTE(v742) = 15;
      v347 = sub_100025DDC();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v347))
      {
        goto LABEL_215;
      }

      sub_100C7B560(v688, type metadata accessor for Lyrics.Translation);
LABEL_228:
      v364 = v705;
      Locale.language.getter();
      Locale.Language.script.getter();
      (v189)(v364, v322);
      v365 = v321;
      v366 = type metadata accessor for Locale.Script();
      v367 = *(v366 - 8);
      v128 = (v367 + 48);
      v368 = *(v367 + 48);
      if (v368(v188, 1, v366) == 1)
      {
        v125 = v737;
        (*v711)(v365, v737);
        sub_1000095E8(v188, &qword_1011BBA80);
        v321 = v365;
        goto LABEL_187;
      }

      v734 = v368;
      v369 = Locale.Script.identifier.getter();
      v371 = v370;
      v373 = *(v367 + 8);
      v372 = v367 + 8;
      v723 = v373;
      (v373)(v188, v366);
      if (qword_1011BB860 != -1)
      {
        swift_once();
      }

      v374 = static Lyrics.scriptMap;
      v375 = v709;
      if (*(static Lyrics.scriptMap + 16))
      {
        v376 = sub_10000F8B8(v369, v371);
        if (v377)
        {
          v378 = (*(v374 + 56) + 16 * v376);
          v369 = *v378;
          v379 = v378[1];

          v371 = v379;
        }
      }

      v724 = v372;
      if (!v375[2])
      {

LABEL_238:
        v390 = 1;
        v701(v697, 1, 1, v731);
        if (v375[2])
        {
          v391 = sub_10000F8B8(1853120844, 0xE400000000000000);
          if (v392)
          {
            v393 = v706;
            sub_100C7B4F8(v375[7] + *(v703 + 72) * v391, v706, type metadata accessor for Lyrics.Transliteration);
            v394 = v393;
            v390 = 0;
            goto LABEL_243;
          }

          v390 = 1;
        }

        v394 = v706;
LABEL_243:
        v395 = v731;
        v701(v394, v390, 1, v731);
        v389 = *v699;
        v396 = v697;
        if ((*v699)(v697, 1, v395) != 1)
        {
          sub_1000095E8(v396, &qword_1011BBA58);
        }

        goto LABEL_245;
      }

      v380 = sub_10000F8B8(v369, v371);
      v382 = v381;

      if ((v382 & 1) == 0)
      {
        goto LABEL_238;
      }

      v383 = v703;
      v384 = v697;
      sub_100C7B4F8(v375[7] + *(v703 + 72) * v380, v697, type metadata accessor for Lyrics.Transliteration);
      v385 = v731;
      v386 = v701;
      v701(v384, 0, 1, v731);
      v387 = v384;
      v388 = v706;
      sub_100C7B91C(v387, v706, type metadata accessor for Lyrics.Transliteration);
      v386(v388, 0, 1, v385);
      v389 = *(v383 + 48);
LABEL_245:
      v397 = v706;
      v398 = v731;
      if (v389(v706, 1, v731) == 1)
      {
        v321 = v690;
        v125 = v737;
        (*v711)(v690, v737);
        v399 = v397;
      }

      else
      {
        v400 = v698;
        sub_100C7B91C(v397, v698, type metadata accessor for Lyrics.Transliteration);
        v401 = v678;
        sub_1000089F8(v738 + v683, v678, &qword_1011BBA58);
        if (v389(v401, 1, v398) == 1)
        {
          v684 = v366;
          v714 = v189;
          sub_1000095E8(v401, &qword_1011BBA58);
          v402 = v680;
          v188 = v737;
          v403 = v735;
          (v735)(v680, v690, v737);
          v404 = *v685;
          v405 = 1;
          (*v685)(v402, 0, 1, v188);
          v406 = v667;
          if (*(v717 + 2))
          {
            v407 = v673;
            v403(v673, v712, v188);
            v408 = v407;
            v405 = 0;
          }

          else
          {
            v408 = v673;
          }

          v404(v408, v405, 1, v188);
          v409 = *(v668 + 48);
          v410 = v680;
          sub_1000089F8(v680, v406, &qword_1011BBA78);
          sub_1000089F8(v408, v406 + v409, &qword_1011BBA78);
          v411 = *v671;
          if ((*v671)(v406, 1, v188) == 1)
          {
            sub_1000095E8(v408, &qword_1011BBA78);
            sub_1000095E8(v410, &qword_1011BBA78);
            v412 = v411(v406 + v409, 1, v188);
            v413 = v734;
            if (v412 == 1)
            {
              sub_1000095E8(v406, &qword_1011BBA78);
              v414 = v684;
              goto LABEL_261;
            }

LABEL_258:
            sub_1000095E8(v406, &qword_1011BBA70);
            v414 = v684;
            goto LABEL_269;
          }

          v415 = v654;
          sub_1000089F8(v406, v654, &qword_1011BBA78);
          if (v411(v406 + v409, 1, v188) == 1)
          {
            sub_1000095E8(v673, &qword_1011BBA78);
            sub_1000095E8(v680, &qword_1011BBA78);
            (*v711)(v415, v188);
            v413 = v734;
            goto LABEL_258;
          }

          v416 = v415;
          v417 = v650;
          (*v646)(v650, v406 + v409, v188);
          sub_100C7BB04(&qword_1011BBAF0, &type metadata accessor for Locale);
          LODWORD(v735) = dispatch thunk of static Equatable.== infix(_:_:)();
          v418 = *v711;
          (*v711)(v417, v188);
          sub_1000095E8(v673, &qword_1011BBA78);
          sub_1000095E8(v680, &qword_1011BBA78);
          (v418)(v416, v188);
          sub_1000095E8(v406, &qword_1011BBA78);
          v414 = v684;
          v413 = v734;
          if (v735)
          {
LABEL_261:
            v419 = v651;
            Locale.Language.languageCode.getter();
            v420 = type metadata accessor for Locale.LanguageCode();
            v421 = *(v420 - 8);
            v422 = *(v421 + 48);
            if (v422(v419, 1, v420) == 1)
            {
              v423 = v419;
              v424 = &qword_1011BBA50;
LABEL_263:
              sub_1000095E8(v423, v424);
              goto LABEL_269;
            }

            Locale.LanguageCode.identifier.getter();
            v735 = *(v421 + 8);
            (v735)(v419, v420);
            v425 = String.lowercased()();
            countAndFlagsBits = v425._countAndFlagsBits;

            v188 = v648;
            Locale.language.getter();
            v426 = v649;
            Locale.Language.languageCode.getter();
            v714(v188, v741);
            if (v422(v426, 1, v420) == 1)
            {

              sub_1000095E8(v426, &qword_1011BBA50);
              v413 = v734;
              v414 = v684;
              goto LABEL_269;
            }

            object = v425._object;
            Locale.LanguageCode.identifier.getter();
            (v735)(v426, v420);
            v427 = String.lowercased()();
            v188 = v427._object;

            v428 = v647;
            Locale.region.getter();
            v429 = type metadata accessor for Locale.Region();
            v430 = *(v429 - 8);
            v431 = (*(v430 + 48))(v428, 1, v429);
            v414 = v684;
            if (v431 == 1)
            {

              sub_1000095E8(v428, &qword_1011BBA68);
LABEL_268:
              v413 = v734;
              goto LABEL_269;
            }

            v735 = v427._countAndFlagsBits;
            Locale.Region.identifier.getter();
            (*(v430 + 8))(v428, v429);
            v488 = String.lowercased()();

            v489 = v644;
            Locale.language.getter();
            v490 = v645;
            Locale.Language.script.getter();
            v714(v489, v741);
            v413 = v734;
            if ((v734)(v490, 1, v414) == 1)
            {

              v423 = v490;
              v424 = &qword_1011BBA80;
              goto LABEL_263;
            }

            v714 = v488._countAndFlagsBits;
            Locale.Script.identifier.getter();
            (v723)(v490, v414);
            v491 = String.lowercased()();

            if (qword_1011BB858 != -1)
            {
              swift_once();
            }

            v492 = static Lyrics.chineseLanguages;
            v188 = sub_10048C9BC(countAndFlagsBits, object, static Lyrics.chineseLanguages);

            if ((v188 & 1) == 0)
            {

              goto LABEL_268;
            }

            v493 = sub_10048C9BC(v735, v427._object, v492);
            v413 = v734;
            if ((v493 & 1) == 0)
            {

              goto LABEL_269;
            }

            if (v491._countAndFlagsBits == 1953390952 && v491._object == 0xE400000000000000)
            {

              v322 = v741;
              v189 = v735;
LABEL_337:
              v495 = v698;
              if (v714 == 27496 && v488._object == 0xE200000000000000)
              {

                goto LABEL_345;
              }

              v496 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v496)
              {
LABEL_345:

                goto LABEL_346;
              }
            }

            else
            {
              v494 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v322 = v741;
              v189 = v735;
              if (v494)
              {
                goto LABEL_337;
              }

              v495 = v698;
            }

            if (v189 == 6649209 && v427._object == 0xE300000000000000)
            {
              goto LABEL_345;
            }

            v501 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v501)
            {
LABEL_346:
              v497 = (v495 + v731[5]);
              v499 = *v497;
              v498 = v497[1];
              *&v742 = v499;
              *(&v742 + 1) = v498;
              *&v748 = 0x6E69796E6970;
              v500 = 0xE600000000000000;
            }

            else
            {
              v502 = (v495 + v731[5]);
              v504 = *v502;
              v503 = v502[1];
              *&v742 = v504;
              *(&v742 + 1) = v503;
              *&v748 = 0x676E69707475796ALL;
              v500 = 0xE800000000000000;
            }

            *(&v748 + 1) = v500;
            sub_100009988();
            if (StringProtocol.contains<A>(_:)())
            {
              goto LABEL_297;
            }

LABEL_321:
            sub_100C7B560(v698, type metadata accessor for Lyrics.Transliteration);
            v321 = v690;
            v125 = v737;
            (*v711)(v690, v737);
            v188 = v687;
            goto LABEL_188;
          }

LABEL_269:
          v432 = sub_100C6E0F8();
          v434 = v433;
          v435 = *(v722 + 3);
          if (!v435[2])
          {
            if (!v433)
            {
              v439 = 1;
              v440 = v666;
              goto LABEL_283;
            }

            goto LABEL_276;
          }

          v436 = v432;
          v437 = v435[4];
          v438 = v435[5];

          if (v434)
          {
            if (v438)
            {
              if (v436 == v437 && v434 == v438)
              {

                v439 = 1;
              }

              else
              {
                v439 = _stringCompareWithSmolCheck(_:_:expecting:)();
              }

LABEL_281:
              v440 = v666;
LABEL_282:

              goto LABEL_283;
            }

LABEL_276:
            v439 = 0;
            goto LABEL_281;
          }

          v440 = v666;
          if (v438)
          {
            v439 = 0;
            goto LABEL_282;
          }

          v439 = 1;
LABEL_283:
          Locale.Language.script.getter();
          if (v413(v440, 1, v414) == 1)
          {
            sub_1000095E8(v440, &qword_1011BBA80);
            v441 = *(v716 + 24);
            v322 = v741;
            if (!v441[2])
            {
              goto LABEL_297;
            }

            v442 = 0;
            v189 = 0;
            goto LABEL_288;
          }

          v189 = Locale.Script.identifier.getter();
          v442 = v443;
          (v723)(v440, v414);
          v441 = *(v716 + 24);
          if (v441[2])
          {
            v322 = v741;
LABEL_288:
            v445 = v441[4];
            v444 = v441[5];

            if (v442)
            {
              if (v444)
              {
                if (v189 == v445 && v442 == v444)
                {

LABEL_297:
                  v446 = sub_100C76858(_swiftEmptyArrayStorage);
                  v447 = v765;
                  v724 = v765[2];
                  if (!v724)
                  {
LABEL_315:
                    v471 = v664;
                    Locale.Language.languageCode.getter();
                    v472 = type metadata accessor for Locale.LanguageCode();
                    v473 = *(v472 - 8);
                    if ((*(v473 + 48))(v471, 1, v472) == 1)
                    {
                      sub_1000095E8(v471, &qword_1011BBA50);
                    }

                    else
                    {
                      Locale.LanguageCode.identifier.getter();
                      (*(v473 + 8))(v471, v472);
                    }

                    v189 = v738;
                    v474 = v661;
                    Locale.Language.init(identifier:)();
                    v475 = v690;
                    v476 = v737;
                    (*v711)(v690, v737);
                    v477 = v731;
                    v478 = (v698 + v731[5]);
                    v480 = *v478;
                    v479 = v478[1];
                    v481 = v662;
                    v482 = v474;
                    v322 = v741;
                    (*v676)(v662, v482, v741);
                    v483 = (v481 + v477[5]);
                    *v483 = v480;
                    v483[1] = v479;
                    *(v481 + v477[6]) = 0;
                    *(v481 + v477[7]) = v446;
                    v321 = v475;
                    v125 = v476;
                    v128 = v701;
                    v701(v481, 0, 1, v477);
                    v484 = v660;
                    swift_beginAccess();

                    sub_10006B010(v481, v189 + v484, &qword_1011BBA58);
                    swift_endAccess();
                    v485 = v663;
                    sub_100C7B91C(v698, v663, type metadata accessor for Lyrics.Transliteration);
                    (v128)(v485, 0, 1, v477);
                    v486 = v683;
                    swift_beginAccess();
                    sub_10006B010(v485, v189 + v486, &qword_1011BBA58);
                    swift_endAccess();
                    v188 = v687;
                    goto LABEL_188;
                  }

                  v448 = 0;
                  v723 = v765 + ((*(v725 + 80) + 32) & ~*(v725 + 80));
                  v125 = v736;
                  v189 = v715;
                  v714 = v765;
LABEL_302:
                  if (v448 >= v447[2])
                  {
                    __break(1u);
LABEL_394:
                    __break(1u);
LABEL_395:
                    __break(1u);
LABEL_396:
                    __break(1u);
LABEL_397:
                    __break(1u);
LABEL_398:
                    __break(1u);
LABEL_399:
                    __break(1u);
LABEL_400:
                    __break(1u);
LABEL_401:
                    __break(1u);
LABEL_402:
                    __break(1u);
LABEL_403:
                    __break(1u);
LABEL_404:
                    v236 = _CocoaArrayWrapper.endIndex.getter();
                    continue;
                  }

                  v455 = sub_100C7B4F8(&v723[*(v725 + 72) * v448], v189, type metadata accessor for Lyrics.TextLine);
                  v456 = v189 + *(v125 + 52);
                  v457 = *(v456 + 8);
                  if (!v457)
                  {
                    goto LABEL_301;
                  }

                  v128 = *v456;
                  v734 = (*(v189 + *(v125 + 64)))(v455);
                  v735 = v458;
                  v188 = (*(v189 + *(v125 + 68)))();
                  (*(v189 + *(v125 + 72)))(&v748);
                  v125 = swift_isUniquelyReferenced_nonNull_native();
                  v763 = v446;
                  v189 = sub_10000F8B8(v128, v457);
                  v460 = v446[2];
                  v461 = (v459 & 1) == 0;
                  v462 = v460 + v461;
                  if (__OFADD__(v460, v461))
                  {
                    goto LABEL_394;
                  }

                  v463 = v459;
                  if (v446[3] >= v462)
                  {
                    if (v125)
                    {
                      v125 = v736;
                      if ((v459 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }

                    else
                    {
                      sub_100C74718();
                      v125 = v736;
                      if ((v463 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }
                  }

                  else
                  {
                    sub_100C71F4C(v462, v125);
                    v464 = sub_10000F8B8(v128, v457);
                    if ((v463 & 1) != (v465 & 1))
                    {
                      goto LABEL_433;
                    }

                    v189 = v464;
                    v125 = v736;
                    if ((v463 & 1) == 0)
                    {
LABEL_311:
                      v446 = v763;
                      v763[(v189 >> 6) + 8] |= 1 << v189;
                      v466 = (v446[6] + 16 * v189);
                      *v466 = v128;
                      v466[1] = v457;
                      v467 = v446[7] + 88 * v189;
                      v468 = v735;
                      *v467 = v734;
                      *(v467 + 8) = v468;
                      *(v467 + 16) = v188;
                      *(v467 + 24) = v748;
                      *(v467 + 40) = v749;
                      *(v467 + 56) = v750;
                      *(v467 + 72) = v751;
                      v469 = v446[2];
                      v240 = __OFADD__(v469, 1);
                      v470 = v469 + 1;
                      if (v240)
                      {
                        goto LABEL_400;
                      }

                      v446[2] = v470;

LABEL_300:
                      v189 = v715;
                      v447 = v714;
LABEL_301:
                      ++v448;
                      sub_100C7B560(v189, type metadata accessor for Lyrics.TextLine);
                      if (v724 == v448)
                      {
                        goto LABEL_315;
                      }

                      goto LABEL_302;
                    }
                  }

                  v446 = v763;
                  v449 = v763[7] + 88 * v189;
                  v450 = *(v449 + 16);
                  v742 = *v449;
                  v743 = v450;
                  v452 = *(v449 + 48);
                  v451 = *(v449 + 64);
                  v453 = *(v449 + 32);
                  v747 = *(v449 + 80);
                  v745 = v452;
                  v746 = v451;
                  v744 = v453;
                  v454 = v735;
                  *v449 = v734;
                  *(v449 + 8) = v454;
                  *(v449 + 16) = v188;
                  *(v449 + 24) = v748;
                  *(v449 + 40) = v749;
                  *(v449 + 56) = v750;
                  *(v449 + 72) = v751;
                  sub_100C7B984(&v742);
                  goto LABEL_300;
                }

                v189 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v439 & v189 & 1) != 0 || ((v439 ^ 1))
                {
                  goto LABEL_297;
                }

                goto LABEL_321;
              }
            }

            else if (!v444)
            {
              goto LABEL_297;
            }
          }

          else
          {
            v322 = v741;
            if (!v442)
            {
              goto LABEL_297;
            }
          }

          if ((v439 & 1) == 0)
          {
            goto LABEL_297;
          }

          goto LABEL_321;
        }

        sub_100C7B560(v400, type metadata accessor for Lyrics.Transliteration);
        v321 = v690;
        v125 = v737;
        (*v711)(v690, v737);
        v399 = v401;
      }

      sub_1000095E8(v399, &qword_1011BBA58);
      v188 = v687;
LABEL_187:
      v322 = v741;
LABEL_188:
      v320 = v726 + 1;
      if ((v726 + 1) == v710)
      {

        v318 = v738;
        goto LABEL_353;
      }

      goto LABEL_189;
    }

    break;
  }

LABEL_353:
  v189 = v708;

  swift_beginAccess();

  v506 = sub_100C7AA84(v505);

  *(v318 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) = v506;
  v507 = v765;
  v318[6] = v765;
  v508 = *(v507 + 2);
  v739 = v507;
  if (v508)
  {
    v509 = v725;
    v510 = &v507[(*(v725 + 80) + 32) & ~*(v725 + 80)];
    sub_100C7B4F8(v510, v189, type metadata accessor for Lyrics.TextLine);
    v741 = *(v509 + 72);

    v511 = 0;
    v125 = _swiftEmptyArrayStorage;
    v128 = v728;
    do
    {
      sub_100C7B4F8(v510, v740, type metadata accessor for Lyrics.TextLine);
      if (v511 || (v512 = *v189, *v189 <= 7.0))
      {
        v516 = *v740;
        v517 = *(v189 + 8);
        if (*v740 - v517 > 7.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_100C70B4C(0, *(v125 + 16) + 1, 1, v125);
          }

          v189 = *(v125 + 16);
          v518 = *(v125 + 24);
          if (v189 >= v518 >> 1)
          {
            v125 = sub_100C70B4C((v518 > 1), v189 + 1, 1, v125);
          }

          *(&v743 + 1) = &type metadata for Lyrics.InstrumentalLine;
          *&v744 = &protocol witness table for Lyrics.InstrumentalLine;
          v519 = swift_allocObject();
          *&v742 = v519;
          *(v519 + 16) = v511;
          *(v519 + 24) = v517 + 0.1;
          *(v519 + 32) = v516;
          *(v519 + 40) = v719;
          *(v125 + 16) = v189 + 1;
          sub_100059A8C(&v742, v125 + 40 * v189 + 32);
          v240 = __OFADD__(v511++, 1);
          if (v240)
          {
            goto LABEL_401;
          }
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_100C70B4C(0, *(v125 + 16) + 1, 1, v125);
        }

        v514 = *(v125 + 16);
        v513 = *(v125 + 24);
        if (v514 >= v513 >> 1)
        {
          v125 = sub_100C70B4C((v513 > 1), v514 + 1, 1, v125);
        }

        *(&v743 + 1) = &type metadata for Lyrics.InstrumentalLine;
        *&v744 = &protocol witness table for Lyrics.InstrumentalLine;
        v515 = swift_allocObject();
        *&v742 = v515;
        *(v515 + 16) = 0;
        *(v515 + 24) = 0;
        *(v515 + 32) = v512;
        *(v515 + 40) = v719;
        *(v125 + 16) = v514 + 1;
        sub_100059A8C(&v742, v125 + 40 * v514 + 32);
        v511 = 1;
      }

      v520 = v727;
      sub_100C7B4F8(v740, v727, type metadata accessor for Lyrics.TextLine);
      *(v520 + 16) = v511;
      sub_100C7B4F8(v520, v728, type metadata accessor for Lyrics.TextLine);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_100C70B4C(0, *(v125 + 16) + 1, 1, v125);
      }

      v522 = *(v125 + 16);
      v521 = *(v125 + 24);
      if (v522 >= v521 >> 1)
      {
        v125 = sub_100C70B4C((v521 > 1), v522 + 1, 1, v125);
      }

      v188 = type metadata accessor for Lyrics.TextLine;
      sub_100C7B560(v740, type metadata accessor for Lyrics.TextLine);
      v189 = v708;
      sub_100C7B560(v708, type metadata accessor for Lyrics.TextLine);
      *(&v743 + 1) = v736;
      *&v744 = &protocol witness table for Lyrics.TextLine;
      v523 = sub_10001C8B8(&v742);
      sub_100C7B4F8(v128, v523, type metadata accessor for Lyrics.TextLine);
      *(v125 + 16) = v522 + 1;
      sub_100059A8C(&v742, v125 + 40 * v522 + 32);
      sub_100C7B560(v128, type metadata accessor for Lyrics.TextLine);
      v240 = __OFADD__(v511++, 1);
      if (v240)
      {
        goto LABEL_398;
      }

      sub_100C7B91C(v727, v189, type metadata accessor for Lyrics.TextLine);
      v510 += v741;
      --v508;
    }

    while (v508);
    v524 = *(v189 + 8);
    sub_100C7B560(v189, type metadata accessor for Lyrics.TextLine);
    v318 = v738;
  }

  else
  {

    v511 = 0;
    v125 = _swiftEmptyArrayStorage;
    v524 = 0;
  }

  v525 = [v677 songwriters];
  v526 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v526 >> 62)
  {
    v527 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v527 = *((v526 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v528 = v669;
  if (!v527)
  {

LABEL_414:
    v318[4] = v732;
    v318[5] = v125;
    swift_beginAccess();
    swift_weakAssign();
    Lyrics.updateTransliterations()();
    v548 = v672;
    if (qword_1011BB880 != -1)
    {
      swift_once();
    }

    v549 = type metadata accessor for Logger();
    sub_1000060E4(v549, static Logger.lyrics);
    v550 = swift_allocObject();
    *(v550 + 16) = v528;
    *(v550 + 24) = v548;
    v551 = swift_allocObject();
    v552 = v722;
    *(v551 + 16) = sub_100C7B6A8;
    *(v551 + 24) = v552;
    v553 = swift_allocObject();
    v739 = v553;
    v554 = v716;
    *(v553 + 16) = sub_100C7D25C;
    *(v553 + 24) = v554;
    swift_retain_n();

    v741 = Logger.logObject.getter();
    LODWORD(v740) = static os_log_type_t.default.getter();
    v737 = swift_allocObject();
    *(v737 + 16) = 34;
    v736 = swift_allocObject();
    *(v736 + 16) = 8;
    v555 = swift_allocObject();
    *(v555 + 16) = sub_100C7B5C0;
    *(v555 + 24) = v550;
    v556 = swift_allocObject();
    v735 = v556;
    *(v556 + 16) = sub_100C7B6E0;
    *(v556 + 24) = v555;
    v734 = swift_allocObject();
    v734[16] = 34;
    v733 = swift_allocObject();
    *(v733 + 16) = 8;
    v557 = swift_allocObject();
    *(v557 + 16) = sub_100C7B5C8;
    *(v557 + 24) = v318;
    v558 = swift_allocObject();
    v732 = v558;
    v558[2] = sub_100C7D254;
    v558[3] = v557;
    v730 = swift_allocObject();
    *(v730 + 16) = 34;
    v729 = swift_allocObject();
    *(v729 + 16) = 8;
    v559 = swift_allocObject();
    *(v559 + 16) = sub_100C7B600;
    *(v559 + 24) = v318;
    v560 = swift_allocObject();
    *(v560 + 16) = sub_100C7D254;
    *(v560 + 24) = v559;
    v728 = swift_allocObject();
    *(v728 + 16) = 34;
    v727 = swift_allocObject();
    *(v727 + 16) = 8;
    v561 = swift_allocObject();
    *(v561 + 16) = sub_100C7B638;
    *(v561 + 24) = v318;
    v562 = swift_allocObject();
    *(v562 + 16) = sub_100C7D254;
    *(v562 + 24) = v561;
    v726 = swift_allocObject();
    *(v726 + 16) = 34;
    v725 = swift_allocObject();
    *(v725 + 16) = 8;
    v563 = swift_allocObject();
    *(v563 + 16) = sub_100C7B670;
    *(v563 + 24) = v318;
    v564 = swift_allocObject();
    *(v564 + 16) = sub_100C7D254;
    *(v564 + 24) = v563;
    v724 = swift_allocObject();
    *(v724 + 16) = 34;
    v565 = swift_allocObject();
    *(v565 + 16) = 8;
    v566 = swift_allocObject();
    *(v566 + 16) = sub_100C7B6C4;
    *(v566 + 24) = v551;
    v567 = swift_allocObject();
    *(v567 + 16) = sub_100C7D254;
    *(v567 + 24) = v566;
    v568 = swift_allocObject();
    *(v568 + 16) = 34;
    v569 = swift_allocObject();
    *(v569 + 16) = 8;
    v570 = swift_allocObject();
    v571 = v739;
    *(v570 + 16) = sub_100C7D250;
    *(v570 + 24) = v571;
    v572 = swift_allocObject();
    *(v572 + 16) = sub_100C7D254;
    *(v572 + 24) = v570;
    sub_10010FC20(&qword_1011BBAD8);
    v573 = swift_allocObject();
    *(v573 + 16) = xmmword_100F0E080;
    v574 = v737;
    *(v573 + 32) = sub_100C7B6CC;
    *(v573 + 40) = v574;
    v575 = v736;
    *(v573 + 48) = sub_100C7D230;
    *(v573 + 56) = v575;
    v576 = v735;
    *(v573 + 64) = sub_100C7B708;
    *(v573 + 72) = v576;
    v577 = v734;
    *(v573 + 80) = sub_100C7D230;
    *(v573 + 88) = v577;
    v578 = v733;
    *(v573 + 96) = sub_100C7D230;
    *(v573 + 104) = v578;
    v579 = v732;
    *(v573 + 112) = sub_100C7D23C;
    *(v573 + 120) = v579;
    v580 = v730;
    *(v573 + 128) = sub_100C7D230;
    *(v573 + 136) = v580;
    v581 = v729;
    *(v573 + 144) = sub_100C7D230;
    *(v573 + 152) = v581;
    *(v573 + 160) = sub_100C7D23C;
    *(v573 + 168) = v560;
    v582 = v728;
    *(v573 + 176) = sub_100C7D230;
    *(v573 + 184) = v582;
    v583 = v727;
    *(v573 + 192) = sub_100C7D230;
    *(v573 + 200) = v583;
    *(v573 + 208) = sub_100C7D23C;
    *(v573 + 216) = v562;
    v584 = v726;
    *(v573 + 224) = sub_100C7D230;
    *(v573 + 232) = v584;
    v585 = v725;
    *(v573 + 240) = sub_100C7D230;
    *(v573 + 248) = v585;
    *(v573 + 256) = sub_100C7D23C;
    *(v573 + 264) = v564;
    v586 = v724;
    *(v573 + 272) = sub_100C7D230;
    *(v573 + 280) = v586;
    *(v573 + 288) = sub_100C7D230;
    *(v573 + 296) = v565;
    *(v573 + 304) = sub_100C7D23C;
    *(v573 + 312) = v567;
    *(v573 + 320) = sub_100C7D230;
    *(v573 + 328) = v568;
    *(v573 + 336) = sub_100C7D230;
    *(v573 + 344) = v569;
    *(v573 + 352) = sub_100C7D23C;
    *(v573 + 360) = v572;
    swift_setDeallocating();
    sub_100C70410();
    v587 = v741;
    if (os_log_type_enabled(v741, v740))
    {
      v588 = swift_slowAlloc();
      v739 = swift_slowAlloc();
      v762 = v739;
      *v588 = 136447746;
      v760 = v669;
      v761 = v672;
      sub_10010FC20(&qword_1011BBAE0);
      v589 = String.init<A>(describing:)();
      v591 = sub_1000109A8(v589, v590, &v762);

      *(v588 + 4) = v591;
      *(v588 + 12) = 2082;
      v592 = v738;
      v593 = v738 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
      swift_beginAccess();
      v594 = *(v702 + 48);
      v702 += 48;
      v737 = v594;
      v595 = v594(v593, 1, v700);
      v596 = 0;
      v597 = 0;
      if (!v595)
      {
        v596 = *&v593[v700[5]];
      }

      v758 = v596;
      v759 = v597;
      v598 = String.init<A>(describing:)();
      v600 = sub_1000109A8(v598, v599, &v762);

      *(v588 + 14) = v600;
      *(v588 + 22) = 2082;
      v601 = v592 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
      swift_beginAccess();
      v602 = *(v703 + 48);
      v603 = v731;
      v604 = v602(v601, 1, v731);
      v605 = 0;
      v606 = 0;
      if (!v604)
      {
        v605 = *(v601 + v603[5]);
      }

      v756 = v605;
      v757 = v606;
      v607 = String.init<A>(describing:)();
      v609 = sub_1000109A8(v607, v608, &v762);

      *(v588 + 24) = v609;
      *(v588 + 32) = 2082;
      v610 = v592 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
      swift_beginAccess();
      v611 = v602(v610, 1, v603);
      v612 = 0;
      v613 = 0;
      if (!v611)
      {
        v612 = *(v610 + v603[5]);
      }

      v754 = v612;
      v755 = v613;
      v614 = String.init<A>(describing:)();
      v616 = sub_1000109A8(v614, v615, &v762);

      *(v588 + 34) = v616;
      *(v588 + 42) = 2082;
      v617 = v592 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v618 = v700;
      v619 = (v737)(v617, 1, v700);
      v620 = 0;
      v621 = 0;
      v622 = v592;
      if (!v619)
      {
        v620 = *(v617 + v618[5]);
      }

      v752 = v620;
      v753 = v621;
      v623 = String.init<A>(describing:)();
      v625 = sub_1000109A8(v623, v624, &v762);

      *(v588 + 44) = v625;
      *(v588 + 52) = 2082;
      swift_beginAccess();

      v627 = sub_100C7B768(v626);
      v629 = v628;

      v630 = sub_1000109A8(v627, v629, &v762);

      *(v588 + 54) = v630;
      *(v588 + 62) = 2082;
      swift_beginAccess();

      v632 = sub_100C7B768(v631);
      v634 = v633;

      v635 = sub_1000109A8(v632, v634, &v762);

      *(v588 + 64) = v635;
      v636 = v741;
      _os_log_impl(&_mh_execute_header, v741, v740, "Initialized lyrics with identifier %{public}s, preferredTranslation: %{public}s, preferredTransliteration: %{public}s, currentTransliteration: %{public}s, currentTranslation: %{public}s preferredLanguageCodes: %{public}s, preferredScriptCodes: %{public}s", v588, 0x48u);
      swift_arrayDestroy();
    }

    else
    {

      v622 = v738;
    }

    sub_1000095E8(v682, &qword_1011BBA48);
    return v622;
  }

  v529 = [v677 songwriters];
  v530 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v530 >> 62))
  {
    v531 = *((v530 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v531)
    {
      goto LABEL_381;
    }

LABEL_408:

    v541 = _swiftEmptyArrayStorage;
LABEL_409:
    v545 = swift_isUniquelyReferenced_nonNull_native();
    v764 = v125;
    if ((v545 & 1) == 0)
    {
      v125 = sub_100C70B4C(0, *(v125 + 16) + 1, 1, v125);
      v764 = v125;
    }

    v546 = *(v125 + 16);
    v547 = *(v125 + 24);
    if (v546 >= v547 >> 1)
    {
      v638 = *(v125 + 16);
      v125 = sub_100C70B4C((v547 > 1), v546 + 1, 1, v125);
      v546 = v638;
      v528 = v669;
      v764 = v125;
    }

    *&v742 = v511;
    *(&v742 + 1) = v524;
    *&v743 = 0x7FF0000000000000;
    BYTE8(v743) = v719;
    *&v744 = v541;
    sub_100C762B8(v546, &v742, &v764);
    v764 = v125;
    goto LABEL_414;
  }

  v531 = _CocoaArrayWrapper.endIndex.getter();
  if (!v531)
  {
    goto LABEL_408;
  }

LABEL_381:
  *&v742 = _swiftEmptyArrayStorage;
  sub_100C70398(v531);
  if ((v531 & 0x8000000000000000) == 0)
  {
    v532 = 0;
    v533 = v530;
    v740 = (v530 & 0xC000000000000001);
    v741 = v530;
    v534 = v531;
    do
    {
      if (v740)
      {
        v535 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v535 = *(v533 + 8 * v532 + 32);
      }

      v536 = v535;
      v537 = [v535 name];
      v538 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v540 = v539;

      v541 = v742;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100015C64(0, v541[2] + 1, 1);
        v541 = v742;
      }

      v543 = v541[2];
      v542 = v541[3];
      if (v543 >= v542 >> 1)
      {
        sub_100015C64((v542 > 1), v543 + 1, 1);
        v541 = v742;
      }

      ++v532;
      v541[2] = v543 + 1;
      v544 = &v541[2 * v543];
      v544[4] = v538;
      v544[5] = v540;
      v318 = v738;
      v533 = v741;
    }

    while (v534 != v532);

    v528 = v669;
    goto LABEL_409;
  }

LABEL_429:
  __break(1u);
LABEL_430:

  v639 = v738;

  sub_1000095E8(object + v639, &qword_1011BBA48);

  sub_1000095E8(v639 + v670, &qword_1011BD4F0);
  sub_1000095E8(v639 + countAndFlagsBits, &qword_1011BBA58);
  sub_1000095E8(v639 + v695, &qword_1011BD4F0);
  sub_1000095E8(v646 + v639, &qword_1011BBA58);
  sub_1000095E8(v639 + v660, &qword_1011BBA58);
  sub_1000095E8(v639 + v683, &qword_1011BBA58);
LABEL_432:

  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_433:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}