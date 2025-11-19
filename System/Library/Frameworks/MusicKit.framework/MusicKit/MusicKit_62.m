uint64_t MusicPersonalRecommendation.init<A>(_:configuration:sharedRelatedItemStore:additionalQueryItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v195 = a6;
  v204 = a5;
  v205 = a4;
  v200 = a7;
  v201 = a3;
  v9 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_3_120(v15, v187);
  MEMORY[0x28223BE20](v16, v17);
  v197 = &v187 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v187 - v21;
  sub_21733C5F0(a1, v226);
  v23 = v226[5];
  v24 = v226[2];
  v25 = v226[3];
  sub_217751DE8();
  sub_217751DE8();
  sub_2176E3E18(v23, v24, v25, v214);
  v198 = LOBYTE(v214[0]);
  if (v231 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v230;
  }

  if (v231 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v231;
  }

  *&v214[0] = v26;
  *(&v214[0] + 1) = v27;
  sub_2171FB568(v230, v231);
  v242.value.rawValue._countAndFlagsBits = v214;
  MusicPersonalRecommendation._DisplayKind.init(_:)(v242);
  v199 = v217;
  v225 = MEMORY[0x277D84F90];
  if (v238)
  {
    sub_2176DD510(v238, &v225);
  }

  sub_217284868();
  v206 = a1;
  v202 = v22;
  v203 = a2;
  v28 = v205;
  if (v216 == 1)
  {
    sub_2171F0738(v215, &qword_27CB244B0, &unk_21776DB80);
  }

  else
  {
    sub_217284868();
    sub_21728373C(v215);
    if (*&v214[1])
    {
      v30 = *(&v214[0] + 1);
      v29 = *&v214[0];
      OUTLINED_FUNCTION_69_22();
      sub_2176DE128();
      v196 = 0;
      v193 = *(&v214[1] + 1);
      v194 = v31;
      v32 = *(&v214[2] + 1);
      v33 = *&v214[2];
      v34 = *(&v214[3] + 1);
      v35 = *&v214[3];
      v36 = *&v214[4];
      OUTLINED_FUNCTION_97_14();
      v217 = __PAIR128__(v30, v29);
      v28 = v205;
      *&v218 = v194;
      *(&v218 + 1) = v193;
      v219 = __PAIR128__(v32, v33);
      v9 = v196;
      v220 = __PAIR128__(v34, v35);
      *&v221 = v36;
      v224 = v214[7];
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v22 = v202;
      sub_217751DE8();
      sub_2171F0738(v214, &qword_27CB244C0, &qword_21775D9C0);
      a2 = v203;
      v37 = v204;
      goto LABEL_15;
    }

    sub_2171F0738(v214, &qword_27CB244B8, &unk_217758990);
    a2 = v203;
  }

  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v37 = v204;
LABEL_15:
  v213 = v28;
  memcpy(v214, v206 + 44, sizeof(v214));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v214) == 1)
  {
    v38 = v9;
    sub_217751DE8();
    v39 = v28;
  }

  else
  {
    v38 = v9;
    if (*(&v214[22] + 1))
    {
      sub_217751DE8();
      v40 = sub_217751DE8();
      sub_21754383C(v40);
      v39 = v213;
    }

    else
    {
      sub_217751DE8();
      v39 = v28;
    }
  }

  v41 = v225;
  v42 = *(v225 + 16);
  v43 = sub_2173C2FA0(0, v42, v225);
  v196 = v39;
  if (v43 != 1)
  {
    sub_217284868();
    if (!v216)
    {

      sub_2171F0738(v215, &qword_27CB25938, &unk_21775D9B0);
      sub_2174AA410();
      v38 = v37;
      v37 = v206;
LABEL_51:
      v74 = 3;
LABEL_52:
      LODWORD(v195) = v74;
      goto LABEL_56;
    }

    sub_217284868();
    v38 = v37;
    if (v211[2])
    {
      v46 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
      v48 = OUTLINED_FUNCTION_90_18();
      v49 = v195;
      sub_2174BE7E4(v48, a2, v37, v195, v50);

      OUTLINED_FUNCTION_36();
      sub_2171F0738(v51, v52, v53);
    }

    else
    {

      sub_2171F0738(v211, &qword_27CB25938, &unk_21775D9B0);
      v207 = 0u;
      v208 = 0u;
      v209 = 0;
      v49 = v195;
    }

    v37 = v206;
    v66 = OUTLINED_FUNCTION_16_0();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
    v69 = sub_2176E42B8();
    v186 = v49;
    v70 = a2;
LABEL_50:
    CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v70, v201, &v207, v68, &type metadata for MusicPersonalRecommendation.Item, v38, v69, &protocol witness table for MusicPersonalRecommendation.Item, v211, v186);
    sub_2171F0738(&v207, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v71, v72, v73);
    memcpy(v212, v211, sizeof(v212));
    goto LABEL_51;
  }

  if (v42)
  {
    v22 = *(v41 + 48);
    v41 = *(v41 + 56);
    v44 = qword_280BE62F0;
    sub_217751DE8();
    if (v44 == -1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_23:
  v45 = xmmword_280BE6308 == v22 && *(&xmmword_280BE6308 + 1) == v41;
  if (!v45 && (OUTLINED_FUNCTION_16_9() & 1) == 0)
  {
    v38 = v37;
    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    v65 = xmmword_280BE6238 == v22 && *(&xmmword_280BE6238 + 1) == v41;
    v37 = v206;
    if (v65 || (OUTLINED_FUNCTION_16_9() & 1) != 0)
    {

      OUTLINED_FUNCTION_83_19();
      if (v211[2])
      {
        OUTLINED_FUNCTION_69_22();
        sub_2176DD918();
        OUTLINED_FUNCTION_17_61();
        OUTLINED_FUNCTION_97_14();
        OUTLINED_FUNCTION_7_85();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v211, &qword_27CB25930, &unk_217797B70);
      }

      else
      {
        sub_2171F0738(v211, &qword_27CB25938, &unk_21775D9B0);
        OUTLINED_FUNCTION_32_49();
      }

      sub_217284868();
      if (v211[2])
      {
        sub_217284868();
        if (v208)
        {
          v129 = OUTLINED_FUNCTION_16_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v129, v130);
          OUTLINED_FUNCTION_23_55();

          OUTLINED_FUNCTION_36();
          sub_2171F0738(v131, v132, v133);
        }

        else
        {

          sub_2171F0738(&v207, &qword_27CB242C0, &unk_21775D650);
          OUTLINED_FUNCTION_57_27();
        }

        v151 = OUTLINED_FUNCTION_16_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v151, v152);
        sub_2172E208C();
        OUTLINED_FUNCTION_88_19();
        OUTLINED_FUNCTION_22_60(v153, v154, v155, v156, &type metadata for Playlist, v157, v158, &protocol witness table for Playlist, v187);
        sub_2171F0738(v210, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(v215, &qword_27CB242C0, &unk_21775D650);
        OUTLINED_FUNCTION_36();
        sub_2171F0738(v159, v160, v161);
        OUTLINED_FUNCTION_81_18();
      }

      else
      {

        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v134, v135, v136);
        sub_2174AA0FC();
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v137, v138, v139);
      }

      v74 = 1;
      goto LABEL_52;
    }

    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    v140 = xmmword_280BE6260 == v22 && *(&xmmword_280BE6260 + 1) == v41;
    v141 = v195;
    if (v140)
    {
    }

    else
    {
      v142 = OUTLINED_FUNCTION_16_9();

      if ((v142 & 1) == 0)
      {
        sub_217284868();
        if (!v216)
        {

          sub_2171F0738(v215, &qword_27CB25938, &unk_21775D9B0);
          sub_2174AA410();
          goto LABEL_51;
        }

        sub_217284868();
        v143 = v203;
        if (v211[2])
        {
          v144 = OUTLINED_FUNCTION_16_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v144, v145);
          v146 = OUTLINED_FUNCTION_90_18();
          sub_2174BE7E4(v146, v143, v38, v141, v147);

          OUTLINED_FUNCTION_36();
          sub_2171F0738(v148, v149, v150);
        }

        else
        {

          sub_2171F0738(v211, &qword_27CB25938, &unk_21775D9B0);
          v207 = 0u;
          v208 = 0u;
          v209 = 0;
        }

        v184 = OUTLINED_FUNCTION_16_0();
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v184, v185);
        sub_2176E42B8();
        OUTLINED_FUNCTION_88_19();
        v70 = v143;
        goto LABEL_50;
      }
    }

    OUTLINED_FUNCTION_83_19();
    if (v211[2])
    {
      OUTLINED_FUNCTION_69_22();
      sub_2176DD598();
      OUTLINED_FUNCTION_17_61();
      OUTLINED_FUNCTION_97_14();
      OUTLINED_FUNCTION_7_85();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v211, &qword_27CB25930, &unk_217797B70);
    }

    else
    {
      sub_2171F0738(v211, &qword_27CB25938, &unk_21775D9B0);
      OUTLINED_FUNCTION_32_49();
    }

    sub_217284868();
    if (v211[2])
    {
      sub_217284868();
      if (v208)
      {
        v162 = OUTLINED_FUNCTION_16_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v162, v163);
        OUTLINED_FUNCTION_23_55();

        OUTLINED_FUNCTION_36();
        sub_2171F0738(v164, v165, v166);
      }

      else
      {

        sub_2171F0738(&v207, &qword_27CB242F0, &unk_217797B80);
        OUTLINED_FUNCTION_57_27();
      }

      v173 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v173, v174);
      sub_2173692A0();
      OUTLINED_FUNCTION_88_19();
      OUTLINED_FUNCTION_22_60(v175, v176, v177, v178, &type metadata for Station, v179, v180, &protocol witness table for Station, v187);
      sub_2171F0738(v210, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v215, &qword_27CB242F0, &unk_217797B80);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v181, v182, v183);
      OUTLINED_FUNCTION_81_18();
    }

    else
    {

      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v167, v168, v169);
      sub_2174AA04C();
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v170, v171, v172);
    }

    v74 = 2;
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_83_19();
  if (v211[2])
  {
    OUTLINED_FUNCTION_69_22();
    sub_2176DDC98();
    OUTLINED_FUNCTION_17_61();
    OUTLINED_FUNCTION_97_14();
    OUTLINED_FUNCTION_7_85();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v211, &qword_27CB25930, &unk_217797B70);
  }

  else
  {
    v38 = v37;
    sub_2171F0738(v211, &qword_27CB25938, &unk_21775D9B0);
    OUTLINED_FUNCTION_32_49();
    v37 = v206;
  }

  sub_217284868();
  if (v211[2])
  {
    sub_217284868();
    if (v208)
    {
      v54 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
      OUTLINED_FUNCTION_23_55();

      OUTLINED_FUNCTION_36();
      sub_2171F0738(v56, v57, v58);
    }

    else
    {

      sub_2171F0738(&v207, &qword_27CB24270, &unk_21775D640);
      OUTLINED_FUNCTION_57_27();
    }

    v75 = OUTLINED_FUNCTION_16_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v75, v76);
    sub_2172E2038();
    OUTLINED_FUNCTION_88_19();
    OUTLINED_FUNCTION_22_60(v77, v78, v79, v80, &type metadata for Album, v81, v82, &protocol witness table for Album, v187);
    sub_2171F0738(v210, &qword_27CB24188, &dword_217758930);
    sub_2171F0738(v215, &qword_27CB24270, &unk_21775D640);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v83, v84, v85);
    OUTLINED_FUNCTION_81_18();
  }

  else
  {

    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v59, v60, v61);
    sub_2174AA1AC();
    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v62, v63, v64);
  }

  LODWORD(v195) = 0;
LABEL_56:
  v86 = v226[0];
  v87 = *(v37 + 344);
  v194 = *(v37 + 336);
  v204 = v87;
  v205 = v226[1];
  if (v237)
  {
    v192 = v235;
    v193 = v236;
    sub_217751DE8();
  }

  else
  {
    v192 = 0;
    v193 = 0;
  }

  v88 = v197;
  if (v234)
  {
    v191 = v232;
    v197 = v233;
    sub_217751DE8();
  }

  else
  {
    v191 = 0;
    v197 = 0;
  }

  v89 = qword_280BE8910;
  sub_217751DE8();
  sub_217751DE8();
  if (v89 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v90 = type metadata accessor for CloudFormatter();
  v91 = __swift_project_value_buffer(v90, qword_280BE8918);
  v92 = v228;
  v93 = sub_2177517D8();
  v94 = OUTLINED_FUNCTION_29_45();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
  if (v92)
  {
    v189 = v86;
    v97 = *(v91 + *(v90 + 24));
    v98 = sub_217751F18();
    v99 = [v97 dateFromString_];

    if (v99)
    {
      sub_2177517C8();
    }

    v104 = v203;
    sub_2171F0738(v88, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_75_19();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_170_0();
    sub_2174BFD48();
    OUTLINED_FUNCTION_170_0();
    sub_2174BFD48();
    v86 = v189;
  }

  else
  {
    sub_2171F0738(v88, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_75_19();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
    v104 = v203;
  }

  (*(*(v38 - 8) + 8))(v104, v38);
  sub_2171F0738(&v217, &qword_27CB25938, &unk_21775D9B0);
  v203 = v239;
  v109 = v240;
  v110 = v241;
  if (v241 == 1)
  {
    v111 = 0;
  }

  else
  {
    v111 = v239;
  }

  if (v241 == 1)
  {
    v112 = 0;
  }

  else
  {
    v112 = v240;
  }

  if (v241 == 1)
  {
    v113 = 0;
  }

  else
  {
    v113 = v241;
  }

  LODWORD(v187) = v227;
  HIDWORD(v187) = v229;
  v114 = v225;
  v115 = v206;
  v116 = v206[93];
  v188 = v206[92];
  v189 = v116;
  v190 = v206[94];
  v201 = v206[95];
  v117 = v200;
  v118 = v205;
  *v200 = v86;
  v117[1] = v118;
  v119 = v204;
  v117[2] = v194;
  v117[3] = v119;
  v117[4] = v196;
  *(v117 + 40) = v198;
  v120 = v193;
  v117[6] = v192;
  v117[7] = v120;
  v121 = v197;
  v117[8] = v191;
  v117[9] = v121;
  v122 = type metadata accessor for MusicPersonalRecommendation();
  v123 = v122[10];
  sub_2174BFD48();
  *(v117 + v122[11]) = v199;
  v124 = v187;
  *(v117 + v122[12]) = BYTE4(v187);
  v125 = (v117 + v122[13]);
  *v125 = v111;
  v125[1] = v112;
  v125[2] = v113;
  *(v117 + v122[14]) = v124;
  *(v117 + v122[15]) = v114;
  v126 = v117 + v122[16];
  memcpy(v126, v212, 0x68uLL);
  v126[104] = v195;
  v127 = v189;
  *(v117 + v122[17]) = v188;
  *(v117 + v122[18]) = v127;
  *(v117 + v122[19]) = v190;
  *(v117 + v122[20]) = v201;
  sub_21733C6A8(v203, v109, v110);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v115, &qword_27CB244A8, &unk_217758980);
  sub_217269D5C(v226);
}

uint64_t sub_2176DFD20@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t CloudPersonalRecommendation.Attributes.DisplayInfo.Kind.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudPersonalRecommendation.Attributes.DisplayInfo.Kind.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_94_17();
  return v4;
}

uint64_t sub_2176DFE6C@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = CloudPersonalRecommendation.Attributes.DisplayInfo.Kind.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2176DFEAC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPersonalRecommendation.Attributes.DisplayInfo.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static CloudPersonalRecommendation.Attributes.DisplayInfo.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2176DFFEC(uint64_t a1)
{
  v2 = sub_2176E4F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E0028(uint64_t a1)
{
  v2 = sub_2176E4F54();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPersonalRecommendation.Attributes.DisplayInfo.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDE0, &qword_217797B90);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_111();
  v11 = *v0;
  v12 = v0[1];
  v13 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_2176E4F54();
  sub_217751DE8();
  OUTLINED_FUNCTION_40_32();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  sub_2176E4FA8();
  sub_217752F38();

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPersonalRecommendation.Attributes.DisplayInfo.hash(into:)()
{
  if (!v0[1])
  {
    return sub_217753208();
  }

  v1 = *v0;
  sub_217753208();
  OUTLINED_FUNCTION_16_0();

  return sub_217751FF8();
}

uint64_t CloudPersonalRecommendation.Attributes.DisplayInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudPersonalRecommendation.Attributes.DisplayInfo.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDF8, &qword_217797B98);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_167();
  v12 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2176E4F54();
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (!v0)
  {
    sub_2176E4FFC();
    sub_217752E58();
    v13 = *(v7 + 8);
    v14 = OUTLINED_FUNCTION_25_0();
    v15(v14);
    *v4 = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

BOOL static CloudPersonalRecommendation.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  v147 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v146 = *(a1 + 128);
  v17 = *(a2 + 8);
  v150 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v21 = *(a2 + 40);
  v20 = *(a2 + 48);
  v22 = *(a2 + 56);
  v24 = *(a2 + 64);
  v23 = *(a2 + 72);
  v26 = *(a2 + 80);
  v25 = *(a2 + 88);
  v27 = *(a2 + 96);
  v149 = *(a2 + 104);
  v148 = *(a2 + 112);
  v28 = *(a2 + 120);
  v29 = *(a2 + 128);
  if (v3)
  {
    if (!v17)
    {
      return 0;
    }

    v143 = *(a1 + 16);
    if (*a1 != *a2 || v3 != v17)
    {
      v125 = *(a1 + 40);
      v127 = *(a2 + 72);
      v114 = *(a1 + 120);
      v116 = *(a2 + 128);
      v136 = *(a2 + 88);
      v139 = *(a2 + 80);
      v31 = *(a1 + 112);
      v132 = *(a2 + 96);
      v129 = *(a1 + 88);
      v32 = *(a2 + 120);
      v33 = *(a1 + 80);
      v112 = *(a2 + 40);
      v113 = *(a1 + 96);
      v34 = *(a1 + 72);
      v119 = *(a1 + 32);
      v121 = *(a1 + 56);
      v35 = *(a2 + 64);
      v36 = *(a2 + 56);
      v123 = *(a1 + 48);
      v37 = *(a2 + 48);
      v38 = sub_217753058();
      v21 = v112;
      v14 = v113;
      v20 = v37;
      v8 = v123;
      v7 = v125;
      v22 = v36;
      v24 = v35;
      v6 = v119;
      v9 = v121;
      v10 = v34;
      v12 = v33;
      v27 = v132;
      v28 = v32;
      v23 = v127;
      v13 = v129;
      v15 = v31;
      v25 = v136;
      v26 = v139;
      v16 = v114;
      v29 = v116;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v143 = *(a1 + 16);
    if (v17)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v18)
    {
      return 0;
    }

    if (v143 != v150 || v5 != v18)
    {
      v126 = v7;
      v130 = v13;
      v144 = v15;
      v40 = v28;
      v151 = v12;
      v134 = v11;
      v137 = v25;
      v140 = v26;
      v41 = v14;
      v42 = v10;
      v128 = v23;
      v43 = v24;
      v120 = v6;
      v122 = v9;
      v44 = v22;
      v124 = v8;
      v45 = v20;
      v46 = v21;
      v47 = sub_217753058();
      v21 = v46;
      v6 = v120;
      v9 = v122;
      v20 = v45;
      v8 = v124;
      v7 = v126;
      v22 = v44;
      v24 = v43;
      v23 = v128;
      v13 = v130;
      v10 = v42;
      v14 = v41;
      v25 = v137;
      v26 = v140;
      v11 = v134;
      v12 = v151;
      v28 = v40;
      v15 = v144;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v6 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v19 == 2 || ((v19 ^ v6) & 1) != 0)
    {
      return result;
    }
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v7 != v21 || v8 != v20)
    {
      v131 = v13;
      v133 = v27;
      v117 = v29;
      v50 = v16;
      v51 = v15;
      v52 = v28;
      v53 = v12;
      v135 = v11;
      v138 = v25;
      v141 = v26;
      v54 = v14;
      v55 = v10;
      v56 = v23;
      v57 = v24;
      v58 = v9;
      v59 = v22;
      v60 = sub_217753058();
      v22 = v59;
      v9 = v58;
      v24 = v57;
      v23 = v56;
      v10 = v55;
      v14 = v54;
      v25 = v138;
      v26 = v141;
      v27 = v133;
      v11 = v135;
      v12 = v53;
      v28 = v52;
      v15 = v51;
      v16 = v50;
      v29 = v117;
      v13 = v131;
      if ((v60 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }

LABEL_38:
    if (v10 == 1)
    {
      v61 = v24;
      v62 = v14;
      v152 = v12;
      v142 = v28;
      v145 = v15;
      v118 = v29;
      v63 = v23;
      sub_2171FB568(v11, 1);
      if (v63 == 1)
      {
        v64 = v13;
        v115 = v16;
        sub_2171FB568(v61, 1);
        sub_217283988(v11, 1);
        goto LABEL_46;
      }

      sub_2171FB568(v61, v63);
      v65 = 1;
    }

    else
    {
      v154[0] = v11;
      v154[1] = v10;
      if (v23 != 1)
      {
        v62 = v14;
        v152 = v12;
        v153[0] = v24;
        v64 = v13;
        v142 = v28;
        v145 = v15;
        v115 = v16;
        v118 = v29;
        v153[1] = v23;
        v66 = v10;
        sub_2171FB568(v11, v10);
        v67 = OUTLINED_FUNCTION_93();
        sub_2171FB568(v67, v68);
        sub_2171FB568(v11, v66);
        v69 = static CloudPersonalRecommendation.Attributes.DisplayInfo.== infix(_:_:)(v154, v153);

        sub_217283988(v11, v66);
        if ((v69 & 1) == 0)
        {
          return 0;
        }

LABEL_46:
        if (v62)
        {
          if (v27)
          {
            OUTLINED_FUNCTION_849();
            sub_2172E1074(v70, v71, v72);
            v73 = OUTLINED_FUNCTION_53_29();
            sub_2172E1074(v73, v74, v75);
            OUTLINED_FUNCTION_849();
            v77 = sub_2172AA364(v76);
            v78 = OUTLINED_FUNCTION_53_29();
            sub_2172E141C(v78, v79, v80);
            OUTLINED_FUNCTION_849();
            sub_2172E141C(v81, v82, v83);
            if ((v77 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_53;
          }
        }

        else if (!v27)
        {
          sub_2172E1074(v152, v64, 0);
          sub_2172E1074(v26, v25, 0);
          sub_2172E141C(v152, v64, 0);
LABEL_53:
          if (v115)
          {
            v96 = v145;
            if (v142)
            {
              sub_2172E1074(v147, v145, v115);
              v97 = OUTLINED_FUNCTION_50_34();
              sub_2172E1074(v97, v98, v99);
              OUTLINED_FUNCTION_80_3();
              v101 = sub_2172AA364(v100);
              v102 = OUTLINED_FUNCTION_50_34();
              sub_2172E141C(v102, v103, v104);
              OUTLINED_FUNCTION_80_3();
              sub_2172E141C(v105, v106, v107);
              if ((v101 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_63;
            }
          }

          else
          {
            v96 = v145;
            if (!v142)
            {
              sub_2172E1074(v147, v145, 0);
              sub_2172E1074(v149, v148, 0);
              sub_2172E141C(v147, v145, 0);
LABEL_63:
              if (v146)
              {
                return v118 && (sub_2172705FC(v146, v118) & 1) != 0;
              }

              return !v118;
            }
          }

          v108 = v96;
          sub_2172E1074(v147, v96, v115);
          v109 = OUTLINED_FUNCTION_50_34();
          sub_2172E1074(v109, v110, v111);
          sub_2172E141C(v147, v108, v115);
          v93 = OUTLINED_FUNCTION_50_34();
LABEL_59:
          sub_2172E141C(v93, v94, v95);
          return 0;
        }

        OUTLINED_FUNCTION_849();
        sub_2172E1074(v84, v85, v86);
        v87 = OUTLINED_FUNCTION_53_29();
        sub_2172E1074(v87, v88, v89);
        OUTLINED_FUNCTION_849();
        sub_2172E141C(v90, v91, v92);
        v93 = OUTLINED_FUNCTION_53_29();
        goto LABEL_59;
      }

      v65 = v10;
      v63 = 1;
      v61 = v24;
      sub_2171FB568(v11, v10);
      sub_2171FB568(v61, 1);
      sub_2171FB568(v11, v65);
    }

    sub_217283988(v11, v65);
    sub_217283988(v61, v63);
    return 0;
  }

  result = 0;
  if (v22 != 2 && ((v22 ^ v9) & 1) == 0)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_2176E0A04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xED0000646E694B6CLL;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000002177B5910 == a2;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616470557478656ELL && a2 == 0xEE00657461446574;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C41656553736168 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656372756F736572 && a2 == 0xED00007365707954)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_217753058();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_2176E0CE4(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x616470557478656ELL;
      break;
    case 4:
      result = 0x6C41656553736168;
      break;
    case 5:
      result = 0x79616C70736964;
      break;
    case 6:
      result = 0x6E6F73616572;
      break;
    case 7:
      result = 0x656C746974;
      break;
    case 8:
      result = 0x656372756F736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176E0E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176E0A04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176E0E44(uint64_t a1)
{
  v2 = sub_2176E5050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E0E80(uint64_t a1)
{
  v2 = sub_2176E5050();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPersonalRecommendation.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE08, &qword_217797BA0);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_111();
  v12 = *v0;
  v13 = v0[1];
  v28 = v0[3];
  v29 = v0[2];
  v30 = *(v0 + 32);
  v26 = v0[6];
  v27 = v0[5];
  v25 = *(v0 + 56);
  v23 = v0[8];
  v24 = v0[9];
  v20 = v0[10];
  v21 = v0[11];
  v22 = v0[12];
  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[15];
  v16 = v0[16];
  v14 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_2176E5050();
  sub_217751DE8();
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  sub_2176E50A4();
  OUTLINED_FUNCTION_16_72();
  sub_217752F38();

  if (!v1)
  {
    sub_2176E50F8();
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
    sub_217752F08();
    OUTLINED_FUNCTION_19_1();
    sub_217752EF8();
    sub_217752F08();
    sub_2171FB568(v23, v24);
    sub_2176E514C();
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
    sub_217283988(v23, v24);
    sub_2172E1074(v20, v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25288, &qword_21775B588);
    OUTLINED_FUNCTION_41_40();
    sub_2176E529C(v15);
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
    sub_2172E141C(v20, v21, v22);
    sub_2172E1074(v17, v18, v19);
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
    sub_2172E141C(v17, v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
    sub_2176E5300(&unk_27CB2CE30);
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Attributes.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  v6 = *(v2 + 32);
  v7 = v2[6];
  v8 = *(v2 + 56);
  v17 = v2[9];
  v12 = v2[8];
  v13 = v2[10];
  v9 = v2[12];
  v14 = v2[13];
  v15 = v2[5];
  v18 = v2[11];
  v19 = v2[14];
  v16 = v2[15];
  v10 = v2[16];
  if (v2[1])
  {
    v11 = *v2;
    sub_217753208();
    sub_217751FF8();
    if (v5)
    {
LABEL_3:
      sub_217753208();
      sub_217751FF8();
      goto LABEL_6;
    }
  }

  else
  {
    sub_217753208();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_217753208();
LABEL_6:
  if (v6 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  sub_217753208();
  if (v7)
  {
    sub_217751FF8();
  }

  if (v8 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (v17 == 1 || (sub_217753208(), !v17))
  {
    sub_217753208();
    if (!v9)
    {
LABEL_15:
      sub_217753208();
      if (!v16)
      {
        goto LABEL_16;
      }

LABEL_22:
      sub_217753208();
      sub_217753208();
      if (v19)
      {
        sub_217751FF8();
      }

      sub_217751DE8();
      sub_217265A08(a1, v16);

      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  sub_217753208();
  sub_217753208();
  if (v18)
  {
    sub_217751FF8();
  }

  sub_217751DE8();
  sub_217265A08(a1, v9);

  if (v16)
  {
    goto LABEL_22;
  }

LABEL_16:
  sub_217753208();
  if (!v10)
  {
LABEL_17:
    sub_217753208();
    return;
  }

LABEL_25:
  sub_217753208();

  sub_217281A54(a1, v10);
}

uint64_t CloudPersonalRecommendation.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPersonalRecommendation.Attributes.hash(into:)(v1);
  return sub_217753238();
}

void CloudPersonalRecommendation.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE38, &qword_217797BA8);
  OUTLINED_FUNCTION_0_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_167();
  v20 = v12[4];
  OUTLINED_FUNCTION_160(v12, v12[3]);
  sub_2176E5050();
  sub_2177532C8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2176E51A0();
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v21 = v42;
    v40 = v43;
    sub_2176E51F4();
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v22 = v42;
    v39 = v43;
    OUTLINED_FUNCTION_27_50(2);
    v30 = sub_217752E28();
    OUTLINED_FUNCTION_27_50(3);
    v29 = sub_217752E18();
    v38 = v23;
    OUTLINED_FUNCTION_27_50(4);
    v27 = sub_217752E28();
    sub_2176E5248();
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v37 = v42;
    v28 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25288, &qword_21775B588);
    OUTLINED_FUNCTION_39_32();
    sub_2176E529C(v24);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v36 = v43;
    v34 = v42;
    v35 = v44;
    LOBYTE(v41[0]) = 7;
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v32 = v43;
    v33 = v42;
    v31 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
    v59 = 8;
    sub_2176E5300(&unk_27CB2CE58);
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v25 = OUTLINED_FUNCTION_14_65();
    v26(v25);
    v41[0] = v21;
    v41[1] = v40;
    v41[2] = v22;
    v41[3] = v39;
    LOBYTE(v41[4]) = v30;
    v41[5] = v29;
    v41[6] = v38;
    LOBYTE(v41[7]) = v27;
    v41[8] = v37;
    v41[9] = v28;
    v41[10] = v34;
    v41[11] = v36;
    v41[12] = v35;
    v41[13] = v33;
    v41[14] = v32;
    v41[15] = v31;
    v41[16] = a10;
    memcpy(v14, v41, 0x88uLL);
    sub_21733C64C(v41, &v42);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v42 = v21;
    v43 = v40;
    v44 = v22;
    v45 = v39;
    v46 = v30;
    v47 = v29;
    v48 = v38;
    v49 = v27;
    v50 = v37;
    v51 = v28;
    v52 = v34;
    v53 = v36;
    v54 = v35;
    v55 = v33;
    v56 = v32;
    v57 = v31;
    v58 = a10;
    sub_21733C7EC(&v42);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E1B24()
{
  sub_2177531E8();
  CloudPersonalRecommendation.Attributes.hash(into:)(v1);
  return sub_217753238();
}

uint64_t CloudPersonalRecommendation.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217752DC8();

  *a1 = v2 != 0;
  return result;
}

uint64_t CloudPersonalRecommendation.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217752DC8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2176E1C48@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CloudPersonalRecommendation.Relationships.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_2176E1CA0(uint64_t a1)
{
  v2 = sub_21738BF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E1CDC(uint64_t a1)
{
  v2 = sub_21738BF64();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudPersonalRecommendation.Relationships.== infix(_:_:)()
{
  sub_217284868();
  sub_217284868();
  if (v11)
  {
    sub_217284868();
    if (v12[2])
    {
      memcpy(v8, v12, sizeof(v8));
      v0 = sub_2172DE0B8(v9, v8);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v1, v2, v3);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v4, v5, v6);
      sub_2171F0738(v10, &qword_27CB244B8, &unk_217758990);
      return (v0 & 1) != 0;
    }

    sub_2171F0738(v9, &qword_27CB244C0, &qword_21775D9C0);
  }

  else if (!v12[2])
  {
    sub_2171F0738(v10, &qword_27CB244B8, &unk_217758990);
    return 1;
  }

  sub_2171F0738(v10, &qword_27CB2CE60, &qword_217797BB0);
  return 0;
}

uint64_t CloudPersonalRecommendation.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE68, &unk_217797BB8);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_167();
  v10 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738BF64();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244C0, &qword_21775D9C0);
  sub_2176E5410(&unk_27CB2CE70);
  sub_217752F38();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudPersonalRecommendation.Relationships.hash(into:)(uint64_t a1)
{
  sub_217284868();
  if (!__src[2])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(v3, __src, sizeof(v3));
  OUTLINED_FUNCTION_24();
  sub_2172DE4B4(a1);
  return sub_2171F0738(v3, &qword_27CB244C0, &qword_21775D9C0);
}

uint64_t CloudPersonalRecommendation.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4B4(v3);
    sub_2171F0738(__dst, &qword_27CB244C0, &qword_21775D9C0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudPersonalRecommendation.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v15 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE78, &qword_217797BC8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_36_34();
  v12 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21738BF64();
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244C0, &qword_21775D9C0);
    sub_2176E5410(&unk_27CB2CE80);
    sub_217752E58();
    (*(v7 + 8))(v1, v5);
    memcpy(v14, v13, sizeof(v14));
    memcpy(v15, v14, 0x80uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E231C()
{
  sub_2177531E8();
  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4B4(v3);
    sub_2171F0738(__dst, &qword_27CB244C0, &qword_21775D9C0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2176E23CC(uint64_t a1)
{
  v2 = sub_2176E5490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E2408(uint64_t a1)
{
  v2 = sub_2176E5490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudPersonalRecommendation.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE88, &qword_217797BD0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_111();
  v10 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2176E5490();
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudPersonalRecommendation.Metadata.metrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2172E1074(v2, v3, v4);
}

BOOL static CloudPersonalRecommendation.Metadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  if (a1[2])
  {
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_35_39();
      sub_2172E1074(v7, v8, v9);
      v10 = OUTLINED_FUNCTION_240();
      sub_2172E1074(v10, v11, v6);
      v12 = OUTLINED_FUNCTION_35_39();
      v13 = sub_2172AA364(v12);
      v14 = OUTLINED_FUNCTION_240();
      sub_2172E141C(v14, v15, v6);
      v16 = OUTLINED_FUNCTION_35_39();
      sub_2172E141C(v16, v17, v18);
      return (v13 & 1) != 0;
    }

LABEL_6:
    v19 = OUTLINED_FUNCTION_35_39();
    sub_2172E1074(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_240();
    sub_2172E1074(v22, v23, v6);
    v24 = OUTLINED_FUNCTION_35_39();
    sub_2172E141C(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_240();
    sub_2172E141C(v27, v28, v6);
    return 0;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  sub_2172E1074(*a1, v2, 0);
  v30 = OUTLINED_FUNCTION_240();
  sub_2172E1074(v30, v31, 0);
  sub_2172E141C(v3, v2, 0);
  return 1;
}

uint64_t sub_2176E26FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2176E2790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176E26FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2176E27BC(uint64_t a1)
{
  v2 = sub_2176E54E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E27F8(uint64_t a1)
{
  v2 = sub_2176E54E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPersonalRecommendation.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE98, &unk_217797BD8);
  OUTLINED_FUNCTION_0_0(v15);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_111();
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_2172E1074(v10, v11, v12);
  sub_2176E54E4();
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29AE8, &qword_217779EE0);
  OUTLINED_FUNCTION_41_40();
  sub_2176E55E0(v14);
  sub_217752F38();
  sub_2172E141C(v10, v11, v12);
  (*(v5 + 8))(v1, v15);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPersonalRecommendation.Metadata.hash(into:)(const void *a1)
{
  v3 = v1[2];
  if (!v3)
  {
    return sub_217753208();
  }

  v4 = *v1;
  v5 = v1[1];
  sub_217753208();
  sub_217753208();
  if (v5)
  {
    OUTLINED_FUNCTION_36();
    sub_217751FF8();
  }

  sub_217751DE8();
  sub_217265A08(a1, v3);
}

uint64_t CloudPersonalRecommendation.Metadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_238();
  if (v3)
  {
    sub_217753208();
    sub_217753208();
    if (v2)
    {
      OUTLINED_FUNCTION_36();
      sub_217751FF8();
    }

    sub_217751DE8();
    sub_217265A08(v5, v3);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudPersonalRecommendation.Metadata.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CEC0, &qword_217797BE8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v17 - v12;
  v14 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2176E54E4();
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29AE8, &qword_217779EE0);
    OUTLINED_FUNCTION_39_32();
    sub_2176E55E0(v15);
    sub_217752E58();
    (*(v7 + 8))(v13, v5);
    v16 = v18;
    *v4 = v17;
    *(v4 + 16) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E2CA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2177531E8();
  sub_217753208();
  if (v3)
  {
    sub_2172DE88C(v5, v1, v2, v3);
  }

  return sub_217753238();
}

uint64_t CloudPersonalRecommendation.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudPersonalRecommendation.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_95_18(v5);
  memcpy(a1, (v1 + 16), 0x88uLL);
  return sub_21733C64C(v5, v4);
}

uint64_t static CloudPersonalRecommendation.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_27CB2CDC0 = a1;
}

uint64_t sub_2176E2EB0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27CB2CDC0;
  return sub_217751DE8();
}

uint64_t sub_2176E2F00(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_27CB2CDC0 = v1;
  sub_217751DE8();
}

uint64_t CloudPersonalRecommendation.meta.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[36];
  v3 = v1[37];
  v4 = v1[38];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_21733C6A8(v2, v3, v4);
}

uint64_t sub_2176E2FBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4AB0 != -1)
  {
    OUTLINED_FUNCTION_47_33();
  }

  v1 = unk_280BE4AC0;
  v2 = byte_280BE4AC8;
  *(v0 + 32) = qword_280BE4AB8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_27CB2CDD0 = v0;

  return sub_217751DE8();
}

BOOL static CloudPersonalRecommendation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v3 || (v4 = sub_217753058(), result = 0, (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_95_18(v58);
    OUTLINED_FUNCTION_95_18(v55);
    memcpy(__dst, (v0 + 16), sizeof(__dst));
    memcpy(__src, (v0 + 16), sizeof(__src));
    sub_21733C64C(v58, v56);
    sub_21733C64C(__dst, v56);
    v6 = static CloudPersonalRecommendation.Attributes.== infix(_:_:)(v55, __src);
    memcpy(v60, __src, sizeof(v60));
    sub_21733C7EC(v60);
    memcpy(v61, v55, sizeof(v61));
    sub_21733C7EC(v61);
    if (!v6)
    {
      return 0;
    }

    sub_217284868();
    sub_217284868();
    if (*&v55[16] == 1)
    {
      if (*&v55[144] == 1)
      {
        sub_2171F0738(v55, &qword_27CB244B0, &unk_21776DB80);
LABEL_14:
        if (*(v1 + 280) == *(v0 + 280))
        {
          v9 = *(v1 + 288);
          v8 = *(v1 + 296);
          v10 = *(v1 + 304);
          v12 = *(v0 + 288);
          v11 = *(v0 + 296);
          v13 = *(v0 + 304);
          if (v10 == 1)
          {
            v14 = OUTLINED_FUNCTION_240();
            sub_21733C6A8(v14, v15, 1);
            if (v13 == 1)
            {
              v16 = OUTLINED_FUNCTION_25_0();
              sub_21733C6A8(v16, v17, 1);
              v18 = OUTLINED_FUNCTION_240();
              sub_21733C6CC(v18, v19, 1);
              return 1;
            }

            v31 = OUTLINED_FUNCTION_25_0();
            sub_21733C6A8(v31, v32, v13);
          }

          else
          {
            *v55 = v9;
            *&v55[8] = v8;
            *&v55[16] = v10;
            if (v13 != 1)
            {
              __src[0] = v12;
              __src[1] = v11;
              __src[2] = v13;
              v38 = OUTLINED_FUNCTION_6_8();
              sub_21733C6A8(v38, v39, v40);
              v41 = OUTLINED_FUNCTION_25_0();
              sub_21733C6A8(v41, v42, v13);
              v43 = OUTLINED_FUNCTION_6_8();
              sub_21733C6A8(v43, v44, v45);
              v46 = static CloudPersonalRecommendation.Metadata.== infix(_:_:)(v55, __src);
              v47 = OUTLINED_FUNCTION_25_0();
              sub_2172E141C(v47, v48, v13);
              v49 = OUTLINED_FUNCTION_6_8();
              sub_2172E141C(v49, v50, v51);
              v52 = OUTLINED_FUNCTION_6_8();
              sub_21733C6CC(v52, v53, v54);
              return v46;
            }

            v20 = OUTLINED_FUNCTION_6_8();
            sub_21733C6A8(v20, v21, v22);
            v23 = OUTLINED_FUNCTION_25_0();
            sub_21733C6A8(v23, v24, 1);
            v25 = OUTLINED_FUNCTION_6_8();
            sub_21733C6A8(v25, v26, v27);
            v28 = OUTLINED_FUNCTION_6_8();
            sub_2172E141C(v28, v29, v30);
          }

          v33 = OUTLINED_FUNCTION_6_8();
          sub_21733C6CC(v33, v34, v35);
          v36 = OUTLINED_FUNCTION_25_0();
          sub_21733C6CC(v36, v37, v13);
        }

        return 0;
      }
    }

    else
    {
      sub_217284868();
      if (*&v55[144] != 1)
      {
        memcpy(v56, &v55[128], 0x80uLL);
        v7 = static CloudPersonalRecommendation.Relationships.== infix(_:_:)();
        sub_21728373C(v56);
        sub_21728373C(__src);
        sub_2171F0738(v55, &qword_27CB244B0, &unk_21776DB80);
        if (!v7)
        {
          return 0;
        }

        goto LABEL_14;
      }

      sub_21728373C(__src);
    }

    sub_2171F0738(v55, &qword_27CB2CED0, &qword_217797BF0);
    return 0;
  }

  return result;
}

uint64_t sub_2176E338C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176E3420(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176E3474(uint64_t a1)
{
  v2 = sub_2176E5644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E34B0(uint64_t a1)
{
  v2 = sub_2176E5644();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPersonalRecommendation.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CED8, &qword_217797BF8);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_111();
  v13 = v5[4];
  OUTLINED_FUNCTION_160(v5, v5[3]);
  sub_2176E5644();
  OUTLINED_FUNCTION_40_32();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  v14 = v3[1];
  v22 = *v3;
  v23 = v14;
  sub_2172E1B18();
  OUTLINED_FUNCTION_16_72();
  sub_217752F88();
  if (!v1)
  {
    memcpy(v21, v3 + 2, sizeof(v21));
    memcpy(v20, v3 + 2, sizeof(v20));
    sub_21733C64C(v21, v19);
    sub_21733C798();
    OUTLINED_FUNCTION_34_40();
    sub_217752F88();
    memcpy(v19, v20, sizeof(v19));
    sub_21733C7EC(v19);
    sub_21733C744();
    OUTLINED_FUNCTION_34_40();
    sub_217752F38();
    v15 = *(v3 + 280);
    sub_21733C6F0();
    OUTLINED_FUNCTION_34_40();
    sub_217752F38();
    v16 = v3[36];
    v17 = v3[37];
    v18 = v3[38];
    sub_21733C6A8(v16, v17, v18);
    sub_2174D7728();
    OUTLINED_FUNCTION_34_40();
    sub_217752F38();
    sub_21733C6CC(v16, v17, v18);
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPersonalRecommendation.hash(into:)(const void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  OUTLINED_FUNCTION_95_18(__src);
  CloudPersonalRecommendation.Attributes.hash(into:)(a1);
  sub_217284868();
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_24();
    sub_217284868();
    if (v11[2])
    {
      memcpy(v10, v11, sizeof(v10));
      OUTLINED_FUNCTION_24();
      sub_2172DE4B4(a1);
      sub_2171F0738(v10, &qword_27CB244C0, &qword_21775D9C0);
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_21728373C(__dst);
  }

  v5 = *(v1 + 280);
  sub_217753208();
  v6 = v1[38];
  if (v6 == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  v8 = v1[36];
  v7 = v1[37];
  OUTLINED_FUNCTION_24();
  if (!v6)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_24();
  if (v7)
  {
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_217751DE8();
  sub_217265A08(a1, v6);
}

uint64_t CloudPersonalRecommendation.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPersonalRecommendation.hash(into:)(v1);
  return sub_217753238();
}

void CloudPersonalRecommendation.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CEE8, &unk_217797C00);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_36_34();
  v10 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2176E5644();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v13[0]) = 0;
    sub_2172E1C68();
    sub_217752EA8();
    v16[0] = v15[0];
    v16[1] = v15[1];
    v14 = 1;
    sub_2176E5698();
    sub_217752EA8();
    memcpy(v17, v15, sizeof(v17));
    sub_2176E56EC();
    OUTLINED_FUNCTION_30_44();
    sub_217752E58();
    memcpy(v18, v13, 0x80uLL);
    sub_2176E5740();
    OUTLINED_FUNCTION_30_44();
    sub_217752E58();
    v18[128] = v13[0];
    sub_2176E5794();
    OUTLINED_FUNCTION_30_44();
    sub_217752E58();
    v11 = OUTLINED_FUNCTION_82();
    v12(v11);
    v19 = v13[0];
    v20 = *&v13[1];
    sub_21733C5F0(v16, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_217269D5C(v16);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E3C90()
{
  sub_2177531E8();
  CloudPersonalRecommendation.hash(into:)(v1);
  return sub_217753238();
}

uint64_t MusicPersonalRecommendation.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1, a2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_34();
  sub_217284868();
  (*(v13 + 16))(v6, a2, a4);
  MusicPersonalRecommendation.init<A>(_:configuration:sharedRelatedItemStore:additionalQueryItems:)(&v16, v6, a3, MEMORY[0x277D84F90], a4, a5, a6);
  (*(v13 + 8))(a2, a4);
  return sub_2171F0738(a1, &qword_27CB244A8, &unk_217758980);
}

void sub_2176E3E18(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  if (!a3)
  {
    if (a1)
    {
      v10 = OUTLINED_FUNCTION_21_49();
      if (v12 == v10 && a1 == v11)
      {
LABEL_21:

        goto LABEL_22;
      }

      v14 = sub_217753058();

      if (v14)
      {
LABEL_22:
        v9 = 6;
        goto LABEL_23;
      }
    }

    goto LABEL_14;
  }

  if (a2 != 0x7661662D72756F79 || a3 != 0xEE0073657469726FLL)
  {
    OUTLINED_FUNCTION_25_0();
    if ((OUTLINED_FUNCTION_0_99() & 1) == 0)
    {
      OUTLINED_FUNCTION_44_10();
      v16 = a2 == 0xD000000000000011 && v15 == a3;
      if (v16 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
      {

        v9 = 1;
        goto LABEL_23;
      }

      v18 = a2 == OUTLINED_FUNCTION_80_18() && a3 == v17;
      if (v18 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
      {

        v9 = 2;
        goto LABEL_23;
      }

      v20 = a2 == OUTLINED_FUNCTION_85_17() && a3 == v19;
      if (v20 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
      {

        v9 = 3;
        goto LABEL_23;
      }

      v22 = a2 == OUTLINED_FUNCTION_79_21() && a3 == v21;
      if (v22 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
      {

        v9 = 4;
        goto LABEL_23;
      }

      v23 = a2 == 0x656C65722D77656ELL && a3 == 0xEC00000073657361;
      if (v23 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
      {

        v9 = 5;
        goto LABEL_23;
      }

      v25 = a2 == OUTLINED_FUNCTION_21_49() && a3 == v24;
      if (v25 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
      {
        goto LABEL_21;
      }

      v26 = a2 == 0x6D2D79616C706572 && a3 == 0xEC00000073657869;
      if (v26 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
      {

        v9 = 7;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_44_10();
      v28 = a2 == 0xD000000000000010 && v27 == a3;
      if (v28 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
      {

        v9 = 8;
        goto LABEL_23;
      }

      if (a2 == 0x6B6369702D706F74 && a3 == 0xE900000000000073)
      {

LABEL_73:
        v9 = 9;
        goto LABEL_23;
      }

      v30 = OUTLINED_FUNCTION_0_99();

      if (v30)
      {
        goto LABEL_73;
      }

LABEL_14:
      v9 = 10;
      goto LABEL_23;
    }
  }

  v9 = 0;
LABEL_23:
  *a4 = v9;
}

MusicKit::MusicPersonalRecommendation::_DisplayKind_optional __swiftcall MusicPersonalRecommendation._DisplayKind.init(_:)(MusicKit::CloudPersonalRecommendation::Attributes::DisplayInfo::Kind_optional a1)
{
  v2 = v1;
  v3 = *(a1.value.rawValue._countAndFlagsBits + 8);
  if (!v3)
  {
    goto LABEL_43;
  }

  v4 = *a1.value.rawValue._countAndFlagsBits;
  v5 = *a1.value.rawValue._countAndFlagsBits == 0x766F43636973754DLL && v3 == 0xEF666C6568537265;
  if (!v5 && (OUTLINED_FUNCTION_0_99() & 1) == 0)
  {
    OUTLINED_FUNCTION_44_10();
    v8 = v4 == 0xD000000000000013 && v7 == v3;
    if (v8 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
    {

      v6 = 1;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_44_10();
    v10 = v4 == 0xD000000000000013 && v9 == v3;
    if (v10 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
    {

      v6 = 2;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_44_10();
    v12 = v4 == 0xD00000000000001BLL && v11 == v3;
    if (v12 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
    {

      v6 = 3;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_44_10();
    v14 = v4 == 0xD000000000000014 && v13 == v3;
    if (v14 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
    {

      v6 = 4;
      goto LABEL_44;
    }

    v15 = v4 == 0x726143636973754DLL && v3 == 0xEE00666C65685364;
    if (v15 || (OUTLINED_FUNCTION_0_99() & 1) != 0)
    {

      v6 = 5;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_44_10();
    if (v4 == 0xD000000000000019 && v16 == v3)
    {
    }

    else
    {
      v18 = OUTLINED_FUNCTION_0_99();

      if ((v18 & 1) == 0)
      {
LABEL_43:
        v6 = 7;
        goto LABEL_44;
      }
    }

    v6 = 6;
    goto LABEL_44;
  }

  v6 = 0;
LABEL_44:
  *v2 = v6;
  return a1.value.rawValue._countAndFlagsBits;
}

unint64_t sub_2176E42B8()
{
  result = qword_27CB2CDD8;
  if (!qword_27CB2CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CDD8);
  }

  return result;
}

uint64_t sub_2176E430C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v5 = qword_280BE8A90 == v3 && *algn_280BE8A98 == v4;
  if (v5 || (sub_217753058() & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_280BE8AE8 != -1)
  {
    swift_once();
  }

  v6 = qword_280BE8AF0 == v3 && *algn_280BE8AF8 == v4;
  if (v6 || (sub_217753058() & 1) != 0)
  {
LABEL_15:
    if (qword_280BE62F0 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_280BE62F8;
LABEL_18:
    v17 = *v7;
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    sub_217751DE8();
    sub_21770B7BC();
    v10 = *(*a2 + 16);
    result = sub_21770BAEC(v10);
    v12 = *a2;
    *(v12 + 16) = v10 + 1;
    v13 = v12 + 32 * v10;
    *(v13 + 32) = v17;
    *(v13 + 48) = v9;
    *(v13 + 56) = v8;
    return result;
  }

  if (qword_280BE8A38 != -1)
  {
    swift_once();
  }

  v14 = qword_280BE8A40 == v3 && *algn_280BE8A48 == v4;
  if (v14 || (sub_217753058() & 1) != 0)
  {
    goto LABEL_34;
  }

  if (qword_280BE8AA8 != -1)
  {
    swift_once();
  }

  v15 = qword_280BE8AB0 == v3 && *algn_280BE8AB8 == v4;
  if (v15 || (sub_217753058() & 1) != 0)
  {
LABEL_34:
    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_280BE6228;
    goto LABEL_18;
  }

  if (qword_280BE8A60 != -1)
  {
    swift_once();
  }

  v16 = qword_280BE8A68 == v3 && unk_280BE8A70 == v4;
  if (v16 || (result = sub_217753058(), (result & 1) != 0))
  {
    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_280BE6250;
    goto LABEL_18;
  }

  return result;
}

uint64_t MusicPersonalRecommendation.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v90 = a2;
  v91 = a3;
  v89 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_45_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v74 - v13;
  v15 = sub_2177517D8();
  v16 = OUTLINED_FUNCTION_0_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16, v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_34();
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = *(v4 + 40);
  if (v26 != 10)
  {
    LOBYTE(v118[0]) = *(v4 + 40);
    sub_2176E4CF8();
    v25 = 0x80000002177ABB10;
    v24 = 0x796C746E65636572;
    if (v26 == 6)
    {
      v25 = 0xEF646579616C702DLL;
    }

    else
    {
      v24 = 0xD000000000000015;
    }
  }

  v92 = v25;
  v93 = v24;
  v94 = v23;
  v95 = v22;
  v27 = type metadata accessor for MusicPersonalRecommendation();
  v88 = *(v4 + v27[14]);
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v28 = type metadata accessor for CloudFormatter();
  v29 = __swift_project_value_buffer(v28, qword_280BE8918);
  v30 = v27[10];
  sub_217284868();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2171F0738(v14, &qword_27CB241C0, &qword_217759480);
    v86 = 0;
    v87 = 0;
  }

  else
  {
    (*(v18 + 32))(v5, v14, v15);
    v31 = *(v29 + *(v28 + 24));
    v32 = sub_2177517A8();
    v33 = [v31 stringFromDate_];

    v34 = sub_217751F48();
    v86 = v35;
    v87 = v34;

    (*(v18 + 8))(v5, v15);
  }

  v36 = v27[11];
  v85 = *(v6 + v27[12]);
  if (*(v6 + v36) == 7)
  {
    v84 = 0;
    v37 = 1;
  }

  else
  {
    v117[0] = *(v6 + v36);
    MusicPersonalRecommendation._DisplayKind.convertToCloudDisplayInfo()();
    v84 = v118[0];
    v37 = v118[1];
  }

  v83 = v37;
  v38 = v6[9];
  if (v38)
  {
    v82 = v6[8];
    v81 = sub_217751DC8();
  }

  else
  {
    v81 = 0;
    v82 = 0;
  }

  v39 = v6[7];
  v96 = a4;
  v78 = v38;
  if (v39)
  {
    v80 = v6[6];
    sub_217751DE8();
    v79 = sub_217751DC8();
  }

  else
  {
    sub_217751DE8();
    v79 = 0;
    v80 = 0;
  }

  v40 = *(v6 + v27[15]);
  sub_217751DE8();
  v77 = sub_2176DE844(v40);
  MusicPersonalRecommendation.items.getter();
  sub_2176E42B8();
  v76 = v39;
  sub_217230490(v116);
  LOBYTE(v97[0]) = v116[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25928, &unk_21775D9A0);
  v75 = v27;
  MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
  sub_2171F0738(v117, &qword_27CB25928, &unk_21775D9A0);
  v41 = v118[0];
  v42 = v118[1];
  sub_2171FB568(v118[0], v118[1]);
  sub_2176DE488();
  v90 = v118[3];
  v91 = v43;
  v44 = v118[4];
  v89 = v118[5];
  v45 = v118[6];
  v46 = v118[7];
  v47 = v118[8];
  sub_217284868();
  v48 = v6;
  v115[0] = v41;
  v115[1] = v42;
  v115[2] = v91;
  v115[3] = v90;
  v115[4] = v44;
  v115[5] = v89;
  v115[6] = v45;
  v115[7] = v46;
  v115[8] = v47;
  v115[14] = v118[14];
  v115[15] = v118[15];
  v49 = v75;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v118, &qword_27CB25930, &unk_217797B70);
  v50 = (v6 + v49[13]);
  v51 = *v50;
  v52 = v50[1];
  v53 = v50[2];
  v54 = *v6;
  v55 = v6[1];
  sub_21733C840(v115, v111);
  v97[0] = v54;
  v97[1] = v55;
  v97[2] = v94;
  v97[3] = v95;
  v97[4] = v93;
  v97[5] = v92;
  v98 = v88;
  v99 = v87;
  v100 = v86;
  v101 = v85;
  v102 = v84;
  v103 = v83;
  v104 = v82;
  v105 = v78;
  v106 = v81;
  v107 = v80;
  v108 = v76;
  v109 = v79;
  v110 = v77;
  v111[128] = 1;
  v112 = v51;
  v113 = v52;
  v114 = v53;
  OUTLINED_FUNCTION_36();
  sub_2172E1074(v56, v57, v58);
  v59 = v48;
  sub_217751DE8();
  sub_2176EF244();
  nullsub_1(v116, v60);
  v61 = v48[4];
  memcpy(v117, v116, 0x161uLL);
  v62 = v96;
  sub_21733C5F0(v97, v96);
  v63 = qword_280BE4AB0;
  sub_217751DE8();
  if (v63 != -1)
  {
    OUTLINED_FUNCTION_47_33();
  }

  v64 = unk_280BE4AC0;
  v95 = qword_280BE4AB8;
  LODWORD(v94) = byte_280BE4AC8;
  sub_217751DE8();
  sub_217269D5C(v97);
  sub_21728373C(v115);
  v66 = v59[2];
  v65 = v59[3];
  memcpy(v118, v117, 0x168uLL);
  v118[47] = 0;
  v118[45] = v61;
  v118[46] = 0;
  nullsub_1(v118, v67);
  v68 = *(v59 + v49[17]);
  v69 = *(v59 + v49[18]);
  v70 = v49[20];
  v71 = *(v59 + v49[19]);
  v72 = *(v59 + v70);
  *(v62 + 312) = v95;
  *(v62 + 320) = v64;
  *(v62 + 328) = v94;
  *(v62 + 336) = v66;
  *(v62 + 344) = v65;
  memcpy((v62 + 352), v118, 0x180uLL);
  *(v62 + 736) = v68;
  *(v62 + 744) = v69;
  *(v62 + 752) = v71;
  *(v62 + 760) = v72;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void sub_2176E4CF8()
{
  switch(*v0)
  {
    case 1:
    case 8:
      OUTLINED_FUNCTION_44_10();
      break;
    case 2:
      OUTLINED_FUNCTION_80_18();
      break;
    case 3:
      OUTLINED_FUNCTION_85_17();
      break;
    case 4:
      OUTLINED_FUNCTION_79_21();
      break;
    case 6:
      OUTLINED_FUNCTION_21_49();
      break;
    default:
      return;
  }
}

MusicKit::CloudPersonalRecommendation::Attributes::DisplayInfo_optional __swiftcall MusicPersonalRecommendation._DisplayKind.convertToCloudDisplayInfo()()
{
  v2 = 0xEF666C6568537265;
  v3 = 0x766F43636973754DLL;
  switch(*v1)
  {
    case 1:
      v3 = 0xD000000000000013;
      v4 = "MusicNotesHeroShelf";
      goto LABEL_5;
    case 2:
      v3 = 0xD000000000000013;
      v4 = "MusicSuperHeroShelf";
LABEL_5:
      v2 = (v4 - 32) | 0x8000000000000000;
      break;
    case 3:
      v2 = 0x80000002177B58B0;
      v3 = 0xD00000000000001BLL;
      break;
    case 4:
      v2 = 0x80000002177B58D0;
      v3 = 0xD000000000000014;
      break;
    case 5:
      v2 = 0xEE00666C65685364;
      v3 = 0x726143636973754DLL;
      break;
    case 6:
      v2 = 0x80000002177B58F0;
      v3 = 0xD000000000000019;
      break;
    default:
      break;
  }

  *v0 = v3;
  v0[1] = v2;
  return result;
}

unint64_t sub_2176E4F54()
{
  result = qword_27CB2CDE8;
  if (!qword_27CB2CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CDE8);
  }

  return result;
}

unint64_t sub_2176E4FA8()
{
  result = qword_27CB2CDF0;
  if (!qword_27CB2CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CDF0);
  }

  return result;
}

unint64_t sub_2176E4FFC()
{
  result = qword_27CB2CE00;
  if (!qword_27CB2CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE00);
  }

  return result;
}

unint64_t sub_2176E5050()
{
  result = qword_27CB2CE10;
  if (!qword_27CB2CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE10);
  }

  return result;
}

unint64_t sub_2176E50A4()
{
  result = qword_27CB2CE18;
  if (!qword_27CB2CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE18);
  }

  return result;
}

unint64_t sub_2176E50F8()
{
  result = qword_27CB2CE20;
  if (!qword_27CB2CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE20);
  }

  return result;
}

unint64_t sub_2176E514C()
{
  result = qword_27CB2CE28;
  if (!qword_27CB2CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE28);
  }

  return result;
}

unint64_t sub_2176E51A0()
{
  result = qword_27CB2CE40;
  if (!qword_27CB2CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE40);
  }

  return result;
}

unint64_t sub_2176E51F4()
{
  result = qword_27CB2CE48;
  if (!qword_27CB2CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE48);
  }

  return result;
}

unint64_t sub_2176E5248()
{
  result = qword_27CB2CE50;
  if (!qword_27CB2CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE50);
  }

  return result;
}

unint64_t sub_2176E529C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25288, &qword_21775B588);
    sub_2172E1594();
    sub_2172E15E8();
    result = OUTLINED_FUNCTION_20_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5300(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB26F98, qword_217768A20);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5374(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24210, &unk_21776DB90);
    sub_21750EA2C(&unk_27CB28CE8);
    sub_21750EA2C(&unk_27CB28CF0);
    result = OUTLINED_FUNCTION_20_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5410(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244C0, &qword_21775D9C0);
    v3 = OUTLINED_FUNCTION_240();
    sub_2176E5374(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5490()
{
  result = qword_27CB2CE90;
  if (!qword_27CB2CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE90);
  }

  return result;
}

unint64_t sub_2176E54E4()
{
  result = qword_27CB2CEA0;
  if (!qword_27CB2CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEA0);
  }

  return result;
}

unint64_t sub_2176E5538()
{
  result = qword_27CB2CEB0;
  if (!qword_27CB2CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEB0);
  }

  return result;
}

unint64_t sub_2176E558C()
{
  result = qword_27CB2CEB8;
  if (!qword_27CB2CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEB8);
  }

  return result;
}

unint64_t sub_2176E55E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29AE8, &qword_217779EE0);
    sub_2176E5538();
    sub_2176E558C();
    result = OUTLINED_FUNCTION_20_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5644()
{
  result = qword_27CB2CEE0;
  if (!qword_27CB2CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEE0);
  }

  return result;
}

unint64_t sub_2176E5698()
{
  result = qword_27CB2CEF0;
  if (!qword_27CB2CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEF0);
  }

  return result;
}

unint64_t sub_2176E56EC()
{
  result = qword_27CB2CEF8;
  if (!qword_27CB2CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEF8);
  }

  return result;
}

unint64_t sub_2176E5740()
{
  result = qword_27CB2CF00;
  if (!qword_27CB2CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF00);
  }

  return result;
}

unint64_t sub_2176E5794()
{
  result = qword_27CB2CF08;
  if (!qword_27CB2CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF08);
  }

  return result;
}

unint64_t sub_2176E57EC()
{
  result = qword_27CB2CF10;
  if (!qword_27CB2CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF10);
  }

  return result;
}

unint64_t sub_2176E5844()
{
  result = qword_27CB2CF18;
  if (!qword_27CB2CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF18);
  }

  return result;
}

unint64_t sub_2176E589C()
{
  result = qword_27CB2CF20;
  if (!qword_27CB2CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF20);
  }

  return result;
}

unint64_t sub_2176E58F4()
{
  result = qword_27CB2CF28;
  if (!qword_27CB2CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF28);
  }

  return result;
}

unint64_t sub_2176E594C()
{
  result = qword_27CB2CF30;
  if (!qword_27CB2CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF30);
  }

  return result;
}

unint64_t sub_2176E59A4()
{
  result = qword_27CB2CF38;
  if (!qword_27CB2CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF38);
  }

  return result;
}

unint64_t sub_2176E59FC()
{
  result = qword_27CB2CF40;
  if (!qword_27CB2CF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2CF48, &qword_217797F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF40);
  }

  return result;
}

unint64_t sub_2176E5A64()
{
  result = qword_27CB2CF50;
  if (!qword_27CB2CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF50);
  }

  return result;
}

unint64_t sub_2176E5ABC()
{
  result = qword_27CB2CF58;
  if (!qword_27CB2CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF58);
  }

  return result;
}

unint64_t sub_2176E5B14()
{
  result = qword_27CB2CF60;
  if (!qword_27CB2CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF60);
  }

  return result;
}

unint64_t sub_2176E5B90()
{
  result = qword_27CB2CF68;
  if (!qword_27CB2CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF68);
  }

  return result;
}

unint64_t sub_2176E5BE8()
{
  result = qword_27CB2CF70;
  if (!qword_27CB2CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF70);
  }

  return result;
}

uint64_t sub_2176E5C3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_2176E5C7C(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2176E5D18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 136))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2176E5D6C(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendation.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2176E6024(_BYTE *result, int a2, int a3)
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

unint64_t sub_2176E60D4()
{
  result = qword_27CB2CF78;
  if (!qword_27CB2CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF78);
  }

  return result;
}

unint64_t sub_2176E612C()
{
  result = qword_27CB2CF80;
  if (!qword_27CB2CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF80);
  }

  return result;
}

unint64_t sub_2176E6184()
{
  result = qword_27CB2CF88;
  if (!qword_27CB2CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF88);
  }

  return result;
}

unint64_t sub_2176E61DC()
{
  result = qword_27CB2CF90;
  if (!qword_27CB2CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF90);
  }

  return result;
}

unint64_t sub_2176E6234()
{
  result = qword_27CB2CF98;
  if (!qword_27CB2CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF98);
  }

  return result;
}

unint64_t sub_2176E628C()
{
  result = qword_27CB2CFA0;
  if (!qword_27CB2CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFA0);
  }

  return result;
}

unint64_t sub_2176E62E4()
{
  result = qword_27CB2CFA8;
  if (!qword_27CB2CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFA8);
  }

  return result;
}

unint64_t sub_2176E633C()
{
  result = qword_27CB2CFB0;
  if (!qword_27CB2CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFB0);
  }

  return result;
}

unint64_t sub_2176E6394()
{
  result = qword_27CB2CFB8;
  if (!qword_27CB2CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFB8);
  }

  return result;
}

unint64_t sub_2176E63EC()
{
  result = qword_27CB2CFC0;
  if (!qword_27CB2CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFC0);
  }

  return result;
}

unint64_t sub_2176E6444()
{
  result = qword_27CB2CFC8;
  if (!qword_27CB2CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFC8);
  }

  return result;
}

unint64_t sub_2176E649C()
{
  result = qword_27CB2CFD0;
  if (!qword_27CB2CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFD0);
  }

  return result;
}

unint64_t sub_2176E64F4()
{
  result = qword_27CB2CFD8;
  if (!qword_27CB2CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFD8);
  }

  return result;
}

unint64_t sub_2176E654C()
{
  result = qword_27CB2CFE0;
  if (!qword_27CB2CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFE0);
  }

  return result;
}

unint64_t sub_2176E65A4()
{
  result = qword_27CB2CFE8;
  if (!qword_27CB2CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFE8);
  }

  return result;
}

unint64_t sub_2176E65FC()
{
  result = qword_27CB2CFF0;
  if (!qword_27CB2CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFF0);
  }

  return result;
}

unint64_t sub_2176E6650()
{
  result = qword_27CB2CFF8;
  if (!qword_27CB2CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFF8);
  }

  return result;
}

unint64_t sub_2176E66A4()
{
  result = qword_27CB2D000;
  if (!qword_27CB2D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D000);
  }

  return result;
}

unint64_t sub_2176E66F8()
{
  result = qword_27CB2D008;
  if (!qword_27CB2D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D008);
  }

  return result;
}

uint64_t sub_2176E674C()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

uint64_t sub_2176E67A4()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

uint64_t sub_2176E67FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_22_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(v9 + 104);

  return CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v11, v14, v9 + 288, v10, a5, v12, a7, a8, v9 + 160, a9);
}

uint64_t OUTLINED_FUNCTION_47_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48_23()
{
  result = *(v0 + 32);
  v2 = *(v0 + 16);
  return result;
}

double OUTLINED_FUNCTION_57_27()
{
  result = 0.0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_23()
{
  v2 = *(v0 + 24);

  return sub_2174BFD48();
}

uint64_t OUTLINED_FUNCTION_68_27()
{
  v2 = *(v0 + 112);

  return sub_2176E674C();
}

void *OUTLINED_FUNCTION_81_18()
{

  return memcpy((v0 + 464), (v0 + 160), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_83_19()
{

  return sub_217284868();
}

void OUTLINED_FUNCTION_94_17()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_96_16()
{

  return sub_2176E67A4();
}

uint64_t OUTLINED_FUNCTION_97_14()
{

  return sub_217284868();
}

uint64_t static CloudSocialProfile.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_217753058()) && (v5 = type metadata accessor for CloudSocialProfile(0), static CloudSocialProfile.Attributes.== infix(_:_:)(a1 + v5[5], a2 + v5[5])) && *(a1 + v5[6]) == *(a2 + v5[6]) && *(a1 + v5[7]) == *(a2 + v5[7]))
  {
    v6 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void CloudSocialProfile.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v31 = v3;
  v4 = type metadata accessor for CloudSocialProfile.Attributes(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D028, &qword_217798EE0);
  OUTLINED_FUNCTION_0_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_111();
  v17 = type metadata accessor for CloudSocialProfile(0);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  v24 = (v23 - v22);
  v25 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2176E7A40();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_2172E1C68();
    sub_217752EA8();
    *v24 = v32;
    v24[1] = v33;
    OUTLINED_FUNCTION_10_70();
    sub_2176E7C4C(v26, v27);
    sub_217752EA8();
    sub_2176E7A94(v11, v24 + v17[5]);
    sub_2176E7AF8();
    OUTLINED_FUNCTION_5_62();
    sub_217752E58();
    *(v24 + v17[6]) = 1;
    sub_2176E7B4C();
    OUTLINED_FUNCTION_5_62();
    sub_217752E58();
    *(v24 + v17[7]) = 1;
    sub_2176E7BA0();
    OUTLINED_FUNCTION_5_62();
    sub_217752E58();
    v28 = OUTLINED_FUNCTION_10_0();
    v29(v28);
    *(v24 + v17[8]) = 1;
    OUTLINED_FUNCTION_8_86();
    sub_2176E9174(v24, v31, v30);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2176E7BF4(v24, type metadata accessor for CloudSocialProfile);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudSocialProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D030, &qword_217798EE8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176E7A40();
  sub_2177532F8();
  v15 = v3[1];
  v23 = *v3;
  v24 = v15;
  v22 = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_4_111();
  sub_217752F88();
  if (!v2)
  {
    v16 = type metadata accessor for CloudSocialProfile(0);
    v17 = v16[5];
    LOBYTE(v23) = 1;
    type metadata accessor for CloudSocialProfile.Attributes(0);
    OUTLINED_FUNCTION_10_70();
    sub_2176E7C4C(v18, v19);
    sub_217752F88();
    LOBYTE(v23) = *(v3 + v16[6]);
    v22 = 2;
    sub_2174D7CC4();
    OUTLINED_FUNCTION_4_111();
    sub_217752F38();
    LOBYTE(v23) = *(v3 + v16[7]);
    v22 = 3;
    sub_2174D7C70();
    OUTLINED_FUNCTION_4_111();
    sub_217752F38();
    LOBYTE(v23) = *(v3 + v16[8]);
    v22 = 4;
    sub_2174D7C1C();
    OUTLINED_FUNCTION_4_111();
    sub_217752F38();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t CloudSocialProfile.init(id:attributes:relationships:views:meta:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, void *a7@<X8>)
{
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *a7 = a1;
  a7[1] = a2;
  v12 = type metadata accessor for CloudSocialProfile(0);
  result = sub_2176E7A94(a3, a7 + v12[5]);
  *(a7 + v12[6]) = v9;
  *(a7 + v12[7]) = v10;
  *(a7 + v12[8]) = v11;
  return result;
}

uint64_t CloudSocialProfile.Attributes.init(artwork:handle:isPrivate:isVerified:name:url:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  memcpy(a9, __src, 0x1B8uLL);
  *(a9 + 440) = a2;
  *(a9 + 448) = a3;
  *(a9 + 456) = a4;
  *(a9 + 457) = a5;
  *(a9 + 464) = a6;
  *(a9 + 472) = a7;
  v17 = a9 + *(type metadata accessor for CloudSocialProfile.Attributes(0) + 36);

  return sub_21751AF10(a8, v17);
}

uint64_t CloudSocialProfile.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_21738C4B0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

uint64_t CloudSocialProfile.Attributes.handle.getter()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudSocialProfile.Attributes.name.getter()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudSocialProfile.Attributes.url.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = type metadata accessor for CloudSocialProfile.Attributes(v2);
  return sub_21738C4B0(v1 + *(v3 + 36), v0, &unk_27CB277C0, &qword_217758DC0);
}

BOOL static CloudSocialProfile.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = sub_2177516D8();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_111();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v57 - v25;
  memcpy(v65, v6, sizeof(v65));
  OUTLINED_FUNCTION_11_3();
  memcpy(v27, v28, v29);
  memcpy(v63, v6, 0x1B8uLL);
  OUTLINED_FUNCTION_11_3();
  memcpy(v30, v31, v32);
  memcpy(v67, v6, 0x1B8uLL);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v67) == 1)
  {
    OUTLINED_FUNCTION_25_2(v62);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v62) == 1)
    {
      v57 = v10;
      v58 = v7;
      memcpy(v64, v63, sizeof(v64));
      sub_21738C4B0(v65, v61, &qword_27CB25000, &unk_21776EA00);
      sub_21738C4B0(v66, v61, &qword_27CB25000, &unk_21776EA00);
      sub_2171F0738(v64, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_10;
    }

LABEL_5:
    memcpy(v62, v63, sizeof(v62));
    sub_21738C4B0(v65, v64, &qword_27CB25000, &unk_21776EA00);
    sub_21738C4B0(v66, v64, &qword_27CB25000, &unk_21776EA00);
    v33 = &unk_27CB25008;
    v34 = &unk_21778F850;
    v35 = v62;
LABEL_6:
    sub_2171F0738(v35, v33, v34);
    return 0;
  }

  OUTLINED_FUNCTION_25_2(v61);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v61) == 1)
  {
    goto LABEL_5;
  }

  v57 = v10;
  v58 = v7;
  OUTLINED_FUNCTION_25_2(v59);
  OUTLINED_FUNCTION_25_2(v62);
  memcpy(v64, v63, sizeof(v64));
  sub_21738C4B0(v65, v60, &qword_27CB25000, &unk_21776EA00);
  sub_21738C4B0(v66, v60, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v38 = v37;
  sub_2171F0738(v59, &qword_27CB25000, &unk_21776EA00);
  memcpy(v60, v63, sizeof(v60));
  sub_2171F0738(v60, &qword_27CB25000, &unk_21776EA00);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v39 = *(v6 + 448);
  v40 = *(v4 + 448);
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    v41 = *(v6 + 440) == *(v4 + 440) && v39 == v40;
    if (!v41 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v42 = *(v6 + 456);
  v43 = *(v4 + 456);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v43 == 2 || ((v43 ^ v42) & 1) != 0)
    {
      return result;
    }
  }

  v44 = *(v6 + 457);
  v45 = *(v4 + 457);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }

    goto LABEL_29;
  }

  result = 0;
  if (v45 != 2 && ((v45 ^ v44) & 1) == 0)
  {
LABEL_29:
    v46 = *(v6 + 472);
    v47 = *(v4 + 472);
    if (v46)
    {
      if (!v47)
      {
        return 0;
      }

      v48 = *(v6 + 464) == *(v4 + 464) && v46 == v47;
      if (!v48 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v47)
    {
      return 0;
    }

    v49 = *(type metadata accessor for CloudSocialProfile.Attributes(0) + 36);
    v50 = *(v20 + 48);
    sub_21738C4B0(v6 + v49, v26, &unk_27CB277C0, &qword_217758DC0);
    sub_21738C4B0(v4 + v49, &v26[v50], &unk_27CB277C0, &qword_217758DC0);
    v51 = v58;
    if (__swift_getEnumTagSinglePayload(v26, 1, v58) == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v26[v50], 1, v51) == 1)
      {
        sub_2171F0738(v26, &unk_27CB277C0, &qword_217758DC0);
        return 1;
      }
    }

    else
    {
      sub_21738C4B0(v26, v2, &unk_27CB277C0, &qword_217758DC0);
      if (__swift_getEnumTagSinglePayload(&v26[v50], 1, v51) != 1)
      {
        v52 = v57;
        (*(v57 + 32))(v16, &v26[v50], v51);
        OUTLINED_FUNCTION_0_146();
        sub_2176E7C4C(v53, v54);
        v55 = sub_217751F08();
        v56 = *(v52 + 8);
        v56(v16, v51);
        v56(v2, v51);
        sub_2171F0738(v26, &unk_27CB277C0, &qword_217758DC0);
        return (v55 & 1) != 0;
      }

      (*(v57 + 8))(v2, v51);
    }

    v33 = &qword_27CB24840;
    v34 = &unk_217758DD0;
    v35 = v26;
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_2176E7A40()
{
  result = qword_280BE3BA8;
  if (!qword_280BE3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3BA8);
  }

  return result;
}

uint64_t sub_2176E7A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSocialProfile.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2176E7AF8()
{
  result = qword_280BE3B78;
  if (!qword_280BE3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B78);
  }

  return result;
}

unint64_t sub_2176E7B4C()
{
  result = qword_280BE3B90;
  if (!qword_280BE3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B90);
  }

  return result;
}

unint64_t sub_2176E7BA0()
{
  result = qword_280BE3B70;
  if (!qword_280BE3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B70);
  }

  return result;
}

uint64_t sub_2176E7BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2176E7C4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2176E7C94(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 0x7461766972507369;
      break;
    case 3:
      result = 0x6966697265567369;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176E7D5C(uint64_t a1)
{
  v2 = sub_2176E80A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E7D98(uint64_t a1)
{
  v2 = sub_2176E80A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudSocialProfile.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D038, &unk_217798EF0);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_111();
  v13 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2176E80A4();
  sub_2177532F8();
  OUTLINED_FUNCTION_11_3();
  memcpy(v14, v15, v16);
  OUTLINED_FUNCTION_11_3();
  memcpy(v17, v18, v19);
  sub_21738C4B0(&v31, v29, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D8);
  OUTLINED_FUNCTION_13_42();
  sub_217752F38();
  if (v1)
  {
    memcpy(v29, v30, sizeof(v29));
    sub_2171F0738(v29, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    memcpy(v29, v30, sizeof(v29));
    sub_2171F0738(v29, &qword_27CB25000, &unk_21776EA00);
    v20 = *(v3 + 440);
    v21 = *(v3 + 448);
    OUTLINED_FUNCTION_13_42();
    sub_217752EF8();
    v22 = *(v3 + 456);
    OUTLINED_FUNCTION_13_42();
    sub_217752F08();
    v23 = *(v3 + 457);
    OUTLINED_FUNCTION_13_42();
    sub_217752F08();
    v24 = *(v3 + 464);
    v25 = *(v3 + 472);
    OUTLINED_FUNCTION_13_42();
    sub_217752EF8();
    v26 = *(type metadata accessor for CloudSocialProfile.Attributes(0) + 36);
    sub_2177516D8();
    OUTLINED_FUNCTION_0_146();
    sub_2176E7C4C(v27, v28);
    OUTLINED_FUNCTION_13_42();
    sub_217752F38();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176E80A4()
{
  result = qword_280BE3BC8[0];
  if (!qword_280BE3BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE3BC8);
  }

  return result;
}

uint64_t CloudSocialProfile.Attributes.hash(into:)(const void *a1)
{
  v4 = sub_2177516D8();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_128();
  memcpy(v25, v1, sizeof(v25));
  v17 = *(v1 + 432);
  memcpy(v26, v1, sizeof(v26));
  v27 = v17;
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v26) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v24, v25, sizeof(v24));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(a1);
    sub_217751DE8();
    sub_217265A08(a1, v17);
  }

  if (*(v1 + 448))
  {
    v18 = *(v1 + 440);
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v1 + 456) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v1 + 457) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v1 + 472))
  {
    v19 = *(v1 + 464);
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v20 = type metadata accessor for CloudSocialProfile.Attributes(0);
  sub_21738C4B0(v1 + *(v20 + 36), v2, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    return OUTLINED_FUNCTION_120();
  }

  (*(v7 + 32))(v13, v2, v4);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_0_146();
  sub_2176E7C4C(v22, v23);
  sub_217751EB8();
  return (*(v7 + 8))(v13, v4);
}

void CloudSocialProfile.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v28 = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_128();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D040, &qword_217798F00);
  OUTLINED_FUNCTION_0_0(v29);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v12 = type metadata accessor for CloudSocialProfile.Attributes(0);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_1();
  v30 = v18 - v17;
  v19 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2176E80A4();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    sub_21751AE98(&qword_280BE42D0);
    OUTLINED_FUNCTION_24_2();
    memcpy(v30, v31, 0x1B8uLL);
    OUTLINED_FUNCTION_2_85(1);
    *(v30 + 440) = sub_217752E18();
    *(v30 + 448) = v20;
    OUTLINED_FUNCTION_2_85(2);
    *(v30 + 456) = sub_217752E28();
    OUTLINED_FUNCTION_2_85(3);
    *(v30 + 457) = sub_217752E28();
    OUTLINED_FUNCTION_2_85(4);
    *(v30 + 464) = sub_217752E18();
    *(v30 + 472) = v21;
    sub_2177516D8();
    OUTLINED_FUNCTION_0_146();
    sub_2176E7C4C(v22, v23);
    OUTLINED_FUNCTION_24_2();
    v24 = OUTLINED_FUNCTION_11_5();
    v25(v24);
    sub_21751AF10(v1, v30 + *(v12 + 36));
    OUTLINED_FUNCTION_7_86();
    sub_2176E9174(v30, v28, v26);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_9_87();
    sub_2176E7BF4(v30, v27);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E87FC(uint64_t a1)
{
  v2 = sub_2176E91D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E8838(uint64_t a1)
{
  v2 = sub_2176E91D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176E88D8(uint64_t a1)
{
  v2 = sub_2176E9224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E8914(uint64_t a1)
{
  v2 = sub_2176E9224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176E8A14(uint64_t a1)
{
  v2 = sub_2176E9278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E8A50(uint64_t a1)
{
  v2 = sub_2176E9278();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2176E8AD0()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_0_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_128();
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_2177532F8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudSocialProfile.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudSocialProfile.attributes.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = *(type metadata accessor for CloudSocialProfile(v2) + 20);
  OUTLINED_FUNCTION_7_86();
  return sub_2176E9174(v1 + v4, v0, v5);
}

uint64_t CloudSocialProfile.relationships.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudSocialProfile(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t CloudSocialProfile.views.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudSocialProfile(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudSocialProfile.meta.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudSocialProfile(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_2176E8D48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4B60 != -1)
  {
    swift_once();
  }

  v1 = unk_280BE4B70;
  v2 = byte_280BE4B78;
  *(v0 + 32) = qword_280BE4B68;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_280BE3B88 = v0;

  return sub_217751DE8();
}

uint64_t sub_2176E8E18(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176E8EAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176E8F00(uint64_t a1)
{
  v2 = sub_2176E7A40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E8F3C(uint64_t a1)
{
  v2 = sub_2176E7A40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudSocialProfile.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_217751FF8();
  v6 = type metadata accessor for CloudSocialProfile(0);
  v7 = v1 + v6[5];
  CloudSocialProfile.Attributes.hash(into:)(a1);
  v8 = *(v2 + v6[6]);
  sub_217753208();
  v9 = *(v2 + v6[7]);
  sub_217753208();
  v10 = *(v2 + v6[8]);
  return sub_217753208();
}

uint64_t sub_2176E9020(void (*a1)(_BYTE *))
{
  sub_2177531E8();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_2176E90D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t CloudSocialProfile.convertToCloudRawCurator()()
{
  OUTLINED_FUNCTION_8_86();
  sub_2176E9174(v0, v2, v1);
  type metadata accessor for CloudRawCurator();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2176E9174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_93();
  v8(v7);
  return a2;
}

unint64_t sub_2176E91D0()
{
  result = qword_27CB2D050;
  if (!qword_27CB2D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D050);
  }

  return result;
}

unint64_t sub_2176E9224()
{
  result = qword_27CB2D060;
  if (!qword_27CB2D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D060);
  }

  return result;
}

unint64_t sub_2176E9278()
{
  result = qword_27CB2D070;
  if (!qword_27CB2D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D070);
  }

  return result;
}

unint64_t sub_2176E9318()
{
  result = qword_27CB2D080;
  if (!qword_27CB2D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D080);
  }

  return result;
}

unint64_t sub_2176E9370()
{
  result = qword_27CB2D088;
  if (!qword_27CB2D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D088);
  }

  return result;
}

unint64_t sub_2176E93C8()
{
  result = qword_27CB2D090;
  if (!qword_27CB2D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D090);
  }

  return result;
}

void sub_2176E9534()
{
  type metadata accessor for CloudSocialProfile.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7C00);
    if (v1 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE7C08);
      if (v2 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE7BF8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *sub_2176E9670(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudSocialProfile.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSocialProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176E9908()
{
  result = qword_27CB2D0A0;
  if (!qword_27CB2D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0A0);
  }

  return result;
}

unint64_t sub_2176E9960()
{
  result = qword_27CB2D0A8;
  if (!qword_27CB2D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0A8);
  }

  return result;
}

unint64_t sub_2176E99B8()
{
  result = qword_27CB2D0B0;
  if (!qword_27CB2D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0B0);
  }

  return result;
}

unint64_t sub_2176E9A10()
{
  result = qword_27CB2D0B8;
  if (!qword_27CB2D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0B8);
  }

  return result;
}

unint64_t sub_2176E9A68()
{
  result = qword_27CB2D0C0;
  if (!qword_27CB2D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0C0);
  }

  return result;
}

unint64_t sub_2176E9AC0()
{
  result = qword_27CB2D0C8;
  if (!qword_27CB2D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0C8);
  }

  return result;
}

unint64_t sub_2176E9B18()
{
  result = qword_27CB2D0D0;
  if (!qword_27CB2D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0D0);
  }

  return result;
}

unint64_t sub_2176E9B70()
{
  result = qword_27CB2D0D8;
  if (!qword_27CB2D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0D8);
  }

  return result;
}

unint64_t sub_2176E9BC8()
{
  result = qword_280BE3BB8;
  if (!qword_280BE3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3BB8);
  }

  return result;
}

unint64_t sub_2176E9C20()
{
  result = qword_280BE3BC0;
  if (!qword_280BE3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3BC0);
  }

  return result;
}

unint64_t sub_2176E9C78()
{
  result = qword_280BE3B98;
  if (!qword_280BE3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B98);
  }

  return result;
}

unint64_t sub_2176E9CD0()
{
  result = qword_280BE3BA0;
  if (!qword_280BE3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3BA0);
  }

  return result;
}

uint64_t sub_2176E9D84(uint64_t a1)
{
  v2 = sub_2176E9E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E9DC0(uint64_t a1)
{
  v2 = sub_2176E9E40();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2176E9E40()
{
  result = qword_27CB2D0E8;
  if (!qword_27CB2D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0E8);
  }

  return result;
}

uint64_t sub_2176E9F14(uint64_t a1)
{
  v2 = sub_2176E9FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176E9F50(uint64_t a1)
{
  v2 = sub_2176E9FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2176E9FD0()
{
  result = qword_27CB2D0F8;
  if (!qword_27CB2D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0F8);
  }

  return result;
}

uint64_t sub_2176EA044(uint64_t a1)
{
  v2 = sub_2176EA100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176EA080(uint64_t a1)
{
  v2 = sub_2176EA100();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2176EA100()
{
  result = qword_27CB2D108;
  if (!qword_27CB2D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D108);
  }

  return result;
}

uint64_t sub_2176EA174(uint64_t a1)
{
  v2 = sub_2176EA32C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176EA1B0(uint64_t a1)
{
  v2 = sub_2176EA32C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2176EA230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &a9 - v35;
  v37 = *(v25 + 24);
  v38 = *(v25 + 32);
  v39 = OUTLINED_FUNCTION_45_4();
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v36, v28);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176EA32C()
{
  result = qword_27CB2D118;
  if (!qword_27CB2D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D118);
  }

  return result;
}

uint64_t CloudPersonalRecommendation.Item.id.getter()
{
  v2 = type metadata accessor for CloudStation(0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v7 = type metadata accessor for CloudPlaylist(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  v14 = (v13 - v12);
  v15 = type metadata accessor for CloudAlbum(0);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v22 = (v21 - v20);
  v23 = type metadata accessor for CloudPersonalRecommendation.Item();
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_1_133();
  v28 = OUTLINED_FUNCTION_1_5();
  sub_2176EDFE8(v28, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2176EDF8C(v1, v0);
      v38 = *v0;
      v39 = v0[1];
      sub_217751DE8();
      v34 = v0;
      v37 = type metadata accessor for CloudStation;
      goto LABEL_7;
    }

    v31 = type metadata accessor for CloudPlaylist;
    sub_2176EDF8C(v1, v14);
    v32 = *v14;
    v33 = v14[1];
    sub_217751DE8();
    v34 = v14;
  }

  else
  {
    v31 = type metadata accessor for CloudAlbum;
    sub_2176EDF8C(v1, v22);
    v35 = *v22;
    v36 = v22[1];
    sub_217751DE8();
    v34 = v22;
  }

  v37 = v31;
LABEL_7:
  sub_2176EAA28(v34, v37);
  return OUTLINED_FUNCTION_1_5();
}

uint64_t type metadata accessor for CloudPersonalRecommendation.Item()
{
  result = qword_27CB2D1A0;
  if (!qword_27CB2D1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CloudPersonalRecommendation.Item.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v56 = v3;
  v4 = OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for CloudStation(v4);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_81();
  v55 = v10;
  v11 = OUTLINED_FUNCTION_206();
  v12 = type metadata accessor for CloudPlaylist(v11);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = type metadata accessor for CloudAlbum(0);
  v21 = OUTLINED_FUNCTION_45_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  OUTLINED_FUNCTION_11_2();
  v25 = type metadata accessor for CloudPersonalRecommendation.Item();
  v26 = OUTLINED_FUNCTION_43(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  OUTLINED_FUNCTION_6_1();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v55 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v55 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D120, &qword_2177997B0);
  OUTLINED_FUNCTION_45_0(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44, v45);
  OUTLINED_FUNCTION_70_0();
  v47 = *(v46 + 56);
  OUTLINED_FUNCTION_26_44();
  sub_2176EDFE8(v1, v0);
  sub_2176EDFE8(v56, v0 + v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_1_133();
      sub_2176EDFE8(v0, v36);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_14_66();
        sub_2176EDF8C(v0 + v47, v19);
        static CloudPlaylist.== infix(_:_:)();
        sub_2176EAA28(v19, v1);
        v49 = v36;
LABEL_13:
        v53 = v1;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_3_121();
      v51 = v36;
    }

    else
    {
      OUTLINED_FUNCTION_1_133();
      sub_2176EDFE8(v0, v32);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v52 = v55;
        sub_2176EDF8C(v0 + v47, v55);
        static CloudStation.== infix(_:_:)();
        sub_2176EAA28(v52, type metadata accessor for CloudStation);
        v49 = v32;
        v53 = type metadata accessor for CloudStation;
LABEL_14:
        sub_2176EAA28(v49, v53);
        OUTLINED_FUNCTION_13_71();
        sub_2176EAA28(v0, v54);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_2_132();
      v51 = v32;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_133();
    sub_2176EDFE8(v0, v40);
    if (!swift_getEnumCaseMultiPayload())
    {
      v1 = type metadata accessor for CloudAlbum;
      sub_2176EDF8C(v0 + v47, v2);
      static CloudAlbum.== infix(_:_:)();
      sub_2176EAA28(v2, type metadata accessor for CloudAlbum);
      v49 = v40;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_147();
    v51 = v40;
  }

  sub_2176EAA28(v51, v50);
  sub_2171F0738(v0, &qword_27CB2D120, &qword_2177997B0);
LABEL_15:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176EAA28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void CloudPersonalRecommendation.Item.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v81 = type metadata accessor for CloudStation(0);
  v6 = OUTLINED_FUNCTION_43(v81);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_31_12();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_11_2();
  v22 = type metadata accessor for CloudPersonalRecommendation.Item();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_1_133();
  sub_2176EDFE8(v0, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_24_50();
      sub_2176EDF8C(v29, v3);
      MEMORY[0x21CEA3550](1);
      v31 = *v3;
      v32 = v3[1];
      sub_217751FF8();
      v33 = v11[5];
      OUTLINED_FUNCTION_57_12();
      CloudPlaylist.Attributes.hash(into:)();
      v34 = v11[6];
      v35 = OUTLINED_FUNCTION_57_12();
      sub_217264C3C(v35);
      v36 = v11[7];
      v37 = OUTLINED_FUNCTION_57_12();
      sub_21726492C(v37);
      v38 = v11[8];
      v39 = OUTLINED_FUNCTION_57_12();
      sub_2172647B8(v39);
      v40 = v3;
    }

    else
    {
      v22 = type metadata accessor for CloudStation;
      sub_2176EDF8C(v29, v2);
      MEMORY[0x21CEA3550](2);
      v45 = *v2;
      v46 = v2[1];
      sub_217751FF8();
      v47 = v2 + v81[5];
      CloudStation.Attributes.hash(into:)();
      v48 = *(v2 + v81[6]);
      sub_217753208();
      v49 = *(v2 + v81[7]);
      sub_217753208();
      v50 = v2 + v81[8];
      sub_217263DE0(v5);
      v40 = v2;
    }

    v51 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v29, v1);
    MEMORY[0x21CEA3550](0);
    v41 = *v1;
    v42 = v1[1];
    sub_217751FF8();
    v43 = v1 + v17[5];
    CloudAlbum.Attributes.hash(into:)();
    v44 = v1 + v17[6];
    sub_21726504C(v5);
    sub_2171F5110(v1 + v17[7], v83, &qword_27CB24AA8, &qword_217759080);
    if (v83[2] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v82, v83, sizeof(v82));
      sub_217753208();
      sub_21726473C(v5, v52, v53, v54, v55, v56, v57, v58);
      sub_2172640D4(v5, v59, v60, v61, v62, v63, v64, v65);
      sub_2172640D4(v5, v66, v67, v68, v69, v70, v71, v72);
      sub_217264414(v5, v73, v74, v75, v76, v77, v78, v79);
      sub_2172845E8(v82);
    }

    v80 = v1 + v17[8];
    sub_217264150(v5);
    OUTLINED_FUNCTION_0_147();
    v40 = v1;
  }

  sub_2176EAA28(v40, v51);
  OUTLINED_FUNCTION_13();
}

uint64_t CloudPersonalRecommendation.Item.hashValue.getter()
{
  sub_2177531E8();
  CloudPersonalRecommendation.Item.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176EAE28()
{
  sub_2177531E8();
  CloudPersonalRecommendation.Item.hash(into:)();
  return sub_217753238();
}

void CloudPersonalRecommendation.Item.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v53 = v1;
  v54 = v6;
  v7 = type metadata accessor for CloudStation.Attributes(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_81();
  v52 = v12;
  v13 = OUTLINED_FUNCTION_206();
  v51 = type metadata accessor for CloudStation(v13);
  v14 = OUTLINED_FUNCTION_43(v51);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_11_2();
  v18 = type metadata accessor for CloudPlaylist.Attributes(0);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v23 = OUTLINED_FUNCTION_7_34();
  v24 = type metadata accessor for CloudPlaylist(v23);
  v25 = OUTLINED_FUNCTION_43(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_1();
  v29 = OUTLINED_FUNCTION_31_12();
  v30 = type metadata accessor for CloudAlbum.Attributes(v29);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v35 = type metadata accessor for CloudAlbum(0);
  v36 = OUTLINED_FUNCTION_43(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  v43 = type metadata accessor for CloudPersonalRecommendation.Item();
  v44 = OUTLINED_FUNCTION_43(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44, v47);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_1_133();
  sub_2176EDFE8(v53, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_14_66();
      sub_2176EDF8C(v3, v5);
      sub_2171FF30C(v54, v55);
      sub_2176EDFE8(v5 + *(v24 + 20), v4);
      sub_217385674();
      OUTLINED_FUNCTION_45_1();
      v49 = v5;
    }

    else
    {
      OUTLINED_FUNCTION_23_56();
      sub_2176EDF8C(v3, v2);
      sub_2171FF30C(v54, v55);
      sub_2176EDFE8(v2 + *(v51 + 20), v52);
      sub_2173858E4();
      OUTLINED_FUNCTION_45_1();
      v49 = v2;
    }

    v50 = v42;
  }

  else
  {
    OUTLINED_FUNCTION_25_58();
    sub_2176EDF8C(v3, v42);
    sub_2171FF30C(v54, v55);
    sub_2176EDFE8(v42 + *(v35 + 20), v0);
    sub_217385620();
    OUTLINED_FUNCTION_45_1();
    v49 = OUTLINED_FUNCTION_1_5();
  }

  sub_2176EAA28(v49, v50);
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  v54 = v3;
  v4 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  *(&v53 + 1) = v9;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_71_0();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_7_34();
  v22 = type metadata accessor for CloudPersonalRecommendation.Item();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_11_2();
  v55 = sub_217751DC8();
  OUTLINED_FUNCTION_1_133();
  v27 = OUTLINED_FUNCTION_1_5();
  sub_2176EDFE8(v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    v33 = OUTLINED_FUNCTION_45_4();
    sub_2176EDF8C(v33, v34);
    sub_2171F5110(v2 + *(v17 + 24), v56, &qword_27CB243C8, &unk_21775D390);
    if (v57 == 1)
    {
      OUTLINED_FUNCTION_0_147();
      sub_2176EAA28(v2, v35);
      v31 = &qword_27CB243C8;
      v32 = &unk_21775D390;
      goto LABEL_7;
    }

    sub_2171F0738(v56, &qword_27CB243C8, &unk_21775D390);
    sub_2171FF30C(v54, v56);
    v42 = sub_217383708(&unk_28295E588);
    Dictionary<>.init(from:skippingValuesFor:)(v56, v42);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_147();
    v41 = v2;
LABEL_15:
    sub_2176EAA28(v41, v40);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_105();
    v36 = *(&v53 + 1);
    sub_2176EDF8C(v0, *(&v53 + 1));
    if (*(*(&v53 + 1) + *(v4 + 24)))
    {
      OUTLINED_FUNCTION_2_132();
      sub_2176EAA28(*(&v53 + 1), v37);
      goto LABEL_16;
    }

    sub_2171FF30C(v54, v56);
    if (qword_280BE4D60 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_84();
    v43 = sub_217751DE8();
    sub_217383748(v43, v44, v45, v46, v47, v48, v49, v50, v53, v54, v55, v56[0], v56[1], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
    v52 = v51;

    Dictionary<>.init(from:skippingValuesFor:)(v56, v52);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_132();
    v41 = v36;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_107();
  sub_2176EDF8C(v0, v1);
  sub_2171F5110(v1 + *(v11 + 24), v56, &qword_27CB24358, &unk_21775D510);
  if (v57 != 1)
  {

    sub_2171F0738(v56, &qword_27CB24358, &unk_21775D510);
    sub_2171FF30C(v54, v56);
    OUTLINED_FUNCTION_84();
    v38 = sub_217751DE8();
    v39 = sub_217383728(v38);

    Dictionary<>.init(from:skippingValuesFor:)(v56, v39);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_121();
    v41 = v1;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_121();
  sub_2176EAA28(v1, v30);
  v31 = &qword_27CB24358;
  v32 = &unk_21775D510;
LABEL_7:
  sub_2171F0738(v56, v31, v32);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  *(&v51 + 1) = v3;
  v4 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  *&v51 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_71_0();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_7_34();
  v22 = type metadata accessor for CloudPersonalRecommendation.Item();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_11_2();
  v52 = sub_217751DC8();
  OUTLINED_FUNCTION_1_133();
  v27 = OUTLINED_FUNCTION_1_5();
  sub_2176EDFE8(v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    v33 = OUTLINED_FUNCTION_45_4();
    sub_2176EDF8C(v33, v34);
    sub_2171F5110(v2 + *(v17 + 28), v53, &qword_27CB24AA8, &qword_217759080);
    if (v54 == 1)
    {
      OUTLINED_FUNCTION_0_147();
      sub_2176EAA28(v2, v35);
      v31 = &qword_27CB24AA8;
      v32 = &qword_217759080;
      goto LABEL_7;
    }

    sub_2171F0738(v53, &qword_27CB24AA8, &qword_217759080);
    sub_2171FF30C(*(&v51 + 1), v53);
    v42 = sub_2173839EC(&unk_28295E650);
    Dictionary<>.init(from:skippingValuesFor:)(v53, v42);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_147();
    v41 = v2;
LABEL_15:
    sub_2176EAA28(v41, v40);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_105();
    v36 = v0;
    v37 = v51;
    sub_2176EDF8C(v36, v51);
    if (*(v51 + *(v4 + 28)))
    {
      OUTLINED_FUNCTION_2_132();
      sub_2176EAA28(v51, v38);
      goto LABEL_16;
    }

    sub_2171FF30C(*(&v51 + 1), v53);
    if (qword_27CB23E58 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C988, v43, v44, v45, v46, v47, v48, v49, v51, v52, v53[0], v53[1], v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    Dictionary<>.init(from:skippingValuesFor:)(v53, v50);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_132();
    v41 = v37;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_107();
  sub_2176EDF8C(v0, v1);
  sub_2171F5110(v1 + *(v11 + 28), v53, &qword_27CB24350, &unk_21776A5D0);
  if (v54 != 1)
  {

    sub_2171F0738(v53, &qword_27CB24350, &unk_21776A5D0);
    sub_2171FF30C(*(&v51 + 1), v53);
    v39 = sub_217383A0C(&unk_28295F028);
    Dictionary<>.init(from:skippingValuesFor:)(v53, v39);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_121();
    v41 = v1;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_121();
  sub_2176EAA28(v1, v30);
  v31 = &qword_27CB24350;
  v32 = &unk_21776A5D0;
LABEL_7:
  sub_2171F0738(v53, v31, v32);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v41 = v3;
  v4 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  v40 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = OUTLINED_FUNCTION_7_34();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v22 = type metadata accessor for CloudPersonalRecommendation.Item();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  sub_217751DC8();
  OUTLINED_FUNCTION_1_133();
  v27 = OUTLINED_FUNCTION_135();
  sub_2176EDFE8(v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v0, v2);
    v34 = *(v17 + 32);
    sub_2171F5110(v2 + v34, &v43, &qword_27CB243C0, &unk_21775D3A0);
    if (v44 == 1)
    {
      OUTLINED_FUNCTION_0_147();
      sub_2176EAA28(v2, v35);
      v32 = &qword_27CB243C0;
      v33 = &unk_21775D3A0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v41, v42);
    OUTLINED_FUNCTION_48_0(v2 + v34);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_217387350();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_147();
    v39 = v2;
LABEL_13:
    sub_2176EAA28(v39, v38);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_105();
    sub_2176EDF8C(v0, v40);
    v36 = *(v4 + 32);
    sub_2171F5110(v40 + v36, &v43, &qword_27CB24340, &unk_2177650B0);
    if (v44 == 1)
    {
      OUTLINED_FUNCTION_2_132();
      sub_2176EAA28(v40, v37);
      v32 = &qword_27CB24340;
      v33 = &unk_2177650B0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v41, v42);
    OUTLINED_FUNCTION_48_0(v40 + v36);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_2173876D0();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_132();
    v39 = v40;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_107();
  sub_2176EDF8C(v0, v1);
  v30 = *(v11 + 32);
  sub_2171F5110(v1 + v30, &v43, &qword_27CB24348, &unk_21775D520);
  if (v44 != 1)
  {

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v41, v42);
    OUTLINED_FUNCTION_48_0(v1 + v30);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_217387380();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_121();
    v39 = v1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_121();
  sub_2176EAA28(v1, v31);
  v32 = &qword_27CB24348;
  v33 = &unk_21775D520;
LABEL_9:
  sub_2171F0738(&v43, v32, v33);
LABEL_14:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v1;
  v34 = v6;
  v35 = v5;
  v7 = type metadata accessor for CloudStation(0);
  v8 = OUTLINED_FUNCTION_43(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v12 = type metadata accessor for CloudPlaylist(0);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = OUTLINED_FUNCTION_7_34();
  v18 = type metadata accessor for CloudAlbum(v17);
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = type metadata accessor for CloudPersonalRecommendation.Item();
  v27 = OUTLINED_FUNCTION_43(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_1_133();
  sub_2176EDFE8(v4, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_14_66();
      sub_2176EDF8C(v0, v3);
      sub_2173884CC(v3 + *(v12 + 20), v34, v35);
      OUTLINED_FUNCTION_45_1();
      v32 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_23_56();
      sub_2176EDF8C(v0, v2);
      sub_2173885F8(v2 + *(v7 + 20), v34, v35);
      OUTLINED_FUNCTION_45_1();
      v32 = v2;
    }

    v33 = v25;
  }

  else
  {
    OUTLINED_FUNCTION_25_58();
    sub_2176EDF8C(v0, v25);
    sub_217388478(v25 + *(v18 + 20), v34, v35);
    OUTLINED_FUNCTION_45_1();
    v32 = OUTLINED_FUNCTION_1_5();
  }

  sub_2176EAA28(v32, v33);
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v15 = OUTLINED_FUNCTION_60_1(v13, v14);
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_81();
  v52 = v20;
  v21 = OUTLINED_FUNCTION_206();
  v22 = type metadata accessor for CloudPlaylist(v21);
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v27 = OUTLINED_FUNCTION_7_34();
  v28 = type metadata accessor for CloudAlbum(v27);
  v29 = OUTLINED_FUNCTION_43(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v33 = type metadata accessor for CloudPersonalRecommendation.Item();
  v34 = OUTLINED_FUNCTION_43(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_133();
  v38 = OUTLINED_FUNCTION_135();
  sub_2176EDFE8(v38, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v10, v12);
    sub_2171F5110(v12 + *(v28 + 24), v54, &qword_27CB243C8, &unk_21775D390);
    OUTLINED_FUNCTION_54();
    if (!v41)
    {

      memcpy(v55, v54, 0x300uLL);
      OUTLINED_FUNCTION_52_15();
      sub_217388868();
      OUTLINED_FUNCTION_98();
      sub_21726A4EC(v55);
      OUTLINED_FUNCTION_0_147();
      v47 = v12;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_147();
    sub_2176EAA28(v12, v45);
    v43 = &qword_27CB243C8;
    v44 = &unk_21775D390;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_6_107();
    sub_2176EDF8C(v10, v11);
    sub_2171F5110(v11 + *(v22 + 24), v54, &qword_27CB24358, &unk_21775D510);
    OUTLINED_FUNCTION_54();
    if (!v41)
    {

      memcpy(v55, v54, 0x380uLL);
      OUTLINED_FUNCTION_52_15();
      sub_2173888A8();
      OUTLINED_FUNCTION_98();
      sub_21726A354(v55);
      OUTLINED_FUNCTION_3_121();
      v47 = v11;
LABEL_14:
      sub_2176EAA28(v47, v46);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_121();
    sub_2176EAA28(v11, v42);
    v43 = &qword_27CB24358;
    v44 = &unk_21775D510;
LABEL_11:
    sub_2171F0738(v54, v43, v44);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_105();
  sub_2176EDF8C(v10, v52);
  if (*(v52 + *(v15 + 24)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v53, v55);
    v48 = sub_2174D4AA8(v55);
    if (!a10)
    {
      v49 = v48;
      v50 = sub_217751DE8();
      sub_2174D37FC(v50, v49);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_132();
  sub_2176EAA28(v52, v51);
LABEL_18:
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v15 = OUTLINED_FUNCTION_60_1(v13, v14);
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_81();
  v52 = v20;
  v21 = OUTLINED_FUNCTION_206();
  v22 = type metadata accessor for CloudPlaylist(v21);
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v27 = OUTLINED_FUNCTION_7_34();
  v28 = type metadata accessor for CloudAlbum(v27);
  v29 = OUTLINED_FUNCTION_43(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v33 = type metadata accessor for CloudPersonalRecommendation.Item();
  v34 = OUTLINED_FUNCTION_43(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_133();
  v38 = OUTLINED_FUNCTION_135();
  sub_2176EDFE8(v38, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v10, v12);
    sub_2171F5110(v12 + *(v28 + 28), v54, &qword_27CB24AA8, &qword_217759080);
    OUTLINED_FUNCTION_54();
    if (!v41)
    {

      memcpy(v55, v54, 0x200uLL);
      OUTLINED_FUNCTION_52_15();
      sub_217388C10();
      OUTLINED_FUNCTION_98();
      sub_2172845E8(v55);
      OUTLINED_FUNCTION_0_147();
      v47 = v12;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_147();
    sub_2176EAA28(v12, v45);
    v43 = &qword_27CB24AA8;
    v44 = &qword_217759080;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_6_107();
    sub_2176EDF8C(v10, v11);
    sub_2171F5110(v11 + *(v22 + 28), v54, &qword_27CB24350, &unk_21776A5D0);
    OUTLINED_FUNCTION_54();
    if (!v41)
    {

      memcpy(v55, v54, 0x200uLL);
      OUTLINED_FUNCTION_52_15();
      sub_217388C50();
      OUTLINED_FUNCTION_98();
      sub_21726A300(v55);
      OUTLINED_FUNCTION_3_121();
      v47 = v11;
LABEL_14:
      sub_2176EAA28(v47, v46);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_121();
    sub_2176EAA28(v11, v42);
    v43 = &qword_27CB24350;
    v44 = &unk_21776A5D0;
LABEL_11:
    sub_2171F0738(v54, v43, v44);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_105();
  sub_2176EDF8C(v10, v52);
  if (*(v52 + *(v15 + 28)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v53, v55);
    v48 = sub_2174D53F4(v55);
    if (!a10)
    {
      v49 = v48;
      v50 = sub_217751DE8();
      sub_2174D37FC(v50, v49);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_132();
  sub_2176EAA28(v52, v51);
LABEL_18:
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  v39 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = OUTLINED_FUNCTION_7_34();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v22 = type metadata accessor for CloudPersonalRecommendation.Item();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_11_2();
  if (*(v3 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_133();
  v27 = OUTLINED_FUNCTION_1_5();
  sub_2176EDFE8(v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v3, v1);
    sub_2171F5110(v1 + *(v17 + 32), v40, &qword_27CB243C0, &unk_21775D3A0);
    if (v41 == 1)
    {
      OUTLINED_FUNCTION_0_147();
      sub_2176EAA28(v1, v35);
      v33 = &qword_27CB243C0;
      v34 = &unk_21775D3A0;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_43_8();
    sub_217388E48();
    OUTLINED_FUNCTION_75_7();
    sub_21726A498(v42);
    OUTLINED_FUNCTION_0_147();
    v38 = v1;
LABEL_15:
    sub_2176EAA28(v38, v37);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_105();
    sub_2176EDF8C(v3, v39);
    sub_2171F5110(v39 + *(v4 + 32), v40, &qword_27CB24340, &unk_2177650B0);
    if (v41 == 1)
    {
      OUTLINED_FUNCTION_2_132();
      sub_2176EAA28(v39, v36);
      v33 = &qword_27CB24340;
      v34 = &unk_2177650B0;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_43_8();
    sub_217388F30();
    OUTLINED_FUNCTION_75_7();
    sub_21726A258(v42);
    OUTLINED_FUNCTION_2_132();
    v38 = v39;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_107();
  v30 = OUTLINED_FUNCTION_45_4();
  sub_2176EDF8C(v30, v31);
  sub_2171F5110(v0 + *(v11 + 32), v40, &qword_27CB24348, &unk_21775D520);
  if (v41 != 1)
  {

    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_43_8();
    sub_217388E88();
    OUTLINED_FUNCTION_75_7();
    sub_21726A2AC(v42);
    OUTLINED_FUNCTION_3_121();
    v38 = v0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_121();
  sub_2176EAA28(v0, v32);
  v33 = &qword_27CB24348;
  v34 = &unk_21775D520;
LABEL_11:
  sub_2171F0738(v40, v33, v34);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176EC80C(uint64_t a1)
{
  v2 = sub_2176EDF38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176EC848(uint64_t a1)
{
  v2 = sub_2176EDF38();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPersonalRecommendation.Item.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v5 = v4;
  v71 = v6;
  v67 = sub_217752B38();
  v7 = OUTLINED_FUNCTION_0_0(v67);
  v70 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v11);
  OUTLINED_FUNCTION_81();
  v69 = v12;
  v13 = OUTLINED_FUNCTION_206();
  v14 = type metadata accessor for CloudStation(v13);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_81();
  v68 = v19;
  v20 = OUTLINED_FUNCTION_206();
  v21 = type metadata accessor for CloudPlaylist(v20);
  v22 = OUTLINED_FUNCTION_45_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = type metadata accessor for CloudAlbum(0);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  OUTLINED_FUNCTION_11_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D128, &qword_2177997B8);
  OUTLINED_FUNCTION_0_0(v34);
  v72 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_167();
  v40 = type metadata accessor for CloudPersonalRecommendation.Item();
  v41 = OUTLINED_FUNCTION_43(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  OUTLINED_FUNCTION_8_4();
  v45 = v5[4];
  v79 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2176EDF38();
  sub_2177532C8();
  if (!v0)
  {
    v66 = v28;
    v73 = v3;
    sub_21733BE84();
    sub_217752EA8();
    v46 = v34;
    v48 = v74;
    v47 = v75;
    v49 = v76;
    if (qword_280BE7F08 != -1)
    {
      swift_once();
    }

    if (static Array<A>.~= infix(_:_:)(off_280BE7F10, &v74))
    {
      goto LABEL_15;
    }

    if (qword_280BE5740 != -1)
    {
      swift_once();
    }

    v50 = qword_280BE5748 == v48 && unk_280BE5750 == v47;
    if (v50 || (sub_217753058() & 1) != 0)
    {
LABEL_15:

      OUTLINED_FUNCTION_46_34();
      CloudAlbum.init(from:)();
      (*(v72 + 8))(v2, v46);
      OUTLINED_FUNCTION_4_128();
      v51 = v73;
      sub_2176EDF8C(v1, v73);
    }

    else
    {
      if (qword_280BE4610 != -1)
      {
        swift_once();
      }

      v74 = v48;
      v75 = v47;
      v76 = v49;
      v65 = v2;
      if (static Array<A>.~= infix(_:_:)(off_280BE4618[0], &v74))
      {
        goto LABEL_28;
      }

      if (qword_280BE4788 != -1)
      {
        swift_once();
      }

      v53 = qword_280BE4790 == v48 && *algn_280BE4798 == v47;
      if (v53 || (sub_217753058() & 1) != 0)
      {
LABEL_28:

        OUTLINED_FUNCTION_46_34();
        CloudPlaylist.init(from:)();
        v54 = OUTLINED_FUNCTION_55_27();
        v55(v54);
        OUTLINED_FUNCTION_6_107();
        v51 = v73;
        sub_2176EDF8C(v66, v73);
        v52 = v71;
        goto LABEL_17;
      }

      if (qword_280BE4DA0 != -1)
      {
        swift_once();
      }

      v74 = v48;
      v75 = v47;
      v76 = v49;
      if (!static Array<A>.~= infix(_:_:)(off_280BE4DA8, &v74))
      {
        v58 = v46;
        v59 = v47;
        v47 = v79;
        v60 = v79[4];
        __swift_project_boxed_opaque_existential_1(v79, v79[3]);
        sub_217753298();
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177ADC50);
        v77 = 34;
        v78 = 0xE100000000000000;
        MEMORY[0x21CEA23B0](v48, v59);
        MEMORY[0x21CEA23B0](34, 0xE100000000000000);

        MEMORY[0x21CEA23B0](v77, v78);

        MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177B5A30);
        sub_217752B08();
        v61 = sub_217752B48();
        swift_allocError();
        v63 = v62;
        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
        *v63 = v40;
        (*(v70 + 16))(v63 + v64, v69, v67);
        (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
        swift_willThrow();
        (*(v70 + 8))(v69, v67);
        (*(v72 + 8))(v65, v58);
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_46_34();
      CloudStation.init(from:)();
      v56 = OUTLINED_FUNCTION_55_27();
      v57(v56);
      OUTLINED_FUNCTION_5_105();
      v51 = v73;
      sub_2176EDF8C(v68, v73);
    }

    v52 = v71;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    sub_2176EDF8C(v51, v52);
    goto LABEL_4;
  }

  v47 = v5;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v47);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPersonalRecommendation.Item.encode(to:)()
{
  v4 = OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for CloudStation(v4);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v13 = type metadata accessor for CloudPlaylist(0);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v18 = type metadata accessor for CloudAlbum(0);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71_0();
  v23 = type metadata accessor for CloudPersonalRecommendation.Item();
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_1_133();
  v28 = OUTLINED_FUNCTION_45_4();
  sub_2176EDFE8(v28, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2176EDF8C(v3, v12);
      CloudStation.encode(to:)(v0);
      v31 = v12;
      v32 = type metadata accessor for CloudStation;
      return sub_2176EAA28(v31, v32);
    }

    OUTLINED_FUNCTION_24_50();
    sub_2176EDF8C(v3, v1);
    CloudPlaylist.encode(to:)();
    v31 = v1;
  }

  else
  {
    v12 = type metadata accessor for CloudAlbum;
    sub_2176EDF8C(v3, v2);
    CloudAlbum.encode(to:)();
    v31 = v2;
  }

  v32 = v12;
  return sub_2176EAA28(v31, v32);
}

void MusicPersonalRecommendation.Item.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  v170 = v0;
  v171 = v1;
  v3 = v2;
  v172 = v4;
  v6 = v5;
  v174 = v7;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v8 = OUTLINED_FUNCTION_43(v160);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_6_1();
  v161 = v12 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v162 = &v152 - v16;
  v17 = OUTLINED_FUNCTION_206();
  v18 = type metadata accessor for CloudStation(v17);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_81();
  v165 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v25 = OUTLINED_FUNCTION_43(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_6_1();
  v159 = v29 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v152 - v33;
  v35 = type metadata accessor for CloudPlaylist(0);
  v36 = OUTLINED_FUNCTION_45_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  OUTLINED_FUNCTION_81();
  v164 = v40;
  v173 = v3;
  v169 = *(v3 - 8);
  v41 = *(v169 + 64);
  MEMORY[0x28223BE20](v42, v43);
  OUTLINED_FUNCTION_81();
  v167 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v46 = OUTLINED_FUNCTION_43(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  OUTLINED_FUNCTION_6_1();
  v158 = v50 - v51;
  MEMORY[0x28223BE20](v52, v53);
  v55 = &v152 - v54;
  v56 = type metadata accessor for CloudAlbum(0);
  v57 = OUTLINED_FUNCTION_45_0(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57, v60);
  OUTLINED_FUNCTION_81();
  v163 = v61;
  OUTLINED_FUNCTION_206();
  v62 = type metadata accessor for CloudPersonalRecommendation.Item();
  v63 = OUTLINED_FUNCTION_43(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63, v66);
  OUTLINED_FUNCTION_6_1();
  v69 = v67 - v68;
  MEMORY[0x28223BE20](v70, v71);
  v73 = &v152 - v72;
  OUTLINED_FUNCTION_26_44();
  v166 = v6;
  sub_2176EDFE8(v6, v73);
  v168 = v73;
  sub_2176EDFE8(v73, v69);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_107();
      v165 = v75;
      v76 = v164;
      sub_2176EDF8C(v69, v164);
      sub_2176EDFE8(v76, v34);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
      v78 = v77[10];
      v79 = v34;
      v80 = v166;
      v81 = v166 + v77[9];
      v82 = *v81;
      v161 = *(v81 + 8);
      v83 = v161;
      LODWORD(v155) = *(v81 + 16);
      v84 = v166 + v78;
      v85 = *(v166 + v78);
      v86 = *(v84 + 8);
      v156 = v82;
      v157 = v85;
      v158 = v86;
      v154 = v77[11];
      memcpy(v176, (v166 + v154), 0x180uLL);
      v87 = v77[13];
      v160 = *(v166 + v77[12]);
      v88 = v160;
      v89 = *(v166 + v87);
      v90 = *(v166 + v77[14]);
      v91 = *(v166 + v77[15]);
      v162 = v90;
      v163 = v91;
      v92 = v79 + v24[9];
      *v92 = v156;
      *(v92 + 8) = v83;
      *(v92 + 16) = v155;
      v93 = (v79 + v24[10]);
      *v93 = v157;
      v93[1] = v86;
      memcpy((v79 + v24[11]), (v80 + v154), 0x180uLL);
      *(v79 + v24[12]) = v88;
      *(v79 + v24[13]) = v89;
      *(v79 + v24[14]) = v90;
      *(v79 + v24[15]) = v91;
      sub_2171F5110(v79, v159, &qword_27CB24790, &unk_21775A220);
      v94 = OUTLINED_FUNCTION_44_12();
      v95(v94, v172, v173);
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F5110(v176, v175, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Playlist.init<A>(_:configuration:sharedRelatedItemStore:)();
      v96 = *(v90 + 8);
      v97 = OUTLINED_FUNCTION_135();
      v98(v97);
      sub_2171F0738(v80, &qword_27CB24948, &unk_21775A210);
      sub_2171F0738(v79, &qword_27CB24790, &unk_21775A220);
      sub_2176EAA28(v164, v165);
      OUTLINED_FUNCTION_13_71();
      sub_2176EAA28(v168, v99);
      OUTLINED_FUNCTION_15_28();
      v101 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_5_105();
      v164 = v126;
      v127 = v165;
      sub_2176EDF8C(v69, v165);
      v128 = v162;
      sub_2176EDFE8(v127, v162);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
      v130 = v129[10];
      v131 = v166;
      v132 = v166 + v129[9];
      v133 = *v132;
      v158 = *(v132 + 8);
      v134 = v158;
      v153 = *(v132 + 16);
      v135 = v166 + v130;
      v136 = *(v166 + v130);
      v137 = *(v135 + 8);
      v154 = v133;
      v155 = v136;
      v156 = v137;
      v152 = v129[11];
      memcpy(v176, (v166 + v152), 0x180uLL);
      v138 = v129[13];
      v157 = *(v166 + v129[12]);
      v139 = v157;
      v140 = *(v166 + v138);
      v141 = v129[15];
      v159 = *(v166 + v129[14]);
      v142 = v159;
      v163 = *(v166 + v141);
      v143 = v163;
      v144 = v160;
      v145 = v128 + v160[9];
      *v145 = v154;
      *(v145 + 8) = v134;
      *(v145 + 16) = v153;
      v146 = (v128 + v144[10]);
      *v146 = v155;
      v146[1] = v137;
      memcpy((v128 + v144[11]), (v131 + v152), 0x180uLL);
      *(v128 + v144[12]) = v139;
      *(v128 + v144[13]) = v140;
      *(v128 + v144[14]) = v142;
      *(v128 + v144[15]) = v143;
      sub_2171F5110(v128, v161, &qword_27CB24738, &qword_217758CC0);
      v147 = OUTLINED_FUNCTION_44_12();
      v149 = v172;
      v148 = v173;
      v150(v147, v172, v173);
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F5110(v176, v175, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Station.init<A>(_:configuration:sharedRelatedItemStore:)();
      (*(v139 + 8))(v149, v148);
      sub_2171F0738(v131, &qword_27CB24948, &unk_21775A210);
      sub_2171F0738(v128, &qword_27CB24738, &qword_217758CC0);
      sub_2176EAA28(v165, v164);
      OUTLINED_FUNCTION_13_71();
      sub_2176EAA28(v168, v151);
      OUTLINED_FUNCTION_15_28();
      v101 = 2;
    }

    *(v100 + 56) = v101;
  }

  else
  {
    OUTLINED_FUNCTION_4_128();
    v165 = v102;
    v103 = v163;
    sub_2176EDF8C(v69, v163);
    sub_2176EDFE8(v103, v55);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v105 = v104[10];
    v106 = v166;
    v107 = v166 + v104[9];
    v108 = *v107;
    v161 = *(v107 + 8);
    v109 = v161;
    LODWORD(v155) = *(v107 + 16);
    v110 = *(v166 + v105 + 8);
    v159 = *(v166 + v105);
    v156 = v108;
    v157 = v110;
    v111 = v104[11];
    memcpy(v176, (v166 + v111), 0x180uLL);
    v112 = v104[13];
    v160 = *(v166 + v104[12]);
    v113 = v160;
    v114 = *(v166 + v112);
    v115 = v104[15];
    v162 = *(v166 + v104[14]);
    v116 = v162;
    v164 = *(v166 + v115);
    v117 = v164;
    v118 = &v55[v45[9]];
    *v118 = v156;
    *(v118 + 1) = v109;
    v118[16] = v155;
    v119 = &v55[v45[10]];
    v120 = v157;
    *v119 = v159;
    *(v119 + 1) = v120;
    memcpy(&v55[v45[11]], (v106 + v111), 0x180uLL);
    *&v55[v45[12]] = v113;
    *&v55[v45[13]] = v114;
    *&v55[v45[14]] = v116;
    *&v55[v45[15]] = v117;
    sub_2171F5110(v55, v158, &qword_27CB247F0, &qword_21775D360);
    v121 = v169;
    v123 = v172;
    v122 = v173;
    (*(v169 + 16))(v167, v172, v173);
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F5110(v176, v175, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    Album.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v121 + 8))(v123, v122);
    sub_2171F0738(v106, &qword_27CB24948, &unk_21775A210);
    sub_2171F0738(v55, &qword_27CB247F0, &qword_21775D360);
    sub_2176EAA28(v163, v165);
    OUTLINED_FUNCTION_13_71();
    sub_2176EAA28(v168, v124);
    OUTLINED_FUNCTION_15_28();
    *(v125 + 56) = 0;
  }

  OUTLINED_FUNCTION_13();
}

void MusicPersonalRecommendation.Item.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v82 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v79 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_43(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v79 - v23;
  sub_217283ECC(v0, &v84);
  if (v85)
  {
    if (v85 == 1)
    {
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_40_1();
      Playlist.convertToCloudResource<A>(configuration:)();
      sub_21726B8C4(v83);
      OUTLINED_FUNCTION_6_107();
      sub_2176EDF8C(v17, v3);
      type metadata accessor for CloudPersonalRecommendation.Item();
      swift_storeEnumTagMultiPayload();
      v25 = v11[10];
      v26 = &v17[v11[9]];
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = v26[16];
      v30 = *&v17[v11[12]];
      v81 = v11[11];
      v82 = v30;
      v31 = v11[14];
      v80 = *&v17[v11[13]];
      v33 = *&v17[v25];
      v32 = *&v17[v25 + 8];
      v34 = *&v17[v31];
      v35 = *&v17[v11[15]];
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
      v37 = OUTLINED_FUNCTION_79_6(v36);
      *v38 = v27;
      *(v38 + 8) = v28;
      *(v38 + 16) = v29;
      v39 = (v3 + *(v37 + 40));
      *v39 = v33;
      v39[1] = v32;
      v40 = OUTLINED_FUNCTION_41_14(v37);
      memcpy(v40, &v17[v41], 0x180uLL);
      OUTLINED_FUNCTION_18_0();
      *(v3 + v42) = v34;
      *(v3 + *(v0 + 60)) = v35;
    }

    else
    {
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_40_1();
      Station.convertToCloudResource<A>(configuration:)();
      sub_217283DC8(v83);
      OUTLINED_FUNCTION_5_105();
      sub_2176EDF8C(v10, v3);
      type metadata accessor for CloudPersonalRecommendation.Item();
      swift_storeEnumTagMultiPayload();
      v61 = v4[10];
      v62 = &v10[v4[9]];
      v63 = *v62;
      v64 = *(v62 + 1);
      v65 = v62[16];
      v66 = *&v10[v4[12]];
      v81 = v4[11];
      v82 = v66;
      v67 = v4[14];
      v80 = *&v10[v4[13]];
      v69 = *&v10[v61];
      v68 = *&v10[v61 + 8];
      v70 = *&v10[v67];
      v71 = *&v10[v4[15]];
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
      v73 = OUTLINED_FUNCTION_79_6(v72);
      *v74 = v63;
      *(v74 + 8) = v64;
      *(v74 + 16) = v65;
      v75 = (v3 + *(v73 + 40));
      *v75 = v69;
      v75[1] = v68;
      v76 = OUTLINED_FUNCTION_41_14(v73);
      memcpy(v76, &v10[v77], 0x180uLL);
      OUTLINED_FUNCTION_18_0();
      *(v3 + v78) = v70;
      *(v3 + *(v0 + 60)) = v71;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_40_1();
    Album.convertToCloudResource<A>(configuration:)();
    sub_21725CE44(v83);
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v24, v3);
    type metadata accessor for CloudPersonalRecommendation.Item();
    swift_storeEnumTagMultiPayload();
    v43 = v18[10];
    v44 = &v24[v18[9]];
    v45 = *v44;
    v46 = *(v44 + 1);
    v47 = v44[16];
    v48 = *&v24[v18[12]];
    v81 = v18[11];
    v82 = v48;
    v49 = v18[14];
    v80 = *&v24[v18[13]];
    v51 = *&v24[v43];
    v50 = *&v24[v43 + 8];
    v52 = *&v24[v49];
    v53 = *&v24[v18[15]];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v55 = OUTLINED_FUNCTION_79_6(v54);
    *v56 = v45;
    *(v56 + 8) = v46;
    *(v56 + 16) = v47;
    v57 = (v3 + *(v55 + 40));
    *v57 = v51;
    v57[1] = v50;
    v58 = OUTLINED_FUNCTION_41_14(v55);
    memcpy(v58, &v24[v59], 0x180uLL);
    OUTLINED_FUNCTION_18_0();
    *(v3 + v60) = v52;
    *(v3 + *(v0 + 60)) = v53;
  }

  OUTLINED_FUNCTION_13();
}

unint64_t sub_2176EDF38()
{
  result = qword_27CB2D130;
  if (!qword_27CB2D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D130);
  }

  return result;
}

uint64_t sub_2176EDF8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = v5(v4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2176EDFE8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = v5(v4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_2176EE048()
{
  result = qword_27CB2D138;
  if (!qword_27CB2D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D138);
  }

  return result;
}

unint64_t sub_2176EE0A0()
{
  result = qword_27CB2D140;
  if (!qword_27CB2D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D140);
  }

  return result;
}

unint64_t sub_2176EE0F8()
{
  result = qword_27CB2D148;
  if (!qword_27CB2D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D148);
  }

  return result;
}

unint64_t sub_2176EE150()
{
  result = qword_27CB2D150;
  if (!qword_27CB2D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D150);
  }

  return result;
}

unint64_t sub_2176EE1A8()
{
  result = qword_27CB2D158;
  if (!qword_27CB2D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D158);
  }

  return result;
}

unint64_t sub_2176EE200()
{
  result = qword_27CB2D160;
  if (!qword_27CB2D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D160);
  }

  return result;
}

unint64_t sub_2176EE258()
{
  result = qword_27CB2D168;
  if (!qword_27CB2D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D168);
  }

  return result;
}

unint64_t sub_2176EE2B4()
{
  result = qword_27CB2D170;
  if (!qword_27CB2D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D170);
  }

  return result;
}

unint64_t sub_2176EE30C()
{
  result = qword_27CB2D178;
  if (!qword_27CB2D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D178);
  }

  return result;
}

unint64_t sub_2176EE364()
{
  result = qword_27CB2D180;
  if (!qword_27CB2D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D180);
  }

  return result;
}

unint64_t sub_2176EE3BC()
{
  result = qword_27CB2D188;
  if (!qword_27CB2D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D188);
  }

  return result;
}

uint64_t sub_2176EE478(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudPersonalRecommendation.Item();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_2176EE4FC(_BYTE *result, int a2, int a3)
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

unint64_t sub_2176EE5EC()
{
  result = qword_27CB2D1B0;
  if (!qword_27CB2D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1B0);
  }

  return result;
}

unint64_t sub_2176EE644()
{
  result = qword_27CB2D1B8;
  if (!qword_27CB2D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1B8);
  }

  return result;
}

unint64_t sub_2176EE69C()
{
  result = qword_27CB2D1C0;
  if (!qword_27CB2D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1C0);
  }

  return result;
}

unint64_t sub_2176EE6F4()
{
  result = qword_27CB2D1C8;
  if (!qword_27CB2D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1C8);
  }

  return result;
}

unint64_t sub_2176EE74C()
{
  result = qword_27CB2D1D0;
  if (!qword_27CB2D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1D0);
  }

  return result;
}

unint64_t sub_2176EE7A4()
{
  result = qword_27CB2D1D8;
  if (!qword_27CB2D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1D8);
  }

  return result;
}

unint64_t sub_2176EE7FC()
{
  result = qword_27CB2D1E0;
  if (!qword_27CB2D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1E0);
  }

  return result;
}

unint64_t sub_2176EE854()
{
  result = qword_27CB2D1E8;
  if (!qword_27CB2D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1E8);
  }

  return result;
}

unint64_t sub_2176EE8AC()
{
  result = qword_27CB2D1F0;
  if (!qword_27CB2D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1F0);
  }

  return result;
}

unint64_t sub_2176EE904()
{
  result = qword_27CB2D1F8;
  if (!qword_27CB2D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1F8);
  }

  return result;
}

unint64_t sub_2176EE95C()
{
  result = qword_27CB2D200;
  if (!qword_27CB2D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D200);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_34()
{
  v2 = *(v0 - 72);

  return sub_2171FF30C(v2, v0 - 136);
}

uint64_t OUTLINED_FUNCTION_48_24()
{

  return sub_217752D08();
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudTonic.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudTonic.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t sub_2176EEBD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudTonic.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_2176EEC10@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudTonic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudMode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217752DC8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudMode.rawValue.getter()
{
  v1 = 0x726F6E696DLL;
  if (*v0 != 1)
  {
    v1 = 0x6C61727475656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

unint64_t sub_2176EEDAC()
{
  result = qword_27CB2D208;
  if (!qword_27CB2D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D208);
  }

  return result;
}

uint64_t sub_2176EEE00@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudMode.init(rawValue:)(a1);
}

uint64_t sub_2176EEE0C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2176EEE38()
{
  result = qword_27CB2D210;
  if (!qword_27CB2D210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2D218, &qword_21779A0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D210);
  }

  return result;
}

unint64_t sub_2176EEF6C()
{
  result = qword_27CB2D220;
  if (!qword_27CB2D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D220);
  }

  return result;
}

_BYTE *_s9CloudModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2176EF0C4()
{
  result = qword_27CB2D228;
  if (!qword_27CB2D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D228);
  }

  return result;
}

unint64_t sub_2176EF118()
{
  result = qword_27CB2D230;
  if (!qword_27CB2D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D230);
  }

  return result;
}

void *sub_2176EF170@<X0>(void *a1@<X8>)
{
  v8[3] = &type metadata for Track;
  v8[4] = &protocol witness table for Track;
  v8[0] = swift_allocObject();
  sub_217275710(v1, v8[0] + 16);
  __swift_project_boxed_opaque_existential_1(v8, &type metadata for Track);
  Track.propertyProvider.getter();
  v3 = v7[3];
  v4 = v7[4];
  OUTLINED_FUNCTION_16_55(v7);
  (*(v5 + 24))(__src, v3, v4);
  sub_21729C644(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return memcpy(a1, __src, 0x161uLL);
}

void sub_2176EF244()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = type metadata accessor for MusicPersonalRecommendation();
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_11_2();
  sub_2176F2B38(v0, v1, type metadata accessor for MusicPersonalRecommendation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(&v71, v98);
    v9 = v101;
    __swift_project_boxed_opaque_existential_1(v98, v100);
    v10 = *(v9 + 8);
    v11 = OUTLINED_FUNCTION_17_24();
    v12(v11);
    v13 = v97[4];
    __swift_project_boxed_opaque_existential_1(v97, v97[3]);
    v14 = *(v13 + 24);
    v15 = OUTLINED_FUNCTION_17_24();
    v16(v15);
    sub_21729C644(v97);
    v17 = v71;
    v18 = *(&v72 + 1);
    v67 = v72;
    v68 = *(&v71 + 1);
    v19 = v73;
    v65 = v74;
    v66 = v75;
    v63 = v76;
    v64 = v77;
    v61 = v78;
    v62 = v79;
    v59 = v80;
    v60 = v81;
    v57 = v82;
    v58 = v83;
    v55 = v84;
    v56 = v85;
    v53 = v86;
    v54 = v87;
    v20 = v88;
    v21 = v89;
    v22 = v90;
    v70 = v91;
    v69 = v92;
    v23 = v93;
    v51 = v94;
    v52 = v95;
    v24 = v96;
    __swift_destroy_boxed_opaque_existential_1(v98);
    v26 = v51;
    v25 = v52;
    v28 = v53;
    v27 = v54;
    v30 = v55;
    v29 = v56;
    v32 = v57;
    v31 = v58;
    v33 = v59;
    v34 = v60;
    v36 = v61;
    v35 = v62;
    v38 = v63;
    v37 = v64;
    v39 = v65;
    v40 = v66;
    v41 = v22;
    v42 = v67;
    v43 = v68;
  }

  else
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    sub_2171F0738(&v71, &qword_27CB24B68, &qword_217759430);
    if (qword_27CB23E68 != -1)
    {
      swift_once();
    }

    if (*(off_27CB2CDD0 + 2) == 1)
    {
      v45 = *(off_27CB2CDD0 + 4);
      v44 = *(off_27CB2CDD0 + 5);
      v46 = *(off_27CB2CDD0 + 48);
      v47 = sub_217751DE8();
    }

    else
    {
      v45 = 0;
      v47 = 0;
      v46 = 0;
    }

    v49 = *v0;
    v48 = v0[1];
    v98[0] = v45;
    v98[1] = v47;
    v99 = v46;
    sub_217751DE8();
    v102.value.rawValue._countAndFlagsBits = v98;
    v50.rawValue._countAndFlagsBits = v49;
    v50.rawValue._object = v48;
    MusicCatalogID.init(value:type:)(v50, v102);
    v43 = *(&v71 + 1);
    v17 = v71;
    v19 = v72;
    if (qword_27CB23C90 != -1)
    {
      swift_once();
    }

    v70 = xmmword_27CB29958;
    v23 = *(&xmmword_27CB29968 + 1);
    v69 = xmmword_27CB29968;
    sub_217751DE8();
    sub_217751DE8();

    v21 = 0;
    v39 = 0uLL;
    v24 = 4;
    v41 = &unk_28295BBE8;
    v40 = 0uLL;
    v38 = 0uLL;
    v37 = 0uLL;
    v36 = 0uLL;
    v35 = 0uLL;
    v20 = MEMORY[0x277D84FA0];
    v33 = 0uLL;
    v42 = v17;
    v34 = 0uLL;
    v18 = v43;
    v32 = 0uLL;
    v31 = 0uLL;
    v30 = 0uLL;
    v29 = 0uLL;
    v28 = 0uLL;
    v27 = 0uLL;
    v26 = 0uLL;
    v25 = 0uLL;
  }

  *v3 = v17;
  *(v3 + 8) = v43;
  *(v3 + 16) = v42;
  *(v3 + 24) = v18;
  *(v3 + 32) = v19;
  *(v3 + 40) = v39;
  *(v3 + 56) = v40;
  *(v3 + 72) = v38;
  *(v3 + 88) = v37;
  *(v3 + 104) = v36;
  *(v3 + 120) = v35;
  *(v3 + 136) = v33;
  *(v3 + 152) = v34;
  *(v3 + 168) = v32;
  *(v3 + 184) = v31;
  *(v3 + 200) = v30;
  *(v3 + 216) = v29;
  *(v3 + 232) = v28;
  *(v3 + 248) = v27;
  *(v3 + 264) = v20;
  *(v3 + 272) = v21;
  *(v3 + 280) = v41;
  *(v3 + 288) = v70;
  *(v3 + 304) = v69;
  *(v3 + 312) = v23;
  *(v3 + 320) = v26;
  *(v3 + 336) = v25;
  *(v3 + 352) = v24;
  OUTLINED_FUNCTION_13();
}

void Playlist.Entry.item.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE66D8 != -1)
  {
    OUTLINED_FUNCTION_0_149();
  }

  v26 = qword_280BE66E0;

  sub_2176CA244(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void Playlist.Entry.init(item:existingEntry:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29728, &unk_217778720);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v27 - v10;
  v12 = type metadata accessor for PlaylistEntryPropertyProvider();
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_11_2();
  sub_21729C5E8(v2 + 16, v27);
  v17 = v28;
  v18 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v18 + 96))(v30, v17, v18);
  sub_21729C644(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_4_14();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v12);
    sub_2176F27A4(v11, v0);
    v22 = *(v12 + 40);
    sub_2171F0738(v0 + v22, &qword_27CB27D20, &qword_217758B80);
    sub_21729C79C(v4, v0 + v22);
    v30[3] = v12;
    v30[4] = &protocol witness table for PlaylistEntryPropertyProvider;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_9_88(boxed_opaque_existential_0);
    Playlist.Entry.init(propertyProvider:)(v30, v6);
    sub_2172758B4(v2);
    sub_21729C7F8(v4);
    sub_2176F2808(v0);
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v12);
    sub_2171F0738(v11, &qword_27CB29728, &unk_217778720);
    sub_217752D08();
    __break(1u);
  }
}

void *Playlist.Entry.artwork.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  if (qword_280BE66D8 != -1)
  {
    OUTLINED_FUNCTION_0_149();
  }

  sub_2176CA244(qword_280BE66E0, a1, a2, a3, a4, a5, a6, a7, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17]);
  if (v34[56] == 255)
  {
    sub_2171F0738(v34, &qword_27CB27D20, &qword_217758B80);
    sub_2172A497C(__dst);
  }

  else
  {
    sub_21729C79C(v34, v32);
    if (v32[56] == 1)
    {
      OUTLINED_FUNCTION_13_72();
      if (qword_280BE9708 != -1)
      {
        swift_once();
      }

      sub_2176CA860(qword_280C02840, v9, v10, v11, v12, v13, v14, v15, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17]);
      sub_217283B58(__dst);
    }

    else
    {
      OUTLINED_FUNCTION_13_72();
      if (qword_280BE6B50 != -1)
      {
        swift_once();
      }

      sub_2176CA83C(qword_280C02258, v23, v24, v25, v26, v27, v28, v29, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17]);
      sub_217283C08(__dst);
    }

    sub_21729C7F8(v34);
    memcpy(v31, __src, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v31) != 1)
    {
      return memcpy(a8, __src, 0x221uLL);
    }

    memcpy(__dst, __src, 0x221uLL);
  }

  if (qword_280BE66C8 != -1)
  {
    swift_once();
  }

  sub_2176CB478(qword_280C02048, v16, v17, v18, v19, v20, v21, v22, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17]);
  return sub_2171F0738(__dst, &qword_27CB24400, &unk_21775E9A0);
}

void Playlist.Entry.init(track:position:occurrence:)()
{
  OUTLINED_FUNCTION_12();
  v52 = v1;
  v53 = v2;
  v4 = v3;
  v5 = type metadata accessor for PlaylistEntryPropertyProvider();
  v6 = OUTLINED_FUNCTION_43(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_11_2();
  sub_217275710(v4, v60);
  v63[0] = v60[0];
  v63[1] = v60[1];
  v63[2] = v60[2];
  v64 = v61;
  v65 = (v62 & 1) == 0;
  if (qword_280BE8AC8 != -1)
  {
    swift_once();
  }

  v10 = *algn_280BE8AD8;
  v51 = qword_280BE8AD0;
  v58[0] = qword_280BE8AD0;
  v58[1] = *algn_280BE8AD8;
  v50 = byte_280BE8AE0;
  LOBYTE(v58[2]) = byte_280BE8AE0;
  Track.innerItem.getter();
  v11 = v59[3];
  v12 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v13 = *(v12 + 8);
  sub_217751DE8();
  v14 = v13(v11, v12);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(v59);
  v17.rawValue._countAndFlagsBits = v14;
  v17.rawValue._object = v16;
  v18 = ResourceType.hrefForResource(with:)(v17);

  v58[3] = &type metadata for Track;
  v58[4] = &protocol witness table for Track;
  v58[0] = swift_allocObject();
  sub_217275710(v4, v58[0] + 16);
  __swift_project_boxed_opaque_existential_1(v58, &type metadata for Track);
  Track.propertyProvider.getter();
  v19 = v57[3];
  v20 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  (*(v20 + 24))(v59, v19, v20);
  sub_21729C644(v57);
  __swift_destroy_boxed_opaque_existential_1(v58);
  MusicIdentifierSet.equivalentPlaylistEntryIdentifierSet(with:)(v58);
  memcpy(v57, v59, 0x161uLL);
  sub_217269F50(v57);
  sub_21729C79C(v63, v56);
  v49 = OUTLINED_FUNCTION_10_71();
  v48 = OUTLINED_FUNCTION_10_71();
  v47 = OUTLINED_FUNCTION_10_71();
  v21 = OUTLINED_FUNCTION_10_71();
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  sub_2172A497C(v59);
  memcpy(v0, v59, 0x221uLL);
  *(v0 + 552) = 0;
  *(v0 + 560) = 1;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  v22 = v5[8];
  v23 = sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  v27 = v5[9];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v23);
  v31 = v0 + v5[10];
  *(v31 + 48) = 0;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *v31 = 0u;
  *(v31 + 56) = -1;
  v32 = v0 + v5[11];
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  v33 = v0 + v5[12];
  *(v33 + 112) = 0;
  *(v33 + 80) = 0u;
  *(v33 + 96) = 0u;
  *(v33 + 48) = 0u;
  *(v33 + 64) = 0u;
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0u;
  *v33 = 0u;
  v34 = (v0 + v5[14]);
  *v34 = 0;
  v34[1] = 0;
  v35 = v5[15];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v23);
  v39 = (v0 + v5[16]);
  *v39 = 0;
  v39[1] = 0;
  v40 = v0 + v5[17];
  *(v40 + 32) = 0;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  if (qword_280BE3168 != -1)
  {
    swift_once();
  }

  v41 = qword_280C01FB0;
  if (qword_280C01FB0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v46 = sub_217752D28();

    v41 = v46;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v42 = v0 + v5[13];
  *(v0 + v5[18]) = v41;
  v43 = (v0 + v5[21]);
  memcpy((v0 + v5[19]), v58, 0x161uLL);
  v44 = v0 + v5[20];
  *v44 = v51;
  *(v44 + 8) = v10;
  *(v44 + 16) = v50;
  *v43 = v18;
  *(v0 + v5[22]) = v49;
  *(v0 + v5[23]) = v48;
  *(v0 + v5[24]) = v47;
  *(v0 + v5[25]) = v21;
  sub_2176F2A5C(v56, v31, &qword_27CB27D20, &qword_217758B80);
  *v42 = v52;
  *(v42 + 8) = 0;
  sub_2176F2A5C(v54, v40, &qword_27CB24BA8, &unk_217772FF0);
  v56[3] = v5;
  v56[4] = &protocol witness table for PlaylistEntryPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
  OUTLINED_FUNCTION_9_88(boxed_opaque_existential_0);
  Playlist.Entry.init(propertyProvider:)(v56, v53);
  sub_21727576C(v4);
  sub_21729C7F8(v63);
  sub_2176F2808(v0);
  OUTLINED_FUNCTION_13();
}

uint64_t Playlist.Entry.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_17_24();
  v7(v6);
  v9 = v15[0];
  v8 = v15[1];
  sub_217751DE8();
  sub_217269F50(v15);
  *a2 = v9;
  a2[1] = v8;
  v10 = a1[3];
  v11 = a1[4];
  v12 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  PropertyProvider.eraseToAnyPropertyProvider()(v10, v11, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Entry.position.getter()
{
  if (qword_280BE66A8 != -1)
  {
    OUTLINED_FUNCTION_2_133();
  }

  result = sub_2172A3FC8();
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2176F03A0(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  return sub_2172A46D8();
}

uint64_t Playlist.Entry.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void Playlist.Entry.extendedStorage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6710 != -1)
  {
    swift_once();
  }

  v26 = qword_280BE6718;

  sub_2176CB650(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

double Playlist.Entry.playParameters.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (qword_280BE6730 != -1)
  {
    swift_once();
  }

  sub_2176CB508(qword_280C02078, a1, a2, a3, a4, a5, a6, a7, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6]);
  v16 = v29;
  if (v29)
  {
    *a8 = v28;
    *(a8 + 8) = v16;
    memcpy((a8 + 16), v30, 0x68uLL);
  }

  else
  {
    if (qword_280BE66D8 != -1)
    {
      OUTLINED_FUNCTION_0_149();
    }

    sub_2176CA244(qword_280BE66E0, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6]);
    if (v27 == 255)
    {
      sub_2171F0738(&v20, &qword_27CB27D20, &qword_217758B80);
      result = 0.0;
      *a8 = 0u;
      *(a8 + 16) = 0u;
      *(a8 + 32) = 0u;
      *(a8 + 48) = 0u;
      *(a8 + 64) = 0u;
      *(a8 + 80) = 0u;
      *(a8 + 96) = 0u;
      *(a8 + 112) = 0;
    }

    else
    {
      Playlist.Entry.Item.playParameters.getter();
      sub_21729C7F8(&v20);
    }
  }

  return result;
}

uint64_t static Playlist.Entry.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t Playlist.Entry.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 112))(a1, v5, v6);
}

uint64_t Playlist.Entry.hashValue.getter()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 112))(v6, v3, v4);
  return sub_217753238();
}

uint64_t sub_2176F0E5C@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Entry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2176F0E84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D280, &qword_21779A4F8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F777472615FLL, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02048 = result;
  return result;
}

uint64_t sub_2176F0EF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D278, &qword_21779A4F0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6F6974617275645FLL, 0xE90000000000006ELL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02040 = result;
  return result;
}

uint64_t sub_2176F0F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D270, &qword_21779A4E8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000012, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02060 = result;
  return result;
}

uint64_t sub_2176F0FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D270, &qword_21779A4E8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000010, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02070 = result;
  return result;
}

uint64_t sub_2176F1058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D248, &qword_21779A4C0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616C507473616C5FLL, 0xEF65746144646579, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02080 = result;
  return result;
}

uint64_t sub_2176F10D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D248, &qword_21779A4C0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02068 = result;
  return result;
}

uint64_t sub_2176F114C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D268, &qword_21779A4E0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7079546D6574695FLL, 0xE900000000000065, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02038 = result;
  return result;
}

uint64_t sub_2176F11C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D260, &qword_21779A4D8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x72615079616C705FLL, 0xEF73726574656D61, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02078 = result;
  return result;
}

uint64_t sub_2176F1244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D258, &qword_21779A4D0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6F697469736F705FLL, 0xE90000000000006ELL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02030 = result;
  return result;
}

uint64_t sub_2176F12BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D250, &qword_21779A4C8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02058 = result;
  return result;
}

uint64_t sub_2176F1330()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D248, &qword_21779A4C0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x657361656C65725FLL, 0xEC00000065746144, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02088 = result;
  return result;
}

uint64_t sub_2176F13AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D288, &qword_21779A500);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656C7469745FLL, 0xE600000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02050 = result;
  return result;
}

uint64_t sub_2176F141C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D290, &qword_21779A508);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D6574695FLL, 0xE500000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280BE66E0 = result;
  return result;
}

uint64_t sub_2176F14B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D240, &qword_21779A4B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000010, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280BE6718 = result;
  return result;
}

uint64_t sub_2176F1548(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t Playlist.Entry.isLibraryAdded.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2176F16D0(a2, a3, a4, a5, a6, a7, a8, v12);
  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2171F0738(v12, &qword_27CB2A370, &qword_21777FC80);
    return 2;
  }

  return v10;
}

double sub_2176F16D0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (qword_280BE66D8 != -1)
  {
    swift_once();
  }

  sub_2176CA244(qword_280BE66E0, a1, a2, a3, a4, a5, a6, a7, v10, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v12, v13, v14, v15, v16, v17, v18, v19, vars0, vars8);
  if (v12 == 255)
  {
    sub_2171F0738(v11, &qword_27CB27D20, &qword_217758B80);
    goto LABEL_7;
  }

  Playlist.Entry.Item.innerItem.getter();
  sub_21729C7F8(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A380, &qword_21779A4B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *(a8 + 32) = 0;
    result = 0.0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

uint64_t Playlist.Entry.isLibraryAddEligible.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2176F16D0(a2, a3, a4, a5, a6, a7, a8, v12);
  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(v9 + 32))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2171F0738(v12, &qword_27CB2A370, &qword_21777FC80);
    return 2;
  }

  return v10;
}

uint64_t Playlist.Entry.keepLocalEnabledStatus.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  sub_2176F16D0(a1, a2, a3, a4, a5, a6, a7, v14);
  if (v14[3])
  {
    OUTLINED_FUNCTION_16_55(v14);
    v10 = *(v9 + 40);
    v11 = OUTLINED_FUNCTION_35_12();
    v12(v11);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    result = sub_2171F0738(v14, &qword_27CB2A370, &qword_21777FC80);
    *a8 = 5;
  }

  return result;
}

uint64_t Playlist.Entry.keepLocalManagedStatus.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  sub_2176F16D0(a1, a2, a3, a4, a5, a6, a7, v14);
  if (v14[3])
  {
    OUTLINED_FUNCTION_16_55(v14);
    v10 = *(v9 + 48);
    v11 = OUTLINED_FUNCTION_35_12();
    v12(v11);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    result = sub_2171F0738(v14, &qword_27CB2A370, &qword_21777FC80);
    *a8 = 7;
  }

  return result;
}

uint64_t Playlist.Entry.keepLocalManagedStatusReasons.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  sub_2176F16D0(a1, a2, a3, a4, a5, a6, a7, v14);
  if (v14[3])
  {
    OUTLINED_FUNCTION_16_55(v14);
    v10 = *(v9 + 56);
    v11 = OUTLINED_FUNCTION_35_12();
    v12(v11);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    result = sub_2171F0738(v14, &qword_27CB2A370, &qword_21777FC80);
    *a8 = 0;
    *(a8 + 8) = 1;
  }

  return result;
}

uint64_t Playlist.Entry.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2175BA6FC(v3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double Playlist.Entry._innerItem.getter@<D0>(uint64_t a1@<X8>)
{
  sub_217275858(v1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD70, &unk_217787190);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(&v18, &v22);
    OUTLINED_FUNCTION_16_55(&v22);
    v4 = *(v3 + 8);
    v5 = OUTLINED_FUNCTION_35_12();
    v6(v5);
    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_2171F0738(&v18, &qword_27CB243F8, &qword_21779C830);
    if (qword_280BE66D8 != -1)
    {
      OUTLINED_FUNCTION_0_149();
    }

    sub_2176CA244(qword_280BE66E0, v8, v9, v10, v11, v12, v13, v14, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21, v22, *(&v22 + 1), v23, *(&v23 + 1));
    OUTLINED_FUNCTION_8_87();
    if (v15)
    {
      sub_2171F0738(v17, &qword_27CB27D20, &qword_217758B80);
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
    }

    else
    {
      Playlist.Entry.Item.innerItem.getter();
      sub_21729C7F8(v17);
    }

    result = *&v22;
    v16 = v23;
    *a1 = v22;
    *(a1 + 16) = v16;
    *(a1 + 32) = v24;
  }

  return result;
}

uint64_t Playlist.Entry.description.getter()
{
  sub_217752AA8();

  *&v20 = 0xD000000000000014;
  *(&v20 + 1) = 0x80000002177B5A70;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x7469736F70202C22, 0xED0000203A6E6F69);
  if (qword_280BE66A8 != -1)
  {
    OUTLINED_FUNCTION_2_133();
  }

  v1 = sub_2172A3FC8();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  *&v17 = v3;
  v4 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v4);

  v23 = v20;
  if (qword_280BE66D8 != -1)
  {
    OUTLINED_FUNCTION_0_149();
  }

  sub_2176CA244(qword_280BE66E0, v5, v6, v7, v8, v9, v10, v11, v17, *(&v17 + 1), v18, *(&v18 + 1), *&v19[0], *(&v19[0] + 1), *&v19[1], *(&v19[1] + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), *&v22[0], *(&v22[0] + 1), *&v22[1], *(&v22[1] + 1), v23, *(&v23 + 1));
  OUTLINED_FUNCTION_8_87();
  if (v12)
  {
    sub_2171F0738(&v17, &qword_27CB27D20, &qword_217758B80);
    *&v20 = 0x3A656C746974202CLL;
    *(&v20 + 1) = 0xEA00000000002220;
    v15 = Playlist.Entry.title.getter(v14);
    MEMORY[0x21CEA23B0](v15);

    OUTLINED_FUNCTION_36_10();
    MEMORY[0x21CEA23B0](v20, *(&v20 + 1));
  }

  else
  {
    v20 = v17;
    v21 = v18;
    v22[0] = v19[0];
    *(v22 + 9) = *(v19 + 9);
    *&v17 = 0x203A6D657469202CLL;
    *(&v17 + 1) = 0xE800000000000000;
    v13 = sub_2175BCAE0();
    MEMORY[0x21CEA23B0](v13);

    MEMORY[0x21CEA23B0](0x203A6D657469202CLL, 0xE800000000000000);

    sub_21729C7F8(&v20);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v23;
}

void Playlist.Entry.debugDescription.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v106 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v106 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v106 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v106 - v20;
  v22 = sub_2177517D8();
  v111 = *(v22 - 8);
  v23 = *(v111 + 64);
  MEMORY[0x28223BE20](v22, v24);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v25, v26);
  v110 = &v106 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v106 - v30;
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = &v106 - v35;
  v118 = 0x7473696C79616C50;
  v119 = 0xEF287972746E452ELL;
  *&v115 = 0x22203A646920200ALL;
  *(&v115 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v34);
  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_21_50();

  OUTLINED_FUNCTION_17_62();
  sub_217752AA8();

  strcpy(&v115, ",\n  position: ");
  HIBYTE(v115) = -18;
  if (qword_280BE66A8 != -1)
  {
    OUTLINED_FUNCTION_2_133();
  }

  v37 = sub_2172A3FC8();
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  *&v112 = v39;
  v40 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v40);

  OUTLINED_FUNCTION_21_50();

  if (qword_280BE66D8 != -1)
  {
    OUTLINED_FUNCTION_0_149();
  }

  sub_2176CA244(qword_280BE66E0, v41, v42, v43, v44, v45, v46, v47, v106, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, *(&v113 + 1), *v114, *&v114[8], *&v114[16], *&v114[24], v115, *(&v115 + 1), v116, *(&v116 + 1));
  if (v114[24] == 255)
  {
    sub_2171F0738(&v112, &qword_27CB27D20, &qword_217758B80);
    strcpy(&v115, ",\n  title: ");
    BYTE13(v115) = 0;
    HIWORD(v115) = -5120;
    v50 = Playlist.Entry.title.getter(v49);
    MEMORY[0x21CEA23B0](v50);

    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_21_50();

    if (qword_280BE6738 != -1)
    {
      swift_once();
    }

    sub_2176CA2EC(qword_280C02080, v51, v52, v53, v54, v55, v56, v57, v106, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, *(&v113 + 1), *v114, *&v114[8], *&v114[16], *&v114[24], v115, *(&v115 + 1), v116, *(&v116 + 1), *v117, *&v117[8], *&v117[16], *&v117[24]);
    if (OUTLINED_FUNCTION_32_50(v21) == 1)
    {
      sub_2171F0738(v21, &qword_27CB241C0, &qword_217759480);
    }

    else
    {
      v106 = *(v111 + 32);
      v106(v36, v21, v22);
      if (qword_280BE8910 != -1)
      {
        OUTLINED_FUNCTION_2_24();
      }

      v65 = type metadata accessor for CloudFormatter();
      v66 = __swift_project_value_buffer(v65, qword_280BE8918);
      (*(v111 + 16))(v17, v36, v22);
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v22);
      sub_2172610A0(v17, v13);
      if (OUTLINED_FUNCTION_32_50(v13) == 1)
      {
        sub_2171F0738(v17, &qword_27CB241C0, &qword_217759480);
        sub_2171F0738(v13, &qword_27CB241C0, &qword_217759480);
        v70 = *(v111 + 8);
        v71 = OUTLINED_FUNCTION_30_1();
        v72(v71);
      }

      else
      {
        v106(v31, v13, v22);
        v73 = *(v66 + *(v65 + 20));
        v74 = sub_2177517A8();
        v75 = [v73 stringFromDate_];

        v106 = sub_217751F48();
        v77 = v76;

        v78 = *(v111 + 8);
        v78(v31, v22);
        sub_2171F0738(v17, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_17_62();
        sub_217752AA8();

        OUTLINED_FUNCTION_11_9();
        *&v115 = v80;
        *(&v115 + 1) = v79;
        MEMORY[0x21CEA23B0](v106, v77);

        OUTLINED_FUNCTION_36_10();
        MEMORY[0x21CEA23B0](v115, *(&v115 + 1));

        v81 = OUTLINED_FUNCTION_30_1();
        (v78)(v81);
      }
    }

    v82 = v110;
    v83 = v109;
    if (qword_280BE6700 != -1)
    {
      swift_once();
    }

    sub_2176CA2EC(qword_280C02068, v58, v59, v60, v61, v62, v63, v64, v106, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, *(&v113 + 1), *v114, *&v114[8], *&v114[16], *&v114[24], v115, *(&v115 + 1), v116, *(&v116 + 1), *v117, *&v117[8], *&v117[16], *&v117[24]);
    if (OUTLINED_FUNCTION_32_50(v9) == 1)
    {
      sub_2171F0738(v9, &qword_27CB241C0, &qword_217759480);
    }

    else
    {
      v84 = v111;
      v85 = *(v111 + 32);
      v85(v82, v9, v22);
      if (qword_280BE8910 != -1)
      {
        OUTLINED_FUNCTION_2_24();
      }

      v86 = type metadata accessor for CloudFormatter();
      v87 = __swift_project_value_buffer(v86, qword_280BE8918);
      v88 = v108;
      (*(v84 + 16))(v108, v82, v22);
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v22);
      sub_2172610A0(v88, v83);
      if (OUTLINED_FUNCTION_32_50(v83) == 1)
      {
        sub_2171F0738(v88, &qword_27CB241C0, &qword_217759480);
        sub_2171F0738(v83, &qword_27CB241C0, &qword_217759480);
        v92 = *(v84 + 8);
        v93 = OUTLINED_FUNCTION_30_1();
        v94(v93);
      }

      else
      {
        v95 = v107;
        v85(v107, v83, v22);
        v96 = *(v87 + *(v86 + 20));
        v97 = sub_2177517A8();
        v98 = [v96 stringFromDate_];

        v99 = sub_217751F48();
        v101 = v100;

        v102 = *(v84 + 8);
        v102(v95, v22);
        sub_2171F0738(v88, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_17_62();
        sub_217752AA8();

        OUTLINED_FUNCTION_11_9();
        *&v115 = v104 | 2;
        *(&v115 + 1) = v103;
        MEMORY[0x21CEA23B0](v99, v101);

        OUTLINED_FUNCTION_36_10();
        MEMORY[0x21CEA23B0](v115, *(&v115 + 1));

        v105 = OUTLINED_FUNCTION_30_1();
        (v102)(v105);
      }
    }
  }

  else
  {
    v115 = v112;
    v116 = v113;
    *v117 = *v114;
    *&v117[9] = *&v114[9];
    *&v112 = 0x6D65746920200A2CLL;
    *(&v112 + 1) = 0xEA0000000000203ALL;
    v48 = sub_2175BCAE0();
    MEMORY[0x21CEA23B0](v48);

    MEMORY[0x21CEA23B0](v112, *(&v112 + 1));

    sub_21729C7F8(&v115);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176F27A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistEntryPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2176F2808(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistEntryPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2176F2864()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0x7473696C79616C50, 0xEE007972746E452ELL, &type metadata for Playlist.Entry, &protocol witness table for Playlist.Entry, &v2);
  os_unfair_lock_unlock(v0[2]);
  result = *&v2;
  xmmword_280BE8510 = v2;
  qword_280BE8520 = v3;
  unk_280BE8528 = v4;
  return result;
}

uint64_t static Playlist.Entry.typeValue.getter()
{
  if (qword_280BE8508 != -1)
  {
    OUTLINED_FUNCTION_11_80();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE8510);

  return sub_217751DE8();
}

uint64_t sub_2176F298C()
{
  if (qword_280BE8508 != -1)
  {
    OUTLINED_FUNCTION_11_80();
  }

  xmmword_280BE90D8 = xmmword_280BE8510;
  qword_280BE90E8 = qword_280BE8520;
  unk_280BE90F0 = unk_280BE8528;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.playlistEntry.getter()
{
  if (qword_280BE90D0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE90D8);

  return sub_217751DE8();
}

uint64_t sub_2176F2A5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

unint64_t sub_2176F2ABC()
{
  result = qword_27CB2D238;
  if (!qword_27CB2D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D238);
  }

  return result;
}

uint64_t sub_2176F2B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_93();
  v8(v7);
  return a2;
}