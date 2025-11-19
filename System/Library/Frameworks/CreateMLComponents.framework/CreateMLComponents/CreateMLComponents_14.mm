uint64_t sub_237D855C0()
{

  sub_237CBA6B8(*(v0 + 24), *(v0 + 32));

  sub_237CBA6B8(*(v0 + 128), *(v0 + 136));

  v1 = OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageEncoder_packageDirectoryURL;
  sub_237EF5EF0();
  OUTLINED_FUNCTION_22_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_237D856AC()
{
  result = sub_237EF5EF0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_237D857C0()
{
  OUTLINED_FUNCTION_13_4();
  v154 = v1;
  v2 = v0;
  v4 = v3;
  v166 = *MEMORY[0x277D85DE8];
  v155 = *v0;
  v5 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v149 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_16();
  v150 = v11;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_16();
  v151 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  v153 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  v157 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v140 - v19;
  v148 = type metadata accessor for BlobJSONDecoder();
  v21 = swift_allocObject();
  v22 = sub_237EF9690();
  v23 = MEMORY[0x277D84F90];
  v147 = v22;
  *(v21 + 16) = sub_237EF8230();
  v2[2] = v21;
  v2[15] = v23;
  v152 = v2 + 15;
  v2[14] = 0;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  v2[28] = v23;
  v2[29] = 0;
  v2[30] = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v156 = v4;
  sub_237D84DDC(v20);
  v24 = OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageDecoder_packageDirectoryURL;
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageDecoder_packageDirectoryURL, v20, v5);
  v25 = v2[30];
  v26 = v7 + 16;
  v160 = v24;
  v27 = OUTLINED_FUNCTION_6_39();
  v158 = v28;
  v28(v27);
  v29 = v25;
  sub_237EF5EC0();
  v30 = OUTLINED_FUNCTION_18_14();
  v159 = v31;
  v31(v30);
  v32 = sub_237EF8560();

  LODWORD(v24) = [v29 fileExistsAtPath_];

  if (!v24)
  {
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_0_31();
    v44 = OUTLINED_FUNCTION_1_62();
    v45(v44);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v46 = OUTLINED_FUNCTION_17_31();
    v42 = v159;
    v159(v46);
    goto LABEL_7;
  }

  v33 = OUTLINED_FUNCTION_1_62();
  v34(v33);
  OUTLINED_FUNCTION_5_48();
  sub_237EF5E70();
  v146 = v20;
  v35 = OUTLINED_FUNCTION_18_14();
  v159(v35);
  v36 = v2[30];
  sub_237EF5EC0();
  v37 = sub_237EF8560();

  v38 = [v36 fileExistsAtPath_];

  if (!v38)
  {
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_0_31();
    v47 = OUTLINED_FUNCTION_1_62();
    v48(v47);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v49 = OUTLINED_FUNCTION_17_31();
    v42 = v159;
    v159(v49);
    v50 = OUTLINED_FUNCTION_19_29();
    v42(v50);
    goto LABEL_7;
  }

  v145 = v5;
  v39 = v154;
  v40 = sub_237EF5F30();
  if (!v39)
  {
    v144 = v40;
    v154 = v41;
    v51 = OUTLINED_FUNCTION_22_23();
    v158(v51);
    OUTLINED_FUNCTION_24_20();
    v52 = v153;
    sub_237EF5E70();
    v53 = v38;
    v54 = v159;
    (v159)(v53, v5);
    v55 = sub_237EF5F30();
    sub_237E1FD00(v55, v56, v164);
    v155 = 0;
    v54(v52, v5);
    memcpy(v2 + 3, v164, 0x58uLL);
    v57 = objc_opt_self();
    OUTLINED_FUNCTION_3_58();
    v58 = sub_237EF5FD0();
    *v163 = 0;
    v153 = v57;
    v59 = [v57 JSONObjectWithData:v58 options:0 error:v163];
    v60 = v54;
    v61 = v59;

    if (v61)
    {
      v62 = *v163;
      sub_237EF9230();
      swift_unknownObjectRelease();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD8);
      if (swift_dynamicCast())
      {
        v142 = v63;
        v64 = *(v162 + 16);
        if (v64)
        {
          v143 = v162;
          v65 = v162 + 32;
          v66 = v158;
          v63 = v152;
          do
          {
            sub_237CBA478(v65, v163);
            OUTLINED_FUNCTION_11_28();
            v67 = *v63;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v63 = v67;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_237D0B614();
              v67 = v71;
              *v63 = v71;
            }

            v69 = *(v67 + 16);
            v70 = v69 + 1;
            if (v69 >= *(v67 + 24) >> 1)
            {
              v141 = v69 + 1;
              sub_237D0B614();
              v70 = v141;
              v67 = v72;
            }

            *(v67 + 16) = v70;
            sub_237C91804(v163, (v67 + 32 * v69 + 32));
            v63 = v152;
            *v152 = v67;
            swift_endAccess();
            v65 += 32;
            --v64;
          }

          while (v64);
        }

        else
        {

          v66 = v158;
        }

        v85 = OUTLINED_FUNCTION_22_23();
        v66(v85);
        OUTLINED_FUNCTION_23_25();
        v86 = v151;
        sub_237EF5E70();
        (v159)(v63, 0);
        v87 = v2[30];
        v160 = v26;
        v88 = v87;
        sub_237EF5EC0();
        v89 = sub_237EF8560();

        v90 = [v88 fileExistsAtPath_];

        if (v90)
        {
          (v158)(v150, v86, 0);
          v91 = v155;
          v92 = sub_237EF5F30();
          if (v91)
          {
            v155 = v91;
            v94 = v159;
            v95 = v156;
            v115 = OUTLINED_FUNCTION_3_58();
            sub_237CBA6B8(v115, v116);
            (v94)(v95, 0);
            (v94)(v150, 0);
            (v94)(v86, 0);
            v117 = OUTLINED_FUNCTION_11_36();
            v94(v117);
            goto LABEL_30;
          }

          sub_237E1FD00(v92, v93, v165);
          v155 = 0;
          memcpy(v161, v165, sizeof(v161));
          (v159)(v150, 0);
          memcpy(v163, v2 + 17, sizeof(v163));
          memcpy(v2 + 17, v161, 0x58uLL);
          sub_237C9BD20(v163);
        }

        v96 = v149;
        sub_237EF5E80();
        v97 = v2[30];
        sub_237EF5EC0();
        v98 = sub_237EF8560();

        v99 = OUTLINED_FUNCTION_6_39();
        v101 = [v99 v100];

        if (!v101)
        {
          v110 = OUTLINED_FUNCTION_3_58();
          sub_237CBA6B8(v110, v111);
          v112 = OUTLINED_FUNCTION_4_51();
          v101(v112);
          (v101)(v96, 0);
          v113 = OUTLINED_FUNCTION_18_28();
          v101(v113);
          v114 = OUTLINED_FUNCTION_11_36();
          v101(v114);
          goto LABEL_8;
        }

        v102 = v155;
        v103 = sub_237EF5F30();
        v160 = v104;
        if (v102)
        {
          v105 = OUTLINED_FUNCTION_3_58();
          sub_237CBA6B8(v105, v106);
          v107 = OUTLINED_FUNCTION_4_51();
          v101(v107);
          (v101)(v96, 0);
          v108 = OUTLINED_FUNCTION_18_28();
          v101(v108);
          v109 = OUTLINED_FUNCTION_11_36();
          v101(v109);
        }

        else
        {
          v118 = v103;
          v119 = sub_237EF5FD0();
          *v163 = 0;
          v120 = [v153 JSONObjectWithData:v119 options:0 error:v163];

          if (v120)
          {
            v121 = *v163;
            sub_237EF9230();
            swift_unknownObjectRelease();
            if (swift_dynamicCast())
            {
              v158 = v162;
              v122 = swift_allocObject();
              v123 = sub_237EF8230();
              v124 = OUTLINED_FUNCTION_3_58();
              sub_237CBA6B8(v124, v125);
              sub_237CBA6B8(v118, v160);
              v126 = v159;
              (v159)(v156, 0);
              (v126)(v149, 0);
              (v126)(v151, 0);
              (v126)(v157, 0);
              *(v122 + 16) = v123;
              v2[16] = v122;

              v2[28] = v158;

              goto LABEL_8;
            }

            sub_237EF93E0();
            OUTLINED_FUNCTION_45_0();
            v134 = v133;
            sub_237EF93D0();
            OUTLINED_FUNCTION_22_3();
            (*(v135 + 104))(v134);
            swift_willThrow();
            v136 = OUTLINED_FUNCTION_3_58();
            sub_237CBA6B8(v136, v137);
            sub_237CBA6B8(v118, v160);
            v138 = OUTLINED_FUNCTION_4_51();
            v118(v138);
            (v118)(v149, 0);
            v139 = OUTLINED_FUNCTION_18_28();
            v118(v139);
            v132 = OUTLINED_FUNCTION_11_36();
          }

          else
          {
            v127 = *v163;
            sub_237EF5DC0();

            swift_willThrow();
            v128 = OUTLINED_FUNCTION_3_58();
            sub_237CBA6B8(v128, v129);
            sub_237CBA6B8(v118, v160);
            v130 = OUTLINED_FUNCTION_4_51();
            v118(v130);
            (v118)(v149, 0);
            v131 = OUTLINED_FUNCTION_18_28();
            v118(v131);
            v132 = OUTLINED_FUNCTION_11_36();
          }

          v118(v132);
        }
      }

      else
      {
        sub_237EF93E0();
        OUTLINED_FUNCTION_45_0();
        v79 = v78;
        sub_237EF93D0();
        OUTLINED_FUNCTION_22_3();
        (*(v80 + 104))(v79);
        swift_willThrow();
        v81 = OUTLINED_FUNCTION_3_58();
        sub_237CBA6B8(v81, v82);
        v83 = v145;
        v84 = v159;
        (v159)(v156, v145);
        v84(v157, v83);
      }
    }

    else
    {
      v73 = *v163;
      sub_237EF5DC0();

      swift_willThrow();
      v74 = OUTLINED_FUNCTION_3_58();
      sub_237CBA6B8(v74, v75);
      v76 = OUTLINED_FUNCTION_17_31();
      v60(v76);
      v77 = OUTLINED_FUNCTION_19_29();
      v60(v77);
    }

LABEL_30:

    goto LABEL_8;
  }

  v5 = v145;
  v42 = v159;
  (v159)(v156, v145);
  v43 = OUTLINED_FUNCTION_19_29();
  v42(v43);
LABEL_7:

  memcpy(v163, v2 + 17, sizeof(v163));
  sub_237C9BD20(v163);

  (v42)(v2 + v160, v5);
  swift_deallocPartialClassInstance();
LABEL_8:
  OUTLINED_FUNCTION_12_6();
}

void *sub_237D86624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4[28];
  v7 = v4[29];
  if (v7 >= *(v8 + 16))
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v13 = a1;
LABEL_8:
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v15 + 104))(v13);
    return swift_willThrow();
  }

  memcpy(__dst, v4 + 17, sizeof(__dst));
  if (!__dst[10] || (result = memcpy(v19, v4 + 17, sizeof(v19)), v20 = __dst[10], !v4[16]))
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v13 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v13 = a1;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237CBA478(v8 + 32 * v7 + 32, v17);
    v4[29] = v7 + 1;
    sub_237D86E34(__dst, &v16);

    sub_237DD0CC0(a2, v17, v19, a2, a3, a4);
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_237C9BD20(__dst);
  }

  return result;
}

uint64_t sub_237D8684C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[14];
  result = OUTLINED_FUNCTION_0_44();
  v11 = v4[15];
  if (v9 >= *(v11 + 16))
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v13 = a1;
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v14 + 104))(v13);
    return swift_willThrow();
  }

  else if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237CBA478(v11 + 32 * v9 + 32, v15);
    v4[14] = v9 + 1;
    memcpy(__dst, v4 + 3, sizeof(__dst));

    sub_237DD0CC0(a1, v15, __dst, a2, a3, a4);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t sub_237D869E0()
{

  sub_237CBA6B8(*(v0 + 24), *(v0 + 32));

  sub_237D86EA4(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));

  v1 = OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageDecoder_packageDirectoryURL;
  sub_237EF5EF0();
  OUTLINED_FUNCTION_22_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_237D86ABC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_237D86B40()
{
  result = sub_237EF5EF0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_237D86CEC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_237D86DC0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_237D86E08(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_237EF8980();
  }

  return result;
}

uint64_t sub_237D86E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D86EA4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_237CBA6B8(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_34()
{

  return sub_237EF6000();
}

id OUTLINED_FUNCTION_26_18(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

_OWORD *OUTLINED_FUNCTION_28_17@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6)
{
  *(v6 + 16) = a1;

  return sub_237C91804(&a6, (v6 + 32 * v7 + 32));
}

_OWORD *sub_237D8708C(uint64_t a1)
{
  sub_237CBA478(a1, v6);
  sub_237D86C74();
  v3 = *(*v1 + 16);
  sub_237D86D48(v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *v1;
  *(v4 + 16) = v3 + 1;
  result = sub_237C91804(v6, (v4 + 32 * v3 + 32));
  *v1 = v4;
  return result;
}

uint64_t LinearTimeSeriesForecasterConfiguration.randomSeed.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

void __swiftcall LinearTimeSeriesForecasterConfiguration.init(inputWindowSize:forecastWindowSize:)(CreateMLComponents::LinearTimeSeriesForecasterConfiguration *__return_ptr retstr, Swift::Int inputWindowSize, Swift::Int forecastWindowSize)
{
  retstr->inputWindowSize = inputWindowSize;
  retstr->forecastWindowSize = forecastWindowSize;
  *&retstr->batchSize = xmmword_237F09360;
  retstr->earlyStoppingTolerance = 0.01;
  retstr->earlyStoppingIterationCount = 5;
  retstr->learningRate = 0.005;
  *(&retstr->randomSeed.value + 4) = 0;
  LOBYTE(retstr[1].inputWindowSize) = 1;
}

uint64_t static LinearTimeSeriesForecasterConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 32) == *(a2 + 32) && *(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 64))
    {
      if ((*(a2 + 64) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 56) == *(a2 + 56))
      {
        v5 = *(a2 + 64);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_237D87370(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69577475706E69 && a2 == 0xEF657A6953776F64;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000237EFEF60 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000237EFDE80 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x8000000237EFDEA0 == a2;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x8000000237EFDEC0 == a2;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465)
              {

                return 7;
              }

              else
              {
                v13 = sub_237EF9D40();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_237D87610(char a1)
{
  result = 0x6E69577475706E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x7A69536863746162;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0x676E696E7261656CLL;
      break;
    case 7:
      result = 0x65536D6F646E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D87738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D87370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D87760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D87608();
  *a1 = result;
  return result;
}

uint64_t sub_237D87788(uint64_t a1)
{
  v2 = sub_237D87A6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D877C4(uint64_t a1)
{
  v2 = sub_237D87A6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinearTimeSeriesForecasterConfiguration.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26A8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v17[3] = *(v1 + 16);
  v17[4] = v8;
  v17[1] = *(v1 + 40);
  v17[2] = v9;
  v10 = *(v1 + 64);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_237D87A6C();
  sub_237EFA1B0();
  v26 = 0;
  v15 = v18;
  sub_237EF9A50();
  if (!v15)
  {
    LODWORD(v18) = v10;
    v25 = 1;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v24 = 2;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v23 = 3;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v22 = 4;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A40();
    v21 = 5;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v20 = 6;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A40();
    v19 = 7;
    OUTLINED_FUNCTION_1_63();
    sub_237EF99F0();
  }

  return (*(v4 + 8))(v7, v14);
}

unint64_t sub_237D87A6C()
{
  result = qword_27DEB26B0;
  if (!qword_27DEB26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26B0);
  }

  return result;
}

uint64_t LinearTimeSeriesForecasterConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  MEMORY[0x2383E2210](*v0);
  MEMORY[0x2383E2210](v1);
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v3);
  sub_237EFA150();
  MEMORY[0x2383E2210](v4);
  sub_237EFA150();
  if (v6 == 1)
  {
    return sub_237EFA140();
  }

  sub_237EFA140();
  return MEMORY[0x2383E2210](v5);
}

uint64_t LinearTimeSeriesForecasterConfiguration.hashValue.getter()
{
  sub_237EFA120();
  LinearTimeSeriesForecasterConfiguration.hash(into:)();
  return sub_237EFA170();
}

uint64_t LinearTimeSeriesForecasterConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26B8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D87A6C();
  sub_237EFA190();
  if (!v2)
  {
    v34 = 0;
    OUTLINED_FUNCTION_0_51();
    v11 = sub_237EF9950();
    v33 = 1;
    OUTLINED_FUNCTION_0_51();
    v12 = sub_237EF9950();
    v32 = 2;
    OUTLINED_FUNCTION_0_51();
    v25 = sub_237EF9950();
    v31 = 3;
    OUTLINED_FUNCTION_0_51();
    v24 = sub_237EF9950();
    v30 = 4;
    OUTLINED_FUNCTION_0_51();
    sub_237EF9940();
    v14 = v13;
    v29 = 5;
    OUTLINED_FUNCTION_0_51();
    v23 = sub_237EF9950();
    v28 = 6;
    OUTLINED_FUNCTION_0_51();
    sub_237EF9940();
    v16 = v15;
    v26 = 7;
    OUTLINED_FUNCTION_0_51();
    v18 = sub_237EF98F0();
    v19 = v10;
    v21 = v20;
    (*(v7 + 8))(v19, v5);
    v27 = v21 & 1;
    *a2 = v11;
    *(a2 + 8) = v12;
    v22 = v24;
    *(a2 + 16) = v25;
    *(a2 + 24) = v22;
    *(a2 + 32) = v14;
    *(a2 + 40) = v23;
    *(a2 + 48) = v16;
    *(a2 + 56) = v18;
    *(a2 + 64) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D87E58()
{
  sub_237EFA120();
  LinearTimeSeriesForecasterConfiguration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237D87E98()
{
  result = qword_27DEB26C0;
  if (!qword_27DEB26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26C0);
  }

  return result;
}

uint64_t sub_237D87F28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D87F48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 65) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LinearTimeSeriesForecasterConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LinearTimeSeriesForecasterConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D88100()
{
  result = qword_27DEB26C8;
  if (!qword_27DEB26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26C8);
  }

  return result;
}

unint64_t sub_237D88158()
{
  result = qword_27DEB26D0;
  if (!qword_27DEB26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26D0);
  }

  return result;
}

unint64_t sub_237D881B0()
{
  result = qword_27DEB26D8;
  if (!qword_27DEB26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26D8);
  }

  return result;
}

uint64_t TemporalFileSegment.init(url:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_4();
  (*(v8 + 32))(a2, a1);
  result = type metadata accessor for TemporalFileSegment();
  v10 = (a2 + *(result + 20));
  *v10 = a3;
  v10[1] = a4;
  return result;
}

uint64_t type metadata accessor for TemporalFileSegment()
{
  result = qword_27DEB2718;
  if (!qword_27DEB2718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemporalFileSegment.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t TemporalFileSegment.url.setter(uint64_t a1)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t TemporalFileSegment.range.setter(double a1, double a2)
{
  result = type metadata accessor for TemporalFileSegment();
  v6 = (v2 + *(result + 20));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_237D88468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237D8852C(char a1)
{
  if (a1)
  {
    return 0x65676E6172;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_237D88560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D88468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D88588(uint64_t a1)
{
  v2 = sub_237D88DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D885C4(uint64_t a1)
{
  v2 = sub_237D88DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static TemporalFileSegment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_237EF5EA0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TemporalFileSegment() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  v9 = v5 == *v7;
  return v6 == v8 && v9;
}

uint64_t TemporalFileSegment.hash(into:)()
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_0_52();
  sub_237D88F7C(v0, v1);
  sub_237EF83E0();
  v2 = type metadata accessor for TemporalFileSegment();
  v3 = OUTLINED_FUNCTION_4_52(v2);

  return sub_237D88D64(v3, v4);
}

uint64_t TemporalFileSegment.hashValue.getter()
{
  sub_237EFA120();
  sub_237EF5EF0();
  OUTLINED_FUNCTION_0_52();
  sub_237D88F7C(v0, v1);
  sub_237EF83E0();
  v2 = type metadata accessor for TemporalFileSegment();
  v3 = OUTLINED_FUNCTION_4_52(v2);
  sub_237D88D64(v3, v4);
  return sub_237EFA170();
}

uint64_t sub_237D88780(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  sub_237EF5EF0();
  sub_237D88F7C(&qword_27DEB0FD0, MEMORY[0x277CC9260]);
  sub_237EF83E0();
  sub_237D88D64(*(v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 8));
  return sub_237EFA170();
}

uint64_t TemporalFileSegment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26E0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D88DB4();
  sub_237EFA1B0();
  LOBYTE(v15) = 0;
  sub_237EF5EF0();
  OUTLINED_FUNCTION_0_52();
  sub_237D88F7C(v11, v12);
  OUTLINED_FUNCTION_5_49();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for TemporalFileSegment() + 20));
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26F0);
    sub_237D88E08(&qword_27DEB26F8);
    OUTLINED_FUNCTION_5_49();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t TemporalFileSegment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v27 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2700);
  OUTLINED_FUNCTION_1();
  v28 = v8;
  v29 = v9;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for TemporalFileSegment();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D88DB4();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v10;
  v14 = v27;
  LOBYTE(v31) = 0;
  OUTLINED_FUNCTION_0_52();
  sub_237D88F7C(v15, v16);
  v17 = v30;
  sub_237EF9970();
  v18 = *(v14 + 32);
  v24 = v13;
  v18(v13, v7, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26F0);
  v32 = 1;
  sub_237D88E08(&qword_27DEB2708);
  sub_237EF9970();
  v19 = OUTLINED_FUNCTION_2_59();
  v20(v19);
  v21 = v24;
  *&v24[*(v25 + 20)] = v31;
  sub_237D88E74(v21, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_237D88ED8(v21);
}

uint64_t sub_237D88D64(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x2383E2240](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x2383E2240](*&v3);
}

unint64_t sub_237D88DB4()
{
  result = qword_27DEB26E8;
  if (!qword_27DEB26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26E8);
  }

  return result;
}

uint64_t sub_237D88E08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB26F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237D88E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemporalFileSegment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D88ED8(uint64_t a1)
{
  v2 = type metadata accessor for TemporalFileSegment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D88F7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_237D88FEC()
{
  sub_237EF5EF0();
  if (v0 <= 0x3F)
  {
    sub_237D89070();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237D89070()
{
  if (!qword_27DEB2728)
  {
    v0 = sub_237EF8F10();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEB2728);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TemporalFileSegment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D891A8()
{
  result = qword_27DEB2730;
  if (!qword_27DEB2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2730);
  }

  return result;
}

unint64_t sub_237D89200()
{
  result = qword_27DEB2738;
  if (!qword_27DEB2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2738);
  }

  return result;
}

unint64_t sub_237D89258()
{
  result = qword_27DEB2740;
  if (!qword_27DEB2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2740);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_49()
{

  return sub_237EF9A70();
}

void sub_237D89308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_43();
  OUTLINED_FUNCTION_14_35();
  v30 = _s5StateOMa();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &a9 - v33;
  (*(v35 + 16))(&a9 - v33, v25, v30, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_14_35();
    v36 = sub_237EF7E90();
    v37 = sub_237EF90F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v37 - 8) + 8))(&v34[*(TupleTypeMetadata2 + 48)], v37);
LABEL_6:
    OUTLINED_FUNCTION_22_3();
    (*(v46 + 8))(v34, v36);
    goto LABEL_7;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00);
  sub_237CBEE0C(&v34[*(v39 + 48)], v22);
  v40 = *(v27 + 24);
  v41 = *(v27 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v40);
  v42 = *(v41 + 16);
  v43 = sub_237C96710(qword_27DEB2758, &qword_27DEAEDF0);
  v42(v22, v28, v43, v40, v41);
  if (!v21)
  {
    sub_237C65484(v22, &qword_27DEAEDF0);
    v36 = sub_237EF6820();
    goto LABEL_6;
  }

  sub_237C65484(v22, &qword_27DEAEDF0);
  sub_237EF6820();
  OUTLINED_FUNCTION_4();
  (*(v44 + 8))(v34, v45);
LABEL_7:
  OUTLINED_FUNCTION_12_6();
}

void sub_237D895BC()
{
  OUTLINED_FUNCTION_13_4();
  v59 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v53 = v3;
  v57 = *(v3 + 24);
  v58 = v6;
  sub_237EF7E90();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v55 = v8;
  v56 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v54 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v52 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v47 = v15;
  v48 = sub_237EF6B10();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_3();
  v61 = v17;
  sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v50 = v19;
  v51 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  v49 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2748);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  v60 = v27;
  v29 = *(v5 + 24);
  v28 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v29);
  v30 = *(v28 + 16);
  v31 = sub_237C96710(&qword_27DEB2750, &qword_27DEAEDF0);
  v30(v25, v25, v31, v29, v28);
  if (v1)
  {

    __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
    sub_237C65484(v24, &qword_27DEB2748);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    sub_237CBEE0C(v24, v60);
    v32 = v47;
    v33 = v53;
    v34 = v59;
    MultivariateLinearRegressor.Model.weight.getter(v53);
    v35 = *(v33 + 32);
    v36 = v32;
    v38 = v57;
    v37 = v58;
    sub_237D4A7B4(v36, v58, v61);
    v39 = v54;
    v40 = MultivariateLinearRegressor.Model.bias.getter(v33);
    MEMORY[0x28223BE20](v40);
    *(&v46 - 4) = v37;
    *(&v46 - 3) = v38;
    *(&v46 - 2) = v35;
    v41 = v56;
    sub_237CA0A1C();
    (*(v55 + 8))(v39, v41);
    v42 = v49;
    sub_237EF67D0();
    v43 = _s5StateOMa();
    OUTLINED_FUNCTION_4();
    (*(v44 + 8))(v34, v43);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
    (*(v50 + 32))(v34, v42, v51);
    sub_237CBEE0C(v60, v34 + v45);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237D89A88()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v28 = v3;
  sub_237EF7E90();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v26 = v4;
  v27 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v23 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v24 = v10;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_43();
  v22 = _s7StorageVMa_2();
  OUTLINED_FUNCTION_1();
  v25 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v21 = v15;
  MultivariateLinearRegressor.Model.weight.getter(v2);
  OUTLINED_FUNCTION_4_53();
  sub_237C96710(v16, &qword_27DEAD6A0);
  swift_getWitnessTable();
  sub_237EF7F30();
  MultivariateLinearRegressor.Model.bias.getter(v2);
  sub_237CA0A1C();
  (*(v27 + 8))(v23, v26);
  sub_237D89F6C(v0, v24, v21);
  v17 = *(v28 + 24);
  v18 = *(v28 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v17);
  v19 = *(v18 + 8);
  WitnessTable = swift_getWitnessTable();
  v19(v21, v22, WitnessTable, v17, v18);
  (*(v25 + 8))(v21, v22);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D89E10(uint64_t a1)
{
  v2 = sub_237EF7E90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  (*(v3 + 16))(v5, a1, v2);
  sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0);
  swift_getWitnessTable();
  return sub_237EF7F30();
}

uint64_t sub_237D89F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(_s7StorageVMa_2() + 44);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  __swift_storeEnumTagSinglePayload(a3 + v6, 1, 1, v7);
  OUTLINED_FUNCTION_22_3();
  (*(v8 + 32))(a3, a1, v7);

  return sub_237C6FC94(a2, a3 + v6);
}

void sub_237D8A030()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v38 = v9;
  sub_237EF7E90();
  v10 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v37 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v34 = v14;
  v35 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v41 = v19;
  v42 = v6;
  v39 = v4;
  v40 = v2;
  v20 = _s7StorageVMa_2();
  OUTLINED_FUNCTION_1();
  v36 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  v26 = *(v8 + 24);
  v25 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v26);
  v27 = *(v25 + 8);
  WitnessTable = swift_getWitnessTable();
  v27(v20, v20, WitnessTable, v26, v25);
  if (!v0)
  {
    (*(v34 + 16))(v17, v24, v35);
    OUTLINED_FUNCTION_4_53();
    swift_getWitnessTable();
    sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0);
    v29 = sub_237EF7F30();
    MEMORY[0x28223BE20](v29);
    v31 = v39;
    v30 = v40;
    *(&v33 - 4) = v42;
    *(&v33 - 3) = v31;
    *(&v33 - 2) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v32 = v37;
    sub_237CA0A1C();
    (*(v36 + 8))(v24, v20);
    MultivariateLinearRegressor.Model.init(weight:bias:)(v41, v32, v38);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D8A38C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_237EF7E90();
  (*(v3 + 16))(v5, a1, v2);
  swift_getWitnessTable();
  sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0);
  return sub_237EF7F30();
}

uint64_t sub_237D8A4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF7E90();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  return sub_237D4A7B4(v9, a2, a3);
}

void sub_237D8A65C()
{
  sub_237C86290();
  if (v0 <= 0x3F)
  {
    sub_237C862E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237D8A708()
{
  OUTLINED_FUNCTION_13_4();
  v11 = v0;
  v12 = v1;
  v3 = v2;
  _s7StorageV10CodingKeysOMa_0();
  OUTLINED_FUNCTION_5_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_35();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_14_35();
  sub_237EFA1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  sub_237C86400(&qword_27DEADE78);
  OUTLINED_FUNCTION_13_25();
  v10 = v12;
  sub_237EF9A70();
  if (!v10)
  {
    OUTLINED_FUNCTION_13_25();
    sub_237EF9A00();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_12_6();
}

void sub_237D8A8A8()
{
  OUTLINED_FUNCTION_13_4();
  v34 = v0;
  v2 = v1;
  v27 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v28 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v30 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v31 = v10;
  _s7StorageV10CodingKeysOMa_0();
  OUTLINED_FUNCTION_5_50();
  swift_getWitnessTable();
  v33 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v29 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_43();
  v13 = _s7StorageVMa_2();
  OUTLINED_FUNCTION_1();
  v26 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v35 = *(v18 + 44);
  v32 = v7;
  __swift_storeEnumTagSinglePayload(&v26 + v35 - v16, 1, 1, v7);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v19 = v34;
  sub_237EFA190();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_237C65484(&v17[v35], &qword_27DEAD600);
  }

  else
  {
    v20 = v30;
    v34 = v2;
    sub_237C86400(&qword_27DEADE88);
    v21 = v31;
    sub_237EF9970();
    (*(v20 + 32))(v17, v21, v32);
    v22 = v28;
    sub_237EF9900();
    v23 = OUTLINED_FUNCTION_7_42();
    v24(v23);
    sub_237C6FC94(v22, &v17[v35]);
    v25 = v26;
    (*(v26 + 16))(v27, v17, v13);
    __swift_destroy_boxed_opaque_existential_1(v34);
    (*(v25 + 8))(v17, v13);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D8ACA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C85A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D8ACDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D8AD30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

_BYTE *sub_237D8ADD8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t ObjectDetectionMetrics.labels.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ObjectDetectionMetrics.init()@<X0>(uint64_t a1@<X8>)
{
  result = sub_237EF8130();
  *a1 = result;
  *(a1 + 8) = 1056964608;
  return result;
}

uint64_t static ObjectDetectionMetrics.extractLabels(from:)(uint64_t a1, uint64_t a2)
{
  sub_237EF8130();
  type metadata accessor for ObjectDetectionAnnotation();
  OUTLINED_FUNCTION_31_2();
  sub_237EF8A60();
  sub_237EF8CF0();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF87F0();

  return a2;
}

uint64_t sub_237D8B114@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_237EF8260();
  sub_237EF8260();
  type metadata accessor for ObjectDetectionAnnotation.Annotation();
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237C9339C();

  sub_237EF8A60();
  swift_getWitnessTable();
  result = sub_237EF8C80();
  *a1 = result;
  return result;
}

uint64_t sub_237D8B2C4(uint64_t a1, uint64_t a2, void *a3)
{
  v14[7] = a1;
  v4 = a3[2];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v19 = a3[3];
  v14[3] = v6;
  v14[4] = v5;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v14[1] = type metadata accessor for ObjectDetectionMetrics.PredictionsPerLabel();
  v23 = sub_237EF8110();
  v18 = a2;
  v14[5] = v19;
  v14[6] = v4;
  v14[2] = v7;
  type metadata accessor for DetectedObject();
  sub_237EF8A60();
  OUTLINED_FUNCTION_31_2();
  v14[0] = v8;
  v9 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2383E0850](&v15, v9, WitnessTable);
  v17 = v15;
  sub_237EF97D0();
  sub_237EF97A0();
  v14[8] = sub_237EF97C0();
  while (1)
  {
    v11 = sub_237EF97B0();
    if (!v16)
    {
      break;
    }

    v14[10] = v15;
    v15 = v16;
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_2_60();
    swift_getWitnessTable();
    v12 = sub_237EF9440();
    v14[9] = v14;
    v15 = v12;
    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_33_12();
    sub_237C9339C();

    sub_237EF89E0();
  }

  return v23;
}

float sub_237D8B5B8@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + *(type metadata accessor for DetectedObject() + 48));
  *a3 = a2;
  v7 = *a1;
  *(a3 + 24) = a1[1];
  *(a3 + 8) = v7;
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_237D8B620(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = a1;
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[6];
  v9 = type metadata accessor for ObjectDetectionAnnotation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22_24();
  v48 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v47 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  v17 = (v35 - v16);
  v42 = v5;
  v43 = v4;
  v54 = v4;
  v55 = v5;
  v41 = v6;
  v56 = v6;
  v57 = v7;
  v40 = v7;
  v39 = v8;
  v58 = v8;
  v35[2] = type metadata accessor for ObjectDetectionMetrics.AnnotationsPerLabel();
  v53 = sub_237EF8110();
  v52 = a2;
  v18 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2383E0850](&v54, v18, WitnessTable);
  v51 = v54;
  OUTLINED_FUNCTION_43_0();
  sub_237EF97D0();
  sub_237EF97A0();
  OUTLINED_FUNCTION_43_0();
  v20 = sub_237EF97C0();
  v45 = (v12 + 32);
  v46 = v20;
  v38 = v9;
  v35[1] = v9 - 8;
  v37 = TupleTypeMetadata2;
  v36 = v17;
  while (1)
  {
    v21 = v47;
    sub_237EF97B0();
    (*v45)(v17, v21, v48);
    if (__swift_getEnumTagSinglePayload(v17, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v50 = *v17;
    v22 = v17 + *(TupleTypeMetadata2 + 48);
    v23 = *(v22 + 2);
    v24 = v38;
    v25 = *(*(v38 - 8) + 8);
    sub_237EF8260();
    v26 = v25(v22, v24);
    v51 = v23;
    MEMORY[0x28223BE20](v26);
    v28 = v42;
    v27 = v43;
    v35[-6] = v43;
    v35[-5] = v28;
    v29 = v41;
    v30 = v40;
    v35[-4] = v41;
    v35[-3] = v30;
    v31 = v39;
    v32 = v44;
    v35[-2] = v39;
    v35[-1] = v32;
    v54 = v27;
    v55 = v28;
    v56 = v29;
    v57 = v30;
    v58 = v31;
    type metadata accessor for ObjectDetectionAnnotation.Annotation();
    OUTLINED_FUNCTION_31_2();
    sub_237EF8A60();
    OUTLINED_FUNCTION_2_60();
    swift_getWitnessTable();
    v33 = sub_237EF9440();
    v49 = v35;
    v54 = v33;
    MEMORY[0x28223BE20](v33);
    v35[-6] = v27;
    v35[-5] = v28;
    v35[-4] = v29;
    v35[-3] = v30;
    TupleTypeMetadata2 = v37;
    v35[-2] = v31;
    v17 = v36;
    v35[-1] = v50;
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    sub_237C9339C();

    OUTLINED_FUNCTION_33_12();
    sub_237EF89E0();
  }

  return v53;
}

uint64_t sub_237D8BAB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (sub_237EF8CB0())
  {

    return static ObjectDetectionMetrics.extractLabels(from:)(a1, v3);
  }

  else
  {

    return sub_237EF8260();
  }
}

double sub_237D8BB58(uint64_t a1, double a2, double a3, CGFloat a4, double a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0.0;
  }

  v7 = a4;
  v8 = 0;
  v9 = (a1 + 56);
  v10 = 0.0;
  v26 = a5;
  do
  {
    v32 = v10;
    v41 = *(v9 - 3);
    v11 = a2;
    v12 = a3;
    v13 = v7;
    v14 = a5;
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    v31 = *v9;
    v34 = CGRectIntersection(*&a2, v41);
    IsNull = CGRectIsNull(v34);
    v18 = 0.0;
    if (!IsNull)
    {
      v35.origin.x = OUTLINED_FUNCTION_44_9();
      v29 = CGRectGetWidth(v35);
      v36.origin.x = OUTLINED_FUNCTION_44_9();
      v18 = fabs(v29 * CGRectGetHeight(v36));
    }

    v30 = v18;
    v19 = v8 + 1;
    v37.origin.x = v11;
    v37.origin.y = v12;
    v7 = a4;
    a5 = v26;
    v37.size.width = a4;
    v37.size.height = v26;
    v20 = CGRectGetWidth(v37);
    v38.origin.x = v11;
    v38.origin.y = v12;
    v38.size.width = a4;
    v38.size.height = v26;
    v28 = fabs(v20 * CGRectGetHeight(v38));
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = v31;
    v27 = CGRectGetWidth(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = v31;
    v21 = v28 + fabs(v27 * CGRectGetHeight(v40));
    a2 = v11;
    a3 = v12;
    v22 = v21 - v30;
    v23 = v30 / (v21 - v30);
    if (v22 <= 0.0)
    {
      v23 = 0.0;
    }

    v10 = v32;
    if (v32 < v23)
    {
      v10 = v23;
    }

    v9 += 4;
    ++v8;
  }

  while (v5 != v19);
  return v10;
}

void sub_237D8BD18()
{
  OUTLINED_FUNCTION_19_5();
  v1 = v0;
  v3 = v2;
  type metadata accessor for ObjectDetectionMetrics.AnnotationsPerLabel();
  v4 = sub_237EF8A00();
  v5 = sub_237CDC2B0(0, v4);
  TupleTypeMetadata2 = type metadata accessor for ObjectDetectionMetrics.PredictionsPerLabel();
  v7 = sub_237EF8920();
  v62 = v7;
  if (v7 != sub_237EF8A00())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v56 = v3 + 32;
      v54 = v5 + 32;
      v8 = MEMORY[0x277D84F90];
      v9 = MEMORY[0x277D84F90];
      v55 = TupleTypeMetadata2;
      v53 = v3;
      while (1)
      {
        v10 = sub_237EF89D0();
        sub_237EF8960();
        if ((v10 & 1) == 0)
        {
          goto LABEL_46;
        }

        v57 = v8;
        v58 = v9;
        v11 = (v56 + 48 * v7);
        v63 = *v11;
        *v64 = v11[1];
        *&v64[12] = *(v11 + 28);
        sub_237EF8A40();
        sub_237EF8A60();
        OUTLINED_FUNCTION_1_2();
        swift_getWitnessTable();
        v12 = OUTLINED_FUNCTION_22_13();
        v13 = MEMORY[0x2383E0850](v12);
        MEMORY[0x28223BE20](v13);
        sub_237EF97D0();
        swift_getWitnessTable();
        v14 = sub_237EF87E0();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        OUTLINED_FUNCTION_22_13();
        v15 = sub_237EF8920();
        v61 = v15;
        OUTLINED_FUNCTION_22_13();
        if (v15 != sub_237EF8A00())
        {
          break;
        }

        v7 = MEMORY[0x277D84F90];
        v16 = MEMORY[0x277D84F90];
LABEL_19:
        sub_237D8BB58(v16, *(&v63 + 1), *v64, *&v64[8], *&v64[16]);
        if ((v29 & 0x8000000000000000) != 0)
        {

          TupleTypeMetadata2 = 0;
LABEL_30:
          v36 = 1;
          v8 = v57;
          v9 = v58;
          goto LABEL_31;
        }

        v30 = v29;
        if (v29 >= *(v7 + 16))
        {
          goto LABEL_47;
        }

        if ((*(v7 + 32 + 8 * v29) & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_38_8();
        if (v33)
        {
          goto LABEL_49;
        }

        v34 = v32;
        v35 = *(v54 + v31);

        TupleTypeMetadata2 = 0;
        if (v35)
        {
          goto LABEL_30;
        }

        v36 = 1;
        v8 = v57;
        v9 = v58;
        if (v34 >= v1)
        {
          if (v30 >= *(v7 + 16))
          {
            goto LABEL_50;
          }

          if ((*(v7 + 32 + 8 * v30) & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          OUTLINED_FUNCTION_38_8();
          if (v33)
          {
            goto LABEL_52;
          }

          v36 = 0;
          *(v54 + v37) = 1;
          TupleTypeMetadata2 = 1;
        }

LABEL_31:
        v38 = sub_237ED81A4(v8);
        if ((v39 & 1) == 0)
        {
          v40 = v38;
          v41 = sub_237ED81A4(v9);
          if ((v42 & 1) == 0)
          {
            v43 = __OFADD__(TupleTypeMetadata2, v40);
            TupleTypeMetadata2 += v40;
            if (v43)
            {
              goto LABEL_53;
            }

            v43 = __OFADD__(v36, v41);
            v36 += v41;
            if (v43)
            {
              goto LABEL_54;
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_1();
          sub_237D0B340();
          v8 = v48;
        }

        v45 = *(v8 + 16);
        v44 = *(v8 + 24);
        if (v45 >= v44 >> 1)
        {
          OUTLINED_FUNCTION_17_0(v44);
          sub_237D0B340();
          v8 = v49;
        }

        *(v8 + 16) = v45 + 1;
        *(v8 + 8 * v45 + 32) = TupleTypeMetadata2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_1();
          sub_237D0B340();
          v9 = v50;
        }

        v47 = *(v9 + 16);
        v46 = *(v9 + 24);
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_17_0(v46);
          sub_237D0B340();
          v9 = v51;
        }

        *(v9 + 16) = v47 + 1;
        *(v9 + 8 * v47 + 32) = v36;

        TupleTypeMetadata2 = v55;
        v7 = v62;
        if (v62 == sub_237EF8A00())
        {
          goto LABEL_44;
        }
      }

      v3 = v14 + 32;
      v7 = MEMORY[0x277D84F90];
      v16 = MEMORY[0x277D84F90];
      while (1)
      {
        OUTLINED_FUNCTION_22_13();
        v17 = sub_237EF89D0();
        sub_237EF8960();
        if ((v17 & 1) == 0)
        {
          break;
        }

        v18 = v3 + 48 * v15;
        v19 = *v18;
        v59 = *(v18 + 32);
        v60 = *(v18 + 16);
        sub_237EF8A40();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_1();
          sub_237D0B340();
          v7 = v25;
        }

        v21 = *(v7 + 16);
        v20 = *(v7 + 24);
        if (v21 >= v20 >> 1)
        {
          OUTLINED_FUNCTION_17_0(v20);
          sub_237D0B340();
          v7 = v26;
        }

        *(v7 + 16) = v21 + 1;
        *(v7 + 8 * v21 + 32) = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_1();
          sub_237D0C994();
          v16 = v27;
        }

        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        if (v23 >= v22 >> 1)
        {
          OUTLINED_FUNCTION_17_0(v22);
          sub_237D0C994();
          v16 = v28;
        }

        *(v16 + 16) = v23 + 1;
        v24 = v16 + 32 * v23;
        *(v24 + 32) = v60;
        *(v24 + 48) = v59;
        OUTLINED_FUNCTION_22_13();
        v15 = v61;
        if (v61 == sub_237EF8A00())
        {

          v3 = v53;
          goto LABEL_19;
        }
      }

      sub_237EF93A0();
      __break(1u);
LABEL_46:
      sub_237EF93A0();
      __break(1u);
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
      sub_237E64320();
      v5 = v52;
    }
  }

LABEL_44:

  OUTLINED_FUNCTION_18_6();
}

uint64_t sub_237D8C388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x28223BE20](a1);
  v18 = sub_237EF8110();
  result = sub_237EF8110();
  v11 = 0;
  v12 = *(a1 + 16);
  v13 = a2;
  v14 = a2 + 32;
  while (1)
  {
    if (v12 == v11)
    {
      return v18;
    }

    v15 = *(v13 + 16);
    if (v11 == v15)
    {
      return v18;
    }

    if (v11 >= v15)
    {
      break;
    }

    v16 = *(a1 + 32 + 8 * v11);
    sub_237E6F3D0(v16, *(v14 + 8 * v11), a5);
    sub_237EF8A60();
    sub_237EF8A20();
    sub_237E6E8F8(v16, a3, a5, a6);
    result = sub_237EF8A20();
    ++v11;
  }

  __break(1u);
  return result;
}

void sub_237D8C4E0()
{
  OUTLINED_FUNCTION_19_5();
  v26 = v0;
  v27 = v2;
  v28 = v1;
  v64 = v3;
  v5 = v4[3];
  v54 = v4[2];
  v55 = v1;
  v6 = v4[4];
  v7 = v4[5];
  v56 = v5;
  v57 = v6;
  v8 = v4[6];
  v58 = v7;
  v59 = v8;
  v9 = v8;
  v60 = v0;
  v61 = v10;
  sub_237EF8260();
  type metadata accessor for ObjectDetectionMetrics.PredictionsPerLabel();
  OUTLINED_FUNCTION_31_2();
  sub_237EF8A60();
  OUTLINED_FUNCTION_2_60();
  swift_getWitnessTable();
  sub_237EF9440();
  v47 = v54;
  v48 = v28;
  v49 = v5;
  v50 = v6;
  v51 = v7;
  v52 = v9;
  v53 = v26;
  swift_getWitnessTable();
  sub_237EF8800();

  sub_237D8BD18();
  v12 = v11;
  v14 = v13;

  v66[4] = v9;
  type metadata accessor for ObjectDetectionMetrics.AnnotationsPerLabel();
  v15 = sub_237EF8A00();
  sub_237D8C388(v12, v14, v15, v16, v28, v26);

  v17 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();

  v62 = v64;
  v63 = v65;
  v40 = v54;
  v41 = v28;
  v42 = v5;
  v43 = v6;
  v44 = v7;
  v45 = v9;
  v46 = v26;
  v30 = v54;
  v31 = v28;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v9;
  v36 = v26;
  v37 = sub_237D8E0D0;
  v38 = &v39;
  v66[0] = v17;
  v66[1] = v17;
  v66[2] = WitnessTable;
  v66[3] = WitnessTable;
  v19 = sub_237EF9380();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_20_8();
  v21 = swift_getWitnessTable();
  v23 = sub_237C8FFEC(sub_237D8E364, v29, v19, TupleTypeMetadata2, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);

  v66[0] = v23;
  v24 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  v25 = swift_getWitnessTable();
  sub_237E6EA28(v66, v28, v24, v26, v25, v27);

  OUTLINED_FUNCTION_18_6();
}

uint64_t sub_237D8C84C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_237D8C8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v75 = a2;
  v63[1] = a6;
  v12 = *(a5 + 8);
  v76 = a5;
  v72 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v15);
  OUTLINED_FUNCTION_1_1();
  v78 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v74 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17(v63 - v20);
  v70 = *v7;
  v21 = *(v7 + 8);
  v96 = a1;
  v22 = a3[3];
  v86 = a3[2];
  v23 = v86;
  v87 = a4;
  v25 = a3[4];
  v24 = a3[5];
  v88 = v22;
  v89 = v25;
  v71 = a3;
  v26 = a3[6];
  v90 = v24;
  v91 = v26;
  v92 = a5;
  v93 = a7;
  sub_237EF8260();
  v98 = v23;
  v99 = v22;
  v100 = v25;
  v101 = v24;
  v102 = v26;
  type metadata accessor for ObjectDetectionMetrics.PredictionsPerLabel();
  OUTLINED_FUNCTION_31_2();
  sub_237EF8A60();
  OUTLINED_FUNCTION_2_60();
  swift_getWitnessTable();
  v98 = sub_237EF9440();
  v79 = v23;
  v80 = a4;
  v81 = v22;
  v82 = v25;
  v83 = v24;
  v84 = v26;
  v85 = v76;
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  v73 = sub_237EF8800();

  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  AssociatedTypeWitness = v23;
  v98 = v23;
  v99 = v22;
  v68 = v22;
  v67 = v25;
  v100 = v25;
  v101 = v24;
  v66 = v24;
  v65 = v26;
  v102 = v26;
  type metadata accessor for ObjectDetectionMetrics.AnnotationsPerLabel();
  result = sub_237EF8A00();
  v64 = result;
  v28 = 0;
  v72 = (v78 + 1);
  while (!__OFADD__(v28, 1))
  {
    v63[2] = v28 + 1;
    v29 = (v28 + 1) * 0.05 + 0.05;
    v98 = v70;
    LODWORD(v99) = v21;
    sub_237D8BD18();
    v30 = v76;
    v34 = sub_237D8C388(v31, v32, v64, v33, a4, v76);
    v36 = v35;

    v98 = v34;
    v94 = v36;
    OUTLINED_FUNCTION_43_0();
    v37 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    WitnessTable = swift_getWitnessTable();
    sub_237EFA000();

    v78 = v63;
    v94 = v96;
    v95 = v97;
    MEMORY[0x28223BE20](v39);
    v63[-8] = AssociatedTypeWitness;
    v63[-7] = a4;
    v40 = v67;
    v63[-6] = v68;
    v63[-5] = v40;
    v41 = v66;
    v42 = v65;
    v63[-4] = v66;
    v63[-3] = v42;
    v63[-2] = v30;
    MEMORY[0x28223BE20](v41);
    v63[-10] = v43;
    v63[-9] = a4;
    v63[-8] = v44;
    v63[-7] = v45;
    v63[-6] = v46;
    v63[-5] = v47;
    v63[-4] = v30;
    v63[-3] = sub_237D8E360;
    v63[-2] = v48;
    v98 = v37;
    v99 = v37;
    v100 = WitnessTable;
    v101 = WitnessTable;
    v49 = sub_237EF9380();
    OUTLINED_FUNCTION_43_0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_20_8();
    v51 = swift_getWitnessTable();
    v53 = sub_237C8FFEC(sub_237D8E078, &v63[-12], v49, TupleTypeMetadata2, MEMORY[0x277D84A98], v51, MEMORY[0x277D84AC0], v52);

    v98 = v53;
    OUTLINED_FUNCTION_22_24();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    v54 = v74;
    OUTLINED_FUNCTION_33_12();
    sub_237E6EA28(v55, v56, v57, v30, v58, v59);

    sub_237EF9770();
    v60 = *v72;
    result = (*v72)(v54, a4);
    ++v28;
    if (v29 >= 1.0)
    {

      v61 = v74;
      sub_237EF83A0();
      v62 = v77;
      sub_237EF8330();
      v60(v61, a4);
      return v60(v62, a4);
    }
  }

  __break(1u);
  return result;
}

void ObjectDetectionMetrics.averagePrecision<A>(predictions:annotations:confidenceThresholds:overlapThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v65 = a3;
  v63 = a1;
  v10 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v62 = v12;
  v13 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v52 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v61 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17(&v50 - v18);
  OUTLINED_FUNCTION_22_24();
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v19);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v70 = v21;
  v22 = *v6;
  v23 = *(v6 + 8);
  v24 = *(a4 + 48);
  v67 = a5;
  v25 = v24;
  v73 = sub_237EF8100();
  v74 = v22;
  v60 = v22;
  LODWORD(v75) = v23;
  v64 = a2;
  v66 = a4;
  sub_237D8BAB8(a2, a4);
  OUTLINED_FUNCTION_36_12();
  v59 = v25;
  if (v26)
  {
    v69 = 0;
    OUTLINED_FUNCTION_9_7();
    v51 = a4 + 56;
    OUTLINED_FUNCTION_4_54();
    v28 = v29 & v30;
  }

  else
  {
    OUTLINED_FUNCTION_23_26();
    sub_237EF8CC0();
    a4 = v74;
    v51 = v75;
    v27 = v76;
    v69 = v77;
    v28 = v78;
  }

  v50 = v27;
  v31 = (v27 + 64) >> 6;
  v55 = v52 + 16;
  v54 = v52 + 32;
  v53 = v52 + 8;
  v57 = a4;
  v56 = v31;
  if (a4 < 0)
  {
    goto LABEL_7;
  }

  while (v28)
  {
LABEL_14:
    OUTLINED_FUNCTION_20_25();
    v34 = OUTLINED_FUNCTION_19_30();
    v35(v34);
    while (1)
    {
      v36 = OUTLINED_FUNCTION_9_35();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v13);
      OUTLINED_FUNCTION_19_1();
      v39 = v58;
      v40 = OUTLINED_FUNCTION_49_2();
      v41(v40);
      v42 = v66;
      sub_237D8B2C4(v39, v63, v66);
      sub_237D8B620(v39, v64, v42);
      sub_237EF82F0();
      v43 = OUTLINED_FUNCTION_42_8();
      v44(v43);
      v71 = v60;
      v72 = v23;
      v45 = v67;
      sub_237D8C4E0();

      v46 = OUTLINED_FUNCTION_9_35();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
      OUTLINED_FUNCTION_22_24();
      sub_237EF82B0();
      sub_237EF8300();
      OUTLINED_FUNCTION_19_1();
      v49(v39, v13);
      v31 = v56;
      if ((v57 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_7:
      if (!sub_237EF92B0())
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_46_9();
      swift_unknownObjectRelease();
    }
  }

  v32 = v69;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
LABEL_17:
      OUTLINED_FUNCTION_49_9();
      sub_237C9FE9C();
      return;
    }

    v28 = *(v51 + 8 * v33);
    ++v32;
    if (v28)
    {
      v69 = v33;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void ObjectDetectionMetrics.meanAveragePrecision<A>(predictions:annotations:confidenceThresholds:overlapThreshold:)()
{
  OUTLINED_FUNCTION_19_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = OUTLINED_FUNCTION_24_21(v7, v8);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v35 = v11;
  v12 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41_8();
  OUTLINED_FUNCTION_49_2();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_33_12();
  sub_237EF9CE0();
  sub_237D8BAB8(v6, v4);
  OUTLINED_FUNCTION_36_12();
  if (v17)
  {
    v33 = 0;
    OUTLINED_FUNCTION_9_7();
    v6 = v2 + 56;
    OUTLINED_FUNCTION_4_54();
    v12 = v18 & v19;
  }

  else
  {
    OUTLINED_FUNCTION_23_26();
    sub_237EF8CC0();
    OUTLINED_FUNCTION_39_10();
  }

  OUTLINED_FUNCTION_6_40();
  while (1)
  {
    if (v2 < 0)
    {
      v21 = v35;
      v20 = v36;
      if (!sub_237EF92B0())
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_47_6();
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v21 = v35;
    v20 = v36;
    if (!v12)
    {
      break;
    }

LABEL_15:
    OUTLINED_FUNCTION_13_26();
    (*(v24 + 16))(v35, v26 + *(v24 + 72) * v25);
LABEL_16:
    OUTLINED_FUNCTION_28_18();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_21_26();
    sub_237EF82F0();
    (*(*(v20 - 8) + 8))(v21, v20);
    OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_35_10();
    sub_237D8C4E0();

    OUTLINED_FUNCTION_15_32();
    v27 = OUTLINED_FUNCTION_30_20();
    v28(v27);
    v29 = __OFADD__(AssociatedTypeWitness++, 1);
    v2 = v32;
    if (v29)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_8_48();
      OUTLINED_FUNCTION_26_19();
      v30 = *v34;
      v31 = OUTLINED_FUNCTION_49_2();
      v30(v31);
      (v30)(v0, v20);
      OUTLINED_FUNCTION_18_6();
      return;
    }
  }

  v22 = v33;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v4)
    {
      goto LABEL_19;
    }

    v12 = *(v6 + 8 * v23);
    ++v22;
    if (v12)
    {
      v33 = v23;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void ObjectDetectionMetrics.averageOfAveragePrecisionAtVariedThresholds<A>(predictions:annotations:confidenceThresholds:)()
{
  OUTLINED_FUNCTION_19_5();
  v72 = v1;
  v3 = v2;
  v5 = v4;
  v69 = v6;
  v8 = v7;
  v67 = v9;
  v10 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v66 = v12;
  v13 = *(v5 + 16);
  OUTLINED_FUNCTION_1_1();
  v56 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v65 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17(&v54 - v18);
  OUTLINED_FUNCTION_22_24();
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v19);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v74 = v21;
  v22 = *v0;
  v23 = *(v0 + 8);
  v24 = *(v5 + 48);
  v71 = v3;
  v25 = v24;
  v77 = sub_237EF8100();
  v78 = v22;
  v64 = v22;
  *&v79 = v23;
  v68 = v8;
  v70 = v5;
  sub_237D8BAB8(v8, v5);
  OUTLINED_FUNCTION_36_12();
  v63 = v25;
  if (v26)
  {
    v73 = 0;
    OUTLINED_FUNCTION_9_7();
    v55 = v5 + 56;
    OUTLINED_FUNCTION_4_54();
    v28 = v29 & v30;
  }

  else
  {
    OUTLINED_FUNCTION_23_26();
    sub_237EF8CC0();
    v5 = v78;
    v55 = v79;
    v27 = v80;
    v73 = v81;
    v28 = v82;
  }

  v54 = v27;
  v31 = (v27 + 64) >> 6;
  v59 = v56 + 16;
  v58 = v56 + 32;
  v57 = v56 + 8;
  v61 = v5;
  v60 = v31;
  if (v5 < 0)
  {
    goto LABEL_7;
  }

  while (v28)
  {
LABEL_14:
    OUTLINED_FUNCTION_20_25();
    v34 = OUTLINED_FUNCTION_19_30();
    v35(v34);
    while (1)
    {
      v36 = OUTLINED_FUNCTION_9_35();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v13);
      OUTLINED_FUNCTION_19_1();
      v39 = v62;
      v40 = OUTLINED_FUNCTION_49_2();
      v41(v40);
      v42 = v70;
      v43 = sub_237D8B2C4(v39, v67, v70);
      v44 = sub_237D8B620(v39, v68, v42);
      sub_237EF82F0();
      v45 = BYTE4(v75) ? v23 : *&v75;
      v46 = OUTLINED_FUNCTION_42_8();
      v47(v46);
      v75 = v64;
      v76 = v23;
      v48 = v42;
      v49 = v71;
      sub_237D8C8F4(v43, v44, v48, v71, v72, v66, v45);

      v50 = OUTLINED_FUNCTION_9_35();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
      OUTLINED_FUNCTION_22_24();
      sub_237EF82B0();
      sub_237EF8300();
      OUTLINED_FUNCTION_19_1();
      v53(v39, v13);
      v31 = v60;
      if ((v61 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_7:
      if (!sub_237EF92B0())
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_46_9();
      swift_unknownObjectRelease();
    }
  }

  v32 = v73;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
LABEL_20:
      OUTLINED_FUNCTION_49_9();
      sub_237C9FE9C();
      OUTLINED_FUNCTION_18_6();
      return;
    }

    v28 = *(v55 + 8 * v33);
    ++v32;
    if (v28)
    {
      v73 = v33;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void ObjectDetectionMetrics.averageOfMeanAveragePrecisionAtVariedThresholds<A>(predictions:annotations:confidenceThresholds:)()
{
  OUTLINED_FUNCTION_19_5();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v52 = v9;
  v11 = v10;
  v14 = OUTLINED_FUNCTION_24_21(v12, v13);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v59 = v4;
  v60 = v16;
  v17 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = v49 - v19;
  OUTLINED_FUNCTION_1_1();
  v62 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v57 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_41_8();
  v25 = *(v0 + 8);
  OUTLINED_FUNCTION_49_2();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  v56 = v2;
  v58 = v6;
  OUTLINED_FUNCTION_33_12();
  sub_237EF9CE0();
  v50 = v4;
  v65 = v4;
  v66 = v25;
  v51 = v11;
  sub_237D8BAB8(v11, v8);
  OUTLINED_FUNCTION_36_12();
  v53 = v8;
  if (v26)
  {
    v54 = 0;
    OUTLINED_FUNCTION_9_7();
    v20 = (v4 + 56);
    OUTLINED_FUNCTION_4_54();
    v17 = v27 & v28;
  }

  else
  {
    OUTLINED_FUNCTION_23_26();
    sub_237EF8CC0();
    OUTLINED_FUNCTION_39_10();
  }

  OUTLINED_FUNCTION_6_40();
  while (1)
  {
    if (v4 < 0)
    {
      v31 = sub_237EF92B0();
      v30 = v60;
      v29 = v61;
      if (!v31)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_47_6();
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v30 = v60;
    v29 = v61;
    if (!v17)
    {
      break;
    }

LABEL_15:
    OUTLINED_FUNCTION_13_26();
    (*(v34 + 16))(v30, v36 + *(v34 + 72) * v35, v29);
LABEL_16:
    OUTLINED_FUNCTION_28_18();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_21_26();
    sub_237EF82F0();
    (*(*(v29 - 8) + 8))(v30, v29);
    v63 = v50;
    v64 = v25;
    OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_35_10();
    sub_237D8C8F4(v37, v38, v39, v40, v41, v42, v43);

    OUTLINED_FUNCTION_15_32();
    v44 = OUTLINED_FUNCTION_30_20();
    v45(v44);
    v46 = __OFADD__(v11++, 1);
    v4 = v49[3];
    if (v46)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_8_48();
      OUTLINED_FUNCTION_26_19();
      v47 = *v55;
      v48 = OUTLINED_FUNCTION_49_2();
      v47(v48);
      (v47)(v1, v29);
      OUTLINED_FUNCTION_18_6();
      return;
    }
  }

  v32 = v54;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v8)
    {
      goto LABEL_19;
    }

    v17 = *&v20[8 * v33];
    ++v32;
    if (v17)
    {
      v54 = v33;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_237D8DF60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_237D8DFB0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 12))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237D8DFF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D8E0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  v9 = *(*(v7 - 8) + 16);
  v9(a1, a3, v7);

  return (v9)(a2, a4, v7);
}

__n128 sub_237D8E1DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(v2 + 56);
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_237D8E27C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D8E2B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237D8E308(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 44))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D8E328(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 44) = v3;
  return result;
}

void OUTLINED_FUNCTION_6_40()
{
  *(v3 - 296) = v0;
  *(v3 - 176) = v2;
  *(v3 - 224) = *(v3 - 168) + 8;
  *(v3 - 280) = v1;
  *(v3 - 168) = v2 - 8;
}

uint64_t OUTLINED_FUNCTION_8_48()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
  sub_237C9FE9C();

  return sub_237EF83A0();
}

uint64_t OUTLINED_FUNCTION_15_32()
{

  return sub_237EF9770();
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return sub_237EF92A0();
}

uint64_t OUTLINED_FUNCTION_24_21@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 264) = a1;
  *(v2 - 288) = a2;

  return sub_237EF90F0();
}

uint64_t OUTLINED_FUNCTION_26_19()
{

  return sub_237EF8330();
}

uint64_t OUTLINED_FUNCTION_28_18()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
  v3 = *(v2 - 264);
  v4 = *(v2 - 240);

  return sub_237D8B2C4(v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_46_9()
{

  return sub_237EF9D10();
}

uint64_t OUTLINED_FUNCTION_47_6()
{

  return sub_237EF9D10();
}

uint64_t OUTLINED_FUNCTION_48_8()
{
  v4 = *(v2 - 256);

  return sub_237D8B620(v1, v4, v0);
}

unint64_t TabularPipelineDataError.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 64))
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    v12 = 0xD000000000000010;
    OUTLINED_FUNCTION_1_64();
    v9 = 0x206E692027;
    v10 = 0xE500000000000000;
LABEL_6:
    MEMORY[0x2383E0710](v9, v10);
    v7 = v2;
    v8 = v1;
    goto LABEL_7;
  }

  if (*(v0 + 64) != 1)
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000025, 0x8000000237EFEFA0);
    OUTLINED_FUNCTION_1_64();
    v9 = 0x64656465656E2027;
    v10 = 0xED000020726F6620;
    goto LABEL_6;
  }

  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  OUTLINED_FUNCTION_9_22();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFEFD0);
  OUTLINED_FUNCTION_1_64();
  MEMORY[0x2383E0710](544106784, 0xE400000000000000);
  MEMORY[0x2383E0710](v2, v1);
  MEMORY[0x2383E0710](0x746365707845202ELL, 0xEB00000000206465);
  MEMORY[0x2383E0710](v4, v3);
  MEMORY[0x2383E0710](0x756F662074756220, 0xEB0000000020646ELL);
  v7 = v6;
  v8 = v5;
LABEL_7:
  MEMORY[0x2383E0710](v7, v8);
  MEMORY[0x2383E0710](46, 0xE100000000000000);
  return v12;
}

uint64_t static TabularPipelineDataError.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v26, a2, 0x41uLL);
  memcpy(v27, __src, 0x41uLL);
  memcpy(v28, a2, sizeof(v28));
  v5 = __dst[2];
  v4 = __dst[3];
  v7 = v26[2];
  v6 = v26[3];
  if (LOBYTE(__dst[8]))
  {
    if (LOBYTE(__dst[8]) == 1)
    {
      if (LOBYTE(v26[8]) == 1)
      {
        v8 = __dst[4];
        v9 = __dst[5];
        v22 = __dst[7];
        v23 = __dst[6];
        v10 = v26[4];
        v11 = v26[5];
        v12 = __dst[0] == v26[0] && __dst[1] == v26[1];
        v13 = v26[6];
        v14 = v26[7];
        if (v12 || (sub_237EF9D40() & 1) != 0)
        {
          v15 = v5 == v7 && v4 == v6;
          if (v15 || (OUTLINED_FUNCTION_2_61(), (sub_237EF9D40() & 1) != 0))
          {
            v16 = v8 == v10 && v9 == v11;
            if (v16 || (sub_237EF9D40() & 1) != 0)
            {
              if (v23 != v13 || v22 != v14)
              {
                goto LABEL_37;
              }

LABEL_40:
              sub_237D8EB54(v26, v24);
              sub_237D8EB54(__dst, v24);
              v20 = 1;
              goto LABEL_39;
            }
          }
        }
      }

LABEL_38:
      sub_237D8EB54(v26, v24);
      sub_237D8EB54(__dst, v24);
      v20 = 0;
      goto LABEL_39;
    }

    if (LOBYTE(v26[8]) != 2)
    {
      goto LABEL_38;
    }
  }

  else if (LOBYTE(v26[8]))
  {
    goto LABEL_38;
  }

  v18 = __dst[0] == v26[0] && __dst[1] == v26[1];
  if (!v18 && (sub_237EF9D40() & 1) == 0)
  {
    goto LABEL_38;
  }

  if (v5 == v7 && v4 == v6)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_2_61();
LABEL_37:
  v20 = sub_237EF9D40();
  sub_237D8EB54(v26, v24);
  sub_237D8EB54(__dst, v24);
LABEL_39:
  sub_237D8EB8C(v27);
  return v20 & 1;
}

uint64_t sub_237D8EB8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB29E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D8EC10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 65))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237D8EC50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_64()
{

  JUMPOUT(0x2383E0710);
}

uint64_t sub_237D8ECF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v57 = a2;
  v67 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v69 = v6;
  MEMORY[0x28223BE20](v7);
  v60 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_55();
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  v66 = xmmword_237F12B90;
  *(inited + 16) = xmmword_237F08A50;
  *(inited + 32) = xmmword_237F12B90;
  *(inited + 48) = a2;
  sub_237EBE8A8();
  v56 = v17;
  v55 = v18;
  swift_setDeallocating();
  OUTLINED_FUNCTION_1_65();
  sub_237EBEF48();
  sub_237E8B680();
  OUTLINED_FUNCTION_3_59();

  OUTLINED_FUNCTION_1_65();
  sub_237EBEF48();
  v59 = v19;

  sub_237EF7A20();
  sub_237EF7A50();
  v61 = v15;
  sub_237EC79A4();
  OUTLINED_FUNCTION_3_59();
  v21 = v11 + 8;
  v20 = *(v11 + 8);
  v62 = v21;
  v64 = v20;
  v63 = v9;
  v20(v3, v9);
  v20(v15, v9);
  OUTLINED_FUNCTION_1_65();
  sub_237EBE8A8();

  sub_237EBF68C();
  OUTLINED_FUNCTION_3_59();

  OUTLINED_FUNCTION_1_65();
  sub_237EBE8A8();
  v59 = v22;
  v58 = v23;

  sub_237EBEF48();

  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_237F105F0;
  v25 = v57;
  *(v24 + 32) = 1;
  *(v24 + 40) = v25;
  *(v24 + 48) = v66;
  v52 = a1;
  sub_237EBE8A8();

  swift_setDeallocating();
  *&v66 = type metadata accessor for LSTMFCN(0);
  OUTLINED_FUNCTION_47_1();
  sub_237D8F4D0();

  v26 = v60;
  *v60 = 0x65636E6575716573;
  v26[1] = 0xEE006874676E654CLL;
  LODWORD(v57) = *MEMORY[0x277D252B0];
  v27 = v69;
  v56 = *(v69 + 104);
  v28 = v67;
  v56(v26);
  sub_237EF68E0();
  v29 = OUTLINED_FUNCTION_6_41();
  sub_237D8F5D8(v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_3_59();
  v54 = v34;
  v53 = v35;

  v36 = *(v27 + 8);
  v69 = v27 + 8;
  v55 = v36;
  v36(v26, v28);
  OUTLINED_FUNCTION_3_47();
  sub_237EBE8A8();

  sub_237D8F4D0();

  v37 = v53;
  *v26 = v54;
  v26[1] = v37;
  v38 = v67;
  (v56)(v26, v57, v67);
  v39 = OUTLINED_FUNCTION_6_41();
  sub_237D8F5D8(v39, v40, v41, v42, 5);
  OUTLINED_FUNCTION_3_59();

  v55(v26, v38);

  OUTLINED_FUNCTION_3_47();
  sub_237EBE8A8();

  OUTLINED_FUNCTION_47_1();
  sub_237D8F4D0();
  OUTLINED_FUNCTION_3_59();

  OUTLINED_FUNCTION_3_47();
  sub_237EC0120();
  v44 = v43;
  v46 = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_237F04760;
  v48 = v58;
  *(v47 + 32) = v59;
  *(v47 + 40) = v48;
  *(v47 + 48) = v44;
  *(v47 + 56) = v46;
  v49 = v61;
  sub_237EF7A30();
  sub_237EC0B40();
  v64(v49, v63);
  sub_237E8BE28();

  sub_237EC2368();
  OUTLINED_FUNCTION_3_59();

  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_237F03530;
  *(v50 + 32) = *(v65 + 16);
  OUTLINED_FUNCTION_3_47();
  sub_237EBE8A8();

  swift_setDeallocating();
  OUTLINED_FUNCTION_47_1();
  sub_237EC28F8();
}

uint64_t sub_237D8F4D0()
{
  sub_237E8C378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_5_51(inited, xmmword_237F08A50);
  inited[2].n128_u64[1] = MEMORY[0x2383DE9E0](v1);
  inited[3].n128_u64[0] = -1;
  OUTLINED_FUNCTION_47_1();
  sub_237EBE8A8();

  swift_setDeallocating();
  type metadata accessor for LSTMFCN.ConvolutionBlock(0);
  sub_237E8C924();

  sub_237EC32A0();
  v3 = v2;

  return v3;
}

uint64_t sub_237D8F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v63 = a4;
  v64 = a5;
  v62 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v58 = v17;
  v59 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_55();
  MEMORY[0x28223BE20](v18);
  v20 = v52 - v19;
  v60 = a2;
  v61 = a3;
  sub_237EC0120();
  sub_237E8BE28();

  sub_237EC32A0();

  v21 = type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
  sub_237E8BE28();

  sub_237EC32B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  v57 = xmmword_237F08A50;
  v23 = OUTLINED_FUNCTION_5_51(inited, xmmword_237F08A50);
  v24 = *(v7 + *(v21 + 28));
  v23[2].n128_u64[1] = v24;
  v23[3].n128_u64[0] = v25;
  v26 = a1;
  sub_237EBE8A8();
  v56 = v27;
  v29 = v28;

  swift_setDeallocating();
  v30 = v62;
  (*(v12 + 16))(v15, v63);
  sub_237EF7AC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398);
  result = swift_allocObject();
  v32 = v64;
  *(result + 16) = xmmword_237F03530;
  if (v32 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__OFSUB__(1, v32))
  {
    *(result + 32) = 1 - v32;
    sub_237EF7A50();
    v52[1] = v26;
    v63 = v29;
    sub_237EC79A4();
    v34 = v33;
    v54 = v33;
    v55 = v6;
    v64 = v35;
    v36 = v59;
    v53 = v24;
    v37 = *(v58 + 1);
    v58 = v37;
    v37(v6, v59);
    v37(v20, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD368);
    v38 = *(v12 + 72);
    v39 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_237F04760;
    v41 = v40 + v39;
    sub_237EF7A00();
    v42 = *(v12 + 104);
    (v42)(v41, *MEMORY[0x277D252B8], v30);
    v43 = (v41 + v38);
    v44 = v64;
    *v43 = v34;
    v43[1] = v44;
    v42();
    v65 = v40;
    sub_237EF8260();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB29E8);
    sub_237D8FB78();
    sub_237EF7AD0();
    sub_237EC0B40();
    v45 = v58;
    v58(v20, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD498);
    v46 = swift_allocObject();
    v47 = OUTLINED_FUNCTION_5_51(v46, v57);
    v47[2].n128_u8[8] = 0;
    v47[3].n128_u64[0] = v53;
    v47[3].n128_u8[8] = 0;
    v47[4].n128_u64[0] = 0;
    v47[4].n128_u8[8] = v48;
    sub_237EC3844();

    sub_237EF8260();
    sub_237EF7A20();
    v49 = v55;
    sub_237EF7A20();
    sub_237EC79A4();
    v51 = v50;
    v45(v49, v36);
    v45(v20, v36);
    return v51;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_237D8FB78()
{
  result = qword_27DEB29F0;
  if (!qword_27DEB29F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB29E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB29F0);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_5_51(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1;
  return result;
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.makeTransformer()@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = v2[1];
  v21[0] = *v2;
  v21[1] = v5;
  v6 = v2[3];
  v8 = *v2;
  v7 = v2[1];
  v21[2] = v2[2];
  v21[3] = v6;
  v20[0] = v8;
  v20[1] = v7;
  v9 = v2[3];
  v20[2] = v2[2];
  v20[3] = v9;
  sub_237C8F200(v21, v19);
  v10 = a1[3];
  v11 = a1[8];
  v12 = a1[11];
  v13 = sub_237EF8260();
  v14 = sub_237E5E16C(v13, v10, v11, v12);
  v16 = v15;
  swift_getTupleTypeMetadata2();
  sub_237EF89A0();
  v17 = sub_237EF8230();
  return sub_237E2AC2C(v20, v14, v16, MEMORY[0x277D84F90], 0, v17, a1[2], v10, a2, a1[4], a1[5], v11, a1[9], a1[10], v12);
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8[36] = a6;
  v8[37] = a7;
  v8[34] = a4;
  v8[35] = a5;
  v8[32] = a2;
  v8[33] = a3;
  v8[31] = a1;
  v11 = sub_237EF6B10();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = OUTLINED_FUNCTION_27_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  v8[41] = v12;
  v8[42] = *(v12 - 8);
  v8[43] = OUTLINED_FUNCTION_27_0();
  v8[44] = a5[2];
  v8[45] = a5[4];
  v13 = sub_237EF7E90();
  v8[46] = v13;
  v8[47] = *(v13 - 8);
  v8[48] = OUTLINED_FUNCTION_27_0();
  v8[49] = a5[3];
  v8[50] = a5[11];
  sub_237EF8CF0();
  v8[51] = type metadata accessor for AnnotatedFeature();
  sub_237EF90F0();
  v8[52] = OUTLINED_FUNCTION_27_0();
  v8[53] = *(a6 - 8);
  v8[54] = OUTLINED_FUNCTION_27_0();
  memcpy(v8 + 2, v7, 0x48uLL);

  return MEMORY[0x2822009F8](sub_237D8FFA8, 0, 0);
}

uint64_t sub_237D8FFA8()
{
  v60 = v0;
  (*(*(v0 + 424) + 16))(*(v0 + 432), *(v0 + 256), *(v0 + 288));
  v1 = sub_237EF8A90();
  *(v0 + 208) = v1;
  sub_237EF8A60();
  swift_getWitnessTable();
  if ((sub_237EF8EC0() & 1) == 0)
  {
    *(v0 + 88) = *(v0 + 352);
    v3 = *(v0 + 400);
    v4 = *(v0 + 360);
    v5 = *(v0 + 280);
    v6 = *(v0 + 248);
    v7 = v5[5];
    v8 = v5[8];
    v9 = v5[9];
    v10 = v5[10];
    *(v0 + 96) = *(v0 + 392);
    *(v0 + 104) = v4;
    v53 = v7;
    v54 = v10;
    *(v0 + 112) = v7;
    *(v0 + 120) = v8;
    v56 = v9;
    v58 = v8;
    *(v0 + 128) = v9;
    *(v0 + 136) = v10;
    *(v0 + 144) = v3;
    v11 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel();
    v52 = v11;
    if (!*(*(v6 + *(v11 + 92)) + 16))
    {
      v49 = *(v11 + 92);
      v50 = v6;
      v13 = *(v0 + 408);
      v12 = *(v0 + 416);
      *(v0 + 240) = v1;
      sub_237EF8E80();
      result = __swift_getEnumTagSinglePayload(v12, 1, v13);
      if (result == 1)
      {
        goto LABEL_16;
      }

      v15 = *(v0 + 416);
      v47 = *(v0 + 408);
      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      v18 = *(v0 + 368);
      (*(v16 + 16))(v17, v15, v18);
      (*(*(v47 - 8) + 8))(v15);
      v19 = sub_237EF7E20();
      (*(v16 + 8))(v17, v18);

      *(v50 + v49) = v19;
    }

    memcpy(__dst, (v0 + 16), 0x48uLL);
    *(v0 + 216) = v1;
    sub_237D7C468();
    v20 = *(v0 + 392);
    v21 = *(v0 + 352);
    v22 = *(v0 + 360);
    v23 = *(v0 + 288);
    v46 = *(v0 + 296);
    v48 = *(v0 + 400);
    v24 = *(v0 + 280);
    v51 = *(v0 + 328);
    v45 = *(v0 + 248);

    v25 = swift_task_alloc();
    v25[2] = v21;
    v25[3] = v20;
    v25[4] = v23;
    v25[5] = v22;
    v25[6] = v53;
    v25[7] = *(v24 + 48);
    v25[8] = *(v24 + 56);
    v25[9] = v58;
    v25[10] = v56;
    v25[11] = v54;
    v25[12] = v48;
    v25[13] = v46;
    v25[14] = v0 + 16;
    v25[15] = v45;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    v28 = sub_237C8FFEC(sub_237D907F4, v25, v23, v51, v26, v46, MEMORY[0x277D84950], v0 + 224);
    v29 = *(v0 + 344);
    v30 = *(v0 + 248);

    memcpy(__dst, (v0 + 16), 0x48uLL);
    *(v0 + 232) = v28;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8);
    sub_237C90604();
    sub_237D7DF10(v31, v29);

    result = sub_237E2AF24(v29, v52);
    v32 = *(v52 + 96);
    v33 = *(v30 + v32);
    v34 = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
      v35 = *(v0 + 264);
      *(v30 + v32) = v34;
      v37 = *(v0 + 336);
      v36 = *(v0 + 344);
      v38 = *(v0 + 320);
      v39 = *(v0 + 328);
      v40 = *(v0 + 312);
      if (v35)
      {
        v57 = *(v0 + 328);
        v41 = *(v0 + 264);
        v55 = *(v0 + 304);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237F03530;
        strcpy((inited + 32), "training_loss");
        *(inited + 46) = -4864;
        sub_237C70604(v41);
        sub_237EF6A90();
        *(inited + 48) = *(v0 + 440);
        sub_237C758C4();
        v43 = sub_237EF8230();
        v44 = sub_237C908A4(v43);

        __dst[0] = 0xD000000000000029;
        __dst[1] = 0x8000000237EFF010;
        __dst[2] = v34;
        __dst[3] = v34;
        LOBYTE(__dst[4]) = 0;
        __dst[5] = v44;
        v41(__dst);
        sub_237C5EE40(v41);

        (*(v40 + 8))(v38, v55);
        (*(v37 + 8))(v36, v57);
      }

      else
      {
        (*(v40 + 8))(*(v0 + 320), *(v0 + 304));
        (*(v37 + 8))(v36, v39);
      }

      OUTLINED_FUNCTION_0_53();

      v27 = *(v0 + 8);
      goto LABEL_7;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  sub_237C84150();
  swift_allocError();
  *v2 = 0xD000000000000031;
  *(v2 + 8) = 0x8000000237EFF040;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_0_53();

  v27 = *(v0 + 8);
LABEL_7:

  return v27();
}

uint64_t sub_237D905E8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  memcpy(__dst, a2, sizeof(__dst));
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel();
  sub_237EF8260();
  sub_237EF8260();
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifier();
  v16 = v19;
  sub_237D7D6CC();

  if (v16)
  {
    *a16 = v16;
  }

  return result;
}

uint64_t sub_237D90718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C5FFA4;

  return FullyConnectedNetworkMultiLabelClassifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237D90844(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_53()
{
}

uint64_t BaseLinearRegressorModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB29F8);
  OUTLINED_FUNCTION_1();
  v21 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - v13;
  v15 = *v2;
  memcpy(__dst, v2 + 1, 0x49uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D90C3C();
  sub_237EFA1B0();
  __src[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_237F03530;
  *(v16 + 32) = *(v15 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8);
  sub_237C96710(&qword_280C8CCE0, &qword_27DEB02F8);
  sub_237EF7E40();
  LOBYTE(__src[0]) = 0;
  sub_237D0A15C(&qword_280C8CD70);
  v17 = v20[1];
  sub_237EF9A70();
  (*(v6 + 8))(v9, v4);
  if (v17)
  {
    return (*(v21 + 8))(v14, v10);
  }

  memcpy(__src, __dst, 0x49uLL);
  __dst[103] = 1;
  sub_237D914E8(__dst, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08);
  sub_237D91558(&qword_27DEB2A10);
  sub_237EF9A00();
  v19 = (v21 + 8);
  memcpy(v22, __src, 0x49uLL);
  sub_237D09E34(v22);
  return (*v19)(v14, v10);
}

unint64_t sub_237D90C3C()
{
  result = qword_27DEB2A00;
  if (!qword_27DEB2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2A00);
  }

  return result;
}

uint64_t BaseLinearRegressorModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v31 = &v22 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D90C3C();
  sub_237EFA190();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = 0u;
    memset(v37, 0, 25);
    v34 = 0u;
    v35 = 0u;
    return sub_237D09E34(&v34);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_237D0A15C(&qword_280C8CD68);
    v9 = v29;
    sub_237EF9970();
    sub_237C96710(qword_280C8CD78, &qword_27DEAEA60);
    v27 = sub_237EF7F50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08);
    v50 = 1;
    sub_237D91558(&qword_27DEB2A20);
    sub_237EF9900();
    (*(v5 + 8))(v31, v9);
    v10 = OUTLINED_FUNCTION_1_66();
    v11(v10);
    v13 = v39;
    v12 = v40;
    v30 = v39;
    v31 = v40;
    v14 = v41;
    v15 = v42;
    v29 = v41;
    v17 = v43;
    v16 = v44;
    v25 = v45;
    v26 = v42;
    v23 = v47;
    v24 = v46;
    v49 = v48;
    memset(v32, 0, 73);
    sub_237D09E34(v32);
    v33[0] = v27;
    v33[1] = v13;
    v33[2] = v12;
    v33[3] = v14;
    v33[4] = v15;
    v33[5] = v17;
    v19 = v24;
    v18 = v25;
    v33[6] = v16;
    v33[7] = v25;
    v20 = v23;
    v33[8] = v24;
    v33[9] = v23;
    LOBYTE(v15) = v49;
    LOBYTE(v33[10]) = v49;
    memcpy(v28, v33, 0x51uLL);
    sub_237D915CC(v33, &v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v34 = v27;
    *(&v34 + 1) = v30;
    *&v35 = v31;
    *(&v35 + 1) = v29;
    *&v36 = v26;
    *(&v36 + 1) = v17;
    v37[0] = v16;
    v37[1] = v18;
    v37[2] = v19;
    v37[3] = v20;
    v38 = v15;
    return sub_237CC9A48(&v34);
  }
}

uint64_t sub_237D91084()
{
  v0 = sub_237EF9890();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D910D8(char a1)
{
  if (a1)
  {
    return 0x657A696D6974706FLL;
  }

  else
  {
    return 0x6963696666656F63;
  }
}

uint64_t sub_237D91148@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D91084();
  *a1 = result;
  return result;
}

uint64_t sub_237D91178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237D910D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237D911AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D91084();
  *a1 = result;
  return result;
}

uint64_t sub_237D911D4(uint64_t a1)
{
  v2 = sub_237D90C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D91210(uint64_t a1)
{
  v2 = sub_237D90C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BaseLinearRegressorModel.export(to:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_3_60();

  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  __src[2] = 0;
  __src[3] = 0xE000000000000000;
  __src[4] = 0;
  __src[5] = 0xE000000000000000;
  __src[6] = 0;
  __src[7] = 0xE000000000000000;
  __src[8] = v2;
  BaseLinearRegressorModel.export(to:metadata:)(a1, __src);
  memcpy(v4, __src, sizeof(v4));
  return sub_237D91628(v4);
}

uint64_t BaseLinearRegressorModel.export(to:metadata:)(uint64_t a1, void *a2)
{
  v16 = a1;
  v5 = type metadata accessor for CoreMLPackage();
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[2];
  v14[1] = *a2;
  v14[2] = v8;
  v9 = a2[6];
  v14[3] = a2[4];
  v14[4] = v9;
  v10 = a2[8];
  memcpy(__dst, v2, 0x51uLL);
  result = sub_237D32F94(v7);
  if (!v3)
  {
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF7770();
    sub_237EF7800();
    sub_237EF77C0();
    sub_237EF77E0();
    v12 = sub_237EF7780();
    sub_237C9FB0C(v10, sub_237C9FE58, 0, v13);
    v12(__dst, 0);
    sub_237E33BC0(v16);
    return sub_237D0F8BC(v7);
  }

  return result;
}

uint64_t sub_237D914E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB0300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D91558(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2A08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D9175C()
{
  result = qword_27DEB2A28;
  if (!qword_27DEB2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2A28);
  }

  return result;
}

unint64_t sub_237D917B4()
{
  result = qword_27DEB2A30;
  if (!qword_27DEB2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2A30);
  }

  return result;
}

unint64_t sub_237D9180C()
{
  result = qword_27DEB2A38;
  if (!qword_27DEB2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2A38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_60()
{

  return sub_237EF8230();
}

unint64_t PipelineDataError.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  switch(*(v0 + 32))
  {
    case 1:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      v5 = 0xD00000000000002DLL;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
      v5 = v7 - 5;
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      v14 = 0xD000000000000012;
      MEMORY[0x2383E0710](v3, v4);
      MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFF110);
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
      goto LABEL_10;
    case 5:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
      v6 = v10 - 13;
LABEL_10:
      v14 = v6;
      MEMORY[0x2383E0710](v2, v1);
      MEMORY[0x2383E0710](8250, 0xE200000000000000);
      v8 = v3;
      v9 = v4;
      break;
    case 6:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
      v14 = v11 - 16;
      v12 = MEMORY[0x2383E0A10](v2, MEMORY[0x277D83B88]);
      MEMORY[0x2383E0710](v12);

      MEMORY[0x2383E0710](8250, 0xE200000000000000);
      v8 = v1;
      v9 = v3;
      break;
    default:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
LABEL_7:
      v14 = v5;
LABEL_8:
      v8 = v2;
      v9 = v1;
      break;
  }

  MEMORY[0x2383E0710](v8, v9);
  MEMORY[0x2383E0710](46, 0xE100000000000000);
  return v14;
}

uint64_t static PipelineDataError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v47[0] = *a1;
  v47[1] = v3;
  v47[2] = v4;
  v47[3] = v5;
  v48 = v6;
  v49 = v8;
  v50 = v7;
  v51 = v10;
  v52 = v9;
  v53 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_61;
      }

      if (v2 != v8 || v3 != v7)
      {
        v13 = OUTLINED_FUNCTION_3_61();
        LOBYTE(v6) = 1;
        v20 = OUTLINED_FUNCTION_0_54();
        v24 = 1;
        goto LABEL_60;
      }

      LOBYTE(v6) = 1;
      OUTLINED_FUNCTION_4_56();
      v41 = 1;
      goto LABEL_74;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_61;
      }

      if (v2 != v8 || v3 != v7)
      {
        v13 = OUTLINED_FUNCTION_3_61();
        LOBYTE(v6) = 2;
        v20 = OUTLINED_FUNCTION_0_54();
        v24 = 2;
        goto LABEL_60;
      }

      LOBYTE(v6) = 2;
      OUTLINED_FUNCTION_4_56();
      v41 = 2;
      goto LABEL_74;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_61;
      }

      v26 = v2 == v8 && v3 == v7;
      if (!v26 && (OUTLINED_FUNCTION_3_61() & 1) == 0)
      {
        LOBYTE(v6) = 3;
        v32 = OUTLINED_FUNCTION_0_54();
        v36 = 3;
        goto LABEL_62;
      }

      if (v4 != v10 || v5 != v9)
      {
        OUTLINED_FUNCTION_4_56();
        v13 = sub_237EF9D40();
        LOBYTE(v6) = 3;
        v20 = OUTLINED_FUNCTION_0_54();
        v24 = 3;
        goto LABEL_60;
      }

      LOBYTE(v6) = 3;
      v37 = OUTLINED_FUNCTION_5_52();
      v41 = 3;
      goto LABEL_74;
    case 4:
      if (v11 != 4)
      {
        goto LABEL_61;
      }

      v18 = v2 == v8 && v3 == v7;
      if (!v18 && (OUTLINED_FUNCTION_3_61() & 1) == 0)
      {
        LOBYTE(v6) = 4;
        v32 = OUTLINED_FUNCTION_0_54();
        v36 = 4;
        goto LABEL_62;
      }

      if (v4 != v10 || v5 != v9)
      {
        OUTLINED_FUNCTION_4_56();
        v13 = sub_237EF9D40();
        LOBYTE(v6) = 4;
        v20 = OUTLINED_FUNCTION_0_54();
        v24 = 4;
        goto LABEL_60;
      }

      LOBYTE(v6) = 4;
      v37 = OUTLINED_FUNCTION_5_52();
      v41 = 4;
      goto LABEL_74;
    case 5:
      if (v11 != 5)
      {
        goto LABEL_61;
      }

      v29 = v2 == v8 && v3 == v7;
      if (!v29 && (OUTLINED_FUNCTION_3_61() & 1) == 0)
      {
        LOBYTE(v6) = 5;
        v32 = OUTLINED_FUNCTION_0_54();
        v36 = 5;
        goto LABEL_62;
      }

      if (v4 != v10 || v5 != v9)
      {
        OUTLINED_FUNCTION_4_56();
        v13 = sub_237EF9D40();
        LOBYTE(v6) = 5;
        v20 = OUTLINED_FUNCTION_0_54();
        v24 = 5;
        goto LABEL_60;
      }

      LOBYTE(v6) = 5;
      v37 = OUTLINED_FUNCTION_5_52();
      v41 = 5;
      goto LABEL_74;
    case 6:
      if (v11 != 6)
      {
        goto LABEL_61;
      }

      if ((sub_237C60C7C(v2, v8) & 1) == 0)
      {
        LOBYTE(v6) = 6;
        v32 = OUTLINED_FUNCTION_0_54();
        v36 = 6;
        goto LABEL_62;
      }

      if (v3 != v7 || v4 != v10)
      {
        v13 = sub_237EF9D40();
        LOBYTE(v6) = 6;
        v20 = OUTLINED_FUNCTION_0_54();
        v24 = 6;
LABEL_60:
        sub_237D91E9C(v20, v21, v22, v23, v24);
        goto LABEL_76;
      }

      LOBYTE(v6) = 6;
      v37 = v8;
      v38 = v3;
      v39 = v4;
      v40 = v9;
      v41 = 6;
LABEL_74:
      sub_237D91E9C(v37, v38, v39, v40, v41);
      goto LABEL_75;
    default:
      if (v11)
      {
LABEL_61:
        v32 = OUTLINED_FUNCTION_0_54();
LABEL_62:
        sub_237D91E9C(v32, v33, v34, v35, v36);
        v13 = 0;
      }

      else if (v2 == v8 && v3 == v7)
      {
        OUTLINED_FUNCTION_4_56();
        sub_237D91E9C(v42, v43, v44, v45, 0);
        LOBYTE(v6) = 0;
LABEL_75:
        v13 = 1;
      }

      else
      {
        v13 = sub_237EF9D40();
        v14 = OUTLINED_FUNCTION_0_54();
        sub_237D91E9C(v14, v15, v16, v17, 0);
        LOBYTE(v6) = 0;
      }

LABEL_76:
      sub_237D91E9C(v2, v3, v4, v5, v6);
      sub_237D91F0C(v47);
      return v13 & 1;
  }
}

uint64_t sub_237D91E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 3u)
  {
    if (a5 - 3 >= 3 && a5 != 6)
    {
      return result;
    }

    sub_237EF8260();
  }

  return sub_237EF8260();
}

uint64_t sub_237D91F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB2A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237D91FA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 33))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237D91FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_61()
{

  return sub_237EF9D40();
}

uint64_t sub_237D920B0()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  (*(*(v4 - 8) + 32))(v2, v5);
  v6 = type metadata accessor for ComposedTemporalEstimator();
  return (*(*(v0 - 8) + 32))(v3 + *(v6 + 52), v1, v0);
}

void sub_237D9216C()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for TemporalTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  TemporalTransformerToEstimatorAdaptor.init(_:)(v1, v0, v3, v5);
  OUTLINED_FUNCTION_5_37();
  swift_getWitnessTable();
  sub_237D920B0();
  OUTLINED_FUNCTION_38_0();
}

void sub_237D92234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = a8;
  v9[12] = v8;
  v9[9] = a6;
  v9[10] = a7;
  v9[7] = a4;
  v9[8] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = a1;
  v9[13] = *(a5 + 40);
  v9[14] = *(a5 + 24);
  v9[15] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[16] = v10;
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v9[19] = swift_getAssociatedConformanceWitness();
  v9[20] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[21] = v11;
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_1_1();
  v9[25] = v12;
  v9[26] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v9[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[28] = v13;
  v9[29] = OUTLINED_FUNCTION_27_0();
  v9[30] = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_15_0();
  v9[31] = v14;
  v9[32] = OUTLINED_FUNCTION_27_0();
  v9[33] = swift_checkMetadataState();
  OUTLINED_FUNCTION_15_0();
  v9[34] = v15;
  v9[35] = swift_task_alloc();
  v9[36] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v18 = v16 + *v16;
  v17 = swift_task_alloc();
  v9[37] = v17;
  *v17 = v9;
  v17[1] = sub_237D92684;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D92684()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 304) = v0;

  if (v0)
  {
    v5 = sub_237C68B58;
  }

  else
  {
    v5 = sub_237D92788;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_237D92788()
{
  v1 = v0[38];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[34] + 8))(v0[36], v0[33]);
    OUTLINED_FUNCTION_22_0();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_26_0();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[9];
  v7 = v0[5];
  v0[2] = sub_237EF8110();
  (*(v5 + 16))(v4, v7, v6);
  sub_237EF86F0();
  v8 = v0[27];
  v9 = v0[24];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    sub_237EF8B90();
    OUTLINED_FUNCTION_8_49();
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_52(v15);
    OUTLINED_FUNCTION_9_36();
    swift_getAssociatedConformanceWitness();
    MEMORY[0] = v0;
    OUTLINED_FUNCTION_5_53();

    __asm { BRAA            X8, X16 }
  }

  v10 = OUTLINED_FUNCTION_32_0();
  v11(v10);
  OUTLINED_FUNCTION_15_0();
  v12 = swift_task_alloc();
  v0[39] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_6_42(v12);
  OUTLINED_FUNCTION_26_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D92B04()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 320) = v0;

  if (v0)
  {

    v6 = sub_237C68C08;
  }

  else
  {
    v6 = sub_237D92C10;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_237D92C10()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[20];
  (*(v5 + 16))(v0[22], v4, v6);
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[40];
  v8 = v0[27];
  v9 = v0[24];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    sub_237EF8B90();
    if (v7)
    {

      v10 = OUTLINED_FUNCTION_31_0();
      v11(v10);
      OUTLINED_FUNCTION_22_0();

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_26_0();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_8_49();
    v19 = swift_task_alloc();
    OUTLINED_FUNCTION_52(v19);
    OUTLINED_FUNCTION_9_36();
    swift_getAssociatedConformanceWitness();
    MEMORY[0] = v0;
    OUTLINED_FUNCTION_5_53();

    __asm { BRAA            X8, X16 }
  }

  v14 = OUTLINED_FUNCTION_32_0();
  v15(v14);
  OUTLINED_FUNCTION_15_0();
  v16 = swift_task_alloc();
  v0[39] = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_6_42();
  OUTLINED_FUNCTION_26_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D92F94()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 344) = v0;

  if (v0)
  {
    v6 = sub_237C68D0C;
  }

  else
  {
    v6 = sub_237D930A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_237D930A8()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[17];
  v4 = v0[15];
  v9 = v0[4];
  (*(v0[34] + 32))(v1, v0[36], v2);
  v5 = OUTLINED_FUNCTION_31_0();
  v6(v5);
  swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v1, v3, v2, v4, v9);

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237D9321C(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 32))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = a3[5];
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTemporalTransformer();
    return (*(v8 + 32))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237D93384@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = a2[3];
  v36 = a2[5];
  v38 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v31 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v29 - v11;
  v12 = a2[4];
  v13 = a2[2];
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v34 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = *(v12 + 40);
  v35 = a1;
  v24 = v39;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v29 = v13;
    v30 = v18;
    v39 = v14;
    v26 = AssociatedTypeWitness;
    (*(v36 + 40))(v35, v38, v36);
    v27 = v30;
    v28 = v39;
    (*(v34 + 32))(v30, v22, v39);
    (*(v31 + 32))(v9, v37, v26);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v27, v9, v28, v26, v32);
  }

  return result;
}

void sub_237D93684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_237C6A904;

  sub_237D92234(a1, a2, a3, a4, a8, a5, a6, a7);
}

void sub_237D937D8()
{
  OUTLINED_FUNCTION_37_0();
  v31 = v1;
  v32 = v2;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v30[0] = v10;
  v30[1] = v11;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = type metadata accessor for EstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v30 - v27;
  (*(v19 + 16))(v23, v3, v9, v26);
  EstimatorToTemporalAdaptor.init(_:)(v23, v9, v5);
  (*(v13 + 16))(v17, v30[0], v7);
  OUTLINED_FUNCTION_30_16();
  WitnessTable = swift_getWitnessTable();
  v32(v28, v17, v24, v7, WitnessTable, v31);
  OUTLINED_FUNCTION_38_0();
}

void sub_237D93A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_37_0();
  v58 = v23;
  v59 = v22;
  v56 = v24;
  v57 = v25;
  v26 = v21;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_1_1();
  v36 = v35;
  v55 = a21;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v44 = v43(0, v41, v42);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  v47 = &v54 - v46;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5();
  v51 = v50 - v49;
  (*(v52 + 16))(v50 - v49, v26, v32);
  (*(v36 + 16))(v40, v34, v30);
  v56(v40, v30, v28);
  WitnessTable = swift_getWitnessTable();
  v55(v51, v47, v32, v44, v59, WitnessTable);
  OUTLINED_FUNCTION_38_0();
}

void sub_237D93C90()
{
  OUTLINED_FUNCTION_37_0();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, v3);
  (*(v9 + 16))(v13, v7, v2);
  v5(v17, v13, v3, v2, v1, v0);
  OUTLINED_FUNCTION_38_0();
}

uint64_t get_witness_table_18CreateMLComponents17TemporalEstimatorRzAA0D0Rd__11Transformer_5InputQYd__AD_6OutputRTzr__lAA08ComposedcD0VyxAA0d2ToC7AdaptorVyqd__GGAaBHPyHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  swift_getWitnessTable();
  type metadata accessor for ComposedTemporalEstimator();
  return OUTLINED_FUNCTION_0_55();
}

uint64_t sub_237D93E70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237D94038(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_55()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_53()
{
  *(v0 + 8) = sub_237D92F94;
  result = *(v1 + 144);
  *(v2 + 16) = *(v1 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_49()
{
  v1 = v0[13];
  v2 = v0[2];
  v0[3] = v2;
  v0[41] = v2;
  return v1 + 24;
}

uint64_t OUTLINED_FUNCTION_9_36()
{

  return swift_getWitnessTable();
}

uint64_t static AugmentationBuilder.buildPartialBlock<A>(first:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return _s18CreateMLComponents28EstimatorToSupervisedAdaptorVyACyxq_GxcfC_0(v7, a1, a2);
}

uint64_t static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23[0] = a1;
  v23[1] = a5;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RandomTransformerAdaptor();
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v23 - v20;
  (*(v11 + 16))(v14, a2, a4, v19);
  _s18CreateMLComponents28EstimatorToSupervisedAdaptorVyACyxq_GxcfC_0(v14, a4, v21);
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();
  sub_237DBFF44(v21, a3, v15, a6);
  return (*(v17 + 8))(v21, v15);
}

_BYTE *sub_237D946AC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_68()
{

  return swift_getWitnessTable();
}

void sub_237D947A0(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = a2;
  *(a3 + 8) = 0u;
  OUTLINED_FUNCTION_0_57(a3, 0);
}

void sub_237D947B0(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = -559038737;
    *(a4 + 4) = a1 + 1;
    *(a4 + 8) = a3;
    *(a4 + 16) = a2;
    OUTLINED_FUNCTION_0_57(a4, 0);
  }
}

void OUTLINED_FUNCTION_0_57(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 24) = a2;
  *(a1 + 40) = a2;
  *(a1 + 56) = 0;
}

uint64_t Downsampler.init(factor:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 1)
  {
    result = sub_237EF9740();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

double Downsampler.applied<A>(to:eventHandler:)@<D0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  (*(v14 + 16))(v12, v10);
  AnyTemporalSequence.init<A>(_:)(v12, *(a1 + 16), a2, a3, v18);
  *a4 = v13;
  v15 = v18[1];
  *(a4 + 8) = v18[0];
  *(a4 + 24) = v15;
  result = *&v19;
  v17 = v20;
  *(a4 + 40) = v19;
  *(a4 + 56) = v17;
  return result;
}

uint64_t sub_237D94990(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D94A30()
{
  sub_237EFA120();
  sub_237C55258();
  return sub_237EFA170();
}

uint64_t sub_237D94A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D94990(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D94ACC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_31();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237D94AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D94B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Downsampler.encode(to:)(void *a1)
{
  type metadata accessor for Downsampler.CodingKeys();
  OUTLINED_FUNCTION_1_69();
  v9[1] = swift_getWitnessTable();
  v2 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  sub_237EF9A50();
  return (*(v4 + 8))(v7, v2);
}

uint64_t Downsampler.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for Downsampler.CodingKeys();
  OUTLINED_FUNCTION_1_69();
  swift_getWitnessTable();
  v4 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v2)
  {
    v10 = v14;
    v11 = sub_237EF9950();
    (*(v6 + 8))(v9, v4);
    *v10 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D94E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8.n128_f64[0] = Downsampler.applied<A>(to:eventHandler:)(a7, a5, a6, a1);
  v9 = *(v7 + 8);

  return v9(v8);
}

uint64_t Downsampler.DownStreamSequence.count.getter()
{
  result = *(v0 + 40);
  if ((*(v0 + 48) & 1) == 0)
  {
    v2 = *v0;
    if (*v0)
    {
      if (result != 0x8000000000000000 || v2 != -1)
      {
        result /= v2;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double Downsampler.DownStreamSequence.makeAsyncIterator()@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for AnyTemporalSequence();
  (*(*(v4 - 8) + 16))(v6, v1 + 1, v4);
  return sub_237D94FEC(v3, v6, a1);
}

double sub_237D94FEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *a3 = a1;
  v5 = type metadata accessor for AnyTemporalSequence();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a3 + 8, a2, v5);
  AnyTemporalSequence.makeAsyncIterator()();
  (*(v6 + 8))(a2, v5);
  result = *&v8;
  *(a3 + 72) = v8;
  return result;
}

uint64_t sub_237D950D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4.n128_f64[0] = Downsampler.DownStreamSequence.makeAsyncIterator()(a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v2, a1, v4);
}

double sub_237D95134()
{
  *(v0 + 88) = 0;

  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t sub_237D95160(uint64_t result)
{
  v2 = v1[11];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *v1;
  if (!*v1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 != 0x8000000000000000 || v5 != -1)
  {
    v1[11] = v4 % v5;
    v8 = *result;
    v7 = *(result + 8);
    v10 = *(result + 16);
    v9 = *(result + 32);
    sub_237EF8260();

    v1[12] = v8;
    v1[13] = v7;
    *(v1 + 7) = v10;
    v1[16] = v9;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t Downsampler.DownStreamSequence.Iterator.next()()
{
  OUTLINED_FUNCTION_2_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = type metadata accessor for TemporalFeature();
  v1[7] = v4;
  v5 = sub_237EF90F0();
  v1[8] = v5;
  v1[9] = *(v5 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237D9532C, 0, 0);
}

uint64_t sub_237D9532C()
{
  OUTLINED_FUNCTION_5_54();

  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_7_43(v1);
  MEMORY[0x20] = v0;
  v2 = OUTLINED_FUNCTION_0_58();

  return AnyTemporalIterator.next()(v2);
}

uint64_t sub_237D953B8()
{
  OUTLINED_FUNCTION_2_0();
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v2 = v5;
  *(v5 + 112) = v0;

  if (v0)
  {
    v3 = sub_237D956DC;
  }

  else
  {
    v3 = sub_237D954D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237D954D0()
{
  v1 = v0[10];
  v2 = v0[7];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    v3 = 1;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v0[4], v3, 1, v0[7]);

    OUTLINED_FUNCTION_3_0();

    return v21();
  }

  v4 = v0[6];
  v5 = *(v0[11] + 32);
  v5(v0[12], v1, v2);
  v6 = *(v4 + 104);
  if (v6)
  {
    v7 = v0[12];
    v8 = *v7 == *(v4 + 96) && v6 == v7[1];
    if (!v8 && (sub_237EF9D40() & 1) == 0)
    {
      sub_237D95134();
    }
  }

  v9 = v0[6];
  v10 = v9[11];
  v11 = *v9;
  if (*v9)
  {
    if (v11 == -1)
    {
      v12 = v0[12];
LABEL_18:
      v19 = v0[7];
      v20 = v0[4];
      sub_237D95160(v12);
      v5(v20, v12, v19);
      v3 = 0;
      goto LABEL_19;
    }

    v10 %= v11;
  }

  v12 = v0[12];
  if (!v10)
  {
    goto LABEL_18;
  }

  v13 = v0[11];
  v14 = v0[7];
  sub_237D95160(v0[12]);
  (*(v13 + 8))(v12, v14);
  OUTLINED_FUNCTION_5_54();

  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_7_43(v15);
  MEMORY[0x20] = v0;
  v17 = OUTLINED_FUNCTION_0_58(v16, v16);

  return AnyTemporalIterator.next()(v17);
}

uint64_t sub_237D956DC()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D95760(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D957B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237CEF6D4;

  return Downsampler.DownStreamSequence.Iterator.next()();
}

uint64_t sub_237D95860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_237D95934;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_237D95934()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_237D95A30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D95A84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D95AC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_237D95B00(uint64_t result, int a2, int a3)
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

uint64_t sub_237D95B68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D95BAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_237D95BEC(uint64_t result, int a2, int a3)
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

_BYTE *sub_237D95C64(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_54()
{
  v1 = v0[6];
  result = *(v1 + 80);
  v0[2] = *(v1 + 72);
  v0[3] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_43(uint64_t a1)
{
  *(v1 + 104) = a1;

  return type metadata accessor for AnyTemporalIterator();
}

uint64_t rootMeanSquaredError<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_57();
  meanSquaredError<A, B, C>(_:_:)();
  OUTLINED_FUNCTION_23_27();
  return (*(v6 + 8))(v3, a3);
}

void maximumAbsoluteError<A, B, C>(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_5_55(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v30 = v12;
  v31 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  if (OUTLINED_FUNCTION_12_34(v14, v28))
  {
    OUTLINED_FUNCTION_14_36();
    sub_237EF8350();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_8_50();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_7_44();
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_10_38();
    *(v17 - 16) = sub_237D973B0;
    *(v17 - 8) = v18;
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_13_27(WitnessTable, v20, v21, v22, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v23);
    v24 = OUTLINED_FUNCTION_17_32();
    v25(v24);
    OUTLINED_FUNCTION_43_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_31();
    sub_237EF8830();

    OUTLINED_FUNCTION_6_43();
    if (v26)
    {
      OUTLINED_FUNCTION_14_36();
      sub_237EF8350();
      OUTLINED_FUNCTION_6_43();
      if (!v26)
      {
        (*(v30 + 8))(v1, v31);
      }
    }

    else
    {
      OUTLINED_FUNCTION_11_37();
      (*(v27 + 32))(v29, v1, v0);
    }
  }

  OUTLINED_FUNCTION_38_0();
}

void absoluteError<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_1_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = type metadata accessor for AnnotatedPrediction();
  AnnotatedPrediction.prediction.getter(v35, v31);
  AnnotatedPrediction.annotation.getter(v35, v28);
  sub_237EF9760();
  v36 = *(v25 + 8);
  v36(v28, v23);
  v36(v31, v23);
  sub_237EF9FD0();
  v36(v34, v23);
  OUTLINED_FUNCTION_38_0();
}

void maximumAbsoluteError<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v17 = v5;
  v16[2] = v3;
  v16[3] = v1;
  type metadata accessor for AnnotatedPrediction();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237C9339C();
  v17 = v14;
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF8830();

  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    (*(v10 + 8))(v13, v8);
    OUTLINED_FUNCTION_14_36();
    sub_237EF8350();
  }

  else
  {
    OUTLINED_FUNCTION_11_37();
    (*(v15 + 32))(v7, v13, v3);
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D96418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_57();
  sub_237EF9760();
  sub_237EF9FD0();
  return (*(v6 + 8))(v3, a3);
}

void meanAbsoluteError<A, B, C>(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_5_55(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v30 = v12;
  v31 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  if (OUTLINED_FUNCTION_12_34(v14, v28))
  {
    OUTLINED_FUNCTION_14_36();
    sub_237EF8350();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_8_50();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_7_44();
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_10_38();
    *(v17 - 16) = sub_237D96AFC;
    *(v17 - 8) = v18;
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_13_27(WitnessTable, v20, v21, v22, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v23);
    v24 = OUTLINED_FUNCTION_17_32();
    v25(v24);
    OUTLINED_FUNCTION_43_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_31();
    Sequence<>.mean()();

    OUTLINED_FUNCTION_6_43();
    if (v26)
    {
      OUTLINED_FUNCTION_14_36();
      sub_237EF8350();
      OUTLINED_FUNCTION_6_43();
      if (!v26)
      {
        (*(v30 + 8))(v1, v31);
      }
    }

    else
    {
      OUTLINED_FUNCTION_11_37();
      (*(v27 + 32))(v29, v1, v0);
    }
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D96748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_237EF9760();
  sub_237EF9760();
  sub_237EF8D30();
  v10 = *(v4 + 8);
  v10(v7, a3);
  return (v10)(v9, a3);
}

void meanSquaredError<A, B, C>(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v30 = v5;
  v31 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v28 = v12;
  v13 = *(v2 + 8);
  v14 = *(v0 + 8);
  v32 = v8;
  v33 = v6;
  v34 = v13;
  v35 = v14;
  v15 = sub_237EF9380();
  OUTLINED_FUNCTION_1();
  v29 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  if (sub_237EF8DD0())
  {
    sub_237EF8350();
  }

  else
  {
    v20 = sub_237EFA000();
    v28 = &v27;
    v21 = MEMORY[0x28223BE20](v20);
    *(&v27 - 6) = v11;
    *(&v27 - 5) = v9;
    v22 = v31;
    *(&v27 - 4) = v7;
    *(&v27 - 3) = v22;
    *(&v27 - 2) = v3;
    *(&v27 - 1) = v1;
    MEMORY[0x28223BE20](v21);
    *(&v27 - 8) = v11;
    *(&v27 - 7) = v9;
    *(&v27 - 6) = v7;
    *(&v27 - 5) = v22;
    *(&v27 - 4) = v3;
    *(&v27 - 3) = v1;
    *(&v27 - 2) = sub_237D96B50;
    *(&v27 - 1) = v23;
    WitnessTable = swift_getWitnessTable();
    v26 = sub_237C8FFEC(sub_237D973B4, (&v27 - 10), v15, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v25);
    (*(v29 + 8))(v19, v15);
    v32 = v26;
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    Collection<>.mean()();
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D96B60(uint64_t a1)
{
  v3 = *(v1 + 64);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_237D96BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v24 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  MEMORY[0x28223BE20](v14);
  v22 = v21 - v15;
  v16 = type metadata accessor for AnnotatedPrediction();
  AnnotatedPrediction.prediction.getter(v16, v13);
  AnnotatedPrediction.annotation.getter(v16, v10);
  v23 = *(*(a3 + 16) + 8);
  v21[1] = *(v23 + 8);
  sub_237EF9760();
  v17 = *(v6 + 8);
  v17(v10, a2);
  v17(v13, a2);
  AnnotatedPrediction.prediction.getter(v16, v10);
  v18 = v24;
  AnnotatedPrediction.annotation.getter(v16, v24);
  sub_237EF9760();
  v17(v18, a2);
  v17(v10, a2);
  v19 = v22;
  sub_237EF8D30();
  v17(v13, a2);
  return (v17)(v19, a2);
}

uint64_t meanSquaredError<A>(_:)()
{
  type metadata accessor for AnnotatedPrediction();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v0 = sub_237EF8EC0();
  if (v0)
  {
    return OUTLINED_FUNCTION_22_25();
  }

  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_21_27();
  sub_237C9339C();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_26();
  Collection<>.mean()();
}

uint64_t rootMeanSquaredError<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_57();
  meanSquaredError<A>(_:)();
  OUTLINED_FUNCTION_23_27();
  return (*(v5 + 8))(v2, a2);
}

void sub_237D97038()
{
  OUTLINED_FUNCTION_37_0();
  type metadata accessor for AnnotatedPrediction();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v0 = sub_237EF8EC0();
  if (v0)
  {
    OUTLINED_FUNCTION_22_25();
  }

  else
  {
    MEMORY[0x28223BE20](v0);
    OUTLINED_FUNCTION_21_27();
    sub_237C9339C();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_26();
    j___sSl18CreateMLComponentsSF7ElementRpzrlE4meanACyF();
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D9714C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a3;
  v22[3] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v22 - v17;
  v19 = type metadata accessor for AnnotatedPrediction();
  v22[0] = a1;
  AnnotatedPrediction.annotation.getter(v19, v12);
  AnnotatedPrediction.prediction.getter(v19, v9);
  v22[2] = *(a3 + 16);
  sub_237EF9760();
  v20 = *(v7 + 8);
  v20(v9, a2);
  v20(v12, a2);
  AnnotatedPrediction.annotation.getter(v19, v12);
  sub_237EF8330();
  v20(v12, a2);
  v20(v15, a2);
  sub_237EF9FD0();
  return (v20)(v18, a2);
}

uint64_t OUTLINED_FUNCTION_5_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 128) = a6;
  *(v8 - 160) = a2;
  *(v8 - 152) = a8;
  v10 = *(a7 + 8);
  v11 = *(a8 + 8);
  *(v8 - 112) = a4;
  *(v8 - 104) = a5;
  *(v8 - 96) = v10;
  *(v8 - 88) = v11;

  return sub_237EF9380();
}

uint64_t OUTLINED_FUNCTION_8_50()
{
  *(v1 - 184) = v0;

  return sub_237EFA000();
}

uint64_t OUTLINED_FUNCTION_12_34@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 136) = &a2 - a1;

  return sub_237EF8DD0();
}

uint64_t OUTLINED_FUNCTION_13_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_237C8FFEC(v8, v10, v11, v9, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_22_25()
{

  return sub_237EF8350();
}

uint64_t OUTLINED_FUNCTION_23_27()
{

  return sub_237EF8320();
}

void sub_237D9762C()
{
  type metadata accessor for Moment(319);
  if (v0 <= 0x3F)
  {
    sub_237D976B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237D976B0()
{
  if (!qword_27DEB2D58)
  {
    type metadata accessor for Moment(255);
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEB2D58);
    }
  }
}

void sub_237D97730()
{
  sub_237C86290();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_237D977AC(uint64_t a1, uint64_t a2)
{
  sub_237C6BDB8();
  v6 = v5;
  sub_237CD15CC();

  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
    v6 = sub_237EF6690();
  }

  OUTLINED_FUNCTION_0_59();
  sub_237D99A48(a2, v7);
  sub_237C9A114(a1, &qword_27DEAD2A0);
  return v6;
}

void sub_237D978B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a4;
  v7 = sub_237EF6820();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FullyConnectedNetwork();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  MEMORY[0x28223BE20](v14 - 8);
  sub_237D99B70(a2, &v17 - v15);
  sub_237D99AF0(a3, v13, type metadata accessor for FullyConnectedNetwork);
  (*(v8 + 16))(v10, a1, v7);
  v16 = v19;
  sub_237D97A88();
  if (v16)
  {
    *v18 = v16;
  }
}

void sub_237D97A88()
{
  OUTLINED_FUNCTION_13_4();
  v134 = v0;
  v2 = v1;
  v4 = v3;
  v148 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B8);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v130 = &v117 - v10;
  sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v139 = v12;
  v140 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v136 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26();
  v129 = v17 - v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v133 = v20;
  OUTLINED_FUNCTION_11_1();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v117 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v117 - v25;
  v27 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v143 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26();
  v131 = v30 - v31;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v132 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_16();
  v135 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_16();
  v142 = v37;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  v144 = &v117 - v39;
  v40 = *(type metadata accessor for AdamDenseLayer(0) + 20);
  v141 = v7;
  v41 = v7 + v40;
  v42 = type metadata accessor for Moment(0);
  v145 = v41;
  v43 = v41;
  v44 = v42;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v42);
  v45 = sub_237C624D0();
  if (!v45)
  {
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000002ALL, 0x8000000237EFBB40);
    v51 = sub_237EF6820();
    sub_237EF9670();
    v52 = v146;
    v53 = v147;
    sub_237C6514C();
    swift_allocError();
    *v54 = v52;
    v54[1] = v53;
    swift_willThrow();
    (*(*(v51 - 8) + 8))(v2, v51);
    OUTLINED_FUNCTION_0_59();
    v56 = v4;
LABEL_10:
    sub_237D99A48(v56, v55);
    sub_237C9A114(v148, &qword_27DEAD2A0);
    goto LABEL_11;
  }

  v46 = v45;
  v128 = v44;
  v137 = v4;
  v138 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  v48 = *(v47 + 64);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD300);
  sub_237EF6640();
  OUTLINED_FUNCTION_96(v26);
  if (v63)
  {
    v24 = v26;
    v50 = v137;
LABEL_9:
    sub_237C9A114(v24, &qword_27DEAD2C0);
    sub_237C6514C();
    v64 = swift_allocError();
    OUTLINED_FUNCTION_13_28(v64, v65);

    sub_237EF6820();
    OUTLINED_FUNCTION_3_11();
    (*(v66 + 8))(v138);
    OUTLINED_FUNCTION_0_59();
    v56 = v50;
    goto LABEL_10;
  }

  v125 = v48;
  v57 = v46;
  v58 = v143;
  v59 = *(v143 + 32);
  v60 = v26;
  v61 = v143 + 32;
  v59(v144, v60, v27);
  v62 = *(v47 + 68);
  v127 = v57;
  sub_237EF6640();
  OUTLINED_FUNCTION_96(v24);
  if (v63)
  {
    (*(v58 + 8))(v144, v27);
    v50 = v137;
    goto LABEL_9;
  }

  v119 = v62;
  v124 = v49;
  v123 = v61;
  v120 = v59;
  v59(v142, v24, v27);
  v68 = v58 + 16;
  v67 = *(v58 + 16);
  v69 = v135;
  v67(v135, v144, v27);
  v126 = v27;
  v70 = v136;
  sub_237EF6A30();
  sub_237EF6440();
  v72 = v139 + 8;
  v71 = *(v139 + 8);
  v73 = v71(v70, v140);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_8_51();
  *(v74 - 16) = v69;
  v75 = v134;
  sub_237EF7DE0();
  v134 = v75;
  v78 = *(v58 + 8);
  v77 = v58 + 8;
  v76 = v78;
  v78(v69, v126);
  v122 = v68;
  v121 = v67;
  v67(v69, v142, v126);
  sub_237EF6A30();
  sub_237EF6440();
  v79 = v70;
  v80 = v126;
  v139 = v72;
  v118 = v71;
  v81 = v71(v79, v140);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_8_51();
  *(v82 - 16) = v69;
  sub_237EF7DE0();
  v78(v69, v80);
  v84 = v137;
  v83 = v138;
  v85 = sub_237C62628();
  if (!v85)
  {

    sub_237EF6820();
    OUTLINED_FUNCTION_3_11();
    (*(v90 + 8))(v83);
    OUTLINED_FUNCTION_0_59();
    sub_237D99A48(v84, v91);
    sub_237C9A114(v148, &qword_27DEAD2A0);
    v76(v142, v80);
    v76(v144, v80);
    v92 = v145;
    sub_237C9A114(v145, &qword_27DEAD2B8);
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v128);
    goto LABEL_12;
  }

  v86 = v85;
  v143 = v77;
  v134 = v76;
  v87 = v144;
  v88 = v133;
  sub_237EF6640();
  OUTLINED_FUNCTION_96(v88);
  if (v63)
  {
    v96 = v88;
    v89 = v134;
  }

  else
  {
    v93 = v88;
    v94 = v132;
    v95 = v120;
    v120(v132, v93, v80);
    v133 = v86;
    v96 = v129;
    sub_237EF6640();
    OUTLINED_FUNCTION_96(v96);
    if (!v97)
    {
      v95(v131, v96, v80);
      v103 = v135;
      OUTLINED_FUNCTION_19_32();
      v104();
      v105 = v80;
      v106 = v136;
      sub_237EF6A30();
      sub_237EF6440();
      v107 = v118;
      v108 = v118(v106, v140);
      MEMORY[0x28223BE20](v108);
      OUTLINED_FUNCTION_8_51();
      *(v109 - 16) = v103;
      sub_237EF7DE0();
      v110 = v134;
      v134(v103, v105);
      OUTLINED_FUNCTION_19_32();
      v111();
      sub_237EF6A30();
      sub_237EF6440();
      v112 = v107(v106, v140);
      MEMORY[0x28223BE20](v112);
      OUTLINED_FUNCTION_8_51();
      *(v113 - 16) = v103;
      v114 = v130;
      sub_237EF7DE0();
      v110(v103, v105);

      sub_237EF6820();
      OUTLINED_FUNCTION_3_11();
      (*(v115 + 8))(v138);
      OUTLINED_FUNCTION_0_59();
      sub_237D99A48(v137, v116);
      sub_237C9A114(v148, &qword_27DEAD2A0);
      v110(v131, v105);
      v110(v132, v105);
      v110(v142, v105);
      v110(v144, v105);
      __swift_storeEnumTagSinglePayload(v114, 0, 1, v128);
      sub_237D999D8(v114, v145);
      goto LABEL_12;
    }

    v89 = v134;
    v134(v94, v80);
    v84 = v137;
  }

  sub_237C9A114(v96, &qword_27DEAD2C0);
  sub_237C6514C();
  v98 = swift_allocError();
  OUTLINED_FUNCTION_13_28(v98, v99);

  sub_237EF6820();
  OUTLINED_FUNCTION_3_11();
  (*(v100 + 8))(v138);
  OUTLINED_FUNCTION_0_59();
  sub_237D99A48(v84, v101);
  sub_237C9A114(v148, &qword_27DEAD2A0);
  v89(v142, v80);
  v89(v87, v80);
  OUTLINED_FUNCTION_2_62();
  sub_237D99A48(v141, v102);
LABEL_11:
  sub_237C9A114(v145, &qword_27DEAD2B8);
LABEL_12:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D986C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1885697139 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E656D6F6DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237D98788(char a1)
{
  if (a1)
  {
    return 0x73746E656D6F6DLL;
  }

  else
  {
    return 1885697139;
  }
}

void sub_237D987B8()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2D70);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = v11 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_237D997E8();
  sub_237EFA1B0();
  sub_237EF9A50();
  if (!v0)
  {
    v11[1] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2D80);
    sub_237D9983C(&qword_27DEB2D88, &qword_27DEB2D90);
    sub_237EF9A70();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D98968(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2D98);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_237D997E8();
  sub_237EFA190();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_237EF9950();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2D80);
    v11[15] = 1;
    sub_237D9983C(&qword_27DEB2DA0, &qword_27DEB2DA8);
    sub_237EF9970();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_237D98B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D986C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D98B94(uint64_t a1)
{
  v2 = sub_237D997E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D98BD0(uint64_t a1)
{
  v2 = sub_237D997E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D98C0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237D98968(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_237D98C54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2DC8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D99920();
  OUTLINED_FUNCTION_22_26();
  v12[15] = 0;
  type metadata accessor for Moment(0);
  OUTLINED_FUNCTION_6_44();
  sub_237D998D8(v9, v10);
  OUTLINED_FUNCTION_2_7();
  sub_237EF9A70();
  if (!v1)
  {
    type metadata accessor for AdamDenseLayer(0);
    v12[14] = 1;
    OUTLINED_FUNCTION_2_7();
    sub_237EF9A00();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_237D98DC8()
{
  OUTLINED_FUNCTION_13_4();
  v33 = v0;
  v2 = v1;
  v29 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B8);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Moment(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v31 = v11 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2DB0);
  OUTLINED_FUNCTION_1();
  v30 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_9_19();
  v15 = type metadata accessor for AdamDenseLayer(v14);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v21 = *(v20 + 28);
  __swift_storeEnumTagSinglePayload(v18 - v17 + v21, 1, 1, v8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237D99920();
  v22 = v33;
  sub_237EFA190();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_237C9A114(v19 + v21, &qword_27DEAD2B8);
  }

  else
  {
    OUTLINED_FUNCTION_6_44();
    sub_237D998D8(v23, v24);
    OUTLINED_FUNCTION_16_33();
    sub_237EF9970();
    sub_237D99974(v31, v19);
    v33 = v7;
    v25 = v32;
    OUTLINED_FUNCTION_16_33();
    sub_237EF9900();
    v26 = OUTLINED_FUNCTION_18_29();
    v27(v26, v25);
    sub_237D999D8(v33, v19 + v21);
    sub_237D99AF0(v19, v29, type metadata accessor for AdamDenseLayer);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_237D99A48(v19, type metadata accessor for AdamDenseLayer);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D990C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237D99188(char a1)
{
  if (a1)
  {
    return 0x646E6F636573;
  }

  else
  {
    return 0x7473726966;
  }
}

uint64_t sub_237D991B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2DE8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D99A9C();
  OUTLINED_FUNCTION_22_26();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  sub_237C86400(&qword_27DEADE78);
  OUTLINED_FUNCTION_2_7();
  sub_237EF9A70();
  if (!v1)
  {
    type metadata accessor for Moment(0);
    v10[14] = 1;
    OUTLINED_FUNCTION_2_7();
    sub_237EF9A70();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_237D9933C()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v29 = v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v30 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v33 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2DD8);
  OUTLINED_FUNCTION_1();
  v31 = v11;
  v32 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_9_19();
  v15 = type metadata accessor for Moment(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237D99A9C();
  sub_237EFA190();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v27 = v15;
    v28 = v19;
    v20 = v30;
    sub_237C86400(&qword_27DEADE88);
    v21 = v31;
    sub_237EF9970();
    v22 = v33;
    v33 = *(v20 + 32);
    (v33)(v28, v22, v34);
    sub_237EF9970();
    v23 = OUTLINED_FUNCTION_18_29();
    v24(v23, v21);
    v25 = v28;
    (v33)(v28 + *(v27 + 20), v8, v34);
    sub_237D99AF0(v25, v29, type metadata accessor for Moment);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_2_62();
    sub_237D99A48(v25, v26);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D99668(uint64_t a1)
{
  v2 = sub_237D99920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D996A4(uint64_t a1)
{
  v2 = sub_237D99920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D99718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D990C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D99740(uint64_t a1)
{
  v2 = sub_237D99A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D9977C(uint64_t a1)
{
  v2 = sub_237D99A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_237D997E8()
{
  result = qword_27DEB2D78;
  if (!qword_27DEB2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2D78);
  }

  return result;
}

uint64_t sub_237D9983C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2D80);
    sub_237D998D8(a2, type metadata accessor for AdamDenseLayer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237D998D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_237D99920()
{
  result = qword_27DEB2DB8;
  if (!qword_27DEB2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2DB8);
  }

  return result;
}

uint64_t sub_237D99974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Moment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D999D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D99A48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3_11();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_237D99A9C()
{
  result = qword_27DEB2DE0;
  if (!qword_27DEB2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2DE0);
  }

  return result;
}

uint64_t sub_237D99AF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237D99B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_237D99C00(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D99CE0()
{
  result = qword_27DEB2DF0;
  if (!qword_27DEB2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2DF0);
  }

  return result;
}

unint64_t sub_237D99D38()
{
  result = qword_27DEB2DF8;
  if (!qword_27DEB2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2DF8);
  }

  return result;
}

unint64_t sub_237D99D90()
{
  result = qword_27DEB2E00;
  if (!qword_27DEB2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2E00);
  }

  return result;
}

unint64_t sub_237D99DE8()
{
  result = qword_27DEB2E08;
  if (!qword_27DEB2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2E08);
  }

  return result;
}

unint64_t sub_237D99E40()
{
  result = qword_27DEB2E10;
  if (!qword_27DEB2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2E10);
  }

  return result;
}

unint64_t sub_237D99E98()
{
  result = qword_27DEB2E18;
  if (!qword_27DEB2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2E18);
  }

  return result;
}

unint64_t sub_237D99EF0()
{
  result = qword_27DEB2E20;
  if (!qword_27DEB2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2E20);
  }

  return result;
}

unint64_t sub_237D99F48()
{
  result = qword_27DEB2E28;
  if (!qword_27DEB2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2E28);
  }

  return result;
}

unint64_t sub_237D99FA0()
{
  result = qword_27DEB2E30;
  if (!qword_27DEB2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2E30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_28(uint64_t a1, void *a2)
{
  *a2 = 0xD000000000000025;
  a2[1] = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_22_26()
{

  return sub_237EFA1B0();
}

uint64_t sub_237D9A0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF5EF0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(a3, a1, v6, v8);
  v12 = type metadata accessor for AudioReader.AsyncBuffers(0);
  *(a3 + *(v12 + 24)) = a2;
  (v11)(v10, a1, v6);
  v13 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v14 = v25[1];
  v15 = sub_237D0B204(v10);
  if (v14)
  {
    v16 = *(v7 + 8);
    v16(a1, v6);
    return (v16)(a3, v6);
  }

  v18 = v15;
  v19 = [v15 length];

  result = (*(v7 + 8))(a1, v6);
  v20 = &v19[a2];
  if (__OFADD__(v19, a2))
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v22 == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_15;
  }

  v24 = a3 + *(v12 + 20);
  *v24 = v22 / a2;
  *(v24 + 8) = 0;
  return result;
}

uint64_t AudioReader.AsyncBuffers.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

int *AudioReader.AsyncBuffers.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(a1, v1);
  v4 = *(v1 + *(type metadata accessor for AudioReader.AsyncBuffers(0) + 24));
  result = type metadata accessor for AudioReader.AsyncBuffers.Iterator(0);
  *(a1 + result[6]) = 0;
  *(a1 + result[7]) = 0;
  *(a1 + result[8]) = 0;
  *(a1 + result[5]) = v4;
  return result;
}

uint64_t sub_237D9A430@<X0>(uint64_t a1@<X8>)
{
  AudioReader.AsyncBuffers.makeAsyncIterator()(a1);

  return sub_237D0C678(v1);
}

uint64_t AudioReader.AsyncBuffers.Iterator.next()()
{
  OUTLINED_FUNCTION_2_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_237EF5EF0();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237D9A524, 0, 0);
}

uint64_t sub_237D9A524()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for AudioReader.AsyncBuffers.Iterator(0);
  *(v0 + 64) = v2;
  v3 = *(v2 + 32);
  *(v0 + 112) = v3;
  if ((*(v1 + v3) & 1) == 0)
  {
    v6 = *(v2 + 24);
    *(v0 + 116) = v6;
    v7 = *(v1 + v6);
    if (!v7)
    {
      v11 = *(v0 + 56);
      (*(*(v0 + 40) + 16))(v11, v1, *(v0 + 32));
      v12 = objc_allocWithZone(MEMORY[0x277CB8398]);
      v7 = sub_237D0B204(v11);
      *(v1 + v6) = v7;
    }

    *(v0 + 72) = v7;
    v8 = sub_237D9A9B0();
    *(v0 + 80) = v8;
    *(v0 + 88) = 0;
    if (qword_27DEAD0B0 == -1)
    {
      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = swift_once();
      if (v7)
      {
LABEL_7:
        v9 = qword_27DEE2430;
        *(v0 + 96) = qword_27DEE2430;
        v8 = sub_237D9A6E4;
        v10 = 0;

        return MEMORY[0x2822009F8](v8, v9, v10);
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  v4 = *(v0 + 16);
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_237D9A6E4()
{
  v1 = *(v0 + 88);
  sub_237D9ABEC(*(v0 + 72), *(v0 + 80));
  *(v0 + 104) = v1;
  if (v1)
  {
    v2 = sub_237D9A944;
  }

  else
  {
    v2 = sub_237D9A770;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_237D9A770()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_237EF5DF0();
  v7 = sub_237EF5EC0();
  v9 = v8;
  (*(v4 + 8))(v3, v6);
  v10 = *(v2 + 28);
  v11 = *(v5 + v10);
  v12 = [v1 frameLength];
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 < v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = [*(v0 + 72) processingFormat];
  [v14 sampleRate];
  v16 = v15;
  v17 = v15;

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = [*(v0 + 80) frameLength];
  v19 = v11 + v18;
  if (__OFADD__(v11, v18))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v20 = *(v0 + 72);
  *(v5 + v10) = v19;
  if (v19 >= [v20 length])
  {
    v22 = *(v0 + 112);
    v21 = *(v0 + 116);
    v23 = *(v0 + 24);

    *(v23 + v22) = 1;
    *(v23 + v21) = 0;
  }

  v24 = *(v0 + 80);
  v25 = *(v0 + 16);
  *v25 = v7;
  v25[1] = v9;
  v25[2] = v11;
  v25[3] = v13;
  v25[4] = v16;
  v25[5] = v24;

  OUTLINED_FUNCTION_3_0();

  v26();
}

uint64_t sub_237D9A944()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

id sub_237D9A9B0()
{
  v1 = v0;
  v2 = type metadata accessor for AudioReader.AsyncBuffers.Iterator(0);
  result = *(v1 + *(v2 + 24));
  if (!result)
  {
    goto LABEL_9;
  }

  result = [result processingFormat];
  v4 = *(v1 + *(v2 + 20));
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v4))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:result frameCapacity:v4];
  if (!v6)
  {
    type metadata accessor for DatasetError();
    sub_237D9B020(&qword_27DEAFA00, type metadata accessor for DatasetError);
    swift_allocError();
    v8 = v7;
    v9 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA08) + 48));
    v10 = sub_237EF5EF0();
    OUTLINED_FUNCTION_4();
    (*(v11 + 16))(v8, v1, v10);
    sub_237EF9330();

    sub_237D9B020(&qword_280C8E568, MEMORY[0x277CC9260]);
    v12 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v12);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    *v9 = 0xD000000000000023;
    v9[1] = 0x8000000237EFF260;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v6;
}

id sub_237D9ABEC(void *a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([a1 readIntoBuffer:a2 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  sub_237EF5DC0();

  return swift_willThrow();
}

uint64_t sub_237D9AC94()
{
  OUTLINED_FUNCTION_2_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C66428;

  return AudioReader.AsyncBuffers.Iterator.next()();
}

uint64_t sub_237D9AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_237D9ADF4;

  return (sub_237DB4AB0)(a1, a2, a3);
}

uint64_t sub_237D9ADF4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_237D9AF14()
{
  type metadata accessor for AudioIOActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27DEE2430 = v0;
  return result;
}

uint64_t sub_237D9AF50()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_237D9AF80(uint64_t a1)
{
  result = sub_237D9B020(&qword_27DEB2E38, type metadata accessor for AudioReader.AsyncBuffers);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D9B020(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_237D9B090()
{
  sub_237EF5EF0();
  if (v0 <= 0x3F)
  {
    sub_237D130D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237D9B144()
{
  sub_237EF5EF0();
  if (v0 <= 0x3F)
  {
    sub_237D9B1E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237D9B1E0()
{
  if (!qword_27DEB2E68)
  {
    sub_237D9B238();
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEB2E68);
    }
  }
}

unint64_t sub_237D9B238()
{
  result = qword_27DEB2E70;
  if (!qword_27DEB2E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEB2E70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_63()
{

  return sub_237EF5EF0();
}

uint64_t dispatch thunk of RandomTransformer.applied<A>(to:generator:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 24) + **(a9 + 24));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_237C5FFA4;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t Sequence.randomSplit<A, B>(by:seed:)(uint64_t result, char a2)
{
  if (a2)
  {
    v10 = OUTLINED_FUNCTION_4_59();

    return Sequence.randomSplit<A, B, C>(by:using:)(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237E43988(result, v21);
    sub_237D9BE30();
    v11 = OUTLINED_FUNCTION_4_59();
    v20 = Sequence.randomSplit<A, B, C>(by:using:)(v12, v13, v14, v15, v16, v17, v18, v19, v11);
    memcpy(__dst, v21, sizeof(__dst));
    sub_237D9BE84(__dst);
    return v20;
  }

  return result;
}

uint64_t Sequence.randomSplit<A, B, C>(by:using:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v10 = v9;
  v75 = a1;
  v74 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_1_3();
  v69 = v19;
  v58 = *(v20 - 8);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_3();
  v77 = v22;
  v23 = sub_237EF90F0();
  MEMORY[0x28223BE20](v23 - 8);
  v76 = &v57 - v24;
  if (a9 > 0.0 && a9 < 1.0)
  {
    v26 = type metadata accessor for AnnotatedFeature();
    v87 = sub_237EF8110();
    v79 = v26;
    v86 = sub_237EF8110();
    MEMORY[0x28223BE20](v86);
    *(&v57 - 8) = a2;
    *(&v57 - 7) = a3;
    v71 = a3;
    *(&v57 - 6) = a4;
    *(&v57 - 5) = a5;
    *(&v57 - 4) = a6;
    *(&v57 - 3) = a7;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v57 - 6) = a2;
    *(&v57 - 5) = a5;
    *(&v57 - 4) = a6;
    *(&v57 - 3) = a7;
    v55 = a8;
    v56 = v28;
    v70 = a2;
    v72 = a6;
    v30 = sub_237C8FFEC(sub_237D9C1CC, (&v57 - 8), a2, a4, MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], v29);
    v78 = 0;

    v88 = v30;
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    v31 = sub_237EF8D00();
    v32 = v31;
    if ((v31 & 0xC000000000000001) != 0)
    {
      sub_237EF92A0();
      sub_237EF8CC0();
      v32 = v88;
      v33 = v89;
      v34 = v90;
      v73 = v91;
      v35 = v92;
    }

    else
    {
      v73 = 0;
      v36 = -1 << *(v31 + 32);
      v33 = v31 + 56;
      v34 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v35 = v38 & *(v31 + 56);
    }

    v39 = v76;
    v80 = 0;
    v40 = (v34 + 64) >> 6;
    v57 = v58 + 16;
    v68 = (v58 + 32);
    v67 = (v74 + 16);
    v60 = (v58 + 8);
    v63 = v32;
    v62 = v33;
    v74 = v34;
    v61 = v40;
    v66 = a5;
    v65 = v10;
    v64 = a7;
    v59 = a8;
    if (v32 < 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (v35)
    {
      v41 = v73;
LABEL_22:
      v43 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      (*(v58 + 16))(v39, *(v32 + 48) + *(v58 + 72) * (v43 | (v41 << 6)), a4);
      while (1)
      {
        __swift_storeEnumTagSinglePayload(v39, 0, 1, a4);
        v44 = v77;
        (*v68)(v77, v39, a4);
        v45 = v70;
        v46 = (*v67)(v69, v10, v70);
        MEMORY[0x28223BE20](v46);
        v47 = v71;
        *(&v57 - 8) = v45;
        *(&v57 - 7) = v47;
        *(&v57 - 6) = a4;
        *(&v57 - 5) = a5;
        *(&v57 - 4) = v72;
        *(&v57 - 3) = a7;
        v55 = a8;
        v56 = v44;
        v48 = v78;
        v49 = sub_237EF87E0();
        v78 = v48;
        *&v83 = v49;
        sub_237EF8A60();
        OUTLINED_FUNCTION_1_2();
        swift_getWitnessTable();
        v50 = sub_237EF8820();

        v51 = rint(sub_237EF8A00() * a9 + v80);
        if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v51 <= -9.22337204e18)
        {
          goto LABEL_34;
        }

        if (v51 >= 9.22337204e18)
        {
          goto LABEL_35;
        }

        v52 = v51 - v80;
        if (__OFSUB__(v51, v80))
        {
          goto LABEL_36;
        }

        v85 = v50;
        *&v81 = v51 - v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2E80);
        OUTLINED_FUNCTION_3_62();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_2_64();
        sub_237C96710(&qword_27DEB2E88, &qword_27DEB2E80);
        OUTLINED_FUNCTION_6_45();
        sub_237EF8490();
        v81 = v83;
        v82 = v84;
        sub_237EF9240();
        swift_getWitnessTable();
        sub_237EF8A10();
        v85 = v50;
        *&v81 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
        OUTLINED_FUNCTION_1_70();
        sub_237C96710(qword_27DEB1518, &qword_27DEAF7F8);
        OUTLINED_FUNCTION_6_45();
        sub_237EF8490();

        v81 = v83;
        v82 = v84;
        sub_237EF8A10();
        if (__OFADD__(v80, 1))
        {
          goto LABEL_37;
        }

        ++v80;
        (*v60)(v77, a4);
        a8 = v59;
        a5 = v66;
        v10 = v65;
        a7 = v64;
        v39 = v76;
        v32 = v63;
        v33 = v62;
        v40 = v61;
        if ((v63 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

LABEL_15:
        if (!sub_237EF92B0())
        {
          goto LABEL_30;
        }

        sub_237EF9D10();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v42 = v73;
      while (1)
      {
        v41 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v41 >= v40)
        {
LABEL_30:
          __swift_storeEnumTagSinglePayload(v39, 1, 1, a4);
          sub_237C9FE9C();
          *&v83 = v87;
          sub_237EF8A60();
          OUTLINED_FUNCTION_1_2();
          swift_getWitnessTable();
          v53 = OUTLINED_FUNCTION_7_45();

          *&v83 = v86;
          OUTLINED_FUNCTION_7_45();

          return v53;
        }

        v35 = *(v33 + 8 * v41);
        ++v42;
        if (v35)
        {
          v73 = v41;
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  LODWORD(v56) = 0;
  v55 = 56;
  result = OUTLINED_FUNCTION_5_56();
  __break(1u);
  return result;
}

unint64_t sub_237D9BE30()
{
  result = qword_27DEB2E78;
  if (!qword_27DEB2E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2E78);
  }

  return result;
}

uint64_t Sequence.randomSplit<A>(by:seed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    result = OUTLINED_FUNCTION_9_37(__dst);
    v4 = __dst[0];
    v5 = __dst[1];
    v6 = __dst[2];
    v7 = __dst[3];
LABEL_5:
    *a3 = v4;
    a3[1] = v5;
    a3[2] = v6;
    a3[3] = v7;
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_237E43988(result, __src);
    sub_237D9BE30();
    OUTLINED_FUNCTION_9_37(__dst);
    v10 = __dst[1];
    v11 = __dst[0];
    v8 = __dst[3];
    v9 = __dst[2];
    memcpy(__dst, __src, 0x78uLL);
    result = sub_237D9BE84(__dst);
    v7 = v8;
    v6 = v9;
    v5 = v10;
    v4 = v11;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t Sequence.randomSplit<A, B>(by:using:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0 || a2 >= 1.0)
  {
    goto LABEL_13;
  }

  sub_237EF8820();
  v5 = round(sub_237EF8A00() * a2);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v5 > -9.22337204e18)
  {
    if (v5 < 9.22337204e18)
    {
      *&v9 = v5;
      sub_237EF8A60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2E80);
      OUTLINED_FUNCTION_3_62();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_2_64();
      sub_237C96710(v6, &qword_27DEB2E80);
      sub_237EF8490();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
      OUTLINED_FUNCTION_1_70();
      sub_237C96710(v7, &qword_27DEAF7F8);
      sub_237EF8490();

      *a1 = v11;
      *(a1 + 16) = v12;
      *(a1 + 24) = v13;
      *(a1 + 32) = v9;
      *(a1 + 48) = v10;
      return result;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  result = OUTLINED_FUNCTION_5_56();
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_56()
{

  return sub_237EF9740();
}

uint64_t OUTLINED_FUNCTION_7_45()
{

  return sub_237EF8820();
}

uint64_t OUTLINED_FUNCTION_9_37@<X0>(uint64_t a1@<X8>)
{

  return Sequence.randomSplit<A, B>(by:using:)(a1, v2);
}

uint64_t sub_237D9C390(uint64_t a1, void *a2, unint64_t a3, int64_t a4, uint64_t a5, int a6)
{
  v8 = v6;
  v157 = a6;
  v152 = a5;
  v148 = a4;
  v143 = a3;
  v142 = a2;
  v168 = *MEMORY[0x277D85DE8];
  v10 = sub_237EF7DB0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440);
  OUTLINED_FUNCTION_1();
  v137 = v16;
  MEMORY[0x28223BE20](v17);
  v141 = &v126 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2E90);
  MEMORY[0x28223BE20](v19 - 8);
  v156 = &v126 - v20;
  v149 = sub_237EF7D80();
  OUTLINED_FUNCTION_1();
  v140 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v131 = v23;
  MEMORY[0x28223BE20](v24);
  v155 = &v126 - v25;
  MEMORY[0x28223BE20](v26);
  v153 = &v126 - v27;
  v28 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v164 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_2();
  v144 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v126 - v33;
  v139 = a1;
  v35 = sub_237EF5E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2E98);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_237F03530;
  v37 = *MEMORY[0x277CBE8A0];
  *(v36 + 32) = *MEMORY[0x277CBE8A0];
  v166 = 0;
  v38 = v37;
  v162 = v8;
  v39 = sub_237DAFF64(v35, v36, 5, &v166, v8);

  v40 = v166;
  if (!v39)
  {
    v88 = v166;
    sub_237EF5DC0();

    swift_willThrow();
    return v150;
  }

  v130 = v15;
  v128 = v12;
  v129 = v10;
  v151 = v7;
  v41 = sub_237EF8910();
  v42 = v40;

  v161 = *(v41 + 16);
  if (v161)
  {
    v43 = v28;
    OUTLINED_FUNCTION_5_57();
    v45 = 0;
    v160 = v44 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
    v163 = (v164 + 8);
    v147 = (v140 + 32);
    v146 = v140 + 8;
    v133 = v148 + 1;
    v46 = __OFADD__(v148, 1);
    v134 = v46;
    v150 = MEMORY[0x277D84F90];
    v47 = v149;
    v135 = v28;
    v132 = v34;
    v154 = v164 + 16;
    v159 = v44;
    while (1)
    {
      if (v45 >= *(v44 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
      }

      v48 = *(v164 + 16);
      v48(v34, v160 + *(v164 + 72) * v45, v43);
      sub_237EF5EC0();
      v49 = sub_237EF8560();

      v50 = [v162 isReadableFileAtPath_];

      if (v50)
      {
        sub_237EF5E10();
        sub_237EF7D60();
        v51 = v156;
        sub_237EF7D50();
        if (__swift_getEnumTagSinglePayload(v51, 1, v47) == 1)
        {
          v52 = OUTLINED_FUNCTION_0_60();
          v53(v52);
          sub_237D9D628(v51);
          goto LABEL_24;
        }

        v57 = v153;
        (*v147)(v153, v51, v47);
        if ((sub_237EF7D70() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_63();
          v81(v57, v47);
          v82 = OUTLINED_FUNCTION_0_60();
          v83(v82);
LABEL_24:
          v44 = v159;
          v56 = __OFADD__(v158++, 1);
          if (v56)
          {
            goto LABEL_56;
          }

          goto LABEL_25;
        }

        v136 = sub_237EF5E40();
        v58 = v144;
        sub_237EF5E60();
        v59 = sub_237EF5E40();
        v61 = v60;
        v62 = *v163;
        v63 = (*v163)(v58, v43);
        if (v134)
        {
          goto LABEL_57;
        }

        v166 = v142;
        v167 = v143;
        MEMORY[0x28223BE20](v63);
        *(&v126 - 2) = &v166;
        v64 = v151;
        v65 = sub_237D9D244(v133, 1, sub_237D832B4, (&v126 - 4), v59, v61);
        v151 = v64;
        v66 = *(v65 + 16);
        if (v66 <= v148)
        {
          v84 = v62;

          v47 = v149;
          if ((v157 & 1) == 0)
          {

            v164 = type metadata accessor for DatasetError();
            OUTLINED_FUNCTION_2_65();
            sub_237D9D5E0(v114, v115);
            v151 = OUTLINED_FUNCTION_7_46();
            v117 = v116;
            v118 = v132;
            v48(v116, v132, v135);
            v166 = 0;
            v167 = 0xE000000000000000;
            sub_237EF9330();
            MEMORY[0x2383E0710](0xD000000000000019, 0x8000000237EFF2F0);
            v165 = v66;
            v119 = sub_237EF9AB0();
            MEMORY[0x2383E0710](v119);

            MEMORY[0x2383E0710](32, 0xE100000000000000);
            if (v66 <= 1)
            {
              v120 = 0x746E656D656C65;
            }

            else
            {
              v120 = 0x73746E656D656C65;
            }

            if (v66 <= 1)
            {
              v121 = 0xE700000000000000;
            }

            else
            {
              v121 = 0xE800000000000000;
            }

            v122 = &v117[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA08) + 48)];
            MEMORY[0x2383E0710](v120, v121);

            MEMORY[0x2383E0710](0xD000000000000020, 0x8000000237EFF310);
            v165 = v148;
            v123 = sub_237EF9AB0();
            MEMORY[0x2383E0710](v123);

            v124 = v167;
            *v122 = v166;
            *(v122 + 1) = v124;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            OUTLINED_FUNCTION_3_63();
            v125(v153, v149);
            v84(v118, v135);
            return v150;
          }

          OUTLINED_FUNCTION_3_63();
          v85(v153, v47);
          v34 = v132;
          v43 = v135;
          v84(v132, v135);
          v56 = __OFADD__(v145++, 1);
          if (v56)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v47 = v149;
          if (v148 < 0)
          {
            goto LABEL_58;
          }

          v127 = v62;
          v67 = (v65 + 32 * v148);
          v68 = v67[4];
          v69 = v67[5];
          v71 = v67[6];
          v70 = v67[7];
          sub_237EF8260();

          v72 = MEMORY[0x2383E06D0](v68, v69, v71, v70);
          v74 = v73;

          v75 = v141;
          sub_237EF5E70();

          v76 = (v75 + *(v138 + 36));
          *v76 = v72;
          v76[1] = v74;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237D0C70C(0, *(v150 + 16) + 1, 1, v150);
            v150 = v86;
          }

          v43 = v135;
          v34 = v132;
          v78 = *(v150 + 16);
          v77 = *(v150 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_237D0C70C(v77 > 1, v78 + 1, 1, v150);
            v150 = v87;
          }

          OUTLINED_FUNCTION_3_63();
          v79();
          v127(v34, v43);
          v80 = v150;
          *(v150 + 16) = v78 + 1;
          sub_237D9D690(v141, v80 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v78);
        }
      }

      else
      {
        if ((v157 & 1) == 0)
        {

          type metadata accessor for DatasetError();
          OUTLINED_FUNCTION_2_65();
          sub_237D9D5E0(v108, v109);
          OUTLINED_FUNCTION_7_46();
          v48(v110, v34, v43);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v111 = OUTLINED_FUNCTION_0_60();
          v112(v111);
          return v150;
        }

        v54 = OUTLINED_FUNCTION_0_60();
        v55(v54);
        v56 = __OFADD__(v12++, 1);
        if (v56)
        {
          goto LABEL_55;
        }
      }

      v44 = v159;
LABEL_25:
      if (v161 == ++v45)
      {
        goto LABEL_32;
      }
    }
  }

  OUTLINED_FUNCTION_5_57();
  v150 = MEMORY[0x277D84F90];
  v47 = v149;
LABEL_32:

  v89 = v130;
  sub_237EF7DA0();
  v90 = v140;
  if (v12 >= 1)
  {
    v91 = sub_237EF7D90();
    v92 = sub_237EF8F90();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 134349056;
      *(v93 + 4) = v12;
      _os_log_impl(&dword_237C51000, v91, v92, "Skipped %{public}ld files since they were not readable.", v93, 0xCu);
      OUTLINED_FUNCTION_4_60();
    }
  }

  if (v158 >= 1)
  {
    v94 = v131;
    (*(v90 + 16))(v131, v152, v47);
    v95 = sub_237EF7D90();
    v96 = sub_237EF8F90();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v166 = v98;
      *v97 = 134349314;
      *(v97 + 4) = v158;
      *(v97 + 12) = 2082;
      sub_237D9D5E0(qword_27DEB2EA0, MEMORY[0x277D85578]);
      v99 = sub_237EF9AB0();
      v100 = v94;
      v102 = v101;
      (*(v90 + 8))(v100, v47);
      v103 = sub_237DAFA64(v99, v102, &v166);
      v89 = v130;

      *(v97 + 14) = v103;
      _os_log_impl(&dword_237C51000, v95, v96, "Skipped %{public}ld files since they do not conform to type %{public}s.", v97, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x2383E2DF0](v98, -1, -1);
      OUTLINED_FUNCTION_4_60();
    }

    else
    {

      (*(v90 + 8))(v94, v47);
    }
  }

  v104 = v145;
  if (v145 >= 1)
  {
    v105 = sub_237EF7D90();
    v106 = sub_237EF8F90();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 134349056;
      *(v107 + 4) = v104;
      _os_log_impl(&dword_237C51000, v105, v106, "Skipped %{public}ld files since they do not have the correct name format.", v107, 0xCu);
      OUTLINED_FUNCTION_4_60();
    }
  }

  (*(v128 + 8))(v89, v129);
  return v150;
}