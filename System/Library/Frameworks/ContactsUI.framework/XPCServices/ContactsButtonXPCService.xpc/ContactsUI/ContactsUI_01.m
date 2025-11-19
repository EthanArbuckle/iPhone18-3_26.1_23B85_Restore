uint64_t sub_100017C88(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
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

  result = sub_100017DE8(result, v12, 1, v3);
  v3 = result;
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

void *sub_100017D74(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002EFC(&qword_10002E450, &unk_10001ECF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100017DE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_10002E450, &unk_10001ECF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100017EE0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001D6FC();
  sub_10001D35C();
  v6 = sub_10001D70C();

  return sub_10001800C(a1, a2, v6);
}

unint64_t sub_100017F58(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10001D6FC();
  type metadata accessor for CFString(0);
  sub_100010FD4(&qword_10002E518, type metadata accessor for CFString);
  sub_10001CDDC();
  v4 = sub_10001D70C();

  return sub_1000180C4(a1, v4);
}

unint64_t sub_10001800C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10001D6BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000180C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100010FD4(&qword_10002E518, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10001CDCC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_1000181D0(char *a1, int64_t a2, char a3)
{
  result = sub_1000181F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000181F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&unk_10002E468, &unk_10001ED18);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_1000182FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100018DD4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100018368(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100018368(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10001D69C(v2);
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
        v5 = sub_10001D41C();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100018530(v7, v8, a1, v4);
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
    return sub_100018460(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100018460(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_10001D6BC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100018530(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100018DC0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100018B0C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_10001D6BC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_10001D6BC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000177AC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1000177AC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100018B0C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100018DC0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100018D34(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_10001D6BC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_100018B0C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_10001D6BC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_10001D6BC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100018D34(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100018DC0(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_100018DE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002EFC(&qword_10002E508, &qword_10001EDA8);
    v3 = sub_10001D67C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010E60(v4, &v11, &qword_10002E510, &qword_10001EBB0);
      v5 = v11;
      result = sub_100017F58(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000199A4(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100018F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002EFC(&unk_10002E490, &unk_10001ED40);
    v3 = sub_10001D67C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100017EE0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100019024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002EFC(&qword_10002E488, &qword_10001ED38);
    v3 = sub_10001D67C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010E60(v4, &v13, &qword_10002E4A8, &qword_10001ED80);
      v5 = v13;
      v6 = v14;
      result = sub_100017EE0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000199A4(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100019154(void *a1, void *a2, char *a3, void (**a4)(void, void, void))
{
  v49 = sub_10001D25C();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001D27C();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  v16 = *&a3[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTag];
  if (v16 && (v17 = *&a3[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle]) != 0)
  {
    v44 = v14;
    v45 = v11;
    v46 = v8;
    _Block_copy(a4);
    v18 = a2;
    v43 = v16;
    v42 = v17;
    v19 = a1;
    v20 = sub_10001CDFC();
    v21 = sub_10001D50C();
    v47 = v18;

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412546;
      *(v22 + 4) = v19;
      *(v22 + 12) = 2112;
      v24 = v47;
      *(v22 + 14) = v47;
      *v23 = a1;
      v23[1] = a2;
      v25 = v19;
      v26 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "#ContactsButton provider proposed width: %@ height: %@", v22, 0x16u);
      sub_100002EFC(&qword_10002DA60, &qword_10001ECF0);
      swift_arrayDestroy();
    }

    v27 = dispatch_group_create();
    dispatch_group_enter(v27);
    sub_1000072F8(0, &qword_10002E4E0, OS_dispatch_queue_ptr);
    v41 = sub_10001D53C();
    v28 = swift_allocObject();
    v30 = v42;
    v29 = v43;
    v28[2] = v43;
    v28[3] = v30;
    v28[4] = a1;
    v28[5] = a3;
    v28[6] = a2;
    v28[7] = sub_10001C900;
    v28[8] = v15;
    v28[9] = v27;
    aBlock[4] = sub_10001C980;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000117B8;
    aBlock[3] = &unk_1000298F8;
    v31 = _Block_copy(aBlock);
    v43 = v29;
    v32 = v30;
    v33 = v19;
    v34 = v47;
    v35 = a3;

    v36 = v27;

    v37 = v44;
    sub_10001D26C();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100010FD4(&unk_10002E030, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002EFC(&unk_10002E4F0, &qword_10001ED90);
    sub_10001C994();
    v39 = v48;
    v38 = v49;
    sub_10001D59C();
    v40 = v41;
    sub_10001D54C();
    _Block_release(v31);

    (*(v46 + 8))(v39, v38);
    (*(v50 + 8))(v37, v45);
    sub_10001D52C();
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4, 0, 0);
  }
}

char *sub_100019660(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_10001CDAC();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10001D2CC();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_10001D2BC();
  sub_10001CD6C();
  v14 = sub_10001D32C();
  v16 = v15;
  sub_10001D2BC();
  sub_10001CD6C();
  v17 = sub_10001D32C();
  v19 = v18;
  sub_10001D2BC();
  sub_10001CD6C();
  v20 = sub_10001D32C();
  v22 = sub_10000ED30(a1, v20, v21, a2, a3, a4, a5);
  v23 = &v22[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
  v24 = *&v22[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
  *v23 = v14;
  v23[1] = v16;
  v25 = v22;

  v26 = &v25[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent];
  v27 = *&v25[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent + 8];
  *v26 = v17;
  v26[1] = v19;

  v28 = *&v25[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData];
  v29 = *&v25[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData + 8];
  *&v25[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData] = xmmword_10001E720;
  sub_10000F908(v28, v29);
  v25[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] = 0;

  return v25;
}

uint64_t sub_1000198E8()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100004798(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019930()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019990(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010F80(a1, a2);
  }

  return a1;
}

_OWORD *sub_1000199A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1000199B4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, NSObject *a16)
{
  v129 = a6;
  v130 = a5;
  v122 = a2;
  v127 = a1;
  v22 = a16;
  v23 = sub_10001CC9C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000072F8(0, &qword_10002E4B0, NSKeyedUnarchiver_ptr);
  sub_100002EFC(&qword_10002E4B8, &qword_10001ED88);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10001E580;
  v131 = sub_10001CC7C();
  *(v28 + 32) = v131;
  *(v28 + 40) = sub_1000072F8(0, &qword_10002E4C0, UIColor_ptr);
  *(v28 + 48) = sub_1000072F8(0, &qword_10002E4C8, UIFont_ptr);
  *(v28 + 56) = sub_1000072F8(0, &qword_10002E4D0, NSString_ptr);
  *(v28 + 64) = sub_1000072F8(0, &qword_10002E4D8, NSSet_ptr);
  sub_10001D51C();
  v125 = v27;

  if (!v136)
  {
    goto LABEL_50;
  }

  v133 = a3;
  sub_1000199A4(&v135, v137);
  swift_dynamicCast();
  v29 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_logger;
  v30 = v134;

  v121 = v29;
  v31 = sub_10001CDFC();
  v32 = sub_10001D50C();

  v33 = os_log_type_enabled(v31, v32);
  v126 = a16;
  v128 = v30;
  v124 = v23;
  v123 = v24;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *&v137[0] = swift_slowAlloc();
    *v34 = 136315394;
    v35 = [v30 debugDescription];
    v36 = sub_10001D30C();
    v38 = v37;

    v39 = sub_100017934(v36, v38, v137);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_100017934(v133, a4, v137);
    _os_log_impl(&_mh_execute_header, v31, v32, "#ContactsButton received traits %s with query %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  v132 = (a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID);
  if (*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID + 8))
  {
LABEL_14:
    v60 = (a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedQueryString);
    v61 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedQueryString + 8);
    if (!v61 || (*v60 != v133 || v61 != a4) && (sub_10001D6BC() & 1) == 0)
    {
      goto LABEL_29;
    }

    if (!*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredEmails))
    {
      goto LABEL_29;
    }

    v62 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredEmails);

    v64 = sub_1000172F8(v63, v130);

    if ((v64 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (!*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredPhones))
    {
      goto LABEL_29;
    }

    v65 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredPhones);

    v67 = sub_1000172F8(v66, v129);

    if ((v67 & 1) == 0)
    {
      goto LABEL_29;
    }

    v68 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTraits);
    if (!v68)
    {
      goto LABEL_29;
    }

    v69 = v128;
    v70 = v68;
    v71 = sub_10001D57C();

    if ((v71 & 1) == 0)
    {
      goto LABEL_29;
    }

    if ((*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedFrame + 32) & 1) == 0 && (v138.origin.x = a7, v138.origin.y = a8, v138.size.width = a9, v138.size.height = a10, CGRectEqualToRect(*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedFrame), v138)))
    {
      v22 = sub_10001CDFC();
      v72 = sub_10001D4CC();
      if (os_log_type_enabled(v22, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v22, v72, "#ContactsButton nothing changed, returning same tag", v73, 2u);
      }

      v74 = v128;
      v75 = (&OBJC_PROTOCOL___UISDrawing + 56);
      p_inst_props = (&OBJC_PROTOCOL___UISDrawing + 56);
    }

    else
    {
LABEL_29:
      v77 = v60[1];
      v78 = v133;
      *v60 = v133;
      v60[1] = a4;

      v79 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredEmails);
      v80 = a4;
      v81 = v130;
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredEmails) = v130;

      v82 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredPhones);
      v83 = v129;
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredPhones) = v129;

      v84 = v83;
      v22 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTraits);
      v85 = v128;
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTraits) = v128;
      v86 = v85;
      v87 = v85;

      v88 = a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedFrame;
      *v88 = a7;
      *(v88 + 8) = a8;
      *(v88 + 16) = a9;
      *(v88 + 24) = a10;
      *(v88 + 32) = 0;
      v89 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag;
      v90 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag);
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag) = 0;

      v91 = v132[1];
      if (!v91)
      {
LABEL_51:
        _Block_release(v126);
        __break(1u);
        goto LABEL_52;
      }

      v92 = *v132;
      v93 = v132[1];

      v94 = sub_100006D28(v78, v80, v92, v91, v81, v84);

      p_inst_props = &OBJC_PROTOCOL___UISDrawing.inst_props;
      v95 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches);
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches) = v94;

      v96 = sub_100015CC4(v94, v87, a7, a8, a9, a10);

      v97 = *(a15 + v89);
      *(a15 + v89) = v96;
      v98 = v96;

      v99 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTag);
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTag) = v96;

      v22 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle);
      v100 = v127;
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle) = v127;
      v101 = v100;
      v75 = &OBJC_PROTOCOL___UISDrawing.inst_props;
      v74 = v86;
    }

    if (!*(&v75[183][1] + a15))
    {
      sub_100002EFC(&qword_10002E478, &qword_10001ED28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10001E6C0;
      *(inited + 32) = sub_10001CBEC();
      *(inited + 40) = v109;
      *(inited + 48) = 0xD00000000000002FLL;
      *(inited + 56) = 0x8000000100021CD0;
      v110 = sub_100018F10(inited);
      swift_setDeallocating();
      sub_100010EC8(inited + 32, &qword_10002E480, &qword_10001ED30);
      sub_10001CBDC();
      v111 = v123;
      v112 = v125;
      v113 = v124;
      (*(v123 + 104))(v125, enum case for ContactButtonServiceErrorType.missingPurposeString(_:), v124);
      v114 = sub_10001CC8C();
      (*(v111 + 8))(v112, v113);
      sub_10001259C(v110);

      v115 = objc_allocWithZone(NSError);
      v116 = sub_10001D2DC();

      isa = sub_10001D28C().super.isa;

      v118 = [v115 initWithDomain:v116 code:v114 userInfo:isa];

      (v126[2].isa)(v126, 0, v118);
      v103 = v74;
      v74 = v118;
LABEL_45:

      return;
    }

    if (!*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag) || (v102 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotMachine)) == 0)
    {
      sub_10001CDBC();
      v103 = 0;
LABEL_39:
      v106 = *(p_inst_props[187] + a15);
      if (v106)
      {
        if (v106 >> 62)
        {
          if (v106 < 0)
          {
            v120 = *(p_inst_props[187] + a15);
          }

          v107 = sub_10001D64C();
        }

        else
        {
          v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v107 = 0;
      }

      v119 = sub_10001D36C();
      sub_100008A54(v107, v119);
      (v126[2].isa)(v126, v103, 0);
      goto LABEL_45;
    }

    if ((v122 & 0x8000000000000000) == 0)
    {
      v103 = [v102 remoteContentForLayerContextWithId:? style:? tag:?];
      v104 = sub_10001CDBC();
      if (v103 && [v103 respondsToSelector:v104])
      {
        v105 = [v103 slotID];
        *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotID) = v105;
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_50:
    _Block_release(v22);
    __break(1u);
    goto LABEL_51;
  }

  v22 = sub_10001D34C();
  sandbox_extension_consume();

  v40 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext);
  if (v40)
  {
    v41 = [v40 clientBundleIdentifier];
    if (v41)
    {
      v42 = v41;
      v43 = sub_10001D30C();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = v132;
    v22 = v132[1];
    *v132 = v43;
    v46[1] = v45;

    if (!v45)
    {
      goto LABEL_53;
    }

    v47 = sub_100003670(v43, v45, 0xD00000000000001ALL, 0x8000000100021E60);
    v49 = v48;

    if (v49)
    {
      v50 = (a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString);
      v51 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString + 8);
      *v50 = v47;
      v50[1] = v49;
    }

    [objc_opt_self() setDefaultBackgroundGPUPriority:2];
    v52 = v132[1];
    if (!v52)
    {
      goto LABEL_54;
    }

    v53 = *v132;
    v54 = v132[1];

    v55 = sub_100016CD4(v53, v52);
    v57 = v56;

    v58 = (a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName);
    v59 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName + 8);
    *v58 = v55;
    v58[1] = v57;

    sandbox_extension_release();
    goto LABEL_14;
  }

LABEL_52:
  _Block_release(v126);
  __break(1u);
LABEL_53:
  _Block_release(v126);
  __break(1u);
LABEL_54:
  _Block_release(v126);
  __break(1u);
  _Block_release(v22);

  swift_unexpectedError();
  __break(1u);
}

void sub_10001A5BC()
{
  v1 = sub_10001CDAC();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10001D2CC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v66 = sub_10001D2DC();
  v65 = sub_10001D2DC();
  sub_10001D2BC();
  sub_10001CD6C();
  sub_10001D32C();
  sub_100002EFC(&qword_10002E088, &qword_10001E910);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001E6C0;
  v6 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID + 8];
  if (!v6)
  {
    __break(1u);
    goto LABEL_41;
  }

  v7 = v5;
  v64 = &v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID];
  v8 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID];

  v9 = sub_100016CD4(v8, v6);
  v11 = v10;

  v7[7] = &type metadata for String;
  v7[8] = sub_10000FB3C();
  v7[4] = v9;
  v7[5] = v11;
  v12 = sub_10001D31C();
  v14 = v13;

  sub_10001D2BC();
  sub_10001CD6C();
  v67 = sub_10001D32C();
  v69 = v15;
  sub_10001D2BC();
  sub_10001CD6C();
  v17 = sub_10001D32C();
  v68 = v0;
  v18 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString + 8];
  if (!v18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v19 = v16;
  v71 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString];
  v72 = v18;
  swift_bridgeObjectRetain_n();
  v73._countAndFlagsBits = 2570;
  v73._object = 0xE200000000000000;
  sub_10001D38C(v73);
  sub_10001D2BC();
  sub_10001CD6C();
  v74._countAndFlagsBits = sub_10001D32C();
  sub_10001D38C(v74);

  v21 = v71;
  v20 = v72;
  sub_100002EFC(&qword_10002E4A0, &qword_10001ED78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001EC20;
  if (!kCFUserNotificationAlertHeaderKey)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(inited + 32) = sub_10001D30C();
  *(inited + 40) = v23;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(inited + 80) = sub_10001D30C();
  *(inited + 88) = v24;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v21;
  *(inited + 104) = v20;
  v25 = v68;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  *(inited + 128) = sub_10001D30C();
  *(inited + 136) = v26;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v67;
  *(inited + 152) = v69;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_45;
  }

  *(inited + 176) = sub_10001D30C();
  *(inited + 184) = v27;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v17;
  *(inited + 200) = v19;

  sub_100019024(inited);
  swift_setDeallocating();
  sub_100002EFC(&qword_10002E4A8, &qword_10001ED80);
  swift_arrayDestroy();
  v28.super.isa = sub_10001D28C().super.isa;

  v70 = 0;
  v29 = CFUserNotificationCreate(0, 0.0, 0x20uLL, &v70, v28.super.isa);
  if (!v29)
  {

    v39 = sub_10001CDFC();
    v40 = sub_10001D4FC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 67109120;
      swift_beginAccess();
      *(v41 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v39, v40, "#ContactsButton failed to create a CFUN, %d", v41, 8u);
    }

    v42 = v66;
    goto LABEL_37;
  }

  v30 = v29;
  isa = v28.super.isa;
  v71 = 0;
  CFUserNotificationReceiveResponse(v29, 0.0, &v71);
  v31 = v71 & 3;
  v32 = sub_10001CDFC();
  v33 = sub_10001D50C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "#ContactsButton response was %lu", v34, 0xCu);
    v25 = v68;
  }

  if (v31 == 1)
  {
    v43 = *&v25[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext];
    if (v43)
    {
      if (!v64[1])
      {
LABEL_48:
        __break(1u);
        return;
      }

      v44 = *v64;
      v45 = v43;

      v46 = sub_10001D2DC();

      [v45 setAuthorizationStatus:1 forBundleIdentifier:v46 noKillApp:1];

      v25 = v68;
    }

    else
    {
    }

    v47 = sub_10001CDFC();
    v48 = sub_10001D50C();
    if (os_log_type_enabled(v47, v48))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = 1;
      v51 = "#ContactsButton user declined limited access, updated access to be %ld";
      goto LABEL_32;
    }
  }

  else
  {
    if (v31)
    {

      v47 = sub_10001CDFC();
      v48 = sub_10001D50C();
      v49 = os_log_type_enabled(v47, v48);
      if (v31 == 3)
      {
        if (!v49)
        {
          goto LABEL_34;
        }

        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "#ContactsButton user dismissed the onboarding prompt";
        v52 = v48;
        v53 = v47;
        v54 = v50;
        v55 = 2;
        goto LABEL_33;
      }

      if (!v49)
      {
        goto LABEL_34;
      }

      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = v31;
      v51 = "#ContactsButton unhandled onboarding response: %lu";
LABEL_32:
      v52 = v48;
      v53 = v47;
      v54 = v56;
      v55 = 12;
LABEL_33:
      _os_log_impl(&_mh_execute_header, v53, v52, v51, v54, v55);

      goto LABEL_34;
    }

    v35 = *&v25[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext];
    if (v35)
    {
      if (!v64[1])
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v36 = *v64;
      v37 = v35;

      v38 = sub_10001D2DC();

      [v37 setAuthorizationStatus:2 forBundleIdentifier:v38 noKillApp:1];

      v25 = v68;
    }

    else
    {
    }

    v47 = sub_10001CDFC();
    v48 = sub_10001D50C();
    if (os_log_type_enabled(v47, v48))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = 2;
      v51 = "#ContactsButton user allowed limited access, updated access to be %ld";
      goto LABEL_32;
    }
  }

LABEL_34:

  v57 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext;
  [*&v25[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext] resetCachedStatus];
  v58 = v25;
  v59 = sub_10001CDFC();
  v60 = sub_10001D50C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    v62 = *&v25[v57];
    if (v62)
    {
      *(v61 + 4) = [v62 authorizationStatus];

      _os_log_impl(&_mh_execute_header, v59, v60, "#ContactsButton new context auth state is refreshed to  %ld", v61, 0xCu);

      v42 = isa;
LABEL_37:

      return;
    }

    __break(1u);
    goto LABEL_47;
  }
}

void sub_10001B078(void *a1, void *a2, char *a3)
{
  v6 = sub_10001CC9C();
  isa = v6[-1].isa;
  v8 = isa[8];
  __chkstk_darwin(v6);
  v10 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString + 8))
  {
    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(inited + 32) = sub_10001CBEC();
    *(inited + 40) = v23;
    *(inited + 48) = 0xD00000000000002FLL;
    *(inited + 56) = 0x8000000100021CD0;
    v24 = sub_100018F10(inited);
    swift_setDeallocating();
    sub_100010EC8(inited + 32, &qword_10002E480, &qword_10001ED30);
    sub_10001CBDC();
    (isa[13])(v10, enum case for ContactButtonServiceErrorType.missingPurposeString(_:), v6);
    v25 = sub_10001CC8C();
    (isa[1])(v10, v6);
    sub_10001259C(v24);

    v26 = objc_allocWithZone(NSError);
    v27 = sub_10001D2DC();

    v28 = sub_10001D28C().super.isa;

    v29 = [v26 initWithDomain:v27 code:v25 userInfo:v28];

    (*(a3 + 2))(a3, 0, 0, v29);
LABEL_11:

    return;
  }

  p_inst_props = &OBJC_PROTOCOL___UISDrawing.inst_props;
  if (!a1)
  {
    v30 = sub_10001CDFC();
    v31 = sub_10001D4EC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "#ContactsButton touch up event had no authentication message?", v32, 2u);
    }

    v17 = 0;
    goto LABEL_15;
  }

  v12 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_logger;
  v13 = a1;
  v134 = v12;
  v14 = sub_10001CDFC();
  v15 = sub_10001D4CC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "#ContactsButton gonna validate touch", v16, 2u);
  }

  v135 = sub_100012E68(v13);
  v17 = v135;
  if (v135)
  {
LABEL_15:
    v135 = v17;
    v33 = sub_10001CDFC();
    v34 = sub_10001D4EC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "#ContactsButton we were unable to validate the tap", v35, 2u);
    }

    if (v135)
    {
      v36 = sub_100007978(v135);
      v38 = v37;
      v39 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID);
      v40 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID + 8);

      sub_100008030(v39, v40, v36 & 0x101010101010101, v38 & 0x1010101010101);
    }

    (*(a3 + 2))(a3, 0, 0);
    goto LABEL_20;
  }

  v133 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext;
  v18 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext);
  if (!v18)
  {
LABEL_132:
    _Block_release(a3);
    __break(1u);
LABEL_133:
    _Block_release(v132);
    __break(1u);
LABEL_134:
    _Block_release(p_inst_props);
    __break(1u);
    goto LABEL_135;
  }

  v19 = [v18 authorizationStatus];
  v135 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches;
  v20 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches);
  if (v20)
  {
    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v124 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches);
      }

      v21 = sub_10001D64C();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v21 = 0;
  }

  sub_1000086FC(v21, v19);
  p_inst_props = (_AXFeatureSupportsNonSightedUsage() & 1) != 0 || _AXSCommandAndControlEnabled() || _AXSFullKeyboardAccessEnabled() != 0;
  v42 = sub_10001CDFC();
  v43 = sub_10001D4CC();
  v44 = os_log_type_enabled(v42, v43);
  v132 = a3;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v136 = v46;
    *v45 = 136315138;
    if (p_inst_props)
    {
      v47 = 28261;
    }

    else
    {
      v47 = 7563620;
    }

    v131 = v10;
    v48 = v6;
    v49 = isa;
    v50 = p_inst_props;
    if (p_inst_props)
    {
      v51 = 0xE200000000000000;
    }

    else
    {
      v51 = 0xE300000000000000;
    }

    v52 = sub_100017934(v47, v51, &v136);
    p_inst_props = v50;
    isa = v49;
    v6 = v48;
    v10 = v131;

    *(v45 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v42, v43, "#ContactsButton voice interaction currently %sabled", v45, 0xCu);
    sub_100002F44(v46);
  }

  a3 = v133;
  v53 = *(a2 + v133);
  if (!v53)
  {
    goto LABEL_133;
  }

  v54 = &ServiceDelegate;
  if (([v53 isAccessUnknown] & 1) == 0)
  {
    v55 = *&a3[a2];
    if (!v55)
    {
LABEL_135:
      _Block_release(v132);
      __break(1u);
      goto LABEL_136;
    }

    if (![v55 isAccessDenied])
    {
      v63 = *&v135[a2];
      if (v63)
      {
        a3 = (v63 >> 62);
        if (v63 >> 62)
        {
          if (v63 < 0)
          {
            v126 = *&v135[a2];
          }

          v76 = sub_10001D64C();
          if (v76 >= 1)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v76 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v76 >= 1)
          {
LABEL_60:
            swift_bridgeObjectRetain_n();
            v77 = sub_10001CDFC();
            v78 = sub_10001D4CC();
            if (os_log_type_enabled(v77, v78))
            {
              LODWORD(v135) = p_inst_props;
              p_inst_props = swift_slowAlloc();
              *p_inst_props = 134217984;
              if (a3)
              {
                v79 = sub_10001D64C();
              }

              else
              {
                v79 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(p_inst_props + 4) = v79;

              _os_log_impl(&_mh_execute_header, v77, v78, "#ContactsButton number of matches %ld", p_inst_props, 0xCu);

              LOBYTE(p_inst_props) = v135;
            }

            else
            {
            }

            if ((v76 != 1) | p_inst_props & 1)
            {
              v6 = a2;
              v86 = sub_10001CDFC();
              v87 = sub_10001D4CC();
              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                *v88 = 134217984;
                isa = v132;
                v89 = v133;
                v90 = *(a2 + v133);
                if (!v90)
                {
LABEL_137:
                  _Block_release(isa);

                  __break(1u);
                  return;
                }

                *(v88 + 4) = [v90 authorizationStatus];

                _os_log_impl(&_mh_execute_header, v86, v87, "#ContactsButton will bring up library management UI? authorization right is %ld", v88, 0xCu);
              }

              else
              {

                v86 = v6;
                isa = v132;
                v89 = v133;
              }

              v92 = *(a2 + v89);
              if (v92)
              {
                v93 = v92;

                v94 = [v93 isLimitedAccessGranted];

                v80 = isa[2];
                v95 = isa;
                v96 = v94;
                goto LABEL_123;
              }

LABEL_136:
              _Block_release(isa);
              __break(1u);
              goto LABEL_137;
            }

            v43 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID + 8);
            if (!v43)
            {

              v97 = sub_10001CDFC();
              v98 = sub_10001D4FC();
              if (os_log_type_enabled(v97, v98))
              {
                v99 = swift_slowAlloc();
                *v99 = 0;
                _os_log_impl(&_mh_execute_header, v97, v98, "#ContactsButton: bundleID is nil, can't add single match to limited access", v99, 2u);
              }

              sub_10001CC7C();
              sub_10001CBDC();
              (isa[13])(v10, enum case for ContactButtonServiceErrorType._invalidBundleID(_:), v6);
              v100 = sub_10001CC8C();
              (isa[1])(v10, v6);
              v101 = objc_allocWithZone(NSError);
              v102 = sub_10001D2DC();

              v29 = [v101 initWithDomain:v102 code:v100 userInfo:0];

              (*(v132 + 2))(v132, 0, 0, v29);
              goto LABEL_11;
            }

            v54 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID);
            if (a3)
            {
              v91 = sub_10001D64C();
            }

            else
            {
              v91 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            p_inst_props = v132;
            if (!v91)
            {

              v111 = sub_10001CDFC();
              v112 = sub_10001D4FC();
              if (os_log_type_enabled(v111, v112))
              {
                v113 = swift_slowAlloc();
                *v113 = 0;
                _os_log_impl(&_mh_execute_header, v111, v112, "#ContactsButton: nil contact for single match case?", v113, 2u);
              }

              sub_10001CC7C();
              sub_10001CBDC();
              (isa[13])(v10, enum case for ContactButtonServiceErrorType._invalidContact(_:), v6);
              v114 = sub_10001CC8C();
              (isa[1])(v10, v6);
              v115 = objc_allocWithZone(NSError);
              v116 = sub_10001D2DC();

              v29 = [v115 initWithDomain:v116 code:v114 userInfo:0];

              goto LABEL_51;
            }

            isa = (v63 & 0xC000000000000001);
            if ((v63 & 0xC000000000000001) != 0)
            {
LABEL_129:

              v104 = sub_10001D5DC();
              goto LABEL_93;
            }

            if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v103 = *(v63 + 32);

              v104 = v103;
LABEL_93:
              v105 = v104;

              v106 = sub_10001CDFC();
              v107 = sub_10001D4CC();

              if (os_log_type_enabled(v106, v107))
              {
                v108 = swift_slowAlloc();
                v109 = swift_slowAlloc();
                *v108 = 138412290;
                if (isa)
                {
                  v110 = sub_10001D5DC();
                }

                else
                {
                  v110 = *(v63 + 32);
                }

                v117 = v110;

                *(v108 + 4) = v117;
                *v109 = v117;
                _os_log_impl(&_mh_execute_header, v106, v107, "#ContactsButton will authorize the contact %@", v108, 0xCu);
                sub_100010EC8(v109, &qword_10002DA60, &qword_10001ECF0);

                p_inst_props = v132;
              }

              else
              {
              }

              sub_100005DE0(v105, v54, v43);

              sub_100002EFC(&unk_10002E468, &unk_10001ED18);
              v118 = swift_allocObject();
              *(v118 + 16) = xmmword_10001E6C0;
              v119 = [v105 identifier];
              v120 = sub_10001D30C();
              v122 = v121;

              *(v118 + 32) = v120;
              *(v118 + 40) = v122;
              v135 = sub_10001D3EC().super.isa;
              (*(p_inst_props + 16))(p_inst_props, v135, 0, 0);

              goto LABEL_71;
            }

            __break(1u);
            goto LABEL_131;
          }
        }
      }

      v127 = sub_10001CDFC();
      v128 = sub_10001D4CC();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&_mh_execute_header, v127, v128, "#ContactsButton no matches, nothing to do on tap", v129, 2u);
      }

      v95 = v132;
      v80 = *(v132 + 2);
      goto LABEL_122;
    }
  }

  v56 = sub_10001CDFC();
  v57 = sub_10001D4CC();
  if (os_log_type_enabled(v56, v57))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "#ContactsButton presenting onboarding prompt instead of authorizing single contact", v43, 2u);
  }

  v58 = *&v135[a2];
  p_inst_props = v132;
  if (!v58)
  {
    goto LABEL_131;
  }

  if (!(v58 >> 62))
  {
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v58 < 0)
  {
    v123 = *&v135[a2];
  }

  if (!sub_10001D64C())
  {
LABEL_44:
    v59 = sub_100005A00();
    v60 = *&v135[a2];
    *&v135[a2] = v59;
  }

LABEL_45:
  if (!*&v135[a2])
  {
LABEL_131:
    _Block_release(p_inst_props);
    __break(1u);
    goto LABEL_132;
  }

  v61 = *&v135[a2];

  sub_10001A5BC();

  v62 = sub_10001CDFC();
  v63 = sub_10001D4CC();
  if (os_log_type_enabled(v62, v63))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "#ContactsButton onboarding prompt has completed", v43, 2u);
  }

  v64 = *&a3[a2];
  if (!v64)
  {
    goto LABEL_134;
  }

  if ([v64 isAccessDenied])
  {
    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(v65 + 32) = sub_10001CBEC();
    *(v65 + 40) = v66;
    *(v65 + 48) = 0xD00000000000001ELL;
    *(v65 + 56) = 0x8000000100021D00;
    v67 = sub_100018F10(v65);
    swift_setDeallocating();
    sub_100010EC8(v65 + 32, &qword_10002E480, &qword_10001ED30);
    sub_10001CBDC();
    (isa[13])(v10, enum case for ContactButtonServiceErrorType.accessDenied(_:), v6);
    v68 = sub_10001CC8C();
    (isa[1])(v10, v6);
    sub_10001259C(v67);

    v69 = objc_allocWithZone(NSError);
    v70 = sub_10001D2DC();

    v71 = sub_10001D28C().super.isa;

    v29 = [v69 initWithDomain:v70 code:v68 userInfo:v71];

LABEL_51:
    (*(p_inst_props + 16))(p_inst_props, 0, 0, v29);
    goto LABEL_11;
  }

  v72 = *&v135[a2];
  if (!v72)
  {
    v80 = *(p_inst_props + 16);
LABEL_114:
    v95 = p_inst_props;
LABEL_122:
    v96 = 0;
    goto LABEL_123;
  }

  isa = (v72 >> 62);
  if (v72 >> 62)
  {
    if (v72 < 0)
    {
      v125 = *&v135[a2];
    }

    v73 = sub_10001D64C();
    if (v73 == 1)
    {
LABEL_55:
      sub_100002EFC(&unk_10002E468, &unk_10001ED18);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_10001E6C0;
      if (isa)
      {
        v75 = sub_10001D64C();
      }

      else
      {
        v75 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v75)
      {
        if ((v72 & 0xC000000000000001) == 0)
        {
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v81 = *(v72 + 32);
LABEL_70:
            v82 = [v81 identifier];

            v83 = sub_10001D30C();
            v85 = v84;

            *(v74 + 32) = v83;
            *(v74 + 40) = v85;
            v135 = sub_10001D3EC().super.isa;
            (*(p_inst_props + 16))(p_inst_props, v135, 0, 0);
LABEL_71:

LABEL_20:
            v41 = v135;

            return;
          }

          __break(1u);
          goto LABEL_129;
        }
      }

      else
      {
        __break(1u);
      }

      v81 = sub_10001D5DC();

      goto LABEL_70;
    }
  }

  else
  {
    v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73 == 1)
    {
      goto LABEL_55;
    }
  }

  v80 = *(p_inst_props + 16);
  if (v73 < 2)
  {
    goto LABEL_114;
  }

  v95 = p_inst_props;
  v96 = 1;
LABEL_123:

  v80(v95, 0, v96, 0);
}

void *sub_10001C33C(void *a1, void *a2)
{
  v5 = sub_100002EFC(&qword_10002E048, &qword_10001E770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  type metadata accessor for ContactsButtonSlotTag();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = sub_10001D47C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_10001D45C();

  v13 = a2;
  v14 = a1;
  v15 = v2;
  v16 = sub_10001D44C();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v11;
  v17[5] = v10;
  v17[6] = v14;
  v17[7] = v15;
  v17[8] = v9;
  sub_1000114B8(0, 0, v8, &unk_10001ED58, v17);

  sub_10001D52C();

  v18 = sub_10001CDFC();
  v19 = sub_10001D4CC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "#ContactsButton finished rendering an image", v20, 2u);
  }

  swift_beginAccess();
  v21 = *(v11 + 16);
  v22 = v21;

  return v21;
}

uint64_t sub_10001C5AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C5E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001C644(uint64_t a1)
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
  v11[1] = sub_10001CBD4;

  return sub_100012A74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001C720()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C758(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001CBD4;

  return sub_1000174B0(a1, v5);
}

uint64_t sub_10001C810(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F814;

  return sub_1000174B0(a1, v5);
}

uint64_t sub_10001C8C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C918()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10001C994()
{
  result = qword_10002E040;
  if (!qword_10002E040)
  {
    sub_10000F6A0(&unk_10002E4F0, &qword_10001ED90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E040);
  }

  return result;
}

uint64_t sub_10001C9F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10001CA68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000F814;

  return sub_100011DA8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t *sub_10001CB68(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}