void sub_29E1359FC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v156 = a4;
  v157 = a1;
  v169 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v169);
  v172 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v173 = &v153 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v163 = &v153 - v12;
  MEMORY[0x2A1C7C4A8](v13);
  v164 = &v153 - v15;
  v161 = a5;
  v162 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    swift_retain_n();
    v18 = MEMORY[0x29EDCA190];
LABEL_99:
    v5 = *v157;
    if (!*v157)
    {
      goto LABEL_143;
    }

    swift_retain_n();
    a5 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_133;
    }

    v141 = v18;
LABEL_102:
    v176 = v141;
    v142 = *(v141 + 2);
    if (v142 >= 2)
    {
      do
      {
        v143 = *v162;
        if (!*v162)
        {
          goto LABEL_141;
        }

        a5 = v142 - 1;
        v144 = *&v141[16 * v142];
        v145 = v141;
        v146 = *&v141[16 * v142 + 24];
        v147 = (v143 + 8 * v144);
        v148 = (v143 + 8 * *&v141[16 * v142 + 16]);
        v149 = (v143 + 8 * v146);

        v150 = v147;
        v151 = v166;
        sub_29E1348D4(v150, v148, v149, v5);
        v166 = v151;
        if (v151)
        {
          break;
        }

        if (v146 < v144)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_29E14D410(v145);
        }

        if (v142 - 2 >= *(v145 + 2))
        {
          goto LABEL_127;
        }

        v152 = &v145[16 * v142];
        *v152 = v144;
        *(v152 + 1) = v146;
        v176 = v145;
        sub_29E14D384(v142 - 1);
        v141 = v176;
        v142 = *(v176 + 2);
      }

      while (v142 > 1);
    }

    return;
  }

  v168 = (v14 + 8);
  swift_retain_n();
  v17 = 0;
  v18 = MEMORY[0x29EDCA190];
  while (1)
  {
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
      v50 = v156;
    }

    else
    {
      v155 = v18;
      v5 = *v162;
      v19 = *(*v162 + 8 * (v17 + 1));
      v174 = *(*v162 + 8 * v17);
      v20 = v174;
      v175 = v19;
      v21 = v19;
      a5 = v20;
      v22 = v166;
      LODWORD(v167) = sub_29E135754(&v175, &v174);
      v166 = v22;
      if (v22)
      {

        return;
      }

      v23 = (v17 + 2);
      v154 = v17;
      v160 = 8 * v17;
      v24 = (v5 + 8 * v17 + 16);
      v165 = v16;
      while (v16 != v23)
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v27 = v25;
        v28 = [v27 endDate];
        sub_29E2BCB44();
        v29 = [v26 categoryType];
        v30 = sub_29DF3D08C();
        v32 = v31;

        if (v32)
        {
          goto LABEL_137;
        }

        v171 = v23;
        if (v30 >= 4)
        {
          goto LABEL_144;
        }

        v33 = sub_29DEB1368();
        v35 = v34;
        v170 = v26;
        v36 = [v26 endDate];
        sub_29E2BCB44();
        v37 = v27;
        v38 = [v27 categoryType];
        v39 = sub_29DF3D08C();
        v41 = v40;

        if (v41)
        {
          goto LABEL_138;
        }

        if (v39 >= 4)
        {
          goto LABEL_144;
        }

        v42 = sub_29DEB1368();
        v44 = v43;
        v45 = v164;
        v46 = v33;
        v47 = v163;
        v5 = sub_29E133C6C(v164, v46, v35, v163, v42, v44) & 1;

        v48 = v169;
        a5 = *v168;
        (*v168)(v47, v169);
        (a5)(v45, v48);

        v23 = v171 + 1;
        ++v24;
        v16 = v165;
        if ((v167 & 1) != v5)
        {
          v16 = v171;
          break;
        }
      }

      v49 = v160;
      v18 = v155;
      v50 = v156;
      v17 = v154;
      if (v167)
      {
        if (v16 < v154)
        {
          goto LABEL_132;
        }

        if (v154 < v16)
        {
          v51 = 8 * v16 - 8;
          v52 = v16;
          v53 = v154;
          do
          {
            if (v53 != --v52)
            {
              v55 = *v162;
              if (!*v162)
              {
                goto LABEL_140;
              }

              v54 = *(v55 + v49);
              *(v55 + v49) = *(v55 + v51);
              *(v55 + v51) = v54;
            }

            ++v53;
            v51 -= 8;
            v49 += 8;
          }

          while (v53 < v52);
        }
      }
    }

    v56 = v162[1];
    if (v16 < v56)
    {
      if (__OFSUB__(v16, v17))
      {
        goto LABEL_129;
      }

      if (v16 - v17 < v50)
      {
        if (__OFADD__(v17, v50))
        {
          goto LABEL_130;
        }

        if (v17 + v50 >= v56)
        {
          v5 = v162[1];
        }

        else
        {
          v5 = v17 + v50;
        }

        if (v5 < v17)
        {
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          v141 = sub_29E14D410(a5);
          goto LABEL_102;
        }

        if (v16 != v5)
        {
          break;
        }
      }
    }

    v5 = v16;
    if (v16 < v17)
    {
      goto LABEL_128;
    }

LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_29E143B40(0, *(v18 + 2) + 1, 1, v18);
    }

    a5 = *(v18 + 2);
    v57 = *(v18 + 3);
    v58 = a5 + 1;
    if (a5 >= v57 >> 1)
    {
      v18 = sub_29E143B40((v57 > 1), a5 + 1, 1, v18);
    }

    *(v18 + 2) = v58;
    v59 = &v18[16 * a5];
    *(v59 + 4) = v17;
    *(v59 + 5) = v5;
    v158 = v5;
    v5 = *v157;
    if (!*v157)
    {
      goto LABEL_142;
    }

    if (a5)
    {
      while (1)
      {
        v60 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v61 = *(v18 + 4);
          v62 = *(v18 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_53:
          if (v64)
          {
            goto LABEL_117;
          }

          v77 = &v18[16 * v58];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_120;
          }

          v83 = &v18[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_124;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v58 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v87 = &v18[16 * v58];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_67:
        if (v82)
        {
          goto LABEL_119;
        }

        v90 = &v18[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_122;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_74:
        v98 = v60 - 1;
        if (v60 - 1 >= v58)
        {
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
          goto LABEL_131;
        }

        v99 = *v162;
        if (!*v162)
        {
          goto LABEL_139;
        }

        v100 = v18;
        v101 = *&v18[16 * v98 + 32];
        v102 = *&v18[16 * v60 + 32];
        v103 = *&v18[16 * v60 + 40];
        v104 = (v99 + 8 * v101);
        a5 = v99 + 8 * v102;
        v105 = (v99 + 8 * v103);

        v106 = v104;
        v107 = v166;
        sub_29E1348D4(v106, a5, v105, v5);
        v166 = v107;
        if (v107)
        {

          return;
        }

        if (v103 < v101)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_29E14D410(v100);
        }

        if (v98 >= *(v100 + 2))
        {
          goto LABEL_114;
        }

        v108 = &v100[16 * v98];
        *(v108 + 4) = v101;
        *(v108 + 5) = v103;
        v176 = v100;
        sub_29E14D384(v60);
        v18 = v176;
        v58 = *(v176 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v18[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_115;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_116;
      }

      v72 = &v18[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_118;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_121;
      }

      if (v76 >= v68)
      {
        v94 = &v18[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_125;
        }

        if (v63 < v97)
        {
          v60 = v58 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v16 = v162[1];
    v17 = v158;
    if (v158 >= v16)
    {
      goto LABEL_99;
    }
  }

  v155 = v18;
  v167 = *v162;
  v109 = v167 + 8 * v16 - 8;
  v154 = v17;
  v110 = (v17 - v16);
  v158 = v5;
LABEL_85:
  v165 = v16;
  v111 = v110;
  v112 = *(v167 + 8 * v16);
  v159 = v111;
  v160 = v109;
  v113 = v111;
  v114 = v109;
  while (1)
  {
    v115 = *v114;
    v116 = v112;
    v117 = v115;
    v118 = [v117 endDate];
    sub_29E2BCB44();
    v119 = [v116 categoryType];
    v120 = sub_29DF3D08C();
    v122 = v121;

    if (v122)
    {
      break;
    }

    v170 = v113;
    if (v120 >= 4)
    {
      goto LABEL_144;
    }

    v123 = sub_29DEB1368();
    v125 = v124;
    v171 = v116;
    v126 = [v116 endDate];
    sub_29E2BCB44();
    v127 = v117;
    v128 = [v117 categoryType];
    v129 = sub_29DF3D08C();
    v131 = v130;

    if (v131)
    {
      goto LABEL_135;
    }

    if (v129 >= 4)
    {
      goto LABEL_144;
    }

    v132 = sub_29DEB1368();
    v133 = v172;
    v134 = v173;
    v136 = sub_29E133C6C(v173, v123, v125, v172, v132, v135);

    v137 = v169;
    a5 = *v168;
    (*v168)(v133, v169);
    (a5)(v134, v137);

    if (v136)
    {
      v138 = v170;
      if (!v167)
      {
        goto LABEL_136;
      }

      v139 = *v114;
      v112 = *(v114 + 8);
      *v114 = v112;
      *(v114 + 8) = v139;
      v114 -= 8;
      v140 = __CFADD__(v138, 1);
      v113 = v138 + 1;
      if (!v140)
      {
        continue;
      }
    }

    v16 = v165 + 1;
    v109 = v160 + 8;
    v110 = v159 - 1;
    v5 = v158;
    if (v165 + 1 != v158)
    {
      goto LABEL_85;
    }

    v18 = v155;
    v17 = v154;
    if (v158 < v154)
    {
      goto LABEL_128;
    }

    goto LABEL_34;
  }

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
  sub_29E2C4724();
  __break(1u);
}

void sub_29E13656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v53);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v47 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v51 = (v11 + 8);
    v52 = &v46 - v12;
    v54 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    v16 = &off_29F363000;
LABEL_5:
    v49 = v14;
    v50 = a3;
    v17 = *(v54 + 8 * a3);
    v48 = v15;
    v18 = v15;
    while (1)
    {
      v55 = v18;
      v19 = *v14;
      v20 = v17;
      v21 = v19;
      v22 = v16[448];
      v56 = v21;
      v23 = [v21 v22];
      sub_29E2BCB44();
      v57 = v20;
      v24 = [v20 categoryType];
      v25 = sub_29DF3D08C();
      v27 = v26;

      if (v27)
      {
        break;
      }

      if (v25 >= 4)
      {
        goto LABEL_18;
      }

      v28 = sub_29DEB1368();
      v30 = v29;
      v31 = [v57 v16[448]];
      v32 = v9;
      sub_29E2BCB44();
      v33 = [v56 categoryType];
      v34 = sub_29DF3D08C();
      v36 = v35;

      if (v36)
      {
        goto LABEL_16;
      }

      if (v34 >= 4)
      {
        goto LABEL_18;
      }

      v37 = sub_29DEB1368();
      v38 = v52;
      v9 = v32;
      v40 = sub_29E133C6C(v52, v28, v30, v32, v37, v39);

      v41 = *v51;
      v42 = v53;
      (*v51)(v32, v53);
      v41(v38, v42);

      v16 = &off_29F363000;
      v43 = v55;
      if (v40)
      {
        if (!v54)
        {
          goto LABEL_17;
        }

        v44 = *v14;
        v17 = *(v14 + 8);
        *v14 = v17;
        *(v14 + 8) = v44;
        v14 -= 8;
        v45 = __CFADD__(v43, 1);
        v18 = v43 + 1;
        if (!v45)
        {
          continue;
        }
      }

      a3 = v50 + 1;
      v14 = v49 + 8;
      v15 = v48 - 1;
      if (v50 + 1 == v47)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_29E2C4724();
    __break(1u);
  }
}

uint64_t sub_29E1368D4(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_29E2C48C4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x29EDCA190];
      }

      else
      {
        sub_29DE9408C(0, &qword_2A1A61D50);
        v8 = sub_29E2C3664();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v7;

      sub_29E1359FC(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
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
    sub_29E13656C(0, v4, 1, a1);
  }
}

uint64_t sub_29E136A28(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_29E145FEC(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_29E1368D4(v8, a2);

  sub_29E2C4624();
}

uint64_t sub_29E136AD4(uint64_t a1, unint64_t a2)
{
  sub_29E00C82C();
  result = sub_29E2C4784();
  v5 = 0;
  v28 = result;
  v29 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v27 = result + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(*(v29 + 56) + 8 * v16);
      v31 = *(*(v29 + 48) + v16);
      if (!(v17 >> 62))
      {
        break;
      }

      v23 = sub_29E2C4484();
      if (!v23)
      {
        v18 = MEMORY[0x29EDCA190];
        goto LABEL_12;
      }

      v26 = v23;
      v18 = sub_29E151758(v23, 0);
      swift_bridgeObjectRetain_n();
      v19 = a2;

      sub_29E14DC98(v18 + 32, v26, v17);
      v25 = v24;

      if (v25 != v26)
      {
        goto LABEL_24;
      }

LABEL_13:
      v32 = v18;
      sub_29E136A28(&v32, v19);
      if (v2)
      {
        goto LABEL_25;
      }

      result = v28;
      *(v27 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(v28[6] + v16) = v31;
      *(v28[7] + 8 * v16) = v32;
      v20 = v28[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_23;
      }

      v28[2] = v22;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v18 = v17 & 0xFFFFFFFFFFFFFF8;
    sub_29E2BF404();
LABEL_12:
    sub_29E2BF404();
    v19 = a2;

    goto LABEL_13;
  }

LABEL_5:
  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v12)
    {
      return result;
    }

    v15 = *(v7 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
  return result;
}

void sub_29E136D14()
{
  if (!qword_2A181D880)
  {
    sub_29E134EF8(255, &qword_2A181D9F0, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181D880);
    }
  }
}

void sub_29E136D9C()
{
  if (!qword_2A181D888)
  {
    sub_29E2BCBB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181D888);
    }
  }
}

uint64_t sub_29E136E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E136E64(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_29DE9657C;

  return sub_29E135210(a1, a2, v2);
}

unint64_t sub_29E136F1C(unint64_t *a1, uint64_t a2)
{
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v43 - v11;
  v13 = *a1;
  result = sub_29E1353D8(*a1, a2);
  v44 = v2;
  if (v2)
  {
    return v3;
  }

  v46 = a1;
  if (v15)
  {
    if (v13 >> 62)
    {
      return sub_29E2C4484();
    }

    return *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = result;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v52 = v7 + 16;
  v53 = v9;
  v54 = a2 + 56;
  v55 = (v7 + 8);
  v45 = v7;
  v57 = v6;
  v16 = result + 1;
  v56 = v12;
  while (1)
  {
    if (v13 >> 62)
    {
      if (v16 == sub_29E2C4484())
      {
        return v3;
      }
    }

    else if (v16 == *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

    v50 = v13;
    v51 = v3;
    v49 = v16;
    v47 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x29ED80D70](v16, v13);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v17 = *(v13 + 8 * v16 + 32);
    }

    v48 = v17;
    v18 = [v17 UUID];
    sub_29E2BCC04();

    if (!*(a2 + 16))
    {
      break;
    }

    sub_29E13782C(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
    v19 = sub_29E2C3244();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      break;
    }

    v22 = ~v20;
    v23 = *(v45 + 72);
    v24 = *(v45 + 16);
    while (1)
    {
      v25 = a2;
      v26 = v53;
      v27 = v57;
      v24(v53, *(a2 + 48) + v23 * v21, v57);
      sub_29E13782C(&qword_2A181D9E0, MEMORY[0x29EDB9C08]);
      v28 = sub_29E2C3304();
      v29 = *v55;
      (*v55)(v26, v27);
      if (v28)
      {
        break;
      }

      v21 = (v21 + 1) & v22;
      a2 = v25;
      if (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v29(v56, v57);

    a2 = v25;
    v13 = v50;
    v3 = v51;
    v31 = v49;
LABEL_40:
    v42 = __OFADD__(v31, 1);
    v16 = v31 + 1;
    if (v42)
    {
      goto LABEL_50;
    }
  }

LABEL_22:
  (*v55)(v56, v57);

  v30 = v51;
  v31 = v49;
  if (v51 == v49)
  {
    v13 = v50;
    v3 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_51;
    }

    goto LABEL_40;
  }

  v13 = v50;
  if (v47)
  {
    v32 = MEMORY[0x29ED80D70](v51, v50);
    v33 = MEMORY[0x29ED80D70](v31, v13);
  }

  else
  {
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    v34 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51 >= v34)
    {
      goto LABEL_54;
    }

    if (v49 >= v34)
    {
      goto LABEL_55;
    }

    v35 = *(v50 + 32 + 8 * v49);
    v32 = *(v50 + 32 + 8 * v51);
    v33 = v35;
  }

  v36 = v33;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    v13 = sub_29E151750(v13);
    v37 = (v13 >> 62) & 1;
  }

  else
  {
    LODWORD(v37) = 0;
  }

  v38 = v13 & 0xFFFFFFFFFFFFFF8;
  v39 = *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
  *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20) = v36;

  if ((v13 & 0x8000000000000000) == 0 && !v37)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

  v13 = sub_29E151750(v13);
  v38 = v13 & 0xFFFFFFFFFFFFFF8;
  if ((v31 & 0x8000000000000000) == 0)
  {
LABEL_38:
    if (v31 >= *(v38 + 16))
    {
      goto LABEL_52;
    }

    v40 = v38 + 8 * v31;
    v41 = *(v40 + 32);
    *(v40 + 32) = v32;

    *v46 = v13;
    v42 = __OFADD__(v30, 1);
    v3 = v30 + 1;
    if (v42)
    {
      goto LABEL_51;
    }

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
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
  return sub_29E2C4484();
}

uint64_t sub_29E13740C(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_29E2BCC24();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E1374CC, 0, 0);
}

uint64_t sub_29E1374CC()
{
  v28 = v0;
  sub_29E134EF8(0, &unk_2A181D970, MEMORY[0x29EDBA248]);
  v1 = sub_29E2C2FF4();
  swift_beginAccess();
  sub_29DFCB5D4(v1);
  swift_endAccess();
  v2 = sub_29E2C3004();
  if (v2 >> 62)
  {
    v17 = v2;
    v3 = sub_29E2C4484();
    v2 = v17;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x29EDCA190];
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = v2;
  v27 = MEMORY[0x29EDCA190];
  v5 = &v27;
  sub_29E18167C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
LABEL_20:
    result = sub_29E2C4484();
    v23 = result;
    if (result >= v5)
    {
      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v0[14];
  v8 = v27;
  v9 = v4;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x29ED80D70](v6);
    }

    else
    {
      v10 = *(v9 + 8 * v6 + 32);
    }

    v11 = v10;
    v12 = [v11 UUID];
    sub_29E2BCC04();

    v27 = v8;
    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_29E18167C(v13 > 1, v14 + 1, 1);
      v8 = v27;
    }

    v15 = v0[15];
    v16 = v0[13];
    ++v6;
    *(v8 + 16) = v14 + 1;
    (*(v7 + 32))(v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v15, v16);
    v9 = v4;
  }

  while (v3 != v6);

LABEL_14:
  v18 = v0[12];
  v19 = sub_29E14EE24(v8);

  swift_beginAccess();
  sub_29E2BF404();
  v5 = sub_29E136F1C((v18 + 16), v19);
  v20 = v0[12];

  v22 = *(v20 + 16);
  if (v22 >> 62)
  {
    goto LABEL_20;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23 < v5)
  {
    goto LABEL_21;
  }

LABEL_16:
  v24 = v0[12];
  sub_29E14F900(v5, v23);
  swift_endAccess();

  swift_beginAccess();
  v25 = *(v24 + 16);

  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_29E13782C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E1378D8()
{
  v18 = *v0;
  v16 = MEMORY[0x29EDCA298];
  v15 = MEMORY[0x29EDC9C68];
  sub_29E13A3A8(0, &qword_2A1A61D40, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v15 - v2;
  sub_29E13A40C();
  v17 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakAssign();
  v19 = sub_29E2C0374();
  sub_29DE9408C(0, &qword_2A1A626C0);
  v8 = sub_29E2C3CF4();
  v20 = v8;
  v9 = sub_29E2C3CE4();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_29E13A4D8();
  sub_29E139EAC(&qword_2A181D8D0, sub_29E13A4D8);
  sub_29DF4D6CC();
  sub_29E2C1354();
  sub_29E13A654(v3, &qword_2A1A61D40, v16, v15, sub_29E13A3A8);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v12 = v18;
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  sub_29E139EAC(&qword_2A181D8D8, sub_29E13A40C);
  v13 = v17;
  sub_29E2C1384();

  (*(v5 + 8))(v7, v13);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();
}

void sub_29E137CCC(void *a1)
{
  v2 = sub_29E2BCF24();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_29E2BCF24();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    sub_29E2BF964();
    sub_29E2BF134();
    sub_29E2BE764();

    sub_29DE9DC34(v11, v8);
    sub_29DF942BC(0, &qword_2A1819BD0);
    sub_29DF942BC(0, &qword_2A181BFA8);
    if (swift_dynamicCast())
    {
      v5 = v6;
LABEL_6:
      sub_29DE8EE78(v5, v10);
      sub_29DE966D4(v10, v10[3]);
      sub_29E2BEA84();

      sub_29DE93B3C(v11);
      sub_29DE93B3C(v10);
      return;
    }

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_29E13A654(v6, &unk_2A181BFB0, &qword_2A181BFA8, MEMORY[0x29EDC21C0], sub_29E0AD5F4);
    *&v6[0] = v4;
    sub_29DE9408C(0, &unk_2A18199D0);
    v4 = v4;
    if (swift_dynamicCast())
    {
      v5 = v8;
      goto LABEL_6;
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_29DE93B3C(v11);
    sub_29E13A654(v8, &unk_2A181BFB0, &qword_2A181BFA8, MEMORY[0x29EDC21C0], sub_29E0AD5F4);
  }
}

uint64_t sub_29E137F28(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = a3;
  v10 = a1;
  sub_29E137CCC(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29E1380AC()
{
  result = sub_29E2BFDD4();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E138174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29E2BEBB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v57 - v9;
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v57 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v19 = result;
  v63 = a3;
  v64 = v11;
  v20 = sub_29E2C0354();
  v21 = sub_29E0BCE80(v20);

  if (v21)
  {
    v61 = v4;
    v62 = v10;
    if (v21 >> 62)
    {
      if (sub_29E2C4484() >= 1)
      {
        goto LABEL_5;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_5:
      v59 = v8;
      v60 = v5;
      sub_29E2C0494();
      swift_bridgeObjectRetain_n();
      v22 = sub_29E2C0504();
      v23 = sub_29E2C3A34();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v65 = v58;
        *v24 = 136446466;
        v25 = sub_29E2C4AE4();
        v27 = sub_29DFAA104(v25, v26, &v65);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2048;
        if (v21 >> 62)
        {
          v28 = sub_29E2C4484();
        }

        else
        {
          v28 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v24 + 14) = v28;

        _os_log_impl(&dword_29DE74000, v22, v23, "[%{public}s] Showing %ld medication(s) to review", v24, 0x16u);
        v29 = v58;
        sub_29DE93B3C(v58);
        MEMORY[0x29ED82140](v29, -1, -1);
        MEMORY[0x29ED82140](v24, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v12 + 8))(v17, v64);
      v30 = qword_2A18410C0;
      v31 = sub_29E2C3654();
      v33 = v32;
      v35 = v34;

      v36 = (v19 + qword_2A18410D0);
      v37 = *(v19 + qword_2A18410D0);
      *v36 = v31;
      v36[1] = v33;
      v36[2] = v35;
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E13A548(v37);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E138818(v31, v33, v35, 0xD00000000000001ALL, 0x800000029E302CA0, v19 + v30, Strong);

      v39 = swift_unknownObjectWeakLoadStrong();
      v40 = v59;
      sub_29E138818(v31, v33, v35, 0xD00000000000001ALL, 0x800000029E302C60, v19 + v30, v39);

      sub_29E13A3A8(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
      v41 = v60;
      v42 = *(v60 + 72);
      v43 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_29E2CD7A0;
      v45 = v44 + v43;
      v46 = *(v41 + 16);
      v48 = v61;
      v47 = v62;
      v46(v45, v62, v61);
      v46(v45 + v42, v40, v48);
      sub_29E2BEC74();

      v49 = *(v41 + 8);
      v49(v40, v48);
      return (v49)(v47, v48);
    }
  }

  sub_29E2C0494();
  v50 = sub_29E2C0504();
  v51 = sub_29E2C3A34();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65 = v53;
    *v52 = 136446210;
    v54 = sub_29E2C4AE4();
    v56 = sub_29DFAA104(v54, v55, &v65);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_29DE74000, v50, v51, "[%{public}s] No medications available to review", v52, 0xCu);
    sub_29DE93B3C(v53);
    MEMORY[0x29ED82140](v53, -1, -1);
    MEMORY[0x29ED82140](v52, -1, -1);
  }

  (*(v12 + 8))(v15, v64);
  sub_29E2BEC74();
}

uint64_t sub_29E138818(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 == 0xD00000000000001ALL && 0x800000029E302CA0 == a5 || (sub_29E2C4914() & 1) != 0)
  {
    v14 = sub_29E2BF404();
LABEL_9:
    MEMORY[0x2A1C7C4A8](v14);
    v19[2] = a6;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a7;
    v19[6] = v7;
    sub_29E249060(sub_29E13A594, v19, a1);
    v17 = v16;

    sub_29E13DFC0(v17);

    sub_29E2BF404();
    return sub_29E2BEBA4();
  }

  v20 = v7;
  if (a4 == 0xD00000000000001ALL && 0x800000029E302C60 == a5 || (sub_29E2C4914() & 1) != 0)
  {
    v21 = a2;
    sub_29E2BF404();
    v15 = sub_29E2BF404();
    v14 = sub_29DFCBEA8(v15);
    a1 = a2;
    v7 = v20;
    goto LABEL_9;
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29E138A0C(uint64_t a1, void *a2, void *a3)
{
  v20 = a3;
  v5 = sub_29E2BFDD4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29DE9408C(0, &qword_2A181D8E0);
  v22 = v9;
  v23 = MEMORY[0x29EDC31E8];
  v21[0] = a2;
  v10 = a2;
  v11 = sub_29E2BFDC4();
  v13 = v12;
  sub_29DE93B3C(v21);
  if (!v13)
  {
    v11 = sub_29E2BFDB4();
  }

  v19[1] = v11;
  sub_29E2C3F54();
  if (v22)
  {
    sub_29DE966D4(v21, v22);
    sub_29E2BDCF4();
    sub_29DE93B3C(v21);
  }

  else
  {
    sub_29E13A654(v21, &unk_2A181D8F0, &unk_2A181D8F8, MEMORY[0x29EDC4118], sub_29E0AD5F4);
  }

  (*(v6 + 16))(v8, a1, v5);
  v22 = v9;
  v23 = MEMORY[0x29EDC31E8];
  v21[0] = v10;
  v14 = objc_allocWithZone(sub_29E2BFE04());
  v15 = v10;
  v16 = sub_29E2BFDF4();
  v17 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  sub_29E2BFDE4();
  v18 = v17;
  [v18 setModalInPresentation_];
  sub_29DE9408C(0, &qword_2A181D900);
  [swift_getObjCClassFromMetadata() preferredContentSize];
  [v18 setPreferredContentSize_];

  if (v20)
  {
    [v20 presentViewController:v18 animated:1 completion:0];
  }
}

uint64_t sub_29E138CC0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a6;
  v77 = a5;
  v89 = a2;
  v9 = sub_29E2BFE14();
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v83 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_29E2BFD94();
  v72 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73);
  v71 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E13A3A8(0, &unk_2A1A626B0, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v70 = &v60 - v13;
  v76 = sub_29E2BFDD4();
  v14 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76);
  v75 = v15;
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29E2BCC84();
  v68 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v87 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_29E2C3384();
  v18 = *(v88 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v88);
  v85 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v86 = &v60 - v21;
  v22 = sub_29E2BFE34();
  v79 = *(v22 - 8);
  v80 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *a1;
  if (a3 == 0xD00000000000001ALL && 0x800000029E302CA0 == a4)
  {
    v91 = 1;
  }

  else
  {
    v91 = sub_29E2C4914();
  }

  v78 = v24;
  v25 = v86;
  sub_29E2C3314();
  v26 = *(v18 + 16);
  v27 = v88;
  v65 = v18 + 16;
  v64 = v26;
  v26(v85, v25, v88);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v28 = qword_2A1A67F80;
  v61 = qword_2A1A67F80;
  sub_29E2BCC74();
  v66 = "EDING_ALERT_MESSAGE";
  v63 = v28;
  sub_29E2C3414();
  v29 = *(v18 + 8);
  v67 = v18 + 8;
  v62 = v29;
  v29(v25, v27);
  v30 = v76;
  (*(v14 + 16))(v16, v89, v76);
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v32 = (v75 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v14 + 32))(v33 + v31, v16, v30);
  v34 = v74;
  *(v33 + v32) = v74;
  v35 = v77;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v77;
  v36 = v35;
  v37 = v34;
  v38 = v78;
  sub_29E2BFE24();
  v39 = 0;
  if (v91)
  {
    sub_29DE9408C(0, &qword_2A1819798);
    v39 = sub_29E2C4124();
  }

  v40 = [v37 semanticIdentifier];
  v41 = [v40 stringValue];

  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v77 = v42;

  v90[5] = v37;
  v43 = sub_29DE9408C(0, &qword_2A181D8E0);
  v76 = sub_29E2C03A4();
  v75 = v44;
  v90[3] = v43;
  v90[4] = MEMORY[0x29EDC31E8];
  v90[0] = v37;
  v37;
  sub_29E2BFDC4();
  v46 = v45;
  sub_29DE93B3C(v90);
  if (!v46)
  {
    v47 = v86;
    sub_29E2C3314();
    v48 = v88;
    v64(v85, v47, v88);
    v49 = v61;
    sub_29E2BCC74();
    sub_29E2C3414();
    v62(v47, v48);
    v50 = *(v68 + 56);
    v89 = v39;
    v51 = v70;
    v50(v70, 1, 1, v69);
    v52 = v71;
    sub_29E2BFD74();
    sub_29E2BFE44();

    (*(v72 + 8))(v52, v73);
    sub_29E13A654(v51, &unk_2A1A626B0, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68], sub_29E13A3A8);
  }

  v53 = v83;
  sub_29E2C3F64();
  (*(v81 + 104))(v53, *MEMORY[0x29EDC31D8], v82);
  sub_29E13A3A8(0, &qword_2A181D8E8, MEMORY[0x29EDC31E0], MEMORY[0x29EDC9E90]);
  v54 = v79;
  v55 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_29E2CAB20;
  v57 = v56 + v55;
  v58 = v80;
  (*(v54 + 16))(v57, v38, v80);
  sub_29E2BFD54();
  return (*(v54 + 8))(v38, v58);
}

uint64_t sub_29E139710()
{
  v1 = qword_2A18410C0;
  v2 = sub_29E2BFDD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_29E13A548(*(v0 + qword_2A18410D0));
  MEMORY[0x29ED82270](v0 + qword_2A18410D8);
}

uint64_t sub_29E1397C0()
{
  v0 = sub_29E2BED44();
  v1 = qword_2A18410C0;
  v2 = sub_29E2BFDD4();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  sub_29E13A548(*(v0 + qword_2A18410D0));
  MEMORY[0x29ED82270](v0 + qword_2A18410D8);

  return swift_deallocClassInstance();
}

uint64_t sub_29E1398DC()
{
  v1 = v0;
  v2 = sub_29E2BEE54();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BE714();
  v7 = sub_29E2BF0A4();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= *(v6 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v6 + 16 * v7;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  sub_29E2BF404();

  if (v10 == 0xD00000000000001ALL && 0x800000029E302C60 == v9)
  {
  }

  else
  {
    v12 = sub_29E2C4914();

    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v13 = *(v1 + qword_2A18410D0);
  if (!v13)
  {
    goto LABEL_17;
  }

  if (v13 >> 62)
  {
LABEL_16:
    if (sub_29E2C4484())
    {
      goto LABEL_13;
    }

LABEL_17:
    sub_29E2BEE14();
    goto LABEL_18;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_13:
  sub_29E2BEE04();
LABEL_18:
  sub_29E2BEE24();
  sub_29E2BF074();
  v14 = sub_29E2BEE44();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v14;
}

uint64_t sub_29E139B28@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2BFD94();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDB9C70];
  v8 = MEMORY[0x29EDC9C68];
  sub_29E13A3A8(0, &unk_2A1A626B0, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v19 - v10;
  v12 = sub_29E2BCC84();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_29E2BFD84();
  v13 = sub_29E2BFE44();
  v15 = v14;
  (*(v4 + 8))(v6, v3);
  sub_29E13A654(v11, &unk_2A1A626B0, v7, v8, sub_29E13A3A8);
  v19[0] = v13;
  v19[1] = v15;
  sub_29DE9DE68();
  sub_29E2C4364();

  v16 = sub_29E2BE0B4();
  sub_29E2C0884();
  v17 = sub_29E2BE0A4();
  a1[3] = v16;
  result = sub_29E139EAC(&unk_2A181CC00, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v17;
  return result;
}

uint64_t sub_29E139E3C()
{
  sub_29E2BFDA4();
  sub_29E139EAC(&qword_2A181D8B8, MEMORY[0x29EDC3110]);
  return sub_29E2C3B74();
}

uint64_t sub_29E139EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E139EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + qword_2A18410D0);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A181D8A0) = MEMORY[0x29EDCA1A0];
  v11 = qword_2A18410C0;
  v12 = sub_29E2BFDD4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v3 + v11, a1, v12);
  *(v3 + qword_2A18410C8) = a2;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;

  sub_29E2C4584();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_29E2BCC14();
  v14 = sub_29E2BCBD4();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x29ED7FCC0](v14, v16);

  MEMORY[0x29ED7FCC0](62, 0xE100000000000000);
  v17 = sub_29E2BEC54();
  (*(v13 + 8))(a1, v12);
  return v17;
}

id sub_29E13A130(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BFDD4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MedicationsReviewDataSource(0);
  swift_allocObject();
  v8 = sub_29E139EF4(v7, a2);
  sub_29E13A33C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E2CAB20;
  v10 = MEMORY[0x29EDC2280];
  *(v9 + 32) = v8;
  *(v9 + 40) = v10;
  sub_29E2BF134();
  swift_allocObject();

  sub_29E2BF154();
  v11 = sub_29E2BF974();
  result = [v11 collectionView];
  if (result)
  {
    v13 = result;
    v14 = [objc_opt_self() systemBackgroundColor];
    [v13 setBackgroundColor_];

    sub_29E1378D8();

    (*(v5 + 8))(a1, v4);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E13A33C()
{
  if (!qword_2A1818B80)
  {
    sub_29DF942BC(255, &qword_2A181DB40);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818B80);
    }
  }
}

void sub_29E13A3A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E13A40C()
{
  if (!qword_2A181D8C0)
  {
    sub_29E13A4D8();
    sub_29DE9408C(255, &qword_2A1A626C0);
    sub_29E139EAC(&qword_2A181D8D0, sub_29E13A4D8);
    sub_29DF4D6CC();
    v0 = sub_29E2C0FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D8C0);
    }
  }
}

void sub_29E13A4D8()
{
  if (!qword_2A181D8C8)
  {
    sub_29E2C0394();
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D8C8);
    }
  }
}

uint64_t sub_29E13A548(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_29E13A5BC()
{
  v1 = *(sub_29E2BFDD4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29E138A0C(v0 + v2, v4, v5);
}

uint64_t sub_29E13A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29E13A6B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CycleTimelineCollectionViewLayoutAttributes();
  v21.receiver = v2;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, sel_copyWithZone_, a1);
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v6 = *&v22[0];
  *(*&v22[0] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_zoomLevel) = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_zoomLevel];
  v7 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 80];
  v22[4] = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 64];
  v22[5] = v7;
  v8 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 48];
  v22[2] = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 32];
  v22[3] = v8;
  v9 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 144];
  v22[8] = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 128];
  v22[9] = v9;
  v10 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 112];
  v22[6] = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 96];
  v22[7] = v10;
  v11 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 16];
  v22[0] = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration];
  v22[1] = v11;
  v12 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 16);
  v23[0] = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration);
  v23[1] = v12;
  v13 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 32);
  v14 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 48);
  v15 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 80);
  v23[4] = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 64);
  v23[5] = v15;
  v23[2] = v13;
  v23[3] = v14;
  v16 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 96);
  v17 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 112);
  v18 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 144);
  v23[8] = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 128);
  v23[9] = v18;
  v23[6] = v16;
  v23[7] = v17;
  memmove((v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration), &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration], 0xA0uLL);
  sub_29DF8944C(v22, &v20);
  result = sub_29DF8950C(v23);
  a2[3] = v5;
  *a2 = v6;
  return result;
}

void sub_29E13A83C(uint64_t a1@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  sub_29DEC0D64(a1, &v35);
  if (!*(&v36 + 1))
  {
    sub_29DEC0CB4(&v35);
    goto LABEL_8;
  }

  v6 = type metadata accessor for CycleTimelineCollectionViewLayoutAttributes();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v28 = 0;
    goto LABEL_12;
  }

  v7 = *&v34[0];
  if (*(*&v34[0] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_zoomLevel) == *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_zoomLevel] && (v8 = *(*&v34[0] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 16), v34[0] = *(*&v34[0] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration), v34[1] = v8, v9 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 32], v10 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 48], v11 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 80], v34[4] = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 64], v34[5] = v11, v34[2] = v9, v34[3] = v10, v12 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 96], v13 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 112], v14 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 144], v34[8] = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 128], v34[9] = v14, v34[6] = v12, v34[7] = v13, v15 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 112], v41 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 96], v42 = v15, v16 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 144], v43 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 128], v44 = v16, v17 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 48], v37 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 32], v38 = v17, v18 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 80], v39 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 64], v40 = v18, v19 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 16], v35 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration], v36 = v19, sub_29DF8944C(v34, v32), sub_29DF8944C(&v35, v32), v20 = sub_29E1A9D00(v34, &v35), sub_29DF8950C(&v35), sub_29DF8950C(v34), v20))
  {
    sub_29DEC0D64(a1, v32);
    v21 = v33;
    if (v33)
    {
      v22 = sub_29DE966D4(v32, v33);
      v45 = &v29;
      v30 = *(v21 - 8);
      v23 = MEMORY[0x2A1C7C4A8](v22);
      v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25, v23);
      v27 = sub_29E2C4904();
      (*(v30 + 8))(v25, v21);
      sub_29DE93B3C(v32);
    }

    else
    {
      v27 = 0;
    }

    v31.receiver = a2;
    v31.super_class = v6;
    v28 = objc_msgSendSuper2(&v31, sel_isEqual_, v27);
    swift_unknownObjectRelease();
  }

  else
  {

    v28 = 0;
  }

LABEL_12:
  *a3 = v28;
}

id sub_29E13AC90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleTimelineCollectionViewLayoutAttributes();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E13AD5C(uint64_t a1)
{
  v3 = sub_29E2C02D4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v27 - v8;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v10, &v34);
  if (!*(&v35 + 1))
  {
    sub_29DF61E50(&v34);
    goto LABEL_9;
  }

  sub_29DF61DEC();
  type metadata accessor for PregnancyModeTimelineItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    swift_beginAccess();
    sub_29DEF9180(&v34, v1 + v10);
    return swift_endAccess();
  }

  v29 = v3;
  v30 = v9;
  v31 = v6;
  v32 = v4;
  v11 = v33;
  v12 = a1;
  v13 = *(v33 + 56);
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 56);
  swift_unknownObjectRetain();
  v28 = v1;
  v15(v1, &off_2A24BC1F0, ObjectType, v13);
  swift_unknownObjectRelease();
  sub_29DEC3518(v12, &v34);
  if (*(&v35 + 1))
  {
    v16 = v11;
    if (swift_dynamicCast())
    {
      v17 = v33;
      v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineItem_viewModel;
      swift_beginAccess();
      v19 = v32;
      v20 = *(v32 + 16);
      v21 = v29;
      v22 = v30;
      v20(v30, v17 + v18, v29);
      v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineItem_viewModel;
      swift_beginAccess();
      v24 = v31;
      v20(v31, v16 + v23, v21);
      sub_29E13C3E4(&qword_2A181D928, MEMORY[0x29EDC3418]);
      LOBYTE(v23) = sub_29E2C3304();
      v25 = *(v19 + 8);
      v25(v24, v21);
      v25(v22, v21);
      if ((v23 & 1) == 0)
      {
        [v28 setNeedsUpdateConfiguration];
      }
    }

    else
    {
    }
  }

  else
  {

    return sub_29DF61E50(&v34);
  }
}

void (*sub_29E13B0B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_29DEC3518(v1 + v5, v4);
  return sub_29E13B14C;
}

void sub_29E13B14C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_29DEC3518(*a1, v2 + 40);
    sub_29DEC3518(v3 + v4, v2 + 80);
    swift_beginAccess();
    sub_29DEC3690(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_29E13AD5C(v2 + 80);
    sub_29DF61E50(v2 + 80);
  }

  else
  {
    sub_29DEC3518(v3 + v4, v2 + 40);
    swift_beginAccess();
    sub_29DEC3690(v2, v3 + v4);
    swift_endAccess();
    sub_29E13AD5C(v2 + 40);
  }

  sub_29DF61E50(v2 + 40);
  sub_29DF61E50(v2);

  free(v2);
}

char *sub_29E13B234(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_updateCurrentDayOperation] = 0;
  v10 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setAutomaticallyUpdatesContentConfiguration_];
  v12 = v11;
  [v12 setAutomaticallyUpdatesBackgroundConfiguration_];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v22 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000001CLL, 0x800000029E301840);
  v13 = sub_29E2C33A4();

  [v12 setAccessibilityIdentifier_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v12;

  sub_29E2C3E04();

  sub_29DEB1E60();
  v15 = sub_29E2C3CF4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = objc_allocWithZone(MEMORY[0x29EDBAED8]);
  v25 = sub_29E13C1D0;
  v26 = v16;
  *&v22 = MEMORY[0x29EDCA5F8];
  *(&v22 + 1) = 1107296256;
  v23 = sub_29DF49BB8;
  v24 = &unk_2A24BC230;
  v18 = _Block_copy(&v22);

  v19 = [v17 initWithMode:0 clock:1 queue:v15 delay:v18 block:0.25];

  _Block_release(v18);

  v20 = *&v14[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_updateCurrentDayOperation];
  *&v14[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_updateCurrentDayOperation] = v19;

  return v14;
}

void sub_29E13B520(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E2C06E4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E13C1F0(0, &qword_2A181CEA8, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v24 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24[1] = a2;
  MEMORY[0x2A1C7C4A8](Strong);
  v24[-2] = v11;
  v12 = v11;
  sub_29E13C25C();
  v25[3] = v13;
  v25[4] = sub_29E13C3E4(&qword_2A181D950, sub_29E13C25C);
  sub_29DEBB7E8(v25);
  sub_29E13C1F0(0, &qword_2A181D938, type metadata accessor for PregnancyModeTimelineView, MEMORY[0x29EDC9C68]);
  sub_29E13C30C();
  v14 = v12;
  sub_29E2C1DE4();
  MEMORY[0x29ED805A0](v25);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A67F80;
  v16 = sub_29E2C33A4();
  v17 = objc_opt_self();
  v18 = [v17 colorNamed:v16 inBundle:v15 compatibleWithTraitCollection:0];

  if (!v18)
  {
    __break(1u);
    goto LABEL_12;
  }

  v19 = sub_29E2C33A4();
  v20 = [v17 colorNamed:v19 inBundle:v15 compatibleWithTraitCollection:0];

  if (!v20)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v21 = sub_29E2C0644();
  sub_29E2C06D4();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = v18;
  }

  v23 = v22;
  sub_29E2C06A4();
  (*(v4 + 32))(v9, v6, v3);

  (*(v4 + 56))(v9, 0, 1, v3);
  MEMORY[0x29ED805C0](v9);
}

uint64_t sub_29E13B8F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PregnancyModeTimelineView(0);
  v5 = *(v4 - 1);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_item;
  swift_beginAccess();
  sub_29DEC3518(a1 + v8, v23);
  if (!v24)
  {
    sub_29DF61E50(v23);
    goto LABEL_5;
  }

  sub_29DF61DEC();
  type metadata accessor for PregnancyModeTimelineItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v20 = 1;
    return (*(v5 + 56))(a2, v20, 1, v4);
  }

  v9 = v22[1];
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineItem_viewModel;
  swift_beginAccess();
  v11 = sub_29E2C02D4();
  (*(*(v11 - 8) + 16))(v7, v9 + v10, v11);
  [a1 bounds];
  v13 = v12;
  v15 = v14;

  v16 = v4[6];
  *&v7[v16] = swift_getKeyPath();
  v17 = MEMORY[0x29EDBC388];
  sub_29E13C1F0(0, &qword_2A181AE88, sub_29E03887C, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v18 = v4[7];
  *&v7[v18] = swift_getKeyPath();
  sub_29E13C1F0(0, &qword_2A1819020, MEMORY[0x29EDBC518], v17);
  swift_storeEnumTagMultiPayload();
  v19 = &v7[v4[5]];
  *v19 = v13;
  *(v19 + 1) = v15;
  *(v19 + 2) = 0;
  sub_29E13C42C(v7, a2);
  v20 = 0;
  return (*(v5 + 56))(a2, v20, 1, v4);
}

uint64_t sub_29E13BB94()
{
  v0 = sub_29E2C31A4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    return sub_29DF61E50(&v13);
  }

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_item;
  v6 = Strong;
  swift_beginAccess();
  sub_29DEC3518(v6 + v5, &v13);

  if (!*(&v14 + 1))
  {
    return sub_29DF61E50(&v13);
  }

  sub_29DF61DEC();
  type metadata accessor for PregnancyModeTimelineItem();
  result = swift_dynamicCast();
  if (result)
  {
    v8 = *(v12[1] + 56);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(ObjectType, v8);
    sub_29DF16DBC(v3);
    (*(v1 + 8))(v3, v0);
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      [v10 setNeedsUpdateConfiguration];
    }
  }

  return result;
}

uint64_t sub_29E13BE8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E13BEE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v3, v5);
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E13AD5C(v5);
  sub_29DF61E50(a1);
  return sub_29DF61E50(v5);
}

void (*sub_29E13BF7C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E13B0B4(v2);
  return sub_29DF61DA4;
}

id sub_29E13BFF0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v6 = sub_29E2C0504();
    v7 = sub_29E2C3A04();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = sub_29E2C4AE4();
      v12 = sub_29DFAA104(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Received current day update", v8, 0xCu);
      sub_29DE93B3C(v9);
      MEMORY[0x29ED82140](v9, -1, -1);
      MEMORY[0x29ED82140](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  result = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineCell_updateCurrentDayOperation);
  if (result)
  {
    return [result execute];
  }

  return result;
}

uint64_t sub_29E13C1D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E13C1F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E13C25C()
{
  if (!qword_2A181D930)
  {
    sub_29E13C1F0(255, &qword_2A181D938, type metadata accessor for PregnancyModeTimelineView, MEMORY[0x29EDC9C68]);
    sub_29E13C30C();
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D930);
    }
  }
}

unint64_t sub_29E13C30C()
{
  result = qword_2A181D940;
  if (!qword_2A181D940)
  {
    sub_29E13C1F0(255, &qword_2A181D938, type metadata accessor for PregnancyModeTimelineView, MEMORY[0x29EDC9C68]);
    sub_29E13C3E4(&qword_2A181D948, type metadata accessor for PregnancyModeTimelineView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D940);
  }

  return result;
}

uint64_t sub_29E13C3E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E13C42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PregnancyModeTimelineView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E13C490(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x29EDCA190];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x29ED80D70](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_29E2C4614();
        sub_29E2C4644();
        v4 = v15;
        sub_29E2C4654();
        sub_29E2C4624();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x29EDCA190];
LABEL_20:

  return v12;
}

uint64_t sub_29E13C63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x29EDCA398];
  sub_29E1501BC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8]();
  v11 = v24 - v10;
  sub_29E150A34(a3, v24 - v10, &qword_2A1A5E2F0, v9);
  v12 = sub_29E2C3734();
  v13 = *(v12 - 8);
  LODWORD(v9) = (*(v13 + 48))(v11, 1, v12);

  if (v9 == 1)
  {
    sub_29E150AB4(v11, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29E2C3724();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_29E2C36A4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_29E2C3454() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_29E150AB4(a3, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29E150AB4(a3, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_29E13C984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x29EDCA398];
  sub_29E1501BC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v25 - v11;
  sub_29E150A34(a3, v25 - v11, &qword_2A1A5E2F0, v9);
  v13 = sub_29E2C3734();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_29E150AB4(v12, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29E2C3724();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29E2C36A4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_29E2C3454() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_29E1515DC(0, &unk_2A181DC40, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDC9C68]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_29E150AB4(v25[0], &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29E150AB4(a3, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_29E1515DC(0, &unk_2A181DC40, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDC9C68]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_29E13CD28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x800000029E2EB230;
      v6 = 0xD000000000000010;
    }

    else if (a1 == 4)
    {
      v7 = 0xE700000000000000;
      v6 = 0x7373696D736964;
    }

    else
    {
      v7 = 0x800000029E2EB190;
      v6 = 0xD000000000000017;
    }
  }

  else
  {
    v4 = 0x800000029E2EB200;
    v5 = 0xD000000000000015;
    if (a1 != 1)
    {
      v5 = 0x6F4E646F69726570;
      v4 = 0xEE006465646E4574;
    }

    if (a1)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0xD000000000000017;
    }

    if (v3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0x800000029E2EB1E0;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000015;
      }

      else
      {
        v2 = 0x6F4E646F69726570;
      }

      if (a2 == 1)
      {
        v8 = 0x800000029E2EB200;
      }

      else
      {
        v8 = 0xEE006465646E4574;
      }

      goto LABEL_30;
    }

    v9 = "openMenstrualCyclesRoom";
    goto LABEL_29;
  }

  if (a2 == 3)
  {
    v8 = 0x800000029E2EB230;
    v2 = 0xD000000000000010;
  }

  else
  {
    if (a2 != 4)
    {
      v9 = "openPregnancyOnboarding";
LABEL_29:
      v8 = (v9 - 32) | 0x8000000000000000;
      goto LABEL_30;
    }

    v8 = 0xE700000000000000;
    v2 = 0x7373696D736964;
  }

LABEL_30:
  if (v6 == v2 && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_29E2C4914();
  }

  return v10 & 1;
}

uint64_t sub_29E13CEE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000776FLL;
  v3 = 0x6C4668636E75616CLL;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE700000000000000;
    v14 = 0x74696445646964;
    if (a1 != 2)
    {
      v14 = 0x74656C6544646964;
      v13 = 0xE900000000000065;
    }

    v15 = 0x547373696D736964;
    v16 = 0xEB00000000656C69;
    if (!a1)
    {
      v15 = 0x6C4668636E75616CLL;
      v16 = 0xEA0000000000776FLL;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x656C6C65636E6163;
    v6 = 0xE900000000000064;
    v7 = 0x6E4F646441646964;
    v8 = 0xEF65726F4D724F65;
    if (a1 != 7)
    {
      v7 = 0x6441746F4E646964;
      v8 = 0xE900000000000064;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0xD000000000000010;
    v10 = 0x800000029E2EB000;
    if (a1 != 4)
    {
      v9 = 0x64657070696B73;
      v10 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x74696445646964)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x74656C6544646964)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xEB00000000656C69;
      if (v11 != 0x547373696D736964)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000029E2EB000;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x64657070696B73)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v3 = 0x656C6C65636E6163;
    }

    else
    {
      if (a2 == 7)
      {
        v2 = 0xEF65726F4D724F65;
        if (v11 != 0x6E4F646441646964)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v3 = 0x6441746F4E646964;
    }

    v2 = 0xE900000000000064;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_29E2C4914();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_29E13D1D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006174614465;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x800000029E2EB550;
    v12 = 0xD000000000000013;
    if (a1 != 2)
    {
      v12 = 0xD000000000000016;
      v11 = 0x800000029E2EB570;
    }

    v13 = 0x800000029E2EB510;
    v14 = 0xD000000000000011;
    if (a1)
    {
      v14 = 0xD000000000000012;
      v13 = 0x800000029E2EB530;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 1)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0x800000029E2EB5C0;
    v5 = 0xE800000000000000;
    v6 = 0x676F4C656C637963;
    if (a1 != 7)
    {
      v6 = 0xD000000000000014;
      v5 = 0x800000029E2EB5E0;
    }

    if (a1 == 6)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v4 = v5;
    }

    v7 = 0x800000029E2EB590;
    v8 = 0xD00000000000001ALL;
    if (a1 != 4)
    {
      v8 = 0x7461527472616568;
      v7 = 0xED00006174614465;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x800000029E2EB550;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v2 = 0x800000029E2EB570;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v2 = 0x800000029E2EB530;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v2 = 0x800000029E2EB510;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = "wristTemperatureData";
    }

    else
    {
      if (a2 == 7)
      {
        v2 = 0xE800000000000000;
        if (v9 != 0x676F4C656C637963)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = "periodAndCycleLength";
    }

    v2 = (v15 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v2 = 0x800000029E2EB590;
    if (v9 != 0xD00000000000001ALL)
    {
      goto LABEL_52;
    }
  }

  else if (v9 != 0x7461527472616568)
  {
LABEL_52:
    v16 = sub_29E2C4914();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v2)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_29E13D48C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x6867696C68676968;
  v4 = 0xEA00000000007374;
  v5 = a1;
  v6 = 0x72616265646973;
  if (a1 != 6)
  {
    v6 = 0x656C69666F7270;
  }

  v7 = 0x696472616F626E6FLL;
  if (a1 != 4)
  {
    v7 = 1936746868;
    v2 = 0xE400000000000000;
  }

  if (a1 > 5u)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v6 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x686372616573;
  if (a1 != 2)
  {
    v9 = 0x7972616D6D7573;
    v8 = 0xE700000000000000;
  }

  v10 = 0x6163696669746F6ELL;
  v11 = 0xEC0000006E6F6974;
  if (!a1)
  {
    v10 = 0x6867696C68676968;
    v11 = 0xEA00000000007374;
  }

  if (a1 <= 1u)
  {
    v9 = v10;
    v8 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v5 <= 3)
  {
    v13 = v8;
  }

  else
  {
    v13 = v2;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v4 = 0xE700000000000000;
      if (a2 == 6)
      {
        if (v12 != 0x72616265646973)
        {
          goto LABEL_42;
        }
      }

      else if (v12 != 0x656C69666F7270)
      {
        goto LABEL_42;
      }
    }

    else if (a2 == 4)
    {
      v4 = 0xEA0000000000676ELL;
      if (v12 != 0x696472616F626E6FLL)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 0xE400000000000000;
      if (v12 != 1936746868)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v4 = 0xE600000000000000;
        if (v12 != 0x686372616573)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v4 = 0xE700000000000000;
      v3 = 0x7972616D6D7573;
    }

    else if (a2)
    {
      v4 = 0xEC0000006E6F6974;
      if (v12 != 0x6163696669746F6ELL)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v12 != v3)
    {
LABEL_42:
      v14 = sub_29E2C4914();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v13 != v4)
  {
    goto LABEL_42;
  }

  v14 = 1;
LABEL_43:

  return v14 & 1;
}

uint64_t sub_29E13D720(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v24 = MEMORY[0x29EDCA190];
    sub_29E18126C(0, v1, 0);
    v2 = v24;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v20 = v4[2];
      v21 = v5;
      v6 = v4[5];
      v22 = v4[4];
      v23 = v6;
      v7 = v4[1];
      v18 = *v4;
      v19 = v7;
      sub_29E150C80(&v18, &v15);
      v24 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_29E18126C((v8 > 1), v9 + 1, 1);
        v2 = v24;
      }

      v16 = &type metadata for CategoryRow;
      v17 = &off_2A24B7BB0;
      v10 = swift_allocObject();
      *&v15 = v10;
      v11 = v21;
      v10[3] = v20;
      v10[4] = v11;
      v12 = v23;
      v10[5] = v22;
      v10[6] = v12;
      v13 = v19;
      v10[1] = v18;
      v10[2] = v13;
      *(v2 + 16) = v9 + 1;
      sub_29DE8EE78(&v15, v2 + 40 * v9 + 32);
      v4 += 6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29E13D864(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v11 = MEMORY[0x29EDCA190];
    sub_29E18171C(0, v1, 0);
    v2 = v11;
    v4 = a1 + 32;
    sub_29E1515DC(0, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_29E18171C((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29E13D98C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v20 = MEMORY[0x29EDCA190];
    sub_29E181820(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_29DE9DC34(v4, v16);
      sub_29DF942BC(0, &qword_2A181CC80);
      sub_29DF942BC(0, &qword_2A1819BD0);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_29E181820((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_29DEF61C0(v17, v18);
      v10 = MEMORY[0x2A1C7C4A8](v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_29E14EAA8(v6, v12, &v20, v7, v8, sub_29DF3CBE8);
      sub_29DE93B3C(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_29E13DBBC(unint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_29E2C4484();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x29EDCA190];
  if (!v5)
  {
    return v6;
  }

  v22 = MEMORY[0x29EDCA190];
  result = sub_29E181330(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = MEMORY[0x29ED80D70](v8, a1);
        v11 = *(v22 + 16);
        v10 = *(v22 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_29E181330((v10 > 1), v11 + 1, 1);
        }

        ++v8;
        v12 = sub_29E151510(a2, a3);
        *(v22 + 16) = v11 + 1;
        v13 = v22 + 16 * v11;
        *(v13 + 32) = v9;
        *(v13 + 40) = v12;
      }

      while (v5 != v8);
    }

    else
    {
      v14 = (a1 + 32);
      v15 = *(v22 + 16);
      v16 = 16 * v15;
      do
      {
        v17 = *v14;
        v18 = *(v22 + 24);

        if (v15 >= v18 >> 1)
        {
          sub_29E181330((v18 > 1), v15 + 1, 1);
        }

        v19 = sub_29E151510(a2, a3);
        *(v22 + 16) = v15 + 1;
        v20 = v22 + v16;
        *(v20 + 32) = v17;
        *(v20 + 40) = v19;
        v16 += 16;
        ++v14;
        ++v15;
        --v5;
      }

      while (v5);
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E13DD68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v11 = MEMORY[0x29EDCA190];
    sub_29E1819EC(0, v1, 0);
    v2 = v11;
    sub_29E1513A8(0, &qword_2A181D880);
    sub_29E151314();
    v4 = a1 + 40;
    do
    {
      sub_29E2BF404();
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_29E1819EC((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29E13DE94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v11 = MEMORY[0x29EDCA190];
    sub_29E1819B4(0, v1, 0);
    v2 = v11;
    sub_29E151314();
    sub_29E1513A8(0, &unk_2A181DCE0);
    v4 = a1 + 40;
    do
    {
      sub_29E2BF404();
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_29E1819B4((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29E13DFC0(uint64_t a1)
{
  v2 = sub_29E2BFD64();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x29EDCA190];
  if (v6)
  {
    v21 = MEMORY[0x29EDCA190];
    sub_29E181820(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_29E181820((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_29E151510(&unk_2A181DAB0, MEMORY[0x29EDC3050]);
      v14 = sub_29DEBB7E8(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_29DE8EE78(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_29E13E1B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_29E2C4484();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v19 = MEMORY[0x29EDCA190];
  result = sub_29E181330(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x29EDC2280];
      do
      {
        v7 = MEMORY[0x29ED80D70](v5, a1);
        v9 = *(v19 + 16);
        v8 = *(v19 + 24);
        if (v9 >= v8 >> 1)
        {
          v11 = v7;
          sub_29E181330((v8 > 1), v9 + 1, 1);
          v7 = v11;
        }

        ++v5;
        *(v19 + 16) = v9 + 1;
        v10 = v19 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
      }

      while (v2 != v5);
    }

    else
    {
      v12 = (a1 + 32);
      v13 = *(v19 + 16);
      v14 = 16 * v13;
      v15 = MEMORY[0x29EDC2280];
      do
      {
        v16 = *v12;
        v17 = *(v19 + 24);

        if (v13 >= v17 >> 1)
        {
          sub_29E181330((v17 > 1), v13 + 1, 1);
        }

        *(v19 + 16) = v13 + 1;
        v18 = v19 + v14;
        *(v18 + 32) = v16;
        *(v18 + 40) = v15;
        v14 += 16;
        ++v12;
        ++v13;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_29E13E350(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_29E2C4484();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x29EDCA190];
  result = sub_29E181A5C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x29ED80D70](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_29E181A5C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for CycleHistoryItem();
        v15 = sub_29E151510(&qword_2A181DB48, type metadata accessor for CycleHistoryItem);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_29DE8EE78(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_29E181A5C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for CycleHistoryItem();
        v15 = sub_29E151510(&qword_2A181DB48, type metadata accessor for CycleHistoryItem);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_29DE8EE78(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E13E570(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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
      sub_29E2BF404();
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

uint64_t sub_29E13E61C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_29E13E6C4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x29ED80D70](v5, a3);
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
      v13 = sub_29E2C4484();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_29E13E7EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6765725074736150;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x800000029E2EB4F0;
  }

  else
  {
    v4 = 0xED000079636E616ELL;
  }

  if (*a2)
  {
    v5 = 0x6765725074736150;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xED000079636E616ELL;
  }

  else
  {
    v6 = 0x800000029E2EB4F0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29E2C4914();
  }

  return v8 & 1;
}

uint64_t sub_29E13E8A4()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29E13E938()
{
  sub_29E2C34B4();
}

uint64_t sub_29E13E9B8()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29E13EA48@<X0>(char *a1@<X8>)
{
  v2 = sub_29E2C47E4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_29E13EAA8(unint64_t *a1@<X8>)
{
  v2 = 0x800000029E2EB4F0;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x6765725074736150;
    v2 = 0xED000079636E616ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_29E13EB14()
{
  sub_29E2C4A04();
  sub_29E2C40E4();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29E13EBC0()
{
  sub_29E2C40E4();
  sub_29E2C34B4();
}

uint64_t sub_29E13EC5C()
{
  sub_29E2C4A04();
  sub_29E2C40E4();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29E13ED04(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_29E142DA8(*a1, *a2, &qword_2A1A61D50))
  {
    v4 = sub_29E142DA8(v2, v3, &qword_2A1A61D50);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_29E13ED70()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E2C4A04();
  sub_29E063C1C(v4, v1);
  sub_29E063C1C(v4, v2);
  return sub_29E2C4A54();
}

void sub_29E13EDC4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_29E063C1C(a1, v3);

  sub_29E063C1C(a1, v4);
}

uint64_t sub_29E13EE04()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E2C4A04();
  sub_29E063C1C(v4, v1);
  sub_29E063C1C(v4, v2);
  return sub_29E2C4A54();
}

void *sub_29E13EE54()
{
  v65 = sub_29E2BCC24();
  v1 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v0;
  v4 = *(v0 + 48);
  if (v4 >> 62)
  {
    v58 = *(v0 + 48);
    v5 = sub_29E2C4484();
    v4 = v58;
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x29EDCA190];
  if (v5)
  {
    v70 = MEMORY[0x29EDCA190];
    v7 = v4;
    sub_29E2BF404();
    result = sub_29E181A5C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    v9 = 0;
    v6 = v70;
    v10 = v7;
    v61 = v1;
    v62 = v7 & 0xC000000000000001;
    v11 = v1 + 1;
    v63 = v5;
    v64 = v7;
    do
    {
      if (v62)
      {
        v12 = MEMORY[0x29ED80D70](v9, v10);
      }

      else
      {
        v12 = *(v10 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = type metadata accessor for PregnancyItem();
      v15 = swift_allocObject();
      v16 = v13;
      sub_29E2BCC14();
      v17 = sub_29E2BCBD4();
      v19 = v18;
      (*v11)(v3, v65);
      strcpy(v67, "PregnancyItem");
      HIWORD(v67[1]) = -4864;
      MEMORY[0x29ED7FCC0](v17, v19);

      v20 = v67[1];
      *(v15 + 16) = v67[0];
      *(v15 + 24) = v20;
      *(v15 + 56) = 0;
      swift_unknownObjectWeakInit();
      *(v15 + 32) = v16;
      *(v15 + 40) = 0;
      *(v15 + 56) = &off_2A24BC358;
      swift_unknownObjectWeakAssign();
      v68 = v14;
      v69 = sub_29E151510(&unk_2A181D9D0, type metadata accessor for PregnancyItem);

      v67[0] = v15;
      v70 = v6;
      v22 = *(v6 + 16);
      v21 = *(v6 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_29E181A5C((v21 > 1), v22 + 1, 1);
      }

      ++v9;
      v23 = v68;
      v24 = v69;
      v25 = sub_29DEF61C0(v67, v68);
      v26 = MEMORY[0x2A1C7C4A8](v25);
      v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28, v26);
      sub_29E14EAA8(v22, v28, &v70, v23, v24, sub_29DF3CBE8);
      sub_29DE93B3C(v67);
      v6 = v70;
      v10 = v64;
    }

    while (v63 != v9);

    v1 = v61;
  }

  v30 = *(v66 + 56);
  if (v30 >> 62)
  {
    v59 = *(v66 + 56);
    v31 = sub_29E2C4484();
    v30 = v59;
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x29EDCA190];
  if (v31)
  {
    v70 = MEMORY[0x29EDCA190];
    v33 = v30;
    sub_29E2BF404();
    result = sub_29E181A5C(0, v31 & ~(v31 >> 63), 0);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v32 = v70;
      v35 = v33;
      v61 = v1 + 1;
      v62 = v33 & 0xC000000000000001;
      v63 = v31;
      v64 = v33;
      do
      {
        if (v62)
        {
          v36 = MEMORY[0x29ED80D70](v34, v35);
        }

        else
        {
          v36 = *(v35 + 8 * v34 + 32);
        }

        v37 = v36;
        v38 = type metadata accessor for PregnancyItem();
        v39 = swift_allocObject();
        v40 = v37;
        sub_29E2BCC14();
        v41 = sub_29E2BCBD4();
        v43 = v42;
        (*v61)(v3, v65);
        strcpy(v67, "PregnancyItem");
        HIWORD(v67[1]) = -4864;
        MEMORY[0x29ED7FCC0](v41, v43);

        v44 = v67[1];
        *(v39 + 16) = v67[0];
        *(v39 + 24) = v44;
        *(v39 + 56) = 0;
        swift_unknownObjectWeakInit();
        *(v39 + 32) = v40;
        *(v39 + 40) = 1;
        *(v39 + 56) = &off_2A24BC358;
        swift_unknownObjectWeakAssign();
        v68 = v38;
        v69 = sub_29E151510(&unk_2A181D9D0, type metadata accessor for PregnancyItem);

        v67[0] = v39;
        v70 = v32;
        v46 = *(v32 + 16);
        v45 = *(v32 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_29E181A5C((v45 > 1), v46 + 1, 1);
        }

        ++v34;
        v47 = v68;
        v48 = v69;
        v49 = sub_29DEF61C0(v67, v68);
        v50 = MEMORY[0x2A1C7C4A8](v49);
        v52 = &v60 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v53 + 16))(v52, v50);
        sub_29E14EAA8(v46, v52, &v70, v47, v48, sub_29DF3CBE8);
        sub_29DE93B3C(v67);
        v32 = v70;
        v35 = v64;
      }

      while (v63 != v34);

      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    return result;
  }

LABEL_25:
  sub_29E141AD0(v6, 0, 2);

  sub_29E2BE5F4();
  sub_29E2BED34();
  v54 = sub_29E2BE714();

  v67[0] = 0xD000000000000010;
  v67[1] = 0x800000029E2EB4F0;
  MEMORY[0x2A1C7C4A8](v55);
  *(&v60 - 2) = v67;
  v56 = sub_29E13E570(sub_29E14FFAC, (&v60 - 4), v54);

  if (v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = 2;
  }

  sub_29E141AD0(v32, 1, v57);
}

uint64_t sub_29E13F5C4()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E055E70();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 48);
  if (v10 >> 62)
  {
    v11 = sub_29E2C4484();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = *(v0 + 56);
  if (v12 >> 62)
  {
    result = sub_29E2C4484();
    v14 = v11 + result;
    if (!__OFADD__(v11, result))
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = v11 + result;
  if (__OFADD__(v11, result))
  {
    goto LABEL_15;
  }

LABEL_5:
  v15 = MEMORY[0x29EDC2000];
  if (v14 <= 0)
  {
    v15 = MEMORY[0x29EDC1FF8];
  }

  (*(v7 + 104))(v9, *v15, v6);
  sub_29E2BE644();
  result = HKShowSensitiveLogItems();
  if (result)
  {
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v17 = sub_29E2C3A34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315394;
      v20 = sub_29E2C4AE4();
      v22 = sub_29DFAA104(v20, v21, &v24);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v14;
      _os_log_impl(&dword_29DE74000, v16, v17, "[%s] Updating pregnancy tile section visibility with pregnancy count: %ld", v18, 0x16u);
      sub_29DE93B3C(v19);
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_29E13F8C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  sub_29E2BF404();
  sub_29E2BF404();
  if ((sub_29E142DA8(v5, a1, &qword_2A1A61D50) & 1) == 0)
  {

    goto LABEL_5;
  }

  v7 = sub_29E142DA8(v6, a2, &qword_2A1A61D50);

  if ((v7 & 1) == 0)
  {
LABEL_5:
    sub_29E13EE54();
    sub_29E13F5C4();
  }
}

uint64_t sub_29E13F998()
{
  v1 = v0;
  v2 = *v0;
  sub_29E1501BC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v14 - v4;
  if (v0[8])
  {

    sub_29E2C3744();
  }

  v6 = sub_29E2C3734();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = v0[9];
  sub_29E2C3714();
  v9 = v8;

  v10 = sub_29E2C3704();
  v11 = swift_allocObject();
  v12 = MEMORY[0x29EDCA390];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = v7;
  v11[6] = v2;

  v1[8] = sub_29E13C63C(0, 0, v5, &unk_29E2E13F0, v11);
}

uint64_t sub_29E13FB9C()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_29E13FBEC()
{
  v1 = v0;
  sub_29E1501BC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_29E2C3734();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *(v0 + 64);
  sub_29E2C3714();

  v7 = sub_29E2C3704();
  v8 = swift_allocObject();
  v9 = MEMORY[0x29EDCA390];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_29E13C984(0, 0, v4, &unk_29E2E1418, v8);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_29E13FD7C()
{
  sub_29E13FBEC();

  return swift_deallocClassInstance();
}

uint64_t sub_29E13FDE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_29E13FE2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E13FE80()
{
  result = qword_2A181D958;
  if (!qword_2A181D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D958);
  }

  return result;
}

unint64_t sub_29E13FED8()
{
  result = qword_2A181D960;
  if (!qword_2A181D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D960);
  }

  return result;
}

uint64_t sub_29E13FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_29E143654(0, &unk_2A181D970, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDBA248]);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  sub_29DFBC2DC();
  v6[13] = swift_task_alloc();
  sub_29E143654(0, &qword_2A181A128, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDBA260]);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  sub_29E143654(0, &unk_2A181D990, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDBA250]);
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  sub_29E143654(0, &qword_2A181A130, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDBA270]);
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v11 = sub_29E2C0514();
  v6[23] = v11;
  v6[24] = *(v11 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = sub_29E2C3714();
  v6[28] = sub_29E2C3704();
  v13 = sub_29E2C36A4();
  v6[29] = v13;
  v6[30] = v12;

  return MEMORY[0x2A1C73D48](sub_29E140270, v13, v12);
}

uint64_t sub_29E140270()
{
  v24 = v0;
  sub_29E2C04B4();
  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446210;
    v9 = sub_29E2C4AE4();
    v11 = sub_29DFAA104(v9, v10, &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29DE74000, v1, v2, "[%{public}s] Starting query", v7, 0xCu);
    sub_29DE93B3C(v8);
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);
  }

  v12 = *(v6 + 8);
  v12(v4, v5);
  v0[31] = v12;
  sub_29E1436BC();
  sub_29E143654(0, &qword_2A181A090, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDBA210]);
  *(swift_allocObject() + 16) = xmmword_29E2CAB20;
  sub_29DE9408C(0, &qword_2A1A61D70);
  v13 = [swift_getObjCClassFromMetadata() pregnancyType];
  if (v13)
  {
    v16 = v13;
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];
    sub_29DE9408C(0, &qword_2A1A61D20);
    sub_29E2C2F24();

    sub_29DE9408C(0, &qword_2A1A61D50);
    sub_29E2C2FD4();
    sub_29E2C3024();
    sub_29E2C3014();
    (*(v18 + 8))(v17, v19);
    swift_beginAccess();
    v0[32] = sub_29E2C3704();
    v20 = sub_29E143740();
    v21 = swift_task_alloc();
    v0[33] = v21;
    *v21 = v0;
    v21[1] = sub_29E1405FC;
    v14 = v0[17];
    v13 = v0[13];
    v15 = v20;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C73B18](v13, v14, v15);
}

uint64_t sub_29E1405FC()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_29E2C36A4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_29E140A44;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_29E2C36A4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_29E140794;
  }

  return MEMORY[0x2A1C73D48](v7, v4, v6);
}

uint64_t sub_29E140794()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return MEMORY[0x2A1C73D48](sub_29E1407F8, v1, v2);
}

uint64_t sub_29E1407F8()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[21];
    v4 = v0[22];
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[17];
    v9 = v0[18];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v3 + 32))(v0[12], v1, v2);
    if (swift_weakLoadStrong())
    {
      v12 = sub_29E2C2FF4();
      v13 = sub_29E2C3004();
      sub_29E140DC4(v12, v13);
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
    v0[32] = sub_29E2C3704();
    v14 = sub_29E143740();
    v15 = swift_task_alloc();
    v0[33] = v15;
    *v15 = v0;
    v15[1] = sub_29E1405FC;
    v16 = v0[17];
    v17 = v0[13];

    return MEMORY[0x2A1C73B18](v17, v16, v14);
  }
}

uint64_t sub_29E140A44()
{
  v0[5] = v0[34];
  v0[35] = sub_29DF942BC(0, &qword_2A1A61C90);
  swift_willThrowTypedImpl();

  v1 = v0[29];
  v2 = v0[30];

  return MEMORY[0x2A1C73D48](sub_29E140AEC, v1, v2);
}

uint64_t sub_29E140AEC()
{
  v34 = v0;
  v1 = v0[34];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];

  (*(v3 + 8))(v2, v4);
  sub_29E2C04B4();
  v5 = v1;
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A14();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[34];
    v28 = v0[23];
    v29 = v0[25];
    v31 = v0[31];
    v32 = v0[22];
    v9 = v0[21];
    v30 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136446466;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, &v33);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v0[6] = v8;
    v15 = v8;
    v16 = sub_29E2C3424();
    v18 = sub_29DFAA104(v16, v17, &v33);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Error in fetching pregnancy samples: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);

    v31(v29, v28);
    (*(v9 + 8))(v32, v30);
  }

  else
  {
    v19 = v0[34];
    v20 = v0[31];
    v21 = v0[25];
    v23 = v0[22];
    v22 = v0[23];
    v24 = v0[20];
    v25 = v0[21];

    v20(v21, v22);
    (*(v25 + 8))(v23, v24);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_29E140DC4(char **a1, unint64_t a2)
{
  v3 = v2;
  v69 = *v2;
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = (v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v10);
  v68 = (v67 - v11);
  v12 = sub_29E2BCBB4();
  isa = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = v67 - v17;
  v71 = sub_29E2C0514();
  v70 = *(v71 - 8);
  MEMORY[0x2A1C7C4A8](v71);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = (v67 - v22);
  v24 = HKShowSensitiveLogItems();
  v79 = a1;
  v25 = a1 >> 62;
  v75 = a2;
  v73 = a2 >> 62;
  v74 = v20;
  v72 = v9;
  if (!v24)
  {
    goto LABEL_10;
  }

  v81 = isa;
  isa = v3;
  sub_29E2C04B4();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v9 = sub_29E2C0504();
  v26 = sub_29E2C3A34();
  if (os_log_type_enabled(v9, v26))
  {
    LODWORD(v80) = v26;
    v20 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82[0] = v78;
    *v20 = 136315650;
    v27 = sub_29E2C4AE4();
    v29 = sub_29DFAA104(v27, v28, v82);

    *(v20 + 4) = v29;
    *(v20 + 12) = 2048;
    if (!v25)
    {
      v30 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_76;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  while (1)
  {
    (*(v70 + 8))(v23, v71);
    v3 = isa;
    v20 = v74;
    v9 = v72;
    isa = v81;
LABEL_10:
    v33 = v3[6];
    v83 = v3[7];
    v84[0] = v33;
    v82[0] = MEMORY[0x29EDCA190];
    if (!v25)
    {
      v34 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }

    while (1)
    {
      v34 = sub_29E2C4484();
LABEL_12:
      sub_29E2BF404();
      sub_29E2BF404();
      v78 = v34;
      if (!v34)
      {
        break;
      }

      v67[1] = v3;
      v20 = 0;
      v3 = v79;
      v80 = v79 & 0xFFFFFFFFFFFFFF8;
      v81 = v79 & 0xC000000000000001;
      v9 = (isa + 1);
      do
      {
        if (v81)
        {
          v35 = MEMORY[0x29ED80D70](v20, v3);
        }

        else
        {
          if (v20 >= *(v80 + 16))
          {
            goto LABEL_64;
          }

          v35 = v3[v20 + 4];
        }

        v36 = v35;
        v37 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v38 = [v35 endDate];
        sub_29E2BCB44();

        sub_29E2BCA84();
        LOBYTE(v38) = sub_29E2BCB34();
        isa = v9->isa;
        (v9->isa)(v15, v12);
        (isa)(v18, v12);
        if (v38)
        {
          sub_29E2C4614();
          sub_29E2C4644();
          v3 = v79;
          sub_29E2C4654();
          sub_29E2C4624();
        }

        else
        {
        }

        ++v20;
      }

      while (v37 != v78);
      sub_29DFCB5D4(v82[0]);
      v3 = 0;
      v82[0] = MEMORY[0x29EDCA190];
      v20 = v78;
      while (1)
      {
        if (v81)
        {
          v39 = MEMORY[0x29ED80D70](v3, v79);
        }

        else
        {
          if (v3 >= *(v80 + 16))
          {
            goto LABEL_66;
          }

          v39 = v79[v3 + 4];
        }

        v40 = v39;
        v41 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v42 = [v39 endDate];
        sub_29E2BCB44();

        sub_29E2BCA84();
        sub_29E151510(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
        LOBYTE(v42) = sub_29E2C3304();
        (isa)(v15, v12);
        (isa)(v18, v12);
        if (v42)
        {
        }

        else
        {
          sub_29E2C4614();
          sub_29E2C4644();
          v20 = v78;
          sub_29E2C4654();
          sub_29E2C4624();
        }

        v3 = (v3 + 1);
        if (v41 == v20)
        {
          v20 = v74;
          v9 = v72;
          goto LABEL_35;
        }
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
    }

    sub_29DFCB5D4(MEMORY[0x29EDCA190]);
LABEL_35:

    v82[0] = sub_29E14DC04(v43);
    v25 = 0;
    sub_29E14C2C8(v82);
    v12 = v75;

    sub_29DFCB5D4(v82[0]);
    if (v73)
    {
      if (!sub_29E2C4484())
      {
        goto LABEL_54;
      }

      v18 = sub_29E2C4484();
      if (!v18)
      {
        v23 = MEMORY[0x29EDCA190];
        goto LABEL_49;
      }
    }

    else
    {
      v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_54;
      }
    }

    v82[0] = MEMORY[0x29EDCA190];
    v23 = v82;
    sub_29E18167C(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      break;
    }

    v23 = v82[0];
    v44 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v45 = 0;
      isa = &selRef_hkmc_menstruationLoggingCardGradientAColor;
      v9 = v68;
      do
      {
        MEMORY[0x29ED80D70](v45, v44);
        v46 = [swift_unknownObjectRetain() UUID];
        sub_29E2BCC04();
        swift_unknownObjectRelease_n();

        v82[0] = v23;
        v48 = v23[2];
        v47 = v23[3];
        v15 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          sub_29E18167C(v47 > 1, v48 + 1, 1);
          v23 = v82[0];
        }

        ++v45;
        v23[2] = v15;
        (*(v77 + 32))(v23 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v48, v9, v76);
        v44 = v75;
      }

      while (v18 != v45);
    }

    else
    {
      v49 = (v12 + 32);
      isa = &selRef_hkmc_menstruationLoggingCardGradientAColor;
      do
      {
        v50 = *v49;
        v51 = [v50 UUID];
        sub_29E2BCC04();

        v82[0] = v23;
        v15 = v23[2];
        v52 = v23[3];
        if (v15 >= v52 >> 1)
        {
          sub_29E18167C(v52 > 1, v15 + 1, 1);
          v23 = v82[0];
        }

        v23[2] = v15 + 1;
        (*(v77 + 32))(v23 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v15, v9, v76);
        ++v49;
        --v18;
      }

      while (v18);
    }

    v20 = v74;
LABEL_49:
    v18 = sub_29E14EE24(v23);

    sub_29E2BF404();
    v12 = sub_29E14FABC(v84, v18);

    if (v84[0] >> 62)
    {
      goto LABEL_72;
    }

    v53 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53 < v12)
    {
      goto LABEL_73;
    }

LABEL_51:
    v23 = v84;
    sub_29E14F914(v12, v53, &qword_2A1A61D50);
    sub_29E2BF404();
    v25 = sub_29E14FABC(&v83, v18);

    if (v83 >> 62)
    {
      goto LABEL_74;
    }

    v54 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54 >= v25)
    {
      goto LABEL_53;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    v30 = sub_29E2C4484();
LABEL_5:

    *(v20 + 14) = v30;

    *(v20 + 22) = 2048;
    if (v73)
    {
      v31 = sub_29E2C4484();
    }

    else
    {
      v31 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 24) = v31;

    _os_log_impl(&dword_29DE74000, v9, v80, "[%s] Received query result: %ld added, %ld deleted", v20, 0x20u);
    v32 = v78;
    sub_29DE93B3C(v78);
    MEMORY[0x29ED82140](v32, -1, -1);
    MEMORY[0x29ED82140](v20, -1, -1);
  }

  __break(1u);
LABEL_72:
  v53 = sub_29E2C4484();
  if (v53 >= v12)
  {
    goto LABEL_51;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  v54 = sub_29E2C4484();
  if (v54 < v25)
  {
    goto LABEL_75;
  }

LABEL_53:
  sub_29E14F914(v25, v54, &qword_2A1A61D50);

LABEL_54:
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v55 = sub_29E2C0504();
    v56 = sub_29E2C3A34();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v82[0] = v58;
      *v57 = 136315650;
      v59 = sub_29E2C4AE4();
      v61 = sub_29DFAA104(v59, v60, v82);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2048;
      swift_beginAccess();
      if (v84[0] >> 62)
      {
        v62 = sub_29E2C4484();
      }

      else
      {
        v62 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      swift_beginAccess();
      if (v83 >> 62)
      {
        v63 = sub_29E2C4484();
      }

      else
      {
        v63 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v57 + 24) = v63;
      _os_log_impl(&dword_29DE74000, v55, v56, "[%s] Setting display configuration with ongoing: %ld and past: %ld", v57, 0x20u);
      sub_29DE93B3C(v58);
      MEMORY[0x29ED82140](v58, -1, -1);
      MEMORY[0x29ED82140](v57, -1, -1);
    }

    (*(v70 + 8))(v20, v71);
  }

  swift_beginAccess();
  v64 = v84[0];
  swift_beginAccess();
  v65 = v83;
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E13F8C4(v64, v65);
}

uint64_t sub_29E141AD0(uint64_t a1, char a2, int a3)
{
  v14 = a3;
  v5 = 0xED000079636E616ELL;
  v6 = 0x6765725074736150;
  v7 = sub_29E2BEBB4();
  v15 = *(v7 - 8);
  v16 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BE5F4();
  sub_29E2BED34();
  v10 = sub_29E2BE714();

  if ((a2 & 1) == 0)
  {
    v6 = 0xD000000000000010;
    v5 = 0x800000029E2EB4F0;
  }

  v19[0] = v6;
  v19[1] = v5;
  v18 = v19;
  v11 = sub_29E13E570(sub_29E151760, v17, v10);

  if (!*(a1 + 16))
  {
    if ((v11 & 1) == 0)
    {
      return result;
    }

    sub_29E2BE5F4();
    sub_29E2BEC24();
  }

  if (v11)
  {
    sub_29E2BE5F4();
    sub_29E13D98C(a1);
    sub_29E2BECA4();
  }

  sub_29E13D98C(a1);
  sub_29E2BEBA4();
  if (v14 == 2)
  {
    sub_29E2BE5F4();
    sub_29E2BECF4();
  }

  else
  {
    sub_29E2BE5F4();
    sub_29E2BECE4();
  }

  return (*(v15 + 8))(v9, v16);
}

uint64_t sub_29E141D9C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BE2A4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9DC34(a1, v29);
  sub_29DF942BC(0, &qword_2A1819BD0);
  type metadata accessor for PregnancyItem();
  if (swift_dynamicCast())
  {
    v14 = *(v3 + 72);
    v15 = *(*&v27[0] + 32);
    v16 = v14;
    sub_29E2C3BF4();
    (*(v11 + 104))(v13, *MEMORY[0x29EDC1D60], v10);
    v17 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    v18 = *(v3 + 80);
    type metadata accessor for PregnancyOffboardingCoordinator();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_29DFEA410(v16, v29, v13, v17, v27, v18, 0, 0, 0, 0, 0, 0);
    sub_29DFE99B4(a2, v15, 1, 0, 0);
  }

  else
  {
    result = HKShowSensitiveLogItems();
    if (result)
    {
      sub_29E2C04B4();
      v20 = sub_29E2C0504();
      v21 = sub_29E2C3A14();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29[0] = v23;
        *v22 = 136315138;
        v24 = sub_29E2C4AE4();
        v26 = sub_29DFAA104(v24, v25, v29);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_29DE74000, v20, v21, "[%s] A valid item is needed to handle tap actions", v22, 0xCu);
        sub_29DE93B3C(v23);
        MEMORY[0x29ED82140](v23, -1, -1);
        MEMORY[0x29ED82140](v22, -1, -1);
      }

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_29E142160()
{
  type metadata accessor for PregnancyTileCell();
  sub_29E151510(&qword_2A181DA60, type metadata accessor for PregnancyTileCell);
  return sub_29E2C3B74();
}

uint64_t sub_29E1421D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DE9657C;

  return sub_29E13FF2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29E1422AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompactCalendarMonthViewModel(0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_29E150BB8(v13, v10, type metadata accessor for CompactCalendarMonthViewModel);
      sub_29E150BB8(v14, v6, type metadata accessor for CompactCalendarMonthViewModel);
      if ((sub_29E2BCB34() & 1) == 0)
      {
        break;
      }

      v16 = sub_29E1424B4(*&v10[*(v4 + 20)], *&v6[*(v4 + 20)]);
      sub_29E150C20(v6, type metadata accessor for CompactCalendarMonthViewModel);
      sub_29E150C20(v10, type metadata accessor for CompactCalendarMonthViewModel);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_29E150C20(v6, type metadata accessor for CompactCalendarMonthViewModel);
    sub_29E150C20(v10, type metadata accessor for CompactCalendarMonthViewModel);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_29E1424B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1501BC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v49 = &v38 - v9;
  sub_29DF1DDB4();
  v48 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CompactCalendarDayViewModel(0);
  MEMORY[0x2A1C7C4A8](v47);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v38 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    goto LABEL_24;
  }

  if (!v19 || a1 == a2)
  {
    v36 = 1;
    return v36 & 1;
  }

  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v45 = v4;
  v46 = (v5 + 48);
  v39 = (v5 + 32);
  v40 = &v38 - v17;
  v41 = v7;
  v42 = (v5 + 8);
  v44 = *(v16 + 72);
  while (1)
  {
    sub_29E150BB8(v21, v18, type metadata accessor for CompactCalendarDayViewModel);
    sub_29E150BB8(v22, v14, type metadata accessor for CompactCalendarDayViewModel);
    v23 = *(v48 + 48);
    v24 = MEMORY[0x29EDBA2F8];
    sub_29E150A34(v18, v12, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    sub_29E150A34(v14, &v12[v23], &qword_2A1A5E340, v24);
    v25 = *v46;
    if ((*v46)(v12, 1, v4) != 1)
    {
      break;
    }

    if (v25(&v12[v23], 1, v4) != 1)
    {
      goto LABEL_22;
    }

    sub_29E150AB4(v12, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    v26 = v47;
LABEL_10:
    if ((sub_29E2BFC24() & 1) == 0)
    {
      goto LABEL_23;
    }

    v30 = v26[6];
    v31 = *&v18[v30];
    v32 = *&v18[v30 + 8];
    v33 = &v14[v30];
    v34 = v31 == *v33 && v32 == *(v33 + 1);
    if (!v34 && (sub_29E2C4914() & 1) == 0 || v18[v26[7]] != v14[v26[7]])
    {
      goto LABEL_23;
    }

    v35 = v18[v26[8]] ^ v14[v26[8]];
    sub_29E150C20(v14, type metadata accessor for CompactCalendarDayViewModel);
    sub_29E150C20(v18, type metadata accessor for CompactCalendarDayViewModel);
    v4 = v45;
    if ((v35 & 1) == 0)
    {
      v22 += v44;
      v21 += v44;
      if (--v19)
      {
        continue;
      }
    }

    v36 = v35 ^ 1;
    return v36 & 1;
  }

  sub_29E150A34(v12, v49, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  if (v25(&v12[v23], 1, v4) != 1)
  {
    v27 = v49;
    v28 = v41;
    (*v39)(v41, &v12[v23], v4);
    sub_29E151510(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
    v43 = sub_29E2C3304();
    v29 = *v42;
    (*v42)(v28, v4);
    v29(v27, v4);
    v18 = v40;
    sub_29E150AB4(v12, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    v26 = v47;
    if ((v43 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  (*v42)(v49, v4);
LABEL_22:
  sub_29E150C20(v12, sub_29DF1DDB4);
LABEL_23:
  sub_29E150C20(v14, type metadata accessor for CompactCalendarDayViewModel);
  sub_29E150C20(v18, type metadata accessor for CompactCalendarDayViewModel);
LABEL_24:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_29E142AAC(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[9];
  v7 = a2[6];
  v6 = a2[7];
  v8 = a2[9];
  v18 = a2[8];
  v19 = a1[8];
  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    v9 = a1;
    v10 = a2;
    v11 = sub_29E2C4914();
    a2 = v10;
    v12 = v11;
    a1 = v9;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v2 - 1;
  v14 = a2 + 15;
  for (i = a1 + 15; ; i += 6)
  {
    if (v3)
    {
      if (!v6 || (v4 != v7 || v3 != v6) && (sub_29E2C4914() & 1) == 0)
      {
        return 0;
      }

      sub_29E2BF404();
    }

    else if (v6)
    {
      return 0;
    }

    if (!v5)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_33;
    }

    if (v19 == v18 && v5 == v8)
    {
      goto LABEL_24;
    }

    v16 = sub_29E2C4914();

    if ((v16 & 1) == 0)
    {
      return 0;
    }

LABEL_26:
    if (!v13)
    {
      return 1;
    }

    v4 = *(i - 3);
    v3 = *(i - 2);
    v5 = *i;
    v7 = *(v14 - 3);
    v6 = *(v14 - 2);
    v8 = *v14;
    v18 = *(v14 - 1);
    v19 = *(i - 1);
    if ((*(i - 5) != *(v14 - 5) || *(i - 4) != *(v14 - 4)) && (sub_29E2C4914() & 1) == 0)
    {
      return 0;
    }

    --v13;
    v14 += 6;
  }

  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();

  if (!v8)
  {

LABEL_24:

    goto LABEL_26;
  }

LABEL_33:

  return 0;
}

uint64_t sub_29E142CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v7 = v6;
      if (v5 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_29E2C4914();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_29E142DA8(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_29DE9408C(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x29ED80D70](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x29ED80D70](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_29E2C40D4();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_29E2C40D4();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_29E2C4484();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_29E2C4484();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_29E143010(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      if (v6 <= 3)
      {
        if (*v3 > 1u)
        {
          if (v6 == 2)
          {
            v8 = 0xD000000000000013;
            v7 = 0x800000029E2EB550;
          }

          else
          {
            v8 = 0xD000000000000016;
            v7 = 0x800000029E2EB570;
          }
        }

        else if (*v3)
        {
          v8 = 0xD000000000000012;
          v7 = 0x800000029E2EB530;
        }

        else
        {
          v8 = 0xD000000000000011;
          v7 = 0x800000029E2EB510;
        }
      }

      else if (*v3 <= 5u)
      {
        v8 = v6 == 4 ? 0xD00000000000001ALL : 0x7461527472616568;
        v7 = v6 == 4 ? 0x800000029E2EB590 : 0xED00006174614465;
      }

      else if (v6 == 6)
      {
        v8 = 0xD000000000000014;
        v7 = 0x800000029E2EB5C0;
      }

      else if (v6 == 7)
      {
        v7 = 0xE800000000000000;
        v8 = 0x676F4C656C637963;
      }

      else
      {
        v8 = 0xD000000000000014;
        v7 = 0x800000029E2EB5E0;
      }

      v9 = *i;
      if (v9 <= 3)
      {
        break;
      }

      if (*i <= 5u)
      {
        v11 = 0x7461527472616568;
        v10 = 0xED00006174614465;
        if (v9 == 4)
        {
          v10 = 0x800000029E2EB590;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        }

LABEL_48:
        if (v8 != v11)
        {
          goto LABEL_5;
        }

        goto LABEL_49;
      }

      if (v9 == 6)
      {
        v10 = 0x800000029E2EB5C0;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 7)
      {
        v10 = 0xE800000000000000;
        if (v8 != 0x676F4C656C637963)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0x800000029E2EB5E0;
        if (v8 != 0xD000000000000014)
        {
LABEL_5:
          v5 = sub_29E2C4914();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

LABEL_49:
      if (v7 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i <= 1u)
    {
      if (*i)
      {
        v10 = 0x800000029E2EB530;
        if (v8 != 0xD000000000000012)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0x800000029E2EB510;
        if (v8 != 0xD000000000000011)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_49;
    }

    if (v9 == 2)
    {
      v10 = 0x800000029E2EB550;
      if (v8 != 0xD000000000000013)
      {
        goto LABEL_5;
      }

      goto LABEL_49;
    }

    v11 = 0xD000000000000016;
    v10 = 0x800000029E2EB570;
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_29E143350(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E1433AC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29E1434A4;

  return v6(a1);
}

uint64_t sub_29E1434A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29E14359C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29DECA6A0;

  return sub_29E1433AC(a1, v4);
}

void sub_29E143654(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DE9408C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E1436BC()
{
  if (!qword_2A181D9A0)
  {
    sub_29E143654(255, &qword_2A181A090, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDBA210]);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D9A0);
    }
  }
}

unint64_t sub_29E143740()
{
  result = qword_2A181D9B0;
  if (!qword_2A181D9B0)
  {
    sub_29E143654(255, &unk_2A181D990, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDBA250]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D9B0);
  }

  return result;
}

void *sub_29E1437F8(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E1501BC(0, &qword_2A181B620, type metadata accessor for HKMCDisplayTypeIdentifier, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for HKMCDisplayTypeIdentifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E143958(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E1501BC(0, &qword_2A181DA10, sub_29E150220, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E150220();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E143B40(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E150138();
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E143C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1501BC(0, &qword_2A181DAF0, sub_29E1509C4, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_29E143DF0(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_29E1515DC(0, a5, a6, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_29E143F38(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1515DC(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E14405C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1515DC(0, &qword_2A181DB28, &type metadata for CategoryRow, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E1441FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1502F0();
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
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_29E1443A0(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E1501BC(0, &qword_2A181DBC0, sub_29E150DF0, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29DF3E0E8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E1445A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1515DC(0, &qword_2A181DD58, &type metadata for PDFCoverPageModel.Factor, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E14472C(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E1501BC(0, &unk_2A1A61CB0, sub_29DFCF3DC, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29DFCF3DC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E1448C4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_29E150CDC(0, a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x29EDCA190];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29DF942BC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_29E144A08(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1515DC(0, &qword_2A181CC70, MEMORY[0x29EDC37E0], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E144B60(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1501BC(0, &qword_2A1A5DFE0, type metadata accessor for HKMCCycleFactor, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_29E144D00(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1515DC(0, &qword_2A181DD30, &type metadata for PDFCoverPageModel.Cycle, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E144E38(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1515DC(0, &qword_2A181DD50, &type metadata for PDFCoverPageModel.Deviation, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E144FA0(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    a5(0);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 25;
    }

    v17[2] = v15;
    v17[3] = 2 * (v19 >> 3);
  }

  else
  {
    v17 = MEMORY[0x29EDCA190];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E15036C(0, a6, a7, a8, MEMORY[0x29EDC9A40]);
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29E145158(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E1501BC(0, &qword_2A181DB90, sub_29E150DBC, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E150DBC(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E1452D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1515DC(0, &qword_2A181DC38, &type metadata for OnboardingSelectRow, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E145440(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_29E1501BC(0, a5, a6, MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_29E145588(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1515DC(0, &unk_2A181B780, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_29E145764(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1515DC(0, &unk_2A181DB30, &type metadata for CycleStatisticRow, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_29E1458D0(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E1501BC(0, a5, a6, MEMORY[0x29EDC9E90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29E145AE0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_29E15036C(0, a5, a6, a7, MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29DF942BC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_29E145C4C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29E1515DC(0, &unk_2A181B780, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_29E145CE8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29E1515DC(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_29E145D8C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29E1501BC(0, &unk_2A181DC50, MEMORY[0x29EDB9950], MEMORY[0x29EDC9E90]);
  v4 = *(sub_29E2BC5F4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_29E145EAC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29E151440();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_29E145F24(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_29E2C4484();
LABEL_9:
  result = sub_29E2C45B4();
  *v1 = result;
  return result;
}

uint64_t sub_29E146050(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](a2);
  v6 = sub_29E2C4A54();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_29E14AFC8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_29E146148(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29E2C31A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29E151510(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
  v33 = a2;
  v11 = sub_29E2C3244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29E151510(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
      v21 = sub_29E2C3304();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29E14B114(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_29E146428(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_29E2C4A04();
  sub_29E2C34B4();
  v8 = sub_29E2C4A54();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_29E2C4914() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_29E2BF404();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_29E2BF404();
    sub_29E14B3E0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29E146578(void *a1, void *a2, unint64_t *a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;
    sub_29E2BF404();
    v17 = sub_29E2C4494();

    if (v17)
    {

      sub_29DE9408C(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_29E2C4484();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_29E14AD28(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_29E149C1C(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_29E14AF44(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_29DE9408C(0, a3);
    v19 = sub_29E2C40C4();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_29E2C40D4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_29E14BF20(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_29E1467F4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29E151510(&unk_2A1818E70, MEMORY[0x29EDB9D70]);
  v33 = a2;
  v11 = sub_29E2C3244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29E151510(&unk_2A181DBB0, MEMORY[0x29EDB9D70]);
      v21 = sub_29E2C3304();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29E14B560(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_29E146AD4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29E151510(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
  v33 = a2;
  v11 = sub_29E2C3244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29E151510(&qword_2A181D9E0, MEMORY[0x29EDB9C08]);
      v21 = sub_29E2C3304();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29E14B82C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_29E146DB4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29E2BD454();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29E151510(&qword_2A1A616A0, MEMORY[0x29EDC3828]);
  v33 = a2;
  v11 = sub_29E2C3244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29E151510(&qword_2A181DA68, MEMORY[0x29EDC3828]);
      v21 = sub_29E2C3304();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29E14BAF8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_29E147094(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](a2);
  v6 = sub_29E2C4A54();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_29E14BDC4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_29E1471B8(void *a1, void *a2, void (*a3)(void), void (*a4)(void))
{
  v5 = v4;
  v8 = *v4;
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C4A04();
  sub_29E2C34B4();
  v9 = sub_29E2C4A54();

  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v15 = v14;
      if (v13 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_29E2C4914();

      if (v18)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v22 = *(*(v8 + 48) + 8 * v11);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    v20 = a2;
    sub_29E14C0C8(v20, v11, isUniquelyReferenced_nonNull_native, a3, a4);
    *v5 = v26;
    *a1 = v20;
    return 1;
  }
}

void *sub_29E14736C()
{
  v1 = v0;
  sub_29DE93F50();
  v2 = *v0;
  v3 = sub_29E2C4524();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_29E1474F0()
{
  v1 = v0;
  sub_29E15029C(0, &qword_2A1A61D00, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0], MEMORY[0x29EDC9D70]);
  v2 = *v0;
  v3 = sub_29E2C4524();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_29E2BF404();
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

id sub_29E14766C(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  sub_29DE94000(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_29E2C4524();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_29E1477EC(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v24 - v7;
  a2(0);
  v9 = *v2;
  v10 = sub_29E2C4524();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}