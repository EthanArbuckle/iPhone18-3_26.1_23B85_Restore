uint64_t sub_223B80840(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_223BF45EC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DF2E10](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_223B808BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_223BF4ADC();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_223B809D0(uint64_t *a1)
{
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  v2 = *(*(v199 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v199);
  v198 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v197 = (&v188 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  v229 = *(v6 - 8);
  v7 = *(v229 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v230 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v228 = &v188 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1980, &qword_223BFAF28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v227 = (&v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v226 = (&v188 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1988, &unk_223BFAF30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v188 - v18;
  v20 = a1[1];
  v204 = *a1;
  v203 = v20;
  v21 = a1[3];
  v206 = a1[2];
  v205 = v21;
  v22 = a1[5];
  v201 = a1[4];
  v200 = v22;
  v210 = sub_223B75488(MEMORY[0x277D84F90]);
  v23 = a1[6];
  v26 = *(v23 + 64);
  v25 = v23 + 64;
  v24 = v26;
  v27 = 1 << *(a1[6] + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v221 = a1[6];
  v222 = v28 & v24;
  v29 = (v27 + 63) >> 6;

  v30 = 0;
  v208 = xmmword_223BF84C0;
  v218 = v25;
  v217 = v29;
LABEL_5:
  v31 = v30;
  v32 = v222;
  if (!v222)
  {
    goto LABEL_7;
  }

  do
  {
    v33 = v31;
LABEL_10:
    v222 = (v32 - 1) & v32;
    v34 = __clz(__rbit64(v32)) | (v33 << 6);
    v35 = (*(v221 + 48) + 16 * v34);
    v37 = *v35;
    v36 = v35[1];
    v38 = (*(v221 + 56) + 216 * v34);
    v39 = v38[1];
    v215 = *v38;
    v41 = v38[2];
    v40 = v38[3];
    v42 = v38[4];
    v43 = v38[5];
    v44 = v38[10];
    v45 = v33;

    if (sub_223BF45FC())
    {
      v202 = v41;
      v189 = v40;
      v211 = v42;
      v190 = v43;
      v192 = v37;
      v193 = v36;
      v194 = v45;
      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = MEMORY[0x277D84F90];
      }

      v47 = *(v46 + 16);
      v191 = v39;
      v225 = v19;
      if (v47)
      {
        v234 = MEMORY[0x277D84F90];
        sub_223B57DD4(0, v47, 0);
        v48 = 0;
        v49 = v234;
        v209 = v46 + 32;
        v50 = v202;
        v51 = &qword_27D0B18B8;
        v196 = v46;
        v195 = v47;
        while (1)
        {
          if (v48 >= *(v46 + 16))
          {
            goto LABEL_161;
          }

          v52 = v209 + 32 * v48;
          v53 = *v52;
          v54 = *(v52 + 8);
          v55 = *(v52 + 16);
          v56 = *(v52 + 24);
          v216 = v49;
          v212 = v48;
          v219 = v53;
          v214 = v54;
          LODWORD(v213) = v55;
          if (v55)
          {
            if ((v53 & 0x8000000000000000) != 0)
            {
              goto LABEL_162;
            }

            if (!HIDWORD(v53))
            {
              sub_223B81F4C(v53, v54, 1);
              sub_223B81F5C(v56);
              goto LABEL_82;
            }

            goto LABEL_163;
          }

          v57 = v53;
          sub_223B81F4C(v53, v54, 0);
          v207 = v56;
          sub_223B81F5C(v56);
          sub_223B81F4C(v53, v54, 0);
          sub_223BF459C();
          v58 = sub_223BF460C();
          v60 = v59;
          v62 = v61;
          v64 = v63;
          sub_223B81F74(v57, v54, 0);
          v65 = v60 >> 14;
          if (v58 >> 14 == v60 >> 14)
          {

            LODWORD(v53) = 0;
            v51 = &qword_27D0B18B8;
            goto LABEL_81;
          }

          v66 = v58 >> 14;
          v67 = (v62 >> 59) & 1;
          if ((v64 & 0x1000000000000000) == 0)
          {
            LOBYTE(v67) = 1;
          }

          v68 = 4 << v67;
          v223 = (v64 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v224 = v64 & 0xFFFFFFFFFFFFFFLL;
          v69 = HIBYTE(v64) & 0xF;
          v220 = v62 & 0xFFFFFFFFFFFFLL;
          if ((v64 & 0x2000000000000000) == 0)
          {
            v69 = v62 & 0xFFFFFFFFFFFFLL;
          }

          v231 = v69;

          LODWORD(v53) = 0;
          do
          {
            v70 = v58 & 0xC;
            v71 = (v58 & 1) == 0 || v70 == v68;
            v72 = v71;
            if (v71)
            {
              v73 = v58;
              if (v70 == v68)
              {
                v73 = sub_223B80840(v58, v62, v64);
              }

              if (v73 >> 14 < v66 || v73 >> 14 >= v65)
              {
                goto LABEL_157;
              }

              if ((v73 & 1) == 0)
              {
                v73 = sub_223B808BC(v73, v62, v64);
              }
            }

            else
            {
              if (v58 >> 14 < v66)
              {
                goto LABEL_156;
              }

              v73 = v58;
              if (v58 >> 14 >= v65)
              {
                goto LABEL_156;
              }
            }

            if ((v64 & 0x1000000000000000) != 0)
            {
              LOBYTE(v75) = sub_223BF4A9C();
              if (!v72)
              {
                goto LABEL_70;
              }

              goto LABEL_61;
            }

            v74 = v73 >> 16;
            if ((v64 & 0x2000000000000000) != 0)
            {
              v232 = v62;
              v233 = v224;
              v76 = &v232 + v74;
              v75 = *(&v232 + v74);
              if ((*(&v232 + v74) & 0x80000000) == 0)
              {
                goto LABEL_60;
              }

              v77 = (__clz(v75 ^ 0xFF) - 24);
              if (v77 <= 2)
              {
                if (v77 != 1)
                {
                  LOBYTE(v75) = v76[1] & 0x3F | (v75 << 6);
                }

LABEL_60:
                if (!v72)
                {
                  goto LABEL_70;
                }

                goto LABEL_61;
              }

              if (v77 == 3)
              {
                v78 = v76[1];
                v79 = v76[2];
              }

              else
              {
                v78 = v76[2];
                v79 = v76[3];
              }

              LOBYTE(v75) = v79 & 0x3F | (v78 << 6);
              if (!v72)
              {
                goto LABEL_70;
              }
            }

            else
            {
              if ((v62 & 0x1000000000000000) == 0)
              {
                sub_223BF4ADC();
              }

              LOBYTE(v75) = sub_223BF4AEC();
              if (!v72)
              {
LABEL_70:
                if (v231 <= v58 >> 16)
                {
                  goto LABEL_158;
                }

                goto LABEL_71;
              }
            }

LABEL_61:
            if (v70 == v68)
            {
              v58 = sub_223B80840(v58, v62, v64);
            }

            if (v231 <= v58 >> 16)
            {
              goto LABEL_159;
            }

            if ((v58 & 1) == 0)
            {
              v58 = v58 & 0xC | sub_223B808BC(v58, v62, v64) & 0xFFFFFFFFFFFFFFF3 | 1;
            }

LABEL_71:
            if ((v64 & 0x1000000000000000) != 0)
            {
              v58 = sub_223BF456C();
            }

            else
            {
              v80 = v58 >> 16;
              if ((v64 & 0x2000000000000000) != 0)
              {
                v232 = v62;
                v233 = v224;
                v82 = *(&v232 + v80);
              }

              else
              {
                v81 = v223;
                if ((v62 & 0x1000000000000000) == 0)
                {
                  v81 = sub_223BF4ADC();
                }

                v82 = *(v81 + v80);
              }

              v83 = v82;
              v84 = __clz(v82 ^ 0xFF) - 24;
              if (v83 >= 0)
              {
                LOBYTE(v84) = 1;
              }

              v58 = ((v80 + v84) << 16) | 5;
            }

            LODWORD(v53) = v75 | (v53 << 8);
          }

          while (v65 != v58 >> 14);
          swift_bridgeObjectRelease_n();
          v51 = &qword_27D0B18B8;
          v50 = v202;
LABEL_81:
          v47 = v195;
          v46 = v196;
          v56 = v207;
LABEL_82:
          if (qword_281339A58 != -1)
          {
            swift_once();
          }

          v85 = qword_28133B5C0;
          if (*(qword_28133B5C0 + 16) && (v86 = sub_223B6F918(v53), (v87 & 1) != 0))
          {
            v88 = (*(v85 + 56) + 16 * v86);
            v90 = *v88;
            v89 = v88[1];
            v232 = v56;
            v91 = *(v89 + 16);
            sub_223B81F5C(v56);
            v92 = v91(&v232, v204, v203, v206, v205, v90, v89);
            sub_223B81F84(v232);
            sub_223B81F74(v219, v214, v213);
            sub_223B81F84(v56);
          }

          else
          {
            sub_223B81F74(v219, v214, v213);
            sub_223B81F84(v56);
            v92 = MEMORY[0x277D84F98];
          }

          v49 = v216;
          v234 = v216;
          v94 = *(v216 + 16);
          v93 = *(v216 + 24);
          v95 = v212;
          if (v94 >= v93 >> 1)
          {
            v97 = v212;
            sub_223B57DD4((v93 > 1), v94 + 1, 1);
            v95 = v97;
            v49 = v234;
          }

          v48 = v95 + 1;
          *(v49 + 16) = v94 + 1;
          *(v49 + 8 * v94 + 32) = v92;
          v96 = v211;
          if (v48 == v47)
          {
            v98 = v49;

            v99 = MEMORY[0x277D84F90];
            goto LABEL_93;
          }
        }
      }

      v99 = MEMORY[0x277D84F90];
      v98 = MEMORY[0x277D84F90];
      v96 = v211;
      v50 = v202;
      v51 = &qword_27D0B18B8;
LABEL_93:
      v100 = sub_223B752A0(v99);
      v101 = v98;
      v212 = *(v98 + 16);
      if (v212)
      {
        v102 = 0;
        v213 = v98 + 32;
        v216 = v98;
        do
        {
          if (v102 >= *(v101 + 16))
          {
            goto LABEL_164;
          }

          v103 = *(v213 + 8 * v102);
          v214 = v102 + 1;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v231 = v100;
          v232 = v100;
          v105 = *(v103 + 64);
          v220 = v103 + 64;
          v106 = 1 << *(v103 + 32);
          if (v106 < 64)
          {
            v107 = ~(-1 << v106);
          }

          else
          {
            v107 = -1;
          }

          v108 = v107 & v105;
          v219 = (v106 + 63) >> 6;
          v223 = v103;

          v109 = 0;
          while (1)
          {
            if (!v108)
            {
              if (v219 <= v109 + 1)
              {
                v113 = v109 + 1;
              }

              else
              {
                v113 = v219;
              }

              v114 = v113 - 1;
              while (1)
              {
                v112 = v109 + 1;
                if (__OFADD__(v109, 1))
                {
                  break;
                }

                if (v112 >= v219)
                {
                  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, &qword_223BFA858);
                  v121 = v51;
                  v122 = v226;
                  (*(*(v144 - 8) + 56))(v226, 1, 1, v144);
                  v108 = 0;
                  goto LABEL_113;
                }

                v108 = *(v220 + 8 * v112);
                ++v109;
                if (v108)
                {
                  goto LABEL_112;
                }
              }

              __break(1u);
              goto LABEL_154;
            }

            v112 = v109;
LABEL_112:
            v115 = __clz(__rbit64(v108));
            v108 &= v108 - 1;
            v116 = v115 | (v112 << 6);
            v117 = *(*(v223 + 48) + 4 * v116);
            v118 = v228;
            sub_223B81F9C(*(v223 + 56) + *(v229 + 72) * v116, v228);
            v119 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, &qword_223BFA858);
            v120 = *(v119 + 48);
            v121 = v51;
            v122 = v226;
            *v226 = v117;
            sub_223B56890(v118, v122 + v120, &qword_27D0B1288, &qword_223BFAF20);
            (*(*(v119 - 8) + 56))(v122, 0, 1, v119);
            v114 = v112;
LABEL_113:
            v123 = v227;
            sub_223B56890(v122, v227, &qword_27D0B1980, &qword_223BFAF28);
            v124 = __swift_instantiateConcreteTypeFromMangledNameV2(v121, &qword_223BFA858);
            v51 = v121;
            if ((*(*(v124 - 8) + 48))(v123, 1, v124) == 1)
            {
              v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
              v126 = v225;
              (*(*(v125 - 8) + 56))(v225, 1, 1, v125);
            }

            else
            {
              v127 = *(v124 + 48);
              LODWORD(v224) = isUniquelyReferenced_nonNull_native;
              v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
              v129 = *v123;
              v130 = v123 + v127;
              v126 = v225;
              sub_223B81F9C(v130, v225 + *(v128 + 48));
              *v126 = v129;
              sub_223B56960(v123, v121, &qword_223BFA858);
              v51 = v121;
              LOBYTE(isUniquelyReferenced_nonNull_native) = v224;
              (*(*(v128 - 8) + 56))(v126, 0, 1, v128);
            }

            v100 = v231;
            v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
            if ((*(*(v131 - 8) + 48))(v126, 1, v131) == 1)
            {
              break;
            }

            v132 = *v126;
            sub_223B56890(v126 + *(v131 + 48), v230, &qword_27D0B1288, &qword_223BFAF20);
            v133 = sub_223B6F918(v132);
            v135 = *(v100 + 16);
            v136 = (v134 & 1) == 0;
            v137 = __OFADD__(v135, v136);
            v138 = v135 + v136;
            if (v137)
            {
              goto LABEL_155;
            }

            v139 = v134;
            if (*(v100 + 24) < v138)
            {
              sub_223B597B4(v138, isUniquelyReferenced_nonNull_native & 1);
              v140 = v232;
              v133 = sub_223B6F918(v132);
              if ((v139 & 1) != (v141 & 1))
              {
                goto LABEL_166;
              }

LABEL_123:
              if (v139)
              {
                goto LABEL_101;
              }

              goto LABEL_124;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              v140 = v100;
              goto LABEL_123;
            }

            v207 = v133;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1290, &unk_223BF7D10);
            v145 = sub_223BF4BFC();
            v140 = v145;
            if (*(v100 + 16))
            {
              v146 = (v145 + 64);
              v147 = (v100 + 64);
              v148 = ((1 << *(v140 + 32)) + 63) >> 6;
              v196 = v100 + 64;
              if (v140 != v100 || v146 >= &v147[8 * v148])
              {
                memmove(v146, v147, 8 * v148);
              }

              v149 = 0;
              *(v140 + 16) = *(v100 + 16);
              v150 = 1 << *(v100 + 32);
              if (v150 < 64)
              {
                v151 = ~(-1 << v150);
              }

              else
              {
                v151 = -1;
              }

              v152 = v151 & *(v100 + 64);
              v153 = (v150 + 63) >> 6;
              if (v152)
              {
                do
                {
                  v154 = __clz(__rbit64(v152));
                  v231 = (v152 - 1) & v152;
LABEL_141:
                  v157 = v154 | (v149 << 6);
                  v158 = *(v100 + 56);
                  LODWORD(v224) = *(*(v100 + 48) + 4 * v157);
                  v209 = *(v229 + 72) * v157;
                  sub_223B81F9C(v158 + v209, v228);
                  *(*(v140 + 48) + 4 * v157) = v224;
                  sub_223B56890(v228, *(v140 + 56) + v209, &qword_27D0B1288, &qword_223BFAF20);
                  v152 = v231;
                }

                while (v231);
              }

              v155 = v149;
              while (1)
              {
                v149 = v155 + 1;
                if (__OFADD__(v155, 1))
                {
                  goto LABEL_165;
                }

                if (v149 >= v153)
                {
                  break;
                }

                v156 = *(v196 + 8 * v149);
                ++v155;
                if (v156)
                {
                  v154 = __clz(__rbit64(v156));
                  v231 = (v156 - 1) & v156;
                  goto LABEL_141;
                }
              }
            }

            v232 = v140;
            v133 = v207;
            if (v139)
            {
LABEL_101:
              v110 = v228;
              v111 = *(v229 + 72) * v133;
              sub_223B81F9C(*(v140 + 56) + v111, v228);
              sub_223B56960(v230, &qword_27D0B1288, &qword_223BFAF20);
              sub_223B8200C(v110, *(v140 + 56) + v111);
              goto LABEL_102;
            }

LABEL_124:
            *(v140 + 8 * (v133 >> 6) + 64) |= 1 << v133;
            *(*(v140 + 48) + 4 * v133) = v132;
            sub_223B56890(v230, *(v140 + 56) + *(v229 + 72) * v133, &qword_27D0B1288, &qword_223BFAF20);
            v142 = *(v140 + 16);
            v137 = __OFADD__(v142, 1);
            v143 = v142 + 1;
            if (v137)
            {
              goto LABEL_160;
            }

            *(v140 + 16) = v143;
LABEL_102:
            isUniquelyReferenced_nonNull_native = 1;
            v109 = v114;
            v231 = v140;
            v51 = &qword_27D0B18B8;
          }

          v102 = v214;
          v96 = v211;
          v50 = v202;
          v101 = v216;
        }

        while (v214 != v212);
      }

      v231 = v100;

      v159 = v189;
      if (v189)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1360, &qword_223BF8540);
        v160 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
        v161 = *(v160 + 72);
        v162 = (*(v160 + 80) + 32) & ~*(v160 + 80);
        v163 = swift_allocObject();
        *(v163 + 16) = v208;
        sub_223B7FB68(v50, v159, 0x70697274737561, 0xE700000000000000, v206, v205, v201, v200, (v163 + v162));

        v164 = MEMORY[0x277D84F90];
      }

      else
      {
        v164 = MEMORY[0x277D84F90];
        v163 = MEMORY[0x277D84F90];
      }

      v165 = v193;
      v166 = v215;
      v167 = v190;
      if (v190)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1360, &qword_223BF8540);
        v168 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
        v169 = *(v168 + 72);
        v170 = (*(v168 + 80) + 32) & ~*(v168 + 80);
        v171 = swift_allocObject();
        *(v171 + 16) = v208;
        v172 = v96;
        v173 = v206;
        v174 = v205;
        v175 = v201;
        v176 = v200;
        sub_223B7FB68(v172, v167, 0x69727473706F7270, 0xE900000000000070, v206, v205, v201, v200, (v171 + v170));
        v177 = MEMORY[0x277D84F90];
      }

      else
      {
        v171 = v164;
        v173 = v206;
        v174 = v205;
        v175 = v201;
        v176 = v200;
        v177 = v164;
      }

      v178 = v197;
      sub_223B7FB68(v166, v191, 1735422820, 0xE400000000000000, v173, v174, v175, v176, v197);

      v179 = v199;
      *(v178 + *(v199 + 36)) = 1;
      *(v178 + v179[10]) = v163;
      *(v178 + v179[11]) = v171;
      *(v178 + v179[12]) = v177;
      *(v178 + v179[13]) = v231;
      v180 = v198;
      sub_223B56890(v178, v198, &qword_27D0B1278, &qword_223BF8500);
      v181 = v210;
      v182 = swift_isUniquelyReferenced_nonNull_native();
      v232 = v181;
      sub_223B70838(v180, v192, v165, v182);

      v210 = v232;
      v19 = v225;
      v25 = v218;
      v29 = v217;
      v30 = v194;
      goto LABEL_5;
    }

    v31 = v45;
    v29 = v217;
    v25 = v218;
    v32 = v222;
  }

  while (v222);
LABEL_7:
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v29)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1338, &unk_223BFAF50);
      inited = swift_initStackObject();
      *(inited + 16) = v208;
      *(inited + 32) = 0xD00000000000001ALL;
      v184 = inited + 32;
      v185 = v210;
      *(inited + 40) = 0x8000000223C03FE0;
      *(inited + 48) = v185;
      v186 = sub_223B75688(inited);
      swift_setDeallocating();
      sub_223B56960(v184, &qword_27D0B1358, &qword_223BF8538);
      return v186;
    }

    v32 = *(v25 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_10;
    }
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  result = sub_223BF4DEC();
  __break(1u);
  return result;
}

uint64_t sub_223B81F4C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_223B81F5C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_223B81F74(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_223B81F84(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_223B81F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223B8200C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_223B82090()
{
  result = qword_281339A68;
  if (!qword_281339A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A68);
  }

  return result;
}

unint64_t sub_223B820E8()
{
  result = qword_27D0B19B0;
  if (!qword_27D0B19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B19B0);
  }

  return result;
}

uint64_t sub_223B8213C()
{
  sub_223BF458C();
}

uint64_t sub_223B82280()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B823D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A18, &qword_223BFB3A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B87018();
  sub_223BF4EDC();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_223BF4D2C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_223BF4D2C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_223BF4D2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_223B82578(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1AA8, &qword_223BFB848);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v13[0] = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B81F4C(v7, v8, v9);
  sub_223B87E74();
  sub_223BF4EDC();
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A78, &qword_223BFB830);
  sub_223B569C0(&qword_27D0B1AB0, &qword_27D0B1A78, &qword_223BFB830);
  v11 = v13[1];
  sub_223BF4D4C();
  sub_223B81F74(v15, v16, v17);
  if (!v11)
  {
    v15 = v13[0];
    v18 = 1;
    sub_223B81F5C(v13[0]);
    sub_223B5A61C();
    sub_223BF4D1C();
    sub_223B81F84(v15);
  }

  return (*(v14 + 8))(v6, v3);
}

uint64_t sub_223B8278C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A70, &qword_223BFB828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B87E74();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A78, &qword_223BFB830);
  v21 = 0;
  sub_223B569C0(qword_2813399C0, &qword_27D0B1A78, &qword_223BFB830);
  sub_223BF4CBC();
  v11 = v17;
  v12 = v18;
  v20 = v19;
  v21 = 1;
  sub_223B5A670();
  sub_223BF4C8C();
  (*(v6 + 8))(v9, v5);
  v13 = v17;
  *a2 = v11;
  *(a2 + 8) = v12;
  v14 = v20;
  *(a2 + 16) = v20;
  *(a2 + 24) = v13;
  sub_223B81F4C(v11, v12, v14);
  sub_223B81F5C(v13);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_223B81F74(v11, v12, v14);
  return sub_223B81F84(v13);
}

uint64_t sub_223B82A08(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B28, &qword_223BFBBF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B883E0();
  sub_223BF4EDC();
  v11 = *v3;
  LOBYTE(v21) = 0;
  sub_223BF4D3C();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v21) = 1;
    sub_223BF4D3C();
    v13 = v3[2];
    LOBYTE(v21) = 2;
    sub_223BF4D3C();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v21) = 3;
    sub_223BF4D2C();
    v16 = v3[5];
    LOBYTE(v21) = 4;
    sub_223BF4D3C();
    v17 = v3[6];
    LOBYTE(v21) = 5;
    sub_223BF4D3C();
    v18 = *(v3 + 56);
    LOBYTE(v21) = 6;
    sub_223BF4CFC();
    v21 = v3[8];
    v20[7] = 7;
    sub_223B88080();
    sub_223BF4D1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_223B82C88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1AB8, &qword_223BFB850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B87EC8();
  sub_223BF4EDC();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v25) = 0;
  sub_223BF4D0C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v25) = 1;
    sub_223BF4CEC();
    v15 = *(v3 + 3);
    v16 = *(v3 + 5);
    v31 = *(v3 + 4);
    v32 = v16;
    v17 = *(v3 + 3);
    v30[0] = *(v3 + 2);
    v30[1] = v17;
    v26 = v15;
    v27 = v31;
    v28 = *(v3 + 5);
    v33 = v3[12];
    v29 = v3[12];
    v25 = v30[0];
    v24 = 2;
    sub_223B568F8(v30, v22, &qword_27D0B1A90, &qword_223BFB840);
    sub_223B8802C();
    sub_223BF4D1C();
    v22[2] = v27;
    v22[3] = v28;
    v23 = v29;
    v22[1] = v26;
    v22[0] = v25;
    sub_223B56960(v22, &qword_27D0B1A90, &qword_223BFB840);
    v18 = *(v3 + 104);
    LOBYTE(v21) = 3;
    sub_223BF4CFC();
    v21 = v3[14];
    v20[7] = 4;
    sub_223B88080();
    sub_223BF4D1C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_223B82F98(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6870617267;
    v6 = 0x69727473706F7270;
    if (a1 != 2)
    {
      v6 = 0x7079546E69616863;
    }

    if (a1)
    {
      v5 = 0x70697274737561;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x69747265706F7270;
    v2 = 0x6F43656D756C6F76;
    if (a1 != 7)
    {
      v2 = 0x6E49656D756C6F76;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6143646C756F6873;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_223B830E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A20, &qword_223BFB3B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B8706C();
  sub_223BF4EDC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v30) = 0;
  sub_223BF4D2C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v30) = 1;
    sub_223BF4CEC();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v30) = 2;
    sub_223BF4CEC();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v30) = 3;
    sub_223BF4D2C();
    v19 = *(v3 + 64);
    LOBYTE(v30) = 4;
    sub_223BF4CFC();
    *&v30 = v3[9];
    LOBYTE(v28[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A00, &qword_223BFB388);
    sub_223B8723C(&qword_27D0B1A28, &qword_27D0B1A30);
    sub_223BF4D1C();
    *&v30 = v3[10];
    LOBYTE(v28[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A10, &unk_223BFB398);
    sub_223B87334(&qword_27D0B1A38, sub_223B873AC);
    sub_223BF4D1C();
    *&v30 = v3[11];
    LOBYTE(v28[0]) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1898, &qword_223BFA830);
    sub_223B87114(&qword_27D0B1A48);
    sub_223BF4D1C();
    v20 = *(v3 + 11);
    v21 = *(v3 + 9);
    v41 = *(v3 + 10);
    v42 = v20;
    v22 = *(v3 + 11);
    v43 = *(v3 + 12);
    v23 = *(v3 + 7);
    v38[0] = *(v3 + 6);
    v38[1] = v23;
    v24 = *(v3 + 9);
    v26 = *(v3 + 6);
    v25 = *(v3 + 7);
    v39 = *(v3 + 8);
    v40 = v24;
    v34 = v41;
    v35 = v22;
    v36 = *(v3 + 12);
    v30 = v26;
    v31 = v25;
    v44 = v3[26];
    v37 = v3[26];
    v32 = v39;
    v33 = v21;
    v45 = 8;
    sub_223B568F8(v38, v28, &qword_27D0B1A50, &qword_223BFB3B8);
    sub_223B87400();
    sub_223BF4D1C();
    v28[4] = v34;
    v28[5] = v35;
    v28[6] = v36;
    v29 = v37;
    v28[0] = v30;
    v28[1] = v31;
    v28[2] = v32;
    v28[3] = v33;
    sub_223B56960(v28, &qword_27D0B1A50, &qword_223BFB3B8);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_223B8352C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BA8, &qword_223BFBF30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B88990();
  sub_223BF4EDC();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A08, &qword_223BFB390);
  sub_223B872C8(&qword_27D0B1A30);
  sub_223BF4D4C();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B88, &qword_223BFBF20);
    sub_223B889E4(&qword_27D0B1BB0, &qword_27D0B1BB8);
    sub_223BF4D4C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_223B83748(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B30, &qword_223BFBC00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B8849C();
  sub_223BF4EDC();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B10, &qword_223BFBBF0);
  sub_223B884F0(&qword_27D0B1B38, sub_223B885BC);
  sub_223BF4D4C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_223B838D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19C8, &qword_223BFB048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B86AC4();
  sub_223BF4EDC();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v17 = v3[2];
  v14 = 0;
  sub_223B86BC0();
  sub_223BF4D4C();
  if (!v2)
  {
    *&v15 = *(v3 + 6);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19C0, &qword_223BFB040);
    sub_223B86C14(&qword_27D0B19D8, sub_223B86C98);
    sub_223BF4D4C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_223B83ABC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6150676E696E7574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6150746573657270;
  }
}

uint64_t sub_223B83B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223B879A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223B83B44(uint64_t a1)
{
  v2 = sub_223B87018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B83B80(uint64_t a1)
{
  v2 = sub_223B87018();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_223B83BBC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_223B861A8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_223B83C18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1868983881;
  }

  else
  {
    v4 = 17481;
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
    v6 = 1868983881;
  }

  else
  {
    v6 = 17481;
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
    v9 = sub_223BF4DAC();
  }

  return v9 & 1;
}

uint64_t sub_223B83CAC()
{
  v1 = *v0;
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B83D1C()
{
  *v0;
  sub_223BF458C();
}

uint64_t sub_223B83D78()
{
  v1 = *v0;
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

void sub_223B83DF0(uint64_t *a1@<X8>)
{
  v2 = 17481;
  if (*v1)
  {
    v2 = 1868983881;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_223B83E1C()
{
  if (*v0)
  {
    result = 1868983881;
  }

  else
  {
    result = 17481;
  }

  *v0;
  return result;
}

uint64_t sub_223B83E50(uint64_t a1)
{
  v2 = sub_223B87E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B83E8C(uint64_t a1)
{
  v2 = sub_223B87E74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B83F20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223B87AD4();
  *a2 = result;
  return result;
}

void sub_223B83F50(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x654B656C62616E45;
  v5 = 0x8000000223C03C30;
  v6 = 0xD000000000000015;
  if (v2 != 6)
  {
    v6 = 0x7543656D756C6F56;
    v5 = 0xEB00000000657672;
  }

  v7 = 0xE700000000000000;
  v8 = 0x79654B656D6954;
  if (v2 != 4)
  {
    v8 = 0x74696E55656D6954;
    v7 = 0xEC00000065707954;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x74696E556E696147;
  v10 = 0xEC00000065707954;
  if (v2 != 2)
  {
    v9 = 17481;
    v10 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = 0x79654B6E696147;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_223B84064()
{
  v1 = *v0;
  v2 = 0x654B656C62616E45;
  v3 = 0xD000000000000015;
  if (v1 != 6)
  {
    v3 = 0x7543656D756C6F56;
  }

  v4 = 0x79654B656D6954;
  if (v1 != 4)
  {
    v4 = 0x74696E55656D6954;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74696E556E696147;
  if (v1 != 2)
  {
    v5 = 17481;
  }

  if (*v0)
  {
    v2 = 0x79654B6E696147;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_223B84174@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223B87AD4();
  *a1 = result;
  return result;
}

uint64_t sub_223B841A8(uint64_t a1)
{
  v2 = sub_223B883E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B841E4(uint64_t a1)
{
  v2 = sub_223B883E0();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_223B84220@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_223B852C4(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_223B84298()
{
  v1 = *v0;
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B843A0()
{
  *v0;
  *v0;
  *v0;
  sub_223BF458C();
}

uint64_t sub_223B84494()
{
  v1 = *v0;
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B84598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223B87B20();
  *a2 = result;
  return result;
}

void sub_223B845C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6570795474726F50;
  v5 = 0xEE0073726574656DLL;
  v6 = 0x617261506B637544;
  v7 = 0x8000000223C03C30;
  v8 = 0xD000000000000015;
  if (v2 != 3)
  {
    v8 = 0x7543656D756C6F56;
    v7 = 0xEB00000000657672;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x617261506574754DLL;
    v3 = 0xED0000726574656DLL;
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

uint64_t sub_223B8468C()
{
  v1 = *v0;
  v2 = 0x6570795474726F50;
  v3 = 0x617261506B637544;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x7543656D756C6F56;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617261506574754DLL;
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

uint64_t sub_223B8474C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223B87B20();
  *a1 = result;
  return result;
}

uint64_t sub_223B84780(uint64_t a1)
{
  v2 = sub_223B87EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B847BC(uint64_t a1)
{
  v2 = sub_223B87EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_223B847F8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_223B85654(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_223B84880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223B87B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223B848B4(uint64_t a1)
{
  v2 = sub_223B8706C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B848F0(uint64_t a1)
{
  v2 = sub_223B8706C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_223B8492C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_223B85A70(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t sub_223B849D0()
{
  if (*v0)
  {
    result = 0x72616C616373;
  }

  else
  {
    result = 16996;
  }

  *v0;
  return result;
}

uint64_t sub_223B849FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 16996 && a2 == 0xE200000000000000;
  if (v5 || (sub_223BF4DAC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_223BF4DAC();

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

uint64_t sub_223B84ACC(uint64_t a1)
{
  v2 = sub_223B88990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B84B08(uint64_t a1)
{
  v2 = sub_223B88990();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B84B44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_223B863F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_223B84B8C()
{
  sub_223BF4E8C();
  sub_223BF458C();
  return sub_223BF4EBC();
}

uint64_t sub_223B84C00()
{
  sub_223BF4E8C();
  sub_223BF458C();
  return sub_223BF4EBC();
}

uint64_t sub_223B84C54@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_223BF4C2C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_223B84CE4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_223BF4C2C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_223B84D3C(uint64_t a1)
{
  v2 = sub_223B8849C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B84D78(uint64_t a1)
{
  v2 = sub_223B8849C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_223B84DB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_223B86660(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_223B84DFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72756769666E6F43;
  }

  else
  {
    v4 = 0x61446E6F6D6D6F43;
  }

  if (v3)
  {
    v5 = 0xEA00000000006174;
  }

  else
  {
    v5 = 0xEE00736E6F697461;
  }

  if (*a2)
  {
    v6 = 0x72756769666E6F43;
  }

  else
  {
    v6 = 0x61446E6F6D6D6F43;
  }

  if (*a2)
  {
    v7 = 0xEE00736E6F697461;
  }

  else
  {
    v7 = 0xEA00000000006174;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_223BF4DAC();
  }

  return v9 & 1;
}

uint64_t sub_223B84EB4()
{
  v1 = *v0;
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B84F48()
{
  *v0;
  sub_223BF458C();
}

uint64_t sub_223B84FC8()
{
  v1 = *v0;
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B85064@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_223BF4C2C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_223B850C0(uint64_t *a1@<X8>)
{
  v2 = 0x61446E6F6D6D6F43;
  if (*v1)
  {
    v2 = 0x72756769666E6F43;
  }

  v3 = 0xEA00000000006174;
  if (*v1)
  {
    v3 = 0xEE00736E6F697461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_223B85110()
{
  if (*v0)
  {
    result = 0x72756769666E6F43;
  }

  else
  {
    result = 0x61446E6F6D6D6F43;
  }

  *v0;
  return result;
}

uint64_t sub_223B85168@<X0>(char *a1@<X8>)
{
  v2 = sub_223BF4C2C();

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

uint64_t sub_223B851C8(uint64_t a1)
{
  v2 = sub_223B86AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B85204(uint64_t a1)
{
  v2 = sub_223B86AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_223B85240@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_223B86814(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_223B852C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1AF0, &qword_223BFBBE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B883E0();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_223BF4CAC();
  LOBYTE(v35[0]) = 1;
  v12 = sub_223BF4CAC();
  LOBYTE(v35[0]) = 2;
  v29 = sub_223BF4CAC();
  LOBYTE(v35[0]) = 3;
  v13 = sub_223BF4C9C();
  v28 = v14;
  v27 = v13;
  LOBYTE(v35[0]) = 4;
  v26 = sub_223BF4CAC();
  LOBYTE(v35[0]) = 5;
  v25 = sub_223BF4CAC();
  LOBYTE(v35[0]) = 6;
  v24 = sub_223BF4C6C();
  v38 = 7;
  sub_223B87F70();
  sub_223BF4C8C();
  (*(v6 + 8))(v9, v5);
  v23 = v39;
  *&v30 = v11;
  *(&v30 + 1) = v12;
  v15 = v29;
  v16 = v27;
  *&v31 = v29;
  *(&v31 + 1) = v27;
  v17 = v26;
  *&v32 = v28;
  *(&v32 + 1) = v26;
  v18 = v25;
  *&v33 = v25;
  BYTE8(v33) = v24;
  v34 = v39;
  sub_223B88434(&v30, v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35[0] = v11;
  v35[1] = v12;
  v35[2] = v15;
  v35[3] = v16;
  v35[4] = v28;
  v35[5] = v17;
  v35[6] = v18;
  v36 = v24;
  v37 = v23;
  result = sub_223B8846C(v35);
  v20 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v20;
  *(a2 + 64) = v34;
  v21 = v31;
  *a2 = v30;
  *(a2 + 16) = v21;
  return result;
}

uint64_t sub_223B85654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A80, &qword_223BFB838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_223B87EC8();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v62);
  }

  v12 = v6;
  LOBYTE(v37) = 0;
  v13 = v5;
  v28 = sub_223BF4C7C();
  v61 = v14 & 1;
  LOBYTE(v37) = 1;
  v15 = sub_223BF4C5C();
  v17 = v16;
  v27 = v15;
  v50 = 2;
  sub_223B87F1C();
  sub_223BF4C8C();
  v58 = v53;
  v59 = v54;
  v60 = v55;
  v56 = v51;
  v57 = v52;
  LOBYTE(v37) = 3;
  v18 = sub_223BF4C6C();
  v48 = 4;
  sub_223B87F70();
  sub_223BF4C8C();
  (*(v12 + 8))(v9, v13);
  v26 = v49;
  v19 = v27;
  v20 = v28;
  *&v29 = v28;
  v21 = v61;
  BYTE8(v29) = v61;
  *&v30 = v27;
  *(&v30 + 1) = v17;
  v33 = v58;
  v34 = v59;
  *&v35 = v60;
  v32 = v57;
  v31 = v56;
  BYTE8(v35) = v18;
  v36 = v49;
  sub_223B87FC4(&v29, &v37);
  __swift_destroy_boxed_opaque_existential_0(v62);
  v37 = v20;
  v38 = v21;
  v39 = v19;
  v40 = v17;
  v43 = v58;
  v44 = v59;
  v45 = v60;
  v41 = v56;
  v42 = v57;
  v46 = v18;
  v47 = v26;
  result = sub_223B87FFC(&v37);
  v23 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v23;
  *(a2 + 96) = v35;
  *(a2 + 112) = v36;
  v24 = v30;
  *a2 = v29;
  *(a2 + 16) = v24;
  v25 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v25;
  return result;
}

uint64_t sub_223B85A70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19F8, &qword_223BFB380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_223B8706C();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v100);
  }

  v12 = v6;
  v55 = a2;
  LOBYTE(v70[0]) = 0;
  v13 = v5;
  v15 = sub_223BF4C9C();
  v54 = v16;
  LOBYTE(v70[0]) = 1;
  v17 = sub_223BF4C5C();
  v53 = v18;
  v19 = v17;
  LOBYTE(v70[0]) = 2;
  v20 = sub_223BF4C5C();
  v51 = v21;
  LOBYTE(v70[0]) = 3;
  v22 = sub_223BF4C9C();
  v49 = v20;
  v50 = v22;
  v52 = v23;
  LOBYTE(v70[0]) = 4;
  v47 = sub_223BF4C6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A00, &qword_223BFB388);
  LOBYTE(v56) = 5;
  sub_223B8723C(&qword_281339308, &qword_2813392F8);
  sub_223BF4C8C();
  v46 = v70[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A10, &unk_223BFB398);
  LOBYTE(v56) = 6;
  sub_223B87334(&qword_281339320, sub_223B870C0);
  v45 = 0;
  sub_223BF4C8C();
  v48 = 0;
  v24 = v70[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1898, &qword_223BFA830);
  LOBYTE(v56) = 7;
  sub_223B87114(&qword_281339310);
  v25 = v48;
  sub_223BF4C8C();
  v48 = v25;
  if (v25)
  {
    (*(v12 + 8))(v9, v13);
    __swift_destroy_boxed_opaque_existential_0(v100);
    v26 = 0;
    v27 = v45;
  }

  else
  {
    v44 = v24;
    v43 = v70[0];
    v83 = 8;
    sub_223B87180();
    v28 = v48;
    sub_223BF4C8C();
    v48 = v28;
    if (!v28)
    {
      (*(v12 + 8))(v9, v13);
      v96 = v88;
      v97 = v89;
      v98 = v90;
      v92 = v84;
      v93 = v85;
      v94 = v86;
      v95 = v87;
      v66 = v88;
      v67 = v89;
      v68 = v90;
      v62 = v84;
      v63 = v85;
      v99 = v91;
      v29 = v54;
      *&v56 = v15;
      *(&v56 + 1) = v54;
      v30 = v19;
      *&v57 = v19;
      v32 = v52;
      v31 = v53;
      v33 = v49;
      *(&v57 + 1) = v53;
      *&v58 = v49;
      v34 = v51;
      *(&v58 + 1) = v51;
      *&v59 = v50;
      *(&v59 + 1) = v52;
      LOBYTE(v60) = v47;
      *(&v60 + 1) = v46;
      *&v61 = v44;
      *(&v61 + 1) = v43;
      v69 = v91;
      v64 = v86;
      v65 = v87;
      sub_223B871D4(&v56, v70);
      __swift_destroy_boxed_opaque_existential_0(v100);
      v70[0] = v15;
      v70[1] = v29;
      v70[2] = v30;
      v70[3] = v31;
      v70[4] = v33;
      v70[5] = v34;
      v70[6] = v50;
      v70[7] = v32;
      v71 = v47;
      v72 = v46;
      v73 = v44;
      v79 = v96;
      v80 = v97;
      v81 = v98;
      v74 = v43;
      v82 = v99;
      v75 = v92;
      v76 = v93;
      v77 = v94;
      v78 = v95;
      result = sub_223B8720C(v70);
      v35 = v67;
      v36 = v55;
      *(v55 + 160) = v66;
      *(v36 + 176) = v35;
      *(v36 + 192) = v68;
      *(v36 + 208) = v69;
      v37 = v63;
      *(v36 + 96) = v62;
      *(v36 + 112) = v37;
      v38 = v65;
      *(v36 + 128) = v64;
      *(v36 + 144) = v38;
      v39 = v59;
      *(v36 + 32) = v58;
      *(v36 + 48) = v39;
      v40 = v61;
      *(v36 + 64) = v60;
      *(v36 + 80) = v40;
      v41 = v57;
      *v36 = v56;
      *(v36 + 16) = v41;
      return result;
    }

    (*(v12 + 8))(v9, v13);
    __swift_destroy_boxed_opaque_existential_0(v100);
    v26 = 1;
    v27 = v45;
  }

  if (!v27)
  {
  }

  if (v26)
  {
  }

  return result;
}

uint64_t sub_223B861A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19F0, &qword_223BFB378);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B87018();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_223BF4C9C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_223BF4C9C();
  v23 = v14;
  v25 = 2;
  v15 = sub_223BF4C9C();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

uint64_t sub_223B863F4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B78, &qword_223BFBF18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B88990();
  sub_223BF4ECC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A08, &qword_223BFB390);
  HIBYTE(v10) = 0;
  sub_223B872C8(&qword_2813392F8);
  sub_223BF4CBC();
  v9 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B88, &qword_223BFBF20);
  HIBYTE(v10) = 1;
  sub_223B889E4(&qword_27D0B1B90, &qword_27D0B1B98);
  sub_223BF4CBC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

void *sub_223B86660(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B00, &qword_223BFBBE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B8849C();
  sub_223BF4ECC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B10, &qword_223BFBBF0);
    sub_223B884F0(&qword_27D0B1B18, sub_223B88568);
    sub_223BF4CBC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t sub_223B86814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19B8, &qword_223BFB038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B86AC4();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  sub_223B86B18();
  sub_223BF4CBC();
  v19 = v21;
  v20 = v22;
  v11 = v24;
  v12 = v26;
  v17 = v25;
  v18 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19C0, &qword_223BFB040);
  v27 = 1;
  sub_223B86C14(&qword_281339338, sub_223B86B6C);
  sub_223BF4CBC();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v13 = v21;

  __swift_destroy_boxed_opaque_existential_0(a1);

  v16 = v18;
  *a2 = v19;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v11;
  a2[4] = v17;
  a2[5] = v12;
  a2[6] = v13;
  return result;
}

unint64_t sub_223B86AC4()
{
  result = qword_281339A80;
  if (!qword_281339A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A80);
  }

  return result;
}

unint64_t sub_223B86B18()
{
  result = qword_281339A88;
  if (!qword_281339A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A88);
  }

  return result;
}

unint64_t sub_223B86B6C()
{
  result = qword_281339AA8;
  if (!qword_281339AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AA8);
  }

  return result;
}

unint64_t sub_223B86BC0()
{
  result = qword_27D0B19D0;
  if (!qword_27D0B19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B19D0);
  }

  return result;
}

uint64_t sub_223B86C14(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B19C0, &qword_223BFB040);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B86C98()
{
  result = qword_27D0B19E0;
  if (!qword_27D0B19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B19E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift07VirtualA24GraphConfigurationSchemaV0F0V10VolumeInfoV14DuckParametersVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift07VirtualA24GraphConfigurationSchemaV0F0V10VolumeInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_223B86D6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_223B86DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_223B86E4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_223B86E94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_223B86F14()
{
  result = qword_27D0B19E8;
  if (!qword_27D0B19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B19E8);
  }

  return result;
}

unint64_t sub_223B86F6C()
{
  result = qword_281339A70;
  if (!qword_281339A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A70);
  }

  return result;
}

unint64_t sub_223B86FC4()
{
  result = qword_281339A78;
  if (!qword_281339A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A78);
  }

  return result;
}

unint64_t sub_223B87018()
{
  result = qword_281339AA0;
  if (!qword_281339AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AA0);
  }

  return result;
}

unint64_t sub_223B8706C()
{
  result = qword_281339AE8;
  if (!qword_281339AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AE8);
  }

  return result;
}

unint64_t sub_223B870C0()
{
  result = qword_281339AB0;
  if (!qword_281339AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AB0);
  }

  return result;
}

uint64_t sub_223B87114(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1898, &qword_223BFA830);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B87180()
{
  result = qword_281339AD0;
  if (!qword_281339AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AD0);
  }

  return result;
}

uint64_t sub_223B8723C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1A00, &qword_223BFB388);
    sub_223B872C8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223B872C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1A08, &qword_223BFB390);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223B87334(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1A10, &unk_223BFB398);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B873AC()
{
  result = qword_27D0B1A40;
  if (!qword_27D0B1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A40);
  }

  return result;
}

unint64_t sub_223B87400()
{
  result = qword_27D0B1A58;
  if (!qword_27D0B1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VirtualAudioGraphConfigurationSchema.Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VirtualAudioGraphConfigurationSchema.Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_223B875E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_223B8763C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift19UntypedPropertyListOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x7A)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_223B876F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_223B87740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_223B87798()
{
  result = qword_27D0B1A60;
  if (!qword_27D0B1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A60);
  }

  return result;
}

unint64_t sub_223B877F0()
{
  result = qword_27D0B1A68;
  if (!qword_27D0B1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A68);
  }

  return result;
}

unint64_t sub_223B87848()
{
  result = qword_281339AD8;
  if (!qword_281339AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AD8);
  }

  return result;
}

unint64_t sub_223B878A0()
{
  result = qword_281339AE0;
  if (!qword_281339AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AE0);
  }

  return result;
}

unint64_t sub_223B878F8()
{
  result = qword_281339A90;
  if (!qword_281339A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A90);
  }

  return result;
}

unint64_t sub_223B87950()
{
  result = qword_281339A98;
  if (!qword_281339A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A98);
  }

  return result;
}

uint64_t sub_223B879A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6150746573657270 && a2 == 0xEA00000000006874;
  if (v4 || (sub_223BF4DAC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223C04950 == a2 || (sub_223BF4DAC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6150676E696E7574 && a2 == 0xEA00000000006874)
  {

    return 2;
  }

  else
  {
    v6 = sub_223BF4DAC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_223B87AD4()
{
  v0 = sub_223BF4C2C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_223B87B20()
{
  v0 = sub_223BF4C2C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_223B87B6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6870617267 && a2 == 0xE500000000000000;
  if (v4 || (sub_223BF4DAC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70697274737561 && a2 == 0xE700000000000000 || (sub_223BF4DAC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69727473706F7270 && a2 == 0xE900000000000070 || (sub_223BF4DAC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7079546E69616863 && a2 == 0xE900000000000065 || (sub_223BF4DAC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6143646C756F6873 && a2 == 0xEB00000000656863 || (sub_223BF4DAC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223C04970 == a2 || (sub_223BF4DAC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_223BF4DAC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43656D756C6F76 && a2 == 0xEE0073646E616D6DLL || (sub_223BF4DAC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E49656D756C6F76 && a2 == 0xEA00000000006F66)
  {

    return 8;
  }

  else
  {
    v6 = sub_223BF4DAC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_223B87E74()
{
  result = qword_281339AC8;
  if (!qword_281339AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AC8);
  }

  return result;
}

unint64_t sub_223B87EC8()
{
  result = qword_27D0B1A88;
  if (!qword_27D0B1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A88);
  }

  return result;
}

unint64_t sub_223B87F1C()
{
  result = qword_27D0B1A98;
  if (!qword_27D0B1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A98);
  }

  return result;
}

unint64_t sub_223B87F70()
{
  result = qword_27D0B1AA0;
  if (!qword_27D0B1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AA0);
  }

  return result;
}

unint64_t sub_223B8802C()
{
  result = qword_27D0B1AC0;
  if (!qword_27D0B1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AC0);
  }

  return result;
}

unint64_t sub_223B88080()
{
  result = qword_27D0B1AC8;
  if (!qword_27D0B1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AC8);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_223B88128(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_223B88170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_223B881D4()
{
  result = qword_27D0B1AD0;
  if (!qword_27D0B1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AD0);
  }

  return result;
}

unint64_t sub_223B8822C()
{
  result = qword_27D0B1AD8;
  if (!qword_27D0B1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AD8);
  }

  return result;
}

unint64_t sub_223B88284()
{
  result = qword_27D0B1AE0;
  if (!qword_27D0B1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AE0);
  }

  return result;
}

unint64_t sub_223B882DC()
{
  result = qword_27D0B1AE8;
  if (!qword_27D0B1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AE8);
  }

  return result;
}

unint64_t sub_223B88334()
{
  result = qword_281339AB8;
  if (!qword_281339AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AB8);
  }

  return result;
}

unint64_t sub_223B8838C()
{
  result = qword_281339AC0;
  if (!qword_281339AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AC0);
  }

  return result;
}

unint64_t sub_223B883E0()
{
  result = qword_27D0B1AF8;
  if (!qword_27D0B1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AF8);
  }

  return result;
}

unint64_t sub_223B8849C()
{
  result = qword_27D0B1B08;
  if (!qword_27D0B1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B08);
  }

  return result;
}

uint64_t sub_223B884F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1B10, &qword_223BFBBF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B88568()
{
  result = qword_27D0B1B20;
  if (!qword_27D0B1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B20);
  }

  return result;
}

unint64_t sub_223B885BC()
{
  result = qword_27D0B1B40;
  if (!qword_27D0B1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VirtualAudioGraphConfigurationSchema.Configuration.VolumeInfo.DuckParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VirtualAudioGraphConfigurationSchema.Configuration.VolumeInfo.DuckParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_223B88784()
{
  result = qword_27D0B1B48;
  if (!qword_27D0B1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B48);
  }

  return result;
}

unint64_t sub_223B887DC()
{
  result = qword_27D0B1B50;
  if (!qword_27D0B1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B50);
  }

  return result;
}

unint64_t sub_223B88834()
{
  result = qword_27D0B1B58;
  if (!qword_27D0B1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B58);
  }

  return result;
}

unint64_t sub_223B8888C()
{
  result = qword_27D0B1B60;
  if (!qword_27D0B1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B60);
  }

  return result;
}

unint64_t sub_223B888E4()
{
  result = qword_27D0B1B68;
  if (!qword_27D0B1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B68);
  }

  return result;
}

unint64_t sub_223B8893C()
{
  result = qword_27D0B1B70;
  if (!qword_27D0B1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B70);
  }

  return result;
}

unint64_t sub_223B88990()
{
  result = qword_27D0B1B80;
  if (!qword_27D0B1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B80);
  }

  return result;
}

uint64_t sub_223B889E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1B88, &qword_223BFBF20);
    sub_223B569C0(a2, &qword_27D0B1BA0, &qword_223BFBF28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B88A90()
{
  result = qword_27D0B1BC0;
  if (!qword_27D0B1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1BC0);
  }

  return result;
}

unint64_t sub_223B88AE8()
{
  result = qword_27D0B1BC8;
  if (!qword_27D0B1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1BC8);
  }

  return result;
}

unint64_t sub_223B88B40()
{
  result = qword_27D0B1BD0;
  if (!qword_27D0B1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1BD0);
  }

  return result;
}

unint64_t sub_223B88B98()
{
  result = sub_223B5B1C4();
  dword_28133B5DC = result;
  return result;
}

unint64_t sub_223B88BC4()
{
  result = sub_223B5B1C4();
  dword_28133B5D8 = result;
  return result;
}

unint64_t sub_223B88BF0()
{
  result = sub_223B5B1C4();
  dword_28133B5D4 = result;
  return result;
}

unint64_t sub_223B88C44()
{
  result = sub_223B5B1C4();
  dword_28133B5CC = result;
  return result;
}

unint64_t sub_223B88C94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_223BF84C0;
  v4 = v0[14];
  if (qword_281339AF8 != -1)
  {
    v9 = v3;
    swift_once();
    v3 = v9;
  }

  v5 = (v3 + v2);
  *v5 = dword_28133B5CC;
  *(v5 + v4) = 1;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v7 = sub_223B752A0(v6);
  swift_setDeallocating();
  sub_223B89B88(v5);
  swift_deallocClassInstance();
  return v7;
}

unint64_t sub_223B88E04()
{
  result = sub_223B5B1C4();
  dword_28133B5E0 = result;
  return result;
}

unint64_t sub_223B88E58()
{
  result = sub_223B5B1C4();
  dword_28133B5C8 = result;
  return result;
}

unint64_t sub_223B88EAC()
{
  result = sub_223B5B1C4();
  dword_28133B5E4 = result;
  return result;
}

unint64_t sub_223B88F00()
{
  result = sub_223B5B1C4();
  dword_28133B5D0 = result;
  return result;
}

uint64_t sub_223B88F50(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

unint64_t sub_223B89000(void *a1)
{
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v2 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v2 + 16))
    {

      v3 = sub_223B6F81C(0x72756F5361746144, 0xEF726564724F6563);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 8 * v3);

        if (v5 >> 61 == 1)
        {
          v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          goto LABEL_13;
        }
      }

      else
      {
      }
    }
  }

  v6 = 0;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_223BF84C0;
  v11 = v7[14];
  if (qword_281339B28 != -1)
  {
    v16 = v10;
    swift_once();
    v10 = v16;
  }

  v12 = (v10 + v9);
  *v12 = dword_28133B5E4;
  *(v12 + v11) = v6;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v14 = sub_223B752A0(v13);
  swift_setDeallocating();
  sub_223B89B88(v12);
  swift_deallocClassInstance();
  return v14;
}

char *sub_223B89224(unint64_t *a1)
{
  v1 = *a1;
  if ((~*a1 & 0xF000000000000007) == 0 || v1 >> 61 != 5)
  {
    goto LABEL_37;
  }

  v2 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = MEMORY[0x277D84F90];
  if (!*(v2 + 16))
  {
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
    v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
    v33 = *(*v32 + 72);
    v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_223BF84C0;
    v36 = v32[14];
    if (qword_281339B20 != -1)
    {
      v40 = v35;
      swift_once();
      v35 = v40;
    }

    v37 = (v35 + v34);
    *v37 = dword_28133B5E0;
    *(v37 + v36) = v3;
    v38 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
    swift_storeEnumTagMultiPayload();
    v39 = sub_223B752A0(v38);
    swift_setDeallocating();
    sub_223B89B88(v37);
    swift_deallocClassInstance();
    return v39;
  }

  v4 = sub_223B6F81C(0xD000000000000012, 0x8000000223BFC090);
  if ((v5 & 1) == 0)
  {
LABEL_35:

    goto LABEL_38;
  }

  v6 = *(*(v2 + 56) + 8 * v4);
  v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;

  if (v6 >> 61 != 4)
  {

    goto LABEL_38;
  }

  v8 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v9 = *(v7 + 16);

  v10 = *(v8 + 16);
  if (v10)
  {
    v41 = v3;
    sub_223B57F74(0, v10, 0);
    v11 = 32;
    v12 = v41;
    do
    {
      v13 = *(v8 + v11);
      v14 = v13 & 0xE000000000000000;
      if ((v13 & 0xE000000000000000) == 0x2000000000000000)
      {
        v15 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      else
      {
        v15 = 0;
      }

      v17 = *(v41 + 16);
      v16 = *(v41 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_223B57F74((v16 > 1), v17 + 1, 1);
      }

      *(v41 + 16) = v17 + 1;
      v18 = v41 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14 != 0x2000000000000000;
      v11 += 8;
      --v10;
    }

    while (v10);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v19 = *(v12 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v21 = (v12 + 40);
    v22 = MEMORY[0x277D84F90];
    do
    {
      if ((*v21 & 1) == 0)
      {
        v23 = *(v21 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_223B7BF64(0, *(v22 + 2) + 1, 1, v22);
        }

        v25 = *(v22 + 2);
        v24 = *(v22 + 3);
        if (v25 >= v24 >> 1)
        {
          v22 = sub_223B7BF64((v24 > 1), v25 + 1, 1, v22);
        }

        *(v22 + 2) = v25 + 1;
        *&v22[8 * v25 + 32] = v23;
      }

      v21 += 16;
      --v19;
    }

    while (v19);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v26 = *(v22 + 2);
  if (!v26)
  {

LABEL_37:
    v3 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  result = sub_223B57F54(0, v26, 0);
  v28 = 32;
  v3 = v20;
  while (1)
  {
    v29 = *&v22[v28];
    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(v29))
    {
      goto LABEL_42;
    }

    v31 = *(v20 + 16);
    v30 = *(v20 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_223B57F54((v30 > 1), v31 + 1, 1);
    }

    *(v20 + 16) = v31 + 1;
    *(v20 + 4 * v31 + 32) = v29;
    v28 += 8;
    if (!--v26)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_223B89678(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v45 = sub_223BF430C();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v45);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!a4 && (v15 = 0xE000000000000000, a5 == 0xE000000000000000) || (v15 = 0xE000000000000000, (sub_223BF4DAC() & 1) != 0))
  {
    v16 = 0;
  }

  else
  {
    v47 = a4;
    v48 = a5;

    MEMORY[0x223DF2DE0](45, 0xE100000000000000);
    v16 = v47;
    v15 = v48;
  }

  v17 = 0xEE006C7070612D66;
  v18 = 0x7269662D78667561;
  v19 = (~v14 & 0xF000000000000007) != 0 && v14 >> 61 == 5;
  v20 = v19;
  v44 = v20;
  v46 = v14;
  if (v19)
  {
    v21 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v21 + 16))
    {
      v22 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v23 = sub_223B6F81C(0x614E6769666E6F43, 0xEA0000000000656DLL);
      if (v24)
      {
        v25 = *(*(v21 + 56) + 8 * v23);

        if (!(v25 >> 61))
        {
          v18 = *(v25 + 16);
          v17 = *(v25 + 24);
        }
      }

      else
      {
      }
    }
  }

  v47 = v16;
  v48 = v15;

  MEMORY[0x223DF2DE0](v18, v17);

  v26 = v47;
  v27 = v48;
  v47 = a2;
  v48 = a3;

  MEMORY[0x223DF2DE0](47, 0xE100000000000000);
  MEMORY[0x223DF2DE0](v26, v27);

  MEMORY[0x223DF2DE0](46, 0xE100000000000000);
  MEMORY[0x223DF2DE0](0x7473696C70, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
  v29 = *(*(v28 - 8) + 72);
  v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_223BFAEB0;
  v32 = (v31 + v30);
  v33 = *(v28 + 48);
  if (qword_281339B10 != -1)
  {
    swift_once();
  }

  *v32 = dword_28133B5D8;
  sub_223BF428C();

  (*(v10 + 32))(&v32[v33], v13, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v34 = &v32[v29];
  if (qword_281339B08 != -1)
  {
    swift_once();
  }

  *v34 = dword_28133B5D4;
  if (!v44)
  {
    goto LABEL_31;
  }

  v35 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v35 + 16))
  {
    goto LABEL_31;
  }

  v36 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v37 = sub_223B6F81C(0x646E4963694D5056, 0xEA00000000007865);
  if ((v38 & 1) == 0)
  {

LABEL_31:
    v40 = 0;
    goto LABEL_32;
  }

  v39 = *(*(v35 + 56) + 8 * v37);

  if (v39 >> 61 != 1)
  {

    goto LABEL_31;
  }

  v40 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

LABEL_32:
  *&v34[*(v28 + 48)] = v40;
  swift_storeEnumTagMultiPayload();
  v41 = sub_223B752A0(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v41;
}

uint64_t sub_223B89B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223B89BF0(void *a1)
{
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v2 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v2 = sub_223B758B4(MEMORY[0x277D84F90]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_223BF84C0;
  v7 = v3[14];
  if (qword_281339B00 != -1)
  {
    v12 = v6;
    swift_once();
    v6 = v12;
  }

  v8 = (v6 + v5);
  *v8 = dword_28133B5D0;
  *(v8 + v7) = v2;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v10 = sub_223B752A0(v9);
  swift_setDeallocating();
  sub_223B89B88(v8);
  swift_deallocClassInstance();
  return v10;
}

unint64_t sub_223B89DA0(void *a1)
{
  v1 = 1.0;
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v3 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v3 + 16))
    {

      v4 = sub_223B6F81C(0x65646E496D616542, 0xE900000000000078);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);

        if (v6 >> 61 == 1)
        {
          v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v1 = v7;
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_223BF84C0;
  v12 = v8[14];
  if (qword_281339AF0 != -1)
  {
    v17 = v11;
    swift_once();
    v11 = v17;
  }

  v13 = v11 + v10;
  *(v11 + v10) = dword_28133B5C8;
  *(v11 + v10 + v12) = v1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v15 = sub_223B752A0(v14);
  swift_setDeallocating();
  sub_223B89B88(v13);
  swift_deallocClassInstance();
  return v15;
}

void sub_223B8A06C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [24],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_223B8A0C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

void sub_223B8A290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2784F01E0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__deallocate_node(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1 + 21;
      std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v3);
      if (*(v1 + 159) < 0)
      {
        operator delete(v1[17]);
      }

      if (*(v1 + 135) < 0)
      {
        operator delete(v1[14]);
      }

      v3 = v1 + 11;
      std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&v3);
      v3 = v1 + 8;
      std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v3);
      v3 = v1 + 5;
      std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v3);
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<adm::graph::KernelProperty>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::__fs::filesystem::path>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::__fs::filesystem::path>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<std::shared_ptr<adm::graph::KernelProperty>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_223B8AE2C(void *a1, int a2)
{
  objc_sync_exit(v2);

  if (a2 == 3)
  {
    v7 = __cxa_begin_catch(a1);
    adm::consume_exception_and_terminate(v7, v8);
  }

  v9 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v10 = v9;
    adm::consume_exception_and_terminate(v10, v11);
  }

  adm::consume_unknown_exception_and_terminate(v9);
}

void sub_223B8AEAC(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

adm::SystemConfiguration *adm::SystemConfiguration::SystemConfiguration(adm::SystemConfiguration *this, const SystemConfiguration *a2)
{
  *this = a2->mContext.mOS;
  if (*(&a2->mContext.mResourcePath.__pn_.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), a2->mContext.mResourcePath.__pn_.__rep_.__l.__data_, a2->mContext.mResourcePath.__pn_.__rep_.__l.__size_);
  }

  else
  {
    v4 = *a2->mContext.mResourcePath.__pn_.__rep_.__s.__data_;
    *(this + 3) = *(&a2->mContext.mResourcePath.__pn_.__rep_.__l + 2);
    *(this + 8) = v4;
  }

  if (*(&a2[1].mContext.mOS + 7) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *&a2->mContext.mResourcePath.var0, a2->mContext.var0);
  }

  else
  {
    v5 = *&a2->mContext.mResourcePath.var0;
    *(this + 6) = *&a2[1].mContext.mOS;
    *(this + 2) = v5;
  }

  *(this + 7) = a2[1].mContext.mResourcePath.__pn_.__rep_.__l.__data_;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 64), &a2[1].mContext.mResourcePath.__pn_.__rep_.__l.__size_);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 4, &a2[2].mContext.mOS);
  *(this + 128) = a2[2].mContext.mResourcePath.var0;
  *(this + 17) = a2[2].mContext.var0;
  if (a2[3].mContext.mResourcePath.__pn_.__rep_.__s.__data_[15] < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *&a2[3].mContext.mOS, a2[3].mContext.mResourcePath.__pn_.__rep_.__l.__data_);
  }

  else
  {
    v6 = *&a2[3].mContext.mOS;
    *(this + 20) = a2[3].mContext.mResourcePath.__pn_.__rep_.__l.__size_;
    *(this + 9) = v6;
  }

  if (SHIBYTE(a2[3].mContext.var0) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(&a2[3].mContext.mResourcePath.__pn_.__rep_.__l + 2), *&a2[3].mContext.mResourcePath.var0);
  }

  else
  {
    v7 = *(&a2[3].mContext.mResourcePath.__pn_.__rep_.__l + 1);
    *(this + 23) = a2[3].mContext.var0;
    *(this + 168) = v7;
  }

  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = a2[4].mContext.mResourcePath.var0;
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__rehash<true>(this + 192, a2[4].mContext.mResourcePath.__pn_.__rep_.__l.__data_);
  size = a2[4].mContext.mResourcePath.__pn_.__rep_.__l.__size_;
  if (!size)
  {
    goto LABEL_32;
  }

  do
  {
    v9 = std::__string_hash<char>::operator()[abi:ne200100]((size + 2));
    v10 = v9;
    v11 = *(this + 200);
    if (!*&v11)
    {
      goto LABEL_30;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v9;
      if (v9 >= *&v11)
      {
        v14 = v9 % *&v11;
      }
    }

    else
    {
      v14 = (*&v11 - 1) & v9;
    }

    v15 = *(*(this + 24) + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_30:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v10)
      {
        break;
      }

      if (v13 > 1)
      {
        if (v17 >= *&v11)
        {
          v17 %= *&v11;
        }
      }

      else
      {
        v17 &= *&v11 - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_30;
      }

LABEL_29:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_30;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v16 + 2, size + 2))
    {
      goto LABEL_29;
    }

    size = *size;
  }

  while (size);
LABEL_32:
  if (a2[5].mContext.mResourcePath.__pn_.__rep_.__s.__data_[7] < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), a2[4].mContext.var0, *&a2[5].mContext.mOS);
  }

  else
  {
    v18 = *&a2[4].mContext.var0;
    *(this + 31) = a2[5].mContext.mResourcePath.__pn_.__rep_.__l.__data_;
    *(this + 232) = v18;
  }

  v19 = a2[5].mContext.mResourcePath.__pn_.__rep_.__l.__size_;
  *(this + 260) = a2[5].mContext.mResourcePath.__pn_.__rep_.__s.__data_[12];
  *(this + 64) = v19;
  return this;
}

void sub_223B8B270(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::~__hash_table(v2);
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  adm::ConfigurationContext::~ConfigurationContext(v1);
  _Unwind_Resume(a1);
}

void adm::SystemConfiguration::~SystemConfiguration(void **this)
{
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::~__hash_table((this + 24));
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void adm::ConfigurationContext::~ConfigurationContext(void **this)
{
  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = *(a2 + 14);
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__rehash<true>(&this[1], *(a2 + 4));
  for (i = *(a2 + 5); i; i = *i)
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v7 = v6;
    size = this[1].__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_21;
    }

    v9 = vcnt_s8(size);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= size)
      {
        v11 = v6 % size;
      }
    }

    else
    {
      v11 = (size - 1) & v6;
    }

    v12 = *(this[1].__r_.__value_.__r.__words[0] + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v7)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v14 >= size)
        {
          v14 %= size;
        }
      }

      else
      {
        v14 &= size - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_21;
      }

LABEL_20:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, i + 2))
    {
      goto LABEL_20;
    }
  }

  return this;
}

void sub_223B8BCD8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::~__hash_table(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a2 + 168);
    std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a2 + 159) < 0)
    {
      operator delete(*(a2 + 136));
    }

    if (*(a2 + 135) < 0)
    {
      operator delete(*(a2 + 112));
    }

    v3 = (a2 + 88);
    std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a2 + 64);
    std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a2 + 40);
    std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

std::string *std::pair<std::string const,adm::DSPGraphBasicConfiguration>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  adm::DSPGraphBasicConfiguration::DSPGraphBasicConfiguration(this + 1, (a2 + 24));
  return this;
}

void sub_223B8C048(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *adm::DSPGraphBasicConfiguration::DSPGraphBasicConfiguration(std::string *this, const adm::DSPGraphBasicConfiguration *a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v5 != v4)
  {
    std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vallocate[abi:ne200100](&this[2], 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4));
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v6 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v7 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v7;
  }

  v8 = *(a2 + 30);
  this[5].__r_.__value_.__l.__size_ = 0;
  LODWORD(this[5].__r_.__value_.__l.__data_) = v8;
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__init_with_size[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*>(&this[5].__r_.__value_.__l.__size_, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 4);
  return this;
}

void sub_223B8C1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 95) < 0)
  {
    operator delete(*(v9 + 72));
  }

  a9 = v10;
  std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v9;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::__fs::filesystem::path>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_223B8C2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__init_with_size[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::shared_ptr<adm::graph::KernelProperty>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<adm::graph::KernelProperty>>,std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  for (result = a4; a2 != a3; result += 2)
  {
    v5 = a2[1];
    *result = *a2;
    result[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 2;
  }

  return result;
}

void std::allocator<std::shared_ptr<adm::graph::KernelProperty>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::allocator<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a3 + v6), *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
      }

      v10 = (a3 + v6);
      v11 = a1 + v6;
      if (*(a1 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 1, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        v12 = *(v11 + 24);
        v10[1].__r_.__value_.__r.__words[2] = *(v11 + 40);
        *&v10[1].__r_.__value_.__l.__data_ = v12;
      }

      v6 += 48;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_223B8C504(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 48;
    std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::__fs::filesystem::path>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*,std::__fs::filesystem::path*,std::__fs::filesystem::path*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_223B8C7E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_223B8CA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AudioCaptureLibraryCore()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = AudioCaptureLibraryCore::frameworkLibrary;
  v6 = AudioCaptureLibraryCore::frameworkLibrary;
  if (!AudioCaptureLibraryCore::frameworkLibrary)
  {
    v7 = xmmword_2784F0268;
    v8 = *off_2784F0278;
    v9 = 0;
    v4[3] = _sl_dlopen();
    AudioCaptureLibraryCore::frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_223B8CB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAudioCaptureInitializeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioCaptureLibrary();
  result = dlsym(v2, "AudioCaptureInitialize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAudioCaptureInitializeSymbolLoc::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AudioCaptureLibrary()
{
  v0 = AudioCaptureLibraryCore();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AudioCaptureLibrary()"];
  [v1 handleFailureInFunction:v3 file:@"AudioDSPManagerImpl.mm" lineNumber:20 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

uint64_t __AudioCaptureLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AudioCaptureLibraryCore::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223B8CD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AudioDSPManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_223B8CF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose((v4 - 80), 8);
  std::__optional_storage_base<adm::SystemConfiguration,false>::~__optional_storage_base(va);

  _Unwind_Resume(a1);
}

uint64_t adm::SystemConfiguration::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (v2 + 32));
  v4 = *(v2 + 60);
  *(a1 + 56) = *(v2 + 56);
  *(a1 + 60) = v4;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 64), (v2 + 64));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 96), (v2 + 96));
  *(a1 + 128) = *(v2 + 128);
  v5 = *(v2 + 136);
  *(a1 + 140) = *(v2 + 140);
  *(a1 + 136) = v5;
  std::string::operator=((a1 + 144), (v2 + 144));
  std::string::operator=((a1 + 168), (v2 + 168));
  if (a1 != v2)
  {
    v6 = (a1 + 192);
    *(a1 + 224) = *(v2 + 224);
    v7 = *(v2 + 208);
    v8 = *(a1 + 200);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        *(*v6 + 8 * i) = 0;
      }

      v47 = v2;
      v10 = *(a1 + 208);
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      if (v10)
      {
        v11 = v7 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = v10;
      }

      else
      {
        do
        {
          std::string::operator=((v10 + 2), (v7 + 2));
          if (v10 != v7)
          {
            *(v10 + 18) = *(v7 + 18);
            v13 = v7[7];
            v14 = v10[6];
            if (v14)
            {
              for (j = 0; j != v14; ++j)
              {
                *(v10[5] + 8 * j) = 0;
              }

              v16 = v10[7];
              v10[7] = 0;
              v10[8] = 0;
              if (v16)
              {
                v17 = v13 == 0;
              }

              else
              {
                v17 = 1;
              }

              if (v17)
              {
                v18 = v16;
              }

              else
              {
                do
                {
                  std::string::operator=((v16 + 2), (v13 + 2));
                  if (v16 == v13)
                  {
                    std::string::operator=((v16 + 14), (v13 + 14));
                    std::string::operator=((v16 + 17), (v13 + 17));
                    *(v16 + 40) = *(v13 + 40);
                  }

                  else
                  {
                    std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(v16 + 5, v13[5], v13[6], 0xAAAAAAAAAAAAAAABLL * ((v13[6] - v13[5]) >> 3));
                    std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(v16 + 8, v13[8], v13[9], 0xAAAAAAAAAAAAAAABLL * ((v13[9] - v13[8]) >> 3));
                    v19 = v16[11];
                    v21 = v13[11];
                    v20 = v13[12];
                    v22 = v20 - v21;
                    if (v16[13] - v19 < (v20 - v21))
                    {
                      v23 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 4);
                      std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vdeallocate(v16 + 11);
                      if (v23 <= 0x555555555555555)
                      {
                        v24 = 0x5555555555555556 * ((v16[13] - v16[11]) >> 4);
                        if (v24 <= v23)
                        {
                          v24 = v23;
                        }

                        if (0xAAAAAAAAAAAAAAABLL * ((v16[13] - v16[11]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                        {
                          v25 = 0x555555555555555;
                        }

                        else
                        {
                          v25 = v24;
                        }

                        std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vallocate[abi:ne200100]((v16 + 11), v25);
                      }

                      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
                    }

                    v26 = v16[12] - v19;
                    if (v26 >= v22)
                    {
                      std::__copy_impl::operator()[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *>(v13[11], v13[12], v19);
                      v29 = v28;
                      for (k = v16[12]; k != v29; std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(k))
                      {
                        k -= 48;
                      }

                      v16[12] = v29;
                    }

                    else
                    {
                      v27 = std::__copy_impl::operator()[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *>(v13[11], &v21[v26], v19);
                      v16[12] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*>(v27, v20, v16[12]);
                    }

                    std::string::operator=((v16 + 14), (v13 + 14));
                    std::string::operator=((v16 + 17), (v13 + 17));
                    v31 = v16[21];
                    *(v16 + 40) = *(v13 + 40);
                    v33 = v13[21];
                    v32 = v13[22];
                    v34 = v32 - v33;
                    if (v16[23] - v31 < (v32 - v33))
                    {
                      v35 = v34 >> 4;
                      std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vdeallocate(v16 + 21);
                      if (!(v35 >> 60))
                      {
                        v36 = v16[23] - v16[21];
                        v37 = v36 >> 3;
                        if (v36 >> 3 <= v35)
                        {
                          v37 = v35;
                        }

                        if (v36 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v38 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v38 = v37;
                        }

                        std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vallocate[abi:ne200100]((v16 + 21), v38);
                      }

                      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
                    }

                    v39 = v16[22] - v31;
                    if (v39 >= v34)
                    {
                      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *>(v13[21], v13[22], v31);
                      v42 = v41;
                      v43 = v16[22];
                      if (v43 != v41)
                      {
                        do
                        {
                          v44 = *(v43 - 1);
                          if (v44)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
                          }

                          v43 -= 16;
                        }

                        while (v43 != v42);
                      }

                      v16[22] = v42;
                    }

                    else
                    {
                      v40 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *>(v13[21], &v33[v39], v31);
                      v16[22] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<adm::graph::KernelProperty>>,std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*>((v16 + 21), v40, v32, v16[22]);
                    }
                  }

                  v18 = *v16;
                  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__node_insert_multi((v10 + 5), v16);
                  v13 = *v13;
                  if (!v18)
                  {
                    break;
                  }

                  v16 = v18;
                }

                while (v13);
              }

              std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__deallocate_node(v18);
              v6 = (a1 + 192);
            }

            if (v13)
            {
              operator new();
            }
          }

          v12 = *v10;
          std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__node_insert_multi(v6, v10);
          v7 = *v7;
          if (!v12)
          {
            break;
          }

          v10 = v12;
        }

        while (v7);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__deallocate_node(v12);
      v2 = v47;
    }

    if (v7)
    {
      operator new();
    }
  }

  std::string::operator=((a1 + 232), (v2 + 232));
  v45 = *(v2 + 260);
  *(a1 + 256) = *(v2 + 256);
  *(a1 + 260) = v45;
  return a1;
}

void sub_223B8D518(void *a1)
{
  *(v1 + 96) = v2;
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__deallocate_node(v1);
  __cxa_rethrow();
}

void *___ZL39getRegisterAudioUnits_InternalSymbolLocv_block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = AudioDSPLibraryCore(char **)::frameworkLibrary;
  v12 = AudioDSPLibraryCore(char **)::frameworkLibrary;
  if (!AudioDSPLibraryCore(char **)::frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = ___ZL19AudioDSPLibraryCorePPc_block_invoke;
    v6[4] = &unk_2784F0298;
    v7 = &v9;
    v8 = v6;
    v13 = xmmword_2784F02E0;
    v10[3] = _sl_dlopen();
    AudioDSPLibraryCore(char **)::frameworkLibrary = *(v7[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AudioDSPLibrary()"];
    [a1 handleFailureInFunction:v2 file:@"AudioDSPManagerImpl.mm" lineNumber:28 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "RegisterAudioUnits_Internal");
  *(*(a1[4] + 8) + 24) = result;
  getRegisterAudioUnits_InternalSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__optional_storage_base<adm::SystemConfiguration,false>::~__optional_storage_base(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 255) < 0)
    {
      operator delete(*(a1 + 232));
    }

    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::~__hash_table(a1 + 192);
    if (*(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t ___ZL19AudioDSPLibraryCorePPc_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AudioDSPLibraryCore(char **)::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && std::equal_to<std::string>::operator()[abi:ne200100](v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

void std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::__fs::filesystem::path>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::__fs::filesystem::path>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v14 = SHIBYTE(v11[-1].__r_.__value_.__r.__words[2]);
      --v11;
      if (v14 < 0)
      {
        operator delete(v11->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 == v8)
    {
      v13 = __str;
    }

    else
    {
      v13 = (__str + v12);
      do
      {
        std::string::operator=(v8++, v6++);
        v12 -= 24;
      }

      while (v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*,std::__fs::filesystem::path*,std::__fs::filesystem::path*>(a1, v13, a3, v11);
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v4 += 2;
      a3 += 2;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<adm::graph::KernelProperty>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *>(std::string *__str, std::string *a2, std::string *this)
{
  v4 = __str;
  if (__str == a2)
  {
    return __str;
  }

  v5 = a2;
  do
  {
    std::string::operator=(this, v4);
    std::string::operator=(this + 1, v4 + 1);
    this += 2;
    v4 += 2;
  }

  while (v4 != v5);
  return v5;
}

void std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::__fs::filesystem::path>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<std::__fs::filesystem::path>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_223B8E2DC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_223B8E390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_223B8E424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_223B8E6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  objc_sync_exit(v22);
  _Unwind_Resume(a1);
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[7]>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 8));
    }

    else
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
    }
  }

  else
  {
    *(a1 + 23) = 6;
    strcpy(a1, "(null)");
  }
}

void sub_223B8E8A0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_223B8E930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

id CreateAudioDSPManager()
{
  v0 = get_adm_log_object();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_223B4A000, v0, OS_LOG_TYPE_DEFAULT, "creating AudioDSPManager...", v3, 2u);
  }

  v1 = objc_opt_new();

  return v1;
}

uint64_t adm::utility::convertFromDictionary(adm::utility *this, NSDictionary *a2, adm::ConfigurationChangeRequest *a3)
{
  v365 = *MEMORY[0x277D85DE8];
  v4 = this;
  v287 = v4;
  if (!v4)
  {
    v121 = get_adm_log_object();
    if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
LABEL_152:

      goto LABEL_153;
    }

    *buf = 0;
    v122 = "Null config change dictionary received!";
LABEL_161:
    _os_log_error_impl(&dword_223B4A000, v121, OS_LOG_TYPE_ERROR, v122, buf, 2u);
    goto LABEL_152;
  }

  v5 = [(adm::utility *)v4 objectForKeyedSubscript:@"is activation"];
  if (!v5)
  {
    goto LABEL_151;
  }

  v6 = [(adm::utility *)v287 objectForKeyedSubscript:@"io context description"];
  if (!v6)
  {

    goto LABEL_151;
  }

  v7 = [(adm::utility *)v287 objectForKeyedSubscript:@"device descriptions"];

  if (!v7)
  {
LABEL_151:
    v121 = get_adm_log_object();
    if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 0;
    v122 = "Missing top level description entry from the config change dictionary!";
    goto LABEL_161;
  }

  v283 = [(adm::utility *)v287 objectForKeyedSubscript:@"io context description"];
  v8 = [v283 objectForKeyedSubscript:@"io context semantic list"];
  if (!v8 || ([v283 objectForKeyedSubscript:@"io context stream id list"], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    v126 = get_adm_log_object();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223B4A000, v126, OS_LOG_TYPE_ERROR, "Incomplete IOContext description from the config change dictionary!", buf, 2u);
    }

    goto LABEL_153;
  }

  [(adm::utility *)v287 objectForKeyedSubscript:@"device descriptions"];
  v331 = 0u;
  v332 = 0u;
  v329 = 0u;
  obj = v330 = 0u;
  v10 = [obj countByEnumeratingWithState:&v329 objects:__p count:16];
  v288 = a2;
  if (!v10)
  {
    goto LABEL_44;
  }

  v11 = @"device uid";
  v12 = *v330;
  v272 = *v330;
  do
  {
    v13 = 0;
    log = v10;
    do
    {
      if (*v330 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v276 = v13;
      v14 = *(*(&v329 + 1) + 8 * v13);
      v15 = v11;
      v16 = [v14 objectForKeyedSubscript:v11];
      if (!v16)
      {
        goto LABEL_177;
      }

      v17 = [v14 objectForKeyedSubscript:@"device model uid"];
      if (!v17)
      {
        goto LABEL_176;
      }

      v18 = [v14 objectForKeyedSubscript:@"sample rate"];
      if (!v18)
      {
        goto LABEL_175;
      }

      v19 = [v14 objectForKeyedSubscript:@"transport type"];
      if (!v19)
      {
        goto LABEL_174;
      }

      v20 = [v14 objectForKeyedSubscript:@"latency in samples"];
      if (!v20)
      {
        goto LABEL_173;
      }

      v21 = [v14 objectForKeyedSubscript:@"latency out samples"];
      if (!v21 || ([v14 objectForKeyedSubscript:@"safety offset in samples"], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
      {

LABEL_173:
LABEL_174:

LABEL_175:
LABEL_176:

LABEL_177:
        v27 = get_adm_log_object();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_223B4A000, v27, OS_LOG_TYPE_ERROR, "Incomplete device description from the config change dictionary!", buf, 2u);
        }

LABEL_179:

LABEL_153:
        loga = get_adm_log_object();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          _os_log_error_impl(&dword_223B4A000, loga, OS_LOG_TYPE_ERROR, "Invalid config change dictionary received!", __p, 2u);
        }

        goto LABEL_155;
      }

      v23 = [v14 objectForKeyedSubscript:@"safety offset out samples"];
      v24 = v23 == 0;

      if (v24)
      {
        goto LABEL_177;
      }

      v25 = [v14 objectForKeyedSubscript:@"hw streams input"];
      if ([v25 count])
      {
        v327 = 0u;
        v328 = 0u;
        v325 = 0u;
        v326 = 0u;
        v26 = v25;
        v27 = v25;
        v28 = [v27 countByEnumeratingWithState:&v325 objects:v337 count:16];
        if (!v28)
        {
          goto LABEL_30;
        }

        v29 = *v326;
        while (1)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v326 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v325 + 1) + 8 * i);
            v32 = [v31 objectForKeyedSubscript:@"current format"];
            if (!v32 || ([v31 objectForKeyedSubscript:@"supported formats"], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v32, v34))
            {
              v127 = get_adm_log_object();
              if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_223B4A000, v127, OS_LOG_TYPE_ERROR, "Incomplete input HW stream description from the config change dictionary!", buf, 2u);
              }

              goto LABEL_179;
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v325 objects:v337 count:16];
          if (!v28)
          {
LABEL_30:

            v25 = v26;
            break;
          }
        }
      }

      v35 = [v14 objectForKeyedSubscript:@"hw streams output"];
      v268 = v25;
      if (![v35 count])
      {
        goto LABEL_42;
      }

      v323 = 0u;
      v324 = 0u;
      v321 = 0u;
      v322 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v321 objects:&v362 count:16];
      if (!v37)
      {
        goto LABEL_41;
      }

      v38 = *v322;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v322 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = *(*(&v321 + 1) + 8 * j);
          v41 = [v40 objectForKeyedSubscript:@"current format"];
          if (!v41 || ([v40 objectForKeyedSubscript:@"supported formats"], v42 = objc_claimAutoreleasedReturnValue(), v43 = v42 == 0, v42, v41, v43))
          {
            v128 = get_adm_log_object();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_223B4A000, v128, OS_LOG_TYPE_ERROR, "Incomplete output HW stream description from the config change dictionary!", buf, 2u);
            }

            v27 = v268;
            goto LABEL_179;
          }
        }

        v37 = [v36 countByEnumeratingWithState:&v321 objects:&v362 count:16];
      }

      while (v37);
LABEL_41:

LABEL_42:
      v13 = v276 + 1;
      v11 = v15;
      v12 = v272;
    }

    while ((v276 + 1) != log);
    v10 = [obj countByEnumeratingWithState:&v329 objects:__p count:16];
  }

  while (v10);
LABEL_44:

  v44 = [(adm::utility *)v287 objectForKeyedSubscript:@"is activation"];
  LOBYTE(v288->super.isa) = [v44 BOOLValue];

  loga = [(adm::utility *)v287 objectForKeyedSubscript:@"io context description"];
  v45 = [loga objectForKeyedSubscript:@"io context semantic list"];
  if (!v45)
  {
    goto LABEL_106;
  }

  v319 = 0u;
  v320 = 0u;
  v317 = 0u;
  v318 = 0u;
  v260 = v45;
  v266 = v45;
  v46 = [v266 countByEnumeratingWithState:&v317 objects:v361 count:16];
  if (!v46)
  {
    goto LABEL_105;
  }

  v264 = *v318;
  while (2)
  {
    v262 = v46;
    v47 = 0;
    while (2)
    {
      if (*v318 != v264)
      {
        objc_enumerationMutation(v266);
      }

      v48 = *(*(&v317 + 1) + 8 * v47);
      v273 = v48;
      v269 = v47;
      if (![v48 isEqual:@"isolated audio"])
      {
        if (![v48 isEqual:@"dsp offload"])
        {
          v71 = v48;
          v70 = v48;
          std::string::basic_string[abi:ne200100]<0>(__p, [v48 UTF8String]);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v288[1], __p);
          goto LABEL_101;
        }

        v54 = [loga objectForKeyedSubscript:@"dsp offload description"];
        v55 = v288;
        if (v54)
        {
          v315 = 0u;
          v316 = 0u;
          v313 = 0u;
          v314 = 0u;
          v56 = v54;
          v277 = v56;
          v57 = [v56 countByEnumeratingWithState:&v313 objects:v360 count:16];
          if (!v57)
          {
            goto LABEL_171;
          }

          v284 = 0;
          v58 = 0;
          v59 = v57;
          obja = *v314;
          do
          {
            for (k = 0; k != v59; ++k)
            {
              if (*v314 != obja)
              {
                objc_enumerationMutation(v56);
              }

              v61 = *(*(&v313 + 1) + 8 * k);
              if ([v61 isEqualToString:@"airpods noise suppression"])
              {
                v62 = [v56 objectForKeyedSubscript:@"airpods noise suppression"];
                v63 = v62;
                if (v62)
                {
                  v340 = 0u;
                  *v339 = 0u;
                  v338 = 0u;
                  *v337 = 0u;
                  v64 = v62;
                  v65 = [v64 countByEnumeratingWithState:v337 objects:__p count:16];
                  if (v65)
                  {
                    v66 = *v338;
                    while (2)
                    {
                      for (m = 0; m != v65; ++m)
                      {
                        if (*v338 != v66)
                        {
                          objc_enumerationMutation(v64);
                        }

                        v68 = *(*&v337[8] + 8 * m);
                        v69 = [v68 isEqualToString:@"airpods noise suppression for studio mic"];

                        if (v69)
                        {
                          v63 = v64;
                          v58 = "airpods noise suppression studio";
                          goto LABEL_80;
                        }
                      }

                      v65 = [v64 countByEnumeratingWithState:v337 objects:__p count:16];
                      if (v65)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v58 = "airpods noise suppression";
LABEL_80:
                }

                else
                {
                  v58 = "airpods noise suppression";
                }

                ++v284;
                v55 = v288;
                v56 = v277;
              }

              else if ([v61 isEqualToString:@"airpods content creation recording"])
              {
                ++v284;
                v58 = "airpods content creation recording";
              }

              else if (!v58)
              {
                v129 = get_adm_log_object();
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  *__p = 138412290;
                  *&__p[4] = v61;
                  _os_log_error_impl(&dword_223B4A000, v129, OS_LOG_TYPE_ERROR, "Invalid DSPOffload description %@", __p, 0xCu);
                }

                v56 = v277;
                goto LABEL_171;
              }

              std::string::basic_string[abi:ne200100]<0>(__p, v58);
              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v55[1], __p);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            v59 = [v56 countByEnumeratingWithState:&v313 objects:v360 count:16];
          }

          while (v59);

          if (v284 <= 1)
          {

            v70 = v273;
            goto LABEL_103;
          }

          v56 = get_adm_log_object();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *__p = 0;
            v253 = "Only one type of offload can be requested at a time";
            v254 = v56;
            v255 = 2;
LABEL_420:
            _os_log_error_impl(&dword_223B4A000, v254, OS_LOG_TYPE_ERROR, v253, __p, v255);
          }

          goto LABEL_171;
        }

        v56 = get_adm_log_object();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v252 = "IOContext description missing DSPOffload description";
          goto LABEL_422;
        }

LABEL_411:
        v277 = 0;
        goto LABEL_171;
      }

      v49 = [loga objectForKeyedSubscript:@"isolated audio use case id"];
      v50 = v49;
      if (!v49)
      {
        v56 = get_adm_log_object();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v252 = "IOContext description missing isolated audio use case ID";
LABEL_422:
          _os_log_error_impl(&dword_223B4A000, v56, OS_LOG_TYPE_ERROR, v252, __p, 2u);
          goto LABEL_411;
        }

        goto LABEL_411;
      }

      v51 = [v49 unsignedIntValue];
      v52 = v51;
      if (v51 > 1935962991)
      {
        if (v51 <= 1936290408)
        {
          if (v51 == 1935962992)
          {
            v53 = "isolated audio shared DSP";
          }

          else
          {
            if (v51 != 1936027745)
            {
              goto LABEL_412;
            }

            v53 = "isolated audio audio pairing";
          }

          goto LABEL_100;
        }

        v53 = "isolated audio siri";
        if (v51 == 1936290409)
        {
          goto LABEL_100;
        }

        if (v51 == 1936614497)
        {
          v53 = "isolated audio sound analysis";
          goto LABEL_100;
        }

LABEL_412:
        v277 = v50;
        v56 = get_adm_log_object();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *__p = 67109120;
          *&__p[4] = v52;
          v253 = "Invalid IsolatedAudio use case ID %d";
          v254 = v56;
          v255 = 8;
          goto LABEL_420;
        }

LABEL_171:

LABEL_155:
        v123 = 0;
        goto LABEL_156;
      }

      switch(v51)
      {
        case 1751741300:
          v53 = "isolated audio historical audio";
          break;
        case 1836346212:
          v53 = "isolated audio muted talker detection";
          break;
        case 1885696611:
          v53 = "isolated audio perception";
          break;
        default:
          goto LABEL_412;
      }

LABEL_100:

      std::string::basic_string[abi:ne200100]<0>(__p, v53);
      v70 = v48;
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v288[1], __p);
LABEL_101:
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

LABEL_103:

      v47 = v269 + 1;
      if (v269 + 1 != v262)
      {
        continue;
      }

      break;
    }

    v46 = [v266 countByEnumeratingWithState:&v317 objects:v361 count:16];
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_105:

  v45 = v260;
LABEL_106:

  v72 = [loga objectForKeyedSubscript:@"io context stream id list"];
  v73 = v72;
  if (v72)
  {
    v311 = 0u;
    v312 = 0u;
    v309 = 0u;
    v310 = 0u;
    v285 = v72;
    v74 = [v285 countByEnumeratingWithState:&v309 objects:v359 count:16];
    objb = v73;
    if (v74)
    {
      v75 = *v310;
      v76 = v288 + 21;
      do
      {
        for (n = 0; n != v74; ++n)
        {
          if (*v310 != v75)
          {
            objc_enumerationMutation(v285);
          }

          v78 = *(*(&v309 + 1) + 8 * n);
          v79 = v78;
          std::string::basic_string[abi:ne200100]<0>(v337, [v78 UTF8String]);
          isa = v288[22].super.isa;
          v80 = v288[23].super.isa;
          if (isa >= v80)
          {
            v83 = 0xAAAAAAAAAAAAAAABLL * ((isa - v76->super.isa) >> 3);
            v84 = v83 + 1;
            if (v83 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
            }

            v85 = 0xAAAAAAAAAAAAAAABLL * ((v80 - v76->super.isa) >> 3);
            if (2 * v85 > v84)
            {
              v84 = 2 * v85;
            }

            if (v85 >= 0x555555555555555)
            {
              v86 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v86 = v84;
            }

            *&__p[32] = v288 + 21;
            if (v86)
            {
              std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](v86);
            }

            v87 = 24 * v83;
            v88 = *v337;
            *(v87 + 16) = v338;
            *v87 = v88;
            *&v338 = 0;
            memset(v337, 0, sizeof(v337));
            v89 = 24 * v83 + 24;
            v90 = v288[21].super.isa;
            v91 = v288[22].super.isa - v90;
            v92 = (24 * v83 - v91);
            memcpy((v87 - v91), v90, v91);
            v93 = v288[21].super.isa;
            v288[21].super.isa = v92;
            v288[22].super.isa = v89;
            v94 = v288[23].super.isa;
            v288[23].super.isa = 0;
            *&__p[16] = v93;
            *&__p[24] = v94;
            *&__p[8] = v93;
            *__p = v93;
            std::__split_buffer<std::string>::~__split_buffer(__p);
            v95 = SBYTE7(v338);
            v288[22].super.isa = v89;
            if (v95 < 0)
            {
              operator delete(*v337);
            }
          }

          else
          {
            v82 = *v337;
            *(isa + 2) = v338;
            *isa = v82;
            v288[22].super.isa = (isa + 24);
          }
        }

        v74 = [v285 countByEnumeratingWithState:&v309 objects:v359 count:16];
      }

      while (v74);
    }

    v73 = objb;
  }

  v96 = [loga objectForKey:@"io context input format"];
  if (v96)
  {
    v97 = v288[9].super.isa;
    v98 = *&__p[16];
    *&v288[4].super.isa = *__p;
    *&v288[6].super.isa = v98;
    v288[8].super.isa = *&__p[32];
    if ((v97 & 1) == 0)
    {
      LOBYTE(v288[9].super.isa) = 1;
    }
  }

  v99 = [loga objectForKey:@"io context output format"];
  if (v99)
  {
    v100 = v288[15].super.isa;
    v101 = *&__p[16];
    *&v288[10].super.isa = *__p;
    *&v288[12].super.isa = v101;
    v288[14].super.isa = *&__p[32];
    if ((v100 & 1) == 0)
    {
      LOBYTE(v288[15].super.isa) = 1;
    }
  }

  v102 = [loga objectForKey:@"io context output client virtual layout"];
  if (v102)
  {
  }

  v103 = [loga objectForKey:@"io context buffer size"];
  v104 = v103;
  if (v103)
  {
    LODWORD(v288[20].super.isa) = [v103 unsignedIntValue];
    BYTE4(v288[20].super.isa) = 1;
  }

  v105 = [loga objectForKey:@"dsp generic settings"];
  if (v105)
  {
    if (LOBYTE(v288[30].super.isa) == 1 && LOBYTE(v288[29].super.isa) == 1)
    {
      v106 = v288[28].super.isa;
      if (v106)
      {
        CFRelease(v106);
      }
    }

    *&v288[26].super.isa = 0u;
    *&v288[28].super.isa = 0u;
    *&v288[24].super.isa = 0u;
    LOBYTE(v288[30].super.isa) = 1;
    v107 = [v105 objectForKeyedSubscript:@"content creation recording"];
    v108 = v107;
    if (v107)
    {
      v286 = [v107 objectForKeyedSubscript:@"inputPortType"];
      *__p = [v286 unsignedIntValue];
      v109 = [v108 objectForKeyedSubscript:@"inputPortSubType"];
      *&__p[4] = [v109 unsignedIntValue];
      v110 = [v108 objectForKeyedSubscript:@"inputSubPortType"];
      *&__p[8] = [v110 unsignedIntValue];
      v111 = [v108 objectForKeyedSubscript:@"outputPortType"];
      *&__p[12] = [v111 unsignedIntValue];
      v112 = [v108 objectForKeyedSubscript:@"outputPortSubType"];
      *&__p[16] = [v112 unsignedIntValue];
      v113 = [v108 objectForKeyedSubscript:@"outputSubPortType"];
      *&__p[20] = [v113 unsignedIntValue];
      v114 = [v108 objectForKeyedSubscript:@"isSharePlayActive"];
      __p[24] = [v114 BOOLValue];
      [v108 objectForKeyedSubscript:@"firFilterIDs"];
      v116 = v115 = v109;
      v117 = v116;
      if (v116)
      {
        CFRetain(v116);
        *&__p[32] = v117;
        v118 = CFGetTypeID(v117);
        if (v118 != CFArrayGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      v119 = v288[29].super.isa;
      *&v288[24].super.isa = *__p;
      *(&v288[25].super.isa + 1) = *&__p[9];
      if (v119)
      {
        v120 = v288[28].super.isa;
        v288[28].super.isa = v117;
        *&__p[32] = v120;
        if (v120)
        {
          CFRelease(v120);
        }
      }

      else
      {
        v288[28].super.isa = v117;
        LOBYTE(v288[29].super.isa) = 1;
      }
    }
  }

  [(adm::utility *)v287 objectForKeyedSubscript:@"device descriptions"];
  v307 = 0u;
  v308 = 0u;
  v305 = 0u;
  v265 = v306 = 0u;
  v131 = [v265 countByEnumeratingWithState:&v305 objects:v358 count:16];
  if (v131)
  {
    v259 = *v306;
    do
    {
      v132 = 0;
      v258 = v131;
      do
      {
        if (*v306 != v259)
        {
          objc_enumerationMutation(v265);
        }

        v261 = v132;
        v133 = *(*(&v305 + 1) + 8 * v132);
        v353 = 0;
        LOBYTE(v354[0]) = 0;
        v355 = 0;
        v356 = 0;
        memset(__p, 0, sizeof(__p));
        v349 = 0;
        v350 = 0u;
        memset(v351, 0, 25);
        memset(v357, 0, sizeof(v357));
        v267 = v133;
        v134 = [v133 objectForKeyedSubscript:@"device uid"];
        v135 = v134;
        std::string::basic_string[abi:ne200100]<0>(v337, [v134 UTF8String]);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = *v337;
        *&__p[16] = v338;
        BYTE7(v338) = 0;
        v337[0] = 0;

        v136 = [v267 objectForKeyedSubscript:@"device model uid"];
        v137 = v136;
        std::string::basic_string[abi:ne200100]<0>(v337, [v136 UTF8String]);
        if ((__p[47] & 0x80000000) != 0)
        {
          operator delete(*&__p[24]);
        }

        *&__p[24] = *v337;
        *&__p[40] = v338;
        BYTE7(v338) = 0;
        v337[0] = 0;

        v138 = [v267 objectForKeyedSubscript:@"is default device"];
        v349 = [v138 BOOLValue];

        v139 = [v267 objectForKeyedSubscript:@"sample rate"];
        [v139 doubleValue];
        *&v350 = v140;

        v141 = [v267 objectForKeyedSubscript:@"transport type"];
        DWORD2(v350) = [v141 unsignedIntValue];

        v142 = [v267 objectForKeyedSubscript:@"data source type in"];
        HIDWORD(v350) = [v142 unsignedIntValue];

        v143 = [v267 objectForKeyedSubscript:@"data source type out"];
        *v351 = [v143 unsignedIntValue];

        v144 = [v267 objectForKeyedSubscript:@"bluetooth device category"];
        *&v351[4] = [v144 unsignedIntValue];

        v145 = [v267 objectForKeyedSubscript:@"latency in samples"];
        *&v351[8] = [v145 unsignedIntValue];

        v146 = [v267 objectForKeyedSubscript:@"latency out samples"];
        *&v351[12] = [v146 unsignedIntValue];

        v147 = [v267 objectForKeyedSubscript:@"safety offset in samples"];
        *&v351[16] = [v147 unsignedIntValue];

        v148 = [v267 objectForKeyedSubscript:@"safety offset out samples"];
        *&v351[20] = [v148 unsignedIntValue];

        v149 = [v267 objectForKeyedSubscript:@"bluetooth ecnr enabled"];
        v356 = [v149 BOOLValue];

        v150 = [v267 objectForKeyedSubscript:@"output default layout"];
        if (v150)
        {
        }

        v151 = [v267 objectForKeyedSubscript:@"output preferred layout"];
        if (v151)
        {
        }

        v152 = [v267 objectForKeyedSubscript:@"hw streams input"];
        v153 = v288;
        v263 = v152;
        if ([v152 count])
        {
          v303 = 0u;
          v304 = 0u;
          v301 = 0u;
          v302 = 0u;
          v154 = v152;
          v270 = v154;
          v155 = [v154 countByEnumeratingWithState:&v301 objects:v347 count:16];
          if (!v155)
          {
            goto LABEL_240;
          }

          v278 = *v302;
          while (1)
          {
            for (ii = 0; ii != v155; ++ii)
            {
              if (*v302 != v278)
              {
                objc_enumerationMutation(v270);
              }

              v157 = *(*(&v301 + 1) + 8 * ii);
              v337[0] = 0;
              BYTE8(v338) = 0;
              LOBYTE(v339[0]) = 0;
              BYTE8(v340) = 0;
              v341 = 0u;
              v342 = 0u;
              v343 = 0u;
              v344 = 0u;
              v345 = 0;
              v346 = 1;
              v158 = [v157 objectForKeyedSubscript:@"stream id"];
              v159 = v158;
              if (v158)
              {
                v160 = v158;
                std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(v337, [v159 UTF8String]);
              }

              v161 = [v157 objectForKeyedSubscript:@"stream semantic"];
              v162 = v161;
              if (v161)
              {
                v163 = v161;
                std::string::basic_string[abi:ne200100]<0>(&v362, [v162 UTF8String]);
                if (BYTE8(v340) == 1)
                {
                  if (SBYTE7(v340) < 0)
                  {
                    operator delete(v339[0]);
                    *v339 = v362;
                    *&v340 = v363;
                    if ((BYTE8(v340) & 1) == 0)
                    {
                      goto LABEL_221;
                    }
                  }

                  else
                  {
                    *v339 = v362;
                    *&v340 = v363;
                  }
                }

                else
                {
                  *v339 = v362;
                  *&v340 = v363;
                  BYTE8(v340) = 1;
                }

                if (SBYTE7(v340) < 0)
                {
                  if (v339[1] != 3)
                  {
                    goto LABEL_221;
                  }

                  v164 = v339[0];
                }

                else
                {
                  v164 = v339;
                  if (SBYTE7(v340) != 3)
                  {
                    goto LABEL_221;
                  }
                }

                v165 = *v164;
                v166 = *(v164 + 2);
                v167 = v165 == 24948 && v166 == 112;
                if (v167)
                {
                  std::string::__assign_external(v339, "reference");
                }
              }

LABEL_221:

              v168 = [v157 objectForKey:@"current format"];
              v341 = v362;
              v342 = v363;
              *&v343 = v364;

              v169 = [v157 objectForKeyedSubscript:@"supported formats"];
              v299 = 0u;
              v300 = 0u;
              v297 = 0u;
              v298 = 0u;
              v170 = v169;
              v171 = [v170 countByEnumeratingWithState:&v297 objects:v336 count:16];
              if (v171)
              {
                v172 = *v298;
                do
                {
                  for (jj = 0; jj != v171; ++jj)
                  {
                    if (*v298 != v172)
                    {
                      objc_enumerationMutation(v170);
                    }

                    v174 = *(*(&v297 + 1) + 8 * jj);
                    std::vector<CA::StreamDescription>::push_back[abi:ne200100](&v343 + 8, &v362);
                  }

                  v171 = [v170 countByEnumeratingWithState:&v297 objects:v336 count:16];
                }

                while (v171);
              }

              v175 = [v157 objectForKeyedSubscript:@"latency samples"];
              v176 = v175;
              if (v175)
              {
                v345 = [v175 unsignedIntValue];
                v346 = 1;
              }

              std::vector<adm::HardwareStreamDescription>::push_back[abi:ne200100](v357, v337);
              if (*(&v343 + 1))
              {
                *&v344 = *(&v343 + 1);
                operator delete(*(&v343 + 1));
              }

              if (BYTE8(v340) == 1 && SBYTE7(v340) < 0)
              {
                operator delete(v339[0]);
              }

              if (BYTE8(v338) == 1 && SBYTE7(v338) < 0)
              {
                operator delete(*v337);
              }
            }

            v154 = v270;
            v155 = [v270 countByEnumeratingWithState:&v301 objects:v347 count:16];
            if (!v155)
            {
LABEL_240:

              v153 = v288;
              v152 = v263;
              break;
            }
          }
        }

        v177 = [v267 objectForKeyedSubscript:@"hw streams output"];
        if ([v177 count])
        {
          v295 = 0u;
          v296 = 0u;
          v293 = 0u;
          v294 = 0u;
          v271 = v177;
          v178 = [v271 countByEnumeratingWithState:&v293 objects:v335 count:16];
          v257 = v177;
          if (v178)
          {
            v279 = *v294;
            do
            {
              for (kk = 0; kk != v178; ++kk)
              {
                if (*v294 != v279)
                {
                  objc_enumerationMutation(v271);
                }

                v180 = *(*(&v293 + 1) + 8 * kk);
                v337[0] = 0;
                BYTE8(v338) = 0;
                LOBYTE(v339[0]) = 0;
                BYTE8(v340) = 0;
                v341 = 0u;
                v342 = 0u;
                v343 = 0u;
                v344 = 0u;
                v345 = 0;
                v346 = 1;
                v181 = [v180 objectForKeyedSubscript:@"stream id"];
                v182 = v181;
                if (v181)
                {
                  v183 = v181;
                  std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(v337, [v182 UTF8String]);
                }

                v184 = [v180 objectForKeyedSubscript:@"stream semantic"];
                v185 = v184;
                if (v184)
                {
                  v186 = v184;
                  std::string::basic_string[abi:ne200100]<0>(&v362, [v185 UTF8String]);
                  if (BYTE8(v340) == 1)
                  {
                    if (SBYTE7(v340) < 0)
                    {
                      operator delete(v339[0]);
                    }

                    *v339 = v362;
                    *&v340 = v363;
                  }

                  else
                  {
                    *v339 = v362;
                    *&v340 = v363;
                    BYTE8(v340) = 1;
                  }
                }

                v187 = [v180 objectForKey:@"current format"];
                v341 = v362;
                v342 = v363;
                *&v343 = v364;

                v188 = [v180 objectForKeyedSubscript:@"supported formats"];
                v291 = 0u;
                v292 = 0u;
                v289 = 0u;
                v290 = 0u;
                v189 = v188;
                v190 = [v189 countByEnumeratingWithState:&v289 objects:v334 count:16];
                if (v190)
                {
                  v191 = *v290;
                  do
                  {
                    for (mm = 0; mm != v190; ++mm)
                    {
                      if (*v290 != v191)
                      {
                        objc_enumerationMutation(v189);
                      }

                      v193 = *(*(&v289 + 1) + 8 * mm);
                      std::vector<CA::StreamDescription>::push_back[abi:ne200100](&v343 + 8, &v362);
                    }

                    v190 = [v189 countByEnumeratingWithState:&v289 objects:v334 count:16];
                  }

                  while (v190);
                }

                v194 = [v180 objectForKeyedSubscript:@"latency samples"];
                v195 = v194;
                if (v194)
                {
                  v345 = [v194 unsignedIntValue];
                  v346 = 1;
                }

                std::vector<adm::HardwareStreamDescription>::push_back[abi:ne200100](&v357[3], v337);
                if (*(&v343 + 1))
                {
                  *&v344 = *(&v343 + 1);
                  operator delete(*(&v343 + 1));
                }

                if (BYTE8(v340) == 1 && SBYTE7(v340) < 0)
                {
                  operator delete(v339[0]);
                }

                if (BYTE8(v338) == 1 && SBYTE7(v338) < 0)
                {
                  operator delete(*v337);
                }
              }

              v178 = [v271 countByEnumeratingWithState:&v293 objects:v335 count:16];
            }

            while (v178);
          }

          v153 = v288;
          v152 = v263;
          v177 = v257;
        }

        v196 = v153[32].super.isa;
        if (v196 >= v153[33].super.isa)
        {
          v197 = std::vector<adm::DeviceDescription>::__emplace_back_slow_path<adm::DeviceDescription>(&v153[31].super.isa, __p);
        }

        else
        {
          std::allocator_traits<std::allocator<adm::DeviceDescription>>::construct[abi:ne200100]<adm::DeviceDescription,adm::DeviceDescription,void,0>(v153[32].super.isa, __p);
          v197 = v196 + 216;
        }

        v153[32].super.isa = v197;

        *v337 = &v357[3];
        std::vector<adm::HardwareStreamDescription>::__destroy_vector::operator()[abi:ne200100](v337);
        *v337 = v357;
        std::vector<adm::HardwareStreamDescription>::__destroy_vector::operator()[abi:ne200100](v337);
        if (v355 == 1 && v354[0])
        {
          v354[1] = v354[0];
          operator delete(v354[0]);
        }

        if (v353 == 1 && *&v351[24])
        {
          v352 = *&v351[24];
          operator delete(*&v351[24]);
        }

        if ((__p[47] & 0x80000000) != 0)
        {
          operator delete(*&__p[24]);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v132 = v261 + 1;
      }

      while (v261 + 1 != v258);
      v131 = [v265 countByEnumeratingWithState:&v305 objects:v358 count:16];
    }

    while (v131);
  }

  *&__p[16] = 0;
  *&__p[8] = 0;
  *__p = &__p[8];
  v198 = v288[31].super.isa;
  v199 = v288[32].super.isa;
  if (v198 == v199)
  {
LABEL_302:
    v204 = v288[21].super.isa;
    v205 = v288[22].super.isa;
    if (v204 == v205)
    {
      goto LABEL_397;
    }

    while (1)
    {
      if (&__p[8] == std::__tree<std::string>::find<std::string>(__p, v204))
      {
        goto LABEL_404;
      }

      v206 = *&__p[8];
      if (!*&__p[8])
      {
        goto LABEL_396;
      }

      v207 = &__p[8];
      v208 = *&__p[8];
      do
      {
        v209 = v207;
        v210 = v208 + 32;
        v211 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v208 + 4, v204);
        if ((v211 & 0x80u) == 0)
        {
          v207 = v208;
        }

        v208 = *&v208[(v211 >> 4) & 8];
      }

      while (v208);
      if (v207 == &__p[8])
      {
        goto LABEL_396;
      }

      v212 = (v211 & 0x80u) == 0 ? v210 : v209 + 32;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v204, v212) & 0x80) != 0)
      {
        goto LABEL_396;
      }

      v213 = *(v207 + 1);
      v214 = v213;
      v215 = v207;
      if (v213)
      {
        do
        {
          v216 = v214;
          v214 = *v214;
        }

        while (v214);
      }

      else
      {
        do
        {
          v216 = *(v215 + 2);
          v167 = *v216 == v215;
          v215 = v216;
        }

        while (!v167);
      }

      if (*__p == v207)
      {
        *__p = v216;
      }

      --*&__p[16];
      if (*v207)
      {
        if (!v213)
        {
          v213 = *v207;
          v217 = v207;
LABEL_329:
          v219 = 0;
          v218 = *(v217 + 2);
          v213[2] = v218;
          goto LABEL_330;
        }

        do
        {
          v217 = v213;
          v213 = *v213;
        }

        while (v213);
        v213 = *(v217 + 1);
      }

      else
      {
        v217 = v207;
      }

      if (v213)
      {
        goto LABEL_329;
      }

      v218 = *(v217 + 2);
      v219 = 1;
LABEL_330:
      v220 = *v218;
      if (*v218 == v217)
      {
        *v218 = v213;
        if (v217 == v206)
        {
          v220 = 0;
          v206 = v213;
        }

        else
        {
          v220 = v218[1];
        }
      }

      else
      {
        v218[1] = v213;
      }

      v221 = v217[24];
      if (v217 != v207)
      {
        v222 = *(v207 + 2);
        *(v217 + 2) = v222;
        v222[*v222 != v207] = v217;
        v223 = *v207;
        *v217 = *v207;
        *(v223 + 16) = v217;
        v224 = *(v207 + 1);
        *(v217 + 1) = v224;
        if (v224)
        {
          *(v224 + 16) = v217;
        }

        v217[24] = v207[24];
        if (v206 == v207)
        {
          v206 = v217;
        }
      }

      if (!v206 || !v221)
      {
        goto LABEL_393;
      }

      if (!v219)
      {
        *(v213 + 24) = 1;
        goto LABEL_393;
      }

      while (1)
      {
        v225 = *(v220 + 2);
        v226 = *v225;
        v227 = v220[24];
        if (*v225 == v220)
        {
          break;
        }

        if ((v220[24] & 1) == 0)
        {
          v220[24] = 1;
          *(v225 + 24) = 0;
          v228 = v225[1];
          v229 = *v228;
          v225[1] = *v228;
          if (v229)
          {
            *(v229 + 16) = v225;
          }

          v230 = v225[2];
          v228[2] = v230;
          v230[*v230 != v225] = v228;
          *v228 = v225;
          v225[2] = v228;
          if (v206 == *v220)
          {
            v206 = v220;
          }

          v220 = *(*v220 + 8);
        }

        v231 = *v220;
        if (*v220 && v231[24] != 1)
        {
          v232 = *(v220 + 1);
          if (v232 && (v232[24] & 1) == 0)
          {
LABEL_379:
            v231 = v220;
          }

          else
          {
            v231[24] = 1;
            v220[24] = 0;
            v240 = *(v231 + 1);
            *v220 = v240;
            if (v240)
            {
              *(v240 + 16) = v220;
            }

            v241 = *(v220 + 2);
            *(v231 + 2) = v241;
            v241[*v241 != v220] = v231;
            *(v231 + 1) = v220;
            *(v220 + 2) = v231;
            v232 = v220;
          }

          v242 = *(v231 + 2);
          v231[24] = *(v242 + 24);
          *(v242 + 24) = 1;
          v232[24] = 1;
          v243 = *(v242 + 8);
          v244 = *v243;
          *(v242 + 8) = *v243;
          if (v244)
          {
            *(v244 + 16) = v242;
          }

          v245 = *(v242 + 16);
          v243[2] = v245;
          v245[*v245 != v242] = v243;
          *v243 = v242;
          goto LABEL_392;
        }

        v232 = *(v220 + 1);
        if (v232 && v232[24] != 1)
        {
          goto LABEL_379;
        }

        v220[24] = 0;
        v233 = *(v220 + 2);
        if (v233 == v206 || (v233[24] & 1) == 0)
        {
          goto LABEL_373;
        }

LABEL_371:
        v220 = *(*(v233 + 2) + 8 * (**(v233 + 2) == v233));
      }

      if ((v220[24] & 1) == 0)
      {
        v220[24] = 1;
        *(v225 + 24) = 0;
        v234 = *(v226 + 1);
        *v225 = v234;
        if (v234)
        {
          *(v234 + 16) = v225;
        }

        v235 = v225[2];
        *(v226 + 2) = v235;
        v235[*v235 != v225] = v226;
        *(v226 + 1) = v225;
        v225[2] = v226;
        v236 = *(v220 + 1);
        if (v206 == v236)
        {
          v206 = v220;
        }

        v220 = *v236;
      }

      v237 = *v220;
      if (*v220 && v237[24] != 1)
      {
        goto LABEL_388;
      }

      v238 = *(v220 + 1);
      if (!v238 || *(v238 + 24) == 1)
      {
        v220[24] = 0;
        v233 = *(v220 + 2);
        if (v233[24] != 1 || v233 == v206)
        {
LABEL_373:
          v233[24] = 1;
          goto LABEL_393;
        }

        goto LABEL_371;
      }

      if (v237 && (v237[24] & 1) == 0)
      {
LABEL_388:
        v238 = v220;
        goto LABEL_389;
      }

      *(v238 + 24) = 1;
      v220[24] = 0;
      v246 = *v238;
      *(v220 + 1) = *v238;
      if (v246)
      {
        *(v246 + 16) = v220;
      }

      v247 = *(v220 + 2);
      v238[2] = v247;
      v247[*v247 != v220] = v238;
      *v238 = v220;
      *(v220 + 2) = v238;
      v237 = v220;
LABEL_389:
      v242 = v238[2];
      *(v238 + 24) = *(v242 + 24);
      *(v242 + 24) = 1;
      v237[24] = 1;
      v243 = *v242;
      v248 = *(*v242 + 8);
      *v242 = v248;
      if (v248)
      {
        *(v248 + 16) = v242;
      }

      v249 = *(v242 + 16);
      v243[2] = v249;
      v249[*v249 != v242] = v243;
      v243[1] = v242;
LABEL_392:
      *(v242 + 16) = v243;
LABEL_393:
      if (v207[55] < 0)
      {
        operator delete(*(v207 + 4));
      }

      operator delete(v207);
LABEL_396:
      v204 += 3;
      if (v204 == v205)
      {
LABEL_397:
        std::__tree<std::string>::destroy(*&__p[8]);
        v123 = 1;
        goto LABEL_407;
      }
    }
  }

LABEL_291:
  v200 = v198[21];
  v201 = v198[22];
  while (1)
  {
    if (v200 == v201)
    {
      v202 = v198[24];
      v203 = v198[25];
      while (v202 != v203)
      {
        if (*(v202 + 24) == 1 && (std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(__p, v202) & 1) == 0)
        {
          v250 = get_adm_log_object();
          if (!os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_403;
          }

          if (*(v202 + 23) < 0)
          {
            v202 = *v202;
          }

          *v337 = 136315138;
          *&v337[4] = v202;
LABEL_417:
          _os_log_error_impl(&dword_223B4A000, v250, OS_LOG_TYPE_ERROR, "duplicate stream ID %s", v337, 0xCu);
          goto LABEL_403;
        }

        v202 += 17;
      }

      v198 += 27;
      if (v198 == v199)
      {
        goto LABEL_302;
      }

      goto LABEL_291;
    }

    if (*(v200 + 24) == 1 && (std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(__p, v200) & 1) == 0)
    {
      break;
    }

    v200 += 17;
  }

  v250 = get_adm_log_object();
  if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
  {
    if (*(v200 + 23) < 0)
    {
      v200 = *v200;
    }

    *v337 = 136315138;
    *&v337[4] = v200;
    goto LABEL_417;
  }

LABEL_403:

LABEL_404:
  std::__tree<std::string>::destroy(*&__p[8]);
  v251 = get_adm_log_object();
  if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
  {
    *__p = 0;
    _os_log_error_impl(&dword_223B4A000, v251, OS_LOG_TYPE_ERROR, "Inconsistent stream IDs in config change request dictionary!", __p, 2u);
  }

  v123 = 0;
LABEL_407:

LABEL_156:
  v124 = *MEMORY[0x277D85DE8];
  return v123;
}

void sub_223B90F60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a2)
  {

    __cxa_begin_catch(a1);
    v19 = get_adm_log_object();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(STACK[0x340]) = 0;
      _os_log_error_impl(&dword_223B4A000, v19, OS_LOG_TYPE_ERROR, "Exception from converting the config change request dictionary!", &STACK[0x340], 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x223B8F914);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, void *a2)
{
  result = std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void anonymous namespace::getASBDFormatFromDict(_anonymous_namespace_ *this, NSDictionary *a2)
{
  v21 = a2;
  v3 = [(NSDictionary *)v21 objectForKeyedSubscript:@"channels"];
  v4 = [v3 unsignedIntValue];

  v5 = [(NSDictionary *)v21 objectForKeyedSubscript:@"sample rate"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(NSDictionary *)v21 objectForKeyedSubscript:@"common pcm format"];
  v9 = [v8 unsignedIntValue];

  v10 = [(NSDictionary *)v21 objectForKeyedSubscript:@"is interleaved"];
  v11 = [v10 BOOLValue];

  v12 = 0;
  v13 = 0;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v19 = v11 == 0;
      v14 = 3116;
      v20 = 3084;
    }

    else
    {
      if (v9 == 4)
      {
        if (v11)
        {
          v14 = 9;
        }

        else
        {
          v14 = 41;
        }

        v15 = 8 * v4;
        if (!v11)
        {
          v15 = 8;
        }

        v18 = 64;
        goto LABEL_28;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (v9 != 5)
      {
        goto LABEL_29;
      }

      v19 = v11 == 0;
      v14 = 44;
      v20 = 12;
    }

    goto LABEL_22;
  }

  if (v9 == 1)
  {
    v19 = v11 == 0;
    v14 = 41;
    v20 = 9;
LABEL_22:
    if (!v19)
    {
      v14 = v20;
    }

    v15 = 4 * v4;
    if (v19)
    {
      v15 = 4;
    }

    v18 = 32;
    goto LABEL_28;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v9 != 2)
  {
    goto LABEL_29;
  }

  if (v11)
  {
    v14 = 12;
  }

  else
  {
    v14 = 44;
  }

  v15 = 2 * v4;
  if (!v11)
  {
    v15 = 2;
  }

  v18 = 16;
LABEL_28:
  v16 = 1;
  v12 = 1819304813;
  v13 = v7;
  v17 = v4;
LABEL_29:
  *this = v13;
  *(this + 2) = v12;
  *(this + 3) = v14;
  *(this + 4) = v15;
  *(this + 5) = v16;
  *(this + 6) = v15;
  *(this + 7) = v17;
  *(this + 8) = v18;
  *(this + 9) = 0;
}

void anonymous namespace::getChannelLayoutFromDict(_anonymous_namespace_ *this, NSDictionary *a2)
{
  v3 = a2;
  CFRetain(v3);
  v4 = CFGetTypeID(v3);
  if (v4 == CFDictionaryGetTypeID())
  {

    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_223B9297C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  a24 = &a19;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (v24)
  {
    *(v27 + 8) = v24;
    operator delete(v24);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&v28);

  _Unwind_Resume(a1);
}

void sub_223B9299C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  applesauce::CF::StringRef::~StringRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  v17 = *v18;
  JUMPOUT(0x223B91D4CLL);
}

void sub_223B92A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  a24 = &a19;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a24);
  JUMPOUT(0x223B92A60);
}

uint64_t std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    return std::string::__assign_external(a1, a2);
  }

  result = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  result[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void std::vector<CA::StreamDescription>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<CA::StreamDescription>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = 40 * v8;
    v13 = *a2;
    v14 = a2[1];
    *(v12 + 32) = *(a2 + 4);
    *v12 = v13;
    *(v12 + 16) = v14;
    v7 = 40 * v8 + 40;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

void std::vector<adm::HardwareStreamDescription>::push_back[abi:ne200100](void *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0x1E1E1E1E1E1E1E1)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xF0F0F0F0F0F0F0F1 * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0xF0F0F0F0F0F0F0)
    {
      v9 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x1E1E1E1E1E1E1E1)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 136 * v6;
    std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::construct[abi:ne200100]<adm::HardwareStreamDescription,adm::HardwareStreamDescription,void,0>(v10, a2);
    v5 = v10 + 136;
    v19 = (v10 + 136);
    v11 = *a1;
    v12 = a1[1];
    v13 = *a1 - v12;
    v14 = v10 + v13;
    if (v12 != *a1)
    {
      v15 = v10 + v13;
      v16 = *a1;
      do
      {
        std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::construct[abi:ne200100]<adm::HardwareStreamDescription,adm::HardwareStreamDescription,void,0>(v15, v16);
        v16 = (v16 + 136);
        v15 += 136;
      }

      while (v16 != v12);
      do
      {
        std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::destroy[abi:ne200100]<adm::HardwareStreamDescription,void,0>(v11);
        v11 += 136;
      }

      while (v11 != v12);
    }

    v17 = *a1;
    *a1 = v14;
    *&v18 = v17;
    *(&v18 + 1) = a1[2];
    *(a1 + 1) = v19;
    while (v18 != v17)
    {
      *&v18 = v18 - 136;
      v20 = v18;
      std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::destroy[abi:ne200100]<adm::HardwareStreamDescription,void,0>(v18);
      v18 = v20;
    }

    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::construct[abi:ne200100]<adm::HardwareStreamDescription,adm::HardwareStreamDescription,void,0>(a1[1], a2);
    v5 = v4 + 136;
  }

  a1[1] = v5;
}

__n128 std::allocator_traits<std::allocator<adm::DeviceDescription>>::construct[abi:ne200100]<adm::DeviceDescription,adm::DeviceDescription,void,0>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = 0;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    *(a1 + 120) = 1;
  }

  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 128) = a2[8];
    *(a1 + 144) = *(a2 + 18);
    *(a2 + 16) = 0;
    *(a2 + 17) = 0;
    *(a2 + 18) = 0;
    *(a1 + 152) = 1;
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  result = a2[12];
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  return result;
}