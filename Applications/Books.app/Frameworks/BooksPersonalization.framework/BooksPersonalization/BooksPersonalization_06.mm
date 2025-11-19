void *sub_57A74(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1B5744();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 136 * a5 + 136 * v8;
  if (v13 == &v11[17 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[17 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[17 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_35274(v6, v25);
}

void *sub_57C5C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v1;
  v10 = v1[1];
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1B5744();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  if ((v10 + 136 * v7 + 136 * v8) != &v11[17 * v12 + 4])
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = v11[3];

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  sub_1B5744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v17 = (v10 + 136 * v7 - result - 32) / 136;
  v16 = __OFADD__(v8, v17);
  v6 = v8 + v17;
  if (v16)
  {
    goto LABEL_18;
  }

  v5 = result[2];
  if (v6 < v5)
  {
LABEL_19:
    v18 = result;
    sub_58120(v6, v5, 0);
    return v18;
  }

  return result;
}

uint64_t sub_57DD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v8[0] = *(a1 + 1);
  v8[1] = v3;
  v5 = *(a1 + 7);
  v9 = *(a1 + 5);
  v4 = v9;
  v10 = v5;
  *(a2 + 8) = v8[0];
  *(a2 + 24) = v3;
  *(a2 + 40) = v4;
  *(a2 + 56) = v5;
  *a2 = v2;
  return sub_42BA4(v8, &v7);
}

uint64_t sub_57E30(char **a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_52E40(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      v25 = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_581F4(v25, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

Swift::Int sub_57FD8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1B5584(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_1B4B34();
        v8[2] = v7;
      }

      v9[0] = v8 + 4;
      v9[1] = v7;

      sub_58700(v9, v10, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_58F90(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

unint64_t sub_58120(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 136 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 136 * a3;
  v13 = (v7 + 32 + 136 * a2);
  v14 = 136 * v12;
  v15 = &v13[136 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_581F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v68 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v64 = *(v68 - 8);
  v10 = v64[8];
  v11 = __chkstk_darwin(v68);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v63 = &v56 - v14;
  v15 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v15 = a2 - a1;
  }

  v16 = v15 >> 3;
  v17 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v17 = a3 - a2;
  }

  v18 = v17 >> 3;
  if (v16 < v17 >> 3)
  {
    if (a4 != a1 || &a1[v16] <= a4)
    {
      result = memmove(a4, a1, 8 * v16);
    }

    v19 = &a4[v16];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v59 = v64 + 1;
      v60 = v64 + 2;
      v65 = v19;
      v66 = a3;
      while (1)
      {
        if (!*(a5 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        v61 = a1;
        v20 = *a4;
        result = sub_43124(*a2);
        if ((v21 & 1) == 0)
        {
          goto LABEL_51;
        }

        v67 = a2;
        v22 = a4;
        v23 = v63;
        v24 = v64;
        v25 = v64[9];
        v26 = v64[2];
        v27 = v68;
        v26(v63, *(a5 + 56) + v25 * result, v68);
        v28 = sub_1B4374();
        v29 = v24[1];
        result = v29(v23, v27);
        if (!*(a5 + 16))
        {
          goto LABEL_53;
        }

        result = sub_43124(v20);
        if ((v30 & 1) == 0)
        {
          goto LABEL_55;
        }

        v31 = *(a5 + 56) + result * v25;
        v32 = v62;
        v33 = v68;
        v26(v62, v31, v68);
        v34 = sub_1B4374();
        result = v29(v32, v33);
        if (v34 >= v28)
        {
          break;
        }

        v35 = v67;
        a2 = v67 + 1;
        v36 = v61;
        a4 = v22;
        v19 = v65;
        if (v61 != v67)
        {
          goto LABEL_20;
        }

LABEL_21:
        a1 = v36 + 1;
        if (a4 >= v19 || a2 >= v66)
        {
          goto LABEL_23;
        }
      }

      v35 = v22;
      a4 = v22 + 1;
      v36 = v61;
      a2 = v67;
      v19 = v65;
      if (v61 == v22)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v36 = *v35;
      goto LABEL_21;
    }

LABEL_23:
    a2 = a1;
    goto LABEL_45;
  }

  if (a4 != a2 || &a2[v18] <= a4)
  {
    result = memmove(a4, a2, 8 * v18);
  }

  v19 = &a4[v18];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_45:
    if (a2 != a4 || a2 >= (a4 + ((v19 - a4 + (v19 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v19 - a4));
    }

    return 1;
  }

  v59 = v64 + 1;
  v60 = v64 + 2;
  v61 = a1;
  v57 = a4;
LABEL_30:
  v37 = a2 - 1;
  v38 = a3 - 1;
  v67 = a2;
  v58 = a2 - 1;
  while (*(a5 + 16))
  {
    v66 = v38;
    v39 = v19 - 1;
    v40 = *v37;
    result = sub_43124(*(v19 - 1));
    if ((v41 & 1) == 0)
    {
      goto LABEL_52;
    }

    v65 = v19;
    v42 = v63;
    v43 = v64;
    v44 = v64[9];
    v45 = v64[2];
    v46 = v68;
    v45(v63, *(a5 + 56) + v44 * result, v68);
    v47 = sub_1B4374();
    v48 = v43[1];
    result = v48(v42, v46);
    if (!*(a5 + 16))
    {
      goto LABEL_54;
    }

    result = sub_43124(v40);
    if ((v49 & 1) == 0)
    {
      goto LABEL_56;
    }

    v50 = *(a5 + 56) + result * v44;
    v51 = v62;
    v52 = v68;
    v45(v62, v50, v68);
    v53 = sub_1B4374();
    result = v48(v51, v52);
    if (v53 < v47)
    {
      a3 = v66;
      a4 = v57;
      v55 = v58;
      v19 = v65;
      if (v66 + 1 != v67)
      {
        *v66 = *v58;
      }

      if (v19 <= a4 || (a2 = v55, v55 <= v61))
      {
        a2 = v55;
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    v54 = v66;
    a4 = v57;
    v37 = v58;
    if (v66 + 1 != v65)
    {
      *v66 = *v39;
    }

    v38 = v54 - 1;
    v19 = v39;
    a2 = v67;
    if (v39 <= a4)
    {
      v19 = v39;
      goto LABEL_45;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_58700(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v134 = a1;
  v149 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v8 = *(*(v149 - 8) + 64);
  v9 = __chkstk_darwin(v149);
  v144 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v145 = &v131 - v12;
  v152 = _swiftEmptyArrayStorage;
  v139 = a3;
  v13 = a3[1];
  if (v13 >= 1)
  {
    v143 = v11;
    v147 = v11 + 8;
    v148 = v11 + 16;
    swift_bridgeObjectRetain_n();
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v137 = a4;
LABEL_5:
    v16 = v14;
    if (v14 + 1 >= v13)
    {
      v40 = v14 + 1;
    }

    else
    {
      v17 = *v139;
      v18 = *(*v139 + 8 * (v14 + 1));
      v150 = *(*v139 + 8 * v14);
      v151 = v18;
      v19 = v141;
      LODWORD(v142) = sub_49CA8(&v151, &v150, a5);
      v141 = v19;
      if (v19)
      {
        goto LABEL_105;
      }

      v140 = v13;
      v132 = v14;
      v133 = v15;
      v20 = (v14 + 2);
      v21 = (v17 + 8 * v14 + 16);
      while (v140 != v20)
      {
        if (!*(a5 + 16))
        {
          goto LABEL_112;
        }

        v22 = *(v21 - 1);
        v23 = sub_43124(*v21);
        if ((v24 & 1) == 0)
        {
          goto LABEL_113;
        }

        v146 = v20;
        v25 = a5;
        v26 = v143;
        v27 = *(v143 + 72);
        v28 = *(a5 + 56) + v27 * v23;
        v29 = *(v143 + 16);
        v30 = v145;
        v31 = v149;
        v29(v145, v28, v149);
        v32 = sub_1B4374();
        v33 = *(v26 + 8);
        v33(v30, v31);
        if (!*(v25 + 16))
        {
          goto LABEL_114;
        }

        v34 = sub_43124(v22);
        if ((v35 & 1) == 0)
        {
          goto LABEL_115;
        }

        v36 = *(v25 + 56) + v34 * v27;
        v37 = v144;
        v38 = v149;
        v29(v144, v36, v149);
        v39 = sub_1B4374();
        v33(v37, v38);
        v20 = (v146 + 1);
        ++v21;
        a5 = v25;
        if (((v142 ^ (v39 >= v32)) & 1) == 0)
        {
          v40 = v146;
          goto LABEL_17;
        }
      }

      v40 = v140;
LABEL_17:
      a4 = v137;
      v16 = v132;
      v15 = v133;
      if (v142)
      {
        if (v40 < v132)
        {
          goto LABEL_135;
        }

        if (v132 < v40)
        {
          v41 = v40 - 1;
          v42 = v132;
          do
          {
            if (v42 != v41)
            {
              v44 = *v139;
              if (!*v139)
              {
                goto LABEL_138;
              }

              v45 = *(v44 + 8 * v42);
              *(v44 + 8 * v42) = *(v44 + 8 * v41);
              *(v44 + 8 * v41) = v45;
            }
          }

          while (++v42 < v41--);
        }
      }
    }

    v46 = v139[1];
    if (v40 >= v46)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v40, v16))
    {
      goto LABEL_132;
    }

    if (v40 - v16 >= a4)
    {
LABEL_35:
      v14 = v40;
      if (v40 < v16)
      {
        goto LABEL_131;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v16, a4))
    {
      goto LABEL_133;
    }

    if (v16 + a4 >= v46)
    {
      v47 = v139[1];
    }

    else
    {
      v47 = v16 + a4;
    }

    if (v47 < v16)
    {
      goto LABEL_134;
    }

    if (v40 == v47)
    {
      goto LABEL_35;
    }

    v132 = v16;
    v133 = v15;
    v142 = *v139;
    v104 = (v142 + 8 * v40 - 8);
    v105 = (v16 - v40);
    v138 = v47;
LABEL_88:
    v140 = v40;
    v135 = v105;
    v136 = v104;
    v106 = v105;
    while (*(a5 + 16))
    {
      v107 = v104->i64[0];
      v108 = sub_43124(v104->i64[1]);
      if ((v109 & 1) == 0)
      {
        goto LABEL_109;
      }

      v146 = v106;
      v110 = a5;
      v111 = v143;
      v112 = *(v143 + 72);
      v113 = *(a5 + 56) + v112 * v108;
      v114 = *(v143 + 16);
      v115 = v145;
      v116 = v149;
      v114(v145, v113, v149);
      v117 = sub_1B4374();
      v118 = *(v111 + 8);
      v118(v115, v116);
      if (!*(v110 + 16))
      {
        goto LABEL_110;
      }

      v119 = sub_43124(v107);
      if ((v120 & 1) == 0)
      {
        goto LABEL_111;
      }

      v121 = *(v110 + 56) + v119 * v112;
      v122 = v144;
      v123 = v149;
      v114(v144, v121, v149);
      v124 = sub_1B4374();
      v118(v122, v123);
      if (v124 >= v117)
      {
        a5 = v110;
LABEL_87:
        v40 = v140 + 1;
        v104 = &v136->u64[1];
        v105 = (v135 - 1);
        v14 = v138;
        if ((v140 + 1) != v138)
        {
          goto LABEL_88;
        }

        a4 = v137;
        v16 = v132;
        v15 = v133;
        if (v138 < v132)
        {
          goto LABEL_131;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_32F04(0, *(v15 + 2) + 1, 1, v15);
        }

        v49 = *(v15 + 2);
        v48 = *(v15 + 3);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v15 = sub_32F04((v48 > 1), v49 + 1, 1, v15);
        }

        *(v15 + 2) = v50;
        v51 = v15 + 32;
        v52 = &v15[16 * v49 + 32];
        *v52 = v16;
        *(v52 + 1) = v14;
        v152 = v15;
        v146 = *v134;
        if (!v146)
        {
          goto LABEL_139;
        }

        if (v49)
        {
          v138 = v14;
          v142 = (v15 + 32);
          while (1)
          {
            v53 = v50 - 1;
            if (v50 >= 4)
            {
              break;
            }

            if (v50 == 3)
            {
              v54 = *(v15 + 4);
              v55 = *(v15 + 5);
              v64 = __OFSUB__(v55, v54);
              v56 = v55 - v54;
              v57 = v64;
LABEL_56:
              if (v57)
              {
                goto LABEL_122;
              }

              v70 = &v15[16 * v50];
              v72 = *v70;
              v71 = *(v70 + 1);
              v73 = __OFSUB__(v71, v72);
              v74 = v71 - v72;
              v75 = v73;
              if (v73)
              {
                goto LABEL_125;
              }

              v76 = &v51[16 * v53];
              v78 = *v76;
              v77 = *(v76 + 1);
              v64 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v64)
              {
                goto LABEL_128;
              }

              if (__OFADD__(v74, v79))
              {
                goto LABEL_129;
              }

              if (v74 + v79 >= v56)
              {
                if (v56 < v79)
                {
                  v53 = v50 - 2;
                }

                goto LABEL_77;
              }

              goto LABEL_70;
            }

            v80 = &v15[16 * v50];
            v82 = *v80;
            v81 = *(v80 + 1);
            v64 = __OFSUB__(v81, v82);
            v74 = v81 - v82;
            v75 = v64;
LABEL_70:
            if (v75)
            {
              goto LABEL_124;
            }

            v83 = &v51[16 * v53];
            v85 = *v83;
            v84 = *(v83 + 1);
            v64 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v64)
            {
              goto LABEL_127;
            }

            if (v86 < v74)
            {
              goto LABEL_3;
            }

LABEL_77:
            if (v53 - 1 >= v50)
            {
              goto LABEL_116;
            }

            v91 = *v139;
            if (!*v139)
            {
              goto LABEL_137;
            }

            v92 = v15;
            v93 = &v51[16 * v53 - 16];
            v94 = *v93;
            v95 = v53;
            v96 = &v51[16 * v53];
            v97 = *(v96 + 1);
            v98 = (v91 + 8 * *v93);
            v99 = (v91 + 8 * *v96);
            v100 = (v91 + 8 * v97);

            v101 = v98;
            v102 = v141;
            sub_581F4(v101, v99, v100, v146, a5);
            v141 = v102;
            if (v102)
            {

              v152 = v92;
LABEL_105:
              swift_bridgeObjectRelease_n();
            }

            if (v97 < v94)
            {
              goto LABEL_117;
            }

            v103 = *(v92 + 2);
            if (v95 > v103)
            {
              goto LABEL_118;
            }

            *v93 = v94;
            *(v93 + 1) = v97;
            if (v95 >= v103)
            {
              goto LABEL_119;
            }

            v50 = v103 - 1;
            memmove(v96, v96 + 16, 16 * (v103 - 1 - v95));
            v15 = v92;
            *(v92 + 2) = v103 - 1;
            a4 = v137;
            v14 = v138;
            v51 = v142;
            if (v103 <= 2)
            {
LABEL_3:
              v152 = v15;
              goto LABEL_4;
            }
          }

          v58 = &v51[16 * v50];
          v59 = *(v58 - 8);
          v60 = *(v58 - 7);
          v64 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          if (v64)
          {
            goto LABEL_120;
          }

          v63 = *(v58 - 6);
          v62 = *(v58 - 5);
          v64 = __OFSUB__(v62, v63);
          v56 = v62 - v63;
          v57 = v64;
          if (v64)
          {
            goto LABEL_121;
          }

          v65 = &v15[16 * v50];
          v67 = *v65;
          v66 = *(v65 + 1);
          v64 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v64)
          {
            goto LABEL_123;
          }

          v64 = __OFADD__(v56, v68);
          v69 = v56 + v68;
          if (v64)
          {
            goto LABEL_126;
          }

          if (v69 >= v61)
          {
            v87 = &v51[16 * v53];
            v89 = *v87;
            v88 = *(v87 + 1);
            v64 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v64)
            {
              goto LABEL_130;
            }

            if (v56 < v90)
            {
              v53 = v50 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_56;
        }

LABEL_4:
        v13 = v139[1];
        if (v14 >= v13)
        {
          goto LABEL_101;
        }

        goto LABEL_5;
      }

      v125 = v146;
      if (!v142)
      {
        goto LABEL_136;
      }

      *v104 = vextq_s8(*v104, *v104, 8uLL);
      v104 = (v104 - 8);
      v126 = __CFADD__(v125, 1);
      v106 = (v125 + 1);
      a5 = v110;
      if (v126)
      {
        goto LABEL_87;
      }
    }

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
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_137:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_138:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_139:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_140;
  }

  swift_bridgeObjectRetain_n();
LABEL_101:
  v127 = *v134;
  if (!*v134)
  {
LABEL_140:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  v128 = v127;
  v129 = v141;
  sub_57E30(&v152, v128, v139, a5);
  if (v129)
  {

    goto LABEL_105;
  }

  swift_bridgeObjectRelease_n();
}

unint64_t sub_58F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v48 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v44 = *(v48 - 8);
  v10 = v44[8];
  v11 = __chkstk_darwin(v48);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v43 = &v36 - v14;
  v37 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v46 = v44 + 1;
    v47 = v44 + 2;
    v41 = v15;
    v16 = (v15 + 8 * a3 - 8);
    v17 = a1 - a3;
LABEL_5:
    v39 = v16;
    v40 = a3;
    v38 = v17;
    v18 = v17;
    while (*(a5 + 16))
    {
      v19 = v16->i64[0];
      result = sub_43124(v16->i64[1]);
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }

      v45 = v18;
      v21 = v43;
      v22 = v44;
      v23 = v44[9];
      v24 = v44[2];
      v25 = v48;
      v24(v43, *(a5 + 56) + v23 * result, v48);
      v26 = sub_1B4374();
      v27 = v22[1];
      result = v27(v21, v25);
      if (!*(a5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_43124(v19);
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      v29 = *(a5 + 56) + result * v23;
      v30 = v42;
      v31 = v48;
      v24(v42, v29, v48);
      v32 = sub_1B4374();
      result = v27(v30, v31);
      v33 = v32 < v26;
      v34 = v45;
      if (v33)
      {
        if (!v41)
        {
          goto LABEL_20;
        }

        *v16 = vextq_s8(*v16, *v16, 8uLL);
        v16 = (v16 - 8);
        v35 = __CFADD__(v34, 1);
        v18 = v34 + 1;
        if (!v35)
        {
          continue;
        }
      }

      a3 = v40 + 1;
      v16 = &v39->u64[1];
      v17 = v38 - 1;
      if (v40 + 1 == v37)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_59218(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_56B44(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_57FD8(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

char *sub_592BC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v189 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v194 = &v186 - v11;
  v12 = __chkstk_darwin(v10);
  v191 = &v186 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v186 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v186 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v186 - v21;
  v23 = __chkstk_darwin(v20);
  v188 = &v186 - v24;
  v25 = __chkstk_darwin(v23);
  v193 = &v186 - v26;
  v27 = __chkstk_darwin(v25);
  v190 = &v186 - v28;
  v29 = __chkstk_darwin(v27);
  v192 = &v186 - v30;
  v31 = __chkstk_darwin(v29);
  v195 = &v186 - v32;
  __chkstk_darwin(v31);
  v34 = &v186 - v33;
  v35 = *a2;
  v36 = 0;
  v37 = sub_54E00(a1, sub_550F4, sub_550F4);
  v38 = sub_54E00(a1, sub_54F70, sub_54F70);
  v39 = v38;
  if (v35 == 7)
  {

    v48 = *(v37 + 16);
    if (v48 >= a3)
    {
      v49 = a3;
    }

    else
    {
      v49 = *(v37 + 16);
    }

    if (v48)
    {
      v40 = sub_3503C(*(v37 + 16), 0);
      v36 = sub_43128(&v198, v40 + 32, v48, v37);
      sub_417B8();
      if (v36 != v48)
      {
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v40 = _swiftEmptyArrayStorage;
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_16:
        v50 = *(v40 + 2);
        if (v50 < v49)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        if (v50 != v49)
        {
          sub_50F4C(v40, (v40 + 32), 0, (2 * v49) | 1);
          v52 = v51;

          return v52;
        }

        return v40;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  if (v35 == 5)
  {
    v193 = v19;
    v195 = v22;
    v187 = a3;
    v44 = sub_158B48(v37);

    v192 = sub_158B48(v39);

    v45 = *(v44 + 16);
    v186 = v16;
    if (v45)
    {
      v46 = sub_3503C(v45, 0);
      v47 = sub_43128(&v198, v46 + 32, v45, v44);
      swift_bridgeObjectRetain_n();
      sub_417B8();
      if (v47 != v45)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v16 = v186;
LABEL_35:
      v39 = v192;
      v198 = v46;
      sub_59218(&v198, v44);

      if (v36)
      {
        goto LABEL_181;
      }

      v55 = v195;
      v190 = *(v198 + 2);
      if (v190)
      {
        v61 = *(v198 + 4);
        goto LABEL_47;
      }

LABEL_46:
      v61 = 0;
LABEL_47:

      v66 = *(v39 + 16);
      if (v66)
      {
        v188 = v61;
        v67 = sub_3503C(v66, 0);
        v68 = sub_43128(&v198, v67 + 32, v66, v39);
        swift_bridgeObjectRetain_n();
        sub_417B8();
        if (v68 != v66)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v55 = v195;
        v16 = v186;
        v39 = v192;
        v61 = v188;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v67 = _swiftEmptyArrayStorage;
      }

      v198 = v67;
      sub_59218(&v198, v39);

      if (v36)
      {
        goto LABEL_181;
      }

      v69 = *(v198 + 2);
      v70 = v187;
      v71 = v194;
      if (v69)
      {
        v72 = *(v198 + 4);
      }

      else
      {
        v72 = 0;
      }

      if (v190 && *(v44 + 16))
      {
        v78 = sub_43124(v61);
        if (v79)
        {
          v80 = v78;
          v81 = *(v44 + 56);
          v82 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
          v83 = *(v82 - 8);
          v84 = v81 + *(v83 + 72) * v80;
          v55 = v195;
          (*(v83 + 16))(v195, v84, v82);

          (*(v83 + 56))(v55, 0, 1, v82);
          v71 = v194;
          v70 = v187;
          if (!v69)
          {
            goto LABEL_85;
          }

LABEL_82:
          if (*(v39 + 16))
          {
            v100 = sub_43124(v72);
            if (v101)
            {
              v102 = v100;
              v103 = *(v39 + 56);
              v104 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
              v105 = *(v104 - 8);
              v106 = v103 + *(v105 + 72) * v102;
              v107 = v193;
              (*(v105 + 16))(v193, v106, v104);

              (*(v105 + 56))(v107, 0, 1, v104);
LABEL_86:
              sub_43050(v55, v16, &qword_229708, &unk_1BCB60);
              v109 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
              v110 = *(v109 - 8);
              v111 = v55;
              v112 = *(v110 + 48);
              if (v112(v16, 1, v109) == 1)
              {
                sub_42F48(v16, &qword_229708, &unk_1BCB60);
                v194 = 0;
                v113 = _swiftEmptyArrayStorage;
                v114 = &_swiftEmptyArrayStorage[4];
                v115 = 1;
              }

              else
              {
                v116 = v191;
                sub_43050(v111, v191, &qword_229708, &unk_1BCB60);
                if (v112(v116, 1, v109) == 1)
                {
                  sub_42F48(v116, &qword_229708, &unk_1BCB60);
                  v117 = 0;
                }

                else
                {
                  v117 = sub_1B4374();
                  (*(v110 + 8))(v116, v109);
                }

                if (v117 >= v70)
                {
                  v118 = v70;
                }

                else
                {
                  v118 = v117;
                }

                if (v118 < 0)
                {
                  goto LABEL_177;
                }

                v196 = 0;
                v197 = v118;
                sub_42094(&qword_229780, &qword_229710, &unk_1D32C0);
                sub_1B43A4();
                v113 = v198;
                v114 = v199;
                v194 = v200;
                v119 = v16;
                v115 = v201;
                (*(v110 + 8))(v119, v109);
              }

              v120 = v193;
              sub_43050(v193, v71, &qword_229708, &unk_1BCB60);
              if (v112(v71, 1, v109) == 1)
              {
                sub_42F48(v71, &qword_229708, &unk_1BCB60);
                v121 = 0;
                v122 = &_swiftEmptyArrayStorage[4];
                v123 = 1;
              }

              else
              {
                v124 = v120;
                v125 = v189;
                sub_43050(v124, v189, &qword_229708, &unk_1BCB60);
                if (v112(v125, 1, v109) == 1)
                {
                  sub_42F48(v125, &qword_229708, &unk_1BCB60);
                  v126 = 0;
                }

                else
                {
                  v127 = v125;
                  v126 = sub_1B4374();
                  (*(v110 + 8))(v127, v109);
                }

                if (v126 >= v70)
                {
                  v128 = v70;
                }

                else
                {
                  v128 = v126;
                }

                if (v128 < 0)
                {
                  goto LABEL_179;
                }

                v196 = 0;
                v197 = v128;
                sub_42094(&qword_229780, &qword_229710, &unk_1D32C0);
                sub_1B43A4();
                v122 = v199;
                v129 = v71;
                v121 = v200;
                v123 = v201;
                (*(v110 + 8))(v129, v109);
              }

              v198 = v113;
              v199 = v114;
              v200 = v194;
              v201 = v115;
              swift_unknownObjectRetain();
              v130 = swift_unknownObjectRetain();
              sub_56DC0(v130, v122, v121, v123);
              v131 = v200;
              v132 = v201 >> 1;
              v133 = (v201 >> 1) - v200;
              if (__OFSUB__(v201 >> 1, v200))
              {
                goto LABEL_166;
              }

              if (!v133)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                sub_42F48(v193, &qword_229708, &unk_1BCB60);
                v142 = v195;
LABEL_160:
                sub_42F48(v142, &qword_229708, &unk_1BCB60);
                return _swiftEmptyArrayStorage;
              }

              v134 = v199;
              v198 = _swiftEmptyArrayStorage;
              sub_3741C(0, v133 & ~(v133 >> 63), 0);
              if (v133 < 0)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              v40 = v198;
              if (v131 <= v132)
              {
                v135 = v132;
              }

              else
              {
                v135 = v131;
              }

              v136 = v135 - v131;
              v137 = &v134[17 * v131];
              do
              {
                if (!v136)
                {
                  __break(1u);
                  goto LABEL_163;
                }

                v138 = *v137;
                v198 = v40;
                v140 = *(v40 + 2);
                v139 = *(v40 + 3);
                if (v140 >= v139 >> 1)
                {
                  sub_3741C((v139 > 1), v140 + 1, 1);
                  v40 = v198;
                }

                *(v40 + 2) = v140 + 1;
                *&v40[8 * v140 + 32] = v138;
                --v136;
                v137 += 17;
                --v133;
              }

              while (v133);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_42F48(v193, &qword_229708, &unk_1BCB60);
              v141 = v195;
LABEL_158:
              sub_42F48(v141, &qword_229708, &unk_1BCB60);
              return v40;
            }
          }

LABEL_85:

          v108 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
          (*(*(v108 - 8) + 56))(v193, 1, 1, v108);
          goto LABEL_86;
        }

        v99 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        v55 = v195;
        (*(*(v99 - 8) + 56))(v195, 1, 1, v99);
      }

      else
      {

        v85 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        (*(*(v85 - 8) + 56))(v55, 1, 1, v85);
      }

      if (!v69)
      {
        goto LABEL_85;
      }

      goto LABEL_82;
    }

LABEL_34:
    swift_bridgeObjectRetain_n();
    v46 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  if (v35 != 3)
  {
    v44 = *(v37 + 16);
    if (v44 >= a3)
    {
      v54 = a3;
    }

    else
    {
      v54 = *(v37 + 16);
    }

    if (*(v38 + 16) >= a3)
    {
      v55 = a3;
    }

    else
    {
      v55 = *(v38 + 16);
    }

    if (v44)
    {
      v56 = sub_3503C(*(v37 + 16), 0);
      v36 = sub_43128(&v198, v56 + 32, v44, v37);
      sub_417B8();
      if (v36 != v44)
      {
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_28:
        v57 = *(v56 + 2);
        if (v57 < v54)
        {
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (v57 != v54)
        {
          sub_50F4C(v56, (v56 + 32), 0, (2 * v54) | 1);
          v59 = v58;

          v56 = v59;
        }

        v44 = *(v39 + 16);
        if (v44)
        {
          v36 = sub_3503C(*(v39 + 16), 0);
          v60 = sub_43128(&v198, v36 + 4, v44, v39);
          sub_417B8();
          if (v60 != v44)
          {
            __break(1u);
            goto LABEL_34;
          }
        }

        else
        {

          v36 = _swiftEmptyArrayStorage;
        }

        v96 = v36[2];
        if (v96 < v55)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        if (v96 != v55)
        {
          sub_50F4C(v36, (v36 + 4), 0, (2 * v55) | 1);
          v98 = v97;

          v36 = v98;
        }

        v198 = v56;
        sub_5F33C(v36);
        return v198;
      }
    }

    else
    {

      v56 = _swiftEmptyArrayStorage;
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  v194 = v34;
  v40 = sub_1588F0(v37);

  v191 = sub_158908(v39);

  v41 = *(v40 + 2);
  v187 = a3;
  if (!v41)
  {
LABEL_40:
    swift_bridgeObjectRetain_n();
    v42 = _swiftEmptyArrayStorage;
    goto LABEL_41;
  }

  v42 = sub_3503C(v41, 0);
  v43 = sub_43128(&v198, v42 + 32, v41, v40);
  swift_bridgeObjectRetain_n();
  sub_417B8();
  if (v43 != v41)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  a3 = v187;
LABEL_41:
  v198 = v42;
  sub_59218(&v198, v40);

  if (!v36)
  {

    v62 = *(v198 + 2);
    v63 = v194;
    v64 = v191;
    if (v62)
    {
      v65 = *(v198 + 4);
    }

    else
    {
      v65 = 0;
    }

    v73 = *(v64 + 16);
    if (v73)
    {
      v186 = v62;
      v189 = v65;
      v74 = sub_3503C(v73, 0);
      v75 = sub_43128(&v198, v74 + 32, v73, v64);
      swift_bridgeObjectRetain_n();
      sub_417B8();
      if (v75 != v73)
      {
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      v62 = v186;
      a3 = v187;
      v63 = v194;
      v64 = v191;
      v65 = v189;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v74 = _swiftEmptyArrayStorage;
    }

    v198 = v74;
    sub_59218(&v198, v64);

    v76 = *(v198 + 2);
    if (v76)
    {
      v77 = *(v198 + 4);

      if (!v62)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v77 = 0;

      if (!v62)
      {
        goto LABEL_74;
      }
    }

    if (*(v40 + 2))
    {
      v86 = sub_43124(v65);
      if (v87)
      {
        v88 = v86;
        v89 = *(v40 + 7);
        v90 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        v91 = a3;
        v92 = *(v90 - 8);
        v93 = v89 + *(v92 + 72) * v88;
        v63 = v194;
        (*(v92 + 16))(v194, v93, v90);

        (*(v92 + 56))(v63, 0, 1, v90);
        a3 = v91;
        v94 = v195;
        if (!v76)
        {
          goto LABEL_124;
        }

LABEL_121:
        if (*(v64 + 16))
        {
          v144 = sub_43124(v77);
          if (v145)
          {
            v146 = v144;
            v147 = *(v64 + 56);
            v148 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
            v149 = *(v148 - 8);
            v150 = v147 + *(v149 + 72) * v146;
            v94 = v195;
            (*(v149 + 16))(v195, v150, v148);

            (*(v149 + 56))(v94, 0, 1, v148);
          }

          else
          {

            v152 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
            v94 = v195;
            (*(*(v152 - 8) + 56))(v195, 1, 1, v152);
          }

          goto LABEL_126;
        }

LABEL_124:

        v151 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        (*(*(v151 - 8) + 56))(v94, 1, 1, v151);
LABEL_126:
        v153 = v192;
        sub_43050(v63, v192, &qword_229708, &unk_1BCB60);
        v154 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        v155 = *(v154 - 8);
        v156 = *(v155 + 48);
        if (v156(v153, 1, v154) == 1)
        {
          sub_42F48(v153, &qword_229708, &unk_1BCB60);
          v191 = 0;
          v157 = _swiftEmptyArrayStorage;
          v158 = &_swiftEmptyArrayStorage[4];
          v159 = 1;
          v160 = v193;
        }

        else
        {
          v161 = v63;
          v162 = v190;
          sub_43050(v161, v190, &qword_229708, &unk_1BCB60);
          if (v156(v162, 1, v154) == 1)
          {
            sub_42F48(v162, &qword_229708, &unk_1BCB60);
            v163 = 0;
          }

          else
          {
            v163 = sub_1B4374();
            (*(v155 + 8))(v162, v154);
          }

          if (v163 >= a3)
          {
            v164 = a3;
          }

          else
          {
            v164 = v163;
          }

          v160 = v193;
          if (v164 < 0)
          {
            goto LABEL_178;
          }

          v196 = 0;
          v197 = v164;
          sub_42094(&qword_229780, &qword_229710, &unk_1D32C0);
          sub_1B43A4();
          v165 = v153;
          v157 = v198;
          v158 = v199;
          v159 = v201;
          v191 = v200;
          (*(v155 + 8))(v165, v154);
          v94 = v195;
        }

        sub_43050(v94, v160, &qword_229708, &unk_1BCB60);
        if (v156(v160, 1, v154) == 1)
        {
          sub_42F48(v160, &qword_229708, &unk_1BCB60);
          v166 = 0;
          v167 = &_swiftEmptyArrayStorage[4];
          v168 = 1;
        }

        else
        {
          v169 = v94;
          v170 = v188;
          sub_43050(v169, v188, &qword_229708, &unk_1BCB60);
          if (v156(v170, 1, v154) == 1)
          {
            sub_42F48(v170, &qword_229708, &unk_1BCB60);
            v171 = 0;
          }

          else
          {
            v172 = v170;
            v171 = sub_1B4374();
            (*(v155 + 8))(v172, v154);
          }

          if (v171 >= a3)
          {
            v173 = a3;
          }

          else
          {
            v173 = v171;
          }

          if (v173 < 0)
          {
            goto LABEL_180;
          }

          v196 = 0;
          v197 = v173;
          sub_42094(&qword_229780, &qword_229710, &unk_1D32C0);
          sub_1B43A4();
          v174 = v160;
          v167 = v199;
          v166 = v200;
          v168 = v201;
          (*(v155 + 8))(v174, v154);
        }

        v198 = v157;
        v199 = v158;
        v200 = v191;
        v201 = v159;
        swift_unknownObjectRetain();
        v175 = swift_unknownObjectRetain();
        sub_56DC0(v175, v167, v166, v168);
        v176 = v200;
        v177 = v201 >> 1;
        v178 = (v201 >> 1) - v200;
        if (__OFSUB__(v201 >> 1, v200))
        {
          goto LABEL_167;
        }

        if (v178)
        {
          v179 = v199;
          v198 = _swiftEmptyArrayStorage;
          sub_3741C(0, v178 & ~(v178 >> 63), 0);
          if (v178 < 0)
          {
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
            goto LABEL_181;
          }

          v40 = v198;
          if (v176 <= v177)
          {
            v180 = v177;
          }

          else
          {
            v180 = v176;
          }

          v181 = v180 - v176;
          v182 = &v179[17 * v176];
          while (v181)
          {
            v183 = *v182;
            v198 = v40;
            v185 = *(v40 + 2);
            v184 = *(v40 + 3);
            if (v185 >= v184 >> 1)
            {
              sub_3741C((v184 > 1), v185 + 1, 1);
              v40 = v198;
            }

            *(v40 + 2) = v185 + 1;
            *&v40[8 * v185 + 32] = v183;
            --v181;
            v182 += 17;
            if (!--v178)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_42F48(v195, &qword_229708, &unk_1BCB60);
              v141 = v194;
              goto LABEL_158;
            }
          }

LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_42F48(v195, &qword_229708, &unk_1BCB60);
        v142 = v194;
        goto LABEL_160;
      }

      v143 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v63 = v194;
      (*(*(v143 - 8) + 56))(v194, 1, 1, v143);
LABEL_120:
      v94 = v195;
      if (!v76)
      {
        goto LABEL_124;
      }

      goto LABEL_121;
    }

LABEL_74:

    v95 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
    (*(*(v95 - 8) + 56))(v63, 1, 1, v95);
    goto LABEL_120;
  }

LABEL_181:

  __break(1u);
  return result;
}

unint64_t *sub_5AA60(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
LABEL_4:
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_11:
    v14 = *(a4 + 16);
    v15 = (a4 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == *(*(a3 + 48) + 8 * v11))
      {
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (!__OFADD__(v5++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        return sub_5565C(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_5565C(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_5AB68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v117 = a8;
  v118 = a7;
  v119 = a6;
  v120 = a5;
  v10 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v122 = *(v10 - 8);
  v123 = v10;
  v11 = *(v122 + 64);
  v12 = __chkstk_darwin(v10);
  v121 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v114 = &v112 - v15;
  __chkstk_darwin(v14);
  v113 = &v112 - v16;
  v17 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v116 = &v112 - v23;
  v24 = __chkstk_darwin(v22);
  v115 = &v112 - v25;
  v26 = __chkstk_darwin(v24);
  v125 = &v112 - v27;
  v28 = __chkstk_darwin(v26);
  v129 = &v112 - v29;
  __chkstk_darwin(v28);
  v31 = &v112 - v30;
  v32 = _swiftEmptyArrayStorage;
  v142 = _swiftEmptyArrayStorage;
  *&v132 = a1;
  v126 = a1;

  v33 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v34 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
  v124 = v31;
  v127 = v34;
  v128 = v33;
  result = sub_1B43C4();
  v130 = a4;
  if (a4[2])
  {
    v36 = v130;
    v37 = v130[5];
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v38 = v36 + 7;
    v39 = -1 << *(v36 + 32);
    v40 = result & ~v39;
    if ((*(v36 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40))
    {
      v41 = ~v39;
      while (!*(v130[6] + v40) || *(v130[6] + v40) == 1)
      {
        v42 = sub_1B5604();

        if (v42)
        {
          goto LABEL_10;
        }

        v40 = (v40 + 1) & v41;
        if (((*(v38 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      v43 = v124;
      sub_43050(v124, v21, &qword_229708, &unk_1BCB60);
      v45 = v122;
      v44 = v123;
      if ((*(v122 + 48))(v21, 1, v123) != 1)
      {
        v96 = v121;
        (*(v45 + 32))(v121, v21, v44);
        v118(v96);
        v97 = v120();

        sub_5F428(v97);
        (*(v45 + 8))(v96, v44);
        v98 = v43;
LABEL_69:
        sub_42F48(v98, &qword_229708, &unk_1BCB60);
        return v142;
      }

      result = sub_42F48(v21, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v46 = *(v126 + 16);
  if (!v46)
  {
    *&v132 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v132 = v32;
    v84 = v125;
    sub_1B43C4();
    v86 = v122;
    v85 = v123;
    if (v130[2])
    {
      v87 = v130;
      v88 = v130[5];
      sub_1B57F4();
      sub_1B4884();
      v89 = sub_1B5844();
      v90 = v87 + 7;
      v91 = -1 << *(v87 + 32);
      v92 = v89 & ~v91;
      if ((*(v87 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v92))
      {
        v93 = ~v91;
        while (1)
        {
          v94 = *(v130[6] + v92);
          if (v94 != 1 && v94 != 2)
          {
            break;
          }

          v95 = sub_1B5604();

          if (v95)
          {
            goto LABEL_53;
          }

          v92 = (v92 + 1) & v93;
          if (((*(v90 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
          {
            goto LABEL_56;
          }
        }

LABEL_53:
        v99 = v116;
        sub_43050(v129, v116, &qword_229708, &unk_1BCB60);
        if ((*(v86 + 48))(v99, 1, v85) == 1)
        {
          sub_42F48(v99, &qword_229708, &unk_1BCB60);
        }

        else
        {
          v100 = v114;
          (*(v86 + 32))(v114, v99, v85);
          v118(v100);
          v101 = v120();

          sub_5F428(v101);
          (*(v86 + 8))(v100, v85);
        }
      }

LABEL_56:
      v84 = v125;
      if (v130[2])
      {
        v102 = v130;
        v103 = v130[5];
        sub_1B57F4();
        sub_1B4884();
        v104 = sub_1B5844();
        v105 = -1 << *(v102 + 32);
        v106 = v104 & ~v105;
        if ((*(v90 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106))
        {
          v107 = ~v105;
          while (!*(v130[6] + v106) || *(v130[6] + v106) == 2)
          {
            v108 = sub_1B5604();

            if (v108)
            {
              goto LABEL_65;
            }

            v106 = (v106 + 1) & v107;
            if (((*(v90 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
            {
              goto LABEL_68;
            }
          }

LABEL_65:
          v109 = v115;
          sub_43050(v84, v115, &qword_229708, &unk_1BCB60);
          if ((*(v86 + 48))(v109, 1, v85) == 1)
          {
            sub_42F48(v84, &qword_229708, &unk_1BCB60);
            sub_42F48(v129, &qword_229708, &unk_1BCB60);
            sub_42F48(v124, &qword_229708, &unk_1BCB60);
            v98 = v109;
            goto LABEL_69;
          }

          v110 = v113;
          (*(v86 + 32))(v113, v109, v85);
          v118(v110);
          v111 = v120();

          sub_5F428(v111);
          (*(v86 + 8))(v110, v85);
        }
      }
    }

LABEL_68:
    sub_42F48(v84, &qword_229708, &unk_1BCB60);
    sub_42F48(v129, &qword_229708, &unk_1BCB60);
    v98 = v124;
    goto LABEL_69;
  }

  v47 = 0;
  v48 = (v126 + 32);
  v49 = _swiftEmptyArrayStorage;
  v121 = (v126 + 32);
  do
  {
    v50 = &v48[136 * v47];
    v51 = v47;
    while (1)
    {
      if (v51 >= v46)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v52 = *(v50 + 7);
      v138 = *(v50 + 6);
      v139 = v52;
      v140 = v50[128];
      v53 = *(v50 + 3);
      v134 = *(v50 + 2);
      v135 = v53;
      v54 = *(v50 + 5);
      v136 = *(v50 + 4);
      v137 = v54;
      v55 = *(v50 + 1);
      v132 = *v50;
      v133 = v55;
      v47 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_71;
      }

      if ((BYTE8(v132) & 1) == 0)
      {
        break;
      }

      v56 = sub_1B5604();
      sub_429F8(&v132, v131);

      if (v56)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v132);
      ++v51;
      v50 += 136;
      if (v47 == v46)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v132, v131);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v141 = v49;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v49[2] + 1, 1);
      v49 = v141;
    }

    v48 = v121;
    v58 = v49[2];
    v57 = v49[3];
    if (v58 >= v57 >> 1)
    {
      result = sub_37574((v57 > 1), v58 + 1, 1);
      v49 = v141;
    }

    v49[2] = v58 + 1;
    v59 = &v49[17 * v58];
    *(v59 + 2) = v132;
    v60 = v133;
    v61 = v134;
    v62 = v136;
    *(v59 + 5) = v135;
    *(v59 + 6) = v62;
    *(v59 + 3) = v60;
    *(v59 + 4) = v61;
    v63 = v137;
    v64 = v138;
    v65 = v139;
    *(v59 + 160) = v140;
    *(v59 + 8) = v64;
    *(v59 + 9) = v65;
    *(v59 + 7) = v63;
  }

  while (v47 != v46);
LABEL_27:
  *&v132 = v49;
  result = sub_1B43C4();
  v66 = 0;
  v67 = v126 + 32;
  v32 = _swiftEmptyArrayStorage;
  v126 += 32;
LABEL_28:
  v68 = (v67 + 136 * v66);
  v69 = v66;
  while (v69 < v46)
  {
    v70 = v68[7];
    v138 = v68[6];
    v139 = v70;
    v140 = *(v68 + 128);
    v71 = v68[3];
    v134 = v68[2];
    v135 = v71;
    v72 = v68[5];
    v136 = v68[4];
    v137 = v72;
    v73 = v68[1];
    v132 = *v68;
    v133 = v73;
    v66 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_73;
    }

    if (BYTE8(v132))
    {
      sub_429F8(&v132, v131);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v141 = v32;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v32[2] + 1, 1);
        v32 = v141;
      }

      v76 = v32[2];
      v75 = v32[3];
      if (v76 >= v75 >> 1)
      {
        result = sub_37574((v75 > 1), v76 + 1, 1);
        v32 = v141;
      }

      v32[2] = v76 + 1;
      v77 = &v32[17 * v76];
      *(v77 + 2) = v132;
      v78 = v133;
      v79 = v134;
      v80 = v136;
      *(v77 + 5) = v135;
      *(v77 + 6) = v80;
      *(v77 + 3) = v78;
      *(v77 + 4) = v79;
      v81 = v137;
      v82 = v138;
      v83 = v139;
      *(v77 + 160) = v140;
      *(v77 + 8) = v82;
      *(v77 + 9) = v83;
      *(v77 + 7) = v81;
      v67 = v126;
      if (v66 != v46)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v74 = sub_1B5604();
    sub_429F8(&v132, v131);

    if (v74)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v132);
    ++v69;
    v68 = (v68 + 136);
    if (v66 == v46)
    {
      goto LABEL_43;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

void *sub_5B738(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v35 = _swiftEmptyArrayStorage;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      return v35;
    }

    if (v4 == 6)
    {
LABEL_18:
      v15 = *(a1 + 16);
      if (!v15)
      {
LABEL_30:
        v16 = _swiftEmptyArrayStorage;
        goto LABEL_31;
      }

      v16 = sub_35274(*(a1 + 16), 0);
      v30 = sub_3F1A0(&v34, v16 + 32, v15, a1);

      sub_417B8();
      if (v30 == v15)
      {
LABEL_31:
        v21 = sub_4ADCC(v16, v5, v6, v7);
LABEL_42:
        v24 = v21;

        sub_5F428(v24);
        return v35;
      }

      __break(1u);
LABEL_21:
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      *(v10 + 24) = v6;
      *(v10 + 32) = v7;
      v17 = *(a1 + 16);
      if (v17)
      {
        v12 = sub_35274(*(a1 + 16), 0);
        v31 = sub_3F1A0(&v34, v12 + 32, v17, a1);
        swift_retain_n();

        sub_417B8();
        if (v31 != v17)
        {
          __break(1u);
LABEL_24:
          v18 = *(a1 + 16);
          if (v18)
          {
            v19 = sub_35274(*(a1 + 16), 0);
            v32 = sub_3F1A0(&v34, v19 + 32, v18, a1);

            sub_417B8();
            if (v32 != v18)
            {
              __break(1u);
              goto LABEL_27;
            }
          }

          else
          {
            v19 = _swiftEmptyArrayStorage;
          }

          v21 = sub_4CC3C(v19, v5, v6, v7);
          goto LABEL_42;
        }
      }

      else
      {
        swift_retain_n();

        v12 = _swiftEmptyArrayStorage;
      }

      v22 = sub_5DCBC;
      v23 = sub_4E5E8;
      goto LABEL_45;
    }

    if (v4 != 7)
    {
      goto LABEL_24;
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = sub_35274(*(a1 + 16), 0);
      v27 = sub_3F1A0(&v34, v9 + 32, v8, a1);

      sub_417B8();
      v4 = v27;
      if (v27 != v8)
      {
        __break(1u);
        goto LABEL_8;
      }
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v21 = sub_4BD04(v9, v5, v6, v7);
    goto LABEL_42;
  }

LABEL_8:
  if (v4 > 2)
  {
    goto LABEL_13;
  }

  if (v4 >= 2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = sub_35274(*(a1 + 16), 0);
      v28 = sub_3F1A0(&v34, v12 + 32, v11, a1);
      swift_retain_n();

      sub_417B8();
      v4 = v28;
      if (v28 != v11)
      {
        __break(1u);
LABEL_13:
        if (v4 == 3)
        {
          goto LABEL_21;
        }

        if (v4 != 4)
        {
LABEL_27:
          v10 = swift_allocObject();
          *(v10 + 16) = v5;
          *(v10 + 24) = v6;
          *(v10 + 32) = v7;
          v20 = *(a1 + 16);
          if (v20)
          {
            v12 = sub_35274(*(a1 + 16), 0);
            v33 = sub_3F1A0(&v34, v12 + 32, v20, a1);
            swift_retain_n();

            sub_417B8();
            if (v33 != v20)
            {
              __break(1u);
              goto LABEL_30;
            }
          }

          else
          {
            swift_retain_n();

            v12 = _swiftEmptyArrayStorage;
          }

          v22 = sub_5DC68;
          v23 = sub_4EE44;
LABEL_45:
          v25 = sub_5AB68(v12, v5, v6, v7, v22, v10, v23, 0);

          sub_5F428(v25);

          return v35;
        }

        v13 = *(a1 + 16);
        if (v13)
        {
          v14 = sub_35274(*(a1 + 16), 0);
          v29 = sub_3F1A0(&v34, v14 + 32, v13, a1);

          sub_417B8();
          if (v29 != v13)
          {
            __break(1u);
            goto LABEL_18;
          }
        }

        else
        {
          v14 = _swiftEmptyArrayStorage;
        }

        v21 = sub_49E94(v14, v5, v6, v7);
        goto LABEL_42;
      }
    }

    else
    {
      swift_retain_n();

      v12 = _swiftEmptyArrayStorage;
    }

    v22 = sub_5DD0C;
    v23 = sub_4DB74;
    goto LABEL_45;
  }

  return v35;
}

unint64_t *sub_5BD3C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
LABEL_5:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_12:
    v15 = *(a4 + 16);
    v16 = (a4 + 32);
    while (v15)
    {
      v17 = *v16++;
      --v15;
      if (v17 == *(*(a3 + 48) + 8 * v12))
      {
        goto LABEL_5;
      }
    }

    *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_18;
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_5565C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_5BE4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(v13);
    bzero(&v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);
    v14 = a3(&v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);
    if (v4)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v16 = v14;
    swift_bridgeObjectRelease_n();
    return v16;
  }

  v17 = swift_slowAlloc();

  v16 = sub_552FC(v17, v11, a1, a2, a4);

  result = swift_bridgeObjectRelease_n();
  if (!v4)
  {
    return v16;
  }

  return result;
}

void *sub_5C00C(uint64_t a1, uint64_t *a2)
{
  v77 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v4 = *(v77 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v77);
  v7 = &v66 - v6;
  v78 = type metadata accessor for CollectionRecommendation(0);
  v80 = *(v78 - 8);
  v8 = *(v80 + 64);
  v9 = __chkstk_darwin(v78);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = &v66 - v12;
  v67 = *a2;
  v13 = a2[2];
  v71 = sub_15C8EC(a1);
  v14 = 0;
  v15 = 0;
  v87 = _swiftEmptyArrayStorage;
  v86 = &_swiftEmptySetSingleton;
  v75 = (v4 + 32);
  v76 = (v4 + 8);
  v72 = xmmword_1BCA80;
  v73 = v7;
  v74 = v11;
  v66 = v13;
  do
  {
    if (*(v13 + 16))
    {
      v20 = *(&off_20FFB8 + v14 + 32);
      v21 = sub_3AA80(v20);
      if (v22)
      {
        v70 = v14;
        v23 = *(v13 + 56) + 24 * v21;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        v84[0] = v20;

        v27 = v71;

        v29 = sub_592BC(v28, v84, v67);

        v30 = sub_5BE4C(v27, v29, sub_5AA60, sub_5AA60);
        v68 = v15;

        v69 = v29;

        v85[0] = v20;
        *v84 = v24;
        v84[8] = v25;
        *&v84[16] = v26;
        v31 = sub_5B738(v30, v85, v84);

        v81 = v31[2];
        if (v81)
        {
          v32 = 0;
          v79 = v31 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
          v16 = _swiftEmptyArrayStorage;
          v33 = v74;
          while (v32 < v31[2])
          {
            v34 = v83;
            sub_5EB2C(&v79[*(v80 + 72) * v32], v83, type metadata accessor for CollectionRecommendation);
            sub_5EB2C(v34, v33, type metadata accessor for CollectionRecommendation);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v36 = v77;
            v82 = v32 + 1;
            switch(EnumCaseMultiPayload)
            {
              case 1:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
              case 12:
                goto LABEL_13;
              case 2:
                v58 = sub_2B0C(&qword_228F40, &unk_1BB360);
                memcpy(v84, v33 + *(v58 + 48), sizeof(v84));
                sub_2601C(v84);
                v59 = *(v33 + *(v58 + 64));

LABEL_13:
                (*v75)(v7, v33, v36);
                sub_1B4394();
                (*v76)(v7, v36);
                v37 = *v84;
                break;
              case 9:
                sub_5DC0C(v33);
                v37 = _swiftEmptyArrayStorage;
                break;
              default:
                sub_2B0C(&qword_229368, &qword_1BC408);
                v37 = swift_allocObject();
                v38 = *v33;
                v39 = v33[1];
                v37[1] = v72;
                v37[2] = v38;
                v40 = v33[2];
                v41 = v33[3];
                v37[3] = v39;
                v37[4] = v40;
                v37[5] = v41;
                break;
            }

            v42 = v31;
            v43 = *(v37 + 2);
            if (v43)
            {
              *v84 = _swiftEmptyArrayStorage;
              sub_3741C(0, v43, 0);
              v44 = *v84;
              v45 = *(*v84 + 16);
              v46 = 2;
              do
              {
                v47 = *&v37[v46];
                *v84 = v44;
                v48 = v44[3];
                if (v45 >= v48 >> 1)
                {
                  sub_3741C((v48 > 1), v45 + 1, 1);
                  v44 = *v84;
                }

                v44[2] = v45 + 1;
                v44[v45 + 4] = v47;
                v46 += 4;
                ++v45;
                --v43;
              }

              while (v43);
              sub_5DC0C(v83);

              v7 = v73;
              v33 = v74;
            }

            else
            {

              sub_5DC0C(v83);
              v44 = _swiftEmptyArrayStorage;
            }

            v49 = v44[2];
            v50 = *(v16 + 2);
            v51 = v50 + v49;
            if (__OFADD__(v50, v49))
            {
              goto LABEL_42;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v51 > *(v16 + 3) >> 1)
            {
              if (v50 <= v51)
              {
                v53 = v50 + v49;
              }

              else
              {
                v53 = v50;
              }

              v16 = sub_33008(isUniquelyReferenced_nonNull_native, v53, 1, v16);
            }

            v31 = v42;
            v32 = v82;
            if (v44[2])
            {
              v54 = *(v16 + 2);
              if ((*(v16 + 3) >> 1) - v54 < v49)
              {
                goto LABEL_44;
              }

              memcpy(&v16[8 * v54 + 32], v44 + 4, 8 * v49);

              if (v49)
              {
                v55 = *(v16 + 2);
                v56 = __OFADD__(v55, v49);
                v57 = v55 + v49;
                if (v56)
                {
                  goto LABEL_45;
                }

                *(v16 + 2) = v57;
              }
            }

            else
            {

              if (v49)
              {
                goto LABEL_43;
              }
            }

            if (v32 == v81)
            {
              goto LABEL_3;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          JUMPOUT(0x5C70CLL);
        }

        v16 = _swiftEmptyArrayStorage;
LABEL_3:
        v17 = sub_40854(v16);

        sub_492E8(v17);
        sub_5F428(v31);
        v18 = v69;

        v15 = v68;
        v19 = sub_5BE4C(v71, v18, sub_5BD3C, sub_5BD3C);

        swift_bridgeObjectRelease_n();
        v71 = v19;
        v13 = v66;
        v14 = v70;
      }
    }

    ++v14;
  }

  while (v14 != 7);
  v60 = v87;
  v61 = v71;
  v62 = *(v71 + 16);
  if (!v62)
  {
    goto LABEL_39;
  }

  v63 = sub_35274(*(v71 + 16), 0);
  v64 = sub_3F1A0(v84, v63 + 32, v62, v61);
  sub_417B8();
  if (v64 != v62)
  {
    __break(1u);
LABEL_39:
  }

  return v60;
}

void *sub_5C794(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = type metadata accessor for CollectionRecommendation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a2 + 16);
  v12 = *a3;
  if (*(v11 + 16) && (v13 = sub_3AA80(0), (v14 & 1) != 0))
  {
    v15 = *(v11 + 56) + 24 * v13;
    v16 = *(v15 + 16);
    if (*(v15 + 8))
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = *v15;
    }

    v18 = *(v15 + 16);
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (sub_2ABE4(v12, v16))
  {
  }

  else
  {
    if (!v16[2] || (v34 = v16[5], sub_1B57F4(), sub_1B4884(), v35 = sub_1B5844(), v36 = -1 << *(v16 + 32), v37 = v35 & ~v36, ((*(v16 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0))
    {
LABEL_24:

      return _swiftEmptyArrayStorage;
    }

    v47 = a1;
    v48 = v17;
    v38 = ~v36;
    while (!*(v16[6] + v37) || *(v16[6] + v37) == 1)
    {
      v39 = sub_1B5604();

      if (v39)
      {
        goto LABEL_35;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v16 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_35:

    a1 = v47;
    v17 = v48;
  }

  v19 = *(a1 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (v19)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_375B4(0, v19, 0);
    v20 = v50;
    v21 = (a1 + 32);
    do
    {
      v22 = v21[1];
      v51[0] = *v21;
      v51[1] = v22;
      v24 = v21[3];
      v52 = v21[2];
      v23 = v52;
      v53 = v24;
      *v10 = v51[0];
      v10[1] = v22;
      v10[2] = v23;
      v10[3] = v24;
      swift_storeEnumTagMultiPayload();
      sub_42BA4(v51, v49);
      v50 = v20;
      v26 = v20[2];
      v25 = v20[3];
      if (v26 >= v25 >> 1)
      {
        sub_375B4(v25 > 1, v26 + 1, 1);
        v20 = v50;
      }

      v20[2] = v26 + 1;
      sub_5EB94(v10, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, type metadata accessor for CollectionRecommendation);
      v21 += 4;
      --v19;
    }

    while (v19);
  }

  v30 = sub_2FD88(v17, v20);
  if ((v29 & 1) == 0)
  {
    goto LABEL_16;
  }

  v40 = v29;
  v41 = v28;
  v42 = v27;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
    v43 = _swiftEmptyArrayStorage;
  }

  v44 = v43[2];

  if (__OFSUB__(v40 >> 1, v41))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v44 != (v40 >> 1) - v41)
  {
LABEL_37:
    swift_unknownObjectRelease();
    v29 = v40;
    v28 = v41;
    v27 = v42;
LABEL_16:
    sub_5101C(v30, v27, v28, v29);
    v32 = v31;
    swift_unknownObjectRelease();
    return v32;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v45;
  if (v45)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return _swiftEmptyArrayStorage;
}

_OWORD *sub_5CB94(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 254;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 88) = 0u;
  result = (a1 + 88);
  result[11] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  return result;
}

void *sub_5CBF0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v58 = type metadata accessor for CollectionRecommendation(0);
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v58);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v56 - v11;
  v13 = *(a2 + 16);
  v14 = *a3;
  if (*(v13 + 16) && (v15 = sub_3AA80(9), (v16 & 1) != 0))
  {
    v17 = *(v13 + 56) + 24 * v15;
    v18 = *(v17 + 16);
    if (*(v17 + 8))
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = *v17;
    }

    v20 = *(v17 + 16);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (sub_2ABE4(v14, v18))
  {
  }

  else
  {
    if (!v18[2] || (v56 = a1, v37 = v18[5], sub_1B57F4(), sub_1B4884(), v38 = sub_1B5844(), v39 = -1 << *(v18 + 32), v40 = v38 & ~v39, ((*(v18 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40) & 1) == 0))
    {
LABEL_28:

      return _swiftEmptyArrayStorage;
    }

    v41 = ~v39;
    while (!*(v18[6] + v40) || *(v18[6] + v40) == 1)
    {
      v42 = sub_1B5604();

      if (v42)
      {
        goto LABEL_42;
      }

      v40 = (v40 + 1) & v41;
      if (((*(v18 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_42:

    a1 = v56;
  }

  v57 = v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = (a1 + 144);
    v23 = _swiftEmptyArrayStorage;
    do
    {
      v24 = *(v22 - 6);
      v61[0] = *(v22 - 7);
      v61[1] = v24;
      v25 = *(v22 - 4);
      v61[2] = *(v22 - 5);
      v62 = v25;
      if (*v22 != 2)
      {
        v26 = *(v22 - 1);
        v27 = BYTE8(v61[0]);
        v28 = &_swiftEmptyDictionarySingleton;
        if (v62)
        {
          v28 = v62;
        }

        v29 = *(v22 - 6);
        *&v60[7] = *(v22 - 7);
        *&v60[23] = v29;
        v30 = *(v22 - 4);
        *&v60[39] = *(v22 - 5);
        *&v60[55] = v30;
        v31 = *(&v62 + 1);
        *v10 = v26;
        v10[8] = v27;
        v32 = *&v60[16];
        *(v10 + 9) = *v60;
        v33 = *&v60[32];
        v34 = *&v60[48];
        *(v10 + 9) = *&v60[63];
        *(v10 + 10) = v28;
        *(v10 + 57) = v34;
        *(v10 + 41) = v33;
        *(v10 + 25) = v32;
        *(v10 + 11) = v31;
        swift_storeEnumTagMultiPayload();
        sub_5EB94(v10, v12, type metadata accessor for CollectionRecommendation);
        sub_42BA4(v61, v59);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_33474(0, v23[2] + 1, 1, v23);
        }

        v36 = v23[2];
        v35 = v23[3];
        if (v36 >= v35 >> 1)
        {
          v23 = sub_33474(v35 > 1, v36 + 1, 1, v23);
        }

        v23[2] = v36 + 1;
        sub_5EB94(v12, v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v36, type metadata accessor for CollectionRecommendation);
      }

      v22 += 136;
      --v21;
    }

    while (v21);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v46 = sub_2FD88(v57, v23);
  if ((v45 & 1) == 0)
  {
    goto LABEL_31;
  }

  v50 = v45;
  v51 = v44;
  v52 = v43;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v53 = swift_dynamicCastClass();
  if (!v53)
  {
    swift_unknownObjectRelease();
    v53 = _swiftEmptyArrayStorage;
  }

  v54 = v53[2];

  if (__OFSUB__(v50 >> 1, v51))
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v54 != (v50 >> 1) - v51)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v45 = v50;
    v44 = v51;
    v43 = v52;
LABEL_31:
    sub_5101C(v46, v43, v44, v45);
    v48 = v47;
    swift_unknownObjectRelease();
    return v48;
  }

  v55 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v55;
  if (v55)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return _swiftEmptyArrayStorage;
}

void *sub_5D0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a1;
  v5 = type metadata accessor for CollectionRecommendation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v89 = &v83 - v12;
  __chkstk_darwin(v11);
  v95 = &v83 - v13;
  v14 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v92 = &v83 - v20;
  __chkstk_darwin(v19);
  v22 = &v83 - v21;
  v23 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v27 = __chkstk_darwin(v26);
  v93 = &v83 - v28;
  __chkstk_darwin(v27);
  v30 = &v83 - v29;
  v31 = *(a3 + 16);
  v32 = *(v31 + 16);
  v88 = v33;
  v90 = v18;
  if (v32 && (v34 = sub_3AA80(1), (v35 & 1) != 0))
  {
    v36 = *(*(v31 + 56) + 24 * v34 + 16);

    if (!v36[2])
    {
      goto LABEL_20;
    }
  }

  else
  {
    v36 = _swiftEmptySetSingleton;
    if (!_swiftEmptySetSingleton[2])
    {
      goto LABEL_20;
    }
  }

  v87 = a2;
  v84 = v10;
  v85 = v6;
  v86 = v5;
  v91 = v24;
  v94 = v23;
  v37 = v36[5];
  sub_1B57F4();
  sub_1B4884();
  v38 = sub_1B5844();
  v39 = (v36 + 7);
  v40 = -1 << *(v36 + 32);
  v41 = v38 & ~v40;
  if ((*(v36 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v41))
  {
    v42 = ~v40;
    while (!*(v36[6] + v41) || *(v36[6] + v41) == 1)
    {
      v43 = sub_1B5604();

      if (v43)
      {
        goto LABEL_27;
      }

      v41 = (v41 + 1) & v42;
      if (((*&v39[(v41 >> 3) & 0xFFFFFFFFFFFFFF8] >> v41) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_27:

    v97 = v96;

    sub_5F454(v55);
    sub_2B0C(&qword_229500, &unk_1BC580);
    sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
    sub_1B43C4();
    v56 = v91;
    v57 = v94;
    if ((*(v91 + 48))(v22, 1, v94) == 1)
    {
      sub_42F48(v22, &qword_2296F0, &unk_1C3A10);
      return _swiftEmptyArrayStorage;
    }

    (*(v56 + 32))(v30, v22, v57);
    v58 = v95;
    (*(v56 + 16))(v95, v30, v57);
    swift_storeEnumTagMultiPayload();
    v49 = sub_33474(0, 1, 1, _swiftEmptyArrayStorage);
    v60 = v49[2];
    v59 = v49[3];
    if (v60 >= v59 >> 1)
    {
      v49 = sub_33474(v59 > 1, v60 + 1, 1, v49);
    }

    v61 = v85;
    (*(v56 + 8))(v30, v57);
    v49[2] = v60 + 1;
    v62 = v49 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60;
    v63 = v58;
LABEL_32:
    sub_5EB94(v63, v62, type metadata accessor for CollectionRecommendation);
    return v49;
  }

LABEL_12:
  if (!v36[2])
  {
LABEL_20:
    v49 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v44 = v36[5];
  sub_1B57F4();
  sub_1B4884();
  v45 = sub_1B5844();
  v46 = -1 << *(v36 + 32);
  v47 = v45 & ~v46;
  if ((*&v39[(v47 >> 3) & 0xFFFFFFFFFFFFFF8] >> v47))
  {
    v48 = ~v46;
    v49 = _swiftEmptyArrayStorage;
    v50 = v91;
    while (1)
    {
      v51 = *(v36[6] + v47);
      if (v51 != 1 && v51 != 2)
      {
        break;
      }

      v52 = sub_1B5604();

      if (v52)
      {
        goto LABEL_34;
      }

      v47 = (v47 + 1) & v48;
      if (((*&v39[(v47 >> 3) & 0xFFFFFFFFFFFFFF8] >> v47) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_34:
    v97 = v96;

    sub_2B0C(&qword_229500, &unk_1BC580);
    sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
    v64 = v92;
    sub_1B43C4();
    v54 = v94;
    if ((*(v50 + 48))(v64, 1, v94) == 1)
    {
      sub_42F48(v64, &qword_2296F0, &unk_1C3A10);
      v49 = _swiftEmptyArrayStorage;
      if (!v36[2])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v65 = v93;
      (*(v50 + 32))(v93, v64, v54);
      v66 = v89;
      (*(v50 + 16))(v89, v65, v54);
      swift_storeEnumTagMultiPayload();
      v49 = sub_33474(0, 1, 1, _swiftEmptyArrayStorage);
      v68 = v49[2];
      v67 = v49[3];
      if (v68 >= v67 >> 1)
      {
        v49 = sub_33474(v67 > 1, v68 + 1, 1, v49);
      }

      (*(v50 + 8))(v93, v54);
      v49[2] = v68 + 1;
      sub_5EB94(v66, v49 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v68, type metadata accessor for CollectionRecommendation);
      if (!v36[2])
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
LABEL_24:
    v54 = v94;
    if (!v36[2])
    {
      goto LABEL_21;
    }
  }

  v69 = v36[5];
  sub_1B57F4();
  sub_1B4884();
  v70 = sub_1B5844();
  v71 = -1 << *(v36 + 32);
  v72 = v70 & ~v71;
  if ((*&v39[(v72 >> 3) & 0xFFFFFFFFFFFFFF8] >> v72))
  {
    v73 = ~v71;
    while (!*(v36[6] + v72) || *(v36[6] + v72) == 2)
    {
      v74 = sub_1B5604();

      if (v74)
      {
        goto LABEL_48;
      }

      v72 = (v72 + 1) & v73;
      if (((*&v39[(v72 >> 3) & 0xFFFFFFFFFFFFFF8] >> v72) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_48:

    v97 = v87;

    sub_2B0C(&qword_229500, &unk_1BC580);
    sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
    v75 = v90;
    sub_1B43C4();
    v76 = v91;
    v77 = (*(v91 + 48))(v75, 1, v54);
    v78 = v84;
    if (v77 == 1)
    {
      sub_42F48(v75, &qword_2296F0, &unk_1C3A10);
      return v49;
    }

    v79 = v88;
    (*(v76 + 32))(v88, v75, v54);
    (*(v76 + 16))(v78, v79, v54);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_33474(0, v49[2] + 1, 1, v49);
    }

    v80 = v85;
    v82 = v49[2];
    v81 = v49[3];
    if (v82 >= v81 >> 1)
    {
      v49 = sub_33474(v81 > 1, v82 + 1, 1, v49);
    }

    (*(v76 + 8))(v79, v54);
    v49[2] = v82 + 1;
    v62 = v49 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v82;
    v63 = v78;
    goto LABEL_32;
  }

LABEL_21:

  return v49;
}

uint64_t sub_5DC0C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionRecommendation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5DC84()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5DD24(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, uint64_t *a5)
{
  v73 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v55 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v25)
  {
    v24 = v9;
    v25 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v27 = __clz(__rbit64(v24)) | (v25 << 6);
    v28 = *(*(a1 + 48) + 8 * v27);
    v29 = (*(a1 + 56) + (v27 << 6));
    v30 = v29[3];
    v32 = *v29;
    v31 = v29[1];
    v61 = v29[2];
    v62 = v30;
    v59 = v32;
    v60 = v31;
    *&v58[8] = *v29;
    *&v58[24] = v29[1];
    *&v58[40] = v29[2];
    *&v58[56] = v29[3];
    *v58 = v28;
    sub_42BA4(&v59, &v63);
    a2(&v68, v58);
    v65 = *&v58[32];
    v66 = *&v58[48];
    v67 = *&v58[64];
    v63 = *v58;
    v64 = *&v58[16];
    sub_42F48(&v63, &qword_229798, &qword_1BCBF8);
    if (!v71)
    {
LABEL_22:
      sub_417B8();
    }

    v33 = a4;
    v34 = v68;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v66 = v72;
    v35 = *v73;
    v37 = sub_43124(v68);
    v38 = *(v35 + 16);
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_24;
    }

    v41 = v36;
    if (*(v35 + 24) >= v40)
    {
      if ((v33 & 1) == 0)
      {
        sub_1858C4();
      }
    }

    else
    {
      v42 = v73;
      sub_17E550(v40, v33 & 1);
      v43 = *v42;
      v44 = sub_43124(v34);
      if ((v41 & 1) != (v45 & 1))
      {
        goto LABEL_26;
      }

      v37 = v44;
    }

    v9 = (v24 - 1) & v24;
    if (v41)
    {
      v12 = *v73;
      v13 = (*(*v73 + 56) + (v37 << 6));
      v14 = v13[3];
      v16 = *v13;
      v15 = v13[1];
      v61 = v13[2];
      v62 = v14;
      v59 = v16;
      v60 = v15;
      sub_42BA4(&v59, v58);
      sub_43FF4(&v63);
      v17 = (*(v12 + 56) + (v37 << 6));
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[3];
      *&v58[32] = v17[2];
      *&v58[48] = v20;
      *v58 = v19;
      *&v58[16] = v18;
      v21 = v59;
      v22 = v60;
      v23 = v62;
      v17[2] = v61;
      v17[3] = v23;
      *v17 = v21;
      v17[1] = v22;
      sub_43FF4(v58);
    }

    else
    {
      v46 = *v73;
      v46[(v37 >> 6) + 8] |= 1 << v37;
      *(v46[6] + 8 * v37) = v34;
      v47 = (v46[7] + (v37 << 6));
      v48 = v63;
      v49 = v64;
      v50 = v66;
      v47[2] = v65;
      v47[3] = v50;
      *v47 = v48;
      v47[1] = v49;
      v51 = v46[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_25;
      }

      v46[2] = v53;
    }

    a4 = 1;
  }

  v26 = i;
  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v10)
    {
      goto LABEL_22;
    }

    v24 = *(v6 + 8 * v25);
    ++v26;
    if (v24)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_5E05C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      memcpy(__dst, v2, 0x231uLL);
      sub_4299C(__dst, v4);
      sub_111DC0(__src, __dst);
      memcpy(v4, __src, 0x231uLL);
      result = sub_2601C(v4);
      v2 += 568;
      --v1;
    }

    while (v1);
  }

  return result;
}

void *sub_5E0E0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v30 = a2;
  v31 = a1;
  v36 = sub_2B0C(&qword_229720, &unk_1BCB70);
  v5 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - v6;
  v7 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  result = __chkstk_darwin(v7 - 8);
  v32 = 0;
  v33 = &v30 - v10;
  v11 = 0;
  v38 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v39 = (v17 - 1) & v17;
LABEL_10:
      v22 = v19 | (v11 << 6);
      memcpy(v42, (v38[6] + 568 * v22), 0x231uLL);
      v23 = v33;
      v24 = v22;
      sub_43050(v38[7] + *(v34 + 72) * v22, v33, &qword_229728, &unk_1D14A0);
      v25 = v35;
      memcpy(v35, v42, 0x231uLL);
      sub_43050(v23, v25 + *(v36 + 48), &qword_229728, &unk_1D14A0);
      v26 = memcpy(v41, v25, sizeof(v41));
      __chkstk_darwin(v26);
      *(&v30 - 2) = v41;
      sub_4299C(v42, v40);
      sub_4299C(v42, v40);
      v27 = v43;
      v28 = sub_5061C(sub_5E42C, (&v30 - 4), v37);
      v43 = v27;
      sub_42F48(v25, &qword_229720, &unk_1BCB70);
      sub_42F48(v23, &qword_229728, &unk_1D14A0);
      result = sub_2601C(v42);
      if (v28)
      {
        *(v31 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        if (__OFADD__(v32++, 1))
        {
          break;
        }
      }

      v17 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    return sub_558E4(v31, v30, v32, v38);
  }

  else
  {
LABEL_5:
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
        return sub_558E4(v31, v30, v32, v38);
      }

      v21 = v13[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v39 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_5E42C(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, 0x231uLL);
  memcpy(v4, v2, 0x231uLL);
  return _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(__dst, v4);
}

uint64_t sub_5E494(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a2;
  v34 = a1;
  v39 = sub_2B0C(&qword_229738, &unk_1BCB90);
  v6 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v46 = &v33 - v7;
  v45 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v8 = *(*(v45 - 8) + 64);
  result = __chkstk_darwin(v45);
  v44 = &v33 - v11;
  v41 = 0;
  v42 = a3;
  v12 = 0;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v40 = a4;
  v36 = (a4 + 32);
  v37 = v10 + 16;
  v38 = v10;
  v35 = (v10 + 8);
LABEL_5:
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v43 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = *(v42[6] + 8 * v23);
    v25 = *(v38 + 16);
    v26 = v44;
    v27 = v45;
    v25(v44, v42[7] + *(v38 + 72) * v23, v45);
    v28 = v46;
    *v46 = v24;
    v25(&v28[*(v39 + 48)], v26, v27);
    v29 = *(v40 + 16);
    v30 = v36;
    do
    {
      if (!v29)
      {
        sub_42F48(v46, &qword_229738, &unk_1BCB90);
        result = (*v35)(v44, v45);
        v18 = v43;
        goto LABEL_5;
      }

      v31 = *v30++;
      --v29;
    }

    while (v31 != v24);
    sub_42F48(v46, &qword_229738, &unk_1BCB90);
    result = (*v35)(v44, v45);
    *(v34 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v32 = __OFADD__(v41++, 1);
    v18 = v43;
    if (v32)
    {
      __break(1u);
      return sub_55BB0(v34, v33, v41, v42);
    }
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
      return sub_55BB0(v34, v33, v41, v42);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_5E79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_55394(v16, v11, a1, a2, a4);

      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  __chkstk_darwin(v13);
  bzero(&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t sub_5E96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229728, &unk_1D14A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E9DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_5E9F4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t *sub_5EA10(uint64_t a1, uint64_t *a2)
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

uint64_t sub_5EB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5EB94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_5EC58(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_5ED18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B0C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_5ED80()
{
  result = qword_229338;
  if (!qword_229338)
  {
    sub_1B40F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229338);
  }

  return result;
}

uint64_t sub_5EF0C(uint64_t a1)
{
  result = __chkstk_darwin(a1);
  v4 = *(result + 16);
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v5 + 3) >> 1, v11 < v7))
  {
    if (v6 <= v7)
    {
      v12 = v6 + v4;
    }

    else
    {
      v12 = v6;
    }

    v5 = sub_33128(isUniquelyReferenced_nonNull_native, v12, 1, v5);
    v11 = *(v5 + 3) >> 1;
  }

  v13 = *(v5 + 2);
  v14 = v11 - v13;
  result = sub_3EF0C(v41, &v5[568 * v13 + 32], v11 - v13, v8);
  if (result < v4)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v15 = *(v5 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_19;
    }

    *(v5 + 2) = v17;
  }

  if (result != v14)
  {
LABEL_13:
    result = sub_417B8();
    *v1 = v5;
    return result;
  }

LABEL_16:
  v4 = *(v5 + 2);
  v14 = v41[1];
  v32 = v41[0];
  v2 = v41[2];
  v17 = v42;
  v18 = v43;
  if (v43)
  {
    v19 = v42;
LABEL_26:
    v23 = (v18 - 1) & v18;
    v24 = (*(v32 + 48) + 568 * (__clz(__rbit64(v18)) | (v19 << 6)));
    memcpy(__dst, v24, 0x231uLL);
    memmove(__src, v24, 0x231uLL);
    AuthorRecommendationSource.id.getter(__src);
    sub_4299C(__dst, v38);
    v22 = v19;
LABEL_27:
    memcpy(__dst, __src, 0x231uLL);
    if (sub_6153C(__dst) != 1)
    {
      v2 = (v2 + 64) >> 6;
      do
      {
        v25 = *(v5 + 3);
        v26 = v25 >> 1;
        if ((v25 >> 1) < v4 + 1)
        {
          v5 = sub_33128((v25 > 1), v4 + 1, 1, v5);
          v26 = *(v5 + 3) >> 1;
        }

        memcpy(v37, __src, 0x231uLL);
        memcpy(v38, __src, 0x231uLL);
        if (sub_6153C(v38) != 1)
        {
          while (v4 < v26)
          {
            memcpy(v35, __src, 0x231uLL);
            memcpy(v36, v37, 0x231uLL);
            sub_4299C(v36, v34);
            sub_42F48(v35, &qword_229890, &qword_1BCCE0);
            memmove(&v5[568 * v4 + 32], v37, 0x231uLL);
            if (!v23)
            {
              if (v2 <= (v22 + 1))
              {
                v28 = v22 + 1;
              }

              else
              {
                v28 = v2;
              }

              v29 = v28 - 1;
              while (1)
              {
                v27 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v27 >= v2)
                {
                  sub_61554(v34);
                  memcpy(__src, v34, 0x231uLL);
                  v23 = 0;
                  v22 = v29;
                  goto LABEL_36;
                }

                v23 = *(v14 + 8 * v27);
                ++v22;
                if (v23)
                {
                  v22 = v27;
                  goto LABEL_48;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

            v27 = v22;
LABEL_48:
            v30 = __clz(__rbit64(v23));
            v23 &= v23 - 1;
            v31 = (*(v32 + 48) + 568 * (v30 | (v27 << 6)));
            memcpy(v34, v31, 0x231uLL);
            memmove(__src, v31, 0x231uLL);
            AuthorRecommendationSource.id.getter(__src);
            sub_4299C(v34, v33);
LABEL_36:
            ++v4;
            memcpy(v37, __src, 0x231uLL);
            memcpy(v38, __src, 0x231uLL);
            if (sub_6153C(v38) == 1)
            {
              break;
            }
          }
        }

        *(v5 + 2) = v4;
        memcpy(__dst, __src, 0x231uLL);
      }

      while (sub_6153C(__dst) != 1);
    }

    memcpy(v38, __src, 0x231uLL);
    sub_42F48(v38, &qword_229890, &qword_1BCCE0);
    goto LABEL_13;
  }

LABEL_19:
  v20 = (v2 + 64) >> 6;
  if (v20 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = (v2 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
LABEL_50:
      sub_61554(__src);
      v23 = 0;
      goto LABEL_27;
    }

    v18 = *(v14 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_5F33C(uint64_t result)
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

  result = sub_33008(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_5F454(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_3349C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_5F548(uint64_t a1)
{
  v3 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v104 - v6;
  v8 = sub_6155C();
  result = sub_1B49A4();
  v106 = v1;
  v10 = *v1;
  v11 = *(*v1 + 2);
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v15 = *(v10 + 3) >> 1, v15 < v12))
  {
    if (v11 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v11;
    }

    v10 = sub_33358(isUniquelyReferenced_nonNull_native, v16, 1, v10);
    v15 = *(v10 + 3) >> 1;
  }

  v17 = v15 - *(v10 + 2);
  (*(v4 + 16))(v7, a1, v3);
  v18 = sub_1B4994();
  v20 = *(v4 + 8);
  v19 = v4 + 8;
  result = v20(a1, v3);
  if (v18 < v13)
  {
    goto LABEL_15;
  }

  if (v18 >= 1)
  {
    v21 = *(v10 + 2);
    v22 = __CFADD__(v21, v18);
    v23 = __OFADD__(v21, v18);
    v24 = v21 + v18;
    if (v23)
    {
      __break(1u);
      goto LABEL_19;
    }

    *(v10 + 2) = v24;
  }

  if (v18 != v17)
  {
LABEL_13:

    *v106 = v10;
    return result;
  }

LABEL_16:
  v13 = v108;
  v8 = *(v10 + 2);
  v18 = v120;
  v19 = v121;
  v25 = *(v120 + 16);
  v22 = v121 >= v25;
  if (v121 == v25)
  {
    sub_5E9F4(__dst);
    goto LABEL_21;
  }

LABEL_19:
  if (v22)
  {
    goto LABEL_40;
  }

  v26 = v18 + 136 * v19;
  v13[45] = *(v26 + 32);
  v27 = *(v26 + 48);
  v28 = *(v26 + 64);
  v29 = *(v26 + 96);
  v13[48] = *(v26 + 80);
  v13[49] = v29;
  v13[46] = v27;
  v13[47] = v28;
  v30 = *(v26 + 112);
  v31 = *(v26 + 128);
  v32 = *(v26 + 144);
  v117 = *(v26 + 160);
  v13[51] = v31;
  v13[52] = v32;
  v13[50] = v30;
  memmove(__dst, (v26 + 32), 0x81uLL);
  v25 = v19 + 1;
  AuthorRecommendationSource.id.getter(__dst);
  sub_429F8(v116, v114);
LABEL_21:
  v33 = v13[61];
  v13[51] = v13[60];
  v13[52] = v33;
  v117 = v119;
  v34 = v13[57];
  v13[47] = v13[56];
  v13[48] = v34;
  v35 = v13[59];
  v13[49] = v13[58];
  v13[50] = v35;
  v36 = v13[55];
  v13[45] = v13[54];
  v13[46] = v36;
  if (sub_5E9DC(v116) == 1)
  {
LABEL_22:
    v37 = v13[61];
    v13[42] = v13[60];
    v13[43] = v37;
    v115 = v119;
    v38 = v13[57];
    v13[38] = v13[56];
    v13[39] = v38;
    v39 = v13[59];
    v13[40] = v13[58];
    v13[41] = v39;
    v40 = v13[55];
    v13[36] = v13[54];
    v13[37] = v40;
    sub_42F48(v114, &qword_229790, &unk_1BCBE0);
    goto LABEL_13;
  }

  v105 = v18 + 32;
  while (1)
  {
    v45 = *(v10 + 3);
    v46 = v45 >> 1;
    if ((v45 >> 1) < v8 + 1)
    {
      v10 = sub_33358((v45 > 1), v8 + 1, 1, v10);
      v46 = *(v10 + 3) >> 1;
    }

    v47 = v13[59];
    v49 = v13[60];
    v48 = v13[61];
    v13[33] = v49;
    v13[34] = v48;
    v50 = v13[55];
    v52 = v13[56];
    v51 = v13[57];
    v13[29] = v52;
    v13[30] = v51;
    v53 = v13[57];
    v55 = v13[58];
    v54 = v13[59];
    v13[31] = v55;
    v13[32] = v54;
    v56 = v13[55];
    v57 = v13[54];
    v13[27] = v57;
    v13[28] = v56;
    v58 = v13[61];
    v13[42] = v49;
    v13[43] = v58;
    v13[38] = v52;
    v13[39] = v53;
    v13[40] = v55;
    v13[41] = v47;
    v113 = v119;
    v115 = v119;
    v13[36] = v57;
    v13[37] = v50;
    if (sub_5E9DC(v114) != 1 && v8 < v46)
    {
      break;
    }

LABEL_24:
    *(v10 + 2) = v8;
    v41 = v13[61];
    v13[51] = v13[60];
    v13[52] = v41;
    v117 = v119;
    v42 = v13[57];
    v13[47] = v13[56];
    v13[48] = v42;
    v43 = v13[59];
    v13[49] = v13[58];
    v13[50] = v43;
    v44 = v13[55];
    v13[45] = v13[54];
    v13[46] = v44;
    if (sub_5E9DC(v116) == 1)
    {
      goto LABEL_22;
    }
  }

  v59 = v10 + 32;
  while (1)
  {
    v60 = v59;
    v61 = &v59[136 * v8];
    v62 = v8 + 1;
    while (1)
    {
      v8 = v62;
      v63 = v13[61];
      v13[15] = v13[60];
      v13[16] = v63;
      v110[128] = v119;
      v64 = v13[57];
      v13[11] = v13[56];
      v13[12] = v64;
      v65 = v13[59];
      v13[13] = v13[58];
      v13[14] = v65;
      v66 = v13[55];
      v13[9] = v13[54];
      v13[10] = v66;
      v67 = v13[34];
      v13[24] = v13[33];
      v13[25] = v67;
      v111[128] = v113;
      v68 = v13[30];
      v13[20] = v13[29];
      v13[21] = v68;
      v69 = v13[32];
      v13[22] = v13[31];
      v13[23] = v69;
      v70 = v13[28];
      v13[18] = v13[27];
      v13[19] = v70;
      sub_429F8(v111, v108);
      sub_42F48(v110, &qword_229790, &unk_1BCBE0);
      result = memmove(v61, &v112, 0x81uLL);
      v71 = *(v18 + 16);
      if (v25 != v71)
      {
        break;
      }

      sub_5E9F4(v108);
      v72 = v13[6];
      v73 = v13[7];
      v13[60] = v72;
      v13[61] = v73;
      v74 = v109;
      v119 = v109;
      v75 = v13[2];
      v76 = v13[3];
      v13[56] = v75;
      v13[57] = v76;
      v78 = v13[4];
      v77 = v13[5];
      v13[58] = v78;
      v13[59] = v77;
      v80 = *v13;
      v79 = v13[1];
      v13[54] = *v13;
      v13[55] = v79;
      v13[33] = v72;
      v13[34] = v73;
      v113 = v74;
      v13[29] = v75;
      v13[30] = v76;
      v13[31] = v78;
      v13[32] = v77;
      v13[27] = v80;
      v13[28] = v79;
      v81 = v13[61];
      v13[42] = v13[60];
      v13[43] = v81;
      v115 = v119;
      v82 = v13[57];
      v13[38] = v13[56];
      v13[39] = v82;
      v83 = v13[59];
      v13[40] = v13[58];
      v13[41] = v83;
      v84 = v13[55];
      v13[36] = v13[54];
      v13[37] = v84;
      if (sub_5E9DC(v114) != 1)
      {
        v61 += 136;
        v62 = v8 + 1;
        if (v8 < v46)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    if (v25 >= v71)
    {
      break;
    }

    v85 = (v105 + 136 * v25);
    *v13 = *v85;
    v86 = v85[1];
    v87 = v85[2];
    v88 = v85[4];
    v13[3] = v85[3];
    v13[4] = v88;
    v13[1] = v86;
    v13[2] = v87;
    v89 = v85[5];
    v90 = v85[6];
    v91 = v85[7];
    v109 = *(v85 + 128);
    v13[6] = v90;
    v13[7] = v91;
    v13[5] = v89;
    memmove(__dst, v85, 0x81uLL);
    ++v25;
    AuthorRecommendationSource.id.getter(__dst);
    sub_429F8(v108, &v107);
    v92 = v13[59];
    v94 = v13[60];
    v93 = v13[61];
    v13[33] = v94;
    v13[34] = v93;
    v95 = v13[55];
    v97 = v13[56];
    v96 = v13[57];
    v13[29] = v97;
    v13[30] = v96;
    v98 = v13[57];
    v100 = v13[58];
    v99 = v13[59];
    v13[31] = v100;
    v13[32] = v99;
    v101 = v13[55];
    v102 = v13[54];
    v13[27] = v102;
    v13[28] = v101;
    v103 = v13[61];
    v13[42] = v94;
    v13[43] = v103;
    v13[38] = v97;
    v13[39] = v98;
    v13[40] = v100;
    v13[41] = v92;
    v113 = v119;
    v115 = v119;
    v13[36] = v102;
    v13[37] = v95;
    if (sub_5E9DC(v114) != 1)
    {
      v59 = v60;
      if (v8 < v46)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_5FB40(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_33358(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_5FC38(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_3301C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_5FD2C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_338B0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_5FE24(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_33128(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_5FF1C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_3439C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_60054(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_60158(uint64_t result)
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

  result = sub_34600(result, v12, 1, v3);
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

  memcpy((v3 + 48 * v8 + 32), (v6 + 32), 48 * v2);

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

uint64_t sub_6024C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_34710(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_60340(uint64_t result)
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

  result = sub_3481C(result, v12, 1, v3);
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

uint64_t sub_6042C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_33008(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_3F09C(v39, &v3[8 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v12 + 64) >> 6;
      if (v20 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = (v12 + 64) >> 6;
      }

      v22 = v21 - 1;
      do
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v23 >= v20)
        {
          v41 = v22;
          v42 = 0;
          goto LABEL_13;
        }

        v24 = *(v13 + 8 * v23);
        ++v17;
      }

      while (!v24);
      v18 = (v24 - 1) & v24;
      v19 = __clz(__rbit64(v24)) | (v23 << 6);
      v17 = v23;
      goto LABEL_27;
    }

    *(v3 + 2) = v17;
  }

  result = v39[0];
  if (v14 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v13 = v39[1];
  v12 = v40;
  v17 = v41;
  if (!v42)
  {
    goto LABEL_19;
  }

  v18 = (v42 - 1) & v42;
  v19 = __clz(__rbit64(v42)) | (v41 << 6);
  v20 = (v40 + 64) >> 6;
LABEL_27:
  v25 = *(*(result + 48) + 8 * v19);
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v27)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v36 = v17;
  v37 = v20;
  v38 = result;
  v31 = v13;
  v32 = v3;
  v33 = v18;
  v34 = sub_33008((v26 > 1), v6 + 1, 1, v32);
  v18 = v33;
  v17 = v36;
  v20 = v37;
  v13 = v31;
  v3 = v34;
  result = v38;
  v27 = *(v3 + 3) >> 1;
  if (v6 >= v27)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v25;
    if (!v18)
    {
      break;
    }

LABEL_34:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = *(*(result + 48) + ((v17 << 9) | (8 * v28)));
    if (v6 == v27)
    {
      v6 = v27;
      goto LABEL_30;
    }
  }

  v29 = v17;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v30 >= v20)
    {
      break;
    }

    v18 = *(v13 + 8 * v30);
    ++v29;
    if (v18)
    {
      v17 = v30;
      goto LABEL_34;
    }
  }

  if (v20 <= v17 + 1)
  {
    v35 = v17 + 1;
  }

  else
  {
    v35 = v20;
  }

  v40 = v12;
  v41 = v35 - 1;
  v42 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_417B8();
  *v1 = v3;
  return result;
}

uint64_t sub_606E0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_60824(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_3413C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t GenreMetadataServiceDepthMapGenerator.generateGenreDepthMap(configuration:)(uint64_t a1)
{
  v3 = *(a1 + 632);
  v2[6] = v1;
  v2[7] = v3;
  v2[8] = *(a1 + 648);
  return _swift_task_switch(sub_60948, 0, 0);
}

uint64_t sub_60948()
{
  v1 = v0[8];
  v2 = v0[6];
  v12 = v0[7];

  sub_5F33C(v3);
  v4 = sub_40854(v12);
  v0[9] = v4;

  v5 = v2[5];
  v6 = v2[6];
  sub_2698(v2 + 2, v5);
  v7 = *(v6 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_60AB4;

  return v11(v4, v5, v6);
}

uint64_t sub_60AB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v8 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v6 = sub_60D58;
  }

  else
  {
    v6 = sub_60BE8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_60BE8()
{
  v1 = *(v0 + 88);
  sub_2B0C(&qword_2297D0, &qword_1BCC48);
  result = sub_1B5294();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = v10 | (v4 << 6);
LABEL_10:
      v14 = *(*(v1 + 48) + 8 * v11);
      v15 = *(*(*(v1 + 56) + 16 * v11 + 8) + 16);
      v16 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8;
      result = *(v9 + v16) | (1 << v11);
      *(v9 + v16) = result;
      *(v3[6] + 8 * v11) = v14;
      *(v3[7] + 8 * v11) = v15;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      v3[2] = v19;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v4 >= v8)
      {
        break;
      }

      v13 = *(v1 + 64 + 8 * v4);
      ++v12;
      if (v13)
      {
        v7 = (v13 - 1) & v13;
        v11 = __clz(__rbit64(v13)) | (v4 << 6);
        goto LABEL_10;
      }
    }

    v20 = *(v0 + 88);

    v21 = *(v0 + 8);

    return v21(v3);
  }

  return result;
}

uint64_t sub_60D58()
{
  v19 = v0;
  v1 = v0[12];
  v2 = v0[6];
  swift_errorRetain();
  v3 = sub_1B4624();
  v4 = sub_1B4D94();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_1B5794();
    v13 = sub_60FF4(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Error fetching genres: %s", v6, 0xCu);
    sub_2BF8(v7);
  }

  v14 = v0[12];
  v15 = sub_130434(_swiftEmptyArrayStorage);

  v16 = v0[1];

  return v16(v15);
}

uint64_t GenreMetadataServiceDepthMapGenerator.deinit()
{
  sub_2BF8((v0 + 16));
  v1 = OBJC_IVAR____TtC20BooksPersonalization37GenreMetadataServiceDepthMapGenerator_logger;
  v2 = sub_1B4644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GenreMetadataServiceDepthMapGenerator.__deallocating_deinit()
{
  sub_2BF8(v0 + 2);
  v1 = OBJC_IVAR____TtC20BooksPersonalization37GenreMetadataServiceDepthMapGenerator_logger;
  v2 = sub_1B4644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_60FF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_610C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_430C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2BF8(v11);
  return v7;
}

unint64_t sub_610C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_611CC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B5154();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_611CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_61218(a1, a2);
  sub_61348(&off_20E7E0);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_61218(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_35580(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B5154();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B48E4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_35580(v10, 0);
        result = sub_1B5074();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_61348(uint64_t result)
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

  result = sub_335A8(result, v12, 1, v3);
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

uint64_t type metadata accessor for GenreMetadataServiceDepthMapGenerator()
{
  result = qword_229800;
  if (!qword_229800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_61488()
{
  result = sub_1B4644();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_6153C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_6155C()
{
  result = qword_2296E8;
  if (!qword_2296E8)
  {
    sub_1CC1C(&qword_2296B8, &unk_1BCAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2296E8);
  }

  return result;
}

uint64_t sub_61610()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x73444965726E6567;
  }
}

uint64_t sub_61674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_74EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6169C(uint64_t a1)
{
  v2 = sub_61914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_616D8(uint64_t a1)
{
  v2 = sub_61914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.MediaTypeConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_229898, &unk_1BCD90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v13[1] = *(v1 + 9);
  v13[2] = v10;
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_61914();

  sub_1B5884();
  v17 = v9;
  v16 = 0;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  sub_61BC8(&qword_2298A8);
  sub_1B5544();

  if (!v2)
  {
    v15 = 1;
    sub_1B5504();
    v14 = 2;
    sub_1B5504();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_61914()
{
  result = qword_2298A0;
  if (!qword_2298A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298A0);
  }

  return result;
}

uint64_t Configuration.MediaTypeConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2298B0, &qword_1BCDA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_61914();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  v15[15] = 0;
  sub_61BC8(&qword_2298B8);
  sub_1B5404();
  v11 = v16;
  v15[14] = 1;
  v12 = sub_1B53C4();
  v15[13] = 2;
  v14 = sub_1B53C4();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12 & 1;
  *(a2 + 9) = v14 & 1;

  sub_2BF8(a1);
}

uint64_t sub_61BC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_2292E8, &unk_1BC3A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BooksPersonalization::Configuration::GenreRecommendationConfiguration::Source_optional __swiftcall Configuration.GenreRecommendationConfiguration.Source.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2110C0;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t Configuration.GenreRecommendationConfiguration.Source.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x747369486B6F6F62;
  v3 = 0xD000000000000017;
  if (v1 != 3)
  {
    v3 = 1768055156;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000021;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

Swift::Int sub_61D74()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_61E64()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_61F40()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_62038(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000079726FLL;
  v4 = 0x747369486B6F6F62;
  v5 = 0x80000000001D4610;
  v6 = 0x80000000001D4640;
  v7 = 0xD000000000000017;
  if (v2 != 3)
  {
    v7 = 1768055156;
    v6 = 0xE400000000000000;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000021;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000000001D45F0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

BooksPersonalization::Configuration::GenreRecommendationConfiguration::GenreDepth_optional __swiftcall Configuration.GenreRecommendationConfiguration.GenreDepth.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_211158;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t Configuration.GenreRecommendationConfiguration.GenreDepth.rawValue.getter()
{
  v1 = 0x656E4F6C6576656CLL;
  if (*v0 != 1)
  {
    v1 = 0x6F77546C6576656CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73657661656CLL;
  }
}

uint64_t sub_62254(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656E4F6C6576656CLL;
  if (v2 != 1)
  {
    v3 = 0x6F77546C6576656CLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x73657661656CLL;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x656E4F6C6576656CLL;
  if (*a2 != 1)
  {
    v6 = 0x6F77546C6576656CLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x73657661656CLL;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_62354()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_623F4()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_62480()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_62528(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E4F6C6576656CLL;
  if (v2 != 1)
  {
    v4 = 0x6F77546C6576656CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x73657661656CLL;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_62644(uint64_t a1, uint64_t a2)
{
  v4 = sub_75A54();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_62698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_75A54();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

Swift::Int sub_62720()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_62818()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_628FC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_629F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_75004(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_62A20(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x32656372756F73;
  v5 = 0x80000000001D46C0;
  v6 = 0xD00000000000001ALL;
  if (v2 == 3)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = 0x80000000001D46E0;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000010;
  v8 = 0x80000000001D4680;
  if (*v1)
  {
    v7 = 0xD000000000000015;
    v8 = 0x80000000001D46A0;
  }

  if (*v1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v8;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_62AD4()
{
  v1 = *v0;
  v2 = 0x32656372756F73;
  v3 = 0xD00000000000001ALL;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_62B84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_75004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_62BAC(uint64_t a1)
{
  v2 = sub_62F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_62BE8(uint64_t a1)
{
  v2 = sub_62F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.GenreRecommendationConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2298C0, &qword_1BCDA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_62F54();
  sub_1B5864();
  if (!v2)
  {
    v33 = 2;
    sub_62FA8();
    sub_1B5374();
    v11 = v34;
    v32 = 3;
    v12 = sub_1B5344();
    v27 = v13;
    v14 = *&v12;
    v31 = 0;
    v15 = sub_1B5364();
    v25 = v16;
    v26 = v15;
    v29 = 1;
    sub_62FFC();
    sub_1B5374();
    v24 = v30;
    v28 = 4;
    v18 = sub_1B5334();
    (*(v6 + 8))(v9, v5);
    if (v11 == 5)
    {
      v19 = 1;
    }

    else
    {
      v19 = v11;
    }

    v20 = v14;
    if (v27)
    {
      v20 = 0.7;
    }

    v21 = v26;
    if (v25)
    {
      v21 = 1000;
    }

    *a2 = v21;
    v22 = v24;
    if (v24 == 3)
    {
      v22 = 1;
    }

    *(a2 + 8) = v22;
    *(a2 + 9) = v19;
    *(a2 + 16) = v20;
    *(a2 + 24) = v18 & 1;
  }

  return sub_2BF8(a1);
}

unint64_t sub_62F54()
{
  result = qword_2298C8;
  if (!qword_2298C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298C8);
  }

  return result;
}

unint64_t sub_62FA8()
{
  result = qword_2298D0;
  if (!qword_2298D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298D0);
  }

  return result;
}

unint64_t sub_62FFC()
{
  result = qword_2298D8;
  if (!qword_2298D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298D8);
  }

  return result;
}

uint64_t Configuration.GenreRecommendationConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2298E0, &qword_1BCDB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v16 = *(v1 + 9);
  v17 = v10;
  v11 = v1[2];
  v15[3] = *(v1 + 24);
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  sub_62F54();
  sub_1B5884();
  v24 = 0;
  sub_1B5534();
  if (!v2)
  {
    v13 = v16;
    v23 = v17;
    v22 = 1;
    sub_63284();
    sub_1B5544();
    v21 = v13;
    v20 = 2;
    sub_632D8();
    sub_1B5544();
    v19 = 3;
    sub_1B5514();
    v18 = 4;
    sub_1B5504();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_63284()
{
  result = qword_2298E8;
  if (!qword_2298E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298E8);
  }

  return result;
}

unint64_t sub_632D8()
{
  result = qword_2298F0;
  if (!qword_2298F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298F0);
  }

  return result;
}

uint64_t SeedBasedRecommendationSource.rawValue.getter()
{
  if (*v0)
  {
    result = 1768055156;
  }

  else
  {
    result = 12662;
  }

  *v0;
  return result;
}

uint64_t sub_63390(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1768055156;
  }

  else
  {
    v4 = 12662;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1768055156;
  }

  else
  {
    v6 = 12662;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_63424()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_63494()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_634F0()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_63568(uint64_t *a1@<X8>)
{
  v2 = 12662;
  if (*v1)
  {
    v2 = 1768055156;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_63658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_636DC(uint64_t a1)
{
  v2 = sub_638A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_63718(uint64_t a1)
{
  v2 = sub_638A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.SeedBasedRecommendationConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_2298F8, &qword_1BCDB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_638A0();
  sub_1B5884();
  v12 = v8;
  sub_638F4();
  sub_1B5544();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_638A0()
{
  result = qword_229900;
  if (!qword_229900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229900);
  }

  return result;
}

unint64_t sub_638F4()
{
  result = qword_229908;
  if (!qword_229908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229908);
  }

  return result;
}

uint64_t Configuration.SeedBasedRecommendationConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229910, &qword_1BCDC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_638A0();
  sub_1B5864();
  if (!v2)
  {
    sub_63AB4();
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_2BF8(a1);
}

unint64_t sub_63AB4()
{
  result = qword_229918;
  if (!qword_229918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229918);
  }

  return result;
}

BooksPersonalization::Configuration::CollectionsConfiguration::Source_optional __swiftcall Configuration.CollectionsConfiguration.Source.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2112F8;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t Configuration.CollectionsConfiguration.Source.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x747369486B6F6F62;
  v3 = 0xD000000000000022;
  v4 = 0x495041616964656DLL;
  if (v1 != 3)
  {
    v4 = 1768055156;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

Swift::Int sub_63C48()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_63D38()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_63E14()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_63F0C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000079726FLL;
  v4 = 0x747369486B6F6F62;
  v5 = 0x80000000001D4700;
  v6 = 0xD000000000000022;
  v7 = 0xE800000000000000;
  v8 = 0x495041616964656DLL;
  if (v2 != 3)
  {
    v8 = 1768055156;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000000001D45F0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t Configuration.CollectionsConfiguration.BooksConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229920, &qword_1BCDC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_641F0();
  sub_1B5864();
  if (!v2)
  {
    sub_64244();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    if (v14 == 3)
    {
      v11 = 1;
    }

    *a2 = v11;
  }

  return sub_2BF8(a1);
}

unint64_t sub_641F0()
{
  result = qword_229928;
  if (!qword_229928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229928);
  }

  return result;
}

unint64_t sub_64244()
{
  result = qword_229930;
  if (!qword_229930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229930);
  }

  return result;
}

uint64_t sub_642E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265726F63736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_64368(uint64_t a1)
{
  v2 = sub_641F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_643A4(uint64_t a1)
{
  v2 = sub_641F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.CollectionsConfiguration.BooksConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229938, &qword_1BCDD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_641F0();
  sub_1B5884();
  v12 = v8;
  sub_6452C();
  sub_1B5544();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_6452C()
{
  result = qword_229940;
  if (!qword_229940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229940);
  }

  return result;
}

unint64_t sub_645F4()
{
  result = qword_229950;
  if (!qword_229950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229950);
  }

  return result;
}

unint64_t sub_64648()
{
  result = qword_229958;
  if (!qword_229958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229958);
  }

  return result;
}

uint64_t sub_6469C(uint64_t a1)
{
  v2 = sub_645F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_646D8(uint64_t a1)
{
  v2 = sub_645F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_64758()
{
  result = qword_229968;
  if (!qword_229968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229968);
  }

  return result;
}

unint64_t sub_64820()
{
  result = qword_229978;
  if (!qword_229978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229978);
  }

  return result;
}

uint64_t sub_6487C()
{
  if (*v0)
  {
    result = 0x7265726F63736572;
  }

  else
  {
    result = 0x656372756F73;
  }

  *v0;
  return result;
}

uint64_t sub_648B8(uint64_t a1)
{
  v2 = sub_64820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_648F4(uint64_t a1)
{
  v2 = sub_64820();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.CollectionsConfiguration.ForYouConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229988, &qword_1BCDF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_64B84();
  sub_1B5864();
  if (!v2)
  {
    v18 = 0;
    sub_64648();
    sub_1B5374();
    v11 = v19;
    v16 = 1;
    sub_64244();
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    v12 = v17;
    if (v11 == 5)
    {
      v13 = 3;
    }

    else
    {
      v13 = v11;
    }

    *a2 = v13;
    a2[1] = v12;
  }

  return sub_2BF8(a1);
}

unint64_t sub_64B84()
{
  result = qword_229990;
  if (!qword_229990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229990);
  }

  return result;
}

uint64_t sub_64BD8(uint64_t a1)
{
  v2 = sub_64B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_64C14(uint64_t a1)
{
  v2 = sub_64B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_64D30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, char *a5@<X8>)
{
  v20 = a5;
  v8 = sub_2B0C(a2, a3);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  a4();
  sub_1B5864();
  if (!v5)
  {
    v14 = v19;
    v13 = v20;
    v23 = 0;
    sub_64648();
    sub_1B5374();
    v15 = v24;
    v21 = 1;
    sub_64244();
    sub_1B5374();
    (*(v14 + 8))(v11, v8);
    v16 = v22;
    if (v15 == 5)
    {
      v17 = 3;
    }

    else
    {
      v17 = v15;
    }

    if (v22 == 3)
    {
      v16 = 1;
    }

    *v13 = v17;
    v13[1] = v16;
  }

  return sub_2BF8(a1);
}

unint64_t sub_64F20()
{
  result = qword_2299A8;
  if (!qword_2299A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2299A8);
  }

  return result;
}

uint64_t sub_64F74(uint64_t a1)
{
  v2 = sub_64F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_64FB0(uint64_t a1)
{
  v2 = sub_64F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.CollectionsConfiguration.MoreFromYourAuthorsConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2299B8, &qword_1BCE18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_652D8();
  sub_1B5864();
  if (!v2)
  {
    v26 = 0;
    sub_64648();
    sub_1B5374();
    v11 = v27;
    v24 = 1;
    sub_64244();
    sub_1B5374();
    v12 = v25;
    v23 = 2;
    v13 = sub_1B5364();
    v16 = v15;
    v17 = *(v6 + 8);
    v22 = v13;
    v17(v9, v5);
    if (v11 == 5)
    {
      v18 = 3;
    }

    else
    {
      v18 = v11;
    }

    if (v12 == 3)
    {
      v19 = 1;
    }

    else
    {
      v19 = v12;
    }

    *a2 = v18;
    v20 = v22;
    if (v16)
    {
      v20 = 50;
    }

    *(a2 + 1) = v19;
    *(a2 + 8) = v20;
  }

  return sub_2BF8(a1);
}

unint64_t sub_652D8()
{
  result = qword_2299C0;
  if (!qword_2299C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2299C0);
  }

  return result;
}

uint64_t sub_6532C()
{
  v1 = 0x7265726F63736572;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_65388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_75050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_653B0(uint64_t a1)
{
  v2 = sub_652D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_653EC(uint64_t a1)
{
  v2 = sub_652D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.CollectionsConfiguration.MoreFromYourAuthorsConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2299C8, &qword_1BCE20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v12 = *(v1 + 1);
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_652D8();
  sub_1B5884();
  v18 = v9;
  v17 = 0;
  sub_64758();
  sub_1B5544();
  if (!v2)
  {
    v16 = v13;
    v15 = 1;
    sub_6452C();
    sub_1B5544();
    v14 = 2;
    sub_1B5534();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Configuration.CollectionsConfiguration.SuggestionsConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2299D0, &qword_1BCE28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_6583C();
  sub_1B5864();
  if (!v2)
  {
    v18 = 0;
    sub_64648();
    sub_1B5374();
    v11 = v19;
    v16 = 1;
    sub_64244();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v12 = v17;
    if (v11 == 5)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11;
    }

    if (v17 == 3)
    {
      v12 = 1;
    }

    *a2 = v13;
    a2[1] = v12;
  }

  return sub_2BF8(a1);
}

unint64_t sub_6583C()
{
  result = qword_2299D8;
  if (!qword_2299D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2299D8);
  }

  return result;
}

uint64_t sub_65890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265726F63736572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_65968(uint64_t a1)
{
  v2 = sub_6583C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_659A4(uint64_t a1)
{
  v2 = sub_6583C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_65A24(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v15[0] = a4;
  v6 = sub_2B0C(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  v11 = *v4;
  v16 = v4[1];
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  (v15[0])();
  sub_1B5884();
  v20 = v11;
  v19 = 0;
  sub_64758();
  v13 = v15[1];
  sub_1B5544();
  if (!v13)
  {
    v18 = v16;
    v17 = 1;
    sub_6452C();
    sub_1B5544();
  }

  return (*(v7 + 8))(v10, v6);
}

BooksPersonalization::Configuration::CollectionsConfiguration::PostHydrationFilteringConfiguration __swiftcall Configuration.CollectionsConfiguration.PostHydrationFilteringConfiguration.init(genericArtworkRegex:)(BooksPersonalization::Configuration::CollectionsConfiguration::PostHydrationFilteringConfiguration genericArtworkRegex)
{
  object = 0x80000000001D59C0;
  countAndFlagsBits = 0xD000000000000056;
  if (genericArtworkRegex.genericArtworkRegex._object)
  {
    countAndFlagsBits = genericArtworkRegex.genericArtworkRegex._countAndFlagsBits;
    object = genericArtworkRegex.genericArtworkRegex._object;
  }

  *v1 = countAndFlagsBits;
  v1[1] = object;
  return genericArtworkRegex;
}

uint64_t Configuration.CollectionsConfiguration.PostHydrationFilteringConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2299E8, &qword_1BCE38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_65DB0();
  sub_1B5864();
  if (!v2)
  {
    v11 = sub_1B5324();
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xD000000000000056;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0x80000000001D59C0;
    }

    (*(v6 + 8))(v9, v5);
    *a2 = v13;
    a2[1] = v14;
  }

  return sub_2BF8(a1);
}

unint64_t sub_65DB0()
{
  result = qword_2299F0;
  if (!qword_2299F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2299F0);
  }

  return result;
}

uint64_t sub_65E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000000001D5AB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B5604();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_65EB4(uint64_t a1)
{
  v2 = sub_65DB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_65EF0(uint64_t a1)
{
  v2 = sub_65DB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.CollectionsConfiguration.PostHydrationFilteringConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_2299F8, &qword_1BCE40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_65DB0();
  sub_1B5884();
  sub_1B54F4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_660A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7516C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_660D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEB00000000736E6FLL;
    v9 = 0x6974736567677573;
    if (v2 != 6)
    {
      v9 = 0xD000000000000016;
      v8 = 0x80000000001D47C0;
    }

    v10 = 0xD000000000000011;
    v11 = 0x80000000001D4780;
    if (v2 != 4)
    {
      v10 = 0xD000000000000013;
      v11 = 0x80000000001D47A0;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x736B6F6F62;
    v5 = 0x80000000001D4760;
    v6 = 0x756F59726F66;
    if (v2 == 2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (*v1)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000000001D4740;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_661EC()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6974736567677573;
    if (v1 != 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 0xD000000000000013;
    }

    if (*v0 <= 5u)
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
    v2 = 0x736B6F6F62;
    v3 = 0x756F59726F66;
    if (v1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0xD000000000000017;
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
}

uint64_t sub_662F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7516C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_66320(uint64_t a1)
{
  v2 = sub_669D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6635C(uint64_t a1)
{
  v2 = sub_669D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void Configuration.CollectionsConfiguration.moreFromYourAuthorsConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Book.rationale.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t Configuration.CollectionsConfiguration.init(booksBySuggestedAuthorsConfiguration:booksConfiguration:booksYouMightLikeConfiguration:forYouConfiguration:mangaYouMightLikeConfiguration:moreFromYourAuthorsConfiguration:suggestionsConfiguration:postHydrationFilteringConfiguration:)@<X0>(__int16 *a1@<X0>, unsigned __int8 *a2@<X1>, __int16 *a3@<X2>, __int16 *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, __int16 *a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v15 = *a6;
  result = a6[1];
  v16 = *a7;
  if ((v9 & 0xFF00) == 0x300)
  {
    v17 = 3;
  }

  else
  {
    v17 = v9;
  }

  if ((v9 & 0xFF00) == 0x300)
  {
    v18 = 1;
  }

  else
  {
    v18 = HIBYTE(v9);
  }

  v19 = *a8;
  v20 = a8[1];
  if ((v11 & 0xFF00) == 0x300)
  {
    v21 = 3;
  }

  else
  {
    v21 = v11;
  }

  if ((v11 & 0xFF00) == 0x300)
  {
    v22 = 1;
  }

  else
  {
    v22 = HIBYTE(v11);
  }

  v23 = v12 & 0xFF00;
  if (v23 == 768)
  {
    LOBYTE(v12) = 3;
    v24 = 1;
  }

  else
  {
    v24 = HIBYTE(v12);
  }

  *a9 = v17;
  *(a9 + 1) = v18;
  v25 = v13 & 0xFF00;
  if (v25 == 768)
  {
    LOBYTE(v13) = 3;
    v26 = 1;
  }

  else
  {
    v26 = HIBYTE(v13);
  }

  v27 = (v15 & 0xFF00) == 768;
  if ((v15 & 0xFF00) == 0x300)
  {
    v28 = 3;
  }

  else
  {
    v28 = v15;
  }

  if ((v15 & 0xFF00) == 0x300)
  {
    v29 = 1;
  }

  else
  {
    v29 = BYTE1(v15);
  }

  if (v27)
  {
    result = 50;
  }

  if ((v16 & 0xFF00) == 0x300)
  {
    LOBYTE(v16) = 2;
    v30 = 1;
  }

  else
  {
    v30 = HIBYTE(v16);
  }

  if (!v20)
  {
    v19 = 0xD000000000000056;
    v20 = 0x80000000001D59C0;
  }

  if (v10 == 3)
  {
    LOBYTE(v10) = 1;
  }

  *(a9 + 2) = v10;
  *(a9 + 3) = v21;
  *(a9 + 4) = v22;
  *(a9 + 5) = v12;
  *(a9 + 6) = v24;
  *(a9 + 7) = v13;
  *(a9 + 8) = v26;
  *(a9 + 16) = v28;
  *(a9 + 17) = v29;
  *(a9 + 24) = result;
  *(a9 + 32) = v16;
  *(a9 + 33) = v30;
  *(a9 + 40) = v19;
  *(a9 + 48) = v20;
  return result;
}

uint64_t Configuration.CollectionsConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229A00, &qword_1BCE48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_669D8();
  sub_1B5864();
  if (!v2)
  {
    LOBYTE(v61) = 1;
    sub_66A2C();
    sub_1B5374();
    v11 = v68;
    LOBYTE(v61) = 0;
    sub_66A80();
    sub_1B5374();
    v12 = v67;
    LOBYTE(v61) = 2;
    sub_66AD4();
    sub_1B5374();
    v57 = v12;
    v13 = v65;
    LOBYTE(v61) = 3;
    sub_66B28();
    sub_1B5374();
    v56 = v13;
    v14 = v64;
    LOBYTE(v61) = 4;
    sub_66B7C();
    sub_1B5374();
    v55 = v14;
    v15 = v63;
    LOBYTE(v58) = 5;
    sub_66BD0();
    sub_1B5374();
    v54 = v15;
    v16 = v62;
    v53 = v61;
    LOBYTE(v58) = 6;
    sub_66C24();
    sub_1B5374();
    v52 = v16;
    v17 = v60;
    v66 = 7;
    sub_66C78();
    sub_1B5374();
    v19 = v11 >> 8;
    if ((v11 & 0xFF00) == 0x300)
    {
      v20 = 3;
    }

    else
    {
      v20 = v11;
    }

    if ((v11 & 0xFF00) == 0x300)
    {
      v19 = 1;
    }

    v50 = v19;
    v51 = v20;
    v22 = v56;
    v21 = v57;
    if (v57 == 3)
    {
      v21 = 1;
    }

    v57 = v21;
    v23 = v56 >> 8;
    if ((v56 & 0xFF00) == 0x300)
    {
      v24 = 3;
    }

    else
    {
      v24 = v56;
    }

    v56 = v24;
    if ((v22 & 0xFF00) == 0x300)
    {
      v25 = 1;
    }

    else
    {
      v25 = v23;
    }

    v49 = v25;
    v26 = v54;
    v27 = v55 >> 8;
    v28 = (v55 & 0xFF00) == 768;
    if ((v55 & 0xFF00) == 0x300)
    {
      v29 = 3;
    }

    else
    {
      v29 = v55;
    }

    v55 = v29;
    if (v28)
    {
      v30 = 1;
    }

    else
    {
      v30 = v27;
    }

    v48 = v30;
    v31 = v54 >> 8;
    if ((v54 & 0xFF00) == 0x300)
    {
      v32 = 3;
    }

    else
    {
      v32 = v54;
    }

    v54 = v32;
    if ((v26 & 0xFF00) == 0x300)
    {
      v33 = 1;
    }

    else
    {
      v33 = v31;
    }

    v47 = v33;
    v34 = v53;
    v35 = v53 >> 8;
    if ((v53 & 0xFF00) == 0x300)
    {
      v36 = 3;
    }

    else
    {
      v36 = v53;
    }

    LODWORD(v53) = v36;
    if ((v34 & 0xFF00) == 0x300)
    {
      v37 = 1;
    }

    else
    {
      v37 = v35;
    }

    v46 = v37;
    v38 = 50;
    if ((v34 & 0xFF00) != 0x300)
    {
      v38 = v52;
    }

    v52 = v38;
    if ((v17 & 0xFF00) == 0x300)
    {
      v39 = 2;
    }

    else
    {
      v39 = v17;
    }

    HIDWORD(v45) = v39;
    if ((v17 & 0xFF00) == 0x300)
    {
      v40 = 1;
    }

    else
    {
      v40 = BYTE1(v17);
    }

    if (v59)
    {
      v41 = v58;
    }

    else
    {
      v41 = 0xD000000000000056;
    }

    if (v59)
    {
      v42 = v59;
    }

    else
    {
      v42 = 0x80000000001D59C0;
    }

    (*(v6 + 8))(v9, v5);
    v43 = v50;
    *a2 = v51;
    *(a2 + 1) = v43;
    v44 = v56;
    *(a2 + 2) = v57;
    *(a2 + 3) = v44;
    *(a2 + 4) = v49;
    *(a2 + 5) = v55;
    *(a2 + 6) = v48;
    *(a2 + 7) = v54;
    *(a2 + 8) = v47;
    *(a2 + 16) = v53;
    *(a2 + 17) = v46;
    *(a2 + 24) = v52;
    *(a2 + 32) = BYTE4(v45);
    *(a2 + 33) = v40;
    *(a2 + 40) = v41;
    *(a2 + 48) = v42;
  }

  return sub_2BF8(a1);
}

unint64_t sub_669D8()
{
  result = qword_229A08;
  if (!qword_229A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A08);
  }

  return result;
}

unint64_t sub_66A2C()
{
  result = qword_229A10;
  if (!qword_229A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A10);
  }

  return result;
}

unint64_t sub_66A80()
{
  result = qword_229A18;
  if (!qword_229A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A18);
  }

  return result;
}

unint64_t sub_66AD4()
{
  result = qword_229A20;
  if (!qword_229A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A20);
  }

  return result;
}

unint64_t sub_66B28()
{
  result = qword_229A28;
  if (!qword_229A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A28);
  }

  return result;
}

unint64_t sub_66B7C()
{
  result = qword_229A30;
  if (!qword_229A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A30);
  }

  return result;
}

unint64_t sub_66BD0()
{
  result = qword_229A38;
  if (!qword_229A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A38);
  }

  return result;
}

unint64_t sub_66C24()
{
  result = qword_229A40;
  if (!qword_229A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A40);
  }

  return result;
}

unint64_t sub_66C78()
{
  result = qword_229A48;
  if (!qword_229A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A48);
  }

  return result;
}

uint64_t Configuration.CollectionsConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229A50, &qword_1BCE50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v40 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v35 = v1[3];
  v36 = v8;
  v10 = v1[4];
  v33 = v1[5];
  v34 = v10;
  v11 = v1[6];
  v30 = v1[7];
  v31 = v1[8];
  v32 = v11;
  LODWORD(v6) = v1[17];
  v27 = v1[16];
  v28 = v6;
  v29 = *(v1 + 3);
  LODWORD(v6) = v1[33];
  v25 = v1[32];
  v26 = v6;
  v12 = *(v1 + 5);
  v13 = *(v1 + 6);
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  sub_2698(v16, v14);
  sub_669D8();
  sub_1B5884();
  LOBYTE(v38) = v9;
  v19 = v7;
  v41 = 0;
  sub_67084();
  v20 = v37;
  sub_1B5544();
  if (!v20)
  {
    v22 = v34;
    v21 = v35;
    v23 = v33;
    LOBYTE(v38) = v40;
    BYTE1(v38) = v36;
    v41 = 1;
    sub_670D8();
    sub_1B5544();
    LOBYTE(v38) = v21;
    BYTE1(v38) = v22;
    v41 = 2;
    sub_6712C();
    v37 = v7;
    sub_1B5544();
    LOBYTE(v38) = v23;
    BYTE1(v38) = v32;
    v41 = 3;
    sub_67180();
    sub_1B5544();
    LOBYTE(v38) = v30;
    BYTE1(v38) = v31;
    v41 = 4;
    sub_671D4();
    sub_1B5544();
    LOBYTE(v38) = v27;
    BYTE1(v38) = v28;
    v39 = v29;
    v41 = 5;
    sub_67228();
    sub_1B5544();
    LOBYTE(v38) = v25;
    BYTE1(v38) = v26;
    v41 = 6;
    sub_6727C();
    sub_1B5544();
    v38 = v12;
    v39 = v13;
    v41 = 7;
    sub_672D0();

    v19 = v37;
    sub_1B5544();
  }

  return (*(v4 + 8))(v19, v18);
}

unint64_t sub_67084()
{
  result = qword_229A58;
  if (!qword_229A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A58);
  }

  return result;
}

unint64_t sub_670D8()
{
  result = qword_229A60;
  if (!qword_229A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A60);
  }

  return result;
}

unint64_t sub_6712C()
{
  result = qword_229A68;
  if (!qword_229A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A68);
  }

  return result;
}

unint64_t sub_67180()
{
  result = qword_229A70;
  if (!qword_229A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A70);
  }

  return result;
}

unint64_t sub_671D4()
{
  result = qword_229A78;
  if (!qword_229A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A78);
  }

  return result;
}

unint64_t sub_67228()
{
  result = qword_229A80;
  if (!qword_229A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A80);
  }

  return result;
}

unint64_t sub_6727C()
{
  result = qword_229A88;
  if (!qword_229A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A88);
  }

  return result;
}

unint64_t sub_672D0()
{
  result = qword_229A90;
  if (!qword_229A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A90);
  }

  return result;
}

unint64_t Configuration.MediaTypesRecommendationServiceConfiguration.init(interestBasedMinimumBooksPerMediaType:interestBasedMinimumBooksPerGenre:interestBasedMinimumPurity:equivalentGenresMap:)@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = result;
  if (a6)
  {
    v13 = 0.8;
    if (a7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 >= 0.5)
  {
    v13 = a5;
  }

  else
  {
    v13 = 0.8;
  }

  if (!a7)
  {
LABEL_8:
    result = sub_130448(&off_211470);
    a7 = result;
  }

LABEL_9:
  v14 = 2;
  if (a4 & 1 | (a3 < 0))
  {
    v15 = 2;
  }

  else
  {
    v15 = a3;
  }

  if (!(a2 & 1 | (v11 < 0)))
  {
    v14 = v11;
  }

  *a8 = v14;
  *(a8 + 8) = v15;
  *(a8 + 16) = v13;
  *(a8 + 24) = a7;
  return result;
}