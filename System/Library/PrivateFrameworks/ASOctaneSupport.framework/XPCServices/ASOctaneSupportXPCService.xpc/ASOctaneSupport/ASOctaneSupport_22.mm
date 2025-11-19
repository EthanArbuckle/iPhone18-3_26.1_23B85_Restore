uint64_t sub_1001A64E0(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for CheddarTransaction();
  __chkstk_darwin(v6 - 8, v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000BFC24();
  v12 = v11;
  sub_10001AE68(a2 + 6, a2[9]);
  v18 = sub_10007A214(2uLL, v10, v12, v13, v14, v15, v16, v17);
  LOBYTE(v10) = v19;

  v20 = a1;

  sub_100140370(v20, a3, v18, v10 & 1, v9);
  sub_10001AE68(a2 + 11, a2[14]);
  sub_1000B033C(v9, v18, v10 & 1);
  return sub_100143B5C(v9);
}

uint64_t sub_1001A6634(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100112884(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1001A66B0(v6);
  return sub_1001F7898();
}

void sub_1001A66B0(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1001F7E08(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1001F2D8C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1001A6878(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1001A6790(0, v3, 1, a1);
  }
}

void sub_1001A6790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        v14 = sub_1000BFDA8();
        v15 = sub_1000BFDA8();

        if (v15 >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v16 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v16;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1001A6878(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_91:
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v8 = v104;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v90 = (v7 + 16);
      v91 = *(v7 + 16);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v92 = v7;
        v93 = (v7 + 16 * v91);
        v94 = *v93;
        v95 = &v90[2 * v91];
        v7 = v95[1];
        sub_1001A6EA0((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v7), v102);
        if (v8)
        {
          break;
        }

        if (v7 < v94)
        {
          goto LABEL_117;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_118;
        }

        *v93 = v94;
        v93[1] = v7;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_119;
        }

        v91 = *v90 - 1;
        memmove(v95, v95 + 2, 16 * v96);
        *v90 = v91;
        v7 = v92;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v7 = sub_1001A70B4(v7);
    goto LABEL_93;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v10 = (*a3 + 8 * v6);
      v11 = 8 * v6;
      v13 = *v10;
      v12 = v10 + 2;
      v14 = v6 + 1;
      v15 = *(*a3 + 8 * v9);
      v16 = v13;
      sub_1001A77C0();
      v17 = sub_1001A77D8();

      v9 = v14;
      v99 = v8;
      v18 = v8 + 2;
      while (1)
      {
        v19 = v18;
        v20 = v9 + 1;
        if (v20 >= v5)
        {
          break;
        }

        v21 = *(v12 - 1);
        v22 = v20;
        v23 = *v12;
        v24 = v21;
        v25 = sub_1001A77C0();
        v26 = sub_1000BFDA8();

        v9 = v22;
        ++v12;
        v18 = v19 + 1;
        if (v17 < v4 == v26 >= v25)
        {
          goto LABEL_9;
        }
      }

      v9 = v5;
LABEL_9:
      if (v17 >= v4)
      {
        v8 = v99;
      }

      else
      {
        v8 = v99;
        if (v9 < v99)
        {
          goto LABEL_123;
        }

        if (v99 < v9)
        {
          if (v5 >= v19)
          {
            v27 = v19;
          }

          else
          {
            v27 = v5;
          }

          v28 = 8 * v27 - 8;
          v29 = v9;
          v30 = v99;
          do
          {
            if (v30 != --v29)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v32 = *(v31 + v11);
              *(v31 + v11) = *(v31 + v28);
              *(v31 + v28) = v32;
            }

            ++v30;
            v28 -= 8;
            v11 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = a3[1];
    if (v9 < v33)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_122;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v9 < v8)
    {
      goto LABEL_121;
    }

    v101 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032508();
      v7 = v88;
    }

    v48 = *(v7 + 16);
    v49 = v48 + 1;
    if (v48 >= *(v7 + 24) >> 1)
    {
      sub_100032508();
      v7 = v89;
    }

    *(v7 + 16) = v49;
    v50 = v7 + 32;
    v51 = (v7 + 32 + 16 * v48);
    *v51 = v8;
    v51[1] = v101;
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        v53 = (v50 + 16 * (v49 - 1));
        v54 = (v7 + 16 * v49);
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v7 + 32);
          v56 = *(v7 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_58:
          if (v58)
          {
            goto LABEL_108;
          }

          v70 = *v54;
          v69 = v54[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_111;
          }

          v74 = v53[1];
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_116;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        if (v49 < 2)
        {
          goto LABEL_110;
        }

        v77 = *v54;
        v76 = v54[1];
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_73:
        if (v73)
        {
          goto LABEL_113;
        }

        v79 = *v53;
        v78 = v53[1];
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_115;
        }

        if (v80 < v72)
        {
          goto LABEL_87;
        }

LABEL_80:
        if (v52 - 1 >= v49)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v84 = v7;
        v85 = (v50 + 16 * (v52 - 1));
        v86 = *v85;
        v7 = v50 + 16 * v52;
        v87 = *(v7 + 8);
        sub_1001A6EA0((*a3 + 8 * *v85), (*a3 + 8 * *v7), (*a3 + 8 * v87), v102);
        if (v104)
        {
          goto LABEL_101;
        }

        if (v87 < v86)
        {
          goto LABEL_103;
        }

        v8 = *(v84 + 16);
        if (v52 > v8)
        {
          goto LABEL_104;
        }

        *v85 = v86;
        v85[1] = v87;
        if (v52 >= v8)
        {
          goto LABEL_105;
        }

        v49 = v8 - 1;
        memmove((v50 + 16 * v52), (v7 + 16), 16 * (v8 - 1 - v52));
        v7 = v84;
        *(v84 + 16) = v8 - 1;
        if (v8 <= 2)
        {
          goto LABEL_87;
        }
      }

      v59 = v50 + 16 * v49;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_106;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_107;
      }

      v66 = v54[1];
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_109;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_112;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = v53[1];
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_120;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

LABEL_87:
    v5 = a3[1];
    v6 = v101;
    if (v101 >= v5)
    {
      goto LABEL_91;
    }
  }

  v34 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_124;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v9 == v34)
  {
    goto LABEL_38;
  }

  v35 = *a3;
  v36 = *a3 + 8 * v9 - 8;
  v100 = v8;
  v102 = v34;
  v37 = v8 - v9;
LABEL_31:
  v38 = v9;
  v39 = *(v35 + 8 * v9);
  v40 = v37;
  v41 = v36;
  while (1)
  {
    v42 = *v41;
    v43 = v39;
    v44 = v42;
    sub_1001A77C0();
    v45 = sub_1001A77D8();

    if (v45 >= v4)
    {
LABEL_36:
      v9 = v38 + 1;
      v36 += 8;
      --v37;
      if ((v38 + 1) == v102)
      {
        v9 = v102;
        v8 = v100;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v35)
    {
      break;
    }

    v46 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v46;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_36;
    }
  }

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
}

uint64_t sub_1001A6EA0(void **a1, id *a2, id *a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    sub_1000375D8(a1, a2 - a1, a4);
    v11 = &v5[v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v13 = *v5;
      v14 = *v7;
      v15 = v13;
      sub_1001A77C0();
      v16 = sub_1001A77D8();

      if (v16 >= v4)
      {
        break;
      }

      v17 = v7;
      v18 = v8 == v7++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
    }

    v17 = v5;
    v18 = v8 == v5++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  sub_1000375D8(a2, a3 - a2, a4);
  v11 = &v5[v10];
  v33 = v5;
LABEL_15:
  v19 = v7 - 1;
  --v6;
  while (v11 > v5 && v7 > v8)
  {
    v21 = v7;
    v22 = v8;
    v23 = v19;
    v24 = *v19;
    v25 = *(v11 - 1);
    v26 = v24;
    sub_1001A77C0();
    v27 = sub_1001A77D8();

    v28 = v6 + 1;
    if (v27 < v4)
    {
      v29 = v23;
      v7 = v23;
      v8 = v22;
      v5 = v33;
      if (v28 != v21)
      {
        *v6 = *v29;
        v7 = v29;
      }

      goto LABEL_15;
    }

    if (v11 != v28)
    {
      *v6 = *(v11 - 1);
    }

    --v6;
    --v11;
    v19 = v23;
    v8 = v22;
    v5 = v33;
  }

LABEL_28:
  v30 = v11 - v5;
  if (v7 != v5 || v7 >= &v5[v30])
  {
    memmove(v7, v5, 8 * v30);
  }

  return 1;
}

char *sub_1001A70C8(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1001A70F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADBD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1001A71F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1001F7B48();
    if (v4)
    {
      v5 = v4;
      v2 = sub_10001A0B8(v4, 0);
      sub_100017F60(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

double sub_1001A7288@<D0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001F6198();
    swift_allocObject();
    sub_1001F6188();
    sub_1000581BC();
    v4 = sub_1001F6178();
    v6 = v5;

    v7 = 0xD000000000000017;
    v8 = 0x80000001002227B0;
    v9 = v4;
    v10 = v6;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001F5F08();
    swift_allocObject();
    sub_1001F5EF8();
    sub_1000581BC();
    v11 = sub_1001F5EE8();
    v13 = v12;

    v8 = 0x80000001002227E0;
    v9 = v11;
    v10 = v13;
    v7 = 0xD000000000000010;
  }

  sub_1000B77D0(v9, v10, v7, v8, __dst);
  v14 = *&__dst[16];
  v15 = *&__dst[32];
  v16 = *&__dst[36];
  v17 = __dst[38];
  *a3 = *__dst;
  *(a3 + 16) = v14;
  result = *&__dst[24];
  *(a3 + 24) = *&__dst[24];
  *(a3 + 32) = v15;
  *(a3 + 36) = v16;
  *(a3 + 38) = v17;
  return result;
}

uint64_t sub_1001A7460()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1001A74BC()
{
  result = qword_1002BB098;
  if (!qword_1002BB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB098);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmPurchaseEngagementHelperRoute.CancelRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001A75DCLL);
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

unint64_t sub_1001A7618()
{
  result = qword_1002BB0A8;
  if (!qword_1002BB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0A8);
  }

  return result;
}

unint64_t sub_1001A7670()
{
  result = qword_1002BB0B0;
  if (!qword_1002BB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0B0);
  }

  return result;
}

unint64_t sub_1001A76C8()
{
  result = qword_1002BB0B8;
  if (!qword_1002BB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0B8);
  }

  return result;
}

BOOL sub_1001A771C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1001A7738(__n128 a1, __n128 a2)
{
  *(v2 + 24) = a2;
  *(v2 + 40) = a1;
  *(v2 + 56) = v3;
  *(v2 + 62) = BYTE6(v3);
  *(v2 + 60) = WORD2(v3);
}

void sub_1001A7778(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1001A77A4()
{
}

double sub_1001A77C0()
{

  return sub_1000BFDA8();
}

double sub_1001A77D8()
{

  return sub_1000BFDA8();
}

uint64_t sub_1001A7800(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1001A7840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A78A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000010022CFA0 == a2;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000010022CFC0 == a2;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000010022CFE0 == a2;
      if (v7 || (sub_1001F7EA8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000010022D000 == a2;
        if (v8 || (sub_1001F7EA8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D61726150797562 && a2 == 0xE900000000000073;
          if (v9 || (sub_1001F7EA8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x800000010022D020 == a2;
            if (v10 || (sub_1001F7EA8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4964657269707865 && a2 == 0xED0000747361506ELL;
              if (v11 || (sub_1001F7EA8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
              {

                return 7;
              }

              else
              {
                v13 = sub_1001F7EA8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001A7B3C(char a1)
{
  result = 0x6D61726150797562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x4964657269707865;
      break;
    case 7:
      result = 0x746361736E617274;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1001A7C74(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BB0C0);
  sub_10001A278();
  v5 = v4;
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  v9 = &v11[-v8];
  sub_10001AE68(a1, a1[3]);
  sub_1001A8848();
  sub_1001F8198();
  v11[15] = 0;
  sub_100024A50();
  sub_1001F7D18();
  if (!v1)
  {
    v11[14] = 1;
    sub_100024A50();
    sub_1001F7D88();
    v11[13] = 2;
    sub_100024A50();
    sub_1001F7D88();
    v11[12] = 3;
    sub_100024A50();
    sub_1001F7D88();
    v11[11] = 4;
    sub_100024A50();
    sub_1001F7D88();
    v11[10] = 5;
    sub_1001F7D98();
    v11[9] = 6;
    sub_1001F7D98();
    v11[8] = 7;
    sub_100024A50();
    sub_1001F7D18();
  }

  return (*(v5 + 8))(v9, v3);
}

void *sub_1001A7E88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BB0E8);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8, v9);
  v11 = &v28 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_1001A8848();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  LOBYTE(v40[0]) = 0;
  v12 = sub_1001F7C08();
  v14 = v13;
  sub_1001A8D40(1);
  v35 = sub_1001F7C78();
  v38 = v15;
  sub_1001A8D40(2);
  v34 = sub_1001F7C78();
  v37 = v16;
  sub_1001A8D40(3);
  v32 = sub_1001F7C78();
  v31 = v12;
  v36 = v17;
  sub_1001A8D40(4);
  v18 = sub_1001F7C78();
  v33 = v19;
  v30 = v18;
  sub_1001A8D40(5);
  v45 = sub_1001F7C88();
  sub_1001A8D40(6);
  LODWORD(v29) = sub_1001F7C88();
  v46 = 7;
  v20 = sub_1001F7C08();
  v45 &= 1u;
  LOBYTE(v12) = v29 & 1;
  v21 = *(v7 + 8);
  v22 = v20;
  v29 = v23;
  v21(v11, v5);
  v24 = v31;
  __src[0] = v31;
  __src[1] = v14;
  __src[2] = v35;
  v25 = v38;
  __src[3] = v38;
  __src[4] = v34;
  __src[5] = v37;
  __src[6] = v32;
  __src[7] = v36;
  __src[8] = v30;
  __src[9] = v33;
  LOBYTE(__src[10]) = v45;
  BYTE1(__src[10]) = v12;
  v26 = v29;
  __src[11] = v22;
  __src[12] = v29;
  sub_1001A88F0(__src, v40);
  sub_100019CCC(a1);
  v40[0] = v24;
  v40[1] = v14;
  v40[2] = v35;
  v40[3] = v25;
  v40[4] = v34;
  v40[5] = v37;
  v40[6] = v32;
  v40[7] = v36;
  v40[8] = v30;
  v40[9] = v33;
  v41 = v45;
  v42 = v12;
  v43 = v22;
  v44 = v26;
  sub_1001A8928(v40);
  return memcpy(a2, __src, 0x68uLL);
}

uint64_t sub_1001A832C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1001A83D0(void *a1)
{
  v2 = sub_1000183C4(&qword_1002BB0E0);
  sub_10001A278();
  v4 = v3;
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  v8 = &v10 - v7;
  sub_10001AE68(a1, a1[3]);
  sub_1001A889C();
  sub_1001F8198();
  sub_1001F7D88();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1001A8500(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BB0D0);
  sub_10001A278();
  v5 = v4;
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  v9 = &v12 - v8;
  v10 = sub_10001AE68(a1, a1[3]);
  sub_1001A889C();
  sub_1001F8178();
  if (!v1)
  {
    v10 = sub_1001F7C78();
    (*(v5 + 8))(v9, v3);
  }

  sub_100019CCC(a1);
  return v10;
}

uint64_t sub_1001A8654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A78A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001A867C(uint64_t a1)
{
  v2 = sub_1001A8848();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A86B8(uint64_t a1)
{
  v2 = sub_1001A8848();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001A86F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001A7E88(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_1001A875C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A832C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001A8788(uint64_t a1)
{
  v2 = sub_1001A889C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A87C4(uint64_t a1)
{
  v2 = sub_1001A889C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A8800@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001A8500(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1001A8848()
{
  result = qword_1002BB0C8;
  if (!qword_1002BB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0C8);
  }

  return result;
}

unint64_t sub_1001A889C()
{
  result = qword_1002BB0D8;
  if (!qword_1002BB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisableSubscriptionRequest.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1001A89F4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EditSubscriptionsHelperResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001A8AF8);
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

unint64_t sub_1001A8B34()
{
  result = qword_1002BB0F0;
  if (!qword_1002BB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0F0);
  }

  return result;
}

unint64_t sub_1001A8B8C()
{
  result = qword_1002BB0F8;
  if (!qword_1002BB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0F8);
  }

  return result;
}

unint64_t sub_1001A8BE4()
{
  result = qword_1002BB100;
  if (!qword_1002BB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB100);
  }

  return result;
}

unint64_t sub_1001A8C3C()
{
  result = qword_1002BB108;
  if (!qword_1002BB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB108);
  }

  return result;
}

unint64_t sub_1001A8C94()
{
  result = qword_1002BB110;
  if (!qword_1002BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB110);
  }

  return result;
}

unint64_t sub_1001A8CEC()
{
  result = qword_1002BB118[0];
  if (!qword_1002BB118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002BB118);
  }

  return result;
}

void MarkedCircularBuffer.init(initialCapacity:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CircularBuffer.init(initialCapacity:)(a1, a2);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
}

uint64_t MarkedCircularBuffer.removeFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_1001F74B8();
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v9 - v6;
  MarkedCircularBuffer.popFirst()();
  result = sub_10001C990(v7, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(a2, v7, v3);
  }

  __break(1u);
  return result;
}

void MarkedCircularBuffer.append(_:)()
{
  type metadata accessor for CircularBuffer();

  CircularBuffer.append(_:)();
}

Swift::Void __swiftcall MarkedCircularBuffer.mark()()
{
  v1 = sub_1001AA8D4();
  v4 = CircularBuffer.count.getter(v1, v2, v3);
  if (v4 >= 1)
  {
    *(v0 + 24) = v4 - 1;
    *(v0 + 32) = 0;
  }
}

unint64_t MarkedCircularBuffer.markedElementIndex.getter()
{
  if (*(v0 + 32))
  {
    return 0x200000000000000;
  }

  v2 = *(v0 + 24);
  MarkedCircularBuffer.startIndex.getter();
  sub_10010AF50();
  v4 = MarkedCircularBuffer.index(_:offsetBy:)(v3, v2);
  return v4 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v4) != 0) << 56);
}

uint64_t MarkedCircularBuffer._buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t MarkedCircularBuffer._markedIndexOffset.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MarkedCircularBuffer.popFirst()()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    v1 = *(v0 + 24);
    v2 = v1 < 1;
    v3 = v1 - 1;
    v4 = v2;
    if (v2)
    {
      v3 = 0;
    }

    *(v0 + 24) = v3;
    *(v0 + 32) = v4;
  }

  type metadata accessor for CircularBuffer();

  return CircularBuffer.popFirst()();
}

uint64_t MarkedCircularBuffer.isMarked(index:)(uint64_t a1)
{
  MarkedCircularBuffer.endIndex.getter();
  sub_10010AF50();
  result = static CircularBuffer.Index.< infix(_:_:)(a1 & 0x1FFFFFFFFFFFFFFLL, v4 | (v3 << 56));
  if (result)
  {
    if (*(v1 + 32))
    {
      return 0;
    }

    else
    {
      v6 = *(v1 + 24);
      MarkedCircularBuffer.startIndex.getter();
      sub_10010AF50();
      MarkedCircularBuffer.index(_:offsetBy:)(v7, v6);
      sub_10010AF50();

      return static CircularBuffer.Index.== infix(_:_:)(v9 | (v8 << 56), a1 & 0x1FFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MarkedCircularBuffer.markedElement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MarkedCircularBuffer.markedElementIndex.getter();
  v6 = *(a1 + 16);
  type metadata accessor for CircularBuffer.Index();
  sub_1001F74B8();
  return sub_1000B3104(sub_1001A931C, v6, v4, a2);
}

void (*MarkedCircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = sub_100064190(0x60uLL);
  *a1 = v7;
  v7[6] = a3;
  v7[7] = v3;
  v7[5] = a2;
  v7[8] = *(a3 + 16);
  sub_10002DFFC();
  *(v8 + 72) = v9;
  v11 = *(v10 + 64);
  v7[10] = sub_100064190(v11);
  v12 = sub_100064190(v11);
  v7[11] = v12;
  v13 = *(v3 + 32);
  v14 = *(v3 + 16);
  *v7 = *v3;
  *(v7 + 1) = v14;
  *(v7 + 32) = v13;
  MarkedCircularBuffer.subscript.getter(a3, v12);
  return sub_1001A952C;
}

void sub_1001A952C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v5 = v2[8];
    v6 = v2[9];
    v7 = v2[6];
    v8 = v2[5];
    v9 = sub_10010B118();
    v10(v9);
    MarkedCircularBuffer.subscript.setter(v3, v8 & 0x1FFFFFFFFFFFFFFLL, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    MarkedCircularBuffer.subscript.setter(*(*a1 + 88), v2[5] & 0x1FFFFFFFFFFFFFFLL, v2[6]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MarkedCircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v66 = a6;
  v67 = a5;
  v8 = a4;
  v69 = HIBYTE(a4) & 1;
  v10 = *(a6 + 16);
  sub_1001F74B8();
  sub_10002DFFC();
  v63 = v12;
  v64 = v11;
  __chkstk_darwin(v11, v13);
  v62 = &v62 - v14;
  sub_10002DFFC();
  v16 = v15;
  __chkstk_darwin(v17, v18);
  v65 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v62 - v22;

  sub_1001AA8E8();
  v27 = CircularBuffer.startIndex.getter(v24, v25, v26);
  v68 = a1;

  v28 = (v16 + 16);
  for (i = (v16 + 8); ; (*i)(v23, v10))
  {
    sub_1001AA8E8();
    v33 = CircularBuffer.endIndex.getter(v30, v31, v32);
    v34 = v27 & 0x1FFFFFFFFFFFFFFLL;
    if (static CircularBuffer.Index.== infix(_:_:)(v34, v33 & 0x1FFFFFFFFFFFFFFLL))
    {
      break;
    }

    sub_1001AA888();
    CircularBuffer.subscript.getter(v35, v36);
    v37 = sub_1001AA888();
    v27 = CircularBuffer.index(after:)(v37);
    if (v69)
    {
      v38 = 0x100000000000000;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38 & 0xFF00000000000000 | v8 & 0xFFFFFFFFFFFFFFLL;
    if (static CircularBuffer.Index.== infix(_:_:)(v39, v67 & 0x1FFFFFFFFFFFFFFLL))
    {
      (*i)(v23, v10);
      v34 = v27 & 0x1FFFFFFFFFFFFFFLL;
      break;
    }

    v40 = v65;
    (*v28)(v65, v23, v10);
    v41 = type metadata accessor for CircularBuffer();
    CircularBuffer.subscript.setter(v40, v39, v41, v42, v43, v44, v45, v46, v62, v63, v64, v65, v66, v67, v68, v69, v70, *(&v70 + 1));
    v47 = v7[1];
    v70 = *v7;
    v71 = v47;
    v72 = *(v7 + 32);
    v8 = MarkedCircularBuffer.index(after:)(v39, v66);
    v69 = HIBYTE(v8) != 0;
  }

  sub_1001AA8E8();
  v51 = CircularBuffer.endIndex.getter(v48, v49, v50);
  v52 = static CircularBuffer.Index.== infix(_:_:)(v34, v51 & 0x1FFFFFFFFFFFFFFLL);
  v53 = v69;
  if ((v52 & 1) == 0)
  {
    goto LABEL_15;
  }

  v54 = v62;
  sub_100018460(v62, 1, 1, v10);
  (*(v63 + 8))(v54, v64);
  if (v53)
  {
    v55 = 0x100000000000000;
  }

  else
  {
    v55 = 0;
  }

  v56 = static CircularBuffer.Index.== infix(_:_:)(v55 & 0xFF00000000000000 | v8 & 0xFFFFFFFFFFFFFFLL, v67 & 0x1FFFFFFFFFFFFFFLL);

  if ((v56 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    v58 = v62;
    sub_1001AA888();
    CircularBuffer.subscript.getter(v59, v60);
    v61 = sub_1001AA888();
    CircularBuffer.index(after:)(v61);
    sub_100018460(v58, 0, 1, v10);
    (*(v63 + 8))(v58, v64);

    __break(1u);
  }

  return result;
}

void (*MarkedCircularBuffer.subscript.modify())(uint64_t a1, char a2)
{
  sub_1000814DC();
  v5 = sub_100064190(0x60uLL);
  *v4 = v5;
  v5[10] = v0;
  v5[11] = v1;
  v5[8] = v3;
  v5[9] = v2;
  v6 = *(v1 + 32);
  v7 = *(v1 + 16);
  *v5 = *v1;
  *(v5 + 1) = v7;
  *(v5 + 32) = v6;
  v5[5] = MarkedCircularBuffer.subscript.getter(v3 & 0x1FFFFFFFFFFFFFFLL, v2 & 0x1FFFFFFFFFFFFFFLL);
  v5[6] = v8;
  v5[7] = v9;
  return sub_1001A9A1C;
}

void sub_1001A9A1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {

    sub_1001AA92C(v4);
  }

  else
  {
    sub_1001AA92C(v3);
  }

  free(v2);
}

void sub_1001A9AC8(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1();
  sub_1001AA8A0(v3);
  *(a2 + 4) = v4;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  sub_10010B320(v6);
}

void (*sub_1001A9B00(void *a1, unsigned int *a2, uint64_t a3))(uint64_t a1)
{
  v7 = sub_100064190(0x50uLL);
  *a1 = v7;
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  v7[32] = *(v3 + 32);
  v12 = *(v3 + 16);
  *v7 = *v3;
  *(v7 + 1) = v12;
  v13 = v11 == 0;
  v14 = 0x100000000000000;
  if (v13)
  {
    v14 = 0;
  }

  *(v7 + 9) = sub_1001A9BF8(v7 + 5, v14 | (v10 << 48) | (v9 << 32) | v8, a3);
  return sub_1001A9BB0;
}

void sub_1001A9BB0(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 72))();

  free(v1);
}

void (*sub_1001A9BF8(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = sub_100064190(*(v6 + 64));
  a1[2] = v7;
  MarkedCircularBuffer.subscript.getter(a3, v7);
  return sub_100107050;
}

unint64_t sub_1001A9CB4@<X0>(unsigned int *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v4 = 0x100000000000000;
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v3 = 0;
  }

  result = MarkedCircularBuffer.subscript.getter(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v4, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v3);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_1001A9D78(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0x100000000000000;
  if (!*(a2 + 7))
  {
    v3 = 0;
  }

  return MarkedCircularBuffer.subscript.setter(a1, v3 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, a3);
}

void (*sub_1001A9DA4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = sub_100064190(0x60uLL);
  *a1 = v7;
  v7[5] = v3;
  v7[6] = a3;
  v8 = *(a3 + 16);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64);
  v7[9] = sub_100064190(v10);
  v11 = sub_100064190(v10);
  v7[10] = v11;
  *(v7 + 9) = *a2;
  *(v7 + 17) = *(a2 + 4);
  *(v7 + 33) = *(a2 + 6);
  *(v7 + 88) = *(a2 + 7);
  v13 = *v3;
  v12 = v3[1];
  *(v7 + 32) = *(v3 + 32);
  *v7 = v13;
  *(v7 + 1) = v12;
  MarkedCircularBuffer.subscript.getter(a3, v11);
  return sub_1001A9ED4;
}

void sub_1001A9ED4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 33);
  v5 = *(*a1 + 34);
  v6 = *(*a1 + 36);
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 80);
  if (a2)
  {
    v9 = v2[7];
    v10 = v2[8];
    v11 = v2[6];
    v12 = v3 == 0;
    v13 = 0x100000000000000;
    if (v12)
    {
      v13 = 0;
    }

    v14 = v13 | (v4 << 48) | (v5 << 32);
    v15 = sub_10010B118();
    v16(v15);
    MarkedCircularBuffer.subscript.setter(v7, v14 | v6, v11);
    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v12 = v3 == 0;
    v17 = 0x100000000000000;
    if (v12)
    {
      v17 = 0;
    }

    MarkedCircularBuffer.subscript.setter(*(*a1 + 80), v17 | (v4 << 48) | (v5 << 32) | v6, v2[6]);
  }

  free(v8);
  free(v7);

  free(v2);
}

uint64_t sub_1001A9FD0(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0x100000000000000;
  if (*(a2 + 7))
  {
    v4 = 0x100000000000000;
  }

  else
  {
    v4 = 0;
  }

  if ((*(a2 + 15) & 1) == 0)
  {
    v3 = 0;
  }

  return MarkedCircularBuffer.subscript.setter(*a1, a1[1], a1[2], *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48) | v4, a2[2] | (*(a2 + 6) << 32) | (*(a2 + 14) << 48) | v3, a3);
}

void (*sub_1001AA034(void *a1, unsigned int *a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = sub_100064190(0x60uLL);
  v8 = v7;
  *a1 = v7;
  v7[8] = v3;
  v7[9] = a3;
  v9 = *a2;
  *(v7 + 9) = v9;
  v10 = *(a2 + 2);
  *(v7 + 17) = v10;
  v11 = *(a2 + 6);
  *(v7 + 33) = v11;
  v12 = *(a2 + 7);
  *(v7 + 86) = v12;
  v13 = a2[2];
  *(v7 + 20) = v13;
  v14 = *(a2 + 6);
  *(v7 + 42) = v14;
  v15 = *(a2 + 14);
  *(v7 + 87) = v15;
  v16 = *(a2 + 15);
  *(v7 + 88) = v16;
  v17 = v9 | (v10 << 32) | (v11 << 48);
  v18 = 0x100000000000000;
  if (v12)
  {
    v19 = 0x100000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = *v3;
  v21 = v3[1];
  *(v7 + 32) = *(v3 + 32);
  if ((v16 & 1) == 0)
  {
    v18 = 0;
  }

  *v7 = v20;
  *(v7 + 1) = v21;
  v7[5] = MarkedCircularBuffer.subscript.getter(v17 | v19, v13 | (v14 << 32) | (v15 << 48) | v18);
  v8[6] = v22;
  v8[7] = v23;
  return sub_1001AA130;
}

void sub_1001AA130(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {

    sub_1001AA908(v4);
  }

  else
  {
    sub_1001AA908(v3);
  }

  free(v2);
}

uint64_t sub_1001AA278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v5;
  v14 = *(v2 + 32);
  v6 = v14;
  *a2 = v13[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;

  v7 = MarkedCircularBuffer.startIndex.getter();
  v8 = v7;
  v9 = HIDWORD(v7);
  v10 = HIWORD(v7);
  v11 = HIBYTE(v7) != 0;
  result = (*(*(a1 - 8) + 8))(v13, a1);
  *(a2 + 36) = v8;
  *(a2 + 40) = v9;
  *(a2 + 42) = v10;
  *(a2 + 43) = v11;
  return result;
}

uint64_t sub_1001AA334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_1001AA388(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection._copyToContiguousArray()(a1, WitnessTable);
}

void sub_1001AA5F8(uint64_t a1@<X8>)
{
  sub_1001AA8B8();
  v3 = sub_1001AA8F8(v2);
  v5 = v4(v3);
  sub_1001AA8A0(v5);
  *(a1 + 4) = v6;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_10010B320(v8);
}

void sub_1001AA654(uint64_t a1)
{
  sub_1001AA8B8();
  v3 = sub_1001AA8F8(v2);
  v5 = v4(v3);
  sub_1001AA8A0(v5);
  *(a1 + 4) = v6;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_10010B320(v8);
}

void sub_1001AA698(uint64_t a1@<X8>)
{
  sub_1001AA8B8();
  v3 = sub_1001AA8F8(v2);
  v5 = MarkedCircularBuffer.index(_:offsetBy:)(v3, v4);
  sub_1001AA8A0(v5);
  *(a1 + 4) = v6;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_10010B320(v8);
}

uint64_t sub_1001AA6D8()
{
  sub_1000814DC();
  swift_getWitnessTable();

  return sub_1001F70F8();
}

unint64_t sub_1001AA750(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 7))
  {
    v2 = 0x100000000000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  return MarkedCircularBuffer.distance(from:to:)(v2 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v3 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2);
}

uint64_t sub_1001AA7A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001AA7DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1001AA81C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001AA908(uint64_t a1)
{

  return MarkedCircularBuffer.subscript.setter(a1, v3, v1, v4, v5, v2);
}

uint64_t sub_1001AA92C(uint64_t a1)
{

  return MarkedCircularBuffer.subscript.setter(a1, v1, v2, v5 & 0x1FFFFFFFFFFFFFFLL, v4 & 0x1FFFFFFFFFFFFFFLL, v3);
}

uint64_t sub_1001AA950()
{
  v0 = sub_1000C5388(15);
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = sub_1000C5388(15);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (v2 == v6 && v3 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1001F7EA8();
  }

  return v9 & 1;
}

uint64_t sub_1001AAA04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 145))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1001AAA44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001AAAC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1001AAB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1001AAB88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __src[1] = 0x65726F7453707041;
  __src[2] = 0xE800000000000000;
  __src[6] = 7368801;
  __src[7] = 0xE300000000000000;
  __src[13] = 0;
  LOBYTE(__src[14]) = 1;
  memset(&__src[15], 0, 32);
  __src[22] = 0;
  __src[21] = 0;
  LOBYTE(__src[23]) = 2;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  LOWORD(__src[0]) = 0;
  BYTE2(__src[0]) = 0;
  __src[27] = 0;
  __src[26] = 0;
  v5 = *(a1 + 88);
  v6 = *(v5 + 112);
  if (v6 >= 2)
  {
    v8 = 0xEC0000006E6F6974;
    if (v6 == 2)
    {
      sub_1001B33E4();
    }

    else
    {
      if (*(v5 + 32) == 1)
      {
        v8 = 0x800000010022D040;
        v2 = 0xD00000000000001DLL;
      }

      else
      {
        sub_1001B33E4();
      }

      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xEF65736168637275;
    v2 = 0x50207070412D6E49;
  }

  LOBYTE(__src[3]) = v7;
  type metadata accessor for AppIconRoute();
  v9 = sub_10005DC24(*(a1 + 56), *(a1 + 64));
  v11 = sub_1001B3448(v9, v10);
  v13 = v12;

  __src[4] = v11;
  __src[5] = v13;
  memcpy(__dst, (a1 + 144), sizeof(__dst));
  __src[9] = __dst[6];
  __src[10] = __dst[7];
  __src[11] = __dst[2];
  __src[12] = __dst[3];
  *&__src[19] = xmmword_100208700;
  type metadata accessor for OctaneSubscription();
  v14 = swift_dynamicCastClass();

  if (!v14)
  {
    sub_100085DE4();
    sub_1001F7428(v15);
    v17 = v16;
    [v16 doubleValue];
    v19 = v18;

    __src[13] = v19;
    LOBYTE(__src[14]) = 0;
    sub_1001E84A8();
    if (*(v5 + 112) == 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(a1 + 368);
    }

    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    sub_1001F7478(v20, v21);
    sub_1001F7438();
    v22 = *(a1 + 120);
    v42 = *(a1 + 104);
    v43 = v22;
    v44 = *(a1 + 136);
    __src[15] = sub_10004B450();
    __src[16] = v23;
  }

  v24 = [objc_opt_self() standardUserDefaults];
  v25 = sub_1001F6B48();
  v26 = [v24 BOOLForKey:v25];

  if ((v26 & 1) == 0)
  {
    LOBYTE(__src[25]) = 0;
  }

  v27 = *(a1 + 120);
  v40[1] = *(a1 + 104);
  v40[2] = v27;
  v41 = *(a1 + 136);

  v29 = sub_1000E087C(v28);

  if (v29)
  {
    v30 = *(v29 + 32);
    v31 = *(v29 + 40);
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {

      goto LABEL_26;
    }
  }

  v30 = sub_1001E8450();
  v31 = v33;
LABEL_26:
  v38[0] = v30;
  v38[1] = v31;
  v46._countAndFlagsBits = 0x6567616D69252520;
  v46._object = 0xEC0000002525305FLL;
  sub_1001F6CA8(v46);
  if (v26)
  {
    LOBYTE(__src[23]) = 1;
  }

  else
  {
    __src[27] = &off_10027A258;
  }

  sub_1000183C4(&qword_1002AC7E0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100208B20;
  *(v34 + 32) = v30;
  *(v34 + 40) = v31;
  v40[0] = *(a1 + 40);
  *(v34 + 48) = v40[0];
  *(v34 + 64) = v2;
  *(v34 + 72) = v8;
  __src[8] = v34;
  sub_1000552A0(v40, v38);
  sub_1001AE08C(a1);
  sub_1000ACF50(a1);
  memcpy(v37, __src, sizeof(v37));
  memcpy(v38, __src, sizeof(v38));
  sub_1001B0F54(v37, &v36);
  sub_1001B0F8C(v38);
  return memcpy(a2, v37, 0xE0uLL);
}

BOOL sub_1001AAFF8()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D338;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  return v1 != 0;
}

BOOL sub_1001AB048()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D370;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  return v1 != 0;
}

BOOL sub_1001AB0C0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001AAFF8();
  *a1 = result;
  return result;
}

BOOL sub_1001AB1C0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001AB048();
  *a1 = result;
  return result;
}

uint64_t sub_1001AB2B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001AB37C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

void sub_1001AB3A8()
{
  sub_1000DBF74();
  sub_1000183C4(&qword_1002BB258);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v1, v2);
  sub_100056624();
  v3 = sub_10016CB94();
  sub_1001B328C(v3, v4);
  sub_1001B1804();
  sub_1001B33F8();
  sub_10001E838();
  sub_1001F8198();
  sub_1001B1858();
  sub_1001B327C();
  sub_1001F7D58();
  if (!v0)
  {
    sub_1001B18AC();
    sub_1001B327C();
    sub_1001F7D58();
  }

  v5 = sub_10007B9A4();
  v6(v5);
  sub_1000DBF60();
}

void sub_1001AB4F8()
{
  sub_1000DBF74();
  v1 = v0;
  sub_1000183C4(&qword_1002BB318);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v2, v3);
  sub_10010B168();
  sub_100049718();
  sub_1001B1804();
  sub_1001B32FC();
  sub_10001E838();
  sub_1001F8178();
  sub_1001B1F74();
  sub_10013E7E8();
  sub_1001F7C48();
  sub_1001B1FC8();
  sub_10013E7E8();
  sub_1001F7C48();
  v4 = sub_100062888();
  v5(v4);
  sub_100019CCC(v1);
  sub_1000DBF60();
}

uint64_t sub_1001AB6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AB2B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001AB6D8(uint64_t a1)
{
  v2 = sub_1001B1804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001AB714(uint64_t a1)
{
  v2 = sub_1001B1804();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001AB750(_BYTE *a1@<X8>)
{
  sub_1001AB4F8();
  if (!v1)
  {
    *a1 = v3 & 1;
    a1[1] = HIBYTE(v3) & 1;
  }
}

uint64_t sub_1001AB7BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001AB87C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x726564616568;
  }
}

void sub_1001AB8AC()
{
  sub_10001E850();
  v3 = v2;
  v4 = sub_1000183C4(&qword_1002BB280);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  sub_10010B168();
  sub_1001B328C(v3, v3[3]);
  sub_1001B1954();
  sub_1001B32FC();
  sub_1001F8198();
  sub_1001F7D18();
  if (!v0)
  {
    sub_1001F7D18();
  }

  (*(v6 + 8))(v1, v4);
  sub_10001E868();
}

void sub_1001AB9F4()
{
  sub_10001E850();
  v2 = v1;
  sub_1000183C4(&qword_1002BB310);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_10010B168();
  sub_100049718();
  sub_1001B1954();
  sub_1001B32FC();
  sub_10001E838();
  sub_1001F8178();
  if (!v0)
  {
    sub_10013E7E8();
    sub_1001F7C08();
    sub_1001B32C4();
    sub_10013E7E8();
    sub_1001F7C08();
    v5 = sub_100062888();
    v6(v5);
  }

  sub_100019CCC(v2);
  sub_100062234();
  sub_10001E868();
}

uint64_t sub_1001ABB64()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D3A8;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1001ABBA8(char a1)
{
  result = 0x69614D6563697270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6275536563697270;
      break;
    case 3:
      result = 0x746C7561666564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001ABC50(char a1)
{
  if (a1)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_1001ABC8C(char a1)
{
  if (a1)
  {
    return 2036429415;
  }

  else
  {
    return 0x6B63616C62;
  }
}

BOOL sub_1001ABCB8()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D4C8;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  return v1 != 0;
}

uint64_t sub_1001ABD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AB7BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001ABD3C(uint64_t a1)
{
  v2 = sub_1001B1954();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001ABD78(uint64_t a1)
{
  v2 = sub_1001B1954();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001ABDB4(void *a1@<X8>)
{
  sub_1001AB9F4();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_1001ABE28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ABB64();
  *a1 = result;
  return result;
}

unint64_t sub_1001ABE58()
{
  v1 = sub_100056690();
  result = sub_1001ABBA8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001ABF54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ADDC0();
  *a1 = result;
  return result;
}

uint64_t sub_1001ABF8C()
{
  v1 = sub_100056690();
  result = sub_1001ABC50(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001AC088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ADDC0();
  *a1 = result;
  return result;
}

uint64_t sub_1001AC0C0()
{
  v1 = sub_100056690();
  result = sub_1001ABC8C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1001AC1A4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001ABCB8();
  *a1 = result;
  return result;
}

void sub_1001AC29C()
{
  sub_1000DBF74();
  v2 = v1;
  sub_1000183C4(&qword_1002BB2D0);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_100056624();
  v5 = sub_10016CB94();
  sub_1001B328C(v5, v6);
  sub_1001B1D28();
  sub_1001B33F8();
  sub_10001E838();
  sub_1001F8198();
  sub_1001B1D7C();
  sub_100024A88();
  sub_1001F7DC8();
  if (!v0)
  {
    if ((v2 & 0x100) != 0)
    {
      v9 = sub_1001F7EA8();

      if ((v9 & 1) == 0)
      {
        sub_1001B1DD0();
        sub_100024A88();
        sub_1001F7DC8();
      }
    }

    else
    {
    }

    if ((v2 & 0x10000) != 0)
    {
      v10 = sub_1001F7EA8();

      if ((v10 & 1) == 0)
      {
        sub_1001B1E24();
        sub_100024A88();
        sub_1001F7DC8();
      }
    }

    else
    {
    }

    if ((v2 & 0x1000000) != 0)
    {
      sub_100024A88();
      sub_1001F7D88();
    }

    if ((v2 & 0x100000000) == 0)
    {
      sub_1001B1E78();
      sub_100024A88();
      sub_1001F7DC8();
    }
  }

  v7 = sub_10007B9A4();
  v8(v7);
  sub_1000DBF60();
}

uint64_t sub_1001AC51C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000B7E74() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702521203 && a2 == 0xE400000000000000;
    if (v6 || (sub_1000B7E74() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684828002 && a2 == 0xE400000000000000;
      if (v7 || (sub_1000B7E74() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
        if (v8 || (sub_1000B7E74() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == sub_1001B335C() && a2 == v9)
        {

          return 4;
        }

        else
        {
          v11 = sub_1000B7E74();

          if (v11)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1001AC66C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 1684828002;
      break;
    case 3:
      result = 0x726F6C6F63;
      break;
    case 4:
      result = sub_1001B335C();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001AC700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AC51C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001AC728(uint64_t a1)
{
  v2 = sub_1001B1D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001AC764(uint64_t a1)
{
  v2 = sub_1001B1D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001AC810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001AC8D4(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x65756C6176;
  }
}

void sub_1001AC900()
{
  sub_10001E850();
  sub_1001B3308(v2, v3, v4, v5);
  sub_1000183C4(&qword_1002BB408);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  sub_100056624();
  sub_1001B328C(v0, v0[3]);
  sub_1001B2D8C();
  sub_1001B33F8();
  sub_1001F8198();
  sub_100062234();
  sub_1001F7D88();
  if (!v1)
  {
    sub_1001B1DD0();
    sub_1001B327C();
    sub_1001F7DC8();
  }

  v8 = sub_10007B9A4();
  v9(v8);
  sub_10001E868();
}

void sub_1001ACA40()
{
  sub_1000DBF74();
  v2 = v1;
  sub_1000183C4(&qword_1002BB428);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_10010B168();
  sub_100049718();
  sub_1001B2D8C();
  sub_1001B32FC();
  sub_10001E838();
  sub_1001F8178();
  if (!v0)
  {
    sub_1001B33A4();
    sub_1001B32C4();
    sub_1001B2E34();
    sub_1001B32D4();
    v5 = sub_10001E72C();
    v6(v5);
  }

  sub_100019CCC(v2);
  sub_100062234();
  sub_1000DBF60();
}

uint64_t sub_1001ACBA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001ACC70(char a1)
{
  if (a1)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x65756C6176;
  }
}

void sub_1001ACC98()
{
  sub_10001E850();
  sub_1001B3308(v2, v3, v4, v5);
  sub_1000183C4(&qword_1002BB3F8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  sub_100056624();
  sub_1001B328C(v0, v0[3]);
  sub_1001B2D38();
  sub_1001B33F8();
  sub_1001F8198();
  sub_100062234();
  sub_1001F7D88();
  if (!v1)
  {
    sub_1001B1D7C();
    sub_1001B327C();
    sub_1001F7DC8();
  }

  v8 = sub_10007B9A4();
  v9(v8);
  sub_10001E868();
}

void sub_1001ACDD4()
{
  sub_1000DBF74();
  v2 = v1;
  sub_1000183C4(&qword_1002BB418);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_10010B168();
  sub_100049718();
  sub_1001B2D38();
  sub_1001B32FC();
  sub_10001E838();
  sub_1001F8178();
  if (!v0)
  {
    sub_1001B33A4();
    sub_1001B32C4();
    sub_1001B2DE0();
    sub_1001B32D4();
    v5 = sub_10001E72C();
    v6(v5);
  }

  sub_100019CCC(v2);
  sub_100062234();
  sub_1000DBF60();
}

uint64_t sub_1001ACF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AC810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001ACF6C(uint64_t a1)
{
  v2 = sub_1001B2D8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001ACFA8(uint64_t a1)
{
  v2 = sub_1001B2D8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001ACFE4(uint64_t a1@<X8>)
{
  sub_1001ACA40();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
  }
}

Swift::Int sub_1001AD038(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t sub_1001AD08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001ACBA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001AD0B4(uint64_t a1)
{
  v2 = sub_1001B2D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001AD0F0(uint64_t a1)
{
  v2 = sub_1001B2D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001AD12C(uint64_t a1@<X8>)
{
  sub_1001ACDD4();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_1001AD17C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_10001AE68(a1, a1[3]);
  v7 = sub_1001F8188();
  if (a4 >> 6)
  {
    sub_1001B3410(v7, v8, v9, v10, v11, v12, v13, v14, a2, a3, v16, v17[0], v18, v19, v20);
    if (a4 >> 6 == 1)
    {
      sub_1001B1F20();
    }

    else
    {
      sub_1001B1ECC();
    }

    sub_1001F7F18();
  }

  else
  {
    sub_10004BD98(v17, v20);
    sub_1001F7EE8();
  }

  return sub_100019CCC(v17);
}

void sub_1001AD2B0()
{
  sub_10001E850();
  v113 = v1;
  v2 = v0;
  v4 = v3;
  v5 = sub_1000183C4(&qword_1002BB298);
  sub_10001A278();
  v110 = v6;
  __chkstk_darwin(v7, v8);
  v105 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v102 - v12;
  __chkstk_darwin(v14, v15);
  v17 = &v102 - v16;
  sub_1001B328C(v4, v4[3]);
  v107 = sub_1001B19FC();
  sub_1001F8198();
  v19 = *v2;
  v18 = *(v2 + 8);
  v20 = *(v2 + 16);
  v21 = *(v2 + 32);
  *&v112 = v5;
  v108 = v17;
  switch((v21 >> 4) & 3)
  {
    case 1u:
      v112 = v20;
      *&v117 = v19;
      *(&v117 + 1) = v18;
      LOBYTE(v114) = 0;
      sub_1001B3430();
      sub_1001B31D8();
      sub_1001B1C64(v80, &qword_1002AEBE0);
      sub_1001B31F0();
      v81 = v113;
      sub_1001F7DC8();
      if (v81)
      {
        goto LABEL_3;
      }

      *&v117 = v112;
      LOBYTE(v114) = 1;
      sub_1001B3430();
      sub_1001B3264();
      sub_1001B1CB8(v82, &qword_1002BB2C0);
      sub_1001B31F0();
      goto LABEL_21;
    case 2u:
      LOBYTE(v117) = 2;
      sub_1001F7D08();
      sub_1001B3320();
      v104 = v13;
      sub_1001F7CF8();
      v106 = (v110 + 8);
      v26 = (v19 + 64);
      v103 = v19;
      v27 = *(v19 + 16);
      v28 = v113;
      if (!v27)
      {
        goto LABEL_12;
      }

      while (2)
      {
        v113 = v28;
        v109 = v27;
        v110 = v26;
        v29 = *(v26 - 4);
        v30 = *(v26 - 3);
        v31 = *(v26 - 2);
        v32 = *(v26 - 1);
        v33 = *v26;
        sub_10004BD98(&v117, v119);
        v34 = sub_100013EFC();
        sub_1001B1AA4(v34, v30, v31, v32, v33);
        sub_1001F7E38();
        v35 = (v33 >> 4) & 3;
        v111 = v29;
        if (v35)
        {
          v5 = v112;
          if (v35 != 1)
          {
            sub_1001B1BAC(v111, v30, v31, v32, v33);
            sub_1001B1A50();
            swift_allocError();
            *v89 = 0;
            swift_willThrow();
            v90 = *v106;
            (*v106)(v105, v5);
            v91 = sub_1001B3404();
            (v90)(v91);
            v92 = sub_1001B3350();
            (v90)(v92);
            goto LABEL_29;
          }

          v114 = v111;
          v115 = v30;

          sub_1000183C4(&qword_1002AEBE0);
          sub_1001B31D8();
          sub_1001B1C64(&qword_1002BB2B8, &qword_1002AEBE0);
          sub_1001B3238();
          v36 = v113;
          sub_1001F7DC8();
          v28 = v36;
          if (!v36)
          {

            v114 = v31;
            sub_1000183C4(&qword_1002BB2C0);
            sub_1001B3264();
            sub_1001B1CB8(&qword_1002BB2C8, &qword_1002BB2C0);
            sub_1001B3238();
            sub_1001F7DC8();
            sub_1001B32A4();
            sub_1001B1BAC(v37, v38, v39, v40, v41);
            v42 = sub_10016CB94();
            v43(v42);

            goto LABEL_11;
          }

          sub_1001B32A4();
        }

        else
        {
          v114 = v29;
          v115 = v30;

          sub_1000C89E4(v31, v32, v33);
          sub_1000183C4(&qword_1002AEBE0);
          sub_1001B31D8();
          sub_1001B1C64(&qword_1002BB2B8, &qword_1002AEBE0);
          sub_1001B3238();
          v5 = v112;
          v44 = v113;
          sub_1001F7DC8();
          v28 = v44;
          if (!v44)
          {

            v114 = v31;
            v115 = v32;
            v116 = v33;
            sub_1001B1B58();
            sub_1001B3238();
            sub_1001F7DC8();
            v45 = sub_1001B3220();
            sub_1001B1BAC(v45, v46, v47, v48, v49);
            v50 = sub_10016CB94();
            v51(v50);
            sub_1001B3388();
LABEL_11:
            v26 = v110 + 40;
            v27 = v109 - 1;
            if (v109 == 1)
            {
LABEL_12:
              v114 = v103;
              sub_1001B3430();
              sub_1001B3248();
              sub_1001B1CB8(v52, v53);
              sub_1001B3238();
              v54 = v104;
              sub_1001F7DC8();
              v55 = *v106;
              (*v106)(v54, v5);
              v56 = sub_1001B3350();
              (v55)(v56);
              sub_100019CCC(&v117);
              goto LABEL_30;
            }

            continue;
          }

          sub_1001B3388();
          v93 = sub_1001B3220();
        }

        break;
      }

      sub_1001B1BAC(v93, v94, v95, v96, v97);
      v98 = *v106;
      v99 = sub_10016CB94();
      (v98)(v99);
      v100 = sub_1001B3404();
      (v98)(v100);
      v101 = sub_1001B3350();
      (v98)(v101);

LABEL_29:
      sub_100019CCC(&v117);
LABEL_30:
      sub_10001E868();
      return;
    case 3u:
      sub_1001B3320();
      sub_1001F7CF8();
      v57 = *(v19 + 16);
      v58 = (v19 + 64);
      if (!v57)
      {
        goto LABEL_17;
      }

      while (2)
      {
        v59 = *v58;
        if ((*v58 & 0x30) != 0)
        {
          sub_1001B1A50();
          swift_allocError();
          *v83 = 1;
          swift_willThrow();
          v84 = sub_1001B320C();
          v85(v84);
        }

        else
        {
          v60 = *(v58 - 1);
          v114 = *(v58 - 2);
          v115 = v60;
          v116 = v59;
          v111 = v120;
          sub_10004BD98(&v117, v119);
          v61 = sub_1001B3338();
          sub_1001B1AA4(v61, v62, v63, v64, v65);
          v66 = sub_1001B32B4();
          sub_1000C89E4(v66, v67, v68);
          sub_1001B1B58();
          v69 = v113;
          sub_1001F7E48();
          v113 = v69;
          v70 = sub_1001B3338();
          if (!v69)
          {
            sub_1001B1BAC(v70, v71, v72, v73, v74);
            v75 = sub_1001B32B4();
            sub_1000C89CC(v75, v76, v77);
            v58 += 40;
            if (!--v57)
            {
LABEL_17:
              v78 = sub_1001B320C();
              v79(v78);
              goto LABEL_29;
            }

            continue;
          }

          sub_1001B1BAC(v70, v71, v72, v73, v74);
          (*(v110 + 1))(v108, v112);
          v86 = sub_1001B32B4();
          sub_1000C89CC(v86, v87, v88);
        }

        goto LABEL_29;
      }

    default:
      v112 = v20;
      *&v117 = v19;
      *(&v117 + 1) = v18;
      LOBYTE(v114) = 0;
      sub_1001B3430();
      sub_1001B31D8();
      sub_1001B1C64(v22, &qword_1002AEBE0);
      sub_1001B31F0();
      v23 = v113;
      sub_1001F7DC8();
      if (!v23)
      {
        v117 = v112;
        v118 = v21 & 0xCF;
        LOBYTE(v114) = 1;
        sub_1001B1B58();
LABEL_21:
        sub_1001F7DC8();
      }

LABEL_3:
      v24 = sub_1001B320C();
      v25(v24);
      goto LABEL_30;
  }
}

uint64_t sub_1001ADBF0()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D500;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001ADC34(char a1)
{
  if (!a1)
  {
    return 0x726564616568;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x7475626972747461;
}

uint64_t sub_1001ADCB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ADBF0();
  *a1 = result;
  return result;
}

uint64_t sub_1001ADCE4()
{
  v1 = sub_100056690();
  result = sub_1001ADC34(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001ADD14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ADBF0();
  *a1 = result;
  return result;
}

uint64_t sub_1001ADD3C(uint64_t a1)
{
  v2 = sub_1001B19FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001ADD78(uint64_t a1)
{
  v2 = sub_1001B19FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001ADDC0()
{
  sub_100164DFC();
  v3._rawValue = v2;
  v6._object = v0;
  sub_1001F7BD8(v3, v6);
  sub_100013EFC();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001ADE08(char a1)
{
  if (a1)
  {
    return 0x6269726373627553;
  }

  else
  {
    return 7954768;
  }
}

uint64_t sub_1001ADE78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ADDC0();
  *a1 = result;
  return result;
}

uint64_t sub_1001ADEB0()
{
  v1 = sub_100056690();
  result = sub_1001ADE08(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1001ADFA0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001ADF88(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001AE08C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 200);
  if (v4 == 1)
  {
    sub_1000183C4(&qword_1002ADC98);
    v5 = swift_allocObject();
    *(v5 + 1) = xmmword_1001FE9E0;
    *(v5 + 2) = xmmword_100216590;
    v5[6] = 0xD000000000000050;
    v5[7] = 0x800000010022D060;
    *(v5 + 64) = 0;
    memcpy(__dst, (a1 + 224), sizeof(__dst));
    memcpy(__src, (a1 + 224), sizeof(__src));
    if (sub_100086FB4(__src) != 1)
    {
      memcpy(v54, __src, sizeof(v54));
      memcpy(v47, __dst, sizeof(v47));
      sub_10008703C(v47, v46);
      v6 = sub_100194FC4(1);
      v8 = v7;
      v9 = v5[2];
      if (v9 >= v5[3] >> 1)
      {
        sub_100032CE4();
        v5 = v38;
      }

      sub_10004BDE8(__dst, &qword_1002B1910);
      v5[2] = v9 + 1;
      v10 = &v5[5 * v9];
      *(v10 + 2) = xmmword_1002165A0;
      v10[6] = v6;
      v10[7] = v8;
      *(v10 + 64) = 0;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v11 = *(a1 + 88);
  type metadata accessor for OctaneSubscription();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;

    v14 = sub_1001AE668(v13, a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v4)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100032CE4();
        v5 = v34;
      }

      v16 = v5[2];
      if (v16 >= v5[3] >> 1)
      {
        sub_100032CE4();
        v5 = v35;
      }

      v5[2] = v16 + 1;
      v17 = &v5[5 * v16];
      v17[4] = v14;
      v17[5] = 0;
      v17[6] = 0;
      v17[7] = 0;
      *(v17 + 64) = 32;
      goto LABEL_41;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100032CE4();
      v5 = v36;
    }

    v19 = v5[2];
    v20 = v19 + 1;
    if (v19 >= v5[3] >> 1)
    {
      sub_100032CE4();
      v5 = v37;
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_41;
    }

    sub_1000183C4(&qword_1002ADC98);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001FEBE0;
    sub_1001E84A8();
    if (*(v11 + 112) == 3)
    {
      v18 = 1;
    }

    else
    {
      v18 = *(a1 + 368);
    }

    if (v18 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v18;
    }

    sub_1001F7478(v18, v21);
    sub_1001F7438();
    memcpy(v52, (a1 + 144), sizeof(v52));
    v22 = *(a1 + 120);
    v49 = *(a1 + 104);
    v50 = v22;
    v51 = *(a1 + 136);
    v23 = sub_10004B450();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = v23;
    *(v14 + 56) = v24;
    *(v14 + 64) = 0x80;
    *(v14 + 72) = 0;
    *(v14 + 80) = 0;
    *(v14 + 88) = xmmword_1002165B0;
    *(v14 + 104) = -126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032CE4();
      v5 = v43;
    }

    v19 = v5[2];
    v20 = v19 + 1;
    if (v19 >= v5[3] >> 1)
    {
      sub_100032CE4();
      v5 = v44;
    }
  }

  v5[2] = v20;
  v25 = &v5[5 * v19];
  v25[4] = v14;
  v25[5] = 0;
  v25[6] = 0;
  v25[7] = 0;
  *(v25 + 64) = 48;
  memcpy(v47, (a1 + 224), sizeof(v47));
  memcpy(__dst, (a1 + 224), sizeof(__dst));
  if (sub_100086FB4(__dst) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032CE4();
      v5 = v39;
    }

    v26 = v5[2];
    if (v26 >= v5[3] >> 1)
    {
      sub_100032CE4();
      v5 = v40;
    }

    v5[2] = v26 + 1;
    v27 = &v5[5 * v26];
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = 0xD000000000000050;
    v27[7] = 0x800000010022D060;
    *(v27 + 64) = 0;
  }

  else
  {
    memcpy(__src, __dst, sizeof(__src));
    memcpy(v46, v47, sizeof(v46));
    sub_10008703C(v46, &v45);
    sub_100194FC4(0);
    v28 = sub_1001410B4();
    v30 = v29;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032CE4();
      v5 = v41;
    }

    v31 = v5[2];
    if (v31 >= v5[3] >> 1)
    {
      sub_100032CE4();
      v5 = v42;
    }

    sub_10004BDE8(v47, &qword_1002B1910);
    v5[2] = v31 + 1;
    v32 = &v5[5 * v31];
    v32[4] = 0;
    v32[5] = 0;
    v32[6] = v28;
    v32[7] = v30;
    *(v32 + 64) = 0;
  }

LABEL_41:

  *(v2 + 208) = v5;
  return result;
}

uint64_t sub_1001AE668(uint64_t a1, uint64_t a2)
{
  v221 = sub_1001F6508();
  v193 = *(v221 - 8);
  __chkstk_darwin(v221, v4);
  v212 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1001F65B8();
  __chkstk_darwin(v219, v6);
  v218 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1001F73E8();
  v226 = *(v217 - 8);
  __chkstk_darwin(v217, v8);
  v216 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000183C4(&qword_1002AE9F0);
  __chkstk_darwin(v10 - 8, v11);
  v215 = &v190 - v12;
  v13 = sub_1000183C4(&unk_1002B3450);
  v15 = __chkstk_darwin(v13 - 8, v14);
  v228 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v200 = &v190 - v18;
  v223 = sub_1001F60C8();
  v19 = *(v223 - 8);
  __chkstk_darwin(v223, v20);
  v222 = &v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v199 = v22;
  *(v22 + 16) = _swiftEmptyArrayStorage;
  v201 = (v22 + 16);
  v23 = *(a1 + 176);
  v24 = *(a1 + 184);
  v25 = *(a2 + 88);
  sub_1001E84A8();
  if (*(v25 + 112) == 3)
  {
    v26 = 1;
  }

  else
  {
    v26 = *(a2 + 368);
  }

  if (v26 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  sub_1001F7478(v26, v27);
  sub_1001F7438();
  memcpy(v244, (a2 + 144), sizeof(v244));
  v28 = *(a2 + 120);
  v241 = *(a2 + 104);
  v242 = v28;
  v243 = *(a2 + 136);
  v29 = sub_10004B450();
  v31 = v30;
  v32 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v32 setUnitsStyle:3];
  [v32 setAllowedUnits:4124];
  v33 = v222;
  sub_1001EC818(v23, v24);
  isa = sub_1001F6098().super.isa;
  v213 = *(v19 + 8);
  v214 = v19 + 8;
  v213(v33, v223);
  v35 = [v32 stringFromDateComponents:isa];

  if (v35)
  {
    v36 = sub_1001F6B58();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  if (v23 == 1)
  {
    __dst[0] = v36;
    __dst[1] = v38;
    v236[0] = 32;
    v236[1] = 0xE100000000000000;
    sub_10001C790();
    v39 = sub_1001F75B8();

    __dst[0] = sub_10005E8A0(1, v39);
    __dst[1] = v40;
    __dst[2] = v41;
    __dst[3] = v42;
    sub_1000183C4(&qword_1002AF8A8);
    sub_1001B0FF4(&qword_1002AF8B0, &qword_1002AF8A8);
    v36 = sub_1001F6A68();
    v38 = v43;
    swift_unknownObjectRelease();
  }

  v44 = v200;
  v45 = v221;
  v46 = sub_1001B0060(v29, v31, v36, v38, v23 != 1);
  v48 = v47;

  memcpy(v235, (a2 + 224), sizeof(v235));
  v229 = a2;
  memcpy(v236, (a2 + 224), sizeof(v236));
  v49 = sub_100086FB4(v236);
  v191 = v46;
  v192 = v48;
  if (v49 == 1)
  {
    sub_100018460(v44, 1, 1, v45);
    v195 = 0;
    v50 = v201;
    v51 = _swiftEmptyArrayStorage;
  }

  else
  {
    memcpy(__dst, v235, 0x90uLL);
    sub_10008703C(__dst, v230);
    sub_1000C5464(4);
    v50 = v201;
    v51 = _swiftEmptyArrayStorage;
    if (v52)
    {
      v53 = 1;
    }

    else
    {
      sub_1001F6418();
      v53 = 0;
    }

    sub_100018460(v44, v53, 1, v45);
    v195 = sub_1000258F4(__dst[7]) != 2 && sub_10001C990(v44, 1, v45) != 1;
  }

  sub_1000183C4(&qword_1002BB210);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_100200CC0;
  v55 = v229;
  v240 = *(v229 + 96);
  v57 = *(v229 + 24);
  v239 = *(v229 + 16);
  v56 = v239;
  *(v54 + 32) = v240;
  *(v54 + 40) = v56;
  v238 = v57;
  v237 = *(v55 + 32);
  v58 = v237;
  *(v54 + 48) = v57;
  *(v54 + 56) = v58;
  __dst[0] = _swiftEmptyArrayStorage;
  sub_100057CB8(&v240, v230, &qword_1002AD560);
  sub_100057CB8(&v239, v230, &qword_1002BB218);
  sub_100057CB8(&v238, v230, &qword_1002BB220);
  sub_100057CB8(&v237, v230, &qword_1002BB228);
  for (i = 0; i != 4; ++i)
  {
    if (i > 3)
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v46 = *(v54 + 8 * i + 32);
    if (v46)
    {

      sub_1001F6F08();
      if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1001F6F58();
      }

      sub_1001F6F98();
      v51 = __dst[0];
    }
  }

  swift_setDeallocating();
  sub_1001E56F0();
  v198 = swift_allocBox();
  v61 = v60;
  v62 = v228;
  sub_100057CB8(v200, v228, &unk_1002B3450);
  if (sub_10001C990(v62, 1, v45) == 1)
  {
    sub_1001F64E8();
    if (sub_10001C990(v62, 1, v45) != 1)
    {
      sub_10004BDE8(v62, &unk_1002B3450);
    }
  }

  else
  {
    (*(v193 + 32))(v61, v62, v45);
  }

  v63 = sub_10013B560(v51);
  if (!v63)
  {

    memcpy(v230, v235, 0x90uLL);
    v165 = sub_100086FB4(v230);
    v166 = v229;
    v167 = v227;
    if (v165 != 1)
    {
      memcpy(__dst, v230, 0x90uLL);
      v168 = *(v227 + 200);
      if (v168 != 1 || sub_1000258F4(v230[7]) != 2)
      {
        v163 = 0x676E697472617453;
        if (sub_1000258F4(v230[7]) == 2)
        {
          v164 = 0xEE007961646F7420;
          sub_10004BDE8(v235, &qword_1002B1910);
          if ((v168 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v233 = 0x676E697472617453;
          v234 = 0xE900000000000020;
          v257._countAndFlagsBits = sub_100194E6C();
          sub_1001F6CA8(v257);

          sub_10004BDE8(v235, &qword_1002B1910);
          v163 = v233;
          v164 = v234;
          if ((v168 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        goto LABEL_106;
      }

      sub_10004BDE8(v235, &qword_1002B1910);
    }

    if (*(v167 + 200) != 1)
    {
      if (*(v166 + 377))
      {
        v164 = 0xEE007961646F7420;
      }

      else
      {
        v164 = 0;
      }

      if (*(v166 + 377))
      {
        v163 = 0x676E697472617453;
      }

      else
      {
        v163 = 0;
      }

      goto LABEL_109;
    }

    v164 = 0;
LABEL_106:
    sub_1000183C4(&qword_1002ADC90);
    v169 = swift_allocObject();
    *(v169 + 16) = xmmword_1001FE9E0;
    v170 = v192;
    *(v169 + 32) = v191;
    *(v169 + 40) = v170;
    *(v169 + 48) = 65;
    if (v164)
    {
      sub_100032CC8();
      v169 = v171;
      v230[18] = v171;
      sub_1000C8228();
      v172 = *(v169 + 16);
      if (v172 >= 2)
      {
        swift_beginAccess();
        sub_1000320B4();
        v173 = *(*v50 + 16);
        sub_1000322A0();
        v174 = *v50;
        *(v174 + 16) = v173 + 1;
        v175 = v174 + 40 * v173;
        *(v175 + 32) = xmmword_1002165E0;
        *(v175 + 48) = v169;
        *(v175 + 56) = 0;
        v176 = 16;
LABEL_114:
        *(v175 + 64) = v176;
LABEL_117:
        *v50 = v174;
        swift_endAccess();
        goto LABEL_118;
      }

      if (!v172)
      {

        goto LABEL_118;
      }
    }

    v183 = *(v169 + 32);
    v184 = *(v169 + 40);
    v185 = *(v169 + 48);
    sub_1000C89E4(v183, v184, v185);

    swift_beginAccess();
    sub_1000320B4();
    v186 = *(*v50 + 16);
    sub_1000322A0();
    v174 = *v50;
    *(v174 + 16) = v186 + 1;
    v187 = v174 + 40 * v186;
    *(v187 + 32) = xmmword_1002165E0;
    *(v187 + 48) = v183;
    *(v187 + 56) = v184;
    *(v187 + 64) = v185;
    goto LABEL_117;
  }

  v64 = v63;
  if (v63 >= 1)
  {
    v225 = *(v227 + 200);
    v202 = *(v229 + 376);
    v210 = v244[2];
    v211 = v51 & 0xC000000000000001;
    v208 = v241;
    v209 = v244[3];
    v207 = *(&v241 + 1);
    swift_beginAccess();
    swift_beginAccess();
    v65 = 0;
    v206 = (v226 + 8);
    v220 = (v193 + 16);
    v194 = xmmword_1002165D0;
    v197 = xmmword_1001FEBE0;
    v196 = xmmword_1002165C0;
    v203 = v51;
    v204 = v61;
    v205 = v64;
    while (2)
    {
      v66 = v50;
      v67 = v65;
      if (v211)
      {
        v68 = sub_1001F7808();
      }

      else
      {
        v68 = *(v51 + 8 * v65 + 32);
      }

      sub_100161BA8();
      v229 = v69;
      LODWORD(v228) = v70;
      v71 = *(v68 + 48);
      if (*(v68 + 56))
      {
        v71 = 1;
      }

      v227 = v71;
      v72 = v215;
      sub_100018460(v215, 1, 1, v219);

      sub_1001F7448();
      v74 = v73;

      sub_10004BDE8(v72, &qword_1002AE9F0);
      if ((v74 & 0x100000000) != 0)
      {
        sub_1001F7408(v75, 0.0);
      }

      v226 = v67 + 1;

      sub_1001F6588();
      v76 = v216;
      sub_1001F73D8();
      sub_10004BE48();
      v77 = v217;
      sub_1001F7458();
      (*v206)(v76, v77);
      v45 = __dst[1];
      v224 = __dst[0];
      v78 = 1;
      v50 = v66;
      switch(*(v68 + 57))
      {
        case 2:
          break;
        default:
          v78 = sub_1001F7EA8();
          break;
      }

      v79 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v79 setUnitsStyle:3];
      [v79 setAllowedUnits:4124];
      v80 = v222;
      v81 = v228;
      sub_1001EC818(v229, v228);
      v82 = sub_1001F6098().super.isa;
      v213(v80, v223);
      v83 = [v79 stringFromDateComponents:v82];

      if (v83)
      {
        v84 = sub_1001F6B58();
        v86 = v85;

        if ((v78 & 1) == 0)
        {
LABEL_49:

          if (v225)
          {
            __dst[0] = v84;
            __dst[1] = v86;
            sub_10001C790();
            v90 = sub_1001F75C8();
          }

          else
          {
            v90 = sub_1001F6BB8();
          }

          v46 = v90;
          v92 = v91;

          v93 = *v50;
          v94 = *(*v50 + 16) != 0;
          switch(*(v68 + 57))
          {
            case 1:

              if ((v225 & 1) == 0)
              {

                v127 = sub_1001B01D8(v229, v81);
                v129 = v128;
                sub_1000183C4(&qword_1002ADC98);
                v130 = swift_allocObject();
                *(v130 + 16) = v197;
                __dst[0] = v127;
                __dst[1] = v129;
                v251._countAndFlagsBits = 0x7274206565726620;
                v251._object = 0xEB000000006C6169;
                sub_1001F6CA8(v251);
                v131 = __dst[0];
                v132 = __dst[1];
                *(v130 + 32) = 0;
                *(v130 + 40) = 0;
                *(v130 + 48) = v131;
                *(v130 + 56) = v132;
                *(v130 + 64) = v94 | 0x80;
                v133 = sub_1001B0274(v199, v200);
                *(v130 + 72) = 0;
                *(v130 + 80) = 0;
                *(v130 + 88) = v133;
                *(v130 + 96) = v134;
                *(v130 + 104) = -126;
                swift_beginAccess();
                v126 = v130;
                goto LABEL_78;
              }

              __dst[0] = v46;
              __dst[1] = v92;
              v248._countAndFlagsBits = 0x6565724620;
              v248._object = 0xE500000000000000;
              sub_1001F6CA8(v248);
              v99 = __dst[0];
              v100 = __dst[1];
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v45 = v221;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100032CE4();
                v93 = v155;
              }

              v101 = v205;
              v106 = *(v93 + 16);
              if (v106 >= *(v93 + 24) >> 1)
              {
                sub_100032CE4();
                v93 = v156;
              }

              *(v93 + 16) = v106 + 1;
              v103 = v93 + 40 * v106;
              v104 = v194;
              goto LABEL_70;
            case 2:
              v95 = v227 * v229;
              v50 = ((v227 * v229) >> 64);
              if (v225)
              {
                if (v50 != (v95 >> 63))
                {
                  goto LABEL_122;
                }

                v96 = sub_1001ECA84(v81);
                v98 = v97;
                if (v95 == 1)
                {
                  v228 = v96;
                }

                else
                {
                  __dst[0] = v96;
                  __dst[1] = v97;
                  v253._countAndFlagsBits = 115;
                  v253._object = 0xE100000000000000;
                  sub_1001F6CA8(v253);
                  v98 = __dst[1];
                  v228 = __dst[0];
                }

                sub_1000183C4(&qword_1002ADC90);
                v141 = swift_allocObject();
                *(v141 + 16) = v197;
                v231 = v95;
                __dst[0] = sub_1001F7E28();
                __dst[1] = v142;
                v254._countAndFlagsBits = 32;
                v254._object = 0xE100000000000000;
                sub_1001F6CA8(v254);
                v255._countAndFlagsBits = v228;
                v255._object = v98;
                sub_1001F6CA8(v255);

                v143 = __dst[1];
                *(v141 + 32) = __dst[0];
                *(v141 + 40) = v143;
                *(v141 + 48) = 0;
                v144 = sub_1001B0060(v224, v45, v46, v92, v229 != 1);
                v146 = v145;

                *(v141 + 56) = v144;
                *(v141 + 64) = v146;
                *(v141 + 72) = 65;
                v50 = v201;
                swift_beginAccess();
                sub_1000320B4();
                v147 = *(*v50 + 16);
                sub_1000322A0();
                v148 = *v50;
                *(v148 + 16) = v147 + 1;
                v149 = v148 + 40 * v147;
                *(v149 + 32) = v196;
                *(v149 + 48) = v141;
                *(v149 + 56) = 0;
                *(v149 + 64) = 16;
                *v50 = v148;
LABEL_83:
                swift_endAccess();
LABEL_84:
                v45 = v221;
                v101 = v205;
              }

              else
              {
                v46 = sub_1001B0060(v224, v45, v46, v92, v229 != 1);
                v224 = v107;

                v108 = v201;
                swift_beginAccess();
                sub_1000320B4();
                v109 = *(*v108 + 16);
                sub_1000322A0();
                v110 = *v108;
                *(v110 + 16) = v109 + 1;
                v111 = v110 + 40 * v109;
                *(v111 + 32) = 0;
                *(v111 + 40) = 0;
                v112 = v224;
                *(v111 + 48) = v46;
                *(v111 + 56) = v112;
                *(v111 + 64) = v94 | 0x80;
                *v108 = v110;
                swift_endAccess();
                v113 = v195;
                if (v109)
                {
                  v113 = 1;
                }

                if (v113)
                {
                  v114 = v199;
                  v115 = sub_1001B0274(v199, v200);
                  v117 = v116;
                  swift_beginAccess();
                  sub_1000320B4();
                  v118 = *(*(v114 + 16) + 16);
                  sub_1000322A0();
                  v119 = *(v114 + 16);
                  *(v119 + 16) = v118 + 1;
                  v120 = v119 + 40 * v118;
                  *(v120 + 32) = 0;
                  *(v120 + 40) = 0;
                  *(v120 + 48) = v115;
                  *(v120 + 56) = v117;
                  *(v120 + 64) = -126;
                  *(v114 + 16) = v119;
                  swift_endAccess();
                  v50 = v108;
                  v45 = v221;
                  v101 = v205;
                  v81 = v228;
                }

                else
                {
                  v45 = v221;
                  v101 = v205;
                  if (v50 != (v95 >> 63))
                  {
                    goto LABEL_123;
                  }

                  v81 = v228;
                  __dst[0] = sub_1001B01D8(v95, v228);
                  __dst[1] = v135;
                  v252._countAndFlagsBits = 0x726566666F20;
                  v252._object = 0xE600000000000000;
                  sub_1001F6CA8(v252);
                  v136 = __dst[0];
                  v137 = __dst[1];
                  v50 = v201;
                  swift_beginAccess();
                  sub_1000320B4();
                  v138 = *(*v50 + 16);
                  sub_1000322A0();
                  v139 = *v50;
                  *(v139 + 16) = v138 + 1;
                  v140 = v139 + 40 * v138;
                  *(v140 + 32) = 0;
                  *(v140 + 40) = 0;
                  *(v140 + 48) = v136;
                  *(v140 + 56) = v137;
                  *(v140 + 64) = -126;
                  *v50 = v139;
LABEL_71:
                  swift_endAccess();
                }
              }

              v150 = v229 * v227;
              v46 = v212;
              v151 = v204;
              if ((v229 * v227) >> 64 != (v229 * v227) >> 63)
              {
                goto LABEL_121;
              }

              v152 = *v220;
              (*v220)(v212, v204, v45);
              sub_1001CF4AC(v150, v81, v202, v46);
              swift_beginAccess();
              sub_1001F64D8();
              swift_endAccess();

              v65 = v226;
              v51 = v203;
              if (v101 != v226)
              {
                continue;
              }

              sub_10004BDE8(v235, &qword_1002B1910);
              __dst[0] = 0x676E697472617453;
              __dst[1] = 0xE900000000000020;
              v152(v46, v151, v45);
              if (qword_1002AC410 == -1)
              {
                goto LABEL_88;
              }

              goto LABEL_125;
            case 3:
              if ((v225 & 1) == 0)
              {
                sub_1000183C4(&qword_1002ADC98);
                v121 = swift_allocObject();
                *(v121 + 16) = v197;
                __dst[0] = v224;
                __dst[1] = v45;
                v249._countAndFlagsBits = 0x20726F6620;
                v249._object = 0xE500000000000000;
                sub_1001F6CA8(v249);
                v250._countAndFlagsBits = v46;
                v250._object = v92;
                sub_1001F6CA8(v250);

                v122 = __dst[0];
                v123 = __dst[1];
                *(v121 + 32) = 0;
                *(v121 + 40) = 0;
                *(v121 + 48) = v122;
                *(v121 + 56) = v123;
                *(v121 + 64) = v94 | 0x80;
                v124 = sub_1001B0274(v199, v200);
                *(v121 + 72) = 0;
                *(v121 + 80) = 0;
                *(v121 + 88) = v124;
                *(v121 + 96) = v125;
                *(v121 + 104) = -126;
                swift_beginAccess();
                v126 = v121;
LABEL_78:
                sub_1001BA630(v126);
                goto LABEL_83;
              }

              __dst[0] = v224;
              __dst[1] = v45;
              v246._countAndFlagsBits = 0x20726F6620;
              v246._object = 0xE500000000000000;
              sub_1001F6CA8(v246);
              v247._countAndFlagsBits = v46;
              v247._object = v92;
              sub_1001F6CA8(v247);

              v99 = __dst[0];
              v100 = __dst[1];
              swift_beginAccess();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100032CE4();
                v93 = v153;
              }

              v45 = v221;
              v101 = v205;
              v102 = *(v93 + 16);
              if (v102 >= *(v93 + 24) >> 1)
              {
                sub_100032CE4();
                v93 = v154;
              }

              *(v93 + 16) = v102 + 1;
              v103 = v93 + 40 * v102;
              v104 = v196;
LABEL_70:
              *(v103 + 32) = v104;
              *(v103 + 48) = v99;
              *(v103 + 56) = v100;
              *(v103 + 64) = 65;
              v50 = v201;
              *v201 = v93;
              goto LABEL_71;
            default:

              goto LABEL_84;
          }
        }
      }

      else
      {
        v84 = 0;
        v86 = 0xE000000000000000;
        if ((v78 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      break;
    }

    if (v229 == 1)
    {
      __dst[0] = v84;
      __dst[1] = v86;
      v231 = 32;
      v232 = 0xE100000000000000;
      sub_10001C790();
      v87 = sub_1001F75B8();

      v88 = *(v87 + 16);
      __dst[0] = v87;
      __dst[1] = v87 + 32;
      __dst[2] = v88 != 0;
      __dst[3] = (2 * v88) | 1;
      sub_1000183C4(&qword_1002AF8A8);
      v81 = v228;
      sub_1001B0FF4(&qword_1002AF8B0, &qword_1002AF8A8);
      v84 = sub_1001F6A68();
      v86 = v89;
    }

    goto LABEL_49;
  }

LABEL_124:
  __break(1u);
LABEL_125:
  swift_once();
LABEL_88:
  v157 = qword_1002AE9E8;
  v158 = sub_1001F6478().super.isa;
  v159 = [v157 stringFromDate:v158];

  v160 = sub_1001F6B58();
  v162 = v161;

  (*(v193 + 8))(v46, v45);
  v256._countAndFlagsBits = v160;
  v256._object = v162;
  sub_1001F6CA8(v256);

  v163 = __dst[0];
  v164 = __dst[1];
  if (v225)
  {
    goto LABEL_106;
  }

LABEL_109:
  swift_beginAccess();
  if (*(*v50 + 16))
  {
    v177 = -127;
  }

  else
  {
    v177 = 0x80;
  }

  swift_beginAccess();
  sub_1000320B4();
  v178 = *(*v50 + 16);
  sub_1000322A0();
  v179 = *v50;
  *(v179 + 16) = v178 + 1;
  v180 = v179 + 40 * v178;
  *(v180 + 32) = 0;
  *(v180 + 40) = 0;
  v181 = v192;
  *(v180 + 48) = v191;
  *(v180 + 56) = v181;
  *(v180 + 64) = v177;
  *v50 = v179;
  swift_endAccess();
  if (v164)
  {
    swift_beginAccess();
    sub_1000320B4();
    v182 = *(*v50 + 16);
    sub_1000322A0();
    v174 = *v50;
    *(v174 + 16) = v182 + 1;
    v175 = v174 + 40 * v182;
    *(v175 + 32) = 0;
    *(v175 + 40) = 0;
    *(v175 + 48) = v163;
    *(v175 + 56) = v164;
    v176 = -126;
    goto LABEL_114;
  }

LABEL_118:
  swift_beginAccess();
  v188 = *(v199 + 16);

  sub_10004BDE8(v200, &unk_1002B3450);

  return v188;
}

uint64_t sub_1001B0060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v7._countAndFlagsBits = 0x7972657665;
  }

  else
  {
    v7._countAndFlagsBits = 7497072;
  }

  if (a5)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v7._object = v8;
  sub_1001F6CA8(v7);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  sub_1001F6CA8(v13);
  sub_1000183C4(&qword_1002AC7E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001FEBE0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = sub_1001F6BB8();
  *(v9 + 56) = v10;

  sub_1000183C4(&qword_1002ACA10);
  sub_1001B0FF4(&qword_1002ADF40, &qword_1002ACA10);
  v11 = sub_1001F6A68();

  return v11;
}

uint64_t sub_1001B01D8(uint64_t a1, char a2)
{
  v7 = sub_1001F7E28();
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  sub_1001F6CA8(v8);
  sub_1001ECA84(a2);
  v3 = sub_1001F6BB8();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1001F6CA8(v9);

  return v7;
}

uint64_t sub_1001B0274(uint64_t a1, uint64_t a2)
{
  v4 = 0x676E697472617453;
  v5 = sub_1001F6508();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = swift_projectBox();
  swift_beginAccess();
  if (*(*(a1 + 16) + 16) || sub_10001C990(a2, 1, v5) != 1)
  {
    v19 = 0x676E697472617453;
    v20 = 0xE900000000000020;
    swift_beginAccess();
    (*(v6 + 16))(v9, v10, v5);
    if (qword_1002AC410 != -1)
    {
      swift_once();
    }

    v11 = qword_1002AE9E8;
    isa = sub_1001F6478().super.isa;
    v13 = [v11 stringFromDate:isa];

    v14 = sub_1001F6B58();
    v16 = v15;

    (*(v6 + 8))(v9, v5);
    v21._countAndFlagsBits = v14;
    v21._object = v16;
    sub_1001F6CA8(v21);

    return v19;
  }

  return v4;
}

uint64_t sub_1001B048C()
{
  v0 = sub_1001F7F58();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1001B04EC(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6F74736575716572;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 4:
    case 5:
      result = 0x49656C62616C6173;
      break;
    case 6:
      result = 0x437972746E756F63;
      break;
    case 7:
      result = 0x79636E6572727563;
      break;
    case 8:
      result = 0x6563697270;
      break;
    case 9:
      result = 0x5079616C70736964;
      break;
    case 10:
      result = 0x48746E756F636361;
      break;
    case 11:
      result = 0x746E6F4365736163;
      break;
    case 12:
      result = 0x53746E656D796170;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x6365536563697270;
      break;
    case 15:
      result = 0x65566E6769736564;
      break;
    case 16:
      result = 0x7473694C78656C66;
      break;
    case 17:
      result = 0x73656C797473;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1001B0748()
{
  sub_1000DBF74();
  v2 = sub_1000183C4(&qword_1002BB1A0);
  sub_10001A278();
  v4 = v3;
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  v8 = &v16 - v7;
  v9 = sub_10016CB94();
  sub_1001B328C(v9, v10);
  sub_1001B0D08();
  sub_10001E838();
  sub_1001F8198();
  LOWORD(v16) = *v0;
  BYTE2(v16) = *(v0 + 2);
  v17 = 0;
  sub_1001B0D5C();
  sub_10019DD3C();
  sub_10001E6C8();
  sub_1001F7D58();
  if (!v1)
  {
    sub_1001379E4(1);
    sub_1001F7D88();
    LOBYTE(v16) = *(v0 + 24);
    v17 = 2;
    sub_1001B0DB0();
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    sub_1001379E4(3);
    sub_1001F7D18();
    sub_1001379E4(4);
    sub_1001F7D88();
    v16 = *(v0 + 64);
    v17 = 5;
    v11 = sub_10016CB94();
    sub_1000183C4(v11);
    sub_1001B1C64(&qword_1002ACB30, &qword_1002ACA10);
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    sub_1001379E4(6);
    sub_1001F7D18();
    sub_1001379E4(7);
    sub_1001F7D18();
    sub_1001379E4(8);
    sub_1001F7D38();
    sub_1001379E4(9);
    sub_1001F7D18();
    sub_1001379E4(10);
    sub_1001F7D18();
    sub_1001379E4(11);
    sub_1001F7D18();
    sub_1001379E4(12);
    sub_1001F7D18();
    LOBYTE(v16) = 13;
    sub_10001E6C8();
    sub_1001F7D28();
    v16 = *(v0 + 192);
    v17 = 14;
    v12 = sub_10016CB94();
    sub_1000183C4(v12);
    sub_1001B1CB8(&qword_1002BB1C8, &qword_1002BB1C0);
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    LOBYTE(v16) = *(v0 + 200);
    v17 = 15;
    sub_1001B0E58();
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    v16 = *(v0 + 208);
    v17 = 16;
    v13 = sub_10016CB94();
    sub_1000183C4(v13);
    sub_1001B3248();
    sub_1001B1CB8(v14, v15);
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    v16 = *(v0 + 216);
    v17 = 17;
    sub_1000183C4(&qword_1002BB1F8);
    sub_1001B1CB8(&qword_1002BB200, &qword_1002BB1F8);
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
  }

  (*(v4 + 8))(v8, v2);
  sub_1000DBF60();
}

uint64_t sub_1001B0BC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B048C();
  *a1 = result;
  return result;
}

unint64_t sub_1001B0BF8()
{
  v1 = sub_100056690();
  result = sub_1001B04EC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B0C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B04E0();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0C50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B04E4();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0C78(uint64_t a1)
{
  v2 = sub_1001B0D08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0CB4(uint64_t a1)
{
  v2 = sub_1001B0D08();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001B0D08()
{
  result = qword_1002BB1A8;
  if (!qword_1002BB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1A8);
  }

  return result;
}

unint64_t sub_1001B0D5C()
{
  result = qword_1002BB1B0;
  if (!qword_1002BB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1B0);
  }

  return result;
}

unint64_t sub_1001B0DB0()
{
  result = qword_1002BB1B8;
  if (!qword_1002BB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1B8);
  }

  return result;
}

unint64_t sub_1001B0E04()
{
  result = qword_1002BB1D0;
  if (!qword_1002BB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1D0);
  }

  return result;
}

unint64_t sub_1001B0E58()
{
  result = qword_1002BB1D8;
  if (!qword_1002BB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1D8);
  }

  return result;
}

unint64_t sub_1001B0EAC()
{
  result = qword_1002BB1F0;
  if (!qword_1002BB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1F0);
  }

  return result;
}

unint64_t sub_1001B0F00()
{
  result = qword_1002BB208;
  if (!qword_1002BB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB208);
  }

  return result;
}

uint64_t sub_1001B0FBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001B0FF4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001B33C8(0, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B103C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 17))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1001B1084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentSheetInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PaymentSheetInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
        JUMPOUT(0x1001B125CLL);
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001B1294(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1001B12A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 5))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_1001B12E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001B1340(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 33))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (*(a1 + 32) & 0xC | (*(a1 + 32) >> 4) & 3) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1001B1388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * ((((-a2 >> 2) & 3) - 4 * a2) & 0xF);
    }
  }

  return result;
}

uint64_t sub_1001B1424(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1001B1478(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001B14F4(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return 0;
}

uint64_t sub_1001B1564(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        return result;
      case 2:
        *(result + 2) = v6;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *(result + 2) = 0;
      break;
    case 2:
      *(result + 2) = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001B1618);
    case 4:
      *(result + 2) = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001B1650()
{
  result = qword_1002BB230;
  if (!qword_1002BB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB230);
  }

  return result;
}

unint64_t sub_1001B16A4()
{
  result = qword_1002BB238;
  if (!qword_1002BB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB238);
  }

  return result;
}

unint64_t sub_1001B1700()
{
  result = qword_1002BB240;
  if (!qword_1002BB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB240);
  }

  return result;
}

unint64_t sub_1001B1758()
{
  result = qword_1002BB248;
  if (!qword_1002BB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB248);
  }

  return result;
}

unint64_t sub_1001B17B0()
{
  result = qword_1002BB250;
  if (!qword_1002BB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB250);
  }

  return result;
}

unint64_t sub_1001B1804()
{
  result = qword_1002BB260;
  if (!qword_1002BB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB260);
  }

  return result;
}

unint64_t sub_1001B1858()
{
  result = qword_1002BB268;
  if (!qword_1002BB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB268);
  }

  return result;
}

unint64_t sub_1001B18AC()
{
  result = qword_1002BB270;
  if (!qword_1002BB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB270);
  }

  return result;
}

unint64_t sub_1001B1900()
{
  result = qword_1002BB278;
  if (!qword_1002BB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB278);
  }

  return result;
}

unint64_t sub_1001B1954()
{
  result = qword_1002BB288;
  if (!qword_1002BB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB288);
  }

  return result;
}

unint64_t sub_1001B19A8()
{
  result = qword_1002BB290;
  if (!qword_1002BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB290);
  }

  return result;
}

unint64_t sub_1001B19FC()
{
  result = qword_1002BB2A0;
  if (!qword_1002BB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2A0);
  }

  return result;
}

unint64_t sub_1001B1A50()
{
  result = qword_1002BB2A8;
  if (!qword_1002BB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2A8);
  }

  return result;
}

uint64_t sub_1001B1AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  switch((a5 >> 4) & 3)
  {
    case 1u:

      goto LABEL_6;
    case 2u:
    case 3u:
LABEL_6:

      break;
    default:
      v6 = a5;

      result = sub_1000C89E4(a3, a4, v6);
      break;
  }

  return result;
}

unint64_t sub_1001B1B58()
{
  result = qword_1002BB2B0;
  if (!qword_1002BB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2B0);
  }

  return result;
}

uint64_t sub_1001B1BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  switch((a5 >> 4) & 3)
  {
    case 1u:

      goto LABEL_6;
    case 2u:
    case 3u:
LABEL_6:

      break;
    default:
      v6 = a5;

      result = sub_1000C89CC(a3, a4, v6);
      break;
  }

  return result;
}

uint64_t sub_1001B1C64(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001B33C8(0, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B1CB8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001B33C8(0, a2);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001B1D28()
{
  result = qword_1002BB2D8;
  if (!qword_1002BB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2D8);
  }

  return result;
}

unint64_t sub_1001B1D7C()
{
  result = qword_1002BB2E0;
  if (!qword_1002BB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2E0);
  }

  return result;
}

unint64_t sub_1001B1DD0()
{
  result = qword_1002BB2E8;
  if (!qword_1002BB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2E8);
  }

  return result;
}

unint64_t sub_1001B1E24()
{
  result = qword_1002BB2F0;
  if (!qword_1002BB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2F0);
  }

  return result;
}

unint64_t sub_1001B1E78()
{
  result = qword_1002BB2F8;
  if (!qword_1002BB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2F8);
  }

  return result;
}

unint64_t sub_1001B1ECC()
{
  result = qword_1002BB300;
  if (!qword_1002BB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB300);
  }

  return result;
}

unint64_t sub_1001B1F20()
{
  result = qword_1002BB308;
  if (!qword_1002BB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB308);
  }

  return result;
}

unint64_t sub_1001B1F74()
{
  result = qword_1002BB320;
  if (!qword_1002BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB320);
  }

  return result;
}

unint64_t sub_1001B1FC8()
{
  result = qword_1002BB328;
  if (!qword_1002BB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB328);
  }

  return result;
}

_BYTE *sub_1001B201C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1001B20E8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001B2128(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x1001B21F4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001B2294(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001B2360);
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

uint64_t sub_1001B23A0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return static _UInt24.min.getter();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_100006BB8(a1);
}

_BYTE *sub_1001B23E8(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1001B2484);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001B24BC()
{
  result = qword_1002BB330;
  if (!qword_1002BB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB330);
  }

  return result;
}

unint64_t sub_1001B2514()
{
  result = qword_1002BB338;
  if (!qword_1002BB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB338);
  }

  return result;
}

unint64_t sub_1001B256C()
{
  result = qword_1002BB340;
  if (!qword_1002BB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB340);
  }

  return result;
}

unint64_t sub_1001B25C4()
{
  result = qword_1002BB348;
  if (!qword_1002BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB348);
  }

  return result;
}

unint64_t sub_1001B261C()
{
  result = qword_1002BB350;
  if (!qword_1002BB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB350);
  }

  return result;
}

unint64_t sub_1001B2674()
{
  result = qword_1002BB358;
  if (!qword_1002BB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB358);
  }

  return result;
}

unint64_t sub_1001B26CC()
{
  result = qword_1002BB360;
  if (!qword_1002BB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB360);
  }

  return result;
}

unint64_t sub_1001B2724()
{
  result = qword_1002BB368;
  if (!qword_1002BB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB368);
  }

  return result;
}

unint64_t sub_1001B277C()
{
  result = qword_1002BB370;
  if (!qword_1002BB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB370);
  }

  return result;
}

unint64_t sub_1001B27D4()
{
  result = qword_1002BB378;
  if (!qword_1002BB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB378);
  }

  return result;
}

unint64_t sub_1001B282C()
{
  result = qword_1002BB380;
  if (!qword_1002BB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB380);
  }

  return result;
}

unint64_t sub_1001B2884()
{
  result = qword_1002BB388;
  if (!qword_1002BB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB388);
  }

  return result;
}

unint64_t sub_1001B28DC()
{
  result = qword_1002BB390;
  if (!qword_1002BB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB390);
  }

  return result;
}

unint64_t sub_1001B2934()
{
  result = qword_1002BB398;
  if (!qword_1002BB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB398);
  }

  return result;
}

unint64_t sub_1001B298C()
{
  result = qword_1002BB3A0;
  if (!qword_1002BB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3A0);
  }

  return result;
}

unint64_t sub_1001B29E4()
{
  result = qword_1002BB3A8;
  if (!qword_1002BB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3A8);
  }

  return result;
}

unint64_t sub_1001B2A3C()
{
  result = qword_1002BB3B0;
  if (!qword_1002BB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3B0);
  }

  return result;
}

unint64_t sub_1001B2A94()
{
  result = qword_1002BB3B8;
  if (!qword_1002BB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3B8);
  }

  return result;
}

unint64_t sub_1001B2AEC()
{
  result = qword_1002BB3C0;
  if (!qword_1002BB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3C0);
  }

  return result;
}

unint64_t sub_1001B2B40()
{
  result = qword_1002BB3C8;
  if (!qword_1002BB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3C8);
  }

  return result;
}

unint64_t sub_1001B2B94()
{
  result = qword_1002BB3D0;
  if (!qword_1002BB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3D0);
  }

  return result;
}

unint64_t sub_1001B2BE8()
{
  result = qword_1002BB3D8;
  if (!qword_1002BB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3D8);
  }

  return result;
}

unint64_t sub_1001B2C3C()
{
  result = qword_1002BB3E0;
  if (!qword_1002BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3E0);
  }

  return result;
}

unint64_t sub_1001B2C90()
{
  result = qword_1002BB3E8;
  if (!qword_1002BB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3E8);
  }

  return result;
}

unint64_t sub_1001B2CE4()
{
  result = qword_1002BB3F0;
  if (!qword_1002BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3F0);
  }

  return result;
}

unint64_t sub_1001B2D38()
{
  result = qword_1002BB400;
  if (!qword_1002BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB400);
  }

  return result;
}

unint64_t sub_1001B2D8C()
{
  result = qword_1002BB410;
  if (!qword_1002BB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB410);
  }

  return result;
}

unint64_t sub_1001B2DE0()
{
  result = qword_1002BB420;
  if (!qword_1002BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB420);
  }

  return result;
}

unint64_t sub_1001B2E34()
{
  result = qword_1002BB430;
  if (!qword_1002BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB430);
  }

  return result;
}

_BYTE *sub_1001B2E98(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001B2F64);
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

unint64_t sub_1001B2FA0()
{
  result = qword_1002BB438;
  if (!qword_1002BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB438);
  }

  return result;
}

unint64_t sub_1001B2FF8()
{
  result = qword_1002BB440;
  if (!qword_1002BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB440);
  }

  return result;
}

unint64_t sub_1001B3050()
{
  result = qword_1002BB448;
  if (!qword_1002BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB448);
  }

  return result;
}

unint64_t sub_1001B30A8()
{
  result = qword_1002BB450;
  if (!qword_1002BB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB450);
  }

  return result;
}

unint64_t sub_1001B3100()
{
  result = qword_1002BB458;
  if (!qword_1002BB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB458);
  }

  return result;
}

unint64_t sub_1001B3158()
{
  result = qword_1002BB460;
  if (!qword_1002BB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB460);
  }

  return result;
}

uint64_t sub_1001B32D4()
{

  return sub_1001F7CB8();
}

uint64_t sub_1001B3388()
{

  return sub_1000C89CC(v2, v1, v0);
}

uint64_t sub_1001B33A4()
{
  *(v0 - 65) = 0;

  return sub_1001F7C78();
}

uint64_t sub_1001B33C8(uint64_t a1, uint64_t *a2)
{

  return sub_100019BC4(a2);
}

uint64_t sub_1001B3410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a15;

  return sub_10004BD98(&a12, v16);
}

uint64_t sub_1001B3430()
{

  return sub_1000183C4(v0);
}

uint64_t sub_1001B3448(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  if (sub_1001F6D58(v6))
  {
    v5 = sub_1001B35F4();
  }

  else
  {
    v5 = sub_1001B35F4();
    v7._countAndFlagsBits = 47;
    v7._object = 0xE100000000000000;
    sub_1001F6CA8(v7);
  }

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_1001F6CA8(v8);
  return v5;
}

uint64_t sub_1001B34CC()
{
  v0 = *(sub_1000795A8() + 120);

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1001B3528(uint64_t a1, unint64_t a2)
{
  sub_1000E0BC4(a1, a2, v4);
  if (!*(&v4[0] + 1))
  {
    return 0;
  }

  v6 = v4[0];
  v7 = v4[1];
  v8 = v5;
  sub_1000795A8();
  v2 = sub_1000EE848(&v6);

  v9 = v6;
  sub_10001C838(&v9);
  v10 = v7;
  sub_10001C838(&v10);
  v11 = v8;
  sub_10004BDE8(&v11, &qword_1002ACA10);
  return v2;
}

uint64_t sub_1001B35F4()
{
  sub_1001F6CA8(*(v0 + 24));
  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  sub_1001F6CA8(v3);
  v1 = *(*(v0 + 48) + 16);

  os_unfair_lock_lock(v1);
  os_unfair_lock_unlock(v1);

  v4._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v4);

  return 0x2F2F3A70747468;
}

int64x2_t sub_1001B36B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AppInformationResponse(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000183C4(&qword_1002ADBC0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = (v27 - v16);
  v18 = *(a1 + 16);
  if (v18)
  {
    v28 = a2;
    v29 = a3;
    v30 = a4;
    v31 = _swiftEmptyArrayStorage;
    v19 = a1;
    sub_1000340EC(0, v18, 0);
    v20 = v31;
    v21 = *(v9 + 80);
    v27[1] = v19;
    v22 = v19 + ((v21 + 32) & ~v21);
    v23 = *(v9 + 72);
    do
    {
      sub_1001B3F28(v22, v12);
      sub_1001B3F28(v12, v17 + *(v13 + 56));
      *v17 = 1936748641;
      v17[1] = 0xE400000000000000;
      sub_1001B3F8C(v12);
      v17[2] = 0;
      v17[3] = 0xE000000000000000;
      v31 = v20;
      v25 = v20[2];
      v24 = v20[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000340EC(v24 > 1, v25 + 1, 1);
        v20 = v31;
      }

      v20[2] = v25 + 1;
      sub_1001B3FE8(v17, v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, &qword_1002ADBC0);
      v22 += v23;
      --v18;
    }

    while (v18);

    a3 = v29;
    a4 = v30;
    a2 = v28;
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
  }

  *a4 = v20;
  *(a4 + 8) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = a3;
  result = vdupq_n_s64(1uLL);
  *(a4 + 40) = result;
  return result;
}

__n128 sub_1001B3940@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppInformationResponse(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = (&v22._countAndFlagsBits - v11);
  sub_1000593F4(a1, v31);
  sub_10003FC0C(a1, v24);
  memcpy(v30, v24, 0x1A9uLL);
  if (sub_1000419C0(v30) == 1)
  {
    sub_1000B738C(0x2064696C61766E49, 0xEF74736575716572, 6, v31);
    v22 = v31[0];
    v23 = v31[1];
    v13 = LODWORD(v31[2]._countAndFlagsBits) | ((WORD2(v31[2]._countAndFlagsBits) | (BYTE6(v31[2]._countAndFlagsBits) << 16)) << 32);
    v14 = 21;
  }

  else
  {
    memcpy(v31, v30, 0x1A9uLL);
    sub_1001B3C00(v31, v12);
    sub_1001B3F28(v12, v8);
    v15 = sub_1001B3DDC(v31);
    v17 = v16;
    sub_10004BDE8(v24, &qword_1002BB560);
    sub_1000183C4(qword_1002BB568);
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001FE9E0;
    sub_1001B3F28(v8, v19 + v18);
    sub_1001B36B8(v19, v15, v17, v25);
    sub_1001B3F8C(v8);
    sub_1001F16C8();
    v22 = *&v25[56];
    v23 = v26;
    v13 = v27 | ((v28 | (v29 << 16)) << 32);
    sub_1001B3F8C(v12);
    v14 = 3;
  }

  type metadata accessor for HTTPResponseHead._Storage();
  v20 = swift_allocObject();
  *(v20 + 32) = v14;
  *(v20 + 40) = 65537;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *a2 = v20;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v22;
  *(a2 + 40) = v23;
  *(a2 + 24) = result;
  *(a2 + 62) = BYTE6(v13);
  *(a2 + 60) = WORD2(v13);
  *(a2 + 56) = v13;
  return result;
}

uint64_t sub_1001B3C00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000183C4(&qword_1002ACE98);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for AppInformationResponse.PlatformAttributes(0);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68((v3 + 48), *(v3 + 72));
  v14 = sub_1001B3528(*(a1 + 48), *(a1 + 56));
  sub_10001AE68((v3 + 48), *(v3 + 72));
  v15 = sub_1001B34CC();
  v17 = v16;
  if (v14)
  {
    v19 = *(v14 + 72);
    v18 = *(v14 + 80);
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *a2 = v15;
  a2[1] = v17;
  sub_1001F6258();

  sub_1001B3FE8(v9, v13, &qword_1002ACE98);
  v20 = &v13[*(type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0) + 20)];
  *v20 = v19;
  *(v20 + 1) = v18;
  v21 = type metadata accessor for AppInformationResponse(0);
  return sub_1001B4050(v13, a2 + *(v21 + 20));
}

uint64_t sub_1001B3DDC(Swift::String *a1)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  sub_1001F77B8(19);

  strcpy(v4, "/v1/catalog/");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  sub_1001F6CA8(*a1);
  v5._countAndFlagsBits = 0x737070612FLL;
  v5._object = 0xE500000000000000;
  sub_1001F6CA8(v5);
  v2 = sub_1001B3448(v4[0], v4[1]);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1001B3EBC()
{
  v0 = sub_100082E38();
  sub_1000876E4(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_1001B3F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInformationResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3F8C(uint64_t a1)
{
  v2 = type metadata accessor for AppInformationResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B3FE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000183C4(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B4050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInformationResponse.PlatformAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B40B4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *v4 = a1;
      v5 = a2 & 0xFFFFFFFFFFFFFFLL;
      v2 = v4;
      return pthread_setname_np(v2);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v2 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return pthread_setname_np(v2);
    }
  }

  return sub_1001F77A8();
}

uint64_t sub_1001B414C(void *a1)
{
  v1 = a1[2];
  v3 = a1[4];
  v2 = a1[5];

  v4 = pthread_self();
  if (v2)
  {

    sub_1001B4250(0x7FFFFFFFFFFFFFFFLL);
    v5 = sub_1001F6BE8();
    v7 = v6;

    sub_1001B40B4(v5, v7);
  }

  type metadata accessor for NIOThread();
  v8 = swift_allocObject();
  v8[3] = v2;
  v8[4] = v4;
  v8[2] = v3;
  v10 = v8;
  v1(&v10);

  return 0;
}

uint64_t sub_1001B4250(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1001F6C68();
    v1 = sub_1001F6DB8();

    return v1;
  }

  return result;
}

uint64_t RemovableChannelHandler.removeHandler(context:removalToken:)()
{
  v1 = ChannelHandlerContext.handler.getter();
  result = swift_unknownObjectRelease();
  if (v1 == v0)
  {
    return ChannelHandlerContext.leavePipeline(removalToken:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B484C()
{
  v0 = sub_1001F6688();
  sub_10004BC70(v0, qword_1002E6180);
  sub_100019C94(v0, qword_1002E6180);
  return sub_1001F6678();
}

uint64_t sub_1001B4920(uint64_t result)
{
  v3 = *v1;
  if (result)
  {
    if (result == 1)
    {
      result = (*(*(v3 + 872) + 96))(0, *(v3 + 864));
      if (!v2)
      {
        *(v1 + *(*v1 + 896)) = 1;
      }
    }
  }

  else
  {
    result = (*(*(v3 + 872) + 96))(1, *(v3 + 864));
    if (!v2)
    {
      *(v1 + *(*v1 + 904)) = 1;
    }
  }

  return result;
}

char *sub_1001B4A10()
{
  v0 = sub_100029124();

  return v0;
}

BOOL sub_1001B4A70()
{
  sub_1000287AC();
  v1 = v0;
  swift_getObjectType();
  sub_1001B5F8C();
  debugOnly(_:)(v2, v3, v4, 96, v5, v1);
  swift_unknownObjectRelease();

  return sub_100028DCC();
}

uint64_t sub_1001B4B10()
{
  sub_10002E27C();

  return sub_1001CB56C(v1, v1, sub_1001B5EB4, v0, sub_1001B5ED0, v0, sub_1001B5EEC, v0) & 0x101;
}

uint64_t sub_1001B4B94()
{
  v2 = v1;
  v3 = v0;
  sub_1000287AC();
  v5 = v4;
  swift_getObjectType();
  sub_1001B5F8C();
  debugOnly(_:)(v6, v7, v8, 102, v9, v5);
  swift_unknownObjectRelease();
  v10 = v3 + *(*v3 + 168);
  swift_beginAccess();
  v37 = v10;
  sub_100026064(v10, v38);
  v11 = v43;
  sub_10001AE68(v38, v42);
  sub_100028ED4();
  v12 = (*(v11 + 8))();
  result = sub_100019CCC(v38);
  v14 = *v0;
  v33 = *(*v0 + 176);
  v34 = *(v0 + v33);
  if (v34)
  {
    v15 = 0;
    v35 = *(v14 + 152);
    v36 = *(v14 + 896);
    v16 = 1;
    while (1)
    {
      if (!sub_1001B4A70() || (*(v3 + v36) & 1) != 0)
      {
        goto LABEL_27;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_10005EFF0(*(v12 + 16));

        v12 = v17;
      }

      v18 = *(v12 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v18 << 32, v18);

        LODWORD(v18) = *(v19 + 16);
        v12 = v19;
      }

      swift_beginAccess();
      v20 = sub_1001B5C8C(*(v12 + 24), *(v12 + 24) + v18, v3);
      if (v2)
      {
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_26;
      }

      v22 = v20;
      if (v20 <= 0)
      {
        goto LABEL_24;
      }

      v45 = 0;
      swift_beginAccess();
      v23 = *(v37 + 24);
      v24 = *(v37 + 32);
      sub_10004BD98(v37, v23);
      v25 = (*(v24 + 16))(v22, v23, v24);
      swift_endAccess();
      *(v3 + v35) = 0;
      v26 = sub_100028ED8();
      v38[0] = v12;
      v38[1] = v22 << 32;
      v41 = 0;
      v40 = 0;
      v39 = v18;
      v44 = 0;
      v27 = *(v26 + 56);
      ObjectType = swift_getObjectType();
      debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1157, ObjectType, v27);
      if (sub_10009D370())
      {

        sub_10009E13C();
      }

      else
      {
      }

      result = sub_100034310(v38);
      if (v18 < v22)
      {
        break;
      }

      if (v18 != v22)
      {
        goto LABEL_29;
      }

      if ((v25 & 1) != 0 && v16 < *(v3 + v33))
      {
        sub_100026064(v37, v38);
        v29 = v43;
        sub_10001AE68(v38, v42);
        sub_100028ED4();
        v30 = (*(v29 + 8))();

        sub_100019CCC(v38);
        v12 = v30;
      }

      v2 = v45;
      if (v34 == v16)
      {
LABEL_29:

        v15 = 1;
        return v15 & 1;
      }

      v15 = 1;
      if (__CFADD__(v16++, 1))
      {
        __break(1u);
LABEL_24:
        if (*(v3 + v36) != 1)
        {
LABEL_27:
          sub_10002D678();
          sub_10002E0D8();
          swift_allocError();
          sub_10002E020(v32, 6);
          swift_willThrow();
        }

        *(v3 + v35) = 0;
        sub_10002B6BC();
LABEL_26:

        return v15 & 1;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1001B4FE4()
{
  sub_10002E27C();
  v2 = *(v0 + *(v1 + 912));
  swift_beginAccess();
  return (*(v2 + 48) & 1) == 0;
}

void sub_1001B503C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(*v2 + 904)) == 1)
  {
    if (a2)
    {
      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      sub_10002E020(v3, 4);
      swift_errorRetain();
      sub_1000A13B0();
    }
  }

  else
  {
    v4 = type metadata accessor for BaseStreamSocketChannel();
    ChannelCore.unwrapData<A>(_:as:)(&type metadata for IOData, v4, &type metadata for IOData, &off_10027FEF8, v5, &v11);
    sub_10002E30C();
    v6 = sub_1001B5F08();
    if (sub_1001CBC28(v6, v7, v8))
    {
      sub_1001B5F08();
      sub_100034300();
    }

    else
    {
      v9 = *(sub_100028ED8() + 56);
      ObjectType = swift_getObjectType();
      debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1173, ObjectType, v9);
      if (sub_10009D370())
      {
        sub_10009E30C();
        sub_1001B5F08();
        sub_100034300();
      }

      else
      {
        sub_1001B5F08();
        sub_100034300();
      }
    }
  }
}

uint64_t sub_1001B5294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  __chkstk_darwin(v7, v8);
  sub_10002DFFC();
  v10 = v9;
  __chkstk_darwin(v11, v12);
  sub_1001B5F68();
  v14 = v13;
  swift_getObjectType();
  sub_1001B5F8C();
  debugOnly(_:)(v15, v16, v17, 38, v18, v14);
  swift_unknownObjectRelease();
  if (sub_1001B4A70())
  {
    (*(v10 + 16))(v4, a1, a3);
    if (sub_10018104C())
    {
      v19 = sub_1001B5F18();
      v20(v19);
      sub_1001B5F2C();
      sub_10002E30C();
      *(v3 + *(v21 + 888)) = v22;
    }

    else if (sub_10018104C())
    {
      sub_10002E30C();
      v26 = *(v3 + *(v25 + 912));
      v27 = sub_1001B5F18();
      v28(v27);
      sub_1001B5F2C();
      *(v26 + 128) = v34;
    }

    else if (sub_10018104C())
    {
      sub_10002E30C();
      v30 = *(v3 + *(v29 + 912));
      v31 = sub_1001B5F18();
      v32(v31);
      sub_1001B5F2C();
      *(v30 + 96) = v34;
    }

    else
    {
      sub_100029D04(a1, a2, a3);
    }

    return (*(v10 + 8))(v4, a3);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v23, 2);
    return swift_willThrow();
  }
}

uint64_t sub_1001B5574(uint64_t a1, uint64_t a2)
{
  sub_10002DFFC();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  sub_1001B5F68();
  v10 = v9;
  swift_getObjectType();
  sub_1001B5F8C();
  debugOnly(_:)(v11, v12, v13, 57, v14, v10);
  swift_unknownObjectRelease();
  if (sub_1001B4A70())
  {
    (*(v6 + 16))(v2, a1, a2);
    if (sub_10018104C() || sub_10018104C() || sub_10018104C())
    {
      sub_1001B5F4C();
      swift_dynamicCast();
    }

    else
    {
      sub_10002A5F0(a1, a2);
    }

    return (*(v6 + 8))(v2, a2);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v15, 2);
    return swift_willThrow();
  }
}

uint64_t sub_1001B57F4()
{
  sub_10002E27C();
  if (*(v0 + *(v1 + 896)))
  {
    return 0;
  }

  else
  {
    return sub_10002A97C();
  }
}

void sub_1001B5828()
{
  sub_10002E27C();
  if ((*(v0 + *(v1 + 896)) & 1) == 0)
  {
    sub_10002B4DC();
  }
}

uint64_t sub_1001B5858(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v3;
  if (!a2)
  {
    if (*(v3 + *(v7 + 904)) == 1)
    {
      if (!a3)
      {
        return result;
      }

      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      v10 = 4;
      goto LABEL_9;
    }

    (*(v7 + 1016))(0);
    sub_1001CBB4C(v6, 0);
    sub_10002B2BC();
    if (a3)
    {
      sub_1000A13B0();
    }

    sub_100028ED8();
    v16 = &type metadata for ChannelEvent;
    LOBYTE(v14) = 1;
LABEL_31:
    ChannelPipeline.fireUserInboundEventTriggered(_:)();

    return sub_100019CCC(&v14);
  }

  if (a2 == 1)
  {
    v8 = *(v7 + 896);
    if (*(v4 + v8) == 1)
    {
      if (!a3)
      {
        return result;
      }

      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      v10 = 5;
LABEL_9:
      sub_10002E020(v9, v10);
      swift_errorRetain();
      sub_1000A13B0();
    }

    v17 = result;
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88);
    if (swift_dynamicCast())
    {
      if (v15 == 3 && v14 == 6)
      {
        *(v4 + v8) = 1;

        goto LABEL_28;
      }

      sub_100073868(v14, v15);
    }

    (*(*v4 + 1016))(1);
LABEL_28:
    sub_10002B6BC();
    if (a3)
    {
      sub_1000A13B0();
    }

    sub_100028ED8();
    v16 = &type metadata for ChannelEvent;
    LOBYTE(v14) = 0;
    goto LABEL_31;
  }

  v11 = *(v7 + 880);
  if (*(v3 + v11))
  {
    *(v3 + v11) = 0;
    sub_10002D864();
    sub_10002E0D8();
    swift_allocError();
    *v12 = 1;
    swift_errorRetain();
    sub_1000A13B0();
  }

  return sub_10002B808(v6, 2, a3);
}

uint64_t sub_1001B5BD0()
{
  sub_10002E27C();

  sub_10002E27C();
}

uint64_t sub_1001B5C20()
{
  sub_1001B4A10();

  return swift_deallocClassInstance();
}

uint64_t sub_1001B5C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(*a3 + 872) + 48))(a1, a2, *(*a3 + 864));
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1001B5D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1)
  {
    if (a2 - a1 >= 1)
    {
      return (*(*(*a3 + 872) + 32))(a1, a2, *(*a3 + 864));
    }
  }

  return result;
}

uint64_t sub_1001B5DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(*a3 + 872) + 40))(a1, a2, *(*a3 + 864));
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1001B5E34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __OFSUB__(a3, a2);
  v6 = a3 - a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    result = (*(*(*a4 + 872) + 72))(result, a2, v6, *(*a4 + 864));
    if (v4)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1001B5F2C()
{

  return swift_dynamicCast();
}

uint64_t sub_1001B5F4C()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1001B5F68()
{

  return sub_1000287AC();
}

uint64_t sub_1001B5F9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65736E6F43646964 && a2 == 0xEA0000000000746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001B60B4(char a1)
{
  if (!a1)
  {
    return 0x4449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0x444970756F7267;
  }

  return 0x65736E6F43646964;
}

uint64_t sub_1001B6110(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BB6E0);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v11[-v8];
  sub_10001AE68(a1, a1[3]);
  sub_1001B6AC4();
  sub_1001F8198();
  v11[15] = 0;
  sub_1001F7D88();
  if (!v1)
  {
    v11[14] = 1;
    sub_1001F7D88();
    v11[13] = 2;
    sub_1001F7D28();
  }

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_1001B6290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000183C4(&qword_1002BB6D0);
  sub_10001A278();
  __chkstk_darwin(v5, v6);
  sub_10001AE68(a1, a1[3]);
  sub_1001B6AC4();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  v7 = sub_1001F7C78();
  v16 = v8;
  v14 = sub_1001F7C78();
  v15 = v9;
  v10 = sub_1001F7C18();
  v11 = sub_1001B6D24();
  v12(v11);
  result = sub_100019CCC(a1);
  *a2 = v7;
  *(a2 + 8) = v16;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_1001B64B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B5F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B64DC(uint64_t a1)
{
  v2 = sub_1001B6AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B6518(uint64_t a1)
{
  v2 = sub_1001B6AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001B6554@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001B6290(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1001B65B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1001F0C8C(&v12);
  if (*(&v12 + 1))
  {
    v15[0] = v12;
    v15[1] = v13;
    v16 = v14;
    a1 = v3;
    sub_1001B68F0(v15);
    v17 = v15[0];
    sub_10001C838(&v17);
    v11 = v13;
    sub_10001C838(&v11);
    type metadata accessor for HTTPResponseHead._Storage();
    v7 = sub_100021728();
    v8 = sub_1000AD71C(v7);
    v9 = 3;
  }

  else
  {
    type metadata accessor for HTTPResponseHead._Storage();
    v6 = sub_100021728();
    v8 = sub_1000AD71C(v6);
    v9 = 21;
  }

  *(v8 + 32) = v9;
  *(v8 + 40) = 65537;
  *a2 = a1;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 55) = 0;
  return result;
}

uint64_t sub_1001B68F0(uint64_t a1)
{
  v3 = sub_1001F6508();
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 112);
  v14 = v1;
  sub_10001AE68((v1 + 88), v10);
  sub_1001F64E8();
  v11 = sub_10008B260();
  (*(v5 + 8))(v9, v3);
  if (v11)
  {
    sub_100026064(v14 + 88, v15);
    sub_10001AE68(v15, v15[3]);
    sub_10008FD70(v11, *(a1 + 32) & 1);

    return sub_100019CCC(v15);
  }

  else
  {
    sub_100021578();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 25;
    return swift_willThrow();
  }
}

unint64_t sub_1001B6AC4()
{
  result = qword_1002BB6D8;
  if (!qword_1002BB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB6D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PriceIncreaseHelperRoute.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x1001B6BE4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B6C20()
{
  result = qword_1002BB6E8;
  if (!qword_1002BB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB6E8);
  }

  return result;
}

unint64_t sub_1001B6C78()
{
  result = qword_1002BB6F0;
  if (!qword_1002BB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB6F0);
  }

  return result;
}

unint64_t sub_1001B6CD0()
{
  result = qword_1002BB6F8;
  if (!qword_1002BB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB6F8);
  }

  return result;
}

Swift::Int sub_1001B6F2C()
{
  sub_1001B78D8();
  sub_1001F8088(v0 - 1);
  return sub_1001F80D8();
}

Swift::Int sub_1001B6F88()
{
  sub_1001B78D8();
  sub_1001F8088(qword_100218208[v0]);
  return sub_1001F80D8();
}

Swift::Int sub_1001B7018()
{
  sub_1001B7904();
  sub_1001F6C28();
  return sub_1001F80D8();
}

Swift::Int sub_1001B7180()
{
  sub_1001B78D8();
  sub_1001F8088(v0 + 1);
  return sub_1001F80D8();
}

Swift::Int sub_1001B71F0(uint64_t a1, unint64_t a2)
{
  sub_1001B7904();
  HTTPMethod.rawValue.getter(a1, a2);
  sub_1000C9A8C();

  return sub_1001F80D8();
}

Swift::Int sub_1001B73E8()
{
  sub_1001B7904();
  sub_1001F6C28();
  return sub_1001F80D8();
}

Swift::Int sub_1001B7448()
{
  sub_1001B7904();
  sub_1001F8088(2uLL);
  return sub_1001F80D8();
}

Swift::Int sub_1001B749C(Swift::UInt32 a1)
{
  sub_1001B7904();
  sub_1001F80B8(a1);
  return sub_1001F80D8();
}

Swift::Int sub_1001B74DC()
{
  sub_1001B78D8();
  sub_1001F8088(v0 & 1);
  return sub_1001F80D8();
}

Swift::Int sub_1001B7548()
{
  sub_1001B78D8();
  sub_1001F8088(v0);
  return sub_1001F80D8();
}

Swift::Int sub_1001B7584()
{
  sub_1001B78D8();
  sub_1001F8088(v0 + 10);
  return sub_1001F80D8();
}

Swift::Int sub_1001B75C4()
{
  sub_1001B78D8();
  sub_1001F8088(v0 + 1000);
  return sub_1001F80D8();
}

Swift::Int sub_1001B7694(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1001B7904();
  a2(v5, a1);
  return sub_1001F80D8();
}

Swift::Int sub_1001B76F4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1001B7904();
  a2(a1);
  sub_1000C9A8C();

  return sub_1001F80D8();
}

Swift::Int sub_1001B7748(Swift::UInt a1)
{
  sub_1001B7904();
  sub_1001F8088(a1);
  return sub_1001F80D8();
}

uint64_t sub_1001B77FC(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  if (*a2 != -1)
  {
    result = swift_once();
  }

  *a4 = *a3;
  return result;
}

unint64_t sub_1001B7868()
{
  result = qword_1002BB700;
  if (!qword_1002BB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB700);
  }

  return result;
}

uint64_t sub_1001B78D8()
{

  return sub_1001F8068();
}

uint64_t sub_1001B7904()
{

  return sub_1001F8068();
}

uint64_t sub_1001B791C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001B7A30(char a1)
{
  if (!a1)
  {
    return 0x7470697263736564;
  }

  if (a1 == 1)
  {
    return 0x4E79616C70736964;
  }

  return 0x656C61636F6CLL;
}

uint64_t sub_1001B7A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B791C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B7AC4(uint64_t a1)
{
  v2 = sub_1001B81D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B7B00(uint64_t a1)
{
  v2 = sub_1001B81D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B7B3C()
{

  return v0;
}

uint64_t sub_1001B7B90()
{
  sub_1001B7B3C();

  return swift_deallocClassInstance();
}

uint64_t sub_1001B7BE8(void *a1)
{
  v2 = v1;
  v4 = sub_1000183C4(&qword_1002BB820);
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  v10 = &v15[-v9];
  sub_10001AE68(a1, a1[3]);
  sub_1001B81D0();
  sub_1001F8198();
  v11 = *(v2 + 16);
  LOBYTE(v16) = 0;

  sub_1001B8430();
  if (v11 || (, v12 = *(v2 + 32), LOBYTE(v16) = 1, , sub_1001B8430(), v12))
  {
    (*(v6 + 8))(v10, v4);
  }

  else
  {

    v14 = *(v2 + 64);
    v16 = *(v2 + 48);
    v17 = v14;
    v18 = *(v2 + 72);
    v15[7] = 2;
    sub_100082894();
    sub_1001F7DC8();
    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_1001B7DB4(void *a1)
{
  v2 = swift_allocObject();
  sub_1001B7E04(a1);
  return v2;
}

uint64_t sub_1001B7E04(void *a1)
{
  sub_1000183C4(&qword_1002BB810);
  sub_10001A278();
  __chkstk_darwin(v4, v5);
  sub_10001AE68(a1, a1[3]);
  sub_1001B81D0();
  sub_1001F8178();
  if (v2)
  {
    type metadata accessor for OctaneLocalization();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = sub_1001B8458();
    *(v1 + 24) = v6;
    LOBYTE(v11) = 1;
    *(v1 + 32) = sub_1001B8458();
    *(v1 + 40) = v7;
    sub_10008293C();
    sub_1001F7CB8();
    v9 = sub_1001B6D24();
    v10(v9);
    *(v1 + 48) = v11;
    *(v1 + 64) = v12;
    *(v1 + 72) = v13;
  }

  sub_100019CCC(a1);
  return v1;
}

uint64_t sub_1001B8018@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001B7DB4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001B8068(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v12[0] = *(a1 + 48);
  v12[1] = v4;
  v13 = *(a1 + 80);
  v19 = v12[0];
  v20 = v4;
  v21 = v13;
  v5 = *(a2 + 64);
  v14[0] = *(a2 + 48);
  v14[1] = v5;
  v15 = *(a2 + 80);
  v16 = v14[0];
  v17 = v5;
  v18 = v15;
  sub_1000552A0(&v19, v11);
  sub_1000552A0(&v20, v11);
  sub_10007B8A0(&v21, v11);
  sub_1000552A0(&v16, v11);
  sub_1000552A0(&v17, v11);
  sub_10007B8A0(&v18, v11);
  v6 = sub_1000E1AB8(v12, v14);
  sub_10001C838(&v16);
  sub_10001C838(&v17);
  sub_10001C88C(&v18);
  sub_10001C838(&v19);
  sub_10001C838(&v20);
  sub_10001C88C(&v21);
  if (v6 && (*(a1 + 16) == *(a2 + 16) ? (v7 = *(a1 + 24) == *(a2 + 24)) : (v7 = 0), v7 || (sub_1001F7EA8() & 1) != 0))
  {
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1001F7EA8();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_1001B81D0()
{
  result = qword_1002BB818;
  if (!qword_1002BB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB818);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x1001B82F0);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B832C()
{
  result = qword_1002BB828;
  if (!qword_1002BB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB828);
  }

  return result;
}

unint64_t sub_1001B8384()
{
  result = qword_1002BB830;
  if (!qword_1002BB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB830);
  }

  return result;
}

unint64_t sub_1001B83DC()
{
  result = qword_1002BB838;
  if (!qword_1002BB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB838);
  }

  return result;
}

uint64_t sub_1001B8430()
{

  return sub_1001F7D88();
}

uint64_t sub_1001B8458()
{

  return sub_1001F7C78();
}

Swift::Void __swiftcall HTTPHeaders.replaceOrAdd(name:value:)(Swift::String name, Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v4 = name._object;
  v5 = name._countAndFlagsBits;
  v6 = sub_1001C1A08();
  if (sub_100030BD4(v6, v7, v5, v4))
  {
    sub_1001C1C98();
  }

  v8._countAndFlagsBits = v5;
  v8._object = v4;
  HTTPHeaders.remove(name:)(v8);
  v9 = v5;
  v10 = v4;
  v11 = countAndFlagsBits;
  v12 = object;

  HTTPHeaders.add(name:value:)(*&v9, *&v11);
}

uint64_t HTTPResponseHead.init(version:status:headers:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = HIWORD(a1);
  type metadata accessor for HTTPResponseHead._Storage();
  result = sub_100021728();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = v7;
  *(result + 42) = v8;
  return result;
}

uint64_t sub_1001B8580(uint64_t a1)
{
  result = sub_1001F70C8();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1001D1564(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_1001B8640()
{
  sub_100037C08();
  v1 = v0;
  v2 = sub_1001F6608();
  sub_10002DFFC();
  v4 = v3;
  v7 = __chkstk_darwin(v5, v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = v20 - v11;
  sub_1001C17C8();
  v20[1] = sub_1001F70C8();
  v13 = *(v1 + 16);
  if (v13)
  {
    v16 = *(v4 + 16);
    v14 = v4 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v20[0] = v1;
    v18 = v1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v9, v18, v2);
      sub_1001D16AC(v12, v9);
      (*(v14 - 8))(v12, v2);
      v18 += v19;
      --v13;
    }

    while (v13);
  }

  sub_100037B00();
}

uint64_t sub_1001B87B8(uint64_t a1)
{
  sub_1001C1900();
  v2 = sub_1001F70C8();
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1001D1A0C(&v7, *(a1 + v4++));
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_1001B8850(uint64_t a1)
{
  sub_1001C1774();
  v2 = sub_1001F70C8();
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1001D1C7C(&v7, *(a1 + v4++));
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void static HTTPRequestHead.== infix(_:_:)()
{
  sub_100037C08();
  v3 = sub_1001C1AFC(v2);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = HTTPMethod.rawValue.getter(v3, *(v1 + 24));
  v9 = v8;
  if (v7 == HTTPMethod.rawValue.getter(v5, v6) && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1001F7EA8();

    if ((v12 & 1) == 0)
    {
LABEL_17:
      sub_100037B00();
      return;
    }
  }

  v13 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v13 && (sub_1001F7EA8() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(v1 + 48) != *(v0 + 48) || *(v1 + 50) != *(v0 + 50))
  {
    goto LABEL_17;
  }

  sub_1001C1C44();
  sub_100037B00();

  static HTTPHeaders.== infix(_:_:)(v15, v16, v17);
}