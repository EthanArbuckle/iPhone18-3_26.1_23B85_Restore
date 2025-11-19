uint64_t sub_100010C18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&qword_1000BBD78, &qword_1000BBD70, &qword_100090558);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBD70, &qword_100090558);
            v9 = sub_100010DA8(v13, i, a3);
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
        type metadata accessor for RecentItemCell();
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

uint64_t (*sub_100010DA8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_10001A428;
  }

  __break(1u);
  return result;
}

void (*sub_100010E28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_100010EA8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100010EB0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_100010F30;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100010F38(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_100010FB8;
  }

  __break(1u);
  return result;
}

double sub_100011068(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for FolderCellAnimationItemContext();
  v22 = swift_allocObject();
  result = 0.0;
  *(v22 + 96) = xmmword_100090450;
  *(v22 + 112) = 0x3FF0000000000000;
  *(v22 + 120) = 0;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0x3FF0000000000000;
  *(v22 + 144) = 0;
  *(v22 + 152) = 0;
  *(v22 + 160) = 0x3FF0000000000000;
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;
  *(v22 + 184) = 0x3FF0000000000000;
  *(v22 + 192) = 0;
  *(v22 + 200) = 0;
  *(v22 + 208) = 0;
  *(v22 + 216) = 0;
  *(v22 + 224) = 0;
  *(v22 + 16) = a1;
  *(v22 + 24) = a12;
  *(v22 + 64) = a2;
  *(v22 + 72) = a3;
  *(v22 + 80) = a4;
  *(v22 + 88) = a5;
  *(v22 + 32) = a6;
  *(v22 + 40) = a7;
  *(v22 + 48) = a8;
  *(v22 + 56) = a9;
  return result;
}

uint64_t sub_100011120(void **a1, void **a2, char *a3, void **a4, void *a5)
{
  v92 = a5;
  v90 = type metadata accessor for IndexPath();
  v9 = *(*(v90 - 8) + 64);
  v10 = __chkstk_darwin(v90);
  v85 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v84 = &v80 - v13;
  v14 = __chkstk_darwin(v12);
  v86 = &v80 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v80 - v17;
  v19 = __chkstk_darwin(v16);
  v83 = (&v80 - v20);
  v21 = __chkstk_darwin(v19);
  v82 = &v80 - v22;
  v23 = __chkstk_darwin(v21);
  v87 = (&v80 - v24);
  __chkstk_darwin(v23);
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 >= v29 >> 3)
  {
    v91 = a1;
    if (a4 != a2 || &a2[v30] <= a4)
    {
      v56 = v26;
      memmove(a4, a2, 8 * v30);
      v26 = v56;
    }

    v95 = &a4[v30];
    if (a3 - a2 >= 8 && a2 > v91)
    {
      v57 = (v26 + 32);
      v81 = v18;
      v82 = (v26 + 8);
      p_type = (&stru_1000B6FF0 + 16);
      v94 = a4;
LABEL_28:
      v89 = a2;
      v59 = a2 - 1;
      v60 = (a3 - 8);
      v61 = v95;
      v83 = a2 - 1;
      while (1)
      {
        v93 = v60;
        v62 = *(v61 - 1);
        v87 = v61 - 1;
        v63 = *v59;
        v64 = v62;
        v65 = v63;
        v66 = p_type[424];
        v67 = v92;
        v88 = v64;
        result = [v92 v66];
        if (!result)
        {
          goto LABEL_47;
        }

        v68 = result;
        v69 = v86;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = *v57;
        v71 = v81;
        v72 = v90;
        (*v57)(v81, v69, v90);
        result = [v67 p_type[424]];
        if (!result)
        {
          goto LABEL_48;
        }

        v73 = result;
        v74 = v85;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = v84;
        v70(v84, v74, v72);
        v76 = IndexPath.compare(_:)();
        v77 = *v82;
        (*v82)(v75, v72);
        v77(v71, v72);

        if (v76 == -1)
        {
          a3 = v93;
          p_type = (&stru_1000B6FF0 + 16);
          v79 = v83;
          if (v93 + 1 != v89)
          {
            *v93 = *v83;
          }

          a4 = v94;
          if (v95 <= v94 || (a2 = v79, v79 <= v91))
          {
            a2 = v79;
            break;
          }

          goto LABEL_28;
        }

        v78 = v93;
        p_type = &stru_1000B6FF0.type;
        v61 = v87;
        if (v93 + 1 != v95)
        {
          *v93 = *v87;
        }

        v60 = v78 - 1;
        v95 = v61;
        v59 = v83;
        if (v61 <= v94)
        {
          v95 = v61;
          a4 = v94;
          a2 = v89;
          break;
        }
      }
    }

LABEL_41:
    if (a2 != a4 || a2 >= (a4 + ((v95 - a4 + (v95 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v95 - a4));
    }

    return 1;
  }

  v86 = &v80 - v25;
  if (a4 != a1 || &a1[v28] <= a4)
  {
    v31 = v26;
    memmove(a4, a1, 8 * v28);
    v26 = v31;
  }

  v95 = &a4[v28];
  v32 = v92;
  if (a2 - a1 < 8 || a2 >= a3)
  {
LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  v33 = a2;
  v34 = (v26 + 32);
  v85 = (v26 + 8);
  v35 = &stru_1000B6FF0.type;
  v93 = a3;
  v36 = v86;
  while (1)
  {
    v91 = a1;
    v89 = v33;
    v37 = *v33;
    v94 = a4;
    v38 = *a4;
    v39 = v37;
    v40 = v38;
    v41 = v35[424];
    v88 = v39;
    result = [v32 v41];
    if (!result)
    {
      break;
    }

    v43 = result;
    v44 = v87;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = *v34;
    v46 = v90;
    (*v34)(v36, v44, v90);
    result = [v32 v35[424]];
    if (!result)
    {
      goto LABEL_46;
    }

    v47 = result;
    v48 = v83;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v82;
    v45(v82, v48, v46);
    v50 = IndexPath.compare(_:)();
    v51 = *v85;
    (*v85)(v49, v46);
    v51(v36, v46);

    if (v50 == -1)
    {
      v52 = v89;
      v33 = v89 + 1;
      v53 = v91;
      v54 = v91 == v89;
      a4 = v94;
    }

    else
    {
      v52 = v94;
      a4 = v94 + 1;
      v53 = v91;
      v54 = v91 == v94;
      v33 = v89;
    }

    v32 = v92;
    v55 = v93;
    v35 = (&stru_1000B6FF0 + 16);
    if (!v54)
    {
      *v53 = *v52;
    }

    a1 = v53 + 1;
    if (a4 >= v95 || v33 >= v55)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void sub_100011788(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_10000F704(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      v24 = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_100011120(v24, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_100011928(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, char **p_type)
{
  v7 = v6;
  v148 = a4;
  v149 = a1;
  v10 = type metadata accessor for IndexPath();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v160 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v159 = &v144 - v15;
  v16 = __chkstk_darwin(v14);
  v161 = &v144 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = (&v144 - v19);
  v21 = __chkstk_darwin(v18);
  v153 = &v144 - v22;
  v23 = __chkstk_darwin(v21);
  v152 = &v144 - v24;
  v25 = __chkstk_darwin(v23);
  v154 = &v144 - v26;
  v27 = __chkstk_darwin(v25);
  v144 = (&v144 - v29);
  v171 = _swiftEmptyArrayStorage;
  v157 = a3;
  v30 = a3[1];
  if (v30 >= 1)
  {
    v164 = (v28 + 32);
    v165 = v27;
    v163 = (v28 + 8);
    v31 = p_type;
    v32 = v30;
    v166 = v31;
    v33 = 0;
    v34 = _swiftEmptyArrayStorage;
    v168 = v20;
    v155 = p_type;
    while (1)
    {
      if (v33 + 1 >= v32)
      {
        v43 = (v33 + 1);
        v56 = v148;
      }

      else
      {
        v158 = v32;
        v35 = *v157;
        v36 = *(*v157 + 8 * (v33 + 1));
        v169 = *(*v157 + 8 * v33);
        v37 = v169;
        v170 = v36;
        v38 = v36;
        v39 = v37;
        LODWORD(v156) = sub_100064928(&v170, &v169, v166);
        if (v7)
        {

          goto LABEL_101;
        }

        v146 = v34;
        v147 = 0;

        v40 = (v33 + 2);
        v145 = v33;
        v151 = 8 * v33;
        v41 = &v35[8 * v33 + 16];
        v42 = v144;
        while (1)
        {
          v43 = v158;
          v5 = v166;
          if (v158 == v40)
          {
            break;
          }

          v44 = *(v41 - 1);
          v45 = *v41;
          v167 = v44;
          p_type = &stru_1000B6FF0.type;
          v162 = v45;
          v46 = [v5 indexPathForCell:v45];
          if (!v46)
          {
            goto LABEL_129;
          }

          p_type = v5;
          v5 = v46;
          v47 = v154;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v48 = v165;
          v49 = *v164;
          (*v164)(v42, v47, v165);
          v50 = [p_type indexPathForCell:v167];
          if (!v50)
          {
            goto LABEL_128;
          }

          v51 = v50;
          p_type = v42;
          v52 = v153;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v53 = v152;
          v49(v152, v52, v48);
          v54 = IndexPath.compare(_:)();
          v55 = *v163;
          (*v163)(v53, v48);
          v55(p_type, v48);

          v40 = (v40 + 1);
          ++v41;
          v42 = p_type;
          if (((v156 ^ (v54 != -1)) & 1) == 0)
          {
            v43 = (v40 - 1);
            v5 = v166;
            break;
          }
        }

        v7 = v147;
        v56 = v148;
        v34 = v146;
        v33 = v145;
        v57 = v151;
        if ((v156 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v43 < v145)
        {
          goto LABEL_124;
        }

        if (v145 < v43)
        {
          v58 = 8 * v43 - 8;
          v59 = v43;
          v60 = v145;
          do
          {
            v43 = (v43 - 1);
            if (v60 != v43)
            {
              v61 = *v157;
              if (!*v157)
              {
                goto LABEL_131;
              }

              v62 = *&v61[v57];
              *&v61[v57] = *&v61[v58];
              *&v61[v58] = v62;
            }

            v60 = (v60 + 1);
            v58 -= 8;
            v57 += 8;
          }

          while (v60 < v43);
          p_type = v155;
          v43 = v59;
        }

        else
        {
LABEL_22:
          p_type = v155;
        }
      }

      v63 = v157[1];
      if (v43 >= v63)
      {
        break;
      }

      v64 = v43;
      v105 = __OFSUB__(v43, v33);
      v65 = v43 - v33;
      if (v105)
      {
        goto LABEL_121;
      }

      if (v65 >= v56)
      {
        v66 = v64;
        if (v64 < v33)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (__OFADD__(v33, v56))
        {
          goto LABEL_122;
        }

        if (v33 + v56 < v63)
        {
          v63 = v33 + v56;
        }

        if (v63 < v33)
        {
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          v141 = v166;

          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          v142 = v166;

          __break(1u);
LABEL_131:

          __break(1u);
LABEL_132:
          v143 = v166;

          __break(1u);
LABEL_133:

          __break(1u);
          return;
        }

        v43 = v64;
        if (v64 == v63)
        {
          break;
        }

        v150 = v63;
        v146 = v34;
        v147 = v7;
        v162 = *v157;
        v67 = &v162[8 * v64 - 8];
        v145 = v33;
        v68 = (v33 - v64);
        v69 = (&stru_1000B6FF0 + 16);
        do
        {
          v158 = v43;
          v70 = *&v162[8 * v43];
          v151 = v68;
          v71 = v68;
          v156 = v67;
          do
          {
            v5 = *v67;
            v72 = v70;
            p_type = v5;
            v73 = v166;
            v74 = [v166 v69[424]];
            if (!v74)
            {
              goto LABEL_126;
            }

            v75 = v74;
            v167 = v71;
            v76 = v161;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v77 = *v164;
            v5 = v69;
            v78 = v165;
            (*v164)(v168, v76, v165);
            v79 = [v73 *(v5 + 3392)];
            if (!v79)
            {
              goto LABEL_125;
            }

            v80 = v79;
            v81 = v160;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v82 = v159;
            v83 = v81;
            v84 = v168;
            v77(v159, v83, v78);
            v5 = IndexPath.compare(_:)();
            v85 = *v163;
            (*v163)(v82, v78);
            v85(v84, v78);

            v69 = &stru_1000B6FF0.type;
            if (v5 != -1)
            {
              break;
            }

            v86 = v167;
            if (!v162)
            {
              goto LABEL_127;
            }

            v87 = *v67;
            v70 = v67[1];
            *v67 = v70;
            v67[1] = v87;
            --v67;
            v88 = __CFADD__(v86, 1);
            v71 = (v86 + 1);
          }

          while (!v88);
          v43 = (v158 + 1);
          v67 = v156 + 1;
          v68 = (v151 - 1);
        }

        while ((v158 + 1) != v150);
        v7 = v147;
        p_type = v155;
        v34 = v146;
        v33 = v145;
        v66 = v150;
        if (v150 < v145)
        {
          goto LABEL_120;
        }
      }

LABEL_47:
      v150 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_10000D8A0(0, *(v34 + 2) + 1, 1, v34);
      }

      v5 = *(v34 + 2);
      v89 = *(v34 + 3);
      v90 = v5 + 1;
      if (v5 >= v89 >> 1)
      {
        v34 = sub_10000D8A0((v89 > 1), v5 + 1, 1, v34);
      }

      *(v34 + 2) = v90;
      v91 = v34 + 32;
      v92 = &v34[16 * v5 + 32];
      v93 = v150;
      *v92 = v33;
      *(v92 + 1) = v93;
      v171 = v34;
      v158 = *v149;
      if (!v158)
      {
        goto LABEL_132;
      }

      if (v5)
      {
        v156 = (v34 + 32);
        while (1)
        {
          v94 = v90 - 1;
          if (v90 >= 4)
          {
            break;
          }

          if (v90 == 3)
          {
            v95 = *(v34 + 4);
            v96 = *(v34 + 5);
            v105 = __OFSUB__(v96, v95);
            v97 = v96 - v95;
            v98 = v105;
LABEL_67:
            if (v98)
            {
              goto LABEL_111;
            }

            v111 = &v34[16 * v90];
            v113 = *v111;
            v112 = *(v111 + 1);
            v114 = __OFSUB__(v112, v113);
            v115 = v112 - v113;
            v116 = v114;
            if (v114)
            {
              goto LABEL_114;
            }

            v117 = &v91[16 * v94];
            v119 = *v117;
            v118 = *(v117 + 1);
            v105 = __OFSUB__(v118, v119);
            v120 = v118 - v119;
            if (v105)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v115, v120))
            {
              goto LABEL_118;
            }

            if (v115 + v120 >= v97)
            {
              if (v97 < v120)
              {
                v94 = v90 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v121 = &v34[16 * v90];
          v123 = *v121;
          v122 = *(v121 + 1);
          v105 = __OFSUB__(v122, v123);
          v115 = v122 - v123;
          v116 = v105;
LABEL_81:
          if (v116)
          {
            goto LABEL_113;
          }

          v124 = &v91[16 * v94];
          v126 = *v124;
          v125 = *(v124 + 1);
          v105 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v105)
          {
            goto LABEL_116;
          }

          if (v127 < v115)
          {
            goto LABEL_3;
          }

LABEL_88:
          if (v94 - 1 >= v90)
          {
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
            goto LABEL_123;
          }

          v132 = *v157;
          if (!*v157)
          {
            goto LABEL_130;
          }

          v133 = &v91[16 * v94 - 16];
          v134 = *v133;
          v135 = v94;
          p_type = &v91[16 * v94];
          v136 = p_type[1];
          v5 = &v132[8 * *v133];
          v167 = &v132[8 * *p_type];
          v162 = &v132[8 * v136];
          v137 = v166;
          sub_100011120(v5, v167, v162, v158, v137);
          if (v7)
          {

            v171 = v34;
            p_type = v155;
            goto LABEL_101;
          }

          if (v136 < v134)
          {
            goto LABEL_106;
          }

          v5 = *(v34 + 2);
          if (v135 > v5)
          {
            goto LABEL_107;
          }

          *v133 = v134;
          *(v133 + 1) = v136;
          if (v135 >= v5)
          {
            goto LABEL_108;
          }

          v90 = v5 - 1;
          memmove(p_type, p_type + 2, 16 * (v5 - 1 - v135));
          *(v34 + 2) = v5 - 1;
          p_type = v155;
          v91 = v156;
          if (v5 <= 2)
          {
LABEL_3:
            v171 = v34;
            goto LABEL_4;
          }
        }

        v99 = &v91[16 * v90];
        v100 = *(v99 - 8);
        v101 = *(v99 - 7);
        v105 = __OFSUB__(v101, v100);
        v102 = v101 - v100;
        if (v105)
        {
          goto LABEL_109;
        }

        v104 = *(v99 - 6);
        v103 = *(v99 - 5);
        v105 = __OFSUB__(v103, v104);
        v97 = v103 - v104;
        v98 = v105;
        if (v105)
        {
          goto LABEL_110;
        }

        v106 = &v34[16 * v90];
        v108 = *v106;
        v107 = *(v106 + 1);
        v105 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v105)
        {
          goto LABEL_112;
        }

        v105 = __OFADD__(v97, v109);
        v110 = v97 + v109;
        if (v105)
        {
          goto LABEL_115;
        }

        if (v110 >= v102)
        {
          v128 = &v91[16 * v94];
          v130 = *v128;
          v129 = *(v128 + 1);
          v105 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v105)
          {
            goto LABEL_119;
          }

          if (v97 < v131)
          {
            v94 = v90 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

LABEL_4:
      v32 = v157[1];
      v33 = v150;
      if (v150 >= v32)
      {
        goto LABEL_98;
      }
    }

    v66 = v43;
    if (v43 < v33)
    {
      goto LABEL_120;
    }

    goto LABEL_47;
  }

  v138 = p_type;
LABEL_98:
  v139 = *v149;
  if (!*v149)
  {
    goto LABEL_133;
  }

  v140 = p_type;
  sub_100011788(&v171, v139, v157, v140);
  if (v7)
  {

LABEL_101:
  }

  else
  {
  }
}

void sub_1000123B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v55 = &v49 - v15;
  v16 = __chkstk_darwin(v14);
  v57 = &v49 - v17;
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v50 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = (v18 + 32);
    v54 = (v18 + 8);
    v58 = v21;
    v23 = v21 + 8 * a3 - 8;
    v24 = a1 - a3;
    p_type = &stru_1000B6FF0.type;
LABEL_5:
    v52 = v23;
    v53 = a3;
    v26 = *(v58 + 8 * a3);
    v51 = v24;
    v27 = v24;
    while (1)
    {
      v28 = *v23;
      v29 = v26;
      v62 = v28;
      v30 = p_type[424];
      v61 = v29;
      v31 = [a5 v30];
      if (!v31)
      {
        break;
      }

      v32 = a5;
      v33 = v31;
      v60 = v27;
      v34 = v57;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = *v22;
      (*v22)(v20, v34, v10);
      v36 = v32;
      v37 = [v32 p_type[424]];
      if (!v37)
      {
        goto LABEL_14;
      }

      v38 = v37;
      v39 = v56;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = p_type;
      v41 = v20;
      v42 = v10;
      v43 = v55;
      v35(v55, v39, v42);
      v59 = IndexPath.compare(_:)();
      v44 = *v54;
      v45 = v43;
      v10 = v42;
      v20 = v41;
      p_type = v40;
      (*v54)(v45, v10);
      v44(v20, v10);

      a5 = v36;
      v46 = v60;
      if (v59 == -1)
      {
        if (!v58)
        {
          goto LABEL_15;
        }

        v47 = *v23;
        v26 = *(v23 + 8);
        *v23 = v26;
        *(v23 + 8) = v47;
        v23 -= 8;
        v48 = __CFADD__(v46, 1);
        v27 = v46 + 1;
        if (!v48)
        {
          continue;
        }
      }

      a3 = v53 + 1;
      v23 = v52 + 8;
      v24 = v51 - 1;
      if (v53 + 1 == v50)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1000126B8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001A2A8(0, &qword_1000BBD08, UICollectionViewCell_ptr);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_100011928(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1000123B0(0, v3, 1, a1, v4);
  }
}

void sub_10001280C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100010FC0(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1000126B8(v8, v7);

  specialized ContiguousArray._endMutation()();
}

id sub_1000128AC()
{
  v1 = v0;
  if (!*(v0 + 216))
  {
    v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, *(v0 + 48), *(v0 + 56)}];
    [v2 setClipsToBounds:0];
    v3 = v1[27];
    v1[27] = v2;
  }

  v4 = v1[2];
  v5 = v1[3];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 8))(ObjectType, v5);
  v8 = v1[28];
  v1[28] = v7;
  v9 = v7;

  result = v1[27];
  if (result)
  {
    if (!v1[28])
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    result = [result addSubview:?];
  }

  v11 = v1[28];
  if (!v11)
  {
LABEL_9:

    result = v1[27];
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  v12 = v1[27];
  if (v12)
  {
    v13 = v11;
    [v12 bounds];
    [v13 setFrame:?];

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1000129E8(int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, double a8, double a9, double a10, double a11)
{
  LODWORD(v195) = a2;
  v196 = a1;
  v199 = type metadata accessor for Logger();
  v198 = *(v199 - 1);
  v20 = *(v198 + 8);
  __chkstk_darwin(v199);
  v190 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v189 = &v172 - v23;
  __chkstk_darwin(v24);
  v26 = &v172 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  v28 = swift_allocObject();
  *(v28 + 16) = a6;
  *(v28 + 24) = sub_10001433C;
  *(v28 + 32) = v27;
  v29 = a7;
  v30 = a6;

  static Logger.UI.getter();
  v31 = a5;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v191 = v30;
    v35 = v34;
    v36 = swift_slowAlloc();
    v188 = v28;
    Strong = v36;
    v207 = v36;
    *v35 = 136316674;
    *(v35 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v207);
    v192 = v29;
    *(v35 + 12) = 2080;
    v37 = (v31 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v193 = v27;
    v38 = v31;
    v39 = a4;
    v40 = *v37;
    v41 = v37[1];

    v42 = sub_100037B98(v40, v41, &v207);

    *(v35 + 14) = v42;
    *(v35 + 22) = 2080;
    v201 = a8;
    v202 = a9;
    v203 = a10;
    v204 = a11;
    type metadata accessor for CGRect(0);
    v43 = String.init<A>(describing:)();
    v45 = sub_100037B98(v43, v44, &v207);

    *(v35 + 24) = v45;
    *(v35 + 32) = 1024;
    *(v35 + 34) = v196 & 1;
    *(v35 + 38) = 1024;
    *(v35 + 40) = v195 & 1;
    *(v35 + 44) = 2080;
    *(v35 + 46) = sub_100037B98(a3, v39, &v207);
    *(v35 + 54) = 2080;
    v29 = v192;
    v46 = *(v38 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8);
    v201 = *(v38 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier);
    v202 = v46;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v47 = String.init<A>(describing:)();
    v49 = sub_100037B98(v47, v48, &v207);
    v27 = v193;

    *(v35 + 56) = v49;
    a4 = v39;
    v31 = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v35, 0x40u);
    swift_arrayDestroy();
    v28 = v188;

    v30 = v191;
  }

  v50 = *(v198 + 1);
  v50(v26, v199);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = (v31 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame);
    if ((*(v31 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32) & 1) != 0 || (v178 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer, (v52 = *(v31 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer)) == 0))
    {
LABEL_40:
      v89 = v29;
      sub_10003AA04(0, v30, v89);
    }

    else
    {
      v194 = v31;
      v53 = v51[2];
      v182 = v51[3];
      v55 = *v51;
      v54 = v51[1];
      v56 = v52;
      LOBYTE(v31) = v196;
      if (v196)
      {
        goto LABEL_9;
      }

      v57 = v56;
      v58 = [v56 superview];
      if (v58)
      {

        v52 = *&v194[v178];
        v56 = v57;
        if (!v52)
        {
          goto LABEL_128;
        }

LABEL_9:
        v197 = v56;
        v193 = v27;
        v59 = v52;
        sub_100062FF4();

        v60 = *&v194[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
        if (v60)
        {
          v181 = v50;
          v177 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
          [v60 layoutSubviews];
          v61 = 0.5;
          if (v31)
          {
            v61 = 1.0;
          }

          v176 = v61;
          v62 = 0.0;
          if (v31)
          {
            v63 = 0.0;
          }

          else
          {
            v63 = 1.0;
          }

          if ((v31 & 1) == 0)
          {
            a11 = v182;
            a10 = v53;
            a9 = v54;
            a8 = v55;
          }

          p_type = &stru_1000B6FF0.type;
          if (v31)
          {
            v62 = 1.0;
          }

          v175 = v62;
          if ((v195 & 1) == 0)
          {
            [v197 setAlpha:v63];
          }

          v65 = swift_allocObject();
          v185 = v65;
          *(v65 + 16) = 0;
          v179 = v65 + 16;
          v66 = swift_allocObject();
          v184 = v66;
          *(v66 + 16) = _swiftEmptyArrayStorage;
          v67 = (v66 + 16);
          v68 = swift_allocObject();
          v183 = v68;
          *(v68 + 16) = _swiftEmptyArrayStorage;
          v186 = (v68 + 16);
          v69 = *&v194[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
          if (v69)
          {
            [v69 setAlpha:v63];
          }

          v70 = v194;
          [*&v194[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
          v71 = *&v70[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
          v72 = v195;
          if (v71)
          {
            [v71 setAlpha:0.0];
          }

          v192 = v29;
          v187 = v67;
          v191 = v30;
          v180 = a3;
          if ((v72 & 1) == 0)
          {
            v90 = sub_100008104(v194, Strong, v31 & 1, a3, a4, v197, v55, v54, v53, v182);
            v92 = v91;
            v93 = *v67;
            *v67 = v90;

            *v186 = v92;

            v94 = *v67;

            v96 = sub_1000099DC(v95);
            v97 = v96;
            v188 = v28;
            v173 = a4;
            if (v96 >> 62)
            {
              goto LABEL_110;
            }

            v30 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_46;
          }

          v73 = v194;
          v74 = *&v194[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
          if (v74)
          {
            v75 = *v187;
            *v187 = v74;

            v76 = *&v73[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
            if (v76)
            {
              *v186 = v76;

              v77 = v184;
              v78 = *(v184 + 16);

              v80 = v185;
              sub_100009470(v79, v73, v77, v185, a3, a4);

              sub_100009470(v81, v73, v77, v80, a3, a4);

              swift_beginAccess();
              v82 = *(v77 + 16);

              v84 = sub_1000099DC(v83);
              v85 = v84;
              if (v84 >> 62)
              {
                v30 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v30 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              p_type = v198;
              if (v30)
              {
                v173 = a4;
                v86 = 0;
                p_type = v85 & 0xC000000000000001;
                v29 = (v85 & 0xFFFFFFFFFFFFFF8);
                a4 = &stru_1000B6FF0.type;
                v31 = &stru_1000B6FF0.type;
                do
                {
                  if (p_type)
                  {
                    v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v88 = v86 + 1;
                    if (__OFADD__(v86, 1))
                    {
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    if (v86 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
LABEL_104:
                      __break(1u);
LABEL_105:
                      __break(1u);
                      goto LABEL_106;
                    }

                    v87 = *(v85 + 8 * v86 + 32);

                    v88 = v86 + 1;
                    if (__OFADD__(v86, 1))
                    {
LABEL_39:
                      __break(1u);
                      goto LABEL_40;
                    }
                  }

                  [sub_1000128AC() setFrame:{v87[4], v87[5], v87[6], v87[7]}];
                  [Strong addSubview:sub_1000128AC()];

                  ++v86;
                }

                while (v88 != v30);
                a4 = v173;
                LOBYTE(v31) = v196;
                p_type = v198;
              }

              v105 = v187;
              while (1)
              {

                swift_beginAccess();
                if (*v105 >> 62)
                {
LABEL_106:
                  v109 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v109 = *((*v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v195 = v109;
                v110 = v109 == 0;
                swift_beginAccess();
                *(v185 + 16) = v110;
                v111 = v189;
                static Logger.UI.getter();
                v112 = v194;

                v113 = Logger.logObject.getter();
                v114 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v113, v114))
                {
                  v115 = p_type;
                  v31 = a4;
                  v116 = v28;
                  v117 = swift_slowAlloc();
                  v205 = swift_slowAlloc();
                  *v117 = 136316162;
                  *(v117 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v205);
                  *(v117 + 12) = 2080;
                  v118 = *&v112[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v119 = *&v112[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v120 = sub_100037B98(v118, v119, &v205);

                  *(v117 + 14) = v120;
                  *(v117 + 22) = 2048;
                  v121 = *v187;
                  if (*v187 >> 62)
                  {
                    if (v121 < 0)
                    {
                      v162 = *v187;
                    }

                    v122 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a4 = v31;
                  v123 = v195 == 0;
                  *(v117 + 24) = v122;

                  *(v117 + 32) = 1024;
                  *(v117 + 34) = v123;

                  *(v117 + 38) = 2080;
                  *(v117 + 40) = sub_100037B98(v180, v31, &v205);
                  _os_log_impl(&_mh_execute_header, v113, v114, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v117, 0x30u);
                  swift_arrayDestroy();

                  p_type = v115;
                  v124 = v199;
                  v181(v189, v199);
                  v28 = v116;
                  LOBYTE(v31) = v196;
                }

                else
                {

                  v124 = v199;
                  v181(v111, v199);
                }

                v29 = v190;
                static Logger.UI.getter();
                v125 = v112;

                v126 = Logger.logObject.getter();
                v92 = static os_log_type_t.debug.getter();

                v127 = os_log_type_enabled(v126, v92);
                v195 = v125;
                if (v127)
                {
                  v31 = a4;
                  v29 = v28;
                  v128 = swift_slowAlloc();
                  v206 = swift_slowAlloc();
                  *v128 = 136315906;
                  *(v128 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v206);
                  *(v128 + 12) = 2080;
                  v129 = *&v125[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v130 = *&v125[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v131 = sub_100037B98(v129, v130, &v206);

                  *(v128 + 14) = v131;
                  *(v128 + 22) = 2048;
                  v132 = v186;
                  swift_beginAccess();
                  v133 = *v132;
                  if (*v132 >> 62)
                  {
                    if (v133 < 0)
                    {
                      v163 = *v132;
                    }

                    v134 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a4 = v31;
                  p_type = v190;
                  *(v128 + 24) = v134;

                  *(v128 + 32) = 2080;
                  *(v128 + 34) = sub_100037B98(v180, v31, &v206);
                  _os_log_impl(&_mh_execute_header, v126, v92, "%s identifier: %s animating from within cv: %ld animationID: %s", v128, 0x2Au);
                  swift_arrayDestroy();

                  v181(p_type, v199);
                  LOBYTE(v31) = v196;
                }

                else
                {

                  v181(v29, v124);
                }

                v30 = v177;
                if (v31)
                {
                  v135 = *&v194[v178];
                  if (!v135)
                  {
                    goto LABEL_127;
                  }

                  [v135 setFrame:{v55, v54, v53, v182}];
                  [Strong layoutSubviews];
                }

                v136 = *&v194[v30];
                if (!v136)
                {
                  goto LABEL_124;
                }

                v137 = v136;
                v97 = sub_100009E04();

                v174 = a8;
                v138 = v97 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
                a8 = v63;
                v63 = a9;
                if (!v138)
                {
                  break;
                }

                v172 = a8;
                if ((v97 & 0xC000000000000001) != 0)
                {
                  v139 = a10;
                  v140 = a11;
                  v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_96:
                  v142 = v141;

                  if (v142)
                  {
                    v143 = v142;
                    [v143 frame];
                    v146 = *&v194[v30];
                    if (!v146)
                    {
                      goto LABEL_129;
                    }

                    v147 = v144;
                    v148 = v145;
                    [v146 frame];
                    [v143 setFrame:{v147, v148}];
                    [v143 layoutIfNeeded];
                  }

                  v149 = v31;
                  a8 = v172;
LABEL_101:
                  v199 = v142;
                  v150 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
                  v198 = &v172;
                  __chkstk_darwin(v150);
                  v151 = v195;
                  *(&v172 - 12) = v195;
                  *(&v172 - 11) = v174;
                  *(&v172 - 10) = v63;
                  *(&v172 - 9) = v139;
                  *(&v172 - 8) = v140;
                  *(&v172 - 7) = v142;
                  v152 = v149 & 1;
                  *(&v172 - 48) = v152;
                  v153 = v175;
                  *(&v172 - 5) = v175;
                  *(&v172 - 4) = v187;
                  *(&v172 - 3) = 1.0;
                  v154 = v186;
                  *(&v172 - 2) = v186;
                  v155 = swift_allocObject();
                  *(v155 + 16) = v180;
                  *(v155 + 24) = a4;
                  *(v155 + 32) = v151;
                  *(v155 + 40) = sub_100014344;
                  v156 = v184;
                  *(v155 + 48) = v28;
                  *(v155 + 56) = v156;
                  *(v155 + 64) = v183;
                  *(v155 + 72) = v152;
                  v157 = v151;

                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  __chkstk_darwin(v158);
                  *(&v172 - 4) = v187;
                  *(&v172 - 3) = v153;
                  *(&v172 - 2) = v154;
                  v159 = static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  __chkstk_darwin(v159);
                  *(&v172 - 6) = v157;
                  v160 = v176;
                  *(&v172 - 5) = v153;
                  *(&v172 - 4) = v160;
                  *(&v172 - 3) = v179;
                  *(&v172 - 2) = a8;
                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  v161 = v192;

                  v29 = v161;

                  goto LABEL_43;
                }

                if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v139 = a10;
                  v140 = a11;
                  v141 = *(v97 + 32);
                  goto LABEL_96;
                }

                __break(1u);
LABEL_110:
                v30 = _CocoaArrayWrapper.endIndex.getter();
LABEL_46:
                if (v30)
                {
                  v28 = 0;
                  v31 = v97 & 0xC000000000000001;
                  a4 = v97 & 0xFFFFFFFFFFFFFF8;
                  while (1)
                  {
                    if (v31)
                    {
                      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v29 = (v28 + 1);
                      if (__OFADD__(v28, 1))
                      {
                        goto LABEL_57;
                      }
                    }

                    else
                    {
                      if (v28 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_104;
                      }

                      v98 = *(v97 + 8 * v28 + 32);

                      v29 = (v28 + 1);
                      if (__OFADD__(v28, 1))
                      {
LABEL_57:
                        __break(1u);
                        goto LABEL_58;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v98 + 32), *(v98 + 40), *(v98 + 48), *(v98 + 56)}];
                    [Strong addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v99 = *(v98 + 224);
                    if (!v99)
                    {
                      break;
                    }

                    v100 = *(v99 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v100)
                    {
                      goto LABEL_120;
                    }

                    [v100 *(p_type + 3304)];

                    ++v28;
                    if (v29 == v30)
                    {
                      goto LABEL_58;
                    }
                  }

                  v164 = v192;

                  __break(1u);
LABEL_120:
                  v165 = v192;

                  __break(1u);
LABEL_121:
                  v166 = v192;

                  __break(1u);
LABEL_122:
                  v167 = v192;

                  __break(1u);
                  goto LABEL_123;
                }

LABEL_58:

                if (v92 >> 62)
                {
                  v101 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v101 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v28 = v188;
                if (v101)
                {
                  v30 = 0;
                  a4 = v92 & 0xC000000000000001;
                  LOBYTE(v31) = v92 & 0xF8;
                  do
                  {
                    if (a4)
                    {
                      v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v29 = (v30 + 1);
                      if (__OFADD__(v30, 1))
                      {
                        goto LABEL_71;
                      }
                    }

                    else
                    {
                      if (v30 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_105;
                      }

                      v102 = *(v92 + 8 * v30 + 32);

                      v29 = (v30 + 1);
                      if (__OFADD__(v30, 1))
                      {
LABEL_71:
                        __break(1u);
                        break;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v102 + 32), *(v102 + 40), *(v102 + 48), *(v102 + 56)}];
                    [v197 addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v103 = *(v102 + 224);
                    if (!v103)
                    {
                      goto LABEL_121;
                    }

                    v104 = *(v103 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v104)
                    {
                      goto LABEL_122;
                    }

                    [v104 *(p_type + 3304)];

                    ++v30;
                  }

                  while (v29 != v101);
                }

                v105 = v187;
                v106 = v194;
                v107 = *&v194[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
                *&v194[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = *v187;

                v108 = *&v106[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
                *&v106[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = *v186;

                a4 = v173;
                LOBYTE(v31) = v196;
                p_type = v198;
              }

              v139 = a10;
              v140 = a11;

              v142 = 0;
              v149 = v31;
              goto LABEL_101;
            }

            goto LABEL_126;
          }
        }

        else
        {
LABEL_123:

          __break(1u);
LABEL_124:
          v168 = v192;

          __break(1u);
        }

        __break(1u);
LABEL_126:
        v169 = v192;

        __break(1u);
LABEL_127:
        v170 = v192;

        __break(1u);
LABEL_128:

        __break(1u);
LABEL_129:
        v171 = v192;

        __break(1u);
        return;
      }

      v89 = v29;
      sub_10003AA04(0, v30, v89);
    }
  }

  else
  {
    v89 = v29;
    sub_10003AA04(0, v30, v89);
  }

LABEL_43:
}

uint64_t sub_100014304()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014360()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000143B0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100014410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100014438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001447C(int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, double a8, double a9, double a10, double a11)
{
  v120 = a3;
  v121 = a2;
  v123 = a1;
  v125 = type metadata accessor for Logger();
  v19 = *(v125 - 1);
  v20 = *(v19 + 64);
  __chkstk_darwin(v125);
  v116 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v109 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a7;
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = sub_10001A434;
  v26[4] = v25;
  v27 = a7;
  v28 = a6;
  v122 = v25;

  static Logger.UI.getter();
  v29 = a5;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v119 = v19;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v124 = a4;
    v34 = v33;
    v35 = swift_slowAlloc();
    v117 = v27;
    v132[0] = v35;
    *v34 = 136316674;
    *(v34 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, v132);
    *(v34 + 12) = 2080;
    v118 = v28;
    v37 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v36 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v38 = sub_100037B98(v37, v36, v132);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2080;
    aBlock = *&a8;
    v127 = *&a9;
    v128 = *&a10;
    v129 = a11;
    type metadata accessor for CGRect(0);
    v39 = String.init<A>(describing:)();
    v41 = sub_100037B98(v39, v40, v132);

    *(v34 + 24) = v41;
    *(v34 + 32) = 1024;
    *(v34 + 34) = v123 & 1;
    *(v34 + 38) = 1024;
    *(v34 + 40) = v121 & 1;
    *(v34 + 44) = 2080;
    *(v34 + 46) = sub_100037B98(v120, v124, v132);
    *(v34 + 54) = 2080;
    v42 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    aBlock = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v127 = v42;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v43 = String.init<A>(describing:)();
    v45 = sub_100037B98(v43, v44, v132);
    v28 = v118;

    *(v34 + 56) = v45;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v34, 0x40u);
    swift_arrayDestroy();
    v27 = v117;

    a4 = v124;

    v46 = v119;
  }

  else
  {

    v46 = v19;
  }

  v47 = *(v46 + 8);
  v47(v24, v125);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v51 = v27;
    sub_10003AA04(0, v28, v51);

    goto LABEL_8;
  }

  v49 = Strong;
  v50 = &v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  if (v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32])
  {
LABEL_6:
    v51 = v27;
    sub_10003AA04(0, v28, v51);

LABEL_8:

    return;
  }

  v53 = v50[2];
  v52 = v50[3];
  v55 = *v50;
  v54 = v50[1];
  v56 = v123;
  if ((v123 & 1) == 0)
  {
    v57 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (!v57)
    {
      goto LABEL_6;
    }

    v58 = [v57 superview];
    if (!v58)
    {
      goto LABEL_6;
    }
  }

  v113 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v59 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (!v59)
  {

    __break(1u);
    goto LABEL_49;
  }

  v60 = v59;
  sub_100062FF4();

  v61 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v61)
  {
LABEL_49:

    __break(1u);
    goto LABEL_50;
  }

  [v61 layoutSubviews];
  if (v56)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = 1.0;
  }

  if (v56)
  {
    v63 = 1.0;
  }

  else
  {
    v63 = 0.0;
  }

  if (v56)
  {
    v64 = 1.0;
  }

  else
  {
    v64 = 0.5;
  }

  v133[0] = 0;
  v65 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  if (v65)
  {
    [v65 setAlpha:v62];
  }

  [*&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
  v66 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
  if (v66)
  {
    [v66 setAlpha:0.0];
  }

  v114 = v49;
  if (v121)
  {
    v67 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    if (v67)
    {
      v68 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
      swift_bridgeObjectRetain_n();
      sub_10000C7C0(v67, v29, v67, v133, v120, a4);
      goto LABEL_32;
    }

LABEL_50:

    __break(1u);
    goto LABEL_51;
  }

  sub_10000B7A4(v29, v49, v56 & 1, v55, v54, v53, v52);
  v69 = v49;
  v67 = v70;
  swift_bridgeObjectRetain_n();
  sub_10000C58C(v67, v56 & 1, v69, v29, v62);
  v71 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
  *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = v67;

  v72 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
  *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = _swiftEmptyArrayStorage;

LABEL_32:
  v73 = v116;
  v111 = v67 >> 62;
  v115 = v47;
  if (v67 >> 62)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v74;
  v75 = v74 == 1;
  swift_beginAccess();
  v133[0] = v75;

  static Logger.UI.getter();
  v76 = v29;

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();

  v110 = v78;
  v79 = v78;
  v80 = v77;
  v81 = os_log_type_enabled(v77, v79);
  v118 = v28;
  v117 = v27;
  v124 = a4;
  if (v81)
  {
    v82 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    aBlock = v109;
    *v82 = 136316162;
    *(v82 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, &aBlock);
    *(v82 + 12) = 2080;
    v83 = *&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v84 = *&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v85 = sub_100037B98(v83, v84, &aBlock);

    *(v82 + 14) = v85;
    *(v82 + 22) = 2048;
    v86 = v76;
    if (v111)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v87 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v88 = v115;
    v89 = v112 == 1;

    *(v82 + 24) = v87;

    *(v82 + 32) = 1024;
    *(v82 + 34) = v89;
    *(v82 + 38) = 2080;
    *(v82 + 40) = sub_100037B98(v120, v124, &aBlock);
    _os_log_impl(&_mh_execute_header, v80, v110, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v82, 0x30u);
    swift_arrayDestroy();

    v88(v116, v125);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v115(v73, v125);
    v86 = v76;
  }

  v90 = v26;
  v91 = v120;
  if (v121)
  {
    goto LABEL_43;
  }

  v92 = *&v29[v113];
  if (!v92)
  {
LABEL_51:
    v108 = v117;

    __break(1u);
    return;
  }

  [v92 setAlpha:v62];
LABEL_43:
  v93 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  __chkstk_darwin(v93);
  v95 = v123 & 1;
  v94 = (v123 & 1) == 0;
  *(&v109 - 4) = v86;
  *(&v109 - 3) = v63;
  *(&v109 - 2) = v67;
  *(&v109 - 8) = v95;
  v96 = &selRef__dimmingViewColor;
  if (v94)
  {
    v96 = &selRef_clearColor;
  }

  v125 = v96;
  v97 = swift_allocObject();
  v98 = v124;
  *(v97 + 16) = v91;
  *(v97 + 24) = v98;
  *(v97 + 32) = v86;
  *(v97 + 40) = sub_10001A42C;
  *(v97 + 48) = v90;
  *(v97 + 56) = v95;
  *(v97 + 64) = v67;
  v99 = v86;

  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

  __chkstk_darwin(v100);
  *(&v109 - 6) = v99;
  *(&v109 - 5) = v63;
  *(&v109 - 4) = v64;
  *(&v109 - 3) = v133;
  *(&v109 - 2) = v62;
  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
  v101 = [objc_opt_self() *v125];
  v102 = objc_opt_self();
  v103 = swift_allocObject();
  *(v103 + 16) = v99;
  *(v103 + 24) = v101;
  v130 = sub_1000151E0;
  v131 = v103;
  aBlock = _NSConcreteStackBlock;
  v127 = 1107296256;
  v128 = sub_10000D508;
  v129 = COERCE_DOUBLE(&unk_1000AE3B0);
  v104 = _Block_copy(&aBlock);
  v105 = v99;
  v106 = v101;

  [v102 animateWithDuration:65542 delay:v104 options:0 animations:0.25 completion:0.0];

  _Block_release(v104);
  v107 = v117;
}

void sub_1000151E4(unsigned int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, unint64_t p_type, double a9, double a10, double a11, double a12)
{
  v190 = a3;
  v187 = a2;
  v189 = a1;
  v192 = type metadata accessor for Logger();
  v191 = *(v192 - 1);
  v21 = *(v191 + 64);
  __chkstk_darwin(v192);
  v181 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v180 = &v166 - v24;
  __chkstk_darwin(v25);
  v27 = &v166 - v26;
  v28 = swift_allocObject();
  v188 = a7;
  *(v28 + 16) = a7;
  *(v28 + 24) = p_type;
  v29 = swift_allocObject();
  v29[2] = a6;
  v29[3] = sub_10001A120;
  v29[4] = v28;
  swift_bridgeObjectRetain_n();
  v30 = a6;

  static Logger.UI.getter();
  v31 = a5;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v34 = os_log_type_enabled(v32, v33);
  v182 = a4;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v193 = v31;
    v36 = v35;
    Strong = swift_slowAlloc();
    v201 = Strong;
    *v36 = 136316674;
    *(v36 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v201);
    v185 = v28;
    *(v36 + 12) = 2080;
    v183 = v30;
    v184 = p_type;
    v186 = v29;
    v38 = *&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v37 = *&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v39 = sub_100037B98(v38, v37, &v201);

    *(v36 + 14) = v39;
    *(v36 + 22) = 2080;
    v195 = a9;
    v196 = a10;
    v197 = a11;
    v198 = a12;
    type metadata accessor for CGRect(0);
    v40 = String.init<A>(describing:)();
    v42 = sub_100037B98(v40, v41, &v201);

    *(v36 + 24) = v42;
    *(v36 + 32) = 1024;
    *(v36 + 34) = v189 & 1;
    *(v36 + 38) = 1024;
    *(v36 + 40) = v187 & 1;
    *(v36 + 44) = 2080;
    *(v36 + 46) = sub_100037B98(v190, a4, &v201);
    *(v36 + 54) = 2080;
    v28 = v185;
    v43 = *&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    v195 = *&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v196 = v43;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v44 = String.init<A>(describing:)();
    v46 = sub_100037B98(v44, v45, &v201);
    v29 = v186;

    *(v36 + 56) = v46;
    p_type = v184;
    v30 = v183;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v36, 0x40u);
    swift_arrayDestroy();

    v31 = v193;
  }

  v47 = *(v191 + 8);
  v47(v27, v192);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = &v31[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
    if ((v31[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32] & 1) != 0 || (v186 = v29, (v49 = *&v31[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer]) == 0))
    {
LABEL_41:

      sub_10003BDA8(0, v30, v188, p_type);
    }

    else
    {
      v185 = v28;
      v50 = v30;
      v171 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
      v193 = v31;
      v51 = v48[2];
      v174 = v48[3];
      v53 = *v48;
      v52 = v48[1];
      v54 = v49;
      v55 = v54;
      v56 = v190;
      v57 = v189;
      v58 = v187;
      if (v189)
      {
        goto LABEL_11;
      }

      v59 = [v54 superview];
      if (v59)
      {

        v49 = *&v193[v171];
        if (!v49)
        {
          goto LABEL_129;
        }

LABEL_11:
        v172 = v47;
        v184 = p_type;
        v60 = v49;
        sub_100062FF4();

        v61 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
        v62 = *&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
        if (v62)
        {
          [v62 layoutSubviews];
          v63 = 0.5;
          if (v57)
          {
            v63 = 1.0;
          }

          v169 = v63;
          v64 = 0.0;
          if (v57)
          {
            v65 = 0.0;
          }

          else
          {
            v65 = 1.0;
          }

          if ((v57 & 1) == 0)
          {
            a12 = v174;
            a11 = v51;
            a10 = v52;
            a9 = v53;
          }

          p_type = &stru_1000B6FF0.type;
          if (v57)
          {
            v64 = 1.0;
          }

          v168 = v64;
          if ((v58 & 1) == 0)
          {
            [v55 setAlpha:v65];
          }

          v66 = swift_allocObject();
          v177 = v66;
          *(v66 + 16) = 0;
          v173 = v66 + 16;
          v67 = swift_allocObject();
          v176 = v67;
          *(v67 + 16) = _swiftEmptyArrayStorage;
          v179 = (v67 + 16);
          v68 = swift_allocObject();
          *(v68 + 16) = _swiftEmptyArrayStorage;
          v178 = (v68 + 16);
          v69 = *&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
          if (v69)
          {
            [v69 setAlpha:v65];
          }

          v70 = v193;
          [*&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
          v71 = *&v70[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
          if (v71)
          {
            [v71 setAlpha:0.0];
          }

          v188 = v55;
          v175 = v68;
          v183 = v50;
          v170 = v61;
          if ((v58 & 1) == 0)
          {
            v88 = sub_100008104(v193, Strong, v57 & 1, v56, v182, v55, v53, v52, v51, v174);
            v90 = v89;
            v91 = v179;
            v92 = *v179;
            *v179 = v88;

            *v178 = v90;

            v93 = *v91;

            v95 = sub_1000099DC(v94);
            v96 = v95;
            if (v95 >> 62)
            {
              goto LABEL_110;
            }

            v72 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_46;
          }

          v72 = v193;
          v73 = *&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
          if (v73)
          {
            v74 = *v179;
            *v179 = v73;

            v75 = *(v72 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts);
            p_type = v182;
            v76 = v177;
            if (v75)
            {
              *v178 = v75;

              v77 = v176;
              v78 = *(v176 + 16);

              sub_100009470(v79, v72, v77, v76, v56, p_type);

              sub_100009470(v80, v72, v77, v76, v56, p_type);

              swift_beginAccess();
              v81 = *(v77 + 16);

              v83 = sub_1000099DC(v82);
              v84 = v83;
              v50 = v185;
              if (v83 >> 62)
              {
                v85 = _CocoaArrayWrapper.endIndex.getter();
                if (!v85)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                v85 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v85)
                {
                  goto LABEL_73;
                }
              }

              v30 = v50;
              v72 = 0;
              p_type = v84 & 0xFFFFFFFFFFFFFF8;
              v50 = &stru_1000B6FF0.type;
              do
              {
                if ((v84 & 0xC000000000000001) != 0)
                {
                  v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v87 = v72 + 1;
                  if (__OFADD__(v72, 1))
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  if (v72 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
LABEL_104:
                    __break(1u);
LABEL_105:
                    __break(1u);
                    goto LABEL_106;
                  }

                  v86 = *(v84 + 8 * v72 + 32);

                  v87 = v72 + 1;
                  if (__OFADD__(v72, 1))
                  {
LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }
                }

                [sub_1000128AC() setFrame:{v86[4], v86[5], v86[6], v86[7]}];
                [Strong addSubview:sub_1000128AC()];

                ++v72;
              }

              while (v87 != v85);
              v50 = v30;
              p_type = v182;
              v72 = v193;
LABEL_73:
              v107 = v179;
              while (1)
              {

                swift_beginAccess();
                if (*v107 >> 62)
                {
LABEL_106:
                  v110 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v110 = *((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v111 = v180;
                swift_beginAccess();
                *(v177 + 16) = v110 == 0;
                static Logger.UI.getter();
                v112 = v72;

                v113 = Logger.logObject.getter();
                v114 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v113, v114))
                {
                  v115 = p_type;
                  v116 = swift_slowAlloc();
                  v199 = swift_slowAlloc();
                  *v116 = 136316162;
                  *(v116 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v199);
                  *(v116 + 12) = 2080;
                  v117 = *&v112[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v118 = *&v112[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v119 = sub_100037B98(v117, v118, &v199);

                  *(v116 + 14) = v119;
                  *(v116 + 22) = 2048;
                  v120 = *v179;
                  if (*v179 >> 62)
                  {
                    if (v120 < 0)
                    {
                      v164 = *v179;
                    }

                    v121 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  p_type = v115;
                  *(v116 + 24) = v121;

                  *(v116 + 32) = 1024;
                  *(v116 + 34) = v110 == 0;

                  *(v116 + 38) = 2080;
                  *(v116 + 40) = sub_100037B98(v190, v115, &v199);
                  _os_log_impl(&_mh_execute_header, v113, v114, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v116, 0x30u);
                  swift_arrayDestroy();

                  v122 = v180;
                }

                else
                {

                  v122 = v111;
                }

                v123 = v172;
                v172(v122, v192);
                v124 = v181;
                static Logger.UI.getter();
                v125 = v112;

                v126 = Logger.logObject.getter();
                v127 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v126, v127))
                {
                  v128 = p_type;
                  v129 = swift_slowAlloc();
                  v200 = swift_slowAlloc();
                  *v129 = 136315906;
                  *(v129 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v200);
                  *(v129 + 12) = 2080;
                  v130 = *&v125[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v131 = *&v125[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v132 = sub_100037B98(v130, v131, &v200);

                  *(v129 + 14) = v132;
                  *(v129 + 22) = 2048;
                  v133 = v178;
                  swift_beginAccess();
                  v134 = *v133;
                  if (*v133 >> 62)
                  {
                    if (v134 < 0)
                    {
                      v165 = *v133;
                    }

                    v135 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  p_type = v128;
                  v136 = v181;
                  *(v129 + 24) = v135;

                  *(v129 + 32) = 2080;
                  *(v129 + 34) = sub_100037B98(v190, v128, &v200);
                  _os_log_impl(&_mh_execute_header, v126, v127, "%s identifier: %s animating from within cv: %ld animationID: %s", v129, 0x2Au);
                  swift_arrayDestroy();

                  v172(v136, v192);
                }

                else
                {

                  v123(v124, v192);
                }

                v96 = v189;
                v90 = v170;
                v137 = v193;
                if (v189)
                {
                  v138 = *&v193[v171];
                  if (!v138)
                  {
                    goto LABEL_128;
                  }

                  [v138 setFrame:{v53, v52, v51, v174}];
                  [Strong layoutSubviews];
                }

                v139 = *&v137[v90];
                if (!v139)
                {
                  goto LABEL_125;
                }

                v140 = v139;
                v141 = sub_100009E04();

                v167 = a9;
                v142 = v141 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
                a9 = v65;
                v65 = a10;
                if (!v142)
                {
                  break;
                }

                v166 = a9;
                if ((v141 & 0xC000000000000001) != 0)
                {
                  v143 = a11;
                  v144 = a12;
                  v145 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_96:
                  v146 = v145;

                  if (v146)
                  {
                    v147 = v146;
                    [v147 frame];
                    v150 = *&v137[v90];
                    if (!v150)
                    {
                      goto LABEL_130;
                    }

                    v151 = v148;
                    v152 = v149;
                    [v150 frame];
                    [v147 setFrame:{v151, v152}];
                    [v147 layoutIfNeeded];
                  }

                  v153 = v96;
                  a9 = v166;
LABEL_101:
                  v193 = v146;
                  v154 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
                  v192 = &v166;
                  __chkstk_darwin(v154);
                  *(&v166 - 12) = v125;
                  *(&v166 - 11) = v167;
                  *(&v166 - 10) = v65;
                  *(&v166 - 9) = v143;
                  *(&v166 - 8) = v144;
                  *(&v166 - 7) = v146;
                  *(&v166 - 48) = v153 & 1;
                  v155 = v168;
                  *(&v166 - 5) = v168;
                  v156 = v179;
                  *(&v166 - 4) = v179;
                  *(&v166 - 3) = 1.0;
                  v157 = v178;
                  *(&v166 - 2) = v178;
                  v158 = swift_allocObject();
                  *(v158 + 16) = v190;
                  *(v158 + 24) = p_type;
                  *(v158 + 32) = v125;
                  *(v158 + 40) = sub_10001A42C;
                  v159 = v176;
                  *(v158 + 48) = v186;
                  *(v158 + 56) = v159;
                  *(v158 + 64) = v175;
                  *(v158 + 72) = v153 & 1;
                  v160 = v125;

                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  __chkstk_darwin(v161);
                  *(&v166 - 4) = v156;
                  *(&v166 - 3) = v155;
                  *(&v166 - 2) = v157;
                  v162 = static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  __chkstk_darwin(v162);
                  *(&v166 - 6) = v160;
                  v163 = v169;
                  *(&v166 - 5) = v155;
                  *(&v166 - 4) = v163;
                  *(&v166 - 3) = v173;
                  *(&v166 - 2) = a9;
                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  goto LABEL_43;
                }

                if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v143 = a11;
                  v144 = a12;
                  v145 = *(v141 + 32);
                  goto LABEL_96;
                }

                __break(1u);
LABEL_110:
                v72 = _CocoaArrayWrapper.endIndex.getter();
LABEL_46:
                if (v72)
                {
                  v97 = 0;
                  v50 = (v96 & 0xC000000000000001);
                  while (1)
                  {
                    if (v50)
                    {
                      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v99 = v97 + 1;
                      if (__OFADD__(v97, 1))
                      {
                        goto LABEL_57;
                      }
                    }

                    else
                    {
                      if (v97 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_104;
                      }

                      v98 = *(v96 + 8 * v97 + 32);

                      v99 = v97 + 1;
                      if (__OFADD__(v97, 1))
                      {
LABEL_57:
                        __break(1u);
                        goto LABEL_58;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v98 + 32), *(v98 + 40), *(v98 + 48), *(v98 + 56)}];
                    [Strong addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v100 = *(v98 + 224);
                    if (!v100)
                    {
                      break;
                    }

                    v101 = *(v100 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v101)
                    {
                      goto LABEL_121;
                    }

                    [v101 *(p_type + 3304)];

                    ++v97;
                    if (v99 == v72)
                    {
                      goto LABEL_58;
                    }
                  }

                  swift_bridgeObjectRelease_n();

                  __break(1u);
LABEL_121:
                  swift_bridgeObjectRelease_n();

                  __break(1u);
LABEL_122:
                  swift_bridgeObjectRelease_n();

                  __break(1u);
LABEL_123:
                  swift_bridgeObjectRelease_n();

                  __break(1u);
                  goto LABEL_124;
                }

LABEL_58:

                if (v90 >> 62)
                {
                  v102 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v102 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v102)
                {
                  v72 = 0;
                  v50 = (v90 & 0xFFFFFFFFFFFFFF8);
                  do
                  {
                    if ((v90 & 0xC000000000000001) != 0)
                    {
                      v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v104 = v72 + 1;
                      if (__OFADD__(v72, 1))
                      {
                        goto LABEL_71;
                      }
                    }

                    else
                    {
                      if (v72 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_105;
                      }

                      v103 = *(v90 + 8 * v72 + 32);

                      v104 = v72 + 1;
                      if (__OFADD__(v72, 1))
                      {
LABEL_71:
                        __break(1u);
                        break;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v103 + 32), *(v103 + 40), *(v103 + 48), *(v103 + 56)}];
                    [v188 addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v105 = *(v103 + 224);
                    if (!v105)
                    {
                      goto LABEL_122;
                    }

                    v106 = *(v105 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v106)
                    {
                      goto LABEL_123;
                    }

                    [v106 *(p_type + 3304)];

                    ++v72;
                  }

                  while (v104 != v102);
                }

                v107 = v179;
                v72 = v193;
                v108 = *&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
                *&v193[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = *v179;

                v109 = *(v72 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts);
                *(v72 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts) = *v178;

                v50 = v185;
                p_type = v182;
              }

              v143 = a11;
              v144 = a12;

              v146 = 0;
              v153 = v96;
              goto LABEL_101;
            }

            goto LABEL_127;
          }
        }

        else
        {
LABEL_124:
          swift_bridgeObjectRelease_n();

          __break(1u);
LABEL_125:
          swift_bridgeObjectRelease_n();

          __break(1u);
        }

        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_127:
        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_128:
        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_129:
        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_130:
        swift_bridgeObjectRelease_n();

        __break(1u);
        return;
      }

      sub_10003BDA8(0, v50, v188, p_type);
    }
  }

  else
  {

    sub_10003BDA8(0, v30, v188, p_type);
  }

  swift_bridgeObjectRelease_n();
LABEL_43:
  swift_bridgeObjectRelease_n();
}

void sub_100016AD0(unsigned int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  v208 = a3;
  LODWORD(v206) = a2;
  v211 = a1;
  v213 = type metadata accessor for Logger();
  v212 = *(v213 - 1);
  v21 = v212[8];
  __chkstk_darwin(v213);
  v200 = &v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v201 = &v184 - v24;
  __chkstk_darwin(v25);
  v27 = &v184 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a7;
  *(v28 + 24) = a8;
  v29 = swift_allocObject();
  v29[2] = a6;
  v29[3] = sub_100018530;
  v209 = v29;
  v29[4] = v28;
  v30 = a7;
  v31 = a8;
  v32 = v30;
  v33 = v31;
  v34 = v32;
  v35 = v33;
  v36 = v34;
  v37 = v35;
  v38 = a6;

  static Logger.UI.getter();
  v39 = a5;

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  v42 = os_log_type_enabled(v40, v41);
  v210 = v36;
  v202 = a4;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v203 = v37;
    v44 = v43;
    v45 = swift_slowAlloc();
    v204 = v38;
    Strong = v45;
    v221 = v45;
    *v44 = 136316674;
    *(v44 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v221);
    *(v44 + 12) = 2080;
    v205 = v28;
    v47 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v46 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v48 = sub_100037B98(v47, v46, &v221);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2080;
    v215 = a9;
    v216 = a10;
    v217 = a11;
    v218 = a12;
    type metadata accessor for CGRect(0);
    v49 = String.init<A>(describing:)();
    v51 = sub_100037B98(v49, v50, &v221);

    *(v44 + 24) = v51;
    *(v44 + 32) = 1024;
    *(v44 + 34) = v211 & 1;
    *(v44 + 38) = 1024;
    *(v44 + 40) = v206 & 1;
    *(v44 + 44) = 2080;
    *(v44 + 46) = sub_100037B98(v208, a4, &v221);
    *(v44 + 54) = 2080;
    v52 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    v215 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v216 = v52;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v53 = String.init<A>(describing:)();
    v55 = sub_100037B98(v53, v54, &v221);
    v28 = v205;

    *(v44 + 56) = v55;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v44, 0x40u);
    swift_arrayDestroy();
    v38 = v204;

    v37 = v203;
  }

  v56 = v212[1];
  v56(v27, v213);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v57 = &v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
    if ((v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32] & 1) != 0 || (v58 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer]) == 0)
    {
LABEL_39:
      v92 = v210;
      v93 = v210;
      v94 = v37;
      sub_10003C0DC(0, v38, v93, v94);
    }

    else
    {
      v190 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
      v59 = v57[2];
      v193 = v57[3];
      v61 = *v57;
      v60 = v57[1];
      v62 = v58;
      v63 = v62;
      v64 = v208;
      v65 = v206;
      if (v211)
      {
        goto LABEL_9;
      }

      v66 = [v62 superview];
      if (v66)
      {

        v58 = *&v39[v190];
        if (!v58)
        {
          goto LABEL_128;
        }

LABEL_9:
        v205 = v28;
        v67 = v58;
        sub_100062FF4();

        v68 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
        if (v68)
        {
          v192 = v56;
          v189 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
          v196 = v39;
          [v68 layoutSubviews];
          v69 = 0.5;
          if (v211)
          {
            v69 = 1.0;
          }

          v188 = v69;
          v70 = 0.0;
          if (v211)
          {
            v71 = 0.0;
          }

          else
          {
            v71 = 1.0;
          }

          if ((v211 & 1) == 0)
          {
            a12 = v193;
            a11 = v59;
            a10 = v60;
            a9 = v61;
          }

          p_type = &stru_1000B6FF0.type;
          if (v211)
          {
            v70 = 1.0;
          }

          v187 = v70;
          if ((v65 & 1) == 0)
          {
            [v63 setAlpha:v71];
          }

          v73 = swift_allocObject();
          v197 = v73;
          *(v73 + 16) = 0;
          v191 = v73 + 16;
          v74 = swift_allocObject();
          *(v74 + 16) = _swiftEmptyArrayStorage;
          v199 = (v74 + 16);
          v75 = swift_allocObject();
          v195 = v75;
          *(v75 + 16) = _swiftEmptyArrayStorage;
          v198 = (v75 + 16);
          v76 = v196;
          v77 = *&v196[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
          if (v77)
          {
            [v77 setAlpha:v71];
          }

          [*&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
          v78 = *&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
          if (v78)
          {
            [v78 setAlpha:0.0];
          }

          v194 = v74;
          v204 = v38;
          v203 = v37;
          v207 = v63;
          if ((v65 & 1) == 0)
          {
            v95 = sub_100008104(v76, Strong, v211 & 1, v64, v202, v63, v61, v60, v59, v193);
            v97 = v96;
            v98 = v199;
            v99 = *v199;
            *v199 = v95;

            *v198 = v97;

            v100 = *v98;

            v102 = sub_1000099DC(v101);
            v38 = v102;
            if (v102 >> 62)
            {
              goto LABEL_109;
            }

            v74 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_45;
          }

          v79 = *&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
          if (v79)
          {
            v80 = *v199;
            *v199 = v79;

            v81 = *&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
            p_type = v202;
            if (v81)
            {
              *v198 = v81;

              v82 = *(v74 + 16);

              v84 = v197;
              sub_100009470(v83, v76, v74, v197, v64, p_type);

              sub_100009470(v85, v76, v74, v84, v64, p_type);

              swift_beginAccess();
              v86 = *(v74 + 16);

              v88 = sub_1000099DC(v87);
              v89 = v88;
              if (v88 >> 62)
              {
                v38 = _CocoaArrayWrapper.endIndex.getter();
                if (!v38)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v38 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v38)
                {
                  goto LABEL_72;
                }
              }

              v74 = 0;
              v76 = (v89 & 0xC000000000000001);
              v65 = v89 & 0xFFFFFFFFFFFFFF8;
              p_type = &stru_1000B6FF0.type;
              v37 = &stru_1000B6FF0.type;
              do
              {
                if (v76)
                {
                  v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v91 = v74 + 1;
                  if (__OFADD__(v74, 1))
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  if (v74 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
LABEL_103:
                    __break(1u);
LABEL_104:
                    __break(1u);
                    goto LABEL_105;
                  }

                  v90 = *(v89 + 8 * v74 + 32);

                  v91 = v74 + 1;
                  if (__OFADD__(v74, 1))
                  {
LABEL_38:
                    __break(1u);
                    goto LABEL_39;
                  }
                }

                [sub_1000128AC() setFrame:{v90[4], v90[5], v90[6], v90[7]}];
                [Strong addSubview:sub_1000128AC()];

                ++v74;
              }

              while (v91 != v38);
              p_type = v202;
              v64 = v208;
              v76 = v196;
              v74 = v194;
LABEL_72:
              v110 = v199;
              while (1)
              {

                swift_beginAccess();
                v65 = v197;
                if (*v110 >> 62)
                {
LABEL_105:
                  v113 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v113 = *((*v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                swift_beginAccess();
                *(v65 + 16) = v113 == 0;
                v114 = v201;
                static Logger.UI.getter();
                v115 = v76;

                v116 = Logger.logObject.getter();
                v38 = v74;
                v117 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v116, v117))
                {
                  v118 = v113;
                  v119 = p_type;
                  v120 = swift_slowAlloc();
                  v38 = swift_slowAlloc();
                  v219 = v38;
                  *v120 = 136316162;
                  *(v120 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v219);
                  *(v120 + 12) = 2080;
                  v121 = *&v115[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v122 = *&v115[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v123 = sub_100037B98(v121, v122, &v219);

                  *(v120 + 14) = v123;
                  *(v120 + 22) = 2048;
                  v124 = *v199;
                  if (*v199 >> 62)
                  {
                    if (v124 < 0)
                    {
                      v164 = *v199;
                    }

                    v125 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v125 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  p_type = v119;
                  v65 = v200;
                  *(v120 + 24) = v125;

                  *(v120 + 32) = 1024;
                  *(v120 + 34) = v118 == 0;

                  *(v120 + 38) = 2080;
                  v64 = v208;
                  *(v120 + 40) = sub_100037B98(v208, v119, &v219);
                  _os_log_impl(&_mh_execute_header, v116, v117, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v120, 0x30u);
                  swift_arrayDestroy();

                  v192(v201, v213);
                  v76 = v196;
                }

                else
                {

                  v192(v114, v213);
                  v65 = v200;
                }

                static Logger.UI.getter();
                v126 = v115;

                v127 = Logger.logObject.getter();
                v128 = static os_log_type_t.debug.getter();

                v129 = os_log_type_enabled(v127, v128);
                v206 = v126;
                if (v129)
                {
                  v130 = p_type;
                  v38 = swift_slowAlloc();
                  v220 = swift_slowAlloc();
                  *v38 = 136315906;
                  *(v38 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v220);
                  *(v38 + 12) = 2080;
                  v131 = *&v126[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v132 = *&v126[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v133 = sub_100037B98(v131, v132, &v220);

                  *(v38 + 14) = v133;
                  *(v38 + 22) = 2048;
                  v65 = v198;
                  swift_beginAccess();
                  v134 = *v65;
                  if (*v65 >> 62)
                  {
                    if (v134 < 0)
                    {
                      v165 = *v65;
                    }

                    v135 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  p_type = v130;
                  v37 = v211;
                  *(v38 + 24) = v135;

                  *(v38 + 32) = 2080;
                  *(v38 + 34) = sub_100037B98(v64, v130, &v220);
                  _os_log_impl(&_mh_execute_header, v127, v128, "%s identifier: %s animating from within cv: %ld animationID: %s", v38, 0x2Au);
                  swift_arrayDestroy();

                  v192(v200, v213);
                  v76 = v196;
                }

                else
                {

                  v192(v65, v213);
                  v37 = v211;
                }

                v97 = v189;
                if (v37)
                {
                  v136 = *&v76[v190];
                  if (!v136)
                  {
                    goto LABEL_127;
                  }

                  [v136 setFrame:{v61, v60, v59, v193}];
                  [Strong layoutSubviews];
                }

                v137 = *&v76[v97];
                if (!v137)
                {
                  goto LABEL_124;
                }

                v138 = v137;
                v139 = sub_100009E04();

                v186 = a9;
                v140 = v139 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
                a9 = v71;
                v38 = &off_10008F000;
                v71 = a10;
                if (!v140)
                {
                  break;
                }

                v185 = a9;
                if ((v139 & 0xC000000000000001) != 0)
                {
                  v141 = a11;
                  v142 = a12;
                  v143 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_95:
                  v144 = v143;

                  if (v144)
                  {
                    v145 = v144;
                    [v145 frame];
                    v148 = *&v76[v97];
                    if (!v148)
                    {
                      goto LABEL_129;
                    }

                    v149 = v146;
                    v150 = v147;
                    [v148 frame];
                    [v145 setFrame:{v149, v150}];
                    [v145 layoutIfNeeded];
                  }

                  a9 = v185;
LABEL_100:
                  v151 = v206;
                  v213 = v144;
                  v152 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
                  v212 = &v184;
                  __chkstk_darwin(v152);
                  *(&v184 - 12) = v151;
                  *(&v184 - 11) = v186;
                  *(&v184 - 10) = v71;
                  *(&v184 - 9) = v141;
                  *(&v184 - 8) = v142;
                  *(&v184 - 7) = v144;
                  v153 = v37 & 1;
                  *(&v184 - 48) = v153;
                  v154 = v187;
                  *(&v184 - 5) = v187;
                  *(&v184 - 4) = v199;
                  *(&v184 - 3) = 0x3FF0000000000000;
                  v155 = v198;
                  *(&v184 - 2) = v198;
                  v156 = swift_allocObject();
                  *(v156 + 16) = v64;
                  *(v156 + 24) = p_type;
                  *(v156 + 32) = v151;
                  *(v156 + 40) = sub_10001A42C;
                  v157 = v194;
                  *(v156 + 48) = v209;
                  *(v156 + 56) = v157;
                  *(v156 + 64) = v195;
                  *(v156 + 72) = v153;
                  v158 = v151;

                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  __chkstk_darwin(v159);
                  *(&v184 - 4) = v199;
                  *(&v184 - 3) = v154;
                  *(&v184 - 2) = v155;
                  v160 = static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  __chkstk_darwin(v160);
                  *(&v184 - 6) = v158;
                  v161 = v188;
                  *(&v184 - 5) = v154;
                  *(&v184 - 4) = v161;
                  *(&v184 - 3) = v191;
                  *(&v184 - 2) = a9;
                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  v162 = v210;

                  v92 = v162;

                  v37 = v203;
                  goto LABEL_42;
                }

                if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v141 = a11;
                  v142 = a12;
                  v143 = *(v139 + 32);
                  goto LABEL_95;
                }

                __break(1u);
LABEL_109:
                v74 = _CocoaArrayWrapper.endIndex.getter();
LABEL_45:
                v64 = &OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label;
                if (v74)
                {
                  v103 = 0;
                  v76 = (v38 & 0xC000000000000001);
                  v37 = v38 & 0xFFFFFFFFFFFFFF8;
                  while (1)
                  {
                    if (v76)
                    {
                      v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v65 = v103 + 1;
                      if (__OFADD__(v103, 1))
                      {
                        goto LABEL_56;
                      }
                    }

                    else
                    {
                      if (v103 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_103;
                      }

                      v104 = *(v38 + 8 * v103 + 32);

                      v65 = v103 + 1;
                      if (__OFADD__(v103, 1))
                      {
LABEL_56:
                        __break(1u);
                        goto LABEL_57;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v104 + 32), *(v104 + 40), *(v104 + 48), *(v104 + 56)}];
                    [Strong addSubview:sub_1000128AC()];
                    [sub_1000128AC() p_type[413]];
                    v105 = *(v104 + 224);
                    if (!v105)
                    {
                      break;
                    }

                    v106 = *(v105 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v106)
                    {
                      goto LABEL_120;
                    }

                    [v106 p_type[413]];

                    ++v103;
                    if (v65 == v74)
                    {
                      goto LABEL_57;
                    }
                  }

                  v166 = v203;

                  v167 = v210;

                  __break(1u);
LABEL_120:
                  v168 = v203;

                  v169 = v210;

                  __break(1u);
LABEL_121:
                  v170 = v203;

                  v171 = v210;

                  __break(1u);
LABEL_122:
                  v172 = v203;

                  v173 = v210;

                  __break(1u);
                  goto LABEL_123;
                }

LABEL_57:

                if (v97 >> 62)
                {
                  v38 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v38 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v38)
                {
                  v74 = 0;
                  v76 = (v97 & 0xC000000000000001);
                  v37 = v97 & 0xFFFFFFFFFFFFFF8;
                  do
                  {
                    if (v76)
                    {
                      v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v65 = v74 + 1;
                      if (__OFADD__(v74, 1))
                      {
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      if (v74 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_104;
                      }

                      v107 = *(v97 + 8 * v74 + 32);

                      v65 = v74 + 1;
                      if (__OFADD__(v74, 1))
                      {
LABEL_70:
                        __break(1u);
                        break;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v107 + 32), *(v107 + 40), *(v107 + 48), *(v107 + 56)}];
                    [v207 addSubview:sub_1000128AC()];
                    [sub_1000128AC() p_type[413]];
                    v108 = *(v107 + 224);
                    if (!v108)
                    {
                      goto LABEL_121;
                    }

                    v109 = *(v108 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v109)
                    {
                      goto LABEL_122;
                    }

                    [v109 p_type[413]];

                    ++v74;
                  }

                  while (v65 != v38);
                }

                v110 = v199;
                v76 = v196;
                v111 = *&v196[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
                *&v196[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = *v199;

                v112 = *&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
                *&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = *v198;

                p_type = v202;
                v64 = v208;
                v74 = v194;
              }

              v141 = a11;
              v142 = a12;

              v144 = 0;
              goto LABEL_100;
            }

            goto LABEL_126;
          }
        }

        else
        {
LABEL_123:

          v174 = v210;

          __break(1u);
LABEL_124:
          v175 = v203;

          v176 = v210;

          __break(1u);
        }

        v177 = v210;

        __break(1u);
LABEL_126:

        v178 = v210;

        __break(1u);
LABEL_127:
        v179 = v203;

        v180 = v210;

        __break(1u);
LABEL_128:

        v181 = v210;

        __break(1u);
LABEL_129:
        v182 = v203;

        v183 = v210;

        __break(1u);
        return;
      }

      v92 = v210;
      v163 = v63;
      v93 = v210;
      v94 = v37;
      sub_10003C0DC(0, v38, v93, v94);
    }
  }

  else
  {
    v92 = v210;
    v93 = v210;
    v94 = v37;
    sub_10003C0DC(0, v38, v93, v94);
  }

LABEL_42:
}

void sub_10001853C(int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, unint64_t a8, double a9, double a10, double a11, double a12)
{
  v116 = a3;
  v117 = a2;
  v118 = a1;
  v119 = type metadata accessor for Logger();
  v21 = *(v119 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v119);
  v110 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v102 - v25;
  v27 = swift_allocObject();
  v115 = a7;
  *(v27 + 16) = a7;
  *(v27 + 24) = a8;
  v28 = swift_allocObject();
  v28[2] = a6;
  v28[3] = sub_10001A424;
  v28[4] = v27;
  swift_bridgeObjectRetain_n();
  v29 = a6;

  static Logger.UI.getter();
  v30 = a5;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = os_log_type_enabled(v31, v32);
  v114 = v21;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v113 = v29;
    v112 = v27;
    v35 = v34;
    v109 = swift_slowAlloc();
    v126[0] = v109;
    *v35 = 136316674;
    *(v35 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, v126);
    v111 = v28;
    *(v35 + 12) = 2080;
    v36 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v37 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v38 = sub_100037B98(v36, v37, v126);

    *(v35 + 14) = v38;
    *(v35 + 22) = 2080;
    aBlock = *&a9;
    v121 = *&a10;
    v122 = *&a11;
    v123 = a12;
    type metadata accessor for CGRect(0);
    v39 = String.init<A>(describing:)();
    v41 = sub_100037B98(v39, v40, v126);

    *(v35 + 24) = v41;
    *(v35 + 32) = 1024;
    *(v35 + 34) = v118 & 1;
    *(v35 + 38) = 1024;
    *(v35 + 40) = v117 & 1;
    *(v35 + 44) = 2080;
    *(v35 + 46) = sub_100037B98(v116, a4, v126);
    *(v35 + 54) = 2080;
    v28 = v111;
    v42 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    aBlock = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v121 = v42;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v43 = String.init<A>(describing:)();
    v45 = sub_100037B98(v43, v44, v126);

    *(v35 + 56) = v45;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v35, 0x40u);
    swift_arrayDestroy();

    v27 = v112;
    v29 = v113;

    v46 = v114;
  }

  else
  {

    v46 = v21;
  }

  v47 = *(v46 + 8);
  v47(v26, v119);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_10003BDA8(0, v29, v115, a8);

    goto LABEL_38;
  }

  v49 = &v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  if (v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32])
  {
    v50 = Strong;

    sub_10003BDA8(0, v29, v115, a8);

LABEL_38:
    swift_bridgeObjectRelease_n();
    return;
  }

  v109 = Strong;
  v52 = v49[2];
  v51 = v49[3];
  v54 = *v49;
  v53 = v49[1];
  v55 = v118;
  if ((v118 & 1) == 0)
  {
    v56 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (!v56 || (v57 = [v56 superview]) == 0)
    {

      sub_10003BDA8(0, v29, v115, a8);

      goto LABEL_38;
    }
  }

  v107 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v58 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (!v58)
  {
    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_50;
  }

  v59 = v58;
  sub_100062FF4();

  v60 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v60)
  {
LABEL_50:
    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_51;
  }

  v61 = v30;
  [v60 layoutSubviews];
  if (v55)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = 1.0;
  }

  if (v55)
  {
    v63 = 1.0;
  }

  else
  {
    v63 = 0.0;
  }

  if (v55)
  {
    v64 = 1.0;
  }

  else
  {
    v64 = 0.5;
  }

  v127[0] = 0;
  v65 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  if (v65)
  {
    [v65 setAlpha:v62];
  }

  [*&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
  v66 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
  if (v66)
  {
    [v66 setAlpha:0.0];
  }

  v111 = v28;
  if (v117)
  {
    v67 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    if (v67)
    {
      v68 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
      swift_bridgeObjectRetain_n();
      sub_10000C7C0(v67, v30, v67, v127, v116, a4);
      goto LABEL_31;
    }

LABEL_51:
    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_52;
  }

  v69 = v109;
  sub_10000B7A4(v61, v109, v55 & 1, v54, v53, v52, v51);
  v67 = v70;
  swift_bridgeObjectRetain_n();
  sub_10000C58C(v67, v55 & 1, v69, v61, v62);
  v71 = *&v61[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
  *&v61[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = v67;

  v72 = *&v61[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
  *&v61[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = _swiftEmptyArrayStorage;

LABEL_31:
  v106 = v67 >> 62;
  if (v67 >> 62)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = v73;
  v74 = v73 == 1;
  swift_beginAccess();
  v127[0] = v74;

  v75 = v110;
  static Logger.UI.getter();
  v115 = v61;
  v76 = v61;

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();

  v104 = v78;
  v79 = os_log_type_enabled(v77, v78);
  v108 = a8;
  v113 = v29;
  v112 = v27;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    aBlock = v103;
    *v80 = 136316162;
    *(v80 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, &aBlock);
    *(v80 + 12) = 2080;
    v81 = *&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v82 = *&v76[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v83 = sub_100037B98(v81, v82, &aBlock);

    *(v80 + 14) = v83;
    *(v80 + 22) = 2048;
    if (v106)
    {
      v84 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v84 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v86 = v116;
    v87 = v105 == 1;

    *(v80 + 24) = v84;

    *(v80 + 32) = 1024;
    *(v80 + 34) = v87;
    *(v80 + 38) = 2080;
    *(v80 + 40) = sub_100037B98(v86, a4, &aBlock);
    _os_log_impl(&_mh_execute_header, v77, v104, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v80, 0x30u);
    swift_arrayDestroy();

    v85 = v110;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v85 = v75;
  }

  v47(v85, v119);
  if (v117)
  {
    goto LABEL_44;
  }

  v88 = *&v115[v107];
  if (!v88)
  {
LABEL_52:
    swift_bridgeObjectRelease_n();

    __break(1u);
    return;
  }

  [v88 setAlpha:v62];
LABEL_44:
  v89 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  __chkstk_darwin(v89);
  v91 = v118 & 1;
  v90 = (v118 & 1) == 0;
  *(&v102 - 4) = v76;
  *(&v102 - 3) = v63;
  *(&v102 - 2) = v67;
  *(&v102 - 8) = v91;
  if (v90)
  {
    v92 = &selRef_clearColor;
  }

  else
  {
    v92 = &selRef__dimmingViewColor;
  }

  v93 = swift_allocObject();
  *(v93 + 16) = v116;
  *(v93 + 24) = a4;
  *(v93 + 32) = v76;
  *(v93 + 40) = sub_10001A42C;
  *(v93 + 48) = v111;
  *(v93 + 56) = v91;
  *(v93 + 64) = v67;
  v94 = v76;

  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

  __chkstk_darwin(v95);
  *(&v102 - 6) = v94;
  *(&v102 - 5) = v63;
  *(&v102 - 4) = v64;
  *(&v102 - 3) = v127;
  *(&v102 - 2) = v62;
  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
  v96 = [objc_opt_self() *v92];
  v97 = objc_opt_self();
  v98 = swift_allocObject();
  *(v98 + 16) = v94;
  *(v98 + 24) = v96;
  v124 = sub_10001A3FC;
  v125 = v98;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_10000D508;
  v123 = COERCE_DOUBLE(&unk_1000AE6A8);
  v99 = _Block_copy(&aBlock);
  v100 = v94;
  v101 = v96;

  [v97 animateWithDuration:65542 delay:v99 options:0 animations:0.25 completion:0.0];

  _Block_release(v99);
  swift_bridgeObjectRelease_n();
}

void sub_1000192A4(int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  v129 = a3;
  v130 = a2;
  v128 = a1;
  v133 = type metadata accessor for Logger();
  v21 = *(v133 - 1);
  v22 = *(v21 + 64);
  __chkstk_darwin(v133);
  v132 = &v118[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v118[-v25];
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  *(v27 + 24) = a8;
  v28 = swift_allocObject();
  v28[2] = a6;
  v28[3] = sub_10001A420;
  v28[4] = v27;
  v29 = a7;
  v30 = a8;
  v31 = v29;
  v32 = v30;
  v135 = v31;
  v134 = v32;
  v33 = a6;

  static Logger.UI.getter();
  v34 = a5;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v37 = os_log_type_enabled(v35, v36);
  v131 = v33;
  v126 = a4;
  v127 = v21;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v124 = v28;
    v39 = v38;
    v142[0] = swift_slowAlloc();
    *v39 = 136316674;
    *(v39 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, v142);
    *(v39 + 12) = 2080;
    v125 = v27;
    v41 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v40 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v42 = sub_100037B98(v41, v40, v142);

    *(v39 + 14) = v42;
    *(v39 + 22) = 2080;
    aBlock = *&a9;
    v137 = *&a10;
    v138 = *&a11;
    v139 = a12;
    type metadata accessor for CGRect(0);
    v43 = String.init<A>(describing:)();
    v45 = sub_100037B98(v43, v44, v142);

    *(v39 + 24) = v45;
    *(v39 + 32) = 1024;
    *(v39 + 34) = v128 & 1;
    *(v39 + 38) = 1024;
    *(v39 + 40) = v130 & 1;
    *(v39 + 44) = 2080;
    *(v39 + 46) = sub_100037B98(v129, a4, v142);
    *(v39 + 54) = 2080;
    v46 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    aBlock = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v137 = v46;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v47 = String.init<A>(describing:)();
    v49 = sub_100037B98(v47, v48, v142);
    v27 = v125;

    *(v39 + 56) = v49;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v39, 0x40u);
    swift_arrayDestroy();

    v28 = v124;

    v50 = v127;
  }

  else
  {

    v50 = v21;
  }

  v51 = *(v50 + 8);
  v51(v26, v133);
  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = v132;
  if (!Strong)
  {
    v56 = v135;
    v57 = v134;
    v59 = v131;
    sub_10003C0DC(0, v131, v56, v57);

    goto LABEL_8;
  }

  v54 = Strong;
  v55 = &v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  if (v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32])
  {
LABEL_6:
    v56 = v135;
    v57 = v134;
    v58 = v131;
    sub_10003C0DC(0, v131, v56, v57);

LABEL_8:

LABEL_46:
    return;
  }

  v61 = v55[2];
  v60 = v55[3];
  v63 = *v55;
  v62 = v55[1];
  v64 = v128;
  if ((v128 & 1) == 0)
  {
    v65 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (!v65)
    {
      goto LABEL_6;
    }

    v66 = [v65 superview];
    if (!v66)
    {
      goto LABEL_6;
    }
  }

  v122 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v67 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (!v67)
  {
    v110 = v134;

    v111 = v135;

    __break(1u);
    goto LABEL_49;
  }

  v123 = v54;
  v68 = v67;
  sub_100062FF4();

  v69 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v69)
  {
LABEL_49:
    v112 = v134;

    v113 = v135;

    __break(1u);
    goto LABEL_50;
  }

  [v69 layoutSubviews];
  if (v64)
  {
    v70 = 0.0;
  }

  else
  {
    v70 = 1.0;
  }

  if (v64)
  {
    v71 = 1.0;
  }

  else
  {
    v71 = 0.0;
  }

  if (v64)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 0.5;
  }

  v143[0] = 0;
  v73 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  v74 = v126;
  if (v73)
  {
    [v73 setAlpha:v70];
  }

  [*&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
  v75 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
  if (v75)
  {
    [v75 setAlpha:0.0];
  }

  v124 = v28;
  if ((v130 & 1) == 0)
  {
    v78 = v123;
    sub_10000B7A4(v34, v123, v64 & 1, v63, v62, v61, v60);
    v76 = v79;
    swift_bridgeObjectRetain_n();
    sub_10000C58C(v76, v64 & 1, v78, v34, v70);
    v80 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = v76;

    v81 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
    *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = _swiftEmptyArrayStorage;

    goto LABEL_32;
  }

  v76 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
  if (!v76)
  {
LABEL_50:
    v114 = v134;

    v115 = v135;

    __break(1u);
    goto LABEL_51;
  }

  v77 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
  swift_bridgeObjectRetain_n();
  sub_10000C7C0(v76, v34, v76, v143, v129, v74);
LABEL_32:
  v121 = v76 >> 62;
  if (v76 >> 62)
  {
    v82 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v82 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v120 = v82;
  v83 = v82 == 1;
  swift_beginAccess();
  v143[0] = v83;

  static Logger.UI.getter();
  v84 = v53;
  v85 = v34;

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();

  v119 = v87;
  v88 = os_log_type_enabled(v86, v87);
  v125 = v27;
  if (v88)
  {
    v89 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v89 = 136316162;
    *(v89 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, &aBlock);
    *(v89 + 12) = 2080;
    v90 = *&v85[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v91 = *&v85[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v92 = sub_100037B98(v90, v91, &aBlock);

    *(v89 + 14) = v92;
    *(v89 + 22) = 2048;
    if (v121)
    {
      v93 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v93 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v94 = v120 == 1;

    *(v89 + 24) = v93;

    *(v89 + 32) = 1024;
    *(v89 + 34) = v94;
    *(v89 + 38) = 2080;
    *(v89 + 40) = sub_100037B98(v129, v126, &aBlock);
    _os_log_impl(&_mh_execute_header, v86, v119, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v89, 0x30u);
    swift_arrayDestroy();

    v51(v132, v133);
    v64 = v128;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v51(v84, v133);
  }

  v95 = v123;
  if (v130)
  {
    goto LABEL_43;
  }

  v96 = *&v34[v122];
  if (v96)
  {
    [v96 setAlpha:v70];
LABEL_43:
    v97 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
    __chkstk_darwin(v97);
    v98 = v64 & 1;
    *&v118[-32] = v85;
    *&v118[-24] = v71;
    *&v118[-16] = v76;
    v118[-8] = v98;
    v99 = &selRef__dimmingViewColor;
    if (!v98)
    {
      v99 = &selRef_clearColor;
    }

    v133 = v99;
    v100 = swift_allocObject();
    v101 = v126;
    *(v100 + 16) = v129;
    *(v100 + 24) = v101;
    *(v100 + 32) = v85;
    *(v100 + 40) = sub_10001A42C;
    *(v100 + 48) = v124;
    *(v100 + 56) = v98;
    *(v100 + 64) = v76;
    v102 = v85;

    static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

    __chkstk_darwin(v103);
    *&v118[-48] = v102;
    *&v118[-40] = v71;
    *&v118[-32] = v72;
    *&v118[-24] = v143;
    *&v118[-16] = v70;
    static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
    v104 = [objc_opt_self() *v133];
    v105 = objc_opt_self();
    v106 = swift_allocObject();
    *(v106 + 16) = v102;
    *(v106 + 24) = v104;
    v140 = sub_10001A3FC;
    v141 = v106;
    aBlock = _NSConcreteStackBlock;
    v137 = 1107296256;
    v138 = sub_10000D508;
    v139 = COERCE_DOUBLE(&unk_1000AE568);
    v107 = _Block_copy(&aBlock);
    v108 = v102;
    v109 = v104;

    [v105 animateWithDuration:65542 delay:v107 options:0 animations:0.25 completion:0.0];

    _Block_release(v107);

    goto LABEL_46;
  }

LABEL_51:
  v116 = v134;

  v117 = v135;

  __break(1u);
}

uint64_t sub_10001A0A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A0E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A150()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10001A1E0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A220()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001A2A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001A2F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000143B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_10001A344(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_10001A354(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001A368(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A388(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_10001A46C(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v7;
    }

    v19 = _swiftEmptyArrayStorage;
    sub_10000F778(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v19;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v17 = v10;
      a1(&v18, &v17);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v11 = v18;
      v19 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        v15 = v18;
        sub_10000F778((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v7 = v19;
      }

      v7[2] = v13 + 1;
      *&v7[2 * v13 + 4] = v11;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_10001A620(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064656966;
  v3 = 0x69646F4D65746164;
  v4 = a1;
  v5 = 0x646573557473616CLL;
  v6 = 0xEC00000065746144;
  v7 = 1701667182;
  if (a1 != 4)
  {
    v7 = 1684957547;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = 0xE400000000000000;
  }

  v8 = 0x6165724365746164;
  v9 = 0xEB00000000646574;
  if (a1 != 1)
  {
    v8 = 0x6564644165746164;
    v9 = 0xE900000000000064;
  }

  if (!a1)
  {
    v8 = 0x69646F4D65746164;
    v9 = 0xEC00000064656966;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEC00000065746144;
      if (v10 != 0x646573557473616CLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v10 != 1701667182)
        {
          goto LABEL_31;
        }
      }

      else if (v10 != 1684957547)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB00000000646574;
        if (v10 != 0x6165724365746164)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6564644165746164;
      v2 = 0xE900000000000064;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

Swift::Int sub_10001A808()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001A91C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10001AA20()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001AB30@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003C434(*a1);
  *a2 = result;
  return result;
}

void sub_10001AB60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064656966;
  v4 = 0x69646F4D65746164;
  v5 = 0xEC00000065746144;
  v6 = 0x646573557473616CLL;
  v7 = 1701667182;
  if (v2 != 4)
  {
    v7 = 1684957547;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xEB00000000646574;
  v9 = 0x6165724365746164;
  if (v2 != 1)
  {
    v9 = 0x6564644165746164;
    v8 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10001AC2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7233894;
  }

  else
  {
    v4 = 1684632167;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7233894;
  }

  else
  {
    v6 = 1684632167;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10001ACC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001AD38()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10001AD98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001AE08@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10001AE68(uint64_t *a1@<X8>)
{
  v2 = 1684632167;
  if (*v1)
  {
    v2 = 7233894;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10001AEAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001AF20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_10001AF64@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003C480(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001B1A4(__int16 a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration;
  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration))
  {
    v6 = 7233894;
  }

  else
  {
    v6 = 1684632167;
  }

  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration))
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (a1)
  {
    v8 = 7233894;
  }

  else
  {
    v8 = 1684632167;
  }

  if (a1)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      sub_10001E168();
    }
  }

  result = sub_10001A620(*(v5 + 1), HIBYTE(a1));
  if ((result & 1) == 0 || *(v5 + 24) != (a2 & 1))
  {

    return sub_10001E2D8();
  }

  return result;
}

void sub_10001B2B4(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = a1;
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = &unk_1000BF000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v13 = 136315906;
    *(v13 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100092010, &v36);
    *(v13 + 12) = 2080;
    v34 = a1;
    v14 = v8;
    v15 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v16 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v17 = sub_100037B98(v15, v16, &v36);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    v35 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
    v18 = v35;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v19 = String.init<A>(describing:)();
    v21 = sub_100037B98(v19, v20, &v36);
    v32 = v3;
    v22 = v21;
    v8 = v14;
    a1 = v34;

    *(v13 + 24) = v22;
    *(v13 + 32) = 2080;
    v35 = a1;
    v23 = v8;
    v24 = String.init<A>(describing:)();
    v26 = sub_100037B98(v24, v25, &v36);

    *(v13 + 34) = v26;
    v12 = &unk_1000BF000;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s identifier: %s expandedStateChevronView: %s oldValue: %s", v13, 0x2Au);
    swift_arrayDestroy();

    (*(v4 + 8))(v7, v32);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v27 = *&v9[v12[11]];
  if (!a1)
  {
    if (!v27)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!v27 || (sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr), v28 = v8, v29 = v27, v30 = static NSObject.== infix(_:_:)(), v28, v29, (v30 & 1) == 0))
  {
LABEL_9:
    [v8 removeFromSuperview];
  }
}

void sub_10001B5FC(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = a1;
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = &unk_1000BF000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v13 = 136315906;
    *(v13 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100092030, &v36);
    *(v13 + 12) = 2080;
    v34 = a1;
    v14 = v8;
    v15 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v16 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v17 = sub_100037B98(v15, v16, &v36);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    v35 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
    v18 = v35;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v19 = String.init<A>(describing:)();
    v21 = sub_100037B98(v19, v20, &v36);
    v32 = v3;
    v22 = v21;
    v8 = v14;
    a1 = v34;

    *(v13 + 24) = v22;
    *(v13 + 32) = 2080;
    v35 = a1;
    v23 = v8;
    v24 = String.init<A>(describing:)();
    v26 = sub_100037B98(v24, v25, &v36);

    *(v13 + 34) = v26;
    v12 = &unk_1000BF000;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s identifier: %s hostIconSnapshotView: %s oldValue: %s", v13, 0x2Au);
    swift_arrayDestroy();

    (*(v4 + 8))(v7, v32);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v27 = *&v9[v12[12]];
  if (!a1)
  {
    if (!v27)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!v27 || (sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr), v28 = v8, v29 = v27, v30 = static NSObject.== infix(_:_:)(), v28, v29, (v30 & 1) == 0))
  {
LABEL_9:
    [v8 removeFromSuperview];
  }
}

uint64_t sub_10001B944(int a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    HIDWORD(v23) = a1;
    v12 = v11;
    v27 = swift_slowAlloc();
    *v12 = 136315906;
    *(v12 + 4) = sub_100037B98(0x697469736E617274, 0xEF65746174536E6FLL, &v27);
    v24 = v3;
    *(v12 + 12) = 2080;
    v13 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v14 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v15 = sub_100037B98(v13, v14, &v27);

    *(v12 + 14) = v15;
    *(v12 + 22) = 2080;
    v26 = v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v16 = String.init<A>(describing:)();
    v18 = sub_100037B98(v16, v17, &v27);

    *(v12 + 24) = v18;
    *(v12 + 32) = 2080;
    v25 = BYTE4(v23);
    v19 = String.init<A>(describing:)();
    v21 = sub_100037B98(v19, v20, &v27);

    *(v12 + 34) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s identifier: %s transitionState: %s oldValue: %s", v12, 0x2Au);
    swift_arrayDestroy();

    return (*(v4 + 8))(v7, v24);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10001BBE4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFINodeDataSource);
  if (v3)
  {
    v9 = sub_10000589C(&qword_1000BC528, &qword_100090CF8);
    v10 = sub_100043240(&qword_1000BC570, &qword_1000BC528, &qword_100090CF8);
    *&v8 = v3;
    sub_1000427E4(&v8, a1);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFPNodeDataSource);
    if (v4)
    {
      v5 = sub_10000589C(&qword_1000BC520, &qword_100090CF0);
      v6 = sub_100043240(&qword_1000BC568, &qword_1000BC520, &qword_100090CF0);
    }

    else
    {
      v5 = 0;
      v6 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = v4;
    a1[3] = v5;
    a1[4] = v6;
  }
}

uint64_t sub_10001BD78()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31[0] = 0;
  *(&v31[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(113);
  v34 = v31[0];
  v7 = type metadata accessor for DOCSBFolderPresentationController(0);
  v33.receiver = v0;
  v33.super_class = v7;
  v8 = objc_msgSendSuper2(&v33, "description");
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x6669746E65646920;
  v13._object = 0xEC0000003D726569;
  String.append(_:)(v13);
  v14 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
  v15 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x6F74636572696420;
  v17._object = 0xEE003D4C52557972;
  String.append(_:)(v17);
  v18 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v18], v2);
  sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  (*(v3 + 8))(v6, v2);
  v20._countAndFlagsBits = 0x756769666E6F6320;
  v20._object = 0xEF3D6E6F69746172;
  String.append(_:)(v20);
  v21._countAndFlagsBits = sub_10001AF9C(v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration] | (v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 1] << 8), v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 24], *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8], *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 16]);
  String.append(_:)(v21);

  v22._object = 0x8000000100092D30;
  v22._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v22);
  LOBYTE(v31[0]) = v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
  v23._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000015;
  v24._object = 0x8000000100092D50;
  String.append(_:)(v24);
  v25 = v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32];
  v26 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 16];
  v31[0] = *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  v31[1] = v26;
  v32 = v25;
  sub_10000589C(&qword_1000BC4F0, qword_100090BF0);
  v27._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD000000000000013;
  v28._object = 0x8000000100092D70;
  String.append(_:)(v28);
  *&v31[0] = swift_unknownObjectWeakLoadStrong();
  sub_10000589C(&qword_1000BCA90, &qword_100090B70);
  v29._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v29);

  return v34;
}

void sub_10001C128()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView))
  {
    return;
  }

  v2 = v0;
  v3 = (v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame);
  v4 = 0.0;
  v116 = 0.0;
  v117 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32) & 1) == 0)
  {
    v5 = v3[2];
    v6 = v3[3];
    v116 = *v3;
    v117 = v3[1];
  }

  v7 = (v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame);
  v113 = 0.0;
  v114 = 0.0;
  rect = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame + 32) & 1) == 0)
  {
    v114 = v7[2];
    rect = v7[3];
    v4 = *v7;
    v113 = v7[1];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong frame];
    v11 = v10;
    v107 = v13;
    v108 = v12;
    v15 = v14;
  }

  else
  {
    v11 = 0.0;
    v107 = 0.0;
    v108 = 0.0;
    v15 = 0.0;
  }

  v16 = v5 + 12.0;
  v17 = v6 + 24.0;
  v18 = v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration;
  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration))
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      v16 = v5;
    }

    v20 = v6;
    if ((v19 & 1) == 0)
    {
      v17 = v6;
    }
  }

  else
  {
    v20 = v6;
  }

  v111 = v4;
  v112 = v5;
  v109 = v17;
  v110 = v16;
  if (*v18 == 1)
  {
    sub_10001E4F0();
    v118.origin.x = v116;
    v118.origin.y = v117;
    v118.size.width = v5;
    v21 = v20;
    v118.size.height = v20;
    CGRectGetMaxY(v118);
    v22 = *(v18 + 8);
    v119.origin.x = v116;
    v119.origin.y = v117;
    v119.size.width = v5;
    v119.size.height = v20;
    MidX = CGRectGetMidX(v119);
    MinX = sub_1000429DC(MidX + v22 * -0.5);
    v26 = v25;
    v28 = v27;
    v30 = v29;
  }

  else
  {
    v31 = v17 * 4.0 + 54.0 + 36.0 + 26.0;
    v120.origin.x = v4;
    v120.origin.y = v113;
    v120.size.width = v114;
    v120.size.height = rect;
    v26 = CGRectGetMinY(v120) - v31 + -15.0;
    v121.origin.x = v116;
    v121.origin.y = v117;
    v121.size.width = v5;
    v121.size.height = v20;
    MinX = CGRectGetMinX(v121);
    v122.origin.x = v11;
    v122.origin.y = v108;
    v122.size.width = v107;
    v122.size.height = v15;
    v131.origin.x = MinX;
    v131.origin.y = v26;
    v106 = v16 * 5.0 + 156.0 + 25.0 + 25.0;
    v131.size.width = v106;
    v32 = v31;
    v131.size.height = v31;
    v123 = CGRectUnion(v122, v131);
    Width = CGRectGetWidth(v123);
    v124.origin.x = v11;
    v124.origin.y = v108;
    v124.size.width = v107;
    v124.size.height = v15;
    if (CGRectGetWidth(v124) >= Width)
    {
      goto LABEL_22;
    }

    if (MinX < 60.0)
    {
      MinX = 60.0;
    }

    v125.origin.x = MinX;
    v125.origin.y = v26;
    v125.size.width = v16 * 5.0 + 156.0 + 25.0 + 25.0;
    v125.size.height = v32;
    MaxX = CGRectGetMaxX(v125);
    v126.origin.x = v11;
    v126.origin.y = v108;
    v126.size.width = v107;
    v126.size.height = v15;
    if (CGRectGetMaxX(v126) + -60.0 >= MaxX)
    {
LABEL_22:
      v21 = v20;
      v28 = v16 * 5.0 + 156.0 + 25.0 + 25.0;
      v30 = v32;
    }

    else
    {
      v127.origin.x = MinX;
      v127.origin.y = v26;
      v127.size.width = v16 * 5.0 + 156.0 + 25.0 + 25.0;
      v127.size.height = v32;
      v105 = CGRectGetMaxX(v127);
      v128.origin.x = v11;
      v128.origin.y = v108;
      v128.size.width = v107;
      v128.size.height = v15;
      v21 = v20;
      MinX = MinX + CGRectGetMaxX(v128) + -60.0 - v105;
      v30 = v32;
      v28 = v106;
    }
  }

  v35 = [objc_allocWithZone(type metadata accessor for FolderCollectionViewContainerView()) initWithFrame:{MinX, v26, v28, v30}];
  v36 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v37 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer);
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer) = v35;
  v38 = v35;

  if (!v38)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (*v18)
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v39 = 1;
  }

  v40 = OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_roundCorners;
  v38[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_roundCorners] = v39 & 1;
  v41 = [v38 layer];
  v42 = v41;
  v43 = 0.0;
  if (v38[v40])
  {
    v43 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView__cornerRadiusSpec];
  }

  [v41 setCornerRadius:{v43, *&v105}];

  v44 = [v38 layer];
  [v44 setMasksToBounds:v38[v40]];

  v45 = *(v2 + v36);
  if (!v45)
  {
    goto LABEL_66;
  }

  if (!*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer))
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  [v45 addGestureRecognizer:?];
  if (*v18 == 1)
  {

LABEL_34:
    v47 = *(v18 + 16);
    goto LABEL_36;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v46)
  {
    goto LABEL_34;
  }

  v47 = 54.0;
LABEL_36:
  y = CGPointZero.y;
  if (*v18 == 1)
  {
    v49 = type metadata accessor for DOCSBFolderFanCollectionViewLayout();
  }

  else
  {
    v49 = type metadata accessor for DOCSBFolderGridCollectionViewLayout();
  }

  v50 = [objc_allocWithZone(v49) init];
  [v50 setItemSize:{v110, v109}];
  [v50 setHeaderReferenceSize:{0.0, v47}];
  v51 = [objc_allocWithZone(type metadata accessor for FolderCollectionView()) initWithFrame:v50 collectionViewLayout:{CGPointZero.x, y, v28, v30}];
  v52 = *(v2 + v1);
  *(v2 + v1) = v51;
  v53 = v51;

  if (!v53)
  {
    goto LABEL_68;
  }

  [v53 setDelegate:v2];

  v54 = *(v2 + v1);
  if (!v54)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  [v54 setDragDelegate:v2];
  v55 = *(v2 + v1);
  if (!v55)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  [v55 setAutoresizingMask:18];
  p_type = &stru_1000B6FF0.type;
  if ((*v18 & 1) == 0)
  {

LABEL_51:
    v86 = *(v2 + v36);
    if (v86)
    {
      v87 = v86[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView];
      v86[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView] = 1;
      if (v87 != 1)
      {
        v88 = objc_opt_self();
        v89 = v86;
        v90 = [v88 effectWithStyle:8];
        v91 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v90];

        v92 = v91;
        [v92 setAutoresizingMask:18];
        [v89 bounds];
        [v92 setFrame:?];

        [v89 addSubview:v92];
        v93 = *&v89[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_materialBackgroundView];
        *&v89[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_materialBackgroundView] = v92;
      }

      v94 = *(v2 + v36);
      if (v94)
      {
        v95 = *(v2 + v1);
        v96 = *&v94[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
        *&v94[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView] = v95;
        v97 = v95;
        v98 = v94;
        sub_100063F30(v96);

        goto LABEL_56;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v57)
  {
    goto LABEL_51;
  }

  v129.origin.x = v111;
  v129.origin.y = v113;
  v129.size.width = v114;
  v129.size.height = rect;
  Height = CGRectGetHeight(v129);
  v130.origin.x = v116;
  v130.origin.y = v117;
  v130.size.width = v112;
  v130.size.height = v21;
  v59 = CGRectGetHeight(v130);
  sub_10001E614();
  v61 = *(v2 + v36);
  if (!v61)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v62 = v60;
  v63 = *(v2 + v1);
  v64 = *&v61[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
  *&v61[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView] = v63;
  v65 = v63;
  v66 = v61;
  sub_100063F30(v64);

  v67 = *(v2 + v1);
  if (!v67)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  [v67 setClipsToBounds:0];
  v68 = *(v2 + v1);
  if (!v68)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v68 setContentInset:{v62, 50.0, Height + v59 * -0.5 + 10.0, 50.0}];
  type metadata accessor for DOCSBFolderFanCollectionViewLayout();
  v69 = swift_dynamicCastClass();
  if (v69)
  {
    v70 = v69;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = v50;
    v72 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v73 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_indexPathsOfItemsPinnedToBottomObserver);
    *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_indexPathsOfItemsPinnedToBottomObserver) = v72;

    swift_getKeyPath();
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    *(v75 + 24) = v70;
    v76 = v71;
    v77 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v78 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_bottomItemPositionProgressObserver);
    *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_bottomItemPositionProgressObserver) = v77;

    v79 = *(v2 + v1);
    if (!v79)
    {
LABEL_77:
      __break(1u);
      return;
    }

    swift_getKeyPath();
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = swift_allocObject();
    *(v81 + 16) = v80;
    *(v81 + 24) = v70;
    v82 = v76;
    v83 = v79;
    v84 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v85 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_contentOffsetObserver);
    *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_contentOffsetObserver) = v84;

    p_type = (&stru_1000B6FF0 + 16);
  }

LABEL_56:
  v99 = swift_unknownObjectWeakLoadStrong();
  if (v99)
  {
    v100 = v99;
    [v99 p_type[356]];
  }

  v101 = swift_unknownObjectWeakLoadStrong();
  if (!v101)
  {
    goto LABEL_61;
  }

  if (!*(v2 + v36))
  {
    goto LABEL_73;
  }

  v102 = v101;
  [v101 p_type[356]];

LABEL_61:
  v103 = swift_unknownObjectWeakLoadStrong();
  if (v103)
  {
    v104 = v103;
    [v103 p_type[356]];
  }

  sub_10001D724();
}

void sub_10001CCA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 indexPathsOfItemsPinnedToBottom];
  type metadata accessor for IndexPath();
  sub_1000422FC(&qword_1000BC4F8, &type metadata accessor for IndexPath);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void sub_10001CD40(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for IndexPath();
  sub_1000422FC(&qword_1000BC4F8, &type metadata accessor for IndexPath);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v3 setIndexPathsOfItemsPinnedToBottom:isa];
}

uint64_t sub_10001CDF0(void **a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    static Logger.UI.getter();
    v10 = v7;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100092CD0, &v19);
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v10;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s contentOffset KVO changed indexPathsOfItemsPinnedToBottom: %@", v13, 0x16u);
      sub_100006390(v14, &qword_1000BC328, &qword_100090AD0);

      sub_1000064E0(v15);
    }

    (*(v3 + 8))(v6, v2);
    v17 = [v10 indexPathsOfItemsPinnedToBottom];
    type metadata accessor for IndexPath();
    sub_1000422FC(&qword_1000BC4F8, &type metadata accessor for IndexPath);
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001F960(v18);
  }

  return result;
}

void sub_10001D0A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState) | 2) != 3)
    {
      static Logger.UI.getter();
      v12 = a4;
      v13 = v11;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v25 = v15;
        v17 = v16;
        v26 = swift_slowAlloc();
        v28 = v26;
        *v17 = 136315650;
        *(v17 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100092CD0, &v28);
        *(v17 + 12) = 2048;
        [v12 progressOfBottomItemIconInDock];
        *(v17 + 14) = v18;
        *(v17 + 22) = 2080;
        v27 = *&v13[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
        v19 = v27;
        sub_10000589C(&qword_1000BC440, &qword_100090B90);
        v20 = String.init<A>(describing:)();
        v22 = sub_100037B98(v20, v21, &v28);

        *(v17 + 24) = v22;
        _os_log_impl(&_mh_execute_header, v14, v25, "%s progressOfBottomItemIconInDock: %f changed in collectionView: %s", v17, 0x20u);
        swift_arrayDestroy();
      }

      (*(v6 + 8))(v9, v5);
      [v12 progressOfBottomItemIconInDock];
      sub_100020674(v23);
    }
  }
}

void sub_10001D35C(double *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = type metadata accessor for FolderCollectionView();
  v12.receiver = v4;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, "setContentOffset:", v2, v3);
  v6 = [v4 collectionViewLayout];
  type metadata accessor for DOCSBFolderCollectionViewLayout();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v11.receiver = v4;
    v11.super_class = v5;
    v9 = objc_msgSendSuper2(&v11, "contentOffset");
    (*((swift_isaMask & *v8) + 0x80))(v9, v10);
  }
}

void sub_10001D44C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    static Logger.UI.getter();
    v12 = v11;
    v13 = a4;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v16 = 136315906;
      *(v16 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100092CD0, &v31);
      *(v16 + 12) = 2048;
      v17 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
      v18 = *&v12[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
      if (!v18)
      {

        __break(1u);
        return;
      }

      v19 = v18;

      v20 = type metadata accessor for FolderCollectionView();
      v30.receiver = v19;
      v30.super_class = v20;
      objc_msgSendSuper2(&v30, "contentOffset");
      v22 = v21;

      *(v16 + 14) = v22;
      *(v16 + 22) = 2048;
      [v13 progressOfBottomItemIconInDock];
      *(v16 + 24) = v23;
      *(v16 + 32) = 2080;
      v29 = *&v12[v17];
      v24 = v29;
      sub_10000589C(&qword_1000BC440, &qword_100090B90);
      v25 = String.init<A>(describing:)();
      v27 = sub_100037B98(v25, v26, &v31);

      *(v16 + 34) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s contentOffset: %f progressOfBottomItemIconInDock: %f changed in collectionView: %s", v16, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
  }
}

void sub_10001D724()
{
  v1 = v0;
  v2 = sub_10000589C(&qword_1000BC500, &qword_100090CD0);
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  __chkstk_darwin(v2);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v4;
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  v9 = sub_10000589C(&qword_1000BC508, &qword_100090CD8);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  __chkstk_darwin(v9);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v11;
  __chkstk_darwin(v12);
  v88 = &v72 - v13;
  v14 = sub_10000589C(&qword_1000BC510, &qword_100090CE0);
  v92 = *(v14 - 8);
  v93 = v14;
  v15 = *(v92 + 64);
  __chkstk_darwin(v14);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v72 - v17;
  v19 = sub_10000589C(&qword_1000BC518, &qword_100090CE8);
  v90 = *(v19 - 8);
  v91 = v19;
  v20 = *(v90 + 64);
  __chkstk_darwin(v19);
  v86 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v21;
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSBCollectionViewCellGrid(0);
  sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
  v89 = v24;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSBCollectionViewCellFan(0);
  UICollectionView.CellRegistration.init(handler:)();
  v78 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration);
  v25 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  v87 = v8;
  v77 = v5;
  v81 = v18;
  if (!v25 || (v26 = *(*(v25 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) == 0 || (v27 = v26, v28 = dispatch thunk of DOCNodeCollection.isDesktopServicesBacked.getter(), v27, (v28 & 1) == 0))
  {
    v73 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
    if (v73)
    {
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = v92;
      v45 = *(v92 + 16);
      v72 = v1;
      v46 = v80;
      v47 = v93;
      v45(v80, v18, v93);
      v48 = v90;
      v49 = v86;
      v50 = v91;
      (*(v90 + 16))(v86, v89, v91);
      v51 = (*(v44 + 80) + 25) & ~*(v44 + 80);
      v52 = (v15 + *(v48 + 80) + v51) & ~*(v48 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = v43;
      *(v53 + 24) = v78;
      (*(v44 + 32))(v53 + v51, v46, v47);
      v54 = v49;
      v1 = v72;
      (*(v48 + 32))(v53 + v52, v54, v50);
      v55 = sub_10000589C(&qword_1000BC520, &qword_100090CF0);
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      swift_allocObject();
      v58 = v73;
      v41 = DOCNodeDiffableDataSource.init(collectionView:cellProvider:)();
      v42 = &OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFPNodeDataSource;
      v8 = v87;
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v73 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v73)
  {
    goto LABEL_13;
  }

  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v92;
  v30 = v93;
  v31 = v80;
  (*(v92 + 16))(v80, v18, v93);
  v32 = v90;
  v33 = v91;
  (*(v90 + 16))(v86, v89, v91);
  v34 = (*(v29 + 80) + 25) & ~*(v29 + 80);
  v35 = (v15 + *(v32 + 80) + v34) & ~*(v32 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v72;
  *(v36 + 24) = v78;
  (*(v29 + 32))(v36 + v34, v31, v30);
  (*(v32 + 32))(v36 + v35, v86, v33);
  v37 = sub_10000589C(&qword_1000BC528, &qword_100090CF8);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = v73;
  v41 = DOCNodeDiffableDataSource.init(collectionView:cellProvider:)();
  v42 = &OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFINodeDataSource;
LABEL_8:
  v59 = *v42;
  v60 = *(v1 + *v42);
  *(v1 + v59) = v41;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSBFolderCollectionHeaderViewIconStyle();
  v61 = v88;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSBFolderCollectionHeaderViewBannerStyle();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  sub_10001BBE4(v94);
  if (v95)
  {
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = v82;
    v63 = v83;
    v65 = v75;
    (*(v82 + 16))(v75, v61, v83);
    v67 = v84;
    v66 = v85;
    v68 = v77;
    (*(v84 + 16))(v77, v8, v85);
    v69 = (*(v64 + 80) + 24) & ~*(v64 + 80);
    v70 = (v74 + *(v67 + 80) + v69) & ~*(v67 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v62;
    (*(v64 + 32))(v71 + v69, v65, v63);
    (*(v67 + 32))(v71 + v70, v68, v66);
    sub_100042EC8(v94, v95);

    dispatch thunk of DOCNodeDiffableDataSourceProtocol.supplementaryViewProvider.setter();
    (*(v67 + 8))(v87, v66);
    (*(v64 + 8))(v88, v63);
    (*(v92 + 8))(v81, v93);
    (*(v90 + 8))(v89, v91);
  }

  else
  {
    (*(v84 + 8))(v8, v85);
    (*(v82 + 8))(v61, v83);
    (*(v92 + 8))(v81, v93);
    (*(v90 + 8))(v89, v91);
  }

  sub_100006390(v94, &qword_1000BC450, &unk_100090BA0);
}

void sub_10001E168()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    if (v3)
    {
      v4 = [v3 subviews];
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v5 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v7 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          [v8 removeFromSuperview];

          ++v7;
          if (v10 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }

LABEL_16:
    }
  }

  v11 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView) = 0;

  v12 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_10001E2D8()
{
  v1 = type metadata accessor for DOCItemSortDescriptor();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  sub_100024298(&v18[-v10]);
  v12 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  if (!v12)
  {
    return (*(v2 + 8))(v11, v1);
  }

  v13 = *(v2 + 16);
  v13(v8, v11, v1);
  v14 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_sortDescriptor;
  swift_beginAccess();
  v13(v5, (v12 + v14), v1);
  swift_beginAccess();
  v15 = *(v2 + 24);

  v15(v12 + v14, v8, v1);
  swift_endAccess();
  sub_10002DB00(v5);

  v16 = *(v2 + 8);
  v16(v5, v1);
  v16(v8, v1);
  return (v16)(v11, v1);
}

double sub_10001E4F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = 0.0;
  if (Strong)
  {
    v3 = Strong;
    v4 = (v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame);
    if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32))
    {
      goto LABEL_4;
    }

    v6 = v4[2];
    v5 = v4[3];
    v8 = *v4;
    v7 = v4[1];
    [Strong frame];
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = 0.0;
    v20.size.height = 0.0;
    if (CGRectEqualToRect(v15, v20))
    {
LABEL_4:
    }

    else
    {
      [v3 frame];
      Width = CGRectGetWidth(v16);
      [v3 frame];
      Height = CGRectGetHeight(v17);
      if (Height >= Width)
      {
        Height = Width;
      }

      v11 = Height * 0.85;
      [v3 frame];
      v12 = CGRectGetHeight(v18);
      v19.origin.x = v8;
      v19.origin.y = v7;
      v19.size.width = v6;
      v19.size.height = v5;
      MaxY = CGRectGetMaxY(v19);

      return fmin(v11 - (v12 - MaxY), 715.0);
    }
  }

  return v2;
}

void sub_10001E614()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32) == 1)
  {

    return;
  }

  v2 = Strong;
  [Strong frame];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 0.0;
  v19.size.height = 0.0;
  if (CGRectEqualToRect(v18, v19))
  {
    goto LABEL_16;
  }

  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration) != 1)
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_8;
    }

LABEL_16:

    return;
  }

LABEL_8:
  v4 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  v5 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [v5 collectionViewLayout];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  type metadata accessor for DOCSBFolderFanCollectionViewLayout();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    return;
  }

  v9 = v8;
  v10 = *(v0 + v4);
  if (!v10)
  {
    __break(1u);
    goto LABEL_26;
  }

  [v10 frame];
  v11 = *(v0 + v4);
  if (!v11)
  {
LABEL_26:
    __break(1u);
    return;
  }

  [v11 contentSize];
  v12 = v7;
  [v9 minimumInteritemSpacing];
  [v9 itemSize];

  v13 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  if (v13)
  {
    v14 = *(*(v13 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v14)
    {

      v15 = v14;
      v16 = dispatch thunk of DOCNodeCollection.nodes.getter();
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    if (v16 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }
}

BOOL sub_10001E8B0(int a1, char a2, double a3, double a4)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = &v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v18 = sub_10003AD30(v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration] | (v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 1] << 8), v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 24], a1 & 0xFF01, a2, *&v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8], *&v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 16], a3, a4);
  v19 = v18;
  if (v18)
  {
    static Logger.UI.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092CA0, &v47);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s configurations are the same. No update", v22, 0xCu);
      sub_1000064E0(v23);
    }

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v44 = a1 & 1;
    v45 = a2 & 1;
    v46 = v18;
    static Logger.UI.getter();
    v24 = v4;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v43 = v24;

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42 = v9;
      v28 = v27;
      v41 = swift_slowAlloc();
      v47 = v41;
      *v28 = 136315650;
      *(v28 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092CA0, &v47);
      *(v28 + 12) = 2080;
      v29 = sub_10001AF9C(*v17 | (*(v17 + 1) << 8), *(v17 + 24), v17[1], v17[2]);
      v31 = sub_100037B98(v29, v30, &v47);

      *(v28 + 14) = v31;
      *(v28 + 22) = 2080;
      v32 = sub_10001AF9C(a1 & 0xFFFFFF01, a2 & 1, a3, a4);
      v34 = sub_100037B98(v32, v33, &v47);

      *(v28 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s configurations are different, updating. old config: %s new config: %s", v28, 0x20u);
      swift_arrayDestroy();

      (*(v10 + 8))(v16, v42);
    }

    else
    {

      (*(v10 + 8))(v16, v9);
    }

    v35 = *v17;
    v36 = *(v17 + 1);
    v37 = *(v17 + 2);
    v38 = *(v17 + 24);
    *v17 = v44;
    v39 = *(v17 + 1);
    *(v17 + 1) = BYTE1(a1);
    v17[1] = a3;
    v17[2] = a4;
    *(v17 + 24) = v45;
    sub_10001B1A4(v35 | (v39 << 8), v38);
    v19 = v46;
  }

  return (v19 & 1) == 0;
}

id sub_10001ECB8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  *&v17 = COERCE_DOUBLE(type metadata accessor for Logger());
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v22 = v8;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  v25 = &unk_1000BF000;
  if (os_log_type_enabled(v23, v24))
  {
    LODWORD(v107) = v24;
    v108 = *&v17;
    v26 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v112[0] = v106;
    *v26 = 136316674;
    *(v26 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092C70, v112);
    *(v26 + 12) = 2080;
    v27 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v28 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v29 = sub_100037B98(v27, v28, v112);

    *(v26 + 14) = v29;
    *(v26 + 22) = 2080;
    v30 = v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32];
    v109 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
    v110 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 16];
    v111 = v30;
    sub_10000589C(&qword_1000BC4F0, qword_100090BF0);
    v31 = String.init<A>(describing:)();
    v33 = sub_100037B98(v31, v32, v112);

    *(v26 + 24) = v33;
    *(v26 + 32) = 2080;
    *&v109 = a1;
    *(&v109 + 1) = a2;
    *&v110 = a3;
    *(&v110 + 1) = a4;
    type metadata accessor for CGRect(0);
    v34 = String.init<A>(describing:)();
    v36 = sub_100037B98(v34, v35, v112);

    *(v26 + 34) = v36;
    *(v26 + 42) = 2080;
    v37 = v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame + 32];
    v109 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
    v110 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame + 16];
    v111 = v37;
    v38 = String.init<A>(describing:)();
    v40 = sub_100037B98(v38, v39, v112);

    *(v26 + 44) = v40;
    *(v26 + 52) = 2080;
    *&v109 = a5;
    *(&v109 + 1) = a6;
    *&v110 = a7;
    *(&v110 + 1) = a8;
    v41 = String.init<A>(describing:)();
    v43 = sub_100037B98(v41, v42, v112);

    *(v26 + 54) = v43;
    *(v26 + 62) = 2080;
    v44 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
    if (v44)
    {
      v45 = *(*(v44 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      if (v45)
      {
        v46 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];

        v47 = v45;
        v48 = dispatch thunk of DOCNodeCollection.nodes.getter();
      }

      else
      {
        v48 = _swiftEmptyArrayStorage;
      }

      v50 = LOBYTE(v107);
      if (v48 >> 62)
      {
        v49 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v49 = 0;
      v50 = LOBYTE(v107);
    }

    *&v109 = v49;
    BYTE8(v109) = v44 == 0;
    sub_10000589C(&qword_1000BC4C8, &qword_100090BD8);
    v51 = String.init<A>(describing:)();
    v53 = sub_100037B98(v51, v52, v112);

    *(v26 + 64) = v53;
    _os_log_impl(&_mh_execute_header, v23, v50, "%s identifier: %s old anchorFrame: %s new anchorFrame: %s old dockFrame: %s new dockFrame: %s nodes count: %s", v26, 0x48u);
    swift_arrayDestroy();

    (*(v18 + 8))(v21, COERCE_CGFLOAT(*&v108));
    v25 = &unk_1000BF000;
  }

  else
  {

    (*(v18 + 8))(v21, v17);
  }

  v54 = &v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v54 = a1;
  v54[1] = a2;
  v54[2] = a3;
  v54[3] = a4;
  *(v54 + 32) = 0;
  [*&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setFrame:{a1, a2, a3, a4}];
  v55 = &v22[v25[15]];
  v106 = *&a5;
  v107 = a6;
  *v55 = a5;
  v55[1] = a6;
  v55[2] = a7;
  v55[3] = a8;
  *(v55 + 32) = 0;
  [*&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] setFrame:{a1, a2, a3, a4}];
  v56 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  v108 = a2;
  [v56 setFrame:{a1, a2, a3, a4}];
  v57 = &v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v58 = v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v59 = v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 24];
  v60 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8];
  v61 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 16];
  *v57 = v58;
  v57[1] = a3;
  v57[2] = a4;
  *(v57 + 24) = v59;
  sub_10001B1A4(v58 | (*(v57 + 1) << 8), v59);
  v62 = a3 + 12.0;
  v63 = a4 + 24.0;
  if (*v57)
  {
    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v64 & 1) == 0)
    {
      v62 = a3;
      v63 = a4;
    }
  }

  else
  {
  }

  v65 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (v65)
  {
    v66 = v65;
    v67 = [v66 collectionViewLayout];
    type metadata accessor for DOCSBFolderCollectionViewLayout();
    v68 = swift_dynamicCastClass();
    if (v68)
    {
      v69 = v68;
      v70 = v67;
      [v69 itemSize];
      v73 = v72 == v63 && v71 == v62;
      [v69 setItemSize:{v62, v63}];
      [v69 setHeaderReferenceSize:{0.0, v63}];

      if (*v57 == 1)
      {

        goto LABEL_25;
      }

      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v74)
      {
LABEL_25:
        *&v113.origin.x = v106;
        v113.origin.y = v107;
        v113.size.width = a7;
        v113.size.height = a8;
        CGRectGetHeight(v113);
        sub_10001E614();
        [v66 setContentInset:?];
        if (!v73)
        {
          [v69 invalidateLayout];
          sub_10001F67C();
        }
      }
    }

    else
    {
      v70 = v66;
      v66 = v67;
    }
  }

  v104 = a7;
  v105 = a8;
  v75 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v77 = Strong;
    [Strong bounds];
    v103 = v78;
    v80 = v79;
    v82 = v81;
    v102 = v83;
  }

  else
  {
    v103 = 0.0;
    v80 = 0.0;
    v82 = 0.0;
    v102 = 0.0;
  }

  if (*v57 == 1)
  {
    sub_10001E4F0();
    v84 = a1;
    v114.origin.x = a1;
    v85 = v108;
    v114.origin.y = v108;
    v114.size.width = a3;
    v114.size.height = a4;
    CGRectGetMaxY(v114);
    v86 = v57[1];
    v115.origin.x = v84;
    v115.origin.y = v85;
    v115.size.width = a3;
    v115.size.height = a4;
    MidX = CGRectGetMidX(v115);
    MinX = sub_1000429DC(MidX + v86 * -0.5);
    v91 = v90;
    v93 = v92;
  }

  else
  {
    v93 = v63 * 4.0 + 54.0 + 36.0 + 26.0;
    *&v116.origin.x = v106;
    v116.origin.y = v107;
    v116.size.width = v104;
    v116.size.height = v105;
    v94 = CGRectGetMinY(v116) - v93 + -15.0;
    v117.origin.x = a1;
    v117.origin.y = v108;
    v117.size.width = a3;
    v117.size.height = v75;
    MinX = CGRectGetMinX(v117);
    v95 = v103;
    v118.origin.x = v103;
    v118.origin.y = v80;
    v118.size.width = v82;
    v96 = v102;
    v118.size.height = v102;
    v125.origin.x = MinX;
    v108 = v94;
    v125.origin.y = v94;
    v91 = v62 * 5.0 + 156.0 + 25.0 + 25.0;
    v125.size.width = v91;
    v125.size.height = v93;
    v119 = CGRectUnion(v118, v125);
    Width = CGRectGetWidth(v119);
    v120.origin.x = v95;
    v120.origin.y = v80;
    v120.size.width = v82;
    v120.size.height = v96;
    if (CGRectGetWidth(v120) >= Width)
    {
      goto LABEL_38;
    }

    if (MinX < 60.0)
    {
      MinX = 60.0;
    }

    v121.origin.x = MinX;
    v121.origin.y = v108;
    v121.size.width = v91;
    v121.size.height = v93;
    MaxX = CGRectGetMaxX(v121);
    v122.origin.x = v95;
    v122.origin.y = v80;
    v122.size.width = v82;
    v122.size.height = v96;
    if (CGRectGetMaxX(v122) + -60.0 >= MaxX)
    {
LABEL_38:
      v88 = v108;
    }

    else
    {
      v123.origin.x = MinX;
      v99 = v108;
      v123.origin.y = v108;
      v123.size.width = v91;
      v123.size.height = v93;
      v107 = CGRectGetMaxX(v123);
      v124.origin.x = v95;
      v124.origin.y = v80;
      v124.size.width = v82;
      v124.size.height = v96;
      MinX = MinX + CGRectGetMaxX(v124) + -60.0 - v107;
      v88 = v99;
    }
  }

  result = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (result)
  {
    return [result setFrame:{MinX, v88, v91, v93}];
  }

  return result;
}

id sub_10001F67C()
{
  result = *&v0[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!result)
  {
    return result;
  }

  v2 = [result visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];
  sub_10001A2A8(0, &unk_1000BBD10, UICollectionReusableView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_21:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_22:
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_4:
  v5 = 0;
  v22 = &v0[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v6 = v3 & 0xC000000000000001;
  v23 = v3 & 0xFFFFFFFFFFFFFF8;
  v20 = v3 & 0xC000000000000001;
  v21 = v3;
  while (1)
  {
    if (v6)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v23 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    type metadata accessor for DOCSBFolderCollectionHeaderViewIconStyle();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = v10;
    v12 = v22[1];
    v0 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize;
    *(v10 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize) = v12;
    *(v10 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_openInImageSize) = v12 * 0.87;
    result = *(v10 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_widthConstraint);
    if (!result)
    {
      break;
    }

    result = [result setConstant:?];
    v13 = *(v11 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_buttonPlatterView);
    if (!v13)
    {
      goto LABEL_26;
    }

    v14 = *&v0[v11];
    *&v13[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_iconSize] = v14;
    v15 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize;
    *&v13[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize] = v14 * 0.87;
    v16 = *&v13[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView];
    if (v16)
    {
      v17 = v4;
      v0 = v16;
      v18 = v13;
      v19 = [v0 layer];
      [v19 setCornerRadius:*&v13[v15] * 0.5];

      result = *&v18[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_widthConstraint];
      if (!result)
      {
        goto LABEL_27;
      }

      [result setConstant:*&v13[v15]];
      [v18 setNeedsUpdateConstraints];

      v4 = v17;
      v6 = v20;
      v3 = v21;
    }

    [v11 setNeedsUpdateConstraints];
LABEL_6:

    ++v5;
    if (v9 == v4)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10001F960(uint64_t a1)
{
  v2 = v1;
  v73 = type metadata accessor for Logger();
  v72 = *(v73 - 8);
  v4 = *(v72 + 64);
  __chkstk_darwin(v73);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IndexPath();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  __chkstk_darwin(v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v74 = v2;
  v82 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
  v15 = [*&v2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] subviews];
  v81 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = v16;
  v71 = v6;
  if (v16 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    v79 = v75 & 0xFFFFFFFFFFFFFF8;
    v80 = v75 & 0xC000000000000001;
    v77 = v10;
    v78 = v75 + 32;
    v19 = a1 + 56;
    v84 = v86 + 8;
    v85 = (v86 + 16);
    v76 = i;
    while (v80)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = __OFADD__(v18, 1);
      v23 = v18 + 1;
      if (v22)
      {
        goto LABEL_24;
      }

LABEL_9:
      v88 = v21;
      v83 = v23;
      v24 = 1 << *(a1 + 32);
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(a1 + 56);
      v27 = (v24 + 63) >> 6;
      v28 = a1;

      v10 = 0;
      do
      {
        if (!v26)
        {
          a1 = v28;
          while (1)
          {
            v29 = (v10 + 1);
            if (__OFADD__(v10, 1))
            {
              goto LABEL_25;
            }

            if (v29 >= v27)
            {

              v20 = v88;
              [v88 removeFromSuperview];
              goto LABEL_5;
            }

            v26 = *(v19 + 8 * v29);
            ++v10;
            if (v26)
            {
              v10 = v29;
              goto LABEL_20;
            }
          }
        }

        v29 = v10;
        a1 = v28;
LABEL_20:
        v30 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v31 = v30 | (v29 << 6);
        v32 = *(a1 + 48);
        v33 = v86;
        v34 = v87;
        (*(v86 + 16))(v14, v32 + *(v86 + 72) * v31, v87);
        v35 = IndexPath.item.getter();
        v36 = [v88 tag];
        (*(v33 + 8))(v14, v34);
      }

      while (v35 != v36);
      a1 = v28;

      v20 = v88;
LABEL_5:

      v10 = v77;
      v18 = v83;
      if (v83 == v76)
      {
        goto LABEL_28;
      }
    }

    if (v18 >= *(v79 + 16))
    {
      goto LABEL_26;
    }

    v21 = *(v78 + 8 * v18);
    v22 = __OFADD__(v18, 1);
    v23 = v18 + 1;
    if (!v22)
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  v37 = *(a1 + 16);
  if (v37)
  {
    v38 = sub_10000DC0C(*(a1 + 16), 0);
    sub_10003A558(&v90, &v38[(*(v86 + 80) + 32) & ~*(v86 + 80)], v37, a1);
    v40 = v39;

    sub_100042A9C();
    v41 = v87;
    if (v40 == v37)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v38 = _swiftEmptyArrayStorage;
  v41 = v87;
LABEL_32:
  v90 = v38;
  sub_100038140(&v90);
  v42 = v74;
  v85 = v90;
  v43 = v90[2];
  if (v43)
  {
    v44 = v86 + 16;
    v88 = *(v86 + 16);
    v45 = v85 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v86 = *(v86 + 72);
    v46 = (v44 - 8);
    (v88)(v10, v45, v41);
    while (1)
    {
      v49 = v42;
      v50 = [*&v42[v82] subviews];
      v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v52);
      *(&v71 - 2) = v10;
      v53 = sub_100020560(sub_100042AA4, (&v71 - 4), v51);

      if (v53)
      {
      }

      else
      {
        v47 = IndexPath.item.getter();
        sub_100020188(v10, v47, v49);
      }

      v42 = v49;
      v48 = v87;
      (*v46)(v10, v87);
      v45 += v86;
      if (!--v43)
      {
        break;
      }

      (v88)(v10, v45, v48);
    }
  }

  v54 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView;
  v55 = *&v42[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  if (v55)
  {
    v56 = v85[2];
    v57 = v55;

    [v57 setHidden:v56 != 0];

    v42 = v74;
  }

  else
  {
  }

  v58 = v73;
  v59 = v72;
  v60 = v71;
  static Logger.UI.getter();
  v61 = v42;
  v62 = v42;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v65 = 136315394;
    *(v65 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092C40, &v90);
    *(v65 + 12) = 2080;
    v89 = *&v62[v54];
    v66 = v89;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v67 = String.init<A>(describing:)();
    v69 = sub_100037B98(v67, v68, &v90);

    *(v65 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v63, v64, "%s expandedStateChevronView: %s", v65, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v59 + 8))(v60, v58);
}

uint64_t sub_1000200DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_100020188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v3)
  {
    __break(1u);
    return;
  }

  v6 = v3;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  rect_8 = [v6 cellForItemAtIndexPath:isa];

  if (rect_8)
  {
    type metadata accessor for DOCSBCollectionViewCellFan(0);
    if (swift_dynamicCastClass())
    {
      v8 = rect_8;
      v9 = DOCItemCollectionCell.thumbnailView.getter();
      v10 = [v9 snapshotViewAfterScreenUpdates:1];

      if (!v10)
      {
        return;
      }

      v11 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
      [*(a3 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView) frame];
      v13 = v12;
      rect = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v10 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v44.origin.x = v13;
      v44.origin.y = v15;
      v44.size.width = v17;
      v44.size.height = v19;
      Width = CGRectGetWidth(v44);
      v45.origin.x = v21;
      v45.origin.y = v23;
      v45.size.width = v25;
      v45.size.height = v27;
      rect_8a = (Width - CGRectGetWidth(v45)) * 0.5;
      v46.origin.x = rect;
      v46.origin.y = v15;
      v46.size.width = v17;
      v46.size.height = v19;
      Height = CGRectGetHeight(v46);
      v47.origin.x = v21;
      v47.origin.y = v23;
      v47.size.width = v25;
      v47.size.height = v27;
      v30 = (Height - CGRectGetHeight(v47)) * 0.5;
      v48.origin.x = v21;
      v48.origin.y = v23;
      v48.size.width = v25;
      v48.size.height = v27;
      v31 = CGRectGetWidth(v48);
      v49.origin.x = v21;
      v49.origin.y = v23;
      v49.size.width = v25;
      v49.size.height = v27;
      [v10 setFrame:{rect_8a, v30, v31, CGRectGetHeight(v49)}];
      [v10 setTag:a2];
      [*(a3 + v11) insertSubview:v10 atIndex:0];
      v32 = objc_opt_self();
      sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10008F960;
      v34 = [v10 centerXAnchor];
      v35 = [*(a3 + v11) centerXAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];

      *(v33 + 32) = v36;
      v37 = [v10 centerYAnchor];
      v38 = [*(a3 + v11) centerYAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];

      *(v33 + 40) = v39;
      sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
      rect_8 = Array._bridgeToObjectiveC()().super.isa;

      [v32 activateConstraints:rect_8];
    }
  }
}

void *sub_100020560(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

id sub_100020674(double a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *&v22.a = swift_slowAlloc();
    *v11 = 136316162;
    *(v11 + 4) = sub_100037B98(0xD000000000000025, 0x8000000100092C10, &v22);
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    *(v11 + 22) = 2048;
    *(v11 + 24) = a1 * 0.1 + 0.9;
    *(v11 + 32) = 2048;
    *(v11 + 34) = a1 * 0.5 + 0.5;
    *(v11 + 42) = 2080;
    v21.a = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
    v12 = *&v21.a;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v13 = String.init<A>(describing:)();
    v20 = v3;
    v15 = sub_100037B98(v13, v14, &v22);

    *(v11 + 44) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s progress: %f alpha: %f scale: %f expandedStateChevronView: %s", v11, 0x34u);
    swift_arrayDestroy();

    (*(v4 + 8))(v7, v20);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v16 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView;
  result = [*&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] setAlpha:a1 * 0.1 + 0.9];
  v18 = *&v8[v16];
  if (v18)
  {
    v22.a = 1.0;
    v22.b = 0.0;
    v22.c = 0.0;
    v22.d = 1.0;
    v22.tx = 0.0;
    v22.ty = 0.0;
    CGAffineTransformScale(&v21, &v22, a1 * 0.5 + 0.5, a1 * 0.5 + 0.5);
    v22 = v21;
    return [v18 setTransform:&v22];
  }

  return result;
}

void sub_100020968()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100092BF0, v19);
    *(v9 + 12) = 2080;
    v18 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
    v10 = v18;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v11 = String.init<A>(describing:)();
    v13 = sub_100037B98(v11, v12, v19);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s expandedStateChevronView: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v5, v1);
  v14 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView;
  v15 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  if (v15)
  {
    [v15 setAlpha:1.0];
    v15 = *&v6[v14];
    if (v15)
    {
      v19[0] = 0x3FF0000000000000;
      v19[1] = 0;
      v19[2] = 0;
      v19[3] = 0x3FF0000000000000;
      v19[4] = 0;
      v19[5] = 0;
      [v15 setTransform:v19];
      v15 = *&v6[v14];
    }
  }

  [v15 removeFromSuperview];
  v16 = *&v6[v14];
  *&v6[v14] = 0;
  sub_10001B2B4(v16);
}

void sub_100020BF0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD00000000000001ALL, 0x8000000100092BD0, v19);
    *(v9 + 12) = 2080;
    v18 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
    v10 = v18;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v11 = String.init<A>(describing:)();
    v13 = sub_100037B98(v11, v12, v19);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s hostIconSnapshotView: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v5, v1);
  v14 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView;
  v15 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
  if (v15)
  {
    [v15 setAlpha:1.0];
    v15 = *&v6[v14];
    if (v15)
    {
      v19[0] = 0x3FF0000000000000;
      v19[1] = 0;
      v19[2] = 0;
      v19[3] = 0x3FF0000000000000;
      v19[4] = 0;
      v19[5] = 0;
      [v15 setTransform:v19];
      v15 = *&v6[v14];
    }
  }

  [v15 removeFromSuperview];
  v16 = *&v6[v14];
  *&v6[v14] = 0;
  sub_10001B5FC(v16);
}

void *sub_100020E78(int a1, uint64_t a2, void (*a3)(char *, uint64_t), CGFloat a4, double a5, double a6, double a7, CGFloat a8, double a9, double a10, double a11)
{
  v250 = a2;
  v231 = type metadata accessor for DispatchWorkItemFlags();
  v230 = *(v231 - 8);
  v22 = *(v230 + 64);
  __chkstk_darwin(v231);
  v228 = &v219 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for DispatchQoS();
  v227 = *(v229 - 8);
  v24 = *(v227 + 64);
  __chkstk_darwin(v229);
  v226 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for DispatchTime();
  v225 = *(v238 - 8);
  v26 = *(v225 + 64);
  __chkstk_darwin(v238);
  v223 = &v219 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v224 = &v219 - v29;
  v30 = type metadata accessor for URL();
  v246 = *(v30 - 8);
  v31 = *(v246 + 64);
  __chkstk_darwin(v30);
  v249 = &v219 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = COERCE_DOUBLE(type metadata accessor for UUID());
  v244 = *(*&v245 - 8);
  v33 = *(*&v244 + 64);
  __chkstk_darwin(*&v245);
  *&v243 = &v219 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Logger();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v234 = &v219 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v232 = &v219 - v40;
  __chkstk_darwin(v41);
  v233 = &v219 - v42;
  __chkstk_darwin(v43);
  *&v252 = &v219 - v44;
  __chkstk_darwin(v45);
  *&v251 = &v219 - v46;
  __chkstk_darwin(v47);
  v49 = &v219 - v48;
  v50 = &v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v50 = a4;
  v50[1] = a5;
  v50[2] = a6;
  v50[3] = a7;
  *(v50 + 32) = 0;
  v239 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
  [*&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setFrame:{a4, a5, a6, a7}];
  v51 = &v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
  *v51 = a8;
  v51[1] = a9;
  v51[2] = a10;
  v51[3] = a11;
  *(v51 + 32) = 0;
  static Logger.UI.getter();
  v240 = v11;
  v52 = v11;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  v55 = os_log_type_enabled(v53, v54);
  v56 = &unk_1000BF000;
  v241 = a1;
  v253 = v35;
  v242 = v30;
  if (v55)
  {
    v57 = swift_slowAlloc();
    v235 = COERCE_DOUBLE(swift_slowAlloc());
    v261 = v235;
    *v57 = 136316674;
    *(v57 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &v261);
    LODWORD(v222) = v54;
    *(v57 + 12) = 2080;
    v248 = a3;
    v58 = a1;
    v60 = *&v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v59 = *&v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v61 = sub_100037B98(v60, v59, &v261);

    *(v57 + 14) = v61;
    *(v57 + 22) = 2080;
    LOBYTE(aBlock) = v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v62 = String.init<A>(describing:)();
    v64 = sub_100037B98(v62, v63, &v261);

    *(v57 + 24) = v64;
    *(v57 + 32) = 2080;
    aBlock = a4;
    v255 = a5;
    v256 = a6;
    v257 = a7;
    type metadata accessor for CGRect(0);
    v65 = String.init<A>(describing:)();
    v67 = v36;
    v68 = sub_100037B98(v65, v66, &v261);

    *(v57 + 34) = v68;
    *(v57 + 42) = 2080;
    aBlock = a8;
    v255 = a9;
    v256 = a10;
    v257 = a11;
    v69 = String.init<A>(describing:)();
    v71 = sub_100037B98(v69, v70, &v261);

    *(v57 + 44) = v71;
    *(v57 + 52) = 1024;
    *(v57 + 54) = v58 & 1;
    *(v57 + 58) = 2080;
    v72 = v52;
    v73 = [v72 description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v36 = v67;
    v56 = &unk_1000BF000;
    v77 = v74;
    a3 = v248;
    v78 = sub_100037B98(v77, v76, &v261);

    *(v57 + 60) = v78;
    _os_log_impl(&_mh_execute_header, v53, v222, "%s identifier: %s transitionState: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d nodes count:%s", v57, 0x44u);
    swift_arrayDestroy();

    v79 = *(v36 + 8);
    v35 = v253;
    v79(v49, v253);
  }

  else
  {

    v79 = *(v36 + 8);
    v79(v49, v35);
  }

  v80 = swift_allocObject();
  v81 = v250;
  v80[2] = v52;
  v80[3] = v81;
  v250 = v80;
  v80[4] = a3;
  v82 = v56[13];
  v83 = v52[v82];
  v85 = v251;
  v84 = v252;
  if ((v83 - 1) >= 2)
  {
    v247 = v36;
    v248 = v79;
    if (v83 == 3)
    {
      v99 = v35;
      v100 = v52;

      static Logger.UI.getter();
      v101 = v100;
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        aBlock = COERCE_DOUBLE(swift_slowAlloc());
        *v104 = 136315650;
        *(v104 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
        v105 = v52;
        v106 = v99;
        *(v104 + 12) = 2080;
        v107 = *&v101[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v108 = *&v101[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

        v109 = sub_100037B98(v107, v108, &aBlock);

        *(v104 + 14) = v109;
        *(v104 + 22) = 2080;
        v110 = v106;
        v52 = v105;
        LOBYTE(v261) = v105[v82];
        v111 = String.init<A>(describing:)();
        v113 = sub_100037B98(v111, v112, &aBlock);

        *(v104 + 24) = v113;
        _os_log_impl(&_mh_execute_header, v102, v103, "%s identifier: %s transitionState: %s is in the middle of a collapse animation. Retargeting animation", v104, 0x20u);
        swift_arrayDestroy();

        v114 = v252;
        v115 = v110;
      }

      else
      {

        v114 = v84;
        v115 = v99;
      }

      v248(*&v114, v115);
    }

    else
    {
      v116 = v52;
    }

    v117 = v243;
    UUID.init()();
    v118 = UUID.uuidString.getter();
    v120 = v119;
    (*(*&v244 + 8))(COERCE_CGFLOAT(*&v117), COERCE_DOUBLE(*&v245));
    v121 = &v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v122 = *&v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    v221 = v118;
    *v121 = v118;
    v121[1] = v120;

    sub_10008AED8();
    v123 = *&v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
    if (v123)
    {
      v124 = v123;
      [v124 setFrame:{a4, a5, a6, a7}];
      [v124 setAlpha:1.0];
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong addSubview:v124];
    }

    v235 = a8;
    v243 = a9;
    v244 = a10;
    v245 = a11;
    v126 = *&v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
    if (v126)
    {
      v127 = v126;
      [v127 setFrame:{a4, a5, a6, a7}];
      [v127 setAlpha:0.0];
      v128 = swift_unknownObjectWeakLoadStrong();
      [v128 addSubview:v127];
    }

    v252 = a4;
    v129 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v130 = *&v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    v131 = a6 + 12.0;
    v132 = a7 + 24.0;
    v133 = &v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
    v134 = v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
    v237 = a6;
    v222 = v120;
    v236 = a7;
    if (v134)
    {
      v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v135 & 1) == 0)
      {
        v131 = a6;
        v132 = a7;
      }
    }

    else
    {
    }

    v251 = a5;
    sub_10001C128();
    sub_100022BB4();
    v136 = swift_unknownObjectWeakLoadStrong();
    if (v136)
    {
      v137 = v136;
      [v136 bounds];
      v139 = v138;
      v141 = v140;
      v143 = v142;
      v145 = v144;
    }

    else
    {
      v139 = 0.0;
      v141 = 0.0;
      v143 = 0.0;
      v145 = 0.0;
    }

    if (*v133 == 1)
    {
      sub_10001E4F0();
      v147 = v251;
      v146 = v252;
      v262.origin.x = v252;
      v262.origin.y = v251;
      v148 = v237;
      v262.size.width = v237;
      v149 = v236;
      v262.size.height = v236;
      CGRectGetMaxY(v262);
      v150 = v133[1];
      v263.origin.x = v146;
      v263.origin.y = v147;
      v263.size.width = v148;
      v263.size.height = v149;
      MidX = CGRectGetMidX(v263);
      MinX = sub_1000429DC(MidX + v150 * -0.5);
      v154 = v153;
      v156 = v155;
      v158 = v157;
      v159 = v246;
      goto LABEL_36;
    }

    v158 = v132 * 4.0 + 54.0 + 36.0 + 26.0;
    v264.origin.x = v235;
    v264.origin.y = v243;
    v264.size.width = v244;
    v264.size.height = v245;
    v160 = CGRectGetMinY(v264) - v158 + -15.0;
    v265.origin.y = v251;
    v265.origin.x = v252;
    v265.size.width = v237;
    v265.size.height = v236;
    MinX = CGRectGetMinX(v265);
    v266.origin.x = v139;
    v266.origin.y = v141;
    v266.size.width = v143;
    v266.size.height = v145;
    v273.origin.x = MinX;
    v273.origin.y = v160;
    v220 = v131 * 5.0 + 156.0 + 25.0 + 25.0;
    v273.size.width = v220;
    v273.size.height = v158;
    v267 = CGRectUnion(v266, v273);
    Width = CGRectGetWidth(v267);
    v268.origin.x = v139;
    v268.origin.y = v141;
    v268.size.width = v143;
    v268.size.height = v145;
    if (CGRectGetWidth(v268) >= Width)
    {
      v147 = v251;
      v146 = v252;
      v149 = v236;
      v165 = v237;
      v159 = v246;
    }

    else
    {
      if (MinX < 60.0)
      {
        MinX = 60.0;
      }

      v269.origin.x = MinX;
      v269.origin.y = v160;
      v269.size.width = v220;
      v269.size.height = v158;
      MaxX = CGRectGetMaxX(v269);
      v270.origin.x = v139;
      v270.origin.y = v141;
      v270.size.width = v143;
      v270.size.height = v145;
      v163 = CGRectGetMaxX(v270);
      v159 = v246;
      if (v163 + -60.0 < MaxX)
      {
        v271.origin.x = MinX;
        v271.origin.y = v160;
        v164 = v220;
        v271.size.width = v220;
        v271.size.height = v158;
        v219 = CGRectGetMaxX(v271);
        v272.origin.x = v139;
        v272.origin.y = v141;
        v272.size.width = v143;
        v272.size.height = v145;
        MinX = MinX + CGRectGetMaxX(v272) + -60.0 - v219;
        v147 = v251;
        v146 = v252;
        v165 = v237;
        v156 = v164;
        v149 = v236;
LABEL_35:
        v154 = v160;
        v148 = v165;
LABEL_36:
        v166 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
        result = *&v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
        if (result)
        {
          [result setFrame:{MinX, v154, v156, v158}];
          result = swift_unknownObjectWeakLoadStrong();
          if (!result)
          {
            goto LABEL_40;
          }

          if (*&v52[v166])
          {
            v167 = result;
            [result addSubview:?];

LABEL_40:
            v168 = swift_unknownObjectWeakLoadStrong();
            if (v168)
            {
              v169 = v168;
              [v168 addSubview:*&v240[v239]];
            }

            v170 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
            swift_beginAccess();
            v171 = v242;
            (*(v159 + 16))(v249, &v52[v170], v242);
            v172 = URL.path(percentEncoded:)(1);
            if (v172._countAndFlagsBits == static String._unconditionallyBridgeFromObjectiveC(_:)() && v172._object == v173)
            {

              (*(v159 + 8))(v249, v171);
            }

            else
            {
              v174 = _stringCompareWithSmolCheck(_:_:expecting:)();

              (*(v159 + 8))(v249, v171);
              if ((v174 & 1) == 0)
              {
LABEL_47:
                if (v130)
                {
                  v175 = v234;
                  static Logger.UI.getter();
                  v176 = v52;
                  v177 = Logger.logObject.getter();
                  v178 = static os_log_type_t.debug.getter();

                  if (os_log_type_enabled(v177, v178))
                  {
                    v179 = swift_slowAlloc();
                    aBlock = COERCE_DOUBLE(swift_slowAlloc());
                    *v179 = 136315394;
                    *(v179 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
                    *(v179 + 12) = 2080;
                    v260 = *&v52[v129];
                    v180 = v260;
                    sub_10000589C(&qword_1000BC440, &qword_100090B90);
                    v181 = String.init<A>(describing:)();
                    v183 = sub_100037B98(v181, v182, &aBlock);

                    *(v179 + 14) = v183;
                    _os_log_impl(&_mh_execute_header, v177, v178, "%s collectionView was %s already exists, opening immediately", v179, 0x16u);
                    swift_arrayDestroy();
                  }

                  v248(v175, v253);
                  *&v218 = v156;
                  *(&v218 + 1) = v158;
                  *&v217 = MinX;
                  *(&v217 + 1) = v154;
                  sub_10003C9EC(v176, v221, v222, v241 & 1, sub_10004297C, v250, v146, v147, v148, v149, v235, v243, v244, v245, v184, v185, v217, v218);
                }

                v199 = v232;
                static Logger.UI.getter();
                v200 = Logger.logObject.getter();
                v201 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v200, v201))
                {
                  v202 = swift_slowAlloc();
                  v203 = swift_slowAlloc();
                  aBlock = *&v203;
                  *v202 = 136315138;
                  *(v202 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
                  _os_log_impl(&_mh_execute_header, v200, v201, "%s collectionView was nil, creating it and then waiting", v202, 0xCu);
                  sub_1000064E0(v203);
                }

                v248(v199, v253);
                result = *&v52[v166];
                if (result)
                {
                  [result setAlpha:0.0];
                  sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
                  v252 = COERCE_DOUBLE(static OS_dispatch_queue.main.getter());
                  v204 = v223;
                  static DispatchTime.now()();
                  v205 = v224;
                  + infix(_:_:)();
                  v253 = *(v225 + 8);
                  v253(v204, v238);
                  v206 = swift_allocObject();
                  *(v206 + 16) = v52;
                  *(v206 + 24) = MinX;
                  *(v206 + 32) = v154;
                  *(v206 + 40) = v156;
                  *(v206 + 48) = v158;
                  v207 = v222;
                  *(v206 + 56) = v221;
                  *(v206 + 64) = v207;
                  *(v206 + 72) = v241 & 1;
                  v208 = v250;
                  *(v206 + 80) = sub_10004297C;
                  *(v206 + 88) = v208;
                  *(v206 + 96) = v146;
                  *(v206 + 104) = v147;
                  *(v206 + 112) = v148;
                  *(v206 + 120) = v149;
                  v209 = v243;
                  *(v206 + 128) = v235;
                  *(v206 + 136) = v209;
                  v210 = v245;
                  *(v206 + 144) = v244;
                  *(v206 + 152) = v210;
                  v258 = sub_100043468;
                  v259 = v206;
                  aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
                  *&v255 = 1107296256;
                  v256 = COERCE_DOUBLE(sub_10000D508);
                  v257 = COERCE_DOUBLE(&unk_1000AEDF0);
                  v211 = _Block_copy(&aBlock);
                  v212 = v52;

                  v213 = v226;
                  static DispatchQoS.unspecified.getter();
                  aBlock = COERCE_DOUBLE(_swiftEmptyArrayStorage);
                  sub_1000422FC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
                  sub_10000589C(&unk_1000BCE30, &unk_100090E70);
                  sub_100043240(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70);
                  v214 = v228;
                  v215 = v231;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  v216 = v252;
                  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
                  _Block_release(v211);

                  (*(v230 + 8))(v214, v215);
                  (*(v227 + 8))(v213, v229);
                  return (v253)(v205, v238);
                }

LABEL_61:
                __break(1u);
                return result;
              }
            }

            if (!*&v52[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource])
            {
              v186 = v233;
              static Logger.UI.getter();
              v187 = Logger.logObject.getter();
              v188 = static os_log_type_t.debug.getter();
              v189 = os_log_type_enabled(v187, v188);
              v190 = v222;
              if (v189)
              {
                v191 = swift_slowAlloc();
                v192 = swift_slowAlloc();
                aBlock = *&v192;
                *v191 = 136315138;
                *(v191 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
                _os_log_impl(&_mh_execute_header, v187, v188, "%s trying to present Downloads folder but placeholder URL hasn't resolved yet. Force resolution and creation of Downloads folder now ", v191, 0xCu);
                sub_1000064E0(v192);
              }

              v248(v186, v253);
              v193 = v241;
              v194 = swift_allocObject();
              *(v194 + 16) = v52;
              *(v194 + 24) = MinX;
              *(v194 + 32) = v154;
              *(v194 + 40) = v156;
              *(v194 + 48) = v158;
              *(v194 + 56) = v221;
              *(v194 + 64) = v190;
              *(v194 + 72) = v193 & 1;
              v195 = v250;
              *(v194 + 80) = sub_10004297C;
              *(v194 + 88) = v195;
              *(v194 + 96) = v146;
              *(v194 + 104) = v147;
              *(v194 + 112) = v148;
              *(v194 + 120) = v149;
              v196 = v243;
              *(v194 + 128) = v235;
              *(v194 + 136) = v196;
              v197 = v245;
              *(v194 + 144) = v244;
              *(v194 + 152) = v197;
              v198 = v52;

              sub_100028CBC(1, sub_10004298C, v194);
            }

            goto LABEL_47;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_61;
      }

      v147 = v251;
      v146 = v252;
      v149 = v236;
      v165 = v237;
    }

    v156 = v220;
    goto LABEL_35;
  }

  v86 = v52;

  static Logger.UI.getter();
  v87 = v86;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v247 = v36;
    aBlock = *&v91;
    *v90 = 136315650;
    *(v90 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
    *(v90 + 12) = 2080;
    v248 = v79;
    v92 = *&v87[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v93 = *&v87[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v94 = sub_100037B98(v92, v93, &aBlock);

    *(v90 + 14) = v94;
    *(v90 + 22) = 2080;
    LOBYTE(v261) = v52[v82];
    v95 = String.init<A>(describing:)();
    v97 = sub_100037B98(v95, v96, &aBlock);

    *(v90 + 24) = v97;
    _os_log_impl(&_mh_execute_header, v88, v89, "%s identifier: %s transitionState: %s is expanded. Ignoring request to Open", v90, 0x20u);
    swift_arrayDestroy();

    return (v248)(*&v85, v253);
  }

  else
  {

    return (v79)(*&v85, v35);
  }
}

uint64_t sub_1000228C0(int a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 2;
    sub_10001B944(v13);
    v14 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v15 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    *v14 = 0;
    v14[1] = 0;

    v16 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    v17 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    HIDWORD(v31) = a1;
    v22 = v21;
    v36 = swift_slowAlloc();
    *v22 = 136315906;
    *(v22 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &v36);
    v32 = v8;
    v33 = a4;
    *(v22 + 12) = 2080;
    v34 = a3;
    v23 = *&v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v24 = *&v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v25 = sub_100037B98(v23, v24, &v36);

    *(v22 + 14) = v25;
    *(v22 + 22) = 2080;
    v35 = v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v26 = String.init<A>(describing:)();
    v28 = sub_100037B98(v26, v27, &v36);
    a3 = v34;

    *(v22 + 24) = v28;
    *(v22 + 32) = 1024;
    *(v22 + 34) = BYTE4(v31) & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v22, 0x26u);
    swift_arrayDestroy();

    v29 = (*(v9 + 8))(v12, v32);
  }

  else
  {

    v29 = (*(v9 + 8))(v12, v8);
  }

  return a3(v29);
}

uint64_t sub_100022BB4()
{
  v134 = type metadata accessor for DOCItemCollectionViewController.DiffableReloadType();
  v133 = *(v134 - 1);
  v1 = *(v133 + 64);
  __chkstk_darwin(v134);
  v132 = &v121[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for DOCCollectionSection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v121[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v127 = &v121[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v128 = &v121[-v13];
  __chkstk_darwin(v14);
  v129 = &v121[-v15];
  __chkstk_darwin(v16);
  v18 = &v121[-v17];
  static Logger.UI.getter();
  v19 = v0;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v137 = v8;
  v138 = v7;
  v136 = v9;
  if (v22)
  {
    v135 = v3;
    v131 = v4;
    v23 = swift_slowAlloc();
    *&v140 = swift_slowAlloc();
    *v23 = 136315906;
    *(v23 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100092AD0, &v140);
    *(v23 + 12) = 2080;
    v24 = *&v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v25 = *&v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v26 = sub_100037B98(v24, v25, &v140);

    *(v23 + 14) = v26;
    *(v23 + 22) = 2080;
    v27 = *&v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
    if (v27)
    {
      v28 = *(*(v27 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      v29 = v28;
    }

    else
    {
      v28 = 0;
    }

    v143[0] = v28;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v30 = String.init<A>(describing:)();
    v32 = sub_100037B98(v30, v31, &v140);

    *(v23 + 24) = v32;
    *(v23 + 32) = 2080;
    sub_10001BBE4(v143);
    sub_10000589C(&qword_1000BC450, &unk_100090BA0);
    v33 = String.init<A>(describing:)();
    v35 = sub_100037B98(v33, v34, &v140);

    *(v23 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s identifier: %s nodeCollection: %s collectionViewDatasource: %s", v23, 0x2Au);
    swift_arrayDestroy();

    v130 = *(v136 + 8);
    v130(v18, v137);
    v4 = v131;
    v3 = v135;
  }

  else
  {

    v130 = *(v9 + 8);
    v130(v18, v8);
  }

  v36 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource;
  v37 = *&v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v37)
  {
    v38 = *(*(v37 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v38)
    {
      v39 = *&v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];

      v40 = v38;
      dispatch thunk of DOCNodeCollection.nodes.getter();
    }
  }

  v41 = type metadata accessor for DOCCollectionNodes();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = DOCCollectionNodes.init(nodes:isExpanded:)();

  v45 = v138;
  DOCCollectionSection.init(identifier:localizedTitle:contents:)();
  v46 = *&v19[v36];
  if (!v46)
  {

    return (*(v4 + 8))(v45, v3);
  }

  v47 = *(*(v46 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (!v47)
  {
    (*(v4 + 8))(v45, v3);
  }

  v48 = v47;
  sub_10001BBE4(&v140);
  if (!v141)
  {
    (*(v4 + 8))(v45, v3);

    return sub_100006390(&v140, &qword_1000BC450, &unk_100090BA0);
  }

  sub_1000427E4(&v140, v143);
  v131 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  v49 = *&v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  v126 = v44;
  if (v49 && (v50 = *&v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer]) != 0)
  {
    v51 = v50;
    v52 = v49;
    if (([v51 isHidden] & 1) != 0 || (v53 = objc_msgSend(v51, "superview")) == 0)
    {

      v122 = 0;
      v56 = v51;
    }

    else
    {

      [v51 alpha];
      v55 = v54;

      if (v55 <= 0.0)
      {
        v122 = 0;
        v56 = v52;
      }

      else
      {
        v122 = sub_100063B3C();
        v56 = v51;
        v51 = v52;
      }
    }

    v58 = v48;
    v59 = v3;
  }

  else
  {
    v58 = v48;
    v59 = v3;
    v122 = 0;
  }

  v125 = v144;
  v123 = v145;
  v124 = sub_100042398(v143, v144);
  sub_10000589C(&qword_1000BC4D0, &qword_100090BE0);
  v60 = *(v4 + 72);
  v61 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10008F930;
  v63 = *(v4 + 16);
  v64 = v62 + v61;
  v65 = v138;
  v135 = v59;
  v63(v64, v138, v59);
  v66 = v132;
  *v132 = 0;
  v67 = v133;
  v68 = v134;
  (*(v133 + 104))(v66, enum case for DOCItemCollectionViewController.DiffableReloadType.diff(_:), v134);
  v141 = type metadata accessor for DOCNodeCollection();
  v142 = &protocol witness table for DOCNodeCollection;
  *&v140 = v58;
  v139[3] = type metadata accessor for DOCSBFolderPresentationController(0);
  v139[4] = sub_1000422FC(&qword_1000BC4D8, type metadata accessor for DOCSBFolderPresentationController);
  v139[0] = v19;
  v69 = v19;
  v70 = v58;
  dispatch thunk of DOCNodeDiffableDataSourceProtocol.updateSnapshot(for:using:disclosureProvider:sectionLimiter:animated:completion:)();

  (*(v67 + 8))(v66, v68);
  sub_1000064E0(v139);
  sub_1000064E0(&v140);
  v71 = *&v19[v131];
  if (!v71)
  {
    (*(v4 + 8))(v65, v135);

    goto LABEL_41;
  }

  v134 = v70;
  v72 = v135;
  if ((v69[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration] & 1) == 0)
  {
    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v77 = v71;

    v74 = v72;
    v75 = v129;
    if (v76)
    {
      goto LABEL_30;
    }

    (*(v4 + 8))(v138, v72);

LABEL_41:

    return sub_1000064E0(v143);
  }

  v73 = v71;

  v74 = v72;
  v75 = v129;
LABEL_30:
  v131 = v4;
  v78 = v71;
  [v78 contentInset];
  v80 = v79;
  v82 = v81;
  v84 = v83;
  sub_10001E614();
  v86 = v85;
  [v78 contentInset];
  if (v86 == v87)
  {

    v88 = v128;
  }

  else
  {
    static Logger.UI.getter();
    v89 = v78;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v140 = v93;
      *v92 = 136315650;
      *(v92 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100092AD0, &v140);
      *(v92 + 12) = 2048;
      *(v92 + 14) = v86;
      *(v92 + 22) = 2048;
      [v89 contentInset];
      *(v92 + 24) = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "%s _topContentInset: %f different than CV's top inset: %f", v92, 0x20u);
      sub_1000064E0(v93);
    }

    v130(v75, v137);
    v88 = v128;
    [v89 setContentInset:{v86, v80, v82, v84}];

    v95 = [v89 collectionViewLayout];
    [v95 invalidateLayout];

    [v89 layoutIfNeeded];
  }

  if (v122)
  {
    static Logger.UI.getter();
    v96 = v78;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *&v140 = swift_slowAlloc();
      *v99 = 136315650;
      *(v99 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100092AD0, &v140);
      *(v99 + 12) = 1024;
      *(v99 + 14) = 1;
      *(v99 + 18) = 2080;
      v100 = v96;
      v101 = [v100 description];
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      v105 = v102;
      v74 = v72;
      v106 = sub_100037B98(v105, v104, &v140);

      *(v99 + 20) = v106;
      _os_log_impl(&_mh_execute_header, v97, v98, "%s wasPinnedToBottom: %{BOOL}d collectionView: %s pinning to bottom after layout", v99, 0x1Cu);
      swift_arrayDestroy();

      v107 = v128;
    }

    else
    {

      v107 = v88;
    }

    v130(v107, v137);
    v120 = v134;
    sub_100063768(0);

    goto LABEL_45;
  }

  v108 = v127;
  static Logger.UI.getter();
  v109 = v78;
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v110, v111))
  {

    v130(v108, v137);
LABEL_45:
    (*(v131 + 8))(v138, v74);
    return sub_1000064E0(v143);
  }

  v112 = swift_slowAlloc();
  *&v140 = swift_slowAlloc();
  *v112 = 136315650;
  *(v112 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100092AD0, &v140);
  *(v112 + 12) = 1024;
  *(v112 + 14) = 0;
  *(v112 + 18) = 2080;
  v113 = v109;
  v114 = [v113 description];
  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v74;
  v118 = v117;

  v119 = sub_100037B98(v115, v118, &v140);

  *(v112 + 20) = v119;
  _os_log_impl(&_mh_execute_header, v110, v111, "%s wasPinnedToBottom: %{BOOL}d collectionView: %s NOT pinning to bottom after layout", v112, 0x1Cu);
  swift_arrayDestroy();

  v130(v127, v137);
  (*(v131 + 8))(v138, v116);
  return sub_1000064E0(v143);
}

uint64_t sub_100023B94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v58 = a6;
  v56 = a5;
  v60 = a4;
  v52 = a3;
  v53 = a2;
  v59 = a15;
  v57 = a14;
  v54 = a12;
  v55 = a13;
  v26 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v51 - v31;
  v51 = type metadata accessor for Logger();
  v33 = *(v51 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v51);
  v36 = &v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100042774(a1, v32, &unk_1000BCA20, &qword_100090BC0);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, v61);
    *(v39 + 12) = 2080;
    sub_100042774(v32, v29, &unk_1000BCA20, &qword_100090BC0);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    sub_100006390(v32, &unk_1000BCA20, &qword_100090BC0);
    v43 = sub_100037B98(v40, v42, v61);

    *(v39 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "%s resolving completed with url: %s. Starting observation and continue expanding folder", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100006390(v32, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v33 + 8))(v36, v51);
  v44 = v53;
  sub_1000246B0();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = a8;
  *(v45 + 32) = a9;
  *(v45 + 40) = a10;
  *(v45 + 48) = a11;
  v46 = v60;
  *(v45 + 56) = v52;
  *(v45 + 64) = v46;
  *(v45 + 72) = v56 & 1;
  *(v45 + 80) = v58;
  *(v45 + 88) = a7;
  v47 = v55;
  *(v45 + 96) = v54;
  *(v45 + 104) = v47;
  v48 = v59;
  *(v45 + 112) = v57;
  *(v45 + 120) = v48;
  *(v45 + 128) = a17;
  *(v45 + 136) = a18;
  *(v45 + 144) = a19;
  *(v45 + 152) = a20;
  v49 = v44;

  DOCRunInMainThread(_:)();
}

uint64_t sub_100023F64(int a1, _BYTE *a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (v12)
    {
      [v12 removeFromSuperview];
    }

    [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] removeFromSuperview];
    sub_100020968();
    sub_100020BF0();
    v13 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
    sub_10001B944(v13);
    v14 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v15 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    *v14 = 0;
    v14[1] = 0;

    v16 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    v17 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    HIDWORD(v34) = a1;
    v39 = v23;
    *v22 = 136315906;
    *(v22 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v39);
    v35 = v6;
    *(v22 + 12) = 2080;
    v37 = a3;
    v24 = *&v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v25 = *&v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v26 = sub_100037B98(v24, v25, &v39);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2080;
    v38 = v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v27 = String.init<A>(describing:)();
    v29 = sub_100037B98(v27, v28, &v39);

    *(v22 + 24) = v29;
    v30 = v37;
    *(v22 + 32) = 1024;
    *(v22 + 34) = BYTE4(v34) & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v22, 0x26u);
    swift_arrayDestroy();

    v31 = (*(v36 + 8))(v11, v35);
    return v30(v31);
  }

  else
  {

    v33 = (*(v7 + 8))(v11, v6);
    return a3(v33);
  }
}

uint64_t sub_100024298@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DOCItemSortDescriptor();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v37 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v34[-v8];
  v10 = type metadata accessor for Logger();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DOCItemSortMode();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  (*(v19 + 104))(&v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], **(&off_1000AEFC0 + v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 1]), v16);
  v20 = (v18[24] & 1) == 0;
  DOCItemSortDescriptor.init(type:isReversed:)();
  static Logger.UI.getter();
  v21 = *(v4 + 16);
  v21(v9, a1, v3);
  v22 = v1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v25 = 136315650;
    *(v25 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100092B50, &v41);
    *(v25 + 12) = 2080;
    v35 = v24;
    v21(v37, v9, v3);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    (*(v4 + 8))(v9, v3);
    v29 = sub_100037B98(v26, v28, &v41);

    *(v25 + 14) = v29;
    *(v25 + 22) = 2080;
    v40 = v18[1];
    v30 = String.init<A>(describing:)();
    v32 = sub_100037B98(v30, v31, &v41);

    *(v25 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v23, v35, "%s created sort descriptor: %s from config: %s", v25, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v4 + 8))(v9, v3);
  }

  return (*(v38 + 8))(v13, v39);
}

uint64_t sub_1000246B0()
{
  v1 = type metadata accessor for URL();
  v53 = *(v1 - 8);
  v2 = v53[8];
  __chkstk_darwin(v1);
  v50 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v52 = &v46[-v5];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v51 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v46[-v11];
  static Logger.UI.getter();
  v13 = v0;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v49 = v6;
    v17 = v16;
    v48 = swift_slowAlloc();
    v55[0] = v48;
    *v17 = 136315650;
    *(v17 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, v55);
    *(v17 + 12) = 2080;
    v54 = *&v13[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];

    sub_10000589C(&qword_1000BC4E0, &qword_100090BE8);
    v18 = String.init<A>(describing:)();
    v20 = sub_100037B98(v18, v19, v55);
    v47 = v15;
    v21 = v1;
    v22 = v7;
    v23 = v20;

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    v24 = v13;
    v25 = [v24 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v7 = v22;
    v1 = v21;
    v29 = sub_100037B98(v26, v28, v55);

    *(v17 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v14, v47, "%s dataSource: %s %s ", v17, 0x20u);
    swift_arrayDestroy();

    v6 = v49;
  }

  v30 = *(v7 + 8);
  v30(v12, v6);
  if (*&v13[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource])
  {
    v31 = *&v13[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];

    sub_10002E9C0();
  }

  else
  {
    v49 = v7;
    v32 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
    swift_beginAccess();
    v48 = v53[2];
    v48(v52, &v13[v32], v1);
    v33 = 1;
    v34 = URL.path(percentEncoded:)(1);
    if (v34._countAndFlagsBits != static String._unconditionallyBridgeFromObjectiveC(_:)() || v34._object != v35)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v36 = v53[1];
    v36(v52, v1);
    if ((v33 & 1) == 0)
    {
      v45 = v50;
      v48(v50, &v13[v32], v1);
      sub_100024C78(v45, v13);
      return v36(v45, v1);
    }

    v37 = v51;
    static Logger.UI.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, &v54);
      _os_log_impl(&_mh_execute_header, v38, v39, "%s url is placeholder for Downloads folder. Attempting to fetch existing Downloads folder URL", v40, 0xCu);
      sub_1000064E0(v41);
    }

    v30(v37, v6);
    v42 = swift_allocObject();
    *(v42 + 16) = v13;
    v43 = v13;
    sub_100028CBC(0, sub_1000427FC, v42);
  }
}