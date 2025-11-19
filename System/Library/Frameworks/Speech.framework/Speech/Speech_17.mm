void sub_1AC72A354()
{
  OUTLINED_FUNCTION_104();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_20_15();
  v10 = OUTLINED_FUNCTION_40(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17_11();
  v15 = OUTLINED_FUNCTION_515();
  sub_1AC5DC36C(v15, v16);
  OUTLINED_FUNCTION_96(v1, 1, v9);
  if (v17)
  {
    sub_1AC5DC870(v1);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  }

  else
  {
    v18 = *(v12 + 32);
    v19 = OUTLINED_FUNCTION_429();
    v20(v19);
    v21 = *(v0 + 16);
    sub_1AC647E74();
    (*(v12 + 8))(v2, v9);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC72A4C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 24);
  sub_1AC707118("ES: Time to Word", 16, 2, a1, a2, a3);
  OUTLINED_FUNCTION_3_14();
  return sub_1AC7077F4(v7, v8, v9, v10, v11, a4);
}

uint64_t sub_1AC72A538(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result)
  {
    v5 = *(v3 + 40);
    v6 = sub_1AC76244C(a2);
    sub_1AC762044(a3, v6);
  }

  return result;
}

uint64_t sub_1AC72A598(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_1AC72A5D4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AC72A598(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AC72A600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC727554(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AC72A62C(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  TaskHint.init(taskString:)(v4);
  if (v10 == 16)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_1AC79FF58();
    v8 = [v6 BOOLForKey_];

    LOBYTE(v5) = 0;
    if (v10 <= 0xFu && (v8 & 1) == 0)
    {
      v5 = 0xCE80u >> v10;
    }
  }

  return v5 & 1;
}

void *Instrumentation.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t Instrumentation.__deallocating_deinit()
{
  Instrumentation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *sub_1AC72A780()
{
  v1 = v0;
  type metadata accessor for SelfLoggingHelper();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() sharedStream];
  v1[2] = v2;
  v3 = type metadata accessor for SignpostHelper();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v1[3] = sub_1AC706F98();
  type metadata accessor for PowerlogHelper();
  v1[4] = swift_allocObject();
  type metadata accessor for CoreAnalyticsLoggingHelper();
  v1[5] = swift_allocObject();
  type metadata accessor for OndeviceRecordHelper();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v1[6] = v6;
  return v1;
}

uint64_t sub_1AC72A850(uint64_t a1, uint64_t a2, void *a3, int a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v14 = v13;
  v15 = a5;
  HIDWORD(v162) = a4;
  v168 = a3;
  v164 = *&a9;
  v166 = *&a10;
  v160 = *&a8;
  v173 = *MEMORY[0x1E69E9840];
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 36) = 1;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 60) = 1;
  *(v13 + 72) = 0;
  *(v13 + 80) = 0;
  *(v13 + 64) = 0;
  *(v13 + 85) = 0;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0;
  *(v13 + 136) = 1;
  *(v13 + 144) = 0;
  *(v13 + 152) = 1;
  *(v13 + 156) = 0;
  *(v13 + 160) = 1;
  *(v13 + 161) = 0;
  *(v13 + 163) = 0;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  *(v13 + 184) = xmmword_1AC7AC470;
  *(v13 + 200) = xmmword_1AC7AC470;
  *(v13 + 224) = 0;
  *(v13 + 216) = 0;
  v158 = (v13 + 216);
  *(v13 + 240) = 0;
  v22 = (v13 + 240);
  *(v13 + 232) = 0xE000000000000000;
  *(v13 + 248) = 0;
  *(v13 + 256) = 0u;
  *(v13 + 272) = 0u;
  *(v13 + 288) = 0u;
  *(v13 + 304) = 0;
  *(v13 + 312) = xmmword_1AC7B2030;
  *(v13 + 328) = xmmword_1AC7B2030;
  *(v13 + 344) = 0xE000000000000000;
  *(v13 + 352) = 0;
  *(v13 + 356) = 1;
  *(v13 + 360) = 0;
  *(v13 + 364) = 1;
  if (a1)
  {

    v15 = a5;
    v24 = sub_1AC6DC828(0xD000000000000015, 0x80000001AC7B9A00, a1);
    v25 = *(v13 + 24);
    *(v13 + 16) = v24;
    *(v13 + 24) = v26;

    v27 = sub_1AC6DC828(0xD000000000000011, 0x80000001AC7B9A20, a1);
    v28 = *(v13 + 48);
    *(v13 + 40) = v27;
    *(v13 + 48) = v29;

    v30 = sub_1AC6DC828(0x646F6365642D4D50, 0xEA00000000007265, a1);
    v31 = *(v13 + 104);
    *(v13 + 96) = v30;
    *(v13 + 104) = v32;

    v33 = sub_1AC6DC828(0x7475706E692D4D50, 0xE800000000000000, a1);
    v34 = *(v13 + 192);
    *(v13 + 184) = v33;
    *(v13 + 192) = v35;

    v36 = sub_1AC6DC828(0x757074756F2D4D50, 0xE900000000000074, a1);
    v37 = *(v13 + 208);
    *(v13 + 200) = v36;
    *(v13 + 208) = v38;

    v39 = sub_1AC6DC828(0x64657355454E41, 0xE700000000000000, a1);
    v40 = *(v13 + 232);
    *(v13 + 224) = v39;
    *(v13 + 232) = v41;

    v42 = sub_1AC6DC828(0xD00000000000001BLL, 0x80000001AC7B9A40, a1);
    v43 = *(v13 + 312);
    *(v13 + 304) = v42;
    *(v13 + 312) = v44;

    v45 = OUTLINED_FUNCTION_33_11("rescoringDeliberationResultOriginalTranscript", v155, v158, v160, v162, v164, v166, v168, a1);
    v46 = *(v13 + 328);
    *(v13 + 320) = v45;
    *(v13 + 328) = v47;

    v48 = OUTLINED_FUNCTION_33_11("rescoringDeliberationResultModifiedTranscript", v156, v159, v161, v163, v165, v167, v169, v171);
    v50 = v49;

    v51 = *(v13 + 344);
    *(v13 + 336) = v48;
    *(v13 + 344) = v50;
  }

  if (a2)
  {

    v52 = sub_1AC6DC87C(0xD00000000000001BLL, 0x80000001AC7B9960, a2);
    v53 = v52;
    v54 = 0;
    v55 = 0;
    if (v52)
    {
      [v52 floatValue];
      v55 = v56;
    }

    OUTLINED_FUNCTION_24_16();
    *(v13 + 32) = v55;
    *(v13 + 36) = v57;
    v58 = sub_1AC6DC87C(5394003, 0xE300000000000000, a2);
    v59 = v58;
    if (v58)
    {
      [v58 floatValue];
      v54 = v60;
    }

    OUTLINED_FUNCTION_24_16();
    *(v13 + 56) = v54;
    *(v13 + 60) = v61;
    v62 = sub_1AC6DC87C(0x6573557265676145, 0xE900000000000064, a2);
    v63 = v168;
    if (v62)
    {
      v64 = OUTLINED_FUNCTION_36_10(v62);
    }

    else
    {
      v64 = 2;
    }

    *(v14 + 80) = v64;
    v66 = OUTLINED_FUNCTION_35_12(0xD000000000000011, "cpuRealTimeFactor");
    v67 = v66;
    if (v66)
    {
      v68 = [v66 unsignedIntValue];
    }

    else
    {
      v68 = 0;
    }

    OUTLINED_FUNCTION_24_16();
    *(v14 + 88) = v68;
    *(v14 + 92) = v69;
    v70 = *MEMORY[0x1E699B9B8];
    v71 = sub_1AC79FF68();
    v73 = sub_1AC6DC87C(v71, v72, a2);

    if (v73)
    {
      [v73 doubleValue];
      v65 = v74;
    }

    else
    {
      v65 = 0.0;
    }

    v75 = sub_1AC6DC87C(0x7355656D4C74696ALL, 0xEA00000000006465, a2);
    if (v75)
    {
      v76 = v75;
      v77 = [v75 BOOLValue];
    }

    else
    {
      v77 = 2;
    }

    *v22 = v77;
    v78 = sub_1AC6DC87C(0x7355656D4C746F61, 0xEA00000000006465, a2);
    if (v78)
    {
      v79 = OUTLINED_FUNCTION_36_10(v78);
    }

    else
    {
      v79 = 2;
    }

    *(v14 + 241) = v79;
    v80 = OUTLINED_FUNCTION_5_19();
    v82 = sub_1AC6DC87C(v80, v81, a2);
    if (v82)
    {
      v83 = OUTLINED_FUNCTION_36_10(v82);
    }

    else
    {
      v83 = 2;
    }

    *(v14 + 242) = v83;
    v84 = OUTLINED_FUNCTION_5_19();
    v86 = sub_1AC6DC87C(v84, v85, a2);
    if (v86)
    {
      v87 = OUTLINED_FUNCTION_36_10(v86);
    }

    else
    {
      v87 = 2;
    }

    *(v14 + 243) = v87;
    v88 = OUTLINED_FUNCTION_35_12(0xD00000000000001ELL, "AverageActiveTokensPerFrame");
    v89 = v88;
    if (v88)
    {
      v90 = [v88 unsignedIntValue];
    }

    else
    {
      v90 = 0;
    }

    OUTLINED_FUNCTION_24_16();
    *(v14 + 244) = v90;
    *(v14 + 248) = v91;
    v92 = OUTLINED_FUNCTION_35_12(0xD000000000000023, "numContextualBiasingEmbeddings");
    v93 = v92;
    v94 = 0;
    v95 = 0;
    if (v92)
    {
      [v92 floatValue];
      v95 = v96;
    }

    OUTLINED_FUNCTION_24_16();
    *(v14 + 352) = v95;
    v22[116] = v97;
    v98 = OUTLINED_FUNCTION_35_12(0xD000000000000025, "ationResultDuration");

    if (v98)
    {
      [v98 floatValue];
      v94 = v99;
    }

    OUTLINED_FUNCTION_24_16();
    *(v14 + 360) = v94;
    v22[124] = v100;
  }

  else
  {
    v65 = 0.0;
    v63 = v168;
  }

  *(v14 + 64) = a6;
  *(v14 + 72) = a7 * 1000.0;
  if (v63)
  {
    v101 = sub_1AC72B8C0(v63);
    if (v101)
    {
      v102 = v101;
      v103 = *(v14 + 112);
      *(v14 + 112) = v101;

      *(v14 + 156) = 0;
      *(v14 + 160) = 0;
      v104 = *(v102 + 16);
      if (v104)
      {
        v157 = v15;
        v105 = 0;
        v106 = 0.0;
        while (v105 < *(v102 + 16))
        {
          v107 = *(v102 + 8 * v105 + 32);
          if (v107 >> 62)
          {
            if (v107 < 0)
            {
              v122 = *(v102 + 8 * v105 + 32);
            }

            v108 = sub_1AC7A08E8();
          }

          else
          {
            v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v108 == 2)
          {
            if ((v107 & 0xC000000000000001) != 0)
            {

              v110 = MEMORY[0x1B26E95B0](0, v107);
            }

            else
            {
              if (!*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_102;
              }

              v109 = *(v107 + 32);

              v110 = v109;
            }

            v111 = v110;
            v112 = [v110 unsignedLongLongValue];

            if ((v107 & 0xC000000000000001) != 0)
            {
              v113 = MEMORY[0x1B26E95B0](1, v107);
            }

            else
            {
              if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                goto LABEL_105;
              }

              v113 = *(v107 + 40);
            }

            v114 = v113;
            v115 = [v113 unsignedLongLongValue];

            v116 = v115 >= v112;
            v117 = v115 - v112;
            if (!v116)
            {
              goto LABEL_103;
            }

            info = 0;
            mach_timebase_info(&info);
            if (info.numer)
            {
              LODWORD(v118) = info.denom;
              v119 = v118 / info.numer * 1000000000.0;
            }

            else
            {
              v119 = 0.0;
            }

            if (*(v14 + 160))
            {
              goto LABEL_113;
            }

            v120 = *(v14 + 156);
            v116 = __CFADD__(v120, 1);
            v121 = v120 + 1;
            if (v116)
            {
              goto LABEL_104;
            }

            v106 = v106 + v117 / v119;
            *(v14 + 156) = v121;
          }

          if (v104 == ++v105)
          {

            v15 = v157;
            v63 = v168;
            goto LABEL_70;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

LABEL_70:
      OUTLINED_FUNCTION_13_12();
      if (!(v126 ^ v127 | v125))
      {
        goto LABEL_109;
      }

      if (v124 <= -1.0)
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      if (v124 >= 1.84467441e19)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      *(v14 + 144) = v124;
      *(v14 + 152) = 0;
    }

    else
    {
    }

    v128 = sub_1AC72B92C(v63);
    if (v128)
    {
      v129 = v128;
      v130 = sub_1AC61C24C(v128);
      if (v130)
      {
        v131 = v130;
        info = MEMORY[0x1E69E7CC0];
        sub_1AC6312E0();
        if (v131 < 0)
        {
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
        }

        v132 = 0;
        v133 = info;
        do
        {
          if ((v129 & 0xC000000000000001) != 0)
          {
            v134 = OUTLINED_FUNCTION_23_17();
            v135 = MEMORY[0x1B26E95B0](v134);
          }

          else
          {
            v135 = *(v129 + 8 * v132 + 32);
          }

          v136 = v135;
          [v135 doubleValue];
          v138 = v137;

          info = v133;
          v139 = *(*&v133 + 16);
          if (v139 >= *(*&v133 + 24) >> 1)
          {
            sub_1AC6312E0();
            v133 = info;
          }

          ++v132;
          *(*&v133 + 16) = v139 + 1;
          *(*&v133 + 8 * v139 + 32) = v138;
        }

        while (v131 != v132);
      }

      else
      {

        v133 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v133 = 0;
    }

    v140 = *(v14 + 120);
    *(v14 + 120) = v133;

    v123 = 0.0;
    if (v133)
    {
      v141 = *(*&v133 + 16);
      if (v141)
      {
        v142 = 0.0;
        v143 = 32;
        do
        {
          v142 = v142 + *(*&v133 + v143);
          v143 += 8;
          --v141;
        }

        while (v141);

        v123 = v142 * 1000.0;
      }

      else
      {
      }
    }

    v144 = [v168 itnDurationInNs];
    v145 = sub_1AC7A0ED8();

    *(v14 + 128) = v145;
    *(v14 + 136) = 0;
    *(v14 + 161) = [v168 isEmojiPersonalizationUsed];
    *(v14 + 162) = [v168 isEmojiDisambiguationUsed];
    *(v14 + 163) = [v168 isEmojiExpectedButNotRecognized];
    v146 = sub_1AC72B99C(v168);
    v147 = *(v14 + 168);
    *(v14 + 168) = v146;

    [v168 cpuMillionInstructionsPerSecond];
    v149 = v148;
    v150 = v148;

    if ((*&v150 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_106;
    }

    if (v149 <= -1.0)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if (v149 >= 1.84467441e19)
    {
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    *v158 = v149;
  }

  else
  {

    v123 = 0.0;
  }

  v151 = *(v14 + 72);
  if (v151 > 0.0)
  {
    v152 = v65 / (v151 - v123);
    *(v14 + 84) = v152;
  }

  *(v14 + 176) = BYTE4(v162) & 1;
  *(v14 + 81) = v15 & 1;
  *(v14 + 83) = v15 & 1;
  *(v14 + 82) = 0;
  *(v14 + 256) = v160;
  *(v14 + 264) = v164;
  *(v14 + 272) = v166;
  *(v14 + 280) = a11;
  *(v14 + 288) = a12;
  *(v14 + 296) = a13;
  v153 = *MEMORY[0x1E69E9840];
  return v14;
}

void *RequestEndMetrics.deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[13];

  v4 = v0[14];

  v5 = v0[15];

  v6 = v0[21];

  v7 = v0[24];

  v8 = v0[26];

  v9 = v0[29];

  v10 = v0[39];

  v11 = v0[41];

  v12 = v0[43];

  return v0;
}

uint64_t RequestEndMetrics.__deallocating_deinit()
{
  RequestEndMetrics.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 365, 7);
}

uint64_t destroy for RequestParameters(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];

  v5 = a1[8];
}

uint64_t initializeWithCopy for RequestParameters(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);

  return a1;
}

uint64_t assignWithCopy for RequestParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  return a1;
}

uint64_t assignWithTake for RequestParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v8 = *(a2 + 40);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  *(a1 + 48) = *(a2 + 48);
  v10 = *(a2 + 64);
  v11 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v10;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  return a1;
}

uint64_t getEnumTagSinglePayload for RequestParameters(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 75))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for RequestParameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Instrumentation.CompletionState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1AC72B86C()
{
  result = qword_1EB56DBA8[0];
  if (!qword_1EB56DBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB56DBA8);
  }

  return result;
}

uint64_t sub_1AC72B8C0(void *a1)
{
  v1 = [a1 allItnRunIntervals];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t sub_1AC72B92C(void *a1)
{
  v1 = [a1 pauseDurations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t sub_1AC72B99C(void *a1)
{
  v1 = [a1 recognizedEmojis];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t OUTLINED_FUNCTION_20_15()
{

  return sub_1AC79F958();
}

void OUTLINED_FUNCTION_25_14()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t sub_1AC72BAD4()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  MEMORY[0x1B26EABE0](v0 + 24);
  MEMORY[0x1B26EABE0](v0 + 32);
  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_1AC72BB0C()
{
  sub_1AC72BAD4();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1AC72BB58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1AC6315E0(0, v1, 0);
  v2 = v28;
  result = sub_1AC6C2CA0(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v23 = v3 + 64;
  v24 = v1;
  v25 = v3;
  v26 = v3 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v11 = v6;
      v27 = v5;
      v12 = *(*(v3 + 48) + 8 * v7);
      result = sub_1AC61C264(v12);
      v14 = *(v28 + 16);
      v13 = *(v28 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1AC6315E0(v13 > 1, v14 + 1, 1);
      }

      *(v28 + 16) = v14 + 1;
      *(v28 + 8 * v14 + 32) = v12;
      if (v11)
      {
        goto LABEL_29;
      }

      v3 = v25;
      v9 = v26;
      v15 = 1 << *(v25 + 32);
      if (v7 >= v15)
      {
        goto LABEL_26;
      }

      v16 = *(v26 + 8 * v10);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v25 + 36) != v27)
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (v23 + 8 * v10);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1AC637E98(v7, v27, 0);
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        result = sub_1AC637E98(v7, v27, 0);
      }

LABEL_19:
      if (++v8 == v24)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v25 + 36);
      v7 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1AC72BD80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    sub_1AC63159C();
    v4 = sub_1AC6C2CA0(a1);
    v5 = v21;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_25;
        }

        v9 = *(*(a1 + 48) + v4);
        v10 = *(v22 + 16);
        if (v10 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          v19 = v3;
          sub_1AC63159C();
          v3 = v19;
          v2 = v20;
          v7 = a1 + 56;
          v5 = v21;
        }

        *(v22 + 16) = v10 + 1;
        *(v22 + v10 + 32) = v9;
        if (v3)
        {
          goto LABEL_29;
        }

        v11 = 1 << *(a1 + 32);
        if (v4 >= v11)
        {
          goto LABEL_26;
        }

        v12 = *(v7 + 8 * v8);
        if ((v12 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v13 = v12 & (-2 << (v4 & 0x3F));
        if (v13)
        {
          v11 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v8 << 6;
          v15 = v8 + 1;
          v16 = (a1 + 64 + 8 * v8);
          while (v15 < (v11 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_1AC637E98(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v21;
              v11 = __clz(__rbit64(v17)) + v14;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v21;
        }

LABEL_19:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v11;
        if (v11 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1AC72BFC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    sub_1AC631558();
    v4 = sub_1AC6C2CA0(a1);
    v5 = v21;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_25;
        }

        v9 = *(*(a1 + 48) + v4);
        v10 = *(v22 + 16);
        if (v10 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          v19 = v3;
          sub_1AC631558();
          v3 = v19;
          v2 = v20;
          v7 = a1 + 56;
          v5 = v21;
        }

        *(v22 + 16) = v10 + 1;
        *(v22 + v10 + 32) = v9;
        if (v3)
        {
          goto LABEL_29;
        }

        v11 = 1 << *(a1 + 32);
        if (v4 >= v11)
        {
          goto LABEL_26;
        }

        v12 = *(v7 + 8 * v8);
        if ((v12 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v13 = v12 & (-2 << (v4 & 0x3F));
        if (v13)
        {
          v11 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v8 << 6;
          v15 = v8 + 1;
          v16 = (a1 + 64 + 8 * v8);
          while (v15 < (v11 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_1AC637E98(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v21;
              v11 = __clz(__rbit64(v17)) + v14;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v21;
        }

LABEL_19:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v11;
        if (v11 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1AC72C200(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for CommandRecognizer.Interpretation(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  v21 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AC7A08E8())
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1AC631704();
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v24;
    v20 = i;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B26E95B0](v12, a3);
      }

      else
      {
        if (v12 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      i = v15;
      v23 = v15;
      a1(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v13;
      v16 = *(v13 + 16);
      if (v16 >= *(v13 + 24) >> 1)
      {
        sub_1AC631704();
        v13 = v24;
      }

      *(v13 + 16) = v16 + 1;
      v17 = *(v21 + 80);
      OUTLINED_FUNCTION_89_0();
      v19 = *(v18 + 72);
      sub_1AC740748();
      ++v12;
      if (v14 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1AC72C424(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v5 = sub_1AC79F558();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDB0, &qword_1AC7B26B0);
  v10 = *(*(v60 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v60);
  v51 = (v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v50 = v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDB8, &unk_1AC7B26B8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v49 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v42 - v18;
  v20 = sub_1AC79F568();
  v21 = sub_1AC73F7DC(&qword_1EB56C480, MEMORY[0x1E69687C8]);
  v61 = a1;
  v22 = sub_1AC7A04C8();
  result = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v63 = MEMORY[0x1E69E7CC0];
    v54 = v22;
    sub_1AC7A0A88();
    result = sub_1AC7A0498();
    v45 = *(v14 + 36);
    *&v19[v45] = 0;
    if ((v54 & 0x8000000000000000) == 0)
    {
      v59 = v21;
      v42[1] = v3;
      v24 = 0;
      v25 = 0;
      v48 = (v6 + 8);
      v44 = v9;
      v43 = v5;
      v46 = v20;
      v47 = v14;
      while (!__OFADD__(v24, 1))
      {
        v55 = v24 + 1;
        v56 = v24;
        v57 = *(v60 + 48);
        v58 = v25;
        sub_1AC7A0498();
        sub_1AC73F7DC(&qword_1EB56DDC0, MEMORY[0x1E69687B0]);
        v26 = sub_1AC79FEC8();
        v27 = *v48;
        result = (*v48)(v9, v5);
        if ((v26 & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1AC7A04E8();
        v28 = sub_1AC79FEB8();
        result = v27(v9, v5);
        if ((v28 & 1) == 0)
        {
          goto LABEL_13;
        }

        v29 = sub_1AC7A0518();
        v31 = v30;
        v32 = sub_1AC79F538();
        v33 = *(v32 - 8);
        v34 = v50;
        v35 = v57;
        (*(v33 + 16))(&v50[v57], v31, v32);
        v29(v62, 0);
        v36 = v51;
        v37 = v58;
        *v51 = v58;
        v38 = *(v60 + 48);
        (*(v33 + 32))(v36 + v38, &v34[v35], v32);
        v52(v37, v36 + v38);
        sub_1AC5C720C(v36, &qword_1EB56DDB0, &qword_1AC7B26B0);
        sub_1AC7A0A68();
        v39 = *(v63 + 16);
        sub_1AC7A0A98();
        sub_1AC7A0AA8();
        sub_1AC7A0A78();
        v40 = v49;
        sub_1AC73F820(v19, v49);
        sub_1AC7A04D8();
        v41 = *(v40 + *(v47 + 36));
        result = sub_1AC5C720C(v40, &qword_1EB56DDB8, &unk_1AC7B26B8);
        v25 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_14;
        }

        *&v19[v45] = v25;
        v24 = v56 + 1;
        v5 = v43;
        v9 = v44;
        if (v55 == v54)
        {
          sub_1AC5C720C(v19, &qword_1EB56DDB8, &unk_1AC7B26B8);
          return v63;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC72C984(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1AC631838(0, v5, 0);
  v6 = v17;
  v8 = *(sub_1AC79F5C8() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v16, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1AC631838(v12 > 1, v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC72CB10(uint64_t result, uint64_t (*a2)(char *, void))
{
  v3 = result;
  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      result = a2(&v12, *(*(v3 + 48) + (v11 | (v10 << 6))));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1AC72CBFC(uint64_t a1, void (*a2)(char *, void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      a2(&v7, v5);
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1AC72CC70(uint64_t a1, void (*a2)(char *, void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      a2(&v7, v5);
      --v2;
    }

    while (v2);
  }
}

void sub_1AC72CCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_104();
  v64 = v26;
  v61 = v27;
  v62 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v63 = v35;
  v37 = v36;
  v39 = v38;
  v59 = a25;
  v60 = a26;
  v57[1] = a23;
  v58 = a24;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v57 - v44;
  v65 = v57 - v44;
  v46 = sub_1AC7A0288();
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v46);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  *(v47 + 32) = v39;
  *(v47 + 40) = v37;
  *(v47 + 48) = v34;
  *(v47 + 56) = v32;
  v49 = v61;
  v48 = v62;
  *(v47 + 64) = v30;
  *(v47 + 72) = v49;
  *(v47 + 80) = v48;
  *(v47 + 88) = a21;
  *(v47 + 96) = a22;
  *(v47 + 104) = a23;
  v51 = v58;
  v50 = v59;
  *(v47 + 112) = v58;
  *(v47 + 120) = v50;
  *(v47 + 128) = v60;
  *(v47 + 136) = v63;
  *(v47 + 144) = v64;
  v52 = v51;

  v53 = v34;
  v54 = v32;
  v55 = v30;
  v56 = v49;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1AC659DBC();

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC72CE74(_OWORD *a1, char a2, char a3, uint64_t a4)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return (*(a4 + 16))(a4, v6, a2 & 1, a3 & 1);
}

uint64_t sub_1AC72CEC8()
{
  OUTLINED_FUNCTION_50_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72_5();
  v7 = sub_1AC7A0288();
  OUTLINED_FUNCTION_119_5(v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v0;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1AC7B2518;
  v9[5] = v8;
  sub_1AC73E3C8(0, 0, v2, &unk_1AC7B2528, v9);
}

uint64_t sub_1AC72CFB4(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v18 = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_1AC7A09B8();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v17[0] = a1;
          v17[1] = v18;
          v11 = v17 + v8;
          v13 = *(v17 + v8);
          if (*(v17 + v8) < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v13 = v11[1] & 0x3F | ((v13 & 0x1F) << 6);
                v15 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v13 = ((v13 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
                v15 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v13 = ((v13 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
                v15 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v10 = v9;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_1AC7A0A48();
          }

          v11 = (v10 + v8);
          v12 = *(v10 + v8);
          v13 = *(v10 + v8);
          if (v12 < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_14:
        v15 = 1;
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t sub_1AC72D1A0(uint64_t a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_1AC72D230(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF0, &qword_1AC7B25F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1AC79FDE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED9386C8);
  (*(v13 + 16))(v16, v17, v12);
  if (*(v1 + 40))
  {
    v32 = sub_1AC79FDC8();
    v33 = sub_1AC7A05F8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v40);
      _os_log_impl(&dword_1AC5BC000, v32, v33, "Failed precondition: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B26EAB10](v35, -1, -1);
      MEMORY[0x1B26EAB10](v34, -1, -1);

      v36 = *(v13 + 8);
      v13 += 8;
      v36(v16, v12);
      __break(1u);
    }

    result = (*(v13 + 8))(v16, v12);
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v18 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
    v39 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v38 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v20 = swift_allocObject();
    v21 = swift_unknownObjectWeakLoadStrong();
    v37 = v11;
    v22 = v21;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v3;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    (*(v4 + 32))(v27 + v23, v7, v25);
    v28 = v38;
    *(v27 + v24) = v39;
    *(v27 + v26) = v28;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    sub_1AC659DBC();
    v29 = *(v1 + 40);
    *(v1 + 40) = v30;
  }

  return result;
}

uint64_t sub_1AC72D6DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD8, &qword_1AC7B25D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1AC79FDE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED9386C8);
  (*(v13 + 16))(v16, v17, v12);
  if (*(v1 + 40))
  {
    v32 = sub_1AC79FDC8();
    v33 = sub_1AC7A05F8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v40);
      _os_log_impl(&dword_1AC5BC000, v32, v33, "Failed precondition: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B26EAB10](v35, -1, -1);
      MEMORY[0x1B26EAB10](v34, -1, -1);

      v36 = *(v13 + 8);
      v13 += 8;
      v36(v16, v12);
      __break(1u);
    }

    result = (*(v13 + 8))(v16, v12);
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v18 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
    v39 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v38 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v20 = swift_allocObject();
    v21 = swift_unknownObjectWeakLoadStrong();
    v37 = v11;
    v22 = v21;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v3;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    (*(v4 + 32))(v27 + v23, v7, v25);
    v28 = v38;
    *(v27 + v24) = v39;
    *(v27 + v26) = v28;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    sub_1AC659DBC();
    v29 = *(v1 + 40);
    *(v1 + 40) = v30;
  }

  return result;
}

uint64_t sub_1AC72DB88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC8, &unk_1AC7B25C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1AC79FDE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED9386C8);
  (*(v13 + 16))(v16, v17, v12);
  if (*(v1 + 40))
  {
    v32 = sub_1AC79FDC8();
    v33 = sub_1AC7A05F8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v40);
      _os_log_impl(&dword_1AC5BC000, v32, v33, "Failed precondition: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B26EAB10](v35, -1, -1);
      MEMORY[0x1B26EAB10](v34, -1, -1);

      v36 = *(v13 + 8);
      v13 += 8;
      v36(v16, v12);
      __break(1u);
    }

    result = (*(v13 + 8))(v16, v12);
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v18 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
    v39 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v38 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v20 = swift_allocObject();
    v21 = swift_unknownObjectWeakLoadStrong();
    v37 = v11;
    v22 = v21;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v3;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    (*(v4 + 32))(v27 + v23, v7, v25);
    v28 = v38;
    *(v27 + v24) = v39;
    *(v27 + v26) = v28;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    sub_1AC659DBC();
    v29 = *(v1 + 40);
    *(v1 + 40) = v30;
  }

  return result;
}

uint64_t sub_1AC72E034(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC0, &unk_1AC7B25B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1AC79FDE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED9386C8);
  (*(v13 + 16))(v16, v17, v12);
  if (*(v1 + 40))
  {
    v32 = sub_1AC79FDC8();
    v33 = sub_1AC7A05F8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v40);
      _os_log_impl(&dword_1AC5BC000, v32, v33, "Failed precondition: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B26EAB10](v35, -1, -1);
      MEMORY[0x1B26EAB10](v34, -1, -1);

      v36 = *(v13 + 8);
      v13 += 8;
      v36(v16, v12);
      __break(1u);
    }

    result = (*(v13 + 8))(v16, v12);
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v18 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
    v39 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v38 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v20 = swift_allocObject();
    v21 = swift_unknownObjectWeakLoadStrong();
    v37 = v11;
    v22 = v21;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v3;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    (*(v4 + 32))(v27 + v23, v7, v25);
    v28 = v38;
    *(v27 + v24) = v39;
    *(v27 + v26) = v28;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    sub_1AC659DBC();
    v29 = *(v1 + 40);
    *(v1 + 40) = v30;
  }

  return result;
}

uint64_t sub_1AC72E4E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB8, &qword_1AC7B25A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1AC79FDE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED9386C8);
  (*(v13 + 16))(v16, v17, v12);
  if (*(v1 + 40))
  {
    v32 = sub_1AC79FDC8();
    v33 = sub_1AC7A05F8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v40);
      _os_log_impl(&dword_1AC5BC000, v32, v33, "Failed precondition: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B26EAB10](v35, -1, -1);
      MEMORY[0x1B26EAB10](v34, -1, -1);

      v36 = *(v13 + 8);
      v13 += 8;
      v36(v16, v12);
      __break(1u);
    }

    result = (*(v13 + 8))(v16, v12);
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v18 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
    v39 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v38 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v20 = swift_allocObject();
    v21 = swift_unknownObjectWeakLoadStrong();
    v37 = v11;
    v22 = v21;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v3;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    (*(v4 + 32))(v27 + v23, v7, v25);
    v28 = v38;
    *(v27 + v24) = v39;
    *(v27 + v26) = v28;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    sub_1AC659DBC();
    v29 = *(v1 + 40);
    *(v1 + 40) = v30;
  }

  return result;
}

uint64_t sub_1AC72E98C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA8, &qword_1AC7B2598);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1AC79FDE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED9386C8);
  (*(v13 + 16))(v16, v17, v12);
  if (*(v1 + 40))
  {
    v32 = sub_1AC79FDC8();
    v33 = sub_1AC7A05F8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v40);
      _os_log_impl(&dword_1AC5BC000, v32, v33, "Failed precondition: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B26EAB10](v35, -1, -1);
      MEMORY[0x1B26EAB10](v34, -1, -1);

      v36 = *(v13 + 8);
      v13 += 8;
      v36(v16, v12);
      __break(1u);
    }

    result = (*(v13 + 8))(v16, v12);
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v18 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
    v39 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v38 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v20 = swift_allocObject();
    v21 = swift_unknownObjectWeakLoadStrong();
    v37 = v11;
    v22 = v21;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v3;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    (*(v4 + 32))(v27 + v23, v7, v25);
    v28 = v38;
    *(v27 + v24) = v39;
    *(v27 + v26) = v28;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    sub_1AC659DBC();
    v29 = *(v1 + 40);
    *(v1 + 40) = v30;
  }

  return result;
}

uint64_t sub_1AC72EE38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA0, &qword_1AC7B2588);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1AC79FDE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED9386C8);
  (*(v13 + 16))(v16, v17, v12);
  if (*(v1 + 40))
  {
    v32 = sub_1AC79FDC8();
    v33 = sub_1AC7A05F8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v40);
      _os_log_impl(&dword_1AC5BC000, v32, v33, "Failed precondition: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B26EAB10](v35, -1, -1);
      MEMORY[0x1B26EAB10](v34, -1, -1);

      v36 = *(v13 + 8);
      v13 += 8;
      v36(v16, v12);
      __break(1u);
    }

    result = (*(v13 + 8))(v16, v12);
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v18 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
    v39 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v38 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v20 = swift_allocObject();
    v21 = swift_unknownObjectWeakLoadStrong();
    v37 = v11;
    v22 = v21;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v3;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    (*(v4 + 32))(v27 + v23, v7, v25);
    v28 = v38;
    *(v27 + v24) = v39;
    *(v27 + v26) = v28;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    sub_1AC659DBC();
    v29 = *(v1 + 40);
    *(v1 + 40) = v30;
  }

  return result;
}

uint64_t sub_1AC72F2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA0, &qword_1AC7B2588);
  v7[54] = v8;
  v9 = *(v8 - 8);
  v7[55] = v9;
  v10 = *(v9 + 64) + 15;
  v7[56] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE60, &unk_1AC7B2788);
  v7[57] = v11;
  v12 = *(v11 - 8);
  v7[58] = v12;
  v13 = *(v12 + 64) + 15;
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC72F41C, 0, 0);
}

uint64_t sub_1AC72F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_9_18();
  v11(v10);
  OUTLINED_FUNCTION_13(&qword_1EB56DE68, &qword_1EB56DCA0, &qword_1AC7B2588);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DE70, &qword_1EB56DE60, &unk_1AC7B2788);
  v12 = *(MEMORY[0x1E69E85B0] + 4);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_18_14(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_20(v14);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1AC72F504()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC72F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v17 = v13[47];
  if (v17)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8();

        OUTLINED_FUNCTION_573();
        v18 = swift_allocObject();
        v19 = OUTLINED_FUNCTION_81_4(v18);
        v13[18] = sub_1AC740458;
        v13[19] = v19;
        v13[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v13[16] = v20;
        v13[17] = &block_descriptor_344;
        _Block_copy(v12);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v21 = OUTLINED_FUNCTION_49_8();
        [v21 v22];

        swift_unknownObjectRelease();
        _Block_release(v12);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DE70, &qword_1EB56DE60, &unk_1AC7B2788);
        v23 = *(MEMORY[0x1E69E85B0] + 4);
        v24 = swift_task_alloc();
        v25 = OUTLINED_FUNCTION_18_14(v24);
        *v25 = v26;
        OUTLINED_FUNCTION_0_20(v25);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
      }

      swift_unknownObjectRelease();
    }
  }

  v35 = OUTLINED_FUNCTION_17_12();
  v36(v35);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();

    OUTLINED_FUNCTION_99();
    v37 = swift_allocObject();
    *(v37 + 16) = v12;
    *(v37 + 24) = v14;
    v13[12] = sub_1AC7403F0;
    v13[13] = v37;
    v13[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v13[10] = v38;
    v13[11] = &block_descriptor_336;
    _Block_copy(v10);
    v39 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v39, sel_addOperationWithBlock_);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1AC72F8C0()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7();
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8();

    OUTLINED_FUNCTION_573();
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_80_6(v9);
    v2[6] = sub_1AC740390;
    v2[7] = v10;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v11;
    v2[5] = &block_descriptor_327;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v12 = OUTLINED_FUNCTION_49_8();
    [v12 v13];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AC72FA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA8, &qword_1AC7B2598);
  v7[54] = v8;
  v9 = *(v8 - 8);
  v7[55] = v9;
  v10 = *(v9 + 64) + 15;
  v7[56] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE40, &qword_1AC7B2768);
  v7[57] = v11;
  v12 = *(v11 - 8);
  v7[58] = v12;
  v13 = *(v12 + 64) + 15;
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC72FBAC, 0, 0);
}

uint64_t sub_1AC72FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_9_18();
  v11(v10);
  OUTLINED_FUNCTION_13(&qword_1EB56DE48, &qword_1EB56DCA8, &qword_1AC7B2598);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DE50, &qword_1EB56DE40, &qword_1AC7B2768);
  v12 = *(MEMORY[0x1E69E85B0] + 4);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_18_14(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_20(v14);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1AC72FC94()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC72FD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v17 = v13[47];
  if (v17)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8();

        OUTLINED_FUNCTION_573();
        v18 = swift_allocObject();
        v19 = OUTLINED_FUNCTION_81_4(v18);
        v13[18] = sub_1AC74014C;
        v13[19] = v19;
        v13[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v13[16] = v20;
        v13[17] = &block_descriptor_309;
        _Block_copy(v12);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v21 = OUTLINED_FUNCTION_49_8();
        [v21 v22];

        swift_unknownObjectRelease();
        _Block_release(v12);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DE50, &qword_1EB56DE40, &qword_1AC7B2768);
        v23 = *(MEMORY[0x1E69E85B0] + 4);
        v24 = swift_task_alloc();
        v25 = OUTLINED_FUNCTION_18_14(v24);
        *v25 = v26;
        OUTLINED_FUNCTION_0_20(v25);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
      }

      swift_unknownObjectRelease();
    }
  }

  v35 = OUTLINED_FUNCTION_17_12();
  v36(v35);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();

    OUTLINED_FUNCTION_99();
    v37 = swift_allocObject();
    *(v37 + 16) = v12;
    *(v37 + 24) = v14;
    v13[12] = sub_1AC740128;
    v13[13] = v37;
    v13[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v13[10] = v38;
    v13[11] = &block_descriptor_301;
    _Block_copy(v10);
    v39 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v39, sel_addOperationWithBlock_);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1AC730050()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7();
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8();

    OUTLINED_FUNCTION_573();
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_80_6(v9);
    v2[6] = sub_1AC740104;
    v2[7] = v10;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v11;
    v2[5] = &block_descriptor_292;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v12 = OUTLINED_FUNCTION_49_8();
    [v12 v13];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AC730204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB8, &qword_1AC7B25A8);
  v7[54] = v8;
  v9 = *(v8 - 8);
  v7[55] = v9;
  v10 = *(v9 + 64) + 15;
  v7[56] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE28, &qword_1AC7B2748);
  v7[57] = v11;
  v12 = *(v11 - 8);
  v7[58] = v12;
  v13 = *(v12 + 64) + 15;
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC73033C, 0, 0);
}

uint64_t sub_1AC73033C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_9_18();
  v11(v10);
  OUTLINED_FUNCTION_13(&qword_1EB56DE30, &qword_1EB56DCB8, &qword_1AC7B25A8);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DE38, &qword_1EB56DE28, &qword_1AC7B2748);
  v12 = *(MEMORY[0x1E69E85B0] + 4);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_18_14(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_20(v14);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1AC730424()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC730520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v17 = v13[47];
  if (v17)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8();

        OUTLINED_FUNCTION_573();
        v18 = swift_allocObject();
        v19 = OUTLINED_FUNCTION_81_4(v18);
        v13[18] = sub_1AC73FF44;
        v13[19] = v19;
        v13[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v13[16] = v20;
        v13[17] = &block_descriptor_274;
        _Block_copy(v12);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v21 = OUTLINED_FUNCTION_49_8();
        [v21 v22];

        swift_unknownObjectRelease();
        _Block_release(v12);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DE38, &qword_1EB56DE28, &qword_1AC7B2748);
        v23 = *(MEMORY[0x1E69E85B0] + 4);
        v24 = swift_task_alloc();
        v25 = OUTLINED_FUNCTION_18_14(v24);
        *v25 = v26;
        OUTLINED_FUNCTION_0_20(v25);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
      }

      swift_unknownObjectRelease();
    }
  }

  v35 = OUTLINED_FUNCTION_17_12();
  v36(v35);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();

    OUTLINED_FUNCTION_99();
    v37 = swift_allocObject();
    *(v37 + 16) = v12;
    *(v37 + 24) = v14;
    v13[12] = sub_1AC73FF3C;
    v13[13] = v37;
    v13[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v13[10] = v38;
    v13[11] = &block_descriptor_266_0;
    _Block_copy(v10);
    v39 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v39, sel_addOperationWithBlock_);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1AC7307E0()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7();
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8();

    OUTLINED_FUNCTION_573();
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_80_6(v9);
    v2[6] = sub_1AC73FF18;
    v2[7] = v10;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v11;
    v2[5] = &block_descriptor_257;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v12 = OUTLINED_FUNCTION_49_8();
    [v12 v13];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AC730994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC0, &unk_1AC7B25B0);
  v7[54] = v8;
  v9 = *(v8 - 8);
  v7[55] = v9;
  v10 = *(v9 + 64) + 15;
  v7[56] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE10, &qword_1AC7B2728);
  v7[57] = v11;
  v12 = *(v11 - 8);
  v7[58] = v12;
  v13 = *(v12 + 64) + 15;
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC730ACC, 0, 0);
}

uint64_t sub_1AC730ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_9_18();
  v11(v10);
  OUTLINED_FUNCTION_13(&qword_1EB56DE18, &qword_1EB56DCC0, &unk_1AC7B25B0);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DE20, &qword_1EB56DE10, &qword_1AC7B2728);
  v12 = *(MEMORY[0x1E69E85B0] + 4);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_18_14(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_20(v14);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1AC730BB4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC730CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v17 = v13[47];
  if (v17)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8();

        OUTLINED_FUNCTION_573();
        v18 = swift_allocObject();
        v19 = OUTLINED_FUNCTION_81_4(v18);
        v13[18] = sub_1AC7408B8;
        v13[19] = v19;
        v13[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v13[16] = v20;
        v13[17] = &block_descriptor_239;
        _Block_copy(v12);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v21 = OUTLINED_FUNCTION_49_8();
        [v21 v22];

        swift_unknownObjectRelease();
        _Block_release(v12);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DE20, &qword_1EB56DE10, &qword_1AC7B2728);
        v23 = *(MEMORY[0x1E69E85B0] + 4);
        v24 = swift_task_alloc();
        v25 = OUTLINED_FUNCTION_18_14(v24);
        *v25 = v26;
        OUTLINED_FUNCTION_0_20(v25);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
      }

      swift_unknownObjectRelease();
    }
  }

  v35 = OUTLINED_FUNCTION_17_12();
  v36(v35);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();

    OUTLINED_FUNCTION_99();
    v37 = swift_allocObject();
    *(v37 + 16) = v12;
    *(v37 + 24) = v14;
    v13[12] = sub_1AC740864;
    v13[13] = v37;
    v13[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v13[10] = v38;
    v13[11] = &block_descriptor_231;
    _Block_copy(v10);
    v39 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v39, sel_addOperationWithBlock_);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1AC730F70()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7();
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8();

    OUTLINED_FUNCTION_573();
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_80_6(v9);
    v2[6] = sub_1AC7408BC;
    v2[7] = v10;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v11;
    v2[5] = &block_descriptor_222;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v12 = OUTLINED_FUNCTION_49_8();
    [v12 v13];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AC731124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC8, &unk_1AC7B25C0);
  v7[54] = v8;
  v9 = *(v8 - 8);
  v7[55] = v9;
  v10 = *(v9 + 64) + 15;
  v7[56] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDF8, &qword_1AC7B2708);
  v7[57] = v11;
  v12 = *(v11 - 8);
  v7[58] = v12;
  v13 = *(v12 + 64) + 15;
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC73125C, 0, 0);
}

uint64_t sub_1AC73125C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_9_18();
  v11(v10);
  sub_1AC5C8B9C(&qword_1EB56DE00, &qword_1EB56DCC8, &unk_1AC7B25C0);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_58_0(&qword_1EB56DE08, &qword_1EB56DDF8, &qword_1AC7B2708);
  v12 = *(MEMORY[0x1E69E85B0] + 4);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_18_14(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_20(v14);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1AC731358()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC731454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v17 = v13[47];
  if (v17)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8();

        OUTLINED_FUNCTION_573();
        v18 = swift_allocObject();
        v19 = OUTLINED_FUNCTION_81_4(v18);
        v13[18] = sub_1AC7408B8;
        v13[19] = v19;
        v13[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v13[16] = v20;
        v13[17] = &block_descriptor_203;
        _Block_copy(v12);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v21 = OUTLINED_FUNCTION_49_8();
        [v21 v22];

        swift_unknownObjectRelease();
        _Block_release(v12);

        OUTLINED_FUNCTION_58_0(&qword_1EB56DE08, &qword_1EB56DDF8, &qword_1AC7B2708);
        v23 = *(MEMORY[0x1E69E85B0] + 4);
        v24 = swift_task_alloc();
        v25 = OUTLINED_FUNCTION_18_14(v24);
        *v25 = v26;
        OUTLINED_FUNCTION_0_20(v25);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
      }

      swift_unknownObjectRelease();
    }
  }

  v35 = OUTLINED_FUNCTION_17_12();
  v36(v35);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();

    OUTLINED_FUNCTION_99();
    v37 = swift_allocObject();
    *(v37 + 16) = v12;
    *(v37 + 24) = v14;
    v13[12] = sub_1AC740864;
    v13[13] = v37;
    v13[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v13[10] = v38;
    v13[11] = &block_descriptor_195;
    _Block_copy(v10);
    v39 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v39, sel_addOperationWithBlock_);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1AC731714()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7();
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8();

    OUTLINED_FUNCTION_573();
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_80_6(v9);
    v2[6] = sub_1AC7408BC;
    v2[7] = v10;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v11;
    v2[5] = &block_descriptor_186;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v12 = OUTLINED_FUNCTION_49_8();
    [v12 v13];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AC7318C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD8, &qword_1AC7B25D8);
  v7[54] = v8;
  v9 = *(v8 - 8);
  v7[55] = v9;
  v10 = *(v9 + 64) + 15;
  v7[56] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDD8, &qword_1AC7B26E0);
  v7[57] = v11;
  v12 = *(v11 - 8);
  v7[58] = v12;
  v13 = *(v12 + 64) + 15;
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC731A00, 0, 0);
}

uint64_t sub_1AC731A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_9_18();
  v11(v10);
  OUTLINED_FUNCTION_13(&qword_1EB56DDE0, &qword_1EB56DCD8, &qword_1AC7B25D8);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DDE8, &qword_1EB56DDD8, &qword_1AC7B26E0);
  v12 = *(MEMORY[0x1E69E85B0] + 4);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_18_14(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_20(v14);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1AC731AE8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC731BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v17 = v13[47];
  if (v17)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8();

        OUTLINED_FUNCTION_573();
        v18 = swift_allocObject();
        v19 = OUTLINED_FUNCTION_81_4(v18);
        v13[18] = sub_1AC7408B8;
        v13[19] = v19;
        v13[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v13[16] = v20;
        v13[17] = &block_descriptor_168_0;
        _Block_copy(v12);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v21 = OUTLINED_FUNCTION_49_8();
        [v21 v22];

        swift_unknownObjectRelease();
        _Block_release(v12);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DDE8, &qword_1EB56DDD8, &qword_1AC7B26E0);
        v23 = *(MEMORY[0x1E69E85B0] + 4);
        v24 = swift_task_alloc();
        v25 = OUTLINED_FUNCTION_18_14(v24);
        *v25 = v26;
        OUTLINED_FUNCTION_0_20(v25);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
      }

      swift_unknownObjectRelease();
    }
  }

  v35 = OUTLINED_FUNCTION_17_12();
  v36(v35);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();

    OUTLINED_FUNCTION_99();
    v37 = swift_allocObject();
    *(v37 + 16) = v12;
    *(v37 + 24) = v14;
    v13[12] = sub_1AC740864;
    v13[13] = v37;
    v13[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v13[10] = v38;
    v13[11] = &block_descriptor_160_0;
    _Block_copy(v10);
    v39 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v39, sel_addOperationWithBlock_);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1AC731EA4()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7();
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8();

    OUTLINED_FUNCTION_573();
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_80_6(v9);
    v2[6] = sub_1AC7408BC;
    v2[7] = v10;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v11;
    v2[5] = &block_descriptor_151;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v12 = OUTLINED_FUNCTION_49_8();
    [v12 v13];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AC732058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF0, &qword_1AC7B25F8);
  v7[54] = v8;
  v9 = *(v8 - 8);
  v7[55] = v9;
  v10 = *(v9 + 64) + 15;
  v7[56] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD60, &unk_1AC7B2678);
  v7[57] = v11;
  v12 = *(v11 - 8);
  v7[58] = v12;
  v13 = *(v12 + 64) + 15;
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC732190, 0, 0);
}

uint64_t sub_1AC732190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_9_18();
  v11(v10);
  OUTLINED_FUNCTION_13(&qword_1EB56DD68, &qword_1EB56DCF0, &qword_1AC7B25F8);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DD70, &qword_1EB56DD60, &unk_1AC7B2678);
  v12 = *(MEMORY[0x1E69E85B0] + 4);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_18_14(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_20(v14);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1AC732278()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC732374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v17 = v13[47];
  if (v17)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8();

        OUTLINED_FUNCTION_573();
        v18 = swift_allocObject();
        v19 = OUTLINED_FUNCTION_81_4(v18);
        v13[18] = sub_1AC73F710;
        v13[19] = v19;
        v13[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v13[16] = v20;
        v13[17] = &block_descriptor_131;
        _Block_copy(v12);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v21 = OUTLINED_FUNCTION_49_8();
        [v21 v22];

        swift_unknownObjectRelease();
        _Block_release(v12);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DD70, &qword_1EB56DD60, &unk_1AC7B2678);
        v23 = *(MEMORY[0x1E69E85B0] + 4);
        v24 = swift_task_alloc();
        v25 = OUTLINED_FUNCTION_18_14(v24);
        *v25 = v26;
        OUTLINED_FUNCTION_0_20(v25);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
      }

      swift_unknownObjectRelease();
    }
  }

  v35 = OUTLINED_FUNCTION_17_12();
  v36(v35);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();

    OUTLINED_FUNCTION_99();
    v37 = swift_allocObject();
    *(v37 + 16) = v12;
    *(v37 + 24) = v14;
    v13[12] = sub_1AC73F6F4;
    v13[13] = v37;
    v13[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v13[10] = v38;
    v13[11] = &block_descriptor_123;
    _Block_copy(v10);
    v39 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v39, sel_addOperationWithBlock_);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1AC732634()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7();
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8();

    OUTLINED_FUNCTION_573();
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_80_6(v9);
    v2[6] = sub_1AC73F6D0;
    v2[7] = v10;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v11;
    v2[5] = &block_descriptor_15;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v12 = OUTLINED_FUNCTION_49_8();
    [v12 v13];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_1AC7327E8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  OUTLINED_FUNCTION_64_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    OUTLINED_FUNCTION_12();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      [v7 *a4];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AC732880(uint64_t a1, uint64_t a2, SEL *a3)
{
  OUTLINED_FUNCTION_64_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    OUTLINED_FUNCTION_12();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      [v5 *a3];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AC732914()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AC73298C()
{
  OUTLINED_FUNCTION_64_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_12();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      if ([v1 respondsToSelector_])
      {
        [v1 speechAnalyzerDidProduceAllTranscriberResults_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AC732A34(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  OUTLINED_FUNCTION_64_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    OUTLINED_FUNCTION_12();
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_154_1();
      v8 = sub_1AC79F738();
      [v7 *a4];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AC732AD8()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *v0;

    sub_1AC60E1D0();
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5 >= *(v3 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v4 = v33;
    }

    v6 = sub_1AC73F7DC(&qword_1EB56DA38, type metadata accessor for NormalizingTranscriber);
    *(v4 + 16) = v5 + 1;
    v7 = v4 + 16 * v5;
    *(v7 + 32) = v1;
    *(v7 + 40) = v6;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[1];
  if (v8)
  {
    v9 = v0[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(v4 + 16);
      sub_1AC60E1D0();
      v4 = v35;
    }

    v10 = *(v4 + 16);
    if (v10 >= *(v4 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v4 = v36;
    }

    v11 = sub_1AC73F7DC(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber);
    *(v4 + 16) = v10 + 1;
    v12 = v4 + 16 * v10;
    *(v12 + 32) = v8;
    *(v12 + 40) = v11;
  }

  v13 = v0[2];
  if (v13)
  {
    v14 = v0[2];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = *(v4 + 16);
      sub_1AC60E1D0();
      v4 = v38;
    }

    v15 = *(v4 + 16);
    if (v15 >= *(v4 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v4 = v39;
    }

    v16 = sub_1AC73F7DC(&qword_1EB56D0C8, type metadata accessor for SpeechTranscriber);
    *(v4 + 16) = v15 + 1;
    v17 = v4 + 16 * v15;
    *(v17 + 32) = v13;
    *(v17 + 40) = v16;
  }

  v18 = v0[3];
  if (v18)
  {
    v19 = v0[3];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = *(v4 + 16);
      sub_1AC60E1D0();
      v4 = v41;
    }

    v20 = *(v4 + 16);
    if (v20 >= *(v4 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v4 = v42;
    }

    v21 = sub_1AC73F7DC(&qword_1EB56B038, type metadata accessor for EndpointDetector);
    *(v4 + 16) = v20 + 1;
    v22 = v4 + 16 * v20;
    *(v22 + 32) = v18;
    *(v22 + 40) = v21;
  }

  v23 = v0[4];
  if (v23)
  {
    v24 = v0[4];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = *(v4 + 16);
      sub_1AC60E1D0();
      v4 = v44;
    }

    v25 = *(v4 + 16);
    if (v25 >= *(v4 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v4 = v45;
    }

    v26 = sub_1AC73F7DC(&qword_1EB56CAA8, type metadata accessor for LanguageDetector);
    *(v4 + 16) = v25 + 1;
    v27 = v4 + 16 * v25;
    *(v27 + 32) = v23;
    *(v27 + 40) = v26;
  }

  v28 = v0[5];
  if (v28)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = *(v4 + 16);
      sub_1AC60E1D0();
      v4 = v47;
    }

    v29 = *(v4 + 16);
    if (v29 >= *(v4 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v4 = v48;
    }

    v30 = sub_1AC73F7DC(&qword_1EB56CB28, type metadata accessor for SpeechDetector);
    *(v4 + 16) = v29 + 1;
    v31 = v4 + 16 * v29;
    *(v31 + 32) = v28;
    *(v31 + 40) = v30;
  }

  return v4;
}

void *sub_1AC732F40()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat);
  v2 = v1;
  return v1;
}

uint64_t sub_1AC732FCC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat);
  *(v1 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat) = a1;
  return MEMORY[0x1EEE66BB8]();
}

id sub_1AC732FE0(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat;
  *&v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat] = 0;
  memcpy(&v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules], __src, 0x50uLL);
  *&v6[v12] = a2;
  v13 = &v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_clientIdentifier];
  *v13 = a3;
  v13[1] = a4;
  v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_formatForNewLines] = a5;
  *&v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_queue] = a6;
  v15.receiver = v6;
  v15.super_class = type metadata accessor for ObjCSpeechAnalyzerConfiguration();
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_1AC7331CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_104();
  v103 = v29;
  v108 = v30;
  v111 = v31;
  v110 = v32;
  v98 = v33;
  v97 = v34;
  v95 = v35;
  v37 = v36;
  v101 = v38;
  v102 = a24;
  v109 = a23;
  v107 = a25;
  v106 = a26;
  v105 = a21;
  v100 = a27;
  v92 = a28;
  v104 = a29;
  swift_getObjectType();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C780, &qword_1AC7AA798);
  OUTLINED_FUNCTION_167(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_89_1();
  v99 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C788, &qword_1AC7AA7A0);
  OUTLINED_FUNCTION_167(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_89_1();
  v96 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7A0, &unk_1AC7B2560);
  OUTLINED_FUNCTION_40(v49);
  v51 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v89 - v55;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  OUTLINED_FUNCTION_40(v94);
  v93 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_89_1();
  v90 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  OUTLINED_FUNCTION_40(v62);
  v89 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v89 - v67;
  sub_1AC5D9374(a28);
  sub_1AC7337B8(v37, v95, v109, v107, v106, v110, v111, v113, v108, v105);
  v69 = objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzerConfiguration());
  sub_1AC73ED4C(v113, v112);
  v91 = v97;
  v70 = a22;
  OUTLINED_FUNCTION_103_4();
  v75 = sub_1AC732FE0(v71, v72, v73, v74, v98, v70);
  (*(v51 + 104))(v56, *MEMORY[0x1E69E8650], v49);
  v76 = v90;
  sub_1AC7A0298();
  (*(v51 + 8))(v56, v49);
  v77 = v89;
  v78 = v96;
  v79 = v62;
  (*(v89 + 16))(v96, v68, v62);
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v62);
  v80 = v93;
  v81 = v99;
  v82 = v94;
  (*(v93 + 16))(v99, v76, v94);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v82);
  v83 = objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzer());
  v84 = v81;
  v85 = v92;
  sub_1AC7340EC(v101, v75, v78, v84, v102, v100, v92, v104);
  sub_1AC5C3958(v85);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1AC73ED84(v113);
  (*(v80 + 8))(v76, v82);
  (*(v77 + 8))(v68, v79);
  v86 = v103;
  swift_getObjectType();
  v87 = *((*MEMORY[0x1E69E7D40] & *v86) + 0x30);
  v88 = *((*MEMORY[0x1E69E7D40] & *v86) + 0x34);
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC7337B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v90 = a1;
  v89 = type metadata accessor for ClientInfo(0);
  v17 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1AC79FB18();
  v96 = *(v88 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v21 = off_1ED937D60;
    v22 = a3;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if ([v22 transcriptionOptions])
    {
LABEL_40:
      v70 = sub_1AC79FDC8();
      v71 = sub_1AC7A05F8();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v97 = v73;
        *v72 = 136315138;
        *(v72 + 4) = sub_1AC5CFE74(0xD00000000000004ALL, 0x80000001AC7BA0B0, &v97);
        _os_log_impl(&dword_1AC5BC000, v70, v71, "Failed precondition: %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x1B26EAB10](v73, -1, -1);
        MEMORY[0x1B26EAB10](v72, -1, -1);
      }

      __break(1u);
      goto LABEL_43;
    }

    if (([v22 transcriptionOptions] & 2) != 0)
    {
LABEL_43:
      v74 = sub_1AC79FDC8();
      v75 = sub_1AC7A05F8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v97 = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_1AC5CFE74(0xD00000000000004ELL, 0x80000001AC7BA060, &v97);
        _os_log_impl(&dword_1AC5BC000, v74, v75, "Failed precondition: %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x1B26EAB10](v77, -1, -1);
        MEMORY[0x1B26EAB10](v76, -1, -1);
      }

      __break(1u);
      goto LABEL_46;
    }

    if (a6)
    {
      v86 = a2;
      v24 = v22;
      if ([v24 taskHint] - 1009 > 1)
      {
        sub_1AC737DB0(v24);
        v26 = v31;
        sub_1AC73694C(v24);
        v94 = v32;
        v25 = 0;
        if (a7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v25 = sub_1AC738288(v24);
        v94 = 0;
        v26 = 0;
        if (a7)
        {
LABEL_9:
          sub_1AC6F4A30([v24 taskHint], v100);
          v97 = 0uLL;
          v98 = 0;
          v99 = 256;
          v27 = type metadata accessor for EndpointDetector();
          v28 = *(v27 + 48);
          v29 = *(v27 + 52);
          swift_allocObject();
          v93 = EndpointDetector.init(taskHint:detectionOptions:)(v100, &v97);

LABEL_13:
          v30 = v26;
          a2 = v86;
          goto LABEL_14;
        }
      }

      v93 = 0;
      goto LABEL_13;
    }
  }

  v93 = 0;
  v94 = 0;
  v25 = 0;
  v30 = 0;
LABEL_14:
  v33 = 0;
  v92 = a9;
  if (a9 && a4)
  {
    v85 = a7;
    v34 = v25;
    v22 = a4;
    v35 = sub_1AC73EF64(v22);
    v84 = a5;
    if (v35)
    {
      v36 = v35;
      v83 = a8;
      v37 = *(v35 + 16);
      if (v37)
      {
        v79 = v22;
        v80 = v30;
        v81 = v34;
        v86 = a2;
        v82 = a6;
        *&v97 = MEMORY[0x1E69E7CC0];
        sub_1AC63110C();
        v38 = v97;
        v39 = v96 + 16;
        v96 = *(v96 + 16);
        v40 = (*(v39 + 64) + 32) & ~*(v39 + 64);
        v78 = v36;
        v95 = v40;
        v41 = v36 + v40;
        v42 = *(v39 + 56);
        v43 = (v39 + 16);
        v45 = v87;
        v44 = v88;
        do
        {
          (v96)(v45, v41, v44);
          *&v97 = v38;
          v46 = *(v38 + 16);
          if (v46 >= *(v38 + 24) >> 1)
          {
            sub_1AC63110C();
            v44 = v88;
            v38 = v97;
          }

          *(v38 + 16) = v46 + 1;
          (*v43)(v38 + v95 + v46 * v42, v45, v44);
          v41 += v42;
          --v37;
        }

        while (v37);

        v34 = v81;
        a6 = v82;
        a2 = v86;
        v30 = v80;
        v22 = v79;
      }

      else
      {

        v38 = MEMORY[0x1E69E7CC0];
      }

      a8 = v83;
    }

    else
    {
      v38 = 0;
    }

    v47 = [v22 alternativeCount];
    v48 = [v22 resultReportingFrequency];
    if ((v48 & 0x8000000000000000) == 0)
    {
      v49 = v48;
      v50 = v48;
      v51 = [v22 useVAD];
      if (v49 >= 3)
      {
        v52 = 1;
      }

      else
      {
        v52 = v50;
      }

      if (v51)
      {
        v53 = 256;
      }

      else
      {
        v53 = 0;
      }

      *&v97 = v38;
      *(&v97 + 1) = v47;
      LOWORD(v98) = v53 | v52;
      v54 = *(v89 + 32);
      v55 = type metadata accessor for ClientInfo.LoggingInfo(0);
      v56 = v91;
      __swift_storeEnumTagSinglePayload(&v91[v54], 1, 1, v55);
      *v56 = v90;
      *(v56 + 8) = a2;
      *(v56 + 16) = 0;
      *(v56 + 24) = 0xE000000000000000;
      *(v56 + 32) = xmmword_1AC7AC470;
      *(v56 + 48) = xmmword_1AC7AC470;
      v57 = type metadata accessor for LanguageDetector(0);
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();

      v33 = LanguageDetector.init(options:clientInfo:)(&v97, v56);

      v25 = v34;
      a5 = v84;
      a7 = v85;
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_34:
  v60 = 0;
  if (!a10 || !a5)
  {
    goto LABEL_38;
  }

  v61 = a5;
  v62 = [v61 sensitivityLevel];
  if (v62 < 3)
  {
    LOBYTE(v97) = v62;
    v63 = [v61 reportResults];
    v64 = type metadata accessor for SpeechDetector();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    v60 = SpeechDetector.init(detectionOptions:reportResults:)(&v97, v63);

LABEL_38:
    v67 = v93;
    v68 = v94;
    *a8 = v30;
    a8[1] = v68;
    a8[2] = v25;
    a8[3] = v67;
    a8[4] = v33;
    a8[5] = v60;
    a8[6] = a6;
    a8[7] = a7;
    a8[8] = v92;
    a8[9] = a10;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    return swift_unknownObjectRetain();
  }

LABEL_46:
  result = sub_1AC7A0B78();
  __break(1u);
  return result;
}

id sub_1AC7340EC(void *a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getObjectType();
  v13 = OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_inputStreamBuilder;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  __swift_storeEnumTagSinglePayload(&v8[v13], 1, 1, v14);
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_normalizedTranscriber] = 0;
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_contextualizedTranscriber] = 0;
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_endpointDetector] = 0;
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_languageDetector] = 0;
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechDetector] = 0;
  v15 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_queue];
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_queue] = v15;
  swift_beginAccess();
  sub_1AC5D9374(a7);
  v16 = v15;
  sub_1AC74047C();
  swift_endAccess();
  v17 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 48];
  v18 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 56];
  v19 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 64];
  v20 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 72];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_167_0();
  sub_1AC73433C(v21, v22, v23, v24, v19, v20);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v25 = sub_1AC735990(a5, a6, a3, a2, a7, a8);

  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer] = v25;
  v32.receiver = v8;
  v32.super_class = type metadata accessor for ObjCSpeechAnalyzer();
  v26 = objc_msgSendSuper2(&v32, sel_init);
  sub_1AC5C3958(a7);

  sub_1AC5C720C(a4, &qword_1EB56C780, &qword_1AC7AA798);
  sub_1AC5C720C(a3, &qword_1EB56C788, &qword_1AC7AA7A0);
  return v26;
}

uint64_t sub_1AC73433C(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v151 = a6;
  v150 = a5;
  v152 = a1;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE8, &qword_1AC7B2580);
  v143 = *(v148 - 8);
  v9 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v144 = &v94 - v10;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA0, &qword_1AC7B2588);
  v146 = *(v147 - 8);
  v11 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v145 = &v94 - v12;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA70, &qword_1AC7B2590);
  v137 = *(v142 - 8);
  v13 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v138 = &v94 - v14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA8, &qword_1AC7B2598);
  v140 = *(v141 - 8);
  v15 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v94 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB0, &qword_1AC7B25A0);
  v128 = *(v131 - 8);
  v17 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v94 - v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB8, &qword_1AC7B25A8);
  v132 = *(v133 - 8);
  v19 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v130 = &v94 - v20;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC0, &unk_1AC7B25B0);
  v109 = *(v110 - 8);
  v21 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v94 - v22;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D0D8, &qword_1AC7AD658);
  v106 = *(v107 - 8);
  v23 = *(v106 + 64);
  v24 = MEMORY[0x1EEE9AC00](v107);
  v101 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v94 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC8, &unk_1AC7B25C0);
  v103 = *(v105 - 8);
  v27 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v94 - v28;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D0E8, &qword_1AC7AD660);
  v100 = *(v127 - 8);
  v29 = *(v100 + 64);
  v30 = MEMORY[0x1EEE9AC00](v127);
  v99 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v126 = &v94 - v32;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD0, &qword_1AC7B25D0);
  v33 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v94 - v34;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD8, &qword_1AC7B25D8);
  v123 = *(v125 - 8);
  v35 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v121 = &v94 - v36;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C3F8, &qword_1AC7B25E0);
  v119 = *(v120 - 8);
  v37 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v94 - v38;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCE0, &qword_1AC7B25E8);
  v116 = *(v117 - 8);
  v39 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v94 - v40;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCE8, &qword_1AC7B25F0);
  v41 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF0, &qword_1AC7B25F8);
  v112 = *(v114 - 8);
  v42 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v44 = &v94 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C408, &qword_1AC7A8F50);
  v111 = *(v45 - 8);
  v46 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v94 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF8, &qword_1AC7B3F10);
  v50 = *(*(v49 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v49);
  v54 = &v94 - v53;
  v55 = &unk_1EB56D000;
  if (!a3)
  {
    goto LABEL_17;
  }

  v95 = v52;
  v134 = a4;
  v56 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_queue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD20, &qword_1AC7B2620);
  swift_initStackObject();
  swift_unknownObjectRetain_n();
  v57 = v56;
  v58 = v152;
  v135 = a3;
  v97 = v57;
  v96 = v58;
  v136 = sub_1AC72D1A0(a3, v57, v58);
  v149 = a2;
  v59 = &a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules];
  if (*&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules])
  {
    v60 = *(v59 + 1);
    if (v60)
    {
      v98 = &a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules];
      v61 = sub_1AC637EF8(6, *(v60 + OBJC_IVAR____TtC6Speech20DictationTranscriber_reportingOptions));

      if (v61)
      {
        NormalizingTranscriber.multisegmentResults.getter();
        DictationTranscriber.multisegmentResults.getter();
        sub_1AC5C8B9C(&qword_1EB56DD50, &qword_1EB56DCF8, &qword_1AC7B3F10);
        sub_1AC5C8B9C(&qword_1EB56C400, &qword_1EB56C408, &qword_1AC7A8F50);
        sub_1AC79FCE8();
        sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
        sub_1AC5C8B9C(&qword_1EB56DD58, &qword_1EB56DCE8, &qword_1AC7B25F0);
        sub_1AC7A0B08();
        sub_1AC72D230(v44);

        (*(v112 + 8))(v44, v114);
        (*(v111 + 8))(v48, v45);
        (*(v95 + 8))(v54, v49);
      }

      else
      {
        v70 = v115;
        NormalizingTranscriber.results.getter();
        v71 = v118;
        DictationTranscriber.results.getter();
        v127 = v60;
        sub_1AC5C8B9C(&qword_1EB56DD40, &qword_1EB56DCE0, &qword_1AC7B25E8);
        sub_1AC5C8B9C(&qword_1EB56C3F0, &qword_1EB56C3F8, &qword_1AC7B25E0);
        v72 = v117;
        v73 = v120;
        sub_1AC79FCE8();
        sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
        sub_1AC5C8B9C(&qword_1EB56DD48, &qword_1EB56DCD0, &qword_1AC7B25D0);
        v74 = v121;
        sub_1AC7A0B08();
        sub_1AC72D6DC(v74);

        (*(v123 + 8))(v74, v125);
        (*(v119 + 8))(v71, v73);
        (*(v116 + 8))(v70, v72);
      }

      a2 = v149;
      v63 = v134;
      v55 = &unk_1EB56D000;
      goto LABEL_12;
    }
  }

  v62 = *(v59 + 2);
  a2 = v149;
  v63 = v134;
  v55 = &unk_1EB56D000;
  if (v62)
  {
    v98 = v59;
    v64 = sub_1AC637EF8(3, *(v62 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_reportingOptions));

    if (v64)
    {
      v65 = v126;
      SpeechTranscriber.multisegmentResults.getter();
      v66 = v100;
      (*(v100 + 16))(v99, v65, v127);
      *(swift_allocObject() + 16) = a2;
      sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
      sub_1AC5C8B9C(&qword_1EB56D0E0, &qword_1EB56D0E8, &qword_1AC7AD660);
      v67 = v149;
      v68 = v102;
      v69 = v127;
      a2 = v149;
      sub_1AC7A0CB8();
      sub_1AC72DB88(v68);

      (*(v103 + 8))(v68, v105);
      (*(v66 + 8))(v126, v69);
    }

    else
    {
      v75 = v104;
      SpeechTranscriber.results.getter();
      v76 = v106;
      v77 = v107;
      (*(v106 + 16))(v101, v75, v107);
      sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
      sub_1AC5C8B9C(&qword_1EB56D0D0, &qword_1EB56D0D8, &qword_1AC7AD658);
      v78 = v108;
      sub_1AC7A0B08();
      sub_1AC72E034(v78);

      (*(v109 + 8))(v78, v110);
      (*(v76 + 8))(v75, v77);
    }

LABEL_12:
    v59 = v98;
  }

  v79 = *(v59 + 3);
  if (v79 && v63)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD28, &qword_1AC7B2628);
    swift_initStackObject();
    swift_unknownObjectRetain_n();
    v80 = v97;
    v81 = v96;

    sub_1AC72D1A0(v63, v80, v81);
    (*(v128 + 16))(v129, v79 + OBJC_IVAR____TtC6Speech16EndpointDetector__results, v131);
    sub_1AC5CF764(0, &qword_1EB56DD30, off_1E797ACB8);
    sub_1AC5C8B9C(&qword_1EB56AC28, &qword_1EB56DCB0, &qword_1AC7B25A0);
    v82 = v130;
    a2 = v149;
    sub_1AC7A0B08();
    sub_1AC72E4E0(v82);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    result = (*(v132 + 8))(v82, v133);
  }

  else
  {

    result = swift_unknownObjectRelease();
  }

LABEL_17:
  v83 = v150;
  if (v150)
  {
    v84 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 32];
    if (v84)
    {
      v85 = *&a2[v55[394]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD10, &qword_1AC7B2610);
      swift_initStackObject();
      swift_unknownObjectRetain_n();
      v86 = a2;
      v87 = v152;

      sub_1AC72D1A0(v83, v85, v87);
      (*(v137 + 16))(v138, v84 + OBJC_IVAR____TtC6Speech16LanguageDetector__results, v142);
      sub_1AC5CF764(0, &qword_1EB56DD18, off_1E797ACD0);
      sub_1AC5C8B9C(&qword_1EB56CAD0, &qword_1EB56CA70, &qword_1AC7B2590);
      v88 = v139;
      a2 = v86;
      sub_1AC7A0B08();
      sub_1AC72E98C(v88);
      swift_unknownObjectRelease();

      result = (*(v140 + 8))(v88, v141);
    }
  }

  v89 = v151;
  if (v151)
  {
    v90 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 40];
    if (v90)
    {
      v91 = *&a2[v55[394]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD00, &qword_1AC7B2600);
      swift_initStackObject();
      swift_unknownObjectRetain_n();
      v92 = v152;

      sub_1AC72D1A0(v89, v91, v92);
      (*(v143 + 16))(v144, v90 + OBJC_IVAR____TtC6Speech14SpeechDetector__results, v148);
      sub_1AC5CF764(0, &qword_1EB56DD08, off_1E797AD18);
      sub_1AC5C8B9C(&qword_1EB56CB38, &qword_1EB56CAE8, &qword_1AC7B2580);
      v93 = v145;
      sub_1AC7A0B08();
      sub_1AC72EE38(v93);
      swift_unknownObjectRelease();

      return (*(v146 + 8))(v93, v147);
    }
  }

  return result;
}

uint64_t sub_1AC735990(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v93 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C788, &qword_1AC7AA7A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v84 - v15;
  v17 = type metadata accessor for ClientInfo(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v94 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v84 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v91 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v84 - v34;
  v88 = v16;
  v86 = v23;
  if (a1)
  {
    __dst[0] = a1;
    sub_1AC738E20(__dst, &v84 - v34);
    v36 = type metadata accessor for SpeechAnalyzer.Options(0);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
    v37 = [a1 loggingInfo];
    if (v37)
    {
      v38 = v37;
      v39 = [v38 asrID];
      sub_1AC79F938();

      v40 = [v38 requestID];
      v41 = type metadata accessor for ClientInfo.LoggingInfo(0);
      v89 = v35;
      v90 = a5;
      v42 = v41;
      v43 = &v29[*(v41 + 20)];
      sub_1AC79F938();

      v44 = [v38 dictationUIInteractionID];
      v45 = v17;
      v46 = a4;
      v47 = sub_1AC79FF68();
      v49 = v48;

      v50 = &v29[*(v42 + 24)];
      *v50 = v47;
      v50[1] = v49;
      a4 = v46;
      v17 = v45;
      v51 = v29;
      v52 = 0;
      v53 = v42;
      a5 = v90;
      v35 = v89;
      goto LABEL_6;
    }
  }

  else
  {
    v54 = type metadata accessor for SpeechAnalyzer.Options(0);
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v54);
    v37 = 0;
  }

  v53 = type metadata accessor for ClientInfo.LoggingInfo(v37);
  v51 = v29;
  v52 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v51, v52, 1, v53);
  v56 = *(a4 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_clientIdentifier);
  v55 = *(a4 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_clientIdentifier + 8);
  v57 = *(v17 + 32);
  sub_1AC5C6E6C();
  *v25 = v56;
  *(v25 + 1) = v55;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0xE000000000000000;
  *(v25 + 2) = xmmword_1AC7AC470;
  *(v25 + 3) = xmmword_1AC7AC470;
  type metadata accessor for AnalysisContext();
  swift_allocObject();

  v95 = AnalysisContext.init()();
  v58 = v94;
  if (a2)
  {
    v59 = sub_1AC61C24C(a2);
    v60 = MEMORY[0x1E69E7CC0];
    if (v59)
    {
      v61 = v59;
      v97 = MEMORY[0x1E69E7CC0];
      result = sub_1AC631538(0, v59 & ~(v59 >> 63), 0);
      if (v61 < 0)
      {
        __break(1u);
        goto LABEL_24;
      }

      v84 = a4;
      v89 = v35;
      v85 = v29;
      v90 = a5;
      v63 = 0;
      v60 = v97;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x1B26E95B0](v63, a2);
        }

        else
        {
          v64 = *(a2 + 8 * v63 + 32);
        }

        v65 = v64;
        memcpy(__dst, &v64[OBJC_IVAR___SFContextualNamedEntity_contextualNamedEntity], 0x48uLL);
        sub_1AC73E6A4(__dst, v96);

        v97 = v60;
        v67 = *(v60 + 16);
        v66 = *(v60 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1AC631538(v66 > 1, v67 + 1, 1);
          v60 = v97;
        }

        ++v63;
        *(v60 + 16) = v67 + 1;
        memcpy((v60 + 72 * v67 + 32), __dst, 0x48uLL);
      }

      while (v61 != v63);
      a5 = v90;
      v29 = v85;
      v35 = v89;
      a4 = v84;
      v58 = v94;
    }

    AnalysisContext.contextualNamedEntities.setter(v60);
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  if (__swift_getEnumTagSinglePayload(v93, 1, v68) == 1)
  {
    v69 = v86;
    sub_1AC7404D4();
    memcpy(__dst, (a4 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules), sizeof(__dst));
    v70 = sub_1AC732AD8();
    v71 = v91;
    sub_1AC5C6E6C();
    v72 = type metadata accessor for SpeechAnalyzer();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    v75 = SpeechAnalyzer.init(client:modules:options:)(v69, v70, v71);
    v76 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v76);
    v77 = swift_allocObject();
    v77[2] = 0;
    v77[3] = 0;
    v77[4] = v75;
    v77[5] = a5;
    v77[6] = v92;

    sub_1AC5D9374(a5);
    sub_1AC659DBC();

    sub_1AC5C3958(a5);
LABEL_22:
    sub_1AC74052C(v25, type metadata accessor for ClientInfo);
    sub_1AC5C720C(v29, &qword_1EB56CA50, &qword_1AC7AB4F0);
    sub_1AC5C720C(v35, &qword_1EB56C7D0, &qword_1AC7ACB40);
    return v75;
  }

  sub_1AC7404D4();
  v78 = v87;
  sub_1AC5C6E6C();
  result = __swift_getEnumTagSinglePayload(v78, 1, v68);
  if (result != 1)
  {
    memcpy(__dst, (a4 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules), sizeof(__dst));
    v79 = sub_1AC732AD8();
    v80 = v91;
    sub_1AC5C6E6C();
    v81 = type metadata accessor for SpeechAnalyzer();
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    swift_allocObject();
    v75 = sub_1AC6C3224(v58, v78, v79, v80, v95, a5, v92);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1AC736200()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  OUTLINED_FUNCTION_40(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_72_5();
  v10 = OUTLINED_FUNCTION_123_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DC90, &qword_1AC7B24F0);
  OUTLINED_FUNCTION_167(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_12();
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v4))
  {
    sub_1AC5C720C(v17, &qword_1EB56C780, &qword_1AC7AA798);
    v22 = 1;
  }

  else
  {
    (*(v6 + 16))(v0, v17, v4);
    sub_1AC5C720C(v17, &qword_1EB56C780, &qword_1AC7AA798);
    v35 = 1;
    v34 = 1;
    v28[0] = v3;
    memset(&v28[1], 0, 24);
    v29 = 1;
    v30 = 0;
    v31 = 1;
    v32 = 0;
    v33 = 1;
    v23 = v3;
    sub_1AC7A02A8();
    v24 = *(v6 + 8);
    v25 = OUTLINED_FUNCTION_172();
    v26(v25);
    v22 = 0;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DC98, &qword_1AC7B24F8);
  __swift_storeEnumTagSinglePayload(v1, v22, 1, v27);
  sub_1AC5C720C(v1, &qword_1EB56DC90, &qword_1AC7B24F0);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC73645C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  OUTLINED_FUNCTION_40(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C780, &qword_1AC7AA798);
  OUTLINED_FUNCTION_167(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_103_4();
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    return sub_1AC5C720C(v1, &qword_1EB56C780, &qword_1AC7AA798);
  }

  (*(v4 + 16))(v0, v1, v2);
  sub_1AC5C720C(v1, &qword_1EB56C780, &qword_1AC7AA798);
  sub_1AC7A02B8();
  v13 = *(v4 + 8);
  v14 = OUTLINED_FUNCTION_172();
  return v15(v14);
}

uint64_t sub_1AC7365F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC736608()
{
  OUTLINED_FUNCTION_57();
  v19 = v0;
  v1 = v0[12];
  sub_1AC6F4A30([v1 taskHint], &v15);
  sub_1AC73694C(v1);
  v3 = v2;
  v0[14] = v2;
  v16 = 0uLL;
  v17 = 0;
  v18 = 256;
  v4 = type metadata accessor for EndpointDetector();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = EndpointDetector.init(taskHint:detectionOptions:)(&v15, &v16);
  v0[15] = v7;
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD80, &unk_1AC7A81A0);
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = xmmword_1AC7A8780;
  v9 = sub_1AC73F7DC(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber);
  *(inited + 32) = v3;
  *(inited + 40) = v9;
  v10 = sub_1AC73F7DC(&qword_1EB56B038, type metadata accessor for EndpointDetector);
  *(inited + 48) = v7;
  *(inited + 56) = v10;

  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1AC7367DC;
  v12 = v0[10];
  v13 = v0[11];

  return sub_1AC70E5A4();
}

uint64_t sub_1AC7367DC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *(v3 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v9 + 144) = v8;

  swift_setDeallocating();
  sub_1AC724180();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC7368E8()
{
  OUTLINED_FUNCTION_85();
  v2 = v0[14];
  v1 = v0[15];

  OUTLINED_FUNCTION_82();
  v4 = v0[18];

  return v3(v4);
}

void sub_1AC73694C(void *a1)
{
  v2 = type metadata accessor for DictationTranscriber.Preset(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1AC79FB18();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  type metadata accessor for DictationTranscriber(0);
  v6 = [a1 locale];
  sub_1AC79FA18();

  sub_1AC738350();
  DictationTranscriber.__allocating_init(locale:preset:)();
}

uint64_t sub_1AC736AE8(int a1, void *a2, void *aBlock)
{
  v3[2] = a2;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1AC79FF68();
  v7 = v6;
  v3[4] = v6;
  swift_getObjCClassMetadata();
  v8 = a2;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1AC736BD8;

  return sub_1AC7365F0(v5, v7, v8);
}

uint64_t sub_1AC736BD8()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  (v6)[2](v6, v2);
  _Block_release(v6);

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC736D2C(uint64_t a1, const void *a2)
{
  *(v2 + 1072) = a1;
  memcpy((v2 + 16), a2, 0x209uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC736D9C, 0, 0);
}

uint64_t sub_1AC736D9C()
{
  OUTLINED_FUNCTION_45();
  v6 = v0;
  v1 = v0[134];
  sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
  OUTLINED_FUNCTION_167_0();
  sub_1AC5C6E6C();
  sub_1AC73F734((v0 + 35));
  memcpy(__dst, v0 + 2, 0x101uLL);
  OUTLINED_FUNCTION_167_0();
  sub_1AC5C6E6C();
  sub_1AC73F788((v0 + 2));
  memcpy(v5, v0 + 35, 0x101uLL);
  *v1 = sub_1AC736E94(__dst, v5);
  OUTLINED_FUNCTION_44();

  return v2();
}

id sub_1AC736E94(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v13, a2, sizeof(v13));
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1AC637CF4(__dst, &v12);
  sub_1AC73BD0C();
  v5 = v4;
  sub_1AC73BD0C();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_31_12();
  v10 = [v8 v9];

  sub_1AC73F788(__dst);
  return v10;
}

uint64_t sub_1AC736FF8(uint64_t a1, const void *a2)
{
  *(v2 + 336) = a1;
  memcpy((v2 + 16), a2, 0xA0uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC737068, 0, 0);
}

uint64_t sub_1AC737068()
{
  v6 = v0;
  v1 = v0[42];
  sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
  OUTLINED_FUNCTION_167_0();
  sub_1AC5C6E6C();
  sub_1AC73F9BC((v0 + 12));
  memcpy(v4, v0 + 2, sizeof(v4));
  OUTLINED_FUNCTION_167_0();
  sub_1AC5C6E6C();
  sub_1AC73FA10((v0 + 2));
  memcpy(__dst, v0 + 12, sizeof(__dst));
  *v1 = sub_1AC73715C(v4, __dst);
  OUTLINED_FUNCTION_44();

  return v2();
}

id sub_1AC73715C(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, a2, sizeof(v13));
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1AC73FA64(__dst, &v12);
  sub_1AC73C784();
  v5 = v4;
  sub_1AC73C784();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_31_12();
  v10 = [v8 v9];

  sub_1AC73FA10(__dst);
  return v10;
}

uint64_t sub_1AC737240(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[70] = a3;
  v3[69] = a2;
  v3[68] = a1;
  memcpy(v3 + 2, a2, 0x101uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC7372B8, 0, 0);
}

uint64_t sub_1AC7372B8()
{
  v7 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
  memcpy(v6, v2, 0x101uLL);
  LOBYTE(v2) = *(v1 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_formatForNewLines);
  sub_1AC637DAC((v0 + 2), (v0 + 35));
  *v3 = sub_1AC737380(v6, v2);
  OUTLINED_FUNCTION_44();

  return v4();
}

id sub_1AC737380(void *__src, char a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC637DAC(__dst, v8);
  sub_1AC73BD0C();
  v4 = v3;
  if (a2 & 1) != 0 && (sub_1AC73CE34())
  {

    sub_1AC73FBAC(__dst);
    return 0;
  }

  else
  {
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8[0] = *__dst;
    v8[1] = *&__dst[16];
    v8[2] = *&__dst[32];
    v5 = [v6 initWithRange:v8 contextualizedTranscriberMultisegmentResult:v4];

    sub_1AC73FBAC(__dst);
  }

  return v5;
}

uint64_t sub_1AC737498(uint64_t a1, const void *a2)
{
  v2[22] = a1;
  v2[23] = a2;
  memcpy(v2 + 2, a2, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC737508, 0, 0);
}

uint64_t sub_1AC737508()
{
  v6 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC73FD7C(v0 + 16, v0 + 96);
  *v2 = sub_1AC7375B0(__dst);
  OUTLINED_FUNCTION_44();

  return v3();
}

id sub_1AC7375B0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1AC73FD7C(__dst, &v8);
  sub_1AC73C784();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_31_12();
  v6 = [v4 v5];

  sub_1AC73FDD8(__dst);
  return v6;
}

uint64_t sub_1AC737650(uint64_t a1, const void *a2)
{
  v2[30] = a1;
  v2[31] = a2;
  memcpy(v2 + 2, a2, 0x70uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC7376C0, 0, 0);
}

uint64_t sub_1AC7376C0()
{
  v6 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  sub_1AC5CF764(0, &qword_1EB56DD30, off_1E797ACB8);
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC73FF68(v0 + 16, v0 + 128);
  *v2 = sub_1AC737768(__dst);
  OUTLINED_FUNCTION_44();

  return v3();
}

id sub_1AC737768(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = __dst[11];
  v2 = *(__dst[11] + 16);
  if (v2)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1AC73FF68(__dst, v17);
    sub_1AC7A0A88();
    v3 = v1 + 4;
    do
    {
      v4 = *v3++;
      v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1AC7A0A68();
      v5 = *(v18 + 16);
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
      --v2;
    }

    while (v2);
    sub_1AC73FFC4(__dst);
  }

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = __dst[0];
  v8 = __dst[2];
  v9 = __dst[3];
  v10 = __dst[5];
  v11 = __dst[9];
  v12 = *&__dst[10];
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v13 = __dst[4];
  v14 = __dst[1];
  sub_1AC7A0148();
  OUTLINED_FUNCTION_154_1();

  v17[0] = v7;
  v17[1] = v14;
  v17[2] = v8;
  v17[3] = v9;
  v17[4] = v13;
  v17[5] = v10;
  v15 = [v6 initWithRange:v17 wordCount:v11 eosLikelihood:v1 pauseCounts:v12 silencePosterior:*&__dst[12]];

  sub_1AC73FFC4(__dst);
  return v15;
}

uint64_t sub_1AC737914(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for LanguageDetector.LocaleAlternative(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1AC79FB18();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC737A3C, 0, 0);
}

uint64_t sub_1AC737A3C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 24);
  v6 = *(v4 + 1);
  v5 = *(v4 + 2);
  *(v0 + 88) = *v4;
  *(v0 + 104) = v6;
  *(v0 + 120) = v5;
  v7 = type metadata accessor for LanguageDetector.Result(0);
  (*(v2 + 16))(v1, &v4[v7[6]], v3);
  v8 = *&v4[v7[7]];
  v9 = *(v8 + 16);
  if (v9)
  {
    v36 = v7;
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);
    v38 = *(v0 + 32);
    v39 = MEMORY[0x1E69E7CC0];
    sub_1AC7A0A88();
    v12 = *(v11 + 80);
    OUTLINED_FUNCTION_89_0();
    v14 = v8 + v13;
    v15 = (v10 + 8);
    v37 = *(v11 + 72);
    do
    {
      v16 = *(v0 + 72);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);
      sub_1AC7404D4();
      sub_1AC79F978();
      v19 = objc_allocWithZone(MEMORY[0x1E695DF58]);
      v20 = sub_1AC79FF58();

      v21 = [v19 initWithLocaleIdentifier_];

      sub_1AC79FA18();
      v22 = *(v17 + *(v38 + 20));
      v23 = objc_allocWithZone(SFLocaleAlternative);
      v24 = sub_1AC79F9F8();
      [v23 initWithLocale:v24 confidence:v22];

      v25 = *v15;
      v26 = OUTLINED_FUNCTION_123_1();
      v27(v26);
      sub_1AC74052C(v17, type metadata accessor for LanguageDetector.LocaleAlternative);
      sub_1AC7A0A68();
      v28 = *(v39 + 16);
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
      v14 += v37;
      --v9;
    }

    while (v9);
    v7 = v36;
  }

  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 48);
  v32 = *(v0 + 16);
  v33 = *(v0 + 24) + v7[8];
  sub_1AC79F988();
  objc_allocWithZone(SFLanguageDetectorResult);
  *v32 = sub_1AC73E01C((v0 + 88), v29);

  OUTLINED_FUNCTION_44();

  return v34();
}

uint64_t sub_1AC737D08(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  *(v2 + 56) = a2[2];
  return MEMORY[0x1EEE6DFA0](sub_1AC737D3C, 0, 0);
}

uint64_t sub_1AC737D3C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  *v1 = [objc_allocWithZone(SFSpeechDetectorResult) initWithRange_];
  OUTLINED_FUNCTION_44();

  return v2();
}

void sub_1AC737DB0(void *a1)
{
  v2 = sub_1AC79FB18();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v58[3] = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v58 - v15);
  v17 = type metadata accessor for DictationTranscriber.Preset(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = a1;
  sub_1AC738350();
  v22 = sub_1AC72BB58(*v21);
  v58[1] = 0;
  sub_1AC6092E8(v22);
  v58[2] = v23;
  v24 = *(v18 + 40);
  sub_1AC7404D4();
  v25 = v11[7];
  v26 = sub_1AC79F7F8();
  __swift_storeEnumTagSinglePayload(v16 + v25, 1, 1, v26);
  v27 = v11[8];
  v28 = v11[9];
  v29 = v11[10];
  v31 = v11[12];
  v30 = v11[13];
  v61 = v11[11];
  v62 = v31;
  v63 = v30;
  *(v16 + v11[14]) = *(v9 + v6[14]);
  v32 = (v16 + v27);
  v33 = v9[1];
  *v16 = *v9;
  v16[1] = v33;
  v34 = v6[7];

  sub_1AC74047C();
  v35 = (v9 + v6[8]);
  v36 = v35[1];
  *v32 = *v35;
  v32[1] = v36;
  *(v16 + v28) = *(v9 + v6[9]);
  *(v16 + v29) = *(v9 + v6[10]);
  *(v16 + v61) = *(v9 + v6[11]);
  *(v16 + v62) = *(v9 + v6[12]);
  LOBYTE(v29) = *(v9 + v6[13]);

  sub_1AC74052C(v9, type metadata accessor for DictationTranscriber.ModelOptions);
  *(v16 + v63) = v29;
  v37 = v21[1];
  v38 = 1 << *(v37 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v37 + 56);
  v41 = (v38 + 63) >> 6;
  v42 = v21[1];

  v43 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (v40)
  {
LABEL_9:
    v46 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    if (*(*(v37 + 48) + (v46 | (v43 << 6))) == 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v44 + 16);
        sub_1AC60E4D0();
        v44 = v50;
      }

      v47 = *(v44 + 16);
      v48 = v47 + 1;
      if (v47 >= *(v44 + 24) >> 1)
      {
        sub_1AC60E4D0();
        v44 = v51;
      }

      *(v44 + 16) = v48;
    }
  }

  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v41)
    {

      sub_1AC609398();
      sub_1AC72BD80(v21[2]);
      sub_1AC609484(v52);
      sub_1AC72BFC0(v21[3]);
      sub_1AC6094B4(v53);
      v54 = [v59 locale];
      sub_1AC79FA18();

      sub_1AC7404D4();
      v55 = type metadata accessor for NormalizingTranscriber(0);
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      swift_allocObject();
      NormalizingTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
      sub_1AC74052C(v16, type metadata accessor for NormalizingTranscriber.ModelOptions);
      sub_1AC74052C(v21, type metadata accessor for DictationTranscriber.Preset);
      return;
    }

    v40 = *(v37 + 56 + 8 * v45);
    ++v43;
    if (v40)
    {
      v43 = v45;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1AC738288(void *a1)
{
  v2 = sub_1AC79FB18();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SpeechTranscriber();
  v6 = [a1 locale];
  sub_1AC79FA18();

  sub_1AC738C68(v9);
  v8[0] = v9[0];
  v8[1] = v9[1];
  return SpeechTranscriber.__allocating_init(locale:preset:)(v5, v8);
}

void sub_1AC738350()
{
  OUTLINED_FUNCTION_104();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_95_4();
  v11 = type metadata accessor for DictationTranscriber.Preset(v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = [v0 taskHint];
  if (v15 < 2)
  {
    goto LABEL_9;
  }

  if (v15 == 2)
  {
    if (qword_1EB56B4D0 != -1)
    {
      goto LABEL_119;
    }

    goto LABEL_13;
  }

  if (v15 != 3)
  {
    if (v15 == 1002)
    {
      if (qword_1EB56B4F0 != -1)
      {
        swift_once();
      }

      i = qword_1EB56C168;
      goto LABEL_20;
    }

    if (v15 == 1004)
    {
      if (qword_1EB56B500 != -1)
      {
        swift_once();
      }

      i = qword_1EB56C198;
      goto LABEL_20;
    }

LABEL_9:
    if (qword_1EB56B4C0 != -1)
    {
      swift_once();
    }

    i = qword_1EB56C0D8;
    goto LABEL_20;
  }

  if (qword_1EB56B4A0 != -1)
  {
    swift_once();
  }

  for (i = qword_1EB56C078; ; i = qword_1EB56C108)
  {
LABEL_20:
    __swift_project_value_buffer(v11, i);
    sub_1AC7404D4();
    sub_1AC740748();
    sub_1AC72CBFC(&unk_1F212F788, sub_1AC6102CC);
    sub_1AC72CC70(&unk_1F212F7B0, sub_1AC610968);
    v17 = [v3 modelOptions];
    if (!v17)
    {
      goto LABEL_102;
    }

    v18 = v17;
    v19 = [v17 modelOverrideURL];
    if (v19)
    {
      v20 = v19;
      sub_1AC79F7A8();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_1AC79F7F8();
    __swift_storeEnumTagSinglePayload(v1, v21, 1, v22);
    v23 = v5 + *(v11 + 8);
    v24 = type metadata accessor for DictationTranscriber.ModelOptions(0);
    sub_1AC633390(v1, v23 + v24[5]);
    v1 = sub_1AC73EF00(v18);
    v11 = v25;
    v26 = (v23 + v24[6]);
    v27 = v26[1];

    *v26 = v1;
    v26[1] = v11;
    *(v23 + v24[8]) = [v18 enableParallelLoading];
    *(v23 + v24[11]) = [v18 enableFullPayloadCorrection];
    v28 = [v18 languageModelCustomizationConfig];
    if (!v28)
    {
      break;
    }

    v1 = v28;
    v126 = v18;
    v128 = v3;
    v29 = *v5;
    v30 = (*v5)[5];
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40](3);
    sub_1AC7A0768();
    v31 = sub_1AC7A0EC8();
    OUTLINED_FUNCTION_69_6(v31);
    if (v32)
    {
      v11 = &qword_1ED937298;
      v3 = 0x1E69E58C0;
      do
      {
        v33 = v29[6];
        v34 = *(v33 + 8 * v2);
        if (v34 >= 3)
        {
          sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
          sub_1AC61C264(v34);
          v35 = sub_1AC7A0758();
          sub_1AC623E3C(v34);
          if (v35)
          {

            goto LABEL_46;
          }
        }

        else
        {
          sub_1AC623E3C(*(v33 + 8 * v2));
        }

        OUTLINED_FUNCTION_86_4();
      }

      while ((v36 & 1) != 0);
    }

    v37 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = *v5;
    v39 = (*v5)[2];
    if ((*v5)[3] <= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = OUTLINED_FUNCTION_85_7(v39);
        sub_1AC6121E0(v40);
      }

      else
      {
        OUTLINED_FUNCTION_85_7(v39);
        sub_1AC615B30();
      }

      v41 = v130[5];
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](3);
      sub_1AC7A0768();
      v42 = sub_1AC7A0EC8();
      OUTLINED_FUNCTION_69_6(v42);
      if (v43)
      {
        v11 = &qword_1ED937298;
        v3 = 0x1E69E58C0;
        do
        {
          v44 = v130[6];
          v45 = *(v44 + 8 * v2);
          if (v45 >= 3)
          {
            sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
            sub_1AC61C264(v45);
            v46 = sub_1AC7A0758();
            sub_1AC623E3C(v45);
            if (v46)
            {
              goto LABEL_122;
            }
          }

          else
          {
            sub_1AC623E3C(*(v44 + 8 * v2));
          }

          OUTLINED_FUNCTION_86_4();
        }

        while ((v47 & 1) != 0);
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AC61452C();
    }

    *(v130 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v2;
    *(v130[6] + 8 * v2) = v1;
    v48 = v130[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (!v49)
    {
      v130[2] = v50;
      *v5 = v130;
LABEL_46:
      v18 = v126;
      v3 = v128;
      break;
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
LABEL_13:
    ;
  }

  if (![v18 farField])
  {
    goto LABEL_77;
  }

  v51 = *v5;
  v52 = (*v5)[5];
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](1);
  v53 = sub_1AC7A0EC8();
  OUTLINED_FUNCTION_15_14(v53, *(v51 + 32));
  if ((v55 & 1) == 0)
  {
LABEL_58:
    v60 = *v5;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_117_5();
    if (!v58 & v63)
    {
      if ((v61 & 1) == 0)
      {
        sub_1AC61452C();
        v11 = v130;
      }
    }

    else
    {
      if (v61)
      {
        v64 = OUTLINED_FUNCTION_85_7(v62);
        sub_1AC6121E0(v64);
      }

      else
      {
        OUTLINED_FUNCTION_85_7(v62);
        sub_1AC615B30();
      }

      v11 = v130;
      v65 = v130[5];
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](1);
      v66 = sub_1AC7A0EC8();
      OUTLINED_FUNCTION_15_14(v66, *(v130 + 32));
      if (v68)
      {
        v69 = ~v67;
        do
        {
          v70 = *(v130[6] + 8 * v1);
          if (v70)
          {
            v71 = v70 == 2;
          }

          else
          {
            v71 = 1;
          }

          if (v71)
          {
            sub_1AC623E3C(v70);
          }

          else if (v70 == 1)
          {
            goto LABEL_121;
          }

          v1 = (v1 + 1) & v69;
          OUTLINED_FUNCTION_45_11();
        }

        while ((v72 & 1) != 0);
      }
    }

    OUTLINED_FUNCTION_118_5();
    *(v74 + 56) |= v73 << v1;
    *(v11[6] + 8 * v1) = v73;
    v75 = v11[2];
    v49 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (!v49)
    {
      v11[2] = v76;
      *v5 = v11;
      goto LABEL_77;
    }

    goto LABEL_117;
  }

  v56 = ~v54;
  while (1)
  {
    v57 = *(v51[6] + 8 * v1);
    v58 = !v57 || v57 == 2;
    if (!v58)
    {
      break;
    }

    sub_1AC623E3C(v57);
LABEL_57:
    v1 = (v1 + 1) & v56;
    OUTLINED_FUNCTION_45_11();
    if ((v59 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  if (v57 != 1)
  {
    goto LABEL_57;
  }

  sub_1AC623E3C(1);
LABEL_77:
  if (![v18 atypicalSpeech])
  {
    goto LABEL_101;
  }

  v77 = *v5;
  v78 = (*v5)[5];
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](2);
  v79 = sub_1AC7A0EC8();
  OUTLINED_FUNCTION_15_14(v79, *(v77 + 32));
  if (v81)
  {
    v82 = ~v80;
    do
    {
      v83 = *(v77[6] + 8 * v1);
      if (v83 >= 2)
      {
        if (v83 == 2)
        {
          sub_1AC623E3C(2);
LABEL_101:

LABEL_102:
          v100 = [v3 reportingOptions];
          if (v100)
          {
            v101 = v100;
            if (([v100 multisegmentResults] & 1) == 0)
            {
              sub_1AC619A58();
            }
          }

          if ((OUTLINED_FUNCTION_120_4() & 4) != 0)
          {
            sub_1AC61094C(v131, 0, v102, v103, v104, v105, v106, v107, v127, v129);
          }

          if ((OUTLINED_FUNCTION_120_4() & 8) != 0)
          {
            sub_1AC61094C(v131, 1, v108, v109, v110, v111, v112, v113, v127, v129);
          }

          if ((OUTLINED_FUNCTION_120_4() & 0x10) != 0)
          {
            sub_1AC61094C(v131, 2, v114, v115, v116, v117, v118, v119, v127, v129);
          }

          if ((OUTLINED_FUNCTION_120_4() & 0x20) != 0)
          {
            sub_1AC619A58();
          }

          else
          {
            sub_1AC6102CC(v131, 2, v120, v121, v122, v123, v124, v125, v127, v129);
          }

          OUTLINED_FUNCTION_105();
          return;
        }
      }

      else
      {
        sub_1AC623E3C(v83);
      }

      v1 = (v1 + 1) & v82;
      OUTLINED_FUNCTION_45_11();
    }

    while ((v84 & 1) != 0);
  }

  v85 = *v5;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_117_5();
  if (!v58 & v63)
  {
    if ((v86 & 1) == 0)
    {
      sub_1AC61452C();
      v11 = v130;
    }

LABEL_97:
    OUTLINED_FUNCTION_118_5();
    *(v97 + 56) |= v96 << v1;
    *(v11[6] + 8 * v1) = 2;
    v98 = v11[2];
    v49 = __OFADD__(v98, 1);
    v99 = v98 + 1;
    if (!v49)
    {
      v11[2] = v99;

      *v5 = v11;
      goto LABEL_102;
    }

    goto LABEL_118;
  }

  if (v86)
  {
    v88 = OUTLINED_FUNCTION_85_7(v87);
    sub_1AC6121E0(v88);
  }

  else
  {
    OUTLINED_FUNCTION_85_7(v87);
    sub_1AC615B30();
  }

  v11 = v130;
  v89 = v130[5];
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](2);
  v90 = sub_1AC7A0EC8();
  OUTLINED_FUNCTION_15_14(v90, *(v130 + 32));
  if ((v92 & 1) == 0)
  {
    goto LABEL_97;
  }

  v93 = ~v91;
  while (2)
  {
    v94 = *(v130[6] + 8 * v1);
    if (v94 < 2)
    {
      sub_1AC623E3C(v94);
      goto LABEL_96;
    }

    if (v94 != 2)
    {
LABEL_96:
      v1 = (v1 + 1) & v93;
      OUTLINED_FUNCTION_45_11();
      if ((v95 & 1) == 0)
      {
        goto LABEL_97;
      }

      continue;
    }

    break;
  }

  v70 = 2;
LABEL_121:
  sub_1AC623E3C(v70);
LABEL_122:
  sub_1AC7A0DB8();
  __break(1u);
}

double sub_1AC738C68@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if ([v1 taskHint] == 1010)
  {
    if (qword_1EB56B5B0 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EB56CF78;
  }

  else
  {
    if (qword_1EB56B5C8 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EB56CFD8;
  }

  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  *&v12 = v5;
  *(&v12 + 1) = v6;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  sub_1AC72CBFC(&unk_1F212F6B0, sub_1AC610930);
  sub_1AC72CC70(&unk_1F212F6D8, sub_1AC610914);
  v9 = [v2 reportingOptions];
  if (v9)
  {
    v10 = v9;
    if (([v9 multisegmentResults] & 1) == 0)
    {
      sub_1AC619A40();
    }
  }

  if (([v2 transcriptionOptions] & 0x10) != 0)
  {
    sub_1AC61085C();
  }

  result = *&v12;
  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_1AC738E20@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_1AC7A0288();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [*a1 powerContext];
  if (v9)
  {
    v10 = v9;
    v11 = [v10 ane];
    v27 = sub_1AC79FF68();
    v28 = v12;

    v13 = [v10 cpu];
    v14 = sub_1AC79FF68();
    v26 = v15;

    v16 = [v10 gpu];
    v17 = sub_1AC79FF68();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v26 = 0;
    v27 = 0;
    v14 = 0;
    v28 = 0;
    v19 = 0;
  }

  v20 = [v8 modelRetention];
  if (v20 >= 5)
  {
    result = sub_1AC7A0B78();
    __break(1u);
  }

  else
  {
    v21 = v20;
    if ([v8 highPriority])
    {
      sub_1AC7A0258();
    }

    else
    {
      sub_1AC7A0268();
    }

    (*(v4 + 32))(a2, v7, v29);
    result = type metadata accessor for SpeechAnalyzer.Options(0);
    *(a2 + *(result + 20)) = 0x402030100uLL >> (8 * v21);
    v23 = (a2 + *(result + 24));
    v24 = v28;
    *v23 = v27;
    v23[1] = v24;
    v25 = v26;
    v23[2] = v14;
    v23[3] = v25;
    v23[4] = v17;
    v23[5] = v19;
  }

  return result;
}

uint64_t sub_1AC739094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1AC5D9374(a5);

  return MEMORY[0x1EEE6DFA0](sub_1AC73910C, a4, 0);
}

uint64_t sub_1AC73910C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[2];
  SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(v0[3], v0[4]);
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC739168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v15;
  *(v8 + 312) = v14;
  *(v8 + 264) = v13;
  *(v8 + 248) = v12;
  *(v8 + 232) = v11;
  *(v8 + 216) = v10;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC7391C0, 0, 0);
}

uint64_t sub_1AC7391C0()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 280);
  v2 = *(v0 + 192);
  sub_1AC7337B8(*(v0 + 176), *(v0 + 184), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), (v0 + 16), *(v0 + 240), *(v0 + 248));
  type metadata accessor for SpeechAnalyzer();
  *(v0 + 288) = sub_1AC732AD8();
  v3 = swift_task_alloc();
  *(v0 + 296) = v3;
  *v3 = v0;
  v3[1] = sub_1AC73929C;
  v4 = *(v0 + 256);
  OUTLINED_FUNCTION_154_1();

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC73929C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  v4 = *(v3 + 296);
  v5 = *(v3 + 288);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v9 + 304) = v8;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC7393A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = *(v12 + 304);
  v14 = *(v12 + 312);
  v16 = *(v12 + 264);
  v15 = *(v12 + 272);
  v17 = *(v12 + 184);
  v18 = *(v12 + 192);
  v19 = *(v12 + 176);
  objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzerConfiguration());
  sub_1AC73ED4C((v12 + 16), (v12 + 96));
  v20 = v13;

  v21 = sub_1AC732FE0((v12 + 16), v13, v19, v17, v14, v18);
  v16();

  sub_1AC73ED84((v12 + 16));
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1AC739490()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC7394B8, v1);
}

uint64_t sub_1AC7394B8()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange;
  *(v0 + 32) = *v1;
  *(v0 + 40) = *(v1 + 8);
  *(v0 + 48) = *(v1 + 16);
  *(v0 + 56) = *(v1 + 24);
  *(v0 + 64) = *(v1 + 32);
  *(v0 + 72) = *(v1 + 40);
  *(v0 + 128) = *(v1 + 48);
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC739510()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 128))
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 40);
    *(v0 + 80) = *(v0 + 32);
    *(v0 + 88) = v6;
    *(v0 + 96) = *(v0 + 48);
    *(v0 + 112) = v5;
    *(v0 + 120) = v4;
    v1 = sub_1AC7A0558();
  }

  v7 = *(v0 + 8);

  return v7(v1, v3, v2);
}

uint64_t sub_1AC7395AC()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1AC5D9374(v3);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC739610()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
  *(v0 + 40) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC739638, v1);
}

uint64_t sub_1AC739638()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[5];
  SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(v0[2], v0[3]);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC73969C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);
  sub_1AC5C3958(*(v0 + 16));
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC739708()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return DictationTranscriber.cancelPendingResultsAndPause()();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC7397D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_44();

    return v13();
  }
}

uint64_t sub_1AC7398F8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_1AC739968()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return DictationTranscriber.resume()();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC739A38()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_44();

    return v13();
  }
}

uint64_t sub_1AC739B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC739B70()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
  OUTLINED_FUNCTION_172();
  if ((sub_1AC7A0708() & 1) == 0)
  {
    v1 = 0;
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1AC606140;
  v6 = OUTLINED_FUNCTION_172();

  return SpeechAnalyzer.finalize(through:)(v6, v7, v1, v8);
}

uint64_t sub_1AC739C64()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
}

uint64_t sub_1AC739D10()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC62F764();
  }

  else
  {
    OUTLINED_FUNCTION_82();
    v7 = MEMORY[0x1E69E7CD0];

    return v6(v7);
  }
}

uint64_t sub_1AC739DE4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC739EE8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (v1)
  {
    v3 = *(v0 + 40);
    v4 = [v3 tasks];

    v5 = sub_1AC7A0448();
    v6 = sub_1AC739FBC(v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  OUTLINED_FUNCTION_82();

  return v7(v6);
}

uint64_t sub_1AC739FBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE90, &qword_1AC7A82A0);
    v2 = sub_1AC7A0988();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v14 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_1AC73E7A8(v11, v12))
  {
    v9 = i;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_1AC5DC8D8(*(a1 + 48) + 40 * (v10 | (v9 << 6)), &v13);
    swift_dynamicCast();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC73A154()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC62F764();
  }

  else
  {
    v6 = *(v1 + 8);

    return v6(0, 0xE000000000000000);
  }
}

uint64_t sub_1AC73A22C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC73A330()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[3];

  if (v1)
  {
    v3 = v0[5];
    v4 = [v3 language];

    v1 = sub_1AC79FF68();
    v6 = v5;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = v0[1];

  return v7(v1, v6);
}

uint64_t sub_1AC73A3FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC62F808();
  }

  else
  {
    OUTLINED_FUNCTION_82();
    v7 = MEMORY[0x1E69E7CC8];

    return v6(v7);
  }
}

uint64_t sub_1AC73A4D0()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC73A5E0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_82();

  return v3();
}

uint64_t sub_1AC73A664()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC62F998();
  }

  else
  {
    OUTLINED_FUNCTION_82();
    v7 = MEMORY[0x1E69E7CC8];

    return v6(v7);
  }
}

uint64_t sub_1AC73A738()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1AC73A848()
{
  OUTLINED_FUNCTION_129_0();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72_5();
  v9 = sub_1AC61C24C(v4);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
LABEL_11:
    v18 = sub_1AC7A0288();
    OUTLINED_FUNCTION_119_5(v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v2;
    v19[5] = v10;
    v20 = v2;
    sub_1AC659B08();

    OUTLINED_FUNCTION_130();
    return;
  }

  v11 = v9;
  v26 = MEMORY[0x1E69E7CC0];
  sub_1AC631600(0, v9 & ~(v9 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v21 = v1;
    v22 = v0;
    v12 = 0;
    v10 = v26;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1B26E95B0](v12, v4);
      }

      else
      {
        v13 = *(v4 + 8 * v12 + 32);
      }

      v14 = v13;
      [v13 CMTimeValue];

      v16 = *(v26 + 16);
      v15 = *(v26 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1AC631600(v15 > 1, v16 + 1, 1);
      }

      *(v26 + 16) = v16 + 1;
      v17 = (v26 + 24 * v16);
      v17[4] = v23;
      ++v12;
      v17[5] = v24;
      v17[6] = v25;
    }

    while (v11 != v12);
    v2 = v22;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1AC73AA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC73AA2C, 0, 0);
}

uint64_t sub_1AC73AA2C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_contextualizedTranscriber);
  *(v0 + 40) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1AC73AB1C;
    v3 = *(v0 + 32);

    return DictationTranscriber.requestResultAtEndpoints(_:)(v3);
  }

  else
  {
    **(v0 + 16) = 1;
    OUTLINED_FUNCTION_44();

    return v5();
  }
}

uint64_t sub_1AC73AB1C()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v5 = *(v2 + 48);
  *v4 = *v1;
  *(v3 + 56) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC73AC58()
{
  **(v0 + 16) = *(v0 + 56) != 0;
  OUTLINED_FUNCTION_44();
  return v1();
}

uint64_t sub_1AC73AD00(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC73AD14()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[2];
  v1 = v0[3];
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
    OUTLINED_FUNCTION_235();
    *(swift_allocObject() + 16) = v2;
    v4 = v2;
    v5 = swift_task_alloc();
    v6 = OUTLINED_FUNCTION_55(v5);
    *v6 = v7;
    v6[1] = sub_1AC61DAF0;

    return SpeechAnalyzer.prepareToAnalyze(withProgressReadyHandler:)();
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
    v10 = swift_task_alloc();
    v0[5] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_85_0(v10);
    OUTLINED_FUNCTION_138();

    return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v11, v12, v13);
  }
}

uint64_t sub_1AC73AE68()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1AC79F7F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC73AF18()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0[3] + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  v2 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v3 = OUTLINED_FUNCTION_93();
  v0[7] = sub_1AC6CBAE8(v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_85_0(v4);

  return SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)();
}

uint64_t sub_1AC73B044()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_44();

    return v13();
  }
}

uint64_t sub_1AC73B208(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v8 = sub_1AC79F7F8();
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_1AC79F7A8();
  v11 = a2;
  a4;
  v12 = swift_task_alloc();
  v4[8] = v12;
  *v12 = v4;
  v12[1] = sub_1AC73B344;

  return sub_1AC73AE68();
}

uint64_t sub_1AC73B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = v12;
  v15 = *v13;
  v16 = *v13;
  OUTLINED_FUNCTION_18();
  *v17 = v16;
  v18 = v15[8];
  v19 = v15[6];
  v20 = v15[5];
  v21 = v15[4];
  v22 = v15[3];
  v23 = v15[2];
  v24 = *v13;
  *v17 = *v13;

  (*(v20 + 8))(v19, v21);

  v25 = v15[7];
  if (v14)
  {
    v26 = sub_1AC79F738();

    v27 = OUTLINED_FUNCTION_71_6();
    v28(v27, v26);
  }

  else
  {
    v29 = OUTLINED_FUNCTION_71_6();
    v30(v29, 0);
  }

  v32 = v16 + 6;
  v31 = v16[6];
  _Block_release(v32[1]);

  v33 = v24[1];
  OUTLINED_FUNCTION_77_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_1AC73B518(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC73B52C()
{
  v1 = v0[20];
  type metadata accessor for AnalysisContext();
  swift_allocObject();
  v2 = AnalysisContext.init()();
  v0[22] = v2;
  if (v1)
  {
    v3 = v0[20];
    v4 = sub_1AC61C24C(v3);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = v4;
      v17 = MEMORY[0x1E69E7CC0];
      result = sub_1AC631538(0, v4 & ~(v4 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        return result;
      }

      v16 = v2;
      v8 = 0;
      v5 = v17;
      v9 = v0[20] & 0xC000000000000001;
      do
      {
        if (v9)
        {
          v10 = MEMORY[0x1B26E95B0](v8, v3);
        }

        else
        {
          v10 = *(v3 + 8 * v8 + 32);
        }

        v11 = v10;
        memcpy(v0 + 2, &v10[OBJC_IVAR___SFContextualNamedEntity_contextualNamedEntity], 0x48uLL);
        sub_1AC73E6A4((v0 + 2), (v0 + 11));

        v13 = *(v17 + 16);
        v12 = *(v17 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1AC631538(v12 > 1, v13 + 1, 1);
        }

        ++v8;
        *(v17 + 16) = v13 + 1;
        memcpy((v17 + 72 * v13 + 32), v0 + 2, 0x48uLL);
      }

      while (v6 != v8);
      v2 = v16;
    }

    AnalysisContext.contextualNamedEntities.setter(v5);
  }

  v14 = *(v0[21] + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_85_0(v15);

  return SpeechAnalyzer.setContext(_:)(v2);
}

uint64_t sub_1AC73B728()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC73B824()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC73B880()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 192);

  return v2();
}

uint64_t sub_1AC73B994(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    type metadata accessor for SFContextualNamedEntity();
    a1 = sub_1AC7A0158();
  }

  v3[4] = a1;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1AC73BA70;

  return sub_1AC73B518(a1);
}

uint64_t sub_1AC73BA70()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[3];
  if (v2)
  {
    v11 = sub_1AC79F738();

    v12 = OUTLINED_FUNCTION_71_6();
    v13(v12, v11);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_71_6();
    v15(v14, 0);
  }

  _Block_release(v4[3]);
  v16 = v9[1];
  OUTLINED_FUNCTION_523();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

id sub_1AC73BC18(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1AC73BD0C()
{
  OUTLINED_FUNCTION_129_0();
  v140 = v0;
  v141 = v1;
  v134 = v2;
  v125 = v3;
  v144 = v4;
  v146 = v5;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD80, &qword_1AC7B2690);
  v6 = OUTLINED_FUNCTION_80(v139);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_4();
  v137 = v9;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD88, &qword_1AC7B2698);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_89_1();
  v133 = v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD90, &qword_1AC7B26A0);
  v17 = OUTLINED_FUNCTION_80(v132);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_4();
  v131 = v20;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v118 - v22;
  v23 = sub_1AC79F568();
  v24 = OUTLINED_FUNCTION_40(v23);
  v121 = v25;
  v122 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6();
  v120 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD98, &qword_1AC7B26A8);
  OUTLINED_FUNCTION_167(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_89_1();
  v123 = v34;
  v145 = sub_1AC79F4F8();
  v35 = OUTLINED_FUNCTION_80(v145);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_95_4();
  v38 = sub_1AC79F5C8();
  v39 = OUTLINED_FUNCTION_40(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_4();
  v129 = v44;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v118 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C740, &qword_1AC7AA660);
  v49 = OUTLINED_FUNCTION_167(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_4();
  v124 = v52;
  OUTLINED_FUNCTION_34();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v118 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v118 - v57;
  v142 = *(v146 + 9);
  sub_1AC625BA4(v142, &v118 - v57);
  v126 = v58;
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v56, 1, v38) == 1)
  {
    v127 = 0;
    v128 = 0xE000000000000000;
  }

  else
  {
    (*(v41 + 32))(v47, v56, v38);
    sub_1AC79F4E8();
    OUTLINED_FUNCTION_22_13();
    sub_1AC73F7DC(v59, v60);
    v127 = sub_1AC7A00D8();
    v128 = v61;
    (*(v41 + 8))(v47, v38);
  }

  v62 = v41;
  v63 = v129;
  if (v144)
  {
    v147 = v127;
    v148 = v128;
    sub_1AC70496C();
    OUTLINED_FUNCTION_21_13();
    sub_1AC7A04A8();
    v145 = 0;

    v127 = MEMORY[0x1B26E8BE0](*&v149[0], *(&v149[0] + 1), *&v149[1], *(&v149[1] + 1));
    v128 = v64;
  }

  else
  {
    v145 = 0;
  }

  v65 = *(v146 + 11);
  v66 = *(v65 + 16);
  v143 = v41;
  if (v66)
  {
    v119 = v38;
    *&v149[0] = MEMORY[0x1E69E7CC0];
    sub_1AC7A0A88();
    v136 = *(v65 + 16);
    v67 = type metadata accessor for TranscriptionSegment();
    v68 = 0;
    OUTLINED_FUNCTION_167(v67);
    v135 = v69;
    v70 = *(v69 + 80);
    OUTLINED_FUNCTION_89_0();
    v71 = v137;
    while (v136 != v68)
    {
      if (v68 >= *(v65 + 16))
      {
        goto LABEL_29;
      }

      v72 = v139;
      v73 = *(v139 + 48);
      v74 = *(v135 + 72);
      sub_1AC7404D4();
      *v71 = v68;
      v75 = *(v72 + 48);
      sub_1AC740748();
      sub_1AC73D6CC();
      sub_1AC5C720C(v71, &qword_1EB56DD80, &qword_1AC7B2690);
      sub_1AC7A0A68();
      v76 = *(*&v149[0] + 16);
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
      if (v66 == ++v68)
      {
        v38 = v119;
        v62 = v143;
        v63 = v129;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_13:
    sub_1AC5CF764(0, &qword_1EB56DDA0, off_1E797ACA8);
    OUTLINED_FUNCTION_93();
    v136 = sub_1AC7A0148();

    v77 = v142;
    v78 = *(v142 + 16);
    if (!v78)
    {
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C498, &qword_1AC7A9120);
      v97 = sub_1AC7A0148();

      v98 = v146[104];
      v99 = *(v146 + 12);
      sub_1AC79FBC8();
      OUTLINED_FUNCTION_93();
      v100 = sub_1AC7A0148();
      v101 = sub_1AC79FF58();

      v102 = v124;
      sub_1AC5C6E6C();
      v103 = 0.0;
      if (__swift_getEnumTagSinglePayload(v102, 1, v38) != 1)
      {
        v145 = v98;
        (*(v62 + 32))(v63, v102, v38);
        v104 = v120;
        sub_1AC79F588();
        v105 = v123;
        sub_1AC625F4C();
        (*(v121 + 8))(v104, v122);
        sub_1AC79F538();
        v106 = OUTLINED_FUNCTION_154_1();
        if (__swift_getEnumTagSinglePayload(v106, 1, v105) == 1)
        {
          sub_1AC5C720C(v105, &qword_1EB56DD98, &qword_1AC7B26A8);
          v107 = *(v62 + 8);
          v108 = OUTLINED_FUNCTION_123_1();
          v109(v108);
        }

        else
        {
          sub_1AC64F5F4();
          sub_1AC79F548();
          v103 = *v149;
          v110 = BYTE8(v149[0]);
          (*(*(v105 - 8) + 8))(v105, v105);
          v111 = *(v62 + 8);
          v112 = OUTLINED_FUNCTION_123_1();
          v113(v112);
          if (v110)
          {
            v103 = 0.0;
          }
        }

        v98 = v145;
      }

      v114 = objc_allocWithZone(STTranscriberMultisegmentResult);
      v115 = v146;
      v116 = *(v146 + 124);
      v149[0] = *(v146 + 108);
      v149[1] = v116;
      v149[2] = *(v146 + 140);
      v117 = v136;
      [v114 initWithSegments:v136 transcriptions:v97 earResultType:v98 nBestChoices:v100 recognitionAudioRange:v149 bestFormattedString:v101 bestFormattedStringSegmentConfidence:v103];

      sub_1AC5C720C(v126, &qword_1EB56C740, &qword_1AC7AA660);
      v125(v115);
      OUTLINED_FUNCTION_130();
      return;
    }

    v147 = MEMORY[0x1E69E7CC0];
    sub_1AC631838(0, v78, 0);
    v79 = 0;
    v80 = v147;
    v81 = *(v62 + 80);
    OUTLINED_FUNCTION_89_0();
    v139 = v77 + v82;
    v140 = v78;
    v137 = (v62 + 32);
    v138 = (v62 + 16);
    v141 = *(v77 + 16);
    v144 &= 1u;
    v83 = v133;
    while (v141 != v79)
    {
      if (v79 >= *(v77 + 16))
      {
        goto LABEL_31;
      }

      v84 = v132;
      v85 = *(v132 + 48);
      v86 = v143;
      v87 = v130;
      (*(v143 + 16))(&v130[v85], v139 + *(v143 + 72) * v79, v38);
      v88 = v131;
      *v131 = v79;
      v89 = v88 + *(v84 + 48);
      v90 = *(v86 + 32);
      v91 = v38;
      v90(v89, &v87[v85], v38);
      memcpy(v149, v146, 0x101uLL);
      v92 = sub_1AC79F588();
      MEMORY[0x1EEE9AC00](v92);
      *(&v118 - 4) = v79;
      *(&v118 - 24) = v144;
      *(&v118 - 2) = v89;
      *(&v118 - 1) = v149;
      v93 = v145;
      v94 = sub_1AC72C424(v83, v134, (&v118 - 6));
      v145 = v93;
      sub_1AC5C720C(v83, &qword_1EB56DD88, &qword_1AC7B2698);
      sub_1AC5C720C(v88, &qword_1EB56DD90, &qword_1AC7B26A0);
      v147 = v80;
      v96 = *(v80 + 16);
      v95 = *(v80 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_1AC631838(v95 > 1, v96 + 1, 1);
        v80 = v147;
      }

      *(v80 + 16) = v96 + 1;
      *(v80 + 8 * v96 + 32) = v94;
      ++v79;
      v38 = v91;
      v77 = v142;
      if (v140 == v79)
      {
        v62 = v143;
        v63 = v129;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1AC73C784()
{
  OUTLINED_FUNCTION_129_0();
  v91 = v0;
  v2 = v1;
  v3 = sub_1AC79F568();
  v4 = OUTLINED_FUNCTION_40(v3);
  v93 = v5;
  v94 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v92 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD98, &qword_1AC7B26A8);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_89_1();
  v95 = v14;
  v90 = sub_1AC79F4F8();
  v15 = OUTLINED_FUNCTION_80(v90);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v99 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C740, &qword_1AC7AA660);
  v21 = OUTLINED_FUNCTION_167(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_4();
  v96 = v24;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v79 - v26;
  v28 = sub_1AC79F5C8();
  v29 = OUTLINED_FUNCTION_40(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_4();
  v98 = v34;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v35);
  v83 = &v79 - v36;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v79 - v38;
  v40 = *(v2 + 6);
  v41 = *(v2 + 14);
  v42 = *(v2 + 15);
  v43 = *(v2 + 8);
  v44 = v2[1];
  v104 = *v2;
  v105 = v44;
  v106 = v2[2];
  sub_1AC7A0558();
  v87 = v41;
  v86 = v42;
  v45 = v28;
  v88 = v40;
  v85 = v43;
  v84 = sub_1AC7A06B8();
  v89 = v2;
  v46 = *(v2 + 9);
  sub_1AC625BA4(v46, v27);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v80 = *(v31 + 32);
  v80(v39, v27, v28);
  sub_1AC79F4E8();
  v48 = v31 + 8;
  v47 = *(v31 + 8);
  v47(v39, v45);
  OUTLINED_FUNCTION_22_13();
  v97 = sub_1AC73F7DC(v49, v50);
  sub_1AC7A00D8();
  v82 = sub_1AC79FF58();

  v51 = v96;
  v81 = v46;
  sub_1AC625BA4(v46, v96);
  if (__swift_getEnumTagSinglePayload(v51, 1, v45) == 1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v52 = v31;
  v53 = v83;
  v54 = OUTLINED_FUNCTION_39();
  (v80)(v54);
  v55 = v92;
  sub_1AC79F588();
  v47(v53, v45);
  v56 = v95;
  sub_1AC625F4C();
  (*(v93 + 1))(v55, v94);
  v57 = sub_1AC79F538();
  if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
  {
    sub_1AC5C720C(v56, &qword_1EB56DD98, &qword_1AC7B26A8);
    v58 = 0.0;
  }

  else
  {
    sub_1AC64F5F4();
    sub_1AC79F548();
    v58 = v100;
    v59 = v101;
    (*(*(v57 - 8) + 8))(v56, v57);
    if (v59)
    {
      v58 = 0.0;
    }
  }

  v60 = v81;
  v61 = *(v81 + 16);
  if (v61)
  {
    v93 = v47;
    v94 = v48;
    v96 = v45;
    v100 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v61, 0);
    v92 = *(v52 + 16);
    v62 = v100;
    v63 = *(v52 + 80);
    OUTLINED_FUNCTION_89_0();
    v65 = v60 + v64;
    v95 = v66;
    v67 = *(v66 + 56);
    do
    {
      v68 = v98;
      v69 = v96;
      v92(v98, v65, v96);
      sub_1AC79F4E8();
      v70 = sub_1AC7A00D8();
      v72 = v71;
      v93(v68, v69);
      v100 = v62;
      v74 = *(*&v62 + 16);
      v73 = *(*&v62 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1AC6310CC(v73 > 1, v74 + 1, 1);
        v62 = v100;
      }

      *(*&v62 + 16) = v74 + 1;
      v75 = *&v62 + 16 * v74;
      *(v75 + 32) = v70;
      *(v75 + 40) = v72;
      v65 += v67;
      --v61;
    }

    while (v61);
  }

  v91(v89);
  v76 = objc_allocWithZone(STTranscriberSingleSegmentResult);
  v77 = sub_1AC7A0148();

  v100 = v88;
  v101 = v87;
  v102 = v86;
  v103 = v85;
  v78 = v82;
  [v76 initWithIsFinal:v84 & 1 resultsFinalizationTime:&v100 text:v82 bestTextSegmentConfidence:v77 alternatives:v58];

  OUTLINED_FUNCTION_130();
}

id sub_1AC73CE34()
{
  v1 = [v0 segments];
  sub_1AC5CF764(0, &qword_1EB56DDA0, off_1E797ACA8);
  v2 = sub_1AC7A0158();

  v3 = sub_1AC61C24C(v2);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 + 32;
  v22 = v2;
  v23 = v3;
  v18 = v2 + 32;
  v19 = v2 & 0xC000000000000001;
LABEL_2:
  if (v4 == v3)
  {

    return (v4 == v3);
  }

  else
  {
    sub_1AC61C25C(v4, v5 == 0, v2);
    if (v5)
    {
      result = MEMORY[0x1B26E95B0](v4, v2);
    }

    else
    {
      result = *(v6 + 8 * v4);
    }

    if (!__OFADD__(v4, 1))
    {
      v20 = v4;
      v21 = v4 + 1;
      v24 = result;
      v8 = [result text];
      sub_1AC5CF764(0, &qword_1EB56DDC8, off_1E797AD78);
      v9 = sub_1AC7A0158();

      result = sub_1AC61C24C(v9);
      v10 = result;
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {

          v4 = v21;
          v2 = v22;
          v3 = v23;
          v6 = v18;
          v5 = v19;
          goto LABEL_2;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1B26E95B0](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          result = *(v9 + 8 * i + 32);
        }

        v12 = result;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v13 = [result text];
        v14 = sub_1AC79FF68();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {

          v3 = v23;
          v4 = v20;
          return (v4 == v3);
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1AC73D08C()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_123_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v18 - v16;
  memcpy(v22, v3, 0x101uLL);
  sub_1AC79F588();
  v18[2] = v7;
  v19 = v5;
  v20 = v9;
  v21 = v22;
  sub_1AC72C424(v17, v1, v18);
  sub_1AC5C720C(v17, &qword_1EB56DD88, &qword_1AC7B2698);
  OUTLINED_FUNCTION_105();
}

void sub_1AC73D178()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v27 = v3;
  v28 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1AC79F5C8();
  v12 = OUTLINED_FUNCTION_40(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_95_4();
  v17 = sub_1AC79F538();
  v18 = OUTLINED_FUNCTION_40(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  sub_1AC5CF764(0, &qword_1EB56DDC8, off_1E797AD78);
  (*(v20 + 16))(v25, v8, v17);
  (*(v14 + 16))(v0, v27, v11);
  v26 = v2[1];
  v29[0] = *v2;
  v29[1] = v26;
  v29[2] = v2[2];
  sub_1AC73D310(v25, v0, v29, ((v6 | v10) == 0) & v28);
  OUTLINED_FUNCTION_105();
}

id sub_1AC73D310(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v43 = sub_1AC79F4F8();
  v7 = OUTLINED_FUNCTION_80(v43);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v42 = sub_1AC79F668();
  v10 = OUTLINED_FUNCTION_40(v42);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C678, &qword_1AC7A9C00);
  OUTLINED_FUNCTION_80(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_35_9();
  sub_1AC64F69C();
  v22 = a1;
  sub_1AC79F548();
  if (v48)
  {
    v23 = 0.0;
    v24 = 0.0;
  }

  else
  {
    sub_1AC7A0728();
    v26 = v25;
    v27 = *a3;
    v28 = a3[1];
    v29 = a3[2];
    sub_1AC7A0728();
    v24 = v26 - v30;
    sub_1AC7A0728();
    v23 = v31;
  }

  sub_1AC79F528();
  sub_1AC5C8B9C(&qword_1EB56DDD0, &qword_1EB56C678, &qword_1AC7A9C00);
  sub_1AC79F5F8();
  sub_1AC5C720C(v4, &qword_1EB56C678, &qword_1AC7A9C00);
  sub_1AC79F658();
  (*(v12 + 8))(v17, v42);
  OUTLINED_FUNCTION_22_13();
  sub_1AC73F7DC(v32, v33);
  sub_1AC7A00D8();
  if (a4)
  {
    sub_1AC70496C();
    OUTLINED_FUNCTION_21_13();
    sub_1AC7A04A8();

    MEMORY[0x1B26E8BE0]();
  }

  v34 = sub_1AC79FF58();

  sub_1AC64F5F4();
  sub_1AC79F548();
  if (v47)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v46;
  }

  v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v34 confidence:v35 startTime:v24 duration:v23];

  v37 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_80(v37);
  (*(v38 + 8))(a2);
  v39 = sub_1AC79F538();
  OUTLINED_FUNCTION_80(v39);
  (*(v40 + 8))(v22);
  return v36;
}

void sub_1AC73D6CC()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  memcpy(__dst, v2, 0x101uLL);
  memcpy(v22, v3, sizeof(v22));
  sub_1AC73D08C();
  v10 = type metadata accessor for TranscriptionSegment();
  v11 = *(v9 + *(v10 + 20));
  v18[16] = v5;
  v19 = __dst;
  v20 = v7;
  sub_1AC72C984(v1, v18, v11);
  v12 = *(v9 + *(v10 + 24));
  v13 = *(v12 + 16);
  v14 = (v12 + 120);
  for (i = 1.0; v13; --v13)
  {
    v16 = *v14;
    v14 += 20;
    i = i * v16 * 0.001;
  }

  v17 = objc_allocWithZone(SFAnalyzerTranscriptionSegment);
  OUTLINED_FUNCTION_39();
  sub_1AC73E138(i);
  OUTLINED_FUNCTION_130();
}

uint64_t String.strippedOfLeadingWhitespaceAndPunctuation.getter()
{
  sub_1AC70496C();
  OUTLINED_FUNCTION_21_13();
  sub_1AC7A04A8();
  v0 = MEMORY[0x1B26E8BE0]();

  return v0;
}

uint64_t sub_1AC73D8A8(uint64_t *a1)
{
  v2 = sub_1AC79F498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = *a1;
  v6 = a1[1];
  if (sub_1AC79FE78())
  {
    v7 = 1;
  }

  else
  {
    if (qword_1EB56B608 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_1EB56DC30);
    (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v2);
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    (*(v3 + 32))(v10 + v9, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v7 = sub_1AC72CFB4(v5, v6, sub_1AC7407A0);
  }

  return v7 & 1;
}

uint64_t type metadata accessor for ObjCSpeechAnalyzer()
{
  result = qword_1EB56DC78;
  if (!qword_1EB56DC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AC73DAD4()
{
  sub_1AC73DB94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1AC73DB94()
{
  if (!qword_1EB56DC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56C798, &qword_1AC7B2480);
    v0 = sub_1AC7A0798();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB56DC88);
    }
  }
}

uint64_t destroy for FixedFunctionPipeline(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];

  v8 = a1[6];
  swift_unknownObjectRelease();
  v9 = a1[7];
  swift_unknownObjectRelease();
  v10 = a1[8];
  swift_unknownObjectRelease();
  v11 = a1[9];

  return swift_unknownObjectRelease();
}

void *initializeWithCopy for FixedFunctionPipeline(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for FixedFunctionPipeline(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  v7 = a1[3];
  a1[3] = a2[3];

  v8 = a1[4];
  a1[4] = a2[4];

  v9 = a1[5];
  a1[5] = a2[5];

  v10 = a1[6];
  a1[6] = a2[6];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11 = a1[7];
  a1[7] = a2[7];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v12 = a1[8];
  a1[8] = a2[8];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v13 = a1[9];
  a1[9] = a2[9];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for FixedFunctionPipeline(void *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = a2[1];

  v8 = a1[4];

  v9 = a1[5];
  *(a1 + 2) = a2[2];

  v10 = a1[6];
  swift_unknownObjectRelease();
  v11 = a1[7];
  *(a1 + 3) = a2[3];
  swift_unknownObjectRelease();
  v12 = a1[8];
  swift_unknownObjectRelease();
  v13 = a1[9];
  *(a1 + 4) = a2[4];
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for FixedFunctionPipeline(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for FixedFunctionPipeline(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AC73DFB8()
{
  v0 = sub_1AC79F498();
  __swift_allocate_value_buffer(v0, qword_1EB56DC30);
  __swift_project_value_buffer(v0, qword_1EB56DC30);
  sub_1AC79F468();
  return sub_1AC79F478();
}

id sub_1AC73E01C(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = a1[2];
  v6 = sub_1AC79F9F8();
  sub_1AC5CF764(0, &qword_1EB56DE58, off_1E797ACE0);
  v7 = sub_1AC7A0148();

  v8 = sub_1AC79FF58();

  v9 = [v3 initWithRange:v12 dominantLocale:v6 alternatives:v7 detectedLanguageCode:v8];

  v10 = sub_1AC79FB18();
  (*(*(v10 - 8) + 8))(a2, v10);
  return v9;
}

id sub_1AC73E138(double a1)
{
  sub_1AC5CF764(0, &qword_1EB56DDC8, off_1E797AD78);
  v3 = sub_1AC7A0148();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C498, &qword_1AC7A9120);
  v4 = sub_1AC7A0148();

  v5 = [v1 initWithText:v3 alternatives:v4 confidence:a1];

  return v5;
}

uint64_t sub_1AC73E1F8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1AC5C4D48;

  return v7();
}

uint64_t sub_1AC73E2E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1AC5C4D48;

  return v8();
}

uint64_t sub_1AC73E3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1AC5C6E6C();
  v13 = sub_1AC7A0288();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1AC5C720C(v12, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1AC7A01B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AC7A0018() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

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

      sub_1AC5C720C(a3, &qword_1EB56BE70, &qword_1AC7A8270);

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

  sub_1AC5C720C(a3, &qword_1EB56BE70, &qword_1AC7A8270);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1AC73E700()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_0(v5);
  *v6 = v7;
  v6[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_103_4();

  return sub_1AC73AA08(v8, v9, v10, v11, v3);
}

uint64_t sub_1AC73E7A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1AC7A0E78();
  sub_1AC7A0048();
  result = sub_1AC7A0EC8();
  v8 = v5 + 56;
  v9 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v10 = result & v9;
    v11 = (result & v9) >> 6;
    v12 = *(v8 + 8 * v11);
    v13 = 1 << (result & v9);
    if ((v13 & v12) == 0)
    {
      break;
    }

    v14 = (*(v5 + 48) + 16 * v10);
    if (*v14 == a1 && v14[1] == a2)
    {
      goto LABEL_13;
    }

    if (sub_1AC7A0D38())
    {
      v20 = v14[1];
LABEL_13:
      *v14 = a1;
      v14[1] = a2;
    }

    result = v10 + 1;
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 8 * v11) = v13 | v12;
    v16 = (*(v5 + 48) + 16 * v10);
    *v16 = a1;
    v16[1] = a2;
    v17 = *(v5 + 16);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (!v18)
    {
      *(v5 + 16) = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC73E8E8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC5C4D48;

  return sub_1AC73B994(v1, v2, v3);
}

uint64_t sub_1AC73E994()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_30_12(v6);

  return v9(v8);
}

uint64_t objectdestroy_60Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_68_7();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1AC73EA68()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_0(v5);
  *v6 = v7;
  v6[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_523();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1AC73EB14()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  v6 = OUTLINED_FUNCTION_70_2();

  return v7(v6);
}

uint64_t sub_1AC73EBB8()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C5380;
  v6 = OUTLINED_FUNCTION_70_2();

  return v7(v6);
}

uint64_t sub_1AC73EC5C()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_30_12(v6);

  return v9(v8);
}

uint64_t sub_1AC73ECF8(_OWORD *a1, char a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = a1[2];
  v7[1] = a1[1];
  v7[2] = v5;
  v7[0] = *a1;
  return (*(v4 + 16))(v4, v7, a2 & 1, a3 & 1);
}

uint64_t sub_1AC73EDB4()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29_0(v6);
  *v7 = v8;
  v7[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_523();

  return sub_1AC739094(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1AC73EE5C()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29_0(v6);
  *v7 = v8;
  v7[1] = sub_1AC5C4D48;

  return sub_1AC737240(v4, v2, v5);
}

uint64_t sub_1AC73EF00(void *a1)
{
  v1 = [a1 taskForMemoryLock];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC73EF64(void *a1)
{
  v1 = [a1 languageConstraints];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1AC79FB18();
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t sub_1AC73EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC72F2E4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC72FA74(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C5380;

  return sub_1AC730204(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC730994(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC731124(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC7318C8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC732058(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF0, &qword_1AC7B25F8);
  OUTLINED_FUNCTION_22(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  OUTLINED_FUNCTION_4_17(*(v15 + 64));
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_124(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_6_14(v17);
  OUTLINED_FUNCTION_77_2();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

void sub_1AC73F6F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1AC73298C();
}

uint64_t sub_1AC73F7DC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC73F820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDB8, &unk_1AC7B26B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC73F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD8, &qword_1AC7B25D8);
  OUTLINED_FUNCTION_22(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  OUTLINED_FUNCTION_4_17(*(v15 + 64));
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_124(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_6_14(v17);
  OUTLINED_FUNCTION_77_2();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1AC73FAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC8, &unk_1AC7B25C0);
  OUTLINED_FUNCTION_22(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  OUTLINED_FUNCTION_4_17(*(v15 + 64));
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_124(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_6_14(v17);
  OUTLINED_FUNCTION_77_2();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1AC73FC00@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, _BYTE *, uint64_t)@<X5>, void *a6@<X8>)
{
  memcpy(__dst, __src, 0x101uLL);
  result = a5(a2, a3, __dst, a4);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1AC73FC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC0, &unk_1AC7B25B0);
  OUTLINED_FUNCTION_22(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  OUTLINED_FUNCTION_4_17(*(v15 + 64));
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_124(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_6_14(v17);
  OUTLINED_FUNCTION_77_2();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1AC73FE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB8, &qword_1AC7B25A8);
  OUTLINED_FUNCTION_22(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  OUTLINED_FUNCTION_4_17(*(v15 + 64));
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_124(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_6_14(v17);
  OUTLINED_FUNCTION_77_2();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1AC73FF3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1AC732914();
}

uint64_t sub_1AC740018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA8, &qword_1AC7B2598);
  OUTLINED_FUNCTION_22(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  OUTLINED_FUNCTION_4_17(*(v15 + 64));
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_124(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_6_14(v17);
  OUTLINED_FUNCTION_77_2();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t objectdestroy_106Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_40(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v5 + 8))(v2 + v7, v3);
  v13 = *(v2 + v9);

  v14 = *(v2 + v10);

  v15 = *(v2 + v11);

  return MEMORY[0x1EEE6BDD0](v2, v11 + 8, v6 | 7);
}

uint64_t sub_1AC740260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA0, &qword_1AC7B2588);
  OUTLINED_FUNCTION_22(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  OUTLINED_FUNCTION_4_17(*(v15 + 64));
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_124(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_6_14(v17);
  OUTLINED_FUNCTION_77_2();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t objectdestroy_113Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_573();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_119Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_127Tm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_573();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1AC74047C()
{
  OUTLINED_FUNCTION_50_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_39();
  v7(v6);
  return v0;
}

uint64_t sub_1AC7404D4()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v0;
}

uint64_t sub_1AC74052C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_80(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1AC740584()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_30_12(v6);

  return v9(v8);
}