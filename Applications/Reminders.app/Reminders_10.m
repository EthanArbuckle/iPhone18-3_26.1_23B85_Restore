uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimator.AnimationState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimator.AnimationState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100106440()
{
  sub_100107884(1, v0 + 24);

  sub_100107B0C(1, (v0 + 24));
}

void sub_1001064B0(void **a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000EF30C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100106558(v5);
  *a1 = v3;
}

void sub_100106558(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100106908(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_100106684(0, v2, 1, a1);
  }
}

void sub_100106684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v30 - v11;
  v14.n128_f64[0] = __chkstk_darwin(v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = static IndexPath.< infix(_:_:)();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100106908(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v118 - v13;
  __chkstk_darwin(v14);
  v139 = &v118 - v15;
  v17.n128_f64[0] = __chkstk_darwin(v16);
  v138 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_130:
      v112 = sub_1000ED7BC(a4);
    }

    v113 = v6;
    v141 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *&v112[16 * a4];
        v116 = v112;
        v6 = *&v112[16 * a4 + 24];
        sub_1001072F4(*v10 + a3[9] * v115, *v10 + a3[9] * *&v112[16 * a4 + 16], *v10 + a3[9] * v6, v5);
        if (v113)
        {
          goto LABEL_107;
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_1000ED7BC(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_1000ED730(a4 - 1);
        v112 = v141;
        a4 = *(v141 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v120 = v6;
      v128 = *a3;
      v23 = v128;
      v24 = v10[9];
      v5 = v128 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v138;
      v25(v138, v5, v9, v17);
      v27 = v23 + v24 * v22;
      v28 = v139;
      v130 = v25;
      (v25)(v139, v27, v9);
      LODWORD(v132) = static IndexPath.< infix(_:_:)();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v129 = v30;
      v30(v26, v29);
      v119 = v22;
      v31 = v22 + 2;
      v134 = v24;
      v32 = v128 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v138;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v5, v36);
        v39 = static IndexPath.< infix(_:_:)() & 1;
        v40 = v129;
        (v129)(v38, v36);
        v41 = v35;
        v10 = v34;
        v40(v41, v36);
        ++v31;
        v32 += v134;
        v5 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v123;
      v21 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v22 = v119;
      if (v132)
      {
        if (v33 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v33)
        {
          v118 = v10;
          v42 = v134 * (v33 - 1);
          v43 = v33 * v134;
          v44 = v33;
          v45 = v119;
          v46 = v119 * v134;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = &v48[v46];
              v132 = *v135;
              (v132)(v125, &v48[v46], v140, v21);
              if (v46 < v42 || v5 >= &v48[v43])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v42], v125, v47);
              a3 = v123;
              v21 = v126;
              v33 = v49;
            }

            ++v45;
            v42 -= v134;
            v43 -= v134;
            v46 += v134;
          }

          while (v45 < v44);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v22 = v119;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v126;
    }

    else
    {
      v21 = sub_100546DD8(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v21 = sub_100546DD8((v53 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
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

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_1001072F4(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1000ED7BC(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v141 = v94;
        sub_1000ED730(v56);
        v21 = v141;
        v5 = *(v141 + 2);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v121;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v97 = *a3;
  v98 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v119 = v22;
  v101 = (v22 - v33);
  v132 = v97;
  v124 = v98;
  v5 = v97 + v33 * v98;
  v127 = v51;
LABEL_85:
  v130 = v99;
  v131 = v33;
  v128 = v5;
  v129 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v138;
    v104 = v134;
    (v134)(v138, v5, v9, v21);
    v105 = v139;
    v104(v139, v102, v140);
    v106 = static IndexPath.< infix(_:_:)();
    a4 = v136;
    v107 = *v136;
    v108 = v105;
    v9 = v140;
    (*v136)(v108, v140);
    v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v99 = &v130[v124];
      v101 = v129 - 1;
      v5 = v128 + v124;
      v52 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v22 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v109 = *v135;
    v110 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
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
}

void sub_1001072F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for IndexPath();
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v55 = a3;
  v15 = (a2 - a1) / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v17;
    if (v17 < 1)
    {
      v32 = a4 + v17;
    }

    else
    {
      v29 = -v13;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v17;
      v31 = v55;
      v32 = v28;
      v46 = a1;
      v47 = a4;
      v50 = -v13;
      do
      {
        v44 = v32;
        v33 = a2;
        v34 = a2 + v29;
        v51 = v33;
        v52 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v59 = v33;
            v57 = v44;
            goto LABEL_59;
          }

          v36 = v31;
          v45 = v32;
          v55 = v31 + v29;
          v37 = v30 + v29;
          v38 = *v49;
          v39 = v53;
          v40 = v56;
          v41 = v30;
          (*v49)(v53, v37, v56);
          v42 = v54;
          (v38)(v54, v34, v40);
          LOBYTE(v38) = static IndexPath.< infix(_:_:)();
          v43 = *v48;
          (*v48)(v42, v40);
          v43(v39, v40);
          if (v38)
          {
            break;
          }

          v32 = v37;
          v31 = v55;
          if (v36 < v41 || v55 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            a1 = v46;
          }

          else
          {
            v34 = v52;
            a1 = v46;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v35 = v37 > v47;
          v29 = v50;
          v33 = v51;
          if (!v35)
          {
            a2 = v51;
            goto LABEL_58;
          }
        }

        v44 = v41;
        v31 = v55;
        if (v36 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
          a1 = v46;
          v29 = v50;
        }

        else
        {
          a2 = v52;
          v32 = v45;
          a1 = v46;
          v29 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v44 > v47);
    }

LABEL_58:
    v59 = a2;
    v57 = v32;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v16;
    v57 = a4 + v16;
    if (v16 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v13;
      v49 = (v8 + 8);
      do
      {
        v19 = v53;
        v20 = v56;
        v21 = v50;
        (v50)(v53, a2, v56);
        v22 = a2;
        v23 = v54;
        v21(v54, a4, v20);
        v24 = static IndexPath.< infix(_:_:)();
        v25 = *v49;
        (*v49)(v23, v20);
        v25(v19, v20);
        if (v24)
        {
          v26 = v48;
          a2 = v48 + v22;
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22;
          }

          else
          {
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

LABEL_59:
  sub_1000ED7D0(&v59, &v58, &v57);
}

void sub_100107884(int a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  left = -16.0;
  v5 = 0.0;
  top = 0.0;
  if ((a1 & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  v7 = *(a2 + 176);
  v8 = *(a2 + 240);
  v9 = *(a2 + 264);
  [*(a2 + 248) bounds];
  [v3 setBounds:{sub_100068328(v10, v11, v12, v13, top, left)}];
  if (a1)
  {
    if (qword_100766F10 != -1)
    {
      swift_once();
    }

    v7 = qword_10076BF50;
    v5 = 16.0;
    v14 = 1042536202;
  }

  else
  {
    v14 = 0;
  }

  [v3 setBackgroundColor:v7];
  v15 = [v3 layer];
  [v15 setCornerRadius:v5];

  v16 = [v3 layer];
  LODWORD(v17) = v14;
  [v16 setShadowOpacity:v17];

  if (v9 >> 62)
  {
LABEL_27:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return;
    }
  }

  v19 = 0;
  v20 = (v8 + 80);
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v21 = *(v9 + 8 * v19 + 32);
    }

    v22 = *(v8 + 16);
    if (v19 == v22)
    {
      break;
    }

    if (v19 >= v22)
    {
      goto LABEL_26;
    }

    ++v19;
    v23 = *v20;
    v20 += 56;
    if (a1 & v23)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = 1.0;
    }

    v25 = v21;
    [v21 setAlpha:v24];

    if (v18 == v19)
    {
      return;
    }
  }
}

void sub_100107B0C(int a1, double *a2)
{
  v107 = type metadata accessor for TTRRectCorners();
  v4 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076C008);
  __chkstk_darwin(v6 - 8);
  v105 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v85 - v9;
  v11 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  __chkstk_darwin(v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell(0);
  v114 = *(v103 - 1);
  __chkstk_darwin(v103);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_10076C010);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v94 = (&v85 - v18);
  v19 = sub_100058000(&qword_10076C018);
  __chkstk_darwin(v19 - 8);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v111 = (&v85 - v23);
  v24 = a2[17];
  v25 = a2[18];
  v26 = a2[19];
  v27 = a2[20];
  v28 = *(a2 + 21);
  v100 = *(a2 + 16);
  [v100 convertRect:v28 fromCoordinateSpace:{v24, v25, v26, v27}];
  MaxY = CGRectGetMaxY(v123);
  v29 = 0;
  v113 = *(a2 + 34);
  v112 = *(v113 + 16);
  v99 = v13 + 8;
  v110 = (v17 + 56);
  v109 = (v17 + 48);
  v92 = (v4 + 16);
  v98 = (v4 + 32);
  v88 = 0.9;
  v87 = 0.714285714;
  v86 = 0.16;
  v91 = 0.466666667;
  v90 = xmmword_1006300A0;
  v89 = xmmword_1006300B0;
  v108 = a1;
  v104 = v13;
  v102 = v16;
  v101 = v21;
  while (1)
  {
    v32 = v112;
    if (v29 == v112)
    {
      v33 = 1;
      v117 = v112;
    }

    else
    {
      if (v29 >= v112)
      {
        goto LABEL_35;
      }

      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_36;
      }

      v35 = v113 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v29;
      v36 = *(v16 + 48);
      v37 = v94;
      *v94 = v29;
      sub_10010869C(v35, v37 + v36, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
      sub_100016588(v37, v21, &qword_10076C010);
      v33 = 0;
      v117 = v34;
    }

    v38 = v111;
    (*v110)(v21, v33, 1, v16);
    sub_100016588(v21, v38, &qword_10076C018);
    if ((*v109)(v38, 1, v16) == 1)
    {
      return;
    }

    v39 = *v38;
    sub_1001088C4(v38 + *(v16 + 48), v15, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
    if (v39 >= v32)
    {
      break;
    }

    v40 = v113 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v39;
    [v100 convertRect:*(v40 + 32) fromCoordinateSpace:{*v40, *(v40 + 8), *(v40 + 16), *(v40 + 24)}];
    if (a1)
    {
      v45 = v41;
      v46 = v42;
      v47 = v43;
      v97 = v44;
      v48 = pow(0.85, v39);
      CGAffineTransformMakeScale(&v120, v48, v48);
      v115 = *&v120.c;
      v116 = *&v120.a;
      v49 = 0.0;
      v31 = 0.0;
      tx = v120.tx;
      ty = v120.ty;
      if (v39 < 2)
      {
        v31 = pow(v88, v39);
        v50 = pow(v87, v39);
        v49 = v50 * 0.7 * v86;
      }

      v51 = pow(0.533333333, v39 + 1.0);
      v52 = (1.0 - v51) * 15.0 / v91;
      v124.origin.x = v45;
      v124.origin.y = v46;
      v124.size.width = v47;
      v124.size.height = v97;
      Height = CGRectGetHeight(v124);
      v54 = MaxY + v52;
      v55 = v49;
      v56 = v54 + v48 * Height * -0.5;
      CGRect.center.getter();
      v58 = v57;
      v59 = tx;
      v60 = ty;
    }

    else
    {
      CGRect.center.getter();
      v58 = v61;
      v56 = v62;
      v31 = 1.0;
      v55 = 0.0;
      v59 = 0.0;
      v116 = v89;
      v60 = 0.0;
      v115 = v90;
    }

    sub_10010869C(v15, v13, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
    v63 = *&v15[v103[5]];
    v64 = *&v15[v103[6]];
    v65 = *&v15[v103[7]];
    *&v120.a = v116;
    *&v120.c = v115;
    v120.tx = v59;
    v120.ty = v60;
    [v63 setTransform:&v120];
    [v63 setCenter:{v58, v56}];
    if (a1)
    {
      v66 = v106;
      static TTRRectCorners.allCorners.getter();
      v67 = v107;
    }

    else
    {
      v68 = &v13[*(v11 + 20)];
      v69 = &v68[*(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24)];
      v66 = v106;
      v67 = v107;
      (*v92)(v106, v69, v107);
    }

    v70 = v11;
    v71 = *&v99[*(v11 + 20)];
    (*v98)(v10, v66, v67);
    v72 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
    *&v10[*(v72 + 20)] = v71;
    (*(*(v72 - 8) + 56))(v10, 0, 1, v72);
    v73 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shape;
    swift_beginAccess();
    v74 = v105;
    sub_10000794C(v64 + v73, v105, &qword_10076C008);
    swift_beginAccess();
    sub_100108724(v10, v64 + v73);
    swift_endAccess();
    sub_1002FCDE0(v74);
    sub_1000079B4(v74, &qword_10076C008);
    sub_1000079B4(v10, &qword_10076C008);
    v75 = v64 + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow;
    v76 = *(v64 + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow + 32);
    v77 = *(v64 + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow + 16);
    *v121 = *(v64 + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow);
    *&v121[16] = v77;
    v122 = v76;
    v78 = *v121;
    if (*v121)
    {
      v79 = *&v121[24];
      v80 = *&v121[8];
      *v75 = *v121;
      *(v75 + 8) = v80;
      *(v75 + 24) = v79;
      *(v75 + 32) = v55;
      sub_10000794C(v121, &v120, &qword_10076C020);
      v81 = v78;
      sub_1002FD608(v121);
      sub_1000079B4(v121, &qword_10076C020);
    }

    else
    {
      sub_1002FD608(v121);
    }

    LOBYTE(a1) = v108;
    v13 = v104;
    v16 = v102;
    v120.a = 1.0;
    v119 = 0x3E50000000000000;
    v118 = v31;
    v82 = fabs(v31);
    v11 = v70;
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v84 = 1.0;
      if (v82 > 1.0)
      {
        v84 = v82;
      }

      if (v84 <= 2.22507386e-308)
      {
        v84 = 2.22507386e-308;
      }

      v21 = v101;
      if (v82 < 0.0000000149011612 || fabs(v31 + -1.0) < v84 * 0.0000000149011612)
      {
LABEL_2:
        v30 = v31;
        v31 = 1.0;
        goto LABEL_3;
      }
    }

    else
    {
      sub_100108794();
      v83 = FloatingPoint.rescaledAlmostEqual(to:tolerance:)();
      v21 = v101;
      if (v82 < 0.0000000149011612 || (v83 & 1) != 0)
      {
        goto LABEL_2;
      }
    }

    v30 = 1.0;
LABEL_3:
    [v63 setAlpha:v30];
    [v65 setAlpha:v31];
    sub_1001087E8(v13, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
    sub_1001087E8(v15, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
    v29 = v117;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_10010869C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100108724(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076C008);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100108794()
{
  result = qword_10076C028;
  if (!qword_10076C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076C028);
  }

  return result;
}

uint64_t sub_1001087E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001088C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10010892C()
{
  sub_100107884(0, v0 + 24);

  sub_100107B0C(0, (v0 + 24));
}

uint64_t sub_10010896C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_100108984(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t assignWithCopy for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  v9 = v7;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRIBoardColumnDraggingAnimationSource.Header(id *a1)
{
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  *(a1 + 104) = *(a2 + 104);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;

  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimationSource.Header(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;
  v9 = v7;

  v10 = a2[6];
  v11 = a1[6];
  a1[6] = v10;
  v12 = v10;

  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  v13 = a2[11];
  v14 = a1[11];
  a1[11] = v13;
  v15 = v13;

  v16 = a2[12];
  v17 = a1[12];
  a1[12] = v16;
  v18 = v16;

  a1[13] = a2[13];

  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v7 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_100108EE4(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    *(a1 + 1) = a2[1];
    v6 = *(a3 + 24);
    v8 = type metadata accessor for TTRRectCorners();
    v9 = *(*(v8 - 8) + 16);
    v10 = v4;
    v9(&v5[v6], a2 + v6, v8);
  }

  return v5;
}

uint64_t sub_100108FC4(id *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for TTRRectCorners();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_100109038(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TTRRectCorners();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(&a1[v7], a2 + v7, v8);
  return a1;
}

uint64_t sub_1001090C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for TTRRectCorners();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  return a1;
}

char *sub_100109158(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRRectCorners();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t sub_1001091D0(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 1);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TTRRectCorners();
  (*(*(v8 - 8) + 40))(a1 + v7, &a2[v7], v8);
  return a1;
}

uint64_t sub_100109284()
{
  result = type metadata accessor for TTRRectCorners();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_10010932C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v25 = *a2;
    *v3 = *a2;
    v3 = (v25 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v5;
    v6 = a2[4];
    *(a1 + 32) = v6;
    v7 = *(a3 + 20);
    v8 = (a1 + v7);
    v9 = a2 + v7;
    v11 = *(a2 + v7);
    v10 = *(a2 + v7 + 8);
    *v8 = v11;
    *(v8 + 1) = v10;
    v13 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
    v14 = type metadata accessor for TTRRectCorners();
    v15 = *(*(v14 - 8) + 16);
    v16 = v6;
    v17 = v11;
    v15(&v8[v13], v9 + v13, v14);
    v18 = *(a3 + 24);
    v19 = v3 + v18;
    v20 = a2 + v18;
    v21 = *v20;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    *(v19 + 24) = *(v20 + 24);
    v22 = *(v20 + 40);
    *(v19 + 5) = v22;
    v23 = v21;
    v24 = v22;
  }

  return v3;
}

void sub_10010947C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + *(a2 + 20));

  v5 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = a1 + *(a2 + 24);

  v8 = *(v7 + 40);
}

uint64_t sub_100109528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = a2 + v7;
  v11 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  *v8 = v11;
  *(v8 + 1) = v10;
  v12 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v13 = type metadata accessor for TTRRectCorners();
  v14 = *(*(v13 - 8) + 16);
  v15 = v6;
  v16 = v11;
  v14(&v8[v12], v9 + v12, v13);
  v17 = *(a3 + 24);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *v19;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 24) = *(v19 + 24);
  v21 = *(v19 + 40);
  *(v18 + 40) = v21;
  v22 = v20;
  v23 = v21;
  return a1;
}

void *sub_10010962C(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v6 = a2[4];
  v7 = a1[4];
  a1[4] = v6;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9);
  v13 = *v10;
  *v10 = v12;
  v14 = v12;

  *(v10 + 1) = *(v11 + 1);
  v15 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v16 = type metadata accessor for TTRRectCorners();
  (*(*(v16 - 8) + 24))(&v10[v15], &v11[v15], v16);
  v17 = *(a3 + 24);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *v19;
  v21 = *v18;
  *v18 = *v19;
  v22 = v20;

  *(v18 + 1) = *(v19 + 1);
  *(v18 + 2) = *(v19 + 2);
  *(v18 + 3) = *(v19 + 3);
  *(v18 + 4) = *(v19 + 4);
  v23 = *(v19 + 5);
  v24 = *(v18 + 5);
  *(v18 + 5) = v23;
  v25 = v23;

  return a1;
}

uint64_t sub_100109760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 1) = v10;
  v11 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v12 = type metadata accessor for TTRRectCorners();
  (*(*(v12 - 8) + 32))(&v8[v11], v9 + v11, v12);
  v13 = *(a3 + 24);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v14[2] = v15[2];
  return a1;
}

uint64_t sub_100109824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v8 = *(a3 + 20);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  *(v9 + 8) = *(v10 + 8);
  v12 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v13 = type metadata accessor for TTRRectCorners();
  (*(*(v13 - 8) + 40))(v9 + v12, v10 + v12, v13);
  v14 = *(a3 + 24);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(a1 + v14);
  *(a1 + v14) = *v16;

  *(v15 + 8) = *(v16 + 8);
  *(v15 + 24) = *(v16 + 24);
  v18 = *(v15 + 40);
  *(v15 + 40) = *(v16 + 40);

  return a1;
}

uint64_t sub_100109948()
{
  result = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1001099E8(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v34 = *a2;
    *v3 = *a2;
    v3 = (v34 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = a2[4];
    *(a1 + 32) = v7;
    v37 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
    v9 = *(v37 + 20);
    v10 = v3 + v9;
    v11 = a2 + v9;
    v13 = *(a2 + v9);
    v12 = *(a2 + v9 + 8);
    *v10 = v13;
    *(v10 + 1) = v12;
    v14 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
    v15 = type metadata accessor for TTRRectCorners();
    v36 = *(*(v15 - 8) + 16);
    v16 = v7;
    v17 = v13;
    v36(&v10[v14], v11 + v14, v15);
    v18 = *(v37 + 24);
    v19 = v3 + v18;
    v20 = a2 + v18;
    v21 = *v20;
    *v19 = *v20;
    *(v19 + 24) = *(v20 + 24);
    *(v19 + 8) = *(v20 + 8);
    v22 = *(v20 + 40);
    *(v19 + 5) = v22;
    v23 = a3[5];
    v24 = a3[6];
    v25 = *(a2 + v23);
    *(v3 + v23) = v25;
    v26 = *(a2 + v24);
    *(v3 + v24) = v26;
    v27 = a3[7];
    v28 = *(a2 + v27);
    *(v3 + v27) = v28;
    v29 = v21;
    v30 = v22;
    v31 = v25;
    v32 = v26;
    v33 = v28;
  }

  return v3;
}

void sub_100109B78(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v5 = (a1 + *(v4 + 20));

  v6 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v7 = type metadata accessor for TTRRectCorners();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = (a1 + *(v4 + 24));

  v9 = *(a1 + a2[7]);
}

uint64_t sub_100109C5C(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v34 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v7 = *(v34 + 20);
  v8 = (a1 + v7);
  v9 = a2 + v7;
  v11 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  *v8 = v11;
  *(v8 + 1) = v10;
  v12 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v13 = type metadata accessor for TTRRectCorners();
  v14 = *(*(v13 - 8) + 16);
  v15 = v6;
  v16 = v11;
  v14(&v8[v12], v9 + v12, v13);
  v17 = *(v34 + 24);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *v19;
  *v18 = *v19;
  *(v18 + 24) = *(v19 + 24);
  *(v18 + 8) = *(v19 + 8);
  v21 = *(v19 + 40);
  *(v18 + 40) = v21;
  v22 = a3[5];
  v23 = a3[6];
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = *(a2 + v23);
  *(a1 + v23) = v25;
  v26 = a3[7];
  v27 = *(a2 + v26);
  *(a1 + v26) = v27;
  v28 = v20;
  v29 = v21;
  v30 = v24;
  v31 = v25;
  v32 = v27;
  return a1;
}

void *sub_100109D98(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v6 = a2[4];
  v7 = a1[4];
  a1[4] = v6;
  v8 = v6;

  v9 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v10 = *(v9 + 20);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a2 + v10);
  v14 = *v11;
  *v11 = v13;
  v15 = v13;

  *(v11 + 1) = *(v12 + 1);
  v16 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v17 = type metadata accessor for TTRRectCorners();
  (*(*(v17 - 8) + 24))(&v11[v16], &v12[v16], v17);
  v18 = *(v9 + 24);
  v19 = a1 + v18;
  v20 = (a2 + v18);
  v21 = *(a2 + v18);
  v22 = *v19;
  *v19 = v21;
  v23 = v21;

  *(v19 + 1) = v20[1];
  *(v19 + 2) = v20[2];
  *(v19 + 3) = v20[3];
  *(v19 + 4) = v20[4];
  v24 = v20[5];
  v25 = *(v19 + 5);
  *(v19 + 5) = v24;
  v26 = v24;

  v27 = a3[5];
  v28 = *(a2 + v27);
  v29 = *(a1 + v27);
  *(a1 + v27) = v28;
  v30 = v28;

  v31 = a3[6];
  v32 = *(a2 + v31);
  v33 = *(a1 + v31);
  *(a1 + v31) = v32;
  v34 = v32;

  v35 = a3[7];
  v36 = *(a2 + v35);
  v37 = *(a1 + v35);
  *(a1 + v35) = v36;
  v38 = v36;

  return a1;
}

uint64_t sub_100109F28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v8 = *(v7 + 20);
  v9 = (a1 + v8);
  v10 = a2 + v8;
  v11 = *(a2 + v8 + 8);
  *v9 = *(a2 + v8);
  *(v9 + 1) = v11;
  v12 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v13 = type metadata accessor for TTRRectCorners();
  (*(*(v13 - 8) + 32))(&v9[v12], v10 + v12, v13);
  v14 = *(v7 + 24);
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v15[2] = v16[2];
  v18 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v18) = *(a2 + v18);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_10010A020(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v8 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  *(v10 + 8) = *(v11 + 8);
  v13 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v14 = type metadata accessor for TTRRectCorners();
  (*(*(v14 - 8) + 40))(v10 + v13, v11 + v13, v14);
  v15 = *(v8 + 24);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  *(v16 + 8) = *(v17 + 8);
  *(v16 + 24) = *(v17 + 24);
  v19 = *(v16 + 40);
  *(v16 + 40) = *(v17 + 40);

  v20 = a3[5];
  v21 = *(a1 + v20);
  *(a1 + v20) = *(a2 + v20);

  v22 = a3[6];
  v23 = *(a1 + v22);
  *(a1 + v22) = *(a2 + v22);

  v24 = a3[7];
  v25 = *(a1 + v24);
  *(a1 + v24) = *(a2 + v24);

  return a1;
}

uint64_t sub_10010A194()
{
  result = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for TTRIBoardColumnDraggingAnimator.AnimationState.Header(id *a1)
{
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;
  v11 = *(a2 + 120);
  v10 = *(a2 + 128);
  *(a1 + 120) = v11;
  *(a1 + 128) = v10;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;

  v17 = v9;
  v18 = v11;

  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimator.AnimationState.Header(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;
  v9 = v7;

  v10 = a2[6];
  v11 = a1[6];
  a1[6] = v10;
  v12 = v10;

  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  v13 = a2[11];
  v14 = a1[11];
  a1[11] = v13;
  v15 = v13;

  v16 = a2[12];
  v17 = a1[12];
  a1[12] = v16;
  v18 = v16;

  a1[13] = a2[13];

  v19 = a2[14];
  v20 = a1[14];
  a1[14] = v19;
  v21 = v19;

  v22 = a2[15];
  v23 = a1[15];
  a1[15] = v22;
  v24 = v22;

  a1[16] = a2[16];

  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v7 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);

  v8 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRIBoardColumnDraggingAnimationSource(id *a1)
{
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;

  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimationSource(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;
  v9 = v7;

  v10 = a2[6];
  v11 = a1[6];
  a1[6] = v10;
  v12 = v10;

  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  v13 = a2[11];
  v14 = a1[11];
  a1[11] = v13;
  v15 = v13;

  v16 = a2[12];
  v17 = a1[12];
  a1[12] = v16;
  v18 = v16;

  a1[13] = a2[13];

  a1[14] = a2[14];

  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimationSource(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v7 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t assignWithCopy for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  v9 = v7;

  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t result, int a2, int a3)
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

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource.FrameInView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v4;
  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimationSource.FrameInView(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v3 = a2[4];
  v4 = a1[4];
  a1[4] = v3;
  v5 = v3;

  return a1;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource.FrameInView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.FrameInView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.FrameInView(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

id sub_10010ACF0(uint64_t *a1, void **a2, void *a3, id a4, void *a5, uint64_t a6)
{
  v108 = a6;
  v103 = a5;
  v106 = a4;
  v110 = a3;
  v114 = a1;
  v7 = type metadata accessor for TTRRemindersListLayout();
  v117 = *(v7 - 8);
  v118 = v7;
  v8 = __chkstk_darwin(v7);
  v99 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v109 = &v98 - v11;
  v12 = __chkstk_darwin(v10);
  v98 = &v98 - v13;
  __chkstk_darwin(v12);
  v115 = &v98 - v14;
  v15 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v16 = __chkstk_darwin(v15 - 8);
  v105 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v104 = &v98 - v18;
  v107 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v107);
  v116 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRPublicTemplateFallbackProperties();
  __chkstk_darwin(v20 - 8);
  v102 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TTRRemindersListDefaultListType();
  v22 = *(v101 - 8);
  __chkstk_darwin(v101);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v25 - 8);
  v100 = (&v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v98 - v32;
  sub_100058000(&qword_10076C210);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10062D400;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v124[0] = v34;
  sub_10010BDC4(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v100;
  sub_10010BD5C(a2, v100, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v111 = v33;
  v112 = v28;
  v36 = *(v28 + 16);
  v113 = v27;
  v36(v31, v33, v27);
  (*(v22 + 104))(v24, enum case for TTRRemindersListDefaultListType.any(_:), v101);
  v37 = v35;
  sub_10007786C(v35, v31, v24, v124);
  v38 = *a2;

  v39 = v38;
  TTRPublicTemplateFallbackProperties.init(listName:listColor:)();
  type metadata accessor for TTRShowPublicTemplateDataModelSource();
  swift_allocObject();
  v40 = v110;
  v41 = TTRShowPublicTemplateDataModelSource.init(store:publicTemplateObjectID:fallbackProperties:)();
  v42 = v124[0];
  type metadata accessor for TTRShowPublicTemplateViewModelSource();
  v43 = swift_allocObject();

  v106 = v42;
  v44 = sub_10010BAA8(0, v41, v106, v43);
  sub_10010BD5C(a2, v37, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v124, v121);
  v45 = sub_10010BDC4(&qword_10076C228, type metadata accessor for TTRShowPublicTemplateViewModelSource);
  v46 = v116;
  sub_10010BD5C(v37, v116, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v47 = v107;
  sub_10010BCAC(v121, v46 + *(v107 + 28));
  v48 = (v46 + *(v47 + 32));
  *v48 = v44;
  v48[1] = v45;
  v49 = v121[0];
  sub_100058000(&qword_10076C230);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v123, v120, &qword_100769608);
  v51 = *(v120[5] + 8);
  *(v50 + 32) = v120[4];
  *(v50 + 40) = v51;
  sub_10000794C(&v122, v119, &qword_100769600);
  swift_retain_n();
  v52 = v49;
  swift_unknownObjectRelease();
  *(v50 + 48) = v119[3];
  sub_100004758(v119);
  sub_100004758(v120);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v53 = swift_allocObject();
  v54 = sub_1003A8DE0(v52, v44, v50, v53);

  sub_10010BD08(v121);
  sub_10010BE0C(v37, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v55 = *(v47 + 36);
  v103 = v54;
  *(v46 + v55) = v54;
  v56 = v104;
  sub_100078BBC(v104);
  v107 = type metadata accessor for TTRIShowPublicTemplatePresenter();
  v57 = swift_allocObject();
  v58 = (v57 + OBJC_IVAR____TtC9Reminders31TTRIShowPublicTemplatePresenter_dataModelSource);
  *v58 = v41;
  v58[1] = &protocol witness table for TTRShowPublicTemplateDataModelSource;
  v59 = v105;
  sub_10010BD5C(v56, v105, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v60 = v108;
  swift_unknownObjectRetain();
  v61 = sub_1003A56E4(v59, v60, v57);
  sub_10010BE0C(v56, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v62 = *(v61 + 144);
  ObjectType = swift_getObjectType();
  v64 = *(v62 + 112);

  v65 = v64(ObjectType, v62);
  v110 = v41;
  if (v65)
  {
    swift_getObjectType();
    v66 = v98;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v67 = v115;
    (*(v117 + 32))(v115, v66, v118);
  }

  else
  {
    v67 = v115;
    (*(v117 + 104))(v115, enum case for TTRRemindersListLayout.list(_:), v118);
  }

  v68 = sub_1003A4A1C(v67, v61);
  v105 = v69;
  v71 = v70;
  v73 = v72;
  (*(v117 + 8))(v67, v118);
  v108 = swift_getObjectType();
  *(v61 + 24) = *(v73 + 8);
  v115 = v71;
  swift_unknownObjectWeakAssign();
  v74 = *(v61 + 144);
  v75 = swift_getObjectType();
  v76 = *(v74 + 112);

  if (v76(v75, v74))
  {
    swift_getObjectType();
    v77 = v99;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v78 = v109;
    (*(v117 + 32))(v109, v77, v118);
  }

  else
  {

    v78 = v109;
    (*(v117 + 104))(v109, enum case for TTRRemindersListLayout.list(_:), v118);
  }

  v79 = static TTRLocalizableStrings.Templates.addListFromPublicTemplateButton.getter();
  v81 = v80;
  v82 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v83 = v68;
  v84 = sub_1003A8E14(v61, v83, v105, v78, v79, v81, 1, v82);

  v85 = *(v73 + 32);
  v86 = v84;
  v85(v84, &off_100723D78, v108, v73);
  sub_10010BDC4(&qword_10076C238, type metadata accessor for TTRIShowPublicTemplatePresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10010BDC4(&qword_10076C240, type metadata accessor for TTRShowPublicTemplateViewModelSource);

  dispatch thunk of TTRShowPublicTemplateDataModelSource.delegate.setter();

  sub_10056FEB0(v87, &off_10071A9B0);

  v103[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v125, v121, &qword_100769600);
  v88 = v121[4];
  swift_unknownObjectRelease();
  *(v88 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v121);
  sub_10000794C(&v126, v121, &qword_100769608);
  swift_getObjectType();
  sub_10010BDC4(&qword_10076C248, type metadata accessor for TTRIShowPublicTemplatePresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v121);
  dispatch thunk of TTRShowPublicTemplateDataModelSource.start()();
  v89 = objc_allocWithZone(UINavigationController);
  swift_retain_n();
  v90 = [v89 initWithRootViewController:v86];
  v91 = [v90 navigationBar];
  [v91 setPrefersLargeTitles:1];

  v92 = [v90 presentationController];
  if (v92)
  {
    v93 = v92;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v94 = *(v61 + 24);
      v95 = swift_getObjectType();
      (*(v94 + 104))(v93, v95, v94);
      swift_unknownObjectRelease();
    }

    *(v61 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) = 1;
  }

  v96 = v114;
  v114[3] = v107;
  v96[4] = &off_10072E520;

  swift_unknownObjectRelease();
  *v96 = v61;
  (*(v112 + 8))(v111, v113);
  sub_10010BE0C(v116, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v124);
  return v90;
}

unint64_t sub_10010BA44()
{
  result = qword_10076C220;
  if (!qword_10076C220)
  {
    sub_10005D20C(&qword_10076C218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076C220);
  }

  return result;
}

uint64_t sub_10010BAA8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for TTRListType.SortingCapability();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_listRepresentation) = 0;
  v15 = a4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_remindersCount;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_isPreview) = a1;
  v16 = (a4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_publicTemplateDataModelSource);
  *v16 = a2;
  v16[1] = &protocol witness table for TTRShowPublicTemplateDataModelSource;
  v17 = enum case for REMRemindersListDataView.SortingStyle.default(_:);
  v18 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  (*(v12 + 104))(v14, enum case for TTRListType.SortingCapability.notSupported(_:), v11);

  v20 = sub_1003A649C(v19, a3, v14, a4);

  sub_1003758E8(v10);
  sub_10056F540(v10);

  sub_10010BE6C(v10);
  return v20;
}

uint64_t sub_10010BD5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010BDC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010BE0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010BE6C(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078A380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10010BED4(uint64_t a1, char a2)
{
  swift_getErrorValue();
  if (Error.isREMError(withErrorCode:)())
  {
    static TTRLocalizableStrings.Templates.publicTemplateNotSupportedAlertTitle.getter();
    if (a2)
    {
      v3 = 0xD000000000000030;
      v4 = 0x8000000100671D80;
      v5 = 0xD00000000000009ELL;
      v6 = 0x8000000100671DC0;
      v7 = 0xD00000000000003ALL;
      v8 = 0x8000000100671E60;
    }

    else
    {
      v4 = 0x8000000100671C70;
      v5 = 0xD00000000000009DLL;
      v6 = 0x8000000100671CA0;
      v7 = 0xD00000000000003CLL;
      v8 = 0x8000000100671D40;
      v3 = 0xD00000000000002DLL;
    }

    TTRLocalizedString(_:value:comment:)(*&v3, *&v5, *&v7);
    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_getErrorValue();
    if (Error.isREMError(withErrorCode:)())
    {
      static TTRLocalizableStrings.Templates.publicTemplateCannotOpenDueToNetworkFailureAlertTitle.getter();
      static TTRLocalizableStrings.Templates.publicTemplateCannotOpenDueToNetworkFailureAlertMessage.getter();
    }

    else
    {
      static TTRLocalizableStrings.Templates.publicTemplateNotAvailableAlertTitle.getter();
      static TTRLocalizableStrings.Templates.publicTemplateNotAvailableAlertMessage.getter();
    }

    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();
  }

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  return v11;
}

id sub_10010C0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for TTRIHashtagSuggestionTableViewCell();
  v6 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  sub_10010C4CC();

  return v7;
}

id sub_10010C220()
{
  v1 = OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UILabel) init];
    sub_100003540(0, &qword_100771DF0);
    v6 = static UIFont.roundedSystemFont.getter();
    [v5 setFont:v6];

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10010C2D8()
{
  v1 = OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView);
  }

  else
  {
    v4 = sub_10010C338();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10010C338()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  [v0 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
  [v0 setContentMode:4];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  isa = UIFont.withRoundedDesign()().super.isa;

  v3 = UIFont.withBoldTrait()().super.isa;
  v4 = [objc_opt_self() configurationWithFont:v3 scale:1];
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5 withConfiguration:v4];

  [v0 setImage:v6];
  v7 = [objc_opt_self() secondaryLabelColor];
  [v0 setTintColor:v7];

  return v0;
}

void sub_10010C4CC()
{
  v1 = sub_10010C2D8();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = sub_10010C220();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView]];
  v4 = OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel]];
  v5 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100630300;
  v7 = [*&v0[v3] heightAnchor];
  v8 = [v7 constraintEqualToConstant:24.0];

  *(v6 + 32) = v8;
  v9 = [*&v0[v3] widthAnchor];
  v10 = [v9 constraintEqualToConstant:24.0];

  *(v6 + 40) = v10;
  v11 = [*&v0[v3] leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:12.0];

  *(v6 + 48) = v13;
  v14 = [*&v0[v4] leadingAnchor];
  v15 = [*&v0[v3] trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:4.0];

  *(v6 + 56) = v16;
  v17 = [v0 trailingAnchor];
  v18 = [*&v0[v4] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:12.0];

  *(v6 + 64) = v19;
  v20 = [*&v0[v4] topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v6 + 72) = v22;
  v23 = [v0 bottomAnchor];
  v24 = [*&v0[v4] bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v6 + 80) = v25;
  v26 = [*&v0[v3] centerYAnchor];
  v27 = [*&v0[v4] centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v6 + 88) = v28;
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

id sub_10010C8C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIHashtagSuggestionTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010C96C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1001137D4, v4);
}

void sub_10010CA00(uint64_t a1, uint64_t a2)
{
  sub_100003540(0, &qword_10076C550);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_10010CA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_100007DD8(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_100003540(0, &qword_10076C550);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1000079B4(v10, &qword_10076AE40);

  return v6;
}

uint64_t sub_10010CB70(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v44 = type metadata accessor for TTRSharedWithYouHighlight();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100058000(&unk_10076C558);
  __chkstk_darwin(v5);
  v7 = &v36[-v6];
  v8 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  v9 = __chkstk_darwin(v8);
  v43 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v42 = &v36[-v12];
  __chkstk_darwin(v11);
  v15 = &v36[-v14];
  v16 = *(a2 + 16);
  if (!v16)
  {
    return 0;
  }

  v17 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v46 = *(v13 + 72);
  v41 = (v3 + 8);
  v39 = (v3 + 32);
  v18 = v45;
  while (1)
  {
    sub_1001137DC(v17, v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v19 = &v7[*(v5 + 48)];
    sub_1001137DC(v15, v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    sub_1001137DC(v18, v19, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_42;
          }
        }

        else if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_42;
        }
      }

      else if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_42;
        }
      }

      else if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          goto LABEL_42;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          goto LABEL_42;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if (!EnumCaseMultiPayload)
    {
      break;
    }

    v24 = v43;
    sub_1001137DC(v7, v43, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*v41)(v24, v44);
      v18 = v45;
      goto LABEL_31;
    }

    v25 = v40;
    v26 = v19;
    v27 = v44;
    (*v39)(v40, v26, v44);
    v37 = static TTRSharedWithYouHighlight.== infix(_:_:)();
    v38 = v5;
    v28 = v24;
    v29 = *v41;
    (*v41)(v25, v27);
    v30 = v28;
    v5 = v38;
    v29(v30, v27);
    sub_100113710(v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v18 = v45;
    if (v37)
    {
      goto LABEL_43;
    }

LABEL_32:
    sub_100113710(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v17 += v46;
    if (!--v16)
    {
      return 0;
    }
  }

  v21 = v42;
  sub_1001137DC(v7, v42, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  v22 = *v21;
  v23 = v21[1];
  if (swift_getEnumCaseMultiPayload())
  {

    v18 = v45;
LABEL_31:
    sub_1000079B4(v7, &unk_10076C558);
    goto LABEL_32;
  }

  v31 = *v19;
  v32 = v19[1];
  if (v22 != v31 || v23 != v32)
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v45;
    if (v34)
    {
      goto LABEL_42;
    }

    sub_100113710(v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    goto LABEL_32;
  }

LABEL_42:
  sub_100113710(v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
LABEL_43:
  sub_100113710(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  return 1;
}

BOOL sub_10010D1A0(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_100113B0C(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_10010D2A8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076C290);
  v1 = sub_100003E30(v0, qword_10076C290);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10010D370()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
    v2 = result;
    swift_unknownObjectRetain();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v3 + 72))(v1, &off_100713C08, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

objc_class *sub_10010D42C(uint64_t *a1, uint64_t a2, UIBarButtonSystemItem a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v3;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v15.value.super.super.isa = sub_100003540(0, &qword_10076B800);
    v14.value.super.super.isa = v9;
    v14.is_nil = 0;
    v10.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(a3, v14, v15).super.super.isa;
    v11 = *(v8 + v4);
    *(v8 + v4) = v10;
    v6 = v10.super.super.isa;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

objc_class *sub_10010D548()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationCommitButtonWithCustomTitle;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationCommitButtonWithCustomTitle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationCommitButtonWithCustomTitle);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = v4;
    v5 = v0;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800);
    v7 = v6;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0xE000000000000000;
    v14.value.super.isa = 0;
    v14.is_nil = v6;
    v15.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v8, v14, v15, v16).super.super.isa;
    [(objc_class *)isa setStyle:2, 0, 0, 0, sub_100113BB8, v13];

    v10 = *(v0 + v1);
    *(v5 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_10010D694()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
    v2 = result;
    swift_unknownObjectRetain();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v3 + 48))(v1, &off_100713C08, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10010D750()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
    v2 = result;
    swift_unknownObjectRetain();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v3 + 56))(v1, &off_100713C08, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

objc_class *sub_10010D80C()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___undoBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___undoBarButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___undoBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v0;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    static REMFeatureFlags.isSolariumEnabled.getter();
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() _systemImageNamed:{v7, 0, 0, 0, sub_10011387C, v4}];

    sub_100003540(0, &qword_10076B800);
    v9._countAndFlagsBits = 0xD000000000000028;
    v9._object = 0x8000000100672550;
    v10._countAndFlagsBits = 1868852821;
    v10._object = 0xE400000000000000;
    v11 = TTRLocalizedString(_:comment:)(v10, v9);
    v16.value.super.isa = v8;
    v16.is_nil = v6;
    v17.value.super.super.isa = 0;
    v12.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v11, v16, v17, v18).super.super.isa;
    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12.super.super.isa;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

objc_class *sub_10010D9C0()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___redoBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___redoBarButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___redoBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v0;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    static REMFeatureFlags.isSolariumEnabled.getter();
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() _systemImageNamed:{v7, 0, 0, 0, sub_10011384C, v4}];

    sub_100003540(0, &qword_10076B800);
    v9._countAndFlagsBits = 0xD000000000000028;
    v9._object = 0x8000000100672550;
    v10._countAndFlagsBits = 1868850514;
    v10._object = 0xE400000000000000;
    v11 = TTRLocalizedString(_:comment:)(v10, v9);
    v16.value.super.isa = v8;
    v16.is_nil = v6;
    v17.value.super.super.isa = 0;
    v12.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v11, v16, v17, v18).super.super.isa;
    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12.super.super.isa;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

objc_class *sub_10010DB74()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___calDAVSharedBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___calDAVSharedBarButton);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___calDAVSharedBarButton + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___calDAVSharedBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = v5;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800);
    v7._object = 0x8000000100672600;
    v8._countAndFlagsBits = 0xD000000000000028;
    v8._object = 0x8000000100672550;
    v7._countAndFlagsBits = 0xD000000000000012;
    v9 = TTRLocalizedString(_:comment:)(v7, v8);
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:{v10, 0, 0, 0, sub_1001138E0, v20}];

    v12 = v6;
    v21.value.super.isa = v11;
    v21.is_nil = v6;
    v22.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v9, v21, v22, v23).super.super.isa;
    sub_100003540(0, &qword_10076C548);
    sub_100058000(&qword_10076B780);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10062D420;
    *(v14 + 32) = isa;
    v15 = isa;
    v16 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v17 = *v1;
    v18 = *(v1 + 8);
    *v1 = v15;
    *(v1 + 8) = v16;
    v4 = v15;
    v16;
    sub_100037C04(v17, v18);
  }

  sub_100037C44(v2, v3);
  return v4;
}

void sub_10010DDDC(void *a1)
{
  v2 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([a1 presentationSourceItem])
    {
      swift_unknownObjectRetain();
      static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)();
      swift_unknownObjectRelease_n();
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v8 - 8) + 56))(v4, v7, 1, v8);
    v9 = *&v6[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 40);
      ObjectType = swift_getObjectType();
      (*(v10 + 64))(v9, &off_100713C08, 1, v4, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    sub_1000079B4(v4, &unk_10076FCD0);
  }
}

objc_class *sub_10010DFCC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4 + *a1;
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5)
  {
    v8 = *v5;
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800);
    v14._countAndFlagsBits = 0xD000000000000028;
    v14._object = 0x8000000100672550;
    v15._countAndFlagsBits = a3;
    v15._object = a4;
    v16 = TTRLocalizedString(_:comment:)(v15, v14);
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_opt_self() _systemImageNamed:{v17, 0, 0, 0, a2, v12}];

    v19 = v13;
    v27.value.super.isa = v18;
    v27.is_nil = v13;
    v28.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v16, v27, v28, v29).super.super.isa;
    sub_100003540(0, &qword_10076C548);
    sub_100058000(&qword_10076B780);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10062D420;
    *(v21 + 32) = isa;
    v22 = isa;
    v23 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v24 = *v5;
    v25 = *(v5 + 8);
    *v5 = v22;
    *(v5 + 8) = v23;
    v8 = v22;
    v23;
    sub_100037C04(v24, v25);
  }

  sub_100037C44(v6, v7);
  return v8;
}

uint64_t sub_10010E220()
{
  v0 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
    v5 = result;
    swift_unknownObjectRetain();

    v6 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      (*(v7 + 64))(v4, &off_100713C08, 1, v2, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_1000079B4(v2, &unk_10076FCD0);
  }

  return result;
}

objc_class *sub_10010E390()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___autoCategorizeBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___autoCategorizeBarButton);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___autoCategorizeBarButton + 8);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = sub_10010E420();
    v7 = v6;
    v8 = *v1;
    v9 = *(v1 + 8);
    *v1 = v5;
    *(v1 + 8) = v6;
    v4 = v5;
    v7;
    sub_100037C04(v8, v9);
  }

  sub_100037C44(v2, v3);
  return v4;
}

objc_class *sub_10010E420()
{
  sub_100003540(0, &qword_10076B800);
  v0 = static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
  v2 = v1;
  v3 = static TTRCommonAsset.Image.autoCategorizationIcon.getter();
  v10.value.super.super.isa = sub_10007E7B4();
  v4.value._countAndFlagsBits = v0;
  v4.value._object = v2;
  v9.value.super.isa = v3;
  v9.is_nil = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v4, v9, v10, v11).super.super.isa;
  sub_100003540(0, &qword_10076C548);
  sub_100058000(&qword_10076B780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10062D420;
  *(v6 + 32) = isa;
  v7 = isa;
  static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

  return v7;
}

objc_class *sub_10010E528()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___actionMenuBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___actionMenuBarButton);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___actionMenuBarButton + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___actionMenuBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076B800);
    v5._object = 0x8000000100672670;
    v6._countAndFlagsBits = 0xD00000000000005ALL;
    v6._object = 0x80000001006726A0;
    v5._countAndFlagsBits = 0xD000000000000025;
    v7._countAndFlagsBits = 1701998413;
    v7._object = 0xE400000000000000;
    v8 = TTRLocalizedString(_:value:comment:)(v5, v7, v6);
    v9 = static TTRCommonAsset.Image.actionMenuIcon.getter();
    sub_100003540(0, &unk_10076B890);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v10 = static UIMenu.ttr_uncached(options:_:)();

    v19.value.super.isa = v9;
    v19.is_nil = 0;
    v20.value.super.super.isa = v10;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v8, v19, v20, v21).super.super.isa;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v12 = static UIMenu.ttr_uncached(options:_:)();

    [(objc_class *)isa setMenuRepresentation:v12];

    sub_100003540(0, &qword_10076C548);
    sub_100058000(&qword_10076B780);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10062D420;
    *(v13 + 32) = isa;
    v14 = isa;
    v15 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v16 = *v1;
    v17 = *(v1 + 8);
    *v1 = v14;
    *(v1 + 8) = v15;
    v4 = v14;
    v15;
    sub_100037C04(v16, v17);
  }

  sub_100037C44(v2, v3);
  return v4;
}

uint64_t sub_10010E7BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
  v2 = Strong;
  swift_unknownObjectRetain();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(v1, &off_100713C08, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  swift_unknownObjectRelease();
  return v5;
}

objc_class *sub_10010E890()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___templatesBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___templatesBarButton);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___templatesBarButton + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___templatesBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = v5;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800);
    v7._countAndFlagsBits = 0x6574616C706D6554;
    v8._countAndFlagsBits = 0xD000000000000028;
    v8._object = 0x8000000100672550;
    v7._object = 0xE900000000000073;
    v9 = TTRLocalizedString(_:comment:)(v7, v8);
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:{v10, 0, 0, 0, sub_1001138D8, v20}];

    v12 = v6;
    v21.value.super.isa = v11;
    v21.is_nil = v6;
    v22.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v9, v21, v22, v23).super.super.isa;
    sub_100003540(0, &qword_10076C548);
    sub_100058000(&qword_10076B780);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10062D420;
    *(v14 + 32) = isa;
    v15 = isa;
    v16 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v17 = *v1;
    v18 = *(v1 + 8);
    *v1 = v15;
    *(v1 + 8) = v16;
    v4 = v15;
    v16;
    sub_100037C04(v17, v18);
  }

  sub_100037C44(v2, v3);
  return v4;
}

uint64_t sub_10010EAFC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
    v2 = result;
    swift_unknownObjectRetain();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v3 + 80))(v1, &off_100713C08, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10010EBB8()
{
  v0._countAndFlagsBits = 0x2065754420746553;
  v0._object = 0xEC00000065746144;
  v1._countAndFlagsBits = 0xD000000000000022;
  v1._object = 0x8000000100672730;
  v2.value = TTRLocalizedString(_:comment:)(v0, v1);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_100003540(0, &qword_10076B800);
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  swift_bridgeObjectRetain_n();

  children = v4;
  v28.value.super.isa = v4;
  v28.is_nil = 0;
  v30.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v28, v30, v33).super.super.isa;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1001139AC;
  *(v8 + 24) = v5;
  v26 = sub_1001139DC;
  v27 = v8;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010CA7C;
  v25 = &unk_100716078;
  v9 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v9];
  _Block_release(v9);
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1001139AC;
  *(v11 + 24) = v5;
  v26 = sub_100113A04;
  v27 = v11;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010C96C;
  v25 = &unk_1007160C8;
  v12 = _Block_copy(&aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  sub_100003540(0, &unk_10076B890);
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v13;
  v15 = children;
  v16 = v13;
  v31.value.super.isa = v4;
  v31.is_nil = 0;
  v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v2.value, 0, v31, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v17];

  *(v6 + 24) = isa;
  v18 = v15;
  v29.value.super.isa = v4;
  v29.is_nil = 0;
  v32.value.super.super.isa = 0;
  v19 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v29, v32, v34).super.super.isa;
  [(objc_class *)v19 setEnabled:0];

  *(v6 + 32) = v19;
  return v6;
}

uint64_t sub_10010EFB4()
{
  v0._countAndFlagsBits = 0x61636F4C20746553;
  v0._object = 0xEC0000006E6F6974;
  v1._object = 0x8000000100672730;
  v1._countAndFlagsBits = 0xD000000000000022;
  v2.value = TTRLocalizedString(_:comment:)(v0, v1);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 16) = 1;
  sub_100003540(0, &qword_10076B800);
  swift_bridgeObjectRetain_n();

  children = v4;
  v28.value.super.isa = v4;
  v28.is_nil = 0;
  v30.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v28, v30, v33).super.super.isa;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100113A0C;
  *(v8 + 24) = v5;
  v26 = sub_100113B7C;
  v27 = v8;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010CA7C;
  v25 = &unk_100716118;
  v9 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v9];
  _Block_release(v9);
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100113A0C;
  *(v11 + 24) = v5;
  v26 = sub_100113B80;
  v27 = v11;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010C96C;
  v25 = &unk_100716168;
  v12 = _Block_copy(&aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  sub_100003540(0, &unk_10076B890);
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v13;
  v15 = children;
  v16 = v13;
  v31.value.super.isa = v4;
  v31.is_nil = 0;
  v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v2.value, 0, v31, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v17];

  *(v6 + 24) = isa;
  v18 = v15;
  v29.value.super.isa = v4;
  v29.is_nil = 0;
  v32.value.super.super.isa = 0;
  v19 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v29, v32, v34).super.super.isa;
  [(objc_class *)v19 setEnabled:0];

  *(v6 + 32) = v19;
  return v6;
}

uint64_t sub_10010F3AC()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___flagBarButton;
  if (*(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___flagBarButton))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___flagBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = v0;
    v4 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800);
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0xE000000000000000;
    v8.value.super.isa = 0;
    v8.is_nil = v4;
    v9.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v5, v8, v9, v10).super.super.isa;
    type metadata accessor for CenterBarButtonItemGroup();
    v2 = swift_allocObject();
    *(v2 + 16) = 2;
    *(v2 + 24) = isa;
    *(v2 + 32) = 0;
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10010F4F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();

    a3();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10010F574()
{
  v0._countAndFlagsBits = 0x67616D4920646441;
  v1._object = 0x8000000100672730;
  v0._object = 0xE900000000000065;
  v1._countAndFlagsBits = 0xD000000000000022;
  v2.value = TTRLocalizedString(_:comment:)(v0, v1);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 16) = 3;
  sub_100003540(0, &qword_10076B800);
  swift_bridgeObjectRetain_n();

  children = v4;
  v28.value.super.isa = v4;
  v28.is_nil = 0;
  v30.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v28, v30, v33).super.super.isa;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100113A6C;
  *(v8 + 24) = v5;
  v26 = sub_100113B7C;
  v27 = v8;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010CA7C;
  v25 = &unk_1007161B8;
  v9 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v9];
  _Block_release(v9);
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100113A6C;
  *(v11 + 24) = v5;
  v26 = sub_100113B80;
  v27 = v11;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010C96C;
  v25 = &unk_100716208;
  v12 = _Block_copy(&aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  sub_100003540(0, &unk_10076B890);
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v13;
  v15 = children;
  v16 = v13;
  v31.value.super.isa = v4;
  v31.is_nil = 0;
  v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v2.value, 0, v31, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v17];

  *(v6 + 24) = isa;
  v18 = v15;
  v29.value.super.isa = v4;
  v29.is_nil = 0;
  v32.value.super.super.isa = 0;
  v19 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v29, v32, v34).super.super.isa;
  [(objc_class *)v19 setEnabled:0];

  *(v6 + 32) = v19;
  return v6;
}

uint64_t sub_10010F964()
{
  v0._countAndFlagsBits = 0x67615420646441;
  v1._object = 0x8000000100672730;
  v0._object = 0xE700000000000000;
  v1._countAndFlagsBits = 0xD000000000000022;
  v2.value = TTRLocalizedString(_:comment:)(v0, v1);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 16) = 4;
  sub_100003540(0, &qword_10076B800);
  swift_bridgeObjectRetain_n();

  children = v4;
  v28.value.super.isa = v4;
  v28.is_nil = 0;
  v30.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v28, v30, v33).super.super.isa;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100113A9C;
  *(v8 + 24) = v5;
  v26 = sub_100113B7C;
  v27 = v8;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010CA7C;
  v25 = &unk_100716258;
  v9 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v9];
  _Block_release(v9);
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100113A9C;
  *(v11 + 24) = v5;
  v26 = sub_100113B80;
  v27 = v11;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010C96C;
  v25 = &unk_1007162A8;
  v12 = _Block_copy(&aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  sub_100003540(0, &unk_10076B890);
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v13;
  v15 = children;
  v16 = v13;
  v31.value.super.isa = v4;
  v31.is_nil = 0;
  v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v2.value, 0, v31, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v17];

  *(v6 + 24) = isa;
  v18 = v15;
  v29.value.super.isa = v4;
  v29.is_nil = 0;
  v32.value.super.super.isa = 0;
  v19 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v29, v32, v34).super.super.isa;
  [(objc_class *)v19 setEnabled:0];

  *(v6 + 32) = v19;
  return v6;
}

uint64_t sub_10010FD50(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_10010FDB8()
{
  v0._countAndFlagsBits = 0x6E6769737341;
  v1._object = 0x8000000100672730;
  v0._object = 0xE600000000000000;
  v1._countAndFlagsBits = 0xD000000000000022;
  v2.value = TTRLocalizedString(_:comment:)(v0, v1);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 16) = 5;
  sub_100003540(0, &qword_10076B800);
  swift_bridgeObjectRetain_n();

  children = v4;
  v28.value.super.isa = v4;
  v28.is_nil = 0;
  v30.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v28, v30, v33).super.super.isa;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100113ACC;
  *(v8 + 24) = v5;
  v26 = sub_100113B7C;
  v27 = v8;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010CA7C;
  v25 = &unk_1007162F8;
  v9 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v9];
  _Block_release(v9);
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100113ACC;
  *(v11 + 24) = v5;
  v26 = sub_100113B80;
  v27 = v11;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10010C96C;
  v25 = &unk_100716348;
  v12 = _Block_copy(&aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  sub_100003540(0, &unk_10076B890);
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v13;
  v15 = children;
  v16 = v13;
  v31.value.super.isa = v4;
  v31.is_nil = 0;
  v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v2.value, 0, v31, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v17];

  *(v6 + 24) = isa;
  v18 = v15;
  v29.value.super.isa = v4;
  v29.is_nil = 0;
  v32.value.super.super.isa = 0;
  v19 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v2, v29, v32, v34).super.super.isa;
  [(objc_class *)v19 setEnabled:0];

  *(v6 + 32) = v19;
  return v6;
}

uint64_t sub_1001101A0(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  swift_unknownObjectRetain();

  v5 = a2();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100110230()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___addSectionBarButton;
  if (*(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___addSectionBarButton))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___addSectionBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = v0;
    v4 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800);
    v8.value.super.isa = static TTRCommonAsset.Image.addSectionIcon.getter();
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0xE000000000000000;
    v8.is_nil = v4;
    v9.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v5, v8, v9, v10).super.super.isa;
    type metadata accessor for CenterBarButtonItemGroup();
    v2 = swift_allocObject();
    *(v2 + 16) = 6;
    *(v2 + 24) = isa;
    *(v2 + 32) = 0;
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10011037C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
    v2 = result;
    swift_unknownObjectRetain();

    if ((*(v1 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions) & 1) == 0)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v1 + 40);
        ObjectType = swift_getObjectType();
        (*(v3 + 144))(v1, &off_100713C08, ObjectType, v3);
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100110448()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton];
  v3 = *&v0[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton];
  v4 = *&v0[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton + 8];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = sub_100110510(v1);
    v8 = v7;
    v9 = *v2;
    v10 = *(v2 + 1);
    *v2 = v6;
    *(v2 + 1) = v7;
    *(v2 + 2) = v11;
    v5 = v6;
    v8;

    sub_100113914(v9, v10);
  }

  sub_10011395C(v3, v4);
  return v5;
}

id sub_100110510(void *a1)
{
  v20[3] = swift_getObjectType();
  v20[0] = a1;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001139A4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010C96C;
  aBlock[3] = &unk_100716028;
  v4 = _Block_copy(aBlock);
  v5 = a1;

  v6 = [v2 elementWithUncachedProvider:v4];
  _Block_release(v4);
  sub_100003540(0, &unk_10076B890);
  v7._countAndFlagsBits = 0x6E6F5A20656D6954;
  v8._object = 0x8000000100672700;
  v7._object = 0xE900000000000065;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v9 = TTRLocalizedString(_:comment:)(v7, v8);
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() _systemImageNamed:v10];

  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v6;
  v21.value.super.isa = v11;
  v21.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v21, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v18).super.super.isa;
  type metadata accessor for TTRITimeZoneOverrideBarButtonModule();
  swift_allocObject();
  v14 = *(sub_10008C6E0(v20, isa) + 16);
  [v14 setSharesBackground:0];
  sub_100003540(0, &qword_10076C548);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D420;
  *(v15 + 32) = v14;
  v16 = v14;
  static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

  return v16;
}

uint64_t type metadata accessor for TTRIRemindersListNavigationBarController()
{
  result = qword_10076C3A8;
  if (!qword_10076C3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100110A64()
{
  sub_100110B54();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100110B54()
{
  if (!qword_10076C3B8)
  {
    type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10076C3B8);
    }
  }
}

uint64_t sub_100110BAC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_navigationItem);
  *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_navigationItem) = a1;

  type metadata accessor for TTRITimeZoneOverrideTipController();
  swift_allocObject();
  v7 = a1;
  v8 = a2;
  *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_timeZoneOverrideTipController) = TTRITimeZoneOverrideTipController.init(loggingPrefix:hostViewController:)();

  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1 && (static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    [v7 setStyle:1];
  }

  [v7 setLeftItemsSupplementBackButton:1];
  v11 = [v8 traitCollection];
  v12 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass;
  v13 = *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass);
  v14 = [v11 horizontalSizeClass];
  if (v13 != (v14 == 1))
  {
    *(v3 + v12) = v14 == 1;
    sub_100081EF8(0xD00000000000001ALL, 0x8000000100672780);
  }

  sub_100058000(&unk_10076BD70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  *(v15 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v15 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100003540(0, &qword_10076AD28);
  v16 = UIViewController.registerForTraitChanges<A>(_:handler:)();

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_traitChangeCancellable) = AnyCancellable.init(_:)();
}

void sub_100110EA4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 traitCollection];
    v5 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass;
    v6 = v3[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass];
    v7 = [v4 horizontalSizeClass];
    if (v6 == (v7 == 1))
    {
      v8 = v4;
      v4 = v3;
    }

    else
    {
      v3[v5] = v7 == 1;
      sub_100081EF8(0xD00000000000001ALL, 0x8000000100672780);
      v8 = v3;
    }
  }
}

void sub_100110F8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    UIViewController.unregisterForTraitChanges(_:)();
  }
}

uint64_t sub_100110FE8(uint64_t a1)
{
  v3 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  __chkstk_darwin(v3);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v104 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076C530);
  __chkstk_darwin(v9);
  v11 = &v94 - v10;
  v12 = sub_100058000(&unk_10076C538);
  v13 = __chkstk_darwin(v12 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v94 - v15;
  __chkstk_darwin(v14);
  v19 = &v94 - v18;
  v106 = *&v1[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_navigationItem];
  if (!v106)
  {
    if (qword_100766F18 == -1)
    {
LABEL_6:
      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_10076C290);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "TTRIRemindersListNavigationBarController#updateNavigationBarConfiguration: navigationItem is unexpectedly nil", v33, 2u);
      }

      return 0;
    }

LABEL_37:
    swift_once();
    goto LABEL_6;
  }

  v97 = v3;
  v98 = v5;
  v102 = v17;
  v20 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_lastSetConfiguration;
  swift_beginAccess();
  v21 = a1;
  sub_1001137DC(a1, v19, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
  v99 = *(v7 + 56);
  v100 = v7 + 56;
  v99(v19, 0, 1, v6);
  v22 = *(v9 + 48);
  v101 = v20;
  sub_100113338(&v1[v20], v11);
  sub_100113338(v19, &v11[v22]);
  v23 = *(v7 + 48);
  v24 = v23(v11, 1, v6);
  v25 = v1;
  v105 = v6;
  if (v24 == 1)
  {
    v26 = v106;
    v27 = v106;
    sub_1000079B4(v19, &unk_10076C538);
    v28 = v6;
    v29 = v26;
    if (v23(&v11[v22], 1, v28) == 1)
    {

      sub_1000079B4(v11, &unk_10076C538);
      return 0;
    }

    goto LABEL_12;
  }

  sub_100113338(v11, v16);
  if (v23(&v11[v22], 1, v6) == 1)
  {
    v29 = v106;
    v35 = v106;
    sub_1000079B4(v19, &unk_10076C538);
    sub_100113710(v16, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
LABEL_12:
    sub_1000079B4(v11, &qword_10076C530);
    v36 = v105;
    goto LABEL_13;
  }

  v48 = v104;
  sub_100113770(&v11[v22], v104);
  v29 = v106;
  v103 = v106;
  v49 = sub_1005F4378(v16, v48);
  sub_100113710(v48, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
  sub_1000079B4(v19, &unk_10076C538);
  sub_100113710(v16, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
  sub_1000079B4(v11, &unk_10076C538);
  v36 = v105;
  if (v49)
  {

    return 0;
  }

LABEL_13:
  v37 = [objc_opt_self() currentDevice];
  v38 = [v37 userInterfaceIdiom];

  if (v38 == 1)
  {
    v39 = static REMFeatureFlags.isSolariumEnabled.getter();
    LODWORD(v104) = v39 ^ 1;
  }

  else
  {
    LODWORD(v104) = 0;
  }

  v40 = v25;
  v41 = *(v21 + *(v36 + 20));
  aBlock[0] = &_swiftEmptyArrayStorage;
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = 0;
    v44 = (v41 + 34);
    while (v43 < *(v41 + 16))
    {
      if (*v44)
      {
        v45 = 0x10000;
      }

      else
      {
        v45 = 0;
      }

      if (*(v44 - 1))
      {
        v46 = 256;
      }

      else
      {
        v46 = 0;
      }

      sub_100111E88(v46 | v45 | *(v44 - 2));
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v103 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v43;
      v39 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44 += 3;
      if (v42 == v43)
      {
        v29 = v106;
        v47 = aBlock[0];
        v40 = v25;
        v36 = v105;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v47 = &_swiftEmptyArrayStorage;
LABEL_32:
  v50 = v21;
  if (v104)
  {
    if (v47 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_35;
      }
    }

    else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_35:
      v51 = String._bridgeToObjectiveC()();
LABEL_40:
      [v29 setCustomizationIdentifier:v51];

      goto LABEL_41;
    }

    v51 = 0;
    goto LABEL_40;
  }

LABEL_41:
  v103 = v47;
  v109 = 0;
  __chkstk_darwin(v39);
  *(&v94 - 4) = v40;
  *(&v94 - 24) = v104 & 1;
  *(&v94 - 2) = v21;
  *(&v94 - 1) = &v109;
  v95 = v52;
  v96 = sub_10007D6BC(sub_1001133A8, (&v94 - 6), v52);
  v53 = *(v21 + *(v36 + 28));
  aBlock[0] = &_swiftEmptyArrayStorage;
  v54 = v53[2];
  if (v54)
  {
    v94 = 0;
    v55 = 0;
    v50 = v53 + 5;
    while (v55 < v53[2])
    {
      v57 = *(v50 - 1);
      v56 = *v50;
      if (*v50)
      {
        if (v56 == 1)
        {
          sub_10010D42C(&OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___editModeDoneButton, sub_1001138C8, UIBarButtonSystemItemDone);
        }

        else
        {

          v58 = sub_10010D548();
          v59 = String._bridgeToObjectiveC()();
          [(objc_class *)v58 setTitle:v59, v94];
          sub_1001133CC(v57, v56);
        }
      }

      else
      {
        sub_10010D42C(&OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationDoneButton, sub_1001138AC, UIBarButtonSystemItemDone);
        sub_1001133CC(v57, 0);
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v55;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v50 += 2;
      v40 = v25;
      if (v54 == v55)
      {
        v60 = aBlock[0];
        v50 = v21;
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  v60 = &_swiftEmptyArrayStorage;
LABEL_54:
  v108[0] = 0;
  v61 = *(v50 + *(v105 + 32));
  v40 = v40;
  v55 = sub_1001133E0(v61, v108, v40);

  v53 = v106;
  if (v104)
  {
    v62 = v98;
    swift_storeEnumTagMultiPayload();
    v63 = sub_10010CB70(v62, v95);
    sub_100113710(v62, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v64 = [v53 additionalOverflowItems];
    if (v64)
    {

      if ((v63 & 1) == 0)
      {
        v65 = 0;
LABEL_60:
        [v53 setAdditionalOverflowItems:{v65, v94}];

        v34 = 1;
        goto LABEL_62;
      }
    }

    else if (v63)
    {
      v66 = objc_opt_self();
      v67 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100113708;
      aBlock[5] = v67;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10010C96C;
      aBlock[3] = &unk_100715FB0;
      v68 = _Block_copy(aBlock);

      v69 = [v66 elementWithUncachedProvider:v68];
      _Block_release(v68);
      v65 = v69;
      goto LABEL_60;
    }
  }

  v34 = 0;
LABEL_62:
  v70 = [v53 pinnedTrailingGroup];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 barButtonItems];

    sub_100003540(0, &qword_10076B800);
    v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v73 = &_swiftEmptyArrayStorage;
  }

  v74 = sub_100126584(v73, v60);

  if ((v74 & 1) == 0)
  {
    if (!(v60 >> 62))
    {
      if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_72:

        v77 = 0;
        goto LABEL_73;
      }

LABEL_69:
      v75 = objc_allocWithZone(UIBarButtonItemGroup);
      sub_100003540(0, &qword_10076B800);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v77 = [v75 initWithBarButtonItems:isa representativeItem:0];

LABEL_73:
      [v53 setPinnedTrailingGroup:{v77, v94}];

      v34 = 1;
      goto LABEL_74;
    }

LABEL_71:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

LABEL_74:
  v78 = [v53 trailingItemGroups];
  sub_100003540(0, &qword_10076C548);
  v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v78) = sub_100126598(v79, v96);

  if (v78)
  {
  }

  else
  {
    v80 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setTrailingItemGroups:v80];

    v34 = 1;
  }

  v81 = v103;
  v82 = [v53 hidesBackButton];
  if (v82 != v108[0])
  {
    [v53 setHidesBackButton:?];
    v34 = 1;
  }

  v83 = [v53 leftBarButtonItems];
  if (v83 && (v84 = v83, sub_100003540(0, &qword_10076B800), v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v84, , LOBYTE(v84) = sub_100126584(v85, v55), v81 = v103, , , (v84 & 1) != 0))
  {
  }

  else
  {
    sub_100003540(0, &qword_10076B800);
    v86 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setLeftBarButtonItems:v86];

    v34 = 1;
  }

  v87 = [v53 centerItemGroups];
  v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v87) = sub_100126598(v88, v81);

  if (v87)
  {
  }

  else
  {
    v89 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setCenterItemGroups:v89];

    v34 = 1;
  }

  v90 = v101;
  if (*&v40[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_timeZoneOverrideTipController])
  {
    v91 = v109;

    TTRITimeZoneOverrideTipController.visibleTimeZoneOverrideBarButton.setter();
  }

  v92 = v102;
  sub_1001137DC(v50, v102, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
  v99(v92, 0, 1, v105);
  swift_beginAccess();
  sub_100113698(v92, &v25[v90]);
  swift_endAccess();
  return v34;
}

id sub_100111E88(unsigned int a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        v4 = *(sub_10010F3AC() + 24);

        v5 = v4;
        if ((a1 & 0x10000) != 0)
        {
          v7 = 0x8000000100672730;
          v6 = 1734437958;
          v8 = 0xE400000000000000;
        }

        else
        {
          v6 = 0x67616C666E55;
          v7 = 0x8000000100672730;
          v8 = 0xE600000000000000;
        }

        v17 = 0xD000000000000022;
        TTRLocalizedString(_:comment:)(*&v6, *(&v7 - 1));
        v18 = String._bridgeToObjectiveC()();

        [v5 setTitle:v18];

        v19 = String._bridgeToObjectiveC()();
        v20 = [objc_opt_self() _systemImageNamed:v19];

        [v5 setImage:v20];
        [v5 setEnabled:(a1 >> 8) & 1];

        v10 = sub_1001121A0();

        return v10;
      }

      v2 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___locationBarButton;
      v3 = sub_10010EFB4;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___dueDateBarButton;
      v3 = sub_10010EBB8;
    }

LABEL_14:
    sub_10010FD50(v2, v3);
    if ((a1 & 0x100) != 0)
    {
      v9 = sub_100112E38();
    }

    else
    {
      v9 = sub_10011300C();
    }

    v10 = v9;

    return v10;
  }

  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v2 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___photoBarButton;
      v3 = sub_10010F574;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___hashtagBarButton;
      v3 = sub_10010F964;
    }

    goto LABEL_14;
  }

  if (a1 == 5)
  {
    v2 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___assigneeBarButton;
    v3 = sub_10010FDB8;
    goto LABEL_14;
  }

  v12 = (a1 >> 8) & 1;
  v13 = *(sub_100110230() + 24);

  v14 = v13;
  static TTRLocalizableStrings.Sections.addSectionActionText(listLayout:)();
  v15 = String._bridgeToObjectiveC()();

  [v14 setTitle:v15];

  [v14 setEnabled:v12];

  v16 = sub_1001121A0();

  return v16;
}

id sub_1001121A0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_100003540(0, &qword_10076C548);
    sub_100058000(&qword_10076B780);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10062D420;
    v4 = *(v0 + 24);
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = v0;
    v7 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

    v8 = *(v6 + 32);
    *(v6 + 32) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

void sub_100112374(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void **a5@<X4>, void *a6@<X8>)
{
  v65 = a6;
  v63 = a4;
  v64 = a5;
  LODWORD(v62) = a3;
  v66 = a2;
  v7 = type metadata accessor for TTRCollaborationDetailView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRSharedWithYouHighlight();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  __chkstk_darwin(v15);
  v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001137DC(a1, v17, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v21 = v64;
    v62 = v8;
    v63 = v12;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = sub_10010E890();
      }

      else
      {
        v19 = sub_10010E390();
      }

      goto LABEL_24;
    }

    if (!EnumCaseMultiPayload)
    {
      v22 = *v17;
      v23 = v17[1];
      v24 = v66;
      v25 = sub_100110448();
      v27 = v26;
      sub_10008C668(v22, v23, *(v28 + 40));

      v29 = v24 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton;
      v30 = *(v24 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton);
      v31 = v30;
      v32 = *v21;
      *v21 = v30;

      v33 = *(v29 + 8);
      v34 = *v29;
      v35 = v33;

      *v65 = v33;
      return;
    }

    v40 = *(v63 + 32);
    v41 = v14;
    v64 = v11;
    v40(v14, v17, v11);
    v42 = TTRSharedWithYouHighlight.itemProvider.getter();
    v43 = v66 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_collaborationBarButton;
    if (*(v66 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_collaborationBarButton) && (objc_opt_self(), (v44 = swift_dynamicCastObjCClass()) != 0) && (v45 = [v44 itemProvider]) != 0 && (v46 = v45, sub_100003540(0, &unk_10076C570), v47 = v42, v48 = static NSObject.== infix(_:_:)(), v46, v47, (v48 & 1) != 0))
    {

      (*(v63 + 8))(v41, v64);
    }

    else
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();
      TTRCollaborationDetailView.init(manageSharedListAction:)();
      v53 = [objc_allocWithZone(_SWCollaborationBarButtonItem) initWithItemProvider:v42];
      sub_100113B0C(&qword_10076C568, &type metadata accessor for TTRCollaborationDetailView);
      _SWCollaborationBarButtonItem.setDetailViewListContent<A>(_:)();
      [v53 ttr_hideManageButton];
      sub_100003540(0, &qword_10076C548);
      sub_100058000(&qword_10076B780);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10062D420;
      *(v54 + 32) = v53;
      v55 = v53;
      v56 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      (*(v62 + 8))(v10, v7);
      (*(v63 + 8))(v41, v64);
      v57 = *v43;
      v58 = *(v43 + 8);
      *v43 = v55;
      *(v43 + 8) = v56;
      sub_100037C04(v57, v58);
    }

    if (*v43)
    {
      v59 = *(v43 + 8);
      *v65 = v59;
      v60 = v59;
      return;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v19 = sub_10010DB74();
      goto LABEL_24;
    }

    v36 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___shareListBarButton;
    v37 = sub_1001138FC;
    v38 = 0x694C206572616853;
    v39 = 0xEA00000000007473;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v36 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___shareTemplateBarButton;
    v37 = sub_100113BBC;
    v38 = 0x6554206572616853;
    v39 = 0xEE006574616C706DLL;
LABEL_15:
    v19 = sub_10010DFCC(v36, v37, v38, v39);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 7)
  {
    if ((v62 & 1) == 0)
    {
      v19 = sub_10010E528();
LABEL_24:
      v52 = v20;

      goto LABEL_25;
    }

LABEL_30:
    *v65 = 0;
    return;
  }

  v49 = *(sub_100110230() + 24);

  v50 = v49;
  static TTRLocalizableStrings.Sections.addSectionActionText(listLayout:)();
  v51 = String._bridgeToObjectiveC()();

  [v50 setTitle:v51];

  v52 = sub_1001121A0();

LABEL_25:
  *v65 = v52;
}

uint64_t sub_1001129C8()
{
  v0 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
    v5 = result;
    swift_unknownObjectRetain();

    v6 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      (*(v7 + 64))(v4, &off_100713C08, 0, v2, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_1000079B4(v2, &unk_10076FCD0);
  }

  return result;
}

uint64_t sub_100112B38(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v3 = *(Strong + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
  v4 = Strong;
  swift_unknownObjectRetain();

  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v5 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(v3, &off_100713C08, ObjectType, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_6:
    preferredElementSize = &_swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v8 = [v7 children];

  sub_100003540(0, &qword_10076C550);
  preferredElementSize = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_7:
  sub_100003540(0, &unk_10076B890);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v10, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v15).super.super.isa;
  sub_100058000(&qword_10076B780);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D420;
  *(v12 + 32) = isa;
  v13 = isa;
  a1(v12);
}

uint64_t sub_100112D10()
{

  return swift_deallocClassInstance();
}

void sub_100112D74(void (*a1)(void *), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v7 = v4;
  if (v4)
  {
    v5 = [v4 children];
    sub_100003540(0, &qword_10076C550);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  a1(v6);
}

id sub_100112E38()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    sub_100003540(0, &qword_10076C548);
    sub_100058000(&qword_10076B780);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10062D420;
    v4 = *(v0 + 24);
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = v0;
    v7 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_10011300C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    sub_100003540(0, &qword_10076C548);
    sub_100058000(&qword_10076B780);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10062D420;
    v4 = *(v0 + 32);
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = v0;
    v7 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

    v8 = *(v6 + 48);
    *(v6 + 48) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_1001131E0()
{

  return swift_deallocClassInstance();
}

void destroy for TTRIBoardColumnDraggingAnimationCellBackgroundView.Fill(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for SingleBarButtonItemGroup(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationCellBackgroundView.Fill(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t sub_100113338(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076C538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001133CC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1001133E0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v26 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___redoBarButton;
  v27 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___undoBarButton;
  v5 = (a1 + 32);
  v6 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (v8 == 2)
    {
      *a2 = 1;
      sub_100058000(&qword_10076B780);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10062D420;
      *(v9 + 32) = sub_10010D42C(&OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___cancelModalPresentationBarButton, sub_100113844, UIBarButtonSystemItemCancel);
    }

    else
    {
      v10 = sub_10010D80C();
      [(objc_class *)v10 setEnabled:v7 & 1];

      v11 = sub_10010D9C0();
      [(objc_class *)v11 setEnabled:(v7 >> 8) & 1];

      sub_100058000(&qword_10076B780);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10062D410;
      v12 = *(a3 + v27);
      v13 = *(a3 + v26);
      *(v9 + 32) = v12;
      *(v9 + 40) = v13;
      v14 = v12;
      v15 = v13;
    }

    v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v6 >> 62;
    if (v6 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v25 + v16;
      if (__OFADD__(v25, v16))
      {
LABEL_25:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_25;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v17)
      {
        goto LABEL_17;
      }

      v21 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        if (!v16)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    else if (v17)
    {
LABEL_17:
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v6 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
    if (!v16)
    {
LABEL_3:

      goto LABEL_4;
    }

LABEL_19:
    if ((*(v21 + 24) >> 1) - *(v21 + 16) < v16)
    {
      break;
    }

    sub_100003540(0, &qword_10076B800);
    swift_arrayInitWithCopy();

    if (v16 >= 1)
    {
      v22 = *(v21 + 16);
      v23 = __OFADD__(v22, v16);
      v24 = v22 + v16;
      if (v23)
      {
        goto LABEL_29;
      }

      *(v21 + 16) = v24;
    }

LABEL_4:
    if (!--v3)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100113698(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076C538);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100113710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100113770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001137DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_100113914(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_10011395C(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
  }

  return result;
}

uint64_t sub_100113B0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100113BC0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076C5F0);
  v1 = sub_100003E30(v0, qword_10076C5F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100113C88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v9 + 496))(&v15, a1, a2, ObjectType, v9);
  if (v16)
  {
    sub_100005FD0(&v15, v17);
    v11 = v18;
    v12 = v19;
    sub_10000C36C(v17, v18);
    (*(v12 + 8))(v11, v12);
    v13 = sub_100116FF0(v8);
    sub_100117528(v8);
    sub_100004758(v17);
  }

  else
  {
    sub_1000079B4(&v15, &qword_100775A10);
    return 0;
  }

  return v13;
}

void *sub_100113DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v164 = a2;
  v7 = sub_100058000(&qword_100775780);
  __chkstk_darwin(v7 - 8);
  v161 = &v140 - v8;
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v147 = &v140 - v10;
  v11 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v151 = *(v11 - 8);
  __chkstk_darwin(v11);
  v150 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for TTRRemindersListBatchReminderCreationParams();
  v149 = *(v153 - 8);
  __chkstk_darwin(v153);
  v148 = (&v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&qword_10076C6F0);
  __chkstk_darwin(v14 - 8);
  *&v152 = &v140 - v15;
  v156 = type metadata accessor for TTRRemindersListTargetContainer();
  v154 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v159 = &v140 - v21;
  v22 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v22 - 8);
  v24 = (&v140 - v23);
  v25 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v25);
  v27 = &v140 - v26;
  v160 = type metadata accessor for TTRRemindersListViewModel.Item();
  v162 = *(v160 - 8);
  __chkstk_darwin(v160);
  v163 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v158 = &v140 - v30;
  v31 = sub_100058000(&qword_10076C700);
  __chkstk_darwin(v31 - 8);
  v33 = &v140 - v32;
  v165 = sub_100058000(&unk_100775620);
  __chkstk_darwin(v165);
  v35 = &v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  if (a3 < 1)
  {
    return 0;
  }

  v140 = a3;
  v141 = v11;
  v146 = &v140 - v37;
  v157 = v38;
  v39 = *(a4 + 16);
  v40 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  v42 = *(v40 + 496);
  v144 = v39;
  v143 = ObjectType;
  v145 = v40;
  v42(&v169, a1, v164);
  if (v170)
  {
    sub_100005FD0(&v169, &v172);
    v43 = v173;
    v44 = v174;
    sub_10000C36C(&v172, v173);
    (*(v44 + 32))(&v169, _swiftEmptyArrayStorage, v43, v44);
    v45 = v170;
    v46 = v171;
    sub_10000C36C(&v169, v170);
    (*(v46 + 24))(v45, v46);
    v47 = v157;
    v48 = v165;
    if ((*(v157 + 48))(v33, 1, v165) == 1)
    {
      sub_1000079B4(v33, &qword_10076C700);
LABEL_5:
      sub_100004758(&v169);
LABEL_28:
      sub_100004758(&v172);
      return 0;
    }

    v164 = a4;
    v49 = v146;
    (*(v47 + 32))(v146, v33, v48);
    sub_100004758(&v169);
    v50 = v173;
    v51 = v174;
    sub_10000C36C(&v172, v173);
    (*(v51 + 16))(v50, v51);
    v52 = sub_100058000(&qword_10076C708);
    if ((*(*(v52 - 8) + 48))(v24, 1, v52) == 1)
    {
      (*(v47 + 8))(v49, v165);
      v53 = &qword_10076C6F8;
      v54 = v24;
LABEL_27:
      sub_1000079B4(v54, v53);
      goto LABEL_28;
    }

    v55 = *(v24 + *(v52 + 48));
    v56 = *(v25 + 48);
    v57 = v162;
    v58 = *(v162 + 32);
    v59 = v24;
    v60 = v160;
    v58(v27, v59, v160);
    *&v27[v56] = v55;
    v142 = *&v27[*(v25 + 48)];
    v61 = v158;
    v58(v158, v27, v60);
    v62 = v173;
    v63 = v174;
    sub_10000C36C(&v172, v173);
    v64 = v159;
    (*(v63 + 8))(v62, v63);
    sub_100117584(v64, v19, type metadata accessor for TTRRemindersListReminderActionTarget);
    v65 = v152;
    sub_10057DDC0(v19, v152);
    v66 = v154;
    v67 = v156;
    if ((*(v154 + 48))(v65, 1, v156) == 1)
    {
      sub_100117528(v64);
      (*(v57 + 8))(v61, v60);
      (*(v157 + 8))(v146, v165);
      v53 = &qword_10076C6F0;
      v54 = v65;
      goto LABEL_27;
    }

    (*(v66 + 32))(v155, v65, v67);
    v68 = *(v164 + 32);
    v69 = swift_getObjectType();
    v70 = v148;
    *v148 = v140;
    v71 = v149;
    v149[13](v70, enum case for TTRRemindersListBatchReminderCreationParams.count(_:), v153);
    (*(v157 + 16))(v35, v146, v165);
    v72 = v150;
    TTRRemindersListReminderInsertionPosition.init(relativePosition:)();
    (*(v145 + 408))(v143);
    dispatch thunk of TTRRemindersListInteractorType.newReminderChangeItems(params:targetContainer:position:remindersBeingSaved:)();

    (*(v151 + 8))(v72, v141);
    (v71[1])(v70, v153);
    if (!v168)
    {
      (*(v66 + 8))(v155, v156);
      sub_100117528(v159);
      (*(v162 + 8))(v158, v160);
      (*(v157 + 8))(v146, v165);
      v53 = &qword_10076C710;
      v54 = &v167;
      goto LABEL_27;
    }

    sub_100005FD0(&v167, &v169);
    sub_10000C36C(&v169, v170);
    v73 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
    v74 = v73;
    v151 = v73 >> 62;
    if (v73 >> 62)
    {
      goto LABEL_83;
    }

    for (i = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v76 = v164;
      v153 = i;
      if (i)
      {
        v166 = _swiftEmptyArrayStorage;
        sub_1004A1EBC(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v77 = 0;
        v78 = v166;
        v70 = v74 & 0xC000000000000001;
        v152 = xmmword_10062D420;
        do
        {
          if (v70)
          {
            v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v79 = *(v74 + 8 * v77 + 32);
          }

          v80 = v79;
          sub_100058000(&qword_10076B780);
          v81 = swift_allocObject();
          *(v81 + 16) = v152;
          *(v81 + 32) = v80;
          v82 = v80;
          dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();

          v166 = v78;
          v84 = v78[2];
          v83 = v78[3];
          if (v84 >= v83 >> 1)
          {
            sub_1004A1EBC((v83 > 1), v84 + 1, 1);
            v78 = v166;
          }

          ++v77;
          v78[2] = v84 + 1;
          sub_100005FD0(&v167, &v78[5 * v84 + 4]);
        }

        while (v153 != v77);

        v76 = v164;
      }

      if (v151)
      {
        v85 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v85 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = v155;
      v69 = v159;
      v88 = v162;
      v89 = _swiftEmptyArrayStorage;
      if (!v85)
      {
LABEL_47:
        v96 = *(v88 + 16);
        v97 = v147;
        v98 = v160;
        v150 = (v88 + 16);
        v149 = v96;
        (v96)(v147, v158, v160);
        (*(v88 + 56))(v97, 0, 1, v98);
        v99 = sub_1003E0588(v89);

        v70 = (*(v145 + 392))(v97, v99, v143);

        sub_1000079B4(v97, &qword_100772140);
        if (*(v70 + 16) == v153)
        {

          v100 = v70;
          v101 = *(v70 + 16);
          v143 = v100;
          if (v101)
          {
            v148 = *(v76 + 48);
            v102 = v100 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
            v147 = "editingPresenter";
            v145 = *(v162 + 72);
            v86 = _swiftEmptyArrayStorage;
            v144 = (v162 + 8);
            v103 = v160;
            while (1)
            {
              (v149)(v163, v102, v103);
              *&v167 = 0;
              *(&v167 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(31);
              v105 = _typeName(_:qualified:)();
              v107 = v106;

              *&v167 = v105;
              *(&v167 + 1) = v107;
              v108._object = (v147 | 0x8000000000000000);
              v108._countAndFlagsBits = 0xD00000000000001DLL;
              String.append(_:)(v108);
              v151 = v167;
              *&v152 = *(v148[8] + 64);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (!Strong)
              {
                goto LABEL_56;
              }

              v110 = Strong;
              if (!swift_unknownObjectWeakLoadStrong())
              {
                break;
              }

              v111 = *(v110 + 24);
              v112 = swift_getObjectType();
              v113 = sub_1001175F4(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
              v114 = *(v111 + 48);
              v115 = v161;
              v116 = v112;
              v69 = v159;
              v117 = v111;
              v103 = v160;
              v114(v110, v113, v116, v117);
              swift_unknownObjectRelease();
              v118 = v115;
              swift_unknownObjectRelease();
LABEL_57:
              sub_1001175F4(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider);

              v120 = v163;
              v121 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();

              sub_1000079B4(v118, &qword_100775780);
              (*v144)(v120, v103);

              if (v121)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v86 = sub_100547450(0, v86[2] + 1, 1, v86);
                }

                v123 = v86[2];
                v122 = v86[3];
                v104 = v162;
                if (v123 >= v122 >> 1)
                {
                  v125 = sub_100547450((v122 > 1), v123 + 1, 1, v86);
                  v104 = v162;
                  v86 = v125;
                }

                v86[2] = v123 + 1;
                v124 = &v86[2 * v123];
                v124[4] = v121;
                v124[5] = &protocol witness table for TTRRemindersListConcreteEditingSession;
              }

              else
              {
                v104 = v162;
              }

              v102 += v145;
              if (!--v101)
              {
                goto LABEL_69;
              }
            }

            swift_unknownObjectRelease();
LABEL_56:
            v119 = type metadata accessor for TTRRemindersListUndoContext();
            v118 = v161;
            (*(*(v119 - 8) + 56))(v161, 1, 1, v119);
            goto LABEL_57;
          }

          v86 = _swiftEmptyArrayStorage;
          v103 = v160;
          v104 = v162;
LABEL_69:
          if (v153 == v86[2])
          {
            v132 = v104;

            (*(v154 + 8))(v155, v156);
            sub_100117528(v69);
            (*(v132 + 8))(v158, v103);
            (*(v157 + 8))(v146, v165);
            sub_100004758(&v169);
            sub_100004758(&v172);
            return v86;
          }

          v133 = v143;
          if (qword_100766F20 != -1)
          {
            swift_once();
          }

          v134 = type metadata accessor for Logger();
          sub_100003E30(v134, qword_10076C5F0);

          v135 = Logger.logObject.getter();
          v136 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            *v137 = 134218240;
            v138 = *(v133 + 16);

            *(v137 + 4) = v138;

            *(v137 + 12) = 2048;
            v139 = v86[2];

            *(v137 + 14) = v139;

            _os_log_impl(&_mh_execute_header, v135, v136, "editingSessions count not matching items count {items: %ld, editingSessions: %ld}", v137, 0x16u);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v154 + 8))(v155, v156);
          sub_100117528(v69);
          (*(v162 + 8))(v158, v103);
LABEL_80:
          (*(v157 + 8))(v146, v165);
          goto LABEL_5;
        }

        if (qword_100766F20 == -1)
        {
LABEL_64:
          v126 = type metadata accessor for Logger();
          sub_100003E30(v126, qword_10076C5F0);

          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            *v129 = 134218240;
            v130 = *(v70 + 16);

            *(v129 + 4) = v130;

            *(v129 + 12) = 2048;
            if (v151)
            {
              v131 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v131 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v129 + 14) = v131;

            _os_log_impl(&_mh_execute_header, v127, v128, "items count not matching reminderChangeItems count {items: %ld, reminderChangeItems: %ld}", v129, 0x16u);

            v68 = v155;
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v154 + 8))(v68, v156);
          sub_100117528(v69);
          (*(v162 + 8))(v158, v160);
          goto LABEL_80;
        }

LABEL_86:
        swift_once();
        goto LABEL_64;
      }

      *&v167 = _swiftEmptyArrayStorage;
      v68 = v85 & ~(v85 >> 63);

      sub_1004A1E7C(0, v68, 0);
      if (v85 < 0)
      {
        goto LABEL_85;
      }

      v89 = v167;
      if (v151)
      {
        v90 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v90 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = 0;
      v69 = v90 & ~(v90 >> 63);
      while (v69 != v68)
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v91 = *(v74 + 8 * v68 + 32);
        }

        v70 = v142 + v68;
        if (__OFADD__(v142, v68))
        {
          goto LABEL_82;
        }

        *&v167 = v89;
        v93 = v89[2];
        v92 = v89[3];
        if (v93 >= v92 >> 1)
        {
          v95 = v91;
          sub_1004A1E7C((v92 > 1), v93 + 1, 1);
          v91 = v95;
          v89 = v167;
        }

        ++v68;
        v89[2] = v93 + 1;
        v94 = &v89[2 * v93];
        v94[4] = v91;
        v94[5] = v70;
        v76 = v164;
        if (v85 == v68)
        {

          v68 = v155;
          v69 = v159;
          v88 = v162;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      ;
    }
  }

  sub_1000079B4(&v169, &qword_100775A10);
  return 0;
}

uint64_t sub_1001154CC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v34 = a3;
  v35 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_10076C5F0);
  (*(v8 + 16))(v10, a2, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    ObjectType = v11;
    v17 = v16;
    v37[0] = v16;
    *v15 = 136315138;
    sub_1001175F4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v18 = TTRTreeStorageItem.treeItemDescription.getter();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_100004060(v18, v20, v37);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "performDrop: Loaded contents for uncommitted reminder {item: %s}", v15, 0xCu);
    sub_100004758(v17);
    v11 = ObjectType;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  ObjectType = swift_getObjectType();
  dispatch thunk of TTRRemindersListEditingSession.attributeEditor.getter();
  sub_10000C36C(v37, v37[3]);
  sub_100058000(&qword_10076B780);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = v11;
  v23 = v11;
  dispatch thunk of TTRRemindersListAttributeEditing.addAttributes(from:isForNewReminder:)();

  sub_100004758(v37);
  sub_100058000(&qword_10076C6E0);
  v24 = v33;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10062D3F0;
  static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
  static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
  v37[0] = v25;
  sub_1001175F4(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
  sub_100058000(&qword_10076C6E8);
  sub_10011763C(&unk_1007756C0, &qword_10076C6E8);
  v26 = v32;
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of TTRRemindersListEditingSession.setNeedsDisplay(_:)();
  (*(v24 + 8))(v26, v27);
  v37[0] = v23;
  sub_100058000(&qword_10076C6C0);
  swift_allocObject();
  v28 = v23;
  return Promise.init(value:)();
}

void sub_1001159C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_10076C5F0);
  (*(v4 + 16))(v6, a2, v3);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_100004060(v11, v12, &v19);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_1001175F4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v14 = TTRTreeStorageItem.treeItemDescription.getter();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_100004060(v14, v16, &v19);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "performDrop: failed to load contents. Will delete uncommitted reminder {error: %s, item: %s}", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }
}

void sub_100115C94(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditingSessionFinishingOption();
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v8 = 0;
    v13 = *a1;
    v11 = (v5 + 8);
    v12 = v13 + 32;
    v9 = a2 + 40;
    while (v8 < *(v13 + 16))
    {
      if (*(v12 + 8 * v8))
      {
        v16 = _swiftEmptyArrayStorage;
        v15 = sub_1001175F4(&qword_10076C6D0, &type metadata accessor for TTRRemindersListEditingSessionFinishingOption);
        swift_unknownObjectRetain();
        sub_100058000(&unk_1007756D0);
        sub_10011763C(&qword_10076C6D8, &unk_1007756D0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
        static TTRRemindersListEditingSessionFinishingOption.markedForDeletion.getter();
      }

      ++v8;
      swift_getObjectType();
      dispatch thunk of TTRRemindersListEditingSession.finish(options:)();
      swift_unknownObjectRelease();
      (*v11)(v7, v4);
      v9 += 16;
      if (v14 == v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100115EC0(void **a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_10076C5F0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[1] = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23[0] = v9;
    v16 = v15;
    v24 = v15;
    *v14 = 136315138;
    sub_1001175F4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v17 = TTRTreeStorageItem.treeItemDescription.getter();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_100004060(v17, v19, &v24);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "performDrop(into:): Loaded contents to be added to item {item: %s}", v14, 0xCu);
    sub_100004758(v16);
    v9 = v23[0];
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v24 = v9;
  sub_100058000(&qword_10076C6C0);
  swift_allocObject();
  v21 = v9;
  return Promise.init(value:)();
}

void sub_100116184()
{
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10076C5F0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = sub_100004060(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "performDrop(into:): Failed to load contents. Nothing to add to existing reminder {error: %s}", v2, 0xCu);
    sub_100004758(v3);
  }

  else
  {
  }
}

uint64_t sub_10011631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100058000(&qword_10076C718);
  type metadata accessor for TTRRemindersListImportedContent();
  sub_10011763C(&qword_10076C720, &qword_10076C718);
  v4 = Sequence.removingNils<A>()();
  sub_1001163D4(v4, a3);
}

uint64_t sub_1001163D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v19 = 0;
  type metadata accessor for TTRRemindersListImportedContent();
  static TTRRemindersListImportedContent.undoActionNameForApplyToExistingReminder(_:)();
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();

  (*(v7 + 16))(&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = &v19;
  *(v12 + 24) = v3;
  (*(v7 + 32))(v12 + v11, &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100117690;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100026410;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100716410;
  v14 = _Block_copy(aBlock);

  [v9 withActionName:v10 block:v14];

  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v16 = v19;

    return v16 > 0;
  }

  return result;
}

uint64_t sub_10011667C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v9 + 512))(&v15, a1, a2, ObjectType, v9);
  if (v16)
  {
    sub_100005FD0(&v15, v17);
    v11 = v18;
    v12 = v19;
    sub_10000C36C(v17, v18);
    (*(v12 + 16))(v11, v12);
    v13 = sub_100116FF0(v8);
    sub_100117528(v8);
    sub_100004758(v17);
  }

  else
  {
    sub_1000079B4(&v15, &qword_10076C6C8);
    return 0;
  }

  return v13;
}

uint64_t sub_1001167C4(void **a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v37 - v8;
  v9 = sub_100058000(&qword_10076C6B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for DateComponents();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  __chkstk_darwin(v14);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_10076C5F0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "performDropToMatchAttributes: Loaded contents", v21, 2u);
  }

  sub_10000C36C(a2, a2[3]);
  sub_100058000(&qword_10076B780);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = v17;
  v23 = v17;
  dispatch thunk of TTRRemindersListAttributeEditing.addAttributes(from:isForNewReminder:)();

  sub_100117584(v45, v16, type metadata accessor for TTRRemindersListMatchedAttributeValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10000C36C(a2, a2[3]);
      dispatch thunk of TTRRemindersListAttributeEditing.setFlagged(_:)();
    }

    else
    {
      v32 = v38;
      v31 = v39;
      v33 = v40;
      (*(v39 + 32))(v38, v16, v40);
      sub_10000C36C(a2, a2[3]);
      (*(v31 + 16))(v11, v32, v33);
      (*(v31 + 56))(v11, 0, 1, v33);
      TTRRemindersListAttributeEditing.setDueDate(_:)();
      sub_1000079B4(v11, &qword_10076C6B8);
      (*(v31 + 8))(v32, v33);
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v34 = *v16;
    sub_10000C36C(a2, a2[3]);
    dispatch thunk of TTRRemindersListAttributeEditing.edit(toMatch:)();

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_18:
    v46 = v23;
    sub_100058000(&qword_10076C6C0);
    swift_allocObject();
    v35 = v23;
    return Promise.init(value:)();
  }

  v45 = v23;
  v26 = v43;
  v25 = v44;
  v27 = v41;
  (*(v43 + 32))(v41, v16, v44);
  v28 = v42;
  (*(v26 + 16))(v42, v27, v25);
  v29 = (*(v26 + 88))(v28, v25);
  if (v29 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v26 + 96))(v28, v25);

    v40 = *(sub_100058000(&qword_10076B830) + 64);
    sub_10000C36C(a2, a2[3]);
    dispatch thunk of TTRRemindersListAttributeEditing.updateHashtags(toMatchLabels:)();

    (*(v26 + 8))(v27, v25);
    v30 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v30 - 8) + 8))(&v28[v40], v30);
LABEL_17:
    v23 = v45;
    goto LABEL_18;
  }

  if (v29 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v29 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    (*(v26 + 8))(v27, v25);
    goto LABEL_17;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_100116E20(uint64_t a1, void *a2)
{
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_10076C5F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100004060(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "performDropToMatchAttributes: Failed to load contents. Will delete reminderChangeItem {error: %s}", v6, 0xCu);
    sub_100004758(v7);
  }

  return [a2 removeFromList];
}

uint64_t sub_100116FF0(uint64_t a1)
{
  v2 = type metadata accessor for TTRSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100117584(a1, v11, type metadata accessor for TTRRemindersListReminderActionTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return 0;
    }

    if (EnumCaseMultiPayload == 1)
    {
      return *v11;
    }

    v15 = *v11;
    v13 = [*v11 list];

    return v13;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100117528(v11);
      swift_getObjectType();
      return dispatch thunk of TTRRemindersListInteractorType.fetchDefaultList()();
    }

    else
    {
      v13 = *(v11 + 1);
    }

    return v13;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v14 = *(v11 + 1);
    v13 = *(v11 + 2);

    return v13;
  }

  (*(v3 + 32))(v8, v11, v2);
  (*(v3 + 16))(v5, v8, v2);
  v16 = (*(v3 + 88))(v5, v2);
  if (v16 == enum case for TTRSection.listSection(_:))
  {
    (*(v3 + 96))(v5, v2);
    v17 = *v5;
    v13 = [v17 list];

    (*(v3 + 8))(v8, v2);
    return v13;
  }

  if (v16 == enum case for TTRSection.smartListSection(_:))
  {
    v18 = *(v3 + 8);
    v18(v5, v2);
    swift_getObjectType();
    v13 = dispatch thunk of TTRRemindersListInteractorType.fetchDefaultList()();
    v18(v8, v2);
    return v13;
  }

  if (v16 == enum case for TTRSection.templateSection(_:))
  {
    v19 = *(v3 + 8);
    v19(v8, v2);
    v19(v5, v2);
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10011736C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 48);
  sub_100058000(&qword_100772150);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10062D400;
  (*(v9 + 16))(v11 + v10, a3, v8);

  v12 = sub_1004F74D8(v11, v7, a4);

  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  result = swift_deallocClassInstance();
  *a1 = v12;
  return result;
}

uint64_t sub_1001174BC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100117528(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100117584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001175F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10011763C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100117690()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10011736C(v3, v4, v0 + v2, v5);
}

uint64_t REMCustomSmartListFilterDescriptor.humanReadableDescription.getter()
{
  v0 = REMCustomSmartListFilterDescriptor.enabledFilterCount.getter();
  _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO22enabledFiltersSubtitle5countSSSi_tFZ_0(v0);
  v1 = objc_allocWithZone(NSAttributedString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  v4 = [v3 string];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

id REMCustomSmartListFilterDescriptor.attributedHumanReadableDescription.getter()
{
  v0 = REMCustomSmartListFilterDescriptor.enabledFilterCount.getter();
  _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO22enabledFiltersSubtitle5countSSSi_tFZ_0(v0);
  v1 = objc_allocWithZone(NSAttributedString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  return v3;
}

void *assignWithCopy for TTRIAccountsListsPresentationTree(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t sub_1001178B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTRAccountsListsViewModel();
  swift_allocObject();
  result = TTRAccountsListsViewModel.init()();
  *a1 = result;
  a1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_1001178F8(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100117960()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001179C4()
{
  sub_10003B788(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TTRSmartListFilterEditorInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIDebouncedHoverAction.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100117B50;
}

void sub_100117B50(uint64_t a1, char a2)
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

uint64_t TTRIDebouncedHoverAction.__allocating_init(_:handlerQueue:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100767510);
  swift_allocObject();
  *(v4 + 48) = PassthroughSubject.init()();
  *(v4 + 56) = 0;
  *(v4 + 40) = a2;
  *(v4 + 32) = a1;
  return v4;
}

uint64_t TTRIDebouncedHoverAction.init(_:handlerQueue:)(uint64_t a1, double a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100767510);
  swift_allocObject();
  *(v2 + 48) = PassthroughSubject.init()();
  *(v2 + 56) = 0;
  *(v2 + 40) = a2;
  *(v2 + 32) = a1;
  return v2;
}

uint64_t sub_100117CEC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100058000(&qword_10076C938);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076C940);
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_100058000(&qword_10076C948);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = sub_100058000(&qword_10076C950);
  result = __chkstk_darwin(v15);
  if (!v1[7])
  {
    v33 = &v28 - v17;
    v34 = v12;
    v43 = v1[6];
    v36 = result;
    v37 = v18;

    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v35 = v2;
    v42 = v1[4];
    v19 = v42;
    v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v20 = *(v31 - 8);
    v30 = *(v20 + 56);
    v32 = v20 + 56;
    v30(v5, 1, 1, v31);
    v21 = v19;
    v28 = v9;
    v29 = v21;
    sub_100058000(&qword_100767510);
    sub_1000A96A0();
    sub_10000E188(&qword_10076C958, &qword_100767510);
    sub_1001184EC();
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_100118544(v5);
    (*(v39 + 8))(v8, v40);

    sub_10000E188(&qword_10076C968, &qword_10076C940);
    v22 = v28;
    Publisher.drop(while:)();
    (*(v41 + 8))(v11, v22);
    v23 = v29;
    v43 = v29;
    v30(v5, 1, 1, v31);
    sub_10000E188(&qword_10076C970, &qword_10076C948);
    v25 = v33;
    v24 = v34;
    Publisher.receive<A>(on:options:)();
    sub_100118544(v5);

    (*(v38 + 8))(v14, v24);
    sub_10000E188(&qword_10076C978, &qword_10076C950);
    v26 = v36;
    v27 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v37 + 8))(v25, v26);
    v1[7] = v27;
  }

  return result;
}

Swift::Void __swiftcall TTRIDebouncedHoverAction.cancel()()
{
  if (*(v0 + 56))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + 56) = 0;
}

uint64_t sub_100118344(uint64_t result, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v2 = result;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v2, ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t TTRIDebouncedHoverAction.deinit()
{
  sub_10003B788(v0 + 16);

  return v0;
}

uint64_t TTRIDebouncedHoverAction.__deallocating_deinit()
{
  sub_10003B788(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_100118498()
{
  result = qword_10076C930;
  if (!qword_10076C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076C930);
  }

  return result;
}

unint64_t sub_1001184EC()
{
  result = qword_10076C960;
  if (!qword_10076C960)
  {
    sub_1000A96A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076C960);
  }

  return result;
}

uint64_t sub_100118544(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076C938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001185AC(uint64_t a1)
{
  v3 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077C040);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_100058000(&qword_10076C9F8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  v15 = *(v11 + 56);
  v21 = a1;
  sub_10011B554(a1, v13);
  sub_10011B554(v1 + v14, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_1000079B4(v13, &unk_10077C040);
    }

    goto LABEL_6;
  }

  sub_10011B554(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_1000079B4(v13, &qword_10076C9F8);
LABEL_7:
    swift_beginAccess();
    sub_10011B5C4(v21, v1 + v14);
    swift_endAccess();
    return [v1 setNeedsUpdateConfiguration];
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_10011B634();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_1000079B4(v13, &unk_10077C040);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100118A74(uint64_t a1)
{
  v2 = sub_100058000(&unk_10077C040);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  if (qword_100766F28 != -1)
  {
    swift_once();
  }

  v5 = qword_10076C980;
  sub_10011B554(a1, v4);
  v6 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v8 = v5;
  if (v7 == 1)
  {
    sub_1000079B4(v4, &unk_10077C040);
LABEL_6:
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  UICellConfigurationState.subscript.setter();
  return sub_1000079B4(a1, &unk_10077C040);
}

uint64_t sub_100118BFC(char *a1)
{
  v2 = v1;
  v79 = a1;
  v3 = type metadata accessor for TTRRemindersListLayout();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10077C040);
  __chkstk_darwin(v9 - 8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v70 - v17;
  sub_100119444();
  static UIListContentConfiguration.cell()();
  v19 = type metadata accessor for UICellConfigurationState();
  v81 = v19;
  v82 = &protocol witness table for UICellConfigurationState;
  v20 = sub_1000317B8(v80);
  (*(*(v19 - 8) + 16))(v20, v79, v19);
  v79 = v18;
  UIListContentConfiguration.updated(for:)();
  v75 = v13;
  v21 = *(v13 + 8);
  v77 = v13 + 8;
  v78 = v12;
  v76 = v21;
  v21(v16, v12);
  sub_100004758(v80);
  v22 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(&v2[v22], v11);
  v72 = v7;
  v23 = *(v7 + 48);
  v24 = v6;
  LODWORD(v19) = v23(v11, 1, v6);
  sub_1000079B4(v11, &unk_10077C040);
  if (v19 == 1 || (v25 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField, ([*&v2[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField] isEditing] & 1) != 0))
  {
    v26 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_currentLayout;
    swift_beginAccess();
    v28 = v73;
    v27 = v74;
    (*(v73 + 16))(v5, &v2[v26], v74);
    static TTRLocalizableStrings.Sections.hideEmpty(listLayout:)();
    (*(v28 + 8))(v5, v27);
    v29 = v79;
    UIListContentConfiguration.text.setter();
    [*&v2[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField] setUserInteractionEnabled:0];
    goto LABEL_4;
  }

  v38 = *&v2[v25];
  swift_beginAccess();
  if (v23(&v2[v22], 1, v6))
  {
    swift_endAccess();
    v39 = v38;
    v40 = 0;
  }

  else
  {
    v41 = v38;
    TTREditSectionsViewModel.SectionItem.displayName.getter();
    swift_endAccess();
    v40 = String._bridgeToObjectiveC()();
  }

  v29 = v79;
  [v38 setText:v40];

  UIListContentConfiguration.text.setter();
  if (!v23(&v2[v22], 1, v6))
  {
    v42 = v2;
    v44 = v71;
    v43 = v72;
    (*(v72 + 16))(v71, &v42[v22], v24);
    v45 = TTREditSectionsViewModel.SectionItem.isEmptySection.getter();
    v46 = v43;
    v2 = v42;
    (*(v46 + 8))(v44, v24);
    if (v45)
    {
      v47 = *&v42[v25];
      v48 = objc_opt_self();
      v49 = v47;
      v50 = [v48 grayColor];
      [v49 setTextColor:v50];
    }
  }

  if (!v23(&v2[v22], 1, v24))
  {
    v51 = v2;
    v52 = v72;
    v53 = &v51[v22];
    v54 = v71;
    (*(v72 + 16))(v71, v53, v24);
    v55 = TTREditSectionsViewModel.SectionItem.canonicalName.getter();
    v57 = v56;
    (*(v52 + 8))(v54, v24);
    v2 = v51;
    if (v57)
    {
      v58 = [*&v51[v25] text];
      if (v58)
      {
        v59 = v58;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        if (v55 == v60 && v57 == v62)
        {

          goto LABEL_19;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63)
        {
LABEL_19:

          v64 = [v51 contentView];
          v65 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField;
          v66 = *&v2[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField];
          sub_100003540(0, &qword_10076B020);
          v67 = v66;
          v68 = UIFocusEnvironment.contains(_:)();

          if (v68)
          {
            [*&v2[v65] removeFromSuperview];
            sub_100119D6C();
          }

          goto LABEL_4;
        }
      }

      v69 = static TTRLocalizableStrings.Sections.sectionsCanonicalName(name:)();

      [*&v51[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField] setAttributedText:v69];
    }
  }

LABEL_4:
  sub_100003540(0, &qword_100771DF0);
  static UIFont.roundedBodyFont.getter();
  v30 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  result = v30(v80, 0);
  v32 = *&v2[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView];
  if (v32)
  {
    v33 = v78;
    v81 = v78;
    v82 = &protocol witness table for UIListContentConfiguration;
    v34 = sub_1000317B8(v80);
    (*(v75 + 16))(v34, v29, v33);
    v35 = v32;
    UIListContentView.configuration.setter();

    v36 = [v2 contentView];
    [v36 directionalLayoutMargins];
    [v36 setDirectionalLayoutMargins:15.0];

    v37 = [v2 contentView];
    [v37 directionalLayoutMargins];
    [v37 setDirectionalLayoutMargins:?];

    return v76(v29, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100119444()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v2 - 8);
  sub_100003540(0, &qword_100785420);
  static UIListContentConfiguration.cell()();
  v3 = UIListContentView.init(configuration:)();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 contentView];
  [v4 addSubview:v3];

  v5 = *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView];
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView] = v3;
  v6 = v3;

  v7 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10062D450;
  v9 = [v6 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v8 + 32) = v12;
  v13 = [v6 leadingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v8 + 40) = v16;
  v17 = [v6 bottomAnchor];
  v18 = [v1 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v8 + 48) = v20;
  v21 = [v6 trailingAnchor];

  v22 = [v1 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v8 + 56) = v24;
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v68 = v7;
  [v7 activateConstraints:isa];

  v26 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
  v27 = *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField];
  sub_100003540(0, &qword_100771DF0);
  v28 = v27;
  v29 = static UIFont.roundedBodyFont.getter();
  [v28 setFont:v29];

  [*&v1[v26] setClearButtonMode:1];
  [*&v1[v26] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v26] setAdjustsFontSizeToFitWidth:0];
  [*&v1[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v1 contentView];
  [v30 addSubview:*&v1[v26]];

  v31 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField;
  [*&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v31] setAdjustsFontSizeToFitWidth:0];
  [*&v1[v31] setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = *&v1[v31];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 grayColor];
  [v34 setTextColor:v35];

  v36 = [v1 contentView];
  [v36 addSubview:*&v1[v31]];

  v37 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints;
  if (*&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints])
  {

    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v68 deactivateConstraints:v38];

    *&v1[v37] = 0;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1006308D0;
  v40 = [*&v1[v26] topAnchor];
  v41 = [v1 contentView];
  v42 = [v41 topAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:5.0];
  *(v39 + 32) = v43;
  v44 = [*&v1[v26] leadingAnchor];
  v45 = [v1 contentView];
  v46 = [v45 leadingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:20.0];
  *(v39 + 40) = v47;
  v48 = [*&v1[v26] bottomAnchor];
  v49 = [*&v1[v31] topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v39 + 48) = v50;
  v51 = [*&v1[v26] trailingAnchor];
  v52 = [v1 contentView];
  v53 = [v52 trailingAnchor];

  v54 = [v51 constraintEqualToAnchor:v53 constant:-10.0];
  *(v39 + 56) = v54;
  v55 = [*&v1[v31] leadingAnchor];
  v56 = [v1 contentView];
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57 constant:20.0];
  *(v39 + 64) = v58;
  v59 = [v1 contentView];
  v60 = [v59 bottomAnchor];

  v61 = [*&v1[v31] bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:5.0];

  *(v39 + 72) = v62;
  v63 = [*&v1[v31] trailingAnchor];
  v64 = [v1 contentView];
  v65 = [v64 trailingAnchor];

  v66 = [v63 constraintEqualToAnchor:v65 constant:-10.0];
  *(v39 + 80) = v66;
  *&v1[v37] = v39;

  v67 = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:v67];
}

uint64_t sub_100119D6C()
{
  v1 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints;
  if (*&v0[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints])
  {
    v2 = objc_opt_self();
    sub_100003540(0, &qword_10076BAD0);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 deactivateConstraints:isa];

    *&v0[v1] = 0;
  }

  sub_100058000(&qword_10076B780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10062D450;
  v5 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
  v6 = [*&v0[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField] topAnchor];
  v7 = [v0 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:5.0];
  *(v4 + 32) = v9;
  v10 = [*&v0[v5] leadingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 leadingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:20.0];
  *(v4 + 40) = v13;
  v14 = [*&v0[v5] bottomAnchor];
  v15 = [v0 contentView];
  v16 = [v15 bottomAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:-5.0];
  *(v4 + 48) = v17;
  v18 = [*&v0[v5] trailingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:-10.0];
  *(v4 + 56) = v21;
  v22 = objc_opt_self();
  sub_100003540(0, &qword_10076BAD0);
  v23 = Array._bridgeToObjectiveC()().super.isa;
  [v22 activateConstraints:v23];

  *&v0[v1] = v4;
}

uint64_t sub_10011A1D8()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10077C040);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v11, v10);
  v27 = v3;
  v12 = *(v3 + 48);
  v13 = v12(v10, 1, v2);
  sub_1000079B4(v10, &unk_10077C040);
  if (v13 == 1)
  {
    goto LABEL_4;
  }

  sub_10011B554(v0 + v11, v8);
  if (v12(v8, 1, v2) == 1)
  {
    sub_1000079B4(v8, &unk_10077C040);
LABEL_4:
    v29.receiver = v0;
    v29.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v29, "accessibilityLabel");
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v16;
  }

  v17 = v2;
  v18 = v26;
  v19 = v27;
  (*(v27 + 32))(v26, v8, v17);
  sub_100058000(&qword_10076CA08);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10062D3F0;
  *(v20 + 32) = TTREditSectionsViewModel.SectionItem.displayName.getter();
  *(v20 + 40) = v21;
  if (TTREditSectionsViewModel.SectionItem.isEmptySection.getter())
  {
    v22 = static TTRAccesibility.Sections.EmptySection.getter();
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  *(v20 + 48) = v22;
  *(v20 + 56) = v23;
  v28 = v20;
  sub_100058000(&unk_1007853F0);
  sub_10000E188(&qword_10076CA10, &unk_1007853F0);
  v24 = Sequence.removingNils<A>()();

  v28 = v24;
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20);
  sub_10000E188(&qword_100771E20, &unk_100781F20);
  v16 = BidirectionalCollection<>.joined(separator:)();

  (*(v19 + 8))(v18, v17);
  return v16;
}

uint64_t sub_10011A5C4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100058000(&unk_10077C040);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v5, v4);
  v6 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1000079B4(v4, &unk_10077C040);
  if (v5 == 1)
  {
    sub_10011A758();
    if (v7)
    {
      v8 = v7;
      if ([v7 isOn])
      {
        v9 = static TTRAccesibility.General.Label.On.getter();
      }

      else
      {
        v9 = static TTRAccesibility.General.Label.Off.getter();
      }

      goto LABEL_9;
    }
  }

  v14.receiver = v0;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, "accessibilityValue");
  if (v10)
  {
    v8 = v10;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_9:
    v11 = v9;

    return v11;
  }

  return 0;
}

void sub_10011A758()
{
  v27 = type metadata accessor for UICellAccessory.AccessoryType();
  v21 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for UICellAccessory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077C040);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v10, v9);
  v11 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  LODWORD(v10) = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_1000079B4(v9, &unk_10077C040);
  if (v10 == 1)
  {
    v12 = UICollectionViewListCell.accessories.getter();
    v13 = v12;
    v26 = *(v12 + 16);
    if (v26)
    {
      v14 = 0;
      v25 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v23 = v4 + 8;
      v24 = v4 + 16;
      v15 = (v21 + 88);
      v22 = enum case for UICellAccessory.AccessoryType.customView(_:);
      v16 = (v21 + 8);
      v17 = (v21 + 96);
      while (v14 < *(v13 + 16))
      {
        (*(v4 + 16))(v6, v25 + *(v4 + 72) * v14, v3);
        UICellAccessory.accessoryType.getter();
        v18 = v27;
        (*(v4 + 8))(v6, v3);
        v19 = (*v15)(v2, v18);
        if (v19 == v22)
        {
          (*v17)(v2, v18);
          v20 = *v2;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            return;
          }
        }

        else
        {
          (*v16)(v2, v18);
        }

        if (v26 == ++v14)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
    }
  }
}

id sub_10011AAE4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10011AB64()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100058000(&unk_10077C040);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v5, v4);
  v6 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1000079B4(v4, &unk_10077C040);
  if (v5 != 1)
  {
    return static TTRAccesibility.General.Hint.Edit.getter();
  }

  v11.receiver = v0;
  v11.super_class = ObjectType;
  result = objc_msgSendSuper2(&v11, "accessibilityHint");
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }

  return result;
}

void sub_10011ACD0(void *a1, uint64_t a2, NSString a3, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a1;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, a3);
}

void sub_10011AD6C()
{
  v1 = sub_100058000(&unk_10077C040);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v4, v3);
  v5 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1000079B4(v3, &unk_10077C040);
  if (v4 == 1)
  {
    sub_10011A758();
    if (v6)
    {
      v7 = v6;
      if (swift_unknownObjectWeakLoadStrong())
      {
        [v7 setOn:objc_msgSend(v7 animated:{"isOn") ^ 1, 1}];
        sub_100300560(v7);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v8 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
    if (([*(v0 + OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField) isEditing] & 1) == 0)
    {
      [*(v0 + v8) becomeFirstResponder];
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(v0 + v8));
    }
  }
}

id sub_10011AF5C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
  *&v4[v10] = [objc_allocWithZone(UITextField) init];
  v11 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_currentLayout;
  v13 = enum case for TTRRemindersListLayout.list(_:);
  v14 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  *&v4[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  v16 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_nameFields] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

id sub_10011B114(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
  *&v1[v4] = [objc_allocWithZone(UITextField) init];
  v5 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_currentLayout;
  v7 = enum case for TTRRemindersListLayout.list(_:);
  v8 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  v10 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_nameFields] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints] = 0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t type metadata accessor for TTRIEditSectionsCell()
{
  result = qword_10076C9E0;
  if (!qword_10076C9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011B40C()
{
  type metadata accessor for TTRRemindersListLayout();
  if (v0 <= 0x3F)
  {
    sub_10011B4FC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10011B4FC()
{
  if (!qword_10076C9F0)
  {
    type metadata accessor for TTREditSectionsViewModel.SectionItem();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10076C9F0);
    }
  }
}

uint64_t sub_10011B554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077C040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011B5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077C040);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011B634()
{
  result = qword_10076CA00;
  if (!qword_10076CA00)
  {
    type metadata accessor for TTREditSectionsViewModel.SectionItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076CA00);
  }

  return result;
}

NSString sub_10011B68C()
{
  result = String._bridgeToObjectiveC()();
  qword_10076C980 = result;
  return result;
}

uint64_t sub_10011B6C4(uint64_t a1)
{
  type metadata accessor for TTRIQuickLookPreviewController();
  sub_100058000(&qword_100777790);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D400;
  (*(v3 + 16))(v5 + v4, a1, v2);
  return TTRIQuickLookPreviewController.__allocating_init(previewItemURLs:)();
}

uint64_t (*sub_10011B7B8(uint64_t a1, char a2))()
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  if (URL.isFileURL.getter() & 1) != 0 && (a2)
  {
    (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v8 = swift_allocObject();
    (*(v5 + 32))(v8 + v7, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    return sub_10011B9FC;
  }

  if (URL.isHTTPOrHTTPSURL.getter())
  {
    v11 = [objc_opt_self() sharedConnection];
    if (!v11 || (v12 = v11, v13 = [v11 effectiveBoolValueForSetting:MCFeatureSafariAllowed], v12, v13 != 2))
    {
      v14 = objc_opt_self();
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      v18 = [v14 previewViewProviderForURL:v16 context:0];

      if (v18)
      {
        *(swift_allocObject() + 16) = v18;
        return sub_10011B9C4;
      }
    }
  }

  return 0;
}

id sub_10011B9C4()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_10011B9FC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10011B6C4(v2);
}

uint64_t sub_10011BAC4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076CA18);
  v1 = sub_100003E30(v0, qword_10076CA18);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10011BB8C()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 312));
  if (v2 && (v3 = v2[13], v4 = v2[14], sub_10000C36C(v2 + 10, v3), v5 = *(v4 + 24), swift_unknownObjectRetain(), v6 = v5(v3, v4), swift_unknownObjectRelease(), (v6 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return (*(*(v1 + 248) + 40))(*(v1 + 232)) & 1;
  }
}

void sub_10011BC80()
{
  v1 = *v0;
  v2 = *v0;
  v3 = type metadata accessor for TTRListToCustomSmartListConverterValidation();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v58 - v8;
  __chkstk_darwin(v7);
  v72 = (&v58 - v10);
  v11 = v1[31];
  v12 = v1[29];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = *(v0 + v1[38]);
  if (v14)
  {
    v67 = v2;
    v68 = v4;
    v69 = v0;
    v70 = v3;
    v15 = *(v11 + 24);
    swift_unknownObjectRetain();
    v66 = v12;
    v15(v12, v11);
    v16 = sub_100003540(0, &qword_10076CAB0);
    if (swift_dynamicCast())
    {
      v17 = aBlock;
      swift_getObjectType();
      v76 = v16;
      v77 = &protocol witness table for REMListChangeItem;
      aBlock = v17;
      v61 = v17;
      v18 = v72;
      v65 = v14;
      dispatch thunk of TTRListToCustomSmartListConverterType.prevalidate(list:)();
      sub_100004758(&aBlock);
      TTRListToCustomSmartListConverterValidation.alertTitleString.getter();
      TTRListToCustomSmartListConverterValidation.alertDetailString.getter();
      v19 = String._bridgeToObjectiveC()();

      v20 = String._bridgeToObjectiveC()();

      v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

      v22 = v68;
      v23 = *(v68 + 16);
      v24 = v18;
      v25 = v70;
      v23(v9, v24, v70);
      v63 = *(v22 + 88);
      v64 = v22 + 88;
      v26 = v63(v9, v25);
      v62 = enum case for TTRListToCustomSmartListConverterValidation.ok(_:);
      if (v26 == enum case for TTRListToCustomSmartListConverterValidation.ok(_:))
      {
        v60 = v23;
        (*(v22 + 96))(v9, v25);
        v27 = *(v9 + 2);

        static TTRLocalizableStrings.Common.alertCancelButton.getter();
        v28 = String._bridgeToObjectiveC()();

        v58 = objc_opt_self();
        v29 = [v58 actionWithTitle:v28 style:1 handler:0];
        v59 = v29;

        [v21 addAction:v29];
        static TTRLocalizableStrings.ConvertToCustomSmartListAlert.makeConfirmButtonString.getter();
        v30 = swift_allocObject();
        swift_weakInit();
        v31 = swift_allocObject();
        v32 = v67;
        v31[2] = v66;
        v31[3] = v32[30];
        v31[4] = v11;
        v31[5] = v32[32];
        v31[6] = v30;
        v33 = v21;
        v34 = v61;
        v31[7] = v61;
        v31[8] = v27;
        v35 = v34;

        v36 = String._bridgeToObjectiveC()();

        v77 = sub_10011F360;
        v78 = v31;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_1001762CC;
        v76 = &unk_1007167D8;
        v37 = _Block_copy(&aBlock);

        v38 = [v58 actionWithTitle:v36 style:0 handler:v37];
        _Block_release(v37);

        [v33 addAction:v38];
        v39 = v34;
        v21 = v33;
        v25 = v70;
        v40 = v72;
      }

      else
      {
        v39 = v61;
        v40 = v72;
        if (v26 != enum case for TTRListToCustomSmartListConverterValidation.cannotConvertDefaultList(_:))
        {
          if (v26 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertSharedList(_:) || v26 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertLegacyLists(_:))
          {
            goto LABEL_23;
          }

          if (v26 != enum case for TTRListToCustomSmartListConverterValidation.defaultListInDifferentAccount(_:))
          {
            goto LABEL_36;
          }
        }

        v60 = v23;
        static TTRLocalizableStrings.Common.settingsButton.getter();
        v49 = String._bridgeToObjectiveC()();

        v77 = sub_10011CA1C;
        v78 = 0;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_1001762CC;
        v76 = &unk_100716760;
        v50 = _Block_copy(&aBlock);

        v38 = [objc_opt_self() actionWithTitle:v49 style:0 handler:v50];
        _Block_release(v50);

        [v21 addAction:v38];
      }

      v23 = v60;
LABEL_23:
      v51 = v71;
      v23(v71, v40, v25);
      v52 = v63(v51, v25);
      if (v52 == v62)
      {
        (*(v22 + 8))(v51, v25);
LABEL_30:
        sub_10000C36C((v69 + *(*v69 + 296)), *(v69 + *(*v69 + 296) + 24));
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v56 = Strong;
          v57 = [Strong navigationController];

          if (v57)
          {
            [v57 presentViewController:v21 animated:1 completion:0];

            swift_unknownObjectRelease();
            v21 = v57;
          }

          else
          {

            swift_unknownObjectRelease();
            v21 = v39;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v22 + 8))(v40, v25);
        return;
      }

      if (v52 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertDefaultList(_:) || v52 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertSharedList(_:) || v52 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertLegacyLists(_:) || v52 == enum case for TTRListToCustomSmartListConverterValidation.defaultListInDifferentAccount(_:))
      {
        static TTRLocalizableStrings.Common.alertOKButton.getter();
        v53 = String._bridgeToObjectiveC()();

        v54 = [objc_opt_self() actionWithTitle:v53 style:0 handler:0];

        [v21 addAction:v54];
        [v21 setPreferredAction:v54];

        goto LABEL_30;
      }

LABEL_36:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100003E30(v45, qword_10076CA18);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Attempted to convert a non list to a custom smart list", v48, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_10076CA18);
    v72 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v72, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v72, v42, "Attempted to convert a list to a custom smart list with a nil converter", v43, 2u);
    }

    v44 = v72;
  }
}

void sub_10011C6DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_10076CA18);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v15 = [a3 objectID];
    *(inited + 72) = sub_100003540(0, &qword_10076BA50);
    *(inited + 48) = v15;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_10011F2F8(inited + 32);
    sub_10000FD44();

    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      sub_10000C36C((v16 + 48), *(v16 + 72));
      sub_1000928BC();
      swift_unknownObjectRelease();
    }

    v17 = swift_allocObject();
    v17[2] = v12;
    v17[3] = a3;
    v17[4] = a4;
    v18 = *(a7 + 112);
    swift_unknownObjectRetain();

    v19 = a3;

    v20 = v18(sub_10011F374, v17, a5, a7);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10011C938(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 + *(*a1 + 272);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = [a2 objectID];
    (*(v8 + 24))(a1, &off_1007166F0, v10, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10011CA1C()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.showDefaultListInSettings()();
  }
}

uint64_t sub_10011CA94()
{
  v1[12] = v0;
  v2 = *v0;
  v1[13] = *(*v0 + 248);
  v1[14] = *(v2 + 232);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  v1[16] = *(AssociatedTypeWitness - 8);
  v1[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v5;
  v1[20] = v4;

  return _swift_task_switch(sub_10011CBCC, v5, v4);
}

uint64_t sub_10011CBCC()
{
  if (TTRListDetailPresenter.shouldPresentConfirmationAlertForRemovingExistingSections()())
  {
    v1 = (*(v0[13] + 32))(v0[14]);
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_10011CEE8;

    return sub_10011D298(v1 & 1);
  }

  else
  {

    (*(v0[13] + 24))(v0[14]);
    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v4 = v0[15];
    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_10076CA18);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = (*(AssociatedConformanceWitness + 40))(v4, AssociatedConformanceWitness);
    *(inited + 72) = sub_100003540(0, &qword_10076BA50);
    *(inited + 48) = v8;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_10011F2F8(inited + 32);
    sub_10000FD44();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10000C36C((Strong + 48), *(Strong + 72));
      sub_1000928BC();
      swift_unknownObjectRelease();
    }

    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    v13 = sub_100177458(v0[14], v0[13]);
    sub_10011DABC(v13, v14);

    (*(v11 + 8))(v10, v12);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10011CEE8(char a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_10011D010, v4, v3);
}

uint64_t sub_10011D010()
{
  v1 = *(v0 + 176);

  if ((v1 - 2) >= 2)
  {
    if (v1)
    {
      TTRListDetailPresenter.removeExistingSections()();
    }

    (*(*(v0 + 104) + 24))(*(v0 + 112));
    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 120);
    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_10076CA18);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = (*(AssociatedConformanceWitness + 40))(v2, AssociatedConformanceWitness);
    *(inited + 72) = sub_100003540(0, &qword_10076BA50);
    *(inited + 48) = v6;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_10011F2F8(inited + 32);
    sub_10000FD44();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10000C36C((Strong + 48), *(Strong + 72));
      sub_1000928BC();
      swift_unknownObjectRelease();
    }

    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 120);
    v11 = sub_100177458(*(v0 + 112), *(v0 + 104));
    sub_10011DABC(v11, v12);

    (*(v9 + 8))(v8, v10);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10011D298(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 172) = a1;
  *(v2 + 56) = *v1;
  *(v2 + 64) = type metadata accessor for TTRListDetailViewModel();
  *(v2 + 72) = swift_task_alloc();
  v3 = type metadata accessor for TTRRemindersListLayout();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 120) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 128) = v5;
  *(v2 + 136) = v4;

  return _swift_task_switch(sub_10011D400, v5, v4);
}

uint64_t sub_10011D400()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  TTRListDetailPresenter.viewModel.getter();
  v3 = *(v1 + *(v2 + 72));
  swift_unknownObjectRetain();
  sub_10011F838(v1, type metadata accessor for TTRListDetailViewModel);
  v4 = *(v0 + 112);
  if (v3)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    (*(v7 + 32))(v4, v5, v6);
    v8 = enum case for TTRRemindersListLayout.list(_:);
  }

  else
  {
    v8 = enum case for TTRRemindersListLayout.list(_:);
    (*(*(v0 + 88) + 104))(*(v0 + 112), enum case for TTRRemindersListLayout.list(_:), *(v0 + 80));
  }

  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  (*(v10 + 16))(v9, *(v0 + 112), v11);
  v12 = (*(v10 + 88))(v9, v11);
  if (v12 == v8)
  {
    v13 = 0xD000000000000097;
    v14 = "List Detail Done {objectID: %@}";
    v15 = 0x636553207065654BLL;
    v16 = 0xEE003F736E6F6974;
LABEL_8:
    v17 = *(v0 + 112);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 172);
    v21 = v14 | 0x8000000000000000;
    TTRLocalizedString(_:comment:)(*&v15, *&v13);
    _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO031ConvertGroceryOrAutoCategorizede9ToRegularE5AlertO38keepExistingSectionConfirmationMessage10listLayout20shouldUseItemWordingSSAA012TTRReminderseU0O_SbtFZ_0(v17, v20);
    v22 = String._bridgeToObjectiveC()();

    v23 = String._bridgeToObjectiveC()();

    v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];
    *(v0 + 144) = v24;

    sub_10000C36C((v19 + *(*v19 + 296)), *(v19 + *(*v19 + 296) + 24));
    v25 = *(v18 + 248);
    *(v0 + 16) = *(v18 + 232);
    *(v0 + 32) = v25;
    v26 = type metadata accessor for TTRListDetailPresenter.ConvertGroceryListToRegularListConfirmationAlertResponse();
    type metadata accessor for TTRIValueBasedAlertAction();
    type metadata accessor for _ContiguousArrayStorage();
    swift_allocObject();
    v27 = static Array._adoptStorage(_:count:)();
    v28._object = 0x8000000100672C50;
    v29._countAndFlagsBits = 1885693259;
    v29._object = 0xE400000000000000;
    v28._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v29, v28);
    *(v0 + 169) = 0;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v30._countAndFlagsBits = 0x65766F6D6552;
    v31._object = 0x8000000100672C50;
    v30._object = 0xE600000000000000;
    v31._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v30, v31);
    *(v0 + 170) = 1;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    *(v0 + 171) = 2;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v32 = sub_10015D9FC(v27);
    *(v0 + 152) = v32;
    v33 = swift_task_alloc();
    *(v0 + 160) = v33;
    *v33 = v0;
    v33[1] = sub_10011D8A8;

    return sub_1002D7498(v0 + 168, v24, v32, v26);
  }

  if (v12 == enum case for TTRRemindersListLayout.columns(_:))
  {
    v14 = "st to a regular list";
    v13 = 0xD000000000000096;
    v15 = 0x6C6F43207065654BLL;
    v16 = 0xED00003F736E6D75;
    goto LABEL_8;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_10011D8A8()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10011D9EC, v3, v2);
}

uint64_t sub_10011D9EC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10011DABC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(*v2 + 272);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v2, &off_1007166F0, a1, a2, (*(v2 + *(*v2 + 288)) & 1) == 0, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10011DB9C()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 232);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v12[-v5];
  (*(v1 + 24))(v2, v1);
  if (qword_100766F30 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_10076CA18);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v10;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004BE910();
    swift_unknownObjectRelease();
  }

  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

void sub_10011DE40()
{
  if (qword_100766F30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10076CA18);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  sub_10000C36C((v0 + *(*v0 + 296)), *(v0 + *(*v0 + 296) + 24));
  sub_1002D7840();
}

uint64_t sub_10011DF10()
{
  v1 = v0 + *(*v0 + 272);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, &off_1007166F0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10011DFE4()
{
  sub_10003B788(v0 + *(*v0 + 264));
  sub_10003B788(v0 + *(*v0 + 272));
  sub_10003B788(v0 + *(*v0 + 280));
  sub_100004758(v0 + *(*v0 + 296));
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t *sub_10011E0AC()
{
  v0 = TTRListDetailPresenter.deinit();
  sub_10003B788(v0 + *(*v0 + 264));
  sub_10003B788(v0 + *(*v0 + 272));
  sub_10003B788(v0 + *(*v0 + 280));
  sub_100004758(v0 + *(*v0 + 296));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10011E17C()
{
  sub_10011E0AC();

  return swift_deallocClassInstance();
}

uint64_t sub_10011E20C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001AA3C;

  return sub_10011CA94();
}

uint64_t sub_10011E2A0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002DDD94();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10011E308@<X0>(uint64_t a1@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for TTRIPopoverAnchor();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t sub_10011E3F0()
{
  if ((sub_10011BB8C() & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + *(*v0 + 288)))
  {
    return static TTRLocalizableStrings.Common.confirmationMessageForDiscardingChanges.getter();
  }

  v2._object = 0x8000000100672DE0;
  v3._countAndFlagsBits = 0xD000000000000034;
  v3._object = 0x8000000100672E10;
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  return TTRLocalizedString(_:comment:)(v2, v3)._countAndFlagsBits;
}

uint64_t sub_10011E480(uint64_t a1, uint64_t a2)
{
  *(v2 + *(*v2 + 280) + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_10011E4F4(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_tableDataController] = 0;
  a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_ttrAccessibilityShouldAnnounceOptionChanges] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateGroup] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationGroup] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedGroup] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___prioritySection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityGroup] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsGroup] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagsSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagsGroup] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___disabledFiltersSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___disabledFiltersGroup] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___documentationSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___filterOperatorSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___enabledFilters] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateOptionsCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell1] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell1] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___relativeRangeCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell2] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell2] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell1] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell2] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___includePastDueRemindersCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___timeOptionsCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityOptionsCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedOptionsCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationOptionsCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationQuickPicksCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationDetailCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagOptionsCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagCollectionCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagToggleShowMoreCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsOptionsCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listPopoverCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___filterOperatorCell] = 0;
  v5 = &a2[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_presenter];
  *v5 = a1;
  v5[1] = &off_100725B70;
  v7.receiver = a2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

id sub_10011E748(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v76 = a7;
  v77 = a6;
  LODWORD(v78) = a2;
  v72 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel() - 8;
  __chkstk_darwin(v72);
  v71 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for REMHashtagLabelSpecifier();
  v68 = *(v66 - 8);
  v12 = __chkstk_darwin(v66);
  v70 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v64 - v14;
  v15 = type metadata accessor for TTRAuthorizationSource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87[3] = type metadata accessor for TTRSmartListVersionWarningInteractor();
  v87[4] = &protocol witness table for TTRSmartListVersionWarningInteractor;
  v87[0] = a5;
  v19 = objc_allocWithZone(TTRUndoManager);

  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithDebugIdentifier:v20];

  type metadata accessor for TTRGeoLocationService();
  static TTRAuthorizationSource.defaultForLocations.getter();
  v22 = static TTRGeoLocationService.newService(authorizationSource:)();
  (*(v16 + 8))(v18, v15);
  v23 = type metadata accessor for TTRSmartListFilterEditorInteractor();
  swift_allocObject();
  v24 = a1;
  v25 = a4;
  v74 = v21;
  v79 = TTRSmartListFilterEditorInteractor.init(filter:store:undoManager:)(a1, v25, v74);
  v80 = sub_1004E6B3C(v25, v22);
  v73 = type metadata accessor for TTRISmartListFilterEditorRouter();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10011F898(&qword_10076CAC0, type metadata accessor for TTRISmartListFilterEditorRouter);
  sub_100003540(0, &qword_100769660);

  static UNUserNotificationCenter.ttr_unUserNotificationCenter.getter();
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v27 = objc_opt_self();
  v75 = v22;
  v28 = [v27 daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  swift_allocObject();
  v29 = TTRIPrivacyChecker.init(delegate:unUserNotificationCenter:geoService:notificationsService:userDefaults:urgentAlarmService:)();
  v30 = [objc_opt_self() sharedInstance];
  *(&v85 + 1) = sub_100003540(0, &qword_10076CAC8);
  v86 = &off_10072FC00;
  *&v84 = v30;
  v31 = type metadata accessor for TTRListDetailDeviceInfoProvider();
  v32 = swift_allocObject();
  v69 = v30;
  swift_defaultActor_initialize();
  *(v32 + 160) = 0;
  *(v32 + 168) = 0;
  sub_100005FD0(&v84, v32 + 112);
  *(v32 + 152) = a3;
  sub_10000B0D8(v87, &v84);
  v83[3] = v23;
  v83[4] = &protocol witness table for TTRSmartListFilterEditorInteractor;
  v83[0] = v79;
  v82[3] = v31;
  v82[4] = &off_10072FC98;
  v82[0] = v32;
  type metadata accessor for TTRISmartListFilterEditorPresenter(0);
  v33 = swift_allocObject();
  v34 = sub_10000AE84(v82, v31);
  __chkstk_darwin(v34);
  v36 = (&v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = *v36;
  v81[4] = &off_10072FC98;
  v81[3] = v31;
  v81[0] = v38;
  *(v33 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v33 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v33 + 56) = 0;
  *(v33 + 64) = 0;
  *(v33 + 280) = 0;
  *(v33 + 288) = 0;
  v39 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelsLayoutResult;
  v40 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  (*(*(v40 - 8) + 56))(v33 + v39, 1, 1, v40);
  *(v33 + OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_showsAllHashtagLabels) = 0;
  *(v33 + 65) = v78 & 1;
  *(v33 + 72) = a3;
  sub_10000B0D8(v83, v33 + 80);
  *(v33 + 264) = v80;
  *(v33 + 272) = &protocol witness table for TTRLocationQuickPicksInteractor;
  *(v33 + 144) = v73;
  *(v33 + 152) = &off_100717D80;
  *(v33 + 120) = v26;
  *(v33 + 160) = v29;
  sub_10000B0D8(v81, v33 + 168);
  sub_10000B0D8(&v84, v33 + 224);
  *(v33 + 208) = v25;
  v41 = v74;
  *(v33 + 48) = v74;
  v42 = a3;
  v43 = v41;
  v44 = v25;
  v74 = v26;
  swift_retain_n();
  v45 = v42;
  v73 = v29;
  swift_retain_n();
  v78 = v43;
  v65 = v44;
  v64 = v45;

  v46 = v67;
  static REMHashtagLabelSpecifier.empty.getter();
  v47 = v68;
  v48 = v66;
  (*(v68 + 32))(v33 + OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelSelectionCache, v46, v66);
  sub_100003540(0, &qword_100777780);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDeferredAction();
  swift_allocObject();
  *(v33 + 216) = TTRDeferredAction.init(queue:)();
  sub_10011F898(&qword_10076CAD0, type metadata accessor for TTRISmartListFilterEditorPresenter);

  TTRDeferredAction.delegate.setter();

  v49 = v71;
  sub_1003E1084(v71);
  v50 = v47;
  v51 = *(v47 + 16);
  v52 = v70;
  v51(v70, v49 + *(v72 + 28), v48);
  sub_10011F838(v49, type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel);
  v53 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelSelectionCache;
  swift_beginAccess();
  v51(v46, (v33 + v53), v48);
  sub_10011F898(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
  LOBYTE(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
  v54 = *(v50 + 8);
  v54(v46, v48);
  if ((v45 & 1) == 0)
  {
    swift_beginAccess();
    (*(v50 + 24))(v33 + v53, v52, v48);
    swift_endAccess();
  }

  v54(v52, v48);
  sub_1003E17E0();

  sub_100004758(&v84);
  sub_100004758(v83);
  sub_100004758(v81);
  sub_100004758(v82);
  v55 = objc_allocWithZone(type metadata accessor for TTRISmartListFilterEditorViewController());

  v57 = sub_10011E4F4(v56, v55);
  v58 = v79;
  swift_beginAccess();
  *(v58 + 24) = &off_100725B60;
  swift_unknownObjectWeakAssign();
  sub_10011F898(&qword_10076CAD8, type metadata accessor for TTRISmartListFilterEditorPresenter);

  TTRLocationQuickPicksInteractor.delegate.setter();
  *(v33 + 24) = &off_10071D4B8;
  swift_unknownObjectWeakAssign();
  *(v33 + 40) = v76;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v59 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v57];
  v60 = [v59 presentationController];
  if (v60)
  {
    v61 = v60;
    v62 = v57;
    [v61 setDelegate:v62];
  }

  else
  {
  }

  sub_100004758(v87);
  return v59;
}