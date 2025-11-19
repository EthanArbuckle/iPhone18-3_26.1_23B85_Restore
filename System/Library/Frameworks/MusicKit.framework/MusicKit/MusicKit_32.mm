uint64_t sub_2174A4668(uint64_t a1, uint64_t a2)
{
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(v8, 0);
  v6 = v5 != 2 && (v5 & 1) != 0 || *(a2 + 8) != 0;
  v8[0] = v6;
  return swift_setAtWritableKeyPath();
}

uint64_t sub_2174A4708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2174AFB3C(a2, a3);
  if (result)
  {
    v4 = result;
    if (qword_280BE8588 != -1)
    {
      swift_once();
    }

    v5 = xmmword_280BE85A0;
    v8 = xmmword_280BE8590;
    v6 = [objc_opt_self() identifierSetFromLegacyModelObject_];
    v12[0] = v8;
    v12[1] = v5;
    *&v9[0] = &unk_28295B638;
    v13[0] = 4;
    sub_217751DE8();
    sub_2172B6904(v6, v12, v9, v13, __src);
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    swift_unknownObjectRetain();
    Track.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v12, __src);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24668, &qword_217758BC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2177586E0;
    sub_217275710(v12, v7 + 32);
    sub_2174AA1D8();
    swift_setAtWritableKeyPath();
    swift_unknownObjectRelease();
    return sub_21727576C(v12);
  }

  return result;
}

uint64_t PropertyProvider.mergeMetadata<A>(for:from:key:legacyModelObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 8);
  sub_217751E68();
  if (!v12)
  {
    return sub_2171F0738(&v11, &qword_27CB2AD40, &qword_2177583F0);
  }

  sub_2172124CC(&v11, v13);
  sub_21721E0AC(v13, &v11);
  type metadata accessor for Album.TracksPopularityProvider();
  v9 = swift_allocObject();
  sub_2172124CC(&v11, (v9 + 16));
  *(v9 + 48) = a4;
  *&v11 = v9;
  swift_unknownObjectRetain();

  swift_setAtWritableKeyPath();

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t Album.convertToLegacyModelStorageDictionary(for:)(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  OUTLINED_FUNCTION_6_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v319 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v319 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v319 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v319 - v22;
  HIDWORD(v319) = *a1;
  sub_2172A532C();
  v325 = sub_217751DC8();
  if (qword_280BE9428 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17_20();
  sub_2176CA9A8(v24, v25, v26, v27, v28, v29, v30, v31, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14]);
  memcpy(v326, v324, 0x221uLL);
  memcpy(v327, v324, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v327) == 1)
  {
    memset(v323, 0, 32);
  }

  else
  {
    memcpy(v322, v327, 0x221uLL);
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(0, 0, v323);
    sub_2171F0738(v326, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_21729D74C(v323, 0);
  if (qword_280BE81D8 != -1)
  {
    swift_once();
  }

  v32 = sub_2172A4394();
  if (v33)
  {
    v32 = OUTLINED_FUNCTION_2_57();
  }

  else
  {
    v34 = MEMORY[0x277D83B88];
  }

  v324[0] = v32;
  v35 = OUTLINED_FUNCTION_1_54(v34);
  sub_21729D74C(v35, 1);
  if (qword_280BE8208 != -1)
  {
    swift_once();
  }

  v36 = sub_2172A4394();
  if (v37)
  {
    v36 = OUTLINED_FUNCTION_2_57();
  }

  else
  {
    v38 = MEMORY[0x277D83B88];
  }

  v324[0] = v36;
  v39 = OUTLINED_FUNCTION_1_54(v38);
  sub_21729D74C(v39, 2);
  if (qword_280BE93E0 != -1)
  {
    swift_once();
  }

  v40 = sub_2172A4380();
  if (v41)
  {
    v42 = MEMORY[0x277D837D0];
  }

  else
  {
    v40 = 0;
    v42 = 0;
    v324[2] = 0;
  }

  v324[0] = v40;
  v324[1] = v41;
  v43 = OUTLINED_FUNCTION_1_54(v42);
  sub_21729D74C(v43, 3);
  if (qword_280BE9558 != -1)
  {
    swift_once();
  }

  sub_2176CA7F0(qword_280C027A0, v44, v45, v46, v47, v48, v49, v50, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16], v322[17], v322[18]);
  v51 = sub_2177517D8();
  OUTLINED_FUNCTION_9(v23);
  if (v75)
  {
    sub_2171F0738(v23, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_11_34();
  }

  else
  {
    OUTLINED_FUNCTION_27_24();
    OUTLINED_FUNCTION_8_3();
    (*(v52 + 32))();
  }

  v53 = OUTLINED_FUNCTION_4_55();
  sub_21729D74C(v53, 4);
  if (qword_280BE81F0 != -1)
  {
    swift_once();
  }

  v54 = sub_2172A4394();
  if (v55)
  {
    v54 = OUTLINED_FUNCTION_2_57();
  }

  else
  {
    v56 = MEMORY[0x277D83B88];
  }

  v324[0] = v54;
  v57 = OUTLINED_FUNCTION_1_54(v56);
  sub_21729D74C(v57, 5);
  if (qword_280BE9588 != -1)
  {
    swift_once();
  }

  sub_2176CA7F0(qword_280C027C8, v58, v59, v60, v61, v62, v63, v64, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16], v322[17], v322[18]);
  OUTLINED_FUNCTION_9(v19);
  if (v75)
  {
    sub_2171F0738(v19, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_11_34();
  }

  else
  {
    OUTLINED_FUNCTION_27_24();
    OUTLINED_FUNCTION_8_3();
    (*(v65 + 32))();
  }

  v66 = OUTLINED_FUNCTION_4_55();
  sub_21729D74C(v66, 6);
  if (qword_280BE95E8 != -1)
  {
    swift_once();
  }

  v74 = qword_280C027D8;
  sub_2176CA81C(qword_280C027D8, v67, v68, v69, v70, v71, v72, v73, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16]);
  v75 = (v324[0] & 1) != 0 || LOBYTE(v324[0]) == 2;
  v76 = MEMORY[0x277D839B0];
  v77 = !v75;
  v324[3] = MEMORY[0x277D839B0];
  LOBYTE(v324[0]) = v77;
  v78 = OUTLINED_FUNCTION_4_55();
  sub_21729D74C(v78, 7);
  sub_2176CA81C(v74, v79, v80, v81, v82, v83, v84, v85, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16]);
  v324[3] = v76;
  LOBYTE(v324[0]) &= 1u;
  v86 = OUTLINED_FUNCTION_4_55();
  sub_21729D74C(v86, 8);
  if (qword_280BE81D0 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C024A0, v87, v88, v89, v90, v91, v92, v93, v319, v320, v321, v322[0], v322[1], v322[2], SWORD2(v322[2]), SBYTE6(v322[2]), SHIBYTE(v322[2]), v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10]);
  v324[3] = v76;
  OUTLINED_FUNCTION_18_4(v94);
  v95 = OUTLINED_FUNCTION_4_55();
  sub_21729D74C(v95, 9);
  if (qword_280BE95D8 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C027D0, v96, v97, v98, v99, v100, v101, v102, v319, v320, v321, v322[0], v322[1], v322[2], SWORD2(v322[2]), SBYTE6(v322[2]), SHIBYTE(v322[2]), v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10]);
  v104 = v51;
  if (v103 == 2)
  {
    OUTLINED_FUNCTION_3_52();
  }

  else
  {
    OUTLINED_FUNCTION_18_4(v103);
    v105 = MEMORY[0x277D839B0];
  }

  v106 = v15;
  v320 = v7;
  v321 = v11;
  v107 = OUTLINED_FUNCTION_1_54(v105);
  sub_21729D74C(v107, 10);
  if (qword_280BE8040 != -1)
  {
    OUTLINED_FUNCTION_14_3();
  }

  v108 = qword_280BE8048;
  v109 = unk_280BE8050;
  v110 = byte_280BE8058;
  v112 = qword_280BE8060;
  v111 = unk_280BE8068;
  v113 = byte_280BE8070;
  v324[3] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  v324[4] = sub_2171FEF88();
  v114 = swift_allocObject();
  v324[0] = v114;
  *(v114 + 16) = v108;
  *(v114 + 24) = v109;
  *(v114 + 32) = v110;
  *(v114 + 40) = v112;
  *(v114 + 48) = v111;
  *(v114 + 56) = v113;
  LOBYTE(v108) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v324);
  v115 = v106;
  v116 = v104;
  v117 = MEMORY[0x277D839B0];
  if (v108)
  {
    if (qword_280BE9550 != -1)
    {
      OUTLINED_FUNCTION_15_30();
    }

    OUTLINED_FUNCTION_17_20();
    sub_2176CA9B4(v118, v119, v120, v121, v122, v123, v124, v125, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16]);
    v324[3] = v117;
    LOBYTE(v324[0]) = LOBYTE(v324[0]) == 2;
    v126 = OUTLINED_FUNCTION_4_55();
    sub_21729D74C(v126, 11);
  }

  if (qword_280BE9550 != -1)
  {
    OUTLINED_FUNCTION_15_30();
  }

  OUTLINED_FUNCTION_17_20();
  sub_2176CA9B4(v127, v128, v129, v130, v131, v132, v133, v134, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16]);
  v324[3] = v117;
  LOBYTE(v324[0]) = LOBYTE(v324[0]) == 1;
  v135 = OUTLINED_FUNCTION_4_55();
  sub_21729D74C(v135, 12);
  v143 = v320;
  v144 = v321;
  if (qword_280BE9578 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C027B8, v136, v137, v138, v139, v140, v141, v142, v319, v320, v321, v322[0], v322[1], v322[2], SWORD2(v322[2]), SBYTE6(v322[2]), SHIBYTE(v322[2]), v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10]);
  OUTLINED_FUNCTION_7_1();
  if (v75)
  {
    OUTLINED_FUNCTION_3_52();
  }

  else
  {
    OUTLINED_FUNCTION_18_4(v145);
    v146 = MEMORY[0x277D839B0];
  }

  v147 = OUTLINED_FUNCTION_1_54(v146);
  sub_21729D74C(v147, 13);
  if (qword_280BE9500 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02760, v148, v149, v150, v151, v152, v153, v154, v319, v320, v321, v322[0], v322[1], v322[2], SWORD2(v322[2]), SBYTE6(v322[2]), SHIBYTE(v322[2]), v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10]);
  OUTLINED_FUNCTION_7_1();
  if (v75)
  {
    OUTLINED_FUNCTION_3_52();
  }

  else
  {
    OUTLINED_FUNCTION_18_4(v155);
    v156 = MEMORY[0x277D839B0];
  }

  v157 = OUTLINED_FUNCTION_1_54(v156);
  sub_21729D74C(v157, 14);
  if (qword_280BE81B0 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02490, v158, v159, v160, v161, v162, v163, v164, v319, v320, v321, v322[0], v322[1], v322[2], SWORD2(v322[2]), SBYTE6(v322[2]), SHIBYTE(v322[2]), v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10]);
  v324[3] = v117;
  OUTLINED_FUNCTION_18_4(v165);
  v166 = OUTLINED_FUNCTION_4_55();
  sub_21729D74C(v166, 15);
  if (qword_280BE9658 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02800, v167, v168, v169, v170, v171, v172, v173, v319, v320, v321, v322[0], v322[1], v322[2], SWORD2(v322[2]), SBYTE6(v322[2]), SHIBYTE(v322[2]), v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10]);
  OUTLINED_FUNCTION_7_1();
  if (v75)
  {
    OUTLINED_FUNCTION_3_52();
  }

  else
  {
    OUTLINED_FUNCTION_18_4(v174);
    v175 = MEMORY[0x277D839B0];
  }

  v176 = OUTLINED_FUNCTION_1_54(v175);
  sub_21729D74C(v176, 16);
  if (qword_280BE81E8 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C024B8, v177, v178, v179, v180, v181, v182, v183, v319, v320, v321, v322[0], v322[1], v322[2], SWORD2(v322[2]), SBYTE6(v322[2]), SHIBYTE(v322[2]), v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10]);
  OUTLINED_FUNCTION_7_1();
  if (v75)
  {
    OUTLINED_FUNCTION_3_52();
  }

  else
  {
    OUTLINED_FUNCTION_18_4(v184);
    v185 = MEMORY[0x277D839B0];
  }

  v186 = OUTLINED_FUNCTION_1_54(v185);
  sub_21729D74C(v186, 17);
  if (qword_280BE94D0 != -1)
  {
    swift_once();
  }

  v187 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_17_20();
  sub_2176CA9C8(v188, v189, v190, v191, v192, v193, v194, v195, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16]);
  v196 = LOBYTE(v324[0]);
  switch(LOBYTE(v324[0]))
  {
    case 1:
      v196 = 1;
      goto LABEL_88;
    case 2:
      v196 = 2;
      goto LABEL_88;
    case 3:
      v196 = 3;
      goto LABEL_88;
    case 4:
      v196 = 4;
      goto LABEL_88;
    case 5:
      OUTLINED_FUNCTION_11_34();
      goto LABEL_89;
    default:
LABEL_88:
      v197 = [objc_opt_self() rawValueForKeepLocalEnabledState_];
      v324[3] = v187;
      v324[0] = v197;
LABEL_89:
      v198 = OUTLINED_FUNCTION_4_55();
      sub_21729D74C(v198, 18);
      if (qword_280BE94C8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA9DC(v199, v200, v201, v202, v203, v204, v205, v206, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16]);
      v207 = LOBYTE(v324[0]);
      switch(LOBYTE(v324[0]))
      {
        case 1:
          v207 = 1;
          goto LABEL_100;
        case 2:
          v207 = 2;
          goto LABEL_100;
        case 3:
          v207 = 3;
          goto LABEL_100;
        case 4:
          v207 = 4;
          goto LABEL_100;
        case 5:
          v207 = 5;
          goto LABEL_100;
        case 6:
          v207 = 6;
          goto LABEL_100;
        case 7:
          OUTLINED_FUNCTION_11_34();
          goto LABEL_101;
        default:
LABEL_100:
          v208 = [objc_opt_self() rawValueForKeepLocalManagedStatus_];
          v324[3] = v187;
          v324[0] = v208;
LABEL_101:
          v209 = OUTLINED_FUNCTION_4_55();
          sub_21729D74C(v209, 19);
          if (qword_280BE9490 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_17_20();
          sub_2176CA9F0(v210, v211, v212, v213, v214, v215, v216, v217, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16]);
          if (v324[1])
          {
            v218 = OUTLINED_FUNCTION_2_57();
          }

          else
          {
            v322[0] = v324[0];
            v218 = LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()();
            v219 = MEMORY[0x277D83B88];
          }

          v324[0] = v218;
          v220 = OUTLINED_FUNCTION_1_54(v219);
          sub_21729D74C(v220, 20);
          if (qword_280BE9570 != -1)
          {
            swift_once();
          }

          sub_2176CA7F0(qword_280C027B0, v221, v222, v223, v224, v225, v226, v227, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16], v322[17], v322[18]);
          OUTLINED_FUNCTION_9(v115);
          if (v75)
          {
            sub_2171F0738(v115, &qword_27CB241C0, &qword_217759480);
            OUTLINED_FUNCTION_11_34();
          }

          else
          {
            OUTLINED_FUNCTION_27_24();
            OUTLINED_FUNCTION_8_3();
            (*(v228 + 32))();
          }

          v229 = OUTLINED_FUNCTION_4_55();
          sub_21729D74C(v229, 21);
          if (qword_280BE9538 != -1)
          {
            swift_once();
          }

          sub_2176CA7F0(qword_280C02780, v230, v231, v232, v233, v234, v235, v236, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16], v322[17], v322[18]);
          OUTLINED_FUNCTION_9(v144);
          if (v75)
          {
            sub_2171F0738(v144, &qword_27CB241C0, &qword_217759480);
            OUTLINED_FUNCTION_11_34();
          }

          else
          {
            OUTLINED_FUNCTION_27_24();
            OUTLINED_FUNCTION_8_3();
            (*(v237 + 32))();
          }

          v238 = OUTLINED_FUNCTION_4_55();
          sub_21729D74C(v238, 22);
          if (qword_280BE9628 != -1)
          {
            swift_once();
          }

          sub_2176CA7F0(qword_280C027E8, v239, v240, v241, v242, v243, v244, v245, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16], v322[17], v322[18]);
          OUTLINED_FUNCTION_9(v143);
          if (v75)
          {
            sub_2171F0738(v143, &qword_27CB241C0, &qword_217759480);
            OUTLINED_FUNCTION_11_34();
          }

          else
          {
            v324[3] = sub_217751568();
            __swift_allocate_boxed_opaque_existential_0(v324);
            if (qword_280BE8910 != -1)
            {
              swift_once();
            }

            v246 = type metadata accessor for CloudFormatter();
            __swift_project_value_buffer(v246, qword_280BE8918);
            CloudFormatter.dateComponents(from:)();
            OUTLINED_FUNCTION_8_3();
            (*(v247 + 8))(v143, v116);
          }

          v248 = OUTLINED_FUNCTION_4_55();
          sub_21729D74C(v248, 23);
          if (qword_280BE81F8 != -1)
          {
            swift_once();
          }

          sub_2172A43F8(qword_280C024C8, v249, v250, v251, v252, v253, v254, v255, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10]);
          if (v256)
          {
            sub_21721E0AC(v256 + 16, v324);
          }

          else
          {
            OUTLINED_FUNCTION_11_34();
          }

          v257 = OUTLINED_FUNCTION_4_55();
          sub_21729D74C(v257, 24);
          if (qword_280BE9470 != -1)
          {
            swift_once();
          }

          v258 = sub_2172A4380();
          if (v259)
          {
            v260 = v258;
          }

          else
          {
            v260 = 0;
          }

          v261 = 0xE000000000000000;
          v324[3] = MEMORY[0x277D837D0];
          if (v259)
          {
            v261 = v259;
          }

          v324[0] = v260;
          v324[1] = v261;
          v262 = OUTLINED_FUNCTION_4_55();
          sub_21729D74C(v262, 25);
          if (qword_280BE9648 != -1)
          {
            swift_once();
          }

          v263 = sub_2172A4394();
          if (v264)
          {
            v265 = 0;
          }

          else
          {
            v265 = v263;
          }

          v324[3] = v187;
          v324[0] = v265;
          v266 = OUTLINED_FUNCTION_4_55();
          sub_21729D74C(v266, 26);
          sub_217215924(0, &qword_280BE74C8, off_278228CF8);
          if (qword_280BE9600 != -1)
          {
            swift_once();
          }

          v274 = sub_2172A44B0(qword_280BE9608);
          if (qword_280BE9508 != -1)
          {
            swift_once();
          }

          sub_2172A43A8(qword_280C02768, v267, v268, v269, v270, v271, v272, v273, v319, v320, v321, v322[0], v322[1], v322[2], SWORD2(v322[2]), SBYTE6(v322[2]), SHIBYTE(v322[2]), v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10]);
          v276 = sub_217659BD4(v274, v275);
          v278 = v277;

          if (v278)
          {
            v276 = 0;
            v279 = 0;
            v324[2] = 0;
            v324[1] = 0;
          }

          else
          {
            v279 = MEMORY[0x277D83B88];
          }

          v324[0] = v276;
          v280 = OUTLINED_FUNCTION_1_54(v279);
          sub_21729D74C(v280, 27);
          if (qword_280BE8240 != -1)
          {
            swift_once();
          }

          v281 = sub_2172A4394();
          if (v282)
          {
            v281 = OUTLINED_FUNCTION_2_57();
          }

          else
          {
            v283 = MEMORY[0x277D83B88];
          }

          v324[0] = v281;
          v284 = OUTLINED_FUNCTION_1_54(v283);
          sub_21729D74C(v284, 28);
          if (qword_280BE9430 != -1)
          {
            OUTLINED_FUNCTION_7_4();
          }

          OUTLINED_FUNCTION_17_20();
          sub_2176CA7B4(v285, v286, v287, v288, v289, v290, v291, v292, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16], v322[17], v322[18]);
          if (v324[11])
          {
            sub_2172CE9BC();
            sub_2171F0738(v324, &qword_27CB25398, &unk_21776C4F0);
            if (v322[1])
            {
              sub_21725CF68(v322, v323);
              sub_2176FDD58();
              v294 = v293;
              sub_217284498(v322);
              goto LABEL_161;
            }

            v295 = &qword_27CB2CD90;
            v296 = &unk_21775A2C0;
            v297 = v322;
          }

          else
          {
            v295 = &qword_27CB25310;
            v296 = &unk_21775D3D0;
            v297 = v324;
          }

          sub_2171F0738(v297, v295, v296);
          v294 = 0;
LABEL_161:
          v298 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
          v324[3] = v298;
          if (!v294)
          {
            if (qword_280BE9680 != -1)
            {
              swift_once();
            }

            v299 = sub_2172A4380();
            if (v300)
            {
              v301 = v299;
            }

            else
            {
              v301 = 0;
            }

            if (v300)
            {
              v302 = v300;
            }

            else
            {
              v302 = 0xE000000000000000;
            }

            v294 = sub_2176FEB7C(11, v301, v302);
          }

          v324[0] = v294;
          v303 = OUTLINED_FUNCTION_4_55();
          sub_21729D74C(v303, 29);
          if (qword_280BE9460 != -1)
          {
            OUTLINED_FUNCTION_6_3();
          }

          OUTLINED_FUNCTION_17_20();
          sub_2176CA3F4(v304, v305, v306, v307, v308, v309, v310, v311, v319, v320, v321, v322[0], v322[1], v322[2], v322[3], v322[4], v322[5], v322[6], v322[7], v322[8], v322[9], v322[10], v322[11], v322[12], v322[13], v322[14], v322[15], v322[16], v322[17], v322[18]);
          if (v324[11])
          {
            sub_2172CE898();
            sub_2171F0738(v324, &qword_27CB27C80, &unk_21775D420);
            if (v322[1])
            {
              LOBYTE(v323[0]) = BYTE4(v319);
              v313 = sub_2172A2B9C(v323, v312);
              sub_21728418C(v322);
              v324[3] = v298;
              v324[0] = v313;
              goto LABEL_179;
            }

            v314 = &unk_27CB27760;
            v315 = &unk_21775A2D0;
            v316 = v322;
          }

          else
          {
            v314 = &qword_27CB25320;
            v315 = &unk_21776E020;
            v316 = v324;
          }

          sub_2171F0738(v316, v314, v315);
          OUTLINED_FUNCTION_11_34();
LABEL_179:
          v317 = OUTLINED_FUNCTION_4_55();
          sub_21729D74C(v317, 30);
          return v325;
      }
  }
}

uint64_t Album.LegacyModelAlbumPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217753158();

  v4 = 0;
  v5 = 14;
  switch(v2)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v4 = 1;
      goto LABEL_25;
    case 2:
      v4 = 2;
      goto LABEL_25;
    case 3:
      v4 = 3;
      goto LABEL_25;
    case 4:
      v4 = 4;
      goto LABEL_25;
    case 5:
      v4 = 5;
      goto LABEL_25;
    case 6:
      v4 = 6;
      goto LABEL_25;
    case 7:
      v4 = 7;
      goto LABEL_25;
    case 8:
      v4 = 8;
      goto LABEL_25;
    case 9:
      v4 = 9;
      goto LABEL_25;
    case 10:
      v4 = 10;
      goto LABEL_25;
    case 11:
      v4 = 11;
      goto LABEL_25;
    case 12:
      v4 = 12;
      goto LABEL_25;
    case 13:
      v4 = 13;
LABEL_25:
      v5 = v4;
      break;
    case 14:
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    default:
      v5 = 32;
      break;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2174A5E0C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Album.LegacyModelAlbumPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_2174A5E18@<X0>(unint64_t *a1@<X8>)
{
  result = Album.LegacyModelAlbumPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2174A5E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlbumPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174A5EEC(uint64_t a1)
{
  v2 = type metadata accessor for AlbumPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2174A5F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlbumPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2174A5FB0()
{
  result = qword_280BE85F0;
  if (!qword_280BE85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE85F0);
  }

  return result;
}

unint64_t sub_2174A6004(uint64_t a1)
{
  *(a1 + 8) = sub_2172A532C();
  result = sub_2174A6034();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2174A6034()
{
  result = qword_27CB28310;
  if (!qword_27CB28310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28310);
  }

  return result;
}

unint64_t sub_2174A608C()
{
  result = qword_27CB28318;
  if (!qword_27CB28318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28318);
  }

  return result;
}

uint64_t _s27LegacyModelAlbumPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s27LegacyModelAlbumPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_11_34()
{
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_24()
{
  v5 = *(v0 + 136);

  return sub_2171F5110(v3, v5, v1, v2);
}

void *CloudMusicCreditsSection.init(id:attributes:relationships:views:meta:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, _OWORD *a4@<X2>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  v10 = a4[1];
  *(a7 + 16) = *a4;
  *(a7 + 32) = v10;
  result = memcpy((a7 + 48), __src, 0x80uLL);
  *(a7 + 177) = v8;
  *(a7 + 176) = v9;
  return result;
}

MusicKit::CloudMusicCreditsSection::Attributes __swiftcall CloudMusicCreditsSection.Attributes.init(kind:title:)(Swift::String_optional kind, Swift::String_optional title)
{
  *v2 = kind;
  v2[1] = title;
  result.title = title;
  result.kind = kind;
  return result;
}

uint64_t CloudMusicCreditsSection.Attributes.kind.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudMusicCreditsSection.Attributes.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t static CloudMusicCreditsSection.Attributes.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_93();
      if (sub_217753058())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2174A642C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_2174A64F0(char a1)
{
  if (a1)
  {
    return 0x656C746974;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_2174A6524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174A642C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2174A654C(uint64_t a1)
{
  v2 = sub_2174A6720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174A6588(uint64_t a1)
{
  v2 = sub_2174A6720();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudMusicCreditsSection.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28338, &qword_21776C6A0);
  OUTLINED_FUNCTION_0_0(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = v16 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v16[1] = v0[3];
  v16[2] = v14;
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2174A6720();
  sub_2177532F8();
  sub_217752EF8();
  if (!v1)
  {
    sub_217752EF8();
  }

  (*(v17 + 8))(v11, v4);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2174A6720()
{
  result = qword_27CB28340;
  if (!qword_27CB28340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28340);
  }

  return result;
}

uint64_t CloudMusicCreditsSection.Attributes.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  v3 = *v0;
  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudMusicCreditsSection.Attributes.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2177531E8();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudMusicCreditsSection.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28348, &qword_21776C6A8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v22 - v12;
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2174A6720();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v15 = sub_217752E18();
    v17 = v16;
    v18 = sub_217752E18();
    v20 = v19;
    v21 = *(v7 + 8);
    v23 = v18;
    v21(v13, v5);
    *v4 = v15;
    v4[1] = v17;
    v4[2] = v23;
    v4[3] = v20;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174A6AE0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2177531E8();
  CloudMusicCreditsSection.Attributes.hash(into:)();
  return sub_217753238();
}

uint64_t CloudMusicCreditsSection.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217752DC8();

  *a1 = v2 != 0;
  return result;
}

uint64_t CloudMusicCreditsSection.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217752DC8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2174A6C4C@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CloudMusicCreditsSection.Relationships.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_2174A6C98(uint64_t a1)
{
  v2 = sub_2174A84FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174A6CD4(uint64_t a1)
{
  v2 = sub_2174A84FC();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudMusicCreditsSection.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2174A87A0(a1, v17, &qword_27CB24998, &qword_21776C6B0);
  v3 = sub_2174A87A0(a2, v19, &qword_27CB24998, &qword_21776C6B0);
  if (v18)
  {
    v9 = OUTLINED_FUNCTION_14_26(v3, v4, &qword_27CB24998, &qword_21776C6B0, v5, v6, v7, v8, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v17[0]);
    sub_2174A87A0(v9, v10, v11, v12);
    if (v19[2])
    {
      memcpy(v15, v19, sizeof(v15));
      v13 = sub_2172DE220(v16, v15);
      sub_2171F06D8(v15, &qword_27CB249A0, &qword_217758F30);
      sub_2171F06D8(v16, &qword_27CB249A0, &qword_217758F30);
      sub_2171F06D8(v17, &qword_27CB24998, &qword_21776C6B0);
      return (v13 & 1) != 0;
    }

    sub_2171F06D8(v16, &qword_27CB249A0, &qword_217758F30);
  }

  else if (!v19[2])
  {
    sub_2171F06D8(v17, &qword_27CB24998, &qword_21776C6B0);
    return 1;
  }

  sub_2171F06D8(v17, &qword_27CB28350, &unk_21776C6B8);
  return 0;
}

uint64_t CloudMusicCreditsSection.Relationships.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28358, &qword_21776C6C8);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174A84FC();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249A0, &qword_217758F30);
  sub_2174A85F8(&qword_27CB28368, &qword_27CB28370);
  sub_217752F38();
  return (*(v4 + 8))(v10, v2);
}

uint64_t CloudMusicCreditsSection.Relationships.hash(into:)(uint64_t a1)
{
  sub_2174A87A0(v1, __src, &qword_27CB24998, &qword_21776C6B0);
  if (!__src[2])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(v4, __src, sizeof(v4));
  OUTLINED_FUNCTION_24();
  sub_2172DE82C(a1);
  return sub_2171F06D8(v4, &qword_27CB249A0, &qword_217758F30);
}

uint64_t CloudMusicCreditsSection.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_2174A87A0(v0, __src, &qword_27CB24998, &qword_21776C6B0);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE82C(v4);
    sub_2171F06D8(__dst, &qword_27CB249A0, &qword_217758F30);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudMusicCreditsSection.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v17 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28388, &qword_21776C6D8);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15[-v11 - 8];
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2174A84FC();
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249A0, &qword_217758F30);
    sub_2174A85F8(&qword_27CB28390, &qword_27CB28398);
    sub_217752E58();
    (*(v6 + 8))(v12, v4);
    memcpy(v16, v15, sizeof(v16));
    memcpy(v17, v16, 0x80uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174A7328()
{
  sub_2177531E8();
  sub_2174A87A0(v0, __src, &qword_27CB24998, &qword_21776C6B0);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE82C(v4);
    sub_2171F06D8(__dst, &qword_27CB249A0, &qword_217758F30);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2174A73D8(uint64_t a1)
{
  v2 = sub_2174A86F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174A7414(uint64_t a1)
{
  v2 = sub_2174A86F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2174A7518(uint64_t a1)
{
  v2 = sub_2174A874C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174A7554(uint64_t a1)
{
  v2 = sub_2174A874C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2174A75D4()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_2177532F8();
  v12 = OUTLINED_FUNCTION_1_37();
  v13(v12);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudMusicCreditsSection.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudMusicCreditsSection.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
  sub_217751DE8();

  return sub_217751DE8();
}

uint64_t sub_2174A7814()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_27CB23B88 != -1)
  {
    swift_once();
  }

  v1 = *algn_27CB26FC8;
  v2 = byte_27CB26FD0;
  *(v0 + 32) = qword_27CB26FC0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB28330 = v0;

  return sub_217751DE8();
}

uint64_t static CloudMusicCreditsSection.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  if (v10 != *a2 || v11 != v13)
  {
    v10 = sub_217753058();
    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v15 = *(a1 + 32);
  v45 = *(a1 + 16);
  v46 = v15;
  v16 = OUTLINED_FUNCTION_14_26(v10, v11, v12, v13, a5, a6, a7, a8, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  if ((static CloudMusicCreditsSection.Attributes.== infix(_:_:)(v16, v17) & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2174A87A0(a1 + 48, &v45, &qword_27CB24990, &unk_217758F20);
  v18 = sub_2174A87A0(a2 + 48, v47, &qword_27CB24990, &unk_217758F20);
  if (v46 != 1)
  {
    v24 = OUTLINED_FUNCTION_14_26(v18, v19, &qword_27CB24990, &unk_217758F20, v20, v21, v22, v23, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v32[0], v32[1], v32[2], v32[3], v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    sub_2174A87A0(v24, v25, v26, v27);
    if (v47[2] != 1)
    {
      memcpy(v31, v47, sizeof(v31));
      v28 = static CloudMusicCreditsSection.Relationships.== infix(_:_:)(v32, v31);
      sub_217283D18(v31);
      sub_217283D18(v32);
      sub_2171F06D8(&v45, &qword_27CB24990, &unk_217758F20);
      if (!v28)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_217283D18(v32);
LABEL_12:
    sub_2171F06D8(&v45, &qword_27CB283C0, &qword_21776C6F8);
    goto LABEL_15;
  }

  if (v47[2] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F06D8(&v45, &qword_27CB24990, &unk_217758F20);
LABEL_14:
  if (*(a1 + 176) == *(a2 + 176))
  {
    v29 = *(a1 + 177) ^ *(a2 + 177) ^ 1;
    return v29 & 1;
  }

LABEL_15:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_2174A7A90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1635018093 && a2 == 0xE400000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7377656976 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2174A7C34(char a1)
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
      result = 1635018093;
      break;
    case 4:
      result = 0x7377656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2174A7CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174A7A90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2174A7CF8(uint64_t a1)
{
  v2 = sub_2174A8804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174A7D34(uint64_t a1)
{
  v2 = sub_2174A8804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudMusicCreditsSection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB283C8, &qword_21776C700);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174A8804();
  sub_2177532F8();
  v15 = v3[1];
  v19 = *v3;
  *&v20 = v15;
  v22 = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_2_58();
  sub_217752F88();
  if (!v2)
  {
    v16 = v3[5];
    v19 = v3[2];
    v20 = *(v3 + 3);
    v21 = v16;
    v22 = 1;
    sub_2174A8858();
    sub_217751DE8();
    sub_217751DE8();
    sub_217752F88();

    LOBYTE(v19) = 2;
    sub_2174A88AC();
    sub_217752F38();
    LOBYTE(v19) = *(v3 + 176);
    v22 = 3;
    sub_2174A8900();
    OUTLINED_FUNCTION_2_58();
    sub_217752F38();
    LOBYTE(v19) = *(v3 + 177);
    v22 = 4;
    sub_2174A8954();
    OUTLINED_FUNCTION_2_58();
    sub_217752F38();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t CloudMusicCreditsSection.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[4];
  v6 = v1[5];
  if (v1[3])
  {
    v7 = v1[2];
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
    if (v6)
    {
LABEL_3:
      OUTLINED_FUNCTION_24();
      sub_217751FF8();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_6:
  sub_2174A87A0((v1 + 6), __src, &qword_27CB24990, &unk_217758F20);
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    v8 = OUTLINED_FUNCTION_24();
    v14 = OUTLINED_FUNCTION_14_26(v8, v9, &qword_27CB24998, &qword_21776C6B0, v10, v11, v12, v13, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], v21[12], v21[13], v21[14], v21[15], v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], __dst[0]);
    sub_2174A87A0(v14, v15, v16, v17);
    if (v22[2])
    {
      memcpy(v21, v22, sizeof(v21));
      OUTLINED_FUNCTION_24();
      sub_2172DE82C(a1);
      sub_2171F06D8(v21, &qword_27CB249A0, &qword_217758F30);
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217283D18(__dst);
  }

  v18 = *(v1 + 176);
  sub_217753208();
  v19 = *(v1 + 177);
  return sub_217753208();
}

uint64_t CloudMusicCreditsSection.hashValue.getter()
{
  sub_2177531E8();
  CloudMusicCreditsSection.hash(into:)(v1);
  return sub_217753238();
}

void CloudMusicCreditsSection.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB283F8, &qword_21776C708);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2174A8804();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_2172E1C68();
    sub_217752EA8();
    v15[0] = v13[0];
    sub_2174A89A8();
    OUTLINED_FUNCTION_1_55();
    sub_217752EA8();
    v15[1] = v13[0];
    v15[2] = v13[1];
    sub_2174A89FC();
    OUTLINED_FUNCTION_1_55();
    sub_217752E58();
    memcpy(v16, v13, 0x80uLL);
    v14 = 3;
    sub_2174A8A50();
    OUTLINED_FUNCTION_1_55();
    sub_217752E58();
    v16[128] = v13[0];
    v14 = 4;
    sub_2174A8AA4();
    OUTLINED_FUNCTION_1_55();
    sub_217752E58();
    v11 = OUTLINED_FUNCTION_88();
    v12(v11);
    v16[129] = v13[0];
    sub_2174A8AF8(v15, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2174A8B30(v15);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174A84C0()
{
  sub_2177531E8();
  CloudMusicCreditsSection.hash(into:)(v1);
  return sub_217753238();
}

unint64_t sub_2174A84FC()
{
  result = qword_27CB28360;
  if (!qword_27CB28360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28360);
  }

  return result;
}

unint64_t sub_2174A8550()
{
  result = qword_27CB28378;
  if (!qword_27CB28378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28378);
  }

  return result;
}

unint64_t sub_2174A85A4()
{
  result = qword_27CB28380;
  if (!qword_27CB28380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28380);
  }

  return result;
}

uint64_t sub_2174A85F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB249A0, &qword_217758F30);
    sub_2174A8680(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2174A8680(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB249D0, &qword_21776C6D0);
    sub_2174A8550();
    sub_2174A85A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2174A86F8()
{
  result = qword_27CB283A8;
  if (!qword_27CB283A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB283A8);
  }

  return result;
}

unint64_t sub_2174A874C()
{
  result = qword_27CB283B8;
  if (!qword_27CB283B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB283B8);
  }

  return result;
}

uint64_t sub_2174A87A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_93();
  v7(v6);
  return a2;
}

unint64_t sub_2174A8804()
{
  result = qword_27CB283D0;
  if (!qword_27CB283D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB283D0);
  }

  return result;
}

unint64_t sub_2174A8858()
{
  result = qword_27CB283D8;
  if (!qword_27CB283D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB283D8);
  }

  return result;
}

unint64_t sub_2174A88AC()
{
  result = qword_27CB283E0;
  if (!qword_27CB283E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB283E0);
  }

  return result;
}

unint64_t sub_2174A8900()
{
  result = qword_27CB283E8;
  if (!qword_27CB283E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB283E8);
  }

  return result;
}

unint64_t sub_2174A8954()
{
  result = qword_27CB283F0;
  if (!qword_27CB283F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB283F0);
  }

  return result;
}

unint64_t sub_2174A89A8()
{
  result = qword_27CB28400;
  if (!qword_27CB28400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28400);
  }

  return result;
}

unint64_t sub_2174A89FC()
{
  result = qword_27CB28408;
  if (!qword_27CB28408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28408);
  }

  return result;
}

unint64_t sub_2174A8A50()
{
  result = qword_27CB28410;
  if (!qword_27CB28410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28410);
  }

  return result;
}

unint64_t sub_2174A8AA4()
{
  result = qword_27CB28418;
  if (!qword_27CB28418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28418);
  }

  return result;
}

unint64_t sub_2174A8B64()
{
  result = qword_27CB28420;
  if (!qword_27CB28420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28420);
  }

  return result;
}

unint64_t sub_2174A8BBC()
{
  result = qword_27CB28428;
  if (!qword_27CB28428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28428);
  }

  return result;
}

unint64_t sub_2174A8C14()
{
  result = qword_27CB28430;
  if (!qword_27CB28430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28430);
  }

  return result;
}

unint64_t sub_2174A8C6C()
{
  result = qword_27CB28438;
  if (!qword_27CB28438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28438);
  }

  return result;
}

unint64_t sub_2174A8CC4()
{
  result = qword_27CB28440;
  if (!qword_27CB28440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28448, &qword_21776C8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28440);
  }

  return result;
}

unint64_t sub_2174A8D2C()
{
  result = qword_27CB28450;
  if (!qword_27CB28450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28450);
  }

  return result;
}

unint64_t sub_2174A8D84()
{
  result = qword_27CB28458;
  if (!qword_27CB28458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28458);
  }

  return result;
}

unint64_t sub_2174A8DDC()
{
  result = qword_27CB28460;
  if (!qword_27CB28460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28460);
  }

  return result;
}

unint64_t sub_2174A8E54()
{
  result = qword_27CB28468;
  if (!qword_27CB28468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28468);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C12CreditArtistVGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit05CloudA14CreditsSectionV13RelationshipsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_2174A8EE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 178))
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

uint64_t sub_2174A8F24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2174A8FB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2174A9008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *sub_2174A90A0(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudMusicCreditsSection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudMusicCreditsSection.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2174A9324()
{
  result = qword_27CB28470;
  if (!qword_27CB28470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28470);
  }

  return result;
}

unint64_t sub_2174A937C()
{
  result = qword_27CB28478;
  if (!qword_27CB28478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28478);
  }

  return result;
}

unint64_t sub_2174A93D4()
{
  result = qword_27CB28480;
  if (!qword_27CB28480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28480);
  }

  return result;
}

unint64_t sub_2174A942C()
{
  result = qword_27CB28488;
  if (!qword_27CB28488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28488);
  }

  return result;
}

unint64_t sub_2174A9484()
{
  result = qword_27CB28490;
  if (!qword_27CB28490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28490);
  }

  return result;
}

unint64_t sub_2174A94DC()
{
  result = qword_27CB28498;
  if (!qword_27CB28498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28498);
  }

  return result;
}

unint64_t sub_2174A9534()
{
  result = qword_27CB284A0;
  if (!qword_27CB284A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB284A0);
  }

  return result;
}

unint64_t sub_2174A958C()
{
  result = qword_27CB284A8;
  if (!qword_27CB284A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB284A8);
  }

  return result;
}

unint64_t sub_2174A95E4()
{
  result = qword_27CB284B0;
  if (!qword_27CB284B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB284B0);
  }

  return result;
}

unint64_t sub_2174A963C()
{
  result = qword_27CB284B8;
  if (!qword_27CB284B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB284B8);
  }

  return result;
}

uint64_t sub_2174A96D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2174A9774;

  return static MusicSubscription.currentForBackgroundUse.getter(v1 + 32);
}

uint64_t sub_2174A9774()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_2174A98B0;
  }

  else
  {
    v6 = sub_2174A987C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2174A987C()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 34);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 32);
  v3[1] = v1;
  v3[2] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2174A98B0()
{
  OUTLINED_FUNCTION_10();
  if (qword_280BE65D0 != -1)
  {
    swift_once();
  }

  v1 = HIBYTE(word_280C01FE8);
  v2 = byte_280C01FEA;
  v3 = *(v0 + 16);
  *v3 = word_280C01FE8;
  v3[1] = v1;
  v3[2] = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t MusicSubscription.Updates.Iterator.next()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_2174A9A10;

  return (sub_2173D98F0)(a1);
}

uint64_t sub_2174A9A10()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2174A9B38, 0, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_2174A9B38()
{
  v1 = *(v0 + 16);
  *(v1 + 2) = 0;
  *v1 = 2;
  return (*(v0 + 8))();
}

uint64_t sub_2174A9B5C()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2174A9BF0;

  return MusicSubscription.Updates.Iterator.next()(v2);
}

uint64_t sub_2174A9BF0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2174A9CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_2174A9DA4;

  return (sub_2174E4FB8)(a1, a2, a3, v3 + 16);
}

uint64_t sub_2174A9DA4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t MusicSubscription.Updates.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  updated = _s14UpdateTriggersV8IteratorCMa(0);
  v3 = *(updated + 48);
  v4 = *(updated + 52);
  swift_allocObject();
  result = sub_2174E5548();
  *a1 = &unk_21776D200;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 26) = 0;
  *(a1 + 24) = 2;
  return result;
}

unint64_t sub_2174A9F10()
{
  result = qword_27CB284C0;
  if (!qword_27CB284C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB284C0);
  }

  return result;
}

_BYTE *_s7UpdatesVwst(_BYTE *result, int a2, int a3)
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

void sub_2174AA204(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v50 = MEMORY[0x277D84F90];
  sub_2172763AC(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v40 = a1;
  v41 = a5;
  v11 = v50;
  if (v6)
  {
    v12 = a2;
    v13 = &a2[8 * a3];
    v14 = a3;
    while (v5 != v14)
    {
      if (v14 >= v5)
      {
        goto LABEL_24;
      }

      sub_217275710(v13, &v47);
      v49.arr[25] = 0;
      v50 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2172763AC(v15 > 1, v16 + 1, 1);
        v11 = v50;
      }

      ++v14;
      *(v11 + 16) = v16 + 1;
      OUTLINED_FUNCTION_50_13((v11 + (v16 << 6)), v39, v40, v41, v42, v43.n128_i64[0], v43.n128_i64[1], v44.n128_i64[0], v44.n128_i64[1], *v45, *&v45[8], *&v45[16], *&v45[24], v46, v47, v48, v49);
      v13 += 64;
      if (v5 == v14)
      {
        goto LABEL_12;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = a2;
  v14 = a3;
LABEL_12:
  v17 = v12 + (v14 << 6);
  for (i = v14; v5 != i; ++i)
  {
    if (v14 < a3 || i >= v5)
    {
      __break(1u);
      goto LABEL_23;
    }

    v20 = sub_217275710(v17, &v47);
    OUTLINED_FUNCTION_44_14(v20, v21, v22, v23, v24, v25, v26, v27, v39, v40, v41, v42, v43.n128_i64[0], v43.n128_i64[1], v44.n128_i64[0], v44.n128_i64[1], *v45, *&v45[8], *&v45[16], *&v45[24], v46, v47.n128_i64[0], v47.n128_i64[1], v48);
    v50 = v11;
    v12 = *(v11 + 16);
    v28 = *(v11 + 24);
    if (v12 >= v28 >> 1)
    {
      sub_2172763AC(v28 > 1, v12 + 1, 1);
      v11 = v50;
    }

    *(v11 + 16) = v12 + 1;
    OUTLINED_FUNCTION_32_21(v11 + (v12 << 6), v43, v44, *v45, *&v45[9]);
    *(v29 + 89) = HIBYTE(v42);
    v17 += 64;
  }

  v30 = swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_18(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41);
  OUTLINED_FUNCTION_5();
  sub_217751DC8();
  OUTLINED_FUNCTION_5();
  v38 = sub_217751DC8();
  *v12 = v11;
  OUTLINED_FUNCTION_17_21(v38);
}

void sub_2174AA4EC()
{
  OUTLINED_FUNCTION_96_10();
  v5 = *(v4 + 16);
  v56 = MEMORY[0x277D84F90];
  v35 = v6;
  v6(0, v5, 0);
  v7 = v56;
  if (v5)
  {
    v8 = *(v1 + 16);
    v9 = v1 + 32;
    v10 = v5;
    while (v8)
    {
      v2(v9, &v53);
      v55[24] = 0;
      OUTLINED_FUNCTION_95_11();
      if (v11)
      {
        OUTLINED_FUNCTION_36_17();
        v12();
        v7 = v56;
      }

      *(v7 + 16) = v3;
      OUTLINED_FUNCTION_32_21(v7 + (v0 << 6), v53, v54, *v55, *&v55[9]);
      v9 += 56;
      --v8;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v13 = v1 + 56 * v5 + 32;
    while (1)
    {
      v14 = *(v1 + 16);
      if (v5 == v14)
      {

        OUTLINED_FUNCTION_31_18(v24, v25, v26, v27, v28, v29, v30, v31, v33, v35, v37);
        OUTLINED_FUNCTION_5();
        sub_217751DC8();
        OUTLINED_FUNCTION_5();
        v32 = sub_217751DC8();
        *v0 = v7;
        OUTLINED_FUNCTION_17_21(v32);
        return;
      }

      if (v5 >= v14)
      {
        break;
      }

      v15 = v2(v13, &v53);
      OUTLINED_FUNCTION_51_14(v15, v16, v17, v18, v19, v20, v21, v22, v33, v35, v37, v39, v41, v43, v44, v46, v47, v49, v50, v52, v53.n128_i64[0], v53.n128_i64[1], *&v54);
      OUTLINED_FUNCTION_95_11();
      if (v11)
      {
        OUTLINED_FUNCTION_36_17();
        v23();
        v7 = v56;
      }

      *(v7 + 16) = v3;
      OUTLINED_FUNCTION_34_19(v7 + (v0 << 6), v34, v36, v38, v40, v42, v45, v48, v51);
      ++v5;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2174AA6D0()
{
  OUTLINED_FUNCTION_96_10();
  v3 = *(v2 + 16);
  v44 = MEMORY[0x277D84F90];
  v34 = v4;
  v4(0, v3, 0);
  v5 = v44;
  if (v3)
  {
    v6 = *(v0 + 16);
    v7 = v0 + 32;
    v8 = v3;
    while (v6)
    {
      v1(v7, &v41);
      v43.arr[25] = 0;
      v44 = v5;
      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_36_17();
        v10();
        v5 = v44;
      }

      *(v5 + 16) = v9 + 1;
      OUTLINED_FUNCTION_50_13((v5 + (v9 << 6)), v33, v34, v35, v36, v37.n128_i64[0], v37.n128_i64[1], v38.n128_i64[0], v38.n128_i64[1], *v39, *&v39[8], *&v39[16], *&v39[24], v40, v41, v42, v43);
      v7 += 64;
      --v6;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    for (i = v0 + (v3 << 6) + 32; ; i += 64)
    {
      v12 = *(v0 + 16);
      if (v3 == v12)
      {

        OUTLINED_FUNCTION_31_18(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35);
        OUTLINED_FUNCTION_5();
        sub_217751DC8();
        OUTLINED_FUNCTION_5();
        v32 = sub_217751DC8();
        *v3 = v5;
        OUTLINED_FUNCTION_17_21(v32);
        return;
      }

      if (v3 >= v12)
      {
        break;
      }

      v13 = (v1)(i, &v41);
      OUTLINED_FUNCTION_44_14(v13, v14, v15, v16, v17, v18, v19, v20, v33, v34, v35, v36, v37.n128_i64[0], v37.n128_i64[1], v38.n128_i64[0], v38.n128_i64[1], *v39, *&v39[8], *&v39[16], *&v39[24], v40, v41.n128_i64[0], v41.n128_i64[1], v42);
      v44 = v5;
      v21 = *(v5 + 16);
      if (v21 >= *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_36_17();
        v23();
        v5 = v44;
      }

      *(v5 + 16) = v21 + 1;
      OUTLINED_FUNCTION_32_21(v5 + (v21 << 6), v37, v38, *v39, *&v39[9]);
      *(v22 + 89) = HIBYTE(v36);
      ++v3;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2174AA930(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(BOOL, unint64_t, uint64_t)@<X4>, void (*a6)(uint64_t, __n128 *)@<X5>, uint64_t a7@<X8>)
{
  v39 = a1;
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v58 = MEMORY[0x277D84F90];
  a5(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v35 = a5;
  v37 = a7;
  v14 = v58;
  if (v8)
  {
    v15 = a2 + 56 * a3;
    v16 = a3;
    while (v7 != v16)
    {
      if (v16 >= v7)
      {
        goto LABEL_24;
      }

      a6(v15, &v55);
      v57[24] = 0;
      v58 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        v35(v17 > 1, v18 + 1, 1);
        v14 = v58;
      }

      ++v16;
      *(v14 + 16) = v18 + 1;
      OUTLINED_FUNCTION_32_21(v14 + (v18 << 6), v55, v56, *v57, *&v57[9]);
      v15 += 56;
      if (v7 == v16)
      {
        goto LABEL_12;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = a3;
LABEL_12:
  v19 = a2 + 56 * v16;
  for (i = v16; v7 != i; ++i)
  {
    if (v16 < a3 || i >= v7)
    {
      __break(1u);
      goto LABEL_23;
    }

    v22 = (a6)(v19, &v55);
    v30 = OUTLINED_FUNCTION_51_14(v22, v23, v24, v25, v26, v27, v28, v29, v35, v37, v39, v41, v43, v45, v46, v48, v49, v51, v52, v54, v55.n128_i64[0], v55.n128_i64[1], *&v56);
    v58 = v14;
    v32 = *(v14 + 16);
    v31 = *(v14 + 24);
    if (v32 >= v31 >> 1)
    {
      v36(v31 > 1, v32 + 1, 1, v30);
      v14 = v58;
    }

    *(v14 + 16) = v32 + 1;
    OUTLINED_FUNCTION_34_19(v14 + (v32 << 6), v36, v38, v40, v42, v44, *&v47, *&v50, v53);
  }

  swift_unknownObjectRelease();
  *(v37 + 48) = 0;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0u;
  OUTLINED_FUNCTION_5();
  v33 = sub_217751DC8();
  OUTLINED_FUNCTION_5();
  v34 = sub_217751DC8();
  *v37 = v14;
  *(v37 + 8) = 0;
  *(v37 + 56) = 0u;
  *(v37 + 72) = 0u;
  *(v37 + 88) = v33;
  *(v37 + 96) = v34;
}

void *sub_2174AADF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_22_25(a1, a2, a3);
  result = sub_2174AF978(v4, v5, v6);
  if (result)
  {
    v8 = result;
    if (([result respondsToSelector_] & 1) != 0 && (v9 = objc_msgSend(v8, sel_musicKit_modelObjectStorageDictionary)) != 0)
    {
      v10 = v9;
      v11 = sub_217751D98();
    }

    else
    {
      v11 = sub_217751DC8();
    }

    v12 = sub_21729E4EC(v11);

    sub_2173AC948(v3 & 1, v12);

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2174AAF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), void (*a6)(void *__return_ptr, uint64_t, uint64_t))
{
  result = sub_2174AF978(a3, a1, a4);
  if (result)
  {
    v10 = result;
    if (([result respondsToSelector_] & 1) != 0 && (v11 = objc_msgSend(v10, sel_musicKit_modelObjectStorageDictionary)) != 0)
    {
      v12 = v11;
      v13 = sub_217751D98();
    }

    else
    {
      v13 = sub_217751DC8();
    }

    v14 = a5(v13);

    a6(v16, a2, v14);

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
    if (swift_dynamicCast())
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2174AB0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2174AF978(a3, a1, sub_217632A20);
  if (result)
  {
    v5 = result;
    if (([result respondsToSelector_] & 1) != 0 && (v6 = objc_msgSend(v5, sel_musicKit_modelObjectStorageDictionary)) != 0)
    {
      v7 = v6;
      v8 = sub_217751D98();
    }

    else
    {
      v8 = sub_217751DC8();
    }

    v9 = sub_21729F92C(v8);

    sub_2173ACBB4(a2, v9);

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MusicVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)()
{
  OUTLINED_FUNCTION_12();
  v321 = v1;
  v324 = v2;
  v4 = v3;
  v6 = v5;
  v318 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_6_1();
  v302 = v13 - v14;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_99();
  v303 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_80();
  v315 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v22 = OUTLINED_FUNCTION_45_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_6_1();
  v304 = v26 - v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_99();
  v317 = v30;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v31, v32);
  OUTLINED_FUNCTION_99();
  v316 = v33;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v34, v35);
  OUTLINED_FUNCTION_99();
  *&v319 = v36;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v37, v38);
  OUTLINED_FUNCTION_99();
  *&v322 = v39;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v40, v41);
  OUTLINED_FUNCTION_80();
  v314 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A48, &qword_217765A38);
  OUTLINED_FUNCTION_45_0(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v301 - v48;
  v50 = type metadata accessor for MusicVideoPropertyProvider();
  v51 = OUTLINED_FUNCTION_43(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51, v54);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v301 - v57;
  memcpy(v334, v6, 0x161uLL);
  v325 = v4;
  if (([v4 respondsToSelector_] & 1) != 0 && (v59 = objc_msgSend(v325, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v60 = v59;
    v61 = sub_217751D98();
  }

  else
  {
    v61 = sub_217751DC8();
  }

  v69 = sub_21729F5B4(v61, v62, v63, v64, v65, v66, v67, v68, v301, v302, v303, v304, v305, v306, v307, v308, v309, object, countAndFlagsBits, v312, v313, v314, v315, v316, v317, v318, v319, *(&v319 + 1), v320, v321, v322, *(&v322 + 1), v323, v324, v325, *v326, *&v326[8], *&v326[16]);

  memcpy(v330, v6, 0x161uLL);
  if (qword_280BE8B28 != -1)
  {
    swift_once();
  }

  v328[0] = qword_280BE8B30;
  v328[1] = *algn_280BE8B38;
  LOBYTE(v328[2]) = byte_280BE8B40;
  v70 = qword_280BE8B68;
  sub_217751DE8();
  if (v70 != -1)
  {
    swift_once();
  }

  v327[0] = qword_280BE8B70;
  v327[1] = *algn_280BE8B78;
  LOBYTE(v327[2]) = byte_280BE8B80;
  sub_217751DE8();
  v335.value.rawValue._countAndFlagsBits = v328;
  v335.value.rawValue._object = v327;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v329, v335, v336);

  object = v329[0].id.rawValue._object;
  countAndFlagsBits = v329[0].type.rawValue._countAndFlagsBits;
  v71 = v329[0].type.rawValue._object;
  HIDWORD(v312) = v329[0].type.isLibraryType;
  v313 = v329[0].href.value._countAndFlagsBits;
  v72 = v329[0].href.value._object;
  sub_2171F50C0(v324, v329, &qword_27CB27590, &qword_21776ADF0);
  if (!v329[0].type.rawValue._object)
  {
    sub_2171F0738(v329, &qword_27CB27590, &qword_21776ADF0);
    memset(v330, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v330, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v330[1] + 1))
  {
LABEL_16:
    sub_2171F0738(v330, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  sub_2171F3F0C(v330, v331);
  v73 = v332;
  v74 = v333;
  __swift_project_boxed_opaque_existential_1(v331, v332);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v73, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_53_14();
    sub_21739EF44(v49, v0);
    OUTLINED_FUNCTION_24_23();
    sub_2174AFD5C(v0, v58);
    memcpy(v330, v334, 0x161uLL);
    v75 = v50[61];
    memcpy(v327, (v0 + v75), 0x161uLL);
    memcpy(v326, (v0 + v75), sizeof(v326));
    sub_217269EF4(v327, v329);
    MusicIdentifierSet.union(_:)();
    memcpy(v328, v326, 0x161uLL);
    sub_217269F50(v328);
    sub_21739EFA8(v0);
    v76 = v50[61];
    memcpy(v330, &v58[v76], 0x161uLL);
    sub_217269F50(v330);
    memcpy(&v58[v76], v329, 0x161uLL);
    v77 = &v58[v50[62]];
    v78 = *(v77 + 1);
    sub_217751DE8();

    *v77 = countAndFlagsBits;
    *(v77 + 1) = v71;
    v77[16] = BYTE4(v312);
    v79 = &v58[v50[63]];
    v80 = *(v79 + 1);

    *v79 = v313;
    *(v79 + 1) = v72;
    __swift_destroy_boxed_opaque_existential_1(v331);
    goto LABEL_22;
  }

  v298 = OUTLINED_FUNCTION_93_10();
  __swift_storeEnumTagSinglePayload(v298, v299, 1, v50);
  sub_2171F0738(v49, &qword_27CB26A48, &qword_217765A38);
  __swift_destroy_boxed_opaque_existential_1(v331);
LABEL_17:
  sub_217269EF4(v334, v330);
  v309 = v72;
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_5();
  v308 = sub_217751DC8();
  OUTLINED_FUNCTION_5();
  v307 = sub_217751DC8();
  OUTLINED_FUNCTION_5();
  v306 = sub_217751DC8();
  OUTLINED_FUNCTION_5();
  v305 = sub_217751DC8();
  sub_2172A497C(v330);
  memcpy(v58, v330, 0x221uLL);
  sub_21733B708(v329);
  memcpy(v58 + 552, v329, 0x161uLL);
  *(v58 + 114) = 0;
  *(v58 + 920) = 0u;
  v58[936] = 1;
  *(v58 + 59) = 0u;
  v81 = v50[9];
  v82 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v58[v81], 1, 1, v82);
  v83 = &v58[v50[10]];
  v83[4] = 0;
  *v83 = 512;
  v58[v50[11]] = 2;
  OUTLINED_FUNCTION_12_0(v50[12]);
  *&v58[v50[13]] = 0;
  v84 = &v58[v50[14]];
  *v84 = xmmword_2177586D0;
  *(v84 + 1) = 0u;
  *(v84 + 2) = 0u;
  *(v84 + 3) = 0u;
  *&v58[v50[15]] = 0;
  *&v58[v50[16]] = 0;
  v58[v50[17]] = 2;
  v58[v50[18]] = 2;
  v58[v50[19]] = 2;
  v85 = OUTLINED_FUNCTION_6_6(v50[20]);
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v82);
  v58[v50[21]] = 2;
  OUTLINED_FUNCTION_19_19(v50[22]);
  OUTLINED_FUNCTION_19_19(v50[23]);
  *(v88 + 16) = 0;
  OUTLINED_FUNCTION_19_19(v50[24]);
  *(v89 + 16) = 1;
  memcpy(&v58[v50[25]], v330, 0x221uLL);
  *&v58[v50[26]] = 0;
  v90 = &v58[v50[27]];
  *(v90 + 14) = 0;
  *(v90 + 5) = 0u;
  *(v90 + 6) = 0u;
  *(v90 + 3) = 0u;
  *(v90 + 4) = 0u;
  *(v90 + 1) = 0u;
  *(v90 + 2) = 0u;
  *v90 = 0u;
  *&v58[v50[28]] = 0;
  v91 = v50[29];
  v92 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(&v58[v91], 1, 1, v92);
  OUTLINED_FUNCTION_12_0(v50[30]);
  OUTLINED_FUNCTION_19_19(v50[31]);
  OUTLINED_FUNCTION_12_0(v50[32]);
  v93 = OUTLINED_FUNCTION_6_6(v50[33]);
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v82);
  OUTLINED_FUNCTION_19_19(v50[34]);
  v96 = OUTLINED_FUNCTION_6_6(v50[35]);
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v92);
  v58[v50[36]] = 3;
  v58[v50[37]] = 2;
  v58[v50[38]] = 2;
  v58[v50[39]] = 2;
  v58[v50[40]] = 5;
  v58[v50[41]] = 7;
  OUTLINED_FUNCTION_12_0(v50[42]);
  v99 = OUTLINED_FUNCTION_6_6(v50[43]);
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v92);
  v102 = OUTLINED_FUNCTION_6_6(v50[44]);
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v92);
  OUTLINED_FUNCTION_12_0(v50[45]);
  v58[v50[46]] = 2;
  v58[v50[47]] = 10;
  OUTLINED_FUNCTION_12_0(v50[48]);
  v105 = &v58[v50[49]];
  *(v105 + 12) = 0;
  *(v105 + 4) = 0u;
  *(v105 + 5) = 0u;
  *(v105 + 2) = 0u;
  *(v105 + 3) = 0u;
  *v105 = 0u;
  *(v105 + 1) = 0u;
  OUTLINED_FUNCTION_0_58(v50[50], 0);
  OUTLINED_FUNCTION_0_58(v50[51], v106);
  OUTLINED_FUNCTION_0_58(v50[52], v107);
  OUTLINED_FUNCTION_0_58(v50[53], v108);
  OUTLINED_FUNCTION_0_58(v50[54], v109);
  OUTLINED_FUNCTION_0_58(v50[55], v110);
  OUTLINED_FUNCTION_0_58(v50[56], v111);
  *&v58[v50[57]] = 0;
  v112 = &v58[v50[58]];
  *v112 = 0;
  v112[8] = 1;
  *&v58[v50[59]] = 0;
  if (qword_280BE5E60 != -1)
  {
    swift_once();
  }

  v113 = qword_280C01FE0;
  if (qword_280C01FE0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v300 = sub_217752D28();
    v114 = v309;

    v113 = v300;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v114 = v309;
  }

  *&v58[v50[60]] = v113;
  v115 = &v58[v50[63]];
  memcpy(&v58[v50[61]], v334, 0x161uLL);
  v116 = &v58[v50[62]];
  *v116 = countAndFlagsBits;
  *(v116 + 1) = v71;
  v116[16] = BYTE4(v312);
  *v115 = v313;
  *(v115 + 1) = v114;
  v117 = v307;
  *&v58[v50[64]] = v308;
  *&v58[v50[65]] = v117;
  v118 = v305;
  *&v58[v50[66]] = v306;
  *&v58[v50[67]] = v118;
LABEL_22:
  KeyPath = swift_getKeyPath();
  sub_2174AF15C(KeyPath, v69, 33, &unk_28295B548);

  v120 = v314;
  if (!*(v58 + 115))
  {
    OUTLINED_FUNCTION_26_25();
    v122 = sub_2174AAF7C(33, 25, v69, v121, sub_21729F92C, sub_2173ACBB4);
    if (v123)
    {
      *(v58 + 114) = v122;
      *(v58 + 115) = v123;
    }
  }

  if (v58[936])
  {
    v124 = sub_2174AB0E4(33, 26, v69);
    if ((v125 & 1) == 0)
    {
      *(v58 + 116) = v124;
      v58[936] = 0;
    }
  }

  if (!*(v58 + 119))
  {
    OUTLINED_FUNCTION_26_25();
    v127 = sub_2174AAF7C(34, 11, v69, v126, sub_21729F770, sub_2173ACB9C);
    if (v128)
    {
      *(v58 + 118) = v127;
      *(v58 + 119) = v128;
    }
  }

  sub_2174AFBCC(v325, Song.LegacyModelSongPropertyKey.rawValue.getter, v326);
  if (*&v326[24])
  {
    sub_2171F3F0C(v326, v327);
    sub_2171FF30C(v327, v330);
    v329[0].id.rawValue._countAndFlagsBits = 1;
    v329[0].id.rawValue._object = 0;
    v329[0].type.rawValue._object = 0;
    v329[0].type.rawValue._countAndFlagsBits = 0;
    Artwork.init(_:alternateText:existingColorAnalysis:)(v330, 0, 0, v329, v328);
    memcpy(v329, v328, 0x221uLL);
    nullsub_1(v329, v129);
    memcpy(v330, v58, 0x221uLL);
    sub_2171F0738(v330, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v58, v329, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v327);
  }

  else
  {
    sub_2171F0738(v326, &qword_27CB28308, &qword_21776C430);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF2FC();

  v130 = sub_2172A3AEC();
  if ((v131 & 1) == 0)
  {
    v132 = [objc_opt_self() cloudStatusForRawValue_];
    if (v132 >= 0xA)
    {
      v133 = 0;
    }

    else
    {
      v133 = v132;
    }

    v58[v50[47]] = v133;
  }

  v134 = &v58[v50[12]];
  if (v134[8])
  {
    v135 = sub_2172A3ACC();
    if ((v136 & 1) == 0)
    {
      *v134 = v135;
      v134[8] = 0;
    }
  }

  v137 = v50[11];
  if (v58[v137] == 2)
  {
    sub_2172A3B0C(8, v69);
    OUTLINED_FUNCTION_7_1();
    if (!v139)
    {
      v58[v137] = v138 & 1;
    }
  }

  sub_2172A3B24(v69, v120);
  v313 = sub_2177517D8();
  OUTLINED_FUNCTION_133(v120, 1, v313);
  if (!v139)
  {
    OUTLINED_FUNCTION_117_0();
    sub_2171F50C0(v140, v141, v142, v143);
    OUTLINED_FUNCTION_169_1(&v58[v50[35]]);
    OUTLINED_FUNCTION_117_0();
    sub_2174AFCB8(v144, v145, v146, v147);
  }

  sub_2171F0738(v120, &qword_27CB241C0, &qword_217759480);
  sub_2172A3B0C(13, v69);
  OUTLINED_FUNCTION_7_1();
  if (!v139)
  {
    v149 = v148;
    sub_2172A3B0C(14, v69);
    OUTLINED_FUNCTION_7_1();
    if (!v139)
    {
      if (v149)
      {
        if (v150)
        {
          v152 = 0;
        }

        else
        {
          v152 = 2;
        }
      }

      else
      {
        v152 = v150 & 1;
      }

      goto LABEL_61;
    }
  }

  sub_2172A3B0C(14, v69);
  OUTLINED_FUNCTION_7_1();
  if (!v139 && (v151 & 1) != 0)
  {
    v152 = 1;
LABEL_61:
    v58[v50[36]] = v152;
    goto LABEL_62;
  }

  sub_2172A3B0C(13, v69);
  OUTLINED_FUNCTION_7_1();
  if (!v139 && (v153 & 1) != 0)
  {
    v152 = 2;
    goto LABEL_61;
  }

LABEL_62:
  sub_2172A3B0C(9, v69);
  OUTLINED_FUNCTION_7_1();
  if (!v139)
  {
    v58[v50[46]] = v154;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF46C();

  sub_2172A3B0C(15, v69);
  OUTLINED_FUNCTION_7_1();
  if (!v139)
  {
    v58[v50[37]] = v155;
  }

  sub_2172A3B0C(16, v69);
  OUTLINED_FUNCTION_7_1();
  if (!v139)
  {
    v58[v50[38]] = v156;
  }

  v157 = v50[20];
  v158 = v315;
  sub_2171F50C0(&v58[v157], v315, &unk_27CB277C0, &qword_217758DC0);
  v159 = sub_2177516D8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v158, 1, v159);
  sub_2171F0738(v158, &unk_27CB277C0, &qword_217758DC0);
  v161 = v313;
  if (EnumTagSinglePayload == 1)
  {
    v162 = v303;
    sub_2172A3E28(v69, v303);
    v163 = OUTLINED_FUNCTION_73_0();
    OUTLINED_FUNCTION_133(v163, v164, v159);
    if (!v139)
    {
      OUTLINED_FUNCTION_117_0();
      sub_2171F50C0(v165, v166, v167, v168);
      OUTLINED_FUNCTION_169_1(&v58[v157]);
      OUTLINED_FUNCTION_117_0();
      sub_2174AFCB8(v169, v170, v171, v172);
    }

    sub_2171F0738(v162, &unk_27CB277C0, &qword_217758DC0);
  }

  sub_2172A3B0C(18, v69);
  OUTLINED_FUNCTION_7_1();
  if (!v139)
  {
    v58[v50[39]] = v173;
  }

  v174 = sub_2172A3AEC();
  v175 = v316;
  if ((v176 & 1) == 0)
  {
    v177 = [objc_opt_self() keepLocalEnabledStateForRawValue_];
    if (v177 < 5)
    {
      v58[v50[40]] = v177;
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AE898();

  v178 = sub_2172A3AEC();
  if ((v179 & 1) == 0)
  {
    v180 = [objc_opt_self() keepLocalManagedStatusReasonsForRawValue_];
    v181 = &v58[v50[42]];
    *v181 = v180 & 0x7F;
    v181[8] = 0;
  }

  v182 = v319;
  sub_2172A3B24(v69, v319);
  v183 = OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_133(v183, v184, v161);
  if (!v139)
  {
    OUTLINED_FUNCTION_117_0();
    sub_2171F50C0(v185, v186, v187, v188);
    OUTLINED_FUNCTION_169_1(&v58[v50[43]]);
    v182 = v319;
    OUTLINED_FUNCTION_117_0();
    sub_2174AFCB8(v189, v190, v191, v192);
  }

  sub_2171F0738(v182, &qword_27CB241C0, &qword_217759480);
  sub_2172A3B24(v69, v175);
  v193 = OUTLINED_FUNCTION_93_10();
  OUTLINED_FUNCTION_133(v193, v194, v161);
  if (!v139)
  {
    OUTLINED_FUNCTION_117_0();
    sub_2171F50C0(v195, v196, v197, v198);
    OUTLINED_FUNCTION_169_1(&v58[v50[44]]);
    OUTLINED_FUNCTION_117_0();
    sub_2174AFCB8(v199, v200, v201, v202);
  }

  sub_2171F0738(v175, &qword_27CB241C0, &qword_217759480);
  v203 = sub_2172A3AEC();
  if ((v204 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v203, v50[45]);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF618();

  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  sub_2174AF79C();

  v205 = v50[29];
  v206 = v317;
  OUTLINED_FUNCTION_117_0();
  sub_2171F50C0(v207, v208, v209, v210);
  v211 = OUTLINED_FUNCTION_93_10();
  v213 = __swift_getEnumTagSinglePayload(v211, v212, v161);
  OUTLINED_FUNCTION_169_1(v206);
  if (v213 == 1)
  {
    v214 = v304;
    sub_2172A3B24(v69, v304);
    v215 = OUTLINED_FUNCTION_73_0();
    OUTLINED_FUNCTION_133(v215, v216, v161);
    if (!v139)
    {
      OUTLINED_FUNCTION_117_0();
      sub_2171F50C0(v217, v218, v219, v220);
      OUTLINED_FUNCTION_169_1(&v58[v205]);
      OUTLINED_FUNCTION_117_0();
      sub_2174AFCB8(v221, v222, v223, v224);
    }

    sub_2171F0738(v214, &qword_27CB241C0, &qword_217759480);
  }

  v225 = sub_2172A3AEC();
  if ((v226 & 1) == 0 && v225)
  {
    OUTLINED_FUNCTION_16_2(v225, v50[30]);
  }

  v227 = &v58[v50[31]];
  v228 = v321;
  if (!v227[1])
  {
    v229 = sub_2172A3B50(28, v69);
    if (v230)
    {
      *v227 = v229;
      v227[1] = v230;
    }
  }

  v231 = &v58[v50[32]];
  if (v231[8])
  {
    v232 = sub_2172A3AEC();
    if ((v233 & 1) == 0)
    {
      if (v232)
      {
        *v231 = v232;
        v231[8] = 0;
      }
    }
  }

  v234 = sub_2172A3ACC();
  if ((v235 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v234, v50[48]);
  }

  v236 = swift_getKeyPath();
  sub_2174AEEDC(v236, v334);

  v237 = sub_217269F50(v334);
  if (qword_280BE6BB0 != -1)
  {
    v237 = OUTLINED_FUNCTION_17_0();
  }

  *&v330[0] = qword_280BE6BB8;
  MEMORY[0x28223BE20](v237, v238);
  OUTLINED_FUNCTION_18_24();
  v240 = sub_2173DDC78(sub_2174A5E68, v239, v228);
  v242 = &unk_217758000;
  if (v240)
  {
    v243 = OUTLINED_FUNCTION_2_59();
    v240 = sub_2174AF978(v243, 33, v244);
    if (v240)
    {
      v245 = v240;
      if (qword_280BE85B8 != -1)
      {
        OUTLINED_FUNCTION_41_1();
      }

      v247 = qword_280BE85D0;
      v246 = unk_280BE85D8;
      v322 = xmmword_280BE85C0;
      v248 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v329[0].id = v322;
      v329[0].type.rawValue._countAndFlagsBits = v247;
      v329[0].type.rawValue._object = v246;
      OUTLINED_FUNCTION_64_15(&unk_28295B578);
      sub_217751DE8();
      OUTLINED_FUNCTION_35_16();
      sub_2172B6904(v248, v249, v250, v251, v252);
      OUTLINED_FUNCTION_63_13();
      swift_unknownObjectRetain();
      v253 = OUTLINED_FUNCTION_38_13();
      Album.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v253, v254, v255, v256, v257);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F8, &qword_217758D80);
      v258 = swift_allocObject();
      v242 = &unk_217758000;
      *(v258 + 16) = xmmword_2177586E0;
      sub_21725CF0C(v329, v258 + 32);
      sub_2174AA4EC();
      v259 = v50[49];
      sub_2171F0738(&v58[v259], &qword_27CB25318, &qword_2177657C0);
      memcpy(&v58[v259], v330, 0x68uLL);
      swift_unknownObjectRelease();
      v240 = sub_21725CE44(v329);
      v228 = v321;
    }
  }

  if (qword_280BE6B58 != -1)
  {
    v240 = OUTLINED_FUNCTION_15_7();
  }

  *&v330[0] = qword_280BE6B60;
  MEMORY[0x28223BE20](v240, v241);
  OUTLINED_FUNCTION_18_24();
  v261 = sub_2173DDC78(sub_2174A6244, v260, v228);
  if (v261)
  {
    v263 = OUTLINED_FUNCTION_2_59();
    v261 = sub_2174AF978(v263, 34, v264);
    if (v261)
    {
      v265 = v261;
      *&v322 = 0;
      if (qword_280BE2A18 != -1)
      {
        swift_once();
      }

      v267 = qword_280BE2A30;
      v266 = unk_280BE2A38;
      v319 = xmmword_280BE2A20;
      v268 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v329[0].id = v319;
      v329[0].type.rawValue._countAndFlagsBits = v267;
      v329[0].type.rawValue._object = v266;
      OUTLINED_FUNCTION_64_15(&unk_28295B5B8);
      sub_217751DE8();
      OUTLINED_FUNCTION_35_16();
      sub_2172B6904(v268, v269, v270, v271, v272);
      OUTLINED_FUNCTION_63_13();
      swift_unknownObjectRetain();
      v273 = OUTLINED_FUNCTION_38_13();
      Artist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v273, v274, v275, v276, v277);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24758, &qword_217758CE0);
      v278 = swift_allocObject();
      v242 = &unk_217758000;
      *(v278 + 16) = xmmword_2177586E0;
      sub_21725CF68(v329, v278 + 32);
      sub_2174AA4EC();
      v279 = v50[51];
      sub_2171F0738(&v58[v279], &qword_27CB25310, &unk_21775D3D0);
      memcpy(&v58[v279], v330, 0x68uLL);
      swift_unknownObjectRelease();
      v261 = sub_217284498(v329);
      v228 = v321;
    }
  }

  if (qword_280BE6B98 != -1)
  {
    v261 = OUTLINED_FUNCTION_14_4();
  }

  *&v330[0] = qword_280BE6BA0;
  MEMORY[0x28223BE20](v261, v262);
  OUTLINED_FUNCTION_18_24();
  v281 = sub_2173DDC78(sub_2174A6244, v280, v228);

  if (v281)
  {
    v282 = OUTLINED_FUNCTION_2_59();
    v284 = sub_2174AF978(v282, 37, v283);

    if (v284)
    {
      if (qword_280BE2A80 != -1)
      {
        swift_once();
      }

      v286 = qword_280BE2A98;
      v285 = unk_280BE2AA0;
      v322 = xmmword_280BE2A88;
      v287 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v329[0].id = v322;
      v329[0].type.rawValue._countAndFlagsBits = v286;
      v329[0].type.rawValue._object = v285;
      OUTLINED_FUNCTION_64_15(&unk_28295B5F8);
      sub_217751DE8();
      OUTLINED_FUNCTION_35_16();
      sub_2172B6904(v287, v288, v289, v290, v291);
      OUTLINED_FUNCTION_63_13();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_38_13();
      Genre.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v292, v293, v294);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24620, &qword_217758B60);
      v295 = swift_allocObject();
      *(v295 + 16) = v242[110];
      sub_217284130(v329, v295 + 32);
      sub_2174AA4EC();
      v296 = v50[52];
      sub_2171F0738(&v58[v296], &qword_27CB25320, &unk_21776E020);
      memcpy(&v58[v296], v330, 0x68uLL);
      swift_unknownObjectRelease();
      sub_21728418C(v329);
    }
  }

  else
  {
  }

  *(&v330[1] + 1) = v50;
  *&v330[2] = &protocol witness table for MusicVideoPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v330);
  OUTLINED_FUNCTION_24_23();
  sub_2174AFD5C(v58, v297);
  MusicVideo.init(propertyProvider:)(v330, v318);
  swift_unknownObjectRelease();
  sub_2171F0738(v324, &qword_27CB27590, &qword_21776ADF0);
  sub_21739EFA8(v58);
  OUTLINED_FUNCTION_13();
}

void MusicVideo.convertToLegacyModelStorageDictionary(for:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v319[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_6_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v319[-1] - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v319[-1] - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v319[-1] - v29;
  v31 = *v3;
  sub_2172A546C();
  v322 = sub_217751DC8();
  if (qword_280BE6B50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_23();
  sub_2176CA83C(v32, v33, v34, v35, v36, v37, v38, v39, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16]);
  memcpy(v323, v321, 0x221uLL);
  memcpy(v324, v321, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v324) == 1)
  {
    memset(v320, 0, 32);
  }

  else
  {
    memcpy(v319, v324, 0x221uLL);
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(0, 0, v320);
    sub_2171F0738(v323, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_21729D81C(v320, 0);
  if (qword_280BE6D38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_23();
  sub_2176CA848(v40, v41, v42, v43, v44, v45, v46, v47, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16]);
  if ((v321[0] & 0xFF00) == 0x200)
  {
    v48 = OUTLINED_FUNCTION_14_27();
  }

  else
  {
    sub_2176FE84C();
    OUTLINED_FUNCTION_101();
    v48 = sub_2173AB24C();
  }

  v321[0] = &v322;
  v321[3] = v48;
  v49 = OUTLINED_FUNCTION_10_28();
  sub_21729D81C(v49, 35);
  if (qword_280BE6D78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_23();
  sub_2176CB35C(v50, v51, v52, v53, v54, v55, v56, v57, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18]);
  v58 = LOBYTE(v321[0]);
  v59 = MEMORY[0x277D83B88];
  switch(LOBYTE(v321[0]))
  {
    case 1:
      v58 = 1;
      goto LABEL_24;
    case 2:
      v58 = 2;
      goto LABEL_24;
    case 3:
      v58 = 3;
      goto LABEL_24;
    case 4:
      v58 = 4;
      goto LABEL_24;
    case 5:
      v58 = 5;
      goto LABEL_24;
    case 6:
      v58 = 6;
      goto LABEL_24;
    case 7:
      v58 = 7;
      goto LABEL_24;
    case 8:
      v58 = 8;
      goto LABEL_24;
    case 9:
      v58 = 9;
      goto LABEL_24;
    case 0xA:
      memset(v321, 0, 32);
      goto LABEL_25;
    default:
LABEL_24:
      v60 = [objc_opt_self() rawValueForCloudStatus_];
      v321[3] = v59;
      v321[0] = v60;
LABEL_25:
      v61 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v61, 5);
      if (qword_280BE6B38 != -1)
      {
        swift_once();
      }

      v62 = sub_2172A4330();
      if (v63)
      {
        v62 = OUTLINED_FUNCTION_3_53();
      }

      else
      {
        v64 = MEMORY[0x277D839F8];
      }

      HIDWORD(v318) = v31;
      v65 = OUTLINED_FUNCTION_4_57(v62, v64);
      sub_21729D81C(v65, 7);
      if (qword_280BE6D00 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_21_23();
      sub_2176CA688(v66, v67, v68, v69, v70, v71, v72, v73, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18]);
      v74 = MEMORY[0x277D839B0];
      v321[3] = MEMORY[0x277D839B0];
      LOBYTE(v321[0]) &= 1u;
      v75 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v75, 8);
      if (qword_280BE6CE8 != -1)
      {
        swift_once();
      }

      sub_2176CA65C(qword_280C02320, v76, v77, v78, v79, v80, v81, v82, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18], v319[19], v319[20]);
      v83 = sub_2177517D8();
      OUTLINED_FUNCTION_9(v30);
      if (v84)
      {
        sub_2171F0738(v30, &qword_27CB241C0, &qword_217759480);
        memset(v321, 0, 32);
      }

      else
      {
        OUTLINED_FUNCTION_102_9();
        OUTLINED_FUNCTION_41_0(v83);
        (*(v85 + 32))();
      }

      v86 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v86, 12);
      if (qword_280BE6C50 != -1)
      {
        swift_once();
      }

      sub_2172A422C(qword_280C022C0, v87, v88, v89, v90, v91, v92, v93, v318, v319[0], v319[1], v319[2], v319[3], v319[4], SWORD2(v319[4]), SBYTE6(v319[4]), SHIBYTE(v319[4]), v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12]);
      OUTLINED_FUNCTION_7_1();
      if (v84)
      {
        OUTLINED_FUNCTION_30_21();
      }

      else
      {
        OUTLINED_FUNCTION_92_10(v94);
        v95 = MEMORY[0x277D839B0];
      }

      v96 = OUTLINED_FUNCTION_5_43(v95);
      sub_21729D81C(v96, 9);
      v321[3] = v74;
      LOBYTE(v321[0]) = 1;
      v97 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v97, 10);
      if (qword_280BE6C80 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_21_23();
      sub_2176CB370(v98, v99, v100, v101, v102, v103, v104, v105, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18]);
      if (LOBYTE(v321[0]) == 2)
      {
        v106 = OUTLINED_FUNCTION_14_27();
      }

      else
      {
        sub_2176FE78C(v321[0] & 1);
        OUTLINED_FUNCTION_101();
        v106 = sub_2173AB24C();
      }

      v321[0] = v1 + 16;
      v321[3] = v106;
      v107 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v107, 38);
      v321[3] = v74;
      LOBYTE(v321[0]) = 0;
      v108 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v108, 11);
      if (qword_280BE6CA0 != -1)
      {
        swift_once();
      }

      v116 = qword_280C022F0;
      sub_2176CB384(qword_280C022F0, v109, v110, v111, v112, v113, v114, v115, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18]);
      v321[3] = v74;
      LOBYTE(v321[0]) = LOBYTE(v321[0]) == 2;
      v117 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v117, 13);
      sub_2176CB384(v116, v118, v119, v120, v121, v122, v123, v124, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18]);
      v321[3] = v74;
      LOBYTE(v321[0]) = LOBYTE(v321[0]) == 1;
      v125 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v125, 14);
      if (qword_280BE6CC8 != -1)
      {
        swift_once();
      }

      sub_2172A422C(qword_280C02310, v126, v127, v128, v129, v130, v131, v132, v318, v319[0], v319[1], v319[2], v319[3], v319[4], SWORD2(v319[4]), SBYTE6(v319[4]), SHIBYTE(v319[4]), v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12]);
      OUTLINED_FUNCTION_7_1();
      if (v84)
      {
        OUTLINED_FUNCTION_30_21();
      }

      else
      {
        OUTLINED_FUNCTION_92_10(v133);
        v134 = MEMORY[0x277D839B0];
      }

      v135 = OUTLINED_FUNCTION_5_43(v134);
      sub_21729D81C(v135, 15);
      if (qword_280BE6C40 != -1)
      {
        swift_once();
      }

      sub_2172A422C(qword_280C022B8, v136, v137, v138, v139, v140, v141, v142, v318, v319[0], v319[1], v319[2], v319[3], v319[4], SWORD2(v319[4]), SBYTE6(v319[4]), SHIBYTE(v319[4]), v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12]);
      OUTLINED_FUNCTION_7_1();
      if (v84)
      {
        OUTLINED_FUNCTION_30_21();
      }

      else
      {
        OUTLINED_FUNCTION_92_10(v143);
        v144 = MEMORY[0x277D839B0];
      }

      v145 = OUTLINED_FUNCTION_5_43(v144);
      sub_21729D81C(v145, 16);
      if (qword_280BE6D08 != -1)
      {
        swift_once();
      }

      sub_2176CA63C(qword_280C02338, v146, v147, v148, v149, v150, v151, v152, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18], v319[19], v319[20]);
      v153 = sub_2177516D8();
      v154 = OUTLINED_FUNCTION_93_10();
      OUTLINED_FUNCTION_133(v154, v155, v153);
      if (v84)
      {
        sub_2171F0738(v10, &unk_27CB277C0, &qword_217758DC0);
        memset(v321, 0, 32);
      }

      else
      {
        v321[3] = v153;
        __swift_allocate_boxed_opaque_existential_0(v321);
        OUTLINED_FUNCTION_41_0(v153);
        (*(v156 + 32))();
      }

      v157 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v157, 17);
      if (qword_27CB23DD8 != -1)
      {
        swift_once();
      }

      sub_2172A422C(qword_27CB8A2F0, v158, v159, v160, v161, v162, v163, v164, v318, v319[0], v319[1], v319[2], v319[3], v319[4], SWORD2(v319[4]), SBYTE6(v319[4]), SHIBYTE(v319[4]), v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12]);
      v321[3] = v74;
      OUTLINED_FUNCTION_92_10(v165);
      v166 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v166, 18);
      if (qword_280BE6C38 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_21_23();
      sub_2176CB398(v167, v168, v169, v170, v171, v172, v173, v174, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18]);
      v175 = LOBYTE(v321[0]);
      switch(LOBYTE(v321[0]))
      {
        case 1:
          v175 = 1;
          goto LABEL_73;
        case 2:
          v175 = 2;
          goto LABEL_73;
        case 3:
          v175 = 3;
          goto LABEL_73;
        case 4:
          v175 = 4;
          goto LABEL_73;
        case 5:
          OUTLINED_FUNCTION_59_7();
          goto LABEL_74;
        default:
LABEL_73:
          v176 = [objc_opt_self() rawValueForKeepLocalEnabledState_];
          v321[3] = MEMORY[0x277D83B88];
          v321[0] = v176;
LABEL_74:
          v177 = OUTLINED_FUNCTION_10_28();
          sub_21729D81C(v177, 20);
          if (qword_280BE6C30 != -1)
          {
            swift_once();
          }

          break;
      }

      break;
  }

  OUTLINED_FUNCTION_21_23();
  sub_2176CB3AC(v178, v179, v180, v181, v182, v183, v184, v185, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18]);
  v186 = LOBYTE(v321[0]);
  switch(LOBYTE(v321[0]))
  {
    case 1:
      v186 = 1;
      goto LABEL_85;
    case 2:
      v186 = 2;
      goto LABEL_85;
    case 3:
      v186 = 3;
      goto LABEL_85;
    case 4:
      v186 = 4;
      goto LABEL_85;
    case 5:
      v186 = 5;
      goto LABEL_85;
    case 6:
      v186 = 6;
      goto LABEL_85;
    case 7:
      OUTLINED_FUNCTION_59_7();
      goto LABEL_86;
    default:
LABEL_85:
      v187 = [objc_opt_self() rawValueForKeepLocalManagedStatus_];
      v321[3] = MEMORY[0x277D83B88];
      v321[0] = v187;
LABEL_86:
      v188 = BYTE4(v318);
      v189 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v189, 21);
      if (qword_280BE6C18 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_21_23();
      sub_2176CB3C0(v190, v191, v192, v193, v194, v195, v196, v197, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18]);
      if (v321[1])
      {
        v198 = OUTLINED_FUNCTION_3_53();
      }

      else
      {
        v319[0] = v321[0];
        v198 = LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()();
        v199 = MEMORY[0x277D83B88];
      }

      v200 = OUTLINED_FUNCTION_4_57(v198, v199);
      sub_21729D81C(v200, 22);
      if (qword_280BE6CB8 != -1)
      {
        swift_once();
      }

      sub_2176CA65C(qword_280C02308, v201, v202, v203, v204, v205, v206, v207, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18], v319[19], v319[20]);
      OUTLINED_FUNCTION_9(v26);
      if (v84)
      {
        sub_2171F0738(v26, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_59_7();
      }

      else
      {
        OUTLINED_FUNCTION_102_9();
        OUTLINED_FUNCTION_41_0(v83);
        (*(v208 + 32))();
      }

      v209 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v209, 23);
      if (qword_280BE6C70 != -1)
      {
        swift_once();
      }

      sub_2176CA65C(qword_280C022D0, v210, v211, v212, v213, v214, v215, v216, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18], v319[19], v319[20]);
      OUTLINED_FUNCTION_9(v22);
      if (v84)
      {
        sub_2171F0738(v22, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_59_7();
      }

      else
      {
        OUTLINED_FUNCTION_102_9();
        OUTLINED_FUNCTION_41_0(v83);
        (*(v217 + 32))();
      }

      v218 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v218, 24);
      if (qword_280BE6CB0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_21_23();
      sub_2176CB3D4(v219, v220, v221, v222, v223, v224, v225, v226, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18]);
      if (v321[1])
      {
        sub_2176FE688(v321[0] & 0xFF01, v321[1], v321[2] & 1);
        OUTLINED_FUNCTION_101();
        v227 = sub_2173AB24C();
      }

      else
      {
        v227 = OUTLINED_FUNCTION_14_27();
      }

      v321[0] = v1;
      v321[3] = v227;
      v228 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v228, 39);
      if (qword_280BE6B78 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_21_23();
      sub_2176CB3E8(v229, v230, v231, v232, v233, v234, v235, v236, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16]);
      if (v321[2] == 1)
      {
        v237 = OUTLINED_FUNCTION_14_27();
      }

      else
      {
        sub_2176FE58C();
        OUTLINED_FUNCTION_101();
        v237 = sub_2173AB24C();
      }

      v321[0] = v1;
      v321[3] = v237;
      v238 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v238, 40);
      if (qword_280BE6B18 != -1)
      {
        swift_once();
      }

      v239 = sub_2172A4218();
      if (v240)
      {
        v239 = OUTLINED_FUNCTION_3_53();
      }

      else
      {
        v241 = MEMORY[0x277D83B88];
      }

      v242 = OUTLINED_FUNCTION_4_57(v239, v241);
      sub_21729D81C(v242, 25);
      if (qword_280BE6D58 != -1)
      {
        swift_once();
      }

      sub_2176CA65C(qword_280C02360, v243, v244, v245, v246, v247, v248, v249, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18], v319[19], v319[20]);
      OUTLINED_FUNCTION_9(v18);
      if (v84)
      {
        sub_2171F0738(v18, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_59_7();
      }

      else
      {
        OUTLINED_FUNCTION_102_9();
        OUTLINED_FUNCTION_41_0(v83);
        (*(v250 + 32))();
      }

      v251 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v251, 26);
      if (qword_280BE6BC8 != -1)
      {
        swift_once();
      }

      v252 = sub_2172A4204();
      if (v253)
      {
        v254 = v252;
      }

      else
      {
        v254 = 0;
      }

      v255 = 0xE000000000000000;
      v321[3] = MEMORY[0x277D837D0];
      if (v253)
      {
        v255 = v253;
      }

      v321[0] = v254;
      v321[1] = v255;
      v256 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v256, 28);
      if (qword_280BE6D50 != -1)
      {
        swift_once();
      }

      v257 = sub_2172A4218();
      if (v258)
      {
        v257 = OUTLINED_FUNCTION_3_53();
      }

      else
      {
        v259 = MEMORY[0x277D83B88];
      }

      v260 = OUTLINED_FUNCTION_4_57(v257, v259);
      sub_21729D81C(v260, 29);
      if (qword_280BE6D80 != -1)
      {
        swift_once();
      }

      v261 = sub_2172A4330();
      if (v262)
      {
        v261 = OUTLINED_FUNCTION_3_53();
      }

      else
      {
        v263 = MEMORY[0x277D839F8];
      }

      v264 = OUTLINED_FUNCTION_4_57(v261, v263);
      sub_21729D81C(v264, 31);
      if (qword_280BE6D40 != -1)
      {
        swift_once();
      }

      v265 = sub_2172A4218();
      if (v266)
      {
        v265 = OUTLINED_FUNCTION_3_53();
      }

      else
      {
        v267 = MEMORY[0x277D83B88];
      }

      v268 = OUTLINED_FUNCTION_4_57(v265, v267);
      sub_21729D81C(v268, 32);
      if (qword_280BE6BB0 != -1)
      {
        OUTLINED_FUNCTION_17_0();
      }

      OUTLINED_FUNCTION_21_23();
      sub_2176CA620(v269, v270, v271, v272, v273, v274, v275, v276, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18], v319[19], v319[20]);
      if (v321[11])
      {
        sub_2172CE9F8();
        sub_2171F0738(v321, &qword_27CB25388, &unk_21775D410);
        if (v319[1])
        {
          sub_21725CF0C(v319, v320);
          sub_2176FDE74();
          v278 = v277;
          sub_21725CE44(v319);
          goto LABEL_151;
        }

        v279 = &unk_27CB275E0;
        v280 = &qword_2177589D0;
        v281 = v319;
      }

      else
      {
        v279 = &qword_27CB25318;
        v280 = &qword_2177657C0;
        v281 = v321;
      }

      sub_2171F0738(v281, v279, v280);
      v278 = 0;
LABEL_151:
      v282 = sub_2173AB24C();
      v321[3] = v282;
      if (!v278)
      {
        if (qword_280BE6DA8 != -1)
        {
          swift_once();
        }

        v283 = sub_2172A4204();
        v278 = sub_2176FD61C(25, v283, v284);
      }

      v321[0] = v278;
      v285 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v285, 33);
      if (qword_280BE6B58 != -1)
      {
        OUTLINED_FUNCTION_15_7();
      }

      OUTLINED_FUNCTION_21_23();
      sub_2176CA604(v286, v287, v288, v289, v290, v291, v292, v293, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18], v319[19], v319[20]);
      if (!v321[11])
      {
        v296 = &qword_27CB25310;
        v297 = &unk_21775D3D0;
        v298 = v321;
LABEL_163:
        sub_2171F0738(v298, v296, v297);
        v321[3] = v282;
        goto LABEL_164;
      }

      sub_2172CE9BC();
      sub_2171F0738(v321, &qword_27CB25398, &unk_21776C4F0);
      if (!v319[1])
      {
        v296 = &qword_27CB2CD90;
        v297 = &unk_21775A2C0;
        v298 = v319;
        goto LABEL_163;
      }

      sub_21725CF68(v319, v320);
      sub_2176FDD58();
      v295 = v294;
      sub_217284498(v319);
      v321[3] = v282;
      if (v295)
      {
        goto LABEL_173;
      }

LABEL_164:
      if (qword_280BE6DA0 != -1)
      {
        swift_once();
      }

      v299 = sub_2172A4204();
      if (v300)
      {
        v301 = v299;
      }

      else
      {
        v301 = 0;
      }

      if (v300)
      {
        v302 = v300;
      }

      else
      {
        v302 = 0xE000000000000000;
      }

      v295 = sub_2176FEB7C(11, v301, v302);

LABEL_173:
      v321[0] = v295;
      v303 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v303, 34);
      if (qword_280BE6B98 != -1)
      {
        OUTLINED_FUNCTION_14_4();
      }

      OUTLINED_FUNCTION_21_23();
      sub_2176CA5E8(v304, v305, v306, v307, v308, v309, v310, v311, v318, v319[0], v319[1], v319[2], v319[3], v319[4], v319[5], v319[6], v319[7], v319[8], v319[9], v319[10], v319[11], v319[12], v319[13], v319[14], v319[15], v319[16], v319[17], v319[18], v319[19], v319[20]);
      if (!v321[11])
      {
        v314 = &qword_27CB25320;
        v315 = &unk_21776E020;
        v316 = v321;
LABEL_180:
        sub_2171F0738(v316, v314, v315);
        OUTLINED_FUNCTION_59_7();
        goto LABEL_181;
      }

      sub_2172CE898();
      sub_2171F0738(v321, &qword_27CB27C80, &unk_21775D420);
      if (!v319[1])
      {
        v314 = &unk_27CB27760;
        v315 = &unk_21775A2D0;
        v316 = v319;
        goto LABEL_180;
      }

      LOBYTE(v320[0]) = v188;
      v313 = sub_2172A2B9C(v320, v312);
      sub_21728418C(v319);
      v321[3] = v282;
      v321[0] = v313;
LABEL_181:
      v317 = OUTLINED_FUNCTION_10_28();
      sub_21729D81C(v317, 37);
      OUTLINED_FUNCTION_13();
      return;
  }
}

void sub_2174ADF0C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_217751F98();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1 & 1) == 0)
  {
    swift_getAtKeyPath();
    OUTLINED_FUNCTION_103_10(v31);
    if (sub_21726A450(v31) != 1)
    {
      OUTLINED_FUNCTION_103_10(v29);
      sub_2171F0738(v29, &qword_27CB25BE0, &qword_217794B20);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_103_10(v29);
    sub_2171F0738(v29, &qword_27CB25BE0, &qword_217794B20);
  }

  if (v3 != 36)
  {
    v15 = sub_2172A393C(v3, v5);
    v17 = v15;
    if (!v16)
    {
LABEL_12:
      sub_217283988(v15, v16);
      goto LABEL_13;
    }

    v18 = v16;
    if (v16 != 1)
    {
      sub_217751F88();
      v19 = sub_217751F58();
      v21 = v20;
      (*(v9 + 8))(v14, v6);
      if (v21 >> 60 != 15)
      {
        v22 = sub_217751348();
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();
        sub_217751338();
        sub_2174AFD08();
        sub_217751308();

        sub_217275680(v19, v21);
        memcpy(v29, v31, sizeof(v29));
        memcpy(v30, v31, 0xE8uLL);
        nullsub_1(v30, v25);
        OUTLINED_FUNCTION_103_10(&v28);
        sub_217350FD0(v29, &v27);
        swift_setAtWritableKeyPath();
        sub_21735129C(v29);
      }

      v15 = v17;
      v16 = v18;
      goto LABEL_12;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_13();
}

void sub_2174AE18C()
{
  OUTLINED_FUNCTION_65_13();
  if ((v2 & 1) != 0 || (OUTLINED_FUNCTION_79_11(), v5 == 7))
  {
    if (v1 != 36)
    {
      v3 = sub_2172A3894(v1, v0);
      if ((v4 & 1) == 0 && [objc_opt_self() keepLocalManagedStatusForRawValue_] <= 6)
      {
        OUTLINED_FUNCTION_52_16();
      }
    }
  }
}

void sub_2174AE218()
{
  OUTLINED_FUNCTION_12();
  v9 = OUTLINED_FUNCTION_68_12(v7, v8);
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_61_8(v14, v54);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB284C8, &unk_21776D410);
  OUTLINED_FUNCTION_45_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  v20 = OUTLINED_FUNCTION_98_12();
  v55 = OUTLINED_FUNCTION_0_0(v20);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v55, v23);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_80();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v31, v32);
  OUTLINED_FUNCTION_62_3();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_89_10();
  if ((v5 & 1) != 0 || (swift_getAtKeyPath(), v35 = OUTLINED_FUNCTION_73_0(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, v36, v9), sub_2171F0738(v3, &qword_27CB241C0, &qword_217759480), EnumTagSinglePayload == 1))
  {
    if (v4 != 36)
    {
      sub_2172A38B4(v56, v6);
      OUTLINED_FUNCTION_133(v6, 1, v55);
      if (v45)
      {
        v38 = &qword_27CB284C8;
        v39 = &unk_21776D410;
        v40 = v6;
      }

      else
      {
        v41 = OUTLINED_FUNCTION_58_12();
        v42(v41);
        v43 = OUTLINED_FUNCTION_71_12();
        v44(v43);
        Date.init(legacyModelRawValue:)(v2, v1);
        OUTLINED_FUNCTION_9(v1);
        if (!v45)
        {
          v48 = OUTLINED_FUNCTION_57_14();
          v49(v48);
          v50 = OUTLINED_FUNCTION_70_10();
          v51(v50);
          OUTLINED_FUNCTION_53_14();
          swift_setAtWritableKeyPath();
          (*(v0 + 8))(v2, v9);
          v52 = OUTLINED_FUNCTION_29_22();
          v53(v52);
          goto LABEL_11;
        }

        v46 = OUTLINED_FUNCTION_29_22();
        v47(v46);
        v38 = &qword_27CB241C0;
        v39 = &qword_217759480;
        v40 = v1;
      }

      sub_2171F0738(v40, v38, v39);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_13();
}

void sub_2174AE514()
{
  OUTLINED_FUNCTION_65_13();
  if ((v2 & 1) != 0 || (OUTLINED_FUNCTION_79_11(), v5 == 7))
  {
    if (v1 != 32)
    {
      v3 = sub_2172A3C10(v1, v0);
      if ((v4 & 1) == 0 && [objc_opt_self() keepLocalManagedStatusForRawValue_] <= 6)
      {
        OUTLINED_FUNCTION_52_16();
      }
    }
  }
}

void sub_2174AE5A0()
{
  OUTLINED_FUNCTION_12();
  v9 = OUTLINED_FUNCTION_68_12(v7, v8);
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_61_8(v14, v54);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB284C8, &unk_21776D410);
  OUTLINED_FUNCTION_45_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  v20 = OUTLINED_FUNCTION_98_12();
  v55 = OUTLINED_FUNCTION_0_0(v20);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v55, v23);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_80();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v31, v32);
  OUTLINED_FUNCTION_62_3();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_89_10();
  if ((v5 & 1) != 0 || (swift_getAtKeyPath(), v35 = OUTLINED_FUNCTION_73_0(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, v36, v9), sub_2171F0738(v3, &qword_27CB241C0, &qword_217759480), EnumTagSinglePayload == 1))
  {
    if (v4 != 32)
    {
      sub_2172A3BE4(v56, v6);
      OUTLINED_FUNCTION_133(v6, 1, v55);
      if (v45)
      {
        v38 = &qword_27CB284C8;
        v39 = &unk_21776D410;
        v40 = v6;
      }

      else
      {
        v41 = OUTLINED_FUNCTION_58_12();
        v42(v41);
        v43 = OUTLINED_FUNCTION_71_12();
        v44(v43);
        Date.init(legacyModelRawValue:)(v2, v1);
        OUTLINED_FUNCTION_9(v1);
        if (!v45)
        {
          v48 = OUTLINED_FUNCTION_57_14();
          v49(v48);
          v50 = OUTLINED_FUNCTION_70_10();
          v51(v50);
          OUTLINED_FUNCTION_53_14();
          swift_setAtWritableKeyPath();
          (*(v0 + 8))(v2, v9);
          v52 = OUTLINED_FUNCTION_29_22();
          v53(v52);
          goto LABEL_11;
        }

        v46 = OUTLINED_FUNCTION_29_22();
        v47(v46);
        v38 = &qword_27CB241C0;
        v39 = &qword_217759480;
        v40 = v1;
      }

      sub_2171F0738(v40, v38, v39);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_13();
}

void sub_2174AE898()
{
  OUTLINED_FUNCTION_65_13();
  if ((v1 & 1) != 0 || (OUTLINED_FUNCTION_79_11(), v4 == 7))
  {
    if (v0 != 42)
    {
      v2 = sub_2172A3AEC();
      if ((v3 & 1) == 0 && [objc_opt_self() keepLocalManagedStatusForRawValue_] <= 6)
      {
        OUTLINED_FUNCTION_52_16();
      }
    }
  }
}

uint64_t sub_2174AE924()
{
  OUTLINED_FUNCTION_7_35();
  v1 = type metadata accessor for PlaylistPropertyProvider();
  OUTLINED_FUNCTION_9_30(*(v1 + 272));
  v2 = PlayParameters.Kind.init(_:)(v280, &v265);
  v10 = OUTLINED_FUNCTION_47_13(v2, v3, v4, v5, v6, v7, v8, v9, v62, v69, v76, v83, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v187, v193, v199, v205, v211, v217, v223, v229, v235, v241, v247, v253, v259, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
  OUTLINED_FUNCTION_56_11(v10, v11, v12, v13, v14, v15, v16, v17, v63, v70, v77, v84, v91, v98, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v188, v194, v200, v206, v212, v218, v224, v230, v236, v242, v248, v254, v260, v265, v266);

  v18 = OUTLINED_FUNCTION_45_16();
  v26 = OUTLINED_FUNCTION_55_11(v18, v19, v20, v21, v22, v23, v24, v25, v64, v71, v78, v85, v92, v99, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v189, v195, v201, v207, v213, v219, v225, v231, v237, v243, v249, v255, v261, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
  v32 = OUTLINED_FUNCTION_86_8(v26, v27, &qword_27CB244D0, &unk_21775D620, v28, v29, v30, v31, v65, v72, v79, v86, v93, v100, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v190, v196, v202, v208, v214, v220, v226, v232, v238, v244, v250, v256, v262, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
  v40 = OUTLINED_FUNCTION_75_9(v32, v33, v34, v35, v36, v37, v38, v39, v66, v73, v80, v87, v94, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178);
  v41 = v0(v40);
  if (v280[1])
  {
    v49 = OUTLINED_FUNCTION_54_12(v41, v42, v43, v44, v45, v46, v47, v48, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v185, v191, v197, v203, v209, v215, v221, v227, v233, v239, v245, v251, v257, v263, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
    v52 = OUTLINED_FUNCTION_39_12(v49, v50, v51);
    v53 = OUTLINED_FUNCTION_83_10(v52);
    OUTLINED_FUNCTION_46_18(v53, v54, v55, v56, v57, v58, v59, v60, v68, v75, v82, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v186, v192, v198, v204, v210, v216, v222, v228, v234, v240, v246, v252, v258, v264, v265);
    sub_2172848C0(&v265);
    v41 = sub_2171F0738(v280, &qword_27CB244D0, &unk_21775D620);
  }

  OUTLINED_FUNCTION_82_9(v41, v42, v43, v44, v45, v46, v47, v48, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v185, v191, v197, v203, v209, v215, v221, v227, v233, v239, v245, v251, v257, v263, v265);
  OUTLINED_FUNCTION_20_6();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_2174AEA00()
{
  OUTLINED_FUNCTION_7_35();
  v1 = type metadata accessor for StationPropertyProvider();
  OUTLINED_FUNCTION_9_30(*(v1 + 112));
  v2 = PlayParameters.Kind.init(_:)(v280, &v265);
  v10 = OUTLINED_FUNCTION_47_13(v2, v3, v4, v5, v6, v7, v8, v9, v62, v69, v76, v83, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v187, v193, v199, v205, v211, v217, v223, v229, v235, v241, v247, v253, v259, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
  OUTLINED_FUNCTION_56_11(v10, v11, v12, v13, v14, v15, v16, v17, v63, v70, v77, v84, v91, v98, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v188, v194, v200, v206, v212, v218, v224, v230, v236, v242, v248, v254, v260, v265, v266);

  v18 = OUTLINED_FUNCTION_45_16();
  v26 = OUTLINED_FUNCTION_55_11(v18, v19, v20, v21, v22, v23, v24, v25, v64, v71, v78, v85, v92, v99, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v189, v195, v201, v207, v213, v219, v225, v231, v237, v243, v249, v255, v261, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
  v32 = OUTLINED_FUNCTION_86_8(v26, v27, &qword_27CB244D0, &unk_21775D620, v28, v29, v30, v31, v65, v72, v79, v86, v93, v100, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v190, v196, v202, v208, v214, v220, v226, v232, v238, v244, v250, v256, v262, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
  v40 = OUTLINED_FUNCTION_75_9(v32, v33, v34, v35, v36, v37, v38, v39, v66, v73, v80, v87, v94, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178);
  v41 = v0(v40);
  if (v280[1])
  {
    v49 = OUTLINED_FUNCTION_54_12(v41, v42, v43, v44, v45, v46, v47, v48, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v185, v191, v197, v203, v209, v215, v221, v227, v233, v239, v245, v251, v257, v263, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
    v52 = OUTLINED_FUNCTION_39_12(v49, v50, v51);
    v53 = OUTLINED_FUNCTION_83_10(v52);
    OUTLINED_FUNCTION_46_18(v53, v54, v55, v56, v57, v58, v59, v60, v68, v75, v82, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v186, v192, v198, v204, v210, v216, v222, v228, v234, v240, v246, v252, v258, v264, v265);
    sub_2172848C0(&v265);
    v41 = sub_2171F0738(v280, &qword_27CB244D0, &unk_21775D620);
  }

  OUTLINED_FUNCTION_82_9(v41, v42, v43, v44, v45, v46, v47, v48, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v185, v191, v197, v203, v209, v215, v221, v227, v233, v239, v245, v251, v257, v263, v265);
  OUTLINED_FUNCTION_20_6();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_2174AEADC()
{
  OUTLINED_FUNCTION_7_35();
  v2 = type metadata accessor for PlaylistEntryPropertyProvider();
  OUTLINED_FUNCTION_9_30(*(v2 + 80));
  v3 = PlayParameters.Kind.init(_:)(v149, &v150);
  v11 = OUTLINED_FUNCTION_47_13(v3, v4, v5, v6, v7, v8, v9, v10, v96, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149[0]);
  OUTLINED_FUNCTION_100_10(v11, v12, v13, v14, v15, v16, v17, v18, v97, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);

  v19 = OUTLINED_FUNCTION_45_16();
  v27 = OUTLINED_FUNCTION_101_6(v19, v20, v21, v22, v23, v24, v25, v26, v98, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149[0]);
  v33 = OUTLINED_FUNCTION_86_8(v27, v28, &qword_27CB244D0, &unk_21775D620, v29, v30, v31, v32, v99, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149[0]);
  v41 = OUTLINED_FUNCTION_75_9(v33, v34, v35, v36, v37, v38, v39, v40, v100, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
  v42 = v1(v41);
  if (v149[1])
  {
    v50 = OUTLINED_FUNCTION_99_9(v42, v43, v44, v45, v46, v47, v48, v49, v101, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149[0]);
    OUTLINED_FUNCTION_81_11(v50, v51, v52);
    v53 = sub_21774B5EC(&v104, &v150);
    OUTLINED_FUNCTION_46_18(v53, v54, v55, v56, v57, v58, v59, v60, v102, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
    sub_2172848C0(&v134);
    v61 = sub_2171F0738(v149, &qword_27CB244D0, &unk_21775D620);
  }

  else
  {
    v137 = v2;
    v138 = &protocol witness table for PlaylistEntryPropertyProvider;
    v69 = __swift_allocate_boxed_opaque_existential_0(&v134);
    v70 = sub_2174AFD5C(v0, v69);
    OUTLINED_FUNCTION_80_10(v70, v71, v72, v73, v74, v75, v76, v77, v101, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
    v78 = PlaylistEntryPropertyProvider.hasNonPurgeableLocalAsset.getter();
    if (v78 & 1) != 0 || (OUTLINED_FUNCTION_80_10(v78, v79, v80, v81, v82, v83, v84, v85, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137), v86 = PlaylistEntryPropertyProvider.hasRedownloadableCatalogAsset.getter(), (v86))
    {
      v61 = __swift_destroy_boxed_opaque_existential_1(&v134);
    }

    else
    {
      OUTLINED_FUNCTION_80_10(v86, v87, v88, v89, v90, v91, v92, v93, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
      v95 = PlaylistEntryPropertyProvider.isHomeSharingAssetAvailable.getter();
      v61 = __swift_destroy_boxed_opaque_existential_1(&v134);
      if ((v95 & 1) == 0)
      {
        OUTLINED_FUNCTION_62_12(v61, v62, v63, v64, v65, v66, v67, v68, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        return sub_2172848C0(&v134);
      }
    }
  }

  OUTLINED_FUNCTION_62_12(v61, v62, v63, v64, v65, v66, v67, v68, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
  OUTLINED_FUNCTION_20_6();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_2174AEC5C()
{
  OUTLINED_FUNCTION_7_35();
  v2 = type metadata accessor for SongPropertyProvider();
  OUTLINED_FUNCTION_9_30(v2[74]);
  v3 = PlayParameters.Kind.init(_:)(v150, &v151);
  v11 = OUTLINED_FUNCTION_47_13(v3, v4, v5, v6, v7, v8, v9, v10, v97, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150[0]);
  OUTLINED_FUNCTION_100_10(v11, v12, v13, v14, v15, v16, v17, v18, v98, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);

  v19 = OUTLINED_FUNCTION_45_16();
  v27 = OUTLINED_FUNCTION_101_6(v19, v20, v21, v22, v23, v24, v25, v26, v99, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150[0]);
  v33 = OUTLINED_FUNCTION_86_8(v27, v28, &qword_27CB244D0, &unk_21775D620, v29, v30, v31, v32, v100, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150[0]);
  v41 = OUTLINED_FUNCTION_75_9(v33, v34, v35, v36, v37, v38, v39, v40, v101, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
  v42 = v1(v41);
  if (v150[1])
  {
    v50 = OUTLINED_FUNCTION_99_9(v42, v43, v44, v45, v46, v47, v48, v49, v102, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150[0]);
    OUTLINED_FUNCTION_81_11(v50, v51, v52);
    v53 = sub_21774B5EC(&v105, &v151);
    OUTLINED_FUNCTION_46_18(v53, v54, v55, v56, v57, v58, v59, v60, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
    sub_2172848C0(&v135);
    v61 = sub_2171F0738(v150, &qword_27CB244D0, &unk_21775D620);
  }

  else
  {
    v138 = v2;
    v139 = &protocol witness table for SongPropertyProvider;
    v69 = __swift_allocate_boxed_opaque_existential_0(&v135);
    v70 = sub_2174AFD5C(v0, v69);
    v78 = OUTLINED_FUNCTION_80_10(v70, v71, v72, v73, v74, v75, v76, v77, v102, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
    v86 = v78 + v2[25];
    if (!*(v86 + 1) || (*v86 & 1) == 0)
    {
      v87 = OUTLINED_FUNCTION_80_10(v78, v79, v80, v81, v82, v83, v84, v85, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      *(v87 + v2[12] + 4);
      if ((*(v87 + v2[12]) & 0x100) == 0)
      {
        v95 = *(OUTLINED_FUNCTION_80_10(v87, v88, v89, v90, v91, v92, v93, v94, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138) + v2[21]);
        if (v95 == 2)
        {
          v61 = __swift_destroy_boxed_opaque_existential_1(&v135);
        }

        else
        {
          v61 = __swift_destroy_boxed_opaque_existential_1(&v135);
          if (v95)
          {
            goto LABEL_9;
          }
        }

        OUTLINED_FUNCTION_62_12(v61, v62, v63, v64, v65, v66, v67, v68, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
        return sub_2172848C0(&v135);
      }
    }

    v61 = __swift_destroy_boxed_opaque_existential_1(&v135);
  }

LABEL_9:
  OUTLINED_FUNCTION_62_12(v61, v62, v63, v64, v65, v66, v67, v68, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
  OUTLINED_FUNCTION_20_6();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_2174AEE00()
{
  OUTLINED_FUNCTION_7_35();
  v1 = type metadata accessor for AlbumPropertyProvider();
  OUTLINED_FUNCTION_9_30(*(v1 + 276));
  v2 = PlayParameters.Kind.init(_:)(v280, &v265);
  v10 = OUTLINED_FUNCTION_47_13(v2, v3, v4, v5, v6, v7, v8, v9, v62, v69, v76, v83, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v187, v193, v199, v205, v211, v217, v223, v229, v235, v241, v247, v253, v259, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
  OUTLINED_FUNCTION_56_11(v10, v11, v12, v13, v14, v15, v16, v17, v63, v70, v77, v84, v91, v98, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v188, v194, v200, v206, v212, v218, v224, v230, v236, v242, v248, v254, v260, v265, v266);

  v18 = OUTLINED_FUNCTION_45_16();
  v26 = OUTLINED_FUNCTION_55_11(v18, v19, v20, v21, v22, v23, v24, v25, v64, v71, v78, v85, v92, v99, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v189, v195, v201, v207, v213, v219, v225, v231, v237, v243, v249, v255, v261, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
  v32 = OUTLINED_FUNCTION_86_8(v26, v27, &qword_27CB244D0, &unk_21775D620, v28, v29, v30, v31, v65, v72, v79, v86, v93, v100, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v190, v196, v202, v208, v214, v220, v226, v232, v238, v244, v250, v256, v262, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
  v40 = OUTLINED_FUNCTION_75_9(v32, v33, v34, v35, v36, v37, v38, v39, v66, v73, v80, v87, v94, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178);
  v41 = v0(v40);
  if (v280[1])
  {
    v49 = OUTLINED_FUNCTION_54_12(v41, v42, v43, v44, v45, v46, v47, v48, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v185, v191, v197, v203, v209, v215, v221, v227, v233, v239, v245, v251, v257, v263, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280[0]);
    v52 = OUTLINED_FUNCTION_39_12(v49, v50, v51);
    v53 = OUTLINED_FUNCTION_83_10(v52);
    OUTLINED_FUNCTION_46_18(v53, v54, v55, v56, v57, v58, v59, v60, v68, v75, v82, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v186, v192, v198, v204, v210, v216, v222, v228, v234, v240, v246, v252, v258, v264, v265);
    sub_2172848C0(&v265);
    v41 = sub_2171F0738(v280, &qword_27CB244D0, &unk_21775D620);
  }

  OUTLINED_FUNCTION_82_9(v41, v42, v43, v44, v45, v46, v47, v48, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v185, v191, v197, v203, v209, v215, v221, v227, v233, v239, v245, v251, v257, v263, v265);
  OUTLINED_FUNCTION_20_6();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_2174AEEDC(uint64_t a1, const void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for MusicVideoPropertyProvider();
  v6 = v3 + v5[62];
  v8 = *v6;
  v7 = *(v6 + 8);
  LOBYTE(v6) = *(v6 + 16);
  __dst[0] = v8;
  __dst[1] = v7;
  LOBYTE(__dst[2]) = v6;
  sub_217751DE8();
  PlayParameters.Kind.init(_:)(__dst, __src);
  memcpy(__dst, a2, 0x161uLL);
  v19[0] = __src[0];
  v19[1] = __src[1];
  MusicIdentifierSet.playParameters(for:)(v19, __src);

  v9 = swift_readAtKeyPath();
  memcpy(__dst, v10, 0x78uLL);
  sub_2171F50C0(__dst, v19, &qword_27CB244D0, &unk_21775D620);
  v9(v18, 0);
  if (__dst[1])
  {
    memcpy(v18, __src, sizeof(v18));
    v16[0] = __dst[0];
    v16[1] = __dst[1];
    memcpy(v17, &__dst[2], sizeof(v17));
    sub_21774B5EC(v16, __src);
    memcpy(v19, v18, sizeof(v19));
    sub_2172848C0(v19);
    sub_2171F0738(__dst, &qword_27CB244D0, &unk_21775D620);
  }

  else
  {
    v19[3] = v5;
    v19[4] = &protocol witness table for MusicVideoPropertyProvider;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
    sub_2174AFD5C(v3, boxed_opaque_existential_0);
    v12 = __swift_project_boxed_opaque_existential_1(v19, v19[3]) + v5[23];
    if (!*(v12 + 1) || (*v12 & 1) == 0)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      *(v13 + v5[10] + 4);
      if ((*(v13 + v5[10]) & 0x100) == 0)
      {
        v14 = *(__swift_project_boxed_opaque_existential_1(v19, v19[3]) + v5[19]);
        if (v14 == 2)
        {
          __swift_destroy_boxed_opaque_existential_1(v19);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v19);
          if (v14)
          {
            goto LABEL_9;
          }
        }

        memcpy(v19, __src, sizeof(v19));
        return sub_2172848C0(v19);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

LABEL_9:
  memcpy(v19, __src, sizeof(v19));
  return swift_setAtWritableKeyPath();
}

uint64_t sub_2174AF15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 16) && (v5 = sub_217632A20(), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_60_15(v5);
    sub_21721E0AC(v7, __src);
  }

  else
  {
    memset(__src, 0, 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  result = swift_dynamicCast();
  if (result)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      if (qword_280BE85B8 != -1)
      {
        OUTLINED_FUNCTION_41_1();
      }

      v10 = qword_280BE85D0;
      v9 = unk_280BE85D8;
      v13 = xmmword_280BE85C0;
      v11 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      *__dst = v13;
      *&__dst[16] = v10;
      *&__dst[24] = v9;
      v16 = a4;
      v15 = 4;
      sub_217751DE8();
      sub_2172B6904(v11, __dst, &v16, &v15, __src);
      nullsub_1(__src, v12);
      memcpy(__dst, __src, sizeof(__dst));
      OUTLINED_FUNCTION_20_6();
      swift_setAtWritableKeyPath();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2174AF2FC()
{
  OUTLINED_FUNCTION_13_29();
  if ((v1 & 1) != 0 || (OUTLINED_FUNCTION_20_6(), result = swift_getAtKeyPath(), BYTE1(v9) << 8 == 512))
  {
    if (v0[2] && (v3 = sub_217632A20(), (v4 & 1) != 0))
    {
      v5 = OUTLINED_FUNCTION_60_15(v3);
      sub_21721E0AC(v5, &v9);
    }

    else
    {
      OUTLINED_FUNCTION_60_5();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
    result = OUTLINED_FUNCTION_28_22();
    if (result)
    {
      OUTLINED_FUNCTION_43_10();
      if (([v0 respondsToSelector_] & 1) != 0 && (v6 = OUTLINED_FUNCTION_104_8()) != 0)
      {
        v7 = v6;
        v8 = sub_217751D98();
      }

      else
      {
        v8 = sub_217751DC8();
      }

      CatalogAsset.init(rawStorageDictionary:)(v8);
      if ((v9 & 0xFF00) != 0x200)
      {
        OUTLINED_FUNCTION_20_6();
        swift_setAtWritableKeyPath();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2174AF46C()
{
  OUTLINED_FUNCTION_13_29();
  if ((v1 & 1) != 0 || (OUTLINED_FUNCTION_20_6(), result = swift_getAtKeyPath(), v12[0] == 2))
  {
    if (v0[2] && (v3 = sub_217632A20(), (v4 & 1) != 0))
    {
      v5 = OUTLINED_FUNCTION_60_15(v3);
      sub_21721E0AC(v5, v12);
    }

    else
    {
      OUTLINED_FUNCTION_60_5();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
    result = OUTLINED_FUNCTION_28_22();
    if (result)
    {
      OUTLINED_FUNCTION_43_10();
      if (([v0 respondsToSelector_] & 1) != 0 && (v6 = OUTLINED_FUNCTION_104_8()) != 0)
      {
        v7 = v6;
        v8 = sub_217751D98();
      }

      else
      {
        v8 = sub_217751DC8();
      }

      v9 = sub_21729EBC8(v8);

      sub_2173ACAFC(v9);

      if (v13)
      {
        if (swift_dynamicCast())
        {
          v10 = v11;
LABEL_17:
          v12[0] = v10;
          OUTLINED_FUNCTION_20_6();
          swift_setAtWritableKeyPath();
          return swift_unknownObjectRelease();
        }
      }

      else
      {
        sub_2171F0738(v12, &qword_27CB2AD40, &qword_2177583F0);
      }

      v10 = 0;
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_2174AF618()
{
  OUTLINED_FUNCTION_13_29();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_6();
    swift_getAtKeyPath();
    if (v10)
    {
    }
  }

  if (v0[2] && (v2 = sub_217632A20(), (v3 & 1) != 0))
  {
    v4 = OUTLINED_FUNCTION_60_15(v2);
    sub_21721E0AC(v4, &v9);
  }

  else
  {
    OUTLINED_FUNCTION_60_5();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  result = OUTLINED_FUNCTION_28_22();
  if (result)
  {
    OUTLINED_FUNCTION_43_10();
    if (([v0 respondsToSelector_] & 1) != 0 && (v6 = OUTLINED_FUNCTION_104_8()) != 0)
    {
      v7 = v6;
      v8 = sub_217751D98();
    }

    else
    {
      v8 = sub_217751DC8();
    }

    FileAsset.init(rawStorageDictionary:)(v8);
    if (!v10)
    {

      return swift_unknownObjectRelease();
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_20_6();
    swift_setAtWritableKeyPath();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2174AF79C()
{
  OUTLINED_FUNCTION_13_29();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_6();
    swift_getAtKeyPath();
    v2 = v16;
    v3 = v17;
    v4 = v15;
    if (v17 != 1)
    {
      return sub_21733B290(v4, v2, v3);
    }

    sub_21733B290(v15, v16, 1);
  }

  if (v0[2] && (v5 = sub_217632A20(), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_60_15(v5);
    sub_21721E0AC(v7, &v15);
  }

  else
  {
    OUTLINED_FUNCTION_60_5();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  result = OUTLINED_FUNCTION_28_22();
  if (result)
  {
    OUTLINED_FUNCTION_43_10();
    if (([v0 respondsToSelector_] & 1) != 0 && (v9 = OUTLINED_FUNCTION_104_8()) != 0)
    {
      v10 = v9;
      v11 = sub_217751D98();
    }

    else
    {
      v11 = sub_217751DC8();
    }

    MusicLyrics.init(rawStorageDictionary:)(v11);
    v12 = v17;
    if (v17 == 1)
    {
      swift_unknownObjectRelease();
      v4 = v15;
      v2 = v16;
      v3 = 1;
      return sub_21733B290(v4, v2, v3);
    }

    v13 = v15;
    v14 = v16;
    sub_21739AF10(v15, v16, v17);
    OUTLINED_FUNCTION_20_6();
    swift_setAtWritableKeyPath();
    sub_21733B290(v13, v14, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2174AF978(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a1 + 16) && (v3 = a3(a2), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_60_15(v3);
    sub_21721E0AC(v5, &v12);
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (([v10[0] respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  if ([v10[0] musicKit_sanitizedLegacyModelObject])
  {
    sub_2177529C8();
    swift_unknownObjectRelease();
  }

  else
  {
    *v10 = 0u;
    v11 = 0u;
  }

  v12 = *v10;
  v13 = v11;
  sub_2171F50C0(&v12, &v8, &qword_27CB2AD40, &qword_2177583F0);
  if (!v9)
  {
    OUTLINED_FUNCTION_169_1(&v12);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_169_1(&v8);
    return 0;
  }

  sub_2172124CC(&v8, v10);
  __swift_project_boxed_opaque_existential_1(v10, *(&v11 + 1));
  v6 = sub_217753048();
  swift_unknownObjectRelease();
  sub_2171F0738(&v12, &qword_27CB2AD40, &qword_2177583F0);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v6;
}

void sub_2174AFBCC(void *a1@<X0>, void (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  a2();
  v5 = sub_217751F18();

  v6 = [a1 musicKit:v5 artworkCatalogForProperty:?];

  if (v6)
  {
    swift_getObjectType();
    v7 = sub_217717634();
    swift_unknownObjectRelease();
    v8 = &off_28297F3C8;
    v9 = &type metadata for SoftLinking_ArtworkCatalog;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v7;
  a3[3] = v9;
  a3[4] = v8;
}

uint64_t sub_2174AFCB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

unint64_t sub_2174AFD08()
{
  result = qword_27CB284D0;
  if (!qword_27CB284D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB284D0);
  }

  return result;
}

uint64_t sub_2174AFD5C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = v5(v4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_27()
{
  result = 0;
  *(v0 + 640) = 0;
  *(v0 + 632) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_34_19@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __n128 a6, __int128 a7, __int128 a8, uint64_t a9)
{
  result = a6;
  *(a1 + 80) = a9;
  *(a1 + 48) = a7;
  *(a1 + 64) = a8;
  *(a1 + 32) = a6;
  *(a1 + 88) = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_16()
{

  return swift_readAtKeyPath();
}

void *OUTLINED_FUNCTION_46_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __src, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char __dst)
{

  return memcpy(&__dst, &__src, 0x78uLL);
}

void *OUTLINED_FUNCTION_47_13(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char __dst)
{

  return memcpy(&__dst, v55, 0x161uLL);
}

__n128 OUTLINED_FUNCTION_50_13@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15, __int128 a16, arg17_2174AFEE4 a17)
{
  result = a15;
  *(a1 + 74) = *&a17.arr[10];
  a1[3] = a16;
  a1[4] = *a17.arr;
  a1[2] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_16()
{

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_53_14()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void *OUTLINED_FUNCTION_54_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __dst, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return memcpy(&__dst, (v55 - 168), 0x78uLL);
}

void *OUTLINED_FUNCTION_55_11(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char __dst)
{

  return memcpy(&__dst, a2, 0x78uLL);
}

double OUTLINED_FUNCTION_56_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a40 = v42;
  a41 = v41;

  *&result = MusicIdentifierSet.playParameters(for:)(&a40, v43 - 168).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_59_7()
{
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_62_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char __dst)
{

  return memcpy(&__dst, (v40 - 184), 0x78uLL);
}

double OUTLINED_FUNCTION_63_13()
{
  *(v0 + 1008) = 0;
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_12(uint64_t a1, uint64_t a2)
{
  *(v2 - 88) = a2;

  return sub_2177517D8();
}

uint64_t OUTLINED_FUNCTION_79_11()
{

  return swift_getAtKeyPath();
}

void *OUTLINED_FUNCTION_81_11(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return memcpy(va, (v3 + 16), 0x68uLL);
}

void *OUTLINED_FUNCTION_82_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char __dst)
{

  return memcpy(&__dst, (v40 - 168), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_83_10(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_21774B5EC(va, v1 - 168);
}

uint64_t OUTLINED_FUNCTION_86_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{

  return sub_2171F50C0(&a55, &a40, a3, a4);
}

uint64_t OUTLINED_FUNCTION_98_12()
{

  return sub_217751568();
}

void *OUTLINED_FUNCTION_99_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __dst, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return memcpy(&__dst, (v55 - 184), 0x78uLL);
}

double OUTLINED_FUNCTION_100_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a40 = v42;
  a41 = v41;

  *&result = MusicIdentifierSet.playParameters(for:)(&a40, v43 - 184).n128_u64[0];
  return result;
}

uint64_t *OUTLINED_FUNCTION_102_9()
{
  *(v0 + 648) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 624));
}

void *OUTLINED_FUNCTION_103_10(void *a1)
{

  return memcpy(a1, (v1 + 704), 0xE8uLL);
}

id OUTLINED_FUNCTION_104_8()
{

  return [v0 (v1 + 3623)];
}

void RadioShowPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v26 = v0;
  v27 = v1;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  memcpy(__dst, v13, sizeof(__dst));
  v14 = *v10;
  v15 = v10[1];
  v16 = *(v10 + 16);
  sub_2172A497C(__src);
  memcpy(v12, __src, 0x221uLL);
  *(v12 + 552) = 0u;
  *(v12 + 568) = 1;
  *(v12 + 576) = 0u;
  *(v12 + 592) = 0u;
  *(v12 + 608) = 0u;
  *(v12 + 624) = 0u;
  *(v12 + 640) = 0;
  memcpy((v12 + 648), __src, 0x221uLL);
  v17 = type metadata accessor for RadioShowPropertyProvider();
  *(v12 + 1200) = 0u;
  v18 = v17[11];
  v19 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(v12 + v18, 1, 1, v19);
  v20 = v12 + v17[12];
  *(v20 + 96) = 0;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v12 + v17[13]) = 0;
  if (qword_280BE3578 != -1)
  {
    swift_once();
  }

  v21 = qword_280C01FB8;
  if (qword_280C01FB8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v24 = sub_217752D28();

    v21 = v24;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v12 + v17[14]) = v21;
  v22 = (v12 + v17[17]);
  memcpy((v12 + v17[15]), __dst, 0x161uLL);
  v23 = v12 + v17[16];
  *v23 = v14;
  *(v23 + 8) = v15;
  *(v23 + 16) = v16;
  *v22 = v8;
  v22[1] = v6;
  *(v12 + v17[18]) = v4;
  *(v12 + v17[19]) = v25;
  *(v12 + v17[20]) = v26;
  *(v12 + v17[21]) = v27;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for RadioShowPropertyProvider()
{
  result = qword_280BE3560;
  if (!qword_280BE3560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RadioShowPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *RadioShowPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

uint64_t RadioShowPropertyProvider.editorialArtworks.setter(uint64_t a1)
{
  v3 = *(v1 + 552);

  *(v1 + 552) = a1;
  return result;
}

uint64_t RadioShowPropertyProvider.editorialNotes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[36];
  v7[0] = v1[35];
  v7[1] = v2;
  v4 = v1[38];
  v8 = v1[37];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_21726A630(v7, &v6, &qword_27CB24B70, &unk_217759460);
}

__n128 RadioShowPropertyProvider.editorialNotes.setter(uint64_t a1)
{
  v3 = v1[36];
  v8[0] = v1[35];
  v8[1] = v3;
  v4 = v1[38];
  v8[2] = v1[37];
  v8[3] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(a1 + 16);
  v1[35] = *a1;
  v1[36] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[37] = result;
  v1[38] = v7;
  return result;
}

uint64_t RadioShowPropertyProvider.editorialVideoArtworks.setter(uint64_t a1)
{
  v3 = *(v1 + 624);

  *(v1 + 624) = a1;
  return result;
}

uint64_t RadioShowPropertyProvider.hostName.getter()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t RadioShowPropertyProvider.hostName.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 640);

  *(v1 + 632) = v2;
  *(v1 + 640) = v0;
  return result;
}

uint64_t RadioShowPropertyProvider.mainUberArtwork.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 648), 0x221uLL);
  memcpy(a1, (v1 + 648), 0x221uLL);
  return sub_21726A630(__dst, v4, &qword_27CB24400, &unk_21775E9A0);
}

void *RadioShowPropertyProvider.mainUberArtwork.setter(const void *a1)
{
  memcpy(v4, (v1 + 648), 0x221uLL);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + 648), a1, 0x221uLL);
}

uint64_t RadioShowPropertyProvider.name.getter()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1208);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t RadioShowPropertyProvider.name.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 1208);

  *(v1 + 1200) = v2;
  *(v1 + 1208) = v0;
  return result;
}

uint64_t RadioShowPropertyProvider.searchContextSnippets.getter()
{
  v1 = *(v0 + *(type metadata accessor for RadioShowPropertyProvider() + 52));

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_25_29() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void RadioShowPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB284D8, &unk_21776D420);
  if (!swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_52_17();
    sub_217752AA8();
    OUTLINED_FUNCTION_49_16();
    MEMORY[0x21CEA23B0](0xD000000000000029, 0x80000002177AEB00);
    v47[0] = v4;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_55_12();
    goto LABEL_66;
  }

  v12 = qword_280BE6648;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_14_28();
  }

  if (OUTLINED_FUNCTION_174(qword_280C01FF8))
  {
    memcpy(v47, v2, 0x221uLL);
    memcpy(v48, v2, 0x221uLL);
    OUTLINED_FUNCTION_104(v48);
    if (!v13)
    {
LABEL_36:
      v15 = swift_allocObject();
      memcpy(v46, v47, sizeof(v46));
      sub_217284028(v46, &v45);

      memcpy((v15 + 16), v48, 0x221uLL);
      v14 = &type metadata for Artwork;
      goto LABEL_37;
    }

LABEL_7:

    v14 = 0;
    v15 = 0;
    goto LABEL_37;
  }

  v16 = qword_280BE6680;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_2_60();
  }

  OUTLINED_FUNCTION_174(qword_280C02018);
  OUTLINED_FUNCTION_161();
  if (v16)
  {
    v17 = *(v2 + 552);
    if (v17)
    {
      v18 = &unk_27CB24BE8;
      v19 = &unk_2177595F0;
LABEL_13:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
      sub_217751DE8();
LABEL_61:

      *v6 = v17;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = v20;
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v21 = qword_280BE6698;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_13_5();
  }

  OUTLINED_FUNCTION_174(qword_280C02028);
  OUTLINED_FUNCTION_161();
  if (v21)
  {
    v22 = *(v2 + 560);
    v23 = *(v2 + 568);
    v24 = *(v2 + 592);
    *v46 = *(v2 + 576);
    *&v46[16] = v24;
    *&v46[32] = *(v2 + 608);
    if (v23 != 1)
    {
      v15 = swift_allocObject();
      *&v48[0] = v22;
      *(&v48[0] + 1) = v23;
      v25 = *(v2 + 592);
      v48[1] = *(v2 + 576);
      v48[2] = v25;
      v48[3] = *(v2 + 608);
      sub_217350F74(v48, v47);

      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      v26 = *&v46[16];
      *(v15 + 32) = *v46;
      *(v15 + 48) = v26;
      *(v15 + 64) = *&v46[32];
      v14 = &type metadata for EditorialNotes;
      goto LABEL_37;
    }

    goto LABEL_7;
  }

  v27 = qword_280BE6670;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_1_56();
  }

  OUTLINED_FUNCTION_174(qword_280C02010);
  OUTLINED_FUNCTION_161();
  if (v27)
  {
    v17 = *(v2 + 624);
    if (v17)
    {
      v18 = &unk_27CB24BE0;
      v19 = &unk_2177657E0;
      goto LABEL_13;
    }

LABEL_60:
    v20 = 0;
    goto LABEL_61;
  }

  v28 = qword_280BE6638;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_12_24();
  }

  OUTLINED_FUNCTION_174(qword_280C01FF0);
  OUTLINED_FUNCTION_161();
  if (v28)
  {
    v29 = *(v2 + 640);
    if (v29)
    {
      v30 = *(v2 + 632);
LABEL_29:
      sub_217751DE8();
      v31 = MEMORY[0x277D837D0];
LABEL_44:

      *v6 = v30;
      v6[1] = v29;
      v6[2] = 0;
      v6[3] = v31;
      goto LABEL_62;
    }

    goto LABEL_43;
  }

  v32 = qword_280BE6690;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_11_35();
  }

  OUTLINED_FUNCTION_174(qword_280C02020);
  OUTLINED_FUNCTION_161();
  if (v32)
  {
    memcpy(v47, (v2 + 648), 0x221uLL);
    memcpy(v48, (v2 + 648), 0x221uLL);
    OUTLINED_FUNCTION_104(v48);
    if (!v13)
    {
      goto LABEL_36;
    }

    v15 = 0;
    v14 = 0;
LABEL_37:
    *v6 = v15;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v14;
    goto LABEL_62;
  }

  v33 = qword_280BE6658;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_10_29();
  }

  OUTLINED_FUNCTION_174(qword_280C02000);
  OUTLINED_FUNCTION_161();
  if (v33)
  {
    v29 = *(v2 + 1208);
    if (v29)
    {
      v30 = *(v2 + 1200);
      goto LABEL_29;
    }

LABEL_43:
    v30 = 0;
    v31 = 0;
    goto LABEL_44;
  }

  v34 = qword_280BE6660;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_9_31();
  }

  OUTLINED_FUNCTION_174(qword_280C02008);
  OUTLINED_FUNCTION_161();
  if (v34)
  {
    v35 = type metadata accessor for RadioShowPropertyProvider();
    sub_21726A630(v2 + *(v35 + 44), v1, &unk_27CB277C0, &qword_217758DC0);
    v36 = sub_2177516D8();
    if (__swift_getEnumTagSinglePayload(v1, 1, v36) == 1)
    {

      sub_2171F0738(v1, &unk_27CB277C0, &qword_217758DC0);
      memset(v48, 0, 32);
    }

    else
    {
      *(&v48[1] + 1) = v36;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v48);
      (*(*(v36 - 8) + 32))(boxed_opaque_existential_0, v1, v36);
    }

    v42 = v48[1];
    *v6 = v48[0];
    *(v6 + 1) = v42;
  }

  else
  {
    v37 = qword_280BE6628;

    if (v37 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    OUTLINED_FUNCTION_174(qword_280BE6630);
    OUTLINED_FUNCTION_161();
    if ((v37 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
      swift_allocObject();
      v43 = OUTLINED_FUNCTION_54_0();
      v44 = OUTLINED_FUNCTION_174(v43);

      if ((v44 & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_52_17();
          sub_217752AA8();
          OUTLINED_FUNCTION_49_16();
          MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
          v47[0] = v4;
          type metadata accessor for AnyMusicProperty();
          sub_217752C78();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_55_12();
LABEL_66:
          OUTLINED_FUNCTION_17_22();
          __break(1u);
        }
      }

      v17 = *(v2 + *(type metadata accessor for RadioShowPropertyProvider() + 52));
      if (v17)
      {
        v18 = &unk_27CB24BD8;
        v19 = &unk_2177595E0;
        goto LABEL_13;
      }

      goto LABEL_60;
    }

    v38 = type metadata accessor for RadioShowPropertyProvider();
    sub_21726A630(v2 + *(v38 + 48), v48, &qword_27CB25330, &unk_21775E9B0);
    if (*(&v48[5] + 1))
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
      v40 = swift_allocObject();
      memcpy((v40 + 16), v48, 0x68uLL);
    }

    else
    {

      sub_2171F0738(v48, &qword_27CB25330, &unk_21775E9B0);
      v40 = 0;
      v39 = 0;
    }

    *v6 = v40;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v39;
  }

LABEL_62:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174B12CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_21726A630(a1, &v5, &qword_27CB2AD40, &qword_2177583F0);

  return RadioShowPropertyProvider.subscript.setter();
}

uint64_t RadioShowPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB284D8, &unk_21776D420);
  if (!swift_dynamicCastClass())
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000029, 0x80000002177AEB00);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    goto LABEL_17;
  }

  v1 = qword_280BE6680;
  swift_retain_n();
  if (v1 != -1)
  {
    OUTLINED_FUNCTION_2_60();
  }

  OUTLINED_FUNCTION_139_7(qword_280C02018);
  OUTLINED_FUNCTION_44_1();

  if (v1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_15_6();
    sub_217351C74();
  }

  else
  {
    v2 = qword_280BE6670;

    if (v2 != -1)
    {
      OUTLINED_FUNCTION_1_56();
    }

    OUTLINED_FUNCTION_139_7(qword_280C02010);
    OUTLINED_FUNCTION_44_1();

    if (v2)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_15_6();
      sub_217351C78();
    }

    else
    {
      v3 = qword_280BE6628;

      if (v3 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      OUTLINED_FUNCTION_139_7(qword_280BE6630);
      OUTLINED_FUNCTION_44_1();

      if ((v3 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
        swift_initStackObject();
        v4 = OUTLINED_FUNCTION_54_0();
        OUTLINED_FUNCTION_139_7(v4);
        OUTLINED_FUNCTION_44_1();

        while (1)
        {
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
          type metadata accessor for AnyMusicProperty();
          sub_217752C78();
          OUTLINED_FUNCTION_217_0();
LABEL_17:
          OUTLINED_FUNCTION_17_22();
          __break(1u);
        }
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_15_6();
      sub_217351CB4();
    }
  }

  return sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
}

void (*RadioShowPropertyProvider.subscript.modify())(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_143();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  RadioShowPropertyProvider.subscript.getter();
  return sub_2174B1698;
}

void sub_2174B1698(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    RadioShowPropertyProvider.subscript.setter();
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    RadioShowPropertyProvider.subscript.setter();
  }

  free(v2);
}

void RadioShowPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB284E0, &qword_21776D4B8);
  OUTLINED_FUNCTION_45_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v32 - v14;
  v16 = type metadata accessor for RadioShowPropertyProvider();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27EB8, &qword_21776BDA0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177AEB30);
    v32[0] = v7;
    v30 = *(v8 + 216);
    type metadata accessor for PartialMusicAsyncProperty();
    sub_217753018();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v31 = 103;
    goto LABEL_27;
  }

  v2 = v21;
  sub_2171FF30C(v5, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_2171F0738(v15, &qword_27CB284E0, &qword_21776D4B8);
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000032, 0x80000002177AEB60);
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v31 = 106;
    goto LABEL_27;
  }

  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_2174B362C(v15, v1);
  v22 = qword_280BE6680;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_2_60();
  }

  OUTLINED_FUNCTION_174(qword_280C02018);
  OUTLINED_FUNCTION_36_14();

  if (v22)
  {

    v23 = *(v1 + 552);
    sub_217751DE8();
    sub_2174B3690(v1);
    v24 = *(v3 + 552);
    if (!v23)
    {
      v23 = sub_217751DE8();
    }

    *(v3 + 552) = v23;
  }

  else
  {
    v25 = qword_280BE6670;

    if (v25 != -1)
    {
      OUTLINED_FUNCTION_1_56();
    }

    OUTLINED_FUNCTION_174(qword_280C02010);
    OUTLINED_FUNCTION_36_14();

    if (v25)
    {

      v26 = *(v1 + 624);
      sub_217751DE8();
      sub_2174B3690(v1);
      v27 = *(v3 + 624);
      if (!v26)
      {
        v26 = sub_217751DE8();
      }

      *(v3 + 624) = v26;
    }

    else
    {
      v28 = qword_280BE6628;

      if (v28 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      OUTLINED_FUNCTION_174(qword_280BE6630);
      OUTLINED_FUNCTION_36_14();

      if ((v28 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
        swift_initStackObject();
        v29 = OUTLINED_FUNCTION_54_0();
        OUTLINED_FUNCTION_174(v29);
        OUTLINED_FUNCTION_36_14();

        while (1)
        {
          OUTLINED_FUNCTION_28_23();
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AEBA0);
          v32[0] = v2;
          sub_217752C78();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_30_22();
          v31 = 122;
LABEL_27:
          v32[0] = v31;
          OUTLINED_FUNCTION_17_22();
          __break(1u);
        }
      }

      sub_21726A630(v1 + *(v16 + 48), v32, &qword_27CB25330, &unk_21775E9B0);
      sub_2174B3690(v1);
      if (v32[11])
      {
        memcpy(v33, v32, 0x68uLL);
      }

      else
      {
        sub_21726A630(v3 + *(v16 + 48), v33, &qword_27CB25330, &unk_21775E9B0);
        if (v32[11])
        {
          sub_2171F0738(v32, &qword_27CB25330, &unk_21775E9B0);
        }
      }

      sub_21733BBDC(v33, v3 + *(v16 + 48), &qword_27CB25330, &unk_21775E9B0);
    }
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174B1CA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217765440;
  if (qword_280BE6648 != -1)
  {
    OUTLINED_FUNCTION_14_28();
  }

  *(v0 + 32) = qword_280C01FF8;
  v1 = qword_280BE6680;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_2_60();
  }

  *(v0 + 40) = qword_280C02018;
  v2 = qword_280BE6698;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_13_5();
  }

  *(v0 + 48) = qword_280C02028;
  v3 = qword_280BE6670;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_1_56();
  }

  *(v0 + 56) = qword_280C02010;
  v4 = qword_280BE6638;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_12_24();
  }

  *(v0 + 64) = qword_280C01FF0;
  v5 = qword_280BE6690;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_11_35();
  }

  *(v0 + 72) = qword_280C02020;
  v6 = qword_280BE6658;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_10_29();
  }

  *(v0 + 80) = qword_280C02000;
  v7 = qword_280BE6660;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_9_31();
  }

  *(v0 + 88) = qword_280C02008;
  v8 = qword_280BE6628;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  *(v0 + 96) = qword_280BE6630;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
  swift_allocObject();
  *(v0 + 104) = OUTLINED_FUNCTION_54_0();
  qword_280C01FB8 = v0;
}

uint64_t RadioShowPropertyProvider.knownProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for RadioShowPropertyProvider() + 56));

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_59_8() + 60);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *RadioShowPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_25_29() + 60);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t RadioShowPropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_59_8() + 64));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for RadioShowPropertyProvider() + 64);
  v6 = *(v5 + 8);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t RadioShowPropertyProvider.href.getter()
{
  v1 = (v0 + *(type metadata accessor for RadioShowPropertyProvider() + 68));
  v2 = *v1;
  v3 = v1[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t RadioShowPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = (v1 + *(type metadata accessor for RadioShowPropertyProvider() + 68));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RadioShowPropertyProvider.rawAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for RadioShowPropertyProvider() + 72));

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.rawRelationships.getter()
{
  v1 = *(v0 + *(type metadata accessor for RadioShowPropertyProvider() + 76));

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.rawAssociations.getter()
{
  v1 = *(v0 + *(type metadata accessor for RadioShowPropertyProvider() + 80));

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.rawMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for RadioShowPropertyProvider() + 84));

  return sub_217751DE8();
}

void static RadioShowPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  v4 = v3;
  v6 = v5;
  v7 = sub_2177516D8();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v157 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_167();
  v29 = OUTLINED_FUNCTION_37_16();
  memcpy(v29, v6, 0x221uLL);
  v30 = OUTLINED_FUNCTION_38_14();
  memcpy(v30, v4, 0x221uLL);
  v31 = OUTLINED_FUNCTION_8_36();
  memcpy(v31, v6, 0x221uLL);
  memcpy(v184, v4, sizeof(v184));
  memcpy(v185, v6, 0x221uLL);
  OUTLINED_FUNCTION_104(v185);
  if (v37)
  {
    OUTLINED_FUNCTION_23_27();
    OUTLINED_FUNCTION_104(v171);
    if (!v37)
    {
      v42 = OUTLINED_FUNCTION_37_16();
      OUTLINED_FUNCTION_157(v42, &v172);
      v43 = OUTLINED_FUNCTION_38_14();
      v44 = &v172;
LABEL_10:
      OUTLINED_FUNCTION_157(v43, v44);
      goto LABEL_11;
    }

    v160 = v10;
    v161 = v7;
    v32 = OUTLINED_FUNCTION_16_31();
    OUTLINED_FUNCTION_4_58(v32);
    v33 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_40_2(v33, v170);
    v34 = OUTLINED_FUNCTION_38_14();
    OUTLINED_FUNCTION_40_2(v34, v170);
    v35 = OUTLINED_FUNCTION_16_31();
    sub_2171F0738(v35, &qword_27CB24400, &unk_21775E9A0);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_16_31();
    OUTLINED_FUNCTION_4_58(v36);
    OUTLINED_FUNCTION_4_58(v170);
    OUTLINED_FUNCTION_23_27();
    OUTLINED_FUNCTION_104(v171);
    if (v37)
    {
      OUTLINED_FUNCTION_4_58(v167);
      v38 = OUTLINED_FUNCTION_37_16();
      OUTLINED_FUNCTION_21_24(v38);
      v39 = OUTLINED_FUNCTION_38_14();
      OUTLINED_FUNCTION_21_24(v39);
      v40 = OUTLINED_FUNCTION_16_31();
      OUTLINED_FUNCTION_21_24(v40);
      v41 = v167;
LABEL_9:
      sub_217284084(v41);
LABEL_11:
      OUTLINED_FUNCTION_6_38();
      memcpy(v45, v46, 0x449uLL);
      v47 = &unk_27CB25C18;
      v48 = &unk_21775ECE0;
      v49 = v171;
LABEL_12:
      sub_2171F0738(v49, v47, v48);
      goto LABEL_13;
    }

    v160 = v10;
    v161 = v7;
    memcpy(v167, v184, 0x221uLL);
    v50 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_42_15(v50);
    v51 = OUTLINED_FUNCTION_38_14();
    OUTLINED_FUNCTION_42_15(v51);
    v52 = OUTLINED_FUNCTION_16_31();
    OUTLINED_FUNCTION_42_15(v52);
    v53 = static Artwork.== infix(_:_:)(v170, v167);
    memcpy(v165, v167, 0x221uLL);
    sub_217284084(v165);
    memcpy(v166, v170, 0x221uLL);
    sub_217284084(v166);
    OUTLINED_FUNCTION_4_58(v167);
    sub_2171F0738(v167, &qword_27CB24400, &unk_21775E9A0);
    if ((v53 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v54 = *(v4 + 552);
  if (*(v6 + 552))
  {
    if (!v54)
    {
      goto LABEL_13;
    }

    v55 = *(v4 + 552);
    sub_217751DE8();
    sub_217262A00();
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v54)
  {
    goto LABEL_13;
  }

  v58 = *(v6 + 576);
  v168[0] = *(v6 + 560);
  v168[1] = v58;
  v59 = *(v6 + 576);
  v168[2] = *(v6 + 592);
  v60 = *(v6 + 592);
  v168[3] = *(v6 + 608);
  v61 = *(v4 + 576);
  v169[0] = *(v4 + 560);
  v169[1] = v61;
  v62 = *(v4 + 576);
  v169[2] = *(v4 + 592);
  v63 = *(v4 + 592);
  v169[3] = *(v4 + 608);
  v166[0] = v59;
  v166[1] = v60;
  v166[2] = *(v6 + 608);
  v64 = *(&v168[0] + 1);
  v65 = *(&v169[0] + 1);
  v165[0] = v62;
  v165[1] = v63;
  v165[2] = *(v4 + 608);
  if (*(&v168[0] + 1) == 1)
  {
    if (*(&v169[0] + 1) == 1)
    {
      *&v176 = *&v168[0];
      *(&v176 + 1) = 1;
      OUTLINED_FUNCTION_19_20(*(v6 + 576), *(v6 + 592));
      v179 = *(v6 + 608);
      OUTLINED_FUNCTION_40_2(v168, v171);
      OUTLINED_FUNCTION_40_2(v169, v171);
      v66 = OUTLINED_FUNCTION_8_36();
      sub_2171F0738(v66, &qword_27CB24B70, &unk_217759460);
      goto LABEL_29;
    }

    v68 = *&v169[0];
    v69 = *&v168[0];
    OUTLINED_FUNCTION_6_38();
    sub_21726A630(v72, v73, &qword_27CB24B70, &unk_217759460);
    OUTLINED_FUNCTION_6_38();
    sub_21726A630(v74, v75, &qword_27CB24B70, &unk_217759460);
LABEL_26:
    *&v176 = v69;
    *(&v176 + 1) = v64;
    OUTLINED_FUNCTION_19_20(v166[0], v166[1]);
    v179 = v166[2];
    v180 = v68;
    v181 = v65;
    v182 = v165[0];
    v183[0] = v165[1];
    v183[1] = v165[2];
LABEL_27:
    v49 = OUTLINED_FUNCTION_8_36();
    goto LABEL_12;
  }

  v176 = v168[0];
  v67 = *(v6 + 592);
  v177 = *(v6 + 576);
  v178 = v67;
  v179 = *(v6 + 608);
  v171[0] = v168[0];
  v171[1] = v177;
  v171[2] = v67;
  v171[3] = v179;
  if (*(&v169[0] + 1) == 1)
  {
    v68 = *&v169[0];
    v69 = *&v168[0];
    v172 = v176;
    v173 = v177;
    v174 = v178;
    v175 = v179;
    OUTLINED_FUNCTION_43_11(v168);
    OUTLINED_FUNCTION_43_11(v169);
    v70 = OUTLINED_FUNCTION_8_36();
    OUTLINED_FUNCTION_43_11(v70);
    v71 = OUTLINED_FUNCTION_16_31();
    sub_217351248(v71);
    goto LABEL_26;
  }

  v76 = *(v4 + 592);
  v173 = *(v4 + 576);
  v174 = v76;
  v175 = *(v4 + 608);
  v172 = v169[0];
  v158 = *&v168[0];
  LODWORD(v159) = static EditorialNotes.== infix(_:_:)(v171, &v172);
  v167[0] = v172;
  v167[1] = v173;
  v167[2] = v174;
  v167[3] = v175;
  sub_21726A630(v168, v170, &qword_27CB24B70, &unk_217759460);
  sub_21726A630(v169, v170, &qword_27CB24B70, &unk_217759460);
  v77 = OUTLINED_FUNCTION_8_36();
  sub_21726A630(v77, v170, &qword_27CB24B70, &unk_217759460);
  sub_217351248(v167);
  v170[0] = v171[0];
  v170[1] = v171[1];
  v170[2] = v171[2];
  v170[3] = v171[3];
  sub_217351248(v170);
  *&v172 = v158;
  *(&v172 + 1) = v64;
  v173 = v166[0];
  v174 = v166[1];
  v175 = v166[2];
  v78 = OUTLINED_FUNCTION_16_31();
  sub_2171F0738(v78, &qword_27CB24B70, &unk_217759460);
  if ((v159 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  v79 = *(v4 + 624);
  if (*(v6 + 624))
  {
    if (!v79)
    {
      goto LABEL_13;
    }

    v80 = *(v4 + 624);
    sub_217751DE8();
    sub_217262CB4();
    v82 = v81;

    if ((v82 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v79)
  {
    goto LABEL_13;
  }

  v83 = *(v6 + 640);
  v84 = *(v4 + 640);
  if (v83)
  {
    if (!v84)
    {
      goto LABEL_13;
    }

    v85 = *(v6 + 632) == *(v4 + 632) && v83 == v84;
    if (!v85 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v84)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_47_14(v167);
  memcpy(v170, (v4 + 648), 0x221uLL);
  v86 = OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_47_14(v86);
  memcpy(v184, (v4 + 648), sizeof(v184));
  v87 = OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_47_14(v87);
  v88 = OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_104(v88);
  if (v37)
  {
    OUTLINED_FUNCTION_23_27();
    OUTLINED_FUNCTION_104(v171);
    if (v37)
    {
      OUTLINED_FUNCTION_4_58(v166);
      OUTLINED_FUNCTION_40_2(v167, v165);
      OUTLINED_FUNCTION_40_2(v170, v165);
      sub_2171F0738(v166, &qword_27CB24400, &unk_21775E9A0);
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_21_24(v167);
    v43 = v170;
    v44 = v166;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_58(v166);
  OUTLINED_FUNCTION_4_58(v165);
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_104(v171);
  if (v89)
  {
    OUTLINED_FUNCTION_4_58(v164);
    OUTLINED_FUNCTION_157(v167, v163);
    OUTLINED_FUNCTION_157(v170, v163);
    OUTLINED_FUNCTION_157(v166, v163);
    v41 = v164;
    goto LABEL_9;
  }

  memcpy(v164, v184, 0x221uLL);
  OUTLINED_FUNCTION_41_16(v167);
  OUTLINED_FUNCTION_41_16(v170);
  OUTLINED_FUNCTION_41_16(v166);
  v90 = static Artwork.== infix(_:_:)(v165, v164);
  memcpy(v162, v164, 0x221uLL);
  sub_217284084(v162);
  memcpy(v163, v165, 0x221uLL);
  sub_217284084(v163);
  OUTLINED_FUNCTION_4_58(v164);
  sub_2171F0738(v164, &qword_27CB24400, &unk_21775E9A0);
  if ((v90 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_52:
  v91 = *(v6 + 1208);
  v92 = *(v4 + 1208);
  if (v91)
  {
    if (!v92)
    {
      goto LABEL_13;
    }

    v93 = *(v6 + 1200) == *(v4 + 1200) && v91 == v92;
    if (!v93 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v92)
  {
    goto LABEL_13;
  }

  v159 = type metadata accessor for RadioShowPropertyProvider();
  v94 = v159[11];
  v95 = *(v24 + 48);
  sub_21726A630(v6 + v94, v0, &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(v4 + v94, v0 + v95, &unk_27CB277C0, &qword_217758DC0);
  v96 = v161;
  if (__swift_getEnumTagSinglePayload(v0, 1, v161) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v0 + v95, 1, v96) == 1)
    {
      sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_68;
    }

LABEL_66:
    v47 = &qword_27CB24840;
    v48 = &unk_217758DD0;
    v49 = v0;
    goto LABEL_12;
  }

  sub_21726A630(v0, v23, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v0 + v95, 1, v96) == 1)
  {
    (*(v160 + 8))(v23, v96);
    goto LABEL_66;
  }

  v97 = v160;
  (*(v160 + 32))(v16, v0 + v95, v96);
  OUTLINED_FUNCTION_7_36();
  sub_2174B3734(v98, v99);
  v100 = sub_217751F08();
  v101 = *(v97 + 8);
  v101(v16, v96);
  v101(v23, v96);
  sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
  if ((v100 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_68:
  v102 = v159;
  v103 = v159[12];
  OUTLINED_FUNCTION_6_38();
  sub_21726A630(v104, v105, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(v4 + v103, v183 + 8, &qword_27CB25330, &unk_21775E9B0);
  if (!*(&v182 + 1))
  {
    if (!*&v183[6])
    {
      v113 = OUTLINED_FUNCTION_8_36();
      sub_2171F0738(v113, v114, v115);
      goto LABEL_74;
    }

    goto LABEL_27;
  }

  v106 = OUTLINED_FUNCTION_8_36();
  sub_21726A630(v106, v171, v107, v108);
  if (!*&v183[6])
  {
    sub_2171F0738(v171, &unk_27CB28230, &unk_21775CD50);
    goto LABEL_27;
  }

  memcpy(v166, v183 + 8, 0x68uLL);
  v109 = sub_21733E390(v171, v166);
  sub_2171F0738(v166, &unk_27CB28230, &unk_21775CD50);
  sub_2171F0738(v171, &unk_27CB28230, &unk_21775CD50);
  v110 = OUTLINED_FUNCTION_8_36();
  sub_2171F0738(v110, v111, v112);
  if ((v109 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_74:
  v116 = v102[13];
  v117 = *(v4 + v116);
  if (*(v6 + v116))
  {
    if (!v117)
    {
      goto LABEL_13;
    }

    v118 = *(v4 + v116);
    sub_217751DE8();
    sub_21726F358();
    v120 = v119;

    if ((v120 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v117)
  {
    goto LABEL_13;
  }

  v121 = OUTLINED_FUNCTION_136(v102[14]);
  sub_217270140(v121, v122, v123, v124, v125, v126, v127, v128, v157, v158, v159, v160);
  if (v129)
  {
    v130 = v159[15];
    memcpy(v165, (v6 + v130), 0x161uLL);
    memcpy(v164, (v6 + v130), 0x161uLL);
    v131 = v159[15];
    memcpy(v166, (v4 + v131), 0x161uLL);
    memcpy(v163, (v4 + v131), 0x161uLL);
    sub_217269EF4(v165, v162);
    sub_217269EF4(v166, v162);
    static MusicIdentifierSet.== infix(_:_:)();
    LOBYTE(v131) = v132;
    memcpy(v171, v163, 0x161uLL);
    sub_217269F50(v171);
    v133 = OUTLINED_FUNCTION_8_36();
    memcpy(v133, v164, 0x161uLL);
    v134 = OUTLINED_FUNCTION_8_36();
    sub_217269F50(v134);
    if (v131)
    {
      v135 = v159[16];
      v136 = *(v6 + v135);
      v137 = *(v6 + v135 + 8);
      v138 = (v4 + v135);
      v139 = v136 == *v138 && v137 == v138[1];
      if (v139 || (sub_217753058() & 1) != 0)
      {
        v140 = v159[17];
        v141 = (v6 + v140);
        v142 = *(v6 + v140 + 8);
        v143 = (v4 + v140);
        v144 = v143[1];
        if (!v142)
        {
          if (v144)
          {
            goto LABEL_13;
          }

          goto LABEL_97;
        }

        if (v144)
        {
          v145 = *v141 == *v143 && v142 == v144;
          if (v145 || (sub_217753058() & 1) != 0)
          {
LABEL_97:
            v146 = OUTLINED_FUNCTION_136(v159[18]);
            sub_217261FB0(v146, v147);
            if (v148)
            {
              v149 = OUTLINED_FUNCTION_136(v159[19]);
              sub_217261FB0(v149, v150);
              if (v151)
              {
                v152 = OUTLINED_FUNCTION_136(v159[20]);
                sub_217261FB0(v152, v153);
                if (v154)
                {
                  v155 = OUTLINED_FUNCTION_136(v159[21]);
                  sub_217261FB0(v155, v156);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_13();
}

void RadioShowPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = sub_2177516D8();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v42[-v16 - 8];
  OUTLINED_FUNCTION_225_3(v51);
  OUTLINED_FUNCTION_225_3(v52);
  OUTLINED_FUNCTION_104(v52);
  if (v18)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v44, v51, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v45, v51, 0x221uLL);
    sub_217284028(v45, v46);
    Artwork.hash(into:)(v3);
    memcpy(v46, v44, 0x221uLL);
    sub_217284084(v46);
  }

  if (*(v0 + 552))
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v19 = *(v0 + 576);
  v47 = *(v0 + 560);
  v48 = v19;
  v20 = *(v0 + 608);
  v49 = *(v0 + 592);
  v50 = v20;
  sub_217265238();
  if (*(v0 + 624))
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 640))
  {
    v21 = *(v0 + 632);
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_47_14(v45);
  OUTLINED_FUNCTION_47_14(v46);
  OUTLINED_FUNCTION_104(v46);
  if (v18)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v42, v45, sizeof(v42));
    OUTLINED_FUNCTION_119();
    memcpy(v43, v45, 0x221uLL);
    sub_217284028(v43, v44);
    Artwork.hash(into:)(v3);
    memcpy(v44, v42, 0x221uLL);
    sub_217284084(v44);
  }

  if (*(v0 + 1208))
  {
    v22 = *(v0 + 1200);
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v23 = type metadata accessor for RadioShowPropertyProvider();
  sub_21726A630(v0 + v23[11], v17, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v7 + 32))(v1, v17, v4);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_7_36();
    sub_2174B3734(v24, v25);
    sub_217751EB8();
    (*(v7 + 8))(v1, v4);
  }

  sub_21726A630(v0 + v23[12], v44, &qword_27CB25330, &unk_21775E9B0);
  if (v44[11])
  {
    memcpy(v43, v44, 0x68uLL);
    OUTLINED_FUNCTION_119();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v3);
    sub_2171F0738(v43, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v23[13]))
  {
    OUTLINED_FUNCTION_119();
    sub_21727DDE0();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v26 = OUTLINED_FUNCTION_201(v23[14]);
  sub_217281970(v26, v27);
  memcpy(v44, (v0 + v23[15]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v3);
  v28 = (v0 + v23[16]);
  v29 = *v28;
  v30 = v28[1];
  sub_217751FF8();
  v31 = (v0 + v23[17]);
  if (v31[1])
  {
    v32 = *v31;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v33 = OUTLINED_FUNCTION_201(v23[18]);
  sub_217265A08(v33, v34);
  v35 = OUTLINED_FUNCTION_201(v23[19]);
  sub_217265A08(v35, v36);
  v37 = OUTLINED_FUNCTION_201(v23[20]);
  sub_217265A08(v37, v38);
  v39 = OUTLINED_FUNCTION_201(v23[21]);
  sub_217265A08(v39, v40);
  OUTLINED_FUNCTION_13();
}

uint64_t RadioShowPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  RadioShowPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_2174B352C(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  RadioShowPropertyProvider.subscript.getter();
  return sub_2174B1698;
}

uint64_t sub_2174B35A8()
{
  sub_2177531E8();
  RadioShowPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t (*sub_2174B35F0(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_2174B362C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioShowPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174B3690(uint64_t a1)
{
  v2 = type metadata accessor for RadioShowPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2174B3734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2174B37A4()
{
  sub_2172E2E58(319, &qword_280BE7698);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE7DE8);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_2172E2E58(319, &qword_280BE7598);
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        sub_2174B3A3C(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        v1 = v9;
        if (v10 <= 0x3F)
        {
          sub_217351B44(319, &qword_280BE7F80, &unk_27CB28230, &unk_21775CD50);
          v1 = v11;
          if (v12 <= 0x3F)
          {
            sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
            v1 = v13;
            if (v14 <= 0x3F)
            {
              sub_2174B3A3C(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
              v1 = v15;
              if (v16 <= 0x3F)
              {
                sub_217351BFC();
                v1 = v17;
                if (v18 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_2174B3A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_24(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2256, v2, v3);
}

uint64_t OUTLINED_FUNCTION_41_16(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 592, v2, v3);
}

uint64_t OUTLINED_FUNCTION_42_15(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2256, v2, v3);
}

uint64_t OUTLINED_FUNCTION_43_11(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 3504, v3, v2);
}

void *OUTLINED_FUNCTION_47_14(void *a1)
{

  return memcpy(a1, (v1 + 648), 0x221uLL);
}

void OUTLINED_FUNCTION_49_16()
{
  v1 = *(v0 + 1672);
  *(v0 + 1664) = *(v0 + 1664);
  *(v0 + 1672) = v1;
}

uint64_t OUTLINED_FUNCTION_59_8()
{

  return type metadata accessor for RadioShowPropertyProvider();
}

void MusicDataRequest.init(musicAPI:method:body:timeoutInterval:)()
{
  OUTLINED_FUNCTION_12();
  v41 = v1;
  v40 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v42 = v9;
  v10 = sub_2177516D8();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = type metadata accessor for MusicAPI.Endpoint();
  v21 = OUTLINED_FUNCTION_45_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_8();
  v25 = sub_2177512F8();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26, v31);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  LODWORD(v6) = *v6;
  sub_2172CB230(v8, v0);
  (*(v13 + 16))(v19, v0, v10);
  sub_2177512B8();
  sub_2174B5658(v0);
  sub_217751268();
  if (v40 >> 60 != 15)
  {
    sub_21727591C(v4, v40);
    sub_2177512D8();
    sub_2177512E8();
  }

  if ((v41 & 1) == 0)
  {
    sub_217751278();
  }

  (*(v28 + 16))(v42, v34, v25);
  v35 = *(type metadata accessor for MusicDataRequest() + 20);
  swift_beginAccess();
  v36 = off_280BEBCD0;

  (v36)(v43, v37);

  v38 = v44;
  v39 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v38, v39, v42 + v35);
  sub_217275680(v4, v40);
  sub_2174B5658(v8);
  (*(v28 + 8))(v34, v25);
  __swift_destroy_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_13();
}

void MusicAPI.Endpoint.init<A>(relativeURLLocation:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v61 = v1;
  v62 = v0;
  v3 = v2;
  v64 = v4;
  v65 = v5;
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_1();
  v60 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  v20 = v59 - v19;
  v63 = sub_217751518();
  v21 = OUTLINED_FUNCTION_0_0(v63);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21, v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  v36 = v59 - v35;
  v37 = sub_2177516D8();
  v38 = OUTLINED_FUNCTION_0_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38, v43);
  OUTLINED_FUNCTION_1();
  v46 = v45 - v44;
  sub_2177516C8();

  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    (*(v7 + 8))(v64, v3);
    v47 = &unk_27CB277C0;
    v48 = &qword_217758DC0;
    v49 = v36;
LABEL_5:
    sub_2171F06D8(v49, v47, v48);
    v50 = 1;
    v51 = v65;
    goto LABEL_9;
  }

  v62 = v3;
  (*(v40 + 32))(v46, v36, v37);
  sub_217751478();
  if (__swift_getEnumTagSinglePayload(v20, 1, v63) == 1)
  {
    (*(v7 + 8))(v64, v62);
    (*(v40 + 8))(v46, v37);
    v47 = &qword_27CB277B8;
    v48 = &unk_21776B220;
    v49 = v20;
    goto LABEL_5;
  }

  (*(v23 + 32))(v29, v20, v63);
  v52 = sub_2177514A8();
  v59[2] = v53;
  v59[3] = v52;
  v54 = sub_217751448();
  v55 = MEMORY[0x277D84F90];
  if (v54)
  {
    v55 = v54;
  }

  v59[1] = v55;
  v56 = v64;
  v57 = v62;
  (*(v7 + 16))(v60, v64, v62);
  v51 = v65;
  sub_2174B4D4C();
  (*(v7 + 8))(v56, v57);
  (*(v23 + 8))(v29, v63);
  (*(v40 + 8))(v46, v37);
  v50 = 0;
LABEL_9:
  v58 = type metadata accessor for MusicAPI.Endpoint();
  __swift_storeEnumTagSinglePayload(v51, v50, 1, v58);
  OUTLINED_FUNCTION_13();
}

void MusicAPI.Endpoint.applying(_:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v85 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v84 = &v74 - v9;
  OUTLINED_FUNCTION_206();
  v10 = sub_2177516D8();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v82 = v12;
  v83 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11, v15);
  OUTLINED_FUNCTION_1();
  v80 = v17 - v16;
  OUTLINED_FUNCTION_206();
  v81 = sub_217751518();
  v18 = OUTLINED_FUNCTION_0_0(v81);
  v79 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18, v22);
  OUTLINED_FUNCTION_1();
  v78 = v24 - v23;
  OUTLINED_FUNCTION_206();
  v25 = sub_217751428();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26, v31);
  v89 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v74 - v35;
  v86 = type metadata accessor for MusicAPI.Endpoint();
  v37 = v86[5];
  v76 = sub_2177514A8();
  v77 = v38;
  v75 = v0;
  v39 = sub_217751448();
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v94 = *(v2 + 16);
  if (v94)
  {
    v41 = 0;
    v43 = *(v28 + 16);
    v42 = v28 + 16;
    v95 = (*(v42 + 64) + 32) & ~*(v42 + 64);
    v96 = v43;
    v92 = v25;
    v93 = v2 + v95;
    v44 = *(v42 + 56);
    v87 = (v42 + 16);
    v88 = (v42 + 8);
    v90 = (v42 - 8);
    v91 = v42;
    while (2)
    {
      v45 = v93 + v44 * v41++;
      v96(v36, v45, v25);
      v46 = 0;
      v47 = *(v40 + 16);
      for (i = v95; ; i += v44)
      {
        if (v47 == v46)
        {
          v25 = v92;
          v96(v89, v36, v92);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B1A50(0, *(v40 + 16) + 1, 1, v40);
            v40 = v57;
          }

          v55 = *(v40 + 16);
          v54 = *(v40 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_2172B1A50(v54 > 1, v55 + 1, 1, v40);
            v40 = v58;
          }

          *(v40 + 16) = v55 + 1;
          (*v87)(v40 + v95 + v55 * v44, v89, v25);
          goto LABEL_24;
        }

        v49 = sub_217751408();
        v51 = v50;
        if (v49 == sub_217751408() && v51 == v52)
        {
          break;
        }

        v49 = sub_217753058();

        if (v49)
        {
          goto LABEL_20;
        }

        ++v46;
      }

LABEL_20:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2175035C8(v40);
        v40 = v56;
      }

      if (v46 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v25 = v92;
      (*v88)(v40 + i, v36, v92);
LABEL_24:
      (*v90)(v36, v25);
      if (v41 != v94)
      {
        continue;
      }

      break;
    }
  }

  v59 = v86[8];
  v60 = (v75 + v86[7]);
  v61 = *v60;
  v62 = v60[1];
  v63 = *(v75 + v59);
  v64 = *(v75 + v59 + 8);
  sub_217751DE8();
  sub_217751DE8();
  v65 = v78;
  sub_217751508();
  sub_217751DE8();
  sub_2177514D8();
  sub_217751DE8();
  v96 = v63;
  MEMORY[0x21CEA17F0](v63, v64);
  v49 = v77;
  sub_217751DE8();
  v44 = v76;
  MEMORY[0x21CEA1810](v76, v49);
  if (*(v40 + 16))
  {
    sub_217751DE8();
    sub_217751458();
  }

  v41 = v84;
  sub_217751488();
  v66 = v83;
  if (__swift_getEnumTagSinglePayload(v41, 1, v83) == 1)
  {
LABEL_30:
    sub_2171F06D8(v41, &unk_27CB277C0, &qword_217758DC0);
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_217752AA8();
    OUTLINED_FUNCTION_17_23();
    MEMORY[0x21CEA23B0](v44, v49);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    OUTLINED_FUNCTION_15_31();
    OUTLINED_FUNCTION_16_32();
    __break(1u);
  }

  else
  {
    v67 = v65;

    v68 = *(v82 + 32);
    v69 = v80;
    v68(v80, v41, v66);
    v70 = v85;
    v68(v85, v69, v66);
    v71 = v86;
    (*(v79 + 32))(v70 + v86[5], v67, v81);
    *(v70 + v71[6]) = 1;
    v72 = (v70 + v71[7]);
    *v72 = v61;
    v72[1] = v62;
    v73 = (v70 + v71[8]);
    *v73 = v96;
    v73[1] = v64;
    OUTLINED_FUNCTION_13();
  }
}

void static MusicAPI.Endpoint.catalogEndpoint<A>(countryCode:pathSuffix:queryItems:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x21CEA23B0]();
  v15 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v15 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    MEMORY[0x21CEA23B0](v8, v6);
    MEMORY[0x21CEA23B0](47, 0xE100000000000000);
  }

  (*(v10 + 16))(v0, v4, v2);
  sub_217751DE8();
  sub_2174B4D4C();
  OUTLINED_FUNCTION_13();
}

void static MusicAPI.Endpoint.libraryEndpoint<A>(pathSuffix:queryItems:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_3_54();
  sub_217752AA8();

  MEMORY[0x21CEA23B0](v3, v1);
  v8 = OUTLINED_FUNCTION_8_37();
  v9(v8);
  sub_217751DE8();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_13();
}

uint64_t MusicAPI.Endpoint.applying(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
  v2 = sub_217751428();
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2177586E0;
  (*(v4 + 16))(v8 + v7, a1, v2);
  MusicAPI.Endpoint.applying(_:)();
  swift_setDeallocating();
  return sub_217275AFC();
}

void static MusicAPI.Endpoint.userEndpoint<A>(pathSuffix:queryItems:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x21CEA23B0]();
  (*(v6 + 16))(v0, v4, v2);
  sub_217751DE8();
  sub_2174B4D4C();
  OUTLINED_FUNCTION_13();
}

void sub_2174B4D4C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v53 = v7;
  v46 = v8;
  v10 = v9;
  v52 = v11;
  v48 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_11_8();
  v18 = sub_2177516D8();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19, v24);
  OUTLINED_FUNCTION_1();
  v49 = v26 - v25;
  OUTLINED_FUNCTION_206();
  v27 = sub_217751518();
  v28 = OUTLINED_FUNCTION_0_0(v27);
  v50 = v29;
  v51 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28, v32);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v36 = (*(v2 + 24))(v4, v2);
  v38 = v37;
  v47 = v4;
  v39 = (*(v2 + 32))(v4, v2);
  v41 = v40;
  sub_217751508();
  sub_217751DE8();
  sub_2177514D8();
  sub_217751DE8();
  MEMORY[0x21CEA17F0](v39, v41);
  sub_217751DE8();
  MEMORY[0x21CEA1810](v52, v10);
  if (*(v46 + 16))
  {
    sub_217751DE8();
    sub_217751458();
  }

  sub_217751488();
  if (__swift_getEnumTagSinglePayload(v0, 1, v18) == 1)
  {
    sub_2171F06D8(v0, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_3_54();
    sub_217752AA8();
    OUTLINED_FUNCTION_17_23();
    MEMORY[0x21CEA23B0](v52, v10);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    OUTLINED_FUNCTION_15_31();
    OUTLINED_FUNCTION_16_32();
    __break(1u);
  }

  else
  {
    (*(*(v47 - 8) + 8))(v6);

    v42 = *(v21 + 32);
    v42(v49, v0, v18);
    v42(v48, v49, v18);
    v43 = type metadata accessor for MusicAPI.Endpoint();
    (*(v50 + 32))(v48 + v43[5], v35, v51);
    *(v48 + v43[6]) = v53 & 1;
    v44 = (v48 + v43[7]);
    *v44 = v36;
    v44[1] = v38;
    v45 = (v48 + v43[8]);
    *v45 = v39;
    v45[1] = v41;
    OUTLINED_FUNCTION_13();
  }
}

uint64_t MusicAPI.Endpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2177516D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicAPI.Endpoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_217751698() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MusicAPI.Endpoint();
  if ((MEMORY[0x21CEA17C0](a1 + v4[5], a2 + v4[5]) & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_32(v4[7]);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_32(v4[8]);
  if (v8 && v9 == v10)
  {
    return 1;
  }

  return sub_217753058();
}

uint64_t MusicAPI.Endpoint.hash(into:)()
{
  v1 = v0;
  sub_2177516D8();
  sub_2174B57D4(&qword_27CB24320, MEMORY[0x277CC9260]);
  sub_217751EB8();
  v2 = type metadata accessor for MusicAPI.Endpoint();
  v3 = v2[5];
  sub_217751518();
  sub_2174B57D4(&qword_27CB284E8, MEMORY[0x277CC8958]);
  sub_217751EB8();
  v4 = *(v1 + v2[6]);
  sub_217753208();
  v5 = (v1 + v2[7]);
  v6 = *v5;
  v7 = v5[1];
  sub_217751FF8();
  v8 = (v1 + v2[8]);
  v9 = *v8;
  v10 = v8[1];

  return sub_217751FF8();
}

uint64_t MusicAPI.Endpoint.hashValue.getter()
{
  sub_2177531E8();
  MusicAPI.Endpoint.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2174B5378()
{
  sub_2177531E8();
  MusicAPI.Endpoint.hash(into:)();
  return sub_217753238();
}

void static MusicAPI.Endpoint.intelligenceEndpoint<A>(pathSuffix:queryItems:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_3_54();
  sub_217752AA8();

  MEMORY[0x21CEA23B0](v3, v1);
  v8 = OUTLINED_FUNCTION_8_37();
  v9(v8);
  sub_217751DE8();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_13();
}

void sub_2174B54B4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_3_54();
  sub_217752AA8();

  MEMORY[0x21CEA23B0](v7, v5);
  (*(v9 + 16))(v16, v3, v1);
  sub_2174B4D4C();
  OUTLINED_FUNCTION_13();
}

uint64_t MusicDataRequest.Method.rawValue.getter()
{
  if (*v0)
  {
    result = 1414745936;
  }

  else
  {
    result = 5522759;
  }

  *v0;
  return result;
}

uint64_t type metadata accessor for MusicAPI.Endpoint()
{
  result = qword_280BE5938;
  if (!qword_280BE5938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2174B5658(uint64_t a1)
{
  v2 = type metadata accessor for MusicAPI.Endpoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicDataRequest.Method.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217752DC8();

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

uint64_t sub_2174B5724@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return MusicDataRequest.Method.init(rawValue:)(a1);
}

uint64_t sub_2174B5730@<X0>(uint64_t *a1@<X8>)
{
  result = MusicDataRequest.Method.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2174B57D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2174B5820()
{
  result = qword_27CB284F8;
  if (!qword_27CB284F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28500, &qword_21776D680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB284F8);
  }

  return result;
}

unint64_t sub_2174B5888()
{
  result = qword_27CB28508;
  if (!qword_27CB28508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28508);
  }

  return result;
}

uint64_t sub_2174B5904()
{
  result = sub_2177516D8();
  if (v1 <= 0x3F)
  {
    result = sub_217751518();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *_s6MethodOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_16_32()
{

  return sub_217752D08();
}

uint64_t sub_2174B5AAC(uint64_t a1)
{
  v2 = type metadata accessor for CloudPersonalRecommendation.Content();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 16);
  v34 = v9;
  v35 = a1;
  v33 = v6;
  v31 = MEMORY[0x277D84F90];
  v32 = v8;
  while (v8 != v7)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
    v11 = a1 + ((*(*(v10 - 1) + 80) + 32) & ~*(*(v10 - 1) + 80)) + *(*(v10 - 1) + 72) * v7;
    bzero(v41, 0x300uLL);
    sub_2174B8A10();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2174B8A6C(v6, type metadata accessor for CloudPersonalRecommendation.Content);
    }

    else
    {
      sub_2171F0738(v41, &qword_27CB285B8, &unk_21776DB70);
      memcpy(v39, v6, sizeof(v39));
      sub_21733C5F0(v39, v41);
      v12 = v10[10];
      v13 = v11 + v10[9];
      v38 = *v13;
      v42 = v7;
      v14 = *(v13 + 8);
      v37 = *(v13 + 16);
      v15 = *(v11 + v12 + 8);
      v36 = *(v11 + v12);
      v16 = v10[11];
      memcpy(v40, (v11 + v16), 0x180uLL);
      v17 = *(v11 + v10[12]);
      v18 = *(v11 + v10[13]);
      v19 = v10[15];
      v20 = *(v11 + v10[14]);
      v21 = *(v11 + v19);
      v41[39] = v38;
      v41[40] = v14;
      LOBYTE(v41[41]) = v37;
      v41[42] = v36;
      v41[43] = v15;
      v22 = (v11 + v16);
      v6 = v33;
      memcpy(&v41[44], v22, 0x180uLL);
      v41[92] = v17;
      v41[93] = v18;
      v41[94] = v20;
      v41[95] = v21;
      sub_217751DE8();
      v7 = v42;
      sub_217751DE8();
      sub_2174BA6D4();
      v8 = v32;
      sub_217751DE8();
      a1 = v35;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217269D5C(v39);
    }

    if (v41[1])
    {
      memcpy(v40, v41, sizeof(v40));
      v23 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v31 + 16);
        sub_2172B2118();
        v31 = v27;
      }

      v24 = *(v31 + 16);
      if (v24 >= *(v31 + 24) >> 1)
      {
        sub_2172B2118();
        v31 = v28;
      }

      ++v7;
      v25 = v31;
      *(v31 + 16) = v24 + 1;
      memcpy((v25 + 768 * v24 + 32), v40, 0x300uLL);
      v8 = v23;
    }

    else
    {
      sub_2171F0738(v41, &qword_27CB285B8, &unk_21776DB70);
      ++v7;
    }
  }

  return v31;
}

uint64_t sub_2174B5E4C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7[0] = 0x2F656D2F31762FLL;
  v7[1] = 0xE700000000000000;
  MEMORY[0x21CEA23B0]();
  sub_2172CA838(a2, v7);
  sub_217751DE8();
  return sub_2173B6DA4(0x2F656D2F31762FLL, 0xE700000000000000, a1, 1, v7, a3);
}

uint64_t MusicPersonalRecommendationsRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  v3 = OUTLINED_FUNCTION_43(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  swift_storeEnumTagMultiPayload();
  return sub_2174B5F78(a1);
}

uint64_t sub_2174B5F78@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
  v2 = *(sub_217751428() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2177586E0;
  sub_2177513F8();
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = v5;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  swift_beginAccess();
  v6 = off_280BEBCD0;

  (v6)(v13, v7);

  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v8, v9, a1 + 88);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  *(a1 + *(v10 + 52)) = 0;
  v11 = *(v10 + 48);
  return sub_2174BA784();
}

uint64_t MusicPersonalRecommendationsRequest.init<A>(refreshing:)()
{
  OUTLINED_FUNCTION_169();
  v3 = v2;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v4);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v18 = (v17 - v16);
  (*(v5 + 16))(v10, v1, v0);
  type metadata accessor for MusicPersonalRecommendation();
  *v18 = sub_217752468();
  OUTLINED_FUNCTION_5_3();
  swift_storeEnumTagMultiPayload();
  sub_2174B5F78(v3);
  return (*(v5 + 8))(v1, v0);
}

uint64_t static MusicPersonalRecommendationsRequest._seeAll(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  v3 = OUTLINED_FUNCTION_43(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_31();
  sub_2174B8A10();
  swift_storeEnumTagMultiPayload();
  return sub_2174B5F78(a1);
}

uint64_t MusicPersonalRecommendationsRequest.limit.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MusicPersonalRecommendationsRequest.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest.offset.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t MusicPersonalRecommendationsRequest.offset.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest._itemProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest._additionalQueryItems.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest._content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return sub_2174B6470(v2, v3, v4);
}

uint64_t sub_2174B6470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2174B6488();
  }

  return result;
}

uint64_t MusicPersonalRecommendationsRequest._content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2174B64D4(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t sub_2174B64D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2174B64EC();
  }

  return result;
}

uint64_t MusicPersonalRecommendationsRequest._recommendationItemsLimit.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t MusicPersonalRecommendationsRequest._recommendationItemsLimit.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest.isInitialRequest.getter()
{
  v0 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  v1 = OUTLINED_FUNCTION_43(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = *(type metadata accessor for MusicPersonalRecommendationsRequest(0) + 48);
  swift_storeEnumTagMultiPayload();
  v9 = sub_2174B6680();
  OUTLINED_FUNCTION_9_33();
  sub_2174B8A6C(v7, v10);
  return v9 & 1;
}

uint64_t sub_2174B6680()
{
  v0 = type metadata accessor for MusicPersonalRecommendation();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v27 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285D0, &qword_21776DBA8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_2174B8A10();
  sub_2174B8A10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2174B8A10();
    v23 = *v13;
    if (!swift_getEnumCaseMultiPayload())
    {
      v24 = *&v18[v20];
      sub_217273CCC();
      v22 = v25;

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2174B8A10();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2174BA784();
      v22 = static MusicPersonalRecommendation.== infix(_:_:)(v9, v4);
      sub_2174B8A6C(v4, type metadata accessor for MusicPersonalRecommendation);
      sub_2174B8A6C(v9, type metadata accessor for MusicPersonalRecommendation);
LABEL_12:
      sub_2174B8A6C(v18, type metadata accessor for MusicPersonalRecommendationsRequest.Parameters);
      return v22 & 1;
    }

    sub_2174B8A6C(v9, type metadata accessor for MusicPersonalRecommendation);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_2171F0738(v18, &qword_27CB285D0, &qword_21776DBA8);
    v22 = 0;
    return v22 & 1;
  }

  sub_2174B8A6C(v18, type metadata accessor for MusicPersonalRecommendationsRequest.Parameters);
  v22 = 1;
  return v22 & 1;
}

uint64_t MusicPersonalRecommendationsRequest._source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t MusicPersonalRecommendationsRequest._source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest.response()(uint64_t a1)
{
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v2 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2173545AC;

  return (sub_2173B33E0)(a1, v1 + 88);
}

uint64_t MusicPersonalRecommendationsRequest.catalogResponse()()
{
  OUTLINED_FUNCTION_10();
  v1[77] = v0;
  v1[76] = v2;
  v3 = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  v1[78] = v3;
  v4 = *(*(v3 - 8) + 64);
  v1[79] = OUTLINED_FUNCTION_28_7();
  v5 = sub_2177516D8();
  v1[80] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_66_3();
  v1[81] = v7;
  v9 = *(v8 + 64);
  v1[82] = OUTLINED_FUNCTION_28_7();
  v10 = sub_2177512F8();
  v1[83] = v10;
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_66_3();
  v1[84] = v12;
  v14 = *(v13 + 64);
  v1[85] = OUTLINED_FUNCTION_28_7();
  v15 = type metadata accessor for MusicDataRequest();
  v1[86] = v15;
  v16 = *(*(v15 - 8) + 64);
  v1[87] = OUTLINED_FUNCTION_28_7();
  v17 = *(*(type metadata accessor for MusicAPI.Endpoint() - 8) + 64) + 15;
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v18 = swift_task_alloc();
  v1[90] = v18;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[91] = v19;
  *v19 = v20;
  v19[1] = sub_2174B6CC8;

  return sub_2174B7860(v18);
}

uint64_t sub_2174B6CC8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 728);
  v6 = *v1;
  OUTLINED_FUNCTION_42_0();
  *v7 = v6;
  *(v8 + 736) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}