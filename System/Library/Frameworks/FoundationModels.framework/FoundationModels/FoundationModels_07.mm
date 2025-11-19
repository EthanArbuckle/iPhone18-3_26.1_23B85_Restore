uint64_t sub_23889CAD0(uint64_t a1)
{
  v2 = sub_2388A539C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23889CB3C(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF313A0, &qword_2388DAA60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A5540();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_2388D3298();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_2388D3238();
    v16 = *(type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0) + 24);
    v17[13] = 2;
    sub_2388D2178();
    sub_2388A2EA0(&qword_27DF30AF8, MEMORY[0x277D0DC20]);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23889CD58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_2388D2178();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_238810E44(&qword_27DF31390, &qword_2388DAA58);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = v22 - v8;
  v10 = type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A5540();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v23 = a1;
  v15 = v13;
  v17 = v26;
  v16 = v27;
  v31 = 0;
  v18 = v28;
  *v15 = sub_2388D31D8();
  v15[1] = v19;
  v22[1] = v19;
  v30 = 1;
  v15[2] = sub_2388D3178();
  v15[3] = v20;
  v22[0] = v20;
  v29 = 2;
  sub_2388A2EA0(&qword_27DF31380, MEMORY[0x277D0DC20]);
  sub_2388D31F8();
  (*(v17 + 8))(v9, v18);
  (*(v24 + 32))(v15 + *(v10 + 24), v6, v16);
  sub_2388A30B8(v15, v25, type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat);
  sub_2388158BC(v23);
  return sub_2388A2F88(v15, type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat);
}

uint64_t sub_23889D104()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x616D65686373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23889D15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2388A603C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23889D184(uint64_t a1)
{
  v2 = sub_2388A5540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23889D1C0(uint64_t a1)
{
  v2 = sub_2388A5540();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23889D22C(void *a1)
{
  v200 = type metadata accessor for Transcript.Prompt(0);
  v2 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v204 = &v187 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
  v4 = *(v207 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v207);
  v196 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v199 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v206 = (&v187 - v11);
  v12 = sub_238810E44(&qword_27DF310E0, &qword_2388D9F80);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v201 = &v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v209 = &v187 - v16;
  v17 = type metadata accessor for Transcript.Entry(0);
  v211 = *(v17 - 8);
  v212 = v17;
  v18 = *(v211 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v203 = (&v187 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v198 = (&v187 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v197 = (&v187 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v202 = &v187 - v26;
  MEMORY[0x28223BE20](v25);
  v205 = (&v187 - v27);
  v28 = type metadata accessor for TranscriptCoderV1.Tool(0);
  v29 = *(v28 - 8);
  v223 = v28;
  v224 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v222 = &v187 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Transcript.ToolDefinition(0);
  v220 = *(v32 - 8);
  v221 = v32;
  v33 = *(v220 + 64);
  MEMORY[0x28223BE20](v32);
  v219 = &v187 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_238810E44(&qword_27DF310E8, &qword_2388D9F88);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v187 - v38;
  v40 = a1[4];
  sub_238815878(a1, a1[3]);
  if ((sub_2388D3328() & 1) == 0)
  {
    v195 = (v4 + 48);
    v210 = (v36 + 8);
    *&v41 = 136446210;
    v189 = v41;
    v225 = v39;
    v226 = MEMORY[0x277D84F90];
    v214 = v35;
    v208 = a1;
    while (1)
    {
      v43 = a1[4];
      sub_238827C28(a1, a1[3]);
      sub_2388A2D18();
      v44 = v256;
      sub_2388D3308();
      if (v44)
      {
        v256 = v44;
        v42 = v226;

        return v42;
      }

      LOBYTE(v244) = 0;
      v45 = sub_2388D31D8();
      v256 = 0;
      v213 = v45;
      v215 = v46;
      LOBYTE(v238) = 1;
      sub_2388A2D6C();
      v47 = v256;
      sub_2388D31F8();
      if (v47)
      {
        v256 = v47;
LABEL_99:

        v42 = v226;

        v184 = *v210;
        v185 = v39;
        v186 = v35;
        goto LABEL_100;
      }

      if (v244 > 1u)
      {
        if (v244 == 2)
        {
          v70 = sub_2388D3208();
          v71 = *(v70 + 16);
          v72 = (v70 + 32);
          while (1)
          {
            if (!v71)
            {

              sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
              LOBYTE(v238) = 2;
              sub_2388A32B4(&qword_27DF31108, &qword_27DF31110);
              v105 = v214;
              sub_2388D31F8();
              v256 = v47;
              v106 = v244;
              sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
              LOBYTE(v238) = 8;
              sub_2388A3350(&qword_27DF31130);
              v107 = v256;
              v108 = sub_2388D31B8();
              v35 = v105;
              if (v107)
              {
                v256 = v107;
                goto LABEL_98;
              }

              if (v244)
              {
                v109 = v244;
              }

              else
              {
                v109 = MEMORY[0x277D84F90];
              }

              MEMORY[0x28223BE20](v108);
              *(&v187 - 2) = v39;
              v110 = sub_238897C08(sub_2388A6158, (&v187 - 4), v106);
              v256 = 0;
              v111 = v110;

              v112 = v198;
              v113 = v215;
              *v198 = v213;
              v112[1] = v113;
              v112[2] = v109;
              v112[3] = v111;
              swift_storeEnumTagMultiPayload();
              v114 = v226;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v114 = sub_2388B7500(0, v114[2] + 1, 1, v114);
              }

              v116 = v114[2];
              v115 = v114[3];
              v226 = v114;
              if (v116 >= v115 >> 1)
              {
                v226 = sub_2388B7500(v115 > 1, v116 + 1, 1, v226);
              }

              v117 = v226;
              v226[2] = v116 + 1;
              v103 = v117 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v116;
              v104 = v198;
              goto LABEL_88;
            }

            v74 = *v72;
            if (v74 <= 4 && *v72 >= 4u)
            {
              break;
            }

            v73 = sub_2388D3368();

            ++v72;
            --v71;
            if (v73)
            {
              goto LABEL_72;
            }
          }

LABEL_72:

          sub_238810E44(&qword_27DF31118, &unk_2388D9F98);
          LOBYTE(v238) = 4;
          sub_2388A33BC(&qword_27DF31120, sub_2388A2DE0);
          sub_2388D31F8();
          v256 = v47;
          v158 = v244;
          v159 = *(v244 + 16);
          if (!v159)
          {

            v162 = MEMORY[0x277D84F90];
LABEL_83:
            v176 = v197;
            v177 = v215;
            *v197 = v213;
            v176[1] = v177;
            v176[2] = v162;
            swift_storeEnumTagMultiPayload();
            v178 = v226;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v35 = v214;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v178 = sub_2388B7500(0, v178[2] + 1, 1, v178);
            }

            v39 = v225;
            v181 = v178[2];
            v180 = v178[3];
            v226 = v178;
            if (v181 >= v180 >> 1)
            {
              v226 = sub_2388B7500(v180 > 1, v181 + 1, 1, v226);
            }

            v182 = v226;
            v226[2] = v181 + 1;
            v103 = v182 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v181;
            v104 = v197;
            goto LABEL_88;
          }

          v250 = MEMORY[0x277D84F90];
          result = sub_2388B82E4(0, v159, 0);
          v160 = v256;
          if (!*(v158 + 16))
          {
            goto LABEL_103;
          }

          v161 = 0;
          v162 = v250;
          v163 = (v158 + 72);
          v227 = v159 - 1;
          v228 = v158;
          while (1)
          {
            v164 = *(v163 - 4);
            v165 = *(v163 - 3);
            v166 = *(v163 - 2);
            v167 = *(v163 - 1);
            v168 = *v163;
            *&v251 = *(v163 - 5);
            *(&v251 + 1) = v164;
            v252 = v165;
            v253 = v166;
            v254 = v167;
            v255 = v168;

            sub_2388A2E34(&v251, &v244);
            v256 = v160;
            if (v160)
            {
              break;
            }

            v243 = v249;
            v241 = v247;
            v242 = v248;
            v239 = v245;
            v240 = v246;
            v238 = v244;
            v250 = v162;
            v170 = *(v162 + 16);
            v169 = *(v162 + 24);
            if (v170 >= v169 >> 1)
            {
              result = sub_2388B82E4((v169 > 1), v170 + 1, 1);
              v162 = v250;
            }

            *(v162 + 16) = v170 + 1;
            v171 = v162 + 88 * v170;
            v172 = v239;
            *(v171 + 32) = v238;
            *(v171 + 48) = v172;
            v173 = v240;
            v174 = v241;
            v175 = v242;
            *(v171 + 112) = v243;
            *(v171 + 80) = v174;
            *(v171 + 96) = v175;
            *(v171 + 64) = v173;
            v160 = v256;
            if (v227 == v161)
            {

              goto LABEL_83;
            }

            v163 += 6;
            if (++v161 >= *(v228 + 16))
            {
              goto LABEL_103;
            }
          }

          v42 = v226;

          v184 = *v210;
          v185 = v225;
LABEL_92:
          v186 = v214;
LABEL_100:
          v184(v185, v186);
          return v42;
        }

        sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
        LOBYTE(v238) = 2;
        sub_2388A32B4(&qword_27DF31108, &qword_27DF31110);
        sub_2388D31F8();
        v88 = v244;
        LOBYTE(v244) = 5;
        v89 = v39;
        v90 = sub_2388D31D8();
        v92 = v91;
        LOBYTE(v244) = 6;
        v93 = sub_2388D31D8();
        v95 = v94;
        MEMORY[0x28223BE20](v93);
        *(&v187 - 2) = v89;
        v96 = sub_238897C08(sub_2388A6158, (&v187 - 4), v88);
        v256 = 0;
        v97 = v96;

        v98 = v203;
        *v203 = v90;
        v98[1] = v92;
        v98[2] = v93;
        v98[3] = v95;
        v98[4] = v97;
        swift_storeEnumTagMultiPayload();
        v99 = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_2388B7500(0, v99[2] + 1, 1, v99);
        }

        v35 = v214;
        v39 = v225;
        v101 = v99[2];
        v100 = v99[3];
        v226 = v99;
        if (v101 >= v100 >> 1)
        {
          v226 = sub_2388B7500(v100 > 1, v101 + 1, 1, v226);
        }

        v102 = v226;
        v226[2] = v101 + 1;
        v103 = v102 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v101;
        v104 = v203;
      }

      else
      {
        if (v244)
        {
          sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
          LOBYTE(v238) = 2;
          sub_2388A32B4(&qword_27DF31108, &qword_27DF31110);
          sub_2388D31F8();
          v256 = v47;
          v75 = v244;
          LOBYTE(v238) = 7;
          sub_2388A2E4C();
          v76 = v256;
          sub_2388D31F8();
          v256 = v76;
          if (v76)
          {
            goto LABEL_98;
          }

          v194 = v244;
          LODWORD(v228) = BYTE8(v244);
          v77 = BYTE8(v245);
          v78 = v246;
          v79 = BYTE8(v246);
          v80 = BYTE9(v246);
          v216 = v247;
          v217 = v245;
          LODWORD(v227) = BYTE8(v247);
          v218 = v248;
          v81 = v39;
          v82 = BYTE8(v248);
          LOBYTE(v244) = 9;
          sub_2388A2EA0(&qword_27DF31140, type metadata accessor for TranscriptCoderV1.ResponseFormat);
          v83 = v256;
          v84 = sub_2388D31B8();
          if (v83)
          {
            v256 = v83;

            v42 = v226;

            v184 = *v210;
            v185 = v81;
            goto LABEL_92;
          }

          MEMORY[0x28223BE20](v84);
          *(&v187 - 2) = v81;
          v85 = sub_238897C08(sub_2388A2EE8, (&v187 - 4), v75);
          v256 = 0;
          v86 = v85;

          if (v80 != 2 && (v80 & 1) != 0)
          {
            v216 = 0;
            v217 = 0;
            v87 = 128;
            goto LABEL_38;
          }

          if (v77)
          {
            if (v79)
            {
              v216 = 0;
              v217 = 0;
              v87 = 254;
LABEL_38:
              LODWORD(v227) = v87;
            }

            else
            {
              LODWORD(v227) = v227 | 0x40;
              v217 = v78;
            }
          }

          v124 = 1;
          v236 = 1;
          v235 = 1;
          v35 = v214;
          v193 = v86;
          if ((v82 & 1) == 0)
          {
            if (v218 <= 0)
            {
              if (qword_27DF2F9E0 != -1)
              {
                swift_once();
              }

              v125 = sub_2388D2408();
              sub_2388413AC(v125, qword_27DF3F8E0);
              v126 = sub_2388D23E8();
              v127 = sub_2388D2E18();
              if (os_log_type_enabled(v126, v127))
              {
                v128 = swift_slowAlloc();
                v129 = swift_slowAlloc();
                *&v244 = v129;
                *v128 = v189;
                *&v238 = v218;
                v130 = sub_2388D32F8();
                v132 = sub_2388C0770(v130, v131, &v244);

                *(v128 + 4) = v132;
                _os_log_impl(&dword_23880E000, v126, v127, "Maximum response tokens (%{public}s) must be positive.", v128, 0xCu);
                sub_2388158BC(v129);
                MEMORY[0x23EE68030](v129, -1, -1);
                MEMORY[0x23EE68030](v128, -1, -1);
              }

              v218 = 0;
              v124 = 1;
            }

            else
            {
              v124 = 0;
            }
          }

          v237 = v228;
          v233 = v124;
          v232[0] = v244;
          *(v232 + 3) = *(&v244 + 3);
          v231[0] = v238;
          *(v231 + 3) = *(&v238 + 3);
          *(v230 + 3) = *(&v250 + 3);
          v230[0] = v250;
          v190 = v236;
          v191 = v235;
          *(v229 + 3) = *&v234[3];
          v229[0] = *v234;
          v192 = v124;
          v133 = v201;
          sub_238827E14(v209, v201, &qword_27DF310E0, &qword_2388D9F80);
          v134 = 1;
          if ((*v195)(v133, 1, v207) != 1)
          {
            v135 = v196;
            sub_2388A2F00(v201, v196, type metadata accessor for TranscriptCoderV1.ResponseFormat);
            v136 = (v135 + *(v207 + 20));
            v137 = *(v136 + 1);
            v188 = *v136;
            v139 = *(v136 + 2);
            v138 = *(v136 + 3);
            v140 = *(type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0) + 24);
            v141 = *(type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0) + 24);
            v142 = sub_2388D2178();
            v143 = v206;
            v144 = v206 + v141;
            v35 = v214;
            (*(*(v142 - 8) + 16))(v144, &v136[v140], v142);
            *v143 = v188;
            v143[1] = v137;
            v143[2] = v139;
            v143[3] = v138;

            sub_2388A2F88(v135, type metadata accessor for TranscriptCoderV1.ResponseFormat);
            v134 = 0;
          }

          v145 = type metadata accessor for Transcript.ResponseFormat(0);
          v146 = *(*(v145 - 8) + 56);
          v147 = v206;
          v146(v206, v134, 1, v145);
          v148 = v199;
          sub_238827E14(v147, v199, &qword_27DF2FF00, &qword_2388D57E0);
          v149 = *(v200 + 28);
          v150 = v204;
          v146((v204 + v149), 1, 1, v145);
          v151 = v215;
          *v150 = v213;
          *(v150 + 8) = v151;
          v152 = v216;
          v153 = v217;
          *(v150 + 16) = v193;
          *(v150 + 24) = v153;
          *(v150 + 32) = v152;
          *(v150 + 40) = v227;
          *(v150 + 41) = v232[0];
          *(v150 + 44) = *(v232 + 3);
          *(v150 + 48) = v194;
          *(v150 + 56) = v228;
          *(v150 + 57) = v231[0];
          *(v150 + 60) = *(v231 + 3);
          *(v150 + 64) = 0;
          *(v150 + 72) = v190;
          LODWORD(v152) = v230[0];
          *(v150 + 76) = *(v230 + 3);
          *(v150 + 73) = v152;
          *(v150 + 80) = 0;
          *(v150 + 88) = v191;
          *(v150 + 89) = v229[0];
          *(v150 + 92) = *(v229 + 3);
          *(v150 + 96) = v218;
          *(v150 + 104) = v192;
          sub_2388A461C(v148, v150 + v149, &qword_27DF2FF00, &qword_2388D57E0);
          sub_2388A30B8(v150, v202, type metadata accessor for Transcript.Prompt);
          swift_storeEnumTagMultiPayload();
          v154 = v226;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = sub_2388B7500(0, v154[2] + 1, 1, v154);
          }

          v39 = v225;
          a1 = v208;
          v156 = v154[2];
          v155 = v154[3];
          v226 = v154;
          if (v156 >= v155 >> 1)
          {
            v226 = sub_2388B7500(v155 > 1, v156 + 1, 1, v226);
          }

          sub_238827E88(v206, &qword_27DF2FF00, &qword_2388D57E0);
          sub_238827E88(v209, &qword_27DF310E0, &qword_2388D9F80);
          v157 = v226;
          v226[2] = v156 + 1;
          sub_2388A2F00(v202, v157 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v156, type metadata accessor for Transcript.Entry);
          sub_2388A2F88(v204, type metadata accessor for Transcript.Prompt);
          goto LABEL_89;
        }

        sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
        LOBYTE(v238) = 2;
        sub_2388A32B4(&qword_27DF31108, &qword_27DF31110);
        sub_2388D31F8();
        v256 = v47;
        v48 = v244;
        sub_238810E44(&qword_27DF31148, &unk_2388D9FA8);
        LOBYTE(v238) = 3;
        sub_2388A2FE8(&qword_27DF31150, &qword_27DF31158);
        v49 = v256;
        v50 = sub_2388D31B8();
        if (v49)
        {
          v256 = v49;
LABEL_98:

          goto LABEL_99;
        }

        v51 = v244;
        MEMORY[0x28223BE20](v50);
        *(&v187 - 2) = v39;
        v52 = sub_238897C08(sub_2388A6158, (&v187 - 4), v48);
        v256 = 0;
        v194 = v52;

        if (v51)
        {
          v53 = *(v51 + 16);
          v54 = MEMORY[0x277D84F90];
          if (v53)
          {
            *&v244 = MEMORY[0x277D84F90];
            result = sub_2388B8140(0, v53, 0);
            v56 = 0;
            v57 = v244;
            v216 = v51 + ((*(v224 + 80) + 32) & ~*(v224 + 80));
            v217 = v53;
            v218 = v51;
            while (v56 < *(v51 + 16))
            {
              v58 = v222;
              sub_2388A30B8(v216 + *(v224 + 72) * v56, v222, type metadata accessor for TranscriptCoderV1.Tool);
              v59 = (v58 + *(v223 + 20));
              v60 = v59[1];
              v227 = *v59;
              v228 = v57;
              v62 = v59[2];
              v61 = v59[3];
              v63 = *(type metadata accessor for TranscriptCoderV1.Function(0) + 24);
              v64 = *(v221 + 24);
              v65 = sub_2388D2178();
              v66 = &v219[v64];
              v67 = v219;
              (*(*(v65 - 8) + 16))(v66, v59 + v63, v65);
              *v67 = v227;
              v67[1] = v60;
              v67[2] = v62;
              v67[3] = v61;
              v57 = v228;

              sub_2388A2F88(v58, type metadata accessor for TranscriptCoderV1.Tool);
              *&v244 = v57;
              v69 = *(v57 + 16);
              v68 = *(v57 + 24);
              if (v69 >= v68 >> 1)
              {
                sub_2388B8140(v68 > 1, v69 + 1, 1);
                v57 = v244;
              }

              ++v56;
              *(v57 + 16) = v69 + 1;
              result = sub_2388A2F00(v67, v57 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v69, type metadata accessor for Transcript.ToolDefinition);
              v51 = v218;
              v39 = v225;
              if (v217 == v56)
              {

                v35 = v214;
                goto LABEL_50;
              }
            }

            __break(1u);
LABEL_103:
            __break(1u);
            return result;
          }

          v57 = v54;
        }

        else
        {
          v57 = MEMORY[0x277D84F90];
        }

LABEL_50:
        v118 = v226;
        v119 = v205;
        v120 = v215;
        *v205 = v213;
        v119[1] = v120;
        v119[2] = v194;
        v119[3] = v57;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_2388B7500(0, v118[2] + 1, 1, v118);
        }

        v122 = v118[2];
        v121 = v118[3];
        v226 = v118;
        if (v122 >= v121 >> 1)
        {
          v226 = sub_2388B7500(v121 > 1, v122 + 1, 1, v226);
        }

        v123 = v226;
        v226[2] = v122 + 1;
        v103 = v123 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v122;
        v104 = v205;
      }

LABEL_88:
      sub_2388A2F00(v104, v103, type metadata accessor for Transcript.Entry);
      a1 = v208;
LABEL_89:
      (*v210)(v39, v35);
      v183 = a1[4];
      sub_238815878(a1, a1[3]);
      if (sub_2388D3328())
      {
        return v226;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23889EE7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2388D0F58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v62 - v13;
  v15 = sub_2388D0D88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  if (!*(a1 + 16))
  {
    v45 = a1[4];
    if (!v45)
    {
      goto LABEL_21;
    }

    v46 = a1[3];
    v47 = a1[1];
    *a3 = *a1;
    a3[1] = v47;
    a3[2] = v46;
    a3[3] = v45;
    a3[6] = 0;
  }

  if (*(a1 + 16) != 1)
  {
    v66 = a2;
    v48 = type metadata accessor for TranscriptCoderV1.Content(0);
    sub_238827E14(a1 + *(v48 + 32), v14, &qword_27DF30608, &qword_2388D6690);
    if ((*(v7 + 48))(v14, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v14, v6);
      v69 = sub_2388D0EF8();
      v70 = v49;
      v67 = 44;
      v68 = 0xE100000000000000;
      sub_238856678();
      v50 = sub_2388D2EB8();

      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = (v50 + 16 + 16 * v51);
        v53 = *v52;
        v54 = v52[1];

        v55 = sub_2388D0FA8();
        v57 = v56;

        if (v57 >> 60 != 15)
        {
          v58 = sub_2388D0FE8();
          v59 = CGDataProviderCreateWithCFData(v58);

          if (v59)
          {
            v60 = CGImageCreateWithJPEGDataProvider(v59, 0, 0, kCGRenderingIntentDefault);
            sub_238827FA4(v55, v57);

            if (v60)
            {
              (*(v7 + 8))(v10, v6);
              v61 = a1[1];
              *a3 = *a1;
              a3[1] = v61;
              a3[2] = v60;
              a3[6] = 0x8000000000000000;
            }
          }

          else
          {
            sub_238827FA4(v55, v57);
          }
        }
      }

      else
      {
      }

      (*(v7 + 8))(v10, v6);
    }

LABEL_21:
    LOBYTE(v69) = 2;
    sub_2388D2FF8();
    swift_allocError();
    sub_238810E44(&qword_27DF310E8, &qword_2388D9F88);
    sub_238815180(&qword_27DF31160, &qword_27DF310E8, &qword_2388D9F88);
    sub_2388D2FC8();
    return swift_willThrow();
  }

  v19 = a1[6];
  if (!v19)
  {
    goto LABEL_21;
  }

  v21 = a1[7];
  v20 = a1[8];
  v22 = a1[5];
  v23 = a1[1];
  v65 = *a1;
  v66 = v22;
  v64 = v23;
  v24 = *(a1 + 72);
  v62[1] = v18;

  v63 = v19;
  sub_238814698(v21, v20, v24);
  v25 = sub_23882C97C(v21, v20, v24, 0, 0, 0, 0);
  v62[0] = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_2388D0DC8();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_238814698(v25, v27, v29);
  v33 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v34 = *(v16 + 72);
  v35 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v69 = v36;
  sub_2388A2EA0(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v37 = v62[0];
  v38 = sub_238819C1C(v62[0], v27, v29, v33);
  v40 = v39;

  sub_238810DC4(v37, v27, v29);

  v42 = v64;
  *a3 = v65;
  a3[1] = v42;
  v43 = v63;
  a3[2] = v66;
  a3[3] = v43;
  a3[4] = v37;
  a3[5] = v27;
  v44 = 0x4000000000000100;
  if ((v29 & 0x100) == 0)
  {
    v44 = 0x4000000000000000;
  }

  a3[6] = v44 | v29 & 7;
  a3[7] = 0;
  a3[8] = 0;
  a3[9] = v38;
  a3[10] = v40;
  return result;
}

double sub_23889F62C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2388D1058();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v27 = a1[1];
  v28 = v10;
  v12 = *(a1 + 4);
  v11 = *(a1 + 5);
  v25 = v10;
  v26 = v27;
  swift_bridgeObjectRetain_n();
  sub_2388A3140(&v28, v20);
  sub_2388A3140(&v27, v20);
  sub_2388D1048();
  v13 = sub_2388D1038();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  v20[0] = v13;
  v20[1] = v15;
  GeneratedContent.init(id:text:)(v20, v12, v11, &v21);
  if (v2)
  {
    sub_2388A319C(&v28);
    sub_2388A319C(&v27);
  }

  else
  {
    v17 = v22;
    v18 = v23;
    v19 = v26;
    *a2 = v25;
    *(a2 + 16) = v19;
    *(a2 + 32) = v21;
    *(a2 + 48) = v17;
    *(a2 + 49) = v18;
    result = v24[0];
    *(a2 + 56) = *v24;
    *(a2 + 72) = v12;
    *(a2 + 80) = v11;
  }

  return result;
}

void sub_23889F7C8(uint64_t a1, uint64_t a2)
{
  v359 = a2;
  v351 = type metadata accessor for Transcript.ResponseFormat(0);
  v3 = *(v351 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v351);
  v347 = (&v345 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v350 = &v345 - v8;
  v9 = sub_238810E44(&qword_27DF310E0, &qword_2388D9F80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v349 = &v345 - v11;
  v348 = type metadata accessor for Transcript.Prompt(0);
  v12 = *(*(v348 - 8) + 64);
  MEMORY[0x28223BE20](v348);
  v353 = &v345 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = sub_2388D1D78();
  v14 = *(v394 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v394);
  v393 = &v345 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v345 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v366 = &v345 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v345 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v363 = &v345 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v367 = &v345 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v365 = &v345 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v345 - v34;
  MEMORY[0x28223BE20](v33);
  v364 = &v345 - v36;
  v37 = type metadata accessor for TranscriptCoderV1.Content(0);
  v399 = *(v37 - 8);
  v400 = v37;
  v38 = *(v399 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v381 = (&v345 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  v383 = &v345 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v374 = (&v345 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v375 = &v345 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v380 = (&v345 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v382 = &v345 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v378 = (&v345 - v52);
  MEMORY[0x28223BE20](v51);
  v379 = &v345 - v53;
  v388 = type metadata accessor for Transcript.ToolDefinition(0);
  v390 = *(v388 - 8);
  v54 = *(v390 + 64);
  MEMORY[0x28223BE20](v388);
  v387 = &v345 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = type metadata accessor for TranscriptCoderV1.Tool(0);
  v385 = *(v386 - 8);
  v56 = *(v385 + 64);
  MEMORY[0x28223BE20](v386);
  v398 = (&v345 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v358 = type metadata accessor for Transcript.Entry(0);
  v58 = *(v358 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v358);
  v369 = (&v345 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_238810E44(&qword_27DF31168, &qword_2388D9FB8);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61);
  v376 = &v345 - v65;
  v354 = *(a1 + 16);
  if (!v354)
  {
    return;
  }

  v373 = v63;
  v66 = 0;
  v357 = a1 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v392 = (v14 + 8);
  v391 = 0x80000002388DF220;
  v355 = (v64 + 8);
  v346 = (v3 + 48);
  v356 = *(v58 + 72);
  v362 = v21;
  v360 = v26;
  v361 = v35;
  while (1)
  {
    v368 = v66;
    v70 = v357 + v356 * v66;
    v71 = *(v359 + 32);
    sub_238827C28(v359, *(v359 + 24));
    sub_2388A2D18();
    sub_2388D3338();
    sub_2388A30B8(v70, v369, type metadata accessor for Transcript.Entry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    v73 = v389;
    if (EnumCaseMultiPayload == 2)
    {
      v145 = *v369;
      v146 = v369[1];
      v147 = v369[2];
      LOBYTE(v402) = 0;
      v148 = v373;
      v149 = v376;
      sub_2388D3298();
      if (v73)
      {

LABEL_127:

        (*v355)(v149, v148);
        return;
      }

      LOBYTE(v402) = 2;
      LOBYTE(v417) = 1;
      sub_2388A31F0();
      sub_2388D32C8();
      v389 = 0;
      v150 = *(v147 + 16);
      if (v150)
      {
        v372 = v146;
        v402 = MEMORY[0x277D84F90];
        sub_2388B8450(0, v150, 0);
        v151 = 0;
        v152 = v402;
        v153 = *(v147 + 16);
        v154 = (v147 + 56);
        v384 = v147;
        v377 = v150;
        while (v151 < v153)
        {
          v155 = *(v154 - 3);
          v156 = *(v154 - 2);
          v157 = *v154;
          v396 = *(v154 - 1);
          v397 = v155;
          v158 = v154[7];
          v395 = v154[6];
          v402 = v152;
          v160 = *(v152 + 16);
          v159 = *(v152 + 24);

          if (v160 >= v159 >> 1)
          {
            sub_2388B8450((v159 > 1), v160 + 1, 1);
            v152 = v402;
          }

          *(v152 + 16) = v160 + 1;
          v161 = (v152 + 48 * v160);
          v162 = v396;
          v161[4] = v397;
          v161[5] = v156;
          v161[6] = v162;
          v161[7] = v157;
          v161[8] = v395;
          v161[9] = v158;
          v153 = *(v384 + 16);
          if (v151 >= v153)
          {
            goto LABEL_141;
          }

          ++v151;
          v154 += 11;
          if (v377 == v151)
          {

            goto LABEL_98;
          }
        }

        goto LABEL_140;
      }

      v152 = MEMORY[0x277D84F90];
LABEL_98:
      v402 = v152;
      LOBYTE(v417) = 4;
      sub_238810E44(&qword_27DF31118, &unk_2388D9F98);
      sub_2388A33BC(&qword_27DF31190, sub_2388A3434);
      v309 = v373;
      v310 = v376;
      v311 = v389;
      sub_2388D32C8();
      v389 = v311;
      if (v311)
      {

        (*v355)(v310, v309);
        return;
      }

      (*v355)(v310, v309);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v74 = *v369;
      v75 = v369[1];
      v76 = v369[2];
      v371 = v369[3];
      v77 = v369[4];
      LOBYTE(v402) = 0;
      v78 = v373;
      v79 = v376;
      sub_2388D3298();
      if (v73)
      {

        (*v355)(v79, v78);
        return;
      }

      LOBYTE(v402) = 3;
      LOBYTE(v417) = 1;
      sub_2388A31F0();
      sub_2388D32C8();
      LOBYTE(v402) = 5;
      sub_2388D3298();
      LOBYTE(v402) = 6;
      sub_2388D3298();
      v389 = 0;
      v80 = *(v77 + 16);
      if (v80)
      {
        v370 = v75;
        v417 = MEMORY[0x277D84F90];
        sub_2388B8470(0, v80, 0);
        if (!*(v77 + 16))
        {
          goto LABEL_138;
        }

        v81 = 0;
        v82 = v417;
        v83 = v77 + 82;
        v395 = v80 - 1;
        v384 = v77;
        while (1)
        {
          v84 = *(v83 - 50);
          v85 = *(v83 - 42);
          v86 = *(v83 - 34);
          v87 = *(v83 - 26);
          v88 = *(v83 + 4) >> 14;
          if (v88)
          {
            v396 = *(v83 - 50);
            v397 = v86;
            if (v88 == 1)
            {
              v89 = *(v83 - 2);
              v90 = *(v83 - 10);
              v91 = *(v83 - 18);

              v377 = sub_23882BCCC(v91, v90, v89);
              v93 = v92;
              v95 = v94;
              v96 = v85;
              v97 = v82;
              v98 = *(v400 + 32);
              v99 = sub_2388D0F58();
              v100 = v374;
              v101 = v374 + v98;
              v82 = v97;
              (*(*(v99 - 8) + 56))(v101, 1, 1, v99);
              *v100 = v396;
              v100[1] = v96;
              *(v100 + 16) = 1;
              v100[3] = 0;
              v100[4] = 0;
              v100[5] = v397;
              v100[6] = v87;
              v100[7] = v377;
              v100[8] = v93;
              v102 = v100;
              *(v100 + 72) = v95;
              v77 = v384;
            }

            else
            {
              v377 = v82;
              v106 = objc_allocWithZone(MEMORY[0x277CBEB28]);
              v372 = v85;

              v107 = [v106 init];
              v108 = v393;
              sub_2388D1D68();
              sub_2388D1D58();
              (*v392)(v108, v394);
              v109 = sub_2388D2848();

              v110 = CGImageDestinationCreateWithData(v107, v109, 1uLL, 0);

              if (!v110)
              {
                goto LABEL_149;
              }

              CGImageDestinationAddImage(v110, v397, 0);
              CGImageDestinationFinalize(v110);
              v397 = v107;
              v111 = MEMORY[0x23EE65230](v107);
              v113 = v112;
              v114 = sub_2388D0FF8();
              v116 = v115;
              v402 = 0;
              v403 = 0xE000000000000000;
              sub_2388D2FA8();

              v402 = 0xD000000000000017;
              v403 = v391;
              MEMORY[0x23EE66C20](v114, v116);
              v117 = v360;
              sub_2388D0F28();

              v118 = sub_2388D0F58();
              v119 = *(v118 - 8);
              if ((*(v119 + 48))(v117, 1, v118) == 1)
              {
                goto LABEL_148;
              }

              sub_238826D50(v111, v113);

              v120 = v363;
              (*(v119 + 32))(v363, v117, v118);
              (*(v119 + 56))(v120, 0, 1, v118);
              v102 = v374;
              v121 = v372;
              *v374 = v396;
              *(v102 + 8) = v121;
              *(v102 + 16) = 2;
              *(v102 + 24) = 0u;
              *(v102 + 40) = 0u;
              *(v102 + 56) = 0u;
              *(v102 + 72) = 0;
              sub_2388A3244(v120, v102 + *(v400 + 32));
              v77 = v384;
              v82 = v377;
            }
          }

          else
          {
            v103 = *(v400 + 32);
            v104 = sub_2388D0F58();
            v105 = v374 + v103;
            v102 = v374;
            (*(*(v104 - 8) + 56))(v105, 1, 1, v104);
            *v102 = v84;
            *(v102 + 8) = v85;
            *(v102 + 16) = 0;
            *(v102 + 24) = v86;
            *(v102 + 32) = v87;
            *(v102 + 40) = 0u;
            *(v102 + 56) = 0u;
            *(v102 + 72) = 0;
          }

          v122 = v375;
          sub_2388A2F00(v102, v375, type metadata accessor for TranscriptCoderV1.Content);
          v417 = v82;
          v124 = *(v82 + 16);
          v123 = *(v82 + 24);
          if (v124 >= v123 >> 1)
          {
            sub_2388B8470(v123 > 1, v124 + 1, 1);
            v122 = v375;
            v82 = v417;
          }

          *(v82 + 16) = v124 + 1;
          sub_2388A2F00(v122, v82 + ((*(v399 + 80) + 32) & ~*(v399 + 80)) + *(v399 + 72) * v124, type metadata accessor for TranscriptCoderV1.Content);
          if (v395 == v81)
          {
            break;
          }

          ++v81;
          v83 += 88;
          if (v81 >= *(v77 + 16))
          {
            goto LABEL_138;
          }
        }
      }

      else
      {

        v82 = MEMORY[0x277D84F90];
      }

      v67 = v376;
      v402 = v82;
      LOBYTE(v417) = 2;
      sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
      sub_2388A32B4(&qword_27DF31178, &qword_27DF31180);
      v68 = v373;
      v69 = v389;
      sub_2388D32C8();
      v389 = v69;
      if (v69)
      {

        (*v355)(v67, v68);
        return;
      }

      (*v355)(v67, v68);
    }

    else
    {
      v163 = *v369;
      v164 = v369[1];
      v165 = v369[2];
      v166 = v369[3];
      if (*(v165 + 16))
      {

        v73 = v389;
        v167 = v165;
      }

      else
      {
        v167 = 0;
      }

      LOBYTE(v402) = 0;
      v148 = v373;
      v149 = v376;
      sub_2388D3298();
      if (v73)
      {
        goto LABEL_126;
      }

      LOBYTE(v402) = 2;
      LOBYTE(v417) = 1;
      sub_2388A31F0();
      sub_2388D32C8();
      v389 = 0;
      v221 = *(v166 + 16);
      if (v221)
      {
        v352 = v165;
        v370 = v164;
        v371 = v167;
        v417 = MEMORY[0x277D84F90];
        sub_2388B8470(0, v221, 0);
        if (!*(v166 + 16))
        {
          goto LABEL_136;
        }

        v222 = 0;
        v223 = v417;
        v224 = v166 + 82;
        v395 = v221 - 1;
        v384 = v166;
        while (1)
        {
          v225 = *(v224 - 50);
          v226 = *(v224 - 42);
          v227 = *(v224 - 34);
          v228 = *(v224 - 26);
          v229 = *(v224 + 4) >> 14;
          if (v229)
          {
            v396 = *(v224 - 50);
            v397 = v227;
            if (v229 == 1)
            {
              v230 = *(v224 - 2);
              v231 = *(v224 - 10);
              v232 = *(v224 - 18);

              v377 = sub_23882BCCC(v232, v231, v230);
              v234 = v233;
              v236 = v235;
              v237 = v226;
              v238 = v223;
              v239 = *(v400 + 32);
              v240 = sub_2388D0F58();
              v241 = v381;
              v242 = v381 + v239;
              v223 = v238;
              (*(*(v240 - 8) + 56))(v242, 1, 1, v240);
              *v241 = v396;
              v241[1] = v237;
              *(v241 + 16) = 1;
              v241[3] = 0;
              v241[4] = 0;
              v241[5] = v397;
              v241[6] = v228;
              v241[7] = v377;
              v241[8] = v234;
              v243 = v241;
              *(v241 + 72) = v236;
              v166 = v384;
            }

            else
            {
              v377 = v223;
              v247 = objc_allocWithZone(MEMORY[0x277CBEB28]);
              v372 = v226;

              v248 = [v247 init];
              v249 = v393;
              sub_2388D1D68();
              sub_2388D1D58();
              (*v392)(v249, v394);
              v250 = sub_2388D2848();

              v251 = CGImageDestinationCreateWithData(v248, v250, 1uLL, 0);

              if (!v251)
              {
                goto LABEL_143;
              }

              CGImageDestinationAddImage(v251, v397, 0);
              CGImageDestinationFinalize(v251);
              v397 = v248;
              v252 = MEMORY[0x23EE65230](v248);
              v254 = v253;
              v255 = sub_2388D0FF8();
              v257 = v256;
              v402 = 0;
              v403 = 0xE000000000000000;
              sub_2388D2FA8();

              v402 = 0xD000000000000017;
              v403 = v391;
              MEMORY[0x23EE66C20](v255, v257);
              v258 = v362;
              sub_2388D0F28();

              v259 = sub_2388D0F58();
              v260 = *(v259 - 8);
              if ((*(v260 + 48))(v258, 1, v259) == 1)
              {
                goto LABEL_142;
              }

              sub_238826D50(v252, v254);

              v261 = v366;
              (*(v260 + 32))(v366, v258, v259);
              (*(v260 + 56))(v261, 0, 1, v259);
              v243 = v381;
              v262 = v372;
              *v381 = v396;
              *(v243 + 8) = v262;
              *(v243 + 16) = 2;
              *(v243 + 24) = 0u;
              *(v243 + 40) = 0u;
              *(v243 + 56) = 0u;
              *(v243 + 72) = 0;
              sub_2388A3244(v261, v243 + *(v400 + 32));
              v166 = v384;
              v223 = v377;
            }
          }

          else
          {
            v244 = *(v400 + 32);
            v245 = sub_2388D0F58();
            v246 = v381 + v244;
            v243 = v381;
            (*(*(v245 - 8) + 56))(v246, 1, 1, v245);
            *v243 = v225;
            *(v243 + 8) = v226;
            *(v243 + 16) = 0;
            *(v243 + 24) = v227;
            *(v243 + 32) = v228;
            *(v243 + 40) = 0u;
            *(v243 + 56) = 0u;
            *(v243 + 72) = 0;
          }

          v263 = v383;
          sub_2388A2F00(v243, v383, type metadata accessor for TranscriptCoderV1.Content);
          v417 = v223;
          v265 = *(v223 + 16);
          v264 = *(v223 + 24);
          if (v265 >= v264 >> 1)
          {
            sub_2388B8470(v264 > 1, v265 + 1, 1);
            v263 = v383;
            v223 = v417;
          }

          *(v223 + 16) = v265 + 1;
          sub_2388A2F00(v263, v223 + ((*(v399 + 80) + 32) & ~*(v399 + 80)) + *(v399 + 72) * v265, type metadata accessor for TranscriptCoderV1.Content);
          if (v395 == v222)
          {
            break;
          }

          ++v222;
          v224 += 88;
          if (v222 >= *(v166 + 16))
          {
            goto LABEL_136;
          }
        }

        v266 = v376;
        v167 = v371;
      }

      else
      {

        v223 = MEMORY[0x277D84F90];
        v266 = v376;
      }

      v402 = v223;
      LOBYTE(v417) = 2;
      sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
      sub_2388A32B4(&qword_27DF31178, &qword_27DF31180);
      v312 = v373;
      v313 = v389;
      sub_2388D32C8();
      if (v313)
      {

        (*v355)(v266, v312);
        return;
      }

      v402 = v167;
      LOBYTE(v417) = 8;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_2388A3350(&qword_27DF31188);
      sub_2388D3278();
      v389 = 0;
      (*v355)(v266, v312);
    }

LABEL_6:
    v66 = v368 + 1;
    if (v368 + 1 == v354)
    {
      return;
    }
  }

  if (!EnumCaseMultiPayload)
  {
    v125 = *v369;
    v352 = v369[1];
    v127 = v369[2];
    v126 = v369[3];
    v128 = *(v126 + 16);
    v377 = v127;
    v395 = v126;
    if (v128)
    {
      v372 = v125;
      v402 = MEMORY[0x277D84F90];
      sub_2388B84B4(0, v128, 0);
      v129 = 0;
      v384 = v126 + ((*(v390 + 80) + 32) & ~*(v390 + 80));
      v130 = v402;
      v396 = v128;
      while (v129 < *(v126 + 16))
      {
        v131 = v384 + *(v390 + 72) * v129;
        v397 = v130;
        v132 = v387;
        sub_2388A30B8(v131, v387, type metadata accessor for Transcript.ToolDefinition);
        v134 = *v132;
        v133 = *(v132 + 1);
        v136 = *(v132 + 2);
        v135 = *(v132 + 3);
        v137 = *(v388 + 24);
        v138 = v398 + *(v386 + 20);
        v139 = *(type metadata accessor for TranscriptCoderV1.Function(0) + 24);
        v140 = sub_2388D2178();
        (*(*(v140 - 8) + 16))(&v138[v139], &v132[v137], v140);
        *v138 = v134;
        *(v138 + 1) = v133;
        *(v138 + 2) = v136;
        *(v138 + 3) = v135;
        v141 = v398;
        *v398 = 0x6E6F6974636E7566;
        *(v141 + 8) = 0xE800000000000000;

        v142 = v132;
        v130 = v397;
        sub_2388A2F88(v142, type metadata accessor for Transcript.ToolDefinition);
        v402 = v130;
        v144 = *(v130 + 2);
        v143 = *(v130 + 3);
        if (v144 >= v143 >> 1)
        {
          sub_2388B84B4(v143 > 1, v144 + 1, 1);
          v130 = v402;
        }

        ++v129;
        *(v130 + 2) = v144 + 1;
        sub_2388A2F00(v141, v130 + ((*(v385 + 80) + 32) & ~*(v385 + 80)) + *(v385 + 72) * v144, type metadata accessor for TranscriptCoderV1.Tool);
        v126 = v395;
        if (v396 == v129)
        {
          v220 = v389;
          v127 = v377;
          goto LABEL_80;
        }
      }

      goto LABEL_139;
    }

    v130 = MEMORY[0x277D84F90];
    v220 = v389;
LABEL_80:
    LOBYTE(v402) = 0;
    v148 = v373;
    v149 = v376;
    sub_2388D3298();
    if (v220)
    {
LABEL_126:

      goto LABEL_127;
    }

    LOBYTE(v402) = 0;
    LOBYTE(v417) = 1;
    sub_2388A31F0();
    sub_2388D32C8();
    v389 = 0;
    v267 = *(v127 + 16);
    if (v267)
    {
      v397 = v130;
      v417 = MEMORY[0x277D84F90];
      sub_2388B8470(0, v267, 0);
      if (!*(v127 + 16))
      {
        goto LABEL_137;
      }

      v268 = 0;
      v269 = v417;
      v270 = v127 + 82;
      v384 = v267 - 1;
      while (1)
      {
        v271 = *(v270 - 50);
        v272 = *(v270 - 42);
        v273 = *(v270 - 34);
        v274 = *(v270 - 26);
        v275 = *(v270 + 4) >> 14;
        if (v275)
        {
          v396 = v269;
          if (v275 == 1)
          {
            v276 = *(v270 - 2);
            v277 = *(v270 - 10);
            v278 = *(v270 - 18);

            v372 = sub_23882BCCC(v278, v277, v276);
            v280 = v279;
            LODWORD(v371) = v281;
            v282 = *(v400 + 32);
            v283 = sub_2388D0F58();
            v284 = v273;
            v285 = v378;
            (*(*(v283 - 8) + 56))(v378 + v282, 1, 1, v283);
            *v285 = v271;
            v285[1] = v272;
            *(v285 + 16) = 1;
            v285[3] = 0;
            v285[4] = 0;
            v285[5] = v284;
            v285[6] = v274;
            v285[7] = v372;
            v285[8] = v280;
            v286 = v285;
            v269 = v396;
            *(v285 + 72) = v371;
            v127 = v377;
          }

          else
          {
            v371 = v271;
            v290 = objc_allocWithZone(MEMORY[0x277CBEB28]);
            v372 = v272;

            v291 = [v290 init];
            v292 = v393;
            sub_2388D1D68();
            sub_2388D1D58();
            (*v392)(v292, v394);
            v293 = sub_2388D2848();

            v294 = CGImageDestinationCreateWithData(v291, v293, 1uLL, 0);

            if (!v294)
            {
              goto LABEL_146;
            }

            CGImageDestinationAddImage(v294, v273, 0);
            CGImageDestinationFinalize(v294);
            v370 = v291;
            v295 = MEMORY[0x23EE65230](v291);
            v297 = v296;
            v298 = sub_2388D0FF8();
            v300 = v299;
            v402 = 0;
            v403 = 0xE000000000000000;
            sub_2388D2FA8();

            v402 = 0xD000000000000017;
            v403 = v391;
            MEMORY[0x23EE66C20](v298, v300);
            v301 = v361;
            sub_2388D0F28();

            v302 = sub_2388D0F58();
            v303 = *(v302 - 8);
            if ((*(v303 + 48))(v301, 1, v302) == 1)
            {
              goto LABEL_147;
            }

            sub_238826D50(v295, v297);

            v304 = v364;
            (*(v303 + 32))(v364, v301, v302);
            (*(v303 + 56))(v304, 0, 1, v302);
            v286 = v378;
            v305 = v372;
            *v378 = v371;
            *(v286 + 8) = v305;
            *(v286 + 16) = 2;
            *(v286 + 24) = 0u;
            *(v286 + 40) = 0u;
            *(v286 + 56) = 0u;
            *(v286 + 72) = 0;
            sub_2388A3244(v304, v286 + *(v400 + 32));
            v127 = v377;
            v269 = v396;
          }
        }

        else
        {
          v287 = *(v400 + 32);
          v288 = sub_2388D0F58();
          v289 = v378 + v287;
          v286 = v378;
          (*(*(v288 - 8) + 56))(v289, 1, 1, v288);
          *v286 = v271;
          *(v286 + 8) = v272;
          *(v286 + 16) = 0;
          *(v286 + 24) = v273;
          *(v286 + 32) = v274;
          *(v286 + 40) = 0u;
          *(v286 + 56) = 0u;
          *(v286 + 72) = 0;
        }

        v306 = v379;
        sub_2388A2F00(v286, v379, type metadata accessor for TranscriptCoderV1.Content);
        v417 = v269;
        v308 = *(v269 + 16);
        v307 = *(v269 + 24);
        if (v308 >= v307 >> 1)
        {
          sub_2388B8470(v307 > 1, v308 + 1, 1);
          v306 = v379;
          v269 = v417;
        }

        *(v269 + 16) = v308 + 1;
        sub_2388A2F00(v306, v269 + ((*(v399 + 80) + 32) & ~*(v399 + 80)) + *(v399 + 72) * v308, type metadata accessor for TranscriptCoderV1.Content);
        if (v384 == v268)
        {
          break;
        }

        ++v268;
        v270 += 88;
        if (v268 >= *(v127 + 16))
        {
          goto LABEL_137;
        }
      }

      v130 = v397;
    }

    else
    {

      v269 = MEMORY[0x277D84F90];
    }

    v402 = v269;
    LOBYTE(v417) = 2;
    sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
    sub_2388A32B4(&qword_27DF31178, &qword_27DF31180);
    v324 = v389;
    sub_2388D32C8();
    if (v324)
    {

      (*v355)(v376, v373);
      return;
    }

    if (!*(v130 + 2))
    {

      v130 = 0;
    }

    v402 = v130;
    LOBYTE(v417) = 3;
    sub_238810E44(&qword_27DF31148, &unk_2388D9FA8);
    sub_2388A2FE8(&qword_27DF311B0, &qword_27DF311B8);
    v325 = v373;
    v326 = v376;
    sub_2388D3278();

    (*v355)(v326, v325);
    v389 = 0;
    goto LABEL_6;
  }

  v168 = v353;
  sub_2388A2F00(v369, v353, type metadata accessor for Transcript.Prompt);
  v169 = *v168;
  v170 = v168[1];
  LOBYTE(v402) = 0;
  v171 = v373;
  v172 = v376;
  v173 = v389;
  sub_2388D3298();
  if (v173)
  {
    (*v355)(v172, v171);
LABEL_129:
    sub_2388A2F88(v353, type metadata accessor for Transcript.Prompt);
    return;
  }

  LOBYTE(v402) = 1;
  LOBYTE(v417) = 1;
  sub_2388A31F0();
  sub_2388D32C8();
  v389 = 0;
  v174 = *(v353 + 16);
  v175 = *(v174 + 16);
  if (!v175)
  {
    v177 = MEMORY[0x277D84F90];
LABEL_104:
    v314 = v376;
    v402 = v177;
    LOBYTE(v417) = 2;
    sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
    sub_2388A32B4(&qword_27DF31178, &qword_27DF31180);
    v315 = v389;
    sub_2388D32C8();
    if (v315)
    {

      (*v355)(v314, v373);
      goto LABEL_129;
    }

    v316 = v353;
    v317 = *(v353 + 40);
    if (v317 > 0xFD)
    {
      v318 = 0;
      v319 = 0;
      v320 = 0;
      v321 = 2;
      LOBYTE(v317) = 1;
LABEL_118:
      v322 = 1;
      v323 = 1;
      goto LABEL_119;
    }

    v320 = *(v353 + 24);
    v318 = *(v353 + 32);
    if (v317 >> 6)
    {
      if (v317 >> 6 != 1)
      {
        v318 = 0;
        v319 = 0;
        v320 = 0;
        LOBYTE(v317) = 1;
        v321 = 1;
        goto LABEL_118;
      }

      v322 = 0;
      v323 = 1;
      v321 = 2;
      v319 = *(v353 + 24);
      v320 = 0;
    }

    else
    {
      v319 = 0;
      v323 = 0;
      v322 = 1;
      v321 = 2;
    }

LABEL_119:
    v327 = *(v353 + 48);
    v328 = *(v353 + 96);
    v329 = *(v353 + 104);
    LOBYTE(v417) = *(v353 + 56);
    v416 = v323;
    v415 = v322;
    v414 = v317 & 1;
    v413 = v329;
    v402 = v327;
    LOBYTE(v403) = v417;
    v404 = v320;
    v405 = v323;
    v406 = v319;
    v407 = v322;
    v408 = v321;
    v409 = v318;
    v410 = v317 & 1;
    v411 = v328;
    v412 = v329;
    v401 = 7;
    sub_2388A3488();
    sub_2388D32C8();
    v330 = v350;
    sub_238827E14(v316 + *(v348 + 28), v350, &qword_27DF2FF00, &qword_2388D57E0);
    if ((*v346)(v330, 1, v351) == 1)
    {
      v331 = type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
      v332 = v349;
      (*(*(v331 - 8) + 56))(v349, 1, 1, v331);
    }

    else
    {
      v333 = v347;
      sub_2388A2F00(v330, v347, type metadata accessor for Transcript.ResponseFormat);
      v334 = *v333;
      v335 = v333[1];
      v336 = v333[3];
      v396 = v333[2];
      v397 = v334;
      v337 = *(type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0) + 24);
      v338 = type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
      v332 = v349;
      v339 = &v349[*(v338 + 20)];
      v340 = *(type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0) + 24);
      v341 = sub_2388D2178();
      (*(*(v341 - 8) + 16))(&v339[v340], v333 + v337, v341);
      v342 = v396;
      *v339 = v397;
      *(v339 + 1) = v335;
      *(v339 + 2) = v342;
      *(v339 + 3) = v336;
      *v332 = 0x656863536E6F736ALL;
      *(v332 + 1) = 0xEA0000000000616DLL;

      sub_2388A2F88(v333, type metadata accessor for Transcript.ResponseFormat);
      (*(*(v338 - 8) + 56))(v332, 0, 1, v338);
    }

    LOBYTE(v402) = 9;
    type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
    sub_2388A2EA0(&qword_27DF311A8, type metadata accessor for TranscriptCoderV1.ResponseFormat);
    v343 = v373;
    v344 = v376;
    sub_2388D3278();
    v389 = 0;
    sub_238827E88(v332, &qword_27DF310E0, &qword_2388D9F80);
    (*v355)(v344, v343);
    sub_2388A2F88(v353, type metadata accessor for Transcript.Prompt);
    goto LABEL_6;
  }

  v417 = MEMORY[0x277D84F90];
  sub_2388B8470(0, v175, 0);
  if (*(v174 + 16))
  {
    v176 = 0;
    v177 = v417;
    v178 = v174 + 82;
    v395 = v175 - 1;
    v384 = v174;
    do
    {
      v179 = *(v178 - 50);
      v180 = *(v178 - 42);
      v181 = *(v178 - 34);
      v182 = *(v178 - 26);
      v183 = *(v178 + 4) >> 14;
      if (v183)
      {
        v396 = *(v178 - 50);
        v397 = v181;
        if (v183 == 1)
        {
          v184 = *(v178 - 2);
          v185 = *(v178 - 10);
          v186 = *(v178 - 18);

          v377 = sub_23882BCCC(v186, v185, v184);
          v188 = v187;
          v190 = v189;
          v191 = v177;
          v192 = *(v400 + 32);
          v193 = sub_2388D0F58();
          v194 = v180;
          v195 = v380;
          v196 = v380 + v192;
          v177 = v191;
          v174 = v384;
          (*(*(v193 - 8) + 56))(v196, 1, 1, v193);
          *v195 = v396;
          v195[1] = v194;
          *(v195 + 16) = 1;
          v195[3] = 0;
          v195[4] = 0;
          v195[5] = v397;
          v195[6] = v182;
          v195[7] = v377;
          v195[8] = v188;
          v197 = v195;
          *(v195 + 72) = v190;
        }

        else
        {
          v377 = v177;
          v201 = objc_allocWithZone(MEMORY[0x277CBEB28]);
          v372 = v180;

          v202 = [v201 init];
          v203 = v393;
          sub_2388D1D68();
          sub_2388D1D58();
          (*v392)(v203, v394);
          v204 = sub_2388D2848();

          v205 = CGImageDestinationCreateWithData(v202, v204, 1uLL, 0);

          if (!v205)
          {
            goto LABEL_145;
          }

          CGImageDestinationAddImage(v205, v397, 0);
          CGImageDestinationFinalize(v205);
          v397 = v202;
          v206 = MEMORY[0x23EE65230](v202);
          v208 = v207;
          v209 = sub_2388D0FF8();
          v211 = v210;
          v402 = 0;
          v403 = 0xE000000000000000;
          sub_2388D2FA8();

          v402 = 0xD000000000000017;
          v403 = v391;
          MEMORY[0x23EE66C20](v209, v211);
          v212 = v367;
          sub_2388D0F28();

          v213 = sub_2388D0F58();
          v214 = *(v213 - 8);
          if ((*(v214 + 48))(v212, 1, v213) == 1)
          {
            goto LABEL_144;
          }

          sub_238826D50(v206, v208);

          v215 = v365;
          (*(v214 + 32))(v365, v212, v213);
          (*(v214 + 56))(v215, 0, 1, v213);
          v197 = v380;
          v216 = v372;
          *v380 = v396;
          *(v197 + 8) = v216;
          *(v197 + 16) = 2;
          *(v197 + 24) = 0u;
          *(v197 + 40) = 0u;
          *(v197 + 56) = 0u;
          *(v197 + 72) = 0;
          sub_2388A3244(v215, v197 + *(v400 + 32));
          v177 = v377;
          v174 = v384;
        }
      }

      else
      {
        v198 = *(v400 + 32);
        v199 = sub_2388D0F58();
        v200 = v380 + v198;
        v197 = v380;
        (*(*(v199 - 8) + 56))(v200, 1, 1, v199);
        *v197 = v179;
        *(v197 + 8) = v180;
        *(v197 + 16) = 0;
        *(v197 + 24) = v181;
        *(v197 + 32) = v182;
        *(v197 + 40) = 0u;
        *(v197 + 56) = 0u;
        *(v197 + 72) = 0;
      }

      v217 = v382;
      sub_2388A2F00(v197, v382, type metadata accessor for TranscriptCoderV1.Content);
      v417 = v177;
      v219 = *(v177 + 16);
      v218 = *(v177 + 24);
      if (v219 >= v218 >> 1)
      {
        sub_2388B8470(v218 > 1, v219 + 1, 1);
        v217 = v382;
        v177 = v417;
      }

      *(v177 + 16) = v219 + 1;
      sub_2388A2F00(v217, v177 + ((*(v399 + 80) + 32) & ~*(v399 + 80)) + *(v399 + 72) * v219, type metadata accessor for TranscriptCoderV1.Content);
      if (v395 == v176)
      {
        goto LABEL_104;
      }

      ++v176;
      v178 += 88;
    }

    while (v176 < *(v174 + 16));
  }

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
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t sub_2388A2910(uint64_t *a1, void *a2)
{
  v4 = sub_238810E44(&qword_27DF311C0, &qword_2388D9FC0);
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-1] - v6;
  v8 = sub_238810E44(&qword_27DF311C8, &qword_2388D9FC8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-1] - v11;
  v13 = *a1;
  v14 = a2[4];
  sub_238815878(a2, a2[3]);
  sub_2388A34DC();
  sub_2388D3568();
  LOBYTE(v19[0]) = 1;
  v15 = v19[6];
  sub_2388D3298();
  if (!v15)
  {
    v17 = v18;
    LOBYTE(v19[0]) = 0;
    sub_2388D32B8();
    LOBYTE(v19[0]) = 2;
    sub_2388A3530();
    sub_2388D3228();
    sub_2388D3218();
    sub_23889F7C8(v13, v19);
    sub_2388158BC(v19);
    (*(v17 + 8))(v7, v4);
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_2388A2BD4()
{
  result = qword_27DF310C8;
  if (!qword_27DF310C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310C8);
  }

  return result;
}

unint64_t sub_2388A2C2C()
{
  result = qword_27DF310D0;
  if (!qword_27DF310D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310D0);
  }

  return result;
}

unint64_t sub_2388A2C84()
{
  result = qword_27DF310D8;
  if (!qword_27DF310D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310D8);
  }

  return result;
}

unint64_t sub_2388A2D18()
{
  result = qword_27DF310F0;
  if (!qword_27DF310F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310F0);
  }

  return result;
}

unint64_t sub_2388A2D6C()
{
  result = qword_27DF310F8;
  if (!qword_27DF310F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310F8);
  }

  return result;
}

unint64_t sub_2388A2DE0()
{
  result = qword_27DF31128;
  if (!qword_27DF31128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31128);
  }

  return result;
}

unint64_t sub_2388A2E4C()
{
  result = qword_27DF31138;
  if (!qword_27DF31138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31138);
  }

  return result;
}

uint64_t sub_2388A2EA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2388A2F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388A2F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388A2FE8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF31148, &unk_2388D9FA8);
    sub_2388A2EA0(a2, type metadata accessor for TranscriptCoderV1.Tool);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2388A3084@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_23889EE7C(a1, *(v3 + 16), a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_2388A30B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2388A31F0()
{
  result = qword_27DF31170;
  if (!qword_27DF31170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31170);
  }

  return result;
}

uint64_t sub_2388A3244(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2388A32B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF31100, &qword_2388D9F90);
    sub_2388A2EA0(a2, type metadata accessor for TranscriptCoderV1.Content);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2388A3350(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF2FBB8, &unk_2388D5410);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2388A33BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF31118, &unk_2388D9F98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2388A3434()
{
  result = qword_27DF31198;
  if (!qword_27DF31198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31198);
  }

  return result;
}

unint64_t sub_2388A3488()
{
  result = qword_27DF311A0;
  if (!qword_27DF311A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF311A0);
  }

  return result;
}

unint64_t sub_2388A34DC()
{
  result = qword_27DF311D0;
  if (!qword_27DF311D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF311D0);
  }

  return result;
}

unint64_t sub_2388A3530()
{
  result = qword_27DF311D8;
  if (!qword_27DF311D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF311D8);
  }

  return result;
}

void sub_2388A35FC()
{
  sub_2388A3A88(319, &qword_27DF30088);
  if (v0 <= 0x3F)
  {
    sub_2388D2178();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_2388A3698(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2388A36BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2388A371C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2388A3784(uint64_t a1, int a2)
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

uint64_t sub_2388A37CC(uint64_t result, int a2, int a3)
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

uint64_t sub_2388A383C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2388A390C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2388A39BC()
{
  sub_2388A3A88(319, &qword_27DF30088);
  if (v0 <= 0x3F)
  {
    sub_2388A3A88(319, &qword_27DF31228);
    if (v1 <= 0x3F)
    {
      sub_2388A3AD4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2388A3A88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2388D2E78();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2388A3AD4()
{
  if (!qword_27DF31230)
  {
    sub_2388D0F58();
    v0 = sub_2388D2E78();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF31230);
    }
  }
}

uint64_t sub_2388A3B2C(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_2388A3B48(uint64_t a1, int a2)
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

uint64_t sub_2388A3B90(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TranscriptCoderV1.EntryCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptCoderV1.EntryCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2388A3E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2388A3EDC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2388A3F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2388A4020()
{
  result = qword_27DF31258;
  if (!qword_27DF31258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31258);
  }

  return result;
}

unint64_t sub_2388A4078()
{
  result = qword_27DF31260;
  if (!qword_27DF31260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31260);
  }

  return result;
}

unint64_t sub_2388A40D0()
{
  result = qword_27DF31268;
  if (!qword_27DF31268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31268);
  }

  return result;
}

unint64_t sub_2388A4128()
{
  result = qword_27DF31270;
  if (!qword_27DF31270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31270);
  }

  return result;
}

unint64_t sub_2388A4180()
{
  result = qword_27DF31278;
  if (!qword_27DF31278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31278);
  }

  return result;
}

unint64_t sub_2388A41D8()
{
  result = qword_27DF31280;
  if (!qword_27DF31280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31280);
  }

  return result;
}

unint64_t sub_2388A4230()
{
  result = qword_27DF31288;
  if (!qword_27DF31288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31288);
  }

  return result;
}

unint64_t sub_2388A4288()
{
  result = qword_27DF31290;
  if (!qword_27DF31290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31290);
  }

  return result;
}

unint64_t sub_2388A42E0()
{
  result = qword_27DF31298;
  if (!qword_27DF31298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31298);
  }

  return result;
}

unint64_t sub_2388A4338()
{
  result = qword_27DF312A0;
  if (!qword_27DF312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312A0);
  }

  return result;
}

unint64_t sub_2388A4390()
{
  result = qword_27DF312A8;
  if (!qword_27DF312A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312A8);
  }

  return result;
}

uint64_t sub_2388A43E4()
{
  v0 = sub_2388D3138();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2388A4430()
{
  v0 = sub_2388D3138();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2388A447C()
{
  result = qword_27DF312B0;
  if (!qword_27DF312B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312B0);
  }

  return result;
}

unint64_t sub_2388A44D0()
{
  result = qword_27DF312C0;
  if (!qword_27DF312C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312C0);
  }

  return result;
}

unint64_t sub_2388A4524()
{
  result = qword_27DF312C8;
  if (!qword_27DF312C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312C8);
  }

  return result;
}

uint64_t sub_2388A4578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    return sub_238810DC4(a3, a4, a5);
  }

  return result;
}

unint64_t sub_2388A45C8()
{
  result = qword_27DF312D0;
  if (!qword_27DF312D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312D0);
  }

  return result;
}

uint64_t sub_2388A461C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_238810E44(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2388A4684()
{
  v0 = sub_2388D3138();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2388A46D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xE900000000000065 || (sub_2388D3368() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2388D3368();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2388A487C()
{
  v0 = sub_2388D3138();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2388A48C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF313A8, &qword_2388DAA68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A5594();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  LOBYTE(v20) = 0;
  v11 = sub_2388D31D8();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_238826CFC();
  sub_2388D31F8();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  result = sub_2388158BC(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_2388A4AC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_2388A4BE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF312D8, &qword_2388DAA00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A4E2C();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v27 = 0;
  v11 = sub_2388D31D8();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_2388D31D8();
  v23 = v14;
  v25 = 2;
  v15 = sub_2388D31D8();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_2388158BC(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_2388A4E2C()
{
  result = qword_27DF312E0;
  if (!qword_27DF312E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312E0);
  }

  return result;
}

uint64_t sub_2388A4E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
  if (v4 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1265659764 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1349545844 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796465657267 && a2 == 0xE600000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465 || (sub_2388D3368() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002388DF8B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2388D3368();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2388A508C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF312E8, &qword_2388DAA08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A5348();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v45 = 0;
  v11 = sub_2388D3198();
  v13 = v12;
  v14 = v11;
  v44 = 1;
  v15 = sub_2388D31A8();
  v17 = v16;
  v34 = v15;
  v43 = 2;
  v18 = sub_2388D3198();
  v32 = v19;
  v33 = v18;
  v42 = 3;
  v31 = sub_2388D3188();
  v41 = 4;
  v20 = sub_2388D31C8();
  v29 = v21;
  v30 = v20;
  v40 = 5;
  v22 = sub_2388D31A8();
  v23 = *(v6 + 8);
  v28 = v22;
  v24 = v9;
  v26 = v25;
  v23(v24, v5);
  v39 = v13 & 1;
  v38 = v17 & 1;
  v37 = v32 & 1;
  v36 = v29 & 1;
  v35 = v26 & 1;
  result = sub_2388158BC(a1);
  *a2 = v14;
  *(a2 + 8) = v39;
  *(a2 + 16) = v34;
  *(a2 + 24) = v38;
  *(a2 + 32) = v33;
  *(a2 + 40) = v37;
  *(a2 + 41) = v31;
  *(a2 + 48) = v30;
  *(a2 + 56) = v36;
  *(a2 + 64) = v28;
  *(a2 + 72) = v35;
  return result;
}

unint64_t sub_2388A5348()
{
  result = qword_27DF312F0;
  if (!qword_27DF312F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312F0);
  }

  return result;
}

unint64_t sub_2388A539C()
{
  result = qword_27DF31300;
  if (!qword_27DF31300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31300);
  }

  return result;
}

unint64_t sub_2388A53F0()
{
  result = qword_27DF31318;
  if (!qword_27DF31318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31318);
  }

  return result;
}

unint64_t sub_2388A5444()
{
  result = qword_27DF31330;
  if (!qword_27DF31330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31330);
  }

  return result;
}

unint64_t sub_2388A5498()
{
  result = qword_27DF31338;
  if (!qword_27DF31338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31338);
  }

  return result;
}

unint64_t sub_2388A54EC()
{
  result = qword_27DF31378;
  if (!qword_27DF31378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31378);
  }

  return result;
}

unint64_t sub_2388A5540()
{
  result = qword_27DF31398;
  if (!qword_27DF31398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31398);
  }

  return result;
}

unint64_t sub_2388A5594()
{
  result = qword_27DF313B0;
  if (!qword_27DF313B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313B0);
  }

  return result;
}

unint64_t sub_2388A55E8()
{
  result = qword_27DF313C0;
  if (!qword_27DF313C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptCoderV1.SamplingParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptCoderV1.SamplingParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2388A5800()
{
  result = qword_27DF313C8;
  if (!qword_27DF313C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313C8);
  }

  return result;
}

unint64_t sub_2388A5858()
{
  result = qword_27DF313D0;
  if (!qword_27DF313D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313D0);
  }

  return result;
}

unint64_t sub_2388A58B0()
{
  result = qword_27DF313D8;
  if (!qword_27DF313D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313D8);
  }

  return result;
}

unint64_t sub_2388A5908()
{
  result = qword_27DF313E0;
  if (!qword_27DF313E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313E0);
  }

  return result;
}

unint64_t sub_2388A5960()
{
  result = qword_27DF313E8;
  if (!qword_27DF313E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313E8);
  }

  return result;
}

unint64_t sub_2388A59B8()
{
  result = qword_27DF313F0;
  if (!qword_27DF313F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313F0);
  }

  return result;
}

unint64_t sub_2388A5A10()
{
  result = qword_27DF313F8;
  if (!qword_27DF313F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313F8);
  }

  return result;
}

unint64_t sub_2388A5A68()
{
  result = qword_27DF31400;
  if (!qword_27DF31400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31400);
  }

  return result;
}

unint64_t sub_2388A5AC0()
{
  result = qword_27DF31408;
  if (!qword_27DF31408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31408);
  }

  return result;
}

unint64_t sub_2388A5B18()
{
  result = qword_27DF31410;
  if (!qword_27DF31410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31410);
  }

  return result;
}

unint64_t sub_2388A5B70()
{
  result = qword_27DF31418;
  if (!qword_27DF31418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31418);
  }

  return result;
}

unint64_t sub_2388A5BC8()
{
  result = qword_27DF31420;
  if (!qword_27DF31420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31420);
  }

  return result;
}

unint64_t sub_2388A5C20()
{
  result = qword_27DF31428;
  if (!qword_27DF31428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31428);
  }

  return result;
}

unint64_t sub_2388A5C78()
{
  result = qword_27DF31430;
  if (!qword_27DF31430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31430);
  }

  return result;
}

unint64_t sub_2388A5CD0()
{
  result = qword_27DF31438;
  if (!qword_27DF31438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31438);
  }

  return result;
}

unint64_t sub_2388A5D28()
{
  result = qword_27DF31440;
  if (!qword_27DF31440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31440);
  }

  return result;
}

unint64_t sub_2388A5D80()
{
  result = qword_27DF31448;
  if (!qword_27DF31448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31448);
  }

  return result;
}

unint64_t sub_2388A5DD8()
{
  result = qword_27DF31450;
  if (!qword_27DF31450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31450);
  }

  return result;
}

unint64_t sub_2388A5E30()
{
  result = qword_27DF31458;
  if (!qword_27DF31458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31458);
  }

  return result;
}

unint64_t sub_2388A5E88()
{
  result = qword_27DF31460;
  if (!qword_27DF31460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31460);
  }

  return result;
}

unint64_t sub_2388A5EE0()
{
  result = qword_27DF31468;
  if (!qword_27DF31468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31468);
  }

  return result;
}

unint64_t sub_2388A5F38()
{
  result = qword_27DF31470;
  if (!qword_27DF31470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31470);
  }

  return result;
}

unint64_t sub_2388A5F90()
{
  result = qword_27DF31478;
  if (!qword_27DF31478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31478);
  }

  return result;
}

unint64_t sub_2388A5FE8()
{
  result = qword_27DF31480;
  if (!qword_27DF31480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31480);
  }

  return result;
}

uint64_t sub_2388A603C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

unint64_t Transcript.Entry.description.getter()
{
  v1 = type metadata accessor for Transcript.Prompt(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Transcript.Entry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2388A7320(v0, v8, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_238841DD8(v8, v4);
      v20 = Transcript.Prompt.description.getter();
      sub_2388A7388(v4, type metadata accessor for Transcript.Prompt);
      return v20;
    }

    v15 = v8[1];
    v16 = v8[2];
    v17 = v8[3];
    v25 = *v8;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v14 = Transcript.Instructions.description.getter();
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v10 = v8[1];
    if (EnumCaseMultiPayload == 3)
    {
      v11 = v8[2];
      v12 = v8[3];
      v13 = v8[4];
      v25 = *v8;
      v26 = v10;
      v27 = v11;
      v28 = v12;
      v29 = v13;
      v14 = Transcript.ToolOutput.description.getter();
    }

    else
    {
      v21 = v8[2];
      v22 = v8[3];
      v25 = *v8;
      v26 = v10;
      v27 = v21;
      v28 = v22;
      v14 = Transcript.Response.description.getter();
    }

LABEL_9:
    v20 = v14;

    goto LABEL_10;
  }

  v18 = v8[1];
  v19 = v8[2];
  v25 = *v8;
  v26 = v18;
  v27 = v19;
  v20 = Transcript.ToolCalls.description.getter();
LABEL_10:

  return v20;
}

uint64_t Transcript.Instructions.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v2, 0);
    v3 = (v1 + 56);
    do
    {
      v4 = v3[3] >> 62;
      if (v4)
      {
        if (v4 != 1)
        {
          MEMORY[0x23EE66C20](*(v3 - 3), *(v3 - 2));
          MEMORY[0x23EE66C20](41, 0xE100000000000000);
          v6 = 0x206567616D4928;
          v5 = 0xE700000000000000;
          goto LABEL_9;
        }

        v6 = v3[6];
        v5 = v3[7];
      }

      else
      {
        v6 = *(v3 - 1);
        v5 = *v3;
      }

LABEL_9:
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2388B7BD0((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v10 = sub_2388D27B8();
  v12 = v11;

  MEMORY[0x23EE66C20](v10, v12);

  return 0x63757274736E4928;
}

unint64_t Transcript.Prompt.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_13;
  }

  v34 = v0;
  v35 = &v34 - v8;
  v36 = v5;
  v39 = MEMORY[0x277D84F90];
  sub_2388B7BD0(0, v11, 0);
  v12 = v39;
  v13 = (v10 + 56);
  do
  {
    v14 = v13[3] >> 62;
    if (!v14)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      goto LABEL_7;
    }

    if (v14 == 1)
    {
      v15 = v13[6];
      v16 = v13[7];
LABEL_7:

      goto LABEL_9;
    }

    v17 = *(v13 - 3);
    v18 = *(v13 - 2);
    v37 = 0x206567616D4928;
    v38 = 0xE700000000000000;
    MEMORY[0x23EE66C20](v17, v18);
    MEMORY[0x23EE66C20](41, 0xE100000000000000);
    v15 = v37;
    v16 = v38;
LABEL_9:
    v39 = v12;
    v20 = *(v12 + 16);
    v19 = *(v12 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2388B7BD0((v19 > 1), v20 + 1, 1);
      v12 = v39;
    }

    *(v12 + 16) = v20 + 1;
    v21 = v12 + 16 * v20;
    *(v21 + 32) = v15;
    *(v21 + 40) = v16;
    v13 += 11;
    --v11;
  }

  while (v11);
  v9 = v35;
  v5 = v36;
  v1 = v34;
LABEL_13:
  v37 = v12;
  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v22 = sub_2388D27B8();
  v24 = v23;

  v37 = 0x2974706D6F725028;
  v38 = 0xE900000000000020;
  MEMORY[0x23EE66C20](v22, v24);

  v26 = v37;
  v25 = v38;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_2388D2FA8();

  v37 = 0xD000000000000012;
  v38 = 0x80000002388DF8D0;
  v27 = type metadata accessor for Transcript.Prompt(0);
  sub_238896400(v1 + *(v27 + 28), v9);
  v28 = type metadata accessor for Transcript.ResponseFormat(0);
  if ((*(*(v28 - 8) + 48))(v9, 1, v28) == 1)
  {
    sub_2388A72B8(v9);
    v29 = 0xE500000000000000;
    v30 = 0x3E6C696E3CLL;
  }

  else
  {
    sub_2388A7320(v9, v5, type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat);
    sub_2388A7388(v9, type metadata accessor for Transcript.ResponseFormat);
    v30 = *v5;
    v29 = v5[1];

    sub_2388A7388(v5, type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat);
  }

  MEMORY[0x23EE66C20](v30, v29);

  v31 = v37;
  v32 = v38;
  v37 = v26;
  v38 = v25;

  MEMORY[0x23EE66C20](v31, v32);

  return v37;
}

uint64_t Transcript.ToolCalls.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v2, 0);
    v3 = v27;
    v4 = *(v1 + 16);
    v5 = (v1 + 112);
    while (1)
    {
      v23 = v2;
      v24 = v4;
      v25 = v3;
      v6 = *(v5 - 9);
      v7 = *(v5 - 6);
      v8 = *(v5 - 5);
      v10 = *(v5 - 2);
      v9 = *(v5 - 1);
      v11 = *v5;
      v12 = *(v5 - 32);
      v26[0] = *(v5 - 8);
      v26[1] = *(v5 - 7);

      sub_238814698(v7, v8, v12);

      sub_238814698(v7, v8, v12);

      MEMORY[0x23EE66C20](8250, 0xE200000000000000);
      MEMORY[0x23EE66C20](v9, v11);

      sub_238810DC4(v7, v8, v12);

      v13 = v8;
      v3 = v25;
      sub_238810DC4(v7, v13, v12);

      v15 = v26[0];
      v16 = v26[1];
      v27 = v25;
      v18 = *(v25 + 16);
      v17 = *(v25 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_2388B7BD0((v17 > 1), v18 + 1, 1);
        v3 = v27;
      }

      *(v3 + 16) = v18 + 1;
      v19 = v3 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      if (!v24)
      {
        break;
      }

      v5 += 11;
      v4 = v24 - 1;
      v2 = v23 - 1;
      if (v23 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
    sub_238841E3C();
    v20 = sub_2388D27B8();
    v22 = v21;

    strcpy(v26, "(ToolCalls) ");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    MEMORY[0x23EE66C20](v20, v22);

    return v26[0];
  }

  return result;
}

uint64_t Transcript.ToolOutput.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_2388D2FA8();

  strcpy(v21, "(ToolOutput ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  MEMORY[0x23EE66C20](v1, v2);
  MEMORY[0x23EE66C20](8233, 0xE200000000000000);
  v4 = v21[0];
  v5 = *(v3 + 16);
  if (v5)
  {
    v19 = v21[0];
    v20 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v5, 0);
    v6 = (v3 + 56);
    while (1)
    {
      v7 = v6[3] >> 62;
      if (v7)
      {
        if (v7 != 1)
        {
          v10 = *(v6 - 3);
          v11 = *(v6 - 2);
          strcpy(v21, "(Image ");
          v21[1] = 0xE700000000000000;
          MEMORY[0x23EE66C20](v10, v11);
          MEMORY[0x23EE66C20](41, 0xE100000000000000);
          v9 = v21[0];
          v8 = 0xE700000000000000;
          goto LABEL_9;
        }

        v9 = v6[6];
        v8 = v6[7];
      }

      else
      {
        v9 = *(v6 - 1);
        v8 = *v6;
      }

LABEL_9:
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2388B7BD0((v12 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      v14 = v20 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v8;
      v6 += 11;
      if (!--v5)
      {
        v4 = v19;
        break;
      }
    }
  }

  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v15 = sub_2388D27B8();
  v17 = v16;

  MEMORY[0x23EE66C20](v15, v17);

  return v4;
}

uint64_t Transcript.Response.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v2, 0);
    v3 = (v1 + 56);
    do
    {
      v4 = v3[3] >> 62;
      if (v4)
      {
        if (v4 != 1)
        {
          MEMORY[0x23EE66C20](*(v3 - 3), *(v3 - 2));
          MEMORY[0x23EE66C20](41, 0xE100000000000000);
          v6 = 0x206567616D4928;
          v5 = 0xE700000000000000;
          goto LABEL_9;
        }

        v6 = v3[6];
        v5 = v3[7];
      }

      else
      {
        v6 = *(v3 - 1);
        v5 = *v3;
      }

LABEL_9:
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2388B7BD0((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v10 = sub_2388D27B8();
  v12 = v11;

  MEMORY[0x23EE66C20](v10, v12);

  return 0x736E6F7073655228;
}

uint64_t Transcript.TextSegment.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2388A6F1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Transcript.StructuredSegment.description.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_2388A6F7C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t Transcript.ImageSegment.description.getter()
{
  MEMORY[0x23EE66C20](*v0, v0[1]);
  MEMORY[0x23EE66C20](41, 0xE100000000000000);
  return 0x206567616D4928;
}

uint64_t sub_2388A7008()
{
  MEMORY[0x23EE66C20](*v0, v0[1]);
  MEMORY[0x23EE66C20](41, 0xE100000000000000);
  return 0x206567616D4928;
}

uint64_t Transcript.Segment.description.getter()
{
  v1 = v0[6] >> 62;
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x23EE66C20](*v0, v0[1]);
      MEMORY[0x23EE66C20](41, 0xE100000000000000);
      return 0x206567616D4928;
    }

    v4 = v0 + 9;
    v3 = v0[9];
    v2 = v4[1];
  }

  else
  {
    v6 = v0 + 2;
    v3 = v0[2];
    v5 = v6[1];
  }

  return v3;
}

uint64_t sub_2388A70F4()
{
  v1 = v0[6] >> 62;
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x23EE66C20](*v0, v0[1]);
      MEMORY[0x23EE66C20](41, 0xE100000000000000);
      return 0x206567616D4928;
    }

    v4 = v0 + 9;
    v3 = v0[9];
    v2 = v4[1];
  }

  else
  {
    v6 = v0 + 2;
    v3 = v0[2];
    v5 = v6[1];
  }

  return v3;
}

uint64_t Transcript.ToolCall.description.getter()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x23EE66C20](8250, 0xE200000000000000);
  MEMORY[0x23EE66C20](v1, v2);
  return v4;
}

uint64_t sub_2388A7250()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x23EE66C20](8250, 0xE200000000000000);
  MEMORY[0x23EE66C20](v1, v2);
  return v4;
}

uint64_t sub_2388A72B8(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2388A7320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388A7388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388A73E8@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = sub_2388D1058();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Transcript.Entry(0);
  v72 = *(v8 - 8);
  v9 = *(v72 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = (&v61 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v61 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  MEMORY[0x28223BE20](v16);
  v71 = &v61 - v19;
  v20 = type metadata accessor for Transcript.ToolDefinition(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v24 = (&v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  EnumCaseMultiPayload = *v2;
  v26 = *(a1 + 16);
  v73 = *v2;
  v69 = v26;
  v70 = a2;
  v62 = a1;
  if (v26)
  {
    v61 = v8;
    v77 = MEMORY[0x277D84F90];

    sub_2388B8140(0, v26, 0);
    v27 = v77;
    v28 = a1 + 32;
    v29 = v26;
    do
    {
      sub_238815814(v28, v74);
      v30 = v75;
      v31 = v76;
      v32 = sub_238815878(v74, v75);
      v26 = &v61;
      v33 = *(*(v30 - 8) + 64);
      MEMORY[0x28223BE20](v32);
      v35 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v35);
      Transcript.ToolDefinition.init<A>(tool:)(v35, v30, v31, v24);
      sub_2388158BC(v74);
      v77 = v27;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2388B8140(v37 > 1, v38 + 1, 1);
        v27 = v77;
      }

      *(v27 + 16) = v38 + 1;
      sub_2388A7AA4(v24, v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v38, type metadata accessor for Transcript.ToolDefinition);
      v28 += 40;
      --v29;
    }

    while (v29);
    EnumCaseMultiPayload = v73;
    v8 = v61;
    v39 = v73[2];
    if (!v39)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
    v39 = EnumCaseMultiPayload[2];
    if (!v39)
    {
LABEL_13:
      if (v69)
      {
        sub_238810E44(&qword_27DF2FB70, &unk_2388D5C30);
        v44 = *(v72 + 72);
        v45 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_2388D3F70;
        v47 = EnumCaseMultiPayload;
        v48 = (v46 + v45);
        v49 = v66;
        sub_2388D1048();
        v50 = sub_2388D1038();
        v52 = v51;
        (*(v67 + 8))(v49, v68);
        *v48 = v50;
        v48[1] = v52;
        v48[2] = MEMORY[0x277D84F90];
        v48[3] = v27;
        swift_storeEnumTagMultiPayload();
        v74[0] = v46;
        result = sub_23881FC90(v47);
        EnumCaseMultiPayload = v74[0];
      }

      else
      {
LABEL_20:
      }

      *v70 = EnumCaseMultiPayload;
      return result;
    }
  }

  v40 = 0;
  while (1)
  {
    if (v40 >= EnumCaseMultiPayload[2])
    {
      __break(1u);
      goto LABEL_23;
    }

    v21 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v41 = EnumCaseMultiPayload + v21;
    v42 = v8;
    v26 = *(v72 + 72) * v40;
    v43 = v71;
    sub_23889777C(&v41[v26], v71, type metadata accessor for Transcript.Entry);
    sub_2388A7AA4(v43, v18, type metadata accessor for Transcript.Entry);
    v8 = v42;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_2388A8BAC(v18, type metadata accessor for Transcript.Entry);
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    ++v40;
    EnumCaseMultiPayload = v73;
    if (v39 == v40)
    {
      goto LABEL_13;
    }
  }

  if (v40 >= v73[2])
  {
LABEL_23:
    __break(1u);
LABEL_24:
    EnumCaseMultiPayload = sub_238895348(EnumCaseMultiPayload);
    goto LABEL_18;
  }

  v54 = v64;
  sub_23889777C(&v41[v26], v64, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = v65;
  sub_2388A7AA4(v54, v65, type metadata accessor for Transcript.Entry);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_26;
  }

  v56 = *EnumCaseMultiPayload;
  v55 = EnumCaseMultiPayload[1];
  v57 = EnumCaseMultiPayload[2];
  v58 = EnumCaseMultiPayload[3];

  sub_2388A86E0(v59, v62);
  swift_bridgeObjectRelease_n();
  v60 = v63;
  *v63 = v56;
  *(v60 + 1) = v55;
  v18 = v60;
  *(v60 + 2) = v57;
  *(v60 + 3) = v27;
  swift_storeEnumTagMultiPayload();

  EnumCaseMultiPayload = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if (v40 < EnumCaseMultiPayload[2])
  {
    sub_23889535C(v18, EnumCaseMultiPayload + v21 + v26);

    goto LABEL_20;
  }

  __break(1u);
LABEL_26:
  result = sub_2388A8BAC(EnumCaseMultiPayload, type metadata accessor for Transcript.Entry);
  __break(1u);
  return result;
}

uint64_t sub_2388A7AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388A7B0C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2388A81A8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2388A7C38(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_2388D34A8();

    sub_2388D2938();
    v24 = sub_2388D34E8();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_2388D3368() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_23888D8B4(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_2388D34A8();

            sub_2388D2938();
            v43 = sub_2388D34E8();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_2388D3368() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_2388A82E4(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x23EE68030](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_238826BEC();
    goto LABEL_53;
  }

  result = MEMORY[0x23EE68030](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2388A81A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2388D34A8();
  sub_2388D2938();
  v7 = sub_2388D34E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2388D3368() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2388BBED4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2388A851C(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_2388A82E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_23888D8B4(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_2388D34A8();

        sub_2388D2938();
        v20 = sub_2388D34E8();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_2388D3368() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t sub_2388A851C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2388D2F28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2388D34A8();

        sub_2388D2938();
        v15 = sub_2388D34E8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2388A86E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ToolDefinition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v53[0] = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v9, 0);
    v10 = v53[0];
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_23889777C(v11, v8, type metadata accessor for Transcript.ToolDefinition);
      v14 = *v8;
      v13 = v8[1];

      sub_2388A8BAC(v8, type metadata accessor for Transcript.ToolDefinition);
      v53[0] = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2388B7BD0((v15 > 1), v16 + 1, 1);
        v10 = v53[0];
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  v18 = sub_2388C6560(v10);

  v19 = *(a2 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v56 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v19, 0);
    v20 = v56;
    v21 = a2 + 32;
    do
    {
      sub_238815814(v21, v53);
      v22 = v54;
      v23 = v55;
      sub_238815878(v53, v54);
      v24 = (*(v23 + 40))(v22, v23);
      v26 = v25;
      sub_2388158BC(v53);
      v56 = v20;
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2388B7BD0((v27 > 1), v28 + 1, 1);
        v20 = v56;
      }

      *(v20 + 16) = v28 + 1;
      v29 = v20 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v21 += 40;
      --v19;
    }

    while (v19);
  }

  v30 = sub_2388C6560(v20);

  if (*(v30 + 16) <= *(v18 + 16) >> 3)
  {
    v53[0] = v18;
    sub_2388A7B0C(v30);

    v31 = v53[0];
  }

  else
  {
    v31 = sub_2388A7C38(v30, v18);
  }

  v33 = 0;
  v34 = v31 + 56;
  v35 = 1 << *(v31 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v31 + 56);
  v38 = (v35 + 63) >> 6;
  *&v32 = 136446466;
  v51 = v32;
  v52 = v31;
  while (v37)
  {
    v39 = v33;
LABEL_24:
    v40 = (*(v31 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v37)))));
    v42 = *v40;
    v41 = v40[1];
    v43 = qword_27DF2F9E0;

    if (v43 != -1)
    {
      swift_once();
    }

    v37 &= v37 - 1;
    v44 = sub_2388D2408();
    sub_2388413AC(v44, qword_27DF3F8E0);

    v45 = sub_2388D23E8();
    v46 = sub_2388D2E18();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v47 = v51;
      *(v47 + 4) = sub_2388C0770(v42, v41, v53);
      *(v47 + 12) = 2082;
      v49 = sub_2388C0770(v42, v41, v53);

      *(v47 + 14) = v49;
      _os_log_impl(&dword_23880E000, v45, v46, "Tool definition '%{public}s' is found in transcript but its implementation is missing in 'tools'. '%{public}s' will be ignored in the new LanguageModelSession.", v47, 0x16u);
      swift_arrayDestroy();
      v50 = v48;
      v31 = v52;
      MEMORY[0x23EE68030](v50, -1, -1);
      MEMORY[0x23EE68030](v47, -1, -1);
    }

    else
    {
    }

    v33 = v39;
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v38)
    {

      return;
    }

    v37 = *(v34 + 8 * v39);
    ++v33;
    if (v37)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_2388A8BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388A8C0C(uint64_t *a1, uint64_t a2)
{
  if (a1[2])
  {
    if (*(a2 + 16))
    {
      type metadata accessor for CGImage(0);
      sub_2388A9594();
      return sub_2388D1348() & 1;
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  v4 = *a1;

  return sub_2388D3368();
}

uint64_t sub_2388A8CCC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2388D3368();
  }
}

uint64_t sub_2388A8CFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for CGImage(0);
  sub_2388A9594();
  return sub_2388D1348() & 1;
}

uint64_t Instructions.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*(a3 + 8))(&v8, a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v8;
  return result;
}

uint64_t sub_2388A8DE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = MEMORY[0x277D84F90];
  v3 = *a1;
  swift_cvw_initWithCopy();

  swift_cvw_destroy();
  sub_23881FB68(v5);
  *a2 = v6;
  return swift_cvw_destroy();
}

char *Instructions.init<each A>(_:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  if (!a2)
  {
    *a5 = MEMORY[0x277D84F90];
    return result;
  }

  v5 = a2;
  v31 = a5;
  v6 = (a3 & 0xFFFFFFFFFFFFFFFELL);
  v7 = (a4 & 0xFFFFFFFFFFFFFFFELL);
  v8 = MEMORY[0x277D84F90];
  v30 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v32 = result;
  v9 = result;
  v10 = a2;
  do
  {
    v33 = &v29;
    v11 = *v6;
    v12 = *v7;
    v13 = *v9;
    v14 = *(*v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](result);
    v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17);
    (*(v12 + 8))(&v34, v11, v12);
    result = (*(v14 + 8))(v17, v11);
    v18 = v34;
    v19 = *(v34 + 16);
    v20 = *(v8 + 2);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v8 + 3) >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = sub_2388B7528(result, v22, 1, v8);
      v8 = result;
      if (!*(v18 + 16))
      {
LABEL_3:

        if (v19)
        {
          goto LABEL_23;
        }

        goto LABEL_4;
      }
    }

    if ((*(v8 + 3) >> 1) - *(v8 + 2) < v19)
    {
      goto LABEL_24;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v23 = *(v8 + 2);
      v24 = __OFADD__(v23, v19);
      v25 = v23 + v19;
      if (v24)
      {
        goto LABEL_25;
      }

      *(v8 + 2) = v25;
    }

LABEL_4:
    v9 += 8;
    ++v7;
    ++v6;
    --v10;
  }

  while (v10);
  v26 = v30;
  *v31 = v8;
  v27 = v26 - 8;
  v28 = v32 - 8;
  do
  {
    result = (*(*(*(v27 + 8 * v5) - 8) + 8))(*&v28[8 * v5]);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t String.instructionsRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2388D3F70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  v8 = v6;
  v9 = &v8;

  sub_2388A8DE4(&v9, a3);
}

uint64_t Array<A>.instructionsRepresentation.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2388D2B18();
  sub_238810E44(&qword_27DF31488, &qword_2388DB4E0);
  swift_getWitnessTable();
  sub_2388A9458();
  v2 = sub_2388D2A98();

  v4 = v2;
  v5 = &v4;

  sub_2388A8DE4(&v5, a1);
}

uint64_t sub_2388A92D8@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  v6 = *(a2 + 16);
  return Array<A>.instructionsRepresentation.getter(a1);
}

id CGImageRef.instructionsRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2388D3F70;
  *(v2 + 32) = v4;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *a1 = v2;

  return v4;
}

id sub_2388A9368@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2388D3F70;
  *(v3 + 32) = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *a1 = v3;

  return v5;
}

void *sub_2388A93E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(&v5, *(a1 + a2 - 16));
  *a3 = v5;
  return result;
}

__n128 sub_2388A944C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_2388A9458()
{
  result = qword_27DF31490;
  if (!qword_27DF31490)
  {
    sub_238810E8C(&qword_27DF31488, &qword_2388DB4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31490);
  }

  return result;
}

uint64_t sub_2388A94EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t sub_2388A9534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_2388A9594()
{
  result = qword_27DF30F68;
  if (!qword_27DF30F68)
  {
    type metadata accessor for CGImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30F68);
  }

  return result;
}

FoundationModels::Instructions __swiftcall Instructions.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  result.components._rawValue = swift_allocObject();
  *(result.components._rawValue + 1) = xmmword_2388D3F70;
  *(result.components._rawValue + 4) = countAndFlagsBits;
  *(result.components._rawValue + 5) = object;
  *(result.components._rawValue + 48) = 0;
  v4->components._rawValue = result.components._rawValue;
  return result;
}

void Instructions.StringInterpolation.init(literalCapacity:interpolationCount:)(uint64_t a1@<X1>, char **a2@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = sub_2388B7528(0, (a1 + 1) & ~((a1 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  }
}

Swift::Void __swiftcall Instructions.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v5 = *v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2388B7528(0, *(v5 + 2) + 1, 1, v5);
      *v1 = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_2388B7528((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[24 * v8];
    *(v9 + 4) = countAndFlagsBits;
    *(v9 + 5) = object;
    v9[48] = 0;
    *v1 = v5;
  }
}

uint64_t Instructions.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(&v5, a2, a3);
  v3 = v5;

  return sub_23881FB68(v3);
}

uint64_t Instructions.StringInterpolation.appendInterpolation<A>(_:)()
{
  v0._countAndFlagsBits = sub_2388D32F8();
  Instructions.StringInterpolation.appendLiteral(_:)(v0);
}

void sub_2388A9850(uint64_t a1@<X1>, char **a2@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = sub_2388B7528(0, (a1 + 1) & ~((a1 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  }
}

double sub_2388A98B4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_2388D3F70;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *a2 = v5;
  return result;
}

unint64_t sub_2388A9954()
{
  result = qword_27DF31498;
  if (!qword_27DF31498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31498);
  }

  return result;
}

unint64_t sub_2388A99AC()
{
  result = qword_27DF314A0;
  if (!qword_27DF314A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314A0);
  }

  return result;
}

unint64_t sub_2388A9A04()
{
  result = qword_27DF314A8;
  if (!qword_27DF314A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314A8);
  }

  return result;
}

unint64_t sub_2388A9A5C()
{
  result = qword_27DF314B0;
  if (!qword_27DF314B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314B0);
  }

  return result;
}

void *Instructions.init(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2388A9B30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = MEMORY[0x277D84F90];
  v3 = *a1;
  swift_cvw_initWithCopy();

  swift_cvw_destroy();
  sub_23881FAF4(v5);
  *a2 = v6;
  return swift_cvw_destroy();
}

char *Prompt.init<each A>(_:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  if (!a2)
  {
    *a5 = MEMORY[0x277D84F90];
    return result;
  }

  v5 = a2;
  v31 = a5;
  v6 = (a3 & 0xFFFFFFFFFFFFFFFELL);
  v7 = (a4 & 0xFFFFFFFFFFFFFFFELL);
  v8 = MEMORY[0x277D84F90];
  v30 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v32 = result;
  v9 = result;
  v10 = a2;
  do
  {
    v33 = &v29;
    v11 = *v6;
    v12 = *v7;
    v13 = *v9;
    v14 = *(*v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](result);
    v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17);
    (*(v12 + 8))(&v34, v11, v12);
    result = (*(v14 + 8))(v17, v11);
    v18 = v34;
    v19 = *(v34 + 16);
    v20 = *(v8 + 2);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v8 + 3) >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = sub_2388B6F38(result, v22, 1, v8);
      v8 = result;
      if (!*(v18 + 16))
      {
LABEL_3:

        if (v19)
        {
          goto LABEL_23;
        }

        goto LABEL_4;
      }
    }

    if ((*(v8 + 3) >> 1) - *(v8 + 2) < v19)
    {
      goto LABEL_24;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v23 = *(v8 + 2);
      v24 = __OFADD__(v23, v19);
      v25 = v23 + v19;
      if (v24)
      {
        goto LABEL_25;
      }

      *(v8 + 2) = v25;
    }

LABEL_4:
    v9 += 8;
    ++v7;
    ++v6;
    --v10;
  }

  while (v10);
  v26 = v30;
  *v31 = v8;
  v27 = v26 - 8;
  v28 = v32 - 8;
  do
  {
    result = (*(*(*(v27 + 8 * v5) - 8) + 8))(*&v28[8 * v5]);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t Prompt.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*(a3 + 8))(&v8, a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v8;
  return result;
}

uint64_t String.promptRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2388D3F70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  v8 = v6;
  v9 = &v8;

  sub_2388A9B30(&v9, a3);
}

uint64_t Array<A>.promptRepresentation.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2388D2B18();
  sub_238810E44(&qword_27DF314B8, &qword_2388DB8C0);
  swift_getWitnessTable();
  sub_2388AA228();
  v2 = sub_2388D2A98();

  v4 = v2;
  v5 = &v4;

  sub_2388A9B30(&v5, a1);
}

uint64_t sub_2388AA0A8@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  v6 = *(a2 + 16);
  return Array<A>.promptRepresentation.getter(a1);
}

id CGImageRef.promptRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2388D3F70;
  *(v2 + 32) = v4;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *a1 = v2;

  return v4;
}

id sub_2388AA138@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2388D3F70;
  *(v3 + 32) = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *a1 = v3;

  return v5;
}

void *sub_2388AA1B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(&v5, *(a1 + a2 - 16));
  *a3 = v5;
  return result;
}

__n128 sub_2388AA21C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_2388AA228()
{
  result = qword_27DF314C0;
  if (!qword_27DF314C0)
  {
    sub_238810E8C(&qword_27DF314B8, &qword_2388DB8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314C0);
  }

  return result;
}

FoundationModels::Prompt __swiftcall Prompt.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  result.components._rawValue = swift_allocObject();
  *(result.components._rawValue + 1) = xmmword_2388D3F70;
  *(result.components._rawValue + 4) = countAndFlagsBits;
  *(result.components._rawValue + 5) = object;
  *(result.components._rawValue + 48) = 0;
  v4->components._rawValue = result.components._rawValue;
  return result;
}

void Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)(uint64_t a1@<X1>, char **a2@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = sub_2388B6F38(0, (a1 + 1) & ~((a1 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  }
}

Swift::Void __swiftcall Prompt.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v5 = *v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2388B6F38(0, *(v5 + 2) + 1, 1, v5);
      *v1 = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_2388B6F38((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[24 * v8];
    *(v9 + 4) = countAndFlagsBits;
    *(v9 + 5) = object;
    v9[48] = 0;
    *v1 = v5;
  }
}

uint64_t Prompt.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(&v5, a2, a3);
  v3 = v5;

  return sub_23881FAF4(v3);
}

uint64_t Prompt.StringInterpolation.appendInterpolation<A>(_:)()
{
  v0._countAndFlagsBits = sub_2388A9918();
  Prompt.StringInterpolation.appendLiteral(_:)(v0);
}

void sub_2388AA514(uint64_t a1@<X1>, char **a2@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = sub_2388B6F38(0, (a1 + 1) & ~((a1 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  }
}

double sub_2388AA56C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_2388D3F70;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *a2 = v5;
  return result;
}

unint64_t sub_2388AA5D4()
{
  result = qword_27DF314C8;
  if (!qword_27DF314C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314C8);
  }

  return result;
}

unint64_t sub_2388AA62C()
{
  result = qword_27DF314D0;
  if (!qword_27DF314D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314D0);
  }

  return result;
}

unint64_t sub_2388AA684()
{
  result = qword_27DF314D8;
  if (!qword_27DF314D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314D8);
  }

  return result;
}

unint64_t sub_2388AA6DC()
{
  result = qword_27DF314E0;
  if (!qword_27DF314E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314E0);
  }

  return result;
}

void *Prompt.init(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t Tool<>.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = 0;
  v5[8] = 1;
  *(v5 + 2) = 0;
  v5[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_238814708(v5, a1);
  v11[1] = MEMORY[0x277D83B88];
  sub_238810E44(&qword_27DF2FA50, "\bH");
  v6 = sub_2388D28B8();
  v8 = v7;
  sub_23881476C(v5);
  result = type metadata accessor for GenerationSchema(0);
  v10 = (a1 + *(result + 20));
  *v10 = v6;
  v10[1] = v8;
  return result;
}

{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_238814708(v5, a1);
  v11[1] = MEMORY[0x277D839B0];
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v6 = sub_2388D28B8();
  v8 = v7;
  sub_23881476C(v5);
  result = type metadata accessor for GenerationSchema(0);
  v10 = (a1 + *(result + 20));
  *v10 = v6;
  v10[1] = v8;
  return result;
}

uint64_t dispatch thunk of Tool.call(arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_238833668;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2388AABA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 632) = v5;
  *(v6 + 624) = a5;
  *(v6 + 616) = a4;
  *(v6 + 608) = a3;
  *(v6 + 600) = a2;
  *(v6 + 592) = a1;
  v7 = sub_2388D0D88();
  *(v6 + 640) = v7;
  v8 = *(v7 - 8);
  *(v6 + 648) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 656) = swift_task_alloc();
  v10 = type metadata accessor for Transcript.Entry(0);
  *(v6 + 664) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v6 + 672) = swift_task_alloc();
  v12 = sub_2388D1058();
  *(v6 + 680) = v12;
  v13 = *(v12 - 8);
  *(v6 + 688) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 696) = swift_task_alloc();
  v15 = sub_2388D1818();
  *(v6 + 704) = v15;
  v16 = *(v15 - 8);
  *(v6 + 712) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 720) = swift_task_alloc();
  v18 = sub_2388D1858();
  *(v6 + 728) = v18;
  v19 = *(v18 - 8);
  *(v6 + 736) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 744) = swift_task_alloc();
  v21 = sub_2388D1868();
  *(v6 + 752) = v21;
  v22 = *(v21 - 8);
  *(v6 + 760) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  v24 = sub_2388D1598();
  *(v6 + 784) = v24;
  v25 = *(v24 - 8);
  *(v6 + 792) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 800) = swift_task_alloc();
  v27 = sub_2388D15A8();
  *(v6 + 808) = v27;
  v28 = *(v27 - 8);
  *(v6 + 816) = v28;
  v29 = *(v28 + 64) + 15;
  *(v6 + 824) = swift_task_alloc();
  v30 = *(v5 + 40);
  *(v6 + 832) = v30;
  *(v6 + 960) = *MEMORY[0x277D71DD0];
  v36 = (v30 + *v30);
  v31 = *(v30 + 4);
  v32 = swift_task_alloc();
  *(v6 + 856) = v32;
  *v32 = v6;
  v32[1] = sub_2388AAF8C;
  v33 = *(v6 + 840);
  v34 = *(v6 + 824);

  return v36(v34);
}

uint64_t sub_2388AAF8C()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v4 = *v1;
  v2[108] = v0;

  v5 = v2[75];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[76];
      swift_getObjectType();
      v7 = sub_2388D2B38();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v13 = sub_2388AC558;
    v14 = v7;
  }

  else
  {
    if (v5)
    {
      v10 = v2[76];
      swift_getObjectType();
      v11 = sub_2388D2B38();
      v9 = v12;
    }

    else
    {
      v11 = 0;
      v9 = 0;
    }

    v2[110] = v9;
    v2[109] = v11;
    v13 = sub_2388AB12C;
    v14 = v11;
  }

  return MEMORY[0x2822009F8](v13, v14, v9);
}

uint64_t sub_2388AB12C()
{
  v1 = *(v0 + 824);
  v2 = sub_2388D1518();
  if (*(v2 + 16))
  {
    v3 = *(v0 + 800);
    v4 = *(v0 + 792);
    v5 = *(v0 + 784);
    (*(v4 + 16))(v3, v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);

    v6 = sub_2388D1588();
    isUniquelyReferenced_nonNull_native = (*(v4 + 8))(v3, v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *(v0 + 888) = v6;
  v15 = *(v6 + 16);
  v114 = v6;
  if (v15)
  {
    v16 = 0;
    v17 = *(*(v0 + 760) + 80);
    v18 = v6 + ((v17 + 32) & ~v17);
    v122 = (v0 + 970);
    v125 = *(v0 + 864);
    v129 = MEMORY[0x277D84F90];
    v113 = *(v6 + 16);
    v112 = v18;
    while (v16 < *(v6 + 16))
    {
      v22 = *(v0 + 960);
      v23 = *(v0 + 720);
      v24 = *(v0 + 712);
      v25 = *(v0 + 704);
      (*(*(v0 + 760) + 16))(*(v0 + 776), v18 + *(*(v0 + 760) + 72) * v16, *(v0 + 752));
      sub_2388D1828();
      v26 = (*(v24 + 88))(v23, v25);
      v27 = *(v0 + 776);
      if (v26 == v22)
      {
        v28 = *(v0 + 744);
        v29 = *(v0 + 736);
        v30 = *(v0 + 728);
        v31 = *(v0 + 720);
        v32 = *(v0 + 696);
        v33 = *(v0 + 688);
        v120 = *(v0 + 680);
        (*(*(v0 + 712) + 96))(v31, *(v0 + 704));
        (*(v29 + 32))(v28, v31, v30);
        v34 = sub_2388D1808();
        v36 = v35;
        v119 = sub_2388D1838();
        v121 = v37;
        v38 = sub_2388D1848();
        v40 = v39;

        sub_2388D1048();
        v41 = sub_2388D1038();
        v43 = v42;
        (*(v33 + 8))(v32, v120);
        *(v0 + 520) = v41;
        *(v0 + 528) = v43;
        GeneratedContent.init(id:text:)((v0 + 520), v38, v40, v0 + 480);
        if (v125)
        {
          v95 = *(v0 + 816);
          v124 = *(v0 + 808);
          v128 = *(v0 + 824);
          v96 = *(v0 + 776);
          v97 = *(v0 + 760);
          v98 = *(v0 + 752);
          v99 = *(v0 + 744);
          v100 = *(v0 + 736);
          v101 = *(v0 + 728);

          (*(v100 + 8))(v99, v101);
          (*(v97 + 8))(v96, v98);
          (*(v95 + 8))(v128, v124);

          v102 = *(v0 + 824);
          v103 = *(v0 + 800);
          v104 = *(v0 + 776);
          v105 = *(v0 + 768);
          v106 = *(v0 + 744);
          v107 = *(v0 + 720);
          v108 = *(v0 + 696);
          v109 = *(v0 + 672);
          v110 = *(v0 + 656);

          v94 = *(v0 + 8);
          goto LABEL_28;
        }

        v44 = *(v0 + 776);
        v45 = *(v0 + 760);
        v46 = *(v0 + 752);
        (*(*(v0 + 736) + 8))(*(v0 + 744), *(v0 + 728));
        (*(v45 + 8))(v44, v46);
        v47 = *(v0 + 480);
        v117 = *(v0 + 488);
        v115 = *(v0 + 497);
        v116 = *(v0 + 496);
        v49 = *(v0 + 504);
        v48 = *(v0 + 512);
        *v122 = *(v0 + 964);
        *(v0 + 974) = *(v0 + 968);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_2388B7660(0, v129[2] + 1, 1, v129);
          v129 = isUniquelyReferenced_nonNull_native;
        }

        v51 = v129[2];
        v50 = v129[3];
        if (v51 >= v50 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_2388B7660((v50 > 1), v51 + 1, 1, v129);
          v129 = isUniquelyReferenced_nonNull_native;
        }

        v125 = 0;
        v130 = *v122;
        v131 = *(v0 + 974);
        v129[2] = v51 + 1;
        v52 = &v129[13 * v51];
        v52[4] = v34;
        v52[5] = v36;
        v52[6] = v34;
        v52[7] = v36;
        v52[8] = v119;
        v52[9] = v121;
        v52[10] = v118;
        v52[11] = v117;
        *(v52 + 96) = v116;
        *(v52 + 97) = v115;
        *(v52 + 98) = v130;
        *(v52 + 51) = v131;
        v52[13] = v49;
        v52[14] = v48;
        v52[15] = v38;
        v52[16] = v40;
        v15 = v113;
        v6 = v114;
        v18 = v112;
      }

      else
      {
        v19 = *(v0 + 720);
        v20 = *(v0 + 712);
        v21 = *(v0 + 704);
        (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));
        isUniquelyReferenced_nonNull_native = (*(v20 + 8))(v19, v21);
      }

      if (v15 == ++v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    return MEMORY[0x282200740](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, v12, v13, v14);
  }

  v129 = MEMORY[0x277D84F90];
LABEL_17:
  *(v0 + 896) = v129;
  v53 = v129[2];
  if (v53)
  {
    v54 = (v0 + 536);
    *(v0 + 536) = MEMORY[0x277D84F90];
    sub_2388B82E4(0, v53, 0);
    v55 = *(v0 + 536);
    v56 = v53 - 1;
    for (i = 6; ; i += 13)
    {
      v58 = *&v129[i + 2];
      *(v0 + 16) = *&v129[i];
      *(v0 + 32) = v58;
      v59 = *&v129[i + 4];
      v60 = *&v129[i + 6];
      v61 = *&v129[i + 8];
      *(v0 + 96) = v129[i + 10];
      *(v0 + 64) = v60;
      *(v0 + 80) = v61;
      *(v0 + 48) = v59;
      sub_238827C78(v0 + 16, v0 + 104);
      *v54 = v55;
      v63 = *(v55 + 16);
      v62 = *(v55 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_2388B82E4((v62 > 1), v63 + 1, 1);
        v55 = *v54;
      }

      *(v55 + 16) = v63 + 1;
      v64 = v55 + 88 * v63;
      v65 = *(v0 + 32);
      *(v64 + 32) = *(v0 + 16);
      *(v64 + 48) = v65;
      v66 = *(v0 + 48);
      v67 = *(v0 + 64);
      v68 = *(v0 + 80);
      *(v64 + 112) = *(v0 + 96);
      *(v64 + 80) = v67;
      *(v64 + 96) = v68;
      *(v64 + 64) = v66;
      if (!v56)
      {
        break;
      }

      --v56;
    }

    v69 = *(v0 + 696);
    v70 = *(v0 + 688);
    v71 = *(v0 + 680);
    v72 = *(v0 + 672);
    v73 = *(v0 + 664);
    v74 = *(v0 + 632);
    v123 = *(v0 + 616);
    v126 = *(v0 + 624);
    sub_2388D1048();
    v75 = sub_2388D1038();
    v77 = v76;
    v78 = *(v70 + 8);
    *(v0 + 904) = v78;
    *(v0 + 912) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78(v69, v71);
    v79 = v74[1];
    *(v0 + 920) = v79;
    *(v0 + 928) = v74[2];
    *v72 = v75;
    v72[1] = v77;
    v72[2] = v55;
    swift_storeEnumTagMultiPayload();
    v79(v72);
    sub_2388AE208(v72);
    v80 = sub_238810E44(&qword_27DF314E8, &qword_2388DC200);
    v81 = v74[7];
    v82 = v74[8];
    v83 = swift_task_alloc();
    *(v0 + 936) = v83;
    v83[2] = v129;
    v83[3] = v74;
    v83[4] = v81;
    v83[5] = v82;
    v83[6] = v123;
    v83[7] = v126;
    v83[8] = v114;
    v84 = sub_238810E44(&qword_27DF314F0, &qword_2388DBCB8);
    v85 = *(MEMORY[0x277D859B8] + 4);
    v86 = swift_task_alloc();
    *(v0 + 944) = v86;
    *v86 = v0;
    v86[1] = sub_2388AB9C0;
    v11 = *(v0 + 608);
    v10 = *(v0 + 600);
    v12 = &unk_2388DBCB0;
    isUniquelyReferenced_nonNull_native = v0 + 544;
    v8 = v80;
    v9 = v84;
    v13 = v83;
    v14 = v80;

    return MEMORY[0x282200740](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, v12, v13, v14);
  }

  v87 = *(v0 + 800);
  v88 = *(v0 + 776);
  v89 = *(v0 + 768);
  v90 = *(v0 + 744);
  v91 = *(v0 + 720);
  v92 = *(v0 + 696);
  v93 = *(v0 + 672);
  v127 = *(v0 + 656);
  (*(*(v0 + 816) + 32))(*(v0 + 592), *(v0 + 824), *(v0 + 808));

  v94 = *(v0 + 8);
LABEL_28:

  return v94();
}

uint64_t sub_2388AB9C0()
{
  v2 = *v1;
  v3 = *(*v1 + 944);
  v4 = *v1;
  v2[119] = v0;

  v5 = v2[117];
  v6 = v2[112];
  if (v0)
  {
    v7 = v2[111];

    v8 = v2[110];
    v9 = v2[109];
    v10 = sub_2388AC63C;
  }

  else
  {

    v8 = v2[110];
    v9 = v2[109];
    v10 = sub_2388ABB38;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2388ABB38()
{
  v1 = *(v0 + 544);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 552);
    *(v0 + 552) = MEMORY[0x277D84F90];
    sub_2388B82A4(0, v2, 0);
    v4 = 0;
    v5 = *(v0 + 552);
    v6 = (v1 + 48);
    v117 = v2;
    v120 = v1;
    do
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_51;
      }

      v7 = v6[1];
      v124 = *v6;
      v126 = *(v6 - 2);
      v8 = v6[2];
      v9 = v6[3];
      v11 = v6[4];
      v10 = v6[5];
      v12 = v6[6];
      v133 = *(v6 - 1);

      v129 = v12;
      sub_238827CD8(v8, v9, v11);
      *v3 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2388B82A4((v13 > 1), v14 + 1, 1);
        v5 = *v3;
      }

      ++v4;
      *(v5 + 16) = v14 + 1;
      v15 = (v5 + 72 * v14);
      v15[4] = v126;
      v15[5] = v133;
      v15[6] = v124;
      v15[7] = v7;
      v15[8] = v8;
      v15[9] = v9;
      v15[10] = v11;
      v15[11] = v10;
      v15[12] = v129;
      v6 += 9;
      v1 = v120;
    }

    while (v117 != v4);
  }

  else
  {
    v16 = *(v0 + 544);

    v5 = MEMORY[0x277D84F90];
  }

  v17 = sub_238834090(v5);

  if (*(v17 + 16))
  {
    sub_238810E44(&qword_27DF2FB58, &unk_2388D4960);
    v18 = sub_2388D3128();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v19 = v123;
  v20 = v123[119];
  v123[70] = v18;

  sub_2388AE354(v21, 1, v123 + 70);
  if (v20)
  {

    return swift_unexpectedError();
  }

  v23 = v123[111];

  v24 = v123[70];
  v25 = *(v23 + 16);
  v26 = v123[111];
  if (v25)
  {
    v27 = v123[95];
    v123[71] = MEMORY[0x277D84F90];
    sub_2388B8264(0, v25, 0);
    v28 = 0;
    v29 = v123[71];
    v112 = v24;
    v115 = v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v110 = v25;
    do
    {
      if (v28 >= *(v19[111] + 16))
      {
        goto LABEL_52;
      }

      (*(v19[95] + 16))(v19[96], v115 + *(v19[95] + 72) * v28, v19[94]);
      v30 = sub_2388D1808();
      v32 = v31;
      v33 = sub_2388D1808();
      if (!*(v24 + 16))
      {
        goto LABEL_54;
      }

      v35 = sub_238820AA8(v33, v34);
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        goto LABEL_53;
      }

      v132 = v32;
      v134 = v30;
      v38 = v19[95];
      v39 = v19[94];
      v40 = (*(v24 + 56) + 56 * v35);
      v118 = v19[96];
      v121 = *v40;
      v42 = v40[2];
      v41 = v40[3];
      v43 = v40[4];
      v44 = v40[5];
      v45 = v19;
      v46 = v40[6];
      v130 = v40[1];

      v127 = v43;
      v47 = v43;
      v48 = v46;
      sub_238827CD8(v42, v41, v47);
      (*(v38 + 8))(v118, v39);
      v45[71] = v29;
      v50 = *(v29 + 16);
      v49 = *(v29 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2388B8264((v49 > 1), v50 + 1, 1);
        v29 = v123[71];
      }

      ++v28;
      *(v29 + 16) = v50 + 1;
      v51 = (v29 + 72 * v50);
      v51[4] = v134;
      v51[5] = v132;
      v19 = v123;
      v51[6] = v121;
      v51[7] = v130;
      v51[8] = v42;
      v51[9] = v41;
      v51[10] = v127;
      v51[11] = v44;
      v51[12] = v48;
      v24 = v112;
    }

    while (v110 != v28);
    v52 = v123[111];
  }

  else
  {
    v53 = v123[111];

    v29 = MEMORY[0x277D84F90];
  }

  v107 = *(v29 + 16);
  if (!v107)
  {

    v99 = v19[106];
LABEL_47:
    (*(v19[102] + 8))(v19[103], v19[101]);
    v19[106] = v99;
    v135 = (v19[104] + *v19[104]);
    v100 = *(v19[104] + 4);
    v101 = swift_task_alloc();
    v19[107] = v101;
    *v101 = v19;
    v101[1] = sub_2388AAF8C;
    v102 = v19[105];
    v103 = v19[103];

    return v135(v103);
  }

  v54 = 0;
  v104 = (v19 + 72);
  v105 = v19[106] & 0x107;
  v106 = v29 + 32;
  while (1)
  {
    v55 = v106 + 72 * v54;
    v56 = *(v55 + 16);
    v57 = *(v55 + 32);
    v58 = *(v55 + 48);
    v19[32] = *(v55 + 64);
    *(v19 + 14) = v57;
    *(v19 + 15) = v58;
    *(v19 + 13) = v56;
    *(v19 + 12) = *v55;
    v125 = v19[27];
    v128 = v19[26];
    v60 = v19[28];
    v59 = v19[29];
    v61 = v19[30];
    v119 = v19[25];
    v122 = v19[24];
    v131 = v61;
    v116 = v59;
    if (v61 >> 62)
    {
      break;
    }

    sub_238827E14((v19 + 24), (v19 + 51), &qword_27DF2FF78, &qword_2388DC1E0);
    sub_238827CD8(v60, v59, v61);
    v108 = v59;
    v109 = v60;
LABEL_43:
    v87 = v54 + 1;
    v111 = v19[115];
    v114 = v19[116];
    v88 = v19[114];
    v89 = v19;
    v90 = v19[113];
    v91 = v89[87];
    v92 = v89[85];
    v93 = v89[84];
    v94 = v89[83];
    sub_2388D1048();
    v95 = sub_2388D1038();
    v97 = v96;
    v90(v91, v92);
    sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_2388D3F70;
    *(v98 + 32) = v95;
    *(v98 + 40) = v97;
    v54 = v87;
    *(v98 + 48) = v109;
    *(v98 + 56) = v108;
    v99 = v105;
    *(v98 + 80) = v105;
    sub_2388AE6A4(v60, v116, v131);
    *v93 = v122;
    v93[1] = v119;
    v93[2] = v128;
    v93[3] = v125;
    v93[4] = v98;
    swift_storeEnumTagMultiPayload();
    v111(v93);
    sub_2388AE208(v93);
    if (v87 == v107)
    {

      v19 = v123;
      goto LABEL_47;
    }

    v19 = v123;
  }

  if (v61 >> 62 == 1)
  {
    v113 = v19[82];
    v62 = v19[81];
    v63 = v123[80];
    v64 = sub_2388D0DC8();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    sub_238827E14((v123 + 24), (v123 + 42), &qword_27DF2FF78, &qword_2388DC1E0);
    sub_238827CD8(v60, v59, v61);
    v67 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v68 = *(v62 + 72);
    v69 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    v123[73] = v70;
    sub_238815B14();
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
    v19 = v123;
    sub_2388D2F08();
    sub_2388D0D98();
    v71 = sub_238819C1C(v60, v59, v61, v67);
    v108 = v72;
    v109 = v71;

    sub_2388AE6A4(v60, v59, v61);
    goto LABEL_43;
  }

  v73 = *(v60 + 16);
  sub_238827E14((v19 + 24), (v19 + 33), &qword_27DF2FF78, &qword_2388DC1E0);
  sub_238827CD8(v60, v59, v61);
  v74 = 0;
  v75 = MEMORY[0x277D84F90];
LABEL_33:
  v76 = (v60 + 48 + 24 * v74);
  while (1)
  {
    if (v73 == v74)
    {
      sub_2388AE6A4(v60, v59, v61);
      *v104 = v75;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
      v85 = sub_2388D27B8();
      v108 = v86;
      v109 = v85;

      v19 = v123;
      goto LABEL_43;
    }

    if (v74 >= *(v60 + 16))
    {
      break;
    }

    v77 = v76 + 24;
    ++v74;
    v78 = *v76;
    v76 += 24;
    if ((v78 & 1) == 0)
    {
      v80 = *(v77 - 5);
      v79 = *(v77 - 4);

      v81 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_2388B686C(0, *(v75 + 2) + 1, 1, v75);
      }

      v83 = *(v75 + 2);
      v82 = *(v75 + 3);
      if (v83 >= v82 >> 1)
      {
        v75 = sub_2388B686C((v82 > 1), v83 + 1, 1, v75);
      }

      *(v75 + 2) = v83 + 1;
      v84 = &v75[16 * v83];
      *(v84 + 4) = v80;
      *(v84 + 5) = v79;
      v59 = v81;
      v61 = v131;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

  __break(1u);
  return result;
}

uint64_t sub_2388AC558()
{
  v1 = v0[108];
  v2 = v0[103];
  v3 = v0[100];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[90];
  v8 = v0[87];
  v9 = v0[84];
  v10 = v0[82];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2388AC63C()
{
  (*(v0[102] + 8))(v0[103], v0[101]);
  v1 = v0[119];
  v2 = v0[103];
  v3 = v0[100];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[90];
  v8 = v0[87];
  v9 = v0[84];
  v10 = v0[82];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2388AC73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[84] = v15;
  v8[83] = a8;
  v8[82] = a7;
  v8[81] = a6;
  v8[80] = a5;
  v8[79] = a4;
  v8[78] = a3;
  v8[77] = a2;
  v8[76] = a1;
  v9 = sub_238810E44(&qword_27DF314F8, &qword_2388DBCC0);
  v8[85] = v9;
  v10 = *(v9 - 8);
  v8[86] = v10;
  v11 = *(v10 + 64) + 15;
  v8[87] = swift_task_alloc();
  v12 = *(*(sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0) - 8) + 64) + 15;
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388AC874, 0, 0);
}

uint64_t sub_2388AC874()
{
  v1 = *(v0 + 624);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 328);
    v48 = **(v0 + 616);
    v4 = **(v0 + 632);
    v47 = sub_2388D2BE8();
    v5 = *(v47 - 8);
    v46 = *(v5 + 56);
    v44 = v4;
    v45 = (v5 + 48);
    v43 = (v5 + 8);
    v6 = (v1 + 48);
    do
    {
      v8 = *(v0 + 712);
      v51 = *(v0 + 704);
      v52 = v2;
      v49 = *(v0 + 640);
      v50 = *(v0 + 656);
      v10 = *v6;
      v9 = v6[1];
      *(v0 + 16) = *(v6 - 1);
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      v12 = v6[3];
      v11 = v6[4];
      v13 = v6[2];
      *(v0 + 112) = *(v6 + 10);
      *(v0 + 80) = v12;
      *(v0 + 96) = v11;
      *(v0 + 64) = v13;
      v15 = v6[3];
      v14 = v6[4];
      v16 = v6[2];
      *(v0 + 408) = *(v6 + 10);
      *(v0 + 376) = v15;
      *(v0 + 392) = v14;
      *(v0 + 360) = v16;
      v17 = v6[1];
      *v3 = *v6;
      *(v0 + 344) = v17;
      v19 = *(v0 + 16);
      v18 = *(v0 + 24);
      v46(v8, 1, 1, v47);
      v20 = swift_allocObject();
      v21 = *(v0 + 376);
      *(v20 + 72) = *(v0 + 360);
      *(v20 + 88) = v21;
      *(v20 + 104) = *(v0 + 392);
      v22 = *(v0 + 344);
      *(v20 + 40) = *v3;
      *(v20 + 16) = 0;
      v23 = (v20 + 16);
      *(v20 + 24) = 0;
      *(v20 + 32) = v4;
      *(v20 + 120) = *(v0 + 408);
      *(v20 + 56) = v22;
      *(v20 + 128) = v49;
      *(v20 + 144) = v50;
      *(v20 + 160) = v19;
      *(v20 + 168) = v18;
      sub_238827E14(v8, v51, &qword_27DF2FD28, &qword_2388D8CE0);
      v24 = (*v45)(v51, 1, v47);
      v25 = *(v0 + 704);
      v26 = *(v0 + 664);
      v27 = *(v0 + 648);
      if (v24 == 1)
      {
        sub_238827E14(v0 + 16, v0 + 120, &qword_27DF31500, &qword_2388DC1D0);
        v4 = v44;

        sub_2388AE890(v25);
      }

      else
      {
        sub_238827E14(v0 + 16, v0 + 224, &qword_27DF31500, &qword_2388DC1D0);
        v4 = v44;

        sub_2388D2BD8();
        (*v43)(v25, v47);
      }

      if (*v23)
      {
        v28 = *(v20 + 24);
        v29 = *v23;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v30 = sub_2388D2B38();
        v32 = v31;
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      sub_238810E44(&qword_27DF314E8, &qword_2388DC200);
      v33 = v32 | v30;
      if (v32 | v30)
      {
        v33 = v0 + 544;
        *(v0 + 544) = 0;
        *(v0 + 552) = 0;
        *(v0 + 560) = v30;
        *(v0 + 568) = v32;
      }

      v7 = *(v0 + 712);
      *(v0 + 576) = 1;
      *(v0 + 584) = v33;
      *(v0 + 592) = v48;
      swift_task_create();

      sub_2388AE890(v7);
      v6 = (v6 + 104);
      --v2;
    }

    while (v52 != 1);
  }

  v34 = *(v0 + 696);
  v35 = *(v0 + 616);
  v36 = sub_2388B77B0(0, *(*(v0 + 672) + 16), 0, MEMORY[0x277D84F90]);
  v37 = *v35;
  sub_238810E44(&qword_27DF314E8, &qword_2388DC200);
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D2C28();
  *(v0 + 720) = v36;
  v38 = *(MEMORY[0x277D85828] + 4);
  v39 = swift_task_alloc();
  *(v0 + 728) = v39;
  *v39 = v0;
  v39[1] = sub_2388ACCEC;
  v40 = *(v0 + 696);
  v41 = *(v0 + 680);

  return MEMORY[0x2822004E8](v0 + 416, 0, 0, v41, v0 + 600);
}

uint64_t sub_2388ACCEC()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 720);

    v5 = sub_2388ACFC8;
  }

  else
  {
    v5 = sub_2388ACE04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2388ACE04()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 448);
  *(v0 + 488) = *(v0 + 432);
  *(v0 + 504) = v3;
  *(v0 + 520) = *(v0 + 464);
  *(v0 + 536) = *(v0 + 480);
  if (v2)
  {
    v4 = *(v0 + 720);
    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_2388B77B0((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    v7 = &v4[9 * v6];
    v7[4] = v1;
    v7[5] = v2;
    v8 = *(v0 + 488);
    v9 = *(v0 + 504);
    v10 = *(v0 + 520);
    v7[12] = *(v0 + 536);
    *(v7 + 4) = v9;
    *(v7 + 5) = v10;
    *(v7 + 3) = v8;
    *(v0 + 720) = v4;
    v11 = *(MEMORY[0x277D85828] + 4);
    v12 = swift_task_alloc();
    *(v0 + 728) = v12;
    *v12 = v0;
    v12[1] = sub_2388ACCEC;
    v13 = *(v0 + 696);
    v14 = *(v0 + 680);

    return MEMORY[0x2822004E8](v0 + 416, 0, 0, v14, v0 + 600);
  }

  else
  {
    v15 = *(v0 + 720);
    v16 = *(v0 + 712);
    v17 = *(v0 + 704);
    v18 = *(v0 + 608);
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
    *v18 = v15;

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2388ACFC8()
{
  v1 = v0[89];
  v2 = v0[88];
  (*(v0[86] + 8))(v0[87], v0[85]);
  v3 = v0[75];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2388AD06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 360) = v15;
  *(v8 + 344) = v14;
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 296) = a1;
  *(v8 + 304) = a4;
  v9 = sub_2388D2358();
  *(v8 + 368) = v9;
  v10 = *(v9 - 8);
  *(v8 + 376) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388AD158, 0, 0);
}

uint64_t sub_2388AD158()
{
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (!*(*(v0 + 304) + 16) || (v4 = *(v0 + 304), v5 = sub_238820AA8(v2, v3), (v6 & 1) == 0))
  {
    sub_2388D2FA8();
    MEMORY[0x23EE66C20](0xD00000000000004CLL, 0x80000002388DF8F0);
    MEMORY[0x23EE66C20](v2, v3);
    MEMORY[0x23EE66C20](0xD000000000000012, 0x80000002388DF940);
    sub_238810E44(&qword_27DF31508, &qword_2388DC220);
    v8 = sub_2388D2778();
    MEMORY[0x23EE66C20](v8);

    sub_2388151C8();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = MEMORY[0x277D84F90];
    *(v9 + 24) = 0;
    *(v9 + 32) = 5;
    swift_willThrow();
    v11 = *(v0 + 384);
    v10 = *(v0 + 392);

    v12 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 392);
  sub_238815814(*(*(v0 + 304) + 56) + 40 * v5, v0 + 96);
  sub_238828174((v0 + 96), v0 + 56);
  sub_2388D2348();

  return MEMORY[0x2822009F8](sub_2388AD35C, 0, 0);
}

uint64_t sub_2388AD35C()
{
  v19 = v0;
  if (qword_27DF2F9F0 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = v0[41];
  v3 = sub_2388D2388();
  sub_2388413AC(v3, qword_27DF3F910);

  v4 = sub_2388D2368();
  v5 = sub_2388D2E38();

  if (sub_2388D2E68())
  {
    v6 = v0[49];
    v8 = v0[42];
    v7 = v0[43];
    v10 = v0[40];
    v9 = v0[41];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_2388C0770(v10, v9, v18);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_2388C0770(v8, v7, v18);
    v13 = sub_2388D2338();
    _os_signpost_emit_with_name_impl(&dword_23880E000, v4, v5, v13, "ToolCalling", "SessionID=%{public}s RequestID=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE68030](v12, -1, -1);
    MEMORY[0x23EE68030](v11, -1, -1);
  }

  (*(v0[47] + 16))(v0[48], v0[49], v0[46]);
  v14 = sub_2388D23C8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[50] = sub_2388D23B8();

  return MEMORY[0x2822009F8](sub_2388AD58C, 0, 0);
}

uint64_t sub_2388AD58C()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_238815878((v0 + 56), v3);
  v4 = *(v1 + 64);
  v5 = *(v1 + 48);
  *(v0 + 16) = *(v1 + 32);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v7 = *(v1 + 32);
  v6 = *(v1 + 48);
  *(v0 + 208) = *(v1 + 64);
  *(v0 + 176) = v7;
  *(v0 + 192) = v6;
  sub_2388AE8F8(v0 + 16, v0 + 216);
  v8 = swift_task_alloc();
  *(v0 + 408) = v8;
  *v8 = v0;
  v8[1] = sub_2388AD67C;

  return sub_2388ADB70(v0 + 136, v0 + 176, v3, v2);
}

uint64_t sub_2388AD67C()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v9 = *v1;
  *(v2 + 416) = v0;

  v4 = *(v2 + 176);
  v5 = *(v2 + 184);
  v2 += 176;
  v6 = *(v2 + 32);
  sub_238810DC4(v4, v5, *(v2 + 16));

  if (v0)
  {
    v7 = sub_2388AD9AC;
  }

  else
  {
    v7 = sub_2388AD7B0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2388AD7B0()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 296);
  v4 = *(v0 + 168);
  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  sub_238815878((v0 + 56), v5);
  v7 = *(v6 + 40);

  v8 = v7(v5, v6);
  *v3 = v2;
  *(v3 + 8) = v1;
  *(v3 + 16) = v8;
  *(v3 + 24) = v9;
  *(v3 + 32) = v12;
  *(v3 + 48) = v11;
  *(v3 + 64) = v4;

  return MEMORY[0x2822009F8](sub_2388AD894, 0, 0);
}

uint64_t sub_2388AD894()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[47];
  sub_2388CEFFC(v0[50], v0[40], v0[41], v0[42], v0[43]);

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2388AD934, 0, 0);
}

uint64_t sub_2388AD934()
{
  v1 = v0[48];
  v2 = v0[49];
  sub_2388158BC(v0 + 7);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2388AD9AC()
{
  v1 = *(v0 + 416);
  sub_238815814(v0 + 56, v0 + 256);
  sub_23885AA1C();
  v2 = swift_allocError();
  v4 = v3;
  *(v0 + 424) = v2;
  sub_238828174((v0 + 256), v3);
  *(v4 + 40) = v1;
  swift_willThrow();

  return MEMORY[0x2822009F8](sub_2388ADA5C, 0, 0);
}

uint64_t sub_2388ADA5C()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[47];
  sub_2388CEFFC(v0[50], v0[40], v0[41], v0[42], v0[43]);

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2388ADAFC, 0, 0);
}

uint64_t sub_2388ADAFC()
{
  sub_2388158BC(v0 + 7);
  v1 = v0[53];
  v3 = v0[48];
  v2 = v0[49];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2388ADB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 48) = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  *(v5 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  *(v5 + 80) = v10;
  v11 = *(v10 - 8);
  *(v5 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = *a2;
  *(v5 + 152) = *(a2 + 16);
  *(v5 + 153) = *(a2 + 17);
  *(v5 + 120) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_2388ADD04, 0, 0);
}

uint64_t sub_2388ADD04()
{
  v27 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 153);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 152);
  v22[0] = *(v0 + 104);
  v22[1] = v4;
  v23 = v9;
  v24 = v3;
  v25 = v1;
  v26 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 8);
  sub_238814698(v22[0], v4, v9);

  v11(v22, v6, AssociatedConformanceWitness);
  v20 = (*(v0 + 32) + 72);
  v21 = (*v20 + **v20);
  v12 = (*v20)[1];
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_2388ADF28;
  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  v16 = *(v0 + 32);
  v17 = *(v0 + 40);
  v18 = *(v0 + 24);

  return v21(v15, v14, v18, v16);
}

uint64_t sub_2388ADF28()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2388AE170;
  }

  else
  {
    v3 = sub_2388AE03C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2388AE03C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v13 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  (*(v4 + 16))(v5, v3, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2388AE954(v5, v6, AssociatedConformanceWitness, v9);
  (*(v4 + 8))(v3, v6);
  (*(v2 + 8))(v1, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2388AE170()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[18];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2388AE208(uint64_t a1)
{
  v2 = type metadata accessor for Transcript.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2388AE264(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2388414A0;

  return sub_2388AC73C(a1, a2, v6, v7, v8, v9, v10, v11);
}

void sub_2388AE354(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_18:

    return;
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_2388D3438();
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(v3 + v6 + 48);
    v39 = *(v3 + v6 + 32);
    v40 = v7;
    v8 = *(v3 + v6 + 16);
    v38[0] = *(v3 + v6);
    v38[1] = v8;
    v9 = *(v3 + v6 + 64);
    v41 = v9;
    v10 = *(&v40 + 1);
    v35 = v40;
    v11 = v8;
    v34 = v39;
    v12 = v38[0];
    sub_238827E14(v38, v37, &qword_27DF2FF78, &qword_2388DC1E0);
    if (!*(&v12 + 1))
    {
      goto LABEL_18;
    }

    v32 = v10;
    v33 = v9;
    v38[0] = v12;
    v13 = *a3;
    v15 = sub_238820AA8(v12, *(&v12 + 1));
    v16 = v13[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_21;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_238821778();
      if (v19)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v23 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v23[6] + 16 * v15) = v12;
    v24 = v23[7] + 56 * v15;
    *v24 = v11;
    *(v24 + 16) = v34;
    *(v24 + 32) = v35;
    *(v24 + 40) = v32;
    *(v24 + 48) = v33;
    v25 = v23[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_22;
    }

    ++v5;
    v23[2] = v27;
    v6 += 72;
    a2 = 1;
    v3 = a1;
    if (v31 == v5)
    {
      goto LABEL_18;
    }
  }

  sub_238823204(v18, a2 & 1);
  v20 = *a3;
  v21 = sub_238820AA8(v12, *(&v12 + 1));
  if ((v19 & 1) != (v22 & 1))
  {
    goto LABEL_23;
  }

  v15 = v21;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v28 = swift_allocError();
  swift_willThrow();
  v42 = v28;
  v29 = v28;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_2388AE6A4(v34, *(&v34 + 1), v35);

    return;
  }

LABEL_24:
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD00000000000001BLL, 0x80000002388DE460);
  sub_2388D30A8();
  MEMORY[0x23EE66C20](39, 0xE100000000000000);
  sub_2388D30B8();
  __break(1u);
}

uint64_t sub_2388AE6A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
    }

    sub_238810DC4(result, a2, a3);
LABEL_9:
  }

  if (v4 == 2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2388AE70C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  sub_238810DC4(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  v8 = *(v0 + 152);

  v9 = *(v0 + 168);

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2388AE790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 128);
  v8 = *(v1 + 136);
  v9 = *(v1 + 144);
  v13 = *(v1 + 152);
  v10 = *(v1 + 168);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_238833668;

  return sub_2388AD06C(a1, v4, v5, v6, v1 + 40, v7, v8, v9);
}

uint64_t sub_2388AE890(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2388AE954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2);
  if (swift_dynamicCast())
  {
    v12 = *(v8 + 8);
    v12(a1, a2);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v17 = *(&v31[0] + 1);
    v16 = *&v31[0];
  }

  else
  {
    sub_238810E44(&qword_27DF2FA58, &qword_2388D4000);
    if (swift_dynamicCast())
    {
      sub_238828174(v31, v28);
      v18 = v29;
      v19 = v30;
      sub_238815878(v28, v29);
      (*(v19 + 24))(v23, v18, v19);
      v12 = *(v8 + 8);
      v12(a1, a2);
      v16 = v23[0];
      v17 = v23[1];
      v14 = v26;
      v15 = v27;
      v20 = 256;
      if (!v25)
      {
        v20 = 0;
      }

      v13 = v20 | v24 | 0x4000000000000000;
      sub_2388158BC(v28);
    }

    else
    {
      (*(a3 + 8))(v31, a2, a3);
      v12 = *(v8 + 8);
      v12(a1, a2);
      v17 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *&v31[0];
      v13 = 0x8000000000000000;
    }
  }

  result = (v12)(v11, a2);
  *a4 = v16;
  a4[1] = v17;
  a4[2] = v13;
  a4[3] = v14;
  a4[4] = v15;
  return result;
}

uint64_t DynamicGenerationSchema.init(referenceTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2388D3F70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = type metadata accessor for DynamicGenerationSchema(0);
  v8 = *(v7 + 28);

  result = sub_2388D2318();
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 2;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  *(a3 + 48) = v6;
  *(a3 + *(v7 + 32)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t DynamicGenerationSchema.init(dictionaryOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x23EE66C20](a1[4], a1[5]);
  MEMORY[0x23EE66C20](93, 0xE100000000000000);
  v4 = a1[6];
  v5 = type metadata accessor for DynamicGenerationSchema(0);
  v6 = *(v5 + 28);
  v7 = *(a1 + *(v5 + 32));

  sub_2388D2298();
  result = sub_2388B7DA4(a1, type metadata accessor for DynamicGenerationSchema);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 2;
  *(a2 + 32) = 0x3A676E697274535BLL;
  *(a2 + 40) = 0xE900000000000020;
  *(a2 + 48) = v4;
  *(a2 + *(v5 + 32)) = v7;
  return result;
}

uint64_t DynamicGenerationSchema.init(arrayOf:minimumElements:maximumElements:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x23EE66C20](a1[4], a1[5]);
  MEMORY[0x23EE66C20](62, 0xE100000000000000);
  v4 = a1[6];
  v5 = type metadata accessor for DynamicGenerationSchema(0);
  v6 = *(v5 + 28);
  v7 = *(a1 + *(v5 + 32));

  sub_2388D22F8();
  result = sub_2388B7DA4(a1, type metadata accessor for DynamicGenerationSchema);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 2;
  *(a2 + 32) = 0x3C7961727241;
  *(a2 + 40) = 0xE600000000000000;
  *(a2 + 48) = v4;
  *(a2 + *(v5 + 32)) = v7;
  return result;
}

uint64_t sub_2388AEF04@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerationSchema(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_2388B7D3C(v5, v10, type metadata accessor for GenerationSchema.Kind);
  v19[1] = MEMORY[0x277D839B0];
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v11 = sub_2388D28B8();
  v13 = v12;
  sub_2388B7DA4(v5, type metadata accessor for GenerationSchema.Kind);
  v14 = &v10[*(v7 + 28)];
  *v14 = v11;
  v14[1] = v13;

  sub_2388B7DA4(v10, type metadata accessor for GenerationSchema);
  v15 = type metadata accessor for DynamicGenerationSchema(0);
  v16 = MEMORY[0x277D84F90];
  v17 = a1 + *(v15 + 28);
  result = sub_2388D22A8();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v16;
  *(a1 + *(v15 + 32)) = v16;
  return result;
}

uint64_t sub_2388AF0DC@<X0>(char a1@<W1>, void (**a2)(char *, char *, uint64_t)@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v40 = a2;
  v7 = sub_238810E44(&qword_27DF31710, &qword_2388DC2D8);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - v9;
  v42 = sub_238810E44(&qword_27DF31718, &qword_2388DC2E0);
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v42);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = sub_2388D2328();
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = *(v44 + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238810E44(&qword_27DF31720, &qword_2388DC2E8);
  v20 = *(v10 + 72);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v41 = swift_allocObject();
  v22 = v41 + v21;
  if (a1)
  {
    v23 = 1;
  }

  else
  {
    sub_2388D21C8();
    v23 = 0;
  }

  v24 = *(v47 + 56);
  v25 = 1;
  v24(v22, v23, 1, v7);
  if ((a3 & 1) == 0)
  {
    sub_2388D21B8();
    v25 = 0;
  }

  v24(v22 + v20, v25, 1, v7);
  sub_238827E14(v22, v16, &qword_27DF31718, &qword_2388DC2E0);
  sub_238840FB4(v16, v14, &qword_27DF31718, &qword_2388DC2E0);
  v26 = (v47 + 32);
  v39 = *(v47 + 48);
  v27 = v39(v14, 1, v7);
  v40 = v26;
  if (v27 == 1)
  {
    sub_238827E88(v14, &qword_27DF31718, &qword_2388DC2E0);
    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v38 = *v26;
    v38(v46, v14, v7);
    v28 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_2388B7280(0, *(v28 + 2) + 1, 1, v28, &qword_27DF31728, &unk_2388DC2F0, &qword_27DF31710, &qword_2388DC2D8);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_2388B7280(v29 > 1, v30 + 1, 1, v28, &qword_27DF31728, &unk_2388DC2F0, &qword_27DF31710, &qword_2388DC2D8);
    }

    *(v28 + 2) = v30 + 1;
    v38(&v28[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v30], v46, v7);
  }

  sub_238827E14(v22 + v20, v16, &qword_27DF31718, &qword_2388DC2E0);
  sub_238840FB4(v16, v14, &qword_27DF31718, &qword_2388DC2E0);
  if (v39(v14, 1, v7) == 1)
  {
    sub_238827E88(v14, &qword_27DF31718, &qword_2388DC2E0);
  }

  else
  {
    v31 = *v40;
    (*v40)(v46, v14, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_2388B7280(0, *(v28 + 2) + 1, 1, v28, &qword_27DF31728, &unk_2388DC2F0, &qword_27DF31710, &qword_2388DC2D8);
    }

    v33 = *(v28 + 2);
    v32 = *(v28 + 3);
    if (v33 >= v32 >> 1)
    {
      v28 = sub_2388B7280(v32 > 1, v33 + 1, 1, v28, &qword_27DF31728, &unk_2388DC2F0, &qword_27DF31710, &qword_2388DC2D8);
    }

    *(v28 + 2) = v33 + 1;
    v31(&v28[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v33], v46, v7);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = v43;
  sub_2388D22A8();

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 2;
  *(a4 + 32) = 0x7265626D754ELL;
  *(a4 + 40) = 0xE600000000000000;
  v35 = MEMORY[0x277D84F90];
  *(a4 + 48) = MEMORY[0x277D84F90];
  v36 = type metadata accessor for DynamicGenerationSchema(0);
  *(a4 + *(v36 + 32)) = v35;
  return (*(v44 + 32))(a4 + *(v36 + 28), v34, v45);
}

uint64_t sub_2388AF734@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v79 = a2;
  v76 = a1;
  v87 = a3;
  v3 = sub_238810E44(&qword_27DF31518, &qword_2388DBF50);
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v90 = &v71 - v6;
  v86 = sub_238810E44(&qword_27DF31700, &qword_2388DC2C8);
  v74 = *(v86 - 8);
  v75 = v86 - 8;
  v80 = v74;
  v7 = *(v74 + 64);
  v8 = MEMORY[0x28223BE20](v86 - 8);
  v88 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v71 - v10;
  v11 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = &v71 - v14;
  v15 = sub_2388D2328();
  v84 = *(v15 - 8);
  v85 = v15;
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v15);
  v83 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v73 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  v24 = type metadata accessor for GenerationSchema.Kind(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for GenerationSchema(0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v27 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64);
  *v27 = 0u;
  v27[1] = 0u;
  v77 = v12;
  v34 = *(v12 + 56);
  v34(v23, 1, 1, v11);
  v35 = *(type metadata accessor for StringGuides(0) + 20);
  v78 = v11;
  v34(&v33[v35], 1, 1, v11);
  *v33 = 0;
  sub_2388150EC(v23, &v33[v35]);
  swift_storeEnumTagMultiPayload();
  sub_2388B7D3C(v27, v32, type metadata accessor for GenerationSchema.Kind);
  v93 = MEMORY[0x277D837D0];
  sub_238810E44(&qword_27DF2FA48, &unk_2388D3FF0);
  v36 = sub_2388D28B8();
  v38 = v37;
  sub_2388B7DA4(v27, type metadata accessor for GenerationSchema.Kind);
  v39 = &v32[*(v29 + 28)];
  v81 = v38;
  v82 = v36;
  *v39 = v36;
  v39[1] = v38;

  sub_2388B7DA4(v32, type metadata accessor for GenerationSchema);
  sub_238810E44(&qword_27DF31708, &qword_2388DC2D0);
  v40 = *(v74 + 72);
  v41 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v80 = swift_allocObject();
  v42 = v80 + v41;
  if (v76)
  {
    sub_2388D2188();
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = v91;
  v45 = *(v92 + 56);
  v46 = 1;
  v45(v42, v43, 1, v91);
  v47 = v73;
  sub_238827E14(v79, v73, &qword_27DF2FA30, &qword_2388D44E0);
  v49 = v77;
  v48 = v78;
  if ((*(v77 + 48))(v47, 1, v78) != 1)
  {
    v50 = v72;
    (*(v49 + 32))(v72, v47, v48);
    sub_2388D1C88();
    sub_2388D2198();
    (*(v49 + 8))(v50, v48);
    v46 = 0;
  }

  v45(v42 + v40, v46, 1, v44);
  v51 = v89;
  sub_238827E14(v42, v89, &qword_27DF31700, &qword_2388DC2C8);
  v52 = v88;
  sub_238840FB4(v51, v88, &qword_27DF31700, &qword_2388DC2C8);
  v53 = *(v92 + 48);
  v54 = (v92 + 32);
  if (v53(v52, 1, v44) == 1)
  {
    sub_238827E88(v52, &qword_27DF31700, &qword_2388DC2C8);
    v55 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = *v54;
    (*v54)(v90, v52, v44);
    v55 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2388B7280(0, *(v55 + 2) + 1, 1, v55, &qword_27DF31510, "rd", &qword_27DF31518, &qword_2388DBF50);
    }

    v58 = *(v55 + 2);
    v57 = *(v55 + 3);
    if (v58 >= v57 >> 1)
    {
      v55 = sub_2388B7280(v57 > 1, v58 + 1, 1, v55, &qword_27DF31510, "rd", &qword_27DF31518, &qword_2388DBF50);
    }

    *(v55 + 2) = v58 + 1;
    v59 = &v55[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v58];
    v44 = v91;
    v56(v59, v90, v91);
    v52 = v88;
  }

  v60 = v42 + v40;
  v61 = v89;
  sub_238827E14(v60, v89, &qword_27DF31700, &qword_2388DC2C8);
  sub_238840FB4(v61, v52, &qword_27DF31700, &qword_2388DC2C8);
  if (v53(v52, 1, v44) == 1)
  {
    sub_238827E88(v52, &qword_27DF31700, &qword_2388DC2C8);
  }

  else
  {
    v62 = *v54;
    (*v54)(v90, v52, v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2388B7280(0, *(v55 + 2) + 1, 1, v55, &qword_27DF31510, "rd", &qword_27DF31518, &qword_2388DBF50);
    }

    v64 = *(v55 + 2);
    v63 = *(v55 + 3);
    if (v64 >= v63 >> 1)
    {
      v55 = sub_2388B7280(v63 > 1, v64 + 1, 1, v55, &qword_27DF31510, "rd", &qword_27DF31518, &qword_2388DBF50);
    }

    *(v55 + 2) = v64 + 1;
    v62(&v55[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v64], v90, v91);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v65 = v83;
  sub_2388D22A8();

  v66 = v87;
  *v87 = 0;
  v66[1] = 0;
  v66[2] = 0;
  *(v66 + 24) = 2;
  v67 = v81;
  v66[4] = v82;
  v66[5] = v67;
  v68 = MEMORY[0x277D84F90];
  v66[6] = MEMORY[0x277D84F90];
  v69 = type metadata accessor for DynamicGenerationSchema(0);
  *(v66 + *(v69 + 32)) = v68;
  return (*(v84 + 32))(v66 + *(v69 + 28), v65, v85);
}

uint64_t DynamicGenerationSchema.init(name:description:anyOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v120 = a1;
  v110 = sub_2388D2328();
  v119 = *(v110 - 8);
  v11 = *(v119 + 64);
  v12 = MEMORY[0x28223BE20](v110);
  v105 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v103 - v14;
  v122 = type metadata accessor for DynamicGenerationSchema(0);
  v16 = *(*(v122 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v122);
  v118 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v121 = &v103 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v114 = &v103 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v117 = &v103 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  v28 = *(a5 + 16);
  v115 = v25;
  v116 = a2;
  v112 = a5;
  v113 = v28;
  v108 = a4;
  v109 = a6;
  v106 = v15;
  v107 = a3;
  if (v28)
  {
    v29 = a5 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v30 = *(v25 + 72);

    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2388B7D3C(v29, v27, type metadata accessor for DynamicGenerationSchema);
      v33 = *(v27 + 6);

      result = sub_2388B7DA4(v27, type metadata accessor for DynamicGenerationSchema);
      v34 = *(v33 + 16);
      v35 = *(v31 + 16);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_94;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v36 <= *(v31 + 24) >> 1)
      {
        if (!*(v33 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v35 <= v36)
        {
          v37 = v35 + v34;
        }

        else
        {
          v37 = v35;
        }

        result = sub_2388B686C(result, v37, 1, v31);
        v31 = result;
        if (!*(v33 + 16))
        {
LABEL_3:

          if (v34)
          {
            goto LABEL_95;
          }

          goto LABEL_4;
        }
      }

      if ((*(v31 + 24) >> 1) - *(v31 + 16) < v34)
      {
        goto LABEL_99;
      }

      swift_arrayInitWithCopy();

      if (v34)
      {
        v38 = *(v31 + 16);
        v39 = __OFADD__(v38, v34);
        v40 = v38 + v34;
        if (v39)
        {
          goto LABEL_101;
        }

        *(v31 + 16) = v40;
      }

LABEL_4:
      v29 += v30;
      if (!--v28)
      {
        goto LABEL_19;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_19:
  v41 = *(v31 + 16);
  if (!v41)
  {
    v111 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v42 = 0;
  v104 = v41 - 1;
  v111 = MEMORY[0x277D84F90];
  v43 = v116;
  v44 = v120;
  while (2)
  {
    v45 = (v31 + 40 + 16 * v42);
    v46 = v42;
    while (1)
    {
      if (v46 >= *(v31 + 16))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        return result;
      }

      v48 = *(v45 - 1);
      v47 = *v45;
      if (v48 != v44 || v47 != v43)
      {
        v50 = *(v45 - 1);
        v51 = *v45;
        result = sub_2388D3368();
        if ((result & 1) == 0)
        {
          break;
        }
      }

LABEL_24:
      ++v46;
      v45 += 2;
      if (v41 == v46)
      {
        goto LABEL_42;
      }
    }

    if (v48 == sub_2388D2148() && v47 == v52)
    {

LABEL_23:

      v43 = v116;
      v44 = v120;
      goto LABEL_24;
    }

    v53 = sub_2388D3368();

    if (v53)
    {
      goto LABEL_23;
    }

    v54 = v111;
    result = swift_isUniquelyReferenced_nonNull_native();
    v123 = v54;
    if (result)
    {
      v55 = v54;
    }

    else
    {
      result = sub_2388B7BD0(0, *(v54 + 16) + 1, 1);
      v55 = v123;
    }

    v43 = v116;
    v44 = v120;
    v57 = *(v55 + 16);
    v56 = *(v55 + 24);
    if (v57 >= v56 >> 1)
    {
      result = sub_2388B7BD0((v56 > 1), v57 + 1, 1);
      v44 = v120;
      v43 = v116;
      v55 = v123;
    }

    v42 = v46 + 1;
    *(v55 + 16) = v57 + 1;
    v111 = v55;
    v58 = v55 + 16 * v57;
    *(v58 + 32) = v48;
    *(v58 + 40) = v47;
    if (v104 != v46)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v59 = v113;
  if (v113)
  {
    v60 = *(v122 + 32);
    v61 = v112 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
    v62 = MEMORY[0x277D84F90];
    v63 = *(v115 + 72);
    while (1)
    {
      v64 = v117;
      sub_2388B7D3C(v61, v117, type metadata accessor for DynamicGenerationSchema);
      v65 = *(v64 + v60);

      result = sub_2388B7DA4(v64, type metadata accessor for DynamicGenerationSchema);
      v66 = *(v65 + 16);
      v67 = v62[2];
      v68 = v67 + v66;
      if (__OFADD__(v67, v66))
      {
        goto LABEL_97;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v68 <= v62[3] >> 1)
      {
        if (!*(v65 + 16))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v67 <= v68)
        {
          v69 = v67 + v66;
        }

        else
        {
          v69 = v67;
        }

        result = sub_2388B6F7C(result, v69, 1, v62, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        v62 = result;
        if (!*(v65 + 16))
        {
LABEL_44:

          if (v66)
          {
            goto LABEL_98;
          }

          goto LABEL_45;
        }
      }

      if ((v62[3] >> 1) - v62[2] < v66)
      {
        goto LABEL_100;
      }

      swift_arrayInitWithCopy();

      if (v66)
      {
        v70 = v62[2];
        v39 = __OFADD__(v70, v66);
        v71 = v70 + v66;
        if (v39)
        {
          goto LABEL_102;
        }

        v62[2] = v71;
      }

LABEL_45:
      v61 += v63;
      if (!--v59)
      {
        goto LABEL_60;
      }
    }
  }

  v62 = MEMORY[0x277D84F90];
LABEL_60:
  v72 = v62[2];
  v73 = MEMORY[0x277D84F90];
  if (v72)
  {
    v74 = 0;
    v76 = v114;
    v75 = v115;
    while (1)
    {
      if (v74 >= v62[2])
      {
        goto LABEL_96;
      }

      v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v78 = *(v75 + 72);
      sub_2388B7D3C(v62 + v77 + v78 * v74, v76, type metadata accessor for DynamicGenerationSchema);
      if (*(v76 + 24) > 1u)
      {
        sub_2388D2148();
LABEL_75:

LABEL_76:
        sub_2388B7BF0(v76, v121);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2388B7CD8(0, *(v73 + 16) + 1, 1);
          v76 = v114;
          v75 = v115;
          v73 = v123;
        }

        v86 = *(v73 + 16);
        v85 = *(v73 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_2388B7CD8(v85 > 1, v86 + 1, 1);
          v76 = v114;
          v75 = v115;
          v73 = v123;
        }

        *(v73 + 16) = v86 + 1;
        result = sub_2388B7BF0(v121, v73 + v77 + v86 * v78);
        goto LABEL_64;
      }

      v80 = *v76;
      v79 = *(v76 + 8);

      if (v80 == v120 && v79 == v116)
      {
        break;
      }

      v81 = sub_2388D3368();

      if (v81)
      {
        goto LABEL_63;
      }

      v82 = sub_2388D2148();
      if (!v79)
      {
        v76 = v114;
        v75 = v115;
        goto LABEL_75;
      }

      if (v80 == v82 && v79 == v83)
      {

        v76 = v114;
        v75 = v115;
      }

      else
      {
        v87 = sub_2388D3368();

        v76 = v114;
        v75 = v115;
        if ((v87 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      result = sub_2388B7DA4(v76, type metadata accessor for DynamicGenerationSchema);
LABEL_64:
      if (v72 == ++v74)
      {
        goto LABEL_85;
      }
    }

LABEL_63:
    v76 = v114;
    result = sub_2388B7DA4(v114, type metadata accessor for DynamicGenerationSchema);
    v75 = v115;
    goto LABEL_64;
  }

  v75 = v115;
LABEL_85:

  v88 = v113;
  if (v113)
  {
    v123 = MEMORY[0x277D84F90];
    v89 = v75;
    sub_2388B7C94(0, v113, 0);
    v90 = v123;
    v91 = v112 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v121 = *(v89 + 72);
    v92 = (v119 + 16);
    v93 = v110;
    v94 = v105;
    do
    {
      v95 = v118;
      sub_2388B7D3C(v91, v118, type metadata accessor for DynamicGenerationSchema);
      (*v92)(v94, v95 + *(v122 + 28), v93);
      sub_2388B7DA4(v95, type metadata accessor for DynamicGenerationSchema);
      v123 = v90;
      v97 = *(v90 + 16);
      v96 = *(v90 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_2388B7C94(v96 > 1, v97 + 1, 1);
        v93 = v110;
        v90 = v123;
      }

      *(v90 + 16) = v97 + 1;
      (*(v119 + 32))(v90 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v97, v94, v93);
      v91 += v121;
      --v88;
    }

    while (v88);

    v88 = v113;
  }

  else
  {

    v93 = v110;
  }

  v98 = v106;
  v99 = v120;
  v100 = v116;
  sub_2388D22D8();

  v101 = v109;
  *v109 = v99;
  v101[1] = v100;
  v101[2] = v88;
  *(v101 + 24) = 1;
  v101[4] = v99;
  v101[5] = v100;
  v101[6] = v111;
  v102 = v122;
  *(v101 + *(v122 + 32)) = v73;
  return (*(v119 + 32))(v101 + *(v102 + 28), v98, v93);
}

uint64_t sub_2388B0B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2388D34A8();
  sub_2388D2938();
  v7 = sub_2388D34E8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2388D3368() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2388B0C70(uint64_t a1, uint64_t a2)
{
  v3 = sub_2388D1948();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_2388BCBC0(&qword_27DF31630, MEMORY[0x277D0E218]), v9 = sub_2388D2798(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_2388BCBC0(&qword_27DF31638, MEMORY[0x277D0E218]);
      v17 = sub_2388D27C8();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t DynamicGenerationSchema.init(name:description:properties:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v145 = a3;
  v144 = a2;
  v146 = a5;
  v156 = sub_2388D22C8();
  v158 = *(v156 - 8);
  v7 = *(v158 + 64);
  MEMORY[0x28223BE20](v156);
  v9 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2388D2328();
  v142 = *(v143 - 8);
  v10 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v141 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for DynamicGenerationSchema(0);
  v12 = *(v150 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v150);
  v159 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v152 = &v136 - v17;
  MEMORY[0x28223BE20](v16);
  v157 = &v136 - v18;
  v155 = type metadata accessor for DynamicGenerationSchema.Property(0);
  v19 = *(v155 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v155);
  v162 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v161 = (&v136 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v136 - v26;
  v28 = *(a4 + 16);
  v153 = v12;
  v154 = a1;
  v160 = v25;
  v149 = a4;
  v138 = v9;
  v139 = v28;
  v148 = v19;
  if (!v28)
  {
    v51 = v25;
    v140 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v163 = MEMORY[0x277D84F90];
  sub_2388B7BD0(0, v28, 0);
  v29 = v163;
  v30 = a4 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v31 = *(v19 + 72);
  v32 = v30;
  do
  {
    v33 = v161;
    sub_2388B7D3C(v32, v161, type metadata accessor for DynamicGenerationSchema.Property);
    v35 = *v33;
    v34 = v33[1];

    sub_2388B7DA4(v33, type metadata accessor for DynamicGenerationSchema.Property);
    v163 = v29;
    v37 = *(v29 + 16);
    v36 = *(v29 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_2388B7BD0((v36 > 1), v37 + 1, 1);
      v29 = v163;
    }

    *(v29 + 16) = v37 + 1;
    v38 = v29 + 16 * v37;
    *(v38 + 32) = v35;
    *(v38 + 40) = v34;
    v32 += v31;
    --v28;
  }

  while (v28);
  v140 = v29;
  v39 = *(v149 + 16);
  a1 = v154;
  if (!v39)
  {
    v51 = v160;
    v12 = v153;
LABEL_27:

    v39 = 0;
    v40 = MEMORY[0x277D84F90];
    LODWORD(v52) = 1;
    v53 = v51;
    v54 = *(MEMORY[0x277D84F90] + 16);
    if (!v54)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v40 = MEMORY[0x277D84F90];
  v41 = v39;
  do
  {
    sub_2388B7D3C(v30, v27, type metadata accessor for DynamicGenerationSchema.Property);
    v43 = *(v27 + 2);

    result = sub_2388B7DA4(v27, type metadata accessor for DynamicGenerationSchema.Property);
    v44 = *(v43 + 16);
    v45 = *(v40 + 16);
    v46 = v45 + v44;
    if (__OFADD__(v45, v44))
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v46 <= *(v40 + 24) >> 1)
    {
      if (!*(v43 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v45 <= v46)
      {
        v47 = v45 + v44;
      }

      else
      {
        v47 = v45;
      }

      result = sub_2388B686C(result, v47, 1, v40);
      v40 = result;
      if (!*(v43 + 16))
      {
LABEL_8:

        if (v44)
        {
          goto LABEL_142;
        }

        goto LABEL_9;
      }
    }

    if ((*(v40 + 24) >> 1) - *(v40 + 16) < v44)
    {
      goto LABEL_144;
    }

    swift_arrayInitWithCopy();

    if (v44)
    {
      v48 = *(v40 + 16);
      v49 = __OFADD__(v48, v44);
      v50 = v48 + v44;
      if (v49)
      {
        goto LABEL_146;
      }

      *(v40 + 16) = v50;
    }

LABEL_9:
    v30 += v31;
    --v41;
  }

  while (v41);
  LODWORD(v52) = 0;
  v12 = v153;
  a1 = v154;
  v53 = v160;
  v54 = *(v40 + 16);
  if (!v54)
  {
LABEL_25:
    v147 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

LABEL_28:
  v55 = 0;
  v56 = v40 + 40;
  v136 = v54 - 1;
  v147 = MEMORY[0x277D84F90];
  LODWORD(v151) = v52;
  v137 = v40 + 40;
  while (2)
  {
    v57 = (v56 + 16 * v55);
    v58 = v55;
    while (2)
    {
      if (v58 >= *(v40 + 16))
      {
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v60 = *(v57 - 1);
      v59 = *v57;
      v61 = v60 == v53 && v59 == a1;
      if (v61 || (v62 = *(v57 - 1), v63 = *v57, result = sub_2388D3368(), v53 = v160, (result & 1) != 0))
      {
LABEL_32:
        ++v58;
        v57 += 2;
        if (v54 == v58)
        {
          LOBYTE(v52) = v151;
          goto LABEL_49;
        }

        continue;
      }

      break;
    }

    if (v60 == sub_2388D2148() && v59 == v64)
    {

LABEL_31:

      a1 = v154;
      v53 = v160;
      goto LABEL_32;
    }

    v65 = sub_2388D3368();

    if (v65)
    {
      goto LABEL_31;
    }

    v66 = v147;
    result = swift_isUniquelyReferenced_nonNull_native();
    v67 = v66;
    v163 = v66;
    if ((result & 1) == 0)
    {
      result = sub_2388B7BD0(0, *(v66 + 16) + 1, 1);
      v67 = v163;
    }

    a1 = v154;
    v53 = v160;
    v52 = *(v67 + 16);
    v68 = *(v67 + 24);
    if (v52 >= v68 >> 1)
    {
      result = sub_2388B7BD0((v68 > 1), v52 + 1, 1);
      v53 = v160;
      a1 = v154;
      v67 = v163;
    }

    v55 = v58 + 1;
    *(v67 + 16) = v52 + 1;
    v147 = v67;
    v69 = v67 + 16 * v52;
    *(v69 + 32) = v60;
    *(v69 + 40) = v59;
    LOBYTE(v52) = v151;
    v56 = v137;
    if (v136 != v58)
    {
      continue;
    }

    break;
  }

LABEL_49:

  if ((v52 & 1) == 0)
  {
    v88 = v149 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
    v89 = *(v148 + 72);
    v70 = MEMORY[0x277D84F90];
    while (1)
    {
      v90 = v162;
      sub_2388B7D3C(v88, v162, type metadata accessor for DynamicGenerationSchema.Property);
      v91 = *(v90 + 24);

      result = sub_2388B7DA4(v90, type metadata accessor for DynamicGenerationSchema.Property);
      v92 = *(v91 + 16);
      v93 = v70[2];
      v94 = v93 + v92;
      if (__OFADD__(v93, v92))
      {
        goto LABEL_139;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v94 <= v70[3] >> 1)
      {
        if (!*(v91 + 16))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v93 <= v94)
        {
          v95 = v93 + v92;
        }

        else
        {
          v95 = v93;
        }

        result = sub_2388B6F7C(result, v95, 1, v70, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        v70 = result;
        if (!*(v91 + 16))
        {
LABEL_77:

          if (v92)
          {
            goto LABEL_140;
          }

          goto LABEL_78;
        }
      }

      if ((v70[3] >> 1) - v70[2] < v92)
      {
        goto LABEL_143;
      }

      v96 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v97 = *(v12 + 72);
      swift_arrayInitWithCopy();

      if (v92)
      {
        v98 = v70[2];
        v49 = __OFADD__(v98, v92);
        v99 = v98 + v92;
        if (v49)
        {
          goto LABEL_145;
        }

        v70[2] = v99;
      }

LABEL_78:
      v88 += v89;
      if (!--v39)
      {
        goto LABEL_51;
      }
    }
  }

  v70 = MEMORY[0x277D84F90];
LABEL_51:
  v71 = v70[2];
  if (v71)
  {
    v72 = 0;
    v162 = MEMORY[0x277D84F90];
    v74 = v156;
    v73 = v157;
    while (1)
    {
      if (v72 >= v70[2])
      {
        goto LABEL_136;
      }

      v75 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v76 = *(v12 + 72);
      sub_2388B7D3C(v70 + v75 + v76 * v72, v73, type metadata accessor for DynamicGenerationSchema);
      if (*(v73 + 24) > 1u)
      {
        sub_2388D2148();
LABEL_67:

LABEL_68:
        sub_2388B7BF0(v73, v159);
        v82 = v162;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v163 = v82;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2388B7CD8(0, *(v82 + 16) + 1, 1);
          v73 = v157;
          v82 = v163;
        }

        v85 = *(v82 + 16);
        v84 = *(v82 + 24);
        v86 = v82;
        if (v85 >= v84 >> 1)
        {
          sub_2388B7CD8(v84 > 1, v85 + 1, 1);
          v73 = v157;
          v86 = v163;
        }

        *(v86 + 16) = v85 + 1;
        v162 = v86;
        result = sub_2388B7BF0(v159, v86 + v75 + v85 * v76);
        goto LABEL_56;
      }

      v78 = *v73;
      v77 = *(v73 + 8);

      if (v78 == v160 && v77 == v154)
      {
        break;
      }

      v79 = sub_2388D3368();

      if (v79)
      {
        goto LABEL_54;
      }

      v80 = sub_2388D2148();
      if (!v77)
      {
        v73 = v157;
        goto LABEL_67;
      }

      if (v78 == v80 && v77 == v81)
      {

        v73 = v157;
      }

      else
      {
        v87 = sub_2388D3368();

        v73 = v157;
        if ((v87 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

LABEL_55:
      result = sub_2388B7DA4(v73, type metadata accessor for DynamicGenerationSchema);
LABEL_56:
      if (v71 == ++v72)
      {
        goto LABEL_93;
      }
    }

LABEL_54:
    v73 = v157;
    goto LABEL_55;
  }

  v162 = MEMORY[0x277D84F90];
  v74 = v156;
LABEL_93:

  v164 = MEMORY[0x277D84FA0];
  result = v162;
  v100 = *(v162 + 16);
  v101 = MEMORY[0x277D84F90];
  if (v100)
  {
    v102 = 0;
    v103 = MEMORY[0x277D84F90];
    v151 = *(v162 + 16);
    while (2)
    {
      v157 = v103;
      v104 = v164;
      v105 = v164 + 56;
      v106 = v102;
LABEL_96:
      if (v106 < v100)
      {
        v102 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          goto LABEL_138;
        }

        v159 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v107 = *(v12 + 72);
        v108 = v162 + v159 + v107 * v106;
        if (*(v108 + 24) > 1u)
        {
          v109 = 0;
          v110 = 0;
          if (!*(v104 + 16))
          {
            goto LABEL_119;
          }
        }

        else
        {
          v109 = *v108;
          v110 = *(v108 + 8);

          if (!*(v104 + 16))
          {
            goto LABEL_119;
          }
        }

        v111 = *(v104 + 40);
        sub_2388D34A8();
        sub_2388D34C8();

        if (v110)
        {
          sub_2388D2938();
        }

        v112 = sub_2388D34E8();
        v113 = -1 << *(v104 + 32);
        v114 = v112 & ~v113;
        if ((*(v105 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114))
        {
          v115 = ~v113;
          v116 = *(v104 + 48);
          do
          {
            v117 = (v116 + 16 * v114);
            v118 = v117[1];
            if (v118)
            {
              if (v110)
              {
                v119 = *v117 == v109 && v118 == v110;
                if (v119 || (sub_2388D3368() & 1) != 0)
                {

LABEL_116:

                  v106 = v102;
                  v100 = v151;
                  v74 = v156;
                  v12 = v153;
                  if (v102 == v151)
                  {
                    v103 = v157;
                    goto LABEL_126;
                  }

                  goto LABEL_96;
                }
              }
            }

            else if (!v110)
            {
              goto LABEL_116;
            }

            v114 = (v114 + 1) & v115;
          }

          while (((*(v105 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) != 0);
        }

        v74 = v156;
        v12 = v153;
LABEL_119:

        sub_2388BA970(&v163, v109, v110);

        sub_2388B7D3C(v108, v152, type metadata accessor for DynamicGenerationSchema);
        v103 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_2388B6F7C(0, *(v103 + 2) + 1, 1, v103, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        }

        v121 = *(v103 + 2);
        v120 = *(v103 + 3);
        if (v121 >= v120 >> 1)
        {
          v103 = sub_2388B6F7C(v120 > 1, v121 + 1, 1, v103, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        }

        *(v103 + 2) = v121 + 1;
        result = sub_2388B7BF0(v152, &v103[v159 + v121 * v107]);
        v100 = v151;
        if (v102 == v151)
        {
LABEL_126:
          v101 = MEMORY[0x277D84F90];
          goto LABEL_127;
        }

        continue;
      }

      break;
    }

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
  }

  else
  {
    v103 = MEMORY[0x277D84F90];
LABEL_127:

    if (v139)
    {
      v157 = v103;
      v163 = v101;
      v122 = v139;
      sub_2388B7FAC(0, v139, 0);
      v123 = v163;
      v124 = v149 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
      v125 = *(v148 + 72);
      v126 = (v158 + 16);
      v127 = v138;
      do
      {
        v128 = v161;
        sub_2388B7D3C(v124, v161, type metadata accessor for DynamicGenerationSchema.Property);
        (*v126)(v127, v128 + *(v155 + 28), v74);
        sub_2388B7DA4(v128, type metadata accessor for DynamicGenerationSchema.Property);
        v163 = v123;
        v130 = *(v123 + 16);
        v129 = *(v123 + 24);
        if (v130 >= v129 >> 1)
        {
          sub_2388B7FAC(v129 > 1, v130 + 1, 1);
          v123 = v163;
        }

        *(v123 + 16) = v130 + 1;
        (*(v158 + 32))(v123 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v130, v127, v74);
        v124 += v125;
        --v122;
      }

      while (v122);

      v103 = v157;
    }

    else
    {
    }

    v131 = v141;
    v132 = v160;
    v133 = v154;
    sub_2388D2308();

    v134 = v146;
    *v146 = v132;
    v134[1] = v133;
    v134[2] = v140;
    *(v134 + 24) = 0;
    v134[4] = v132;
    v134[5] = v133;
    v134[6] = v147;
    v135 = v150;
    *(v134 + *(v150 + 32)) = v103;
    return (*(v142 + 32))(v134 + *(v135 + 28), v131, v143);
  }

  return result;
}