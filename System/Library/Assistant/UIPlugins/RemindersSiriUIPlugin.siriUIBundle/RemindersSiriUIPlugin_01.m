uint64_t sub_14A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(char *__return_ptr, void **, void **), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v25 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v26 = a3;
      v16 = *(v13 + 8 * a3);
      v17 = v15;
      v18 = v14;
      do
      {
        v19 = *v18;
        v29 = v16;
        v28 = v19;
        v20 = v16;
        v21 = v19;
        a5(&v27, &v29, &v28);

        if (v27 != 1)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return result;
        }

        v22 = *v18;
        v16 = *(v18 + 8);
        *v18 = v16;
        *(v18 + 8) = v22;
        v18 -= 8;
      }

      while (!__CFADD__(v17++, 1));
      a3 = v26 + 1;
      v14 += 8;
      --v15;
      if (v26 + 1 != v25)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_14BBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 16 * a3);
    v23 = v5;
    while (1)
    {
      v27 = v5;
      v7 = *v4;
      v8 = *(v4 + 8);
      v9 = v6;

      v10 = v7;

      v11 = [v9 displayName];
      v12 = sub_2041C();
      v14 = v13;

      v15 = [v10 displayName];
      v16 = sub_2041C();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 16;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v20 = sub_2090C();

      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v21 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v21;
      v4 -= 16;
      v5 = v27 + 1;
      if (v27 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_14D84(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_29A0(&qword_2E2B0, &qword_22958);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v173 - v15;
  v17 = __chkstk_darwin(v14);
  v187 = &v173 - v18;
  v19 = __chkstk_darwin(v17);
  v191 = (&v173 - v20);
  v21 = __chkstk_darwin(v19);
  v175 = &v173 - v22;
  __chkstk_darwin(v21);
  v177 = &v173 - v23;
  v215 = sub_1FEAC();
  v24 = *(v215 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v215);
  v199 = &v173 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v212 = &v173 - v29;
  v30 = __chkstk_darwin(v28);
  v184 = &v173 - v31;
  v32 = __chkstk_darwin(v30);
  v188 = (&v173 - v33);
  v34 = __chkstk_darwin(v32);
  v174 = &v173 - v35;
  __chkstk_darwin(v34);
  v37 = &v173 - v36;
  v205 = sub_29A0(&qword_2E2C0, &qword_22978);
  v193 = *(v205 - 8);
  v38 = *(v193 + 64);
  v39 = __chkstk_darwin(v205);
  v173 = (&v173 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __chkstk_darwin(v39);
  v202 = &v173 - v42;
  v43 = __chkstk_darwin(v41);
  v204 = &v173 - v44;
  v45 = __chkstk_darwin(v43);
  v214 = &v173 - v46;
  v47 = __chkstk_darwin(v45);
  v48 = __chkstk_darwin(v47);
  v198 = &v173 - v49;
  v50 = __chkstk_darwin(v48);
  v181 = &v173 - v51;
  result = __chkstk_darwin(v50);
  v180 = &v173 - v54;
  v55 = a3[1];
  v182 = a1;
  if (v55 < 1)
  {
    v57 = _swiftEmptyArrayStorage;
LABEL_115:
    v58 = *v182;
    if (!*v182)
    {
      goto LABEL_154;
    }

    v24 = v57;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v24;
LABEL_118:
      v216 = result;
      v24 = *(result + 16);
      if (v24 >= 2)
      {
        while (*a3)
        {
          v169 = *(result + 16 * v24);
          v170 = result;
          v171 = *(result + 16 * (v24 - 1) + 40);
          sub_168C4(*a3 + *(v193 + 72) * v169, *a3 + *(v193 + 72) * *(result + 16 * (v24 - 1) + 32), *a3 + *(v193 + 72) * v171, v58);
          if (v5)
          {
          }

          if (v171 < v169)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v170 = sub_17B28(v170);
          }

          if (v24 - 2 >= *(v170 + 2))
          {
            goto LABEL_142;
          }

          v172 = &v170[16 * v24];
          *v172 = v169;
          *(v172 + 1) = v171;
          v216 = v170;
          sub_17A9C(v24 - 1);
          result = v216;
          v24 = *(v216 + 16);
          if (v24 <= 1)
          {
          }
        }

        goto LABEL_152;
      }
    }

LABEL_148:
    result = sub_17B28(v24);
    goto LABEL_118;
  }

  v206 = v16;
  v197 = v53;
  v203 = v13;
  v176 = a4;
  v56 = 0;
  v208 = (v24 + 32);
  v209 = (v24 + 48);
  v207 = (v24 + 8);
  v57 = _swiftEmptyArrayStorage;
  v58 = &qword_2E2B0;
  v194 = a3;
  v178 = v37;
  while (1)
  {
    v59 = v56;
    v60 = v56 + 1;
    v195 = v57;
    if (v60 < v55)
    {
      v190 = v55;
      v61 = *a3;
      v62 = *(v193 + 72);
      v196 = v60;
      v63 = v180;
      sub_FBB0(v61 + v62 * v60, v180, &qword_2E2C0, &qword_22978);
      v183 = v59;
      v200 = v62;
      v64 = v61 + v62 * v59;
      v65 = v181;
      sub_FBB0(v64, v181, &qword_2E2C0, &qword_22978);
      v66 = v177;
      sub_FBB0(v63, v177, &qword_2E2B0, &qword_22958);
      v67 = *v209;
      v68 = (*v209)(v66, 1, v215);
      v189 = v67;
      v179 = v5;
      if (v68 == 1)
      {
        sub_469C(v66, &qword_2E2B0, &qword_22958);
        LODWORD(v192) = 0;
        a3 = v191;
      }

      else
      {
        v69 = v215;
        v213 = *v208;
        v213(v37, v66, v215);
        v70 = v175;
        sub_FBB0(v65, v175, &qword_2E2B0, &qword_22958);
        v71 = v67(v70, 1, v69);
        a3 = v191;
        if (v71 == 1)
        {
          (*v207)(v37, v215);
          sub_469C(v70, &qword_2E2B0, &qword_22958);
          LODWORD(v192) = 1;
        }

        else
        {
          v72 = v174;
          v73 = v70;
          v74 = v215;
          v213(v174, v73, v215);
          LODWORD(v192) = sub_1FE7C();
          v75 = *v207;
          (*v207)(v72, v74);
          v75(v37, v74);
        }
      }

      v58 = v183;
      sub_469C(v181, &qword_2E2C0, &qword_22978);
      result = sub_469C(v180, &qword_2E2C0, &qword_22978);
      v76 = v58 + 2;
      v77 = v200 * (v58 + 2);
      v24 = v61 + v77;
      v78 = v196;
      v79 = v200 * v196;
      v80 = v61 + v200 * v196;
      v81 = v188;
      do
      {
        v83 = v76;
        v85 = v78;
        v84 = v79;
        v5 = v77;
        if (v76 >= v190)
        {
          break;
        }

        v210 = v76;
        v211 = v78;
        v213 = v77;
        v201 = v79;
        v87 = v198;
        sub_FBB0(v24, v198, &qword_2E2C0, &qword_22978);
        v88 = v197;
        sub_FBB0(v80, v197, &qword_2E2C0, &qword_22978);
        v89 = v87;
        v58 = &qword_22958;
        sub_FBB0(v89, a3, &qword_2E2B0, &qword_22958);
        v90 = v189;
        if (v189(a3, 1, v215) == 1)
        {
          sub_469C(a3, &qword_2E2B0, &qword_22958);
          v82 = 0;
        }

        else
        {
          v58 = v81;
          v91 = v215;
          v196 = *v208;
          (v196)(v81, a3, v215);
          v92 = v187;
          sub_FBB0(v88, v187, &qword_2E2B0, &qword_22958);
          if (v90(v92, 1, v91) == 1)
          {
            (*v207)(v58, v215);
            sub_469C(v92, &qword_2E2B0, &qword_22958);
            v82 = 1;
            v83 = v210;
            v5 = v213;
            v81 = v58;
            goto LABEL_15;
          }

          v93 = v184;
          v94 = v215;
          (v196)(v184, v92, v215);
          v82 = sub_1FE7C();
          v95 = *v207;
          v81 = v188;
          (*v207)(v93, v94);
          v95(v81, v94);
        }

        v83 = v210;
        v5 = v213;
LABEL_15:
        sub_469C(v197, &qword_2E2C0, &qword_22978);
        result = sub_469C(v198, &qword_2E2C0, &qword_22978);
        v76 = v83 + 1;
        v84 = v201;
        v24 += v200;
        v80 += v200;
        v85 = v211;
        v78 = v211 + 1;
        v79 = v201 + v200;
        v77 = &v5[v200];
        v86 = (v192 & 1) == (v82 & 1);
        a3 = v191;
      }

      while (v86);
      if (v192)
      {
        v59 = v183;
        if (v83 < v183)
        {
          goto LABEL_145;
        }

        if (v183 < v83)
        {
          v96 = v183 * v200;
          v58 = v173;
          while (1)
          {
            if (v59 == v85)
            {
              goto LABEL_29;
            }

            v211 = v85;
            v213 = v5;
            v24 = *v194;
            if (!*v194)
            {
              goto LABEL_151;
            }

            v99 = v84;
            sub_1DFC0(v24 + v96, v58, &qword_2E2C0, &qword_22978);
            v97 = v99;
            if (v96 < v99 || v24 + v96 >= v213 + v24)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              if (v96 == v99)
              {
                goto LABEL_28;
              }

              swift_arrayInitWithTakeBackToFront();
            }

            v97 = v99;
LABEL_28:
            result = sub_1DFC0(v58, v24 + v97, &qword_2E2C0, &qword_22978);
            v84 = v99;
            v5 = v213;
            v85 = v211;
LABEL_29:
            ++v59;
            v84 -= v200;
            v5 -= v200;
            v96 += v200;
            if (v59 >= v85--)
            {
              goto LABEL_37;
            }
          }
        }

        v60 = v83;
        v5 = v179;
        a3 = v194;
      }

      else
      {
LABEL_37:
        v60 = v83;
        v5 = v179;
        a3 = v194;
        v59 = v183;
      }
    }

    v100 = a3[1];
    v196 = v60;
    if (v60 < v100)
    {
      v139 = __OFSUB__(v60, v59);
      v101 = v60 - v59;
      if (v139)
      {
        goto LABEL_144;
      }

      if (v101 < v176)
      {
        break;
      }
    }

LABEL_62:
    if (v196 < v59)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v57 = v195;
    }

    else
    {
      result = sub_11BA0(0, *(v195 + 2) + 1, 1, v195);
      v57 = result;
    }

    v125 = *(v57 + 2);
    v124 = *(v57 + 3);
    v24 = v125 + 1;
    if (v125 >= v124 >> 1)
    {
      result = sub_11BA0((v124 > 1), v125 + 1, 1, v57);
      v57 = result;
    }

    *(v57 + 2) = v24;
    v126 = &v57[16 * v125];
    v127 = v196;
    *(v126 + 4) = v59;
    *(v126 + 5) = v127;
    if (!*v182)
    {
      goto LABEL_153;
    }

    if (v125)
    {
      a3 = *v182;
      v58 = &qword_2E2B0;
      while (1)
      {
        v128 = v24 - 1;
        if (v24 >= 4)
        {
          break;
        }

        if (v24 == 3)
        {
          v129 = *(v57 + 4);
          v130 = *(v57 + 5);
          v139 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          v132 = v139;
LABEL_83:
          if (v132)
          {
            goto LABEL_132;
          }

          v145 = &v57[16 * v24];
          v147 = *v145;
          v146 = *(v145 + 1);
          v148 = __OFSUB__(v146, v147);
          v149 = v146 - v147;
          v150 = v148;
          if (v148)
          {
            goto LABEL_135;
          }

          v151 = &v57[16 * v128 + 32];
          v153 = *v151;
          v152 = *(v151 + 1);
          v139 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v139)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v149, v154))
          {
            goto LABEL_139;
          }

          if (v149 + v154 >= v131)
          {
            if (v131 < v154)
            {
              v128 = v24 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v155 = &v57[16 * v24];
        v157 = *v155;
        v156 = *(v155 + 1);
        v139 = __OFSUB__(v156, v157);
        v149 = v156 - v157;
        v150 = v139;
LABEL_97:
        if (v150)
        {
          goto LABEL_134;
        }

        v158 = &v57[16 * v128];
        v160 = *(v158 + 4);
        v159 = *(v158 + 5);
        v139 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v139)
        {
          goto LABEL_137;
        }

        if (v161 < v149)
        {
          goto LABEL_4;
        }

LABEL_104:
        v58 = (v128 - 1);
        if (v128 - 1 >= v24)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v194)
        {
          goto LABEL_150;
        }

        v166 = v57;
        v24 = *&v57[16 * v58 + 32];
        v167 = *&v57[16 * v128 + 40];
        sub_168C4(*v194 + *(v193 + 72) * v24, *v194 + *(v193 + 72) * *&v57[16 * v128 + 32], *v194 + *(v193 + 72) * v167, a3);
        if (v5)
        {
        }

        if (v167 < v24)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v166 = sub_17B28(v166);
        }

        if (v58 >= *(v166 + 2))
        {
          goto LABEL_129;
        }

        v168 = &v166[16 * v58];
        *(v168 + 4) = v24;
        *(v168 + 5) = v167;
        v216 = v166;
        result = sub_17A9C(v128);
        v57 = v216;
        v24 = *(v216 + 16);
        v58 = &qword_2E2B0;
        if (v24 <= 1)
        {
          goto LABEL_4;
        }
      }

      v133 = &v57[16 * v24 + 32];
      v134 = *(v133 - 64);
      v135 = *(v133 - 56);
      v139 = __OFSUB__(v135, v134);
      v136 = v135 - v134;
      if (v139)
      {
        goto LABEL_130;
      }

      v138 = *(v133 - 48);
      v137 = *(v133 - 40);
      v139 = __OFSUB__(v137, v138);
      v131 = v137 - v138;
      v132 = v139;
      if (v139)
      {
        goto LABEL_131;
      }

      v140 = &v57[16 * v24];
      v142 = *v140;
      v141 = *(v140 + 1);
      v139 = __OFSUB__(v141, v142);
      v143 = v141 - v142;
      if (v139)
      {
        goto LABEL_133;
      }

      v139 = __OFADD__(v131, v143);
      v144 = v131 + v143;
      if (v139)
      {
        goto LABEL_136;
      }

      if (v144 >= v136)
      {
        v162 = &v57[16 * v128 + 32];
        v164 = *v162;
        v163 = *(v162 + 1);
        v139 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v139)
        {
          goto LABEL_140;
        }

        if (v131 < v165)
        {
          v128 = v24 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

    v58 = &qword_2E2B0;
LABEL_4:
    a3 = v194;
    v55 = v194[1];
    v56 = v196;
    v37 = v178;
    if (v196 >= v55)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v59, v176))
  {
    goto LABEL_146;
  }

  if (v59 + v176 >= v100)
  {
    v102 = v100;
  }

  else
  {
    v102 = (v59 + v176);
  }

  if (v102 < v59)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v196 == v102)
  {
    goto LABEL_62;
  }

  v179 = v5;
  v103 = *a3;
  v104 = *(v193 + 72);
  v105 = *a3 + v104 * (v196 - 1);
  v200 = -v104;
  v183 = v59;
  v106 = (v59 - v196);
  v201 = v103;
  v185 = v104;
  v24 = v103 + v196 * v104;
  v107 = v204;
  a3 = &qword_22958;
  v186 = v102;
LABEL_51:
  v189 = v24;
  v190 = v106;
  v192 = v105;
  v108 = v105;
  while (1)
  {
    v213 = v106;
    v109 = v214;
    sub_FBB0(v24, v214, &qword_2E2C0, &qword_22978);
    sub_FBB0(v108, v107, &qword_2E2C0, &qword_22978);
    v110 = v206;
    v58 = &qword_22978;
    sub_FBB0(v109, v206, &qword_2E2B0, a3);
    v111 = a3;
    v112 = *v209;
    if ((*v209)(v110, 1, v215) == 1)
    {
      sub_469C(v110, &qword_2E2B0, v111);
      sub_469C(v107, &qword_2E2C0, &qword_22978);
      sub_469C(v214, &qword_2E2C0, &qword_22978);
      a3 = v111;
      goto LABEL_50;
    }

    v211 = v24;
    v58 = v208;
    v113 = v212;
    v114 = v215;
    v210 = *v208;
    (v210)(v212, v110, v215);
    v115 = v203;
    sub_FBB0(v107, v203, &qword_2E2B0, v111);
    if (v112(v115, 1, v114) == 1)
    {
      (*v207)(v113, v215);
      sub_469C(v115, &qword_2E2B0, v111);
      v107 = v204;
      sub_469C(v204, &qword_2E2C0, &qword_22978);
      result = sub_469C(v214, &qword_2E2C0, &qword_22978);
      goto LABEL_56;
    }

    v116 = v215;
    v117 = v199;
    (v210)(v199, v115, v215);
    v118 = sub_1FE7C();
    v58 = v207;
    v119 = *v207;
    (*v207)(v117, v116);
    v119(v212, v116);
    v107 = v204;
    sub_469C(v204, &qword_2E2C0, &qword_22978);
    result = sub_469C(v214, &qword_2E2C0, &qword_22978);
    if ((v118 & 1) == 0)
    {
      a3 = &qword_22958;
LABEL_50:
      v105 = v192 + v185;
      v106 = (v190 - 1);
      v24 = v189 + v185;
      if (++v196 == v186)
      {
        v196 = v186;
        v5 = v179;
        v59 = v183;
        goto LABEL_62;
      }

      goto LABEL_51;
    }

LABEL_56:
    v120 = v213;
    if (!v201)
    {
      break;
    }

    v121 = v211;
    v122 = v202;
    sub_1DFC0(v211, v202, &qword_2E2C0, &qword_22978);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DFC0(v122, v108, &qword_2E2C0, &qword_22978);
    v108 += v200;
    v24 = v121 + v200;
    v123 = __CFADD__(v120, 1);
    v106 = v120 + 1;
    a3 = &qword_22958;
    if (v123)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

void sub_1602C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_104:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v120 = *(v8 + 2);
      if (v120 >= 2)
      {
        while (*v5)
        {
          v121 = v8;
          v8 = (v120 - 1);
          v122 = *&v121[16 * v120];
          v123 = *&v121[16 * v120 + 24];
          sub_17680((*v5 + 16 * v122), (*v5 + 16 * *&v121[16 * v120 + 16]), (*v5 + 16 * v123), v4);
          if (v139)
          {
            goto LABEL_114;
          }

          if (v123 < v122)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_17B28(v121);
          }

          if (v120 - 2 >= *(v121 + 2))
          {
            goto LABEL_130;
          }

          v124 = &v121[16 * v120];
          *v124 = v122;
          *(v124 + 1) = v123;
          sub_17A9C(v120 - 1);
          v8 = v121;
          v120 = *(v121 + 2);
          if (v120 <= 1)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_140;
      }

LABEL_114:

      return;
    }

LABEL_136:
    v8 = sub_17B28(v8);
    goto LABEL_106;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    v135 = v8;
    if (v7 < v6)
    {
      v131 = v6;
      v10 = v7;
      v11 = *v5;
      v136 = v10;
      v12 = *v5 + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v128 = v9;
      v15 = *v5 + 16 * v9;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = v13;

      v19 = v16;

      v20 = [v18 displayName];
      v21 = sub_2041C();
      v4 = v22;

      v23 = [v19 displayName];
      v24 = sub_2041C();
      v26 = v25;

      if (v21 == v24 && v4 == v26)
      {
        v133 = 0;
      }

      else
      {
        v133 = sub_2090C();
      }

      v28 = (v128 + 2);
      v29 = v11 + 16 * v128 + 24;
      v30 = 16 * v128 + 16;
      v8 = v135;
      v31 = v136;
      do
      {
        v7 = v28;
        v33 = v31;
        v34 = v30;
        if (v28 >= v131)
        {
          break;
        }

        v142 = v28;
        v35 = *(v29 + 16);
        v36 = *(v29 - 8);
        v37 = *v29;
        v38 = *(v29 + 8);

        v39 = v36;

        v137 = v38;
        v40 = [v38 displayName];
        v41 = sub_2041C();
        v4 = v42;

        v43 = [v39 displayName];
        v44 = sub_2041C();
        v46 = v45;

        v47 = v41 == v44 && v4 == v46;
        v32 = v47 ? 0 : sub_2090C();

        v7 = v142;
        v28 = v142 + 1;
        v29 += 16;
        v31 = v33 + 1;
        v30 = v34 + 16;
        v8 = v135;
      }

      while (((v133 ^ v32) & 1) == 0);
      if (v133)
      {
        v48 = v128;
        v5 = a3;
        if (v7 < v128)
        {
          goto LABEL_133;
        }

        if (v128 >= v7)
        {
          v9 = v128;
          goto LABEL_32;
        }

        v49 = 16 * v128;
        do
        {
          if (v48 != v33)
          {
            v51 = *a3;
            if (!*a3)
            {
              goto LABEL_139;
            }

            v52 = *(v51 + v49);
            *(v51 + v49) = *(v51 + v34);
            *(v51 + v34) = v52;
          }

          ++v48;
          v34 -= 16;
          v49 += 16;
        }

        while (v48 < v33--);
      }

      else
      {
        v5 = a3;
      }

      v9 = v128;
    }

LABEL_32:
    v53 = v5[1];
    if (v7 < v53)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_132;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_11BA0(0, *(v8 + 2) + 1, 1, v8);
    }

    v74 = *(v8 + 2);
    v73 = *(v8 + 3);
    v75 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      v8 = sub_11BA0((v73 > 1), v74 + 1, 1, v8);
    }

    *(v8 + 2) = v75;
    v76 = &v8[16 * v74];
    *(v76 + 4) = v9;
    *(v76 + 5) = v7;
    v77 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v74)
    {
      while (1)
      {
        v78 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v79 = *(v8 + 4);
          v80 = *(v8 + 5);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_73:
          if (v82)
          {
            goto LABEL_120;
          }

          v95 = &v8[16 * v75];
          v97 = *v95;
          v96 = *(v95 + 1);
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_123;
          }

          v101 = &v8[16 * v78 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_127;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = v75 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v105 = &v8[16 * v75];
        v107 = *v105;
        v106 = *(v105 + 1);
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_87:
        if (v100)
        {
          goto LABEL_122;
        }

        v108 = &v8[16 * v78];
        v110 = *(v108 + 4);
        v109 = *(v108 + 5);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_125;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_94:
        v116 = v78 - 1;
        if (v78 - 1 >= v75)
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
          goto LABEL_135;
        }

        if (!*v5)
        {
          goto LABEL_138;
        }

        v4 = v7;
        v117 = *&v8[16 * v116 + 32];
        v118 = *&v8[16 * v78 + 40];
        sub_17680((*v5 + 16 * v117), (*v5 + 16 * *&v8[16 * v78 + 32]), (*v5 + 16 * v118), v77);
        if (v139)
        {
          goto LABEL_114;
        }

        if (v118 < v117)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_17B28(v8);
        }

        if (v116 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v119 = &v8[16 * v116];
        *(v119 + 4) = v117;
        *(v119 + 5) = v118;
        sub_17A9C(v78);
        v75 = *(v8 + 2);
        v7 = v4;
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = &v8[16 * v75 + 32];
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_118;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_119;
      }

      v90 = &v8[16 * v75];
      v92 = *v90;
      v91 = *(v90 + 1);
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_121;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_124;
      }

      if (v94 >= v86)
      {
        v112 = &v8[16 * v78 + 32];
        v114 = *v112;
        v113 = *(v112 + 1);
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_128;
        }

        if (v81 < v115)
        {
          v78 = v75 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v54 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_134;
  }

  if (v54 >= v53)
  {
    v54 = v5[1];
  }

  if (v54 < v9)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v7 == v54)
  {
    goto LABEL_53;
  }

  v140 = *v5;
  v55 = *v5 + 16 * v7 - 16;
  v129 = v9;
  v130 = v54;
  v56 = v9 - v7;
LABEL_43:
  v138 = v7;
  v57 = *(v140 + 16 * v7);
  v132 = v56;
  v134 = v55;
  v58 = v56;
  v59 = v55;
  while (1)
  {
    v141 = v58;
    v60 = *v59;
    v61 = *(v59 + 8);
    v62 = v57;

    v63 = v60;

    v64 = [v62 displayName];
    v143 = sub_2041C();
    v66 = v65;

    v67 = [v63 displayName];
    v68 = sub_2041C();
    v4 = v69;

    if (v143 == v68 && v66 == v4)
    {

LABEL_42:
      v7 = (v138 + 1);
      v55 = v134 + 16;
      v56 = v132 - 1;
      if (v138 + 1 == v130)
      {
        v7 = v130;
        v5 = a3;
        v8 = v135;
        v9 = v129;
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    v71 = sub_2090C();

    if ((v71 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v140)
    {
      break;
    }

    v72 = *v59;
    v57 = *(v59 + 16);
    *v59 = v57;
    *(v59 + 16) = v72;
    v59 -= 16;
    v58 = v141 + 1;
    if (v141 == -1)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_168C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v108 = a3;
  v9 = sub_29A0(&qword_2E2B0, &qword_22958);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v104 = &v93 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v93 - v17;
  __chkstk_darwin(v16);
  v114 = &v93 - v19;
  v113 = sub_1FEAC();
  v20 = *(v113 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v113);
  v96 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v105 = (&v93 - v25);
  v26 = __chkstk_darwin(v24);
  v99 = &v93 - v27;
  __chkstk_darwin(v26);
  v102 = &v93 - v28;
  v110 = sub_29A0(&qword_2E2C0, &qword_22978);
  v29 = *(*(v110 - 8) + 64);
  v30 = __chkstk_darwin(v110);
  v31 = __chkstk_darwin(v30);
  v109 = &v93 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v93 - v34;
  result = __chkstk_darwin(v33);
  v103 = &v93 - v38;
  v40 = *(v39 + 72);
  if (!v40)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (a2 - a1 == 0x8000000000000000 && v40 == -1)
  {
    goto LABEL_73;
  }

  v41 = v108 - a2;
  if (v108 - a2 != 0x8000000000000000 || v40 != -1)
  {
    v42 = (a2 - a1) / v40;
    v118 = a1;
    v43 = a4;
    v117 = a4;
    v107 = v40;
    v95 = v5;
    if (v42 < v41 / v40)
    {
      v44 = v42 * v40;
      v104 = v18;
      v45 = a4;
      v109 = v35;
      if (a4 < a1 || a1 + v44 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v46 = v103;
      }

      else
      {
        v46 = v103;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v106 = a4 + v44;
      v116 = a4 + v44;
      if (v44 >= 1 && a2 < v108)
      {
        v52 = (v20 + 48);
        v100 = (v20 + 8);
        v101 = v20 + 32;
        v105 = (v20 + 48);
        while (1)
        {
          v115 = a1;
          sub_FBB0(a2, v46, &qword_2E2C0, &qword_22978);
          v53 = v109;
          sub_FBB0(v45, v109, &qword_2E2C0, &qword_22978);
          v54 = a2;
          v55 = v114;
          sub_FBB0(v46, v114, &qword_2E2B0, &qword_22958);
          v56 = *v52;
          v57 = v55;
          v58 = v113;
          if ((*v52)(v57, 1, v113) == 1)
          {
            sub_469C(v114, &qword_2E2B0, &qword_22958);
            sub_469C(v53, &qword_2E2C0, &qword_22978);
            sub_469C(v46, &qword_2E2C0, &qword_22978);
            v59 = v107;
            a2 = v54;
          }

          else
          {
            v111 = v45;
            v112 = v54;
            v61 = v58;
            v62 = v102;
            v63 = *v101;
            (*v101)(v102, v114, v61);
            v64 = v104;
            sub_FBB0(v53, v104, &qword_2E2B0, &qword_22958);
            if (v56(v64, 1, v61) == 1)
            {
              (*v100)(v62, v61);
              sub_469C(v64, &qword_2E2B0, &qword_22958);
              sub_469C(v53, &qword_2E2C0, &qword_22978);
              v46 = v103;
              sub_469C(v103, &qword_2E2C0, &qword_22978);
              v45 = v111;
              a2 = v112;
              v59 = v107;
LABEL_32:
              v60 = v115;
              if (v115 < a2 || v115 >= a2 + v59)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v115 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              a2 += v59;
              goto LABEL_38;
            }

            v65 = v62;
            v66 = v99;
            v63(v99, v64, v61);
            v67 = sub_1FE7C();
            v68 = *v100;
            (*v100)(v66, v61);
            v69 = v65;
            v59 = v107;
            v68(v69, v61);
            sub_469C(v53, &qword_2E2C0, &qword_22978);
            v46 = v103;
            sub_469C(v103, &qword_2E2C0, &qword_22978);
            v45 = v111;
            a2 = v112;
            if (v67)
            {
              goto LABEL_32;
            }
          }

          v60 = v115;
          if (v115 < v45 || v115 >= v45 + v59)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v115 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v117 = v45 + v59;
          v45 += v59;
LABEL_38:
          a1 = v60 + v59;
          v118 = a1;
          v52 = v105;
          if (v45 >= v106 || a2 >= v108)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_71;
    }

    v47 = v20;
    v48 = v41 / v40 * v40;
    v49 = v43;
    v114 = v37;
    if (v43 < a2 || a2 + v48 <= v43)
    {
      v50 = v43;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v43 == a2)
      {
LABEL_43:
        if (v48 < 1)
        {
          v74 = v49 + v48;
        }

        else
        {
          v70 = v108;
          v71 = -v107;
          v72 = (v47 + 48);
          v97 = (v47 + 8);
          v73 = v49 + v48;
          v74 = v49 + v48;
          v101 = -v107;
          v102 = (v47 + 48);
          v111 = v49;
          v98 = (v47 + 32);
          v99 = v13;
          v115 = a1;
          do
          {
            v94 = v74;
            v75 = a2 + v71;
            v112 = a2 + v71;
            v103 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v118 = a2;
                v116 = v94;
                goto LABEL_71;
              }

              v107 = v70;
              v108 = v73;
              v100 = v74;
              v106 = v73 + v71;
              v77 = v109;
              v78 = v72;
              sub_FBB0(v73 + v71, v109, &qword_2E2C0, &qword_22978);
              v79 = v75;
              v81 = v113;
              v80 = v114;
              sub_FBB0(v79, v114, &qword_2E2C0, &qword_22978);
              v82 = v104;
              sub_FBB0(v77, v104, &qword_2E2B0, &qword_22958);
              v83 = *v78;
              if ((*v78)(v82, 1, v81) == 1)
              {
                sub_469C(v82, &qword_2E2B0, &qword_22958);
                v84 = 0;
                v85 = v111;
                a1 = v115;
                v86 = v101;
              }

              else
              {
                v87 = *v98;
                (*v98)(v105, v82, v81);
                v88 = v99;
                sub_FBB0(v80, v99, &qword_2E2B0, &qword_22958);
                if (v83(v88, 1, v81) == 1)
                {
                  (*v97)(v105, v81);
                  sub_469C(v88, &qword_2E2B0, &qword_22958);
                  v84 = 1;
                }

                else
                {
                  v89 = v96;
                  v87(v96, v88, v81);
                  v84 = sub_1FE7C();
                  v90 = *v97;
                  (*v97)(v89, v81);
                  v90(v105, v81);
                }

                v85 = v111;
                v86 = v101;
                a1 = v115;
              }

              v91 = v107;
              v71 = v86;
              v70 = v107 + v86;
              sub_469C(v114, &qword_2E2C0, &qword_22978);
              sub_469C(v109, &qword_2E2C0, &qword_22978);
              a2 = v103;
              if (v84)
              {
                break;
              }

              v92 = v106;
              v74 = v106;
              if (v91 < v108 || v70 >= v108)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v91 != v108)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v73 = v74;
              v76 = v92 > v85;
              v75 = v112;
              v72 = v102;
              if (!v76)
              {
                goto LABEL_69;
              }
            }

            if (v91 < v103 || v70 >= v103)
            {
              a2 = v112;
              swift_arrayInitWithTakeFrontToBack();
              v74 = v100;
            }

            else
            {
              a2 = v112;
              v74 = v100;
              if (v91 != v103)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v73 = v108;
            v72 = v102;
          }

          while (v108 > v85);
        }

LABEL_69:
        v118 = a2;
        v116 = v74;
LABEL_71:
        sub_17B3C(&v118, &v117, &v116);
        return 1;
      }

      v50 = v43;
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = v50;
    goto LABEL_43;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_17380(void **a1, void **a2, id *a3, void **a4, void (*a5)(char *__return_ptr, id *, void **), uint64_t a6)
{
  v12 = swift_allocObject();
  v36 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v17 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v35 = a4;
LABEL_27:
      v34 = a2;
      v24 = a2 - 1;
      --a3;
      v25 = v17;
      do
      {
        v26 = a3 + 1;
        v27 = *--v25;
        v28 = v24;
        v29 = *v24;
        v39 = v27;
        v38 = v29;
        v30 = v27;
        v31 = v29;
        v36(&v37, &v39, &v38);

        if (v37 == 1)
        {
          v32 = v28;
          if (v26 != v34)
          {
            *a3 = *v28;
          }

          a4 = v35;
          if (v17 <= v35 || (a2 = v32, v32 <= a1))
          {
            a2 = v32;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v26 != v17)
        {
          *a3 = *v25;
        }

        --a3;
        v17 = v25;
        v24 = v28;
      }

      while (v25 > v35);
      v17 = v25;
      a2 = v34;
      a4 = v35;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v17 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v18 = a2;
      while (1)
      {
        v19 = *a4;
        v39 = *v18;
        v38 = v19;
        v20 = v39;
        v21 = v19;
        v36(&v37, &v39, &v38);

        if (v37 != 1)
        {
          break;
        }

        v22 = v18;
        v23 = a1 == v18++;
        if (!v23)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++a1;
        if (a4 >= v17 || v18 >= a3)
        {
          goto LABEL_20;
        }
      }

      v22 = a4;
      v23 = a1 == a4++;
      if (v23)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_38:
  if (a2 != a4 || a2 >= (a4 + ((v17 - a4 + (v17 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v17 - a4));
  }

  return 1;
}

uint64_t sub_17680(char *__dst, char *__src, char *a3, char *a4)
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
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v59 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v56 = v4;
      v52 = v7;
LABEL_31:
      v50 = v6 - 16;
      v31 = v5 - 16;
      v32 = v59;
      v58 = v6;
      do
      {
        v54 = v31;
        v33 = *(v32 - 2);
        v34 = *(v32 - 1);
        v32 -= 16;
        v35 = *(v6 - 2);
        v36 = *(v6 - 1);
        v37 = v33;

        v38 = v35;

        v39 = [v37 displayName];
        v40 = sub_2041C();
        v42 = v41;

        v43 = [v38 displayName];
        v44 = sub_2041C();
        v46 = v45;

        if (v40 == v44 && v42 == v46)
        {
          v48 = 0;
        }

        else
        {
          v48 = sub_2090C();
        }

        if (v48)
        {
          v5 = v54;
          v4 = v56;
          if (v54 + 16 != v58)
          {
            *v54 = *v50;
          }

          if (v59 <= v56 || (v6 = v50, v50 <= v52))
          {
            v6 = v50;
            goto LABEL_48;
          }

          goto LABEL_31;
        }

        v4 = v56;
        v6 = v58;
        if (v54 + 16 != v59)
        {
          *v54 = *v32;
        }

        v31 = v54 - 16;
        v59 = v32;
      }

      while (v32 > v56);
      v59 = v32;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v59 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      v53 = v5;
      while (1)
      {
        v51 = v7;
        v14 = *(v6 + 1);
        v55 = v4;
        v57 = v6;
        v15 = *v4;
        v16 = *(v4 + 1);
        v17 = *v6;

        v18 = v15;

        v19 = [v17 displayName];
        v20 = sub_2041C();
        v22 = v21;

        v23 = [v18 displayName];
        v24 = sub_2041C();
        v26 = v25;

        if (v20 == v24 && v22 == v26)
        {
          break;
        }

        v28 = sub_2090C();

        if ((v28 & 1) == 0)
        {
          goto LABEL_19;
        }

        v4 = v55;
        v29 = v57;
        v30 = v57;
        v6 = v57 + 16;
LABEL_20:
        if (v51 != v29)
        {
          *v51 = *v30;
        }

        v7 = v51 + 16;
        if (v4 >= v59 || v6 >= v53)
        {
          goto LABEL_24;
        }
      }

LABEL_19:
      v29 = v55;
      v6 = v57;
      v30 = v55;
      v4 = v55 + 16;
      goto LABEL_20;
    }

LABEL_24:
    v6 = v7;
  }

LABEL_48:
  if (v6 != v4 || v6 >= &v4[(v59 - v4 + (v59 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v59 - v4) / 16));
  }

  return 1;
}

uint64_t sub_17A9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_17B28(v3);
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

uint64_t sub_17B3C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_29A0(&qword_2E2C0, &qword_22978);
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

uint64_t sub_17C2C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2072C();

    if (v9)
    {

      sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_2071C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_17E64(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_18054(v21 + 1);
    }

    v19 = v8;
    sub_1827C(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
  v11 = sub_2068C(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_18300(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2069C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_17E64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A0(&qword_2E360, &qword_229E8);
    v2 = sub_2077C();
    v15 = v2;
    sub_2070C();
    if (sub_2073C())
    {
      sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_18054(v9 + 1);
        }

        v2 = v15;
        result = sub_2068C(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_2073C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_18054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29A0(&qword_2E360, &qword_229E8);
  result = sub_2076C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_2068C(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1827C(uint64_t a1, uint64_t a2)
{
  sub_2068C(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_206FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_18300(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18054(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_18470();
      goto LABEL_12;
    }

    sub_185C0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_2068C(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2069C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2091C();
  __break(1u);
}

id sub_18470()
{
  v1 = v0;
  sub_29A0(&qword_2E360, &qword_229E8);
  v2 = *v0;
  v3 = sub_2075C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_185C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29A0(&qword_2E360, &qword_229E8);
  result = sub_2076C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2068C(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_187D4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_2087C();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_11CA4(v3, 0);
  sub_18A08((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18868(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2087C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_2087C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1EB28(&qword_2E380, &qword_2E378, &qword_22A08);
          for (i = 0; i != v6; ++i)
          {
            sub_29A0(&qword_2E378, &qword_22A08);
            v9 = sub_18BA8(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2958(0, &qword_2DD68, UIView_ptr);
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

uint64_t sub_18A08(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2087C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_2087C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1EB28(&qword_2E2D0, &qword_2E2C8, &qword_22980);
          for (i = 0; i != v6; ++i)
          {
            sub_29A0(&qword_2E2C8, &qword_22980);
            v9 = sub_18C28(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2958(0, &qword_2E0E0, REMReminder_ptr);
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

uint64_t (*sub_18BA8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_207AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1F60C;
  }

  __break(1u);
  return result;
}

void (*sub_18C28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_207AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_18CA8;
  }

  __break(1u);
  return result;
}

uint64_t sub_18CB0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_2083C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_2086C())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_2958(0, &qword_2E0E0, REMReminder_ptr);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_18EB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_29A0(&qword_2E2C0, &qword_22978);
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  v9 = __chkstk_darwin(v41);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v39 = &v34 - v12;
  v43 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_19:
    v25 = 0;
    a3 = 0;
LABEL_26:
    *a1 = v43;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v14 - 32);
    v36 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v37 = a3;
    while (v18)
    {
      v42 = v21;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v43;
      v28 = *(v43 + 48);
      v29 = v28 + *(*(sub_29A0(&qword_2E2B0, &qword_22958) - 8) + 72) * v26;
      v30 = v40;
      sub_FBB0(v29, v40, &qword_2E2B0, &qword_22958);
      *(v30 + *(v41 + 48)) = *(*(v27 + 56) + 8 * v26);
      v31 = v30;
      v32 = v39;
      sub_1DFC0(v31, v39, &qword_2E2C0, &qword_22978);
      sub_1DFC0(v32, a2, &qword_2E2C0, &qword_22978);
      a3 = v37;
      a1 = v42;
      if (v42 == v37)
      {

        goto LABEL_24;
      }

      a2 += *(v38 + 72);

      result = a1;
      v21 = a1 + 1;
      v19 = v25;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v42 = v21;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v25 = v33 - 1;
    a3 = result;
LABEL_24:
    v16 = v35;
    a1 = v36;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_19188(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;

        goto LABEL_23;
      }

      v11 += 2;
      v20 = v18;

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
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_19388(id *a1)
{
  v38 = sub_1FF4C();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v38);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1FEAC();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v46);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v47 = &_swiftEmptyDictionarySingleton;
  if (!(a1 >> 62))
  {
    v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyDictionarySingleton;
  }

LABEL_29:
  v11 = sub_2087C();
  if (!v11)
  {
    return &_swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v40 = v10;
  v10 = 0;
  v43 = a1 & 0xFFFFFFFFFFFFFF8;
  v44 = a1 & 0xC000000000000001;
  v45 = (v5 + 8);
  v12 = &_swiftEmptyDictionarySingleton;
  v36 = (v2 + 8);
  v39 = xmmword_22660;
  v42 = v11;
  while (1)
  {
    if (v44)
    {
      v13 = sub_207AC();
    }

    else
    {
      if (v10 >= *(v43 + 16))
      {
        goto LABEL_26;
      }

      v13 = a1[v10 + 4];
    }

    v14 = v13;
    v15 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v16 = a1;
    v17 = [v13 displayDate];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 date];

      v20 = v40;
      sub_1FE8C();

      v21 = v41;
      sub_1FE9C();
      LOBYTE(v18) = sub_1FE7C();
      a1 = *v45;
      (*v45)(v21, v46);
      if (v18)
      {
        v5 = 1;
      }

      else
      {
        v22 = [objc_opt_self() currentCalendar];
        v23 = v37;
        sub_1FF0C();

        v5 = sub_1FEEC();
        (*v36)(v23, v38);
      }

      (a1)(v20, v46);
    }

    else
    {
      v5 = 0;
    }

    v2 = v12;
    v24 = sub_12020(v5 & 1);
    v26 = v12[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_27;
    }

    a1 = v25;
    if (v12[3] < v29)
    {
      sub_1340C(v29, 1);
      v12 = v47;
      v24 = sub_12020(v5 & 1);
      if ((a1 & 1) != (v30 & 1))
      {
        break;
      }
    }

    if (a1)
    {
      v2 = v12[7] + 8 * v24;
      sub_2048C();
      if (*(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v5 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
        sub_204BC();
      }

      sub_204DC();
    }

    else
    {
      v2 = v24;
      sub_29A0(&qword_2DD50, &unk_22710);
      v31 = swift_allocObject();
      *(v31 + 16) = v39;
      *(v31 + 32) = v14;
      v12[(v2 >> 6) + 8] |= 1 << v2;
      *(v12[6] + v2) = v5 & 1;
      *(v12[7] + 8 * v2) = v31;
      v32 = v12[2];
      v28 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v28)
      {
        goto LABEL_28;
      }

      v12[2] = v33;
    }

    a1 = v16;
    ++v10;
    if (v15 == v42)
    {
      return v12;
    }
  }

  result = sub_2092C();
  __break(1u);
  return result;
}

uint64_t sub_19818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIIntentsSnippetSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1987C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
    sub_1EAC0();
    result = sub_2051C();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_207AC();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_17C2C(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_2087C();
  }

  v6 = result;
  v5 = sub_2087C();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

void *sub_199BC(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_2087C();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_207AC();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = sub_2053C();
    v10 = sub_1229C(v8);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_22;
    }

    v14 = v9;
    if (_swiftEmptyDictionarySingleton[3] < v13)
    {
      break;
    }

LABEL_16:
    if (v14)
    {

      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v10);
      sub_2048C();
      if (*(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v21 = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
        sub_204BC();
      }

      sub_204DC();
    }

    else
    {
      sub_29A0(&qword_2DD50, &unk_22710);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22660;
      *(v17 + 32) = v6;
      _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v10) = v8;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v17;
      v18 = _swiftEmptyDictionarySingleton[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v20;
    }

    if (v7 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  sub_13C00(v13, 1);
  v15 = sub_1229C(v8);
  if ((v14 & 1) == (v16 & 1))
  {
    v10 = v15;
    goto LABEL_16;
  }

  sub_29A0(&qword_2E350, &qword_229D8);
  result = sub_2092C();
  __break(1u);
  return result;
}

uint64_t sub_19C1C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(char *__return_ptr, id *, void **), uint64_t a6)
{
  v7 = v6;
  v12 = swift_allocObject();
  v116 = a3;
  v117 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = a3[1];
  v118 = a6;
  swift_retain_n();
  if (v13 < 1)
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_90:
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    v97 = swift_allocObject();
    *(v97 + 16) = v117;
    *(v97 + 24) = v118;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v15 = sub_17B28(v15);
    }

    v122 = v15;
    v98 = *(v15 + 2);
    if (v98 >= 2)
    {
      do
      {
        v99 = *v116;
        if (!*v116)
        {
          goto LABEL_128;
        }

        v100 = *&v15[16 * v98];
        v101 = *&v15[16 * v98 + 24];
        v102 = (v99 + 8 * v100);
        v103 = (v99 + 8 * *&v15[16 * v98 + 16]);
        v104 = (v99 + 8 * v101);

        sub_17380(v102, v103, v104, v115, v117, v118);
        if (v7)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_17B28(v15);
        }

        if (v98 - 2 >= *(v15 + 2))
        {
          goto LABEL_118;
        }

        v105 = &v15[16 * v98];
        *v105 = v100;
        *(v105 + 1) = v101;
        v122 = v15;
        sub_17A9C(v98 - 1);
        v15 = v122;
        v98 = *(v122 + 2);
      }

      while (v98 > 1);
    }
  }

  v107 = a4;
  v14 = 0;
  v15 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    if (v14 + 1 < v13)
    {
      v108 = v7;
      v7 = 8 * v14;
      v18 = (*v116 + 8 * v14);
      v20 = *v18;
      v19 = v18 + 2;
      v121 = *(*v116 + 8 * v17);
      v120 = v20;
      v21 = v121;
      v22 = v20;
      v117(&v119, &v121, &v120);

      v23 = v119;
      v110 = v16;
      v24 = v16 + 2;
      while (v13 != v24)
      {
        v25 = *(v19 - 1);
        v121 = *v19;
        v120 = v25;
        v26 = v121;
        v27 = v25;
        v117(&v119, &v121, &v120);

        ++v24;
        ++v19;
        if (v23 != v119)
        {
          v17 = v24 - 1;
          v16 = v110;
          if (!v23)
          {
            goto LABEL_19;
          }

          goto LABEL_11;
        }
      }

      v17 = v13;
      v16 = v110;
      if (!v23)
      {
        goto LABEL_19;
      }

LABEL_11:
      if (v17 < v16)
      {
        goto LABEL_121;
      }

      if (v16 < v17)
      {
        v28 = 8 * v17 - 8;
        v29 = v17;
        v30 = v16;
        do
        {
          if (v30 != --v29)
          {
            v32 = *v116;
            if (!*v116)
            {
              goto LABEL_127;
            }

            v31 = *(v32 + v7);
            *(v32 + v7) = *(v32 + v28);
            *(v32 + v28) = v31;
          }

          v30 = (v30 + 1);
          v28 -= 8;
          v7 += 8;
        }

        while (v30 < v29);
      }

LABEL_19:
      v7 = v108;
    }

    v33 = v116[1];
    if (v17 < v33)
    {
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_120;
      }

      if (v17 - v16 < v107)
      {
        if (__OFADD__(v16, v107))
        {
          goto LABEL_122;
        }

        if (v16 + v107 >= v33)
        {
          v34 = v116[1];
        }

        else
        {
          v34 = (v16 + v107);
        }

        if (v34 < v16)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v17 != v34)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v17 < v16)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_11BA0(0, *(v15 + 2) + 1, 1, v15);
    }

    v48 = *(v15 + 2);
    v47 = *(v15 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v15 = sub_11BA0((v47 > 1), v48 + 1, 1, v15);
    }

    *(v15 + 2) = v49;
    v50 = &v15[16 * v48];
    *(v50 + 4) = v16;
    *(v50 + 5) = v17;
    v114 = *a1;
    v115 = v17;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v48)
    {
      while (1)
      {
        v51 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v15 + 4);
          v53 = *(v15 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_58:
          if (v55)
          {
            goto LABEL_108;
          }

          v68 = &v15[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_111;
          }

          v74 = &v15[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_115;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v49 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v78 = &v15[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_72:
        if (v73)
        {
          goto LABEL_110;
        }

        v81 = &v15[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_113;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_79:
        v89 = v51 - 1;
        if (v51 - 1 >= v49)
        {
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
          goto LABEL_123;
        }

        v90 = *v116;
        if (!*v116)
        {
          goto LABEL_126;
        }

        v91 = *&v15[16 * v89 + 32];
        v92 = *&v15[16 * v51 + 40];
        v93 = (v90 + 8 * v91);
        v94 = (v90 + 8 * *&v15[16 * v51 + 32]);
        v95 = (v90 + 8 * v92);

        sub_17380(v93, v94, v95, v114, v117, v118);
        if (v7)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_17B28(v15);
        }

        if (v89 >= *(v15 + 2))
        {
          goto LABEL_105;
        }

        v96 = &v15[16 * v89];
        *(v96 + 4) = v91;
        *(v96 + 5) = v92;
        v122 = v15;
        sub_17A9C(v51);
        v15 = v122;
        v49 = *(v122 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v15[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_106;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_107;
      }

      v63 = &v15[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_109;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_112;
      }

      if (v67 >= v59)
      {
        v85 = &v15[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_116;
        }

        if (v54 < v88)
        {
          v51 = v49 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v14 = v115;
    v13 = v116[1];
    if (v115 >= v13)
    {
      goto LABEL_90;
    }
  }

  v35 = *v116;
  v36 = v16;
  v37 = *v116 + 8 * v17 - 8;
  v109 = v7;
  v111 = v36;
  v38 = v36 - v17;
  v113 = v34;
LABEL_31:
  v115 = v17;
  v39 = *(v35 + 8 * v17);
  v40 = v38;
  v41 = v37;
  while (1)
  {
    v42 = *v41;
    v121 = v39;
    v120 = v42;
    v43 = v39;
    v44 = v42;
    v117(&v119, &v121, &v120);

    if (v119 != 1)
    {
LABEL_30:
      v17 = v115 + 1;
      v37 += 8;
      --v38;
      if ((v115 + 1) != v113)
      {
        goto LABEL_31;
      }

      v17 = v113;
      v7 = v109;
      v16 = v111;
      goto LABEL_38;
    }

    if (!v35)
    {
      break;
    }

    v45 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v45;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

Swift::Int sub_1A3C8(uint64_t *a1, void (*a2)(char *__return_ptr, id *, void **), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_208EC(v7);
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_2958(0, &qword_2E0E0, REMReminder_ptr);
        v11 = sub_204CC();
        *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) = v10;
      }

      v12[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v12[1] = v10;

      sub_19C1C(v12, v13, a1, v9, a2, a3);

      *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_14A58(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1A560(uint64_t *a1, void (*a2)(char *__return_ptr, id *, void **), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_19314(v7);
    *a1 = v7;
  }

  v9 = *(v7 + 16);
  v11[0] = v7 + 32;
  v11[1] = v9;

  sub_1A3C8(v11, a2, a3);

  sub_207EC();
}

uint64_t sub_1A63C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1 >> 62;
  v74 = a1;
  if (a1 >> 62)
  {
    goto LABEL_86;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (v5)
  {
    v77 = &_swiftEmptyArrayStorage;
    sub_207FC();
    if (v5 < 0)
    {
      __break(1u);
LABEL_91:
      __break(1u);
      swift_bridgeObjectRelease_n();

      __break(1u);
      swift_bridgeObjectRelease_n();

      __break(1u);
      return result;
    }

    v6 = 0;
    do
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v7 = sub_207AC();
      }

      else
      {
        v7 = *(v74 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 objectID];

      sub_207DC();
      v10 = *(v77 + 16);
      sub_2080C();
      sub_2081C();
      sub_207EC();
    }

    while (v5 != v6);
    v11 = v77;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v75 = sub_1987C(v11);

  v77 = &_swiftEmptyArrayStorage;
  if (v4)
  {
    v12 = sub_2087C();
  }

  else
  {
    v12 = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = v75;
  swift_bridgeObjectRetain_n();
  v67 = a2;
  if (v12)
  {
    v13 = 0;
    v14 = v74 & 0xC000000000000001;
    v15 = v74 & 0xFFFFFFFFFFFFFF8;
    v72 = v75 + 56;
    while (1)
    {
      if (v14)
      {
        v16 = sub_207AC();
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_83;
        }

        v16 = *(v74 + 32 + 8 * v13);
      }

      v17 = v16;
      v18 = __OFADD__(v13++, 1);
      if (v18)
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v5 = sub_2087C();
        goto LABEL_3;
      }

      v19 = sub_2053C();
      if (v19)
      {
        v20 = v19;
        if (![v17 isSubtask])
        {
          goto LABEL_34;
        }

        if ((v75 & 0xC000000000000001) != 0)
        {
          v21 = v20;
          v22 = sub_2074C();

          if ((v22 & 1) == 0)
          {

            v15 = v74 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_18;
          }
        }

        else
        {
          if (!*(v4 + 16))
          {
LABEL_34:

            goto LABEL_18;
          }

          sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
          v24 = sub_2068C(*(v4 + 40));
          v25 = -1 << *(v4 + 32);
          v26 = v24 & ~v25;
          if (((*(v72 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
LABEL_33:

            a2 = v67;
            v14 = v74 & 0xC000000000000001;
            v4 = v75;
            v15 = v74 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_18;
          }

          v27 = ~v25;
          while (1)
          {
            v28 = *(*(v75 + 48) + 8 * v26);
            v29 = sub_2069C();

            if (v29)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v72 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          a2 = v67;
          v14 = v74 & 0xC000000000000001;
          v4 = v75;
        }

        sub_207DC();
        v23 = *(v77 + 16);
        sub_2080C();
        sub_2081C();
        sub_207EC();
        v15 = v74 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

LABEL_18:
      if (v13 == v12)
      {
        v30 = v77;
        goto LABEL_40;
      }
    }
  }

  v30 = &_swiftEmptyArrayStorage;
LABEL_40:
  v31 = sub_199BC(v30);

  if (a2)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = a2;
    *(v32 + 24) = a3;
    swift_retain_n();
    sub_1EA74(a2);

    v77 = sub_187D4(v33);
    sub_1A560(&v77, sub_1F5EC, v32);

    v34 = v77;
  }

  else
  {
    v34 = v74;
  }

  v77 = &_swiftEmptyArrayStorage;
  if (v34 >> 62)
  {
    v35 = sub_2087C();
    if (v35)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v35 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    if (v35)
    {
LABEL_45:
      a2 = 0;
      v71 = v34 & 0xFFFFFFFFFFFFFF8;
      v73 = v34 & 0xC000000000000001;
      v74 = v34;
      v66 = v4 & 0xC000000000000001;
      v36 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 < 0)
      {
        v36 = v4;
      }

      v64 = v36;
      v69 = v4 + 56;
      v70 = v34 + 32;
      v68 = v35;
      while (1)
      {
        if (v73)
        {
          v37 = sub_207AC();
        }

        else
        {
          if (a2 >= *(v71 + 16))
          {
            goto LABEL_85;
          }

          v37 = *(v70 + 8 * a2);
        }

        v38 = v37;
        v18 = __OFADD__(a2++, 1);
        if (v18)
        {
          goto LABEL_84;
        }

        v39 = sub_2053C();
        if (v39)
        {
          v40 = v39;
          if ([v38 isSubtask])
          {
            if (v66)
            {
              v41 = v40;
              v42 = sub_2074C();

              if (v42)
              {
                goto LABEL_49;
              }

              goto LABEL_65;
            }

            if (*(v4 + 16))
            {
              sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
              v43 = sub_2068C(*(v4 + 40));
              v44 = -1 << *(v4 + 32);
              v45 = v43 & ~v44;
              if ((*(v69 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
              {
                v46 = ~v44;
                while (1)
                {
                  v47 = *(*(v4 + 48) + 8 * v45);
                  v48 = sub_2069C();

                  if (v48)
                  {
                    break;
                  }

                  v45 = (v45 + 1) & v46;
                  v4 = v75;
                  if (((*(v69 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                  {
                    goto LABEL_64;
                  }
                }

                v38 = v40;
                v4 = v75;
                v35 = v68;
                goto LABEL_49;
              }
            }
          }

LABEL_64:

          v35 = v68;
        }

LABEL_65:
        v38 = v38;
        sub_2048C();
        if (*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v77 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v56 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
          sub_204BC();
        }

        sub_204DC();
        v49 = [v38 objectID];
        v50 = v49;
        if (v31[2])
        {
          v51 = sub_1229C(v49);
          if (v52)
          {
            v53 = *(v31[7] + 8 * v51);

            if (v67)
            {
              v54 = swift_allocObject();
              *(v54 + 16) = v67;
              *(v54 + 24) = a3;
              if (!(v53 >> 62))
              {
                v55 = (v53 & 0xFFFFFFFFFFFFFF8);
                swift_retain_n();
                sub_1EA74(v67);

                goto LABEL_72;
              }

              v57 = sub_2087C();
              if (v57)
              {
                v58 = v57;
                v55 = sub_11CA4(v57, 0);
                swift_retain_n();
                sub_1EA74(v67);

                sub_18A08((v55 + 4), v58, v53);
                v60 = v59;

                v61 = v60 == v58;
                v4 = v75;
                if (!v61)
                {
                  goto LABEL_91;
                }
              }

              else
              {
                swift_retain_n();
                sub_1EA74(v67);
                v55 = &_swiftEmptyArrayStorage;
LABEL_72:

                v4 = v75;
              }

              v76 = v55;

              sub_1A560(&v76, sub_1EA70, v54);

              v53 = v76;
            }

            sub_10470(v53, sub_18A08);
            goto LABEL_49;
          }
        }

LABEL_49:
        if (a2 == v35)
        {
          v62 = v77;
          goto LABEL_89;
        }
      }
    }
  }

  v62 = &_swiftEmptyArrayStorage;
LABEL_89:

  swift_bridgeObjectRelease_n();
  return v62;
}

void *sub_1AED8(uint64_t a1)
{
  v2 = sub_1FF3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_29A0(&qword_2E2F0, &qword_229A0);
    v10 = sub_2078C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1E028(&qword_2E2F8, &type metadata accessor for Calendar.Component);
      v18 = sub_203AC();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1E028(&qword_2E300, &type metadata accessor for Calendar.Component);
          v25 = sub_203DC();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1B1F8(id *a1)
{
  v60 = sub_1FF4C();
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v60);
  v59 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1FE0C();
  v5 = *(v58 - 8);
  v6 = v5[8];
  __chkstk_darwin(v58);
  v57 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1FEAC();
  v8 = *(v65 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v65);
  v67 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29A0(&qword_2E2B0, &qword_22958);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v13 = __chkstk_darwin(v11);
  v70 = v46 - v14;
  v71 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_28:
    v44 = v13;
    v15 = sub_2087C();
    v13 = v44;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v15)
    {
LABEL_3:
      v46[1] = v13;
      v16 = 0;
      v63 = a1 & 0xFFFFFFFFFFFFFF8;
      v64 = a1 & 0xC000000000000001;
      v56 = (v2 + 8);
      v55 = (v5 + 1);
      v53 = enum case for Calendar.Component.month(_:);
      v54 = enum case for Calendar.Component.year(_:);
      v52 = enum case for Calendar.Component.day(_:);
      v51 = (v8 + 8);
      v47 = (v8 + 56);
      v5 = _swiftEmptyDictionarySingleton;
      v48 = xmmword_22660;
      v50 = xmmword_22920;
      v61 = v15;
      v62 = a1;
      while (1)
      {
        if (v64)
        {
          v13 = sub_207AC();
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v16 >= *(v63 + 16))
          {
            goto LABEL_25;
          }

          v13 = a1[v16 + 4];
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v68 = v17;
        v69 = v13;
        v18 = [v13 displayDate];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 date];

          sub_1FE8C();
          v66 = v5;
          v21 = v59;
          sub_1FF2C();
          sub_29A0(&qword_2E2E8, &qword_22998);
          v22 = sub_1FF3C();
          v23 = *(v22 - 8);
          v24 = *(v23 + 72);
          v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
          v26 = swift_allocObject();
          *(v26 + 16) = v50;
          v27 = v26 + v25;
          v28 = *(v23 + 104);
          v28(v27, v54, v22);
          v28(v27 + v24, v53, v22);
          v28(v27 + 2 * v24, v52, v22);
          sub_1AED8(v26);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v29 = v57;
          v30 = v67;
          sub_1FEFC();

          a1 = *v56;
          v8 = v60;
          (*v56)(v21, v60);
          sub_1FF2C();
          sub_1FF1C();
          v31 = v21;
          v5 = v66;
          (a1)(v31, v8);
          (*v55)(v29, v58);
          (*v51)(v30, v65);
        }

        else
        {
          (*v47)(v70, 1, 1, v65);
        }

        v2 = sub_1208C(v70);
        v33 = v5[2];
        v34 = (v32 & 1) == 0;
        v13 = (v33 + v34);
        if (__OFADD__(v33, v34))
        {
          goto LABEL_26;
        }

        v35 = v32;
        if (v5[3] >= v13)
        {
          v38 = v61;
          a1 = v62;
          if (v32)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1369C(v13, 1);
          v5 = v71;
          v36 = sub_1208C(v70);
          v38 = v61;
          a1 = v62;
          if ((v35 & 1) != (v37 & 1))
          {
            result = sub_2092C();
            __break(1u);
            return result;
          }

          v2 = v36;
          if (v35)
          {
LABEL_4:
            sub_469C(v70, &qword_2E2B0, &qword_22958);
            v2 = v5[7] + 8 * v2;
            sub_2048C();
            if (*(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v43 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
              sub_204BC();
            }

            v13 = sub_204DC();
            goto LABEL_7;
          }
        }

        sub_29A0(&qword_2DD50, &unk_22710);
        v39 = swift_allocObject();
        *(v39 + 16) = v48;
        *(v39 + 32) = v69;
        v5[(v2 >> 6) + 8] |= 1 << v2;
        v13 = sub_1DFC0(v70, v5[6] + *(v49 + 72) * v2, &qword_2E2B0, &qword_22958);
        *(v5[7] + 8 * v2) = v39;
        v40 = v5[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_27;
        }

        v5[2] = v42;
LABEL_7:
        ++v16;
        if (v68 == v38)
        {
          return v5;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1B960(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A0(&qword_2E2B0, &qword_22958);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_1FEAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  sub_FBB0(a1, v10, &qword_2E2B0, &qword_22958);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_469C(v10, &qword_2E2B0, &qword_22958);
    v20 = 0;
  }

  else
  {
    v21 = v10;
    v22 = *(v12 + 32);
    v22(v18, v21, v11);
    sub_FBB0(a2, v8, &qword_2E2B0, &qword_22958);
    if (v19(v8, 1, v11) == 1)
    {
      (*(v12 + 8))(v18, v11);
      sub_469C(v8, &qword_2E2B0, &qword_22958);
      v20 = 1;
    }

    else
    {
      v22(v16, v8, v11);
      v20 = sub_1FE7C();
      v23 = *(v12 + 8);
      v23(v16, v11);
      v23(v18, v11);
    }
  }

  return v20 & 1;
}

uint64_t sub_1BC04(void *a1, void *a2)
{
  v4 = sub_29A0(&qword_2E2B0, &qword_22958);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = [a1 displayDate];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 date];

    sub_1FE8C();
    v14 = sub_1FEAC();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  else
  {
    v15 = sub_1FEAC();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  v16 = [a2 displayDate];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 date];

    sub_1FE8C();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_1FEAC();
  (*(*(v20 - 8) + 56))(v8, v19, 1, v20);
  v21 = sub_1B960(v10, v8);
  sub_469C(v8, &qword_2E2B0, &qword_22958);
  sub_469C(v10, &qword_2E2B0, &qword_22958);
  return v21 & 1;
}

uint64_t sub_1BE44(uint64_t a1, id *a2, id *a3, id *a4)
{
  v8 = sub_1FEAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v110 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v115 = &v109 - v14;
  v15 = __chkstk_darwin(v13);
  v112 = &v109 - v16;
  __chkstk_darwin(v15);
  v120 = &v109 - v17;
  v18 = sub_29A0(&qword_2E2B0, &qword_22958);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v113 = (&v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v117 = (&v109 - v23);
  v24 = __chkstk_darwin(v22);
  v123 = &v109 - v25;
  v26 = __chkstk_darwin(v24);
  v126 = &v109 - v27;
  v28 = __chkstk_darwin(v26);
  v29 = __chkstk_darwin(v28);
  v118 = (&v109 - v30);
  v31 = __chkstk_darwin(v29);
  v116 = &v109 - v32;
  __chkstk_darwin(v31);
  v36 = &v109 - v35;
  v37 = a2 - a1;
  v38 = v37 / 8;
  v128 = a3;
  v39 = a3 - a2;
  v40 = v39 / 8;
  if (v37 / 8 >= v39 / 8)
  {
    v125 = v34;
    if (a4 != a2 || &a2[v40] <= a4)
    {
      memmove(a4, a2, 8 * v40);
    }

    v124 = a4;
    v127 = &a4[v40];
    if (v39 < 8)
    {
      v42 = v124;
      v71 = a2;
    }

    else
    {
      v71 = a2;
      v42 = v124;
      if (a2 > v125)
      {
        v121 = (v9 + 56);
        v111 = (v9 + 8);
        v112 = (v9 + 32);
        v72 = &TTRBundleLookupObject__metaData;
        v73 = &qword_2E2B0;
        v116 = (v9 + 48);
LABEL_33:
        v122 = v71;
        v74 = v71 - 1;
        --v128;
        v75 = v127;
        v118 = v71 - 1;
        do
        {
          v76 = *--v75;
          v77 = *v74;
          v78 = v76;
          v79 = v77;
          v80 = [v78 v72[53].name];
          if (v80)
          {
            v81 = v80;
            v82 = [v80 date];

            v83 = v126;
            sub_1FE8C();

            v84 = 0;
          }

          else
          {
            v84 = 1;
            v83 = v126;
          }

          v85 = *v121;
          v86 = 1;
          (*v121)(v83, v84, 1, v8);
          v87 = [v79 v72[53].name];
          v119 = v79;
          v120 = v78;
          if (v87)
          {
            v88 = v87;
            v89 = [v87 date];

            v90 = v123;
            sub_1FE8C();

            v86 = 0;
          }

          else
          {
            v90 = v123;
          }

          v85(v90, v86, 1, v8);
          v91 = v117;
          sub_FBB0(v126, v117, v73, &qword_22958);
          v92 = v90;
          v93 = v73;
          v94 = *v116;
          if ((*v116)(v91, 1, v8) == 1)
          {
            sub_469C(v91, v73, &qword_22958);
            v95 = 0;
            v96 = v126;
            v97 = v120;
          }

          else
          {
            v114 = v75;
            v98 = *v112;
            (*v112)(v115, v91, v8);
            v99 = v92;
            v100 = v113;
            sub_FBB0(v99, v113, v73, &qword_22958);
            if (v94(v100, 1, v8) == 1)
            {
              (*v111)(v115, v8);
              sub_469C(v100, v73, &qword_22958);
              v95 = 1;
              v96 = v126;
              v72 = &TTRBundleLookupObject__metaData;
            }

            else
            {
              v101 = v8;
              v102 = v115;
              v103 = v110;
              v98(v110, v100, v101);
              v95 = sub_1FE7C();
              v104 = *v111;
              v105 = v103;
              v106 = v102;
              v8 = v101;
              (*v111)(v105, v101);
              v104(v106, v101);
              v96 = v126;
              v72 = &TTRBundleLookupObject__metaData;
            }

            v73 = v93;
            v97 = v120;
            v75 = v114;
          }

          sub_469C(v123, v73, &qword_22958);
          sub_469C(v96, v73, &qword_22958);

          v42 = v124;
          if (v95)
          {
            v107 = v118;
            if (v128 + 1 != v122)
            {
              *v128 = *v118;
            }

            if (v127 <= v42 || (v71 = v107, v107 <= v125))
            {
              v71 = v107;
              goto LABEL_58;
            }

            goto LABEL_33;
          }

          v74 = v118;
          if (v128 + 1 != v127)
          {
            *v128 = *v75;
          }

          --v128;
          v127 = v75;
        }

        while (v75 > v42);
        v127 = v75;
        v71 = v122;
      }
    }
  }

  else
  {
    v41 = a4 == v34;
    v42 = a4;
    v43 = v34;
    v115 = v33;
    if (!v41 || &v34[v38] <= v42)
    {
      memmove(v42, v34, 8 * v38);
    }

    v127 = &v42[v38];
    if (v37 >= 8)
    {
      v44 = a2;
      if (a2 < v128)
      {
        v126 = (v9 + 56);
        v45 = (v9 + 48);
        v113 = (v9 + 8);
        v114 = (v9 + 32);
        v46 = &TTRBundleLookupObject__metaData;
        v117 = v45;
        v119 = v36;
        while (1)
        {
          v125 = v43;
          v122 = v44;
          v47 = *v42;
          v48 = *v44;
          v49 = v47;
          name = v46[53].name;
          v121 = v48;
          v51 = [v48 name];
          if (v51)
          {
            v52 = v51;
            v53 = [v51 date];

            sub_1FE8C();
            v54 = 0;
          }

          else
          {
            v54 = 1;
          }

          v55 = *v126;
          v56 = 1;
          (*v126)(v36, v54, 1, v8);
          v57 = [v49 v46[53].name];
          v123 = v49;
          if (v57)
          {
            v58 = v57;
            v59 = [v57 date];

            v60 = v116;
            sub_1FE8C();

            v56 = 0;
            v61 = v120;
          }

          else
          {
            v61 = v120;
            v60 = v116;
          }

          v55(v60, v56, 1, v8);
          v62 = v118;
          v36 = v119;
          sub_FBB0(v119, v118, &qword_2E2B0, &qword_22958);
          v63 = *v117;
          if ((*v117)(v62, 1, v8) == 1)
          {
            break;
          }

          v124 = v42;
          v66 = *v114;
          (*v114)(v61, v62, v8);
          v67 = v115;
          sub_FBB0(v60, v115, &qword_2E2B0, &qword_22958);
          if (v63(v67, 1, v8) == 1)
          {
            (*v113)(v61, v8);
            sub_469C(v67, &qword_2E2B0, &qword_22958);
            sub_469C(v60, &qword_2E2B0, &qword_22958);
            v36 = v119;
            sub_469C(v119, &qword_2E2B0, &qword_22958);

            v42 = v124;
          }

          else
          {
            v68 = v112;
            v66(v112, v67, v8);
            v69 = sub_1FE7C();
            v70 = *v113;
            (*v113)(v68, v8);
            v70(v120, v8);
            sub_469C(v60, &qword_2E2B0, &qword_22958);
            v36 = v119;
            sub_469C(v119, &qword_2E2B0, &qword_22958);

            v42 = v124;
            if ((v69 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v64 = v122;
          v44 = v122 + 1;
          v65 = v125;
          v46 = &TTRBundleLookupObject__metaData;
          if (v125 != v122)
          {
            goto LABEL_18;
          }

LABEL_19:
          v43 = v65 + 1;
          if (v42 >= v127 || v44 >= v128)
          {
            goto LABEL_55;
          }
        }

        sub_469C(v62, &qword_2E2B0, &qword_22958);
        sub_469C(v60, &qword_2E2B0, &qword_22958);
        sub_469C(v36, &qword_2E2B0, &qword_22958);

LABEL_17:
        v64 = v42;
        v65 = v125;
        v41 = v125 == v42++;
        v44 = v122;
        v46 = &TTRBundleLookupObject__metaData;
        if (v41)
        {
          goto LABEL_19;
        }

LABEL_18:
        *v65 = *v64;
        goto LABEL_19;
      }
    }

LABEL_55:
    v71 = v43;
  }

LABEL_58:
  if (v71 != v42 || v71 >= (v42 + ((v127 - v42 + (v127 - v42 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v71, v42, 8 * (v127 - v42));
  }

  return 1;
}

uint64_t sub_1C97C(uint64_t *a1, id *a2, void *a3)
{
  v5 = a1;
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_17B28(v6);
    v6 = result;
  }

  v15 = v5;
  *v5 = v6;
  v8 = (v6 + 16);
  v9 = *(v6 + 16);
  if (v9 < 2)
  {
LABEL_9:
    *v15 = v6;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v10 = v6 + 16 * v9;
      v5 = *v10;
      v11 = &v8[2 * v9];
      v12 = v11[1];
      sub_1BE44(*a3 + 8 * *v10, (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
      if (v3)
      {
        goto LABEL_9;
      }

      if (v12 < v5)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v13 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_11;
      }

      *v10 = v5;
      *(v10 + 8) = v12;
      v14 = v13 - v9;
      if (v13 < v9)
      {
        goto LABEL_12;
      }

      v9 = v13 - 1;
      result = memmove(v11, v11 + 2, 16 * v14);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v15 = v6;
    __break(1u);
  }

  return result;
}

void sub_1CAAC(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v161 = a1;
  v6 = sub_1FEAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v175 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v159 - v12;
  v14 = __chkstk_darwin(v11);
  v162 = &v159 - v15;
  __chkstk_darwin(v14);
  v168 = &v159 - v16;
  v17 = sub_29A0(&qword_2E2B0, &qword_22958);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v159 - v21;
  v23 = __chkstk_darwin(v20);
  v187 = &v159 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v159 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v159 - v29;
  v31 = __chkstk_darwin(v28);
  v167 = &v159 - v32;
  v33 = __chkstk_darwin(v31);
  v172 = &v159 - v34;
  __chkstk_darwin(v33);
  v173 = &v159 - v36;
  v192 = _swiftEmptyArrayStorage;
  v170 = a3;
  v37 = a3[1];
  if (v37 >= 1)
  {
    v38 = 0;
    v191 = (v7 + 56);
    v183 = (v7 + 48);
    v180 = (v7 + 32);
    v181 = (v7 + 8);
    v174 = _swiftEmptyArrayStorage;
    v160 = a4;
    v185 = v13;
    v177 = v6;
    v178 = v35;
    v190 = v27;
    v182 = v30;
    while (1)
    {
      v39 = v38 + 1;
      v164 = v38;
      if (v38 + 1 < v37)
      {
        v40 = v38;
        v41 = *v170;
        v42 = *(*v170 + 8 * v39);
        v166 = 8 * v40;
        v43 = (v41 + 8 * v40);
        v45 = *v43;
        v44 = v43 + 2;
        v46 = v42;
        v47 = v45;
        LODWORD(v179) = sub_1BC04(v46, v47);

        v48 = v40 + 2;
        v49 = v173;
        v169 = v37;
        while (v37 != v48)
        {
          v52 = *(v44 - 1);
          v53 = *v44;
          v189 = v52;
          v54 = [v53 displayDate];
          v186 = v48;
          v184 = v53;
          if (v54)
          {
            v55 = v54;
            v56 = [v54 date];

            sub_1FE8C();
            v57 = 0;
          }

          else
          {
            v57 = 1;
          }

          v58 = *v191;
          v59 = 1;
          (*v191)(v49, v57, 1, v6);
          v60 = [v189 displayDate];
          v188 = v44;
          if (v60)
          {
            v61 = v60;
            v62 = [v60 date];

            v63 = v172;
            sub_1FE8C();

            v59 = 0;
          }

          else
          {
            v63 = v172;
          }

          v58(v63, v59, 1, v6);
          v64 = v167;
          sub_FBB0(v173, v167, &qword_2E2B0, &qword_22958);
          v65 = *v183;
          if ((*v183)(v64, 1, v6) == 1)
          {
            sub_469C(v64, &qword_2E2B0, &qword_22958);
            v50 = 0;
            v49 = v173;
          }

          else
          {
            v66 = v64;
            v67 = *v180;
            (*v180)(v168, v66, v6);
            sub_FBB0(v63, v30, &qword_2E2B0, &qword_22958);
            if (v65(v30, 1, v6) == 1)
            {
              (*v181)(v168, v6);
              sub_469C(v30, &qword_2E2B0, &qword_22958);
              v50 = 1;
            }

            else
            {
              v68 = v162;
              v67(v162, v30, v6);
              v50 = sub_1FE7C();
              v69 = *v181;
              (*v181)(v68, v6);
              v69(v168, v6);
            }

            v49 = v173;
            v37 = v169;
          }

          sub_469C(v172, &qword_2E2B0, &qword_22958);
          sub_469C(v49, &qword_2E2B0, &qword_22958);

          v51 = v50 & 1;
          v48 = v186 + 1;
          v44 = v188 + 1;
          if ((v179 & 1) != v51)
          {
            v37 = v186;
            break;
          }
        }

        v70 = v166;
        a4 = v160;
        v27 = v190;
        if (v179)
        {
          v71 = v164;
          if (v37 < v164)
          {
            goto LABEL_130;
          }

          if (v164 < v37)
          {
            v72 = 8 * v37 - 8;
            v73 = v37;
            do
            {
              if (v71 != --v73)
              {
                v74 = *v170;
                if (!*v170)
                {
                  goto LABEL_135;
                }

                v75 = *(v74 + v70);
                *(v74 + v70) = *(v74 + v72);
                *(v74 + v72) = v75;
              }

              ++v71;
              v72 -= 8;
              v70 += 8;
            }

            while (v71 < v73);
          }
        }

        v39 = v37;
      }

      v76 = v170[1];
      if (v39 >= v76)
      {
        goto LABEL_60;
      }

      if (__OFSUB__(v39, v164))
      {
        goto LABEL_129;
      }

      if (v39 - v164 >= a4)
      {
        goto LABEL_60;
      }

      v77 = v164 + a4;
      if (__OFADD__(v164, a4))
      {
        goto LABEL_131;
      }

      if (v77 >= v76)
      {
        v77 = v170[1];
      }

      if (v77 < v164)
      {
        break;
      }

      if (v39 == v77)
      {
        goto LABEL_60;
      }

      v179 = *v170;
      v78 = (v179 + 8 * v39 - 8);
      v79 = v164 - v39;
      v176 = v22;
      v163 = v77;
      while (2)
      {
        v169 = v39;
        v80 = v79;
        v81 = *(v179 + 8 * v39);
        v165 = v80;
        v82 = v80;
        v166 = v78;
        while (1)
        {
          v186 = v82;
          v83 = *v78;
          v84 = v81;
          v85 = v83;
          v188 = v84;
          v86 = [v84 displayDate];
          if (v86)
          {
            v87 = v86;
            v88 = [v86 date];

            sub_1FE8C();
            v89 = 0;
          }

          else
          {
            v89 = 1;
          }

          v90 = *v191;
          v91 = 1;
          (*v191)(v27, v89, 1, v6);
          v189 = v85;
          v92 = [v85 displayDate];
          if (v92)
          {
            v93 = v92;
            v94 = [v92 date];

            v95 = v187;
            sub_1FE8C();

            v91 = 0;
          }

          else
          {
            v95 = v187;
          }

          v90(v95, v91, 1, v6);
          sub_FBB0(v190, v22, &qword_2E2B0, &qword_22958);
          v96 = *v183;
          if ((*v183)(v22, 1, v6) == 1)
          {
            sub_469C(v22, &qword_2E2B0, &qword_22958);
            sub_469C(v95, &qword_2E2B0, &qword_22958);
            v27 = v190;
            sub_469C(v190, &qword_2E2B0, &qword_22958);

            goto LABEL_41;
          }

          v184 = v78;
          v97 = *v180;
          v98 = v185;
          (*v180)(v185, v22, v6);
          v99 = v178;
          sub_FBB0(v95, v178, &qword_2E2B0, &qword_22958);
          if (v96(v99, 1, v6) != 1)
          {
            break;
          }

          (*v181)(v98, v6);
          sub_469C(v99, &qword_2E2B0, &qword_22958);
          sub_469C(v187, &qword_2E2B0, &qword_22958);
          v27 = v190;
          sub_469C(v190, &qword_2E2B0, &qword_22958);

          v100 = v184;
LABEL_54:
          v22 = v176;
          v30 = v182;
          v104 = v186;
          if (!v179)
          {
            goto LABEL_133;
          }

          v105 = *v100;
          v81 = v100[1];
          *v100 = v81;
          v100[1] = v105;
          v78 = v100 - 1;
          v106 = __CFADD__(v104, 1);
          v82 = v104 + 1;
          v6 = v177;
          if (v106)
          {
            goto LABEL_42;
          }
        }

        v101 = v175;
        v97(v175, v99, v6);
        v102 = sub_1FE7C();
        v103 = *v181;
        (*v181)(v101, v6);
        v103(v185, v6);
        sub_469C(v187, &qword_2E2B0, &qword_22958);
        v27 = v190;
        sub_469C(v190, &qword_2E2B0, &qword_22958);

        v100 = v184;
        if (v102)
        {
          goto LABEL_54;
        }

        v22 = v176;
        v6 = v177;
LABEL_41:
        v30 = v182;
LABEL_42:
        v39 = v169 + 1;
        v78 = (v166 + 8);
        v79 = v165 - 1;
        if (v169 + 1 != v163)
        {
          continue;
        }

        break;
      }

      v39 = v163;
LABEL_60:
      v107 = v174;
      if (v39 < v164)
      {
        goto LABEL_128;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_11BA0(0, *(v107 + 2) + 1, 1, v107);
      }

      v109 = *(v107 + 2);
      v108 = *(v107 + 3);
      v110 = v109 + 1;
      v169 = v39;
      if (v109 >= v108 >> 1)
      {
        v107 = sub_11BA0((v108 > 1), v109 + 1, 1, v107);
      }

      *(v107 + 2) = v110;
      v111 = v107 + 32;
      v112 = &v107[16 * v109 + 32];
      v113 = v169;
      *v112 = v164;
      *(v112 + 1) = v113;
      v192 = v107;
      v189 = *v161;
      if (!v189)
      {
        goto LABEL_136;
      }

      v174 = v107;
      if (v109)
      {
        while (1)
        {
          v114 = v110 - 1;
          if (v110 >= 4)
          {
            break;
          }

          if (v110 == 3)
          {
            v115 = *(v107 + 4);
            v116 = *(v107 + 5);
            v125 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            v118 = v125;
LABEL_80:
            if (v118)
            {
              goto LABEL_119;
            }

            v131 = &v107[16 * v110];
            v133 = *v131;
            v132 = *(v131 + 1);
            v134 = __OFSUB__(v132, v133);
            v135 = v132 - v133;
            v136 = v134;
            if (v134)
            {
              goto LABEL_122;
            }

            v137 = &v111[16 * v114];
            v139 = *v137;
            v138 = *(v137 + 1);
            v125 = __OFSUB__(v138, v139);
            v140 = v138 - v139;
            if (v125)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v135, v140))
            {
              goto LABEL_126;
            }

            if (v135 + v140 >= v117)
            {
              if (v117 < v140)
              {
                v114 = v110 - 2;
              }

              goto LABEL_101;
            }

            goto LABEL_94;
          }

          v141 = &v107[16 * v110];
          v143 = *v141;
          v142 = *(v141 + 1);
          v125 = __OFSUB__(v142, v143);
          v135 = v142 - v143;
          v136 = v125;
LABEL_94:
          if (v136)
          {
            goto LABEL_121;
          }

          v144 = &v111[16 * v114];
          v146 = *v144;
          v145 = *(v144 + 1);
          v125 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v125)
          {
            goto LABEL_124;
          }

          if (v147 < v135)
          {
            goto LABEL_3;
          }

LABEL_101:
          if (v114 - 1 >= v110)
          {
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
            goto LABEL_132;
          }

          if (!*v170)
          {
            goto LABEL_134;
          }

          v152 = &v111[16 * v114 - 16];
          v153 = *v152;
          v154 = &v111[16 * v114];
          v155 = *(v154 + 1);
          v156 = v171;
          sub_1BE44(*v170 + 8 * *v152, (*v170 + 8 * *v154), (*v170 + 8 * v155), v189);
          v171 = v156;
          if (v156)
          {
            v192 = v174;
            goto LABEL_112;
          }

          if (v155 < v153)
          {
            goto LABEL_114;
          }

          v157 = *(v174 + 2);
          if (v114 > v157)
          {
            goto LABEL_115;
          }

          *v152 = v153;
          *(v152 + 1) = v155;
          if (v114 >= v157)
          {
            goto LABEL_116;
          }

          v110 = v157 - 1;
          memmove(&v111[16 * v114], v154 + 16, 16 * (v157 - 1 - v114));
          v107 = v174;
          *(v174 + 2) = v157 - 1;
          v158 = v157 > 2;
          v30 = v182;
          if (!v158)
          {
LABEL_3:
            v192 = v107;
            goto LABEL_4;
          }
        }

        v119 = &v111[16 * v110];
        v120 = *(v119 - 8);
        v121 = *(v119 - 7);
        v125 = __OFSUB__(v121, v120);
        v122 = v121 - v120;
        if (v125)
        {
          goto LABEL_117;
        }

        v124 = *(v119 - 6);
        v123 = *(v119 - 5);
        v125 = __OFSUB__(v123, v124);
        v117 = v123 - v124;
        v118 = v125;
        if (v125)
        {
          goto LABEL_118;
        }

        v126 = &v107[16 * v110];
        v128 = *v126;
        v127 = *(v126 + 1);
        v125 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v125)
        {
          goto LABEL_120;
        }

        v125 = __OFADD__(v117, v129);
        v130 = v117 + v129;
        if (v125)
        {
          goto LABEL_123;
        }

        if (v130 >= v122)
        {
          v148 = &v111[16 * v114];
          v150 = *v148;
          v149 = *(v148 + 1);
          v125 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v125)
          {
            goto LABEL_127;
          }

          if (v117 < v151)
          {
            v114 = v110 - 2;
          }

          goto LABEL_101;
        }

        goto LABEL_80;
      }

LABEL_4:
      v37 = v170[1];
      v38 = v169;
      a4 = v160;
      v27 = v190;
      if (v169 >= v37)
      {
        goto LABEL_110;
      }
    }

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

LABEL_110:
  if (!*v161)
  {
LABEL_137:
    __break(1u);
    return;
  }

  sub_1C97C(&v192, *v161, v170);
LABEL_112:
}

void sub_1D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1FEAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v54 - v13;
  v15 = sub_29A0(&qword_2E2B0, &qword_22958);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v21 = __chkstk_darwin(v18);
  v65 = &v54 - v22;
  __chkstk_darwin(v21);
  v67 = &v54 - v24;
  v55 = a2;
  if (a3 != a2)
  {
    v71 = (v9 + 56);
    v25 = *a4;
    v63 = (v9 + 32);
    v64 = (v9 + 48);
    v60 = (v9 + 8);
    v61 = v20;
    v66 = v25;
    v26 = v25 + 8 * a3 - 8;
    v27 = a1 - a3;
    v68 = v14;
    v62 = v23;
LABEL_6:
    v57 = v26;
    v58 = a3;
    v28 = *(v66 + 8 * a3);
    v56 = v27;
    v29 = v27;
    v30 = v67;
    while (1)
    {
      v69 = v29;
      v31 = *v26;
      v32 = v28;
      v72 = v31;
      v70 = v32;
      v33 = [v32 displayDate];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 date];

        sub_1FE8C();
        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v37 = v65;
      v38 = v63;
      v39 = *v71;
      v40 = 1;
      (*v71)(v30, v36, 1, v8);
      v41 = [v72 displayDate];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 date];

        sub_1FE8C();
        v40 = 0;
      }

      v39(v37, v40, 1, v8);
      sub_FBB0(v30, v20, &qword_2E2B0, &qword_22958);
      v44 = *v64;
      if ((*v64)(v20, 1, v8) == 1)
      {
        sub_469C(v20, &qword_2E2B0, &qword_22958);
        sub_469C(v37, &qword_2E2B0, &qword_22958);
        sub_469C(v30, &qword_2E2B0, &qword_22958);

LABEL_5:
        a3 = v58 + 1;
        v26 = v57 + 8;
        v27 = v56 - 1;
        if (v58 + 1 == v55)
        {
          return;
        }

        goto LABEL_6;
      }

      v45 = *v38;
      v46 = v68;
      (*v38)(v68, v20, v8);
      v47 = v62;
      sub_FBB0(v37, v62, &qword_2E2B0, &qword_22958);
      if (v44(v47, 1, v8) == 1)
      {
        (*v60)(v46, v8);
        sub_469C(v47, &qword_2E2B0, &qword_22958);
        sub_469C(v37, &qword_2E2B0, &qword_22958);
        v30 = v67;
        sub_469C(v67, &qword_2E2B0, &qword_22958);

        v20 = v61;
        v48 = v69;
      }

      else
      {
        v49 = v59;
        v45(v59, v47, v8);
        v50 = sub_1FE7C();
        v51 = *v60;
        (*v60)(v49, v8);
        v51(v68, v8);
        sub_469C(v37, &qword_2E2B0, &qword_22958);
        v30 = v67;
        sub_469C(v67, &qword_2E2B0, &qword_22958);

        v20 = v61;
        v48 = v69;
        if ((v50 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v66)
      {
        break;
      }

      v52 = *v26;
      v28 = *(v26 + 8);
      *v26 = v28;
      *(v26 + 8) = v52;
      v26 -= 8;
      v53 = __CFADD__(v48, 1);
      v29 = v48 + 1;
      if (v53)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1DEAC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_208EC(v2);
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
        sub_2958(0, &qword_2E0E0, REMReminder_ptr);
        v6 = sub_204CC();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1CAAC(v8, v9, a1, v4);
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
    sub_1D920(0, v2, 1, a1);
  }
}

uint64_t sub_1DFC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_29A0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E070(unint64_t a1)
{
  v24 = a1;
  v1 = sub_29A0(&qword_2E000, &qword_22850);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  sub_29A0(&qword_2E0D0, &unk_22960);
  v8 = (type metadata accessor for TTRIIntentsSnippetSection() - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22590;
  v12 = (v11 + v10);
  v13 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
  v14 = sub_202CC();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  v15 = enum case for REMNavigationSpecifier.flagged(_:);
  v16 = sub_2030C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v7, v15, v16);
  (*(v17 + 56))(v7, 0, 1, v16);
  v25._countAndFlagsBits = 0x64656767616C46;
  v26._object = 0x8000000000022110;
  v25._object = 0xE700000000000000;
  v26._countAndFlagsBits = 0xD000000000000012;
  v18 = sub_2001C(v25, v26);
  v20 = v19;
  sub_FBB0(v7, v5, &qword_2E000, &qword_22850);
  *v12 = v18;
  v12[1] = v20;
  sub_FBB0(v5, v12 + v8[7], &qword_2E000, &qword_22850);
  v21 = sub_1A63C(v24, 0, 0);
  sub_469C(v5, &qword_2E000, &qword_22850);
  sub_469C(v7, &qword_2E000, &qword_22850);
  *(v12 + v8[8]) = v21;
  return v11;
}

void *sub_1E334(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_2087C();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_207AC();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = [v5 list];
    v10 = sub_1232C(v8);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_22;
    }

    v14 = v9;
    if (_swiftEmptyDictionarySingleton[3] < v13)
    {
      break;
    }

LABEL_16:
    if (v14)
    {

      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v10);
      sub_2048C();
      if (*(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v21 = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
        sub_204BC();
      }

      sub_204DC();
    }

    else
    {
      sub_29A0(&qword_2DD50, &unk_22710);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22660;
      *(v17 + 32) = v6;
      _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v10) = v8;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v17;
      v18 = _swiftEmptyDictionarySingleton[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v20;
    }

    if (v7 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  sub_13EB8(v13, 1);
  v15 = sub_1232C(v8);
  if ((v14 & 1) == (v16 & 1))
  {
    v10 = v15;
    goto LABEL_16;
  }

  sub_2958(0, &qword_2E340, REMList_ptr);
  result = sub_2092C();
  __break(1u);
  return result;
}

void *sub_1E5A8()
{
  v0 = sub_29A0(&qword_2E000, &qword_22850);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v38 = (&v34 - v2);
  v3 = type metadata accessor for TTRIIntentsSnippetSection();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v42 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  v7 = sub_1E334(v6);

  v8 = v7[2];
  if (v8)
  {
    v9 = sub_11E34(v7[2], 0);
    v10 = sub_19188(v43, v9 + 4, v8, v7);
    v41 = v43[4];

    sub_FB4C();
    if (v10 != v8)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v43[0] = v9;
  sub_14258(v43);

  v11 = v43[0];
  v12 = v43[0][2];
  if (v12)
  {
    v43[0] = _swiftEmptyArrayStorage;
    sub_12B54(0, v12, 0);
    v13 = 0;
    v14 = v43[0];
    v35 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
    v15 = v11 + 5;
    v34 = enum case for REMNavigationSpecifier.list(_:);
    v36 = v12;
    v37 = v11;
    while (v13 < v11[2])
    {
      v16 = *v15;
      v17 = *(v15 - 1);

      v41 = v17;
      v18 = [v17 displayName];
      v19 = sub_2041C();
      v21 = v20;

      v22 = *(sub_29A0(&qword_2E328, &qword_229B8) + 48);
      v23 = [v17 objectID];
      v24 = v38;
      *v38 = v23;
      v25 = sub_202DC();
      (*(*(v25 - 8) + 104))(v24 + v22, v35, v25);
      v26 = sub_2030C();
      v27 = *(v26 - 8);
      (*(v27 + 104))(v24, v34, v26);
      (*(v27 + 56))(v24, 0, 1, v26);
      *v42 = v19;
      v28 = v42;
      v42[1] = v21;
      v29 = v40;
      sub_FBB0(v24, v28 + *(v40 + 20), &qword_2E000, &qword_22850);
      v30 = sub_1A63C(v16, sub_1933C, 0);
      sub_469C(v24, &qword_2E000, &qword_22850);

      *(v28 + *(v29 + 24)) = v30;
      v43[0] = v14;
      v32 = v14[2];
      v31 = v14[3];
      if (v32 >= v31 >> 1)
      {
        sub_12B54(v31 > 1, v32 + 1, 1);
        v14 = v43[0];
      }

      ++v13;
      v14[2] = v32 + 1;
      sub_19818(v28, v14 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32);
      v15 += 2;
      v11 = v37;
      if (v36 == v13)
      {

        return v14;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1EA38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1EA74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1EA84@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, *a2);
  *a3 = result & 1;
  return result;
}

unint64_t sub_1EAC0()
{
  result = qword_2E0F0;
  if (!qword_2E0F0)
  {
    sub_2958(255, &qword_2E0E8, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2E0F0);
  }

  return result;
}

uint64_t sub_1EB28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2A4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1EB7C(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a3 + 20);
    v9 = sub_2030C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      v12 = sub_29A0(&qword_2E000, &qword_22850);
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    *&v4[*(a3 + 24)] = *&a2[*(a3 + 24)];
  }

  return v4;
}

uint64_t sub_1ED08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 20);
  v6 = sub_2030C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = *(a1 + *(a2 + 24));
}

char *sub_1EDD0(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 20);
  v8 = sub_2030C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(&a2[v7], 1, v8))
  {
    v11 = sub_29A0(&qword_2E000, &qword_22850);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

char *sub_1EF10(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = *(a3 + 20);
  v8 = sub_2030C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 24))(&a1[v7], &a2[v7], v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_29A0(&qword_2E000, &qword_22850);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 16))(&a1[v7], &a2[v7], v8);
  (*(v9 + 56))(&a1[v7], 0, 1, v8);
LABEL_7:
  v14 = *(a3 + 24);
  v15 = *&a2[v14];
  v16 = *&a1[v14];
  *&a1[v14] = v15;

  return a1;
}

char *sub_1F0C8(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_2030C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = sub_29A0(&qword_2E000, &qword_22850);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *sub_1F1EC(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a3 + 20);
  v9 = sub_2030C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(&a1[v8], &a2[v8], v9);
      goto LABEL_7;
    }

    (*(v10 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_29A0(&qword_2E000, &qword_22850);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 32))(&a1[v8], &a2[v8], v9);
  (*(v10 + 56))(&a1[v8], 0, 1, v9);
LABEL_7:
  v15 = *(a3 + 24);
  v16 = *&a1[v15];
  *&a1[v15] = *&a2[v15];

  return a1;
}

uint64_t sub_1F3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29A0(&qword_2E000, &qword_22850);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1F480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29A0(&qword_2E000, &qword_22850);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1F548()
{
  sub_C9E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

uint64_t sub_1F610()
{
  v0 = sub_2036C();
  sub_F9EC(v0, qword_2E420);
  v1 = sub_F954(v0, qword_2E420);
  if (qword_2DB98 != -1)
  {
    swift_once();
  }

  v2 = sub_F954(v0, qword_2E890);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id RemindersSiriSnippetFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemindersSiriSnippetFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemindersSiriSnippetFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id RemindersSiriSnippetFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemindersSiriSnippetFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s21RemindersSiriUIPlugin0aB14SnippetFactoryC14viewController3forSo0b6UIBased4ViewG0CSgSo11SAUISnippetCSg_tF_0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 0;
  }

  result = [v5 interactions];
  if (!result)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v7 = result;
  sub_1FD58();
  v8 = sub_204AC();

  if (!(v8 >> 62))
  {
    if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  if (!sub_2087C())
  {
LABEL_32:

    return 0;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_207AC();
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_37:
      swift_once();
LABEL_28:
      v34 = sub_2036C();
      sub_F954(v34, qword_2E420);
      v35 = sub_2035C();
      v36 = sub_2055C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "Could not load view controller", v37, 2u);
      }

      return 0;
    }

    v9 = *(v8 + 32);
  }

  v7 = v9;

  result = [v7 intent];
  if (!result)
  {
    goto LABEL_39;
  }

  v10 = result;
  v11 = [result typeName];

  result = [v7 intent];
  if (!result)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = result;
  isa = [result data];

  if (isa)
  {
    v14 = sub_1FE5C();
    v16 = v15;

    isa = sub_1FE4C().super.isa;
    sub_1FDA4(v14, v16);
  }

  v1 = INIntentCreate();

  if (!v1)
  {
    if (qword_2DBA8 != -1)
    {
      swift_once();
    }

    v30 = sub_2036C();
    sub_F954(v30, qword_2E420);
    v31 = sub_2035C();
    v32 = sub_2055C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Could not decode intent from AceInteraction", v33, 2u);
    }

    return 0;
  }

  result = [v7 intentResponse];
  if (!result)
  {
    goto LABEL_41;
  }

  v17 = result;
  v18 = [result typeName];

  result = [v7 intentResponse];
  if (result)
  {
    v19 = result;
    v20 = [result data];

    if (v20)
    {
      v21 = sub_1FE5C();
      v23 = v22;

      v20 = sub_1FE4C().super.isa;
      sub_1FDA4(v21, v23);
    }

    v2 = INIntentResponseCreate();

    type metadata accessor for TTRIIntentsSnippetViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v25 = sub_203EC();
    v4 = [objc_opt_self() storyboardWithName:v25 bundle:v3];

    v26 = [v4 instantiateInitialViewController];
    if (v26)
    {
      v27 = v26;
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        sub_B19C(v1, v2);

        return v29;
      }
    }

    if (qword_2DBA8 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_1FD58()
{
  result = qword_2E4C0;
  if (!qword_2E4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2E4C0);
  }

  return result;
}

uint64_t sub_1FDA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}