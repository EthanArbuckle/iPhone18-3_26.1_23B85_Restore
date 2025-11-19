uint64_t variable initialization expression of ExtractPatternsRectifi.closedPatternUtil()
{
  type metadata accessor for ClosedPatternUtil();

  return swift_allocObject();
}

uint64_t sub_16CC(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4 < *(v2 + 24))
  {
    return result;
  }

  v6 = result;
  swift_beginAccess();
  v7 = *(v3 + 56);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40 * v8;
    v10 = *(v9 - 8);
    v11 = *v9;
    v12 = *(v9 + 8);
    v13 = *(v9 + 16);
    v14 = *(v9 + 24);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v38[0] = v10;
  v38[1] = v11;
  v38[2] = v12;
  v38[3] = v13;
  v39 = v14;
  v15 = sub_29EC(v38, v6);
  sub_38A8(v10, v11);
  if (v15)
  {
    swift_beginAccess();
    v10 = *(v3 + 56);
    if (v10[2])
    {
      v16 = *(v3 + 56);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v17 = v10[2];
        if (v17)
        {
LABEL_9:
          v18 = &v10[5 * v17];
          v19 = *v18;
          v20 = v18[1];
          v10[2] = v17 - 1;
          *(v3 + 56) = v10;
          swift_endAccess();

          goto LABEL_10;
        }

LABEL_33:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_28E74(v10);
    v10 = result;
    v17 = *(result + 16);
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_10:
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v37 = _swiftEmptyArrayStorage;
  v23 = *(v6 + 2);
  v24 = v6 + 32;
  while (v23 != v21)
  {
    if (v21 >= v23)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v6 = sub_1EF60(0, *(v6 + 2) + 1, 1, v6);
      *(v3 + 56) = v6;
      goto LABEL_24;
    }

    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_29;
    }

    v10 = *&v24[8 * v21++];
    if (v10)
    {

      sub_2A904();
      if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v26 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
        sub_2A924();
      }

      v6 = &v37;
      sub_2A944();
      v22 = v37;
      v21 = v25;
    }
  }

  v10 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_20018(0, v4, 0);
    v10 = v37;
    v27 = (a2 + 32);
    v28 = *(v37 + 16);
    v29 = v4;
    do
    {
      v31 = *v27;
      v27 += 2;
      v30 = v31;
      v37 = v10;
      v32 = v10[3];
      if (v28 >= v32 >> 1)
      {
        sub_20018((v32 > 1), v28 + 1, 1);
        v10 = v37;
      }

      v10[2] = v28 + 1;
      v10[v28++ + 4] = v30;
      --v29;
    }

    while (v29);
  }

  swift_beginAccess();
  v6 = *(v3 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 56) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v35 = *(v6 + 2);
  v34 = *(v6 + 3);
  if (v35 >= v34 >> 1)
  {
    v6 = sub_1EF60((v34 > 1), v35 + 1, 1, v6);
  }

  *(v6 + 2) = v35 + 1;
  v36 = &v6[40 * v35];
  *(v36 + 4) = v4;
  *(v36 + 5) = v22;
  *(v36 + 6) = v10;
  *(v36 + 7) = 0;
  v36[64] = 1;
  *(v3 + 56) = v6;
  return swift_endAccess();
}

uint64_t sub_1A14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  if (v5 < 3 || (v6 = a2, result = sub_16CC(a1, a2), a2 = v6, v5 != 15))
  {
    v22 = *(v2 + 16);
    result = sub_3474(v22, a2);
    v9 = result;
    inited = v8;
    if (v8 >> 62)
    {
      goto LABEL_26;
    }

    v11 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      do
      {
        if (v11 < 1)
        {
          __break(1u);
          return result;
        }

        v12 = 0;
        v13 = inited & 0xC000000000000001;
        v25 = inited;
        v26 = v5;
        v23 = inited & 0xC000000000000001;
        v24 = v11;
        while (!v13)
        {
          v14 = *(inited + 8 * v12 + 32);

          if (*(v9 + 16))
          {
            goto LABEL_13;
          }

LABEL_7:

LABEL_8:
          if (v11 == ++v12)
          {
          }
        }

        v14 = sub_2AB64();
        if (!*(v9 + 16))
        {
          goto LABEL_7;
        }

LABEL_13:
        v15 = sub_79D0(v14);
        if ((v16 & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = *(*(v9 + 56) + 8 * v15);
        sub_385C(&qword_39890, "d,");
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2B5D0;
        *(inited + 32) = v14;

        if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(a1 + 24) >> 1, v19 = a1, v18 <= v5))
        {
          v19 = sub_2AB74();
          v18 = *(v19 + 24) >> 1;
        }

        if (v18 > *(v19 + 16))
        {
          sub_385C(&qword_39898, &unk_2BCC0);
          swift_arrayInitWithCopy();

          ++*(v19 + 16);
          if (*(v17 + 16) < *(v3 + 24) || (v20 = , sub_12934(v20), v21 = sub_E914(v22, &off_350A8, v17), , (v21 & 1) != 0))
          {
          }

          else
          {
            sub_1A14(v19, v17);
          }

          inited = v25;
          v5 = v26;
          v13 = v23;
          v11 = v24;
          goto LABEL_8;
        }

        __break(1u);
LABEL_26:
        result = sub_2AC34();
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_1D24(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 5;
  }

  else
  {
    v3 = a1;
  }

  swift_beginAccess();
  v4 = *(v2 + 56);
  if (v3 >= *(v4 + 2))
  {
    v8 = *(v2 + 56);

    return v4;
  }

  v10 = *(v2 + 56);
  swift_bridgeObjectRetain_n();
  sub_2090(&v10);

  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v10;
    v5 = *(v10 + 2);
    if (v5 >= v3)
    {
      if (v5 != v3)
      {
        sub_2124C(v10, (v10 + 32), 0, (2 * v3) | 1);
        v7 = v6;

        return v7;
      }

      return v4;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

char *sub_1E14()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  *(v0 + 56) = _swiftEmptyArrayStorage;

  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    result = sub_20038(0, v3, 0);
    v5 = 0;
    v6 = *(v2 + 16);
    while (v6 != v5)
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_10;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        result = sub_20038((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v5;
      v9[5] = -1;
      if (v3 == ++v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    sub_1A14(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  }

  return result;
}

void *ExtractPatternsRectifi.deinit()
{
  v1 = v0[2];

  v2 = v0[7];

  v3 = v0[8];

  return v0;
}

uint64_t ExtractPatternsRectifi.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[7];

  v3 = v0[8];

  return _swift_deallocClassInstance(v0, 72, 7);
}

__n128 sub_1FE0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_203C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_2090(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_17650(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_2AD34(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 8;
          v14 = *(v12 + 1);
          if (*(v12 - 4) >= v14)
          {
            break;
          }

          v15 = *(v12 + 2);
          v16 = v12[40];
          v17 = *(v12 + 24);
          v18 = *(v12 - 1);
          *v13 = *(v12 - 2);
          *(v12 + 24) = v18;
          v19 = *v12;
          *(v12 - 4) = v14;
          *(v12 - 3) = v15;
          *(v12 - 1) = v17;
          *v12 = v16;
          v12 -= 40;
          *(v13 + 4) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_2A934();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v21[0] = v7 + 4;
    v21[1] = v6;
    sub_21F0(v21, v22, v23, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_169D0(v8);
      v8 = result;
    }

    v92 = v8 + 2;
    v93 = v8[2];
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v8[2 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_27C0((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7);
      v11 = (*a3 + 40 * v9);
      v14 = *v11;
      v13 = v11 + 5;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[5];
        v13 += 5;
        ++v15;
        if (v12 < v10 == v16 >= v17)
        {
          v7 = v15 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 8;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = (v30 + v18);
            v24 = *(v22 - 4);
            v25 = *(v22 - 3);
            v26 = *v22;
            v27 = *(v22 - 1);
            v28 = *v23;
            v29 = *(v23 - 1);
            *(v22 - 2) = *(v23 - 2);
            *(v22 - 1) = v29;
            *v22 = v28;
            *(v23 - 4) = v24;
            *(v23 - 3) = v25;
            *(v23 - 1) = v27;
            *v23 = v26;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1F0B4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v45 = v8[2];
    v44 = v8[3];
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1F0B4((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v45 + 4];
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
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
          v50 = v8[4];
          v51 = v8[5];
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = &v8[2 * v46];
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v47[2 * v49];
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = &v8[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v47[2 * v49];
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = &v47[2 * v49 - 2];
        v88 = *v87;
        v89 = &v47[2 * v49];
        v90 = v89[1];
        sub_27C0((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > v8[2])
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = v8[2];
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove(&v47[2 * v49], v89 + 2, 16 * (v91 - 1 - v49));
        v8[2] = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[2 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = &v8[2 * v46];
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v47[2 * v49];
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = v35 + 40;
    v37 = *(v35 + 40);
    if (*v35 >= v37)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v35 + 48);
    v39 = *(v35 + 72);
    v40 = *(v35 + 56);
    v41 = *(v35 + 16);
    *v36 = *v35;
    *(v35 + 56) = v41;
    v42 = *(v35 + 32);
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v40;
    *(v35 + 32) = v39;
    v35 -= 40;
    *(v36 + 32) = v42;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_27C0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 40;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v20 -= 40;
      if (*v19 < v22)
      {
        if (v21 != v6)
        {
          v25 = *v19;
          v26 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v25;
          *(v5 + 16) = v26;
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v23 = *v20;
        v24 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v23;
        *(v5 + 16) = v24;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v27 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_29EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  if (v2 >> 62)
  {
LABEL_70:
    v20 = a2;
    v21 = sub_2AC34();
    v4 = *(v20 + 16);
    if (v4 < v21)
    {
      return 0;
    }

    v22 = sub_2AC34();
    a2 = v20;
    v3 = v22;
    if (v22)
    {
      goto LABEL_5;
    }

    return 1;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  v4 = *(a2 + 16);
  if (v4 < v3)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

LABEL_5:
  v5 = 0;
  v6 = a2 + 32;
  while ((v2 & 0xC000000000000001) == 0)
  {
    if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_70;
    }

    v8 = *(v2 + 8 * v5 + 32);

    if (v4 == v5)
    {
      goto LABEL_66;
    }

LABEL_11:
    v9 = *(v6 + 8 * v5);
    if (!v9)
    {
      goto LABEL_67;
    }

    v10 = *(v8 + 24) == *(v9 + 24) && *(v8 + 32) == *(v9 + 32);
    if (!v10 && (sub_2AD54() & 1) == 0 || *(v8 + 40) != *(v9 + 40))
    {
      goto LABEL_67;
    }

    ++v5;
    v11 = *(v9 + 41);
    v12 = 0xE300000000000000;
    v13 = 5395265;
    switch(*(v8 + 41))
    {
      case 1:
        v13 = 5786702;
        break;
      case 2:
        v13 = 4801877;
        break;
      case 3:
        v12 = 0xE800000000000000;
        v13 = 0x505041454E4F4850;
        break;
      case 4:
        v13 = 0x414547415353454DLL;
        v12 = 0xEA00000000005050;
        break;
      case 5:
        v13 = 0x5245444E494D4552;
        v14 = 1096041811;
        goto LABEL_29;
      case 6:
        v13 = 0xD000000000000017;
        v12 = 0x800000000002C990;
        break;
      case 7:
        v13 = 0x4552434D52414C41;
        goto LABEL_27;
      case 8:
        v12 = 0xEE00505041454C47;
        v13 = 0x474F544D52414C41;
        break;
      case 9:
        v13 = 0x4450554D52414C41;
LABEL_27:
        v14 = 1095062593;
LABEL_29:
        v12 = v14 | 0xEE00505000000000;
        break;
      case 0xA:
        v13 = 0x4145524345544F4ELL;
        goto LABEL_33;
      case 0xB:
        v13 = 0x454C454445544F4ELL;
LABEL_33:
        v12 = 0xED00005050414554;
        break;
      case 0xC:
        v13 = 0x5041594D444E4946;
        v12 = 0xE900000000000050;
        break;
      case 0xD:
        v12 = 0xE700000000000000;
        v13 = 0x4E574F4E4B4E55;
        break;
      default:
        break;
    }

    v15 = 0xE300000000000000;
    v16 = 5395265;
    switch(v11)
    {
      case 1:
        if (v13 == 5786702)
        {
          goto LABEL_60;
        }

        goto LABEL_6;
      case 2:
        if (v13 != 4801877)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 3:
        v15 = 0xE800000000000000;
        if (v13 != 0x505041454E4F4850)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 4:
        v15 = 0xEA00000000005050;
        if (v13 != 0x414547415353454DLL)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 5:
        v17 = 0x5245444E494D4552;
        v18 = 1096041811;
        goto LABEL_52;
      case 6:
        v15 = 0x800000000002C990;
        if (v13 != 0xD000000000000017)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 7:
        v17 = 0x4552434D52414C41;
        goto LABEL_50;
      case 8:
        v15 = 0xEE00505041454C47;
        if (v13 != 0x474F544D52414C41)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 9:
        v17 = 0x4450554D52414C41;
LABEL_50:
        v18 = 1095062593;
LABEL_52:
        v15 = v18 | 0xEE00505000000000;
        if (v13 != v17)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 10:
        v16 = 0x4145524345544F4ELL;
        v15 = 0xED00005050414554;
        goto LABEL_59;
      case 11:
        v15 = 0xED00005050414554;
        if (v13 != 0x454C454445544F4ELL)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 12:
        v15 = 0xE900000000000050;
        if (v13 != 0x5041594D444E4946)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 13:
        v15 = 0xE700000000000000;
        if (v13 != 0x4E574F4E4B4E55)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      default:
LABEL_59:
        if (v13 != v16)
        {
          goto LABEL_6;
        }

LABEL_60:
        if (v12 == v15)
        {

          if (v3 == v5)
          {
            return 1;
          }
        }

        else
        {
LABEL_6:
          v7 = sub_2AD54();

          if ((v7 & 1) == 0)
          {
            return 0;
          }

          if (v3 == v5)
          {
            return 1;
          }
        }

        break;
    }
  }

  v8 = sub_2AB64();
  if (v4 != v5)
  {
    goto LABEL_11;
  }

LABEL_66:
  __break(1u);
LABEL_67:

  return 0;
}

void *sub_2F6C(uint64_t a1, uint64_t a2)
{
  v43 = *(a1 + 16);
  if (!v43)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v42 = a1 + 32;
  v40 = a2 + 32;
  v41 = a2;
  while (1)
  {
    v3 = *(v42 + 8 * v2);
    v44 = v2;
    if (v2 >= *(a2 + 16))
    {
      v5 = -1;
      if (v3 < 0)
      {
        v50 = v2;
      }

      else
      {
        v50 = v2;
        if ((v3 & 0x4000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v4 = (v40 + 16 * v2);
      v5 = v4[1];
      v50 = *v4;
      if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
LABEL_10:
        v49 = v3 & 0xFFFFFFFFFFFFFF8;
        v6 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_11;
      }
    }

    v49 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_2AC34();
LABEL_11:
    v7 = v5 + 1;
    v8 = __OFADD__(v5, 1);
    v47 = v8;

    v45 = v3;
    if (v6)
    {
      break;
    }

LABEL_3:
    v2 = v44 + 1;

    a2 = v41;
    if (v44 + 1 == v43)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  v9 = 0;
  v48 = v3 & 0xC000000000000001;
  v46 = v3 + 32;
  while (v48)
  {
    v11 = sub_2AB64();
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_71;
    }

LABEL_20:
    if (v47)
    {
      goto LABEL_74;
    }

    v13 = v9 + v7;
    if (__OFADD__(v9, v7))
    {
      goto LABEL_73;
    }

    if (!_swiftEmptyDictionarySingleton[2] || (v14 = sub_79D0(v11), (v15 & 1) == 0))
    {
      v9 = v12;
      goto LABEL_42;
    }

    v16 = *(_swiftEmptyDictionarySingleton[7] + 8 * v14);
    v17 = *(v16 + 2);
    if (v17 && *&v16[16 * v17 + 16] == v50)
    {

      if (v12 == v6)
      {
        goto LABEL_3;
      }

      v18 = v9 + 5;
      while (1)
      {
        v19 = v18 - 4;
        if (v48)
        {
          v11 = sub_2AB64();
          v9 = v18 - 3;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v19 >= *(v49 + 16))
          {
            goto LABEL_72;
          }

          v11 = *(v45 + 8 * v18);

          v9 = v18 - 3;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_71;
          }
        }

        v13 = v19 + v7;
        if (__OFADD__(v19, v7))
        {
          goto LABEL_73;
        }

        if (!_swiftEmptyDictionarySingleton[2])
        {
          break;
        }

        v20 = sub_79D0(v11);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v16 = *(_swiftEmptyDictionarySingleton[7] + 8 * v20);
        v22 = *(v16 + 2);
        if (!v22 || *&v16[16 * v22 + 16] != v50)
        {
          v12 = v9;
          goto LABEL_45;
        }

        ++v18;
        if (v9 == v6)
        {
          goto LABEL_3;
        }
      }

LABEL_42:
      v16 = _swiftEmptyArrayStorage;
      if (!_swiftEmptyArrayStorage[2])
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_45:

    v9 = v12;
    if (!*(v16 + 2))
    {
LABEL_46:

      sub_2A904();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v38 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_2A924();
      }

      sub_2A944();
    }

LABEL_49:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1F07C(0, *(v16 + 2) + 1, 1, v16);
    }

    v24 = *(v16 + 2);
    v23 = *(v16 + 3);
    if (v24 >= v23 >> 1)
    {
      v16 = sub_1F07C((v23 > 1), v24 + 1, 1, v16);
    }

    *(v16 + 2) = v24 + 1;
    v25 = &v16[16 * v24];
    *(v25 + 4) = v50;
    *(v25 + 5) = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_79D0(v11);
    v29 = _swiftEmptyDictionarySingleton[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_75;
    }

    v32 = v27;
    if (_swiftEmptyDictionarySingleton[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v27 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_88D4();
        if ((v32 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

LABEL_16:
      v10 = *(_swiftEmptyDictionarySingleton[7] + 8 * v28);

      *(_swiftEmptyDictionarySingleton[7] + 8 * v28) = v16;

      if (v9 == v6)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_7AF4(v31, isUniquelyReferenced_nonNull_native);
      type metadata accessor for PatternItem();
      v33 = sub_79D0(v11);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_77;
      }

      v28 = v33;
      if (v32)
      {
        goto LABEL_16;
      }

LABEL_60:
      _swiftEmptyDictionarySingleton[(v28 >> 6) + 8] |= 1 << v28;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v28) = v11;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v28) = v16;
      v35 = _swiftEmptyDictionarySingleton[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_76;
      }

      _swiftEmptyDictionarySingleton[2] = v37;

      if (v9 == v6)
      {
        goto LABEL_3;
      }
    }
  }

  if (v9 >= *(v49 + 16))
  {
    goto LABEL_72;
  }

  v11 = *(v46 + 8 * v9);

  v12 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_20;
  }

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
  result = sub_2AD84();
  __break(1u);
  return result;
}

uint64_t sub_3474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_57:
    v31 = sub_2F6C(v4, a2);

    return v31;
  }

  v3 = 0;
  v33 = a1 + 32;
  v34 = *(a1 + 16);
  v35 = a2 + 32;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = (v35 + 16 * v3);
    v6 = *v5;
    if (*v5 >= v34)
    {
      break;
    }

    v7 = v5[1];
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_59;
    }

    v9 = *(v33 + 8 * v6);
    v10 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_2AC34();
      if (result < v8)
      {
        goto LABEL_69;
      }

      v11 = result;
      if (sub_2AC34() < v8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      if (v11 < v8)
      {
        goto LABEL_60;
      }
    }

    if (v8 < 0)
    {
      goto LABEL_62;
    }

    if (v10)
    {
      v12 = sub_2AC34();
    }

    else
    {
      v12 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    }

    if (v12 < v11)
    {
      goto LABEL_63;
    }

    if (v11 < 0)
    {
      goto LABEL_64;
    }

    if ((v9 & 0xC000000000000001) == 0 || v8 == v11)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v8 >= v11)
      {
        goto LABEL_66;
      }

      type metadata accessor for PatternItem();
      swift_bridgeObjectRetain_n();
      v14 = v8;
      do
      {
        v15 = v14 + 1;
        sub_2AB54(v14);
        v14 = v15;
      }

      while (v11 != v15);
    }

    if (v10)
    {
      sub_2AC44();
      v8 = v22;
      v24 = v23;

      v17 = v24 >> 1;
      if ((v24 & 1) == 0)
      {
LABEL_31:
        v20 = v17 - v8;
        v25 = __OFSUB__(v17, v8);
        swift_unknownObjectRetain();
        if (v25)
        {
          goto LABEL_65;
        }

        if (!v20)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v16 = (2 * v11) | 1;
      v17 = v16 >> 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    sub_2AD64();
    swift_unknownObjectRetain_n();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      swift_unknownObjectRelease();
      v18 = _swiftEmptyArrayStorage;
    }

    v19 = v18[2];

    v20 = v17 - v8;
    if (__OFSUB__(v17, v8))
    {
      goto LABEL_67;
    }

    if (v19 != v20)
    {
      swift_unknownObjectRelease();
      if (!v20)
      {
LABEL_47:
        swift_unknownObjectRelease();
LABEL_48:
        v21 = _swiftEmptyArrayStorage;
LABEL_49:
        swift_unknownObjectRelease();
        goto LABEL_50;
      }

LABEL_36:
      if (v20 < 1)
      {
        v21 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_385C(&qword_398A0, &qword_2B6B0);
        v21 = swift_allocObject();
        v26 = j__malloc_size(v21);
        v27 = v26 - 32;
        if (v26 < 32)
        {
          v27 = v26 - 25;
        }

        v21[2] = v20;
        v21[3] = (2 * (v27 >> 3)) | 1;
      }

      swift_unknownObjectRelease();
      if (v8 == v17)
      {
        goto LABEL_68;
      }

      type metadata accessor for PatternItem();
      swift_arrayInitWithCopy();
      goto LABEL_49;
    }

    v21 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v21)
    {
      goto LABEL_48;
    }

LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1F090(0, v4[2] + 1, 1, v4);
    }

    v30 = v4[2];
    v29 = v4[3];
    if (v30 >= v29 >> 1)
    {
      v4 = sub_1F090((v29 > 1), v30 + 1, 1, v4);
    }

    ++v3;
    v4[2] = v30 + 1;
    v4[v30 + 4] = v21;
    if (v3 == v2)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = swift_unknownObjectRelease();
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_385C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_38A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_396C()
{
  v2 = sub_2A664();
  v3 = v0;

  v4._countAndFlagsBits = 0x2F49464954434552;
  v4._object = 0xE800000000000000;
  sub_2A8C4(v4);

  qword_3AB08 = v2;
  unk_3AB10 = v3;
  return result;
}

uint64_t sub_39D8(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_398A8) = 20;
  *(v2 + qword_398B0) = 10;
  v5 = qword_398B8;
  v6 = sub_29FD4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v2 + v5) = sub_29FC4();
  v9 = qword_398C0;
  v10 = sub_29FA4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v2 + v9) = sub_29F94();

  return CoreDataStore.init(path:modelFileName:)(a1, a2, 0xD000000000000013, 0x800000000002CC30);
}

void sub_3AB0(uint64_t a1, unint64_t *a2, char a3)
{
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_2A854();
  v9 = [v7 initWithEntityName:v8];

  v10 = sub_2A214();
  type metadata accessor for RECTIFISelfPatternStore();
  v11 = sub_2AA34();
  if (v3)
  {
  }

  else
  {
    v12 = v11;

    sub_AAE8(v12, a1, a2);
    v23 = v9;

    if (a3)
    {
      if (v12 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2AC34())
      {
        v14 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = sub_2AB64();
          }

          else
          {
            if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_15;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v18 = sub_2A214();
          [v18 deleteObject:{v16, v23}];

          ++v14;
          if (v17 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }
    }

LABEL_17:

    v19 = sub_2A214();
    v24 = 0;
    v20 = [v19 save:&v24];

    if (v20)
    {
      v21 = v24;
    }

    else
    {
      v22 = v24;
      sub_29FE4();

      swift_willThrow();
    }
  }
}

void sub_3D28(uint64_t a1, char **a2, char a3)
{
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_2A854();
  v9 = [v7 initWithEntityName:v8];

  v10 = sub_2A214();
  type metadata accessor for RECTIFIInfrequentPatternStore();
  v11 = sub_2AA34();
  if (v3)
  {
  }

  else
  {
    v12 = v11;

    sub_B0A4(v12, a1, a2);
    v23 = v9;

    if (a3)
    {
      if (v12 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2AC34())
      {
        v14 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = sub_2AB64();
          }

          else
          {
            if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_15;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v18 = sub_2A214();
          [v18 deleteObject:{v16, v23}];

          ++v14;
          if (v17 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }
    }

LABEL_17:

    v19 = sub_2A214();
    v24 = 0;
    v20 = [v19 save:&v24];

    if (v20)
    {
      v21 = v24;
    }

    else
    {
      v22 = v24;
      sub_29FE4();

      swift_willThrow();
    }
  }
}

uint64_t sub_3FA0(uint64_t a1)
{
  v2 = type metadata accessor for PatternStoreValue(0);
  v71 = *(v2 - 1);
  v3 = *(v71 + 64);
  v4 = __chkstk_darwin(v2);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v64 - v7;
  v9 = __chkstk_darwin(v6);
  v68 = &v64 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v64 - v12;
  v14 = __chkstk_darwin(v11);
  v67 = &v64 - v15;
  __chkstk_darwin(v14);
  v69 = &v64 - v16;
  v17 = sub_22744(_swiftEmptyArrayStorage);
  v18 = *(a1 + 16);
  if (v18)
  {
    v65 = v8;
    v66 = v13;
    v19 = (a1 + 32);
    v70 = v2;
    while (1)
    {
      v20 = *v19;
      v21 = v17[2];

      if (v21)
      {
        v22 = sub_7A88(v20);
        if (v23)
        {
          break;
        }
      }

      sub_2A084();
      v42 = v2[6];
      v43 = sub_2A0E4();
      (*(*(v43 - 8) + 56))(&v8[v42], 1, 1, v43);
      *&v8[v2[5]] = 1;
      v8[v2[7]] = 2;
      sub_B720(v8, v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v17;
      v46 = sub_7A88(v20);
      v47 = v17[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v50 = v45;
      if (v17[3] >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v45 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_8A38();
          if ((v50 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_7F84(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_7A88(v20);
        if ((v50 & 1) != (v52 & 1))
        {
LABEL_40:
          sub_385C(&qword_399C8, &qword_2B778);
          result = sub_2AD84();
          __break(1u);
          return result;
        }

        v46 = v51;
        if ((v50 & 1) == 0)
        {
LABEL_19:
          v17 = v73;
          v73[(v46 >> 6) + 8] |= 1 << v46;
          *(v17[6] + 8 * v46) = v20;
          sub_B720(v72, v17[7] + *(v71 + 72) * v46);
          v53 = v17[2];
          v38 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v38)
          {
            goto LABEL_35;
          }

LABEL_29:
          v17[2] = v54;
          goto LABEL_4;
        }
      }

      v17 = v73;
      sub_B784(v72, v73[7] + *(v71 + 72) * v46);
LABEL_4:
      v2 = v70;
      ++v19;
      if (!--v18)
      {
        goto LABEL_30;
      }
    }

    v24 = *(v71 + 72);
    v25 = v67;
    sub_B7E8(v17[7] + v24 * v22, v67);
    v26 = v25;
    v27 = v69;
    sub_B720(v26, v69);
    v28 = v66;
    sub_2A084();
    v29 = *(v27 + v2[5]);
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_36;
    }

    v31 = v2[6];
    v32 = sub_2A0E4();
    (*(*(v32 - 8) + 56))(v28 + v31, 1, 1, v32);
    *(v28 + v2[5]) = v30;
    *(v28 + v2[7]) = 2;
    sub_B720(v28, v68);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v17;
    v34 = sub_7A88(v20);
    v36 = v17[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_37;
    }

    v40 = v35;
    if (v17[3] >= v39)
    {
      v8 = v65;
      if ((v33 & 1) == 0)
      {
        v56 = v34;
        sub_8A38();
        v34 = v56;
        if ((v40 & 1) == 0)
        {
LABEL_28:
          v17 = v73;
          v73[(v34 >> 6) + 8] |= 1 << v34;
          *(v17[6] + 8 * v34) = v20;
          sub_B720(v68, v17[7] + v34 * v24);
          sub_B904(v69);
          v57 = v17[2];
          v38 = __OFADD__(v57, 1);
          v54 = v57 + 1;
          if (v38)
          {
            goto LABEL_38;
          }

          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

    else
    {
      sub_7F84(v39, v33);
      v34 = sub_7A88(v20);
      v8 = v65;
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_40;
      }
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    v55 = v34;

    v17 = v73;
    sub_B784(v68, v73[7] + v55 * v24);
    sub_B904(v69);
    goto LABEL_4;
  }

LABEL_30:
  if (qword_39720 != -1)
  {
LABEL_39:
    swift_once();
  }

  v58 = sub_2A804();
  sub_B884(v58, qword_3AB28);
  v59 = sub_2A7E4();
  v60 = sub_2A9E4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = v17[2];
    _os_log_impl(&dword_0, v59, v60, "Writing %ld Incomplete patterns", v61, 0xCu);
  }

  sub_5BCC(v62);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_45B4(void *a1, uint64_t a2)
{
  v4 = v2;
  v89 = a2;
  v90 = a1;
  v93 = type metadata accessor for PatternStoreValue(0);
  v91 = *(v93 - 8);
  v5 = *(v91 + 64);
  v6 = __chkstk_darwin(v93);
  v92 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v94 = v84 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = v84 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v84 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v84 - v17;
  __chkstk_darwin(v16);
  v20 = v84 - v19;
  v21 = sub_385C(&qword_39918, &unk_2B740);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v84 - v23;
  v100 = sub_22744(_swiftEmptyArrayStorage);
  v25 = sub_2A214();
  v97 = v4;
  v98 = &v100;
  v99 = 1;
  sub_2AA24();

  v26 = v100;
  if (v3)
  {
  }

  v95 = v24;
  v87 = v12;
  v88 = v20;
  v85 = v18;
  v86 = v15;
  v84[0] = 0;
  v84[1] = v4;
  v28 = v90[2];
  if (v28)
  {
    v96 = 0;
    v29 = *(v89 + 16);
    v30 = v90 + 4;
    v32 = v92;
    v31 = v93;
    v33 = v94;
    v34 = v95;
    do
    {
      v35 = *v30;
      if (v96 == v29)
      {
        v36 = sub_2A0E4();
        (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
        v96 = v29;
      }

      else
      {
        if (v96 >= v29)
        {
          goto LABEL_42;
        }

        v90 = v26;
        v26 = v32;
        v37 = v35;
        v38 = v30;
        v39 = v28;
        v40 = v29;
        v41 = v34;
        v42 = sub_2A0E4();
        v43 = *(v42 - 8);
        v44 = v96;
        (*(v43 + 16))(v41, v89 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v96, v42);
        v96 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_43;
        }

        (*(v43 + 56))(v41, 0, 1, v42);
        v34 = v41;
        v29 = v40;
        v28 = v39;
        v30 = v38;
        v35 = v37;
        v32 = v26;
        v26 = v90;
        v31 = v93;
        v33 = v94;
      }

      v45 = v26[2];

      if (v45)
      {
        v46 = sub_7A88(v35);
        v34 = v95;
        if (v47)
        {
          v48 = *(v91 + 72);
          v49 = v85;
          sub_B7E8(v26[7] + v48 * v46, v85);
          v50 = v49;
          v51 = v88;
          sub_B720(v50, v88);
          v52 = v86;
          sub_2A084();
          v53 = *(v51 + v31[5]);
          v54 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_45;
          }

          sub_BAC4(v95, v52 + v31[6], &qword_39918, &unk_2B740);
          *(v52 + v31[5]) = v54;
          *(v52 + v31[7]) = 0;
          sub_B720(v52, v87);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = v26;
          v56 = sub_7A88(v35);
          v58 = v26[2];
          v59 = (v57 & 1) == 0;
          v60 = __OFADD__(v58, v59);
          v61 = v58 + v59;
          if (v60)
          {
            goto LABEL_46;
          }

          v62 = v57;
          if (v26[3] >= v61)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_31;
            }

            v76 = v56;
            sub_8A38();
            v56 = v76;
            v32 = v92;
            if ((v62 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_32:
            v75 = v56;

            v26 = v100;
            sub_B784(v87, *(v100 + 56) + v75 * v48);
            sub_B904(v88);
            v34 = v95;
            sub_BB4C(v95, &qword_39918, &unk_2B740);
          }

          else
          {
            sub_7F84(v61, isUniquelyReferenced_nonNull_native);
            v56 = sub_7A88(v35);
            if ((v62 & 1) != (v63 & 1))
            {
              goto LABEL_49;
            }

LABEL_31:
            v32 = v92;
            if (v62)
            {
              goto LABEL_32;
            }

LABEL_34:
            v26 = v100;
            *(v100 + 8 * (v56 >> 6) + 64) |= 1 << v56;
            *(v26[6] + 8 * v56) = v35;
            sub_B720(v87, v26[7] + v56 * v48);
            sub_B904(v88);
            v34 = v95;
            sub_BB4C(v95, &qword_39918, &unk_2B740);
            v77 = v26[2];
            v60 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (v60)
            {
              goto LABEL_47;
            }

            v26[2] = v78;
          }

          v31 = v93;
          v33 = v94;
          goto LABEL_7;
        }
      }

      sub_2A084();
      sub_BAC4(v34, v33 + v31[6], &qword_39918, &unk_2B740);
      *(v33 + v31[5]) = 1;
      *(v33 + v31[7]) = 0;
      sub_B720(v33, v32);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v26;
      v66 = sub_7A88(v35);
      v67 = v26[2];
      v68 = (v65 & 1) == 0;
      v69 = v67 + v68;
      if (__OFADD__(v67, v68))
      {
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
        goto LABEL_48;
      }

      v70 = v65;
      if (v26[3] >= v69)
      {
        v34 = v95;
        if ((v64 & 1) == 0)
        {
          sub_8A38();
          v34 = v95;
        }

        v33 = v94;
        if ((v70 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_7F84(v69, v64);
        v71 = sub_7A88(v35);
        if ((v70 & 1) != (v72 & 1))
        {
LABEL_49:
          sub_385C(&qword_399C8, &qword_2B778);
          result = sub_2AD84();
          __break(1u);
          return result;
        }

        v66 = v71;
        v33 = v94;
        v34 = v95;
        if ((v70 & 1) == 0)
        {
LABEL_28:
          v26 = v100;
          *(v100 + 8 * (v66 >> 6) + 64) |= 1 << v66;
          *(v26[6] + 8 * v66) = v35;
          v32 = v92;
          sub_B720(v92, v26[7] + *(v91 + 72) * v66);
          sub_BB4C(v34, &qword_39918, &unk_2B740);
          v73 = v26[2];
          v60 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v60)
          {
            goto LABEL_44;
          }

          v26[2] = v74;
          goto LABEL_6;
        }
      }

      v26 = v100;
      v32 = v92;
      sub_B784(v92, *(v100 + 56) + *(v91 + 72) * v66);
      sub_BB4C(v34, &qword_39918, &unk_2B740);
LABEL_6:
      v31 = v93;
LABEL_7:
      ++v30;
      --v28;
    }

    while (v28);
  }

  if (qword_39720 != -1)
  {
LABEL_48:
    swift_once();
  }

  v79 = sub_2A804();
  sub_B884(v79, qword_3AB28);
  v80 = sub_2A7E4();
  v81 = sub_2A9E4();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 134217984;
    *(v82 + 4) = v26[2];
    _os_log_impl(&dword_0, v80, v81, "Writing %ld self patterns", v82, 0xCu);
  }

  sub_4E28(v83);
  return swift_bridgeObjectRelease_n();
}

void sub_4E28(uint64_t a1)
{
  v2 = v1;
  v69 = sub_385C(&qword_399E8, &qword_2C870);
  v4 = *(*(v69 - 8) + 64);
  v5 = __chkstk_darwin(v69);
  v68 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v67 = &v58 - v7;
  v66 = sub_385C(&qword_399F0, &qword_2B790);
  v70 = *(v66 - 8);
  v8 = *(v70 + 64);
  __chkstk_darwin(v66);
  v10 = &v58 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v59 = v1;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_20058(0, v11, 0);
    v12 = aBlock[0];
    v13 = a1 + 64;
    v14 = -1 << *(a1 + 32);
    v15 = sub_2AA84();
    v16 = 0;
    v17 = *(a1 + 36);
    v61 = a1 + 72;
    v62 = v11;
    v63 = v17;
    v64 = a1 + 64;
    v65 = a1;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_31;
      }

      if (v17 != *(a1 + 36))
      {
        goto LABEL_32;
      }

      v71 = v16;
      v72 = 1 << v15;
      v74 = v15 >> 6;
      v19 = v10;
      v20 = v69;
      v21 = *(v69 + 48);
      v22 = *(a1 + 48);
      v23 = *(a1 + 56);
      v24 = *(v22 + 8 * v15);
      v25 = type metadata accessor for PatternStoreValue(0);
      v26 = v67;
      sub_B7E8(v23 + *(*(v25 - 8) + 72) * v15, &v67[v21]);
      v27 = v12;
      v28 = v68;
      *v68 = v24;
      v29 = *(v20 + 48);
      v10 = v19;
      sub_B720(&v26[v21], v28 + v29);
      sub_B7E8(v28 + v29, &v19[*(v66 + 48)]);
      *v19 = v24;
      swift_bridgeObjectRetain_n();
      v30 = v28;
      v12 = v27;
      sub_BB4C(v30, &qword_399E8, &qword_2C870);
      aBlock[0] = v27;
      v32 = v27[2];
      v31 = v27[3];
      if (v32 >= v31 >> 1)
      {
        sub_20058(v31 > 1, v32 + 1, 1);
        v12 = aBlock[0];
      }

      v12[2] = v32 + 1;
      sub_BBAC(v19, v12 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v32, &qword_399F0, &qword_2B790);
      a1 = v65;
      v18 = 1 << *(v65 + 32);
      if (v15 >= v18)
      {
        goto LABEL_33;
      }

      v13 = v64;
      v33 = *(v64 + 8 * v74);
      if ((v33 & v72) == 0)
      {
        goto LABEL_34;
      }

      LODWORD(v17) = v63;
      if (v63 != *(v65 + 36))
      {
        goto LABEL_35;
      }

      v34 = v33 & (-2 << (v15 & 0x3F));
      if (v34)
      {
        v18 = __clz(__rbit64(v34)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v74 << 6;
        v36 = v74 + 1;
        v37 = (v61 + 8 * v74);
        while (v36 < (v18 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_B8F8(v15, v63, 0);
            v18 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        sub_B8F8(v15, v63, 0);
      }

LABEL_4:
      v16 = v71 + 1;
      v15 = v18;
      if (v71 + 1 == v62)
      {
        v2 = v59;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_27;
  }

LABEL_21:
  aBlock[0] = v12;

  sub_8C4C(aBlock);
  if (v2)
  {

    __break(1u);
    return;
  }

  v40 = aBlock[0];
  v41 = v60;
  if (aBlock[0][2] > 0x14uLL)
  {
    sub_21334(aBlock[0], aBlock[0] + ((*(v70 + 80) + 32) & ~*(v70 + 80)), 0, 0x29uLL);
    v43 = v42;

    v40 = v43;
  }

  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  *(v44 + 24) = 0;
  v45 = objc_opt_self();
  v46 = sub_2A854();
  v47 = sub_2A214();
  v48 = [v45 entityForName:v46 inManagedObjectContext:v47];

  if (v48)
  {
    v49 = swift_allocObject();
    v49[2] = v44;
    v49[3] = v41;
    v50 = objc_allocWithZone(NSBatchInsertRequest);
    aBlock[4] = sub_BABC;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_6E40;
    aBlock[3] = &unk_354A0;
    v51 = _Block_copy(aBlock);

    v52 = [v50 initWithEntity:v48 managedObjectHandler:v51];
    _Block_release(v51);

    v53 = sub_2A214();
    __chkstk_darwin(v53);
    *(&v58 - 2) = v41;
    *(&v58 - 1) = v52;
    sub_2AA24();

    return;
  }

  if (qword_39720 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v54 = sub_2A804();
  sub_B884(v54, qword_3AB28);
  v55 = sub_2A7E4();
  v56 = sub_2A9F4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "Could not write to RECTIFI on-device SELF Pattern storage", v57, 2u);
  }
}

BOOL sub_5544(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_385C(&qword_39918, &unk_2B740);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v52 - v8;
  v10 = sub_385C(&qword_399F8, &qword_2B798);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v52 - v12);
  v14 = type metadata accessor for PatternStoreValue(0);
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v20 = *(v19 + 16);
  v52 = a3;
  if (v18 == v20)
  {
    v21 = sub_385C(&qword_399F0, &qword_2B790);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  }

  else
  {
    if (v18 >= v20)
    {
      __break(1u);
      swift_once();
      v35 = sub_2A804();
      sub_B884(v35, qword_3AB28);
      swift_errorRetain();
      v36 = sub_2A7E4();
      v37 = sub_2A9F4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v53 = v39;
        *v38 = 136315138;
        swift_getErrorValue();
        v40 = sub_2AD94();
        v42 = sub_1FA70(v40, v41, &v53);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_0, v36, v37, "Could not write a record to RECTIFI on-device Self Pattern storage %s", v38, 0xCu);
        sub_BA2C(v39);
      }

      else
      {
      }

      return a2 == 1;
    }

    v22 = v17;
    v23 = v14;
    v24 = sub_385C(&qword_399F0, &qword_2B790);
    v25 = a1;
    v26 = v9;
    v27 = *(v24 - 8);
    sub_BAC4(v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18, v13, &qword_399F0, &qword_2B790);
    *(a2 + 24) = v18 + 1;
    v28 = v24;
    v14 = v23;
    v17 = v22;
    (*(v27 + 56))(v13, 0, 1, v28);
    v9 = v26;
    a1 = v25;
  }

  v29 = sub_385C(&qword_399F0, &qword_2B790);
  LODWORD(a2) = (*(*(v29 - 8) + 48))(v13, 1, v29);
  if (a2 == 1)
  {
    sub_BB4C(v13, &qword_399F8, &qword_2B798);
  }

  else
  {
    v30 = *v13;
    sub_B720(v13 + *(v29 + 48), v17);
    type metadata accessor for RECTIFISelfPatternStore();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;
      v33 = *(v52 + qword_398B8);
      v53 = v30;
      v34 = a1;
      sub_385C(&qword_399C8, &qword_2B778);
      sub_B960(&qword_39A00, &qword_39A08);
      v43 = sub_29FB4();
      v45 = v44;

      isa = sub_29FF4().super.isa;
      sub_B684(v43, v45);
      [v32 setPattern:isa];

      [v32 setFrequency:*&v17[v14[5]]];
      v47 = sub_2A044().super.isa;
      [v32 setTimestamp:v47];

      sub_BAC4(&v17[v14[6]], v9, &qword_39918, &unk_2B740);
      v48 = sub_2A0E4();
      v49 = *(v48 - 8);
      v50 = 0;
      if ((*(v49 + 48))(v9, 1, v48) != 1)
      {
        v50 = sub_2A0B4().super.isa;
        (*(v49 + 8))(v9, v48);
      }

      [v32 setPlusId:{v50, v52}];

      [v32 setAppLevelAggregation:v17[v14[7]] & 1];
    }

    else
    {
    }

    sub_B904(v17);
  }

  return a2 == 1;
}

void sub_5BCC(uint64_t a1)
{
  v2 = v1;
  v69 = sub_385C(&qword_399E8, &qword_2C870);
  v4 = *(*(v69 - 8) + 64);
  v5 = __chkstk_darwin(v69);
  v68 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v67 = &v58 - v7;
  v66 = sub_385C(&qword_399F0, &qword_2B790);
  v70 = *(v66 - 8);
  v8 = *(v70 + 64);
  __chkstk_darwin(v66);
  v10 = &v58 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v59 = v1;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_20058(0, v11, 0);
    v12 = aBlock[0];
    v13 = a1 + 64;
    v14 = -1 << *(a1 + 32);
    v15 = sub_2AA84();
    v16 = 0;
    v17 = *(a1 + 36);
    v61 = a1 + 72;
    v62 = v11;
    v63 = v17;
    v64 = a1 + 64;
    v65 = a1;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_31;
      }

      if (v17 != *(a1 + 36))
      {
        goto LABEL_32;
      }

      v71 = v16;
      v72 = 1 << v15;
      v74 = v15 >> 6;
      v19 = v10;
      v20 = v69;
      v21 = *(v69 + 48);
      v22 = *(a1 + 48);
      v23 = *(a1 + 56);
      v24 = *(v22 + 8 * v15);
      v25 = type metadata accessor for PatternStoreValue(0);
      v26 = v67;
      sub_B7E8(v23 + *(*(v25 - 8) + 72) * v15, &v67[v21]);
      v27 = v12;
      v28 = v68;
      *v68 = v24;
      v29 = *(v20 + 48);
      v10 = v19;
      sub_B720(&v26[v21], v28 + v29);
      sub_B7E8(v28 + v29, &v19[*(v66 + 48)]);
      *v19 = v24;
      swift_bridgeObjectRetain_n();
      v30 = v28;
      v12 = v27;
      sub_BB4C(v30, &qword_399E8, &qword_2C870);
      aBlock[0] = v27;
      v32 = v27[2];
      v31 = v27[3];
      if (v32 >= v31 >> 1)
      {
        sub_20058(v31 > 1, v32 + 1, 1);
        v12 = aBlock[0];
      }

      v12[2] = v32 + 1;
      sub_BBAC(v19, v12 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v32, &qword_399F0, &qword_2B790);
      a1 = v65;
      v18 = 1 << *(v65 + 32);
      if (v15 >= v18)
      {
        goto LABEL_33;
      }

      v13 = v64;
      v33 = *(v64 + 8 * v74);
      if ((v33 & v72) == 0)
      {
        goto LABEL_34;
      }

      LODWORD(v17) = v63;
      if (v63 != *(v65 + 36))
      {
        goto LABEL_35;
      }

      v34 = v33 & (-2 << (v15 & 0x3F));
      if (v34)
      {
        v18 = __clz(__rbit64(v34)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v74 << 6;
        v36 = v74 + 1;
        v37 = (v61 + 8 * v74);
        while (v36 < (v18 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_B8F8(v15, v63, 0);
            v18 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        sub_B8F8(v15, v63, 0);
      }

LABEL_4:
      v16 = v71 + 1;
      v15 = v18;
      if (v71 + 1 == v62)
      {
        v2 = v59;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_27;
  }

LABEL_21:
  aBlock[0] = v12;

  sub_8C4C(aBlock);
  if (v2)
  {

    __break(1u);
    return;
  }

  v40 = aBlock[0];
  v41 = v60;
  if (aBlock[0][2] > 0xAuLL)
  {
    sub_21334(aBlock[0], aBlock[0] + ((*(v70 + 80) + 32) & ~*(v70 + 80)), 0, 0x15uLL);
    v43 = v42;

    v40 = v43;
  }

  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  *(v44 + 24) = 0;
  v45 = objc_opt_self();
  v46 = sub_2A854();
  v47 = sub_2A214();
  v48 = [v45 entityForName:v46 inManagedObjectContext:v47];

  if (v48)
  {
    v49 = swift_allocObject();
    v49[2] = v44;
    v49[3] = v41;
    v50 = objc_allocWithZone(NSBatchInsertRequest);
    aBlock[4] = sub_B8BC;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_6E40;
    aBlock[3] = &unk_35450;
    v51 = _Block_copy(aBlock);

    v52 = [v50 initWithEntity:v48 managedObjectHandler:v51];
    _Block_release(v51);

    v53 = sub_2A214();
    __chkstk_darwin(v53);
    *(&v58 - 2) = v41;
    *(&v58 - 1) = v52;
    sub_2AA24();

    return;
  }

  if (qword_39720 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v54 = sub_2A804();
  sub_B884(v54, qword_3AB28);
  v55 = sub_2A7E4();
  v56 = sub_2A9F4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "Could not write to RECTIFI on-device Infrequent Pattern storage", v57, 2u);
  }
}

BOOL sub_62E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_385C(&qword_399F8, &qword_2B798);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v45 - v8);
  v10 = type metadata accessor for PatternStoreValue(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(v15 + 16);
  if (v14 == v16)
  {
    v17 = sub_385C(&qword_399F0, &qword_2B790);
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  }

  else
  {
    if (v14 >= v16)
    {
      __break(1u);
      swift_once();
      v31 = sub_2A804();
      sub_B884(v31, qword_3AB28);
      swift_errorRetain();
      v32 = sub_2A7E4();
      v33 = sub_2A9F4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v46 = v35;
        *v34 = 136315138;
        swift_getErrorValue();
        v36 = sub_2AD94();
        v38 = sub_1FA70(v36, v37, &v46);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_0, v32, v33, "Could not write a record to RECTIFI on-device Infrequent Pattern storage %s", v34, 0xCu);
        sub_BA2C(v35);
      }

      else
      {
      }

      goto LABEL_13;
    }

    v18 = a1;
    v19 = sub_385C(&qword_399F0, &qword_2B790);
    v20 = a3;
    v21 = v10;
    v22 = v13;
    v23 = *(v19 - 8);
    sub_BAC4(v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v14, v9, &qword_399F0, &qword_2B790);
    *(a2 + 24) = v14 + 1;
    v24 = v19;
    a1 = v18;
    (*(v23 + 56))(v9, 0, 1, v24);
    v13 = v22;
    v10 = v21;
    a3 = v20;
  }

  v25 = sub_385C(&qword_399F0, &qword_2B790);
  LODWORD(a2) = (*(*(v25 - 8) + 48))(v9, 1, v25);
  if (a2 != 1)
  {
    v26 = *v9;
    sub_B720(v9 + *(v25 + 48), v13);
    type metadata accessor for RECTIFIInfrequentPatternStore();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *(a3 + qword_398B8);
      v46 = v26;
      v30 = a1;
      sub_385C(&qword_399C8, &qword_2B778);
      sub_B960(&qword_39A00, &qword_39A08);
      v39 = sub_29FB4();
      v41 = v40;

      isa = sub_29FF4().super.isa;
      sub_B684(v39, v41);
      [v28 setPattern:isa];

      [v28 setFrequency:*&v13[*(v10 + 20)]];
      v43 = sub_2A044().super.isa;
      [v28 setTimestamp:v43];
    }

    else
    {
    }

LABEL_13:
    sub_B904(v13);
    return a2 == 1;
  }

  sub_BB4C(v9, &qword_399F8, &qword_2B798);
  return a2 == 1;
}

id sub_683C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2A214();
  v11 = 0;
  v4 = [v3 executeRequest:a2 error:&v11];

  v5 = v11;
  if (v4)
  {
    v6 = v11;

    v7 = sub_2A214();
    v11 = 0;
    v8 = [v7 save:&v11];

    v5 = v11;
    if (v8)
    {
      return v11;
    }
  }

  v10 = v5;
  sub_29FE4();

  return swift_willThrow();
}

uint64_t sub_6970()
{
  v1 = *(v0 + qword_398B8);

  v2 = *(v0 + qword_398C0);
}

uint64_t sub_69B0()
{
  v0 = sub_2A224();
  v1 = *(v0 + qword_398B8);

  v2 = *(v0 + qword_398C0);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_6A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A0A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_385C(&qword_39918, &unk_2B740);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_6B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2A0A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_385C(&qword_39918, &unk_2B740);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_6CBC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6CF4()
{
  sub_2A0A4();
  if (v0 <= 0x3F)
  {
    sub_6D98();
    if (v1 <= 0x3F)
    {
      sub_6DF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6D98()
{
  if (!qword_39988)
  {
    sub_2A0E4();
    v0 = sub_2AA54();
    if (!v1)
    {
      atomic_store(v0, &qword_39988);
    }
  }
}

void sub_6DF0()
{
  if (!qword_39990)
  {
    v0 = sub_2AA54();
    if (!v1)
    {
      atomic_store(v0, &qword_39990);
    }
  }
}

uint64_t sub_6E40(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_6E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2AD54() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_6F28(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_141;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_2AC34())
  {
    if (a2 >> 62)
    {
      if (i != sub_2AC34())
      {
        return 0;
      }
    }

    else if (i != *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v8 = a2;
    }

    if (a2 >> 62)
    {
      v9 = v8;
    }

    if (v7 == v9)
    {
      return 1;
    }

    if (i < 0)
    {
      goto LABEL_148;
    }

    if (((a2 | a1) & 0xC000000000000001) == 0)
    {
      break;
    }

    v40 = a2 & 0xC000000000000001;
    v10 = 4;
    while (2)
    {
      v12 = v10 - 4;
      v13 = v10 - 3;
      if (!__OFADD__(v10 - 4, 1))
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = sub_2AB64();
          if (v40)
          {
            goto LABEL_23;
          }

LABEL_26:
          if (v12 < *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
          {
            v14 = *(a2 + 8 * v10);

            goto LABEL_28;
          }

LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          JUMPOUT(0x78F0);
        }

        if (v12 < *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          v4 = *(a1 + 8 * v10);

          if (!v40)
          {
            goto LABEL_26;
          }

LABEL_23:
          v14 = sub_2AB64();
LABEL_28:
          v15 = *(v4 + 24) == *(v14 + 24) && *(v4 + 32) == *(v14 + 32);
          if (v15 || (sub_2AD54()) && *(v4 + 40) == *(v14 + 40))
          {
            v16 = *(v14 + 41);
            v17 = 0xE300000000000000;
            v18 = 5395265;
            switch(*(v4 + 41))
            {
              case 1:
                v18 = 5786702;
                break;
              case 2:
                v18 = 4801877;
                break;
              case 3:
                v17 = 0xE800000000000000;
                v18 = 0x505041454E4F4850;
                break;
              case 4:
                v18 = 0x414547415353454DLL;
                v17 = 0xEA00000000005050;
                break;
              case 5:
                v18 = 0x5245444E494D4552;
                v19 = 1096041811;
                goto LABEL_45;
              case 6:
                v18 = 0xD000000000000017;
                v17 = 0x800000000002C990;
                break;
              case 7:
                v18 = 0x4552434D52414C41;
                goto LABEL_43;
              case 8:
                v17 = 0xEE00505041454C47;
                v18 = 0x474F544D52414C41;
                break;
              case 9:
                v18 = 0x4450554D52414C41;
LABEL_43:
                v19 = 1095062593;
LABEL_45:
                v17 = v19 | 0xEE00505000000000;
                break;
              case 0xA:
                v18 = 0x4145524345544F4ELL;
                goto LABEL_49;
              case 0xB:
                v18 = 0x454C454445544F4ELL;
LABEL_49:
                v17 = 0xED00005050414554;
                break;
              case 0xC:
                v18 = 0x5041594D444E4946;
                v17 = 0xE900000000000050;
                break;
              case 0xD:
                v17 = 0xE700000000000000;
                v18 = 0x4E574F4E4B4E55;
                break;
              default:
                break;
            }

            v20 = 0xE300000000000000;
            v21 = 5395265;
            switch(*(v14 + 41))
            {
              case 1:
                if (v18 != 5786702)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 2:
                if (v18 != 4801877)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 3:
                v20 = 0xE800000000000000;
                if (v18 != 0x505041454E4F4850)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 4:
                v20 = 0xEA00000000005050;
                if (v18 != 0x414547415353454DLL)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 5:
                v22 = 0x5245444E494D4552;
                v23 = 1096041811;
                goto LABEL_68;
              case 6:
                v20 = 0x800000000002C990;
                if (v18 != 0xD000000000000017)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 7:
                v22 = 0x4552434D52414C41;
                goto LABEL_66;
              case 8:
                v20 = 0xEE00505041454C47;
                if (v18 != 0x474F544D52414C41)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 9:
                v22 = 0x4450554D52414C41;
LABEL_66:
                v23 = 1095062593;
LABEL_68:
                v20 = v23 | 0xEE00505000000000;
                if (v18 != v22)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 0xA:
                v21 = 0x4145524345544F4ELL;
                v20 = 0xED00005050414554;
                goto LABEL_75;
              case 0xB:
                v20 = 0xED00005050414554;
                if (v18 != 0x454C454445544F4ELL)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 0xC:
                v20 = 0xE900000000000050;
                if (v18 != 0x5041594D444E4946)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 0xD:
                v20 = 0xE700000000000000;
                if (v18 != 0x4E574F4E4B4E55)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              default:
LABEL_75:
                if (v18 != v21)
                {
                  goto LABEL_18;
                }

LABEL_76:
                if (v17 == v20)
                {
                }

                else
                {
LABEL_18:
                  v11 = sub_2AD54();

                  if ((v11 & 1) == 0)
                  {
                    return 0;
                  }
                }

                ++v10;
                if (v13 != i)
                {
                  continue;
                }

                return 1;
            }
          }

          return 0;
        }

LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      break;
    }

    __break(1u);
LABEL_141:
    ;
  }

  v25 = a1 + 32;
  v26 = a2 + 32;
  v27 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  v28 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  while (2)
  {
    if (!v27)
    {
      __break(1u);
      goto LABEL_145;
    }

    if (!v28)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v30 = *v25;
    v31 = *v26;
    v32 = *(*v25 + 24) == *(*v26 + 24) && *(*v25 + 32) == *(*v26 + 32);
    if (v32 || (sub_2AD54()) && *(v30 + 40) == *(v31 + 40))
    {
      v33 = *(v30 + 41);
      v34 = *(v31 + 41);
      v35 = 0xE300000000000000;
      v36 = 5395265;
      switch(v33)
      {
        case 1:
          v36 = 5786702;
          break;
        case 2:
          v36 = 4801877;
          break;
        case 3:
          v35 = 0xE800000000000000;
          v36 = 0x505041454E4F4850;
          break;
        case 4:
          v36 = 0x414547415353454DLL;
          v35 = 0xEA00000000005050;
          break;
        case 5:
          v36 = 0x5245444E494D4552;
          v35 = 0xEE00505041544553;
          break;
        case 6:
          v36 = 0xD000000000000017;
          v35 = 0x800000000002C990;
          break;
        case 7:
          v36 = 0x4552434D52414C41;
          goto LABEL_101;
        case 8:
          v35 = 0xEE00505041454C47;
          v36 = 0x474F544D52414C41;
          break;
        case 9:
          v36 = 0x4450554D52414C41;
LABEL_101:
          v35 = 0xEE00505041455441;
          break;
        case 10:
          v36 = 0x4145524345544F4ELL;
          goto LABEL_106;
        case 11:
          v36 = 0x454C454445544F4ELL;
LABEL_106:
          v35 = 0xED00005050414554;
          break;
        case 12:
          v36 = 0x5041594D444E4946;
          v35 = 0xE900000000000050;
          break;
        case 13:
          v35 = 0xE700000000000000;
          v36 = 0x4E574F4E4B4E55;
          break;
        default:
          break;
      }

      v37 = 0xE300000000000000;
      v38 = 5395265;
      switch(v34)
      {
        case 1:
          if (v36 != 5786702)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 2:
          if (v36 != 4801877)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 3:
          v37 = 0xE800000000000000;
          if (v36 != 0x505041454E4F4850)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 4:
          v37 = 0xEA00000000005050;
          if (v36 != 0x414547415353454DLL)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 5:
          v37 = 0xEE00505041544553;
          if (v36 != 0x5245444E494D4552)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 6:
          v37 = 0x800000000002C990;
          if (v36 != 0xD000000000000017)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 7:
          v39 = 0x4552434D52414C41;
          goto LABEL_122;
        case 8:
          v37 = 0xEE00505041454C47;
          if (v36 != 0x474F544D52414C41)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 9:
          v39 = 0x4450554D52414C41;
LABEL_122:
          v37 = 0xEE00505041455441;
          if (v36 != v39)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 10:
          v38 = 0x4145524345544F4ELL;
          goto LABEL_131;
        case 11:
          v38 = 0x454C454445544F4ELL;
LABEL_131:
          v37 = 0xED00005050414554;
          goto LABEL_132;
        case 12:
          v37 = 0xE900000000000050;
          if (v36 != 0x5041594D444E4946)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 13:
          v37 = 0xE700000000000000;
          if (v36 != 0x4E574F4E4B4E55)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        default:
LABEL_132:
          if (v36 != v38)
          {
            goto LABEL_82;
          }

LABEL_133:
          if (v35 == v37)
          {
          }

          else
          {
LABEL_82:
            v29 = sub_2AD54();

            if ((v29 & 1) == 0)
            {
              return 0;
            }
          }

          --v28;
          --v27;
          v25 += 8;
          v26 += 8;
          result = 1;
          if (--i)
          {
            continue;
          }

          return result;
      }
    }

    return 0;
  }
}

unint64_t sub_79D0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2ADA4();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);

  sub_2A8B4();

  sub_2ADB4(*(a1 + 40));
  sub_1A884(*(a1 + 41));
  sub_2A8B4();

  v6 = sub_2ADC4();

  return sub_8344(a1, v6);
}

unint64_t sub_7A88(unint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2ADA4();
  sub_A620(v6, a1);
  v4 = sub_2ADC4();

  return sub_881C(a1, v4);
}

uint64_t sub_7AF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_385C(&qword_39A10, &qword_2B7A0);
  v38 = a2;
  v7 = sub_2AC64();
  v8 = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_35;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v7 + 64;
  while (v13)
  {
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_18:
    v24 = v21 | (v9 << 6);
    v25 = *(*(v5 + 48) + 8 * v24);
    v26 = *(*(v5 + 56) + 8 * v24);
    if ((v38 & 1) == 0)
    {
    }

    v27 = *(v8 + 40);
    sub_2ADA4();
    v28 = *(v25 + 24);
    v29 = *(v25 + 32);

    sub_2A8B4();

    sub_2ADB4(*(v25 + 40));
    *(v25 + 41);
    sub_2A8B4();

    v16 = sub_2ADC4();
    v17 = -1 << *(v8 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v15 + 8 * (v18 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v18) & ~*(v15 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = 0;
      v31 = (63 - v17) >> 6;
      do
      {
        if (++v19 == v31 && (v30 & 1) != 0)
        {
          goto LABEL_38;
        }

        v32 = v19 == v31;
        if (v19 == v31)
        {
          v19 = 0;
        }

        v30 |= v32;
        v33 = *(v15 + 8 * v19);
      }

      while (v33 == -1);
      v20 = __clz(__rbit64(~v33)) + (v19 << 6);
    }

    *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v8 + 48) + 8 * v20) = v25;
    *(*(v8 + 56) + 8 * v20) = v26;
    ++*(v8 + 16);
    v5 = v37;
  }

  v22 = v9;
  while (1)
  {
    v9 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      JUMPOUT(0x7F4CLL);
    }

    if (v9 >= v14)
    {
      break;
    }

    v23 = v10[v9];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v13 = (v23 - 1) & v23;
      goto LABEL_18;
    }
  }

  if (v38)
  {
    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
LABEL_35:

    goto LABEL_36;
  }

  v3 = v36;
LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_7F84(uint64_t a1, int a2)
{
  v3 = v2;
  v38 = *(type metadata accessor for PatternStoreValue(0) - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin();
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v9 = *(*v3 + 24);
  }

  sub_385C(&qword_399E0, &unk_2B780);
  v39 = a2;
  result = sub_2AC64();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v38 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v39)
      {
        sub_B720(v26, v40);
      }

      else
      {
        sub_B7E8(v26, v40);
      }

      v27 = *(v11 + 40);
      sub_2ADA4();
      sub_A620(v41, v24);
      result = sub_2ADC4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      result = sub_B720(v40, *(v11 + 56) + v25 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t sub_82B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for PatternStoreValue(0);
  result = sub_B720(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_8344(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v8 = *(*(v2 + 48) + 8 * v4);
      v9 = *(v8 + 24) == *(a1 + 24) && *(v8 + 32) == *(a1 + 32);
      if (v9 || (sub_2AD54()) && *(v8 + 40) == *(a1 + 40))
      {
        v10 = *(v8 + 41);
        v11 = 0xE300000000000000;
        v12 = 5395265;
        switch(v10)
        {
          case 1:
            v12 = 5786702;
            break;
          case 2:
            v12 = 4801877;
            break;
          case 3:
            v11 = 0xE800000000000000;
            v12 = 0x505041454E4F4850;
            break;
          case 4:
            v11 = 0xEA00000000005050;
            v12 = 0x414547415353454DLL;
            break;
          case 5:
            v12 = 0x5245444E494D4552;
            v11 = 0xEE00505041544553;
            break;
          case 6:
            v12 = 0xD000000000000017;
            v11 = 0x800000000002C990;
            break;
          case 7:
            v12 = 0x4552434D52414C41;
            v11 = 0xEE00505041455441;
            break;
          case 8:
            v11 = 0xEE00505041454C47;
            v12 = 0x474F544D52414C41;
            break;
          case 9:
            v12 = 0x4450554D52414C41;
            v11 = 0xEE00505041455441;
            break;
          case 10:
            v12 = 0x4145524345544F4ELL;
            goto LABEL_24;
          case 11:
            v12 = 0x454C454445544F4ELL;
LABEL_24:
            v11 = 0xED00005050414554;
            break;
          case 12:
            v11 = 0xE900000000000050;
            v12 = 0x5041594D444E4946;
            break;
          case 13:
            v11 = 0xE700000000000000;
            v12 = 0x4E574F4E4B4E55;
            break;
          default:
            break;
        }

        v13 = 0xE300000000000000;
        v14 = 5395265;
        switch(*(a1 + 41))
        {
          case 1:
            if (v12 == 5786702)
            {
              goto LABEL_51;
            }

            goto LABEL_3;
          case 2:
            if (v12 != 4801877)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 3:
            v13 = 0xE800000000000000;
            if (v12 != 0x505041454E4F4850)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 4:
            v13 = 0xEA00000000005050;
            if (v12 != 0x414547415353454DLL)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 5:
            v13 = 0xEE00505041544553;
            if (v12 != 0x5245444E494D4552)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 6:
            v13 = 0x800000000002C990;
            if (v12 != 0xD000000000000017)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 7:
            v15 = 0x4552434D52414C41;
            goto LABEL_41;
          case 8:
            v13 = 0xEE00505041454C47;
            if (v12 != 0x474F544D52414C41)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 9:
            v15 = 0x4450554D52414C41;
LABEL_41:
            v13 = 0xEE00505041455441;
            if (v12 != v15)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 0xA:
            v14 = 0x4145524345544F4ELL;
            v13 = 0xED00005050414554;
            goto LABEL_50;
          case 0xB:
            v13 = 0xED00005050414554;
            if (v12 != 0x454C454445544F4ELL)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 0xC:
            v13 = 0xE900000000000050;
            if (v12 != 0x5041594D444E4946)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 0xD:
            v13 = 0xE700000000000000;
            if (v12 != 0x4E574F4E4B4E55)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          default:
LABEL_50:
            if (v12 != v14)
            {
              goto LABEL_3;
            }

LABEL_51:
            if (v11 == v13)
            {

              return v4;
            }

LABEL_3:
            v7 = sub_2AD54();

            if (v7)
            {
              return v4;
            }

            break;
        }
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_881C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);

      v9 = sub_6F28(v8, a1);

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_88D4()
{
  v1 = v0;
  sub_385C(&qword_39A10, &qword_2B7A0);
  v2 = *v0;
  v3 = sub_2AC54();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_8A38()
{
  v1 = v0;
  v24 = *(type metadata accessor for PatternStoreValue(0) - 8);
  v2 = *(v24 + 64);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_385C(&qword_399E0, &unk_2B780);
  v5 = *v0;
  v6 = sub_2AC54();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_B7E8(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_B720(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

Swift::Int sub_8C4C(void **a1)
{
  v2 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_17664(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_8D00(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_8D00(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2AD34(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_385C(&qword_399F0, &qword_2B790);
        v6 = sub_2A934();
        v6[2] = v5;
      }

      v7 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_9170(v8, v9, a1, v4);
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
    return sub_8E44(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_8E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_385C(&qword_399F0, &qword_2B790);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v51 = (&v38 - v13);
  v14 = __chkstk_darwin(v12);
  v50 = (&v38 - v15);
  v16 = __chkstk_darwin(v14);
  v49 = &v38 - v17;
  result = __chkstk_darwin(v16);
  v48 = &v38 - v20;
  v40 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v45 = -v22;
    v46 = v21;
    v24 = a1 - a3;
    v39 = v22;
    v25 = v21 + v22 * a3;
LABEL_5:
    v43 = v23;
    v44 = a3;
    v41 = v25;
    v42 = v24;
    v52 = v24;
    while (1)
    {
      v26 = v48;
      sub_BAC4(v25, v48, &qword_399F0, &qword_2B790);
      v27 = v49;
      sub_BAC4(v23, v49, &qword_399F0, &qword_2B790);
      v28 = v50;
      sub_BAC4(v26, v50, &qword_399F0, &qword_2B790);
      v29 = *v28;

      v30 = v28 + *(v8 + 48);
      v31 = type metadata accessor for PatternStoreValue(0);
      v53 = *(v30 + *(v31 + 20));
      sub_B904(v30);
      v32 = v51;
      sub_BAC4(v27, v51, &qword_399F0, &qword_2B790);
      v33 = *v32;

      v34 = v32 + *(v8 + 48);
      v35 = *(v34 + *(v31 + 20));
      sub_B904(v34);
      sub_BB4C(v27, &qword_399F0, &qword_2B790);
      result = sub_BB4C(v26, &qword_399F0, &qword_2B790);
      if (v35 >= v53)
      {
LABEL_4:
        a3 = v44 + 1;
        v23 = v43 + v39;
        v24 = v42 - 1;
        v25 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v36 = v47;
      sub_BBAC(v25, v47, &qword_399F0, &qword_2B790);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_BBAC(v36, v23, &qword_399F0, &qword_2B790);
      v23 += v45;
      v25 += v45;
      if (__CFADD__(v52++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_9170(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v141 = a1;
  v159 = sub_385C(&qword_399F0, &qword_2B790);
  v149 = *(v159 - 8);
  v8 = *(v149 + 64);
  v9 = __chkstk_darwin(v159);
  v145 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v154 = &v137 - v12;
  v13 = __chkstk_darwin(v11);
  v157 = (&v137 - v14);
  v15 = __chkstk_darwin(v13);
  v156 = (&v137 - v16);
  v17 = __chkstk_darwin(v15);
  v155 = &v137 - v18;
  result = __chkstk_darwin(v17);
  v158 = &v137 - v20;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_98:
    v24 = *v141;
    if (!*v141)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_169D0(v23);
      v23 = result;
    }

    v160 = v23;
    v132 = *(v23 + 2);
    if (v132 >= 2)
    {
      while (*a3)
      {
        v133 = v23;
        v23 = (v132 - 1);
        v134 = *&v133[16 * v132];
        v135 = *&v133[16 * v132 + 24];
        sub_9CA8(*a3 + *(v149 + 72) * v134, *a3 + *(v149 + 72) * *&v133[16 * v132 + 16], *a3 + *(v149 + 72) * v135, v24);
        if (v5)
        {
        }

        if (v135 < v134)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_169D0(v133);
        }

        if (v132 - 2 >= *(v133 + 2))
        {
          goto LABEL_124;
        }

        v136 = &v133[16 * v132];
        *v136 = v134;
        *(v136 + 1) = v135;
        v160 = v133;
        result = sub_16944(v23);
        v23 = v160;
        v132 = *(v160 + 2);
        if (v132 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v138 = a4;
  v22 = 0;
  v23 = _swiftEmptyArrayStorage;
  v24 = &qword_399F0;
  v143 = a3;
  while (1)
  {
    if (v22 + 1 >= v21)
    {
      v52 = v22 + 1;
    }

    else
    {
      v151 = v21;
      v139 = v23;
      v140 = v5;
      v153 = *a3;
      v25 = v153;
      v26 = *(v149 + 72);
      v27 = v153 + v26 * (v22 + 1);
      v28 = v158;
      sub_BAC4(v27, v158, &qword_399F0, &qword_2B790);
      v29 = v25 + v26 * v22;
      v23 = v155;
      sub_BAC4(v29, v155, &qword_399F0, &qword_2B790);
      v30 = v156;
      sub_BAC4(v28, v156, &qword_399F0, &qword_2B790);
      v31 = *v30;

      v32 = v159;
      v33 = *(v159 + 48);
      v142 = v22;
      v34 = v30 + v33;
      v24 = &qword_399F0;
      v5 = type metadata accessor for PatternStoreValue(0);
      v148 = *(v34 + *(v5 + 20));
      sub_B904(v34);
      v35 = v157;
      sub_BAC4(v23, v157, &qword_399F0, &qword_2B790);
      v36 = *v35;

      v37 = v35 + *(v32 + 48);
      v38 = *(v37 + *(v5 + 20));
      v146 = v5;
      v147 = v38;
      sub_B904(v37);
      sub_BB4C(v23, &qword_399F0, &qword_2B790);
      result = sub_BB4C(v158, &qword_399F0, &qword_2B790);
      v39 = v142 + 2;
      v150 = v26;
      v40 = v153 + v26 * (v142 + 2);
      while (v151 != v39)
      {
        LODWORD(v153) = v147 < v148;
        v41 = v158;
        sub_BAC4(v40, v158, &qword_399F0, &qword_2B790);
        v42 = v155;
        sub_BAC4(v27, v155, &qword_399F0, &qword_2B790);
        v43 = v156;
        sub_BAC4(v41, v156, &qword_399F0, &qword_2B790);
        v44 = *v43;

        v45 = v159;
        v46 = v43 + *(v159 + 48);
        v24 = &qword_399F0;
        v5 = v27;
        v47 = v146;
        v152 = *(v46 + *(v146 + 20));
        sub_B904(v46);
        v48 = v157;
        sub_BAC4(v42, v157, &qword_399F0, &qword_2B790);
        v49 = *v48;

        v50 = v48 + *(v45 + 48);
        v51 = *(v50 + *(v47 + 20));
        sub_B904(v50);
        v23 = &qword_2B790;
        sub_BB4C(v42, &qword_399F0, &qword_2B790);
        result = sub_BB4C(v41, &qword_399F0, &qword_2B790);
        ++v39;
        v40 += v150;
        v27 = v5 + v150;
        if (((v153 ^ (v51 >= v152)) & 1) == 0)
        {
          v52 = v39 - 1;
          goto LABEL_11;
        }
      }

      v52 = v151;
LABEL_11:
      v22 = v142;
      if (v147 >= v148)
      {
        v23 = v139;
        v5 = v140;
        a3 = v143;
      }

      else
      {
        a3 = v143;
        if (v52 < v142)
        {
          goto LABEL_127;
        }

        if (v142 >= v52)
        {
          v23 = v139;
          v5 = v140;
        }

        else
        {
          v53 = v52;
          v54 = v150 * (v52 - 1);
          v55 = v52 * v150;
          v151 = v52;
          v56 = v142;
          v57 = v142 * v150;
          do
          {
            if (v56 != --v53)
            {
              v58 = *v143;
              if (!*v143)
              {
                goto LABEL_133;
              }

              sub_BBAC(v58 + v57, v145, &qword_399F0, &qword_2B790);
              if (v57 < v54 || v58 + v57 >= (v58 + v55))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_BBAC(v145, v58 + v54, &qword_399F0, &qword_2B790);
            }

            ++v56;
            v54 -= v150;
            v55 -= v150;
            v57 += v150;
          }

          while (v56 < v53);
          v23 = v139;
          v5 = v140;
          v22 = v142;
          a3 = v143;
          v52 = v151;
        }
      }
    }

    v59 = a3[1];
    if (v52 < v59)
    {
      if (__OFSUB__(v52, v22))
      {
        goto LABEL_126;
      }

      if (v52 - v22 < v138)
      {
        if (__OFADD__(v22, v138))
        {
          goto LABEL_128;
        }

        if (v22 + v138 >= v59)
        {
          v60 = a3[1];
        }

        else
        {
          v60 = v22 + v138;
        }

        if (v60 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v52 != v60)
        {
          break;
        }
      }
    }

    v61 = v52;
    if (v52 < v22)
    {
      goto LABEL_125;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    v146 = v61;
    if ((result & 1) == 0)
    {
      result = sub_1F0B4(0, *(v23 + 2) + 1, 1, v23);
      v23 = result;
    }

    v63 = *(v23 + 2);
    v62 = *(v23 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      result = sub_1F0B4((v62 > 1), v63 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v64;
    v65 = &v23[16 * v63];
    v66 = v146;
    *(v65 + 4) = v22;
    *(v65 + 5) = v66;
    if (!*v141)
    {
      goto LABEL_135;
    }

    if (v63)
    {
      v67 = *v141;
      while (1)
      {
        v68 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v69 = *(v23 + 4);
          v70 = *(v23 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_57:
          if (v72)
          {
            goto LABEL_114;
          }

          v85 = &v23[16 * v64];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_117;
          }

          v91 = &v23[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_121;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v64 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v95 = &v23[16 * v64];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_71:
        if (v90)
        {
          goto LABEL_116;
        }

        v98 = &v23[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_119;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_78:
        v106 = v68 - 1;
        if (v68 - 1 >= v64)
        {
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
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v107 = *&v23[16 * v106 + 32];
        v108 = *&v23[16 * v68 + 40];
        sub_9CA8(*a3 + *(v149 + 72) * v107, *a3 + *(v149 + 72) * *&v23[16 * v68 + 32], *a3 + *(v149 + 72) * v108, v67);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_169D0(v23);
        }

        if (v106 >= *(v23 + 2))
        {
          goto LABEL_111;
        }

        v109 = &v23[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v160 = v23;
        result = sub_16944(v68);
        v23 = v160;
        v64 = *(v160 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v23[16 * v64 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_112;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_113;
      }

      v80 = &v23[16 * v64];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_115;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_118;
      }

      if (v84 >= v76)
      {
        v102 = &v23[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_122;
        }

        if (v71 < v105)
        {
          v68 = v64 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v21 = a3[1];
    v22 = v146;
    if (v146 >= v21)
    {
      goto LABEL_98;
    }
  }

  v139 = v23;
  v140 = v5;
  v110 = *a3;
  v111 = *(v149 + 72);
  v112 = *a3 + v111 * (v52 - 1);
  v152 = -v111;
  v153 = v110;
  v142 = v22;
  v113 = v22 - v52;
  v144 = v111;
  v114 = v110 + v52 * v111;
  v115 = v159;
  v146 = v60;
LABEL_89:
  v150 = v112;
  v151 = v52;
  v147 = v114;
  v148 = v113;
  v116 = v114;
  v117 = v112;
  while (1)
  {
    v118 = v158;
    sub_BAC4(v116, v158, &qword_399F0, &qword_2B790);
    v119 = v155;
    sub_BAC4(v117, v155, &qword_399F0, &qword_2B790);
    v120 = v156;
    sub_BAC4(v118, v156, &qword_399F0, &qword_2B790);
    v121 = *v120;

    v122 = v120 + *(v115 + 48);
    v123 = type metadata accessor for PatternStoreValue(0);
    v124 = *&v122[*(v123 + 20)];
    v125 = v122;
    v115 = v159;
    sub_B904(v125);
    v126 = v157;
    sub_BAC4(v119, v157, &qword_399F0, &qword_2B790);
    v127 = *v126;

    v128 = v126 + *(v115 + 48);
    v24 = &qword_399F0;
    v129 = *(v128 + *(v123 + 20));
    sub_B904(v128);
    sub_BB4C(v119, &qword_399F0, &qword_2B790);
    result = sub_BB4C(v118, &qword_399F0, &qword_2B790);
    if (v129 >= v124)
    {
LABEL_88:
      v52 = v151 + 1;
      v112 = v150 + v144;
      v113 = v148 - 1;
      v114 = v147 + v144;
      v61 = v146;
      if (v151 + 1 != v146)
      {
        goto LABEL_89;
      }

      v23 = v139;
      v5 = v140;
      v22 = v142;
      a3 = v143;
      if (v146 < v142)
      {
        goto LABEL_125;
      }

      goto LABEL_37;
    }

    if (!v153)
    {
      break;
    }

    v130 = v154;
    sub_BBAC(v116, v154, &qword_399F0, &qword_2B790);
    swift_arrayInitWithTakeFrontToBack();
    sub_BBAC(v130, v117, &qword_399F0, &qword_2B790);
    v117 += v152;
    v116 += v152;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_88;
    }
  }

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
  return result;
}

uint64_t sub_9CA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v71 = sub_385C(&qword_399F0, &qword_2B790);
  v8 = *(*(v71 - 8) + 64);
  v9 = __chkstk_darwin(v71);
  v66 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v65 = (&v57 - v12);
  v13 = __chkstk_darwin(v11);
  v64 = &v57 - v14;
  result = __chkstk_darwin(v13);
  v68 = &v57 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_58;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_59;
  }

  v20 = (a2 - a1) / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a4;
    v40 = a4 + v22;
    if (v22 >= 1)
    {
      v41 = -v18;
      v42 = v40;
      v69 = a1;
      v60 = -v18;
      v43 = v64;
      do
      {
        v58 = v40;
        v44 = a2 + v41;
        v70 = a2 + v41;
        v62 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v74 = a2;
            v72 = v58;
            goto LABEL_56;
          }

          v59 = v40;
          v67 = a3 + v41;
          v45 = v42 + v41;
          v46 = v68;
          v63 = a3;
          sub_BAC4(v42 + v41, v68, &qword_399F0, &qword_2B790);
          v47 = v71;
          sub_BAC4(v44, v43, &qword_399F0, &qword_2B790);
          v48 = v65;
          sub_BAC4(v46, v65, &qword_399F0, &qword_2B790);
          v49 = *v48;

          v50 = v48 + *(v47 + 48);
          v51 = type metadata accessor for PatternStoreValue(0);
          v52 = *(v50 + *(v51 + 20));
          sub_B904(v50);
          v53 = v66;
          sub_BAC4(v43, v66, &qword_399F0, &qword_2B790);
          v54 = *v53;

          v55 = v53 + *(v47 + 48);
          v56 = *(v55 + *(v51 + 20));
          sub_B904(v55);
          sub_BB4C(v43, &qword_399F0, &qword_2B790);
          sub_BB4C(v68, &qword_399F0, &qword_2B790);
          if (v56 < v52)
          {
            break;
          }

          v40 = v42 + v41;
          a3 = v67;
          if (v63 < v42 || v67 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v69;
            v44 = v70;
            v41 = v60;
          }

          else
          {
            a1 = v69;
            v44 = v70;
            v41 = v60;
            if (v63 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v42 = v45;
          a2 = v62;
          if (v45 <= v61)
          {
            goto LABEL_54;
          }
        }

        a3 = v67;
        if (v63 < v62 || v67 >= v62)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v69;
          v40 = v59;
          v41 = v60;
        }

        else
        {
          a1 = v69;
          a2 = v70;
          v40 = v59;
          v41 = v60;
          if (v63 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v42 > v61);
    }

LABEL_54:
    v74 = a2;
    v72 = v40;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v21;
    v72 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v67 = a3;
      v62 = v18;
      do
      {
        v69 = a1;
        v70 = a2;
        v24 = a2;
        v25 = v68;
        sub_BAC4(v24, v68, &qword_399F0, &qword_2B790);
        v26 = v64;
        sub_BAC4(a4, v64, &qword_399F0, &qword_2B790);
        v27 = v65;
        sub_BAC4(v25, v65, &qword_399F0, &qword_2B790);
        v28 = *v27;

        v29 = v71;
        v30 = v27 + *(v71 + 48);
        v31 = a4;
        v32 = type metadata accessor for PatternStoreValue(0);
        v33 = *(v30 + *(v32 + 20));
        sub_B904(v30);
        v34 = v66;
        sub_BAC4(v26, v66, &qword_399F0, &qword_2B790);
        v35 = *v34;

        v36 = v34 + *(v29 + 48);
        v37 = *(v36 + *(v32 + 20));
        sub_B904(v36);
        sub_BB4C(v26, &qword_399F0, &qword_2B790);
        sub_BB4C(v25, &qword_399F0, &qword_2B790);
        if (v37 >= v33)
        {
          v39 = v69;
          a2 = v70;
          v38 = v62;
          a4 = v31 + v62;
          if (v69 < v31 || v69 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v69 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v73 = a4;
        }

        else
        {
          v38 = v62;
          v39 = v69;
          a2 = v70 + v62;
          a4 = v31;
          if (v69 < v70 || v69 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v69 != v70)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v39 + v38;
        v74 = a1;
      }

      while (a4 < v63 && a2 < v67);
    }
  }

LABEL_56:
  sub_A2EC(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_A2EC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_385C(&qword_399F0, &qword_2B790);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_A3DC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PatternStoreValue(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_A4C0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_7A88(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_8A38();
      goto LABEL_7;
    }

    sub_7F84(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_7A88(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_385C(&qword_399C8, &qword_2B778);
    result = sub_2AD84();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for PatternStoreValue(0) - 8) + 72) * v10;

    return sub_B784(a1, v18);
  }

LABEL_13:
  sub_82B0(v10, a2, a1, v16);
}

void sub_A620(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v12 = sub_2AC34();
    sub_2ADB4(v12);
    v3 = sub_2AC34();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    sub_2ADB4(*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)));
    v3 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    JUMPOUT(0xAA78);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      v5 = sub_2AB64();
      v6 = *(v5 + 24);
      v7 = *(v5 + 32);

      sub_2A8B4();

      sub_2ADB4(*(v5 + 40));
      *(v5 + 41);
      ++v4;
      sub_2A8B4();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
  }

  else
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8;
      v10 = *(*v8 + 24);
      v11 = *(*v8 + 32);

      sub_2A8B4();

      sub_2ADB4(*(v9 + 40));
      *(v9 + 41);
      sub_2A8B4();

      ++v8;
      --v3;
    }

    while (v3);
  }
}

void sub_AAE8(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v60 = a3;
  v62 = a2;
  v4 = (*(*(sub_385C(&qword_39918, &unk_2B740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v6 = &v50 - v5;
  v59 = type metadata accessor for PatternStoreValue(0);
  v7 = *(*(v59 - 8) + 64);
  v8 = (__chkstk_darwin)();
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v50 - v10;
  v11 = sub_2A0A4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v69 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v61 = &v50 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v50 - v19;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; v18 = v49)
  {
    v54 = v6;
    v22 = v20;
    v20 = 0;
    v56 = qword_398C0;
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v72 = a1 & 0xC000000000000001;
    v67 = v18;
    v68 = (v12 + 4);
    v50 = (v12 + 2);
    v55 = (v12 + 1);
    v23 = v22;
    v52 = v22;
    v53 = a1;
    v51 = i;
    while (1)
    {
      if (v72)
      {
        v18 = sub_2AB64();
      }

      else
      {
        if (v20 >= *(v71 + 16))
        {
          goto LABEL_20;
        }

        v18 = *(a1 + 8 * v20 + 32);
      }

      v24 = v18;
      v6 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v25 = [v18 pattern];
      if (v25)
      {
        v12 = v25;
        v26 = sub_2A004();
        v28 = v27;

        v29 = [v24 timestamp];
        if (v29)
        {
          v30 = v61;
          v31 = v29;
          sub_2A074();

          v32 = v26;
          v33 = v67;
          v64 = *v68;
          v64(v23, v30, v67);
          v34 = *(v62 + v56);
          sub_385C(&qword_399C8, &qword_2B778);
          sub_B960(&qword_399D0, &qword_399D8);
          v65 = v32;
          v66 = v28;
          v35 = v70;
          sub_29F84();
          if (v35)
          {
            (*v55)(v23, v33);
            sub_B684(v65, v66);

            return;
          }

          v70 = 0;
          v63 = v73;
          (*v50)(v69, v23, v33);
          v36 = [v24 frequency];
          v37 = [v24 plusId];
          if (v37)
          {
            v38 = v54;
            v39 = v37;
            sub_2A0C4();

            v40 = 0;
          }

          else
          {
            v40 = 1;
            v38 = v54;
          }

          v41 = sub_2A0E4();
          (*(*(v41 - 8) + 56))(v38, v40, 1, v41);
          v42 = [v24 appLevelAggregation];
          v43 = v57;
          v64(v57, v69, v67);
          v44 = v59;
          *(v43 + *(v59 + 20)) = v36;
          sub_BBAC(v38, v43 + *(v44 + 24), &qword_39918, &unk_2B740);
          *(v43 + *(v44 + 28)) = v42;
          v45 = v58;
          sub_B720(v43, v58);
          v46 = v60;
          v47 = *v60;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = *v46;
          v12 = &v73;
          sub_A4C0(v45, v63, isUniquelyReferenced_nonNull_native);

          *v46 = v73;
          sub_B684(v65, v66);
          v23 = v52;
          (*v55)();
          a1 = v53;
          i = v51;
        }

        else
        {
          sub_B684(v26, v28);
        }
      }

      ++v20;
      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v49 = v18;
    i = sub_2AC34();
  }
}

void sub_B0A4(unint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, char **a3)
{
  v68 = a2;
  v66 = type metadata accessor for PatternStoreValue(0);
  v64 = *(v66 - 8);
  v5 = *(v64 + 64);
  v6 = __chkstk_darwin(v66);
  v73 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v54 - v8;
  v9 = sub_2A0A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v67 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v54 - v15;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_30:
    v53 = v14;
    v17 = sub_2AC34();
    v14 = v53;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *(&dword_10 + (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
LABEL_3:
      v18 = v14;
      v72 = a3;
      v19 = 0;
      v63 = qword_398C0;
      a3 = (isUniquelyReferenced_nonNull_native & 0xC000000000000001);
      v75 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v61 = v16;
      v62 = (v10 + 32);
      v59 = (v10 + 16);
      v60 = (v10 + 8);
      v57 = v17;
      v58 = isUniquelyReferenced_nonNull_native;
      v56 = v14;
      v55 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      do
      {
        if (a3)
        {
          v14 = sub_2AB64();
        }

        else
        {
          if (v19 >= *(v75 + 16))
          {
            goto LABEL_27;
          }

          v14 = *(isUniquelyReferenced_nonNull_native + 8 * v19 + 32);
        }

        v10 = v14;
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v21 = [v14 pattern];
        if (v21)
        {
          v16 = v17;
          v22 = isUniquelyReferenced_nonNull_native;
          v76 = v10;
          v23 = v21;
          v24 = sub_2A004();
          v26 = v25;

          v10 = v76;
          v27 = [v76 timestamp];
          if (v27)
          {
            v69 = v19 + 1;
            v28 = v67;
            v29 = v27;
            sub_2A074();

            v30 = v61;
            (*v62)(v61, v28, v18);
            v31 = *(v68 + v63);
            sub_385C(&qword_399C8, &qword_2B778);
            sub_B960(&qword_399D0, &qword_399D8);
            v70 = v24;
            v71 = v26;
            v32 = v74;
            sub_29F84();
            if (v32)
            {
              (*v60)(v30, v18);
              sub_B684(v70, v71);

              return;
            }

            v74 = 0;
            v16 = v77;
            v33 = v18;
            v34 = v65;
            v35 = v30;
            (*v59)(v65, v30, v33);
            v36 = [v76 frequency];
            v37 = v66;
            v38 = *(v66 + 24);
            v39 = sub_2A0E4();
            (*(*(v39 - 8) + 56))(v34 + v38, 1, 1, v39);
            *(v34 + *(v37 + 20)) = v36;
            *(v34 + *(v37 + 28)) = 2;
            sub_B720(v34, v73);
            v40 = v72;
            v41 = *v72;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77 = *v40;
            a3 = v77;
            v10 = sub_7A88(v16);
            v43 = a3[2];
            v44 = (v42 & 1) == 0;
            v14 = &v43[v44];
            if (__OFADD__(v43, v44))
            {
              goto LABEL_28;
            }

            v45 = v42;
            if (a3[3] >= v14)
            {
              v20 = v69;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_8A38();
              }

              v17 = v57;
              isUniquelyReferenced_nonNull_native = v58;
              a3 = v77;
              if ((v45 & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            else
            {
              sub_7F84(v14, isUniquelyReferenced_nonNull_native);
              v46 = sub_7A88(v16);
              if ((v45 & 1) != (v47 & 1))
              {
                sub_2AD84();
                __break(1u);
                return;
              }

              v10 = v46;
              v17 = v57;
              isUniquelyReferenced_nonNull_native = v58;
              v20 = v69;
              a3 = v77;
              if ((v45 & 1) == 0)
              {
LABEL_17:
                a3[(v10 >> 6) + 8] = (a3[(v10 >> 6) + 8] | (1 << v10));
                *&a3[6][8 * v10] = v16;
                v14 = sub_B720(v73, &a3[7][*(v64 + 72) * v10]);
                v48 = a3[2];
                v49 = __OFADD__(v48, 1);
                v50 = v48 + 1;
                if (v49)
                {
                  goto LABEL_29;
                }

                a3[2] = v50;
                goto LABEL_23;
              }
            }

            sub_B784(v73, &a3[7][*(v64 + 72) * v10]);

LABEL_23:
            v51 = v71;
            *v72 = a3;
            sub_B684(v70, v51);
            v52 = v35;
            v18 = v56;
            (*v60)(v52);
            a3 = v55;
            v10 = v76;
            goto LABEL_5;
          }

          sub_B684(v24, v26);
          isUniquelyReferenced_nonNull_native = v22;
          v17 = v16;
        }

LABEL_5:

        ++v19;
      }

      while (v20 != v17);
    }
  }
}

uint64_t sub_B684(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_B6D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_B720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PatternStoreValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PatternStoreValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_B7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PatternStoreValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B84C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B884(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_B8C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B8F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_B904(uint64_t a1)
{
  v2 = type metadata accessor for PatternStoreValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B960(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_B6D8(&qword_399C8, &qword_2B778);
    sub_B9E8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B9E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PatternItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_BA2C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_BA7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BAC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_385C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_BB4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_385C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_BBAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_385C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id static RECTIFISelfPatternStore.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_2A854();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_BCB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for RECTIFISelfPatternStore();
  result = sub_2AB44();
  *a1 = result;
  return result;
}

BOOL sub_BCF4(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = &_swiftEmptySetSingleton;
  v44 = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v7 = *a2;
  v37 = *(*a2 + 2);
  if (!v37)
  {
    goto LABEL_80;
  }

  v38 = v7 + 32;

  v35 = a2;
  swift_beginAccess();
  v8 = 0;
  v9 = a3 + 32;
  v41 = a3;
  v36 = v7;
  while (2)
  {
    if (v8 >= *(v7 + 2))
    {
      goto LABEL_87;
    }

    v11 = &v38[16 * v8];
    v13 = *v11;
    v12 = v11[1];
    v43 = &_swiftEmptySetSingleton;
    v14 = v12 - 1;
    if (__OFSUB__(v12, 1))
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      JUMPOUT(0xC364);
    }

    v15 = 0;
    v39 = v8 + 1;
    v40 = v8;
    while (1)
    {
      v17 = v14;
      if (v14 <= 0)
      {
        if ((v14 != 0) | v15 & 1)
        {
          goto LABEL_77;
        }

        v14 = 0;
        v15 = 1;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }
      }

      else
      {
        --v14;
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }
      }

      if (v13 >= *(a3 + 16))
      {
        goto LABEL_85;
      }

      v18 = *(v9 + 8 * v13);
      if ((v18 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (v17 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_86;
      }

      v19 = *(v18 + 8 * v17 + 32);

      if (a1)
      {
        goto LABEL_19;
      }

LABEL_9:
      sub_26738(&v42, v19);
    }

    v29 = *(v9 + 8 * v13);

    v19 = sub_2AB64();

    if (!a1)
    {
      goto LABEL_9;
    }

LABEL_19:
    v20 = *(v19 + 24) == *(a1 + 24) && *(v19 + 32) == *(a1 + 32);
    if (!v20 && (sub_2AD54() & 1) == 0 || *(v19 + 40) != *(a1 + 40))
    {
      goto LABEL_9;
    }

    v21 = *(a1 + 41);
    v22 = 0xE300000000000000;
    v23 = 5395265;
    switch(*(v19 + 41))
    {
      case 1:
        v23 = 5786702;
        break;
      case 2:
        v23 = 4801877;
        break;
      case 3:
        v22 = 0xE800000000000000;
        v23 = 0x505041454E4F4850;
        break;
      case 4:
        v23 = 0x414547415353454DLL;
        v22 = 0xEA00000000005050;
        break;
      case 5:
        v23 = 0x5245444E494D4552;
        v24 = 1096041811;
        goto LABEL_36;
      case 6:
        v23 = 0xD000000000000017;
        v22 = 0x800000000002C990;
        break;
      case 7:
        v23 = 0x4552434D52414C41;
        goto LABEL_34;
      case 8:
        v22 = 0xEE00505041454C47;
        v23 = 0x474F544D52414C41;
        break;
      case 9:
        v23 = 0x4450554D52414C41;
LABEL_34:
        v24 = 1095062593;
LABEL_36:
        v22 = v24 | 0xEE00505000000000;
        break;
      case 0xA:
        v23 = 0x4145524345544F4ELL;
        goto LABEL_40;
      case 0xB:
        v23 = 0x454C454445544F4ELL;
LABEL_40:
        v22 = 0xED00005050414554;
        break;
      case 0xC:
        v23 = 0x5041594D444E4946;
        v22 = 0xE900000000000050;
        break;
      case 0xD:
        v22 = 0xE700000000000000;
        v23 = 0x4E574F4E4B4E55;
        break;
      default:
        break;
    }

    v25 = 0xE300000000000000;
    v26 = 5395265;
    switch(*(a1 + 41))
    {
      case 1:
        if (v23 != 5786702)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 2:
        if (v23 != 4801877)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 3:
        v25 = 0xE800000000000000;
        if (v23 != 0x505041454E4F4850)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 4:
        v25 = 0xEA00000000005050;
        if (v23 != 0x414547415353454DLL)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 5:
        v27 = 0x5245444E494D4552;
        v28 = 1096041811;
        goto LABEL_59;
      case 6:
        v25 = 0x800000000002C990;
        if (v23 != 0xD000000000000017)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 7:
        v27 = 0x4552434D52414C41;
        goto LABEL_57;
      case 8:
        v25 = 0xEE00505041454C47;
        if (v23 != 0x474F544D52414C41)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 9:
        v27 = 0x4450554D52414C41;
LABEL_57:
        v28 = 1095062593;
LABEL_59:
        v25 = v28 | 0xEE00505000000000;
        if (v23 != v27)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 0xA:
        v26 = 0x4145524345544F4ELL;
        v25 = 0xED00005050414554;
        goto LABEL_66;
      case 0xB:
        v25 = 0xED00005050414554;
        if (v23 != 0x454C454445544F4ELL)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 0xC:
        v25 = 0xE900000000000050;
        if (v23 != 0x5041594D444E4946)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 0xD:
        v25 = 0xE700000000000000;
        if (v23 != 0x4E574F4E4B4E55)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      default:
LABEL_66:
        if (v23 != v26)
        {
          goto LABEL_8;
        }

LABEL_67:
        if (v22 != v25)
        {
LABEL_8:
          v16 = sub_2AD54();

          a3 = v41;
          if (v16)
          {
            goto LABEL_73;
          }

          goto LABEL_9;
        }

        a3 = v41;
LABEL_73:
        v30 = *v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v35 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_28E88(v30);
          *v35 = v30;
        }

        if (v40 >= *(v30 + 2))
        {
          goto LABEL_89;
        }

        v32 = &v30[16 * v40];
        *(v32 + 4) = v13;
        *(v32 + 5) = v17;

LABEL_77:
        if (v40)
        {
          v10 = sub_C5A8(v43, v44);

          v44 = v10;
        }

        else
        {
          sub_10E1C(v43);
        }

        v7 = v36;
        v8 = v39;
        if (v39 != v37)
        {
          continue;
        }

        v6 = v44;
LABEL_80:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v33 = sub_2AAB4();
        }

        else
        {
          v33 = *(v6 + 16);
        }

        return v33 != 0;
    }
  }
}

void *sub_C408(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_CDEC(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_E9EC(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

void *sub_C5A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!v3)
    {
      sub_2AAA4();
      if (!sub_2AAD4())
      {
LABEL_75:

        return &_swiftEmptySetSingleton;
      }

      type metadata accessor for PatternItem();
      v7 = a1 + 56;
LABEL_15:
      swift_dynamicCast();
      if (!*(a1 + 16))
      {
        goto LABEL_13;
      }

      v8 = *(a1 + 40);
      sub_2ADA4();
      v9 = *(v26 + 24);
      v10 = *(v26 + 32);

      sub_2A8B4();

      sub_2ADB4(*(v26 + 40));
      *(v26 + 41);
      sub_2A8B4();

      v11 = sub_2ADC4();
      v12 = -1 << *(a1 + 32);
      v13 = v11 & ~v12;
      if (((*(v7 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }

      v14 = ~v12;
      while (1)
      {
        v16 = *(*(a1 + 48) + 8 * v13);
        v17 = *(v16 + 24) == *(v26 + 24) && *(v16 + 32) == *(v26 + 32);
        if (v17 || (sub_2AD54()) && *(v16 + 40) == *(v26 + 40))
        {
          v18 = 0xE300000000000000;
          v19 = 5395265;
          switch(*(v16 + 41))
          {
            case 1:
              v19 = 5786702;
              break;
            case 2:
              v19 = 4801877;
              break;
            case 3:
              v18 = 0xE800000000000000;
              v19 = 0x505041454E4F4850;
              break;
            case 4:
              v19 = 0x414547415353454DLL;
              v18 = 0xEA00000000005050;
              break;
            case 5:
              v19 = 0x5245444E494D4552;
              v20 = 1096041811;
              goto LABEL_37;
            case 6:
              v19 = 0xD000000000000017;
              v18 = 0x800000000002C990;
              break;
            case 7:
              v19 = 0x4552434D52414C41;
              goto LABEL_35;
            case 8:
              v18 = 0xEE00505041454C47;
              v19 = 0x474F544D52414C41;
              break;
            case 9:
              v19 = 0x4450554D52414C41;
LABEL_35:
              v20 = 1095062593;
LABEL_37:
              v18 = v20 | 0xEE00505000000000;
              break;
            case 0xA:
              v19 = 0x4145524345544F4ELL;
              goto LABEL_41;
            case 0xB:
              v19 = 0x454C454445544F4ELL;
LABEL_41:
              v18 = 0xED00005050414554;
              break;
            case 0xC:
              v19 = 0x5041594D444E4946;
              v18 = 0xE900000000000050;
              break;
            case 0xD:
              v18 = 0xE700000000000000;
              v19 = 0x4E574F4E4B4E55;
              break;
            default:
              break;
          }

          v21 = 0xE300000000000000;
          v22 = 5395265;
          switch(*(v26 + 41))
          {
            case 1:
              if (v19 == 5786702)
              {
                goto LABEL_68;
              }

              goto LABEL_18;
            case 2:
              if (v19 != 4801877)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 3:
              v21 = 0xE800000000000000;
              if (v19 != 0x505041454E4F4850)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 4:
              v21 = 0xEA00000000005050;
              if (v19 != 0x414547415353454DLL)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 5:
              v23 = 0x5245444E494D4552;
              v24 = 1096041811;
              goto LABEL_60;
            case 6:
              v21 = 0x800000000002C990;
              if (v19 != 0xD000000000000017)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 7:
              v23 = 0x4552434D52414C41;
              goto LABEL_58;
            case 8:
              v21 = 0xEE00505041454C47;
              if (v19 != 0x474F544D52414C41)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 9:
              v23 = 0x4450554D52414C41;
LABEL_58:
              v24 = 1095062593;
LABEL_60:
              v21 = v24 | 0xEE00505000000000;
              if (v19 != v23)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 0xA:
              v22 = 0x4145524345544F4ELL;
              v21 = 0xED00005050414554;
              goto LABEL_67;
            case 0xB:
              v21 = 0xED00005050414554;
              if (v19 != 0x454C454445544F4ELL)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 0xC:
              v21 = 0xE900000000000050;
              if (v19 != 0x5041594D444E4946)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 0xD:
              v21 = 0xE700000000000000;
              if (v19 != 0x4E574F4E4B4E55)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            default:
LABEL_67:
              if (v19 != v22)
              {
                goto LABEL_18;
              }

LABEL_68:
              if (v18 == v21)
              {

LABEL_72:
                v25 = *(&_swiftEmptySetSingleton + 2);
                if (*(&_swiftEmptySetSingleton + 3) <= v25)
                {
                  sub_27298(v25 + 1);
                }

                sub_27954(v26, &_swiftEmptySetSingleton);
LABEL_14:
                if (!sub_2AAD4())
                {
                  goto LABEL_75;
                }

                goto LABEL_15;
              }

LABEL_18:
              v15 = sub_2AD54();

              if (v15)
              {
                goto LABEL_72;
              }

              break;
          }
        }

        v13 = (v13 + 1) & v14;
        if (((*(v7 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    if (a2 < 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_2AAB4();
    a2 = sub_27184(v4, v5);
    goto LABEL_8;
  }

  if (v3)
  {
LABEL_8:

    return sub_C408(a1, a2);
  }

  return sub_D780(a1, a2);
}

void *sub_CDEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2AAA4();
    type metadata accessor for PatternItem();
    sub_EA20();
    sub_2A9C4();
    v5 = v55;
    v6 = v56;
    v7 = v57;
    v8 = v58;
    v9 = v59;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v46 = 0;
  v13 = (v7 + 64) >> 6;
  v48 = v13;
  v52 = a4;
  v53 = a4 + 56;
  v49 = v6;
  v50 = v5;
LABEL_8:
  v14 = v8;
  v15 = v9;
  while (v5 < 0)
  {
    if (!sub_2AAD4())
    {
      goto LABEL_81;
    }

    type metadata accessor for PatternItem();
    swift_dynamicCast();
    v19 = v54;
    v8 = v14;
    v18 = v15;
    if (!v54)
    {
      goto LABEL_81;
    }

LABEL_19:
    v51 = v18;
    v20 = v52;
    v21 = *(v52 + 40);
    sub_2ADA4();
    v23 = *(v19 + 24);
    v22 = *(v19 + 32);

    sub_2A8B4();

    sub_2ADB4(*(v19 + 40));
    *(v19 + 41);
    sub_2A8B4();

    v24 = sub_2ADC4();
    v25 = -1 << *(v52 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    v28 = 1 << v26;
    if (((1 << v26) & *(v53 + 8 * (v26 >> 6))) != 0)
    {
      v29 = ~v25;
      while (1)
      {
        v31 = *(*(v20 + 48) + 8 * v26);
        v32 = *(v31 + 24) == *(v19 + 24) && *(v31 + 32) == *(v19 + 32);
        if (v32 || (sub_2AD54()) && *(v31 + 40) == *(v19 + 40))
        {
          break;
        }

LABEL_22:
        v26 = (v26 + 1) & v29;
        v27 = v26 >> 6;
        v28 = 1 << v26;
        if ((*(v53 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
        {
          goto LABEL_9;
        }
      }

      v33 = *(v31 + 41);
      v34 = *(v19 + 41);
      v35 = 0xE300000000000000;
      v36 = 5395265;
      switch(v33)
      {
        case 1:
          v36 = 5786702;
          break;
        case 2:
          v36 = 4801877;
          break;
        case 3:
          v35 = 0xE800000000000000;
          v36 = 0x505041454E4F4850;
          break;
        case 4:
          v36 = 0x414547415353454DLL;
          v35 = 0xEA00000000005050;
          break;
        case 5:
          v36 = 0x5245444E494D4552;
          v37 = 1096041811;
          goto LABEL_40;
        case 6:
          v36 = 0xD000000000000017;
          v35 = 0x800000000002C990;
          break;
        case 7:
          v36 = 0x4552434D52414C41;
          goto LABEL_38;
        case 8:
          v35 = 0xEE00505041454C47;
          v36 = 0x474F544D52414C41;
          break;
        case 9:
          v36 = 0x4450554D52414C41;
LABEL_38:
          v37 = 1095062593;
LABEL_40:
          v35 = v37 | 0xEE00505000000000;
          break;
        case 10:
          v36 = 0x4145524345544F4ELL;
          goto LABEL_44;
        case 11:
          v36 = 0x454C454445544F4ELL;
LABEL_44:
          v35 = 0xED00005050414554;
          break;
        case 12:
          v36 = 0x5041594D444E4946;
          v35 = 0xE900000000000050;
          break;
        case 13:
          v35 = 0xE700000000000000;
          v36 = 0x4E574F4E4B4E55;
          break;
        default:
          break;
      }

      v38 = 0xE300000000000000;
      v39 = 5395265;
      switch(*(v19 + 41))
      {
        case 1:
          if (v36 != 5786702)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 2:
          if (v36 != 4801877)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 3:
          v38 = 0xE800000000000000;
          if (v36 != 0x505041454E4F4850)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 4:
          v38 = 0xEA00000000005050;
          if (v36 != 0x414547415353454DLL)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 5:
          v40 = 0x5245444E494D4552;
          v41 = 1096041811;
          goto LABEL_63;
        case 6:
          v38 = 0x800000000002C990;
          if (v36 != 0xD000000000000017)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 7:
          v40 = 0x4552434D52414C41;
          goto LABEL_61;
        case 8:
          v38 = 0xEE00505041454C47;
          if (v36 != 0x474F544D52414C41)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 9:
          v40 = 0x4450554D52414C41;
LABEL_61:
          v41 = 1095062593;
LABEL_63:
          v38 = v41 | 0xEE00505000000000;
          if (v36 != v40)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 0xA:
          v39 = 0x4145524345544F4ELL;
          v38 = 0xED00005050414554;
          goto LABEL_70;
        case 0xB:
          v38 = 0xED00005050414554;
          if (v36 != 0x454C454445544F4ELL)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 0xC:
          v38 = 0xE900000000000050;
          if (v36 != 0x5041594D444E4946)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 0xD:
          v38 = 0xE700000000000000;
          if (v36 != 0x4E574F4E4B4E55)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        default:
LABEL_70:
          if (v36 != v39)
          {
            goto LABEL_21;
          }

LABEL_71:
          if (v35 == v38)
          {

            goto LABEL_76;
          }

LABEL_21:
          v30 = sub_2AD54();

          v20 = v52;
          if ((v30 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_76:
          v42 = a1[v27];
          a1[v27] = v42 | v28;
          v14 = v8;
          v5 = v50;
          v9 = v51;
          v15 = v51;
          v32 = (v42 & v28) == 0;
          v13 = v48;
          v6 = v49;
          if (!v32)
          {
            continue;
          }

          if (!__OFADD__(v46++, 1))
          {
            goto LABEL_8;
          }

          __break(1u);
          break;
      }

      goto LABEL_81;
    }

LABEL_9:

    v14 = v8;
    v5 = v50;
    v15 = v51;
    v13 = v48;
    v6 = v49;
  }

  v16 = v14;
  v17 = v15;
  v8 = v14;
  if (v15)
  {
LABEL_15:
    v18 = (v17 - 1) & v17;
    v19 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v19)
    {
      goto LABEL_81;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      JUMPOUT(0xD648);
    }

    if (v8 >= v13)
    {
      break;
    }

    v17 = *(v6 + 8 * v8);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

LABEL_81:
  sub_EA78();

  return sub_16B78(a1, a2, v46, v52);
}

void *sub_D6F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_D944(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_D780(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_D944((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_D6F0(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_D944(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_74:
    v74 = 0;
    v37 = 0;
    v38 = v5 + 56;
    v39 = 1 << *(v5 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & *(v5 + 56);
    v42 = (v39 + 63) >> 6;
    v43 = v4 + 56;
    v70 = v42;
    while (1)
    {
LABEL_79:
      if (v41)
      {
        v44 = __clz(__rbit64(v41));
        v78 = (v41 - 1) & v41;
      }

      else
      {
        v45 = v37;
        do
        {
          v37 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_148;
          }

          if (v37 >= v42)
          {
            goto LABEL_146;
          }

          v46 = *(v38 + 8 * v37);
          ++v45;
        }

        while (!v46);
        v44 = __clz(__rbit64(v46));
        v78 = (v46 - 1) & v46;
      }

      v73 = v44 | (v37 << 6);
      v47 = *(*(v5 + 48) + 8 * v73);
      v48 = *(v4 + 40);
      sub_2ADA4();
      v50 = *(v47 + 24);
      v49 = *(v47 + 32);

      sub_2A8B4();

      sub_2ADB4(*(v47 + 40));
      *(v47 + 41);
      sub_2A8B4();

      v51 = sub_2ADC4();
      v4 = a4;
      v52 = -1 << *(a4 + 32);
      v53 = v51 & ~v52;
      if ((*(v43 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
      {
        break;
      }

LABEL_78:

      v42 = v70;
      v41 = v78;
    }

    v54 = ~v52;
    while (1)
    {
      v56 = *(*(v4 + 48) + 8 * v53);
      v57 = *(v56 + 24) == *(v47 + 24) && *(v56 + 32) == *(v47 + 32);
      if (v57 || (sub_2AD54()) && *(v56 + 40) == *(v47 + 40))
      {
        break;
      }

LABEL_89:
      v53 = (v53 + 1) & v54;
      if (((*(v43 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    v58 = *(v47 + 41);
    v59 = 0xE300000000000000;
    v60 = 5395265;
    switch(*(v56 + 41))
    {
      case 1:
        v60 = 5786702;
        break;
      case 2:
        v60 = 4801877;
        break;
      case 3:
        v59 = 0xE800000000000000;
        v60 = 0x505041454E4F4850;
        break;
      case 4:
        v60 = 0x414547415353454DLL;
        v59 = 0xEA00000000005050;
        break;
      case 5:
        v60 = 0x5245444E494D4552;
        v61 = 1096041811;
        goto LABEL_107;
      case 6:
        v60 = 0xD000000000000017;
        v59 = 0x800000000002C990;
        break;
      case 7:
        v60 = 0x4552434D52414C41;
        goto LABEL_105;
      case 8:
        v59 = 0xEE00505041454C47;
        v60 = 0x474F544D52414C41;
        break;
      case 9:
        v60 = 0x4450554D52414C41;
LABEL_105:
        v61 = 1095062593;
LABEL_107:
        v59 = v61 | 0xEE00505000000000;
        break;
      case 0xA:
        v60 = 0x4145524345544F4ELL;
        goto LABEL_111;
      case 0xB:
        v60 = 0x454C454445544F4ELL;
LABEL_111:
        v59 = 0xED00005050414554;
        break;
      case 0xC:
        v60 = 0x5041594D444E4946;
        v59 = 0xE900000000000050;
        break;
      case 0xD:
        v59 = 0xE700000000000000;
        v60 = 0x4E574F4E4B4E55;
        break;
      default:
        break;
    }

    v62 = 0xE300000000000000;
    v63 = 5395265;
    switch(*(v47 + 41))
    {
      case 1:
        if (v60 != 5786702)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 2:
        if (v60 != 4801877)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 3:
        v62 = 0xE800000000000000;
        if (v60 != 0x505041454E4F4850)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 4:
        v62 = 0xEA00000000005050;
        if (v60 != 0x414547415353454DLL)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 5:
        v64 = 0x5245444E494D4552;
        v65 = 1096041811;
        goto LABEL_130;
      case 6:
        v62 = 0x800000000002C990;
        if (v60 != 0xD000000000000017)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 7:
        v64 = 0x4552434D52414C41;
        goto LABEL_128;
      case 8:
        v62 = 0xEE00505041454C47;
        if (v60 != 0x474F544D52414C41)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 9:
        v64 = 0x4450554D52414C41;
LABEL_128:
        v65 = 1095062593;
LABEL_130:
        v62 = v65 | 0xEE00505000000000;
        if (v60 != v64)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 0xA:
        v63 = 0x4145524345544F4ELL;
        v62 = 0xED00005050414554;
        goto LABEL_137;
      case 0xB:
        v62 = 0xED00005050414554;
        if (v60 != 0x454C454445544F4ELL)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 0xC:
        v62 = 0xE900000000000050;
        if (v60 != 0x5041594D444E4946)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 0xD:
        v62 = 0xE700000000000000;
        if (v60 != 0x4E574F4E4B4E55)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      default:
LABEL_137:
        if (v60 != v63)
        {
          goto LABEL_88;
        }

LABEL_138:
        if (v59 == v62)
        {

          v5 = a3;
          v4 = a4;
          goto LABEL_143;
        }

LABEL_88:
        v55 = sub_2AD54();

        v5 = a3;
        v4 = a4;
        if ((v55 & 1) == 0)
        {
          goto LABEL_89;
        }

LABEL_143:
        *(a1 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
        v36 = __OFADD__(v74++, 1);
        v42 = v70;
        v41 = v78;
        if (!v36)
        {
          goto LABEL_79;
        }

        __break(1u);
        break;
    }
  }

  else
  {
    v74 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v77 = a3 + 56;
    v68 = v11;
    v69 = a4 + 56;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v72 = (v10 - 1) & v10;
LABEL_14:
      v15 = *(*(v4 + 48) + 8 * (v12 | (v6 << 6)));
      v16 = *(v5 + 40);
      sub_2ADA4();
      v18 = *(v15 + 24);
      v17 = *(v15 + 32);

      sub_2A8B4();

      sub_2ADB4(*(v15 + 40));
      *(v15 + 41);
      sub_2A8B4();

      v19 = sub_2ADC4();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      v4 = a4;
      if (((1 << v21) & *(v77 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        while (1)
        {
          v26 = *(*(v5 + 48) + 8 * v21);
          v27 = *(v26 + 24) == *(v15 + 24) && *(v26 + 32) == *(v15 + 32);
          if (v27 || (sub_2AD54()) && *(v26 + 40) == *(v15 + 40))
          {
            break;
          }

LABEL_17:
          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if ((*(v77 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_6;
          }
        }

        v28 = *(v15 + 41);
        v29 = 0xE300000000000000;
        v30 = 5395265;
        switch(*(v26 + 41))
        {
          case 1:
            v30 = 5786702;
            break;
          case 2:
            v30 = 4801877;
            break;
          case 3:
            v29 = 0xE800000000000000;
            v30 = 0x505041454E4F4850;
            break;
          case 4:
            v30 = 0x414547415353454DLL;
            v29 = 0xEA00000000005050;
            break;
          case 5:
            v30 = 0x5245444E494D4552;
            v31 = 1096041811;
            goto LABEL_35;
          case 6:
            v30 = 0xD000000000000017;
            v29 = 0x800000000002C990;
            break;
          case 7:
            v30 = 0x4552434D52414C41;
            goto LABEL_33;
          case 8:
            v29 = 0xEE00505041454C47;
            v30 = 0x474F544D52414C41;
            break;
          case 9:
            v30 = 0x4450554D52414C41;
LABEL_33:
            v31 = 1095062593;
LABEL_35:
            v29 = v31 | 0xEE00505000000000;
            break;
          case 0xA:
            v30 = 0x4145524345544F4ELL;
            goto LABEL_39;
          case 0xB:
            v30 = 0x454C454445544F4ELL;
LABEL_39:
            v29 = 0xED00005050414554;
            break;
          case 0xC:
            v30 = 0x5041594D444E4946;
            v29 = 0xE900000000000050;
            break;
          case 0xD:
            v29 = 0xE700000000000000;
            v30 = 0x4E574F4E4B4E55;
            break;
          default:
            break;
        }

        v32 = 0xE300000000000000;
        v33 = 5395265;
        switch(*(v15 + 41))
        {
          case 1:
            if (v30 != 5786702)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 2:
            if (v30 != 4801877)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 3:
            v32 = 0xE800000000000000;
            if (v30 != 0x505041454E4F4850)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 4:
            v32 = 0xEA00000000005050;
            if (v30 != 0x414547415353454DLL)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 5:
            v34 = 0x5245444E494D4552;
            v35 = 1096041811;
            goto LABEL_58;
          case 6:
            v32 = 0x800000000002C990;
            if (v30 != 0xD000000000000017)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 7:
            v34 = 0x4552434D52414C41;
            goto LABEL_56;
          case 8:
            v32 = 0xEE00505041454C47;
            if (v30 != 0x474F544D52414C41)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 9:
            v34 = 0x4450554D52414C41;
LABEL_56:
            v35 = 1095062593;
LABEL_58:
            v32 = v35 | 0xEE00505000000000;
            if (v30 != v34)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 0xA:
            v33 = 0x4145524345544F4ELL;
            v32 = 0xED00005050414554;
            goto LABEL_65;
          case 0xB:
            v32 = 0xED00005050414554;
            if (v30 != 0x454C454445544F4ELL)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 0xC:
            v32 = 0xE900000000000050;
            if (v30 != 0x5041594D444E4946)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 0xD:
            v32 = 0xE700000000000000;
            if (v30 != 0x4E574F4E4B4E55)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          default:
LABEL_65:
            if (v30 != v33)
            {
              goto LABEL_16;
            }

LABEL_66:
            if (v29 == v32)
            {

              v5 = a3;
              v4 = a4;
              goto LABEL_71;
            }

LABEL_16:
            v25 = sub_2AD54();

            v5 = a3;
            v4 = a4;
            if ((v25 & 1) == 0)
            {
              goto LABEL_17;
            }

LABEL_71:
            v7 = v69;
            a1[v22] |= v23;
            v10 = v72;
            v36 = __OFADD__(v74++, 1);
            v11 = v68;
            if (!v36)
            {
              continue;
            }

            __break(1u);
            break;
        }

        goto LABEL_74;
      }

LABEL_6:

      v11 = v68;
      v7 = v69;
      v10 = v72;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_148:
        __break(1u);
        JUMPOUT(0xE7C4);
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v72 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }
  }

LABEL_146:

  return sub_16B78(a1, a2, v74, v5);
}

uint64_t sub_E914(uint64_t a1, uint64_t a2, char *a3)
{
  v13 = a3;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  while (1)
  {
    v9 = v8;
    if (!v8)
    {
LABEL_9:

      return v9 != 0;
    }

    if (v6 < v8)
    {
      break;
    }

    --v8;
    if (v9 - 1 >= v5)
    {
      goto LABEL_11;
    }

    v10 = *(a2 + 8 * v9 + 24);

    v12 = sub_BCF4(v11, &v13, a1);

    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void *sub_E9EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_CDEC(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_EA20()
{
  result = qword_39AC0;
  if (!qword_39AC0)
  {
    type metadata accessor for PatternItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39AC0);
  }

  return result;
}

id RECTIFIInfrequentPatternStore.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id RECTIFISelfPatternStore.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RECTIFISelfPatternStore();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id RECTIFISelfPatternStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RECTIFISelfPatternStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_EBEC(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    swift_bridgeObjectRetain_n();
    sub_26DE4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_ED0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  result = sub_2A064();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    v6 = v5;
    type metadata accessor for SequenceItem();
    result = swift_allocObject();
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = v3;
    *(result + 16) = v6;
    *(result + 24) = 0;
    *(result + 32) = 0xE000000000000000;
    *(result + 40) = 0;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_EE10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  result = sub_2A064();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    v6 = v5;
    sub_385C(&qword_39EB0, &qword_2BA30);
    sub_F8AC();
    v7 = sub_2A834();
    v9 = v8;

    type metadata accessor for SequenceItem();
    result = swift_allocObject();
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = _swiftEmptyArrayStorage;
    *(result + 16) = v6;
    *(result + 24) = v7;
    *(result + 32) = v9;
    *(result + 40) = 512;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_EF98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_2ADA4();

      sub_2A8B4();
      v16 = sub_2ADC4();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_2AD54() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_F198(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = *(a1 + 24 * v1 + 8);
  sub_385C(&qword_398A0, &qword_2B6B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2B890;

  result = sub_2A064();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 9.22337204e18)
  {
    v7 = v6;
    sub_385C(&qword_39EB0, &qword_2BA30);
    sub_F8AC();
    v8 = sub_2A834();
    v10 = v9;

    type metadata accessor for SequenceItem();
    v11 = swift_allocObject();
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = &_swiftEmptyArrayStorage;
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    *(v11 + 32) = v10;
    *(v11 + 40) = 256;
    v2 = v4;
    *(v4 + 32) = v11;
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_F300(uint64_t a1, uint64_t a2, char a3)
{
  v35 = &_swiftEmptySetSingleton;
  v3 = &_swiftEmptyArrayStorage;
  v34 = &_swiftEmptyArrayStorage;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_32:

    return v3;
  }

  v4 = 0;
  v30 = a1 + 32;
  v29 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v5 = (v30 + 24 * v4);
    v6 = *v5;
    if (!*(*v5 + 16))
    {
      goto LABEL_4;
    }

    v7 = v5[1];
    v8 = *(v5 + 16);
    v9 = *(v5 + 17);
    v11 = *(v6 + 32);
    v10 = *(v6 + 40);
    v12 = v35;
    if (v35[2])
    {
      v13 = v35[5];
      sub_2ADA4();

      sub_2A8B4();
      v14 = sub_2ADC4();
      v15 = -1 << *(v12 + 32);
      v16 = v14 & ~v15;
      if ((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (v12[6] + 16 * v16);
          v19 = *v18 == v11 && v18[1] == v10;
          if (v19 || (sub_2AD54() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_4;
      }
    }

    else
    {
    }

LABEL_17:
    sub_26DE4(&v32, v11, v10);

    if (v8)
    {
      result = sub_2A064();
      v7 = v21;
    }

    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v7 <= -9.22337204e18)
    {
      goto LABEL_34;
    }

    if (v7 >= 9.22337204e18)
    {
      goto LABEL_35;
    }

    v32 = 0;
    v33 = 0xE000000000000000;
    sub_2AB34(21);

    v32 = 0xD000000000000013;
    v33 = 0x800000000002D020;
    if (v9)
    {
      v22._countAndFlagsBits = 1702195828;
    }

    else
    {
      v22._countAndFlagsBits = 0x65736C6166;
    }

    if (v9)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v22._object = v23;
    sub_2A8C4(v22);

    v24 = v32;
    v25 = v33;
    type metadata accessor for SequenceItem();
    v26 = swift_allocObject();
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = v6;
    *(v26 + 16) = v7;
    *(v26 + 24) = v24;
    *(v26 + 32) = v25;
    *(v26 + 40) = 1;
    *(v26 + 41) = a3;
    sub_2A904();
    if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v34 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v27 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
      sub_2A924();
    }

    sub_2A944();
    v29 = v34;
LABEL_4:
    if (++v4 == v31)
    {
      v3 = v29;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *sub_F644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_23:

    return &_swiftEmptyArrayStorage;
  }

  v2 = (a1 + 50);
  while (1)
  {
    v3 = *(v2 - 18);
    v4 = *(v2 - 10);
    v5 = *(v2 - 2);
    v6 = *(v2 - 1);
    v7 = *v2;
    swift_bridgeObjectRetain_n();
    v8 = sub_29090(v3);

    if (sub_EF98(&_swiftEmptySetSingleton, v8))
    {

      goto LABEL_4;
    }

    sub_EBEC(v8);

    if (v5)
    {
      result = sub_2A064();
      v4 = v10;
    }

    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v4 <= -9.22337204e18)
    {
      goto LABEL_25;
    }

    if (v4 >= 9.22337204e18)
    {
      goto LABEL_26;
    }

    sub_2AB34(21);

    if (v6)
    {
      v11._countAndFlagsBits = 1702195828;
    }

    else
    {
      v11._countAndFlagsBits = 0x65736C6166;
    }

    if (v6)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v11._object = v12;
    sub_2A8C4(v11);

    if (v7 == 14)
    {
      v13 = 13;
    }

    else
    {
      v13 = v7;
    }

    type metadata accessor for SequenceItem();
    v14 = swift_allocObject();
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = v3;
    *(v14 + 16) = v4;
    *(v14 + 24) = 0xD000000000000013;
    *(v14 + 32) = 0x800000000002D020;
    *(v14 + 40) = 1;
    *(v14 + 41) = v13;
    sub_2A904();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v15 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      sub_2A924();
    }

    sub_2A944();
LABEL_4:
    v2 += 24;
    if (!--v1)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_F8AC()
{
  result = qword_39EB8;
  if (!qword_39EB8)
  {
    sub_B6D8(&qword_39EB0, &qword_2BA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39EB8);
  }

  return result;
}

__n128 sub_F910(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_F924(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_F96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_F9E8(uint64_t a1)
{
  v50 = sub_2A104();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v50);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2A144();
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v51);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return &_swiftEmptyArrayStorage;
  }

  v11 = *(v5 + 16);
  v10 = v5 + 16;
  v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v13 = *(v10 + 56);
  v47 = (v2 + 8);
  v48 = v11;
  v45 = v13;
  v46 = (v10 - 8);
  v14 = &_swiftEmptyArrayStorage;
  v11(v8, v12, v51);
  while (1)
  {
    v16 = v49;
    sub_2A134();
    v17 = sub_2A0F4();
    v19 = v18;
    (*v47)(v16, v50);
    if (v17 == 0x797469746E45 && v19 == 0xE600000000000000)
    {
    }

    else
    {
      v20 = sub_2AD54();

      if ((v20 & 1) == 0)
      {
        result = (*v46)(v8, v51);
        v26 = &_swiftEmptyArrayStorage;
        goto LABEL_24;
      }
    }

    v21 = v10;
    v22 = sub_2A124();
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      v26 = sub_1F1C4(0, 1, 1, &_swiftEmptyArrayStorage);
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1F1C4((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[16 * v28];
      *(v29 + 4) = v24;
      *(v29 + 5) = v25;
    }

    else
    {
      v26 = &_swiftEmptyArrayStorage;
    }

    v30 = sub_2A114();
    if (v31)
    {
      result = (*v46)(v8, v51);
    }

    else
    {
      v52 = v30;
      v32 = sub_2AD44();
      v34 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1F1C4(0, *(v26 + 2) + 1, 1, v26);
      }

      v36 = *(v26 + 2);
      v35 = *(v26 + 3);
      if (v36 >= v35 >> 1)
      {
        v26 = sub_1F1C4((v35 > 1), v36 + 1, 1, v26);
      }

      result = (*v46)(v8, v51);
      *(v26 + 2) = v36 + 1;
      v37 = &v26[16 * v36];
      *(v37 + 4) = v32;
      *(v37 + 5) = v34;
    }

    v10 = v21;
LABEL_24:
    v38 = *(v26 + 2);
    v39 = *(v14 + 2);
    v40 = v39 + v38;
    if (__OFADD__(v39, v38))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v40 <= *(v14 + 3) >> 1)
    {
      if (*(v26 + 2))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v39 <= v40)
      {
        v41 = v39 + v38;
      }

      else
      {
        v41 = v39;
      }

      result = sub_1F1C4(result, v41, 1, v14);
      v14 = result;
      if (*(v26 + 2))
      {
LABEL_33:
        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v38)
        {
          goto LABEL_41;
        }

        swift_arrayInitWithCopy();

        if (v38)
        {
          v42 = *(v14 + 2);
          v43 = __OFADD__(v42, v38);
          v44 = v42 + v38;
          if (v43)
          {
            goto LABEL_42;
          }

          *(v14 + 2) = v44;
        }

        goto LABEL_4;
      }
    }

    if (v38)
    {
      goto LABEL_40;
    }

LABEL_4:
    v12 += v45;
    if (!--v9)
    {
      return v14;
    }

    v48(v8, v12, v51);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void *sub_FE6C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v20 = &_swiftEmptyArrayStorage;
    sub_2ABD4();
    v9 = (a3 + 50);
    while (1)
    {
      v10 = *(v9 - 10);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v15[0] = *(v9 - 18);
      v15[1] = v10;
      v16 = v11;
      v17 = v12;
      v18 = v13;

      a1(&v19, v15);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v9 += 24;

      sub_2ABB4();
      v14 = v20[2];
      sub_2ABE4();
      sub_2ABF4();
      sub_2ABC4();
      if (!--v6)
      {
        return v20;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_FF90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_20078(0, v1, 0);
  v3 = v2 + 56;
  v4 = -1 << *(v2 + 32);
  result = sub_2AA84();
  v6 = result;
  v7 = 0;
  v25 = v2 + 64;
  v26 = v1;
  v27 = v2 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v7;
    v29 = *(v2 + 36);
    v10 = (*(v2 + 48) + 16 * v6);
    v11 = *v10;
    v12 = v10[1];
    sub_385C(&qword_3A170, &qword_2BC50);
    v13 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2B5D0;
    *(v14 + 32) = v11;
    *(v14 + 40) = v12;
    v15 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage[3];

    if (v15 >= v16 >> 1)
    {
      result = sub_20078((v16 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v17 = &_swiftEmptyArrayStorage[3 * v15];
    *(v17 + 4) = v14;
    *(v17 + 5) = 0;
    v17[48] = 1;
    *(v17 + 49) = 3328;
    v8 = 1 << *(v13 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v2 = v13;
    v3 = v27;
    v18 = *(v27 + 8 * v9);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(v2 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (v25 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_B8F8(v6, v29, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_B8F8(v6, v29, 0);
    }

LABEL_4:
    v7 = v28 + 1;
    v6 = v8;
    if (v28 + 1 == v26)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}