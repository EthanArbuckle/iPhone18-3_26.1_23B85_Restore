id sub_1AC5ED91C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 128);
  *(a1 + 16) = v5;
  return sub_1AC5D0DD0(v3, v4, v5);
}

uint64_t sub_1AC5ED934(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARSpeechRecognizer();
  v6 = sub_1AC604360(&qword_1EB56AE98, v5, type metadata accessor for EARSpeechRecognizer);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC5ED9BC()
{
  v1 = *v0;
  type metadata accessor for EARSpeechRecognizer();
  sub_1AC604360(&qword_1EB56AE98, v2, type metadata accessor for EARSpeechRecognizer);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC5EDA50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EARSpeechRecognizer();
  sub_1AC604360(&qword_1EB56AE98, v3, type metadata accessor for EARSpeechRecognizer);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1AC5EDAF0()
{
  result = qword_1ED937958;
  if (!qword_1ED937958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED937958);
  }

  return result;
}

id sub_1AC5EDC68()
{
  result = xpcInterface_EARSpeechRecognizer();
  qword_1EB56E668 = result;
  return result;
}

void sub_1AC5EDC90(char *a1, char *a2, void *a3)
{
  v7 = 0xD000000000000035;
  OUTLINED_FUNCTION_65();
  v12 = a1 == 0xD000000000000022 && v8 == a2;
  if (v12 || (v13 = v11, v14 = v10, v15 = v9, (OUTLINED_FUNCTION_53() & 1) != 0))
  {
    [a3 hello];
    return;
  }

  OUTLINED_FUNCTION_65();
  v17 = a1 == 0xD000000000000070 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    v18 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v18, v19, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v288)
    {
      v20 = OUTLINED_FUNCTION_71();
      sub_1AC5C3968(v20, v21);
      sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
      OUTLINED_FUNCTION_66();
      swift_dynamicCast();
      v13 = v279;
      OUTLINED_FUNCTION_128();
      sub_1AC5D1E4C(v15 + 64, &v276, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v278)
      {
        sub_1AC5C3968(&v276, &v280);
        sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
        OUTLINED_FUNCTION_134();
        v14 = v272;
        OUTLINED_FUNCTION_129_1(2);
        sub_1AC5D1E4C(v15 + 96, &v269, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v271)
        {
          sub_1AC5C3968(&v269, &v273);
          sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
          OUTLINED_FUNCTION_134();
          v22 = v268;
          OUTLINED_FUNCTION_129_1(3);
          sub_1AC5D1E4C(v15 + 128, &v264, &unk_1EB56C620, &unk_1AC7A7A00);
          if (v267)
          {
            sub_1AC5CF764(0, &qword_1EB56AB68, off_1E797ADC0);
            if (swift_dynamicCast())
            {
              v23 = v261;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            sub_1AC5C71B8(&v264, &unk_1EB56C620);
            v23 = 0;
          }

          v24 = OUTLINED_FUNCTION_116_0();
          [v24 v25];

          goto LABEL_21;
        }

        goto LABEL_103;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    OUTLINED_FUNCTION_65();
    v117 = a1 == 0xD00000000000002DLL && v116 == a2;
    if (v117 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      [a3 pauseRecognition];
      return;
    }

LABEL_115:
    OUTLINED_FUNCTION_65();
    v119 = a1 == (v7 + 35) && v118 == a2;
    if (v119 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      v120 = OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_145(v120, v121, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v288)
      {
        v122 = OUTLINED_FUNCTION_71();
        v124 = sub_1AC5C3968(v122, v123);
        OUTLINED_FUNCTION_36(v124, v125, v126, MEMORY[0x1E69E6158], v127, v128, v129, v130, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
        swift_dynamicCast();
        v131 = sub_1AC79FF58();

        OUTLINED_FUNCTION_128();
        sub_1AC5D1E4C(v15 + 64, &v287, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v288)
        {
          v132 = OUTLINED_FUNCTION_71();
          v134 = sub_1AC5C3968(v132, v133);
          OUTLINED_FUNCTION_36(v134, v135, v136, MEMORY[0x1E69E6158], v137, v138, v139, v140, v253, v256, v259, v262, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
          swift_dynamicCast();
          v141 = sub_1AC79FF58();

          OUTLINED_FUNCTION_129_1(2);
          sub_1AC5D1E4C(v15 + 96, &v287, &unk_1EB56C620, &unk_1AC7A7A00);
          if (v288)
          {
            v142 = OUTLINED_FUNCTION_71();
            v144 = sub_1AC5C3968(v142, v143);
            OUTLINED_FUNCTION_36(v144, v145, v146, MEMORY[0x1E69E6158], v147, v148, v149, v150, v254, v257, v260, v263, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
            swift_dynamicCast();
            v151 = OUTLINED_FUNCTION_208();

            v152 = OUTLINED_FUNCTION_116_0();
            [v152 v153];

            return;
          }

          goto LABEL_250;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

LABEL_126:
    OUTLINED_FUNCTION_65();
    v155 = a1 == (v7 + 140) && v154 == a2;
    if (v155 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      OUTLINED_FUNCTION_74_1();
      sub_1AC5D1E4C(v15 + 32, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v284)
      {
        if (OUTLINED_FUNCTION_49())
        {
          v156 = sub_1AC79FF58();

          goto LABEL_137;
        }

LABEL_136:
        v156 = 0;
LABEL_137:
        OUTLINED_FUNCTION_128();
        sub_1AC5D1E4C(v15 + 64, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v284)
        {
          if (OUTLINED_FUNCTION_49())
          {
            v157 = sub_1AC79FF58();

            goto LABEL_142;
          }
        }

        else
        {
          sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
        }

        v157 = 0;
LABEL_142:
        OUTLINED_FUNCTION_129_1(2);
        sub_1AC5D1E4C(v15 + 96, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v284)
        {
          if (OUTLINED_FUNCTION_49())
          {
            v158 = sub_1AC79FF58();

LABEL_147:
            OUTLINED_FUNCTION_129_1(3);
            sub_1AC5D1E4C(v15 + 128, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v284)
            {
              sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v160 = 0;
              }

              else
              {
                v160 = v159;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v160 = 0;
            }

            OUTLINED_FUNCTION_129_1(4);
            sub_1AC5D1E4C(v15 + 160, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v284)
            {
              sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v162 = 0;
              }

              else
              {
                v162 = v161;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v162 = 0;
            }

            OUTLINED_FUNCTION_129_1(5);
            sub_1AC5D1E4C(v15 + 192, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v284)
            {
              sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v164 = 0;
              }

              else
              {
                v164 = v163;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v164 = 0;
            }

            OUTLINED_FUNCTION_129_1(6);
            sub_1AC5D1E4C(v15 + 224, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v284)
            {
              sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v166 = 0;
              }

              else
              {
                v166 = v165;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v166 = 0;
            }

            OUTLINED_FUNCTION_129_1(7);
            sub_1AC5D1E4C(v15 + 256, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v284)
            {
              sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v28 = 0;
              }

              else
              {
                v28 = v167;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v28 = 0;
            }

            v168 = OUTLINED_FUNCTION_116_0();
            [v168 v169];

            goto LABEL_35;
          }
        }

        else
        {
          sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
        }

        v158 = 0;
        goto LABEL_147;
      }

LABEL_135:
      sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_65();
    v171 = a1 == (v7 - 4) && v170 == a2;
    if (v171 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      v172 = OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_145(v172, v173, &unk_1EB56C620, &unk_1AC7A7A00);
      if (!v288)
      {
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v174 = OUTLINED_FUNCTION_71();
      sub_1AC5C3968(v174, v175);
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B948, &unk_1AC7A73C0);
      OUTLINED_FUNCTION_36(v176, v177, v178, v176, v179, v180, v181, v182, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
      swift_dynamicCast();
      v13 = v280;
      v183 = *(v280 + 16);
      if (v183)
      {
        *&v276 = MEMORY[0x1E69E7CC0];
        sub_1AC7A0A88();
        v184 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
          sub_1AC7A0A68();
          v185 = *(v276 + 16);
          sub_1AC7A0A98();
          OUTLINED_FUNCTION_117();
          sub_1AC7A0AA8();
          sub_1AC7A0A78();
          v184 += 8;
          --v183;
        }

        while (v183);
      }

      goto LABEL_184;
    }

    OUTLINED_FUNCTION_65();
    v187 = a1 == (v7 - 5) && v186 == a2;
    if (v187 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      if (!v14)
      {
LABEL_252:
        __break(1u);
        goto LABEL_253;
      }

      OUTLINED_FUNCTION_99();
      v188 = swift_allocObject();
      *(v188 + 16) = v14;
      *(v188 + 24) = v13;
      OUTLINED_FUNCTION_4_0(v188);
      OUTLINED_FUNCTION_98_0(COERCE_DOUBLE(1107296256));
      v283 = v189;
      v284 = &block_descriptor_124;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_91_0();

      [a3 isSpeechProfileUsedWithReply_];
LABEL_72:
      _Block_release(v15);
      return;
    }

    goto LABEL_194;
  }

  OUTLINED_FUNCTION_65();
  v27 = a1 == 0xD000000000000074 && v26 == a2;
  if (v27 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    OUTLINED_FUNCTION_74_1();
    sub_1AC5D1E4C(v15 + 32, &v280, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v281)
    {
      sub_1AC5C3968(&v280, &v287);
      sub_1AC5CF764(0, &qword_1ED9372A0, 0x1E696B0E0);
      OUTLINED_FUNCTION_134();
      a2 = v279;
      OUTLINED_FUNCTION_128();
      sub_1AC5D1E4C(v15 + 64, &v276, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v278)
      {
        sub_1AC5C3968(&v276, &aBlock);
        OUTLINED_FUNCTION_66();
        swift_dynamicCast();
        v3 = *(&v273 + 1);
        a1 = sub_1AC79FF58();

        OUTLINED_FUNCTION_129_1(2);
        sub_1AC5D1E4C(v15 + 96, &v276, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v278)
        {
          sub_1AC5C3968(&v276, &aBlock);
          OUTLINED_FUNCTION_66();
          swift_dynamicCast();
          v7 = *(&v273 + 1);
          v3 = sub_1AC79FF58();

          OUTLINED_FUNCTION_129_1(3);
          sub_1AC5D1E4C(v15 + 128, &v273, &unk_1EB56C620, &unk_1AC7A7A00);
          if (v275)
          {
            sub_1AC5C3968(&v273, &v276);
            OUTLINED_FUNCTION_134();
            v7 = v272;
            OUTLINED_FUNCTION_129_1(4);
            sub_1AC5D1E4C(v15 + 160, &v269, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v271)
            {
              sub_1AC5C3968(&v269, &aBlock);
              OUTLINED_FUNCTION_66();
              swift_dynamicCast();
              v28 = sub_1AC79FF58();

              OUTLINED_FUNCTION_99();
              v29 = swift_allocObject();
              *(v29 + 16) = v14;
              *(v29 + 24) = v13;
              v285 = sub_1AC60153C;
              v286 = v29;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              v283 = sub_1AC5C0904;
              v284 = &block_descriptor_160;
              v30 = _Block_copy(&aBlock);
              sub_1AC5D9374(v14);

              [a3 runRecognitionWithResultStream:a2 language:a1 task:v3 samplingRate:v7 lastStringOfPriorFinalResult:v28 reply:v30];

              _Block_release(v30);
              goto LABEL_35;
            }

            goto LABEL_114;
          }

LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

LABEL_112:
        __break(1u);
        goto LABEL_113;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_65();
  v32 = a1 == 0xD000000000000049 && v31 == a2;
  if (v32 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    v33 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v33, v34, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v288)
    {
      v35 = OUTLINED_FUNCTION_71();
      sub_1AC5C3968(v35, v36);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
      OUTLINED_FUNCTION_36(v14, v37, v38, v39, v40, v41, v42, v43, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
      swift_dynamicCast();
      a2 = v280;
      v13 = sub_1AC7A0148();

      OUTLINED_FUNCTION_128();
      sub_1AC5D1E4C(v15 + 64, &v287, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v288)
      {
        v44 = OUTLINED_FUNCTION_71();
        v46 = sub_1AC5C3968(v44, v45);
        OUTLINED_FUNCTION_36(v46, v47, v48, v49, v50, v51, v52, v53, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
        swift_dynamicCast();
        v14 = sub_1AC7A0148();

        v54 = OUTLINED_FUNCTION_116_0();
        [v54 v55];
LABEL_21:

LABEL_22:
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_126;
  }

  OUTLINED_FUNCTION_65();
  v3 = 0xD00000000000003FLL;
  v57 = a1 == 0xD00000000000003FLL && v56 == a2;
  if (v57 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    v58 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v58, v59, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v288)
    {
      v60 = OUTLINED_FUNCTION_71();
      v62 = sub_1AC5C3968(v60, v61);
      OUTLINED_FUNCTION_36(v62, v63, v64, MEMORY[0x1E6969080], v65, v66, v67, v68, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
      swift_dynamicCast();
      OUTLINED_FUNCTION_123();
      v14 = sub_1AC79F858();
      v69 = OUTLINED_FUNCTION_123();
      sub_1AC5C28A8(v69, v70);
      [a3 setUserProfileData_];
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_65();
  v72 = a1 == 0xD000000000000042 && v71 == a2;
  if (v72 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    v73 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v73, v74, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v288)
    {
      v75 = OUTLINED_FUNCTION_71();
      v77 = sub_1AC5C3968(v75, v76);
      OUTLINED_FUNCTION_36(v77, v78, v79, MEMORY[0x1E6969080], v80, v81, v82, v83, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
      swift_dynamicCast();
      OUTLINED_FUNCTION_123();
      v14 = sub_1AC79F858();
      v84 = OUTLINED_FUNCTION_123();
      sub_1AC5C28A8(v84, v85);
      [a3 updateUserProfileData_];
      goto LABEL_22;
    }

    __break(1u);
LABEL_184:

    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    sub_1AC7A0148();
    OUTLINED_FUNCTION_209();
    [a3 requestEagerResult_];
    goto LABEL_185;
  }

  OUTLINED_FUNCTION_65();
  v87 = a1 == 0xD000000000000040 && v86 == a2;
  if (v87 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    v88 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v88, v89, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v288)
    {
      v90 = OUTLINED_FUNCTION_71();
      v92 = sub_1AC5C3968(v90, v91);
      OUTLINED_FUNCTION_36(v92, v93, v94, MEMORY[0x1E6969080], v95, v96, v97, v98, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
      swift_dynamicCast();
      OUTLINED_FUNCTION_123();
      v14 = sub_1AC79F858();
      v99 = OUTLINED_FUNCTION_123();
      sub_1AC5C28A8(v99, v100);
      [a3 updateJitProfileData_];
      goto LABEL_22;
    }

    __break(1u);
LABEL_194:
    OUTLINED_FUNCTION_65();
    v191 = a1 == (v7 - 11) && v190 == a2;
    if (v191 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      if (!v14)
      {
LABEL_253:
        __break(1u);
        goto LABEL_254;
      }

      OUTLINED_FUNCTION_99();
      v192 = swift_allocObject();
      *(v192 + 16) = v14;
      *(v192 + 24) = v13;
      OUTLINED_FUNCTION_4_0(v192);
      OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
      v283 = sub_1AC5EF8A8;
      v284 = &block_descriptor_117;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_91_0();

      [a3 modelLoadTimeWithReply_];
      goto LABEL_72;
    }

    goto LABEL_202;
  }

  OUTLINED_FUNCTION_65();
  v102 = a1 == 0xD000000000000029 && v101 == a2;
  if (v102 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_99();
      v103 = swift_allocObject();
      *(v103 + 16) = v14;
      *(v103 + 24) = v13;
      OUTLINED_FUNCTION_4_0(v103);
      OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
      v283 = sub_1AC5EF46C;
      v284 = &block_descriptor_154;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_91_0();

      [a3 rightContextWithReply_];
      goto LABEL_72;
    }

    __break(1u);
LABEL_202:
    OUTLINED_FUNCTION_65();
    v194 = a1 == v7 && v193 == a2;
    if (v194 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      if (!v14)
      {
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      OUTLINED_FUNCTION_99();
      v195 = swift_allocObject();
      *(v195 + 16) = v14;
      *(v195 + 24) = v13;
      OUTLINED_FUNCTION_4_0(v195);
      OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
      v283 = sub_1AC5EF8FC;
      v284 = &block_descriptor_111;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_91_0();

      [a3 speechProfileCodepathIdsWithReply_];
      goto LABEL_72;
    }

    goto LABEL_210;
  }

  OUTLINED_FUNCTION_65();
  v105 = a1 == 0xD000000000000026 && v104 == a2;
  if (!v105 && (OUTLINED_FUNCTION_53() & 1) == 0)
  {
    OUTLINED_FUNCTION_65();
    v108 = a1 == 0xD000000000000032 && v107 == a2;
    if (v108 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      if (v14)
      {
        OUTLINED_FUNCTION_99();
        v109 = swift_allocObject();
        *(v109 + 16) = v14;
        *(v109 + 24) = v13;
        OUTLINED_FUNCTION_4_0(v109);
        OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
        v283 = sub_1AC5EF5DC;
        v284 = &block_descriptor_142;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_91_0();

        [a3 recognitionStatisticsWithReply_];
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_218;
    }

    OUTLINED_FUNCTION_65();
    v111 = a1 == 0xD00000000000003BLL && v110 == a2;
    if (v111 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      if (v14)
      {
        OUTLINED_FUNCTION_99();
        v112 = swift_allocObject();
        *(v112 + 16) = v14;
        *(v112 + 24) = v13;
        OUTLINED_FUNCTION_4_0(v112);
        OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
        v283 = sub_1AC5EF6E8;
        v284 = &block_descriptor_136;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_91_0();

        [a3 recognitionUtterenceStatisticsWithReply_];
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_226;
    }

    OUTLINED_FUNCTION_65();
    v114 = a1 == 0xD00000000000002FLL && v113 == a2;
    if (v114 || (OUTLINED_FUNCTION_53() & 1) != 0)
    {
      if (v14)
      {
        OUTLINED_FUNCTION_99();
        v115 = swift_allocObject();
        *(v115 + 16) = v14;
        *(v115 + 24) = v13;
        OUTLINED_FUNCTION_4_0(v115);
        OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
        v283 = sub_1AC5EF7E0;
        v284 = &block_descriptor_130;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_91_0();

        [a3 recognitionMetricsWithReply_];
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_234;
    }

    goto LABEL_104;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_99();
    v106 = swift_allocObject();
    *(v106 + 16) = v14;
    *(v106 + 24) = v13;
    OUTLINED_FUNCTION_4_0(v106);
    OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
    v283 = sub_1AC5EF570;
    v284 = &block_descriptor_148;
    _Block_copy(&aBlock);
    OUTLINED_FUNCTION_91_0();

    [a3 modelInfoWithReply_];
    goto LABEL_72;
  }

  __break(1u);
LABEL_210:
  OUTLINED_FUNCTION_65();
  v197 = a1 == v7 && v196 == a2;
  if (v197 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    if (!v14)
    {
LABEL_255:
      __break(1u);
      goto LABEL_256;
    }

    OUTLINED_FUNCTION_99();
    v198 = swift_allocObject();
    *(v198 + 16) = v14;
    *(v198 + 24) = v13;
    OUTLINED_FUNCTION_4_0(v198);
    OUTLINED_FUNCTION_98_0(COERCE_DOUBLE(1107296256));
    v283 = v199;
    v284 = &block_descriptor;
    _Block_copy(&aBlock);
    OUTLINED_FUNCTION_91_0();

    [a3 isVADSupportedForRequestWithReply_];
    goto LABEL_72;
  }

LABEL_218:
  OUTLINED_FUNCTION_65();
  v201 = a1 == (v7 - 9) && v200 == a2;
  if (v201 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    v202 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v202, v203, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v288)
    {
LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

    v204 = OUTLINED_FUNCTION_71();
    sub_1AC5C3968(v204, v205);
    v206 = sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
    OUTLINED_FUNCTION_36(v206, v207, v208, v206, v209, v210, v211, v212, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
    swift_dynamicCast();
    v28 = v280;
    [a3 setClientInfo_];
LABEL_35:

    return;
  }

LABEL_226:
  OUTLINED_FUNCTION_65();
  v214 = a1 == v3 && v213 == a2;
  if (v214 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    v215 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v215, v216, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v288)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v217 = OUTLINED_FUNCTION_71();
    v219 = sub_1AC5C3968(v217, v218);
    OUTLINED_FUNCTION_36(v219, v220, v221, MEMORY[0x1E69E6158], v222, v223, v224, v225, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
    swift_dynamicCast();
    OUTLINED_FUNCTION_208();
    OUTLINED_FUNCTION_209();
    [a3 setLeftContextText_];
LABEL_185:

    return;
  }

LABEL_234:
  OUTLINED_FUNCTION_65();
  v13 = (v7 + 4);
  v227 = a1 == (v7 + 4) && v226 == a2;
  if (v227 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    v228 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v228, v229, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v288)
    {
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    v230 = OUTLINED_FUNCTION_71();
    v232 = sub_1AC5C3968(v230, v231);
    OUTLINED_FUNCTION_36(v232, v233, v234, MEMORY[0x1E69E6158], v235, v236, v237, v238, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
    swift_dynamicCast();
    OUTLINED_FUNCTION_208();
    OUTLINED_FUNCTION_209();
    [a3 setRightContext_];
    goto LABEL_185;
  }

  OUTLINED_FUNCTION_65();
  v240 = a1 == v13 && v239 == a2;
  if (v240 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    v241 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v241, v242, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v288)
    {
LABEL_259:
      __break(1u);
      return;
    }

    v243 = OUTLINED_FUNCTION_71();
    v245 = sub_1AC5C3968(v243, v244);
    OUTLINED_FUNCTION_36(v245, v246, v247, MEMORY[0x1E69E6158], v248, v249, v250, v251, v252, v255, v258, v261, v264, v265, v266, v267, v268, v269, *(&v269 + 1), v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *(&v276 + 1), v277, v278, v279, v280);
    swift_dynamicCast();
    OUTLINED_FUNCTION_208();
    OUTLINED_FUNCTION_209();
    [a3 setSelectedText_];
    goto LABEL_185;
  }
}

id sub_1AC5EF334(id result, id a2, void (*a3)(id *))
{
  v4 = result;
  v5 = result;
  if (!result)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    result = a2;
    v5 = a2;
  }

  if (a3)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B990, &unk_1AC7B1850);
    v8 = v5;
    v9 = v4 == 0;
    v7 = v4;
    sub_1AC5C1AD0(v5);
    a3(&v8);
    sub_1AC601544(v5);
    return sub_1AC5C71B8(&v8, &unk_1EB56C620);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AC5EF404(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = a1;
  v5[1] = a2;

  a3(v5);
  return sub_1AC5C71B8(v5, &unk_1EB56C620);
}

uint64_t sub_1AC5EF46C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1AC79FF68();

  v3 = OUTLINED_FUNCTION_170();
  v2(v3);
}

uint64_t sub_1AC5EF4D4(void *a1, void (*a2)(_OWORD *))
{
  if (a1)
  {
    v7 = sub_1AC5CF764(0, &qword_1EB56AB70, off_1E797AC80);
    *&v6 = a1;
    sub_1AC5C3968(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v4 = a1;
  a2(v8);
  return sub_1AC5C71B8(v8, &unk_1EB56C620);
}

void sub_1AC5EF570(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1AC5EF5DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC79FE28();

  v2(v3);
}

uint64_t sub_1AC5EF670(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8[0] = a1;

  a2(v8);
  return sub_1AC5C71B8(v8, &unk_1EB56C620);
}

uint64_t sub_1AC5EF6E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1AC79FE28();

  v2(v3);
}

uint64_t sub_1AC5EF760(void *a1, void (*a2)(void *))
{
  v6[3] = sub_1AC5CF764(0, &qword_1EB56AB28, off_1E797AC78);
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_1AC5C71B8(v6, &unk_1EB56C620);
}

void sub_1AC5EF7E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1AC5EF848(void (*a1)(void *), double a2)
{
  v3[3] = MEMORY[0x1E69E63B0];
  *v3 = a2;
  a1(v3);
  return sub_1AC5C71B8(v3, &unk_1EB56C620);
}

uint64_t sub_1AC5EF8A8(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v5, a2);
}

uint64_t sub_1AC5EF8FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1AC7A0448();

  v2(v3);
}

uint64_t sub_1AC5EF99C(void *a1, void *a2, int a3, uint64_t a4, void (*a5)(uint64_t))
{
  v10 = sub_1AC79FDE8();
  v11 = OUTLINED_FUNCTION_40(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  result = sub_1AC6E880C();
  if (result)
  {
    v19 = result;
    v20 = v18;
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v21 = __swift_project_value_buffer(v10, qword_1ED9386C8);
    v22 = v34;
    (*(v13 + 16))(v34, v21, v10);
    a5(a4);
    if (swift_dynamicCastClass())
    {
      (*(v13 + 8))(v22, v10);
      v35 = v19;
      v36 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      return v38;
    }

    else
    {
      swift_unknownObjectRetain();
      sub_1AC5D0DD0(v31, v32, v33);
      v23 = sub_1AC79FDC8();
      v24 = sub_1AC7A05F8();
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_107();
        v25 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = v30;
        *v25 = 136315138;
        v35 = 0;
        v36 = 0xE000000000000000;
        sub_1AC7A09C8();
        v38 = v35;
        v39 = v36;
        MEMORY[0x1B26E8C40](0x20726F746341, 0xE600000000000000);
        v26 = v31;
        v35 = v31;
        v36 = v32;
        v37 = v33;
        sub_1AC7A0AF8();
        OUTLINED_FUNCTION_65();
        MEMORY[0x1B26E8C40](0xD000000000000017);
        swift_getObjectType();
        v27 = sub_1AC7A0F78();
        MEMORY[0x1B26E8C40](v27);

        v28 = sub_1AC5CFE74(v38, v39, &v40);

        *(v25 + 4) = v28;
        _os_log_impl(&dword_1AC5BC000, v23, v24, "Failed precondition: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        OUTLINED_FUNCTION_70_1();
        MEMORY[0x1B26EAB10]();
        OUTLINED_FUNCTION_70_1();
        MEMORY[0x1B26EAB10]();

        sub_1AC5D1128(v26, v32, v33);
        swift_unknownObjectRelease();
        v29 = *(v13 + 8);
        v13 += 8;
        v29(v34, v10);
        __break(1u);
      }

      sub_1AC5D1128(v31, v32, v33);
      swift_unknownObjectRelease();
      result = (*(v13 + 8))(v34, v10);
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AC5EFEBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARSpeechRecognizer();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
LABEL_7:
      v10 = qword_1EB56AEA0;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC60163C(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

uint64_t sub_1AC5F00FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for LSRAssetInventory();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
LABEL_7:
      v10 = qword_1EB56B590;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC6019B8(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

uint64_t sub_1AC5F0340(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for LSRAssets();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
LABEL_7:
      v10 = qword_1EB56ACF0;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC6020C0(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

uint64_t sub_1AC5F0584(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARLanguageDetectorAudioBuffer();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
LABEL_7:
      v10 = qword_1EB56B5A8;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC602444(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

uint64_t sub_1AC5F07C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARLanguageDetector();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
LABEL_7:
      v10 = qword_1EB56B5F0;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC602B4C(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

uint64_t sub_1AC5F0A0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARTranscriptionEvaluator();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
LABEL_7:
      v10 = qword_1EB56B5E8;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC602F00(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

uint64_t sub_1AC5F0C50(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARFullPayloadCorrector();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
LABEL_7:
      v10 = qword_1EB56B618;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC603284(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

uint64_t sub_1AC5F0E94(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EAREuclid();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
LABEL_7:
      v10 = qword_1EB56AD20;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC603608(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

void sub_1AC5F10D8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v38 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC78, &qword_1AC7A7DF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = *(v9 + 16);
  v40 = a1;
  v37 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v39 = v10;
  v15 = swift_allocObject();
  v17 = *(v9 + 32);
  v16 = (v9 + 32);
  v36 = v17;
  v17(v15 + ((v14 + 16) & ~v14), v12, v8);
  v47 = sub_1AC6048A8;
  v48 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1AC6E9230;
  v46 = &block_descriptor_790;
  v18 = _Block_copy(&aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v34 = v42;
  sub_1AC79FC68();
  v21 = v20;
  v35 = sub_1AC7A0838();
  v23 = v22;

  if (v23)
  {
    v42 = MEMORY[0x1E69E7CC0];
    v24 = *(*(a3 + 128) + 16);

    os_unfair_lock_lock(v24);
    sub_1AC5D1B54(&v42, v38);
    os_unfair_lock_unlock(v24);

    v37(v12, v40, v8);
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    v36(v25 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    v21 = v34;
    v16 = v35;
    sub_1AC5EDC90(v35, v23, v21);
    v27 = v26;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v28 = sub_1AC79FDE8();
    __swift_project_value_buffer(v28, qword_1ED9386C8);
    if (v27)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  v40 = v21;

  v29 = sub_1AC79FDC8();
  v30 = sub_1AC7A05F8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v31 = 136315138;
    aBlock = 0;
    v44 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v44 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v16, v23);
    v33 = sub_1AC5CFE74(aBlock, v44, &v41);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_1AC5BC000, v29, v30, "Failed precondition: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1B26EAB10](v32, -1, -1);
    MEMORY[0x1B26EAB10](v31, -1, -1);
  }

  swift_bridgeObjectRelease_n();

  __break(1u);
}

uint64_t sub_1AC5F15D8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9F0, &qword_1AC7A7A90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC6047D8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_778;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F1AF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA0, &qword_1AC7A7B70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BFC;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_767;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F2018(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC60, &qword_1AC7A7DD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604670;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_756;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F2538(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC58, &qword_1AC7A7DD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604620;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_745;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F2A58(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC50, &qword_1AC7A7DC8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC6045CC;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_734;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F2F78(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BF8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_723;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F3498(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC10, &qword_1AC7A7D88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604560;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_712;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F39B8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC08, &qword_1AC7A7D80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604494;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_679;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F3ED8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC00, &qword_1AC7A7D78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604444;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_668;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for LSRAssetInventory();

    a3 = v31;
    v23 = sub_1AC6B7258(v37, v19, a3, v22, sub_1AC604458, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F4400(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BF8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_657;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for LSRAssetInventory();

    a3 = v31;
    v23 = sub_1AC6B7258(v37, v19, a3, v22, sub_1AC5D2638, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F4928(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BF8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_646;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for LSRAssetInventory();

    a3 = v31;
    v23 = sub_1AC6B7258(v37, v19, a3, v22, sub_1AC5D2638, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F4E50(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE0, &qword_1AC7A7D40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC6043C0;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_635;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC6043D4, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F5378(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB60, &unk_1AC7A7CA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC604258;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_568;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC5C1B5C, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F58A0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBD0, &qword_1AC7A7D28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC604328;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_601;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for LSRAssets();

    a3 = v30;
    v22 = sub_1AC6F30F4(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F5DC8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBC0, &qword_1AC7A7D10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC6042D8;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_590;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for LSRAssets();

    a3 = v30;
    v22 = sub_1AC6F30F4(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F62F0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBA0, &qword_1AC7A7CE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC604284;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_579;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for LSRAssets();

    a3 = v30;
    v22 = sub_1AC6F30F4(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F6818(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB58, &qword_1AC7A7C88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC604204;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_534;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for LSRAssets();

    a3 = v30;
    v22 = sub_1AC6F30F4(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F6D40(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB50, &qword_1AC7A7C78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC6041B0;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_523;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC6041C4, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F7268(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB28, &unk_1AC7A7C40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC604148;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_512;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC60415C, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F7790(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB20, &qword_1AC7A7C30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC6040F4;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_501;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC604108, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F7CB8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAF0, &qword_1AC7A7BF8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC6040A0;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_490;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC6040B4, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F81E0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAD0, &qword_1AC7A7BD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC60404C;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_479;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC604060, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F8708(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC604020;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_468;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC5D2610, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F8C30(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAC8, &qword_1AC7A7BC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC603FCC;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_457;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC603FE0, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F9158(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAC0, &qword_1AC7A7BB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC603F78;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_424;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC603F8C, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F9680(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA8, &unk_1AC7A7B80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC603F24;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_379;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognitionAudioBuffer();

    a3 = v30;
    v22 = sub_1AC5D1ED0(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F9BA8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA0, &qword_1AC7A7B70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC603ED0;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_368;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARLanguageDetector();

    a3 = v30;
    v22 = sub_1AC71C4D0(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FA0D0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BF8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_311;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for EARTranscriptionEvaluator();

    a3 = v31;
    v23 = sub_1AC710C24(v37, v19, a3, v22, sub_1AC5D2638, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FA5F8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA48, &unk_1AC7A7B00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC603E64;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_300;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for EARFullPayloadCorrector();

    a3 = v31;
    v23 = sub_1AC753FC0(v37, v19, a3, v22, sub_1AC603E78, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FAB20(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA20, &qword_1AC7A7AD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC603E10;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_266;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EAREuclid();

    a3 = v31;
    sub_1AC755804(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FB048(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA08, &qword_1AC7A7AB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC603D6C;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_255;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EAREuclid();

    a3 = v31;
    sub_1AC755804(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FB570(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA00, &qword_1AC7A7AA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC603D18;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_244;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EAREuclid();

    a3 = v31;
    sub_1AC755804(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FBA98(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9F0, &qword_1AC7A7A90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604C00;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_233;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EAREuclid();

    a3 = v31;
    sub_1AC755804(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FBFC0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9E8, &qword_1AC7A7A70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC603BF0;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_198;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARLanguageDetector();

    a3 = v30;
    v22 = sub_1AC71C4D0(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FC4E8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B0, &unk_1AC7A7A30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC601568;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_168;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARLanguageDetector();

    a3 = v30;
    v22 = sub_1AC71C4D0(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FCA10(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_89();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_1AC7A01C8();
}

uint64_t sub_1AC5FCA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1AC5D1E4C(a1, v46, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v47)
  {
    goto LABEL_6;
  }

  sub_1AC5D1E4C(v46, v45, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!OUTLINED_FUNCTION_205())
  {
    __swift_destroy_boxed_opaque_existential_0(v45);
LABEL_6:
    LOBYTE(v44) = sub_1AC600858();
    v22 = OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_111_0(v22, v23, v24, v25, v26, v27, v28, v29, v31, v33, v35, v36, v37, AssociatedTypeWitness, v39, v40, v41, v42, v43, v44);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v46, &unk_1EB56C620);
  }

  v32 = a7;
  v34 = a3;
  sub_1AC5D9384(&v44, &v39);
  v11 = v42;
  v10 = v43;
  __swift_project_boxed_opaque_existential_1(&v39, v42);
  v12 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(&v35);
  OUTLINED_FUNCTION_163();
  v12(v11, v10);
  if (v7)
  {
    __swift_deallocate_boxed_opaque_existential_0Tm(&v35);
    __swift_destroy_boxed_opaque_existential_0(&v39);
    __swift_destroy_boxed_opaque_existential_0(v45);
    sub_1AC5C71B8(v46, &unk_1EB56C620);
    *&v44 = v7;
    v13 = OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_111_0(v13, v14, v15, v16, v17, v18, v19, v20, v32, v34, v35, v36, v37, AssociatedTypeWitness, v39, v40, v41, v42, v43, v44);
    return sub_1AC7A01C8();
  }

  v30 = sub_1AC600858();
  sub_1AC5C71B8(&v35, &unk_1EB56C620);
  v35 = v30;
  OUTLINED_FUNCTION_180();
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(&v39);
  __swift_destroy_boxed_opaque_existential_0(v45);
  return sub_1AC5C71B8(v46, &unk_1EB56C620);
}

uint64_t sub_1AC5FCCD8(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600658();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC50, &qword_1AC7A7DC8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600658();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC50, &qword_1AC7A7DC8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FCF7C(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v15, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v16)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v15, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_5:
    sub_1AC5FF12C(a1);
    *&v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC10, &qword_1AC7A7D88);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v15, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v13, v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v3 + 24);
  v9[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v9);
  v4(v2, v3);
  sub_1AC5FF12C(v9);
  v8 = v7;
  sub_1AC5C71B8(v9, &unk_1EB56C620);
  v9[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC10, &qword_1AC7A7D88);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v10);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return sub_1AC5C71B8(v15, &unk_1EB56C620);
}

uint64_t sub_1AC5FD1DC(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v16, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v17)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v16, v15, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_5:
    *&v14 = sub_1AC5FF644(a1);
    *(&v14 + 1) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBA0, &qword_1AC7A7CE8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v16, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v14, v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v4 = *(v3 + 24);
  v10[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v10);
  v4(v2, v3);
  v7 = sub_1AC5FF644(v10);
  v9 = v8;
  sub_1AC5C71B8(v10, &unk_1EB56C620);
  v10[0] = v7;
  v10[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBA0, &qword_1AC7A7CE8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return sub_1AC5C71B8(v16, &unk_1EB56C620);
}

uint64_t sub_1AC5FD464(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600658();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB58, &qword_1AC7A7C88);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600658();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB58, &qword_1AC7A7C88);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FD708(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v16, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v17)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v16, v15, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_5:
    sub_1AC5FFA1C(a1, v14);
    v5 = v14[0];
    v11 = v14[0];
    sub_1AC5CFBB8(*&v14[0], *(&v14[0] + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB28, &unk_1AC7A7C40);
    sub_1AC7A01D8();
    sub_1AC5C28A8(v5, *(&v5 + 1));
    return sub_1AC5C71B8(v16, &unk_1EB56C620);
  }

  sub_1AC5D9384(v14, &v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, v12);
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(&v8);
  v4(v2, v3);
  sub_1AC5FFA1C(&v8, &v10);
  sub_1AC5C71B8(&v8, &unk_1EB56C620);
  v7 = v10;
  v8 = v10;
  sub_1AC5CFBB8(v10, *(&v10 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB28, &unk_1AC7A7C40);
  sub_1AC7A01D8();
  sub_1AC5C28A8(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_0(&v11);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return sub_1AC5C71B8(v16, &unk_1EB56C620);
}

uint64_t sub_1AC5FD9A0(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v18, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v19)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v18, v17, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
LABEL_5:
    *&v16 = sub_1AC5FFB88(a1);
    BYTE8(v16) = v5 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB20, &qword_1AC7A7C30);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v18, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v16, v13);
  v2 = v14;
  v3 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(&v10);
  v4(v2, v3);
  v7 = sub_1AC5FFB88(&v10);
  v9 = v8;
  sub_1AC5C71B8(&v10, &unk_1EB56C620);
  v10 = v7;
  v11 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB20, &qword_1AC7A7C30);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return sub_1AC5C71B8(v18, &unk_1EB56C620);
}

uint64_t sub_1AC5FDC38(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v13, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v14)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v13, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
LABEL_5:
    *&v11 = sub_1AC6004D0(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA8, &unk_1AC7A7B80);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v13, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v11, v8);
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v4 = *(v3 + 24);
  v7[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v7);
  v4(v2, v3);
  v6 = sub_1AC6004D0(v7);
  sub_1AC5C71B8(v7, &unk_1EB56C620);
  v7[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA8, &unk_1AC7A7B80);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return sub_1AC5C71B8(v13, &unk_1EB56C620);
}

uint64_t sub_1AC5FDE90(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600658();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA48, &unk_1AC7A7B00);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600658();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA48, &unk_1AC7A7B00);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FE134(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA20, &qword_1AC7A7AD8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600858();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA20, &qword_1AC7A7AD8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FE3D8(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600658();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA08, &qword_1AC7A7AB8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600658();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA08, &qword_1AC7A7AB8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FE67C(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA00, &qword_1AC7A7AA8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600858();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA00, &qword_1AC7A7AA8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FEB38(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9E8, &qword_1AC7A7A70);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600858();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9E8, &qword_1AC7A7A70);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FEDDC(uint64_t a1)
{
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    sub_1AC604360(&unk_1EB56AD88, 255, type metadata accessor for EARSpeechRecognitionAudioBuffer);
    sub_1AC6EB2E4();

    if (v1)
    {
      return sub_1AC5C71B8(v5, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v5, &unk_1EB56C620);
      return v6;
    }
  }

  else
  {
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FEFA4(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v3 = v7;
  if (!dynamic_cast_existential_1_conditional(MEMORY[0x1E69E6158]))
  {

LABEL_6:
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC600B90(a1);
  }

  sub_1AC6EB2E4();

  if (v1)
  {
    return sub_1AC5C71B8(v5, &unk_1EB56C620);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
  swift_dynamicCast();
  sub_1AC5C71B8(v5, &unk_1EB56C620);
  return v6;
}

uint64_t sub_1AC5FF12C(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (!dynamic_cast_existential_1_conditional(MEMORY[0x1E69E63B0]))
  {

LABEL_7:
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC600D74(a1);
  }

  sub_1AC6EB2E4();

  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
    swift_dynamicCast();
  }

  return sub_1AC5C71B8(v5, &unk_1EB56C620);
}

uint64_t sub_1AC5FF2B4(uint64_t a1)
{
  type metadata accessor for LSRAssetInventory();
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    sub_1AC604360(&qword_1EB56BBD8, 255, type metadata accessor for LSRAssetInventory);
    sub_1AC6EB2E4();

    if (v1)
    {
      return sub_1AC5C71B8(v5, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v5, &unk_1EB56C620);
      return v6;
    }
  }

  else
  {
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FF47C(uint64_t a1)
{
  type metadata accessor for LSRAssets();
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    sub_1AC604360(&unk_1EB56ACE0, 255, type metadata accessor for LSRAssets);
    sub_1AC6EB2E4();

    if (v1)
    {
      return sub_1AC5C71B8(v5, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v5, &unk_1EB56C620);
      return v6;
    }
  }

  else
  {
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FF644(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B930, &qword_1AC7A72C0);
  sub_1AC5D1E4C(a1, v18, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v21;
    if (dynamic_cast_existential_1_conditional(v3))
    {
      v6 = v5;
      sub_1AC6EB2E4();
      v8 = v7;

      if (!v1)
      {
        v17[0] = v8;
        v17[1] = v6;
        v9 = &unk_1EB56D420;
        v10 = &qword_1AC7AF0B0;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        swift_dynamicCast();
        sub_1AC5C71B8(v18, &unk_1EB56C620);
        return v19;
      }

      return sub_1AC5C71B8(v18, &unk_1EB56C620);
    }

    v11 = dynamic_cast_existential_1_conditional(v3);
    if (v11)
    {
      v13 = v11;
      v14 = v12;
      v17[3] = v11;
      v17[4] = v12;
      __swift_allocate_boxed_opaque_existential_0Tm(v17);
      sub_1AC6EB564(v13, v4, v13, v14);

      if (!v1)
      {
        v9 = &unk_1EB56BA10;
        v10 = &unk_1AC7A7AC0;
        goto LABEL_13;
      }

      __swift_deallocate_boxed_opaque_existential_0Tm(v17);
      return sub_1AC5C71B8(v18, &unk_1EB56C620);
    }
  }

  sub_1AC5C71B8(v18, &unk_1EB56C620);
  result = sub_1AC600EC4(a1);
  if (v1)
  {
    return result;
  }

  v19 = result;
  v20 = v16;
  return v19;
}

uint64_t sub_1AC5FF860(uint64_t a1)
{
  type metadata accessor for EARSpeechRecognizer();
  sub_1AC5D1E4C(a1, v6, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    sub_1AC604360(&qword_1EB56AE98, v3, type metadata accessor for EARSpeechRecognizer);
    sub_1AC6EB2E4();

    if (v1)
    {
      return sub_1AC5C71B8(v6, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v6, &unk_1EB56C620);
      return v7;
    }
  }

  else
  {
    sub_1AC5C71B8(v6, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FFA1C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AC5D1E4C(a1, v7, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (!dynamic_cast_existential_1_conditional(MEMORY[0x1E6969080]))
  {

LABEL_7:
    sub_1AC5C71B8(v7, &unk_1EB56C620);
    return sub_1AC600F9C(a1, a2);
  }

  sub_1AC6EB2E4();

  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
    swift_dynamicCast();
  }

  return sub_1AC5C71B8(v7, &unk_1EB56C620);
}

uint64_t sub_1AC5FFB88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB18, &qword_1AC7A7C28);
  sub_1AC5D1E4C(a1, v18, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v21;
    if (dynamic_cast_existential_1_conditional(v3))
    {
      v6 = v5;
      sub_1AC6EB2E4();
      v8 = v7;

      if (!v1)
      {
        v17[0] = v8;
        v17[1] = v6;
        v9 = &unk_1EB56D420;
        v10 = &qword_1AC7AF0B0;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        swift_dynamicCast();
        sub_1AC5C71B8(v18, &unk_1EB56C620);
        return v19;
      }

      return sub_1AC5C71B8(v18, &unk_1EB56C620);
    }

    v11 = dynamic_cast_existential_1_conditional(v3);
    if (v11)
    {
      v13 = v11;
      v14 = v12;
      v17[3] = v11;
      v17[4] = v12;
      __swift_allocate_boxed_opaque_existential_0Tm(v17);
      sub_1AC6EB564(v13, v4, v13, v14);

      if (!v1)
      {
        v9 = &unk_1EB56BA10;
        v10 = &unk_1AC7A7AC0;
        goto LABEL_13;
      }

      __swift_deallocate_boxed_opaque_existential_0Tm(v17);
      return sub_1AC5C71B8(v18, &unk_1EB56C620);
    }
  }

  sub_1AC5C71B8(v18, &unk_1EB56C620);
  result = sub_1AC601080(a1);
  if (v1)
  {
    return result;
  }

  v19 = result;
  v20 = v16 & 1;
  return v19;
}

uint64_t sub_1AC5FFDB0(uint64_t a1)
{
  type metadata accessor for EAREuclid();
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    sub_1AC604360(&unk_1EB56AD10, 255, type metadata accessor for EAREuclid);
    sub_1AC6EB2E4();

    if (v1)
    {
      return sub_1AC5C71B8(v5, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v5, &unk_1EB56C620);
      return v6;
    }
  }

  else
  {
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FFF78(uint64_t a1)
{
  type metadata accessor for EARLanguageDetector();
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    sub_1AC604360(&qword_1EB56B9C8, 255, type metadata accessor for EARLanguageDetector);
    sub_1AC6EB2E4();

    if (v1)
    {
      return sub_1AC5C71B8(v5, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v5, &unk_1EB56C620);
      return v6;
    }
  }

  else
  {
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC600140(uint64_t a1)
{
  type metadata accessor for EARFullPayloadCorrector();
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    sub_1AC604360(&qword_1EB56BA38, 255, type metadata accessor for EARFullPayloadCorrector);
    sub_1AC6EB2E4();

    if (v1)
    {
      return sub_1AC5C71B8(v5, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v5, &unk_1EB56C620);
      return v6;
    }
  }

  else
  {
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC600308(uint64_t a1)
{
  type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    sub_1AC604360(&qword_1EB56BA70, 255, type metadata accessor for EARTranscriptionEvaluator);
    sub_1AC6EB2E4();

    if (v1)
    {
      return sub_1AC5C71B8(v5, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v5, &unk_1EB56C620);
      return v6;
    }
  }

  else
  {
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC6004D0(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (!dynamic_cast_existential_1_conditional(MEMORY[0x1E69E76D8]))
  {

LABEL_6:
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC601154(a1);
  }

  sub_1AC6EB2E4();

  if (v1)
  {
    return sub_1AC5C71B8(v5, &unk_1EB56C620);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
  swift_dynamicCast();
  sub_1AC5C71B8(v5, &unk_1EB56C620);
  return v6;
}

uint64_t sub_1AC600658()
{
  OUTLINED_FUNCTION_173();
  v6 = sub_1AC5CF764(0, v4, v5);
  sub_1AC5D1E4C(v3, v20, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v7 = v19;
    if (dynamic_cast_existential_1_conditional(v6))
    {
      OUTLINED_FUNCTION_178();
      v9 = v8;

      if (!v0)
      {
        v18[0] = v9;
        v18[1] = &unk_1AC7A7A00;
        v10 = &unk_1EB56D420;
        v11 = &qword_1AC7AF0B0;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
        swift_dynamicCast();
        sub_1AC5C71B8(v20, &unk_1EB56C620);
        return v21;
      }

      return sub_1AC5C71B8(v20, &unk_1EB56C620);
    }

    v12 = dynamic_cast_existential_1_conditional(v6);
    if (v12)
    {
      v14 = v12;
      v18[3] = v12;
      v18[4] = v13;
      v15 = v13;
      __swift_allocate_boxed_opaque_existential_0Tm(v18);
      sub_1AC6EB564(v14, v7, v14, v15);

      if (!v1)
      {
        v10 = &unk_1EB56BA10;
        v11 = &unk_1AC7A7AC0;
        goto LABEL_13;
      }

      __swift_deallocate_boxed_opaque_existential_0Tm(v18);
      return sub_1AC5C71B8(v20, &unk_1EB56C620);
    }
  }

  sub_1AC5C71B8(v20, &unk_1EB56C620);
  v17 = OUTLINED_FUNCTION_195();
  result = v2(v17);
  if (v0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1AC600858()
{
  OUTLINED_FUNCTION_173();
  v5 = OUTLINED_FUNCTION_130_0(v3, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  sub_1AC5D1E4C(v2, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (!dynamic_cast_existential_1_conditional(v7))
  {

LABEL_6:
    sub_1AC5C71B8(v11, &unk_1EB56C620);
    v9 = OUTLINED_FUNCTION_195();
    return v1(v9);
  }

  OUTLINED_FUNCTION_178();

  if (v0)
  {
    return sub_1AC5C71B8(v11, &unk_1EB56C620);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
  swift_dynamicCast();
  sub_1AC5C71B8(v11, &unk_1EB56C620);
  return v12;
}

uint64_t sub_1AC6009E0(uint64_t a1)
{
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    sub_1AC604360(&qword_1EB56B9C0, 255, type metadata accessor for EARLanguageDetectorAudioBuffer);
    sub_1AC6EB2E4();

    if (v1)
    {
      return sub_1AC5C71B8(v5, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v5, &unk_1EB56C620);
      return v6;
    }
  }

  else
  {
    sub_1AC5C71B8(v5, &unk_1EB56C620);
    return sub_1AC601330(a1);
  }
}

uint64_t sub_1AC600B90(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  if (swift_dynamicCast() && v4)
  {
    return v3;
  }

  sub_1AC6015E8();
  swift_allocError();
  *v2 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC600C50()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v0, v1, v2, &unk_1AC7A7A00);
  v3 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_203();
  if (!OUTLINED_FUNCTION_51_1() || (result = v8) == 0)
  {
    sub_1AC6015E8();
    v6 = OUTLINED_FUNCTION_188();
    return OUTLINED_FUNCTION_84(v6, v7);
  }

  return result;
}

uint64_t sub_1AC600CDC()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v2, v3, v4, &unk_1AC7A7A00);
  v5 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
  if (!OUTLINED_FUNCTION_51_1() || (result = v10) == 0)
  {
    sub_1AC6015E8();
    v8 = OUTLINED_FUNCTION_188();
    return OUTLINED_FUNCTION_84(v8, v9);
  }

  return result;
}

uint64_t sub_1AC600D74(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v3, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  result = swift_dynamicCast();
  if (!result)
  {
    sub_1AC6015E8();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AC600E2C()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v2, v3, v4, &unk_1AC7A7A00);
  v5 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v0(v1);
  if (!OUTLINED_FUNCTION_51_1() || (result = v10) == 0)
  {
    sub_1AC6015E8();
    v8 = OUTLINED_FUNCTION_188();
    return OUTLINED_FUNCTION_84(v8, v9);
  }

  return result;
}

uint64_t sub_1AC600EC4(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B930, &qword_1AC7A72C0);
  if (swift_dynamicCast() && v4 != 1)
  {
    return v3;
  }

  sub_1AC6015E8();
  swift_allocError();
  *v1 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC600F9C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AC5D1E4C(a1, v7, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  if (swift_dynamicCast())
  {
    v4 = *(&v6 + 1);
    result = v6;
    if (*(&v6 + 1) >> 60 != 15)
    {
      *a2 = v6;
      return result;
    }
  }

  else
  {
    result = 0;
    v4 = 0xF000000000000000;
  }

  sub_1AC604184(result, v4);
  sub_1AC6015E8();
  swift_allocError();
  *v5 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC601080(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v4, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB18, &qword_1AC7A7C28);
  if (swift_dynamicCast())
  {
    return v3;
  }

  sub_1AC6015E8();
  swift_allocError();
  *v2 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC601154(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v4, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  if (swift_dynamicCast())
  {
    return v3;
  }

  sub_1AC6015E8();
  swift_allocError();
  *v2 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC60120C()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v0, v1, v2, &unk_1AC7A7A00);
  v3 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_203();
  if (OUTLINED_FUNCTION_51_1())
  {
    return v8;
  }

  sub_1AC6015E8();
  v6 = OUTLINED_FUNCTION_188();
  return OUTLINED_FUNCTION_84(v6, v7);
}

uint64_t sub_1AC601298()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v2, v3, v4, &unk_1AC7A7A00);
  v5 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
  if (OUTLINED_FUNCTION_51_1())
  {
    return v10;
  }

  sub_1AC6015E8();
  v8 = OUTLINED_FUNCTION_188();
  return OUTLINED_FUNCTION_84(v8, v9);
}

uint64_t sub_1AC601330(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v3, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  if (swift_dynamicCast())
  {
    return v3[5];
  }

  sub_1AC6015E8();
  swift_allocError();
  *v2 = 1;
  return swift_willThrow();
}

unint64_t sub_1AC6013F0()
{
  result = qword_1EB56B980;
  if (!qword_1EB56B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B980);
  }

  return result;
}

unint64_t sub_1AC601444()
{
  result = qword_1EB56B988;
  if (!qword_1EB56B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B988);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1AC6015E8()
{
  result = qword_1EB56D470;
  if (!qword_1EB56D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D470);
  }

  return result;
}

id sub_1AC60163C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56AE98, a2, type metadata accessor for EARSpeechRecognizer);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v28 = sub_1AC604AB4;
  v29 = v13;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1AC6EA1A0;
  v27 = &block_descriptor_689;
  v14 = _Block_copy(&v24);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v28 = sub_1AC604AB8;
  v29 = v18;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1AC6EA1A0;
  v27 = &block_descriptor_696;
  v19 = _Block_copy(&v24);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v24, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v27)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v24, v27);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56AE98, v22, type metadata accessor for EARSpeechRecognizer);
    __swift_destroy_boxed_opaque_existential_0(&v24);
  }

  else
  {
    sub_1AC5C71B8(&v24, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC6019B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56BBD8, 255, type metadata accessor for LSRAssetInventory);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_612;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_619;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56BBD8, 255, type metadata accessor for LSRAssetInventory);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC601D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&unk_1ED937D48, 255, type metadata accessor for LocalSpeechRecognitionService);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_434;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_441;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &unk_1ED937D48, 255, type metadata accessor for LocalSpeechRecognitionService);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC6020C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&unk_1EB56ACE0, 255, type metadata accessor for LSRAssets);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_544;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_551;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &unk_1EB56ACE0, 255, type metadata accessor for LSRAssets);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC602444(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56B9C0, 255, type metadata accessor for EARLanguageDetectorAudioBuffer);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_345;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_352;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56B9C0, 255, type metadata accessor for EARLanguageDetectorAudioBuffer);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC6027C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&unk_1EB56AD88, 255, type metadata accessor for EARSpeechRecognitionAudioBuffer);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_389;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_396;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &unk_1EB56AD88, 255, type metadata accessor for EARSpeechRecognitionAudioBuffer);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC602B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56B9C8, 255, type metadata accessor for EARLanguageDetector);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC602ED0;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_177;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC603BD0;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC602EE8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_183;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56B9C8, 255, type metadata accessor for EARLanguageDetector);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC602F00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56BA70, 255, type metadata accessor for EARTranscriptionEvaluator);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_321;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_328;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56BA70, 255, type metadata accessor for EARTranscriptionEvaluator);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC603284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56BA38, 255, type metadata accessor for EARFullPayloadCorrector);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_277;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_284;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56BA38, 255, type metadata accessor for EARFullPayloadCorrector);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC603608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&unk_1EB56AD10, 255, type metadata accessor for EAREuclid);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_210;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_217;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &unk_1EB56AD10, 255, type metadata accessor for EAREuclid);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

void sub_1AC60398C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t))
{
  sub_1AC604360(a5, a6, a7);
  v8 = [a2 _xpcConnection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6530];
  *(v9 + 16) = xmmword_1AC7A6D00;
  v11 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v8;
  v12 = sub_1AC79FF98();
  v14 = v13;
  swift_unknownObjectRelease();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v15 = sub_1AC79FDE8();
  __swift_project_value_buffer(v15, qword_1ED9386C8);

  oslog = sub_1AC79FDC8();
  v16 = sub_1AC7A05E8();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v17 = 136446466;
    v18 = sub_1AC5CFE74(v12, v14, &v23);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2082;
    swift_getObjectType();
    v19 = sub_1AC7A0F78();
    v21 = sub_1AC5CFE74(v19, v20, &v23);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_1AC5BC000, oslog, v16, "[%{public}s] is connection to remote %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70_1();
    MEMORY[0x1B26EAB10]();
    OUTLINED_FUNCTION_70_1();
    MEMORY[0x1B26EAB10]();
  }

  else
  {
  }
}

uint64_t sub_1AC603C04(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_130_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_167(v5);
  v7 = *(v6 + 80);
  return sub_1AC5FCA10(a1);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1B26EAB10);
  }

  return result;
}

uint64_t sub_1AC604184(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AC5C28A8(a1, a2);
  }

  return a1;
}

uint64_t sub_1AC604360(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_173Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);
  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
    v4 = *(v0 + 72);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AC6046A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OUTLINED_FUNCTION_130_0(a1, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_67_0();
  return sub_1AC5FCA68(a1, v15, v16, a4, a5, a2, a3);
}

uint64_t sub_1AC604748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = OUTLINED_FUNCTION_130_0(a1, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_67_0();

  return a4(a1);
}

uint64_t objectdestroy_164Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_170Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_40(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 24) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v2 + 16);

  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + v9, v6 | 7);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t result)
{
  *(v2 - 152) = v1;
  *(v2 - 144) = result;
  *(v2 - 184) = MEMORY[0x1E69E9820];
  return result;
}

__n128 OUTLINED_FUNCTION_20_0(__n128 *a1)
{
  *(v3 + 56) = a1;
  result = *(v3 + 24);
  a1[1].n128_u64[0] = v1;
  a1[1].n128_u64[1] = v2;
  a1[2] = result;
  a1[3].n128_u64[0] = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_34_1()
{
  result = *(v0 - 80);
  v2 = *(v0 - 64);
  return result;
}

void OUTLINED_FUNCTION_39_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1B26EAB10);
}

void OUTLINED_FUNCTION_46_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1AC5D1B54(&a9, v9);
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  v2 = *(*(v0 + 128) + 16);
}

uint64_t OUTLINED_FUNCTION_52()
{
  v2 = *(*v0 + 16);

  return sub_1AC5C1578(v2);
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t result)
{
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_1AC61C258(0, 1);
}

uint64_t OUTLINED_FUNCTION_86_1(_OWORD *a1)
{
  sub_1AC5C3968(a1, (v1 + 32));

  return sub_1AC5C3978();
}

uint64_t OUTLINED_FUNCTION_91_0()
{
  v2 = *(v0 - 144);
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97()
{
}

uint64_t OUTLINED_FUNCTION_101()
{
  v14 = v0[39];
  v15 = v0[40];
  v1 = v0[37];
  v2 = v0[36];
  v12 = v0[35];
  v13 = v0[38];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  result = v0[28];
  v10 = v0[26];
  v11 = *(v0[27] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;

  return sub_1AC79FC78();
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_1AC79FCA8();
}

uint64_t OUTLINED_FUNCTION_128()
{

  return sub_1AC61C258(1, 1);
}

uint64_t OUTLINED_FUNCTION_129_1(uint64_t a1)
{

  return sub_1AC61C258(a1, 1);
}

uint64_t OUTLINED_FUNCTION_135(_OWORD *a1, _OWORD *a2)
{
  sub_1AC5C3968(a1, a2);

  return sub_1AC5C3978();
}

uint64_t OUTLINED_FUNCTION_136()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_139()
{

  return sub_1AC79FCA8();
}

uint64_t OUTLINED_FUNCTION_145(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1AC5D1E4C(v4 + 32, v5 - 136, a3, a4);
}

uint64_t OUTLINED_FUNCTION_159()
{
}

uint64_t OUTLINED_FUNCTION_160()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_162()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
}

uint64_t OUTLINED_FUNCTION_166()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  result = v0[10];
  v6 = v0[8];
  v7 = *(v0[9] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_172_0()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  result = v0[18];
  v6 = v0[19];
  v7 = v0[16];
  v8 = *(v0[17] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_175_0()
{

  return sub_1AC79FCA8();
}

uint64_t OUTLINED_FUNCTION_176()
{

  return sub_1AC7A01D8();
}

uint64_t *OUTLINED_FUNCTION_177(uint64_t a1)
{
  *(v1 - 88) = a1;

  return __swift_allocate_boxed_opaque_existential_0Tm((v1 - 112));
}

void OUTLINED_FUNCTION_178()
{

  sub_1AC6EB2E4();
}

uint64_t OUTLINED_FUNCTION_179()
{
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[22];
}

uint64_t OUTLINED_FUNCTION_181(uint64_t a1)
{
  v1[2] = v3;
  v1[8] = a1;
  v1[3] = v2;
}

uint64_t OUTLINED_FUNCTION_186()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_187_0()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
}

uint64_t OUTLINED_FUNCTION_188()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_199()
{
  v2 = v0[10];
  v1 = v0[11];
  result = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = *(v0[7] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_203()
{

  return sub_1AC5CF764(0, v1, v0);
}

uint64_t OUTLINED_FUNCTION_204()
{
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = v0[28];
}

uint64_t OUTLINED_FUNCTION_205()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_206(uint64_t a1)
{
  *(v1 + 24) = v2;
  *(v1 + 16) = a1;
}

uint64_t OUTLINED_FUNCTION_207()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_208()
{

  return sub_1AC79FF58();
}

uint64_t OUTLINED_FUNCTION_209()
{
}

uint64_t sub_1AC60536C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1AC60F480(*(a1 + 16), 0);
  OUTLINED_FUNCTION_71_0();
  sub_1AC61AD08(v4, v5, v6, v7);
  OUTLINED_FUNCTION_90_0();
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

size_t sub_1AC6053DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1AC60F700(*(a1 + 16), 0, &qword_1EB56C018, &unk_1AC7A8480, MEMORY[0x1E6969770]);
  v4 = *(sub_1AC79FB18() - 8);
  v5 = sub_1AC61AE5C(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  sub_1AC5CA508();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1AC6054C8(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1AC60F504(*(a1 + 16), 0);
  OUTLINED_FUNCTION_71_0();
  sub_1AC61B0F4(v4, v5, v6, v7);
  OUTLINED_FUNCTION_90_0();
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

size_t sub_1AC605538(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1AC60F700(*(a1 + 16), 0, &qword_1EB56BF88, &qword_1AC7A8398, type metadata accessor for SpeechRecognizerSupportedFeatures);
  v4 = *(*(type metadata accessor for SpeechRecognizerSupportedFeatures() - 8) + 80);
  OUTLINED_FUNCTION_89_0();
  sub_1AC61B420(v7, v3 + v5, v2, a1);
  OUTLINED_FUNCTION_90_0();
  if (a1 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1AC605610(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1AC60F688(*(a1 + 16), 0);
  OUTLINED_FUNCTION_71_0();
  sub_1AC61B634(v4, v5, v6, v7);
  OUTLINED_FUNCTION_90_0();
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1AC605680(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1AC7A08E8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t static AssetInventory.reservedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC605C78();
}

uint64_t sub_1AC60572C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  *v3 = *v1;
  *(v2 + 24) = v6;
  *(v2 + 32) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC60582C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC6B5EC4();
}

uint64_t sub_1AC6058B8()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6059C4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);
  v2 = sub_1AC6053DC(*(v0 + 56));

  OUTLINED_FUNCTION_82();

  return v3(v2);
}

uint64_t sub_1AC605A30()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v3 = sub_1AC79FDE8();
  __swift_project_value_buffer(v3, qword_1ED9386C8);
  v4 = OUTLINED_FUNCTION_86();
  v5 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  if (OUTLINED_FUNCTION_151_0())
  {
    OUTLINED_FUNCTION_150();
    v6 = OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_149(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v7);
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v8, v9, "Failed to connect with remote process: %@");
    sub_1AC61BBF0(v6, &unk_1EB56C630);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_149_0();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1AC605B58()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 32);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v2 = sub_1AC79FDE8();
  __swift_project_value_buffer(v2, qword_1ED9386C8);
  v3 = OUTLINED_FUNCTION_86();
  v4 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  if (OUTLINED_FUNCTION_151_0())
  {
    OUTLINED_FUNCTION_150();
    v5 = OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_149(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v6);
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v7, v8, "Failed to connect with remote process: %@");
    sub_1AC61BBF0(v5, &unk_1EB56C630);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_149_0();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1AC605C94()
{
  OUTLINED_FUNCTION_85();
  if (qword_1EB56B498 != -1)
  {
    swift_once();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC60C804();
}

uint64_t sub_1AC605D4C()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  OUTLINED_FUNCTION_82();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1AC605E38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC605E5C, 0, 0);
}

uint64_t sub_1AC605E5C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_18_0(*(v0 + 16));
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 40) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_119_0(v4);

  return v7(v6);
}

uint64_t sub_1AC605F14()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC60600C()
{
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_82();
  return v2();
}

uint64_t sub_1AC606034()
{
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 48);
  return v2(0);
}

uint64_t sub_1AC60605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC606074()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_18_0(*(v1 + 24));
  v11 = v3;
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v1 + 48) = v6;
  *v6 = v7;
  v6[1] = sub_1AC606140;
  v8 = *(v1 + 32);
  v9 = *(v1 + 16);

  return v11(v9, v0);
}

uint64_t sub_1AC606140()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC606220(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC606238()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_18_0(*(v0 + 16));
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 40) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_119_0(v4);

  return v7(v6);
}

uint64_t sub_1AC6062F0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t static AssetInventory.reserve(locale:)()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC605C78();
}

uint64_t sub_1AC606470()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v1;
  *(v2 + 48) = v6;
  *(v2 + 56) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC606570()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_30(&unk_1AC7A7E68);
  v9 = v3;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_179_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC606638;
  v7 = v0[6];

  return v9(&unk_1AC7A7E60, v2);
}

uint64_t sub_1AC606638()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v5[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[8];
    v15 = v5[6];

    OUTLINED_FUNCTION_82();

    return v16(v3 & 1);
  }
}

uint64_t sub_1AC606778()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 56);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  type metadata accessor for SFSpeechError(0);
  OUTLINED_FUNCTION_142_0();
  if (swift_dynamicCast())
  {

    swift_willThrow();
    OUTLINED_FUNCTION_55_1();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v3 = sub_1AC79FDE8();
    __swift_project_value_buffer(v3, qword_1ED9386C8);
    v4 = OUTLINED_FUNCTION_86();
    v5 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (OUTLINED_FUNCTION_151_0())
    {
      OUTLINED_FUNCTION_150();
      v6 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v7 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v7);
      OUTLINED_FUNCTION_59(&dword_1AC5BC000, v8, v9, "Failed to connect with remote process: %@");
      sub_1AC61BBF0(v6, &unk_1EB56C630);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    else
    {
    }

    OUTLINED_FUNCTION_55_1();
  }

  OUTLINED_FUNCTION_149_0();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1AC606908()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 80);
  *(v0 + 16) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  type metadata accessor for SFSpeechError(0);
  OUTLINED_FUNCTION_142_0();
  if (swift_dynamicCast())
  {

    swift_willThrow();
    OUTLINED_FUNCTION_55_1();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v5 = sub_1AC79FDE8();
    __swift_project_value_buffer(v5, qword_1ED9386C8);
    v6 = OUTLINED_FUNCTION_86();
    v7 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (OUTLINED_FUNCTION_151_0())
    {
      OUTLINED_FUNCTION_150();
      v8 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v9);
      OUTLINED_FUNCTION_59(&dword_1AC5BC000, v10, v11, "Failed to connect with remote process: %@");
      sub_1AC61BBF0(v8, &unk_1EB56C630);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    else
    {
    }

    OUTLINED_FUNCTION_55_1();
  }

  OUTLINED_FUNCTION_149_0();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1AC606AAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC606B4C;

  return sub_1AC6B63C0();
}

uint64_t sub_1AC606B4C()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t static AssetInventory.release(reservedLocale:)()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC605C78();
}

uint64_t sub_1AC606D08()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  *(v2 + 32) = v6;
  *(v2 + 40) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC606E08()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_30(&unk_1AC7A7E68);
  v7 = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1AC606ED4;
  v5 = v0[4];

  return v7(&unk_1AC7A7E80, v2);
}

uint64_t sub_1AC606ED4()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v5[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[6];
    v15 = v5[4];

    OUTLINED_FUNCTION_82();

    return v16(v3 & 1);
  }
}

uint64_t sub_1AC607010()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 40);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v2 = sub_1AC79FDE8();
  __swift_project_value_buffer(v2, qword_1ED9386C8);
  v3 = OUTLINED_FUNCTION_86();
  v4 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  if (OUTLINED_FUNCTION_151_0())
  {
    OUTLINED_FUNCTION_150();
    v5 = OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_149(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v6);
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v7, v8, "Failed to connect with remote process: %@");
    sub_1AC61BBF0(v5, &unk_1EB56C630);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_149_0();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1AC607138()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[8];
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v4 = sub_1AC79FDE8();
  __swift_project_value_buffer(v4, qword_1ED9386C8);
  v5 = OUTLINED_FUNCTION_86();
  v6 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  if (OUTLINED_FUNCTION_151_0())
  {
    OUTLINED_FUNCTION_150();
    v7 = OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_149(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v8);
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v9, v10, "Failed to connect with remote process: %@");
    sub_1AC61BBF0(v7, &unk_1EB56C630);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_149_0();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1AC607274(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC607314;

  return sub_1AC6B68C0();
}

uint64_t sub_1AC607314()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1AC607448()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_44();
  return v1();
}

uint64_t AssetInventory.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC607520()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t static AssetInventory.status(forModules:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6075D4()
{
  v1 = 0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  v4 = v2 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v16 = v4;
LABEL_2:
  v0[5] = v5;
  v6 = (v4 + 16 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DBF8]();
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v7 = *v6;
    v6 += 2;
    swift_getObjectType();
    ++v1;
    if (dynamic_cast_existential_1_conditional(v7))
    {
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_153_1();
        v5 = v8;
      }

      if (*(v5 + 16) >= *(v5 + 24) >> 1)
      {
        sub_1AC60DAF8();
        v5 = v9;
      }

      OUTLINED_FUNCTION_174_0();
      v4 = v16;
      goto LABEL_2;
    }
  }

  v10 = swift_task_alloc();
  v0[6] = v10;
  *(v10 + 16) = v5;
  v11 = *(MEMORY[0x1E69E87D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  v0[7] = v12;
  *v12 = v13;
  v12[1] = sub_1AC60779C;
  OUTLINED_FUNCTION_164_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1AC60779C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC60789C()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 112))
  {
    sub_1AC608A00(*(v0 + 40), &qword_1EB56BFA8, &qword_1AC7A83B8);
    sub_1AC608C18();
    *(v0 + 64) = v1;

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_179_0(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_132_1(v3);

    return static AssetInventory.reservedLocales.getter();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);

    *v7 = 0;
    OUTLINED_FUNCTION_44();

    return v8();
  }
}

uint64_t sub_1AC60798C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC607A74()
{
  OUTLINED_FUNCTION_169();
  v2 = v1[10];
  v3 = v1[8];
  sub_1AC608DF4();
  sub_1AC6096F8(v4, v3);
  OUTLINED_FUNCTION_108_0();

  v5 = v1[5];
  if (v0)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
    v8 = *(v5 + 16);
    v9 = v5 + 40;
LABEL_3:
    v29 = v7;
    v1[11] = v7;
    v10 = (v9 + 16 * v6);
    while (v8 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return MEMORY[0x1EEE6DBF8]();
      }

      v11 = v10 + 2;
      ++v6;
      v12 = *(v10 - 1);
      v13 = *v10;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 32);
      swift_unknownObjectRetain();
      v16 = v15(ObjectType, v13);
      v17 = swift_unknownObjectRelease();
      v10 = v11;
      if (v16)
      {
        MEMORY[0x1B26E8CF0](v17);
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AC7A0178();
        }

        sub_1AC7A0198();
        v7 = v31;
        v9 = v5 + 40;
        goto LABEL_3;
      }
    }

    v22 = v1[5];

    v23 = swift_task_alloc();
    v1[12] = v23;
    *(v23 + 16) = v29;
    v24 = *(MEMORY[0x1E69E87D8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    v1[13] = v25;
    *v25 = v26;
    v25[1] = sub_1AC607CC0;
    v27 = v1[2];
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_115();

    return MEMORY[0x1EEE6DBF8]();
  }

  else
  {
    v18 = v1[2];
    v19 = v1[5];

    *v18 = 1;
    OUTLINED_FUNCTION_44();

    return v20();
  }
}

uint64_t sub_1AC607CC0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[11];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  OUTLINED_FUNCTION_44();

  return v7();
}

uint64_t sub_1AC607DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C000, &qword_1AC7A8450);
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC607EEC, 0, 0);
}

uint64_t sub_1AC607EEC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = **(v0 + 80);
    v3 = (v1 + 32);
    v4 = sub_1AC7A0288();
    v27 = v4;
    do
    {
      v6 = *(v0 + 120);
      v5 = *(v0 + 128);
      v29 = *v3;
      v7 = OUTLINED_FUNCTION_134_0();
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      *(v10 + 24) = 0;
      *(v10 + 32) = v29;
      sub_1AC61BB80(v5, v6);
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v6, 1, v4);
      swift_unknownObjectRetain_n();
      v12 = *(v0 + 120);
      if (v6 == 1)
      {
        sub_1AC61BBF0(*(v0 + 120), &qword_1EB56BE70);
      }

      else
      {
        sub_1AC7A0278();
        (*(*(v4 - 8) + 8))(v12, v4);
      }

      if (*v11)
      {
        v13 = *(v10 + 24);
        v14 = *v11;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_1AC7A01B8();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      OUTLINED_FUNCTION_99();
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_1AC7A8468;
      *(v18 + 24) = v10;

      if (v17 | v15)
      {
        v19 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v19;
      *(v0 + 64) = v28;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1AC61BBF0(v20, &qword_1EB56BE70);
      ++v3;
      --v2;
      v4 = v27;
    }

    while (v2);
  }

  v21 = *(v0 + 112);
  v22 = **(v0 + 80);
  sub_1AC7A0208();
  sub_1AC61C1F0(&qword_1EB56C008, &unk_1EB56C000);
  v23 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 136) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_72_0(v24);

  return MEMORY[0x1EEE6D8C8](v0 + 152);
}

uint64_t sub_1AC6081FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC60830C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 152);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v7 = v1 == 2;
    v8 = *(v0 + 120);
    v9 = *(v0 + 128);
    v10 = *(v0 + 72);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *v10 = v7;

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_149_0();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1AC61C1F0(&qword_1EB56C008, &unk_1EB56C000);
    v2 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 136) = v3;
    *v3 = v4;
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6D8C8](v5);
  }
}

uint64_t sub_1AC608444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  ObjectType = swift_getObjectType();
  v8 = *(a5 + 40);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1AC60856C;

  return v12(ObjectType, a5);
}

uint64_t sub_1AC60856C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC608654()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_44();
  return v1();
}

uint64_t sub_1AC608694(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_122_0();
    sub_1AC6314B8(v4, v5, v6);
    v3 = v13;
    v7 = (v1 + 32);
    do
    {
      v11 = *v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
      swift_dynamicCast();
      v13 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1AC6314B8(v8 > 1, v9 + 1, 1);
        v3 = v13;
      }

      *(v3 + 16) = v9 + 1;
      sub_1AC5C3968(&v12, (v3 + 32 * v9 + 32));
      ++v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AC608794(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1AC7A08E8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1AC6314B8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v15;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = OUTLINED_FUNCTION_161();
        MEMORY[0x1B26E95B0](v8);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      sub_1AC5CF764(0, &qword_1EB56AB30, 0x1E69CE8C0);
      swift_dynamicCast();
      OUTLINED_FUNCTION_180_0();
      if (v10)
      {
        OUTLINED_FUNCTION_158_0();
        sub_1AC6314B8(v11, v12, v13);
        v5 = v15;
      }

      ++v7;
      *(v5 + 16) = v1;
      sub_1AC5C3968(&v14, (v5 + 32 * v2 + 32));
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6088E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1AC6314F8(0, v1, 0);
    v2 = v24;
    do
    {
      v23 = *(a1 + 32);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD88, &qword_1AC7B1D40);
      v4 = OUTLINED_FUNCTION_77();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v6 = OUTLINED_FUNCTION_146_0();
      v15 = OUTLINED_FUNCTION_137_0(v6, v7, v8, v9, v10, v11, v12, v13, v22.n128_i64[0], v22.n128_i64[1], v23, *(&v23 + 1), v14);
      if (v16)
      {
        OUTLINED_FUNCTION_158_0();
        v22 = v17;
        sub_1AC6314F8(v18, v19, v20);
        v15 = v22;
        v2 = v24;
      }

      OUTLINED_FUNCTION_171_1(v15);
      --v1;
    }

    while (v1);
  }

  return v2;
}