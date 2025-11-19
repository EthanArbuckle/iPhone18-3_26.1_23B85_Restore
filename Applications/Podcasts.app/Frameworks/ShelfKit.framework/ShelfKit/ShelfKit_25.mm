uint64_t sub_2A5198(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_3EE5A4();
  }

  return sub_3EE404();
}

void sub_2A5224(void **a1)
{
  v2 = *(sub_3E5F84() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2A67FC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2A52CC(v5);
  *a1 = v3;
}

void sub_2A52CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_3EE794(v2);
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
        sub_3E5F84();
        v6 = sub_3ED5E4();
        v6[2] = v5;
      }

      v7 = *(sub_3E5F84() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2A5688(v8, v9, a1, v4);
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
    sub_2A53F8(0, v2, 1, a1);
  }
}

void sub_2A53F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_3E5F84();
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
      sub_2A3290();
      v25 = sub_3ED154();
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

void sub_2A5688(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_3E5F84();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v126 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v134 = &v119 - v13;
  __chkstk_darwin(v14);
  v139 = &v119 - v15;
  v17.n128_f64[0] = __chkstk_darwin(v16);
  v140 = &v119 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = a4;
    }

    else
    {
LABEL_128:
      v113 = sub_2A66A8(a4);
    }

    v142 = v113;
    v114 = *(v113 + 2);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *&v113[16 * v114];
        v116 = v113;
        v117 = *&v113[16 * v114 + 24];
        sub_2A6078(*a3 + *(v10 + 72) * v115, *a3 + *(v10 + 72) * *&v113[16 * v114 + 16], *a3 + *(v10 + 72) * v117, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_2A66A8(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_2A661C(a4);
        v113 = v142;
        v114 = *(v142 + 2);
        if (v114 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v137 = (v10 + 8);
  v138 = v10 + 16;
  v136 = (v10 + 32);
  v21 = _swiftEmptyArrayStorage;
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v22 = v20;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v132 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v128 = v24;
      v27 = *(v25 + 16);
      v27(v140, v5, v23, v17);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v123 = v22;
      v30 = v139;
      v131 = v27;
      (v27)(v139, v28, v23);
      v31 = sub_2A3290();
      v32 = v140;
      v130 = v31;
      LODWORD(v133) = sub_3ED154();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v129 = v33;
      v33(v32, v23);
      v34 = v123 + 2;
      v135 = v26;
      v35 = v128 + v26 * (v123 + 2);
      while (1)
      {
        v36 = v132;
        if (v132 == v34)
        {
          break;
        }

        v38 = v140;
        v37 = v141;
        v39 = v131;
        (v131)(v140, v35, v141);
        v40 = v6;
        v41 = v139;
        v39(v139, v5, v37);
        v42 = sub_3ED154() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v129;
        v129(v43, v37);
        v44(v38, v37);
        ++v34;
        v35 += v135;
        v5 += v135;
        if ((v133 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v123;
      a3 = v124;
      v10 = v120;
      v21 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v36 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v36)
        {
          v45 = v135 * (v36 - 1);
          v5 = v36 * v135;
          v132 = v36;
          v46 = v36;
          v47 = v123;
          v48 = v123 * v135;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, &v50[v48], v141, v21);
              if (v48 < v45 || &v50[v48] >= &v50[v5])
              {
                v49 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v141;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v50[v45], v126, v49);
              a3 = v124;
              v21 = v127;
            }

            ++v47;
            v45 -= v135;
            v5 -= v135;
            v48 += v135;
          }

          while (v47 < v46);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v22 = v123;
          v36 = v132;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v127;
    }

    else
    {
      v21 = sub_DFED0(0, *(v127 + 2) + 1, 1, v127);
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      v21 = sub_DFED0((v52 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_2A6078(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_2A66A8(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v142 = v93;
        sub_2A661C(v5);
        v21 = v142;
        v53 = *(v142 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v135 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v123 = v100;
  v102 = v100 - v36;
  v133 = v97;
  v125 = v98;
  a4 = v97 + v36 * v98;
  v128 = v5;
LABEL_85:
  v131 = v99;
  v132 = v36;
  v129 = a4;
  v130 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v140;
    v105 = v135;
    (v135)(v140, a4, v9, v21);
    v106 = v139;
    v105(v139, v103, v141);
    sub_2A3290();
    v107 = sub_3ED154();
    v108 = *v137;
    v109 = v106;
    v9 = v141;
    (*v137)(v109, v141);
    v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v132 + 1;
      v99 = &v131[v125];
      v102 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v22 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v110 = *v136;
    v111 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_2A6078(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = sub_3E5F84();
  v8 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v43 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v54 = a3;
  v15 = (a2 - a1) / v13;
  v58 = a1;
  v57 = a4;
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

    v27 = a4 + v17;
    if (v17 >= 1)
    {
      v28 = -v13;
      v47 = (v8 + 8);
      v48 = (v8 + 16);
      v29 = a4 + v17;
      v30 = v54;
      v45 = a1;
      v46 = a4;
      v49 = v28;
      do
      {
        v43 = v27;
        v31 = a2 + v28;
        v32 = v27;
        v50 = a2;
        v51 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v58 = a2;
            v27 = v43;
            goto LABEL_59;
          }

          v34 = v30;
          v44 = v32;
          v54 = v30 + v28;
          v35 = v29 + v28;
          v36 = *v48;
          v37 = v52;
          v38 = v29 + v28;
          v39 = v29;
          v40 = v55;
          (*v48)(v52, v38, v55);
          v41 = v53;
          (v36)(v53, v31, v40);
          sub_2A3290();
          LOBYTE(v36) = sub_3ED154();
          v42 = *v47;
          (*v47)(v41, v40);
          v42(v37, v40);
          if (v36)
          {
            break;
          }

          v32 = v35;
          v30 = v54;
          if (v34 < v39 || v54 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
            a1 = v45;
          }

          else
          {
            v31 = v51;
            a1 = v45;
            if (v34 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v35;
          v33 = v35 > v46;
          v28 = v49;
          a2 = v50;
          if (!v33)
          {
            v27 = v32;
            goto LABEL_58;
          }
        }

        v30 = v54;
        if (v34 < v50 || v54 >= v50)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v45;
          v29 = v39;
        }

        else
        {
          a2 = v51;
          a1 = v45;
          v29 = v39;
          if (v34 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v44;
        v28 = v49;
      }

      while (v29 > v46);
    }

LABEL_58:
    v58 = a2;
LABEL_59:
    v56 = v27;
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

    v51 = a4 + v16;
    v56 = a4 + v16;
    if (v16 >= 1 && a2 < v54)
    {
      v49 = *(v8 + 16);
      v50 = v8 + 16;
      v47 = v13;
      v48 = (v8 + 8);
      do
      {
        v19 = v52;
        v20 = v55;
        v21 = v49;
        v49(v52, a2, v55);
        v22 = v53;
        v21(v53, a4, v20);
        sub_2A3290();
        v23 = sub_3ED154();
        v24 = *v48;
        (*v48)(v22, v20);
        v24(v19, v20);
        if (v23)
        {
          v25 = v47;
          if (a1 < a2 || a1 >= v47 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v47;
          v26 = v47 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = v26;
          a4 += v25;
        }

        a1 += v25;
        v58 = a1;
      }

      while (a4 < v51 && a2 < v54);
    }
  }

  sub_2A66EC(&v58, &v57, &v56, &type metadata accessor for Date);
}

uint64_t sub_2A661C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2A66A8(v3);
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

uint64_t sub_2A66EC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2A6810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2A68C4()
{
  sub_2A6900();
  sub_3EAB04();
  return v1;
}

unint64_t sub_2A6900()
{
  result = qword_4FEF20;
  if (!qword_4FEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEF20);
  }

  return result;
}

uint64_t sub_2A6964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2A69C8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_2A69C8()
{
  result = qword_4FEF28;
  if (!qword_4FEF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEF28);
  }

  return result;
}

uint64_t sub_2A6A44()
{
  sub_2A6A80();
  sub_3EAB04();
  return v1;
}

unint64_t sub_2A6A80()
{
  result = qword_4FEF30;
  if (!qword_4FEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEF30);
  }

  return result;
}

uint64_t sub_2A6AE4()
{
  sub_288770();

  return sub_3EAB04();
}

uint64_t sub_2A6B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_283454();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_2A6BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = _s7EpisodeVMa();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_3EA6F4();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2A6CF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = _s7EpisodeVMa();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_3EA6F4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2A6E3C()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    _s7EpisodeVMa();
    if (v1 <= 0x3F)
    {
      sub_3EA6F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2A6EF0(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_3EA6F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = _swiftEmptyArrayStorage;
  v7 = v1[1];
  if (v7)
  {
    v8 = *v1;
    *&v104 = *v1;
    *(&v104 + 1) = v7;
    sub_138570();

    if (sub_3ED894())
    {
      *&v104 = v8;
      *(&v104 + 1) = v7;
      sub_68DC4();
      v9 = sub_3EB394();
      v11 = v10;
      v13 = v12 & 1;
      LOBYTE(v104) = v12 & 1;
      LOBYTE(v89) = v12 & 1;
      *&v97 = v9;
      *(&v97 + 1) = v10;
      LOBYTE(v98) = v12 & 1;
      *(&v98 + 1) = v14;
      *&v99 = v9;
      *(&v99 + 1) = v10;
      LOBYTE(v100) = v12 & 1;
      *(&v100 + 1) = v14;
      *&v101 = 0;
      *(&v101 + 1) = v9;
      *&v102 = v10;
      BYTE8(v102) = v12 & 1;
      v103 = v14;
      sub_243E88(v9, v10, v12 & 1);

      sub_243E88(v9, v11, v13);

      sub_3ED5C4();
      v108 = v101;
      v109 = v102;
      v110 = v103;
      v104 = v97;
      v105 = v98;
      v106 = v99;
      v107 = v100;
      sub_279970(&v104);
    }

    else
    {
    }
  }

  v15 = *(v2 + *(type metadata accessor for WidgetEyebrowGenerator(0) + 24));
  if ((v15 & 2) != 0)
  {
    sub_2A774C(&v97);
    if (*(&v98 + 1))
    {
      v104 = v97;
      v110 = v103;
      v108 = v101;
      v109 = v102;
      v106 = v99;
      v107 = v100;
      v105 = v98;
      sub_3ED5C4();
      sub_FCF8(&v97, &qword_4FD3C8);
    }
  }

  if ((v15 & 4) != 0)
  {
    sub_2A7EA4(&v104);
    if (*(&v105 + 1))
    {
      v95 = v110;
      v89 = v104;
      v93 = v108;
      v94 = v109;
      v91 = v106;
      v92 = v107;
      v90 = v105;
      sub_3ED5C4();
      sub_FCF8(&v104, &qword_4FD3C8);
    }
  }

  (*(v4 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v3);
  v16 = sub_3EA6E4();
  (*(v4 + 8))(v6, v3);
  if (v16)
  {
    sub_2A8CFC();
  }

  v62 = v96;
  v17 = v96[2];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0;
  v61 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = v62 + 4;
    while (v18 < v62[2])
    {
      v49 = *v19;
      v50 = *(v19 + 2);
      v83[1] = *(v19 + 1);
      v83[2] = v50;
      v83[0] = v49;
      v51 = *(v19 + 3);
      v52 = *(v19 + 4);
      v53 = *(v19 + 5);
      v86 = v19[12];
      v84 = v52;
      v85 = v53;
      v83[3] = v51;
      v88 = v92;
      v54 = *&v93;
      v87 = BYTE8(v94);
      if (*(&v90 + 1))
      {
        v68 = *(&v93 + 1);
        v69 = v95;
        v66 = v91;
        v67 = v94;
        v65 = *(&v91 + 1);
        sub_279914(v83, &v75);
        sub_3ED304();
        v20 = sub_3EB284();
        v22 = v21;
        v24 = v23;
        v25 = sub_3EB284();
        v72 = v26;
        v73 = v25;
        v70 = v27;
        v71 = v28;
        sub_94D30(v20, v22, v24 & 1);

        v29 = sub_3EB284();
        v31 = v30;
        v33 = v32;
        v34 = sub_3EB284();
        v65 = v35;
        v66 = v34;
        v63 = v36;
        v64 = v37;
        sub_94D30(v29, v31, v33 & 1);

        v38 = v54 + *&v84;
        v39 = sub_3EB284();
        v41 = v40;
        v43 = v42;
        v44 = sub_3EB284();
        v68 = v45;
        v69 = v44;
        LOBYTE(v29) = v46;
        v48 = v47;

        sub_FCF8(&v89, &qword_4FD3C8);
        sub_279970(v83);
        sub_94D30(v39, v41, v43 & 1);

        LOBYTE(v75) = v70 & 1;
        LOBYTE(v74[0]) = v63 & 1;
        LOBYTE(v82[0]) = v29 & 1;
        *(&v90 + 1) = v75;
        DWORD1(v90) = *(&v75 + 3);
        *(&v92 + 1) = v74[0];
        DWORD1(v92) = *(v74 + 3);
        *(&v94 + 9) = v82[0];
        HIDWORD(v94) = *(v82 + 3);
        *&v89 = v73;
        *(&v89 + 1) = v72;
        LOBYTE(v90) = v70 & 1;
        *(&v90 + 1) = v71;
        *&v91 = v66;
        *(&v91 + 1) = v65;
        LOBYTE(v92) = v63 & 1;
        *(&v92 + 1) = v64;
        *&v93 = v38;
        *(&v93 + 1) = v69;
        *&v94 = v68;
        BYTE8(v94) = v29 & 1;
        v95 = v48;
      }

      else
      {
        v78 = *(v19 + 3);
        v79 = *(v19 + 4);
        v80 = *(v19 + 5);
        v81 = v19[12];
        v75 = *v19;
        v76 = *(v19 + 1);
        v77 = *(v19 + 2);
        sub_279914(v83, v74);
        v93 = v79;
        v94 = v80;
        v95 = v81;
        v89 = v75;
        v90 = v76;
        v91 = v77;
        v92 = v78;
      }

      ++v18;
      v19 += 13;
      if (v61 == v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    v55 = v94;
    v56 = v60;
    *(v60 + 64) = v93;
    *(v56 + 80) = v55;
    *(v56 + 96) = v95;
    v57 = v90;
    *v56 = v89;
    *(v56 + 16) = v57;
    v58 = v92;
    *(v56 + 32) = v91;
    *(v56 + 48) = v58;
  }
}

uint64_t sub_2A762C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (*(a2 + *(type metadata accessor for WidgetEyebrowGenerator(0) + 28)) == 1)
  {
    v4 = sub_3EB214();
    v5 = v7;
    v6 = v8;
  }

  else
  {
    sub_243E88(v4, v5, v6);
  }

  v9 = sub_3EB264();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_94D30(v4, v5, v6 & 1);

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_2A774C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_3EA874();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LiveReleaseDateHelper(0);
  __chkstk_darwin(v5 - 8);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEFD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v68 - v8;
  v74 = sub_3E93B4();
  __chkstk_darwin(v74);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v76 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v14 - 8);
  v16 = &v68 - v15;
  v17 = sub_3E5F84();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1 + *(type metadata accessor for WidgetEyebrowGenerator(0) + 20);
  v22 = _s7EpisodeVMa();
  sub_FBD0(v21 + *(v22 + 44), v16, &qword_4EF460);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    sub_3E5E34();
    v34 = sub_3E93C4();
    (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
    v35 = v76;
    sub_3E93D4();
    sub_FCF8(v9, &qword_4FEFD8);
    sub_2A97A8(v35, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v37 = v75;
      if (EnumCaseMultiPayload == 1)
      {
        v75 = *v11;
        v38 = v75;
        isa = sub_3E5EB4().super.isa;
        v40 = [v38 stringFromDate:isa];

        v41 = sub_3ED244();
        v43 = v42;

        v79 = v41;
        v80 = v43;
        sub_68DC4();
        v24 = sub_3EB394();
        v44 = v18;
        v25 = v45;
        v26 = v46;
        v33 = v47 & 1;
        LOBYTE(v79) = v47 & 1;
        v78 = v47 & 1;
        v77 = v47 & 1;
        v48 = v20;
        v32 = v33;
        v49 = v17;
        v31 = v33;
        sub_243E88(v24, v45, v47 & 1);

        sub_243E88(v24, v25, v33);

        sub_2A9C8C(v76, &type metadata accessor for AbbreviatedTimeIntervalFormatter.ComputedStyle);
        result = (*(v44 + 8))(v48, v49);
        v27 = 0;
        v28 = v24;
        v29 = v25;
        v30 = v26;
        goto LABEL_13;
      }
    }

    else
    {
      v50 = sub_3E9584();
      (*(*(v50 - 8) + 8))(v11, v50);
      v37 = v75;
    }

    (*(v18 + 16))(v37, v20, v17);
    v51 = sub_2A8EF8();
    v53 = v52;
    v74 = v17;
    v55 = v54;
    v69 = v20;
    v56 = v71;
    sub_3EA864();
    v28 = sub_3EB254();
    v29 = v57;
    v70 = v58;
    v30 = v59;
    sub_94D30(v51, v53, v55 & 1);

    (*(v72 + 8))(v56, v73);
    v60 = sub_2A980C();
    if (v61)
    {
      v79 = v60;
      v80 = v61;
      sub_68DC4();
      v24 = sub_3EB394();
      v62 = v18;
      v25 = v63;
      v65 = v64;
      v26 = v66;
      sub_2A9C8C(v75, type metadata accessor for LiveReleaseDateHelper);
      sub_2A9C8C(v76, &type metadata accessor for AbbreviatedTimeIntervalFormatter.ComputedStyle);
      (*(v62 + 8))(v69, v74);
      v67 = v70;
      LOBYTE(v79) = v70 & 1;
      if (v26)
      {
LABEL_12:
        v32 = v65 & 1;
        v78 = v65 & 1;
        v31 = v67 & 1;
        v77 = v31;
        v33 = v79;
        sub_243E88(v28, v29, v31);

        v27 = 0x4000000000000000;
        goto LABEL_13;
      }
    }

    else
    {
      sub_2A9C8C(v75, type metadata accessor for LiveReleaseDateHelper);
      sub_2A9C8C(v76, &type metadata accessor for AbbreviatedTimeIntervalFormatter.ComputedStyle);
      (*(v18 + 8))(v69, v74);
      v67 = v70;
      LOBYTE(v79) = v70 & 1;
    }

    sub_243E88(v28, v29, v67 & 1);

    v24 = v28;
    v25 = v29;
    v65 = v67;
    v26 = v30;
    goto LABEL_12;
  }

  result = sub_FCF8(v16, &qword_4EF460);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
LABEL_13:
  *a1 = v28;
  a1[1] = v29;
  a1[2] = v33;
  a1[3] = v30;
  a1[4] = v24;
  a1[5] = v25;
  a1[6] = v32;
  a1[7] = v26;
  a1[8] = v27;
  a1[9] = v28;
  a1[10] = v29;
  a1[11] = v31;
  a1[12] = v30;
  return result;
}

uint64_t sub_2A7EA4@<X0>(uint64_t *a1@<X8>)
{
  v135 = a1;
  v122 = sub_3E9A04();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v129 = &v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_3EA874();
  v124 = *(v128 - 8);
  __chkstk_darwin(v128);
  v123 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EABB4();
  __chkstk_darwin(v4 - 8);
  v132 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_3EB2E4();
  v130 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE808);
  __chkstk_darwin(v7 - 8);
  v125 = &v114 - v8;
  v9 = sub_3E5F84();
  v133 = *(v9 - 8);
  __chkstk_darwin(v9);
  v120 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v131 = &v114 - v12;
  v13 = type metadata accessor for WidgetPredictedPlayState.State(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  __chkstk_darwin(v16 - 8);
  v18 = &v114 - v17;
  v19 = sub_3E9224();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1 + *(type metadata accessor for WidgetEyebrowGenerator(0) + 20);
  v24 = v23 + *(_s7EpisodeVMa() + 96);
  v25 = type metadata accessor for WidgetPredictedPlayState(0);
  sub_FBD0(v24 + *(v25 + 24), v18, &qword_4FDA38);
  v134 = v20;
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    result = sub_FCF8(v18, &qword_4FDA38);
LABEL_3:
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_14;
  }

  v40 = *(v134 + 32);
  v119 = v19;
  v40(v22, v18, v19);
  v41 = *(v25 + 20);
  v42 = v133;
  v43 = *(v133 + 56);
  v43(v15, 2, 2, v9);
  v44 = sub_2B007C(v24 + v41, v15);
  sub_2A9C8C(v15, type metadata accessor for WidgetPredictedPlayState.State);
  v45 = v9;
  if (v44)
  {
    v46 = v125;
    sub_FBD0(v24, v125, &qword_4FE808);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) != 1)
    {
      v64 = v46 + *(v47 + 36);
      v65 = v120;
      (*(v42 + 16))(v120, v64, v45);
      sub_FCF8(v46, &qword_4FD9F8);
      v66 = v131;
      (*(v42 + 32))(v131, v65, v45);
      v67 = v130;
      v68 = *(v130 + 104);
      v122 = v130 + 104;
      v125 = v68;
      v69 = v126;
      v70 = v127;
      v68(v126, enum case for Text.DateStyle.UnitsConfiguration.Style.short(_:), v127);
      v71 = sub_296964(v66, v69);
      v73 = v72;
      v75 = v74;
      v76 = *(v67 + 8);
      v130 = v67 + 8;
      v121 = v76;
      (v76)(v69, v70);
      sub_3EABA4();
      v140._countAndFlagsBits = 0;
      v140._object = 0xE000000000000000;
      sub_3EAB94(v140);
      sub_3EAB74();
      v141._countAndFlagsBits = 0x7466656C20;
      v141._object = 0xE500000000000000;
      sub_3EAB94(v141);
      sub_3EABD4();
      v77 = sub_3EB374();
      v79 = v78;
      v129 = v45;
      v81 = v80;
      v118 = v22;
      sub_94D30(v71, v73, v75 & 1);

      v82 = v123;
      sub_3EA864();
      v115 = sub_3EB254();
      v117 = v83;
      LODWORD(v120) = v84;
      v116 = v85;
      sub_94D30(v77, v79, v81 & 1);

      v114 = *(v124 + 8);
      v114(v82, v128);
      sub_3E91A4();
      v138 = sub_2972A8();
      v139 = v86;
      sub_68DC4();
      v87 = sub_3EB394();
      v89 = v88;
      v91 = v90;
      sub_3EABA4();
      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      sub_3EAB94(v142);
      sub_3EAB74();
      v143._countAndFlagsBits = 0x7466656C20;
      v143._object = 0xE500000000000000;
      sub_3EAB94(v143);
      sub_3EABD4();
      v92 = sub_3EB374();
      v94 = v93;
      v96 = v95;
      sub_94D30(v87, v89, v91 & 1);

      sub_3EA864();
      v30 = sub_3EB254();
      v31 = v97;
      LODWORD(v124) = v98;
      v32 = v99;
      sub_94D30(v92, v94, v96 & 1);

      v100 = v82;
      v27 = v115;
      v114(v100, v128);
      v101 = v126;
      v102 = v127;
      (v125)(v126, enum case for Text.DateStyle.UnitsConfiguration.Style.brief(_:), v127);
      v128 = sub_296964(v131, v101);
      v123 = v103;
      LODWORD(v125) = v104;
      (v121)(v101, v102);
      sub_3EABA4();
      v144._countAndFlagsBits = 0;
      v144._object = 0xE000000000000000;
      sub_3EAB94(v144);
      v105 = v123;
      sub_3EAB74();
      v145._countAndFlagsBits = 0x7466656C20;
      v145._object = 0xE500000000000000;
      sub_3EAB94(v145);
      sub_3EABD4();
      v34 = sub_3EB374();
      v106 = v134;
      v35 = v107;
      LODWORD(v132) = v108;
      v36 = v109;
      sub_94D30(v128, v105, v125 & 1);

      (*(v133 + 8))(v131, v129);
      result = (*(v106 + 8))(v118, v119);
      v29 = v116;
      v28 = v117;
      v39 = v120 & 1;
      LOBYTE(v138) = v120 & 1;
      v137 = v124 & 1;
      v136 = v132 & 1;
      v38 = v124 & 1;
      v37 = v132 & 1;
      v33 = 0x4000000000000000;
      goto LABEL_14;
    }

    sub_FCF8(v46, &qword_4FE808);
    sub_3E9974();
    v48 = sub_3E99F4();
    v49 = sub_3ED9E4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "Widget: We've hit a bug where we're playing but there's no predictedCompletionDate", v50, 2u);
    }

    v121[1](v129, v122);
    result = (*(v134 + 8))(v22, v119);
    goto LABEL_3;
  }

  v138 = sub_296CEC();
  v139 = v51;
  sub_68DC4();
  v52 = sub_3EB394();
  v118 = v22;
  v54 = v53;
  v55 = v9;
  v57 = v56;
  v59 = v58;
  v43(v15, 1, 2, v55);
  v60 = sub_2B007C(v24 + v41, v15);
  sub_2A9C8C(v15, type metadata accessor for WidgetPredictedPlayState.State);
  if (v60)
  {
    (*(v134 + 8))(v118, v119);
    v61 = v52;
    sub_243E88(v52, v54, v57 & 1);
    v62 = v59;

    v27 = v52;
    v35 = v54;
    v63 = v57;
    v36 = v62;
  }

  else
  {
    sub_3EABA4();
    v146._countAndFlagsBits = 0;
    v146._object = 0xE000000000000000;
    sub_3EAB94(v146);
    v61 = v52;
    sub_3EAB74();
    v147._countAndFlagsBits = 0x7466656C20;
    v147._object = 0xE500000000000000;
    sub_3EAB94(v147);
    sub_3EABD4();
    v27 = sub_3EB374();
    v35 = v110;
    v63 = v111;
    v36 = v112;
    (*(v134 + 8))(v118, v119);
  }

  sub_94D30(v61, v54, v57 & 1);

  v39 = v63 & 1;
  LOBYTE(v138) = v63 & 1;
  v137 = v63 & 1;
  v136 = v63 & 1;
  v38 = v39;
  v37 = v39;
  sub_243E88(v27, v35, v63 & 1);

  sub_243E88(v27, v35, v63 & 1);

  v29 = v36;
  v28 = v35;
  v33 = 0;
  v30 = v27;
  v31 = v35;
  v32 = v36;
  v34 = v27;
LABEL_14:
  v113 = v135;
  *v135 = v27;
  v113[1] = v28;
  v113[2] = v39;
  v113[3] = v29;
  v113[4] = v30;
  v113[5] = v31;
  v113[6] = v38;
  v113[7] = v32;
  v113[8] = v33;
  v113[9] = v34;
  v113[10] = v35;
  v113[11] = v37;
  v113[12] = v36;
  return result;
}

void sub_2A8CFC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_2A5170(v1);
  }

  v2 = 104 * v2 - 72;
  v4 = 1;
  v5 = 32;
  while (1)
  {
    if (v4 - 1 == v3)
    {
      goto LABEL_6;
    }

    v17 = *(v1 + 2);
    if (v4 - 1 >= v17)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v18 = &v1[v5];
    v19 = *&v1[v5];
    v20 = *&v1[v5 + 32];
    v41 = *&v1[v5 + 16];
    v42 = v20;
    v40 = v19;
    v21 = *&v1[v5 + 48];
    v22 = *&v1[v5 + 64];
    v23 = *&v1[v5 + 80];
    v46 = *&v1[v5 + 96];
    v44 = v22;
    v45 = v23;
    v43 = v21;
    if (v3 >= v17)
    {
      goto LABEL_16;
    }

    v24 = &v1[v2];
    v25 = *&v1[v2];
    v26 = *&v1[v2 + 32];
    v48 = *&v1[v2 + 16];
    v49 = v26;
    v47 = v25;
    v27 = *&v1[v2 + 48];
    v28 = *&v1[v2 + 64];
    v29 = *&v1[v2 + 80];
    v53 = *&v1[v2 + 96];
    v51 = v28;
    v52 = v29;
    v50 = v27;
    sub_279914(&v40, v56);
    sub_279914(&v47, v56);
    v30 = *v18;
    v31 = *(v18 + 2);
    v54[1] = *(v18 + 1);
    v54[2] = v31;
    v54[0] = v30;
    v32 = *(v18 + 3);
    v33 = *(v18 + 4);
    v34 = *(v18 + 5);
    v55 = *(v18 + 12);
    v54[4] = v33;
    v54[5] = v34;
    v54[3] = v32;
    v36 = v51;
    v35 = v52;
    v37 = v50;
    *(v18 + 12) = v53;
    *(v18 + 4) = v36;
    *(v18 + 5) = v35;
    *(v18 + 3) = v37;
    v38 = v47;
    v39 = v49;
    *(v18 + 1) = v48;
    *(v18 + 2) = v39;
    *v18 = v38;
    sub_279970(v54);
    if (v3 >= *(v1 + 2))
    {
      break;
    }

    v6 = *v24;
    v7 = *(v24 + 2);
    v56[1] = *(v24 + 1);
    v56[2] = v7;
    v56[0] = v6;
    v8 = *(v24 + 3);
    v9 = *(v24 + 4);
    v10 = *(v24 + 5);
    v57 = *(v24 + 12);
    v56[4] = v9;
    v56[5] = v10;
    v56[3] = v8;
    v12 = v44;
    v11 = v45;
    v13 = v43;
    *(v24 + 12) = v46;
    *(v24 + 4) = v12;
    *(v24 + 5) = v11;
    *(v24 + 3) = v13;
    v14 = v40;
    v15 = v42;
    *(v24 + 1) = v41;
    *(v24 + 2) = v15;
    *v24 = v14;
    sub_279970(v56);
LABEL_6:
    --v3;
    v2 -= 104;
    v5 += 104;
    if (v4++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

uint64_t sub_2A8EF8()
{
  v1 = sub_3E5C84();
  __chkstk_darwin(v1 - 8);
  v17[4] = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3E6124();
  __chkstk_darwin(v3 - 8);
  v17[3] = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E6044();
  __chkstk_darwin(v5 - 8);
  v17[2] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E5E84();
  __chkstk_darwin(v7 - 8);
  v17[1] = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E5EA4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_3E5F84();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = sub_3E5F44();
  __chkstk_darwin(v17[0]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEFE0);
  __chkstk_darwin(v14 - 8);
  sub_3EA624();
  (*(v11 + 16))(v13, v0, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEFE8);
  sub_3E5F24();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_3F5300;
  sub_3E5F14();
  sub_3E5F04();
  sub_3E5EF4();
  sub_361BC(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_3E5E94();
  sub_3E5E74();
  sub_3E6024();
  sub_3E60D4();
  sub_3E5C74();
  sub_3E5F34();
  sub_2AA2B4(&qword_4FEFF0, &type metadata accessor for Date.AnchoredRelativeFormatStyle);
  return sub_3EB354();
}

uint64_t sub_2A9370@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF118);
  v11 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v9 - v4;
  sub_2A6EF0(&v14);
  if (v16)
  {
    v10 = a1;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v25 = v17;
    v26 = v18;
    sub_2A95C8(&v22, v1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF120);
    sub_2AA018();
    sub_3EB5A4();
    sub_FCF8(&v14, &qword_4FD3C8);
    v13[4] = v12[4];
    v13[5] = v12[5];
    v13[6] = v12[6];
    v13[7] = v12[7];
    v13[0] = v12[0];
    v13[1] = v12[1];
    v13[2] = v12[2];
    v13[3] = v12[3];
    sub_FCF8(v13, &qword_4FF120);
    v6 = v10;
    sub_2AA100(v5, v10);
    return (*(v11 + 56))(v6, 0, 1, v3);
  }

  else
  {
    v8 = *(v11 + 56);

    return v8(a1, 1, 1, v3);
  }
}

uint64_t sub_2A95C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + *(type metadata accessor for WidgetEyebrowGenerator(0) + 28));
  if (v9 == 1)
  {
    v5 = sub_3EB214();
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  else
  {
    sub_243E88(v5, v6, v7);
  }

  v34 = sub_3EB0D4();
  sub_3EA264();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v7 & 1;
  v22 = sub_3EBA84();
  v32 = v23;
  v33 = v22;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  if (v9)
  {
    v24 = sub_3EB214();
    v25 = v28;
    v26 = v29;
    v27 = v30;
  }

  else
  {
    sub_243E88(v24, v25, v26);
  }

  sub_243E88(v24, v25, v26 & 1);

  sub_94D30(v24, v25, v26 & 1);

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v21;
  *(a3 + 24) = v8;
  *(a3 + 32) = v34;
  *(a3 + 40) = v14;
  *(a3 + 48) = v16;
  *(a3 + 56) = v18;
  *(a3 + 64) = v20;
  *(a3 + 72) = 0;
  *(a3 + 80) = v33;
  *(a3 + 88) = v32;
  *(a3 + 96) = v24;
  *(a3 + 104) = v25;
  *(a3 + 112) = v26 & 1;
  *(a3 + 120) = v27;
  return result;
}

uint64_t sub_2A97A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E93B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A980C()
{
  v0 = sub_3ED1F4();
  __chkstk_darwin(v0 - 8);
  v28 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_3E6064();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = sub_3E6124();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E6044();
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  sub_3E6034();
  if (sub_3E5FE4() == 0x53555F6E65 && v16 == 0xE500000000000000)
  {

    v18 = 1;
  }

  else
  {
    v18 = sub_3EE804();
  }

  sub_3E6104();
  sub_3E6074();
  (*(v3 + 104))(v5, enum case for Calendar.Identifier.gregorian(_:), v2);
  v19 = sub_3E6054();
  v20 = *(v3 + 8);
  v20(v5, v2);
  v20(v8, v2);
  if ((v18 & 1) == 0 || (v19 & 1) == 0)
  {
    (*(v31 + 8))(v11, v32);
    (*(v29 + 8))(v15, v30);
    return 0;
  }

  sub_3ED184();
  sub_3E6034();
  v21 = sub_3ED294();
  if (v21 == 0xD000000000000028 && 0x800000000042C220 == v22)
  {
    (*(v31 + 8))(v11, v32);
    (*(v29 + 8))(v15, v30);
LABEL_14:

    return 0;
  }

  v23 = v21;
  v24 = v22;
  v25 = sub_3EE804();
  (*(v31 + 8))(v11, v32);
  (*(v29 + 8))(v15, v30);
  if (v25)
  {
    goto LABEL_14;
  }

  v27 = HIBYTE(v24) & 0xF;
  result = v23;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v27 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2A9C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2A9D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2A9DB0(uint64_t result, int a2, int a3)
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

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_2A9F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2AA018()
{
  result = qword_4FF128;
  if (!qword_4FF128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF120);
    sub_29AE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF128);
  }

  return result;
}

unint64_t sub_2AA09C()
{
  result = qword_4FE848;
  if (!qword_4FE848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE848);
  }

  return result;
}

uint64_t sub_2AA100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2AA174()
{
  result = qword_4FF130;
  if (!qword_4FF130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF138);
    sub_2AA1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF130);
  }

  return result;
}

unint64_t sub_2AA1F8()
{
  result = qword_4FF140;
  if (!qword_4FF140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF118);
    sub_2AA018();
    sub_2AA2B4(&qword_4F19C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF140);
  }

  return result;
}

uint64_t sub_2AA2B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2AA3BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_F9E0();

  *a1 = v2;
  return result;
}

unint64_t sub_2AA3FC()
{
  result = qword_4FF148;
  if (!qword_4FF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF148);
  }

  return result;
}

unint64_t sub_2AA454()
{
  result = qword_4FF150;
  if (!qword_4FF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF150);
  }

  return result;
}

unint64_t sub_2AA4B0()
{
  result = qword_4FF158;
  if (!qword_4FF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF158);
  }

  return result;
}

unint64_t sub_2AA508()
{
  result = qword_4FF160;
  if (!qword_4FF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF160);
  }

  return result;
}

uint64_t sub_2AA560()
{
  sub_288CF4();
  sub_3EAB04();
  sub_288D48();
  sub_3EAB04();
  return v2 & ~v1;
}

uint64_t sub_2AA5C8()
{
  sub_288D48();
  sub_3EAB04();
  return v1;
}

uint64_t sub_2AA630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2AA3FC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_2AA6AC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_3E5FC4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_13;
  }

  v13 = sub_3E5F84();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF168);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[14];

  return v17(v18, a2, v16);
}

uint64_t sub_2AA8E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_3E5FC4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_11;
  }

  v13 = sub_3E5F84();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF168);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[14];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for EpisodeListEntry()
{
  result = qword_4FF1C8;
  if (!qword_4FF1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2AAB4C()
{
  sub_5FBE4(319, &qword_4E9978);
  if (v0 <= 0x3F)
  {
    sub_5FBE4(319, &unk_4FD4A8);
    if (v1 <= 0x3F)
    {
      sub_2AADC0(319, &qword_4FD4A0, _s7EpisodeVMa, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_3E5FC4();
        if (v3 <= 0x3F)
        {
          sub_2AADC0(319, &qword_4FF1D8, type metadata accessor for CGImage, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_5FBE4(319, &qword_4FAFC8);
            if (v5 <= 0x3F)
            {
              sub_2AADC0(319, &qword_4FF1E0, &type metadata accessor for Date, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_3E5F84();
                if (v7 <= 0x3F)
                {
                  sub_2AADC0(319, &unk_4FF1E8, &type metadata accessor for TimelineEntryRelevance, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_2AADC0(319, &qword_4E9918, &type metadata accessor for URL, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2AADC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2AAE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v7 = sub_3E5F84();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5B8);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  v19 = sub_3ECF74();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a3, v19);
  (*(v20 + 56))(v18, 0, 1, v19);
  result = sub_3E8264();
  if (result)
  {
    __chkstk_darwin(result);
    *(&v37 - 2) = v18;
    v37 = sub_263314(sub_2AC044, (&v37 - 4), 1uLL, v22);
    sub_FCF8(v18, &qword_4FD5B8);
    (*(v8 + 56))(v15, 1, 1, v7);
    v23 = sub_3E5DC4();
    v24 = *(*(v23 - 8) + 56);
    v38 = v15;
    v25 = v12;
    v24(v12, 1, 1, v23);
    v26 = v40;
    sub_3E5F74();
    v27 = type metadata accessor for EpisodeListEntry();
    sub_3E5FB4();
    v39 = v25;
    v28 = v26;
    v29 = v27[14];
    v24((a4 + v29), 1, 1, v23);
    v30 = v38;
    *a4 = v41;
    *(a4 + 8) = a2;
    *(a4 + v27[9]) = 0;
    *(a4 + v27[10]) = 0;
    sub_FBD0(v30, a4 + v27[11], &qword_4EF460);
    (*(v8 + 16))(a4 + v27[12], v28, v7);
    v31 = v37;

    v32 = a4 + v29;
    v33 = v39;
    sub_2ABFA8(v39, v32);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    v34 = *(v31 + 16);
    *(a4 + v27[15]) = 1;
    if (v34)
    {
      *(a4 + 32) = 5;
      *(a4 + 40) = v31;
      v35 = a4 + v27[13];

      sub_2B10B8(v28, v31, v35);
    }

    else
    {
      *(a4 + 32) = 0;
      *(a4 + 40) = v31;
      v35 = a4 + v27[13];
      sub_3ECFE4();
    }

    (*(v8 + 8))(v28, v7);
    sub_FCF8(v33, &unk_4E9EE0);
    sub_FCF8(v30, &qword_4EF460);
    v36 = sub_3ECFF4();
    return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2AB304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v37 = a2;
  v6 = sub_3E5F84();
  v35 = v6;
  v38 = *(v6 - 8);
  v7 = v38;
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5B8);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v34 - v18;
  (*(v7 + 56))(&v34 - v18, 1, 1, v6, v17);
  v20 = sub_3ECF74();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15, a3, v20);
  (*(v21 + 56))(v15, 0, 1, v20);
  v22 = sub_3E5DC4();
  v23 = *(*(v22 - 8) + 56);
  v23(v12, 1, 1, v22);
  sub_3E5F74();
  v24 = type metadata accessor for EpisodeListEntry();
  sub_3E5FB4();
  v25 = v24[14];
  v26 = v22;
  v27 = v9;
  v28 = v35;
  v23((a4 + v25), 1, 1, v26);
  v29 = v37;
  *a4 = v36;
  *(a4 + 8) = v29;
  *(a4 + v24[9]) = 0;
  *(a4 + v24[10]) = 0;
  sub_FBD0(v19, a4 + v24[11], &qword_4EF460);
  (*(v38 + 16))(a4 + v24[12], v27, v28);

  sub_2ABFA8(v12, a4 + v25);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + v24[15]) = 1;
  *(a4 + 32) = 2;
  result = sub_3E8264();
  if (result)
  {
    __chkstk_darwin(result);
    *(&v34 - 2) = v15;
    *(a4 + 40) = sub_263314(sub_2AC044, (&v34 - 4), 1uLL, v31);
    v32 = v24[13];
    sub_3ECFE4();
    (*(v38 + 8))(v27, v28);
    sub_FCF8(v12, &unk_4E9EE0);
    sub_FCF8(v19, &qword_4EF460);
    sub_FCF8(v15, &qword_4FD5B8);
    v33 = sub_3ECFF4();
    return (*(*(v33 - 8) + 56))(a4 + v32, 0, 1, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2AB7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v11 - 8);
  v59 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v16 = sub_3E5F84();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v60 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = v2[5];
  v62 = a1;
  v57 = sub_263550(sub_2ABF74, v61, v22);
  v49 = 0;
  v23 = v17;
  v24 = type metadata accessor for EpisodeListEntry();
  sub_FBD0(v2 + v24[11], v15, &qword_4EF460);
  if ((*(v23 + 48))(v15, 1, v16) == 1)
  {
    sub_FCF8(v15, &qword_4EF460);
    v54 = 0;
    v55 = 0;
    v25 = a1;
  }

  else
  {
    v58 = v7;
    (*(v23 + 32))(v21, v15, v16);
    v26 = sub_3E5EC4();
    (*(v23 + 8))(v21, v16);
    if (v26)
    {
      v27 = *(v2 + v24[9]);
      v28 = *(v2 + v24[10]);
      v55 = v27;
      if (v28)
      {
        v54 = v28;

        v29 = v27;
      }

      else
      {
        v30 = v27;
        v54 = 0;
      }
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    v25 = a1;
    v7 = v58;
  }

  v31 = v2[1];
  v52 = *v2;
  v56 = *(v2 + v24[15]);
  v51 = *(v2 + 32);
  (*(v23 + 56))(v59, 1, 1, v16);
  v50 = v23;
  v53 = *(v23 + 16);
  v53(v60, v25, v16);
  v32 = sub_3ECF74();
  v33 = *(*(v32 - 8) + 56);
  v58 = v10;
  v33(v10, 1, 1, v32);
  v34 = sub_3E5DC4();
  v35 = *(*(v34 - 8) + 56);
  v35(v7, 1, 1, v34);
  v36 = v7;

  sub_3E5FB4();
  v37 = v24[14];
  v35((a2 + v37), 1, 1, v34);
  v38 = v51;
  *a2 = v52;
  *(a2 + 8) = v31;
  v39 = v54;
  *(a2 + v24[9]) = v55;
  *(a2 + v24[10]) = v39;
  sub_FBD0(v59, a2 + v24[11], &qword_4EF460);
  v53(a2 + v24[12], v60, v16);
  sub_2ABFA8(v36, a2 + v37);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v40 = v57;
  if (v38 == 5 && *(v57 + 16))
  {
    *(a2 + v24[15]) = v56;
    *(a2 + 32) = 5;
    *(a2 + 40) = v40;
    v41 = a2 + v24[13];
    v42 = v40;

    sub_2B10B8(v60, v42, v41);

LABEL_17:
    v44 = v58;
LABEL_23:
    sub_FCF8(v36, &unk_4E9EE0);
    (*(v50 + 8))(v60, v16);
    sub_FCF8(v59, &qword_4EF460);
    sub_FCF8(v44, &qword_4FD5B8);
    v48 = sub_3ECFF4();
    return (*(*(v48 - 8) + 56))(v41, 0, 1, v48);
  }

  if (v56)
  {
    *(a2 + v24[15]) = 1;
    if (v38 == 5)
    {
      v43 = 0;
    }

    else
    {
      v43 = v38;
    }

    *(a2 + 32) = v43;
    *(a2 + 40) = v40;
    v41 = a2 + v24[13];
    sub_3ECFE4();
    goto LABEL_17;
  }

  *(a2 + v24[15]) = 1;
  if (v38 == 5)
  {
    v45 = 0;
  }

  else
  {
    v45 = v38;
  }

  *(a2 + 32) = v45;
  result = sub_3E8264();
  v44 = v58;
  if (result)
  {
    __chkstk_darwin(result);
    *(&v49 - 2) = v44;
    *(a2 + 40) = sub_263314(sub_2AC018, (&v49 - 4), 1uLL, v47);
    v41 = a2 + v24[13];
    sub_3ECFE4();
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_2ABE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_3E5F84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2ABF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_3E5FC4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2ABFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2AC070(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[23];
    goto LABEL_13;
  }

  v16 = type metadata accessor for WidgetPredictedPlayState(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[24];

  return v17(v18, a2, v16);
}

uint64_t sub_2AC2B0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[23];
    goto LABEL_11;
  }

  v16 = type metadata accessor for WidgetPredictedPlayState(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[24];

  return v17(v18, a2, a2, v16);
}

uint64_t _s7EpisodeVMa()
{
  result = qword_4FF298;
  if (!qword_4FF298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2AC528()
{
  sub_2AC718(319, &qword_4FF1E0, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4E9978);
    if (v1 <= 0x3F)
    {
      sub_2AC718(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
      if (v2 <= 0x3F)
      {
        sub_2AC718(319, &qword_4FF1D8, type metadata accessor for CGImage);
        if (v3 <= 0x3F)
        {
          sub_2AC718(319, &qword_4E9918, &type metadata accessor for URL);
          if (v4 <= 0x3F)
          {
            sub_5FBE4(319, &qword_4ED9F8);
            if (v5 <= 0x3F)
            {
              sub_2AC76C();
              if (v6 <= 0x3F)
              {
                type metadata accessor for WidgetPredictedPlayState(319);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2AC718(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2AC76C()
{
  if (!qword_4FF2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDA08);
    v0 = sub_3E8344();
    if (!v1)
    {
      atomic_store(v0, &qword_4FF2A8);
    }
  }
}

uint64_t sub_2AC7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v3 = sub_3E5F84();
  v105 = *(v3 - 8);
  v106 = v3;
  __chkstk_darwin(v3);
  v103 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v5 - 8);
  v104 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v7 - 8);
  v102 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v101 = &v83 - v10;
  __chkstk_darwin(v11);
  v109 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v108 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v83 - v16;
  v17 = sub_3ECF74();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF330);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5B8);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v83 - v28;
  v30 = sub_3E5FC4();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  v99 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v98 = v34;
  (*(v31 + 8))(v33, v30);
  v115._countAndFlagsBits = 109;
  v115._object = 0xE100000000000000;
  v97 = sub_3ED464(v115, 18);
  v96 = v35;
  v116._countAndFlagsBits = 109;
  v116._object = 0xE100000000000000;
  v95 = sub_3ED464(v116, 10);
  v94 = v36;
  (*(v18 + 104))(v29, enum case for WidgetFamily.systemExtraLarge(_:), v17);
  (*(v18 + 56))(v29, 0, 1, v17);
  v37 = *(v21 + 56);
  sub_FBD0(v100, v23, &qword_4FD5B8);
  sub_FBD0(v29, &v23[v37], &qword_4FD5B8);
  v38 = *(v18 + 48);
  if (v38(v23, 1, v17) == 1)
  {
    sub_FCF8(v29, &qword_4FD5B8);
    if (v38(&v23[v37], 1, v17) == 1)
    {
      sub_FCF8(v23, &qword_4FD5B8);
LABEL_9:
      v39 = 60;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_FBD0(v23, v26, &qword_4FD5B8);
  if (v38(&v23[v37], 1, v17) == 1)
  {
    sub_FCF8(v29, &qword_4FD5B8);
    (*(v18 + 8))(v26, v17);
LABEL_6:
    sub_FCF8(v23, &qword_4FF330);
    goto LABEL_7;
  }

  v40 = v93;
  (*(v18 + 32))(v93, &v23[v37], v17);
  sub_2AFA00(&qword_4FF338, &type metadata accessor for WidgetFamily);
  v41 = sub_3ED174();
  v42 = *(v18 + 8);
  v42(v40, v17);
  sub_FCF8(v29, &qword_4FD5B8);
  v42(v26, v17);
  sub_FCF8(v23, &qword_4FD5B8);
  if (v41)
  {
    goto LABEL_9;
  }

LABEL_7:
  v39 = 70;
LABEL_10:
  v117._countAndFlagsBits = 109;
  v117._object = 0xE100000000000000;
  v92 = sub_3ED464(v117, v39);
  v91 = v43;
  v44 = sub_3E7784();
  v45 = *(*(v44 - 8) + 56);
  v45(v107, 1, 1, v44);
  v45(v108, 1, 1, v44);
  v46 = v106;
  v47 = v105 + 56;
  v48 = *(v105 + 56);
  v48(v109, 1, 1, v106);
  v49 = sub_3E5DC4();
  v90 = *(*(v49 - 8) + 56);
  v90(v104, 1, 1, v49);
  v48(v101, 1, 1, v46);
  v48(v102, 1, 1, v46);
  v100 = v47;
  v114 = 0;
  memset(v113, 0, sizeof(v113));
  sub_3E5F64();
  v50 = _s7EpisodeVMa();
  v85 = v50[11];
  v48(a2 + v85, 1, 1, v46);
  v51 = v48;
  v52 = v50[12];
  v88 = v50[13];
  v84 = (a2 + v52);
  v45(a2 + v88, 1, 1, v44);
  v87 = v50[14];
  v45(a2 + v87, 1, 1, v44);
  *(a2 + v50[15]) = 0;
  v86 = v50[16];
  v90(a2 + v86, 1, 1, v49);
  v53 = v50[18];
  v89 = v50[17];
  v54 = a2 + v53;
  v55 = v50[20];
  v56 = a2 + v50[19];
  v93 = v51;
  (v51)(a2 + v55, 1, 1, v46);
  v57 = v50[22];
  (v51)(a2 + v57, 1, 1, v46);
  v58 = v50[23];
  v112 = 0;
  memset(v111, 0, sizeof(v111));
  sub_FBD0(v111, v110, &qword_4FDA08);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA08);
  sub_3E8314();
  sub_FCF8(v111, &qword_4FDA08);
  v59 = v98;
  *a2 = v99;
  *(a2 + 8) = v59;
  *(a2 + 16) = 2;
  v60 = v96;
  *(a2 + 24) = v97;
  *(a2 + 32) = v60;
  *(a2 + 40) = 0;
  v61 = v94;
  *(a2 + 48) = v95;
  *(a2 + 56) = v61;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  v62 = v91;
  *(a2 + 88) = v92;
  *(a2 + 96) = v62;
  sub_B8464(v109, a2 + v85, &qword_4EF460);
  v63 = v84;
  *v84 = 0;
  v63[1] = 0;
  sub_B8464(v107, a2 + v88, &qword_4F1D50);
  sub_B8464(v108, a2 + v87, &qword_4F1D50);
  v64 = v104;
  sub_B8464(v104, a2 + v86, &unk_4E9EE0);
  *(a2 + v89) = 0;
  *(a2 + v50[21]) = 0;
  *v54 = 0;
  *(v54 + 8) = 1;
  *v56 = 0;
  *(v56 + 8) = 1;
  v65 = v101;
  sub_B8464(v101, a2 + v55, &qword_4EF460);
  v66 = v102;
  sub_B8464(v102, a2 + v57, &qword_4EF460);
  sub_FBD0(v113, v111, &qword_4FDA08);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  (*(*(v67 - 8) + 8))(a2 + v58, v67);
  sub_FBD0(v111, v110, &qword_4FDA08);
  sub_3E8314();
  sub_FCF8(v111, &qword_4FDA08);
  v68 = a2 + v50[24];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
  (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
  v70 = type metadata accessor for WidgetPredictedPlayState(0);
  v71 = v106;
  (v93)(v68 + v70[5], 1, 2, v106);
  v72 = v70[6];
  v73 = sub_3E9224();
  (*(*(v73 - 8) + 56))(v68 + v72, 1, 1, v73);
  v74 = [objc_opt_self() mainBundle];
  v82._countAndFlagsBits = 0xE000000000000000;
  v118._object = 0x800000000042C800;
  v118._countAndFlagsBits = 0xD000000000000013;
  v119.value._countAndFlagsBits = 0;
  v119.value._object = 0;
  v75.super.isa = v74;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v76 = sub_3E5A74(v118, v119, v75, v120, v82);
  v78 = v77;

  (*(v105 + 8))(v103, v71);
  sub_FCF8(v113, &qword_4FDA08);
  sub_FCF8(v66, &qword_4EF460);
  sub_FCF8(v65, &qword_4EF460);
  sub_FCF8(v64, &unk_4E9EE0);
  sub_FCF8(v109, &qword_4EF460);
  sub_FCF8(v108, &qword_4F1D50);
  result = sub_FCF8(v107, &qword_4F1D50);
  v80 = (v68 + v70[7]);
  *v80 = 0;
  v80[1] = 0;
  v81 = (v68 + v70[8]);
  *v81 = v76;
  v81[1] = v78;
  return result;
}

uint64_t sub_2AD5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF340);
  __chkstk_darwin(v136);
  v137 = v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v135 = v126 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v7 - 8);
  v9 = v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v126 - v11;
  v13 = sub_3E5F84();
  v138 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v126 - v17;
  __chkstk_darwin(v19);
  v133 = (v126 - v20);
  __chkstk_darwin(v21);
  *&v134 = v126 - v22;
  v23 = type metadata accessor for WidgetPredictedPlayState(0);
  __chkstk_darwin(v23);
  v25 = v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29A88C(v2, a2);
  v26 = _s7EpisodeVMa();
  v27 = v26;
  v28 = a2 + v26[18];
  if (*(v28 + 8))
  {
    goto LABEL_16;
  }

  v29 = *v28;
  v30 = *v28;
  if (*v28 <= 0.0)
  {
    goto LABEL_16;
  }

  v31 = *(a2 + v26[17]);
  v130 = v23;
  v131 = a2;
  v129 = v29;
  if (!v31)
  {
    v35 = *(v2 + v26[21]);
    v36 = a2 + v26[19];
    if ((*(v36 + 8) & 1) != 0 || (v37 = *v36, v37 >= v30))
    {
      sub_3E5F64();
      sub_3E5EE4();
      sub_2AFA00(&qword_4FEF08, &type metadata accessor for Date);
      result = sub_3ED164();
      if (v35)
      {
        if (result)
        {
          v52 = *(v138 + 32);
          v53 = v135;
          v54 = v13;
          v52(v135, v18, v13);
          v55 = v136;
          v52((v53 + *(v136 + 48)), v15, v13);
          v56 = v137;
          sub_FBD0(v53, v137, &qword_4FF340);
          v57 = *(v55 + 48);
          v52(v25, v56, v54);
          v134 = *(v138 + 8);
          (*&v134)(v56 + v57, v54);
          sub_2AE7D4(v53, v56);
          v58 = *(v55 + 48);
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
          v52(&v25[*(v59 + 36)], (v56 + v58), v54);
          (*&v134)(v56, v54);
          (*(*(v59 - 8) + 56))(v25, 0, 1, v59);
          v60 = v54;
          v23 = v130;
          (*(v138 + 56))(&v25[v130[5]], 1, 2, v60);
          sub_3E9204();
          v61 = [objc_opt_self() mainBundle];
          v125._countAndFlagsBits = 0xE000000000000000;
          v139._countAndFlagsBits = 0xD000000000000015;
          v139._object = 0x800000000042C820;
          v144.value._countAndFlagsBits = 0;
          v144.value._object = 0;
          v62.super.isa = v61;
          v149._countAndFlagsBits = 0;
          v149._object = 0xE000000000000000;
          v63 = sub_3E5A74(v139, v144, v62, v149, v125);
          v65 = v64;

          *&v25[v23[7]] = xmmword_414E40;
          a2 = v131;
LABEL_18:
          v75 = &v25[v23[8]];
          *v75 = v63;
          v75[1] = v65;
          return sub_2AE770(v25, a2 + v27[24]);
        }

        __break(1u);
      }

      else if (result)
      {
        v76 = *(v138 + 32);
        v77 = v135;
        v78 = v13;
        v76(v135, v18, v13);
        v79 = v136;
        v76((v77 + *(v136 + 48)), v15, v13);
        v80 = v137;
        sub_FBD0(v77, v137, &qword_4FF340);
        v81 = *(v79 + 48);
        v76(v25, v80, v78);
        v134 = *(v138 + 8);
        (*&v134)(v80 + v81, v78);
        sub_2AE7D4(v77, v80);
        v82 = *(v79 + 48);
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
        v76(&v25[*(v83 + 36)], (v80 + v82), v78);
        (*&v134)(v80, v78);
        (*(*(v83 - 8) + 56))(v25, 0, 1, v83);
        v84 = v78;
        v23 = v130;
        (*(v138 + 56))(&v25[v130[5]], 1, 2, v84);
        sub_3E9204();
        v51 = [objc_opt_self() mainBundle];
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      v134 = v37;
      sub_3E5F64();
      sub_3E5EE4();
      sub_2AFA00(&qword_4FEF08, &type metadata accessor for Date);
      v38 = v13;
      result = sub_3ED164();
      if (result)
      {
        v40 = *(v138 + 32);
        v41 = v135;
        v40(v135, v18, v13);
        v42 = v136;
        v40((v41 + *(v136 + 48)), v15, v13);
        v133 = v40;
        v43 = v137;
        sub_FBD0(v41, v137, &qword_4FF340);
        v44 = *(v42 + 48);
        v40(v25, v43, v38);
        v45 = *(v138 + 8);
        v45(v43 + v44, v38);
        sub_2AE7D4(v41, v43);
        v46 = *(v42 + 48);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
        v133(&v25[*(v47 + 36)], v43 + v46, v38);
        v45(v43, v38);
        (*(*(v47 - 8) + 56))(v25, 0, 1, v47);
        v48 = v130;
        v49 = v130[5];
        sub_3E5EE4();
        v50 = v38;
        v23 = v48;
        (*(v138 + 56))(&v25[v49], 0, 2, v50);
        sub_3E9204();
        v51 = [objc_opt_self() mainBundle];
LABEL_21:
        v85 = v51;
        v125._countAndFlagsBits = 0xE000000000000000;
        v141._object = 0x800000000042C800;
        v141._countAndFlagsBits = 0xD000000000000013;
        v146.value._countAndFlagsBits = 0;
        v146.value._object = 0;
        v86.super.isa = v85;
        v151._countAndFlagsBits = 0;
        v151._object = 0xE000000000000000;
        v63 = sub_3E5A74(v141, v146, v86, v151, v125);
        v65 = v87;

        v88 = &v25[v23[7]];
        *v88 = 0;
        *(v88 + 1) = 0;
        a2 = v131;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v32 = v26[20];
  v127 = v26[22];
  v128 = v26;
  sub_FBD0(a2 + v32, v12, &qword_4EF460);
  v33 = *(v138 + 48);
  v34 = v13;
  if (v33(v12, 1, v13) == 1)
  {
    v9 = v12;
LABEL_15:
    v27 = v128;
    v23 = v130;
    sub_FCF8(v9, &qword_4EF460);
    a2 = v131;
LABEL_16:
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
    (*(*(v67 - 8) + 56))(v25, 1, 1, v67);
    (*(v138 + 56))(&v25[v23[5]], 1, 2, v13);
    v68 = v23[6];
    v69 = sub_3E9224();
    (*(*(v69 - 8) + 56))(&v25[v68], 1, 1, v69);
    v70 = [objc_opt_self() mainBundle];
    v125._countAndFlagsBits = 0xE000000000000000;
    v140._object = 0x800000000042C800;
    v140._countAndFlagsBits = 0xD000000000000013;
    v145.value._countAndFlagsBits = 0;
    v145.value._object = 0;
    v71.super.isa = v70;
    v150._countAndFlagsBits = 0;
    v150._object = 0xE000000000000000;
    v63 = sub_3E5A74(v140, v145, v71, v150, v125);
    v65 = v72;

    v73 = v23[7];
LABEL_17:
    v74 = &v25[v73];
    *v74 = 0;
    *(v74 + 1) = 0;
    goto LABEL_18;
  }

  v126[0] = *(v138 + 32);
  v126[1] = v138 + 32;
  (v126[0])(*&v134, v12, v13);
  sub_FBD0(a2 + v127, v9, &qword_4EF460);
  v66 = v13;
  if (v33(v9, 1, v13) == 1)
  {
    (*(v138 + 8))(COERCE_DOUBLE(*&v134), v13);
    goto LABEL_15;
  }

  v89 = v133;
  (v126[0])(v133, v9, v34);
  sub_2AFA00(&qword_4FEF08, &type metadata accessor for Date);
  v90 = sub_3ED154();
  v27 = v128;
  if (v90)
  {
    v91 = v134;
    result = sub_3ED164();
    a2 = v131;
    if (result)
    {
      v92 = *(v138 + 16);
      v93 = v135;
      v92(v135, *&v91, v66);
      v94 = v136;
      v92((v93 + *(v136 + 48)), v89, v66);
      v95 = v137;
      sub_FBD0(v93, v137, &qword_4FF340);
      v96 = *(v94 + 48);
      (v126[0])(v25, v95, v66);
      v97 = v66;
      v98 = v138;
      v99 = *(v138 + 8);
      v127 = v138 + 8;
      v99(v95 + v96, v97);
      sub_2AE7D4(v93, v95);
      v100 = *(v94 + 48);
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
      (v126[0])(&v25[*(v101 + 36)], v95 + v100, v97);
      v99(v95, v97);
      (*(*(v101 - 8) + 56))(v25, 0, 1, v101);
      v102 = v130;
      v103 = *(v98 + 56);
      v104 = v97;
      v103(&v25[v130[5]], 2, 2, v97);
      v105 = v133;
      sub_3E5E54();
      sub_3E9204();
      v106 = [objc_opt_self() mainBundle];
      v125._countAndFlagsBits = 0xE000000000000000;
      v142._countAndFlagsBits = 0xD000000000000014;
      v142._object = 0x800000000042C840;
      v147.value._countAndFlagsBits = 0;
      v147.value._object = 0;
      v107.super.isa = v106;
      v152._countAndFlagsBits = 0;
      v152._object = 0xE000000000000000;
      v63 = sub_3E5A74(v142, v147, v107, v152, v125);
      v65 = v108;

      v99(v105, v104);
      v109 = v104;
      v23 = v102;
      v99(*&v134, v109);
      v73 = v102[7];
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  sub_3E5F64();
  sub_3E5EE4();
  result = sub_3ED164();
  a2 = v131;
  if (result)
  {
    v110 = v135;
    v111 = v18;
    v112 = v126[0];
    (v126[0])(v135, v111, v66);
    v113 = v136;
    v112(v110 + *(v136 + 48), v15, v66);
    v114 = v137;
    sub_FBD0(v110, v137, &qword_4FF340);
    v115 = *(v113 + 48);
    v112(v25, v114, v66);
    v116 = v66;
    v117 = *(v138 + 8);
    v132 = v138 + 8;
    v117(v114 + v115, v116);
    sub_2AE7D4(v110, v114);
    v118 = *(v113 + 48);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
    v112(&v25[*(v119 + 36)], (v114 + v118), v116);
    v117(v114, v116);
    (*(*(v119 - 8) + 56))(v25, 0, 1, v119);
    v120 = v130;
    (*(v138 + 56))(&v25[v130[5]], 1, 2, v116);
    sub_3E9204();
    v121 = [objc_opt_self() mainBundle];
    v125._countAndFlagsBits = 0xE000000000000000;
    v143._countAndFlagsBits = 0xD000000000000015;
    v143._object = 0x800000000042C820;
    v148.value._countAndFlagsBits = 0;
    v148.value._object = 0;
    v122.super.isa = v121;
    v153._countAndFlagsBits = 0;
    v153._object = 0xE000000000000000;
    v63 = sub_3E5A74(v143, v148, v122, v153, v125);
    v65 = v123;

    v117(v133, v116);
    v124 = v116;
    v23 = v120;
    v117(*&v134, v124);
    *&v25[v120[7]] = xmmword_414E40;
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2AE71C()
{
  result = qword_4FF328;
  if (!qword_4FF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF328);
  }

  return result;
}

uint64_t sub_2AE770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPredictedPlayState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2AE7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2AE844(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  v131 = v4;
  v132 = v5;
  __chkstk_darwin(v4);
  v129 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v133 = &v118 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9870);
  __chkstk_darwin(v130);
  v134 = &v118 - v9;
  v10 = sub_3E7784();
  v11 = *(v10 - 8);
  v136 = v10;
  v137 = v11;
  __chkstk_darwin(v10);
  v135 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v118 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4208);
  __chkstk_darwin(v19);
  v21 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v118 - v23;
  v25 = sub_3E5F84();
  v140 = *(v25 - 8);
  __chkstk_darwin(v25);
  v138 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v27 - 8);
  v125 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v127 = &v118 - v30;
  __chkstk_darwin(v31);
  v33 = &v118 - v32;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF348);
  __chkstk_darwin(v139);
  v126 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v128 = &v118 - v36;
  __chkstk_darwin(v37);
  v39 = &v118 - v38;
  if ((sub_3E9594() & 1) == 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_3EE804() & 1) == 0 || *(a1 + 40) != *(a2 + 40) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_3EE804() & 1) == 0 || *(a1 + 64) != *(a2 + 64) || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_3EE804() & 1) == 0 || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (sub_3EE804() & 1) == 0)
  {
    goto LABEL_23;
  }

  v121 = v15;
  v40 = _s7EpisodeVMa();
  v124 = v25;
  v122 = v40;
  v41 = *(v40 + 44);
  v42 = *(v139 + 48);
  sub_FBD0(a1 + v41, v39, &qword_4EF460);
  v123 = v42;
  sub_FBD0(a2 + v41, &v39[v42], &qword_4EF460);
  v43 = v140 + 48;
  v44 = *(v140 + 48);
  if (v44(v39, 1, v124) == 1)
  {
    v119 = v44;
    if (v44(&v39[v123], 1, v124) == 1)
    {
      v120 = v43;
      sub_FCF8(v39, &qword_4EF460);
      goto LABEL_26;
    }

LABEL_21:
    v45 = &qword_4FF348;
    v46 = v39;
LABEL_22:
    sub_FCF8(v46, v45);
    goto LABEL_23;
  }

  sub_FBD0(v39, v33, &qword_4EF460);
  v120 = v43;
  if (v44(&v39[v123], 1, v124) == 1)
  {
    (*(v140 + 8))(v33, v124);
    goto LABEL_21;
  }

  v119 = v44;
  (*(v140 + 32))(v138, &v39[v123], v124);
  sub_2AFA00(&qword_4FF350, &type metadata accessor for Date);
  LODWORD(v123) = sub_3ED174();
  v49 = *(v140 + 8);
  v49(v138, v124);
  v49(v33, v124);
  sub_FCF8(v39, &qword_4EF460);
  if ((v123 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  v50 = v122;
  v51 = v122[12];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_3EE804() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v55)
  {
    goto LABEL_23;
  }

  v56 = v50[13];
  v57 = *(v19 + 48);
  sub_FBD0(a1 + v56, v24, &qword_4F1D50);
  v123 = v57;
  sub_FBD0(a2 + v56, &v24[v57], &qword_4F1D50);
  v58 = v136;
  v60 = v137 + 48;
  v59 = *(v137 + 48);
  if (v59(v24, 1, v136) == 1)
  {
    if (v59(&v24[v123], 1, v58) == 1)
    {
      v137 = v60;
      sub_FCF8(v24, &qword_4F1D50);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  sub_FBD0(v24, v18, &qword_4F1D50);
  if (v59(&v24[v123], 1, v58) == 1)
  {
    sub_86F48(v18);
LABEL_38:
    v45 = &qword_4F4208;
    v46 = v24;
    goto LABEL_22;
  }

  v137 = v60;
  v61 = v135;
  sub_83F9C(&v24[v123], v135);
  v62 = sub_3E7724();
  sub_86F48(v61);
  sub_86F48(v18);
  sub_FCF8(v24, &qword_4F1D50);
  if ((v62 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_40:
  v63 = v122;
  v64 = v122[14];
  v65 = *(v19 + 48);
  sub_FBD0(a1 + v64, v21, &qword_4F1D50);
  sub_FBD0(a2 + v64, &v21[v65], &qword_4F1D50);
  v66 = v136;
  if (v59(v21, 1, v136) == 1)
  {
    if (v59(&v21[v65], 1, v66) == 1)
    {
      sub_FCF8(v21, &qword_4F1D50);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v67 = v121;
  sub_FBD0(v21, v121, &qword_4F1D50);
  if (v59(&v21[v65], 1, v66) == 1)
  {
    sub_86F48(v67);
LABEL_45:
    v45 = &qword_4F4208;
    v46 = v21;
    goto LABEL_22;
  }

  v68 = v135;
  sub_83F9C(&v21[v65], v135);
  v69 = sub_3E7724();
  sub_86F48(v68);
  sub_86F48(v67);
  sub_FCF8(v21, &qword_4F1D50);
  if ((v69 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_47:
  v70 = v63[15];
  v71 = *(a2 + v70);
  if (*(a1 + v70))
  {
    v73 = v133;
    v72 = v134;
    if (!v71)
    {
      goto LABEL_23;
    }

    type metadata accessor for CGImage(0);
    sub_2AFA00(&qword_4FF358, type metadata accessor for CGImage);
    v74 = v71;
    v75 = sub_3E6C74();

    if ((v75 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v73 = v133;
    v72 = v134;
    if (v71)
    {
      goto LABEL_23;
    }
  }

  v76 = v63[16];
  v77 = *(v130 + 48);
  sub_FBD0(a1 + v76, v72, &unk_4E9EE0);
  sub_FBD0(a2 + v76, v72 + v77, &unk_4E9EE0);
  v78 = v131;
  v79 = *(v132 + 48);
  if (v79(v72, 1, v131) == 1)
  {
    if (v79(v72 + v77, 1, v78) == 1)
    {
      sub_FCF8(v72, &unk_4E9EE0);
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  sub_FBD0(v72, v73, &unk_4E9EE0);
  if (v79(v72 + v77, 1, v78) == 1)
  {
    (*(v132 + 8))(v73, v78);
LABEL_57:
    v45 = &qword_4E9870;
    v46 = v72;
    goto LABEL_22;
  }

  v80 = v132;
  v81 = v72 + v77;
  v82 = v129;
  (*(v132 + 32))(v129, v81, v78);
  sub_2AFA00(&qword_4E9880, &type metadata accessor for URL);
  v83 = sub_3ED174();
  v84 = *(v80 + 8);
  v84(v82, v78);
  v84(v73, v78);
  sub_FCF8(v72, &unk_4E9EE0);
  if ((v83 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_59:
  if (*(a1 + v63[17]) != *(a2 + v63[17]))
  {
    goto LABEL_23;
  }

  v85 = v63[18];
  v86 = (a1 + v85);
  v87 = *(a1 + v85 + 8);
  v88 = (a2 + v85);
  v89 = *(a2 + v85 + 8);
  if (v87)
  {
    if (!v89)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*v86 != *v88)
    {
      LOBYTE(v89) = 1;
    }

    if (v89)
    {
      goto LABEL_23;
    }
  }

  v90 = v122[19];
  v91 = (a1 + v90);
  v92 = *(a1 + v90 + 8);
  v93 = (a2 + v90);
  v94 = *(a2 + v90 + 8);
  if (v92)
  {
    if (!v94)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*v91 != *v93)
    {
      LOBYTE(v94) = 1;
    }

    if (v94)
    {
      goto LABEL_23;
    }
  }

  v95 = v122[20];
  v96 = *(v139 + 48);
  v97 = v128;
  sub_FBD0(a1 + v95, v128, &qword_4EF460);
  sub_FBD0(a2 + v95, v97 + v96, &qword_4EF460);
  if (v119(v97, 1, v124) == 1)
  {
    if (v119(v128 + v96, 1, v124) == 1)
    {
      sub_FCF8(v128, &qword_4EF460);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v98 = v128;
  sub_FBD0(v128, v127, &qword_4EF460);
  if (v119(v98 + v96, 1, v124) == 1)
  {
    (*(v140 + 8))(v127, v124);
LABEL_77:
    v45 = &qword_4FF348;
    v46 = v128;
    goto LABEL_22;
  }

  v99 = v140;
  v100 = v128;
  v101 = v138;
  v102 = v124;
  (*(v140 + 32))(v138, v128 + v96, v124);
  sub_2AFA00(&qword_4FF350, &type metadata accessor for Date);
  v103 = v127;
  v104 = sub_3ED174();
  v105 = *(v99 + 8);
  v105(v101, v102);
  v105(v103, v102);
  sub_FCF8(v100, &qword_4EF460);
  if ((v104 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_79:
  if (*(a1 + v122[21]) != *(a2 + v122[21]))
  {
    goto LABEL_23;
  }

  v106 = v122[22];
  v107 = *(v139 + 48);
  v108 = v126;
  sub_FBD0(a1 + v106, v126, &qword_4EF460);
  sub_FBD0(a2 + v106, v108 + v107, &qword_4EF460);
  if (v119(v108, 1, v124) != 1)
  {
    v109 = v126;
    sub_FBD0(v126, v125, &qword_4EF460);
    if (v119(v109 + v107, 1, v124) != 1)
    {
      v110 = v140;
      v111 = v126;
      v112 = v126 + v107;
      v113 = v138;
      v114 = v124;
      (*(v140 + 32))(v138, v112, v124);
      sub_2AFA00(&qword_4FF350, &type metadata accessor for Date);
      v115 = v125;
      v116 = sub_3ED174();
      v117 = *(v110 + 8);
      v117(v113, v114);
      v117(v115, v114);
      sub_FCF8(v111, &qword_4EF460);
      if ((v116 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_87;
    }

    (*(v140 + 8))(v125, v124);
    goto LABEL_85;
  }

  if (v119(v126 + v107, 1, v124) != 1)
  {
LABEL_85:
    v45 = &qword_4FF348;
    v46 = v126;
    goto LABEL_22;
  }

  sub_FCF8(v126, &qword_4EF460);
LABEL_87:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA08);
  if (sub_3E8334())
  {
    v47 = sub_2B032C(a1 + v122[24], a2 + v122[24]);
    return v47 & 1;
  }

LABEL_23:
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_2AFA00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2AFA5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE808);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for WidgetPredictedPlayState.State(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_2AFC00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE808);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for WidgetPredictedPlayState.State(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_2AFD8C()
{
  sub_2AFE48();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WidgetPredictedPlayState.State(319);
    if (v1 <= 0x3F)
    {
      sub_2AFEAC();
      if (v2 <= 0x3F)
      {
        sub_1972C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2AFE48()
{
  if (!qword_4FF3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD9F8);
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FF3C8);
    }
  }
}

void sub_2AFEAC()
{
  if (!qword_4FF3D0)
  {
    sub_3E9224();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FF3D0);
    }
  }
}

uint64_t sub_2AFF18(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5F84();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AFF98(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_3E5F84();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2B001C()
{
  v0 = sub_3E5F84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_2B007C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5F84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WidgetPredictedPlayState.State(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF4B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_29BF98(a1, &v21 - v12);
  sub_29BF98(a2, &v13[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_29BF98(v13, v10);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = sub_3E5F54();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_2B0CD4(v13);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_FCF8(v13, &qword_4FF4B8);
    v18 = 0;
    return v18 & 1;
  }

  sub_2B0CD4(v13);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_2B032C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E9224();
  v5 = *(v4 - 8);
  v75 = v4;
  v76 = v5;
  __chkstk_darwin(v4);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  __chkstk_darwin(v7 - 8);
  v77 = &v71 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF4B0);
  __chkstk_darwin(v74);
  v81 = &v71 - v9;
  v84 = sub_3E5F84();
  v80 = *(v84 - 8);
  __chkstk_darwin(v84);
  v72 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetPredictedPlayState.State(0);
  __chkstk_darwin(v11 - 8);
  v73 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF4B8);
  __chkstk_darwin(v78);
  v79 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE808);
  __chkstk_darwin(v18 - 8);
  v20 = &v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF4C0);
  __chkstk_darwin(v21 - 8);
  v23 = &v71 - v22;
  v25 = *(v24 + 56);
  v82 = a1;
  sub_FBD0(a1, &v71 - v22, &qword_4FE808);
  v83 = a2;
  sub_FBD0(a2, &v23[v25], &qword_4FE808);
  v26 = *(v15 + 48);
  if (v26(v23, 1, v14) == 1)
  {
    if (v26(&v23[v25], 1, v14) == 1)
    {
      sub_FCF8(v23, &qword_4FE808);
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  sub_FBD0(v23, v20, &qword_4FE808);
  if (v26(&v23[v25], 1, v14) == 1)
  {
    sub_FCF8(v20, &qword_4FD9F8);
LABEL_11:
    v41 = &qword_4FF4C0;
LABEL_12:
    v42 = v23;
LABEL_28:
    sub_FCF8(v42, v41);
LABEL_29:
    v54 = 0;
    return v54 & 1;
  }

  sub_2B0D30(&v23[v25], v17);
  sub_2B0DA0(&qword_4FF350, &type metadata accessor for Date);
  if ((sub_3ED174() & 1) == 0)
  {
    sub_FCF8(v17, &qword_4FD9F8);
    sub_FCF8(v20, &qword_4FD9F8);
    v41 = &qword_4FE808;
    goto LABEL_12;
  }

  v43 = sub_3ED174();
  sub_FCF8(v17, &qword_4FD9F8);
  sub_FCF8(v20, &qword_4FD9F8);
  sub_FCF8(v23, &qword_4FE808);
  if ((v43 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_4:
  v27 = type metadata accessor for WidgetPredictedPlayState(0);
  v28 = v27[5];
  v29 = v79;
  v30 = *(v78 + 48);
  v31 = v82;
  sub_29BF98(v82 + v28, v79);
  v32 = v83;
  sub_29BF98(v83 + v28, v29 + v30);
  v33 = v80;
  v34 = *(v80 + 48);
  v35 = v84;
  v36 = v34(v29, 2, v84);
  if (!v36)
  {
    v78 = v27;
    v44 = v73;
    sub_29BF98(v29, v73);
    v45 = v34(v29 + v30, 2, v35);
    v38 = v81;
    if (!v45)
    {
      v47 = v72;
      (*(v33 + 32))(v72, v29 + v30, v35);
      v48 = sub_3E5F54();
      v49 = *(v33 + 8);
      v49(v47, v35);
      v49(v44, v35);
      v39 = v77;
      v27 = v78;
      if ((v48 & 1) == 0)
      {
        sub_2B0CD4(v29);
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    (*(v33 + 8))(v44, v35);
LABEL_20:
    v41 = &qword_4FF4B8;
    v42 = v29;
    goto LABEL_28;
  }

  v37 = v36 == 1;
  v38 = v81;
  v39 = v77;
  v40 = v29 + v30;
  if (v37)
  {
    if (v34(v40, 2, v35) == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v46 = v34(v40, 2, v35);
  if (v46 != 2)
  {
    goto LABEL_20;
  }

LABEL_22:
  sub_2B0CD4(v29);
  v50 = v27[6];
  v51 = *(v74 + 48);
  sub_FBD0(v31 + v50, v38, &qword_4FDA38);
  sub_FBD0(v32 + v50, v38 + v51, &qword_4FDA38);
  v52 = v75;
  v53 = *(v76 + 48);
  if (v53(v38, 1, v75) == 1)
  {
    if (v53(v38 + v51, 1, v52) == 1)
    {
      sub_FCF8(v38, &qword_4FDA38);
      goto LABEL_32;
    }

LABEL_27:
    v41 = &qword_4FF4B0;
    v42 = v38;
    goto LABEL_28;
  }

  sub_FBD0(v38, v39, &qword_4FDA38);
  if (v53(v38 + v51, 1, v52) == 1)
  {
    (*(v76 + 8))(v39, v52);
    goto LABEL_27;
  }

  v56 = v39;
  v57 = v76;
  v58 = v38 + v51;
  v59 = v71;
  (*(v76 + 32))(v71, v58, v52);
  sub_2B0DA0(&qword_4FF4C8, &type metadata accessor for PlayButtonTimeFormatHelper);
  v60 = sub_3ED174();
  v61 = *(v57 + 8);
  v61(v59, v52);
  v61(v56, v52);
  sub_FCF8(v38, &qword_4FDA38);
  if ((v60 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v62 = v27[7];
  v63 = (v31 + v62);
  v64 = *(v31 + v62 + 8);
  v65 = (v32 + v62);
  v66 = v65[1];
  if (v64)
  {
    if (!v66 || (*v63 != *v65 || v64 != v66) && (sub_3EE804() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v66)
  {
    goto LABEL_29;
  }

  v67 = v27[8];
  v68 = *(v31 + v67);
  v69 = *(v31 + v67 + 8);
  v70 = (v32 + v67);
  if (v68 == *v70 && v69 == v70[1])
  {
    v54 = 1;
  }

  else
  {
    v54 = sub_3EE804();
  }

  return v54 & 1;
}

uint64_t sub_2B0CD4(uint64_t a1)
{
  v2 = type metadata accessor for WidgetPredictedPlayState.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B0D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B0DA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2B0DE8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_3E5F84();
  __chkstk_darwin(v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = _swiftEmptyArrayStorage;
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_41EEC(0, v23[2] + 1, 1);
          v23 = v39;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_41EEC(v25 > 1, v26 + 1, 1);
          v23 = v39;
        }

        v23[2] = v26 + 1;
        v36 = v23;
        v22(v23 + v13 + v26 * v14, v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_14:
  }
}

uint64_t sub_2B10B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v93 = a1;
  v87 = sub_3E60B4();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E60C4();
  v91 = *(v5 - 8);
  __chkstk_darwin(v5);
  v85 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E6094();
  v88 = *(v7 - 8);
  __chkstk_darwin(v7);
  v90 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_3E6124();
  v9 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v11 - 8);
  v82 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v62 - v14;
  __chkstk_darwin(v16);
  v18 = v62 - v17;
  v19 = sub_3E5F84();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v24 = v62 - v23;
  __chkstk_darwin(v25);
  v29 = v62 - v28;
  if (*(a2 + 16))
  {
    v77 = v27;
    v79 = v9;
    v80 = v26;
    sub_2A3690(a2, v18);
    v30 = v20 + 48;
    v81 = *(v20 + 48);
    if (v81(v18, 1, v19) == 1)
    {
      sub_2A3228(v18);
    }

    else
    {
      (*(v20 + 32))(v29, v18, v19);
      sub_3E5E64();
      if (sub_3E5EC4())
      {
        sub_3E5E54();
        sub_3ECFE4();
        v31 = *(v20 + 8);
        v31(v24, v19);
        return (v31)(v29, v19);
      }

      v78 = v20;
      v76 = v5;
      v33 = *(v20 + 8);
      v33(v24, v19);
      v33(v29, v19);
      v5 = v76;
      v20 = v78;
    }

    v34 = sub_2B1AA8(v93, a2);
    v36 = v90;
    v35 = v91;
    v37 = v88;
    if (v34)
    {
      v78 = v20;
      v38 = v83;
      sub_3E6104();
      v75 = v7;
      v39 = *(v37 + 13);
      v71 = enum case for Calendar.MatchingPolicy.nextTime(_:);
      v72 = (v37 + 104);
      v70 = v39;
      v39(v36);
      v40 = *(v35 + 104);
      v41 = v85;
      v68 = enum case for Calendar.RepeatedTimePolicy.first(_:);
      v69 = v35 + 104;
      v67 = v40;
      v40(v85);
      v42 = *(v89 + 104);
      v74 = v30;
      v43 = v86;
      v65 = enum case for Calendar.SearchDirection.forward(_:);
      v73 = v19;
      v44 = v89;
      v45 = v87;
      v66 = v89 + 104;
      v64 = v42;
      v42(v86);
      sub_3E60E4();
      v46 = *(v44 + 8);
      v89 = v44 + 8;
      v63 = v46;
      v46(v43, v45);
      v47 = v15;
      v48 = v73;
      v49 = *(v35 + 8);
      v76 = v5;
      v91 = v35 + 8;
      v49(v41, v5);
      v50 = *(v37 + 1);
      v50(v36, v75);
      if (v81(v47, 1, v48) == 1)
      {
        (*(v79 + 8))(v38, v84);
        sub_2A3228(v47);
      }

      else
      {
        v51 = *(v78 + 32);
        v62[1] = v78 + 32;
        v62[0] = v51;
        v51(v80, v47, v48);
        v88 = v49;
        v52 = v90;
        v53 = v75;
        v70(v90, v71, v75);
        v72 = v50;
        v54 = v85;
        v55 = v76;
        v67(v85, v68, v76);
        v56 = v86;
        v57 = v87;
        v64(v86, v65, v87);
        v58 = v82;
        sub_3E60E4();
        v63(v56, v57);
        (v88)(v54, v55);
        v72(v52, v53);
        if (v81(v58, 1, v48) == 1)
        {
          (*(v78 + 8))(v80, v48);
          (*(v79 + 8))(v38, v84);
          sub_2A3228(v58);
        }

        else
        {
          v59 = v77;
          (v62[0])(v77, v58, v48);
          sub_2A3290();
          if (sub_3ED154() & 1) == 0 && (sub_3E5ED4())
          {
            sub_3E5E54();
            sub_3ECFE4();
            v60 = *(v78 + 8);
            v60(v59, v48);
            v60(v80, v48);
            return (*(v79 + 8))(v38, v84);
          }

          v61 = *(v78 + 8);
          v61(v59, v48);
          v61(v80, v48);
          (*(v79 + 8))(v38, v84);
        }
      }
    }
  }

  return sub_3ECFE4();
}

uint64_t sub_2B1AA8(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v3 = sub_3E6114();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_3E6124();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s7EpisodeVMa();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v10 - 8);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  __chkstk_darwin(v15);
  v63 = &v54 - v16;
  v69 = sub_3E5F84();
  __chkstk_darwin(v69);
  v55 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  __chkstk_darwin(v21);
  v24 = *(a2 + 16);
  v68 = v23;
  v64 = &v54 - v25;
  if (v24)
  {
    v26 = *(v6 + 44);
    v27 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v28 = *(v7 + 72);
    v29 = (v23 + 48);
    v70 = (v23 + 32);
    v30 = _swiftEmptyArrayStorage;
    v31 = v69;
    v66 = v28;
    v67 = v20;
    do
    {
      sub_29A88C(v27, v9);
      sub_2A31B8(&v9[v26], v14);
      sub_2B2120(v9);
      if ((*v29)(v14, 1, v31) == 1)
      {
        v22 = sub_2A3228(v14);
      }

      else
      {
        v32 = *v70;
        (*v70)(v20, v14, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_E0DDC(0, v30[2] + 1, 1, v30);
        }

        v34 = v30[2];
        v33 = v30[3];
        if (v34 >= v33 >> 1)
        {
          v30 = sub_E0DDC(v33 > 1, v34 + 1, 1, v30);
        }

        v30[2] = v34 + 1;
        v31 = v69;
        v35 = v30 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v34;
        v20 = v67;
        v22 = (v32)(v35, v67, v69);
        v28 = v66;
      }

      v27 += v28;
      --v24;
    }

    while (v24);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
    v31 = v69;
  }

  __chkstk_darwin(v22);
  *(&v54 - 2) = v65;
  sub_2B0DE8(sub_2B217C, (&v54 - 4), v30);
  v36 = v63;
  sub_2B21AC(v37, v63);

  v38 = v68;
  v39 = *(v68 + 48);
  if (v39(v36, 1, v31) == 1)
  {
    v40 = v36;
  }

  else
  {
    v70 = *(v38 + 32);
    (v70)(v64, v36, v31);
    v41 = v38;
    v42 = v57;
    sub_3E6104();
    v44 = v61;
    v43 = v62;
    v45 = v59;
    (*(v61 + 104))(v59, enum case for Calendar.Component.day(_:), v62);
    v46 = v56;
    sub_3E60F4();
    v47 = v43;
    v48 = v69;
    (*(v44 + 8))(v45, v47);
    (*(v58 + 8))(v42, v60);
    if (v39(v46, 1, v48) != 1)
    {
      v50 = v55;
      (v70)(v55, v46, v48);
      v51 = v64;
      v49 = sub_3E5EC4();
      v52 = *(v41 + 8);
      v52(v50, v48);
      v52(v51, v48);
      return v49 & 1;
    }

    (*(v41 + 8))(v64, v48);
    v40 = v46;
  }

  sub_2A3228(v40);
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_2B2120(uint64_t a1)
{
  v2 = _s7EpisodeVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B21AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3E5F84();
  __chkstk_darwin(*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10.n128_f64[0]);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_2A3290();
        v21 = sub_3ED154();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_2B243C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v23 = a2;
  v2 = sub_3ECF74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E8B34();
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v20 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_3E5DC4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E7524();
  sub_3E7474();
  swift_allocObject();
  sub_3E7464();
  sub_3E7514();

  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v3 + 16))(v5, v19, v2);
    v16 = (*(v3 + 88))(v5, v2);
    if (v16 != enum case for WidgetFamily.systemSmall(_:) && v16 != enum case for WidgetFamily.systemMedium(_:) && v16 != enum case for WidgetFamily.systemLarge(_:) && v16 != enum case for WidgetFamily.systemExtraLarge(_:) && v16 != enum case for WidgetFamily.accessoryCorner(_:) && v16 != enum case for WidgetFamily.accessoryCircular(_:) && v16 != enum case for WidgetFamily.accessoryRectangular(_:) && v16 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v3 + 8))(v5, v2);
    }

    sub_3E8244();
    sub_3E8224();
    v17 = v20;
    sub_3E8B24();
    sub_3E5CB4();
    (*(v21 + 8))(v17, v22);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t View.restrictingSize<A>(alignment:toViewSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v20[2] = a6;
  v20[0] = a7;
  v20[1] = a4;
  v11 = *(a5 - 8);
  __chkstk_darwin(a1);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SizeRestrictingModifier();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v20 - v17;
  a3(v16);
  *v18 = a1;
  *(v18 + 1) = a2;
  (*(v11 + 32))(&v18[*(v14 + 36)], v13, a5);
  sub_3EB6E4();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_2B2A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for SizeRestrictingModifier();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a3, a4);
}

uint64_t SizeRestrictingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v24 = a3;
  v4 = *(a2 + 16);
  v5 = sub_3EA744();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  swift_getWitnessTable();
  v21[0] = sub_3EAEA4();
  v21[1] = swift_getWitnessTable();
  v21[2] = sub_3EA814();
  v8 = sub_3EA744();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  v15 = *(a2 + 24);
  sub_3EB654();
  v25 = v4;
  v26 = v15;
  v27 = v22;
  v16 = sub_2B2EFC();
  v30 = v15;
  v31 = v16;
  WitnessTable = swift_getWitnessTable();
  sub_3EB684();
  (*(v23 + 8))(v7, v5);
  v18 = swift_getWitnessTable();
  v28 = WitnessTable;
  v29 = v18;
  swift_getWitnessTable();
  sub_E63BC(v11);
  v19 = *(v9 + 8);
  v19(v11, v8);
  sub_E63BC(v14);
  return (v19)(v14, v8);
}

uint64_t sub_2B2DB4(uint64_t a1)
{
  type metadata accessor for SizeRestrictingModifier();
  swift_getWitnessTable();
  v2 = sub_3EAEA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  swift_getWitnessTable();
  sub_E63BC(a1);
  sub_E63BC(v5);
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2B2EFC()
{
  result = qword_4FF4D0[0];
  if (!qword_4FF4D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_4FF4D0);
  }

  return result;
}

uint64_t sub_2B2F98()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2B3018(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_2B3178(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
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

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 16] & ~v8;

  v18(v19);
}

uint64_t sub_2B339C()
{
  type metadata accessor for SizeRestrictingModifier();
  sub_3EA744();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2B3430()
{
  sub_3EA744();
  type metadata accessor for SizeRestrictingModifier();
  swift_getWitnessTable();
  sub_3EAEA4();
  swift_getWitnessTable();
  sub_3EA814();
  sub_3EA744();
  sub_2B2EFC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for TwoViewPercentageLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TwoViewPercentageLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2B35F4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v34 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1760);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v35 = sub_3EA4C4();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v33 = &v32 - v16;
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  v20 = sub_3EB064();
  v21 = v13;
  v22 = (v13 + 48);
  if (v20 == sub_3EB064())
  {
    sub_EDA28(v12);
    if ((*v22)(v12, 1, v35) == 1)
    {
      v23 = v12;
      return sub_EBBB8(v23);
    }

    (*(v21 + 32))(v19, v12, v35);
    sub_3EBB24();
    v37 = a2 & 1;
    v36 = 0;
    sub_3EA4B4();
    sub_3EA584();
    sub_2B3C1C();
    sub_3ED874();
    sub_3ED8D4();
    if (sub_3ED8C4() < 2)
    {
      return (*(v21 + 8))(v19, v35);
    }

    else
    {
      v25 = v33;
      sub_3EA594();
      sub_3EBB24();
      v37 = a2 & 1;
      v36 = 0;
      sub_3EA4B4();
      v26 = *(v21 + 8);
      v27 = v35;
      v26(v25, v35);
      return (v26)(v19, v27);
    }
  }

  else
  {
    sub_EDA28(v9);
    if ((*v22)(v9, 1, v35) == 1)
    {
      v23 = v9;
      return sub_EBBB8(v23);
    }

    v28 = v32;
    (*(v21 + 32))(v32, v9, v35);
    sub_3EBB24();
    v37 = 0;
    v36 = a4 & 1;
    sub_3EA4B4();
    sub_3EA584();
    sub_2B3C1C();
    sub_3ED874();
    sub_3ED8D4();
    if (sub_3ED8C4() < 2)
    {
      return (*(v21 + 8))(v28, v35);
    }

    else
    {
      v29 = v33;
      sub_3EA594();
      sub_3EBB24();
      v37 = 0;
      v36 = a4 & 1;
      sub_3EA4B4();
      v30 = *(v21 + 8);
      v31 = v35;
      v30(v29, v35);
      return (v30)(v28, v31);
    }
  }
}

void (*sub_2B3B3C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_3EA1E4();
  return sub_EBB14;
}

unint64_t sub_2B3BC8()
{
  result = qword_4FF558;
  if (!qword_4FF558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF558);
  }

  return result;
}

unint64_t sub_2B3C1C()
{
  result = qword_4F1828;
  if (!qword_4F1828)
  {
    sub_3EA584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1828);
  }

  return result;
}

uint64_t sub_2B3C74()
{
  v0 = sub_3E8BA4();
  if (v2 == -1)
  {
    return 0;
  }

  v3 = v0;
  v4 = v1;
  v5 = v2;
  v6 = sub_3E9594();
  sub_10EFE8(v3, v4, v5);
  return v6 & 1;
}

uint64_t sub_2B3D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v2 = sub_3ECFC4();
  __chkstk_darwin(v2 - 8);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EpisodeListEntry();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_3E5F84();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13E0);
  v17 = *(v5 + 72);
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_3F5630;
  v20 = v28;
  sub_2B4108(v28, v19 + v18);
  v29 = v4;
  sub_2A31B8(v20 + *(v4 + 44), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2A3228(v9);
  }

  else
  {
    v26 = v17;
    (*(v11 + 32))(v16, v9, v10);
    sub_3E5F64();
    v21 = sub_3E5EC4();
    v22 = *(v11 + 8);
    v22(v13, v10);
    if (v21)
    {
      sub_2AB7A8(v16, v27);
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        v19 = sub_E0E2C(v23 > 1, v24 + 1, 1, v19);
      }

      v22(v16, v10);
      *(v19 + 16) = v24 + 1;
      sub_2B4818(v27, v19 + v18 + v24 * v26);
    }

    else
    {
      v22(v16, v10);
    }
  }

  sub_2B416C(v13);
  sub_3ECFB4();
  (*(v11 + 8))(v13, v10);
  sub_2B487C(&qword_4FF560, type metadata accessor for EpisodeListEntry);
  return sub_3ED054();
}

uint64_t sub_2B4108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeListEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B416C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_3E5F84();
  v46 = *(v1 - 8);
  __chkstk_darwin(v1);
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v41 = &v38 - v4;
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  v8 = sub_3E6114();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E6124();
  v44 = *(v12 - 8);
  v45 = v12;
  __chkstk_darwin(v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v18 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  if ([objc_opt_self() isThinJetApp])
  {
    v24 = sub_3E7424();
    v47[3] = v24;
    v47[4] = sub_2B487C(&qword_4F07A0, &type metadata accessor for Podcasts);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
    (*(*(v24 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.jetWidgetPushes(_:), v24);
    LOBYTE(v24) = sub_3E6C64();
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    if ((v24 & 1) == 0)
    {
      sub_3E6104();
      (*(v9 + 104))(v11, enum case for Calendar.Component.second(_:), v8);
      sub_3E5F64();
      sub_3E60F4();
      v26 = v46;
      v39 = *(v46 + 8);
      v40 = v46 + 8;
      v39(v7, v1);
      (*(v9 + 8))(v11, v8);
      (*(v44 + 8))(v17, v45);
      if ((*(v26 + 48))(v23, 1, v1) != 1)
      {
        v31 = v43;
        (*(v26 + 32))(v43, v23, v1);
        sub_3B590();
        v32 = v26;
        v33 = sub_3EE0B4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_3F5630;
        (*(v32 + 16))(v7, v31, v1);
        sub_2B487C(&qword_4F12A0, &type metadata accessor for Date);
        v35 = sub_3EE7A4();
        v37 = v36;
        v39(v7, v1);
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_4F39C();
        *(v34 + 32) = v35;
        *(v34 + 40) = v37;
        sub_3ED9F4();
        sub_3E9744();
      }

      sub_2A3228(v23);
    }
  }

  sub_3E6104();
  (*(v9 + 104))(v11, enum case for Calendar.Component.day(_:), v8);
  sub_3E5F64();
  sub_3E60F4();
  v27 = v46;
  v28 = *(v46 + 8);
  v28(v7, v1);
  (*(v9 + 8))(v11, v8);
  if ((*(v27 + 48))(v20, 1, v1) == 1)
  {
    sub_2A3228(v20);
    v29 = v42;
    sub_3E5F74();
    sub_3E5E64();
    v28(v29, v1);
  }

  else
  {
    v7 = v41;
    (*(v27 + 32))(v41, v20, v1);
  }

  sub_3E6084();
  v28(v7, v1);
  return (*(v44 + 8))(v14, v45);
}

uint64_t sub_2B4818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeListEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B487C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PodcastsWidgetFullHeader.body.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF568);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF570);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v14 = *v1;
  v13 = v1[1];
  v15 = v1[2];
  *v5 = sub_3EAB54();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF578);
  sub_2B4B24(v14, v13, v15, &v5[*(v16 + 44)]);
  sub_886BC(&qword_4FF580, &qword_4FF568);
  sub_3EB484();
  sub_2B4DB0(v5);
  v17 = *(v7 + 16);
  v17(v9, v12, v6);
  v17(a1, v9, v6);
  *&a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF588) + 48)] = 0x4034000000000000;
  v18 = *(v7 + 8);
  v18(v12, v6);
  return (v18)(v9, v6);
}

uint64_t sub_2B4B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v7 = type metadata accessor for Logo();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v32 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v29[-v11];
  v34 = a1;
  v35 = a2;
  sub_68DC4();

  v13 = sub_3EB394();
  v15 = v14;
  v17 = v16;
  sub_3EB1C4();
  v18 = sub_3EB2A4();
  v20 = v19;
  v30 = v21;
  v31 = v22;

  sub_94D30(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v24 = *(v8 + 28);
  *&v12[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v25 = *(v8 + 32);
  *&v12[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  v26 = v32;
  sub_2B4EA4(v12, v32);
  *a4 = v18;
  *(a4 + 8) = v20;
  LOBYTE(v25) = v30 & 1;
  *(a4 + 16) = v30 & 1;
  *(a4 + 24) = v31;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = v33;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF5A0);
  sub_2B4EA4(v26, a4 + *(v27 + 64));
  sub_243E88(v18, v20, v25);

  sub_2B4F08(v12);
  sub_2B4F08(v26);
  sub_94D30(v18, v20, v25);
}

uint64_t sub_2B4DB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B4EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B4F08(uint64_t a1)
{
  v2 = type metadata accessor for Logo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LibraryWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF5A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF5B0);
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF5B8);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF5C0);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v43 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF5C8);
  v17 = *(v16 - 8);
  v49 = v16;
  v50 = v17;
  __chkstk_darwin(v16);
  v44 = &v40 - v18;
  sub_3E8254();
  sub_3E7154();
  v54 = sub_3E9264();
  v55 = &protocol witness table for CachingImageContentProvider;
  __swift_allocate_boxed_opaque_existential_0Tm(&v52);
  sub_3E9254();
  v56 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF5D0);
  sub_2B59B8();
  sub_2B5B88();
  sub_3ECFD4();
  sub_3EABC4();
  v19 = sub_886BC(&qword_4FF610, &qword_4FF5A8);
  sub_3EAD84();

  (*(v2 + 8))(v4, v1);
  sub_3EABC4();
  v52 = v1;
  v53 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v41;
  sub_3EAD64();

  v22 = v21;
  (*(v42 + 8))(v8, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF618);
  v23 = sub_3ECF74();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_3F52F0;
  v28 = v27 + v26;
  v29 = *(v24 + 104);
  v29(v28, enum case for WidgetFamily.systemSmall(_:), v23);
  v29(v28 + v25, enum case for WidgetFamily.systemMedium(_:), v23);
  v29(v28 + 2 * v25, enum case for WidgetFamily.systemLarge(_:), v23);
  v29(v28 + 3 * v25, enum case for WidgetFamily.systemExtraLarge(_:), v23);
  v52 = v22;
  v53 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = v45;
  sub_3EAD74();

  (*(v46 + 8))(v12, v32);
  v52 = v32;
  v53 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v44;
  v35 = v47;
  sub_3EAD94();
  (*(v48 + 8))(v31, v35);
  v36 = sub_3E7424();
  v54 = v36;
  v55 = sub_2B5BDC(&qword_4F07A0, &type metadata accessor for Podcasts);
  v37 = __swift_allocate_boxed_opaque_existential_0Tm(&v52);
  (*(*(v36 - 8) + 104))(v37, enum case for Podcasts.libraryWidget(_:), v36);
  sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  v52 = v35;
  v53 = v33;
  swift_getOpaqueTypeConformance2();
  v38 = v49;
  sub_3EADA4();
  return (*(v50 + 8))(v34, v38);
}

uint64_t sub_2B5720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EpisodeListWidgetMain();
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B4108(a1, v6);
  v6[v4[5]] = 1;
  v7 = v4[6];
  *&v6[v7] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  v8 = v4[7];
  *&v6[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCA8);
  swift_storeEnumTagMultiPayload();
  v9 = v4[8];
  *&v6[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCB0);
  swift_storeEnumTagMultiPayload();
  v10 = &v6[v4[9]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v4[10];
  *&v6[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v12 = v4[11];
  *&v6[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EpisodeListEntry();
  sub_2B5BDC(&qword_4FF5F0, type metadata accessor for EpisodeListWidgetMain);
  sub_3EB3F4();
  sub_2B5E28(v6);
  KeyPath = swift_getKeyPath();
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF5E8) + 36);
  *v14 = KeyPath;
  *(v14 + 8) = 0;
  v15 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF5D0);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = 0;
  return result;
}

unint64_t sub_2B59B8()
{
  result = qword_4FF5D8;
  if (!qword_4FF5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF5D0);
    sub_2B5A70();
    sub_886BC(&qword_4FDDA0, &qword_4FDDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF5D8);
  }

  return result;
}

unint64_t sub_2B5A70()
{
  result = qword_4FF5E0;
  if (!qword_4FF5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF5E8);
    type metadata accessor for EpisodeListWidgetMain();
    sub_2B5BDC(&qword_4FF5F0, type metadata accessor for EpisodeListWidgetMain);
    swift_getOpaqueTypeConformance2();
    sub_886BC(&qword_4FF5F8, &qword_4FF600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF5E0);
  }

  return result;
}

unint64_t sub_2B5B88()
{
  result = qword_4FF608;
  if (!qword_4FF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF608);
  }

  return result;
}

uint64_t sub_2B5BDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2B5C68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF5C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF5C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF5B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF5B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF5A8);
  sub_886BC(&qword_4FF610, &qword_4FF5A8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2B5E28(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeListWidgetMain();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2B5F34(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD610);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v30 = _s7EpisodeVMa();
  v25 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = _swiftEmptyArrayStorage;
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = sub_3EE3F4();
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_FCF8(v7, &qword_4FD610);
      }

      else
      {
        v18 = v24;
        sub_2BE7CC(v7, v24, _s7EpisodeVMa);
        sub_2BE7CC(v18, v29, _s7EpisodeVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_E0E04(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_E0E04(v19 > 1, v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_2BE7CC(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, _s7EpisodeVMa);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_2B6324@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v12 = a3(0);
  v15.n128_f64[0] = __chkstk_darwin(v12);
  v17 = &v24 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v24 = v14;
    v25 = v13;
    v26 = a6;
    v19 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    while (1)
    {
      sub_2BE704(v19, v17, a4);
      v21 = a1(v17);
      if (v6)
      {
        return sub_2BE76C(v17, a5);
      }

      if (v21)
      {
        break;
      }

      sub_2BE76C(v17, a5);
      v19 += v20;
      if (!--v18)
      {
        v22 = 1;
        a6 = v26;
        goto LABEL_10;
      }
    }

    a6 = v26;
    sub_2BE7CC(v17, v26, a5);
    v22 = 0;
LABEL_10:
    v14 = v24;
    v13 = v25;
  }

  else
  {
    v22 = 1;
  }

  return (*(v14 + 56))(a6, v22, 1, v13, v15);
}

void *sub_2B64C0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_3EE3F4();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
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

uint64_t sub_2B65D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  v5 = sub_3E9A04();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_3E7CA4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_3E7784();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD610);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  v4[20] = swift_task_alloc();
  v8 = sub_3E5F84();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_2B6884, 0, 0);
}

uint64_t sub_2B6884()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_3E8BE4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[20];
    v5 = &qword_4EF460;
LABEL_10:
    sub_FCF8(v4, v5);
LABEL_11:

    v29 = v0[1];

    return v29(0);
  }

  (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
  if ((sub_3E8B74() & 1) == 0)
  {
    v6 = v0[23];
    v7 = v0[21];
    v8 = v0[22];
    sub_3E5F64();
    v9 = sub_3E5EC4();
    v10 = *(v8 + 8);
    v10(v6, v7);
    if ((v9 & 1) == 0)
    {
      v10(v0[24], v0[21]);
      goto LABEL_11;
    }
  }

  v11 = v0[17];
  v13 = v0[3];
  v12 = v0[4];
  *(swift_task_alloc() + 16) = v13;
  sub_2B6324(sub_2BDE44, v12, _s7EpisodeVMa, _s7EpisodeVMa, _s7EpisodeVMa, v11);

  v14 = _s7EpisodeVMa();
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14);
  v16 = v0[19];
  v17 = v0[17];
  if (v15 == 1)
  {
    v18 = v0[14];
    v19 = v0[15];
    sub_FCF8(v17, &qword_4FD610);
    (*(v19 + 56))(v16, 1, 1, v18);
  }

  else
  {
    v20 = *(v14 + 56);
    v21 = v0[17];
    sub_FBD0(v17 + v20, v0[19], &qword_4F1D50);
    sub_2BE76C(v21, _s7EpisodeVMa);
  }

  v22 = v0[18];
  v23 = v0[14];
  v24 = v0[15];
  sub_FBD0(v0[19], v22, &qword_4F1D50);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = v0[24];
    v26 = v0[21];
    v27 = v0[22];
    v28 = v0[18];
    sub_FCF8(v0[19], &qword_4F1D50);
    (*(v27 + 8))(v25, v26);
    v4 = v28;
    v5 = &qword_4F1D50;
    goto LABEL_10;
  }

  v31 = v0[12];
  v33 = v0[10];
  v32 = v0[11];
  v34 = v0[9];
  v35 = v0[5];
  sub_2BE7CC(v0[18], v0[16], &type metadata accessor for ArtworkModel);
  sub_3E76F4();
  MTWidgetBackgroundPreferredArtworkSize();
  sub_3E7C74();
  v36 = *(v33 + 8);
  v0[25] = v36;
  v0[26] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v32, v34);
  sub_3E7C24();
  v36(v31, v34);
  v37 = v35[3];
  v38 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v37);
  v39 = swift_task_alloc();
  v0[27] = v39;
  *v39 = v0;
  v39[1] = sub_2B6D70;
  v40 = v0[13];

  return ImageContentProvider.image(for:)(v40, v37, v38);
}

uint64_t sub_2B6D70(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_2BE838;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_2BE834;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2B6E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  v5 = sub_3E9A04();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_3E7CA4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_3E7784();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD610);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  v4[20] = swift_task_alloc();
  v8 = sub_3E5F84();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_2B7148, 0, 0);
}

uint64_t sub_2B7148()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_3E8BE4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[20];
    v5 = &qword_4EF460;
LABEL_10:
    sub_FCF8(v4, v5);
LABEL_11:

    v29 = v0[1];

    return v29(0);
  }

  (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
  if ((sub_3E8B74() & 1) == 0)
  {
    v6 = v0[23];
    v7 = v0[21];
    v8 = v0[22];
    sub_3E5F64();
    v9 = sub_3E5EC4();
    v10 = *(v8 + 8);
    v10(v6, v7);
    if ((v9 & 1) == 0)
    {
      v10(v0[24], v0[21]);
      goto LABEL_11;
    }
  }

  v11 = v0[17];
  v13 = v0[3];
  v12 = v0[4];
  *(swift_task_alloc() + 16) = v13;
  sub_2B6324(sub_2BE840, v12, _s7EpisodeVMa, _s7EpisodeVMa, _s7EpisodeVMa, v11);

  v14 = _s7EpisodeVMa();
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14);
  v16 = v0[19];
  v17 = v0[17];
  if (v15 == 1)
  {
    v18 = v0[14];
    v19 = v0[15];
    sub_FCF8(v17, &qword_4FD610);
    (*(v19 + 56))(v16, 1, 1, v18);
  }

  else
  {
    v20 = *(v14 + 56);
    v21 = v0[17];
    sub_FBD0(v17 + v20, v0[19], &qword_4F1D50);
    sub_2BE76C(v21, _s7EpisodeVMa);
  }

  v22 = v0[18];
  v23 = v0[14];
  v24 = v0[15];
  sub_FBD0(v0[19], v22, &qword_4F1D50);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = v0[24];
    v26 = v0[21];
    v27 = v0[22];
    v28 = v0[18];
    sub_FCF8(v0[19], &qword_4F1D50);
    (*(v27 + 8))(v25, v26);
    v4 = v28;
    v5 = &qword_4F1D50;
    goto LABEL_10;
  }

  v31 = v0[12];
  v33 = v0[10];
  v32 = v0[11];
  v34 = v0[9];
  v35 = v0[5];
  sub_2BE7CC(v0[18], v0[16], &type metadata accessor for ArtworkModel);
  sub_3E76F4();
  MTWidgetBackgroundPreferredArtworkSize();
  sub_3E7C74();
  v36 = *(v33 + 8);
  v0[25] = v36;
  v0[26] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v32, v34);
  sub_3E7C24();
  v36(v31, v34);
  v37 = v35[3];
  v38 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v37);
  v39 = swift_task_alloc();
  v0[27] = v39;
  *v39 = v0;
  v39[1] = sub_2B7634;
  v40 = v0[13];

  return ImageContentProvider.image(for:)(v40, v37, v38);
}

uint64_t sub_2B7634(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_2B78BC;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_2B775C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2B775C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  (*(v0 + 200))(*(v0 + 104), *(v0 + 72));
  sub_2BE76C(v5, &type metadata accessor for ArtworkModel);
  sub_FCF8(v4, &qword_4F1D50);
  (*(v3 + 8))(v1, v2);
  v8 = *(v0 + 232);

  v6 = *(v0 + 8);

  return v6(v8);
}

uint64_t sub_2B78BC()
{
  v28 = v0;
  (*(v0 + 200))(*(v0 + 104), *(v0 + 72));
  sub_3E9974();
  swift_errorRetain();
  v1 = sub_3E99F4();
  v2 = sub_3ED9D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 176);
    v24 = *(v0 + 168);
    v25 = *(v0 + 192);
    v22 = *(v0 + 128);
    v23 = *(v0 + 152);
    v5 = *(v0 + 56);
    v20 = *(v0 + 48);
    v21 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v8 = sub_3ED2B4();
    v10 = sub_2EDD0(v8, v9, &v27);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "Failed to compute background artwork, likely this is because the image was not prepared ahead of time: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);

    (*(v5 + 8))(v21, v20);
    sub_2BE76C(v22, &type metadata accessor for ArtworkModel);
    sub_FCF8(v23, &qword_4F1D50);
    (*(v4 + 8))(v25, v24);
  }

  else
  {
    v26 = *(v0 + 192);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 152);
    v14 = *(v0 + 128);
    v15 = *(v0 + 56);
    v16 = *(v0 + 64);
    v17 = *(v0 + 48);

    (*(v15 + 8))(v16, v17);
    sub_2BE76C(v14, &type metadata accessor for ArtworkModel);
    sub_FCF8(v13, &qword_4F1D50);
    (*(v12 + 8))(v26, v11);
  }

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_2B7BE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF638);
  __chkstk_darwin(v2 - 8);
  v41 = &v36 - v3;
  v4 = sub_3E6F24();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E6DA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF640);
  __chkstk_darwin(v9 - 8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF630);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v40 = a1;
  sub_FBD0(a1, &v36 - v18, &qword_4FF630);
  v20 = sub_3E7154();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v19, 1, v20) == 1)
  {
    sub_FCF8(v19, &qword_4FF630);
  }

  else
  {
    sub_3E7134();
    if ((*(v7 + 48))(v13, 1, v6))
    {
      sub_FCF8(v13, &qword_4FF640);
      (*(v21 + 8))(v19, v20);
    }

    else
    {
      v30 = v38;
      (*(v7 + 16))(v38, v13, v6);
      sub_FCF8(v13, &qword_4FF640);
      (*(v21 + 8))(v19, v20);
      v31 = sub_3E6D94();
      (*(v7 + 8))(v30, v6);
      if (v31 <= 1u)
      {
        if (v31)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      if (v31 == 2)
      {
        goto LABEL_21;
      }
    }
  }

  sub_FBD0(v40, v16, &qword_4FF630);
  if (v22(v16, 1, v20) == 1)
  {
    sub_FCF8(v16, &qword_4FF630);
    v24 = v42;
    v23 = v43;
LABEL_9:
    v27 = v41;
    (*(v24 + 56))(v41, 1, 1, v23);
LABEL_10:
    sub_FCF8(v27, &qword_4FF638);
    goto LABEL_11;
  }

  v25 = v39;
  sub_3E7134();
  v26 = (*(v7 + 48))(v25, 1, v6);
  v24 = v42;
  v23 = v43;
  if (v26)
  {
    sub_FCF8(v25, &qword_4FF640);
    (*(v21 + 8))(v16, v20);
    goto LABEL_9;
  }

  v32 = v38;
  (*(v7 + 16))(v38, v25, v6);
  sub_FCF8(v25, &qword_4FF640);
  (*(v21 + 8))(v16, v20);
  v27 = v41;
  sub_3E6D84();
  (*(v7 + 8))(v32, v6);
  if ((*(v24 + 48))(v27, 1, v23) == 1)
  {
    goto LABEL_10;
  }

  v33 = v37;
  (*(v24 + 32))(v37, v27, v23);
  if (sub_3E6F04())
  {
    (*(v24 + 8))(v33, v23);
LABEL_11:
    v28 = sub_3E6D74();
    if (v28)
    {
      if (v28 == 1)
      {
LABEL_13:
        v29._object = 0x800000000042C9C0;
        v29._countAndFlagsBits = 0xD000000000000013;
LABEL_22:
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        return sub_3E8614(v29, v44);
      }

LABEL_21:
      v29._countAndFlagsBits = 0x452074736574614CLL;
      v29._object = 0xEF7365646F736970;
      goto LABEL_22;
    }

LABEL_16:
    v29._countAndFlagsBits = 0x7045206465766153;
    v29._object = 0xEE007365646F7369;
    goto LABEL_22;
  }

  v35 = sub_3E6EF4();
  (*(v24 + 8))(v33, v23);
  return v35;
}

uint64_t sub_2B8284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = type metadata accessor for EpisodeListEntry();
  v4[9] = swift_task_alloc();
  v5 = sub_3E5F84();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF630);
  v4[15] = swift_task_alloc();
  v6 = sub_3E8C04();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_3ECF74();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_3ED014();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v9 = sub_3E9A04();
  v4[26] = v9;
  v4[27] = *(v9 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_2B85A8, 0, 0);
}

uint64_t sub_2B85A8()
{
  v47 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[6];
  sub_3E9974();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_3E99F4();
  v6 = sub_3ED9F4();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[27];
  v11 = v0[24];
  v12 = v0[25];
  v13 = v0[23];
  if (v7)
  {
    v45 = v0[29];
    v14 = v0[22];
    log = v5;
    v15 = v0[19];
    v16 = v0[20];
    v40 = v0[23];
    v17 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v17 = 136315138;
    v42 = v6;
    sub_3ED004();
    sub_2BE3B8(&qword_4FDD60, &type metadata accessor for WidgetFamily);
    v18 = sub_3EE7A4();
    v43 = v9;
    v20 = v19;
    (*(v16 + 8))(v14, v15);
    (*(v11 + 8))(v12, v40);
    v21 = sub_2EDD0(v18, v20, &v46);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, log, v42, "Creating Library widget with configuration: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);

    v22 = *(v10 + 8);
    v22(v45, v43);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
    v22 = *(v10 + 8);
    v22(v8, v9);
  }

  v0[30] = v22;
  if ([objc_opt_self() canExtensionOpenDatabase])
  {
    sub_3E8BB4();
    v23 = swift_task_alloc();
    v0[31] = v23;
    *v23 = v0;
    v23[1] = sub_2B8A24;
    v24 = v0[18];
    v25 = v0[6];
    v26 = v0[5];

    return sub_2B9748(v26, v25, v24);
  }

  else
  {
    v28 = v0[22];
    v29 = v0[19];
    v30 = v0[20];
    v31 = v0[15];
    v32 = v0[5];
    v33 = v0[4];
    v34 = sub_3E7154();
    v35 = *(v34 - 8);
    (*(v35 + 16))(v31, v32, v34);
    (*(v35 + 56))(v31, 0, 1, v34);
    v36 = sub_2B7BE4(v31);
    v38 = v37;
    sub_FCF8(v31, &qword_4FF630);
    sub_3ED004();
    sub_2AB304(v36, v38, v28, v33);

    (*(v30 + 8))(v28, v29);

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_2B8A24(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_2B93DC;
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = sub_2B8B4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2B8B4C()
{
  v0[2] = v0[33];
  sub_3ED004();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_2B8C00;
  v2 = v0[22];
  v3 = v0[7];

  return sub_2A3A70(v3, v2);
}

uint64_t sub_2B8C00()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);

  v5 = *(v3 + 8);
  *(v1 + 280) = v5;
  *(v1 + 288) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_2B8D64, 0, 0);
}

uint64_t sub_2B8D64()
{
  sub_3ED004();
  v1 = v0[2];
  v0[37] = v1;
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_2B8E30;
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[7];

  return sub_2B65D4(v4, v3, v1, v5);
}

uint64_t sub_2B8E30(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 152);
  *(*v1 + 312) = a1;

  v2(v3, v4);

  return _swift_task_switch(sub_2B8F98, 0, 0);
}

uint64_t sub_2B8F98()
{
  v1 = v0[37];
  v2 = v0[14];
  v3 = v0[15];
  v38 = v0[13];
  v39 = v0[12];
  v41 = v0[39];
  v4 = v0[11];
  v43 = v0[10];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  v8 = sub_3E7154();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3, v7, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  v10 = sub_2B7BE4(v3);
  v37 = v11;
  sub_FCF8(v3, &qword_4FF630);
  v12 = *(v1 + 16);
  if (v12)
  {
    v13 = 5;
  }

  else
  {
    v13 = 4;
  }

  v36 = v13;
  v14 = v2;
  sub_3E8BE4();
  sub_3ED004();
  sub_2BA280(v38);
  sub_3E5F74();
  sub_3E5FB4();
  v15 = v6[14];
  v16 = sub_3E5DC4();
  (*(*(v16 - 8) + 56))(v5 + v15, 1, 1, v16);
  *v5 = v10;
  v5[1] = v37;
  *(v5 + v6[9]) = v41;
  *(v5 + v6[10]) = 0;
  sub_FBD0(v14, v5 + v6[11], &qword_4EF460);
  (*(v4 + 16))(v5 + v6[12], v39, v43);
  sub_2ABFA8(v38, v5 + v15);
  v5[2] = 0;
  v5[3] = 0;
  if (v12 && *(v1 + 16))
  {
    v17 = v0[37];
    v18 = v0[12];
    v20 = v0[8];
    v19 = v0[9];
    *(v19 + *(v20 + 60)) = 0;
    *(v19 + 32) = 5;
    *(v19 + 40) = v17;
    v21 = v19 + *(v20 + 52);

    v44 = v21;
    sub_2B10B8(v18, v17, v21);
  }

  else
  {
    v22 = v0[37];
    v24 = v0[8];
    v23 = v0[9];
    *(v23 + 32) = v36;
    *(v23 + *(v24 + 60)) = 0;
    *(v23 + 40) = v22;
    v44 = v23 + *(v24 + 52);
    sub_3ECFE4();
  }

  v25 = v0[35];
  v26 = v0[21];
  v28 = v0[18];
  v27 = v0[19];
  v30 = v0[16];
  v29 = v0[17];
  v32 = v0[13];
  v31 = v0[14];
  v40 = v0[4];
  v42 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_FCF8(v32, &unk_4E9EE0);
  v25(v26, v27);
  sub_FCF8(v31, &qword_4EF460);
  (*(v29 + 8))(v28, v30);
  v33 = sub_3ECFF4();
  (*(*(v33 - 8) + 56))(v44, 0, 1, v33);
  sub_2BE7CC(v42, v40, type metadata accessor for EpisodeListEntry);

  v34 = v0[1];

  return v34();
}

uint64_t sub_2B93DC()
{
  v32 = v0;
  sub_3E9974();
  swift_errorRetain();
  v1 = sub_3E99F4();
  v2 = sub_3ED9D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[32];
    v29 = v0[30];
    v4 = v0[28];
    v5 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    v0[3] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v8 = sub_3ED2B4();
    v10 = sub_2EDD0(v8, v9, &v31);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "Failed to compute widget snapshot: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);

    v29(v4, v5);
  }

  else
  {
    v11 = v0[30];
    v12 = v0[28];
    v13 = v0[26];

    v11(v12, v13);
  }

  v14 = v0[22];
  v15 = v0[20];
  v27 = v0[19];
  v16 = v0[17];
  v17 = v0[15];
  v28 = v0[16];
  v30 = v0[18];
  v18 = v0[5];
  v19 = v0[4];
  v20 = sub_3E7154();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v17, v18, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  v22 = sub_2B7BE4(v17);
  v24 = v23;
  sub_FCF8(v17, &qword_4FF630);
  sub_3ED004();
  sub_2AB304(v22, v24, v14, v19);

  (*(v15 + 8))(v14, v27);
  (*(v16 + 8))(v30, v28);

  v25 = v0[1];

  return v25();
}

uint64_t sub_2B9748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF638);
  v4[9] = swift_task_alloc();
  v5 = sub_3E6F24();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_3E6DA4();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF640);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_2B98E4, 0, 0);
}

uint64_t sub_2B98E4()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  sub_3E7134();
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[17];
  if (v5)
  {
    sub_FCF8(v0[17], &qword_4FF640);
  }

  else
  {
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    (*(v8 + 16))(v7, v0[17], v9);
    sub_FCF8(v6, &qword_4FF640);
    v10 = sub_3E6D94();
    (*(v8 + 8))(v7, v9);
    if (v10 != 3)
    {
      v29 = swift_task_alloc();
      v0[18] = v29;
      *v29 = v0;
      v29[1] = sub_2B9C94;
      v26 = v0[7];
      v27 = v0[6];
      v28 = v10;
      goto LABEL_10;
    }
  }

  v11 = v0[16];
  v12 = v0[13];
  sub_3E7134();
  v13 = v4(v11, 1, v12);
  v14 = v0[16];
  if (v13)
  {
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[9];
    sub_FCF8(v0[16], &qword_4FF640);
    (*(v16 + 56))(v17, 1, 1, v15);
LABEL_7:
    sub_FCF8(v0[9], &qword_4FF638);
LABEL_8:
    v24 = sub_3E6D74();
    v25 = swift_task_alloc();
    v0[21] = v25;
    *v25 = v0;
    v25[1] = sub_2BA01C;
    v26 = v0[7];
    v27 = v0[6];
    v28 = v24;
LABEL_10:

    return sub_2BAC70(v28, v27, v26);
  }

  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[13];
  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[9];
  (*(v19 + 16))(v18, v0[16], v20);
  sub_FCF8(v14, &qword_4FF640);
  sub_3E6D84();
  (*(v19 + 8))(v18, v20);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    goto LABEL_7;
  }

  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  if (sub_3E6F04())
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    goto LABEL_8;
  }

  v31 = swift_task_alloc();
  v0[19] = v31;
  *v31 = v0;
  v31[1] = sub_2B9E40;
  v32 = v0[12];
  v33 = v0[7];
  v34 = v0[6];

  return sub_2BB838(v32, v34, v33);
}

uint64_t sub_2B9C94(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2B9E40(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[20] = v1;

  if (v1)
  {
    v4 = sub_2BA1C8;
  }

  else
  {
    v4 = sub_2B9F5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2B9F5C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[3];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_2BA01C(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2BA1C8()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2BA280@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF638);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_3E6DA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF640);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  sub_3E7134();
  v14 = *(v5 + 48);
  if (v14(v13, 1, v4))
  {
    sub_FCF8(v13, &qword_4FF640);
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_FCF8(v13, &qword_4FF640);
    v16 = sub_3E6D94();
    (*(v5 + 8))(v7, v4);
    if (v16 <= 1u || v16 == 2)
    {
      return sub_3E5D94();
    }
  }

  sub_3E7134();
  if (v14(v10, 1, v4))
  {
    sub_FCF8(v10, &qword_4FF640);
    v15 = sub_3E6F24();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
LABEL_8:
    sub_FCF8(v3, &qword_4FF638);
    v18 = sub_3E5DC4();
    return (*(*(v18 - 8) + 56))(v21, 1, 1, v18);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_FCF8(v10, &qword_4FF640);
  sub_3E6D84();
  (*(v5 + 8))(v7, v4);
  v17 = sub_3E6F24();
  if ((*(*(v17 - 8) + 48))(v3, 1, v17) == 1)
  {
    goto LABEL_8;
  }

  sub_FCF8(v3, &qword_4FF638);
  return sub_3E5D94();
}

uint64_t sub_2BA6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  type metadata accessor for EpisodeListEntry();
  v11 = swift_task_alloc();
  v8[4] = v11;
  v12 = swift_task_alloc();
  v8[5] = v12;
  *v12 = v8;
  v12[1] = sub_2BA7BC;

  return sub_2B8284(v11, a5, a6);
}

uint64_t sub_2BA7BC()
{

  return _swift_task_switch(sub_2BA8B8, 0, 0);
}

uint64_t sub_2BA8B8()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_2BE76C(v1, type metadata accessor for EpisodeListEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2BA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a4;
  type metadata accessor for EpisodeListEntry();
  v11 = swift_task_alloc();
  v8[5] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF628);
  v8[6] = v12;
  v8[7] = *(v12 - 8);
  v8[8] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[9] = v13;
  *v13 = v8;
  v13[1] = sub_2BAA9C;

  return sub_2B8284(v11, a5, a6);
}

uint64_t sub_2BAA9C()
{

  return _swift_task_switch(sub_2BAB98, 0, 0);
}

uint64_t sub_2BAB98()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  sub_2B3D14(v4, v1);
  sub_2BE76C(v4, type metadata accessor for EpisodeListEntry);
  v5(v1);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2BAC70(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 256) = a1;
  v4 = sub_3EDD94();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_3ED014();
  *(v3 + 64) = v5;
  v6 = *(v5 - 8);
  *(v3 + 72) = v6;
  *(v3 + 80) = *(v6 + 64);
  *(v3 + 88) = swift_task_alloc();
  v7 = sub_3E8C04();
  *(v3 + 96) = v7;
  v8 = *(v7 - 8);
  *(v3 + 104) = v8;
  *(v3 + 112) = *(v8 + 64);
  *(v3 + 120) = swift_task_alloc();
  v9 = sub_3ECF74();
  *(v3 + 128) = v9;
  *(v3 + 136) = *(v9 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v10 = sub_3E8944();
  *(v3 + 160) = v10;
  *(v3 + 168) = *(v10 - 8);
  *(v3 + 176) = swift_task_alloc();
  v11 = sub_3ED6F4();
  *(v3 + 184) = v11;
  *(v3 + 192) = *(v11 - 8);
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_2BAF1C, 0, 0);
}

uint64_t sub_2BAF1C()
{
  sub_36174(0, &qword_4FF648);
  v1 = sub_3EDE04();
  sub_3ED764();
  v2 = sub_3EDDF4();
  *(v0 + 208) = v2;
  v54 = v2;
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v10 = swift_allocBox();
  v12 = v11;
  v53 = v10;
  *(v0 + 216) = v10;
  sub_3E8894();
  sub_3E88F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF668);
  (*(v4 + 16))(v3, v12, v6);
  v13 = sub_3EDA04();
  *(v0 + 224) = v13;
  sub_3ED004();
  (*(v7 + 16))(v8, v5, v9);
  v14 = (*(v7 + 88))(v8, v9);
  if (v14 == enum case for WidgetFamily.systemSmall(_:))
  {
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
LABEL_3:
    v15 = 1;
    goto LABEL_17;
  }

  if (v14 == enum case for WidgetFamily.systemMedium(_:))
  {
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    v15 = 2;
    goto LABEL_17;
  }

  if (v14 == enum case for WidgetFamily.systemLarge(_:))
  {
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    v15 = 4;
    goto LABEL_17;
  }

  if (v14 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v16 = *(v0 + 152);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = sub_3E8264();
    v14 = (*(v17 + 8))(v16, v18);
    v15 = v19;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v20 = *(v0 + 152);
  v22 = *(v0 + 128);
  v21 = *(v0 + 136);
  if (v14 == enum case for WidgetFamily.accessoryCorner(_:) || v14 == enum case for WidgetFamily.accessoryCircular(_:) || v14 == enum case for WidgetFamily.accessoryRectangular(_:) || v14 == enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v21 + 8))(*(v0 + 152), *(v0 + 128), v15);
    goto LABEL_3;
  }

  v23 = sub_3E8264();
  v24 = *(v21 + 8);
  v25 = v24(v20, v22);
  if (v23 < 0)
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(schedule:_:)(v25, v26, v27, v28, v29);
  }

  v24(*(v0 + 144), *(v0 + 128));
  v15 = v23;
LABEL_17:
  v30 = *(v0 + 120);
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);
  v33 = *(v0 + 88);
  v48 = v33;
  v49 = *(v0 + 80);
  v35 = *(v0 + 64);
  v34 = *(v0 + 72);
  v47 = v35;
  v55 = *(v0 + 56);
  v36 = *(v0 + 32);
  v51 = *(v0 + 48);
  v52 = *(v0 + 40);
  v37 = *(v0 + 24);
  v50 = *(v0 + 256);
  [v13 setFetchLimit:{v15, *(v0 + 112)}];
  (*(v31 + 16))(v30, v36, v32);
  (*(v34 + 16))(v33, v37, v35);
  v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v39 = (v46 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = v13;
  v41 = (*(v34 + 80) + v39 + 8) & ~*(v34 + 80);
  v42 = swift_allocObject();
  *(v0 + 232) = v42;
  *(v42 + 16) = v54;
  *(v42 + 24) = v40;
  (*(v31 + 32))(v42 + v38, v30, v32);
  *(v42 + v39) = v53;
  (*(v34 + 32))(v42 + v41, v48, v47);
  *(v42 + v41 + v49) = v50;
  (*(v51 + 104))(v55, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v52);
  v54;
  v43 = v40;

  v44 = swift_task_alloc();
  *(v0 + 240) = v44;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD510);
  *v44 = v0;
  v44[1] = sub_2BB4F4;
  v26 = *(v0 + 56);
  v27 = sub_2BE220;
  v25 = v0 + 16;
  v28 = v42;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v25, v26, v27, v28, v29);
}

uint64_t sub_2BB4F4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v3 = sub_2BB760;
  }

  else
  {
    v3 = sub_2BB678;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2BB678()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2BB760()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2BB838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_3E9A04();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_3EDD94();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_3E8C04();
  v3[12] = v6;
  v7 = *(v6 - 8);
  v3[13] = v7;
  v3[14] = *(v7 + 64);
  v3[15] = swift_task_alloc();
  v8 = sub_3ED014();
  v3[16] = v8;
  v9 = *(v8 - 8);
  v3[17] = v9;
  v3[18] = *(v9 + 64);
  v3[19] = swift_task_alloc();
  v10 = sub_3ED6F4();
  v3[20] = v10;
  v3[21] = *(v10 - 8);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_2BBA7C, 0, 0);
}

uint64_t sub_2BBA7C()
{
  v1 = sub_3E6F14();
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    sub_36174(0, &qword_4FF648);
    v3 = sub_3EDE04();
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    sub_3ED764();
    v7 = sub_3EDDF4();
    v0[24] = v7;
    (*(v5 + 8))(v4, v6);
    v17 = v0[19];
    v32 = v0[18];
    v33 = v17;
    v34 = v7;
    v18 = v0[16];
    v19 = v0[17];
    v20 = v0[15];
    v21 = v0[12];
    v22 = v0[13];
    v35 = v0[10];
    v36 = v0[9];
    v37 = v0[11];
    v23 = v0[4];
    v31 = v0[5];

    (*(v19 + 16))(v17, v23, v18);
    (*(v22 + 16))(v20, v31, v21);
    v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v25 = (v32 + *(v22 + 80) + v24) & ~*(v22 + 80);
    v26 = swift_allocObject();
    v0[25] = v26;
    *(v26 + 16) = v34;
    *(v26 + 24) = v2;
    (*(v19 + 32))(v26 + v24, v33, v18);
    (*(v22 + 32))(v26 + v25, v20, v21);
    (*(v35 + 104))(v37, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v36);
    v34;
    v27 = v2;
    v28 = swift_task_alloc();
    v0[26] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD510);
    *v28 = v0;
    v28[1] = sub_2BBEBC;
    v30 = v0[11];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v30, sub_2BDFBC, v26, v29);
  }

  else
  {
    sub_3E9974();
    v8 = sub_3E99F4();
    v9 = sub_3ED9D4();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v8, v9, "Unexpectedly found no station managed object ID. Will show nothing.", v14, 2u);
    }

    (*(v12 + 8))(v11, v13);

    v15 = v0[1];

    return v15(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2BBEBC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    return _swift_task_switch(sub_2BC014, 0, 0);
  }
}

uint64_t sub_2BC014()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2BC0CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v56 = a5;
  v49 = a4;
  v55 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF650);
  __chkstk_darwin(v48);
  v8 = &v46 - v7;
  v9 = sub_3ECF74();
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = sub_3E6F24();
  v53 = *(v16 - 8);
  v54 = v16;
  __chkstk_darwin(v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_3E9A04();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 objectWithID:{a2, v21}];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v27 = v24;
    sub_3E6EE4();
    v52 = [v26 episodes];
    if (!v52)
    {

      v37 = _swiftEmptyArrayStorage;
LABEL_34:
      v45 = v53;
      v44 = v54;
      *v56 = v37;
      return (*(v45 + 8))(v18, v44);
    }

    sub_3ED004();
    v28 = v50;
    v29 = v51;
    (v51[2])(v12, v15, v50);
    v30 = (v29[11])(v12, v28);
    if (v30 == enum case for WidgetFamily.systemSmall(_:))
    {
      goto LABEL_4;
    }

    if (v30 == enum case for WidgetFamily.systemMedium(_:))
    {
      (v29[1])(v15, v28);
      v31 = 2;
      goto LABEL_22;
    }

    if (v30 == enum case for WidgetFamily.systemLarge(_:))
    {
      (v29[1])(v15, v28);
      v31 = 4;
      goto LABEL_22;
    }

    if (v30 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v31 = sub_3E8264();
      v38 = v29[1];
      ++v29;
      v30 = v38(v15, v28);
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    if (v30 == enum case for WidgetFamily.accessoryCorner(_:) || v30 == enum case for WidgetFamily.accessoryCircular(_:) || v30 == enum case for WidgetFamily.accessoryRectangular(_:) || v30 == enum case for WidgetFamily.accessoryInline(_:))
    {
LABEL_4:
      (v29[1])(v15, v28);
      v31 = 1;
LABEL_22:
      v47 = v27;
      v50 = v18;
      v61 = _swiftEmptyArrayStorage;
      sub_3ED964();
      v40 = *(v48 + 36);
      *&v8[v40] = v31;
      if (v31)
      {
        sub_3E5C04();
        sub_2BE3B8(&qword_4FCF10, &type metadata accessor for NSFastEnumerationIterator);
        v51 = _swiftEmptyArrayStorage;
        v41 = v31 - 1;
        while (1)
        {
          *&v8[v40] = v41;
          sub_3EE114();
          if (!v60)
          {
            break;
          }

          sub_1FB90(&v59, &v57);
          sub_36174(0, &qword_4F1C30);
          if ((swift_dynamicCast() & 1) != 0 && v58)
          {
            sub_3ED564();
            if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v51 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
              sub_3ED5A4();
            }

            sub_3ED604();
            v51 = v61;
            if (!v41)
            {
              break;
            }

            --v41;
          }

          else if (--v41 == -1)
          {
            break;
          }
        }
      }

      else
      {
        v51 = _swiftEmptyArrayStorage;
      }

      v42 = sub_FCF8(v8, &qword_4FF650);
      __chkstk_darwin(v42);
      v18 = v50;
      v43 = v55;
      *(&v46 - 4) = v49;
      *(&v46 - 3) = v43;
      *(&v46 - 2) = v18;
      v37 = sub_2B5F34(sub_2BE090, (&v46 - 6), v51);

      goto LABEL_34;
    }

    v31 = sub_3E8264();
    v39 = v29[1];
    result = v39(v15, v28);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v39(v12, v28);
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v32 = v20;

    sub_3E9974();
    v33 = sub_3E99F4();
    v34 = sub_3ED9D4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Managed object ID is not a station", v35, 2u);
    }

    result = (*(v32 + 8))(v23, v19);
    *v56 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_2BC7F8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF658);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v34 = sub_3E6F24();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3ECF74();
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v15 - 8);
  v17 = &v33 - v16;
  v18 = sub_3E8C04();
  v19 = __chkstk_darwin(v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  (*(v23 + 16))(v21, a2, v19);
  v24 = enum case for EyebrowBuilder.ListContext.mixedShows(_:);
  v25 = sub_3E7CB4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  v27 = v22;
  sub_3ED004();
  (*(v10 + 16))(v33, v36, v34);
  v28 = v27;
  sub_3E6EA4();
  v29 = sub_3E6EC4();
  (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
  v38[3] = sub_3E7104();
  v38[4] = sub_2BE3B8(&qword_4FF660, &type metadata accessor for PlayPauseStationAppIntent);
  __swift_allocate_boxed_opaque_existential_0Tm(v38);
  sub_3E70F4();
  v30 = v37;
  sub_2CC2AC(v28, v21, v17, v14, v38, v37);
  v31 = _s7EpisodeVMa();
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

uint64_t sub_2BCBFC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, char a3@<W5>, void *a4@<X8>)
{
  sub_3E8944();
  v9 = swift_projectBox();
  sub_36174(0, &qword_4F1C30);
  result = sub_3EDDA4();
  if (!v4)
  {
    __chkstk_darwin(result);
    v13[2] = a1;
    v13[3] = v9;
    v13[4] = a2;
    v14 = a3;
    v12 = sub_2B5F34(sub_2BE324, v13, v11);

    *a4 = v12;
  }

  return result;
}

uint64_t sub_2BCD0C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v43[1] = a4;
  v48 = a6;
  v9 = sub_3E70B4();
  __chkstk_darwin(v9 - 8);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E6EC4();
  __chkstk_darwin(v11 - 8);
  v45 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3ECF74();
  __chkstk_darwin(v13 - 8);
  v44 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF428);
  __chkstk_darwin(v15 - 8);
  v17 = v43 - v16;
  v18 = sub_3E8944();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v22 - 8);
  v24 = v43 - v23;
  v25 = sub_3E8C04();
  v26 = __chkstk_darwin(v25);
  v28 = v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  (*(v30 + 16))(v28, a2, v26);
  swift_beginAccess();
  v31 = v29;
  sub_3E8934();
  (*(v19 + 16))(v21, a3, v18);
  swift_endAccess();
  sub_3E88C4();
  (*(v19 + 8))(v21, v18);
  if (v58 > 5u)
  {
    if (v58 <= 7u)
    {
      v32 = v48;
      if (v58 != 6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v32 = v48;
      if (v58 == 8 || v58 == 9)
      {
        goto LABEL_20;
      }

      v34 = v54 | v53 | v52;
      if (!(v56 | v57 | v50 | v55 | v34 | v51))
      {
        goto LABEL_5;
      }

      v35 = v56 | v57 | v55 | v34 | v51;
      if (v50 == 1 && !v35)
      {
        goto LABEL_5;
      }

      if (v50 != 2 || v35)
      {
        if ((v50 - 3) <= 3 && !v35)
        {
          goto LABEL_5;
        }

LABEL_21:
        sub_2BE348(v17, v24);
        v33 = &enum case for EyebrowBuilder.ListContext.show(_:);
        goto LABEL_22;
      }
    }

    sub_FCF8(v17, &qword_4EF428);
    *v24 = 0;
    v33 = &enum case for EyebrowBuilder.ListContext.listenNow(_:);
    goto LABEL_22;
  }

  if (v58 > 2u)
  {
    v32 = v48;
    goto LABEL_20;
  }

  v32 = v48;
  if (v58 >= 2u)
  {
LABEL_20:
    sub_20C1D8(&v50);
    goto LABEL_21;
  }

  sub_20C1D8(&v50);
LABEL_5:
  sub_FCF8(v17, &qword_4EF428);
  v33 = &enum case for EyebrowBuilder.ListContext.mixedShows(_:);
LABEL_22:
  v36 = *v33;
  v37 = sub_3E7CB4();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v24, v36, v37);
  (*(v38 + 56))(v24, 0, 1, v37);
  v39 = v44;
  sub_3ED004();
  v40 = v31;
  sub_3E6EA4();
  sub_3E70A4();
  v49[3] = sub_3E7094();
  v49[4] = sub_2BE3B8(&qword_4FF670, &type metadata accessor for PlayPauseWidgetIntent);
  __swift_allocate_boxed_opaque_existential_0Tm(v49);
  sub_3E7084();
  sub_2CC2AC(v40, v28, v24, v39, v49, v32);
  v41 = _s7EpisodeVMa();
  return (*(*(v41 - 8) + 56))(v32, 0, 1, v41);
}

uint64_t sub_2BD320@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3ECF74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF630);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  sub_3E7144();
  v9 = sub_3E7154();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2B7BE4(v8);
  v12 = v11;
  sub_FCF8(v8, &qword_4FF630);
  sub_3ED004();
  sub_2AAE24(v10, v12, v5, a1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2BD4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2400C;

  return sub_2B8284(a1, a2, a3);
}

uint64_t sub_2BD588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  type metadata accessor for EpisodeListEntry();
  v7 = swift_task_alloc();
  v4[4] = v7;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_2BD668;

  return sub_2B8284(v7, a2, a3);
}

uint64_t sub_2BD668()
{

  return _swift_task_switch(sub_2BD764, 0, 0);
}

uint64_t sub_2BD764()
{
  v1 = v0[4];
  sub_2B3D14(v1, v0[2]);
  sub_2BE76C(v1, type metadata accessor for EpisodeListEntry);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2BD834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a4;
  v35 = a8;
  v32 = a7;
  v33 = a3;
  v30 = a1;
  v31 = a2;
  v9 = sub_3ED014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E7154();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_3ED6F4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_2BDC74(v8, v36);
  (*(v13 + 16))(v15, v30, v12);
  v20 = v9;
  (*(v10 + 16))(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v9);
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = (v14 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v36[1];
  *(v23 + 32) = v36[0];
  *(v23 + 48) = v24;
  *(v23 + 64) = v36[2];
  (*(v13 + 32))(v23 + v21, v15, v12);
  (*(v10 + 32))(v23 + v22, v29, v20);
  v25 = (v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v34;
  *v25 = v33;
  v25[1] = v26;

  sub_D37B8(0, 0, v18, v35, v23);
}

uint64_t sub_2BDB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2368C;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_2BDBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2400C;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_2BDCB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3E7154() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_3ED014() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2400C;

  return sub_2BA948(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_2BDE64()
{
  v1 = sub_3ED014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_3E8C04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_2BDFBC@<X0>(void *a1@<X8>)
{
  v3 = *(sub_3ED014() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_3E8C04() - 8);
  return sub_2BC0CC(*(v1 + 16), *(v1 + 24), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_2BE0B0()
{
  v1 = sub_3E8C04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_3ED014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

uint64_t sub_2BE220@<X0>(void *a1@<X8>)
{
  v3 = *(sub_3E8C04() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_3ED014() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_2BCBFC(v1 + v4, v1 + v7, *(v1 + v7 + *(v6 + 64)), a1);
}

uint64_t sub_2BE348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BE3B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_8()
{
  v1 = sub_3E7154();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_3ED014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_2BE570(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3E7154() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_3ED014() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2368C;

  return sub_2BA6D4(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_2BE704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2BE76C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2BE7CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2BE85C@<X0>(_BYTE *a1@<X8>)
{
  sub_2A6900();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t ShowWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF678);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF680);
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF688);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF690);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v43 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF698);
  v17 = *(v16 - 8);
  v49 = v16;
  v50 = v17;
  __chkstk_darwin(v16);
  v44 = &v40 - v18;
  sub_3E8214();
  sub_3E7124();
  v54 = sub_3E9264();
  v55 = &protocol witness table for CachingImageContentProvider;
  __swift_allocate_boxed_opaque_existential_0Tm(&v52);
  sub_3E9254();
  v56 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF6A0);
  sub_2BF34C();
  sub_2BF51C();
  sub_3ECFD4();
  sub_3EABC4();
  v19 = sub_886BC(&qword_4FF6C8, &qword_4FF678);
  sub_3EAD84();

  (*(v2 + 8))(v4, v1);
  sub_3EABC4();
  v52 = v1;
  v53 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v41;
  sub_3EAD64();

  v22 = v21;
  (*(v42 + 8))(v8, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF618);
  v23 = sub_3ECF74();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_3F52F0;
  v28 = v27 + v26;
  v29 = *(v24 + 104);
  v29(v28, enum case for WidgetFamily.systemSmall(_:), v23);
  v29(v28 + v25, enum case for WidgetFamily.systemMedium(_:), v23);
  v29(v28 + 2 * v25, enum case for WidgetFamily.systemLarge(_:), v23);
  v29(v28 + 3 * v25, enum case for WidgetFamily.systemExtraLarge(_:), v23);
  v52 = v22;
  v53 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = v45;
  sub_3EAD74();

  (*(v46 + 8))(v12, v32);
  v52 = v32;
  v53 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v44;
  v35 = v47;
  sub_3EAD94();
  (*(v48 + 8))(v31, v35);
  v36 = sub_3E7424();
  v54 = v36;
  v55 = sub_2B5BDC(&qword_4F07A0, &type metadata accessor for Podcasts);
  v37 = __swift_allocate_boxed_opaque_existential_0Tm(&v52);
  (*(*(v36 - 8) + 104))(v37, enum case for Podcasts.showWidget(_:), v36);
  sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  v52 = v35;
  v53 = v33;
  swift_getOpaqueTypeConformance2();
  v38 = v49;
  sub_3EADA4();
  return (*(v50 + 8))(v34, v38);
}

uint64_t sub_2BF0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EpisodeListWidgetMain();
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B4108(a1, v6);
  v6[v4[5]] = 2;
  v7 = v4[6];
  *&v6[v7] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  v8 = v4[7];
  *&v6[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCA8);
  swift_storeEnumTagMultiPayload();
  v9 = v4[8];
  *&v6[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCB0);
  swift_storeEnumTagMultiPayload();
  v10 = &v6[v4[9]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v4[10];
  *&v6[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v12 = v4[11];
  *&v6[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EpisodeListEntry();
  sub_2B5BDC(&qword_4FF5F0, type metadata accessor for EpisodeListWidgetMain);
  sub_3EB3F4();
  sub_2B5E28(v6);
  KeyPath = swift_getKeyPath();
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF6B8) + 36);
  *v14 = KeyPath;
  *(v14 + 8) = 0;
  v15 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF6A0);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = 0;
  return result;
}

unint64_t sub_2BF34C()
{
  result = qword_4FF6A8;
  if (!qword_4FF6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF6A0);
    sub_2BF404();
    sub_886BC(&qword_4FF5F8, &qword_4FF600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF6A8);
  }

  return result;
}

unint64_t sub_2BF404()
{
  result = qword_4FF6B0;
  if (!qword_4FF6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF6B8);
    type metadata accessor for EpisodeListWidgetMain();
    sub_2B5BDC(&qword_4FF5F0, type metadata accessor for EpisodeListWidgetMain);
    swift_getOpaqueTypeConformance2();
    sub_886BC(&qword_4FDDA0, &qword_4FDDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF6B0);
  }

  return result;
}

unint64_t sub_2BF51C()
{
  result = qword_4FF6C0;
  if (!qword_4FF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF6C0);
  }

  return result;
}

uint64_t sub_2BF5B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF698);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF690);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF678);
  sub_886BC(&qword_4FF6C8, &qword_4FF678);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2BF77C@<X0>(_BYTE *a1@<X8>)
{
  sub_2A6900();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_2BF8B8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2A515C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 1);
    v12 = *(v9 + 24);
    *a2 = v10;
    *(a2 + 1) = v11;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v12;
    result = memmove(v9, (v9 + 32), 32 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2BF95C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2A68C0(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2BF9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_3E7124();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for EpisodeListEntry();
  v4[14] = swift_task_alloc();
  v6 = sub_3E5F84();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  v4[19] = swift_task_alloc();
  v7 = sub_3E8C04();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F36C8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_3E6D44();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v9 = sub_3ECF74();
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v10 = sub_3ED014();
  v4[34] = v10;
  v4[35] = *(v10 - 8);
  v4[36] = swift_task_alloc();
  v11 = sub_3E9A04();
  v4[37] = v11;
  v4[38] = *(v11 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_2BFDF0, 0, 0);
}

uint64_t sub_2BFDF0()
{
  v42 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[8];
  sub_3E9974();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_3E99F4();
  v6 = sub_3ED9F4();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[41];
  v9 = v0[37];
  v10 = v0[38];
  v11 = v0[35];
  v12 = v0[36];
  v13 = v0[34];
  if (v7)
  {
    v40 = v0[41];
    v14 = v0[33];
    log = v5;
    v15 = v0[29];
    v16 = v0[30];
    v35 = v0[34];
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v17 = 136315138;
    v37 = v6;
    sub_3ED004();
    sub_2C4B00(&qword_4FDD60, &type metadata accessor for WidgetFamily);
    v18 = sub_3EE7A4();
    v38 = v9;
    v20 = v19;
    (*(v16 + 8))(v14, v15);
    (*(v11 + 8))(v12, v35);
    v21 = sub_2EDD0(v18, v20, &v41);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, log, v37, "Creating Library widget with configuration: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);

    v22 = *(v10 + 8);
    v22(v40, v38);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
    v22 = *(v10 + 8);
    v22(v8, v9);
  }

  v0[42] = v22;
  if ([objc_opt_self() canExtensionOpenDatabase])
  {
    v23 = swift_task_alloc();
    v0[43] = v23;
    *v23 = v0;
    v23[1] = sub_2C022C;
    v24 = v0[25];
    v25 = v0[7];

    return sub_2C14D0(v24, v25);
  }

  else
  {
    v27 = v0[33];
    v28 = v0[29];
    v29 = v0[30];
    v30 = v0[6];
    v44._countAndFlagsBits = 0x7365646F73697045;
    v44._object = 0xE800000000000000;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v31 = sub_3E8614(v44, v45);
    v33 = v32;
    sub_3ED004();
    sub_2AB304(v31, v33, v27, v30);

    (*(v29 + 8))(v27, v28);

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_2C022C()
{

  return _swift_task_switch(sub_2C0328, 0, 0);
}

uint64_t sub_2C0328()
{
  v46 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_FCF8(v3, &qword_4F36C8);
LABEL_8:
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    v15 = v0[7];
    sub_3E9974();
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_3E99F4();
    v17 = sub_3ED9D4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[42];
    v20 = v0[40];
    v21 = v0[37];
    if (v18)
    {
      v44 = v0[37];
      v23 = v0[11];
      v22 = v0[12];
      v24 = v0[10];
      v43 = v0[42];
      v25 = swift_slowAlloc();
      v42 = v20;
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136315138;
      sub_3E7114();
      v27 = sub_3ED2B4();
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_2EDD0(v27, v29, &v45);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_0, v16, v17, "Received a show configuration without a uuid: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);

      v43(v42, v44);
    }

    else
    {
      v32 = v0[11];
      v31 = v0[12];
      v33 = v0[10];

      (*(v32 + 8))(v31, v33);
      v19(v20, v21);
    }

    v34 = v0[33];
    v35 = v0[29];
    v36 = v0[30];
    v37 = v0[6];
    v48._countAndFlagsBits = 0x7365646F73697045;
    v48._object = 0xE800000000000000;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    v38 = sub_3E8614(v48, v49);
    v40 = v39;
    sub_3ED004();
    sub_2AAE24(v38, v40, v34, v37);

    (*(v36 + 8))(v34, v35);

    v41 = v0[1];

    return v41();
  }

  (*(v2 + 32))(v0[28], v3, v1);
  v4 = sub_3E6D04();
  v0[44] = v5;
  if (!v5)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
    goto LABEL_8;
  }

  v6 = v4;
  v7 = v5;
  sub_3E8BB4();
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_2C0798;
  v9 = v0[22];
  v10 = v0[8];

  return sub_2C1A10(v6, v7, v10, v9);
}

uint64_t sub_2C0798(uint64_t a1)
{
  v4 = *v2;
  v4[46] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_2C1174, 0, 0);
  }

  else
  {
    v4[2] = a1;
    v5 = swift_task_alloc();
    v4[47] = v5;
    *v5 = v4;
    v5[1] = sub_2C0938;
    v6 = v4[8];

    return sub_2C2218((v4 + 2), v6);
  }
}

uint64_t sub_2C0938(uint64_t a1)
{
  *(*v1 + 384) = a1;

  return _swift_task_switch(sub_2C0A58, 0, 0);
}

uint64_t sub_2C0A58()
{
  sub_3ED004();
  v1 = swift_task_alloc();
  v0[49] = v1;
  *v1 = v0;
  v1[1] = sub_2C0B1C;
  v2 = v0[48];
  v3 = v0[33];
  v4 = v0[22];
  v5 = v0[9];

  return sub_2B6E98(v4, v3, v2, v5);
}

uint64_t sub_2C0B1C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v2[50] = a1;

  v6 = *(v4 + 8);
  v2[51] = v6;
  v2[52] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  return _swift_task_switch(sub_2C0C88, 0, 0);
}

uint64_t sub_2C0C88()
{
  v1 = v0[51];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[29];
  v5 = v0[30];
  sub_3ED004();
  (*(v5 + 104))(v3, enum case for WidgetFamily.systemMedium(_:), v4);
  sub_2C4B00(&qword_4FDD38, &type metadata accessor for WidgetFamily);
  sub_3ED514();
  sub_3ED514();
  v1(v3, v4);
  v1(v2, v4);
  if (v0[4] == v0[5])
  {
    v6 = sub_3E6D14();
  }

  else
  {
    v49._countAndFlagsBits = 0x7365646F73697045;
    v49._object = 0xE800000000000000;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v6 = sub_3E8614(v49, v50);
  }

  v42 = v7;
  v44 = v6;
  v9 = v0[18];
  v8 = v0[19];
  v33 = v0[17];
  v34 = v0[50];
  v35 = v0[16];
  v10 = v0[14];
  v40 = v0[15];
  v11 = v0[13];
  v46 = *(v0[48] + 16);
  v12 = sub_3E6D14();
  v36 = v13;
  v38 = v12;
  sub_3E8BE4();
  sub_3ED004();
  sub_3E6D34();
  sub_3E5F74();
  sub_3E5FB4();
  v14 = v11[14];
  v15 = sub_3E5DC4();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  *v10 = v44;
  *(v10 + 1) = v42;
  *&v10[v11[9]] = v34;
  *&v10[v11[10]] = 0;
  sub_FBD0(v8, &v10[v11[11]], &qword_4EF460);
  (*(v35 + 16))(&v10[v11[12]], v33, v40);
  sub_2ABFA8(v9, &v10[v14]);
  *(v10 + 2) = v38;
  *(v10 + 3) = v36;
  v16 = v0[48];
  if (v46)
  {
    v17 = v0[17];
    v18 = v0[14];
    *(v18 + *(v0[13] + 60)) = 0;
    *(v18 + 32) = 5;
    *(v10 + 5) = v16;
    v19 = v18 + v11[13];

    v47 = v19;
    sub_2B10B8(v17, v16, v19);
  }

  else
  {
    v21 = v0[13];
    v20 = v0[14];
    *(v20 + 32) = 4;
    *(v20 + *(v21 + 60)) = 0;
    *(v10 + 5) = v16;
    v47 = v20 + v11[13];
    sub_3ECFE4();
  }

  v22 = v0[51];
  v23 = v0[31];
  v24 = v0[29];
  v25 = v0[27];
  v39 = v0[26];
  v41 = v0[28];
  v26 = v0[21];
  v37 = v0[22];
  v27 = v0[19];
  v28 = v0[20];
  v29 = v0[18];
  v43 = v0[6];
  v45 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);
  sub_FCF8(v29, &unk_4E9EE0);
  v22(v23, v24);
  sub_FCF8(v27, &qword_4EF460);
  (*(v26 + 8))(v37, v28);
  (*(v25 + 8))(v41, v39);
  v30 = sub_3ECFF4();
  (*(*(v30 - 8) + 56))(v47, 0, 1, v30);
  sub_2C4BAC(v45, v43, type metadata accessor for EpisodeListEntry);

  v31 = v0[1];

  return v31();
}

uint64_t sub_2C1174()
{
  v31 = v0;
  sub_3E9974();
  swift_errorRetain();
  v1 = sub_3E99F4();
  v2 = sub_3ED9D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[46];
    v28 = v0[42];
    v4 = v0[39];
    v5 = v0[37];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315138;
    v0[3] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v8 = sub_3ED2B4();
    v10 = sub_2EDD0(v8, v9, &v30);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "Failed to compute widget snapshot: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);

    v28(v4, v5);
  }

  else
  {
    v11 = v0[42];
    v12 = v0[39];
    v13 = v0[37];

    v11(v12, v13);
  }

  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[27];
  v27 = v0[26];
  v29 = v0[28];
  v17 = v0[21];
  v26 = v0[22];
  v24 = v0[29];
  v25 = v0[20];
  v18 = v0[6];
  v33._countAndFlagsBits = 0x7365646F73697045;
  v33._object = 0xE800000000000000;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v19 = sub_3E8614(v33, v34);
  v21 = v20;
  sub_3ED004();
  sub_2AB304(v19, v21, v14, v18);

  (*(v15 + 8))(v14, v24);
  (*(v17 + 8))(v26, v25);
  (*(v16 + 8))(v29, v27);

  v22 = v0[1];

  return v22();
}