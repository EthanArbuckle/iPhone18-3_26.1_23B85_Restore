uint64_t sub_2172E8FE8()
{
  v0 = type metadata accessor for CloudStation(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CloudPlaylist(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CloudAlbum(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  sub_21733CAD0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21733CE30();
      v19 = *v9;
      v20 = v9[1];
      sub_217751DE8();
      v21 = type metadata accessor for CloudPlaylist;
      v22 = v9;
    }

    else
    {
      sub_21733CE30();
      v19 = *v4;
      v24 = v4[1];
      sub_217751DE8();
      v21 = type metadata accessor for CloudStation;
      v22 = v4;
    }
  }

  else
  {
    sub_21733CE30();
    v19 = *v14;
    v23 = v14[1];
    sub_217751DE8();
    v21 = type metadata accessor for CloudAlbum;
    v22 = v14;
  }

  sub_21733CA78(v22, v21);
  return v19;
}

uint64_t sub_2172E924C(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for CloudMusicVideo(0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  v9 = (v8 - v7);
  v10 = type metadata accessor for CloudSong(0);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_1();
  v17 = (v16 - v15);
  v18 = a1(0);
  OUTLINED_FUNCTION_43(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_204();
  sub_21733CAD0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21733CE30();
    v23 = *v9;
    v24 = v9[1];
    sub_217751DE8();
    OUTLINED_FUNCTION_97_4();
    v26 = v9;
  }

  else
  {
    sub_21733CE30();
    v23 = *v17;
    v27 = v17[1];
    sub_217751DE8();
    OUTLINED_FUNCTION_96_3();
    v26 = v17;
  }

  sub_21733CA78(v26, v25);
  return v23;
}

uint64_t sub_2172E93C8()
{
  OUTLINED_FUNCTION_44_7();
  v4 = OUTLINED_FUNCTION_234_0(sub_21733CF30, v0, v1, sub_2172761F8, &qword_27CB24748, &unk_217758CD0, v2, v3, v23);
  v10 = OUTLINED_FUNCTION_233_1(v4, v5, &qword_27CB24188, &dword_217758930, v6, v7, v8, v9, v24);
  if (v32)
  {
    OUTLINED_FUNCTION_43_5(v10, v11, v12, v13, v14, v15, v16, v17, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_203_2();
    sub_21749A8FC(v18);
  }

  v19 = OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_25_12(v19, v20, v21, v25, v26, v27, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34, v35, v36);
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2172E94A8()
{
  OUTLINED_FUNCTION_44_7();
  v4 = OUTLINED_FUNCTION_234_0(sub_21733CE88, v0, v1, sub_2172762D8, &qword_27CB247F0, &qword_21775D360, v2, v3, v23);
  v10 = OUTLINED_FUNCTION_233_1(v4, v5, &qword_27CB24188, &dword_217758930, v6, v7, v8, v9, v24);
  if (v32)
  {
    OUTLINED_FUNCTION_43_5(v10, v11, v12, v13, v14, v15, v16, v17, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_203_2();
    sub_21749A8FC(v18);
  }

  v19 = OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_25_12(v19, v20, v21, v25, v26, v27, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34, v35, v36);
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2172E9588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4[2];
  v20[2] = a2;
  v20[3] = a1;
  v9 = sub_2172E4A28(sub_21733CF18, v20, v8, sub_2172764A8, &qword_27CB24768, &qword_217758CF0);
  sub_21726A630(a3, &v21, &qword_27CB24188, &dword_217758930);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_21749A8FC(a1);
    if (*(&v22 + 1))
    {
      sub_2171F0738(&v21, &qword_27CB24188, &dword_217758930);
    }
  }

  v10 = *v4;
  v11 = v4[1];
  if (v11 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v4;
  }

  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v4[1];
  }

  v14 = v4[3];
  v15 = v4[4];
  v17 = v4[14];
  v16 = v4[15];
  *a4 = v9;
  *(a4 + 8) = 0;
  v18 = v25;
  *(a4 + 16) = v24;
  *(a4 + 32) = v18;
  *(a4 + 48) = v26;
  *(a4 + 56) = v12;
  *(a4 + 64) = v13;
  *(a4 + 72) = v14;
  *(a4 + 80) = v15;
  *(a4 + 88) = v17;
  *(a4 + 96) = v16;
  sub_2171FB568(v10, v11);
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2172E96D8()
{
  OUTLINED_FUNCTION_44_7();
  v4 = OUTLINED_FUNCTION_234_0(sub_21733CED0, v0, v1, sub_2172762B8, &qword_27CB24728, &qword_217758CB0, v2, v3, v23);
  v10 = OUTLINED_FUNCTION_233_1(v4, v5, &qword_27CB24188, &dword_217758930, v6, v7, v8, v9, v24);
  if (v32)
  {
    OUTLINED_FUNCTION_43_5(v10, v11, v12, v13, v14, v15, v16, v17, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_203_2();
    sub_21749A8FC(v18);
  }

  v19 = OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_25_12(v19, v20, v21, v25, v26, v27, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34, v35, v36);
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2172E97B8()
{
  OUTLINED_FUNCTION_44_7();
  v4 = OUTLINED_FUNCTION_234_0(sub_21733CEB8, v0, v1, sub_217276278, &qword_27CB24808, &qword_217758D90, v2, v3, v23);
  v10 = OUTLINED_FUNCTION_233_1(v4, v5, &qword_27CB24188, &dword_217758930, v6, v7, v8, v9, v24);
  if (v32)
  {
    OUTLINED_FUNCTION_43_5(v10, v11, v12, v13, v14, v15, v16, v17, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_203_2();
    sub_21749A8FC(v18);
  }

  v19 = OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_25_12(v19, v20, v21, v25, v26, v27, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34, v35, v36);
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2172E9898(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v404 = v6;
  v403 = type metadata accessor for CloudAlbum(0);
  v7 = *(*(v403 - 8) + 64);
  MEMORY[0x28223BE20](v403, v8);
  v406 = (&v369 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2177517D8();
  v372 = *(v10 - 8);
  v11 = *(v372 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v370 = &v369 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v398 = &v369 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v369 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  *&v405 = &v369 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v369 - v28;
  v30 = type metadata accessor for CloudAlbum.Attributes(0);
  v31 = *(*(v30 - 1) + 64);
  MEMORY[0x28223BE20](v30, v32);
  v407 = &v369 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE9428 != -1)
  {
    swift_once();
  }

  sub_2176CA9A8(qword_280C026F8, v33, v34, v35, v36, v37, v38, v39, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
  memcpy(v440, v439, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v440) == 1)
  {
    sub_2172E22C0(v438);
  }

  else
  {
    memcpy(v408, v440, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v409);
    memcpy(v432, v408, 0x221uLL);
    sub_217284084(v432);
    memcpy(v408, v409, 0x1B8uLL);
    nullsub_1(v408, v41);
    memcpy(v438, v408, sizeof(v438));
  }

  *&v402 = v5;
  if (qword_280BE9680 != -1)
  {
    swift_once();
  }

  v42 = sub_2172A4380();
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  v45 = 0xE000000000000000;
  if (v43)
  {
    v45 = v43;
  }

  v399 = v45;
  v400 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25370, &unk_21775D3B0);
  swift_allocObject();
  v46 = sub_2172E3DC0(0x7255747369747261, 0xE90000000000006CLL);
  sub_2176CA7D0(v46, v47, v48, v49, v50, v51, v52, v53, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));

  if (qword_280BE9600 != -1)
  {
    swift_once();
  }

  v401 = v29;
  v54 = qword_280BE9608;
  v62 = sub_2172A44B0(qword_280BE9608);
  if (qword_280BE9508 != -1)
  {
    swift_once();
  }

  v63 = qword_280C02768;
  sub_2172A43A8(qword_280C02768, v55, v56, v57, v58, v59, v60, v61, v369, v370, v371, v372, v373, v374, SWORD2(v374), SBYTE6(v374), SHIBYTE(v374), v375, v376, v377, v378, v379, v380, v381, v382);
  v397 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v62, v64, 0);

  v65 = sub_2172A44B0(v54);
  sub_2172A43A8(v63, v66, v67, v68, v69, v70, v71, v72, v369, v370, v371, v372, v373, v374, SWORD2(v374), SBYTE6(v374), SHIBYTE(v374), v375, v376, v377, v378, v379, v380, v381, v382);
  v396 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v65, v73, 1);

  if (qword_280BE8228 != -1)
  {
    swift_once();
  }

  sub_2176CA7D0(qword_280C024E0, v74, v75, v76, v77, v78, v79, v80, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE95E8 != -1)
  {
    swift_once();
  }

  sub_2176CA81C(qword_280C027D8, v81, v82, v83, v84, v85, v86, v87, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388);
  if (LOBYTE(v432[0]) == 2)
  {
    v394 = 0;
    v395 = 0;
  }

  else
  {
    if (v432[0])
    {
      v88 = 0x746963696C707865;
    }

    else
    {
      v88 = 0x6E61656C63;
    }

    v89 = 0xE500000000000000;
    if (v432[0])
    {
      v89 = 0xE800000000000000;
    }

    v394 = v89;
    v395 = v88;
  }

  if (qword_280BE93E0 != -1)
  {
    swift_once();
  }

  v90 = sub_2172A4380();
  v392 = v91;
  v393 = v90;
  if (qword_280BE9528 != -1)
  {
    swift_once();
  }

  v391 = sub_2172A4914(qword_280C02778);
  if (qword_280BE9580 != -1)
  {
    swift_once();
  }

  sub_2176CA810(qword_280C027C0, v92, v93, v94, v95, v96, v97, v98, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
  v434 = v432[0];
  v435 = v432[1];
  v436 = v432[2];
  v437 = v432[3];
  v99 = *(&v432[0] + 1);
  if (*(&v432[0] + 1) == 1)
  {
    v384 = 0;
    v385 = 0;
    v99 = 0;
    v386 = 0;
    v387 = 0;
    v388 = 0;
    v389 = 0uLL;
    v383 = 0;
  }

  else
  {
    v389 = v437;
    v100 = *(&v436 + 1);
    v387 = v436;
    v101 = *(&v435 + 1);
    v384 = v434;
    v385 = v435;
    sub_217751DE8();
    sub_217751DE8();
    v386 = v101;
    sub_217751DE8();
    v388 = v100;
    sub_217751DE8();
    v383 = sub_217751DC8();
    sub_2171F0738(&v434, &qword_27CB24B70, &unk_217759460);
  }

  v390 = v99;
  if (qword_280BE94B8 != -1)
  {
    swift_once();
  }

  v371 = sub_2172A48F8(qword_280C02738);
  if (qword_280BE9670 != -1)
  {
    swift_once();
  }

  v382 = sub_2172A43B4(qword_280C02810);
  if (qword_280BE95D8 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C027D0, v102, v103, v104, v105, v106, v107, v108, v369, v370, v371, v372, v373, v374, SWORD2(v374), SBYTE6(v374), SHIBYTE(v374), v375, v376, v377, v378, v379, v380, v381, v382);
  HIDWORD(v381) = v116;
  if (qword_280BE9660 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02808, v109, v110, v111, v112, v113, v114, v115, v369, v370, v371, v372, v373, v374, SWORD2(v374), SBYTE6(v374), SHIBYTE(v374), v375, v376, v377, v378, v379, v380, v381, v382);
  LODWORD(v381) = v117;
  sub_2172A43A8(v63, v118, v119, v120, v121, v122, v123, v124, v369, v370, v371, v372, v373, v374, SWORD2(v374), SBYTE6(v374), SHIBYTE(v374), v375, v376, v377, v378, v379, v380, v381, v382);
  HIDWORD(v380) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v125, 1u);
  sub_2172A43A8(v63, v126, v127, v128, v129, v130, v131, v132, v369, v370, v371, v372, v373, v374, SWORD2(v374), SBYTE6(v374), SHIBYTE(v374), v375, v376, v377, v378, v379, v380, v381, v382);
  LODWORD(v380) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v133, 0);
  if (qword_280BE9658 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02800, v134, v135, v136, v137, v138, v139, v140, v369, v370, v371, v372, v373, v374, SWORD2(v374), SBYTE6(v374), SHIBYTE(v374), v375, v376, v377, v378, v379, v380, v381, v382);
  HIDWORD(v379) = v148;
  if (qword_280BE9400 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C026F0, v141, v142, v143, v144, v145, v146, v147, v369, v370, v371, v372, v373, v374, SWORD2(v374), SBYTE6(v374), SHIBYTE(v374), v375, v376, v377, v378, v379, v380, v381, v382);
  LODWORD(v379) = v149;
  if (qword_280BE9470 != -1)
  {
    swift_once();
  }

  v150 = sub_2172A4380();
  if (v151)
  {
    v152 = v150;
  }

  else
  {
    v152 = 0;
  }

  v153 = 0xE000000000000000;
  if (v151)
  {
    v153 = v151;
  }

  v377 = v153;
  v378 = v152;
  if (qword_280BE81C0 != -1)
  {
    swift_once();
  }

  v376 = sub_2172A48DC(qword_280C02498);
  if (qword_280BE9568 != -1)
  {
    swift_once();
  }

  sub_2176CAFA0(qword_280C027A8, v154, v155, v156, v157, v158, v159, v160, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
  if (qword_280BE9540 != -1)
  {
    swift_once();
  }

  v161 = sub_2172A4380();
  v374 = v162;
  v375 = v161;
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v163 = type metadata accessor for CloudFormatter();
  v171 = __swift_project_value_buffer(v163, qword_280BE8918);
  if (qword_280BE9628 != -1)
  {
    swift_once();
  }

  sub_2176CA7F0(qword_280C027E8, v164, v165, v166, v167, v168, v169, v170, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  v172 = v398;
  sub_21726A630(v21, v398, &qword_27CB241C0, &qword_217759480);
  if (__swift_getEnumTagSinglePayload(v172, 1, v10) == 1)
  {
    sub_2171F0738(v21, &qword_27CB241C0, &qword_217759480);
    sub_2171F0738(v172, &qword_27CB241C0, &qword_217759480);
    v398 = 0;
    v373 = 0;
  }

  else
  {
    v173 = v372;
    v174 = v370;
    (*(v372 + 32))(v370, v172, v10);
    v175 = *(v171 + *(v163 + 20));
    v176 = sub_2177517A8();
    v177 = [v175 stringFromDate_];

    v398 = sub_217751F48();
    v373 = v178;

    (*(v173 + 8))(v174, v10);
    sub_2171F0738(v21, &qword_27CB241C0, &qword_217759480);
  }

  v179 = v407;
  if (qword_280BE9648 != -1)
  {
    swift_once();
  }

  v180 = sub_2172A4394();
  if (v181)
  {
    v182 = 0;
  }

  else
  {
    v182 = v180;
  }

  v372 = v182;
  if (qword_280BE9480 != -1)
  {
    swift_once();
  }

  v190 = sub_2172A4380();
  v191 = v183;
  if (qword_280BE9478 != -1)
  {
    swift_once();
  }

  v192 = MEMORY[0x277D84F90];
  v193 = v179 + v30[29];
  sub_2176CA7D0(qword_280C02708, v183, v184, v185, v186, v187, v188, v189, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE8230 != -1)
  {
    swift_once();
  }

  v194 = sub_2172A4380();
  v196 = v195;
  memcpy(v179, v438, 0x1B8uLL);
  v197 = v399;
  v179[55] = v400;
  v179[56] = v197;
  sub_21726A594(v401, &v407[v30[6]], &unk_27CB277C0, &qword_217758DC0);
  v198 = v396;
  *&v407[v30[7]] = v397;
  *&v407[v30[8]] = v198;
  v199 = v407;
  sub_21726A594(v405, &v407[v30[9]], &unk_27CB277C0, &qword_217758DC0);
  v200 = &v199[v30[10]];
  v201 = v394;
  *v200 = v395;
  v200[1] = v201;
  v202 = &v199[v30[11]];
  v203 = v392;
  *v202 = v393;
  v202[1] = v203;
  *&v199[v30[12]] = v391;
  v204 = &v199[v30[13]];
  v205 = v390;
  *v204 = v384;
  *(v204 + 1) = v205;
  v206 = v386;
  *(v204 + 2) = v385;
  *(v204 + 3) = v206;
  v207 = v388;
  *(v204 + 4) = v387;
  *(v204 + 5) = v207;
  v208 = *(&v389 + 1);
  *(v204 + 6) = v389;
  *(v204 + 7) = v208;
  *(v204 + 8) = v383;
  *&v199[v30[14]] = v371;
  v209 = v382;
  if (!v382)
  {
    v209 = v192;
  }

  *&v199[v30[15]] = v209;
  v210 = v381;
  v199[v30[16]] = BYTE4(v381);
  v199[v30[17]] = v210;
  v211 = v380;
  v199[v30[18]] = BYTE4(v380);
  v199[v30[19]] = v211;
  v212 = v379;
  v199[v30[20]] = BYTE4(v379);
  v199[v30[21]] = v212;
  v213 = &v199[v30[22]];
  v214 = v377;
  *v213 = v378;
  *(v213 + 1) = v214;
  *&v199[v30[23]] = v376;
  memcpy(&v199[v30[24]], v433, 0x78uLL);
  v215 = &v199[v30[25]];
  v216 = v374;
  *v215 = v375;
  *(v215 + 1) = v216;
  v217 = &v199[v30[26]];
  v218 = v372;
  v219 = v373;
  *v217 = v398;
  *(v217 + 1) = v219;
  v220 = &v199[v30[27]];
  *v220 = v218;
  v220[8] = 0;
  v221 = &v199[v30[28]];
  *v221 = v190;
  v221[1] = v191;
  v222 = &v199[v30[30]];
  *v222 = v194;
  v222[1] = v196;
  v432[0] = 0uLL;
  *&v432[1] = 1;
  bzero(&v432[1] + 8, 0x2E8uLL);
  if (qword_280BE9430 != -1)
  {
    swift_once();
  }

  sub_2176CA7B4(qword_280BE9438, v223, v224, v225, v226, v227, v228, v229, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  v237 = v402;
  if (qword_280BE95F8 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280C027E0, v230, v231, v232, v233, v234, v235, v236, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE9460 != -1)
  {
    swift_once();
  }

  sub_2176CA3F4(qword_280BE9468, v238, v239, v240, v241, v242, v243, v244, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE9448 != -1)
  {
    swift_once();
  }

  sub_2176CA3D8(qword_280BE9450, v245, v246, v247, v248, v249, v250, v251, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE9410 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280BE9418, v252, v253, v254, v255, v256, v257, v258, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE9618 != -1)
  {
    swift_once();
  }

  sub_2176CA3BC(qword_280BE9620, v259, v260, v261, v262, v263, v264, v265, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (v431[11] || v430[11] || v429[11] || v428[11] || v427[11] || v426[11])
  {
    sub_21726A630(v431, v408, &qword_27CB25310, &unk_21775D3D0);
    if (v408[11])
    {
      sub_2172EBD40(v409, v237, 0);
      sub_2171F0738(v408, &qword_27CB25398, &unk_21776C4F0);
    }

    else
    {
      sub_2171F0738(v408, &qword_27CB25310, &unk_21775D3D0);
      memset(v409, 0, 128);
    }

    sub_21726A630(v430, v408, &qword_27CB25318, &qword_2177657C0);
    if (v408[11])
    {
      sub_2172EBBF4(v416, v237, 0);
      sub_2171F0738(v408, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v408, &qword_27CB25318, &qword_2177657C0);
      memset(v416, 0, 128);
    }

    sub_21726A630(v429, v408, &qword_27CB25320, &unk_21776E020);
    if (v408[11])
    {
      sub_2172EBE8C(0, v415);
      sub_2171F0738(v408, &qword_27CB27C80, &unk_21775D420);
    }

    else
    {
      sub_2171F0738(v408, &qword_27CB25320, &unk_21776E020);
      memset(v415, 0, 128);
    }

    sub_21726A630(v428, v408, &unk_27CB28A60, &qword_217770B60);
    if (v408[11])
    {
      sub_2172EC5D8(0, v418);
      sub_2171F0738(v408, &qword_27CB240D0, &unk_21775D400);
    }

    else
    {
      sub_2171F0738(v408, &unk_27CB28A60, &qword_217770B60);
      memset(v418, 0, 128);
    }

    sub_21726A630(v427, v408, &qword_27CB25318, &qword_2177657C0);
    if (v408[11])
    {
      sub_2172EBBF4(v421, v237, 0);
      sub_2171F0738(v408, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v408, &qword_27CB25318, &qword_2177657C0);
      memset(v421, 0, 128);
    }

    sub_21726A630(v426, v408, &qword_27CB25328, &unk_21775D3F0);
    if (v408[11])
    {
      sub_2172ECA8C();
      sub_2171F0738(v432, &qword_27CB243C8, &unk_21775D390);
      sub_2171F0738(v408, &qword_27CB25390, &qword_217771CA0);
    }

    else
    {
      sub_2171F0738(v432, &qword_27CB243C8, &unk_21775D390);
      sub_2171F0738(v408, &qword_27CB25328, &unk_21775D3F0);
      memset(v417, 0, 128);
    }

    memcpy(v408, v409, 0x80uLL);
    memcpy(&v408[16], v416, 0x80uLL);
    memcpy(&v408[32], v415, 0x80uLL);
    memcpy(&v408[48], v418, 0x80uLL);
    memcpy(&v408[64], v421, 0x80uLL);
    memcpy(&v408[80], v417, 0x80uLL);
    memcpy(v432, v408, sizeof(v432));
  }

  v408[0] = 0;
  v408[1] = 0;
  v408[2] = 1;
  bzero(&v408[3], 0x1E8uLL);
  if (qword_280BE93E8 != -1)
  {
    swift_once();
  }

  sub_2176CAFC8(qword_280BE93F0, v266, v267, v268, v269, v270, v271, v272, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE95C0 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280BE95C8, v273, v274, v275, v276, v277, v278, v279, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE95A8 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280BE95B0, v280, v281, v282, v283, v284, v285, v286, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE9590 != -1)
  {
    swift_once();
  }

  sub_2176CAFE4(qword_280BE9598, v287, v288, v289, v290, v291, v292, v293, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (v425[11] || v424[11] || v423[11] || v422[11])
  {
    sub_21726A630(v425, v409, &qword_27CB25330, &unk_21775E9B0);
    if (*(&v409[5] + 1))
    {
      sub_2172EC1F4(v416, v237, 0);
      sub_2171F0738(v409, &unk_27CB28230, &unk_21775CD50);
    }

    else
    {
      sub_2171F0738(v409, &qword_27CB25330, &unk_21775E9B0);
      memset(v416, 0, 128);
    }

    sub_21726A630(v424, v409, &qword_27CB25318, &qword_2177657C0);
    if (*(&v409[5] + 1))
    {
      sub_2172EBBF4(v415, v237, 0);
      sub_2171F0738(v409, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v409, &qword_27CB25318, &qword_2177657C0);
      memset(v415, 0, 128);
    }

    sub_21726A630(v423, v409, &qword_27CB25318, &qword_2177657C0);
    if (*(&v409[5] + 1))
    {
      sub_2172EBBF4(v418, v237, 0);
      sub_2171F0738(v409, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v409, &qword_27CB25318, &qword_2177657C0);
      memset(v418, 0, 128);
    }

    sub_21726A630(v422, v409, &qword_27CB25338, &unk_21775D3E0);
    if (*(&v409[5] + 1))
    {
      sub_2172EC0A8();
      sub_2171F0738(v408, &qword_27CB24AA8, &qword_217759080);
      sub_2171F0738(v409, &qword_27CB25380, &unk_21775DAA0);
    }

    else
    {
      sub_2171F0738(v408, &qword_27CB24AA8, &qword_217759080);
      sub_2171F0738(v409, &qword_27CB25338, &unk_21775D3E0);
      memset(v421, 0, 128);
    }

    memcpy(v409, v416, 0x80uLL);
    memcpy(&v409[8], v415, 0x80uLL);
    memcpy(&v409[16], v418, 0x80uLL);
    memcpy(&v409[24], v421, 0x80uLL);
    memcpy(v408, v409, 0x200uLL);
  }

  v421[0] = 0uLL;
  *&v421[1] = 1;
  bzero(&v421[1] + 8, 0xE8uLL);
  if (qword_280BE9518 != -1)
  {
    swift_once();
  }

  sub_2176CB000(qword_280C02770, v294, v295, v296, v297, v298, v299, v300, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (qword_280BE81E0 != -1)
  {
    swift_once();
  }

  sub_2176CA3D8(qword_280C024B0, v301, v302, v303, v304, v305, v306, v307, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, *(&v389 + 1));
  if (v420[2] | v419[11])
  {
    sub_21726A630(v420, v416, &qword_27CB24230, &unk_21775E9D0);
    sub_21726A630(v419, v409, &unk_27CB28A60, &qword_217770B60);
    if (*(&v409[5] + 1))
    {
      sub_2172EC5D8(0, v415);
      sub_2171F0738(v421, &qword_27CB243D0, &unk_21775D3C0);
      sub_2171F0738(v409, &qword_27CB240D0, &unk_21775D400);
    }

    else
    {
      sub_2171F0738(v421, &qword_27CB243D0, &unk_21775D3C0);
      sub_2171F0738(v409, &unk_27CB28A60, &qword_217770B60);
      memset(v415, 0, 128);
    }

    memcpy(v409, v416, 0x80uLL);
    memcpy(&v409[8], v415, 0x80uLL);
    memcpy(v421, v409, sizeof(v421));
  }

  memset(v418, 0, 48);
  v418[6] = 1;
  bzero(&v418[7], 0x108uLL);
  if (qword_280BE8218 != -1)
  {
    swift_once();
  }

  sub_2176CB01C(qword_280C024D8, v308, v309, v310, v311, v312, v313, v314, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388);
  v402 = v409[1];
  v405 = v409[0];
  if (qword_280BE94F0 != -1)
  {
    swift_once();
  }

  v315 = sub_2172A4380();
  v317 = v316;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25378, &qword_21775B608);
  swift_allocObject();
  v318 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  v319 = sub_2172A486C(v318);

  sub_21726A630(v421, v417, &qword_27CB243D0, &unk_21775D3C0);
  if (*(&v405 + 1) != 1 || v317 || v319 || v417[2] != 1)
  {
    if (v317)
    {
      v320 = sub_217751DC8();
      sub_2171F0738(v418, &qword_27CB243C0, &unk_21775D3A0);
    }

    else
    {
      sub_2171F0738(v418, &qword_27CB243C0, &unk_21775D3A0);
      v315 = 0;
      v320 = 0;
    }

    sub_21726A630(v417, &v409[4], &qword_27CB243D0, &unk_21775D3C0);
    v409[1] = v402;
    v409[0] = v405;
    *&v409[2] = v315;
    *(&v409[2] + 1) = v317;
    *&v409[3] = v320;
    *(&v409[3] + 1) = v319;
    memcpy(v418, v409, 0x140uLL);
  }

  v322 = *v3;
  v321 = v3[1];
  v323 = v403;
  v324 = *(v403 + 20);
  v325 = v406;
  sub_21733CAD0();
  sub_21726A630(v432, v325 + v323[6], &qword_27CB243C8, &unk_21775D390);
  sub_21726A630(v408, v325 + v323[7], &qword_27CB24AA8, &qword_217759080);
  sub_21726A630(v418, v325 + v323[8], &qword_27CB243C0, &unk_21775D3A0);
  *v325 = v322;
  v325[1] = v321;
  v326 = v3[5];
  v327 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v326);
  v328 = *(v327 + 24);
  sub_217751DE8();
  v328(v415, v326, v327);
  nullsub_1(v415, v329);
  memcpy(v416, v415, 0x161uLL);
  v330 = v404;
  sub_21733CAD0();
  v331 = v3[5];
  v332 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v331);
  (*(v332 + 96))(v409, v331, v332);
  v333 = *(&v409[1] + 1);
  v334 = *&v409[2];
  __swift_project_boxed_opaque_existential_1(v409, *(&v409[1] + 1));
  (*(*(v334 + 8) + 48))(v413, v333);
  __swift_destroy_boxed_opaque_existential_1(v409);
  *&v405 = v413[0];
  v403 = v413[1];
  LODWORD(v402) = v414;
  v335 = v3[5];
  v336 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v335);
  (*(v336 + 96))(v409, v335, v336);
  v337 = *(&v409[1] + 1);
  v338 = *&v409[2];
  __swift_project_boxed_opaque_existential_1(v409, *(&v409[1] + 1));
  v339 = (*(*(v338 + 8) + 56))(v337);
  v400 = v340;
  v401 = v339;
  __swift_destroy_boxed_opaque_existential_1(v409);
  memcpy(v409, v416, 0x168uLL);
  *(&v409[22] + 1) = 0;
  v409[23] = 0uLL;
  nullsub_1(v409, v341);
  v342 = v3[5];
  v343 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v342);
  (*(v343 + 96))(v410, v342, v343);
  v344 = v411;
  v345 = v412;
  __swift_project_boxed_opaque_existential_1(v410, v411);
  v346 = (*(*(v345 + 8) + 64))(v344);
  __swift_destroy_boxed_opaque_existential_1(v410);
  v347 = v3[5];
  v348 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v347);
  (*(v348 + 96))(v410, v347, v348);
  v349 = v411;
  v350 = v412;
  __swift_project_boxed_opaque_existential_1(v410, v411);
  v351 = (*(*(v350 + 8) + 72))(v349);
  __swift_destroy_boxed_opaque_existential_1(v410);
  v352 = v199;
  v353 = v3[5];
  v354 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v353);
  (*(v354 + 96))(v410, v353, v354);
  v355 = v411;
  v356 = v412;
  __swift_project_boxed_opaque_existential_1(v410, v411);
  v357 = (*(*(v356 + 8) + 80))(v355);
  __swift_destroy_boxed_opaque_existential_1(v410);
  v359 = v3[5];
  v358 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v359);
  (*(v358 + 96))(v410, v359, v358);
  v360 = v411;
  v361 = v412;
  __swift_project_boxed_opaque_existential_1(v410, v411);
  v362 = (*(*(v361 + 8) + 88))(v360);
  sub_21733CA78(v406, type metadata accessor for CloudAlbum);
  sub_2171F0738(v418, &qword_27CB243C0, &unk_21775D3A0);
  sub_2171F0738(v421, &qword_27CB243D0, &unk_21775D3C0);
  sub_2171F0738(v408, &qword_27CB24AA8, &qword_217759080);
  sub_2171F0738(v432, &qword_27CB243C8, &unk_21775D390);
  sub_21733CA78(v352, type metadata accessor for CloudAlbum.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v410);
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v364 = v330 + v363[9];
  v365 = v403;
  *v364 = v405;
  *(v364 + 8) = v365;
  *(v364 + 16) = v402;
  v366 = (v330 + v363[10]);
  v367 = v400;
  *v366 = v401;
  v366[1] = v367;
  memcpy((v330 + v363[11]), v409, 0x180uLL);
  *(v330 + v363[12]) = v346;
  *(v330 + v363[13]) = v351;
  *(v330 + v363[14]) = v357;
  *(v330 + v363[15]) = v362;
  sub_2171F0738(v420, &qword_27CB24230, &unk_21775E9D0);
  sub_2171F0738(v425, &qword_27CB25330, &unk_21775E9B0);
  sub_2171F0738(v431, &qword_27CB25310, &unk_21775D3D0);
  sub_2171F0738(v417, &qword_27CB243D0, &unk_21775D3C0);
  sub_2171F0738(v419, &unk_27CB28A60, &qword_217770B60);
  sub_2171F0738(v422, &qword_27CB25338, &unk_21775D3E0);
  sub_2171F0738(v423, &qword_27CB25318, &qword_2177657C0);
  sub_2171F0738(v424, &qword_27CB25318, &qword_2177657C0);
  sub_2171F0738(v426, &qword_27CB25328, &unk_21775D3F0);
  sub_2171F0738(v427, &qword_27CB25318, &qword_2177657C0);
  sub_2171F0738(v428, &unk_27CB28A60, &qword_217770B60);
  sub_2171F0738(v429, &qword_27CB25320, &unk_21776E020);
  return sub_2171F0738(v430, &qword_27CB25318, &qword_2177657C0);
}

void sub_2172EBBF4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_217557EA0();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E4FFC();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

void sub_2172EBD40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_2175581A8();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E4FFC();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172EBE8C@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2[7];
  v5 = v2[8];
  if (a1)
  {
    v13 = v2[8];
    v12 = swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  else
  {
    sub_21726A630((v2 + 2), &v26, &qword_27CB24188, &dword_217758930);
    v7 = *(&v27 + 1);
    if (*(&v27 + 1))
    {
      v8 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      v9 = *(v8 + 8);
      swift_bridgeObjectRetain_n();
      v7 = v9(v7, v8);
      v11 = v10;
      v12 = sub_217283154(&v26);
      goto LABEL_7;
    }

    swift_bridgeObjectRetain_n();
    v12 = sub_2171F0738(&v26, &qword_27CB24188, &dword_217758930);
  }

  v11 = 0;
LABEL_7:
  v14 = sub_217558E5C(v12);
  MEMORY[0x28223BE20](v14, v15);
  sub_2172E4FFC();
  v17 = v16;

  v19 = v2[9];
  v18 = v2[10];
  if (v11)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  else
  {
    sub_21726A630((v3 + 2), &v26, &qword_27CB24188, &dword_217758930);
  }

  v20 = v27;
  *(a2 + 72) = v26;
  if (v5 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v5;
  }

  if (v5)
  {
    v22 = v6;
  }

  else
  {
    v22 = 0;
  }

  v24 = v3[11];
  v23 = v3[12];
  *a2 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  *(a2 + 32) = v18;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7;
  *(a2 + 64) = v11;
  *(a2 + 88) = v20;
  *(a2 + 104) = v28;
  *(a2 + 112) = v24;
  *(a2 + 120) = v23;
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void sub_2172EC0A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_217558CC8();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E4FFC();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

void sub_2172EC1F4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_217558024();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E4FFC();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

void sub_2172EC340()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_217558B44();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E4FFC();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

void sub_2172EC48C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_2175589B0();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E4FFC();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172EC5D8@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2[7];
  v5 = v2[8];
  if (a1)
  {
    v12 = v2[8];
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  else
  {
    sub_21726A630((v2 + 2), &v25, &qword_27CB24188, &dword_217758930);
    v7 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v8 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      v9 = *(v8 + 8);
      swift_bridgeObjectRetain_n();
      v7 = v9(v7, v8);
      v11 = v10;
      sub_217283154(&v25);
      goto LABEL_7;
    }

    swift_bridgeObjectRetain_n();
    sub_2171F0738(&v25, &qword_27CB24188, &dword_217758930);
  }

  v11 = 0;
LABEL_7:
  sub_2175584D0();
  MEMORY[0x28223BE20](v13, v14);
  sub_2172E52B4();
  v16 = v15;

  v18 = v2[9];
  v17 = v2[10];
  if (v11)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
  }

  else
  {
    sub_21726A630((v3 + 2), &v25, &qword_27CB24188, &dword_217758930);
  }

  v19 = v26;
  *(a2 + 72) = v25;
  if (v5 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v5;
  }

  if (v5)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  v23 = v3[11];
  v22 = v3[12];
  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = v17;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7;
  *(a2 + 64) = v11;
  *(a2 + 88) = v19;
  *(a2 + 104) = v27;
  *(a2 + 112) = v23;
  *(a2 + 120) = v22;
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void sub_2172EC7F4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_217558688();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E4FFC();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

void sub_2172EC940()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_21755881C();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E4FFC();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

void sub_2172ECA8C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_217558FF0();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E4FFC();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

void sub_2172ECBD8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v11[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_217559184();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E52B4();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v7, v8, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172ECD24@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2[7];
  v5 = v2[8];
  if (a1)
  {
    v12 = v2[8];
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  else
  {
    sub_21726A630((v2 + 2), &v25, &qword_27CB24188, &dword_217758930);
    v7 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v8 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      v9 = *(v8 + 8);
      swift_bridgeObjectRetain_n();
      v7 = v9(v7, v8);
      v11 = v10;
      sub_217283154(&v25);
      goto LABEL_7;
    }

    swift_bridgeObjectRetain_n();
    sub_2171F0738(&v25, &qword_27CB24188, &dword_217758930);
  }

  v11 = 0;
LABEL_7:
  sub_2175596E4();
  MEMORY[0x28223BE20](v13, v14);
  sub_2172E52B4();
  v16 = v15;

  v18 = v2[9];
  v17 = v2[10];
  if (v11)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
  }

  else
  {
    sub_21726A630((v3 + 2), &v25, &qword_27CB24188, &dword_217758930);
  }

  v19 = v26;
  *(a2 + 72) = v25;
  if (v5 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v5;
  }

  if (v5)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  v23 = v3[11];
  v22 = v3[12];
  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = v17;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7;
  *(a2 + 64) = v11;
  *(a2 + 88) = v19;
  *(a2 + 104) = v27;
  *(a2 + 112) = v23;
  *(a2 + 120) = v22;
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void sub_2172ECF40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_15();
  if (v3)
  {
    OUTLINED_FUNCTION_139_3();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v2, v3, &qword_27CB24188, &dword_217758930);
    if (v14[3])
    {
      OUTLINED_FUNCTION_6_16();
      v4 = OUTLINED_FUNCTION_15();
      v1(v4);
      OUTLINED_FUNCTION_76_5();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_139_3();
    sub_2171F0738(v14, &qword_27CB24188, &dword_217758930);
  }

  v0 = 0;
LABEL_7:
  sub_21755933C();
  OUTLINED_FUNCTION_30_10();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_94_3();
  sub_2172E53BC(v7, v8, v9);
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_93_5();
  if (v0)
  {
    OUTLINED_FUNCTION_28_9();
  }

  else
  {
    OUTLINED_FUNCTION_144_1(v10, v11, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_3_26(v12, v13);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

uint64_t Curator.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_204();
  v7(v6);
  v9 = v18[0];
  v8 = v18[1];
  sub_217751DE8();
  sub_217269F50(v18);
  *a2 = v9;
  a2[1] = v8;
  v10 = a1[3];
  v11 = a1[4];
  v12 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v14 = OUTLINED_FUNCTION_154();
  PropertyProvider.eraseToAnyPropertyProvider()(v14, v15, v16);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Curator.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void Curator.editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE81A8 != -1)
  {
    OUTLINED_FUNCTION_112_0();
  }

  v26 = qword_280C02488;

  sub_2176CA390(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2172ED238(void *a1, void *a2, uint64_t (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return a3(*a2);
}

void sub_2172ED314(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v27 = *a2;

  sub_2176CAC7C(v27, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Curator.name.getter()
{
  if (qword_280BE8158 != -1)
  {
    OUTLINED_FUNCTION_50_0();
  }

  result = sub_2172A4018();
  if (!v1)
  {
    return 0;
  }

  return result;
}

void Curator.url.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE8170 != -1)
  {
    OUTLINED_FUNCTION_134();
  }

  v30 = qword_280C02468;

  sub_2176CA370(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void Curator.playlists.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE8138 != -1)
  {
    OUTLINED_FUNCTION_49();
  }

  v30 = qword_280BE8140;

  sub_2176CA354(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t static Curator.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = *(v5 + 104);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v6(v0 + 2, v7, v4, v5) & 1;
}

uint64_t Curator.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 112))(a1, v5, v6);
}

uint64_t Curator.hashValue.getter()
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

uint64_t sub_2172ED624()
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

uint64_t sub_2172ED6A0@<X0>(uint64_t *a1@<X8>)
{
  result = Curator.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Curator.subscript.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 224);
  sub_2173363C0();
  v4 = *(v1 + 232);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  sub_2173363C0();
  v4 = *(v1 + 272);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  v4 = *(v1 + 272);
  type metadata accessor for MusicItemCollection();
  sub_2173363C0();
  v9 = *(v1 + 280);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

uint64_t sub_2172ED878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A68, &qword_21775DA70);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02450 = result;
  return result;
}

uint64_t sub_2172ED8EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A88, &qword_21775DA90);
  swift_allocObject();
  result = sub_217729830(0xD000000000000010, 0x80000002177AB890, 0x6B726F77747241, 0xE700000000000000, &unk_282959AF8);
  qword_280C02478 = result;
  return result;
}

uint64_t sub_2172ED96C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A80, &qword_21775DA88);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007365746F4E6CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02488 = result;
  return result;
}

uint64_t sub_2172ED9E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A78, &qword_21775DA80);
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_212();
  result = sub_217729830(v0, 0xEE006F656469566CLL, 0xD000000000000035, 0x80000002177ABB30, v1);
  qword_280C02470 = result;
  return result;
}

uint64_t sub_2172EDA60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A70, &qword_21775DA78);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1684957547, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02460 = result;
  return result;
}

uint64_t sub_2172EDACC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A68, &qword_21775DA70);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02480 = result;
  return result;
}

uint64_t sub_2172EDB4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A60, &qword_21775DA68);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02458 = result;
  return result;
}

uint64_t sub_2172EDBB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A58, &qword_21775DA60);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02468 = result;
  return result;
}

uint64_t sub_2172EDC24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A50, &qword_21775DA58);
  swift_allocObject();
  result = sub_21769A084(0x7473696C79616C70, 0xE900000000000073, 0, &unk_282959AF8);
  qword_280BE8140 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.playlists.getter()
{
  if (qword_280BE8138 != -1)
  {
    OUTLINED_FUNCTION_49();
  }
}

{
  if (qword_280BE6628 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }
}

{
  return sub_21767CE84(&qword_280BE6820, &qword_280BE6828);
}

uint64_t static Curator.catalogFilterID(for:)()
{
  OUTLINED_FUNCTION_77_3();
  swift_getKeyPath();
  sub_2177529D8();
  v1 = sub_217751F08();

  if (v1)
  {
    *v0 = 25705;
    v0[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_2172EDE1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t Curator.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EF1BC(v3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2172EDED8()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_40_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BE23C0 != -1)
  {
    swift_once();
  }

  v9 = dynamic_cast_existential_1_conditional(&type metadata for RadioShow);
  if (v9)
  {
    OUTLINED_FUNCTION_40(v9, v10);
    v11();
  }

  OUTLINED_FUNCTION_154_1();
  v12 = OUTLINED_FUNCTION_38_5();
  sub_2173133E4(v12, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v14 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v14, v15);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v16 = OUTLINED_FUNCTION_11_21();
    sub_217302770(v16, v17);
    v18 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v18, v19, &unk_21779AA10);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EE020()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_40_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BE84D8 != -1)
  {
    swift_once();
  }

  v9 = dynamic_cast_existential_1_conditional(&type metadata for Playlist);
  if (v9)
  {
    OUTLINED_FUNCTION_40(v9, v10);
    v11();
  }

  OUTLINED_FUNCTION_154_1();
  v12 = OUTLINED_FUNCTION_38_5();
  sub_217314300(v12, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v14 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v14, v15);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v16 = OUTLINED_FUNCTION_11_21();
    sub_2172F565C(v16, v17);
    v18 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v18, v19, &unk_21775A220);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EE168()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_40_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BE26C0 != -1)
  {
    swift_once();
  }

  v9 = dynamic_cast_existential_1_conditional(&type metadata for Station);
  if (v9)
  {
    OUTLINED_FUNCTION_40(v9, v10);
    v11();
  }

  OUTLINED_FUNCTION_154_1();
  v12 = OUTLINED_FUNCTION_38_5();
  sub_217316710(v12, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v14 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v14, v15);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v16 = OUTLINED_FUNCTION_11_21();
    sub_2173078AC(v16, v17);
    v18 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v18, v19, &qword_217758CC0);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EE2B0()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_40_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BE2A18 != -1)
  {
    swift_once();
  }

  v9 = dynamic_cast_existential_1_conditional(&type metadata for Artist);
  if (v9)
  {
    OUTLINED_FUNCTION_40(v9, v10);
    v11();
  }

  OUTLINED_FUNCTION_154_1();
  v12 = OUTLINED_FUNCTION_38_5();
  sub_217317684(v12, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v14 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v14, v15);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v16 = OUTLINED_FUNCTION_11_21();
    sub_2172FEB30(v16, v17);
    v18 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v18, v19, &qword_217758CB0);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EE3F8()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_40_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BE2A80 != -1)
  {
    swift_once();
  }

  v9 = dynamic_cast_existential_1_conditional(&type metadata for Genre);
  if (v9)
  {
    OUTLINED_FUNCTION_40(v9, v10);
    v11();
  }

  OUTLINED_FUNCTION_154_1();
  v12 = OUTLINED_FUNCTION_38_5();
  sub_217318548(v12, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v14 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v14, v15);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v16 = OUTLINED_FUNCTION_11_21();
    sub_21733316C(v16, v17);
    v18 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v18, v19, &qword_217758CF0);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EE540()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_40_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BE85B8 != -1)
  {
    swift_once();
  }

  v9 = dynamic_cast_existential_1_conditional(&type metadata for Album);
  if (v9)
  {
    OUTLINED_FUNCTION_40(v9, v10);
    v11();
  }

  OUTLINED_FUNCTION_154_1();
  v12 = OUTLINED_FUNCTION_38_5();
  sub_217319464(v12, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v14 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v14, v15);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v16 = OUTLINED_FUNCTION_11_21();
    sub_2172E5528(v16, v17);
    v18 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v18, v19, &qword_21775D360);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EE688()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_40_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BEB230 != -1)
  {
    swift_once();
  }

  v9 = dynamic_cast_existential_1_conditional(&type metadata for Song);
  if (v9)
  {
    OUTLINED_FUNCTION_40(v9, v10);
    v11();
  }

  OUTLINED_FUNCTION_154_1();
  v12 = OUTLINED_FUNCTION_38_5();
  sub_21731A338(v12, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v14 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v14, v15);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v16 = OUTLINED_FUNCTION_11_21();
    sub_217303E60(v16, v17);
    v18 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v18, v19, &unk_217758CD0);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EE7D0()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_40_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BE5130 != -1)
  {
    swift_once();
  }

  v9 = dynamic_cast_existential_1_conditional(&type metadata for RecordLabel);
  if (v9)
  {
    OUTLINED_FUNCTION_40(v9, v10);
    v11();
  }

  OUTLINED_FUNCTION_154_1();
  v12 = OUTLINED_FUNCTION_38_5();
  sub_21731B2A4(v12, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v14 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v14, v15);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v16 = OUTLINED_FUNCTION_11_21();
    sub_21730319C(v16, v17);
    v18 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v18, v19, &unk_217758D00);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EE918()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_77_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BE8588 != -1)
  {
    swift_once();
  }

  if (qword_27CB23CD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_154_1();
  sub_21731C1C0(&v18, v2);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v10 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v10, v11);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v12 = OUTLINED_FUNCTION_11_21();
    sub_217331434(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v16, v17, &unk_2177650E0);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EEA6C()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_40_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_29_11();
  if (qword_280BE7F40 != -1)
  {
    swift_once();
  }

  v9 = dynamic_cast_existential_1_conditional(&type metadata for MusicVideo);
  if (v9)
  {
    OUTLINED_FUNCTION_40(v9, v10);
    v11();
  }

  OUTLINED_FUNCTION_154_1();
  v12 = OUTLINED_FUNCTION_38_5();
  sub_21731CB84(v12, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v14 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v14, v15);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v16 = OUTLINED_FUNCTION_11_21();
    sub_2172F1160(v16, v17);
    v18 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v18, v19, &qword_217758D90);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2172EEBB4()
{
  OUTLINED_FUNCTION_77_3();
  if (qword_27CB23C90 != -1)
  {
    swift_once();
  }

  if (qword_27CB23C88 != -1)
  {
    swift_once();
  }

  sub_2171FF30C(v0, v18);
  sub_21731DABC(v18, v19);
  if (!v1)
  {
    sub_21726A630(v19, v18, &qword_27CB244A8, &unk_217758980);
    v2 = v0[3];
    v3 = v0[4];
    OUTLINED_FUNCTION_21_11(v0);
    v4 = OUTLINED_FUNCTION_153();
    Decoder.dataRequestConfiguration.getter(v4, v5);
    v6 = v0[3];
    v7 = v0[4];
    OUTLINED_FUNCTION_21_11(v0);
    OUTLINED_FUNCTION_153();
    Decoder.sharedRelatedItemStore.getter();
    sub_21726A630(v18, v16, &qword_27CB244A8, &unk_217758980);
    sub_2172CA838(v17, &v15);
    sub_2173349C8();
    sub_21733AB9C(v17);
    OUTLINED_FUNCTION_206_2();
    sub_2171F0738(v8, v9, v10);
    OUTLINED_FUNCTION_206_2();
    sub_2171F0738(v11, v12, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(v0);
}

void sub_2172EED40()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_77_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_165_3();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_115_3();
  if (qword_27CB23D08 != -1)
  {
    swift_once();
  }

  if (qword_27CB23D18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_154_1();
  sub_21731E7A0(&v15, v2);
  if (!v1)
  {
    OUTLINED_FUNCTION_224_1();
    OUTLINED_FUNCTION_4_28();
    v10 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v10, v11);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_82_4();
    sub_2171F0738(v12, v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EEED4()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_77_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_5_19();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_29_11();
  if (qword_27CB23C48 != -1)
  {
    swift_once();
  }

  if (qword_27CB23C58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_154_1();
  sub_21731F164(&v18, v2);
  if (!v1)
  {
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_28();
    v10 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v10, v11);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    v12 = OUTLINED_FUNCTION_11_21();
    sub_2172FCC2C(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_70_6();
    sub_2171F0738(v16, v17, &unk_217758C90);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

void sub_2172EF028()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_77_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_165_3();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_115_3();
  if (qword_27CB23E40 != -1)
  {
    swift_once();
  }

  if (qword_27CB23E50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_154_1();
  sub_21731FB28(&v15, v2);
  if (!v1)
  {
    OUTLINED_FUNCTION_224_1();
    OUTLINED_FUNCTION_4_28();
    v10 = OUTLINED_FUNCTION_19_7();
    Decoder.dataRequestConfiguration.getter(v10, v11);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_19_7();
    Decoder.sharedRelatedItemStore.getter();
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_82_4();
    sub_2171F0738(v12, v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2172EF1BC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v18[-1] - v10;
  if (qword_280BE7660 != -1)
  {
    swift_once();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for Curator))
  {
    (*(v12 + 8))();
  }

  sub_2171FF30C(a1, v18);
  sub_2173204EC(v18, v11);
  if (!v1)
  {
    sub_21726A630(v11, v7, &qword_27CB24490, &qword_21775A250);
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    Decoder.dataRequestConfiguration.getter(v13, v14);
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    Decoder.sharedRelatedItemStore.getter();
    sub_217301D0C(v7, v18);
    sub_2171F0738(v11, &qword_27CB24490, &qword_21775A250);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2172EF448()
{
  OUTLINED_FUNCTION_171();
  v7 = OUTLINED_FUNCTION_140_4(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_45_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_129_2();
  v12 = v1[3];
  v13 = v1[4];
  OUTLINED_FUNCTION_21_11(v1);
  OUTLINED_FUNCTION_225_2();
  v0(v16);
  sub_21733AB9C(v16);
  v14 = OUTLINED_FUNCTION_217_3();
  v15(v14);
  OUTLINED_FUNCTION_228_2();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2172EF538(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
  OUTLINED_FUNCTION_45_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_21_2();
  v7 = a1[3];
  v8 = a1[4];
  OUTLINED_FUNCTION_21_11(a1);
  v9 = OUTLINED_FUNCTION_150_0();
  Encoder.dataRequestConfiguration.getter(v9, v10);
  OUTLINED_FUNCTION_193_2();
  sub_21733AB9C(v12);
  sub_217324958(a1);
  return OUTLINED_FUNCTION_227_2();
}

uint64_t sub_2172EF67C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
  OUTLINED_FUNCTION_45_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_21_2();
  v7 = a1[3];
  v8 = a1[4];
  OUTLINED_FUNCTION_21_11(a1);
  v9 = OUTLINED_FUNCTION_150_0();
  Encoder.dataRequestConfiguration.getter(v9, v10);
  OUTLINED_FUNCTION_193_2();
  sub_21733AB9C(v12);
  sub_217325958(a1);
  return OUTLINED_FUNCTION_227_2();
}

uint64_t sub_2172EF770(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  OUTLINED_FUNCTION_21_11(a1);
  Encoder.dataRequestConfiguration.getter(v2, v3);
  sub_217338840(v5, v6);
  sub_21733AB9C(v5);
  sub_217326158(a1);
  return sub_2171F0738(v6, &qword_27CB244A8, &unk_217758980);
}

void sub_2172EF8B4()
{
  OUTLINED_FUNCTION_171();
  v7 = OUTLINED_FUNCTION_140_4(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_45_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_129_2();
  v12 = v1[3];
  v13 = v1[4];
  OUTLINED_FUNCTION_21_11(v1);
  OUTLINED_FUNCTION_225_2();
  v0(v16);
  sub_21733AB9C(v16);
  v14 = OUTLINED_FUNCTION_217_3();
  v15(v14);
  OUTLINED_FUNCTION_228_2();
  OUTLINED_FUNCTION_170();
}

void Curator.debugDescription.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = 0xEB0000000022203ALL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_128();
  v8 = sub_2177516D8();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  OUTLINED_FUNCTION_1();
  v124 = 0x28726F7461727543;
  v125 = 0xE800000000000000;
  strcpy(v113, "\n  id: ");
  v113[9] = 0;
  *&v113[10] = 0;
  *&v113[12] = -402653184;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_190();

  strcpy(v113, ",\n  name: ");
  *&v113[12] = -352321536;
  if (qword_280BE8158 == -1)
  {
    goto LABEL_2;
  }

LABEL_49:
  OUTLINED_FUNCTION_50_0();
LABEL_2:
  v15 = sub_2172A4018();
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v15, v17);

  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_190();

  v122 = 0;
  v123 = 0xE000000000000000;
  MEMORY[0x21CEA23B0](0x646E696B20200A2CLL, v2 + 98304);
  if (qword_280BE8168 != -1)
  {
    OUTLINED_FUNCTION_52();
  }

  sub_2176CA2D8(qword_280C02460, v18, v19, v20, v21, v22, v23, v24, v86, *(&v86 + 1), v89, *(&v89 + 1), v92, *(&v92 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1));
  v113[0] = v121 & 1;
  sub_217752C78();
  MEMORY[0x21CEA23B0](v122, v123);

  if (qword_280BE81A8 != -1)
  {
    OUTLINED_FUNCTION_112_0();
  }

  sub_2176CA390(qword_280C02488, v25, v26, v27, v28, v29, v30, v31, v87, v88, v90, v91, v93, v96, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103, v104, *(&v104 + 1), v105, *(&v105 + 1));
  v117[0] = *v113;
  v117[1] = *&v113[16];
  v117[2] = *&v113[32];
  v117[3] = *&v113[48];
  v39 = *v113;
  v118 = *&v113[16];
  v119 = *&v113[32];
  v120 = *&v113[48];
  if (*&v113[8] != 1)
  {
    OUTLINED_FUNCTION_226_2();

    OUTLINED_FUNCTION_207();
    v116[0] = v41 + 4;
    v116[1] = v40;
    *v113 = v39;
    *&v113[16] = v118;
    *&v113[32] = v119;
    *&v113[48] = v120;
    v42 = EditorialNotes.debugDescription.getter();
    v44 = v43;
    sub_2171F0738(v117, &qword_27CB24B70, &unk_217759460);
    *&v111[0] = v42;
    *(&v111[0] + 1) = v44;
    *&v99 = 10;
    *(&v99 + 1) = 0xE100000000000000;
    *&v104 = 2105354;
    *(&v104 + 1) = 0xE300000000000000;
    sub_21733A5C8();
    OUTLINED_FUNCTION_147_0();
    v45 = OUTLINED_FUNCTION_172();
    v46 = v11;
    v48 = v47;

    MEMORY[0x21CEA23B0](v45, v48);
    v11 = v46;

    MEMORY[0x21CEA23B0](v116[0], v116[1]);
  }

  if (qword_280BE8170 != -1)
  {
    OUTLINED_FUNCTION_134();
  }

  sub_2176CA370(qword_280C02468, v32, v33, v34, v35, v36, v37, v38, v94, v97, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, v108, v109, v110, *&v111[0], *(&v111[0] + 1));
  OUTLINED_FUNCTION_237_0(v1, 1);
  if (v49)
  {
    sub_2171F0738(v1, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v50 = *(v11 + 32);
    v51 = OUTLINED_FUNCTION_15();
    v52(v51);
    strcpy(v113, ",\n  url: ");
    v113[11] = 0;
    *&v113[12] = -369098752;
    sub_21733CDD0(&qword_27CB254C8, MEMORY[0x277CC9260]);
    v53 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v53);

    OUTLINED_FUNCTION_191();
    MEMORY[0x21CEA23B0](*v113, *&v113[8]);

    v54 = *(v11 + 8);
    v55 = OUTLINED_FUNCTION_25_0();
    v56(v55);
  }

  if (qword_280BE8138 != -1)
  {
    OUTLINED_FUNCTION_49();
  }

  sub_2176CA354(qword_280BE8140, v57, v58, v59, v60, v61, v62, v63, v95, v98, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, v108, v109, v110, *&v111[0], *(&v111[0] + 1));
  if (*&v113[88])
  {
    memcpy(v116, v113, sizeof(v116));
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_21726A630(v116, v111, &unk_27CB28230, &unk_21775CD50);
    sub_21726A630(v111, v113, &unk_27CB28230, &unk_21775CD50);
    v64 = *&v111[0];
    v65 = BYTE8(v111[0]);
    sub_217283C5C(*&v111[0], SBYTE8(v111[0]));
    OUTLINED_FUNCTION_158();
    sub_2171F0738(v66, v67, v68);
    sub_21725CF00(v64, v65);
    v69 = 0;
    v114 = 0;
    v70 = *v113;
    v1 = v113[8];
    v71 = *v113 + 32;
    v11 = 0xE100000000000000;
    v2 = &qword_217771D40;
    if (v113[8])
    {
LABEL_20:
      swift_beginAccess();
      if (v69 != *(*(v70 + 56) + 16))
      {

        sub_2172944E4();
        goto LABEL_29;
      }
    }

    else
    {
      while (1)
      {
        v72 = *(v70 + 16);
        if (v69 == v72)
        {
          break;
        }

        if ((v69 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v69 >= v72)
        {
          goto LABEL_48;
        }

        sub_21726A630(v71, v111, &qword_27CB24830, &qword_217771D40);
        sub_21726A630(v111, &v99, &qword_27CB24830, &qword_217771D40);
        if (v103)
        {
          v73 = *(v99 + 16);
          v74 = *(v99 + 24);
          v75 = *(v99 + 32);
          sub_217283C5C(v70, 0);
          sub_217751DE8();

          sub_21729290C(&v104, v73, v74);

          v11 = 0xE100000000000000;
        }

        else
        {
          v104 = v99;
          v105 = v100;
          v106 = v101;
          v107 = v102;
          sub_217283C5C(v70, 0);
        }

        sub_2171F0738(v111, &qword_27CB24830, &qword_217771D40);
LABEL_29:
        v89 = v105;
        v92 = v104;
        v86 = v106;
        v76 = v107;
        v77 = __OFADD__(v69, 1);
        if (v1)
        {
          sub_21725CF00(v70, 1);
          if (v77)
          {
            goto LABEL_47;
          }
        }

        else
        {
          sub_21725CF00(v70, 0);
          if (v77)
          {
            goto LABEL_46;
          }
        }

        v111[0] = v92;
        v111[1] = v89;
        v111[2] = v86;
        v112 = v76;
        v78 = v115 & 0xFFFFFFFFFFFFLL;
        if ((*(&v115 + 1) & 0x2000000000000000) != 0)
        {
          v78 = HIBYTE(*(&v115 + 1)) & 0xFLL;
        }

        if (v78)
        {
          MEMORY[0x21CEA23B0](44, 0xE100000000000000);
        }

        *&v99 = 10;
        *(&v99 + 1) = 0xE100000000000000;
        v79 = Playlist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v79);

        MEMORY[0x21CEA23B0](v99, *(&v99 + 1));

        sub_21726B8C4(v111);
        ++v69;
        v71 += 64;
        if (v1)
        {
          goto LABEL_20;
        }
      }
    }

    v114 = v69;
    sub_2171F0738(v113, &qword_27CB254C0, &unk_21775CD60);
    OUTLINED_FUNCTION_226_2();

    OUTLINED_FUNCTION_207();
    *v113 = v81;
    *&v113[8] = v80;
    v111[0] = v115;
    *&v99 = 10;
    *(&v99 + 1) = 0xE100000000000000;
    *&v104 = 0x202020200ALL;
    *(&v104 + 1) = 0xE500000000000000;
    sub_21733A5C8();
    OUTLINED_FUNCTION_147_0();
    OUTLINED_FUNCTION_172();

    v82 = OUTLINED_FUNCTION_204();
    MEMORY[0x21CEA23B0](v82);

    MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_190();

    v83 = &unk_27CB28230;
    v84 = &unk_21775CD50;
    v85 = v116;
  }

  else
  {
    v83 = &qword_27CB25330;
    v84 = &unk_21775E9B0;
    v85 = v113;
  }

  sub_2171F0738(v85, v83, v84);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172F058C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
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

uint64_t sub_2172F065C(char a1)
{
  if (a1)
  {
    return 0x6C616E7265747865;
  }

  else
  {
    return 0x6169726F74696465;
  }
}

uint64_t sub_2172F06AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172F058C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172F06D4(uint64_t a1)
{
  v2 = sub_21733A61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2172F0710(uint64_t a1)
{
  v2 = sub_21733A61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2172F076C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_140_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2172F0798(uint64_t a1)
{
  v2 = sub_21733A6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2172F07D4(uint64_t a1)
{
  v2 = sub_21733A6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2172F0810(uint64_t a1)
{
  v2 = sub_21733A670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2172F084C(uint64_t a1)
{
  v2 = sub_21733A670();

  return MEMORY[0x2821FE720](a1, v2);
}

void Curator.Kind.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254D0, &qword_21775CD70);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v35 = v7;
  v36 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v34 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254D8, &qword_21775CD78);
  v14 = OUTLINED_FUNCTION_0_0(v13);
  v32 = v15;
  v33 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_130_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254E0, &qword_21775CD80);
  OUTLINED_FUNCTION_0_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_21_2();
  v27 = *v0;
  v28 = v4[3];
  v29 = v4[4];
  OUTLINED_FUNCTION_91_4(v4);
  sub_21733A61C();
  sub_2177532F8();
  v30 = (v22 + 8);
  if (v27)
  {
    sub_21733A670();
    v31 = v34;
    sub_217752EE8();
    (*(v35 + 8))(v31, v36);
  }

  else
  {
    sub_21733A6C4();
    sub_217752EE8();
    (*(v32 + 8))(v2, v33);
  }

  (*v30)(v1, v20);
  OUTLINED_FUNCTION_170();
}

uint64_t Curator.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

void Curator.Kind.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v56 = v0;
  v4 = v3;
  v53 = v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25500, &qword_21775CD88);
  OUTLINED_FUNCTION_0_0(v55);
  v52 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25508, &qword_21775CD90);
  OUTLINED_FUNCTION_0_0(v13);
  v51 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_128();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25510, &qword_21775CD98);
  OUTLINED_FUNCTION_0_0(v19);
  v54 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_131_0();
  v25 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_21733A61C();
  v26 = v56;
  sub_2177532C8();
  if (v26)
  {
    goto LABEL_10;
  }

  v49 = v13;
  v50 = v2;
  v56 = v4;
  v27 = v55;
  v28 = sub_217752EB8();
  sub_21733A718(v28, 0);
  if (v31 == v32 >> 1)
  {
    v55 = v29;
LABEL_9:
    v43 = sub_217752B48();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
    *v45 = &type metadata for Curator.Kind;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v1, v19);
    v4 = v56;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_11:
    OUTLINED_FUNCTION_170();
    return;
  }

  v48[1] = 0;
  if (v31 < (v32 >> 1))
  {
    v33 = *(v30 + v31);
    sub_21733ADC4(v31 + 1, v32 >> 1, v29, v30, v31, v32);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    if (v37 == v39 >> 1)
    {
      if (v33)
      {
        sub_21733A670();
        v40 = v12;
        OUTLINED_FUNCTION_195();
        v41 = v53;
        v42 = v54;
        swift_unknownObjectRelease();
        (*(v52 + 8))(v40, v27);
      }

      else
      {
        sub_21733A6C4();
        v47 = v50;
        OUTLINED_FUNCTION_195();
        v41 = v53;
        v42 = v54;
        swift_unknownObjectRelease();
        (*(v51 + 8))(v47, v49);
      }

      (*(v42 + 8))(v1, v37);
      *v41 = v33;
      __swift_destroy_boxed_opaque_existential_1(v56);
      goto LABEL_11;
    }

    v55 = v35;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static Curator.typeValue.getter()
{
  if (qword_280BE7660 != -1)
  {
    OUTLINED_FUNCTION_121_3();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE7668);

  return sub_217751DE8();
}

uint64_t sub_2172F1090()
{
  if (qword_280BE7660 != -1)
  {
    OUTLINED_FUNCTION_121_3();
  }

  xmmword_280BE7FF0 = xmmword_280BE7668;
  qword_280BE8000 = qword_280BE7678;
  unk_280BE8008 = unk_280BE7680;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.curator.getter()
{
  if (qword_280BE7FE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE7FF0);

  return sub_217751DE8();
}

uint64_t sub_2172F1160(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v293 = v3;
  v294 = v2;
  v296 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v267 = v260 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v309 = v260 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v288 = v260 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  v263 = *(v17 - 8);
  v18 = *(v263 + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v310 = v260 - v20;
  v21 = type metadata accessor for PreviewAsset();
  v306 = *(v21 - 8);
  v307 = v21;
  v22 = *(v306 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v308 = v260 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for MusicVideoPropertyProvider();
  v25 = *(*(v302 - 1) + 64);
  MEMORY[0x28223BE20](v302, v26);
  v28 = v260 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256D8, &qword_21775D7F0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v262 = v260 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v299 = v260 - v35;
  v36 = type metadata accessor for CloudMusicVideo(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36, v38);
  v260[1] = v260 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v297 = v260 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = v260 - v45;
  sub_21733CAD0();
  if (qword_280BE6378 != -1)
  {
    swift_once();
  }

  v47 = &v46[*(v36 + 20)];
  v303 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v304 = v47;
  v305 = &v47[v303[20]];
  memcpy(__dst, v305, sizeof(__dst));
  sub_2172DA558();
  v298 = v36;
  v300 = *(v36 + 24);
  sub_21726A630(&v46[v300], v328, &qword_27CB243A8, &unk_217777720);
  v301 = v46;
  if (v328[2] == 1)
  {
    v48 = &qword_27CB243A8;
    v49 = &unk_217777720;
    v50 = v328;
  }

  else
  {
    sub_21726A630(&v328[32], v326, &qword_27CB242B0, &unk_21775D630);
    sub_21726A3FC(v328);
    if (v326[2])
    {
      sub_217751DE8();
      sub_2171F0738(v326, &qword_27CB242B8, &unk_21777EEA0);
      v51 = v299;
      sub_2172CE710();

      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
      if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
      {
        v48 = &qword_27CB256D8;
        v49 = &qword_21775D7F0;
      }

      else
      {
        swift_getKeyPath();
        sub_21735F96C();

        v48 = &qword_27CB24808;
        v49 = &qword_217758D90;
      }

      v50 = v51;
    }

    else
    {
      v48 = &qword_27CB242B0;
      v49 = &unk_21775D630;
      v50 = v326;
    }
  }

  sub_2171F0738(v50, v48, v49);
  memcpy(v325, v330, sizeof(v325));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v54 = v53[10];
  v55 = v6 + v53[9];
  v56 = *(v55 + 8);
  v274 = *v55;
  LODWORD(v273) = *(v55 + 16);
  v57 = *(v6 + v54 + 8);
  v272 = *(v6 + v54);
  v58 = *(v6 + v53[12]);
  v59 = *(v6 + v53[13]);
  v60 = v53[14];
  v61 = v53[15];
  v261 = v53;
  v62 = *(v6 + v60);
  v268 = v56;
  v269 = v62;
  v295 = v6;
  v270 = *(v6 + v61);
  sub_2172A497C(v326);
  memcpy(v28, v326, 0x221uLL);
  sub_21733B708(v327);
  memcpy(v28 + 552, v327, 0x161uLL);
  *(v28 + 116) = 0;
  v28[936] = 1;
  v63 = v302;
  v64 = v302[9];
  v65 = sub_2177516D8();
  v275 = v64;
  __swift_storeEnumTagSinglePayload(&v28[v64], 1, 1, v65);
  v276 = v63[10];
  v66 = &v28[v276];
  v66[4] = 0;
  *v66 = 512;
  v265 = v63[11];
  v28[v265] = 2;
  v67 = &v28[v63[12]];
  *v67 = 0;
  v264 = v67;
  v67[8] = 1;
  v68 = &v28[v63[14]];
  *v68 = xmmword_2177586D0;
  *(v68 + 1) = 0u;
  *(v68 + 2) = 0u;
  *(v68 + 3) = 0u;
  v28[v63[19]] = 2;
  v69 = v63[20];
  v277 = v68;
  v278 = v69;
  __swift_storeEnumTagSinglePayload(&v28[v69], 1, 1, v65);
  v266 = v63[21];
  v28[v266] = 2;
  v70 = &v28[v63[23]];
  *v70 = 0;
  *(v70 + 1) = 0;
  v70[16] = 0;
  v71 = &v28[v63[24]];
  v71[1] = 0;
  v279 = v71;
  v280 = v71 + 1;
  *v71 = 0;
  v71[2] = 1;
  memcpy(&v28[v63[25]], v326, 0x221uLL);
  v72 = &v28[v63[27]];
  *(v72 + 14) = 0;
  *(v72 + 5) = 0u;
  *(v72 + 6) = 0u;
  *(v72 + 3) = 0u;
  *(v72 + 4) = 0u;
  *(v72 + 1) = 0u;
  *(v72 + 2) = 0u;
  v281 = v72;
  *v72 = 0u;
  v73 = v63[29];
  v74 = sub_2177517D8();
  v282 = v73;
  v75 = &v28[v73];
  v76 = v74;
  __swift_storeEnumTagSinglePayload(v75, 1, 1, v74);
  v77 = &v28[v63[30]];
  *v77 = 0;
  v77[8] = 1;
  v283 = v63[33];
  __swift_storeEnumTagSinglePayload(&v28[v283], 1, 1, v65);
  __swift_storeEnumTagSinglePayload(&v28[v63[35]], 1, 1, v76);
  v28[v63[36]] = 3;
  v28[v63[37]] = 2;
  v28[v63[39]] = 2;
  v28[v63[40]] = 5;
  v28[v63[41]] = 7;
  v78 = &v28[v63[42]];
  *v78 = 0;
  v78[8] = 1;
  __swift_storeEnumTagSinglePayload(&v28[v63[43]], 1, 1, v76);
  v79 = &v28[v63[44]];
  v299 = v76;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v76);
  v80 = &v28[v63[45]];
  *v80 = 0;
  v80[8] = 1;
  v28[v63[46]] = 2;
  v28[v63[47]] = 10;
  v81 = &v28[v63[48]];
  *v81 = 0;
  v81[8] = 1;
  v82 = &v28[v63[49]];
  *(v82 + 96) = 0;
  *(v82 + 64) = 0u;
  *(v82 + 80) = 0u;
  *(v82 + 32) = 0u;
  *(v82 + 48) = 0u;
  *v82 = 0u;
  *(v82 + 16) = 0u;
  v284 = v82;
  v83 = &v28[v63[50]];
  *(v83 + 96) = 0;
  *(v83 + 64) = 0u;
  *(v83 + 80) = 0u;
  *(v83 + 32) = 0u;
  *(v83 + 48) = 0u;
  *v83 = 0u;
  *(v83 + 16) = 0u;
  v286 = v83;
  v84 = &v28[v63[51]];
  *(v84 + 96) = 0;
  *(v84 + 64) = 0u;
  *(v84 + 80) = 0u;
  *(v84 + 32) = 0u;
  *(v84 + 48) = 0u;
  *v84 = 0u;
  *(v84 + 16) = 0u;
  v285 = v84;
  v85 = &v28[v63[52]];
  *(v85 + 96) = 0;
  *(v85 + 64) = 0u;
  *(v85 + 80) = 0u;
  *(v85 + 32) = 0u;
  *(v85 + 48) = 0u;
  *v85 = 0u;
  *(v85 + 16) = 0u;
  v287 = v85;
  v86 = &v28[v63[53]];
  *(v86 + 96) = 0;
  *(v86 + 64) = 0u;
  *(v86 + 80) = 0u;
  *(v86 + 32) = 0u;
  *(v86 + 48) = 0u;
  *v86 = 0u;
  *(v86 + 16) = 0u;
  v289 = v86;
  v87 = &v28[v63[54]];
  *(v87 + 96) = 0;
  *(v87 + 64) = 0u;
  *(v87 + 80) = 0u;
  *(v87 + 32) = 0u;
  *(v87 + 48) = 0u;
  *v87 = 0u;
  *(v87 + 16) = 0u;
  v290 = v87;
  v88 = &v28[v63[55]];
  *(v88 + 96) = 0;
  *(v88 + 64) = 0u;
  *(v88 + 80) = 0u;
  *(v88 + 32) = 0u;
  *(v88 + 48) = 0u;
  *v88 = 0u;
  *(v88 + 16) = 0u;
  v291 = v88;
  v89 = v63[56];
  v90 = v268;
  v91 = &v28[v89];
  *(v91 + 96) = 0;
  *(v91 + 64) = 0u;
  *(v91 + 80) = 0u;
  *(v91 + 32) = 0u;
  *(v91 + 48) = 0u;
  *v91 = 0u;
  *(v91 + 16) = 0u;
  v292 = v91;
  v92 = qword_280BE5E60;
  sub_217751DE8();
  sub_217751DE8();
  v271 = v58;
  sub_217751DE8();
  sub_217751DE8();
  v93 = v269;
  sub_217751DE8();
  v94 = v270;
  sub_217751DE8();
  if (v92 != -1)
  {
    swift_once();
  }

  v95 = qword_280C01FE0;
  if (qword_280C01FE0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v259 = sub_217752D28();

    v95 = v259;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v96 = v302;
  *&v28[v302[60]] = v95;
  v97 = &v28[v96[63]];
  memcpy(&v28[v96[61]], v325, 0x161uLL);
  v98 = &v28[v96[62]];
  *v98 = v274;
  *(v98 + 1) = v90;
  v98[16] = v273;
  v99 = v271;
  *v97 = v272;
  *(v97 + 1) = v57;
  *&v28[v96[64]] = v99;
  *&v28[v96[65]] = v59;
  *&v28[v96[66]] = v93;
  *&v28[v96[67]] = v94;
  sub_21726A630(&v301[v300], v328, &qword_27CB243A8, &unk_217777720);
  if (v328[2] == 1)
  {
    v100 = &qword_27CB243A8;
    v101 = &unk_217777720;
    v102 = v328;
LABEL_21:
    sub_2171F0738(v102, v100, v101);
    sub_21733CAD0();
    goto LABEL_22;
  }

  sub_21726A630(&v328[32], v322, &qword_27CB242B0, &unk_21775D630);
  sub_21726A3FC(v328);
  if (!v322[2])
  {
    v100 = &qword_27CB242B0;
    v101 = &unk_21775D630;
    v102 = v322;
    goto LABEL_21;
  }

  sub_217751DE8();
  sub_2171F0738(v322, &qword_27CB242B8, &unk_21777EEA0);
  v103 = v262;
  sub_2172CE710();

  if (__swift_getEnumTagSinglePayload(v103, 1, v261) == 1)
  {
    v100 = &qword_27CB256D8;
    v101 = &qword_21775D7F0;
    v102 = v103;
    goto LABEL_21;
  }

  sub_21733CAD0();
  sub_2171F0738(v103, &qword_27CB24808, &qword_217758D90);
  sub_21733CE30();
LABEL_22:
  sub_21733BC28();
  memcpy(v323, v304, sizeof(v323));
  memcpy(v324, v304, sizeof(v324));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v324) == 1)
  {
    v104 = v326;
  }

  else
  {
    memcpy(v328, v324, 0x1B8uLL);
    memcpy(v313, v323, 0x1B8uLL);
    sub_21726A630(v313, v322, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v321);
    memcpy(v314, v328, 0x1B8uLL);
    sub_2171F0738(v314, &qword_27CB243F0, &qword_21775D690);
    memcpy(v328, v321, 0x221uLL);
    nullsub_1(v328, v105);
    v104 = v328;
  }

  memcpy(v322, v104, 0x221uLL);
  memcpy(v321, v28, 0x221uLL);
  sub_2171F0738(v321, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v28, v322, 0x221uLL);
  v107 = v303;
  v106 = v304;
  v108 = *(v304 + 56);
  *(v28 + 114) = *(v304 + 55);
  *(v28 + 115) = v108;
  v109 = *(v106 + 58);
  *(v28 + 118) = *(v106 + 57);
  *(v28 + 119) = v109;
  v110 = v107[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v106[v110], &v28[v275], &unk_27CB277C0, &qword_217758DC0);
  v111 = v305;
  v112 = *(v305 + 1);
  sub_21735D8AC();
  v114 = v113;
  if (v112)
  {
    v115 = 3;
  }

  else
  {
    v115 = 0;
  }

  v116 = *(v111 + 1);
  sub_21735D8AC();
  v118 = v117 | (v116 != 0);
  v119 = *(v111 + 1);
  sub_21735D8AC();
  v121 = v120 | (v119 != 0);
  sub_21735D8AC();
  if (v114)
  {
    v123 = 3;
  }

  else
  {
    v123 = v115;
  }

  v124 = 256;
  if ((v118 & 1) == 0)
  {
    v124 = 0;
  }

  v125 = v124 | v123;
  v126 = 0x10000;
  if ((v121 & 1) == 0)
  {
    v126 = 0;
  }

  v127 = &v28[v276];
  v127[4] = (v122 & 1) != 0;
  *v127 = v125 | v126;
  v128 = &v106[v107[8]];
  if (*(v128 + 1))
  {
    v129 = *v128;
    v130 = sub_217752DC8();
    if (v130 == 1)
    {
      v131 = 1;
    }

    else
    {
      v131 = 2;
    }

    if (!v130)
    {
      v131 = 0;
    }

    v28[v265] = v131;
  }

  v132 = &v304[v303[9]];
  if ((v132[1] & 1) == 0)
  {
    v133 = *v132 / 1000.0;
    v134 = v264;
    *v264 = v133;
    *(v134 + 8) = 0;
  }

  v136 = v303;
  v135 = v304;
  *&v28[v302[13]] = *&v304[v303[10]];
  v137 = &v135[v136[11]];
  v138 = *(v137 + 8);
  v297 = v28;
  if (v138)
  {
    v139 = *(v137 + 7);
    v275 = *(v137 + 6);
    v276 = v139;
    v140 = *(v137 + 4);
    v141 = *(v137 + 5);
    v142 = *(v137 + 3);
    v272 = *(v137 + 2);
    v273 = v140;
    v143 = *(v137 + 1);
    v271 = *v137;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v274 = v141;
    sub_217751DE8();
  }

  else
  {
    v271 = 0;
    v272 = 0;
    v142 = 0;
    v273 = 0;
    v274 = 0;
    v275 = 0;
    v276 = 0;
    v143 = 1;
  }

  v144 = v302;
  v146 = v302[15];
  v145 = v302[16];
  v147 = v302[17];
  v148 = v302[18];
  v149 = v277;
  v150 = *(v277 + 1);
  v320[0] = *v277;
  v320[1] = v150;
  v151 = *(v277 + 3);
  v320[2] = *(v277 + 2);
  v320[3] = v151;
  sub_217751DE8();
  sub_2171F0738(v320, &qword_27CB24B70, &unk_217759460);
  v152 = v272;
  *v149 = v271;
  *(v149 + 1) = v143;
  *(v149 + 2) = v152;
  *(v149 + 3) = v142;
  v153 = v274;
  *(v149 + 4) = v273;
  *(v149 + 5) = v153;
  v154 = v276;
  *(v149 + 6) = v275;
  *(v149 + 7) = v154;
  v156 = v303;
  v155 = v304;
  v157 = v297;
  *&v297[v146] = *&v304[v303[12]];
  *&v157[v145] = *&v155[v156[13]];
  v158 = v144;
  v159 = v157;
  v157[v147] = v155[v156[14]];
  v157[v148] = v155[v156[15]];
  v160 = v156[16];
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v155[v160], v159 + v278, &unk_27CB277C0, &qword_217758DC0);
  v161 = v305;
  v162 = *(v305 + 1);
  sub_21735D8AC();
  v163 = v162 != 0;
  v165 = (v159 + v158[22]);
  v166 = v158[26];
  *(v159 + v158[38]) = (v164 | v163) & 1;
  v167 = &v155[v156[17]];
  v168 = *(v167 + 1);
  *v165 = *v167;
  v165[1] = v168;
  v169 = v279;
  v171 = *v279;
  v170 = v279[1];
  v172 = v279[2];
  sub_217751DE8();
  sub_21733B290(v171, v170, v172);
  *v169 = 131586;
  v173 = v280;
  *v280 = 0;
  v173[1] = 0;
  *(v159 + v166) = *&v155[v156[19]];
  memcpy(v318, v161, sizeof(v318));
  memcpy(v319, v281, sizeof(v319));
  memcpy(v281, v161, 0x78uLL);
  sub_21726A630(v318, v328, &qword_27CB244D0, &unk_21775D620);
  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB244D0, &unk_21775D620);
  v174 = *&v155[v156[21]];
  if (v174)
  {
    v175 = *(v174 + 16);
    v176 = MEMORY[0x277D84F90];
    v177 = v309;
    if (v175)
    {
      v317 = MEMORY[0x277D84F90];
      sub_217276450();
      v176 = v317;
      v178 = v174 + ((*(v263 + 80) + 32) & ~*(v263 + 80));
      v305 = *(v263 + 72);
      do
      {
        v179 = v310;
        sub_21726A630(v178, v310, &qword_27CB24A68, &qword_217759030);
        memcpy(v315, v179, 0x1B8uLL);
        memcpy(v316, v179, 0x1B8uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v316) == 1)
        {
          v180 = v326;
        }

        else
        {
          memcpy(v328, v316, 0x1B8uLL);
          memcpy(v311, v315, sizeof(v311));
          sub_21726A630(v311, v314, &qword_27CB243F0, &qword_21775D690);
          CloudAttribute<A>.convertToArtwork()(v313);
          memcpy(v312, v328, sizeof(v312));
          sub_2171F0738(v312, &qword_27CB243F0, &qword_21775D690);
          memcpy(v314, v313, 0x221uLL);
          nullsub_1(v314, v181);
          v180 = v314;
        }

        memcpy(v328, v180, 0x221uLL);
        v182 = type metadata accessor for CloudPreviewAsset();
        v184 = v307;
        v183 = v308;
        v185 = v310;
        sub_21726A630(&v310[*(v182 + 20)], &v308[*(v307 + 20)], &unk_27CB277C0, &qword_217758DC0);
        sub_21726A630(v185 + *(v182 + 24), v183 + *(v184 + 24), &unk_27CB277C0, &qword_217758DC0);
        sub_2171F0738(v185, &qword_27CB24A68, &qword_217759030);
        memcpy(v183, v328, 0x221uLL);
        v317 = v176;
        v186 = *(v176 + 16);
        if (v186 >= *(v176 + 24) >> 1)
        {
          sub_217276450();
          v176 = v317;
        }

        *(v176 + 16) = v186 + 1;
        v187 = v176 + ((*(v306 + 80) + 32) & ~*(v306 + 80)) + *(v306 + 72) * v186;
        sub_21733CE30();
        v178 += v305;
        --v175;
        v177 = v309;
      }

      while (v175);
      v159 = v297;
      v188 = v302;
    }

    else
    {
      v188 = v302;
    }

    v189 = v294;
  }

  else
  {
    v176 = 0;
    v189 = v294;
    v177 = v309;
    v188 = v302;
  }

  *(v159 + v188[28]) = v176;
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v190 = type metadata accessor for CloudFormatter();
  v191 = __swift_project_value_buffer(v190, qword_280BE8918);
  v192 = &v304[v303[22]];
  v193 = *v192;
  v194 = *(v192 + 1);
  v195 = v299;
  __swift_storeEnumTagSinglePayload(v177, 1, 1, v299);
  if (v194)
  {
    v196 = *(v191 + *(v190 + 20));
    v197 = sub_217751F18();
    v198 = [v196 dateFromString_];

    if (v198)
    {
      v199 = v267;
      sub_2177517C8();

      v200 = 0;
      v201 = v301;
    }

    else
    {
      v200 = 1;
      v201 = v301;
      v199 = v267;
    }

    sub_2171F0738(v177, &qword_27CB241C0, &qword_217759480);
    __swift_storeEnumTagSinglePayload(v199, v200, 1, v299);
    sub_21726A594(v199, v177, &qword_27CB241C0, &qword_217759480);
    v202 = v288;
    sub_21726A594(v177, v288, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    sub_2171F0738(v177, &qword_27CB241C0, &qword_217759480);
    v202 = v288;
    __swift_storeEnumTagSinglePayload(v288, 1, 1, v195);
    v201 = v301;
  }

  v203 = (v159 + v188[31]);
  v204 = v159 + v188[32];
  sub_21733BBDC(v202, v159 + v282, &qword_27CB241C0, &qword_217759480);
  v206 = v303;
  v205 = v304;
  v207 = &v304[v303[18]];
  v208 = *(v207 + 1);
  *v203 = *v207;
  v203[1] = v208;
  v209 = &v205[v206[23]];
  v210 = *v209;
  LOBYTE(v209) = v209[8];
  *v204 = v210;
  *(v204 + 8) = v209;
  v211 = v206[24];
  sub_217751DE8();
  sub_21733B95C(&v205[v211], v159 + v283, &unk_27CB277C0, &qword_217758DC0);
  v212 = &v205[v206[25]];
  v213 = v298;
  if (*(v212 + 1))
  {
    v214 = *v212;
    v215 = *(v212 + 1);
    sub_217751DE8();
    v216 = sub_217752DC8();

    *(v159 + v266) = v216 == 0;
  }

  v217 = (v159 + v188[34]);
  v218 = &v304[v303[26]];
  v219 = *(v218 + 1);
  *v217 = *v218;
  v217[1] = v219;
  v220 = v300;
  sub_21726A630(v201 + v300, v328, &qword_27CB243A8, &unk_217777720);
  v221 = v189;
  if (v328[2] == 1)
  {
    sub_217751DE8();
    sub_2171F0738(v328, &qword_27CB243A8, &unk_217777720);
    v222 = v296;
  }

  else
  {
    sub_21726A630(v328, v314, &qword_27CB24270, &unk_21775D640);
    sub_217751DE8();
    sub_21726A3FC(v328);
    v222 = v296;
    if (v314[2])
    {
      memset(v316, 0, 40);
      sub_2172E94A8();
      sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v314, &qword_27CB24278, &unk_217759070);
      goto LABEL_76;
    }

    sub_2171F0738(v314, &qword_27CB24270, &unk_21775D640);
  }

  memset(v313, 0, 104);
LABEL_76:
  sub_21733BBDC(v313, v284, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v201 + v220, v328, &qword_27CB243A8, &unk_217777720);
  if (v328[2] == 1)
  {
    v223 = &qword_27CB243A8;
    v224 = &unk_217777720;
    v225 = v328;
  }

  else
  {
    sub_21726A630(&v328[16], v314, &qword_27CB24280, &unk_21775D680);
    sub_21726A3FC(v328);
    if (v314[2])
    {
      memset(v316, 0, 40);
      sub_2172E96D8();
      sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v314, &qword_27CB24288, &qword_217758F80);
      goto LABEL_82;
    }

    v223 = &qword_27CB24280;
    v224 = &unk_21775D680;
    v225 = v314;
  }

  sub_2171F0738(v225, v223, v224);
  memset(v313, 0, 104);
LABEL_82:
  sub_21733BBDC(v313, v285, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v201 + v220, v328, &qword_27CB243A8, &unk_217777720);
  if (v328[2] == 1)
  {
    v226 = &qword_27CB243A8;
    v227 = &unk_217777720;
    v228 = v328;
  }

  else
  {
    sub_21726A630(&v328[32], v314, &qword_27CB242B0, &unk_21775D630);
    sub_21726A3FC(v328);
    if (v314[2])
    {
      memset(v316, 0, 40);
      sub_2172E97B8();
      sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v314, &qword_27CB242B8, &unk_21777EEA0);
      goto LABEL_88;
    }

    v226 = &qword_27CB242B0;
    v227 = &unk_21775D630;
    v228 = v314;
  }

  sub_2171F0738(v228, v226, v227);
  memset(v313, 0, 104);
LABEL_88:
  sub_21733BBDC(v313, v286, &qword_27CB25338, &unk_21775D3E0);
  sub_21726A630(v201 + v220, v328, &qword_27CB243A8, &unk_217777720);
  if (v328[2] == 1)
  {
    v229 = &qword_27CB243A8;
    v230 = &unk_217777720;
    v231 = v328;
  }

  else
  {
    sub_21726A630(&v328[48], v314, &qword_27CB243B0, &unk_21775D670);
    sub_21726A3FC(v328);
    if (v314[2])
    {
      memset(v316, 0, 40);
      sub_2172E9588(v222, v221, v316, v313);
      sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v314, &qword_27CB243B8, &qword_2177586B0);
      goto LABEL_94;
    }

    v229 = &qword_27CB243B0;
    v230 = &unk_21775D670;
    v231 = v314;
  }

  sub_2171F0738(v231, v229, v230);
  memset(v313, 0, 104);
LABEL_94:
  sub_21733BBDC(v313, v287, &qword_27CB25320, &unk_21776E020);
  sub_21726A630(v201 + v220, v328, &qword_27CB243A8, &unk_217777720);
  if (v328[2] == 1)
  {
    v232 = &qword_27CB243A8;
    v233 = &unk_217777720;
    v234 = v328;
  }

  else
  {
    sub_21726A630(&v328[64], v314, &qword_27CB242B0, &unk_21775D630);
    sub_21726A3FC(v328);
    if (v314[2])
    {
      memset(v316, 0, 40);
      sub_2172E97B8();
      sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v314, &qword_27CB242B8, &unk_21777EEA0);
      goto LABEL_100;
    }

    v232 = &qword_27CB242B0;
    v233 = &unk_21775D630;
    v234 = v314;
  }

  sub_2171F0738(v234, v232, v233);
  memset(v313, 0, 104);
LABEL_100:
  sub_21733BBDC(v313, v289, &qword_27CB25338, &unk_21775D3E0);
  sub_21726A630(v201 + v220, v328, &qword_27CB243A8, &unk_217777720);
  if (v328[2] == 1)
  {
    sub_2171F0738(v328, &qword_27CB243A8, &unk_217777720);
LABEL_106:
    memset(v313, 0, 104);
    goto LABEL_120;
  }

  sub_21726A630(&v329, v314, &qword_27CB242E0, &unk_21777EEE0);
  v235 = sub_21726A3FC(v328);
  v237 = v314[2];
  if (!v314[2])
  {
    sub_2171F0738(v314, &qword_27CB242E0, &unk_21777EEE0);
    v213 = v298;
    goto LABEL_106;
  }

  memset(v316, 0, 40);
  MEMORY[0x28223BE20](v235, v236);
  v260[-2] = v221;
  v260[-1] = v222;
  sub_217751DE8();
  v238 = sub_2172E4A28(sub_21733CF30, &v260[-4], v237, sub_2172761F8, &qword_27CB24748, &unk_217758CD0);

  sub_21726A630(v316, v312, &qword_27CB24188, &dword_217758930);
  if (*&v312[24])
  {
    sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
    v315[0] = *v312;
    v315[1] = *&v312[16];
    *&v315[2] = *&v312[32];
  }

  else
  {
    memset(v311, 0, 40);
    v239 = v314[8];
    if (v314[8])
    {
      v240 = v314[7];
      sub_2172CA838(v222, &v313[16]);
      *v313 = v240;
      *&v313[8] = v239;
      v241 = swift_allocObject();
      v242 = *&v313[16];
      *(v241 + 16) = *v313;
      *(v241 + 32) = v242;
      *(v241 + 48) = *&v313[32];
      *(v241 + 64) = *&v313[48];
      sub_217751DE8();
      sub_2171F0738(v311, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
      *v311 = v241;
      *&v311[24] = &type metadata for MusicCatalogResourceIncrementalLoader;
      *&v311[32] = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
    }

    v315[0] = *v311;
    v315[1] = *&v311[16];
    *&v315[2] = *&v311[32];
    if (*&v312[24])
    {
      sub_2171F0738(v312, &qword_27CB24188, &dword_217758930);
    }
  }

  if (v314[1] == 1)
  {
    v243 = 0;
  }

  else
  {
    v243 = v314[0];
  }

  if (v314[1] == 1)
  {
    v244 = 0;
  }

  else
  {
    v244 = v314[1];
  }

  *v313 = v238;
  v313[8] = 0;
  *&v313[16] = v315[0];
  *&v313[32] = v315[1];
  *&v313[48] = *&v315[2];
  *&v313[56] = v243;
  *&v313[64] = v244;
  *&v313[72] = v314[3];
  *&v313[80] = v314[4];
  *&v313[88] = v314[14];
  *&v313[96] = v314[15];
  sub_2171FB568(v314[0], v314[1]);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v314, &qword_27CB242E8, &unk_21775D6B0);
  v201 = v301;
  v213 = v298;
LABEL_120:
  sub_21733BBDC(v313, v290, &qword_27CB255A8, &unk_21775D450);
  v245 = *(v213 + 28);
  sub_21726A630(v201 + v245, v328, &qword_27CB24A90, &unk_21775D5B0);
  if (v328[2] == 1)
  {
    v246 = &qword_27CB24A90;
    v247 = &unk_21775D5B0;
    v248 = v328;
  }

  else
  {
    sub_21726A630(v328, v314, &qword_27CB242B0, &unk_21775D630);
    sub_2172844EC(v328);
    if (v314[2])
    {
      memset(v316, 0, 40);
      sub_2172E97B8();
      sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v314, &qword_27CB242B8, &unk_21777EEA0);
      goto LABEL_126;
    }

    v246 = &qword_27CB242B0;
    v247 = &unk_21775D630;
    v248 = v314;
  }

  sub_2171F0738(v248, v246, v247);
  memset(v313, 0, 104);
LABEL_126:
  sub_21733BBDC(v313, v291, &qword_27CB25338, &unk_21775D3E0);
  sub_21726A630(v201 + v245, v328, &qword_27CB24A90, &unk_21775D5B0);
  if (v328[2] == 1)
  {
    v249 = &qword_27CB24A90;
    v250 = &unk_21775D5B0;
    v251 = v328;
  }

  else
  {
    sub_21726A630(&v328[16], v314, &qword_27CB242B0, &unk_21775D630);
    sub_2172844EC(v328);
    if (v314[2])
    {
      memset(v316, 0, 40);
      sub_2172E97B8();
      sub_2171F0738(v316, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v314, &qword_27CB242B8, &unk_21777EEA0);
      goto LABEL_132;
    }

    v249 = &qword_27CB242B0;
    v250 = &unk_21775D630;
    v251 = v314;
  }

  sub_2171F0738(v251, v249, v250);
  memset(v313, 0, 104);
LABEL_132:
  sub_21733BBDC(v313, v292, &qword_27CB25338, &unk_21775D3E0);
  v252 = v201 + *(v213 + 32);
  v253 = *(v252 + 24);
  if (v253 == 1)
  {
    v253 = 0;
    *(v159 + v188[57]) = 0;
    v254 = v159 + v188[58];
    *v254 = 0;
    *(v254 + 8) = 1;
  }

  else
  {
    if (*v252 == 1)
    {
      v255 = 0;
    }

    else
    {
      v255 = sub_217751DE8();
    }

    *(v159 + v188[57]) = v255;
    v256 = *(v252 + 16);
    v257 = v159 + v188[58];
    *v257 = *(v252 + 8);
    *(v257 + 8) = v256;
    sub_217751DE8();
  }

  *(v159 + v188[59]) = v253;
  v328[3] = v188;
  v328[4] = &protocol witness table for MusicVideoPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v328);
  sub_21733CAD0();
  MusicVideo.init(propertyProvider:)(v328, v293);

  sub_2171F0738(v295, &qword_27CB24808, &qword_217758D90);
  sub_21733AB9C(v222);
  sub_21733CA78(v159, type metadata accessor for MusicVideoPropertyProvider);
  return sub_21733CA78(v201, type metadata accessor for CloudMusicVideo);
}

uint64_t sub_2172F34C8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v357 = v4;
  v6 = v5;
  v358 = type metadata accessor for CloudMusicVideo(0);
  v7 = *(*(v358 - 8) + 64);
  MEMORY[0x28223BE20](v358, v8);
  v10 = &v320 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_2177517D8();
  v323 = *(v355 - 8);
  v11 = *(v323 + 64);
  MEMORY[0x28223BE20](v355, v12);
  v322 = &v320 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v353 = &v320 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v320 - v20;
  v367 = type metadata accessor for CloudPreviewAsset();
  v22 = *(*(v367 - 8) + 64);
  MEMORY[0x28223BE20](v367, v23);
  v363 = &v320 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = type metadata accessor for PreviewAsset();
  v368 = *(v366 - 8);
  v25 = *(v368 + 64);
  MEMORY[0x28223BE20](v366, v26);
  v28 = &v320 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  v364 = *(v29 - 8);
  v365 = v29;
  v30 = *(v364 + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v320 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v360 = &v320 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v320 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v359 = &v320 - v44;
  v356 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v45 = *(*(v356 - 8) + 64);
  MEMORY[0x28223BE20](v356, v46);
  v361 = &v320 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6B38 != -1)
  {
    swift_once();
  }

  *&result = COERCE_DOUBLE(sub_2172A4330());
  v354 = v49;
  if ((v49 & 1) == 0)
  {
    v56 = *&result * 1000.0;
    if (COERCE__INT64(fabs(*&result * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v56 > -9.22337204e18)
    {
      if (v56 < 9.22337204e18)
      {
        v349 = v56;
        goto LABEL_9;
      }

LABEL_165:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_165;
  }

  v349 = 0;
LABEL_9:
  if (qword_280BE6B20 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02240, v49, v50, v51, v52, v53, v54, v55, v320, v321, v322, v323, v324, v325, SWORD2(v325), SBYTE6(v325), SHIBYTE(v325), v326, v327, v328, v329, v330, v331, v332, v333);
  v348 = v64;
  if (qword_280BE6B50 != -1)
  {
    swift_once();
  }

  sub_2176CA83C(qword_280C02258, v57, v58, v59, v60, v61, v62, v63, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
  memcpy(v392, v391, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v392) == 1)
  {
    sub_2172E22C0(v390);
  }

  else
  {
    memcpy(v375, v392, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v371);
    memcpy(v384, v375, 0x221uLL);
    sub_217284084(v384);
    memcpy(v375, v371, 0x1B8uLL);
    nullsub_1(v375, v65);
    memcpy(v390, v375, sizeof(v390));
  }

  if (qword_280BE6DA8 != -1)
  {
    swift_once();
  }

  v351 = v10;
  v352 = v6;
  v66 = sub_2172A4204();
  v346 = v67;
  v347 = v66;
  if (qword_280BE6DA0 != -1)
  {
    swift_once();
  }

  v68 = sub_2172A4204();
  if (v69)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0;
  }

  v71 = 0xE000000000000000;
  if (v69)
  {
    v71 = v69;
  }

  v344 = v71;
  v345 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  swift_allocObject();
  v72 = sub_2172E3DC0(0x7255747369747261, 0xE90000000000006CLL);
  sub_2176CA63C(v72, v73, v74, v75, v76, v77, v78, v79, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);

  if (qword_280BE6D00 != -1)
  {
    swift_once();
  }

  sub_2176CA688(qword_280C02330, v80, v81, v82, v83, v84, v85, v86, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339);
  if (LOBYTE(v384[0]) == 2)
  {
    v342 = 0;
    v343 = 0;
  }

  else
  {
    if (v384[0])
    {
      v87 = 0x746963696C707865;
    }

    else
    {
      v87 = 0x6E61656C63;
    }

    v88 = 0xE500000000000000;
    if (v384[0])
    {
      v88 = 0xE800000000000000;
    }

    v342 = v88;
    v343 = v87;
  }

  if (qword_280BE6C60 != -1)
  {
    swift_once();
  }

  v341 = sub_2172A4668(qword_280C022C8);
  if (qword_280BE6CD8 != -1)
  {
    swift_once();
  }

  sub_2176CA67C(qword_280C02318, v89, v90, v91, v92, v93, v94, v95, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
  v386 = v384[0];
  v387 = v384[1];
  v388 = v384[2];
  v389 = v384[3];
  v96 = *(&v384[0] + 1);
  if (*(&v384[0] + 1) == 1)
  {
    v334 = 0;
    v335 = 0;
    v96 = 0;
    v336 = 0;
    v337 = 0;
    v338 = 0;
    v339 = 0uLL;
    v333 = 0;
  }

  else
  {
    v339 = v389;
    v97 = *(&v388 + 1);
    v337 = v388;
    v98 = *(&v387 + 1);
    v334 = v386;
    v335 = v387;
    sub_217751DE8();
    sub_217751DE8();
    v336 = v98;
    sub_217751DE8();
    v338 = v97;
    sub_217751DE8();
    v333 = sub_217751DC8();
    sub_2171F0738(&v386, &qword_27CB24B70, &unk_217759460);
  }

  v99 = v33;
  v340 = v96;
  if (qword_280BE6DC0 != -1)
  {
    swift_once();
  }

  v332 = sub_2172A464C(qword_280C023A0);
  if (qword_280BE6D98 != -1)
  {
    swift_once();
  }

  v330 = sub_2172A4238(qword_280C02380);
  if (qword_280BE6BF0 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02280, v100, v101, v102, v103, v104, v105, v106, v320, v321, v322, v323, v324, v325, SWORD2(v325), SBYTE6(v325), SHIBYTE(v325), v326, v327, v328, v329, v330, v331, v332, v333);
  HIDWORD(v331) = v114;
  if (qword_280BE6B88 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02270, v107, v108, v109, v110, v111, v112, v113, v320, v321, v322, v323, v324, v325, SWORD2(v325), SBYTE6(v325), SHIBYTE(v325), v326, v327, v328, v329, v330, v331, v332, v333);
  LODWORD(v331) = v122;
  if (qword_280BE6D08 != -1)
  {
    swift_once();
  }

  sub_2176CA63C(qword_280C02338, v115, v116, v117, v118, v119, v120, v121, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  if (qword_280BE6BF8 != -1)
  {
    swift_once();
  }

  v123 = sub_2172A4204();
  v328 = v124;
  v329 = v123;
  if (qword_280BE6BC8 != -1)
  {
    swift_once();
  }

  v125 = sub_2172A4204();
  if (v126)
  {
    v127 = v125;
  }

  else
  {
    v127 = 0;
  }

  v128 = 0xE000000000000000;
  if (v126)
  {
    v128 = v126;
  }

  v326 = v128;
  v327 = v127;
  if (qword_280BE6B70 != -1)
  {
    swift_once();
  }

  v325 = sub_2172A4630(qword_280C02260);
  if (qword_280BE6CA8 != -1)
  {
    swift_once();
  }

  sub_2176CAB9C(qword_280C022F8, v129, v130, v131, v132, v133, v134, v135, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
  if (qword_280BE6CF0 != -1)
  {
    swift_once();
  }

  v136 = sub_2172A4614(qword_280C02328);
  v350 = v41;
  if (v136)
  {
    v137 = *(v136 + 16);
    if (v137)
    {
      v324 = v21;
      v321 = v3;
      v374[0] = MEMORY[0x277D84F90];
      v138 = v136;
      sub_2172766B8(0, v137, 0);
      v139 = v374[0];
      v140 = *(v368 + 80);
      v320 = v138;
      v141 = v138 + ((v140 + 32) & ~v140);
      v362 = *(v368 + 72);
      v142 = v137 - 1;
      v143 = v363;
      while (1)
      {
        v144 = v99;
        v368 = v141;
        sub_21733CAD0();
        memcpy(v375, v28, 0x221uLL);
        memcpy(v384, v28, 0x221uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v384) == 1)
        {
          sub_2172E22C0(v373);
        }

        else
        {
          memcpy(v369, v384, 0x221uLL);
          memcpy(v370, v375, 0x221uLL);
          sub_217284028(v370, v371);
          Artwork.convertToCloudArtworkAttribute()(v372);
          memcpy(v371, v369, 0x221uLL);
          sub_217284084(v371);
          memcpy(v369, v372, 0x1B8uLL);
          nullsub_1(v369, v145);
          memcpy(v373, v369, 0x1B8uLL);
        }

        v147 = v366;
        v146 = v367;
        sub_21726A630(&v28[*(v366 + 20)], v143 + *(v367 + 20), &unk_27CB277C0, &qword_217758DC0);
        sub_21726A630(&v28[*(v147 + 24)], v143 + *(v146 + 24), &unk_27CB277C0, &qword_217758DC0);
        memcpy(v143, v373, 0x1B8uLL);
        sub_21733CAD0();
        v148 = sub_217751DC8();
        sub_21733CA78(v143, type metadata accessor for CloudPreviewAsset);
        sub_21733CA78(v28, type metadata accessor for PreviewAsset);
        *&v99[*(v365 + 28)] = v148;
        v374[0] = v139;
        v149 = *(v139 + 16);
        v150 = *(v139 + 24);
        if (v149 >= v150 >> 1)
        {
          sub_2172766B8(v150 > 1, v149 + 1, 1);
          v139 = v374[0];
        }

        *(v139 + 16) = v149 + 1;
        sub_21726A594(v144, v139 + ((*(v364 + 80) + 32) & ~*(v364 + 80)) + *(v364 + 72) * v149, &qword_27CB24A68, &qword_217759030);
        if (!v142)
        {
          break;
        }

        v99 = v144;
        --v142;
        v141 = v368 + v362;
      }

      v3 = v321;
      v21 = v324;
    }

    else
    {

      v139 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v139 = 0;
  }

  v151 = v355;
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v152 = type metadata accessor for CloudFormatter();
  v160 = __swift_project_value_buffer(v152, qword_280BE8918);
  if (qword_280BE6D58 != -1)
  {
    swift_once();
  }

  sub_2176CA65C(qword_280C02360, v153, v154, v155, v156, v157, v158, v159, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  v161 = v353;
  sub_21726A630(v21, v353, &qword_27CB241C0, &qword_217759480);
  if (__swift_getEnumTagSinglePayload(v161, 1, v151) == 1)
  {
    sub_2171F0738(v21, &qword_27CB241C0, &qword_217759480);
    sub_2171F0738(v161, &qword_27CB241C0, &qword_217759480);
    v367 = 0;
    v368 = 0;
  }

  else
  {
    v162 = v323;
    v163 = *(v323 + 32);
    v324 = v21;
    v164 = v322;
    v163(v322, v161, v151);
    v165 = *(v160 + *(v152 + 20));
    v166 = sub_2177517A8();
    v167 = [v165 stringFromDate_];

    v168 = sub_217751F48();
    v367 = v169;
    v368 = v168;

    (*(v162 + 8))(v164, v151);
    sub_2171F0738(v324, &qword_27CB241C0, &qword_217759480);
  }

  if (qword_280BE6D50 != -1)
  {
    swift_once();
  }

  v366 = sub_2172A4218();
  LODWORD(v365) = v170;
  if (qword_280BE6C08 != -1)
  {
    swift_once();
  }

  sub_2176CA63C(qword_280C02290, v170, v171, v172, v173, v174, v175, v176, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  if (v348)
  {
    v177 = 0x77656976657270;
  }

  else
  {
    v177 = 0;
  }

  v178 = 0xE700000000000000;
  if ((v348 & 1) == 0)
  {
    v178 = 0;
  }

  v363 = v178;
  v364 = v177;
  if (qword_280BE6B30 != -1)
  {
    swift_once();
  }

  v179 = sub_2172A4204();
  v180 = v3;
  v182 = v181;
  if (v330)
  {
    v183 = v330;
  }

  else
  {
    v183 = MEMORY[0x277D84F90];
  }

  v184 = v361;
  memcpy(v361, v390, 0x1B8uLL);
  v185 = v346;
  v184[55] = v347;
  v184[56] = v185;
  v186 = v344;
  v184[57] = v345;
  v184[58] = v186;
  v187 = v356;
  sub_21726A594(v359, v184 + *(v356 + 28), &unk_27CB277C0, &qword_217758DC0);
  v188 = (v184 + v187[8]);
  v189 = v342;
  *v188 = v343;
  v188[1] = v189;
  v190 = v184 + v187[9];
  *v190 = v349;
  v190[8] = v354 & 1;
  *(v184 + v187[10]) = v341;
  v191 = (v184 + v187[11]);
  v192 = v340;
  *v191 = v334;
  v191[1] = v192;
  v193 = v336;
  v191[2] = v335;
  v191[3] = v193;
  v194 = v338;
  v191[4] = v337;
  v191[5] = v194;
  v195 = *(&v339 + 1);
  v191[6] = v339;
  v191[7] = v195;
  v196 = v332;
  v191[8] = v333;
  *(v184 + v187[12]) = v196;
  *(v184 + v187[13]) = v183;
  LOBYTE(v196) = v331;
  *(v184 + v187[14]) = BYTE4(v331);
  *(v184 + v187[15]) = v196;
  sub_21726A594(v350, v184 + v187[16], &unk_27CB277C0, &qword_217758DC0);
  v197 = (v184 + v187[17]);
  v198 = v328;
  *v197 = v329;
  v197[1] = v198;
  v199 = (v184 + v187[18]);
  v200 = v326;
  *v199 = v327;
  v199[1] = v200;
  *(v184 + v187[19]) = v325;
  memcpy(v184 + v187[20], v385, 0x78uLL);
  *(v184 + v187[21]) = v139;
  v201 = (v184 + v187[22]);
  v202 = v367;
  *v201 = v368;
  v201[1] = v202;
  v203 = v184 + v187[23];
  *v203 = v366;
  v203[8] = v365 & 1;
  sub_21726A594(v360, v184 + v187[24], &unk_27CB277C0, &qword_217758DC0);
  v204 = (v184 + v187[25]);
  v205 = v363;
  *v204 = v364;
  v204[1] = v205;
  v206 = (v184 + v187[26]);
  *v206 = v179;
  v206[1] = v182;
  v384[0] = 0uLL;
  *&v384[1] = 1;
  bzero(&v384[1] + 8, 0x2E8uLL);
  if (qword_280BE6BB0 != -1)
  {
    swift_once();
  }

  sub_2176CA620(qword_280BE6BB8, v207, v208, v209, v210, v211, v212, v213, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  v221 = v180;
  v222 = v357;
  if (qword_280BE6B58 != -1)
  {
    swift_once();
  }

  sub_2176CA604(qword_280BE6B60, v214, v215, v216, v217, v218, v219, v220, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  if (qword_280BE6DB0 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280C02398, v223, v224, v225, v226, v227, v228, v229, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  if (qword_280BE6B98 != -1)
  {
    swift_once();
  }

  sub_2176CA5E8(qword_280BE6BA0, v230, v231, v232, v233, v234, v235, v236, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  if (qword_280BE6B40 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280BE6B48, v237, v238, v239, v240, v241, v242, v243, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  if (qword_280BE6BD8 != -1)
  {
    swift_once();
  }

  sub_2176CA5CC(qword_280BE6BE0, v244, v245, v246, v247, v248, v249, v250, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  if (v383[11] || v382[11] || v381[11] || v380[11] || v379[11] || v378[11])
  {
    sub_21726A630(v383, v375, &qword_27CB25318, &qword_2177657C0);
    if (v375[11])
    {
      sub_2172EBBF4(v371, v222, 0);
      sub_2171F0738(v375, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v375, &qword_27CB25318, &qword_2177657C0);
      memset(v371, 0, 128);
    }

    sub_21726A630(v382, v375, &qword_27CB25310, &unk_21775D3D0);
    if (v375[11])
    {
      sub_2172EBD40(v370, v222, 0);
      sub_2171F0738(v375, &qword_27CB25398, &unk_21776C4F0);
    }

    else
    {
      sub_2171F0738(v375, &qword_27CB25310, &unk_21775D3D0);
      memset(v370, 0, 128);
    }

    sub_21726A630(v381, v375, &qword_27CB25338, &unk_21775D3E0);
    if (v375[11])
    {
      sub_2172EC0A8(v369, v222, 0);
      sub_2171F0738(v375, &qword_27CB25380, &unk_21775DAA0);
    }

    else
    {
      sub_2171F0738(v375, &qword_27CB25338, &unk_21775D3E0);
      memset(v369, 0, 128);
    }

    sub_21726A630(v380, v375, &qword_27CB25320, &unk_21776E020);
    if (v375[11])
    {
      sub_2172EBE8C(0, v373);
      sub_2171F0738(v375, &qword_27CB27C80, &unk_21775D420);
    }

    else
    {
      sub_2171F0738(v375, &qword_27CB25320, &unk_21776E020);
      memset(v373, 0, 128);
    }

    sub_21726A630(v379, v375, &qword_27CB25338, &unk_21775D3E0);
    if (v375[11])
    {
      sub_2172EC0A8(v372, v222, 0);
      sub_2171F0738(v375, &qword_27CB25380, &unk_21775DAA0);
    }

    else
    {
      sub_2171F0738(v375, &qword_27CB25338, &unk_21775D3E0);
      memset(v372, 0, 128);
    }

    sub_21726A630(v378, v375, &qword_27CB255A8, &unk_21775D450);
    if (v375[11])
    {
      sub_2172EC48C();
      sub_2171F0738(v384, &qword_27CB243A8, &unk_217777720);
      sub_2171F0738(v375, &qword_27CB27820, &qword_21775DAB0);
    }

    else
    {
      sub_2171F0738(v384, &qword_27CB243A8, &unk_217777720);
      sub_2171F0738(v375, &qword_27CB255A8, &unk_21775D450);
      memset(v374, 0, sizeof(v374));
    }

    memcpy(v375, v371, 0x80uLL);
    memcpy(&v375[16], v370, 0x80uLL);
    memcpy(&v375[32], v369, 0x80uLL);
    memcpy(&v375[48], v373, 0x80uLL);
    memcpy(&v375[64], v372, 0x80uLL);
    memcpy(&v375[80], v374, 0x80uLL);
    memcpy(v384, v375, sizeof(v384));
  }

  v369[0] = 0uLL;
  *&v369[1] = 1;
  bzero(&v369[1] + 8, 0xE8uLL);
  if (qword_280BE6D20 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280BE6D28, v251, v252, v253, v254, v255, v256, v257, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  if (qword_280BE6D68 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280BE6D70, v258, v259, v260, v261, v262, v263, v264, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, *(&v339 + 1), v340);
  if (v373[11] | v372[11])
  {
    sub_21726A630(v373, v375, &qword_27CB25338, &unk_21775D3E0);
    if (v375[11])
    {
      sub_2172EC0A8(v371, v222, 0);
      sub_2171F0738(v375, &qword_27CB25380, &unk_21775DAA0);
    }

    else
    {
      sub_2171F0738(v375, &qword_27CB25338, &unk_21775D3E0);
      memset(v371, 0, 128);
    }

    sub_21726A630(v372, v375, &qword_27CB25338, &unk_21775D3E0);
    if (v375[11])
    {
      sub_2172EC0A8(v370, v222, 0);
      sub_2171F0738(v369, &qword_27CB24A90, &unk_21775D5B0);
      sub_2171F0738(v375, &qword_27CB25380, &unk_21775DAA0);
    }

    else
    {
      sub_2171F0738(v369, &qword_27CB24A90, &unk_21775D5B0);
      sub_2171F0738(v375, &qword_27CB25338, &unk_21775D3E0);
      memset(v370, 0, 128);
    }

    memcpy(v375, v371, 0x80uLL);
    memcpy(&v375[16], v370, 0x80uLL);
    memcpy(v369, v375, 0x100uLL);
  }

  if (qword_280BE6C20 != -1)
  {
    swift_once();
  }

  v265 = sub_2172A45F8(qword_280C022A0);
  if (qword_280BE6D90 != -1)
  {
    swift_once();
  }

  v266 = sub_2172A4330();
  v268 = v267;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
  swift_allocObject();
  v269 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  v270 = sub_2172A45DC(v269);

  if (v265 <= 1)
  {
    v271 = 1;
  }

  else
  {
    v271 = v265;
  }

  if (v265 || (v268 & 1) == 0 || (v271 = 1, v270))
  {
    v272 = v268 & 1;
  }

  else
  {
    v271 = 0;
    v266 = 0;
    v272 = 0;
    v270 = 1;
  }

  v274 = *v221;
  v273 = v221[1];
  v275 = v358;
  v276 = *(v358 + 20);
  v277 = v351;
  sub_21733CAD0();
  sub_21726A630(v384, v277 + v275[6], &qword_27CB243A8, &unk_217777720);
  sub_21726A630(v369, v277 + v275[7], &qword_27CB24A90, &unk_21775D5B0);
  *v277 = v274;
  v277[1] = v273;
  v278 = (v277 + v275[8]);
  *v278 = v271;
  v278[1] = v266;
  v278[2] = v272;
  v278[3] = v270;
  v279 = v221[5];
  v280 = v221[6];
  __swift_project_boxed_opaque_existential_1(v221 + 2, v279);
  v281 = *(v280 + 24);
  sub_217751DE8();
  v281(v370, v279, v280);
  nullsub_1(v370, v282);
  memcpy(v371, v370, 0x161uLL);
  v283 = v352;
  sub_21733CAD0();
  v284 = v221[5];
  v285 = v221[6];
  __swift_project_boxed_opaque_existential_1(v221 + 2, v284);
  (*(v285 + 96))(v375, v284, v285);
  v286 = v375[3];
  v287 = v375[4];
  __swift_project_boxed_opaque_existential_1(v375, v375[3]);
  (*(*(v287 + 8) + 48))(v376, v286);
  __swift_destroy_boxed_opaque_existential_1(v375);
  v367 = v376[1];
  v368 = v376[0];
  LODWORD(v366) = v377;
  v288 = v221[5];
  v289 = v221[6];
  __swift_project_boxed_opaque_existential_1(v221 + 2, v288);
  (*(v289 + 96))(v375, v288, v289);
  v290 = v375[3];
  v291 = v375[4];
  __swift_project_boxed_opaque_existential_1(v375, v375[3]);
  v292 = (*(*(v291 + 8) + 56))(v290);
  v364 = v293;
  v365 = v292;
  __swift_destroy_boxed_opaque_existential_1(v375);
  memcpy(v375, v371, 0x168uLL);
  memset(&v375[45], 0, 24);
  nullsub_1(v375, v294);
  v295 = v221[5];
  v296 = v221[6];
  __swift_project_boxed_opaque_existential_1(v221 + 2, v295);
  (*(v296 + 96))(v374, v295, v296);
  v297 = v374[3];
  v298 = v374[4];
  __swift_project_boxed_opaque_existential_1(v374, v374[3]);
  v299 = (*(*(v298 + 8) + 64))(v297);
  __swift_destroy_boxed_opaque_existential_1(v374);
  v300 = v221[5];
  v301 = v221[6];
  __swift_project_boxed_opaque_existential_1(v221 + 2, v300);
  (*(v301 + 96))(v374, v300, v301);
  v302 = v374[3];
  v303 = v374[4];
  __swift_project_boxed_opaque_existential_1(v374, v374[3]);
  v304 = (*(*(v303 + 8) + 72))(v302);
  __swift_destroy_boxed_opaque_existential_1(v374);
  v305 = v221[5];
  v306 = v221[6];
  __swift_project_boxed_opaque_existential_1(v221 + 2, v305);
  (*(v306 + 96))(v374, v305, v306);
  v307 = v374[3];
  v308 = v374[4];
  __swift_project_boxed_opaque_existential_1(v374, v374[3]);
  v309 = (*(*(v308 + 8) + 80))(v307);
  __swift_destroy_boxed_opaque_existential_1(v374);
  v310 = v221[5];
  v311 = v221[6];
  __swift_project_boxed_opaque_existential_1(v221 + 2, v310);
  (*(v311 + 96))(v374, v310, v311);
  v312 = v374[3];
  v313 = v374[4];
  __swift_project_boxed_opaque_existential_1(v374, v374[3]);
  v314 = (*(*(v313 + 8) + 88))(v312);
  sub_21733CA78(v277, type metadata accessor for CloudMusicVideo);
  sub_2171F0738(v369, &qword_27CB24A90, &unk_21775D5B0);
  sub_2171F0738(v384, &qword_27CB243A8, &unk_217777720);
  sub_21733CA78(v361, type metadata accessor for CloudMusicVideo.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v374);
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v316 = v283 + v315[9];
  v317 = v367;
  *v316 = v368;
  *(v316 + 8) = v317;
  *(v316 + 16) = v366;
  v318 = (v283 + v315[10]);
  v319 = v364;
  *v318 = v365;
  v318[1] = v319;
  memcpy((v283 + v315[11]), v375, 0x180uLL);
  *(v283 + v315[12]) = v299;
  *(v283 + v315[13]) = v304;
  *(v283 + v315[14]) = v309;
  *(v283 + v315[15]) = v314;
  sub_2171F0738(v373, &qword_27CB25338, &unk_21775D3E0);
  sub_2171F0738(v383, &qword_27CB25318, &qword_2177657C0);
  sub_2171F0738(v372, &qword_27CB25338, &unk_21775D3E0);
  sub_2171F0738(v378, &qword_27CB255A8, &unk_21775D450);
  sub_2171F0738(v379, &qword_27CB25338, &unk_21775D3E0);
  sub_2171F0738(v380, &qword_27CB25320, &unk_21776E020);
  sub_2171F0738(v381, &qword_27CB25338, &unk_21775D3E0);
  *&result = COERCE_DOUBLE(sub_2171F0738(v382, &qword_27CB25310, &unk_21775D3D0));
  return result;
}

uint64_t sub_2172F565C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v402 = v2;
  v399 = v3;
  v5 = v4;
  v395 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v383 = &v369 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256B8, &qword_21775D770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v379 = &v369 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v369 = (&v369 - v18);
  v403 = type metadata accessor for CloudPlaylist(0);
  v19 = *(*(v403 - 1) + 64);
  MEMORY[0x28223BE20](v403, v20);
  v371 = &v369 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v400 = &v369 - v24;
  v406 = 0;
  v25 = type metadata accessor for PlaylistPropertyProvider();
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v369 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6220 != -1)
  {
    swift_once();
  }

  memset(v430, 0, sizeof(v430));
  sub_2172DA9A0();
  memcpy(v432, v428, sizeof(v432));
  v404 = *(&v428[17] + 1);
  memcpy(v431, &v428[18], sizeof(v431));
  v30 = v15[10];
  v31 = (v5 + v15[9]);
  v32 = *v31;
  v33 = v31[1];
  v397 = v5;
  v398 = v32;
  LODWORD(v378) = *(v31 + 16);
  v34 = v5 + v30;
  v35 = *(v5 + v30);
  v36 = *(v34 + 8);
  v376 = v15;
  v377 = v35;
  v37 = *(v5 + v15[12]);
  v38 = *(v5 + v15[13]);
  v39 = v15[15];
  v40 = *(v5 + v15[14]);
  v41 = *(v5 + v39);
  v372 = v37;
  v373 = v41;
  sub_2172A497C(v433);
  memcpy(v29, v433, 0x221uLL);
  memcpy(v29 + 560, v433, 0x221uLL);
  sub_21733B8A4(v434);
  memcpy(v29 + 1112, v434, 0xE8uLL);
  *(v29 + 170) = 0;
  v29[1368] = 1;
  v405 = xmmword_2177586D0;
  *(v29 + 1384) = xmmword_2177586D0;
  v396 = v29 + 1384;
  *(v29 + 1400) = 0u;
  *(v29 + 1416) = 0u;
  *(v29 + 1432) = 0u;
  v29[1456] = 2;
  *(v29 + 1464) = 0u;
  *(v29 + 1480) = 0u;
  *(v29 + 187) = 0;
  *(v29 + 752) = 514;
  *(v29 + 1509) = 1282;
  v42 = v25[22];
  v43 = sub_2177517D8();
  v380 = v42;
  __swift_storeEnumTagSinglePayload(&v29[v42], 1, 1, v43);
  memcpy(&v29[v25[23]], v433, 0x221uLL);
  v381 = v25[25];
  memcpy(&v29[v381], v430, 0x78uLL);
  memcpy(&v29[v25[30]], v433, 0x221uLL);
  v44 = v25[32];
  v45 = sub_2177516D8();
  v382 = v44;
  v46 = &v29[v44];
  v47 = v33;
  v48 = v38;
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v45);
  v49 = &v29[v25[34]];
  *v49 = 0;
  *(v49 + 1) = 0;
  __swift_storeEnumTagSinglePayload(&v29[v25[35]], 1, 1, v43);
  v29[v25[36]] = 3;
  v29[v25[37]] = 2;
  v29[v25[38]] = 5;
  v29[v25[39]] = 7;
  v50 = &v29[v25[40]];
  *v50 = 0;
  v50[8] = 1;
  __swift_storeEnumTagSinglePayload(&v29[v25[41]], 1, 1, v43);
  __swift_storeEnumTagSinglePayload(&v29[v25[42]], 1, 1, v43);
  __swift_storeEnumTagSinglePayload(&v29[v25[43]], 1, 1, v43);
  v29[v25[44]] = 2;
  v29[v25[45]] = 2;
  v29[v25[46]] = 2;
  v29[v25[47]] = 2;
  v29[v25[48]] = 2;
  v51 = &v29[v25[49]];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  v52 = &v29[v25[50]];
  *v52 = 0;
  v52[8] = 1;
  v29[v25[51]] = 10;
  v53 = &v29[v25[52]];
  *(v53 + 96) = 0;
  *(v53 + 64) = 0u;
  *(v53 + 80) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v384 = v53;
  v54 = &v29[v25[53]];
  *(v54 + 96) = 0;
  *(v54 + 64) = 0u;
  *(v54 + 80) = 0u;
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0u;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  v385 = v54;
  v55 = &v29[v25[54]];
  *(v55 + 12) = 0;
  *(v55 + 4) = 0u;
  *(v55 + 5) = 0u;
  *(v55 + 2) = 0u;
  *(v55 + 3) = 0u;
  *v55 = 0u;
  *(v55 + 1) = 0u;
  v387 = v55;
  v56 = &v29[v25[55]];
  *(v56 + 96) = 0;
  *(v56 + 64) = 0u;
  *(v56 + 80) = 0u;
  *(v56 + 32) = 0u;
  *(v56 + 48) = 0u;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  v386 = v56;
  v57 = &v29[v25[56]];
  *(v57 + 12) = 0;
  *(v57 + 4) = 0u;
  *(v57 + 5) = 0u;
  *(v57 + 2) = 0u;
  *(v57 + 3) = 0u;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  v388 = v57;
  v58 = &v29[v25[57]];
  *(v58 + 96) = 0;
  *(v58 + 64) = 0u;
  *(v58 + 80) = 0u;
  *(v58 + 32) = 0u;
  *(v58 + 48) = 0u;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  v370 = v58;
  v59 = &v29[v25[58]];
  *(v59 + 12) = 0;
  *(v59 + 4) = 0u;
  *(v59 + 5) = 0u;
  *(v59 + 2) = 0u;
  *(v59 + 3) = 0u;
  *v59 = 0u;
  *(v59 + 1) = 0u;
  v389 = v59;
  v60 = &v29[v25[59]];
  *(v60 + 12) = 0;
  *(v60 + 4) = 0u;
  *(v60 + 5) = 0u;
  *(v60 + 2) = 0u;
  *(v60 + 3) = 0u;
  *v60 = 0u;
  *(v60 + 1) = 0u;
  v390 = v60;
  v61 = &v29[v25[60]];
  *v61 = v405;
  v61[2] = 0;
  v61[3] = 0;
  v391 = v61;
  v62 = &v29[v25[63]];
  *(v62 + 6) = 0u;
  *(v62 + 7) = 0u;
  *(v62 + 4) = 0u;
  *(v62 + 5) = 0u;
  *(v62 + 2) = 0u;
  *(v62 + 3) = 0u;
  *v62 = 0u;
  *(v62 + 1) = 0u;
  v392 = v62;
  v63 = &v29[v25[64]];
  *(v63 + 12) = 0;
  *(v63 + 4) = 0u;
  *(v63 + 5) = 0u;
  *(v63 + 2) = 0u;
  *(v63 + 3) = 0u;
  *v63 = 0u;
  *(v63 + 1) = 0u;
  v393 = v63;
  v401 = v25;
  v64 = v25[65];
  *&v405 = v29;
  v65 = &v29[v64];
  *(v65 + 32) = 0;
  *v65 = 0u;
  *(v65 + 16) = 0u;
  v394 = v65;
  v66 = qword_280BE8800;
  v375 = v47;
  sub_217751DE8();
  v374 = v36;
  sub_217751DE8();
  v67 = v372;
  sub_217751DE8();
  v68 = v48;
  sub_217751DE8();
  v69 = v40;
  sub_217751DE8();
  v70 = v373;
  sub_217751DE8();
  if (v66 != -1)
  {
    swift_once();
  }

  v71 = qword_280C02598;
  if (qword_280C02598 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v363 = sub_217752D28();

    v71 = v363;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v73 = v400;
  v72 = v401;
  v74 = v405;
  *(v405 + v401[66]) = v71;
  v75 = (v74 + v72[69]);
  v76 = v74 + v72[67];
  memcpy(v76, v432, 0x118uLL);
  *(v76 + 35) = v404;
  memcpy(v76 + 288, v431, 0x41uLL);
  v77 = v74 + v72[68];
  v78 = v375;
  *v77 = v398;
  *(v77 + 1) = v78;
  v77[16] = v378;
  v79 = v374;
  *v75 = v377;
  v75[1] = v79;
  *(v74 + v72[70]) = v67;
  *(v74 + v72[71]) = v68;
  *(v74 + v72[72]) = v69;
  *(v74 + v72[73]) = v70;
  sub_21733CAD0();
  v398 = v403[6];
  sub_21726A630(&v73[v398], v428, &qword_27CB24358, &unk_21775D510);
  if (*&v428[1] == 1)
  {
    sub_2171F0738(v428, &qword_27CB24358, &unk_21775D510);
    v80 = v406;
    v81 = v379;
    v82 = v376;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v82);
    goto LABEL_20;
  }

  sub_21726A630(v428, v425, &qword_27CB242C0, &unk_21775D650);
  sub_21726A354(v428);
  v80 = v406;
  v81 = v379;
  v82 = v376;
  if (!v425[2])
  {
    sub_2171F0738(v425, &qword_27CB242C0, &unk_21775D650);
    goto LABEL_19;
  }

  sub_217751DE8();
  sub_2171F0738(v425, &qword_27CB242C8, &unk_217758970);
  sub_2172CE7F4();

  if (__swift_getEnumTagSinglePayload(v81, 1, v82) == 1)
  {
LABEL_20:
    sub_2171F0738(v81, &qword_27CB256B8, &qword_21775D770);
    goto LABEL_21;
  }

  v83 = v369;
  sub_21726A594(v81, v369, &qword_27CB24790, &unk_21775A220);
  v84 = *v83;
  v85 = v83[1];
  v86 = *(v76 + 3);
  sub_217751DE8();

  *(v76 + 2) = v84;
  *(v76 + 3) = v85;
  v76[32] = 2;
  v428[0] = 0uLL;
  MEMORY[0x28223BE20](v87, v88);
  v367 = v428;
  if (!sub_2173DDA80())
  {
    v89 = *(v76 + 35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v76 + 35) = v89;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v364 = *(v89 + 16);
      sub_2172B1F4C();
      v89 = v365;
      *(v76 + 35) = v365;
    }

    v91 = *(v89 + 16);
    if (v91 >= *(v89 + 24) >> 1)
    {
      sub_2172B1F4C();
      v89 = v366;
    }

    *(v89 + 16) = v91 + 1;
    v92 = v89 + 16 * v91;
    *(v92 + 32) = 0;
    *(v92 + 40) = 0;
    *(v76 + 35) = v89;
  }

  sub_21733CAD0();
  sub_2171F0738(v83, &qword_27CB24790, &unk_21775A220);
  sub_21733BC28();
LABEL_21:
  v93 = &v73[v403[5]];
  memcpy(v426, v93, sizeof(v426));
  memcpy(v427, v93, sizeof(v427));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v427) == 1)
  {
    v94 = v433;
  }

  else
  {
    memcpy(v428, v427, 0x1B8uLL);
    memcpy(v407, v426, 0x1B8uLL);
    sub_21726A630(v407, v425, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v424);
    memcpy(v408, v428, 0x1B8uLL);
    sub_2171F0738(v408, &qword_27CB243F0, &qword_21775D690);
    memcpy(v428, v424, 0x221uLL);
    nullsub_1(v428, v95);
    v94 = v428;
  }

  memcpy(v425, v94, 0x221uLL);
  v406 = v80;
  memcpy(v424, v74, 0x221uLL);
  sub_2171F0738(v424, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v74, v425, 0x221uLL);
  KeyPath = swift_getKeyPath();
  v97 = swift_getKeyPath();
  v98 = sub_2172E3DDC(v93, KeyPath, v97);

  v74[69] = v98;
  v99 = *(v93 + 58);
  v74[168] = *(v93 + 57);
  v74[169] = v99;
  v74[172] = *(v93 + 64);
  if (*(v93 + 73))
  {
    v100 = *(v93 + 72);
    v404 = *(v93 + 71);
    v101 = *(v93 + 70);
    v379 = *(v93 + 69);
    v102 = *(v93 + 68);
    v103 = *(v93 + 67);
    v104 = *(v93 + 66);
    v105 = *(v93 + 65);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v105 = 0;
    v103 = 0;
    v102 = 0;
    v379 = 0;
    v101 = 0;
    v404 = 0;
    v100 = 0;
    v104 = 1;
  }

  v106 = v396[1];
  v423[0] = *v396;
  v423[1] = v106;
  v107 = v396[3];
  v423[2] = v396[2];
  v423[3] = v107;
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v423, &qword_27CB24B70, &unk_217759460);
  v108 = v405;
  *(v405 + 1384) = v105;
  v108[174] = v104;
  v108[175] = v103;
  v108[176] = v102;
  v108[177] = v379;
  v108[178] = v101;
  v108[179] = v404;
  v108[180] = v100;
  v108[181] = *(v93 + 74);
  v109 = *(v93 + 75);
  v110 = *(v93 + 76);
  v111 = *(v93 + 77);
  v112 = *(v93 + 78);
  v113 = *(v93 + 79);
  v114 = v108[183];
  v115 = v108[184];
  v116 = v108[185];
  v117 = v108[186];
  v118 = v108[187];
  v108[183] = v109;
  v108[184] = v110;
  v108[185] = v111;
  v108[186] = v112;
  v108[187] = v113;
  sub_21733B8BC(v109, v110, v111, v112, v113);
  sub_217751DE8();
  sub_21733B90C(v114, v115, v116, v117, v118);
  v119 = swift_getKeyPath();
  v120 = swift_getKeyPath();
  v396 = v119;
  v121 = sub_2172E3DE0(v93, v119, v120);
  if (v121)
  {
    v378 = v120;
    v379 = v121;
    v122 = *(v121 + 16);
    v123 = (v121 + 32);
    v404 = 0x80000002177AA7E0;
    v124 = (v121 + 32);
    while (2)
    {
      if (v122)
      {
        switch(*v124)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
            v125 = sub_217753058();

            ++v124;
            --v122;
            if ((v125 & 1) == 0)
            {
              continue;
            }

            v126 = 1;
            break;
          default:

            v126 = 1;
            break;
        }

        v127 = v383;
      }

      else
      {
        v132 = *(v379 + 2);
        v127 = v383;
        while (2)
        {
          if (v132)
          {
            switch(*v123)
            {
              case 8:

                v126 = 1;
                break;
              default:
                v133 = sub_217753058();

                ++v123;
                --v132;
                if ((v133 & 1) == 0)
                {
                  continue;
                }

                v126 = 1;
                break;
            }
          }

          else
          {

            v126 = 0;
          }

          break;
        }
      }

      break;
    }

    v128 = v399;
    v129 = v405;
    v130 = v401;
    v131 = v406;
  }

  else
  {

    v126 = 2;
    v128 = v399;
    v129 = v405;
    v130 = v401;
    v131 = v406;
    v127 = v383;
  }

  v129[1506] = v126;
  v129[1507] = v93[641];
  v129[1508] = v93[640];
  v134 = *(v93 + 86);
  if (v134)
  {
    *&v428[0] = *(v93 + 85);
    *(&v428[0] + 1) = v134;
    CloudPlaylist.Kind.convertToPlaylistKind()();
    sub_217751DE8();

    v135 = v422[127];
  }

  else
  {
    v135 = 5;
  }

  v136 = &v129[v130[24]];
  v129[1510] = v135;
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v137 = type metadata accessor for CloudFormatter();
  __swift_project_value_buffer(v137, qword_280BE8918);
  v138 = *(v93 + 81);
  v139 = *(v93 + 82);
  LOBYTE(v428[0]) = 1;
  CloudFormatter.date(from:withFormat:)(v139, v428, v127);
  sub_21733BBDC(v127, &v129[v380], &qword_27CB241C0, &qword_217759480);
  v140 = *(v93 + 84);
  *v136 = *(v93 + 83);
  v136[1] = v140;
  memcpy(v421, v93 + 696, sizeof(v421));
  memcpy(v422, &v129[v381], 0x78uLL);
  memcpy(&v129[v381], v93 + 696, 0x78uLL);
  sub_21726A630(v421, v428, &qword_27CB244D0, &unk_21775D620);
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB244D0, &unk_21775D620);
  if (*(v93 + 63))
  {
    v141 = *(v93 + 60);
    v142 = &v129[v130[26]];
    *v142 = *(v93 + 59);
    v142[1] = v141;
    v144 = *(v93 + 61);
    v143 = *(v93 + 62);
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v144 = 0;
    v143 = 0;
    v145 = &v129[v130[26]];
    *v145 = 0;
    v145[1] = 0;
  }

  v146 = v130[28];
  v147 = &v129[v130[27]];
  v148 = &v129[v130[29]];
  v149 = v130[31];
  v150 = &v129[v130[33]];
  *v147 = v144;
  v147[1] = v143;
  v129[v146] = v93[816];
  LOBYTE(v146) = v93[832];
  *v148 = *(v93 + 103);
  v148[8] = v146;
  *&v129[v149] = *(v93 + 105);
  v151 = type metadata accessor for CloudPlaylist.Attributes(0);
  v152 = *(v151 + 88);
  sub_217751DE8();
  sub_21733B95C(&v93[v152], &v129[v382], &unk_27CB277C0, &qword_217758DC0);
  v153 = &v93[*(v151 + 92)];
  v154 = *(v153 + 1);
  *v150 = *v153;
  v150[1] = v154;
  v155 = v398;
  v156 = v400;
  sub_21726A630(&v400[v398], v428, &qword_27CB24358, &unk_21775D510);
  if (*&v428[1] == 1)
  {
    sub_217751DE8();
    sub_2171F0738(v428, &qword_27CB24358, &unk_21775D510);
    v157 = v402;
    v406 = v131;
LABEL_56:
    v166 = v128;
    memset(v407, 0, 104);
    v165 = v157;
    goto LABEL_69;
  }

  sub_21726A630(v428, v408, &qword_27CB242C0, &unk_21775D650);
  sub_217751DE8();
  v158 = sub_21726A354(v428);
  v160 = *&v408[1];
  v161 = v131;
  if (!*&v408[1])
  {
    v406 = v131;
    v157 = v402;
    sub_2171F0738(v408, &qword_27CB242C0, &unk_21775D650);
    goto LABEL_56;
  }

  v420 = 0;
  v419 = 0u;
  v418 = 0u;
  MEMORY[0x28223BE20](v158, v159);
  v163 = v162;
  v367 = v162;
  v368 = v128;
  sub_217751DE8();
  v164 = sub_2172E4A28(sub_21733CEE8, (&v369 - 4), v160, sub_217276258, &qword_27CB24790, &unk_21775A220);

  sub_21726A630(&v418, &v412, &qword_27CB24188, &dword_217758930);
  v406 = v161;
  if (*(&v413 + 1))
  {
    sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    v415 = v412;
    v416 = v413;
    v417 = v414;
    v165 = v163;
  }

  else
  {
    v411 = 0;
    v410 = 0u;
    v409 = 0u;
    v167 = *&v408[4];
    if (*&v408[4])
    {
      v168 = *(&v408[3] + 1);
      sub_2172CA838(v399, &v407[1]);
      *&v407[0] = v168;
      *(&v407[0] + 1) = v167;
      v169 = swift_allocObject();
      v170 = v407[1];
      *(v169 + 16) = v407[0];
      *(v169 + 32) = v170;
      *(v169 + 48) = v407[2];
      *(v169 + 64) = *&v407[3];
      sub_217751DE8();
      sub_2171F0738(&v409, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
      *&v409 = v169;
      *(&v410 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v411 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    }

    v165 = v163;
    v415 = v409;
    v416 = v410;
    v417 = v411;
    if (*(&v413 + 1))
    {
      sub_2171F0738(&v412, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v408[0] + 1) == 1)
  {
    v171 = 0;
  }

  else
  {
    v171 = *&v408[0];
  }

  if (*(&v408[0] + 1) == 1)
  {
    v172 = 0;
  }

  else
  {
    v172 = *(&v408[0] + 1);
  }

  *&v407[0] = v164;
  BYTE8(v407[0]) = 0;
  v407[1] = v415;
  v407[2] = v416;
  *&v407[3] = v417;
  *(&v407[3] + 1) = v171;
  *&v407[4] = v172;
  *(&v407[4] + 1) = *(&v408[1] + 1);
  *&v407[5] = *&v408[2];
  *(&v407[5] + 8) = v408[7];
  sub_2171FB568(*&v408[0], *(&v408[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v408, &qword_27CB242C8, &unk_217758970);
  v155 = v398;
  v166 = v399;
  v156 = v400;
LABEL_69:
  sub_21733BBDC(v407, v384, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(&v156[v155], v428, &qword_27CB24358, &unk_21775D510);
  if (*&v428[1] == 1)
  {
    sub_2171F0738(v428, &qword_27CB24358, &unk_21775D510);
LABEL_75:
    memset(v428, 0, 104);
    v196 = v385;
    goto LABEL_88;
  }

  sub_21726A630(&v428[16], v407, &qword_27CB24290, &unk_21775D550);
  sub_21726A354(v428);
  v173 = *&v407[1];
  if (!*&v407[1])
  {
    sub_2171F0738(v407, &qword_27CB24290, &unk_21775D550);
    v129 = v405;
    goto LABEL_75;
  }

  v174 = v407[0];
  sub_2171FB568(*&v407[0], *(&v407[0] + 1));
  v175 = v406;
  sub_21736D3E8(v173, v176, v177, v178, v179, v180, v181, v182, v369, v370);
  v184 = v183;
  v406 = v175;
  v185 = *(&v407[1] + 1);
  v396 = *(&v407[2] + 1);
  v186 = *&v407[2];
  v188 = *(&v407[3] + 1);
  v383 = *&v407[3];
  v187 = *&v407[4];
  sub_21726A630(&v407[4] + 8, &v408[4] + 8, &qword_27CB24188, &dword_217758930);
  v189 = v407[7];
  v408[0] = v174;
  *&v408[1] = v184;
  v404 = v185;
  *(&v408[1] + 1) = v185;
  *&v408[2] = v186;
  *(&v408[2] + 1) = v396;
  *&v408[3] = v383;
  v381 = v188;
  *(&v408[3] + 1) = v188;
  *&v408[4] = v187;
  v408[7] = v407[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v382 = v174;
  sub_2171FB568(v174, *(&v174 + 1));
  sub_217751DE8();
  v396 = v186;
  sub_217751DE8();
  sub_217751DE8();
  v384 = *(&v189 + 1);
  sub_217751DE8();
  sub_217751DE8();
  v190 = sub_2171F0738(v407, &qword_27CB24298, &qword_21777CD60);
  memset(v407, 0, 40);
  MEMORY[0x28223BE20](v190, v191);
  v367 = v402;
  v368 = v399;
  v192 = v406;
  v383 = sub_2172E4A28(sub_21733B9E0, (&v369 - 4), v184, sub_217276298, &qword_27CB24490, &qword_21775A250);
  sub_21726A630(v407, &v415, &qword_27CB24188, &dword_217758930);
  v406 = v192;
  if (*(&v416 + 1))
  {
    sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
    v418 = v415;
    v419 = v416;
    v420 = v417;
    v193 = v402;
    v156 = v400;
    v155 = v398;
    v194 = v382;
    v195 = v404;
  }

  else
  {
    v197 = v381;
    v414 = 0;
    v413 = 0u;
    v412 = 0u;
    if (v187)
    {
      sub_2172CA838(v399, &v428[1]);
      *&v428[0] = v197;
      *(&v428[0] + 1) = v187;
      v198 = swift_allocObject();
      v199 = v428[1];
      *(v198 + 16) = v428[0];
      *(v198 + 32) = v199;
      *(v198 + 48) = v428[2];
      *(v198 + 64) = *&v428[3];
      sub_217751DE8();
      sub_2171F0738(&v412, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
      *&v412 = v198;
      *(&v413 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v414 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
    }

    v193 = v402;
    v156 = v400;
    v194 = v382;
    v195 = v404;
    v418 = v412;
    v419 = v413;
    v420 = v414;
    v155 = v398;
    if (*(&v416 + 1))
    {
      sub_2171F0738(&v415, &qword_27CB24188, &dword_217758930);
    }
  }

  *&v428[0] = v383;
  if (*(&v174 + 1) == 1)
  {
    v200 = 0;
  }

  else
  {
    v200 = v194;
  }

  if (*(&v174 + 1) == 1)
  {
    v201 = 0;
  }

  else
  {
    v201 = *(&v174 + 1);
  }

  BYTE8(v428[0]) = 0;
  v428[1] = v418;
  v428[2] = v419;
  *&v428[3] = v420;
  *(&v428[3] + 1) = v200;
  *&v428[4] = v201;
  *(&v428[4] + 1) = v195;
  *&v428[5] = v396;
  *(&v428[5] + 8) = v189;
  sub_2171F0738(v408, &qword_27CB242A8, &unk_21775D570);
  v129 = v405;
  v165 = v193;
  v196 = v385;
  v166 = v399;
LABEL_88:
  sub_21733BBDC(v428, v196, &qword_27CB25610, &qword_21775D540);
  sub_21726A630(&v156[v155], v428, &qword_27CB24358, &unk_21775D510);
  if (*&v428[1] == 1)
  {
    v202 = &qword_27CB24358;
    v203 = &unk_21775D510;
    v204 = v428;
LABEL_94:
    sub_2171F0738(v204, v202, v203);
    memset(v407, 0, 104);
    goto LABEL_107;
  }

  sub_21726A630(&v428[32], v408, &qword_27CB242C0, &unk_21775D650);
  v205 = sub_21726A354(v428);
  v207 = *&v408[1];
  if (!*&v408[1])
  {
    v202 = &qword_27CB242C0;
    v203 = &unk_21775D650;
    v204 = v408;
    goto LABEL_94;
  }

  v420 = 0;
  v419 = 0u;
  v418 = 0u;
  MEMORY[0x28223BE20](v205, v206);
  v367 = v165;
  v368 = v166;
  sub_217751DE8();
  v208 = v406;
  v209 = sub_2172E4A28(sub_21733CEE8, (&v369 - 4), v207, sub_217276258, &qword_27CB24790, &unk_21775A220);
  v406 = v208;

  sub_21726A630(&v418, &v412, &qword_27CB24188, &dword_217758930);
  if (*(&v413 + 1))
  {
    sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    v415 = v412;
    v416 = v413;
    v417 = v414;
  }

  else
  {
    v411 = 0;
    v410 = 0u;
    v409 = 0u;
    v210 = *&v408[4];
    if (*&v408[4])
    {
      v211 = *(&v408[3] + 1);
      sub_2172CA838(v166, &v407[1]);
      *&v407[0] = v211;
      *(&v407[0] + 1) = v210;
      v212 = swift_allocObject();
      v213 = v407[1];
      *(v212 + 16) = v407[0];
      *(v212 + 32) = v213;
      *(v212 + 48) = v407[2];
      *(v212 + 64) = *&v407[3];
      sub_217751DE8();
      sub_2171F0738(&v409, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
      *&v409 = v212;
      *(&v410 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v411 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    }

    v415 = v409;
    v416 = v410;
    v417 = v411;
    if (*(&v413 + 1))
    {
      sub_2171F0738(&v412, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v408[0] + 1) == 1)
  {
    v214 = 0;
  }

  else
  {
    v214 = *&v408[0];
  }

  if (*(&v408[0] + 1) == 1)
  {
    v215 = 0;
  }

  else
  {
    v215 = *(&v408[0] + 1);
  }

  *&v407[0] = v209;
  BYTE8(v407[0]) = 0;
  v407[1] = v415;
  v407[2] = v416;
  *&v407[3] = v417;
  *(&v407[3] + 1) = v214;
  *&v407[4] = v215;
  *(&v407[4] + 1) = *(&v408[1] + 1);
  *&v407[5] = *&v408[2];
  *(&v407[5] + 8) = v408[7];
  sub_2171FB568(*&v408[0], *(&v408[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v408, &qword_27CB242C8, &unk_217758970);
  v155 = v398;
  v156 = v400;
LABEL_107:
  sub_21733BBDC(v407, v386, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(&v156[v155], v428, &qword_27CB24358, &unk_21775D510);
  if (*&v428[1] == 1)
  {
    sub_2171F0738(v428, &qword_27CB24358, &unk_21775D510);
LABEL_113:
    memset(v428, 0, 104);
    v239 = v387;
    goto LABEL_126;
  }

  sub_21726A630(&v428[16], v407, &qword_27CB24290, &unk_21775D550);
  sub_21726A354(v428);
  v216 = *&v407[1];
  if (!*&v407[1])
  {
    sub_2171F0738(v407, &qword_27CB24290, &unk_21775D550);
    v129 = v405;
    goto LABEL_113;
  }

  v217 = v407[0];
  sub_2171FB568(*&v407[0], *(&v407[0] + 1));
  v218 = v406;
  sub_21736CF48(v216, v219, v220, v221, v222, v223, v224, v225, v369, v370);
  v227 = v226;
  v406 = v218;
  v228 = *(&v407[1] + 1);
  v396 = *(&v407[2] + 1);
  v229 = *&v407[2];
  v231 = *(&v407[3] + 1);
  v385 = *&v407[3];
  v230 = *&v407[4];
  sub_21726A630(&v407[4] + 8, &v408[4] + 8, &qword_27CB24188, &dword_217758930);
  v232 = v407[7];
  v408[0] = v217;
  *&v408[1] = v227;
  v404 = v228;
  *(&v408[1] + 1) = v228;
  *&v408[2] = v229;
  *(&v408[2] + 1) = v396;
  *&v408[3] = v385;
  v383 = v231;
  *(&v408[3] + 1) = v231;
  *&v408[4] = v230;
  v408[7] = v407[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v384 = v217;
  sub_2171FB568(v217, *(&v217 + 1));
  sub_217751DE8();
  v396 = v229;
  sub_217751DE8();
  sub_217751DE8();
  v386 = *(&v232 + 1);
  sub_217751DE8();
  sub_217751DE8();
  v233 = sub_2171F0738(v407, &qword_27CB24298, &qword_21777CD60);
  memset(v407, 0, 40);
  MEMORY[0x28223BE20](v233, v234);
  v367 = v402;
  v368 = v399;
  v235 = v406;
  v385 = sub_2172E4A28(sub_21733B9C4, (&v369 - 4), v227, sub_217276238, &qword_27CB247C0, &unk_21779AA10);
  sub_21726A630(v407, &v415, &qword_27CB24188, &dword_217758930);
  v406 = v235;
  if (*(&v416 + 1))
  {
    sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
    v418 = v415;
    v419 = v416;
    v420 = v417;
    v236 = v402;
    v156 = v400;
    v155 = v398;
    v237 = v384;
    v238 = v404;
  }

  else
  {
    v240 = v383;
    v414 = 0;
    v413 = 0u;
    v412 = 0u;
    if (v230)
    {
      sub_2172CA838(v399, &v428[1]);
      *&v428[0] = v240;
      *(&v428[0] + 1) = v230;
      v241 = swift_allocObject();
      v242 = v428[1];
      *(v241 + 16) = v428[0];
      *(v241 + 32) = v242;
      *(v241 + 48) = v428[2];
      *(v241 + 64) = *&v428[3];
      sub_217751DE8();
      sub_2171F0738(&v412, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
      *&v412 = v241;
      *(&v413 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v414 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
    }

    v236 = v402;
    v156 = v400;
    v237 = v384;
    v238 = v404;
    v418 = v412;
    v419 = v413;
    v420 = v414;
    v155 = v398;
    if (*(&v416 + 1))
    {
      sub_2171F0738(&v415, &qword_27CB24188, &dword_217758930);
    }
  }

  *&v428[0] = v385;
  if (*(&v217 + 1) == 1)
  {
    v243 = 0;
  }

  else
  {
    v243 = v237;
  }

  if (*(&v217 + 1) == 1)
  {
    v244 = 0;
  }

  else
  {
    v244 = *(&v217 + 1);
  }

  BYTE8(v428[0]) = 0;
  v428[1] = v418;
  v428[2] = v419;
  *&v428[3] = v420;
  *(&v428[3] + 1) = v243;
  *&v428[4] = v244;
  *(&v428[4] + 1) = v238;
  *&v428[5] = v396;
  *(&v428[5] + 8) = v232;
  sub_2171F0738(v408, &qword_27CB25628, &qword_21775D560);
  v129 = v405;
  v165 = v236;
  v239 = v387;
  v166 = v399;
LABEL_126:
  sub_21733BBDC(v428, v239, &qword_27CB25608, &unk_21775D530);
  sub_21726A630(&v156[v155], v428, &qword_27CB24358, &unk_21775D510);
  if (*&v428[1] == 1)
  {
    sub_2171F0738(v428, &qword_27CB24358, &unk_21775D510);
LABEL_132:
    memset(v428, 0, 104);
    v260 = v388;
    goto LABEL_145;
  }

  sub_21726A630(v429, v407, &qword_27CB24390, &unk_21775D7C0);
  sub_21726A354(v428);
  if (!*&v407[1])
  {
    sub_2171F0738(v407, &qword_27CB24390, &unk_21775D7C0);
    v129 = v405;
    goto LABEL_132;
  }

  v245 = v407[0];
  sub_2171FB568(*&v407[0], *(&v407[0] + 1));
  v246 = v406;
  sub_21736C8DC();
  v248 = v247;
  v406 = v246;
  v249 = *(&v407[1] + 1);
  v404 = *(&v407[2] + 1);
  v250 = *&v407[2];
  v384 = *&v407[3];
  v385 = v247;
  v251 = *(&v407[3] + 1);
  v252 = *&v407[4];
  sub_21726A630(&v407[4] + 8, &v408[4] + 8, &qword_27CB24188, &dword_217758930);
  v253 = v407[7];
  v408[0] = v245;
  *&v408[1] = v248;
  v396 = v249;
  *(&v408[1] + 1) = v249;
  *&v408[2] = v250;
  *(&v408[2] + 1) = v404;
  v254 = v399;
  *&v408[3] = v384;
  v383 = v251;
  *(&v408[3] + 1) = v251;
  *&v408[4] = v252;
  v408[7] = v407[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v404 = v245;
  sub_2171FB568(v245, *(&v245 + 1));
  sub_217751DE8();
  v387 = v250;
  sub_217751DE8();
  sub_217751DE8();
  v386 = *(&v253 + 1);
  sub_217751DE8();
  sub_217751DE8();
  v255 = sub_2171F0738(v407, &qword_27CB24398, &unk_2177784D0);
  memset(v407, 0, 40);
  MEMORY[0x28223BE20](v255, v256);
  v367 = v402;
  v368 = v254;
  v257 = v406;
  v385 = sub_2172E4ECC(sub_21733CEA0, (&v369 - 4), v385, sub_2172763AC, &qword_27CB24820, &unk_2177650E0);
  sub_21726A630(v407, &v415, &qword_27CB24188, &dword_217758930);
  v406 = v257;
  if (*(&v416 + 1))
  {
    sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
    v418 = v415;
    v419 = v416;
    v420 = v417;
    v258 = v402;
    v259 = v400;
    v260 = v388;
    v155 = v398;
    v261 = v404;
  }

  else
  {
    v262 = v383;
    v414 = 0;
    v413 = 0u;
    v412 = 0u;
    if (v252)
    {
      sub_2172CA838(v254, &v428[1]);
      *&v428[0] = v262;
      *(&v428[0] + 1) = v252;
      v263 = swift_allocObject();
      v264 = v428[1];
      *(v263 + 16) = v428[0];
      *(v263 + 32) = v264;
      *(v263 + 48) = v428[2];
      *(v263 + 64) = *&v428[3];
      sub_217751DE8();
      sub_2171F0738(&v412, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
      *&v412 = v263;
      *(&v413 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v414 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
    }

    v258 = v402;
    v259 = v400;
    v260 = v388;
    v261 = v404;
    v418 = v412;
    v419 = v413;
    v420 = v414;
    v155 = v398;
    if (*(&v416 + 1))
    {
      sub_2171F0738(&v415, &qword_27CB24188, &dword_217758930);
    }
  }

  *&v428[0] = v385;
  if (*(&v245 + 1) == 1)
  {
    v265 = 0;
  }

  else
  {
    v265 = v261;
  }

  if (*(&v245 + 1) == 1)
  {
    v266 = 0;
  }

  else
  {
    v266 = *(&v245 + 1);
  }

  BYTE8(v428[0]) = 0;
  v428[1] = v418;
  v428[2] = v419;
  *&v428[3] = v420;
  *(&v428[3] + 1) = v265;
  *&v428[4] = v266;
  *(&v428[4] + 1) = v396;
  *&v428[5] = v387;
  *(&v428[5] + 8) = v253;
  sub_2171F0738(v408, &qword_27CB24248, &qword_217758670);
  v129 = v405;
  v165 = v258;
  v156 = v259;
  v166 = v399;
LABEL_145:
  sub_21733BBDC(v428, v260, &unk_27CB28A60, &qword_217770B60);
  sub_21726A630(&v156[v155], v428, &qword_27CB24358, &unk_21775D510);
  if (*&v428[1] == 1)
  {
    sub_2171F0738(v428, &qword_27CB24358, &unk_21775D510);
    memset(v407, 0, 128);
    goto LABEL_150;
  }

  sub_21726A630(&v428[24], v407, &qword_27CB24370, &qword_2177586A0);
  sub_21726A354(v428);
  if (!*&v407[1])
  {
LABEL_150:
    sub_2171F0738(v407, &qword_27CB24370, &qword_2177586A0);
    sub_21726A630(&v156[v155], v428, &qword_27CB24358, &unk_21775D510);
    if (*&v428[1] == 1)
    {
      sub_2171F0738(v428, &qword_27CB24358, &unk_21775D510);
      memset(v407, 0, 128);
    }

    else
    {
      sub_21726A630(v429, v407, &qword_27CB24390, &unk_21775D7C0);
      sub_21726A354(v428);
      if (*&v407[1])
      {
        v273 = v156;
        memcpy(v408, v407, 0x80uLL);
        sub_21754D058();
        v275 = v274;
        memset(v407, 0, 40);
        sub_2172F9164(v166, v165, v407, v428);
        sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
        v276 = *&v408[4];
        v277 = *(*&v408[1] + 16);
        v420 = 0;
        v419 = 0u;
        v418 = 0u;
        if (*&v408[4])
        {
          v278 = *(&v408[3] + 1);
          sub_2172CA838(v166, &v407[2]);
          *&v407[0] = v278;
          *(&v407[0] + 1) = v276;
          *&v407[1] = v277;
          *(&v407[1] + 1) = v275;
          v279 = swift_allocObject();
          memcpy((v279 + 16), v407, 0x48uLL);
          sub_217751DE8();
          sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
          *&v418 = v279;
          *(&v419 + 1) = &type metadata for MusicCatalogPlaylistEntryResourceIncrementalLoader;
          v420 = &off_28297A108;
        }

        else
        {
        }

        v156 = v273;
        v407[0] = v418;
        v407[1] = v419;
        *&v407[2] = v420;
        sub_21733BBDC(v407, &v428[1], &qword_27CB24188, &dword_217758930);
        v287 = v370;
        sub_2171F0738(v370, &unk_27CB28A30, &unk_21775E9C0);
        sub_21726A630(v428, v287, &unk_27CB2ACA0, &unk_217759C60);
        sub_2171F0738(v408, &qword_27CB24398, &unk_2177784D0);
        *(v405 + 1456) = 1;
        v282 = v428;
        v280 = &unk_27CB2ACA0;
        v281 = &unk_217759C60;
        goto LABEL_160;
      }
    }

    v280 = &qword_27CB24390;
    v281 = &unk_21775D7C0;
    v282 = v407;
LABEL_160:
    sub_2171F0738(v282, v280, v281);
    goto LABEL_171;
  }

  v267 = memcpy(v408, v407, 0x80uLL);
  memset(v407, 0, 40);
  MEMORY[0x28223BE20](v267, v268);
  v367 = v165;
  v368 = v166;
  v269 = v406;
  v271 = sub_2172E4A28(sub_21733B9A8, (&v369 - 4), v270, sub_217276198, &qword_27CB247D8, &qword_217758D60);
  v406 = v269;
  sub_21726A630(v407, &v415, &qword_27CB24188, &dword_217758930);
  if (*(&v416 + 1))
  {
    v272 = v156;
    sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
    v418 = v415;
    v419 = v416;
    v420 = v417;
  }

  else
  {
    v272 = v156;
    v414 = 0;
    v413 = 0u;
    v412 = 0u;
    v283 = *&v408[4];
    if (*&v408[4])
    {
      v284 = *(&v408[3] + 1);
      sub_2172CA838(v166, &v428[1]);
      *&v428[0] = v284;
      *(&v428[0] + 1) = v283;
      v285 = swift_allocObject();
      v286 = v428[1];
      *(v285 + 16) = v428[0];
      *(v285 + 32) = v286;
      *(v285 + 48) = v428[2];
      *(v285 + 64) = *&v428[3];
      sub_217751DE8();
      sub_2171F0738(&v412, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
      *&v412 = v285;
      *(&v413 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v414 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v407, &qword_27CB24188, &dword_217758930);
    }

    v418 = v412;
    v419 = v413;
    v420 = v414;
    if (*(&v416 + 1))
    {
      sub_2171F0738(&v415, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v408[0] + 1) == 1)
  {
    v288 = 0;
  }

  else
  {
    v288 = *&v408[0];
  }

  if (*(&v408[0] + 1) == 1)
  {
    v289 = 0;
  }

  else
  {
    v289 = *(&v408[0] + 1);
  }

  *&v428[0] = v271;
  BYTE8(v428[0]) = 0;
  v428[1] = v418;
  v428[2] = v419;
  *&v428[3] = v420;
  *(&v428[3] + 1) = v288;
  *&v428[4] = v289;
  *(&v428[4] + 1) = *(&v408[1] + 1);
  *&v428[5] = *&v408[2];
  *(&v428[5] + 8) = v408[7];
  sub_2171FB568(*&v408[0], *(&v408[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v408, &qword_27CB24378, &qword_21775D7D0);
  sub_21733BBDC(v428, v370, &unk_27CB28A30, &unk_21775E9C0);
  v129[1456] = 0;
  v156 = v272;
LABEL_171:
  v290 = v403[7];
  sub_21726A630(&v156[v290], v428, &qword_27CB24350, &unk_21776A5D0);
  if (*&v428[1] == 1)
  {
    v291 = &qword_27CB24350;
    v292 = &unk_21776A5D0;
    v293 = v428;
LABEL_177:
    sub_2171F0738(v293, v291, v292);
    memset(v407, 0, 104);
    v299 = v389;
    goto LABEL_190;
  }

  sub_21726A630(&v428[16], v408, &qword_27CB24280, &unk_21775D680);
  v294 = sub_21726A300(v428);
  v296 = *&v408[1];
  if (!*&v408[1])
  {
    v291 = &qword_27CB24280;
    v292 = &unk_21775D680;
    v293 = v408;
    goto LABEL_177;
  }

  v420 = 0;
  v419 = 0u;
  v418 = 0u;
  MEMORY[0x28223BE20](v294, v295);
  v367 = v165;
  v368 = v166;
  sub_217751DE8();
  v297 = v406;
  v298 = sub_2172E4A28(sub_21733CED0, (&v369 - 4), v296, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v406 = v297;

  sub_21726A630(&v418, &v412, &qword_27CB24188, &dword_217758930);
  if (*(&v413 + 1))
  {
    sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    v415 = v412;
    v416 = v413;
    v417 = v414;
  }

  else
  {
    v411 = 0;
    v410 = 0u;
    v409 = 0u;
    v300 = *&v408[4];
    if (*&v408[4])
    {
      v301 = *(&v408[3] + 1);
      sub_2172CA838(v166, &v407[1]);
      *&v407[0] = v301;
      *(&v407[0] + 1) = v300;
      v302 = swift_allocObject();
      v303 = v407[1];
      *(v302 + 16) = v407[0];
      *(v302 + 32) = v303;
      *(v302 + 48) = v407[2];
      *(v302 + 64) = *&v407[3];
      sub_217751DE8();
      sub_2171F0738(&v409, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
      *&v409 = v302;
      *(&v410 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v411 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    }

    v415 = v409;
    v416 = v410;
    v417 = v411;
    if (*(&v413 + 1))
    {
      sub_2171F0738(&v412, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v408[0] + 1) == 1)
  {
    v304 = 0;
  }

  else
  {
    v304 = *&v408[0];
  }

  if (*(&v408[0] + 1) == 1)
  {
    v305 = 0;
  }

  else
  {
    v305 = *(&v408[0] + 1);
  }

  *&v407[0] = v298;
  BYTE8(v407[0]) = 0;
  v407[1] = v415;
  v407[2] = v416;
  *&v407[3] = v417;
  *(&v407[3] + 1) = v304;
  *&v407[4] = v305;
  *(&v407[4] + 1) = *(&v408[1] + 1);
  *&v407[5] = *&v408[2];
  *(&v407[5] + 8) = v408[7];
  sub_2171FB568(*&v408[0], *(&v408[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v408, &qword_27CB24288, &qword_217758F80);
  v299 = v389;
LABEL_190:
  sub_21733BBDC(v407, v299, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(&v156[v290], v428, &qword_27CB24350, &unk_21776A5D0);
  if (*&v428[1] == 1)
  {
    v306 = v156;
    v307 = &qword_27CB24350;
    v308 = &unk_21776A5D0;
    v309 = v428;
LABEL_196:
    sub_2171F0738(v309, v307, v308);
    memset(v407, 0, 104);
    v315 = v390;
    goto LABEL_209;
  }

  sub_21726A630(&v428[24], v408, &qword_27CB242C0, &unk_21775D650);
  v310 = sub_21726A300(v428);
  v312 = *&v408[1];
  if (!*&v408[1])
  {
    v306 = v156;
    v307 = &qword_27CB242C0;
    v308 = &unk_21775D650;
    v309 = v408;
    goto LABEL_196;
  }

  v313 = v156;
  v420 = 0;
  v419 = 0u;
  v418 = 0u;
  MEMORY[0x28223BE20](v310, v311);
  v367 = v165;
  v368 = v166;
  sub_217751DE8();
  v314 = sub_2172E4A28(sub_21733CEE8, (&v369 - 4), v312, sub_217276258, &qword_27CB24790, &unk_21775A220);

  sub_21726A630(&v418, &v412, &qword_27CB24188, &dword_217758930);
  if (*(&v413 + 1))
  {
    v306 = v156;
    sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    v415 = v412;
    v416 = v413;
    v417 = v414;
  }

  else
  {
    v411 = 0;
    v410 = 0u;
    v409 = 0u;
    v316 = *&v408[4];
    v306 = v313;
    if (*&v408[4])
    {
      v317 = *(&v408[3] + 1);
      sub_2172CA838(v166, &v407[1]);
      *&v407[0] = v317;
      *(&v407[0] + 1) = v316;
      v318 = swift_allocObject();
      v319 = v407[1];
      *(v318 + 16) = v407[0];
      *(v318 + 32) = v319;
      *(v318 + 48) = v407[2];
      *(v318 + 64) = *&v407[3];
      sub_217751DE8();
      sub_2171F0738(&v409, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
      *&v409 = v318;
      *(&v410 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v411 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    }

    v415 = v409;
    v416 = v410;
    v417 = v411;
    if (*(&v413 + 1))
    {
      sub_2171F0738(&v412, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v408[0] + 1) == 1)
  {
    v320 = 0;
  }

  else
  {
    v320 = *&v408[0];
  }

  if (*(&v408[0] + 1) == 1)
  {
    v321 = 0;
  }

  else
  {
    v321 = *(&v408[0] + 1);
  }

  *&v407[0] = v314;
  BYTE8(v407[0]) = 0;
  v407[1] = v415;
  v407[2] = v416;
  *&v407[3] = v417;
  *(&v407[3] + 1) = v320;
  *&v407[4] = v321;
  *(&v407[4] + 1) = *(&v408[1] + 1);
  *&v407[5] = *&v408[2];
  *(&v407[5] + 8) = v408[7];
  sub_2171FB568(*&v408[0], *(&v408[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v408, &qword_27CB242C8, &unk_217758970);
  v315 = v390;
LABEL_209:
  sub_21733BBDC(v407, v315, &qword_27CB25330, &unk_21775E9B0);
  v322 = (v306 + v403[8]);
  v323 = v166;
  if (v322[6] == 1)
  {
    v324 = 0;
    v325 = 0;
    v326 = 0;
    v327 = 1;
  }

  else
  {
    v324 = *v322;
    v327 = v322[1];
    v325 = v322[2];
    v326 = v322[3];
    sub_2172838F8(*v322, v327);
  }

  v328 = v391;
  v329 = v391[2];
  v330 = v391[3];
  sub_217283940(*v391, v391[1]);
  *v328 = v324;
  v328[1] = v327;
  v328[2] = v325;
  v328[3] = v326;
  v331 = v322[6];
  if (v331)
  {
    v332 = v401;
    if (v331 == 1)
    {
      v333 = v405;
      v334 = (v405 + v401[61]);
      *v334 = 0;
      v334[1] = 0;
      *(v333 + v332[62]) = 0;
      v335 = v392;
LABEL_219:
      v340 = v306;
      memset(v408, 0, 128);
      goto LABEL_221;
    }

    v331 = v322[4];
    v337 = v322[5];
    v336 = sub_217751DE8();
  }

  else
  {
    v336 = 0;
    v332 = v401;
  }

  v338 = v405;
  v339 = (v405 + v332[61]);
  *v339 = v331;
  v339[1] = v336;
  *(v338 + v332[62]) = v322[7];
  sub_217751DE8();
  sub_21726A630((v322 + 8), v428, &qword_27CB243A0, &qword_2177586A8);
  if (*&v428[1] == 1)
  {
    sub_2171F0738(v428, &qword_27CB243A0, &qword_2177586A8);
    v335 = v392;
    goto LABEL_219;
  }

  sub_21726A630(v428, v408, &qword_27CB24230, &unk_21775E9D0);
  sub_21726A3A8(v428);
  v335 = v392;
  v340 = v306;
LABEL_221:
  v341 = v402;
  sub_21733BBDC(v408, v335, &qword_27CB24230, &unk_21775E9D0);
  if (v322[6] == 1)
  {
LABEL_224:
    v342 = v397;
LABEL_225:
    memset(v407, 0, 104);
    v343 = v393;
    goto LABEL_226;
  }

  sub_21726A630((v322 + 8), v428, &qword_27CB243A0, &qword_2177586A8);
  if (*&v428[1] == 1)
  {
    sub_2171F0738(v428, &qword_27CB243A0, &qword_2177586A8);
    goto LABEL_224;
  }

  sub_21726A630(&v428[8], v408, &qword_27CB24240, &qword_217758668);
  v353 = sub_21726A3A8(v428);
  v342 = v397;
  if (!*&v408[1])
  {
    sub_2171F0738(v408, &qword_27CB24240, &qword_217758668);
    goto LABEL_225;
  }

  v420 = 0;
  v419 = 0u;
  v418 = 0u;
  MEMORY[0x28223BE20](v353, v354);
  v367 = v341;
  v368 = v323;
  v356 = sub_2172E4ECC(sub_21733CEA0, (&v369 - 4), v355, sub_2172763AC, &qword_27CB24820, &unk_2177650E0);
  sub_21726A630(&v418, &v412, &qword_27CB24188, &dword_217758930);
  if (*(&v413 + 1))
  {
    sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    v415 = v412;
    v416 = v413;
    v417 = v414;
  }

  else
  {
    v411 = 0;
    v410 = 0u;
    v409 = 0u;
    v357 = *&v408[4];
    if (*&v408[4])
    {
      v358 = *(&v408[3] + 1);
      sub_2172CA838(v323, &v407[1]);
      *&v407[0] = v358;
      *(&v407[0] + 1) = v357;
      v359 = swift_allocObject();
      v360 = v407[1];
      *(v359 + 16) = v407[0];
      *(v359 + 32) = v360;
      *(v359 + 48) = v407[2];
      *(v359 + 64) = *&v407[3];
      sub_217751DE8();
      sub_2171F0738(&v409, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
      *&v409 = v359;
      *(&v410 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v411 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v418, &qword_27CB24188, &dword_217758930);
    }

    v415 = v409;
    v416 = v410;
    v417 = v411;
    if (*(&v413 + 1))
    {
      sub_2171F0738(&v412, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v408[0] + 1) == 1)
  {
    v361 = 0;
  }

  else
  {
    v361 = *&v408[0];
  }

  if (*(&v408[0] + 1) == 1)
  {
    v362 = 0;
  }

  else
  {
    v362 = *(&v408[0] + 1);
  }

  *&v407[0] = v356;
  BYTE8(v407[0]) = 0;
  v407[1] = v415;
  v407[2] = v416;
  *&v407[3] = v417;
  *(&v407[3] + 1) = v361;
  *&v407[4] = v362;
  *(&v407[4] + 1) = *(&v408[1] + 1);
  *&v407[5] = *&v408[2];
  *(&v407[5] + 8) = v408[7];
  sub_2171FB568(*&v408[0], *(&v408[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v408, &qword_27CB24248, &qword_217758670);
  v343 = v393;
  v332 = v401;
LABEL_226:
  sub_21733BBDC(v407, v343, &unk_27CB28A60, &qword_217770B60);
  memset(v428, 0, 40);
  v344 = dynamic_cast_existential_1_conditional(&type metadata for Playlist);
  if (v344)
  {
    v346 = v344;
    v347 = v345;
    v348 = v371;
    sub_21733CAD0();
    v349 = *(v347 + 16);
    v350 = sub_21733CDD0(&qword_280BE4478, type metadata accessor for CloudPlaylist);
    v349(v408, v348, v323, v341, v403, &type metadata for AnyMusicDataRequestConfiguration, v350, &protocol witness table for AnyMusicDataRequestConfiguration, v346, v347);
    v332 = v401;
    sub_21733CA78(v348, type metadata accessor for CloudPlaylist);
    sub_2171F0738(v428, &qword_27CB24BA8, &unk_217772FF0);
    v428[0] = v408[0];
    v428[1] = v408[1];
    *&v428[2] = *&v408[2];
  }

  sub_21733B95C(v428, v394, &qword_27CB24BA8, &unk_217772FF0);
  *(&v408[1] + 1) = v332;
  *&v408[2] = &protocol witness table for PlaylistPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v408);
  v351 = v405;
  sub_21733CAD0();
  Playlist.init(propertyProvider:)(v408, v395);

  sub_2171F0738(v342, &qword_27CB24790, &unk_21775A220);
  sub_2171F0738(v428, &qword_27CB24BA8, &unk_217772FF0);
  sub_21733AB9C(v323);
  sub_21733CA78(v340, type metadata accessor for CloudPlaylist);
  return sub_21733CA78(v351, type metadata accessor for PlaylistPropertyProvider);
}

uint64_t sub_2172F9164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v93 = &v89 - v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256E0, &unk_21775D820);
  v13 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103, v14);
  v16 = (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v18);
  v102 = &v89 - v19;
  sub_2172CAE0C();
  v20 = MEMORY[0x277D84F90];
  v21 = sub_217751DC8();
  v92 = v4;
  v22 = v4[2];
  v23 = *(v22 + 16);
  if (v23)
  {
    v90 = a4;
    v111 = v20;
    sub_217276198(0, v23, 0);
    v24 = 0;
    v100 = v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v20 = v111;
    v101 = *(v22 + 16);
    v99 = a1;
    v94 = a2;
    v98 = v9;
    v96 = v22;
    v95 = v23;
    v97 = v16;
    while (v101 != v24)
    {
      if (v24 >= *(v22 + 16))
      {
        goto LABEL_44;
      }

      v26 = v102;
      v25 = v103;
      v27 = *(v103 + 48);
      sub_21726A630(v100 + *(v9 + 72) * v24, &v102[v27], &qword_27CB24A28, &qword_217758FE0);
      *v16 = v24;
      v28 = v16 + *(v25 + 48);
      sub_21726A594(&v26[v27], v28, &qword_27CB24A28, &qword_217758FE0);
      v110 = 0;
      v29 = CloudPlaylistEntry.id.getter();
      v31 = v21[2];
      v104 = v20;
      if (v31 && (v32 = sub_21763246C(v29, v30), (v33 & 1) != 0))
      {
        v34 = *(v21[7] + 8 * v32);

        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_47;
        }

        v110 = v34 + 1;
        v36 = CloudPlaylistEntry.id.getter();
        v38 = v37;
        swift_isUniquelyReferenced_nonNull_native();
        *v105 = v21;
        v39 = sub_21763246C(v36, v38);
        if (__OFADD__(v21[2], (v40 & 1) == 0))
        {
          goto LABEL_48;
        }

        v41 = v39;
        v42 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F78, &unk_21775ABB8);
        if (sub_217752CB8())
        {
          v43 = sub_21763246C(v36, v38);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_50;
          }

          v41 = v43;
        }

        v21 = *v105;
        if (v42)
        {
          *(*(*v105 + 56) + 8 * v41) = v35;
        }

        else
        {
          *(*v105 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v76 = (v21[6] + 16 * v41);
          *v76 = v36;
          v76[1] = v38;
          *(v21[7] + 8 * v41) = v35;
          v77 = v21[2];
          v56 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v56)
          {
            goto LABEL_49;
          }

          v21[2] = v78;
        }
      }

      else
      {

        v45 = CloudPlaylistEntry.id.getter();
        v47 = v46;
        swift_isUniquelyReferenced_nonNull_native();
        *v105 = v21;
        v48 = sub_21763246C(v45, v47);
        if (__OFADD__(v21[2], (v49 & 1) == 0))
        {
          goto LABEL_45;
        }

        v50 = v48;
        v51 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F78, &unk_21775ABB8);
        if (sub_217752CB8())
        {
          v52 = sub_21763246C(v45, v47);
          if ((v51 & 1) != (v53 & 1))
          {
            goto LABEL_50;
          }

          v50 = v52;
        }

        v21 = *v105;
        if (v51)
        {
          *(*(*v105 + 56) + 8 * v50) = 0;
        }

        else
        {
          *(*v105 + 8 * (v50 >> 6) + 64) |= 1 << v50;
          v54 = (v21[6] + 16 * v50);
          *v54 = v45;
          v54[1] = v47;
          *(v21[7] + 8 * v50) = 0;
          v55 = v21[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_46;
          }

          v21[2] = v57;
        }

        v35 = 0;
      }

      v58 = v94;
      v59 = CloudPlaylistEntry.id.getter();
      v61 = v60;
      *v105 = 95;
      *&v105[8] = 0xE100000000000000;
      *&v107 = v35;
      v62 = sub_217752FC8();
      MEMORY[0x21CEA23B0](v62);

      v64 = *&v105[8];
      v63 = *v105;
      *v105 = v59;
      *&v105[8] = v61;
      sub_217751DE8();
      MEMORY[0x21CEA23B0](v63, v64);

      v66 = *v105;
      MEMORY[0x28223BE20](v65, v67);
      *(&v89 - 6) = v28;
      *(&v89 - 5) = v24;
      *(&v89 - 4) = &v110;
      a1 = v99;
      *(&v89 - 3) = v99;
      *(&v89 - 2) = v58;
      if (v58)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256D0, &qword_21775D7E8);
        swift_allocObject();

        sub_217751DE8();
        v68 = sub_217339F28(v66, *(&v66 + 1), v58);
      }

      else
      {
        v69 = v93;
        sub_21726A630(v28, v93, &qword_27CB24A28, &qword_217758FE0);
        sub_2172CA838(a1, &v107);
        sub_217331E44(v69, v24);
        v68 = *v105;
        v107 = *&v105[8];
        v108 = *&v105[24];
        v109 = *&v105[40];
      }

      v70 = v58 != 0;
      v106 = v58 != 0;
      *v105 = v107;
      *&v105[16] = v108;
      *&v105[32] = v109;

      v16 = v97;
      sub_2171F0738(v97, &qword_27CB256E0, &unk_21775D820);
      v20 = v104;
      v111 = v104;
      v72 = *(v104 + 16);
      v71 = *(v104 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_217276198(v71 > 1, v72 + 1, 1);
        v20 = v111;
      }

      *(v20 + 16) = v72 + 1;
      v73 = v20 + (v72 << 6);
      *(v73 + 32) = v68;
      v74 = *v105;
      v75 = *&v105[16];
      *(v73 + 72) = *&v105[32];
      *(v73 + 56) = v75;
      *(v73 + 40) = v74;
      *(v73 + 88) = v70;
      ++v24;
      v9 = v98;
      v22 = v96;
      if (v95 == v24)
      {
        a4 = v90;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    result = sub_217753178();
    __break(1u);
  }

  else
  {
LABEL_32:
    sub_21726A630(v91, &v107, &qword_27CB24188, &dword_217758930);
    if (*(&v108 + 1))
    {
      *v105 = v107;
      *&v105[16] = v108;
      *&v105[32] = v109;
    }

    else
    {
      sub_21749A8FC(a1);
      if (*(&v108 + 1))
      {
        sub_2171F0738(&v107, &qword_27CB24188, &dword_217758930);
      }
    }

    v79 = *v92;
    v80 = v92[1];
    if (v80 == 1)
    {
      v81 = 0;
    }

    else
    {
      v81 = *v92;
    }

    if (v80 == 1)
    {
      v82 = 0;
    }

    else
    {
      v82 = v92[1];
    }

    v84 = v92[3];
    v83 = v92[4];
    v85 = v92[14];
    v86 = v92[15];
    *a4 = v20;
    *(a4 + 8) = 0;
    v87 = *&v105[16];
    *(a4 + 16) = *v105;
    *(a4 + 32) = v87;
    *(a4 + 48) = *&v105[32];
    sub_2171FB568(v79, v80);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();

    *(a4 + 56) = v81;
    *(a4 + 64) = v82;
    *(a4 + 72) = v84;
    *(a4 + 80) = v83;
    *(a4 + 88) = v85;
    *(a4 + 96) = v86;
  }

  return result;
}

uint64_t sub_2172F9998(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v434 = v4;
  v410 = v5;
  v432 = type metadata accessor for CloudPlaylist(0);
  v6 = *(*(v432 - 8) + 64);
  MEMORY[0x28223BE20](v432, v7);
  v409 = (&v406 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255F0, &unk_21775D4E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v407 = &v406 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v408 = &v406 - v15;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v443 = *(v440 - 1);
  v16 = *(v443 + 64);
  MEMORY[0x28223BE20](v440, v17);
  v439 = &v406 - v18;
  v453 = type metadata accessor for CloudRawCurator();
  v19 = *(*(v453 - 8) + 64);
  MEMORY[0x28223BE20](v453, v20);
  *&v456 = &v406 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v444 = *(v442 - 1);
  v22 = *(v444 + 64);
  MEMORY[0x28223BE20](v442, v23);
  v441 = &v406 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
  v451 = *(v25 - 8);
  v452 = v25;
  v26 = *(v451 + 64);
  MEMORY[0x28223BE20](v25, v27);
  v454 = &v406 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  *&v455 = &v406 - v31;
  v32 = sub_2177517D8();
  v33 = *(v32 - 1);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v415 = &v406 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8, v39);
  v41 = &v406 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v406 - v44;
  v433 = type metadata accessor for CloudPlaylist.Attributes(0);
  v46 = *(*(v433 - 1) + 64);
  MEMORY[0x28223BE20](v433, v47);
  v406 = &v406 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50);
  v435 = &v406 - v58;
  if (qword_280BE91E8 != -1)
  {
    goto LABEL_168;
  }

  while (2)
  {
    sub_2176CA830(qword_280C025C8, v51, v52, v53, v54, v55, v56, v57, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1));
    memcpy(v498, v497, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v498) == 1)
    {
      sub_2172E22C0(v496);
    }

    else
    {
      memcpy(v459, v498, 0x221uLL);
      Artwork.convertToCloudArtworkAttribute()(v477);
      memcpy(v487, v459, 0x221uLL);
      sub_217284084(v487);
      memcpy(v459, v477, 0x1B8uLL);
      nullsub_1(v459, v59);
      memcpy(v496, v459, sizeof(v496));
    }

    if (qword_280BE9390 != -1)
    {
      swift_once();
    }

    v60 = qword_280C026B0;
    v68 = sub_2172A47FC(qword_280C026B0);
    if (qword_280BE9268 != -1)
    {
      swift_once();
    }

    v69 = qword_280C02618;
    sub_2172A40F0(qword_280C02618, v61, v62, v63, v64, v65, v66, v67, v406, v407, v408, v409, v410, v411, SWORD2(v411), SBYTE6(v411), SHIBYTE(v411), v412, v413, v414, v415, v416, v417, v418, v419);
    v450 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v68, v70, 0);

    v71 = sub_2172A47FC(v60);
    sub_2172A40F0(v69, v72, v73, v74, v75, v76, v77, v78, v406, v407, v408, v409, v410, v411, SWORD2(v411), SBYTE6(v411), SHIBYTE(v411), v412, v413, v414, v415, v416, v417, v418, v419);
    v449 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v71, v79, 1);

    if (qword_280BE93B0 != -1)
    {
      swift_once();
    }

    v80 = sub_2172A3F14();
    v447 = v81;
    v448 = v80;
    if (qword_280BE92A8 != -1)
    {
      swift_once();
    }

    v82 = sub_2172A3F14();
    v445 = v83;
    v446 = v82;
    if (qword_280BE9270 != -1)
    {
      swift_once();
    }

    v84 = sub_2172A3F14();
    v437 = v85;
    v438 = v84;
    v436 = sub_217751DC8();
    if (qword_280BE9298 != -1)
    {
      swift_once();
    }

    v431 = sub_2172A47E0(qword_280C02640);
    if (qword_280BE8100 != -1)
    {
      swift_once();
    }

    sub_2176CAC88(qword_280C02428, v86, v87, v88, v89, v90, v91, v92, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1));
    v492 = v487[0];
    v493 = v487[1];
    v494 = v487[2];
    v495 = v487[3];
    v93 = *(&v487[0] + 1);
    if (*(&v487[0] + 1) == 1)
    {
      v424 = 0;
      v425 = 0;
      v93 = 0;
      v426 = 0;
      v427 = 0;
      v428 = 0;
      v429 = 0uLL;
      v423 = 0;
    }

    else
    {
      v429 = v495;
      v94 = *(&v494 + 1);
      v427 = v494;
      v95 = *(&v493 + 1);
      v424 = v492;
      v425 = v493;
      sub_217751DE8();
      sub_217751DE8();
      v426 = v95;
      sub_217751DE8();
      v428 = v94;
      sub_217751DE8();
      v423 = sub_217751DC8();
      sub_2171F0738(&v492, &qword_27CB24B70, &unk_217759460);
    }

    v430 = v93;
    if (qword_280BE9238 != -1)
    {
      swift_once();
    }

    v422 = sub_2172A47C4(qword_280C025F8);
    if (qword_280BE93A0 != -1)
    {
      swift_once();
    }

    sub_2176CAC94(qword_280C026C0, v96, v97, v98, v99, v100, v101, v102, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423);
    v420 = v490;
    v421 = v489;
    v419 = v491;
    if (qword_280BE92E8 != -1)
    {
      swift_once();
    }

    sub_2172A40F0(qword_280C02670, v103, v104, v105, v106, v107, v108, v109, v406, v407, v408, v409, v410, v411, SWORD2(v411), SBYTE6(v411), SHIBYTE(v411), v412, v413, v414, v415, v416, v417, v418, v419);
    HIDWORD(v418) = v110;
    LODWORD(v418) = Playlist.isChart.getter();
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for CloudFormatter();
    v119 = __swift_project_value_buffer(v111, qword_280BE8918);
    if (qword_280BE92C8 != -1)
    {
      swift_once();
    }

    sub_2176CA4A8(qword_280C02658, v112, v113, v114, v115, v116, v117, v118, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
    v120 = v41;
    sub_21726A630(v45, v41, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v41, 1, v32) == 1)
    {
      sub_2171F0738(v45, &qword_27CB241C0, &qword_217759480);
      sub_2171F0738(v41, &qword_27CB241C0, &qword_217759480);
      v416 = 0;
      v417 = 0;
    }

    else
    {
      v121 = v415;
      (*(v33 + 32))(v415, v120, v32);
      v122 = *(v119 + *(v111 + 24));
      v123 = sub_2177517A8();
      v124 = [v122 stringFromDate_];

      v125 = sub_217751F48();
      v416 = v126;
      v417 = v125;

      (*(v33 + 8))(v121, v32);
      sub_2171F0738(v45, &qword_27CB241C0, &qword_217759480);
    }

    if (qword_280BE9208 != -1)
    {
      swift_once();
    }

    v127 = sub_2172A3F14();
    if (v128)
    {
      v135 = v127;
    }

    else
    {
      v135 = 0;
    }

    v136 = 0xE000000000000000;
    if (v128)
    {
      v136 = v128;
    }

    v414 = v136;
    v415 = v135;
    if (qword_280BE9210 != -1)
    {
      swift_once();
    }

    v137 = v435 + 600;
    sub_2176CA4C8(qword_280C025D8, v128, v129, v130, v131, v132, v133, v134, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423);
    v145 = 0x6169726F74696465;
    v41 = 0;
    v146 = 0;
    switch(v488[127])
    {
      case 1:
        v147 = 0x6E7265747865;
        goto LABEL_48;
      case 2:
        v147 = 0x6E6F73726570;
LABEL_48:
        v145 = v147 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
        goto LABEL_50;
      case 3:
        v145 = 0x79616C706572;
        goto LABEL_50;
      case 4:
        v145 = 0x6168732D72657375;
        goto LABEL_50;
      case 5:
        goto LABEL_51;
      default:
LABEL_50:
        v41 = v145;
        v146 = sub_217751DE8();
LABEL_51:
        v413 = v146;
        if (qword_280BE9340 != -1)
        {
          swift_once();
        }

        sub_2176CAD44(qword_280C02688, v138, v139, v140, v141, v142, v143, v144, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1));
        if (qword_280BE9398 != -1)
        {
          swift_once();
        }

        sub_2172A40F0(qword_280C026B8, v148, v149, v150, v151, v152, v153, v154, v406, v407, v408, v409, v410, v411, SWORD2(v411), SBYTE6(v411), SHIBYTE(v411), v412, v413, v414, v415, v416, v417, v418, v419);
        HIDWORD(v412) = v155;
        if (qword_280BE93C0 != -1)
        {
          swift_once();
        }

        v411 = sub_2172A47B0();
        v157 = v156;
        if (qword_280BE93D0 != -1)
        {
          swift_once();
        }

        v165 = sub_2172A4794(qword_280C026E0);
        if (qword_280BE9218 != -1)
        {
          swift_once();
        }

        v32 = v433;
        v166 = v435;
        v167 = v435 + v433[22];
        sub_2176CA488(qword_280C025E0, v158, v159, v160, v161, v162, v163, v164, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        if (qword_280BE8128 != -1)
        {
          swift_once();
        }

        v168 = sub_2172A3F14();
        v170 = v169;
        memcpy(v166, v496, 0x1B8uLL);
        v171 = v449;
        *(v166 + 440) = v450;
        *(v166 + 448) = v171;
        v172 = v447;
        *(v166 + 456) = v448;
        *(v166 + 464) = v172;
        v173 = v445;
        *(v166 + 472) = v446;
        *(v166 + 480) = v173;
        v174 = v437;
        *(v166 + 488) = v438;
        *(v166 + 496) = v174;
        v175 = v431;
        *(v166 + 504) = v436;
        *(v166 + 512) = v175;
        *(v166 + 520) = v424;
        *(v166 + 528) = v430;
        v176 = v426;
        *(v166 + 536) = v425;
        *(v166 + 544) = v176;
        v177 = v428;
        *(v166 + 552) = v427;
        *(v166 + 560) = v177;
        v178 = *(&v429 + 1);
        *(v166 + 568) = v429;
        *(v166 + 576) = v178;
        v179 = v422;
        *(v166 + 584) = v423;
        *(v166 + 592) = v179;
        v180 = v420;
        *v137 = v421;
        *(v137 + 16) = v180;
        *(v166 + 632) = v419;
        LOBYTE(v179) = v418;
        *(v166 + 640) = BYTE4(v418);
        *(v166 + 641) = v179;
        v181 = v416;
        *(v166 + 648) = v417;
        *(v166 + 656) = v181;
        v182 = v414;
        *(v166 + 664) = v415;
        *(v166 + 672) = v182;
        *(v166 + 680) = v41;
        *(v166 + 688) = v413;
        memcpy((v166 + 696), v488, 0x78uLL);
        *(v166 + 816) = BYTE4(v412);
        *(v166 + 824) = v411;
        *(v137 + 232) = v157 & 1;
        *(v166 + 840) = v165;
        v183 = (v166 + v32[23]);
        *v183 = v168;
        v183[1] = v170;
        v487[0] = 0uLL;
        *&v487[1] = 1;
        bzero(&v487[1] + 8, 0x368uLL);
        if (qword_280BE92D0 != -1)
        {
          swift_once();
        }

        sub_2176CAD50(qword_280C02660, v184, v185, v186, v187, v188, v189, v190, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        v45 = v455;
        if (qword_280BE91D8 != -1)
        {
          swift_once();
        }

        sub_2176CAD6C(qword_280BE91E0, v191, v192, v193, v194, v195, v196, v197, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        if (qword_280BE9230 != -1)
        {
          swift_once();
        }

        sub_2172A40F0(qword_280C025F0, v198, v199, v200, v201, v202, v203, v204, v406, v407, v408, v409, v410, v411, SWORD2(v411), SBYTE6(v411), SHIBYTE(v411), v412, v413, v414, v415, v416, v417, v418, v419);
        if (v205 == 2 || (v205 & 1) != 0)
        {
          v484 = 0;
          v483 = 0u;
          memset(v482, 0, sizeof(v482));
        }

        else
        {
          if (qword_280BE91C0 != -1)
          {
            swift_once();
          }

          sub_2176CAD88(qword_280BE91C8, v206, v207, v208, v209, v210, v211, v212, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        }

        if (qword_280BE9188 != -1)
        {
          swift_once();
        }

        sub_2176CADA4(qword_280BE9190, v206, v207, v208, v209, v210, v211, v212, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        if (qword_280BE91A8 != -1)
        {
          swift_once();
        }

        sub_2176CAD50(qword_280BE91B0, v213, v214, v215, v216, v217, v218, v219, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        if (qword_280BE91F0 != -1)
        {
          swift_once();
        }

        sub_2176CA46C(qword_280BE91F8, v220, v221, v222, v223, v224, v225, v226, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        if (qword_280BE9308 != -1)
        {
          swift_once();
        }

        sub_2176CADC0(qword_280BE9310, v227, v228, v229, v230, v231, v232, v233, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1));
        v445 = v3;
        if (!v486[11] && !v485[11] && !*(&v483 + 1) && !v480[11] && !v481[11] && !v479[11] && !v478[3])
        {
          goto LABEL_125;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25618, &qword_21775D548);
        v234 = swift_allocObject();
        v234[1] = xmmword_217759200;
        sub_21726A630(v485, v465, &qword_27CB25610, &qword_21775D540);
        v431 = v234;
        if (!v465[11])
        {
          sub_2171F0738(v465, &qword_27CB25610, &qword_21775D540);
          v234[8] = 0u;
          v234[9] = 0u;
          v234[6] = 0u;
          v234[7] = 0u;
          v234[4] = 0u;
          v234[5] = 0u;
          v234[2] = 0u;
          v234[3] = 0u;
          goto LABEL_101;
        }

        sub_2172EC940();
        v33 = *&v466[16];
        v235 = *(*&v466[16] + 16);
        v430 = *v466;
        if (v235)
        {
          *(&v429 + 1) = *&v466[8];
          sub_2171FB568(*v466, *&v466[8]);
          v471[0] = MEMORY[0x277D84F90];
          sub_217276778(0, v235, 0);
          v236 = 0;
          v436 = v33 + ((*(v444 + 80) + 32) & ~*(v444 + 80));
          v437 = v235;
          v237 = v471[0];
          v438 = v33;
          v32 = v452;
          while (v236 < *(v33 + 16))
          {
            v238 = v436 + *(v444 + 72) * v236;
            v450 = v237;
            v239 = v441;
            sub_21726A630(v238, v441, &qword_27CB24490, &qword_21775A250);
            sub_21733CAD0();
            swift_storeEnumTagMultiPayload();
            sub_21733CAD0();
            v449 = v236;
            v240 = v442[10];
            v241 = v239 + v442[9];
            v242 = *v241;
            v41 = *(v241 + 8);
            LODWORD(v446) = *(v241 + 16);
            v243 = v239 + v240;
            v244 = *(v239 + v240);
            v245 = *(v243 + 8);
            v447 = v242;
            v448 = v244;
            v246 = v442[11];
            memcpy(v459, (v239 + v246), 0x180uLL);
            v247 = *(v239 + v442[12]);
            v248 = *(v239 + v442[13]);
            v249 = *(v239 + v442[14]);
            v250 = *(v239 + v442[15]);
            v251 = v455 + v32[9];
            v252 = v448;
            *v251 = v447;
            *(v251 + 8) = v41;
            *(v251 + 16) = v446;
            v253 = v455;
            v254 = (v455 + v32[10]);
            *v254 = v252;
            v254[1] = v245;
            v255 = (v239 + v246);
            v45 = v253;
            memcpy(&v253[v32[11]], v255, 0x180uLL);
            *&v45[v32[12]] = v247;
            *&v45[v32[13]] = v248;
            *&v45[v32[14]] = v249;
            *&v45[v32[15]] = v250;
            sub_217751DE8();
            sub_217751DE8();
            sub_21726A630(v459, v477, &qword_27CB25620, &qword_21776A5F0);
            sub_217751DE8();
            sub_217751DE8();
            sub_217751DE8();
            sub_217751DE8();
            sub_21733CA78(v456, type metadata accessor for CloudRawCurator);
            v256 = v239;
            v237 = v450;
            sub_2171F0738(v256, &qword_27CB24490, &qword_21775A250);
            v471[0] = v237;
            v258 = *(v237 + 16);
            v257 = *(v237 + 24);
            if (v258 >= v257 >> 1)
            {
              sub_217276778(v257 > 1, v258 + 1, 1);
              v237 = v471[0];
            }

            v236 = v449 + 1;
            *(v237 + 16) = v258 + 1;
            sub_21726A594(v45, v237 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v258, &qword_27CB247B0, &qword_21775A1C0);
            v33 = v438;
            v3 = v445;
            if (v437 == v236)
            {
              v259 = *(&v429 + 1);
              v450 = v237;
              goto LABEL_100;
            }
          }

          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          swift_once();
          continue;
        }

        v259 = *&v466[8];
        sub_2171FB568(*v466, *&v466[8]);
        v450 = MEMORY[0x277D84F90];
LABEL_100:
        *&v455 = *&v466[24];
        v260 = *&v466[32];
        v449 = *&v466[40];
        v261 = *&v466[48];
        v45 = *&v466[56];
        v262 = *&v466[64];
        v263 = v431;
        sub_21726A630(&v466[72], v431 + 104, &qword_27CB24188, &dword_217758930);
        v264 = *&v466[112];
        v32 = *&v466[120];
        v263[4] = v430;
        v263[5] = v259;
        v265 = v455;
        v263[6] = v450;
        v263[7] = v265;
        v266 = v449;
        v263[8] = v260;
        v263[9] = v266;
        v263[10] = v261;
        v263[11] = v45;
        v263[12] = v262;
        v263[18] = v264;
        v263[19] = v32;
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v466, &qword_27CB242A8, &unk_21775D570);
        sub_2171F0738(v465, &qword_27CB25638, &unk_21775EA10);
LABEL_101:
        sub_21726A630(v481, v465, &qword_27CB25608, &unk_21775D530);
        if (v465[11])
        {
          sub_2172EC7F4();
          v33 = *&v466[16];
          v267 = *(*&v466[16] + 16);
          if (v267)
          {
            v437 = *&v466[8];
            v438 = *v466;
            sub_2171FB568(*v466, *&v466[8]);
            v471[0] = MEMORY[0x277D84F90];
            sub_217276778(0, v267, 0);
            v41 = 0;
            v441 = v33 + ((*(v443 + 80) + 32) & ~*(v443 + 80));
            v442 = v267;
            v268 = v471[0];
            v3 = v454;
            v444 = v33;
            v269 = v439;
            do
            {
              if (v41 >= *(v33 + 16))
              {
                goto LABEL_167;
              }

              sub_21726A630(v441 + *(v443 + 72) * v41, v269, &qword_27CB247C0, &unk_21779AA10);
              sub_21733CAD0();
              swift_storeEnumTagMultiPayload();
              sub_21733CAD0();
              *&v455 = v41;
              v270 = v440[10];
              v271 = v269 + v440[9];
              v272 = *v271;
              v273 = *(v271 + 8);
              LODWORD(v448) = *(v271 + 16);
              v274 = v269 + v270;
              v275 = *(v269 + v270);
              v276 = *(v274 + 8);
              v449 = v273;
              v450 = v275;
              v277 = v440[11];
              memcpy(v459, (v269 + v277), 0x180uLL);
              v278 = *(v269 + v440[13]);
              v446 = *(v269 + v440[12]);
              v447 = v278;
              v32 = *(v269 + v440[14]);
              v279 = *(v269 + v440[15]);
              v280 = v268;
              v281 = v452;
              v282 = &v454[v452[9]];
              *v282 = v272;
              *(v282 + 1) = v273;
              v3 = v454;
              v282[16] = v448;
              v283 = (v3 + v281[10]);
              *v283 = v450;
              v283[1] = v276;
              memcpy(v3 + v281[11], (v269 + v277), 0x180uLL);
              v45 = v447;
              *(v3 + v281[12]) = v446;
              *(v3 + v281[13]) = v45;
              *(v3 + v281[14]) = v32;
              v284 = v281[15];
              v268 = v280;
              *(v3 + v284) = v279;
              sub_217751DE8();
              sub_217751DE8();
              sub_21726A630(v459, v477, &qword_27CB25620, &qword_21776A5F0);
              sub_217751DE8();
              sub_217751DE8();
              sub_217751DE8();
              sub_217751DE8();
              sub_21733CA78(v456, type metadata accessor for CloudRawCurator);
              sub_2171F0738(v269, &qword_27CB247C0, &unk_21779AA10);
              v471[0] = v280;
              v286 = *(v280 + 16);
              v285 = *(v280 + 24);
              if (v286 >= v285 >> 1)
              {
                sub_217276778(v285 > 1, v286 + 1, 1);
                v268 = v471[0];
              }

              v287 = (v455 + 1);
              *(v268 + 16) = v286 + 1;
              sub_21726A594(v3, v268 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v286, &qword_27CB247B0, &qword_21775A1C0);
              v33 = v444;
              v41 = v287;
            }

            while (v442 != v287);
            v289 = v437;
            v288 = v438;
            *&v456 = v268;
          }

          else
          {
            v288 = *v466;
            v289 = *&v466[8];
            sub_2171FB568(*v466, *&v466[8]);
            *&v456 = MEMORY[0x277D84F90];
          }

          v291 = *&v466[32];
          v454 = *&v466[40];
          *&v455 = *&v466[24];
          v292 = *&v466[48];
          v293 = *&v466[56];
          v294 = *&v466[64];
          v295 = v431;
          sub_21726A630(&v466[72], v431 + 232, &qword_27CB24188, &dword_217758930);
          v296 = *&v466[112];
          v297 = *&v466[120];
          v295[20] = v288;
          v295[21] = v289;
          v298 = v454;
          v299 = v455;
          v295[22] = v456;
          v295[23] = v299;
          v295[24] = v291;
          v295[25] = v298;
          v295[26] = v292;
          v295[27] = v293;
          v295[28] = v294;
          v295[34] = v296;
          v295[35] = v297;
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          v290 = v295;
          sub_217751DE8();
          sub_217751DE8();
          sub_2171F0738(v466, &qword_27CB25628, &qword_21775D560);
          sub_2171F0738(v465, &qword_27CB25630, &qword_21775D568);
          v3 = v445;
        }

        else
        {
          sub_2171F0738(v465, &qword_27CB25608, &unk_21775D530);
          v290 = v431;
          *(v431 + 256) = 0u;
          v290[17] = 0u;
          v290[14] = 0u;
          v290[15] = 0u;
          v290[12] = 0u;
          v290[13] = 0u;
          v290[10] = 0u;
          v290[11] = 0u;
        }

        v300 = v434;
        sub_2172CA838(v434, v477);
        sub_2172FC7F4(v290, v477, v459);
        sub_21726A630(v486, v466, &qword_27CB25330, &unk_21775E9B0);
        if (*&v466[88])
        {
          sub_2172EC1F4(v477, v300, 0);
          sub_2171F0738(v466, &unk_27CB28230, &unk_21775CD50);
        }

        else
        {
          sub_2171F0738(v466, &qword_27CB25330, &unk_21775E9B0);
          memset(v477, 0, 128);
        }

        sub_21726A630(v459, v466, &qword_27CB24290, &unk_21775D550);
        sub_21726A630(v482, v471, &unk_27CB28A30, &unk_21775E9C0);
        if (v471[11])
        {
          sub_2172FCA10(0, v465);
          sub_2171F0738(v471, &unk_27CB2ACA0, &unk_217759C60);
        }

        else
        {
          sub_2171F0738(v471, &unk_27CB28A30, &unk_21775E9C0);
          memset(v465, 0, 128);
        }

        sub_21726A630(v480, v474, &qword_27CB25330, &unk_21775E9B0);
        if (*(&v474[5] + 1))
        {
          sub_2172EC1F4(v471, v434, 0);
          sub_2171F0738(v474, &unk_27CB28230, &unk_21775CD50);
        }

        else
        {
          sub_2171F0738(v474, &qword_27CB25330, &unk_21775E9B0);
          memset(v471, 0, 128);
        }

        sub_21726A630(v479, v474, &unk_27CB28A60, &qword_217770B60);
        if (*(&v474[5] + 1))
        {
          sub_2172EC5D8(0, v470);
          sub_2171F0738(v474, &qword_27CB240D0, &unk_21775D400);
          sub_2174CF9BC();
          sub_2171F0738(v470, &qword_27CB24248, &qword_217758670);
          sub_2171F0738(v459, &qword_27CB24290, &unk_21775D550);
          sub_2171F0738(v487, &qword_27CB24358, &unk_21775D510);
        }

        else
        {
          sub_2171F0738(v459, &qword_27CB24290, &unk_21775D550);
          sub_2171F0738(v487, &qword_27CB24358, &unk_21775D510);
          sub_2171F0738(v474, &unk_27CB28A60, &qword_217770B60);
          memset(v474, 0, 128);
        }

        memcpy(v487, v477, 0x80uLL);
        memcpy(&v487[16], v466, 0x80uLL);
        memcpy(&v487[24], v465, 0x80uLL);
        memcpy(&v487[32], v471, 0x80uLL);
        memcpy(&v487[48], v474, 0x80uLL);
        memset(&v487[8], 0, 128);
        memset(&v487[40], 0, 128);
LABEL_125:
        v477[0] = 0uLL;
        *&v477[1] = 1;
        bzero(&v477[1] + 8, 0x1E8uLL);
        if (qword_280BE92F8 != -1)
        {
          swift_once();
        }

        sub_2176CADCC(qword_280BE9300, v301, v302, v303, v304, v305, v306, v307, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        if (qword_280BE9370 != -1)
        {
          swift_once();
        }

        sub_2176CAD50(qword_280BE9378, v308, v309, v310, v311, v312, v313, v314, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        if (v476[11] | v475[11])
        {
          sub_21726A630(v476, v459, &qword_27CB25310, &unk_21775D3D0);
          if (*(&v459[5] + 1))
          {
            sub_2172EBD40();
            sub_2171F0738(v459, &qword_27CB25398, &unk_21776C4F0);
          }

          else
          {
            sub_2171F0738(v459, &qword_27CB25310, &unk_21775D3D0);
            memset(v458, 0, sizeof(v458));
          }

          sub_21726A630(v475, v459, &qword_27CB25330, &unk_21775E9B0);
          if (*(&v459[5] + 1))
          {
            sub_2172EC1F4(v457, v434, 0);
            sub_2171F0738(v477, &qword_27CB24350, &unk_21776A5D0);
            sub_2171F0738(v459, &unk_27CB28230, &unk_21775CD50);
          }

          else
          {
            sub_2171F0738(v477, &qword_27CB24350, &unk_21776A5D0);
            sub_2171F0738(v459, &qword_27CB25330, &unk_21775E9B0);
            memset(v457, 0, sizeof(v457));
          }

          bzero(v477, 0x100uLL);
          memcpy(&v477[16], v458, 0x80uLL);
          memcpy(&v477[24], v457, 0x80uLL);
        }

        v474[0] = 0uLL;
        *&v474[1] = 1;
        bzero(&v474[1] + 8, 0xE8uLL);
        if (qword_280BE9290 != -1)
        {
          swift_once();
        }

        sub_2176CADE8(qword_280C02638, v315, v316, v317, v318, v319, v320, v321, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        if (qword_280BE80B0 != -1)
        {
          swift_once();
        }

        sub_2176CA46C(qword_280C023F8, v322, v323, v324, v325, v326, v327, v328, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423, v424, v425);
        if (v473[2] | v472[11])
        {
          sub_21726A630(v473, v466, &qword_27CB24230, &unk_21775E9D0);
          sub_21726A630(v472, v459, &unk_27CB28A60, &qword_217770B60);
          if (*(&v459[5] + 1))
          {
            sub_2172EC5D8(0, v465);
            sub_2171F0738(v474, &qword_27CB243A0, &qword_2177586A8);
            sub_2171F0738(v459, &qword_27CB240D0, &unk_21775D400);
          }

          else
          {
            sub_2171F0738(v474, &qword_27CB243A0, &qword_2177586A8);
            sub_2171F0738(v459, &unk_27CB28A60, &qword_217770B60);
            memset(v465, 0, 128);
          }

          memcpy(v459, v466, 0x80uLL);
          memcpy(&v459[8], v465, 0x80uLL);
          memcpy(v474, v459, sizeof(v474));
        }

        memset(v471, 0, 48);
        v471[6] = 1;
        bzero(&v471[7], 0x108uLL);
        if (qword_280BE8108 != -1)
        {
          swift_once();
        }

        sub_2176CAE04(qword_280C02430, v329, v330, v331, v332, v333, v334, v335, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, *(&v421 + 1), v422, v423);
        v455 = v459[1];
        v456 = v459[0];
        if (qword_280BE9260 != -1)
        {
          swift_once();
        }

        v336 = sub_2172A3F14();
        v338 = v337;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A8, &unk_21775D4F0);
        swift_allocObject();
        v339 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
        v340 = sub_2172A46BC(v339);

        sub_21726A630(v474, v470, &qword_27CB243A0, &qword_2177586A8);
        if (*(&v456 + 1) != 1 || v338 || v340 || v470[2] != 1)
        {
          if (v338)
          {
            v341 = sub_217751DC8();
            sub_2171F0738(v471, &qword_27CB24348, &unk_21775D520);
          }

          else
          {
            sub_2171F0738(v471, &qword_27CB24348, &unk_21775D520);
            v336 = 0;
            v341 = 0;
          }

          sub_21726A630(v470, &v459[4], &qword_27CB243A0, &qword_2177586A8);
          v459[0] = v456;
          v459[1] = v455;
          *&v459[2] = v336;
          *(&v459[2] + 1) = v338;
          *&v459[3] = v341;
          *(&v459[3] + 1) = v340;
          memcpy(v471, v459, 0x140uLL);
        }

        sub_2172757C0(v3, v459);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255F8, &qword_21775D500);
        if (swift_dynamicCast())
        {
          sub_2171F3F0C(v466, v467);
          v342 = v468;
          v343 = v469;
          __swift_project_boxed_opaque_existential_1(v467, v468);
          v344 = v435;
          v345 = v407;
          sub_21733CAD0();
          v346 = v433;
          __swift_storeEnumTagSinglePayload(v345, 0, 1, v433);
          v347 = *(v343 + 24);
          v348 = sub_21733CDD0(&qword_280BE4478, type metadata accessor for CloudPlaylist);
          v405 = v343;
          v349 = v408;
          v347(v345, v434, v432, v432, &type metadata for AnyMusicDataRequestConfiguration, v348, &protocol witness table for AnyMusicDataRequestConfiguration, v342, v405);
          sub_2171F0738(v345, &qword_27CB255F0, &unk_21775D4E0);
          if (__swift_getEnumTagSinglePayload(v349, 1, v346) == 1)
          {
            sub_21733CE30();
            if (__swift_getEnumTagSinglePayload(v349, 1, v346) != 1)
            {
              sub_2171F0738(v349, &qword_27CB255F0, &unk_21775D4E0);
            }
          }

          else
          {
            sub_21733CA78(v344, type metadata accessor for CloudPlaylist.Attributes);
            sub_21733CE30();
          }

          sub_21733CE30();
          v351 = v468;
          v352 = v469;
          __swift_project_boxed_opaque_existential_1(v467, v468);
          v353 = v434;
          v350 = v432;
          (*(v352 + 32))(v459, v487, v434, v432, v432, &type metadata for AnyMusicDataRequestConfiguration, v348, &protocol witness table for AnyMusicDataRequestConfiguration, v351, v352);
          sub_2171F0738(v487, &qword_27CB24358, &unk_21775D510);
          memcpy(v487, v459, sizeof(v487));
          v354 = v468;
          v355 = v469;
          __swift_project_boxed_opaque_existential_1(v467, v468);
          (*(v355 + 40))(v459, v477, v353, v350, v350, &type metadata for AnyMusicDataRequestConfiguration, v348, &protocol witness table for AnyMusicDataRequestConfiguration, v354, v355);
          sub_2171F0738(v477, &qword_27CB24350, &unk_21776A5D0);
          memcpy(v477, v459, sizeof(v477));
          v356 = v468;
          v357 = v469;
          __swift_project_boxed_opaque_existential_1(v467, v468);
          (*(v357 + 48))(v459, v471, v353, v350, v350, &type metadata for AnyMusicDataRequestConfiguration, v348, &protocol witness table for AnyMusicDataRequestConfiguration, v356, v357);
          sub_2171F0738(v471, &qword_27CB24348, &unk_21775D520);
          memcpy(v471, v459, 0x140uLL);
          __swift_destroy_boxed_opaque_existential_1(v467);
          v3 = v445;
        }

        else
        {
          memset(v466, 0, 40);
          sub_2171F0738(v466, &qword_27CB25600, &qword_21775D508);
          v350 = v432;
        }

        v359 = *v3;
        v358 = v3[1];
        v360 = v350[5];
        v361 = v409;
        sub_21733CAD0();
        sub_21726A630(v487, v361 + v350[6], &qword_27CB24358, &unk_21775D510);
        sub_21726A630(v477, v361 + v350[7], &qword_27CB24350, &unk_21776A5D0);
        sub_21726A630(v471, v361 + v350[8], &qword_27CB24348, &unk_21775D520);
        *v361 = v359;
        v361[1] = v358;
        v362 = v3[5];
        v363 = v3[6];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v362);
        v364 = v3;
        v365 = *(v363 + 24);
        sub_217751DE8();
        v365(v465, v362, v363);
        nullsub_1(v465, v366);
        memcpy(v466, v465, 0x161uLL);
        v367 = v410;
        sub_21733CAD0();
        v368 = v364[5];
        v369 = v364[6];
        __swift_project_boxed_opaque_existential_1(v364 + 2, v368);
        (*(v369 + 96))(v459, v368, v369);
        v370 = *(&v459[1] + 1);
        v371 = *&v459[2];
        __swift_project_boxed_opaque_existential_1(v459, *(&v459[1] + 1));
        (*(*(v371 + 8) + 48))(v463, v370);
        __swift_destroy_boxed_opaque_existential_1(v459);
        *&v456 = v463[0];
        *&v455 = v463[1];
        LODWORD(v454) = v464;
        v372 = v364[5];
        v373 = v364[6];
        __swift_project_boxed_opaque_existential_1(v364 + 2, v372);
        (*(v373 + 96))(v459, v372, v373);
        v374 = *(&v459[1] + 1);
        v375 = *&v459[2];
        __swift_project_boxed_opaque_existential_1(v459, *(&v459[1] + 1));
        v376 = (*(*(v375 + 8) + 56))(v374);
        v452 = v377;
        v453 = v376;
        __swift_destroy_boxed_opaque_existential_1(v459);
        memcpy(v459, v466, 0x168uLL);
        *(&v459[22] + 1) = 0;
        v459[23] = 0uLL;
        nullsub_1(v459, v378);
        v379 = v364[5];
        v380 = v364[6];
        __swift_project_boxed_opaque_existential_1(v364 + 2, v379);
        (*(v380 + 96))(v460, v379, v380);
        v381 = v461;
        v382 = v462;
        __swift_project_boxed_opaque_existential_1(v460, v461);
        v383 = (*(*(v382 + 8) + 64))(v381);
        __swift_destroy_boxed_opaque_existential_1(v460);
        v384 = v364[5];
        v385 = v364[6];
        __swift_project_boxed_opaque_existential_1(v364 + 2, v384);
        (*(v385 + 96))(v460, v384, v385);
        v386 = v461;
        v387 = v462;
        __swift_project_boxed_opaque_existential_1(v460, v461);
        v388 = (*(*(v387 + 8) + 72))(v386);
        __swift_destroy_boxed_opaque_existential_1(v460);
        v389 = v364[5];
        v390 = v364[6];
        __swift_project_boxed_opaque_existential_1(v364 + 2, v389);
        (*(v390 + 96))(v460, v389, v390);
        v391 = v461;
        v392 = v462;
        __swift_project_boxed_opaque_existential_1(v460, v461);
        v393 = (*(*(v392 + 8) + 80))(v391);
        __swift_destroy_boxed_opaque_existential_1(v460);
        v394 = v364[5];
        v395 = v364[6];
        __swift_project_boxed_opaque_existential_1(v364 + 2, v394);
        (*(v395 + 96))(v460, v394, v395);
        v396 = v461;
        v397 = v462;
        __swift_project_boxed_opaque_existential_1(v460, v461);
        v398 = (*(*(v397 + 8) + 88))(v396);
        sub_21733CA78(v361, type metadata accessor for CloudPlaylist);
        sub_2171F0738(v471, &qword_27CB24348, &unk_21775D520);
        sub_2171F0738(v474, &qword_27CB243A0, &qword_2177586A8);
        sub_2171F0738(v477, &qword_27CB24350, &unk_21776A5D0);
        sub_2171F0738(v487, &qword_27CB24358, &unk_21775D510);
        sub_21733CA78(v435, type metadata accessor for CloudPlaylist.Attributes);
        __swift_destroy_boxed_opaque_existential_1(v460);
        v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
        v400 = v367 + v399[9];
        v401 = v455;
        *v400 = v456;
        *(v400 + 8) = v401;
        *(v400 + 16) = v454;
        v402 = (v367 + v399[10]);
        v403 = v452;
        *v402 = v453;
        v402[1] = v403;
        memcpy((v367 + v399[11]), v459, 0x180uLL);
        *(v367 + v399[12]) = v383;
        *(v367 + v399[13]) = v388;
        *(v367 + v399[14]) = v393;
        *(v367 + v399[15]) = v398;
        sub_2171F0738(v473, &qword_27CB24230, &unk_21775E9D0);
        sub_2171F0738(v476, &qword_27CB25310, &unk_21775D3D0);
        sub_2171F0738(v486, &qword_27CB25330, &unk_21775E9B0);
        sub_2171F0738(v470, &qword_27CB243A0, &qword_2177586A8);
        sub_2171F0738(v472, &unk_27CB28A60, &qword_217770B60);
        sub_2171F0738(v475, &qword_27CB25330, &unk_21775E9B0);
        sub_2171F0738(v478, &qword_27CB24BA8, &unk_217772FF0);
        sub_2171F0738(v479, &unk_27CB28A60, &qword_217770B60);
        sub_2171F0738(v480, &qword_27CB25330, &unk_21775E9B0);
        sub_2171F0738(v481, &qword_27CB25608, &unk_21775D530);
        sub_2171F0738(v482, &unk_27CB28A30, &unk_21775E9C0);
        return sub_2171F0738(v485, &qword_27CB25610, &qword_21775D540);
    }
  }
}

double sub_2172FC7F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  memset(v12, 0, 128);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    do
    {
      sub_21726A630(v6, __src, &qword_27CB24290, &unk_21775D550);
      if (__src[2])
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_21726A630(v12, v9, &qword_27CB24290, &unk_21775D550);
        if (v9[2])
        {
          memcpy(__src, v9, sizeof(__src));
          sub_217312B20(__dst, a2, 0, sub_21749A8FC, sub_217543E28, v9);
          sub_2171F0738(__src, &qword_27CB24298, &qword_21777CD60);
          sub_2171F0738(__dst, &qword_27CB24298, &qword_21777CD60);
          sub_2171F0738(v12, &qword_27CB24290, &unk_21775D550);
          v7 = v9;
        }

        else
        {
          sub_2171F0738(v12, &qword_27CB24290, &unk_21775D550);
          sub_2171F0738(v9, &qword_27CB24290, &unk_21775D550);
          v7 = __dst;
        }

        memcpy(v12, v7, 0x80uLL);
      }

      else
      {
        sub_2171F0738(__src, &qword_27CB24290, &unk_21775D550);
      }

      v6 += 128;
      --v5;
    }

    while (v5);
  }

  sub_21733AB9C(a2);
  memcpy(__dst, v12, sizeof(__dst));
  if (__dst[2])
  {
    memcpy(a3, v12, 0x80uLL);
  }

  else
  {
    sub_2171F0738(__dst, &qword_27CB24290, &unk_21775D550);
    result = 0.0;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2172FCA10@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2[7];
  v5 = v2[8];
  if (a1)
  {
    v12 = v2[8];
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  else
  {
    sub_21726A630((v2 + 2), &v25, &qword_27CB24188, &dword_217758930);
    v7 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v8 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      v9 = *(v8 + 8);
      swift_bridgeObjectRetain_n();
      v7 = v9(v7, v8);
      v11 = v10;
      sub_217283154(&v25);
      goto LABEL_7;
    }

    swift_bridgeObjectRetain_n();
    sub_2171F0738(&v25, &qword_27CB24188, &dword_217758930);
  }

  v11 = 0;
LABEL_7:
  sub_21755833C();
  MEMORY[0x28223BE20](v13, v14);
  sub_2172E4FFC();
  v16 = v15;

  v18 = v2[9];
  v17 = v2[10];
  if (v11)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
  }

  else
  {
    sub_21726A630((v3 + 2), &v25, &qword_27CB24188, &dword_217758930);
  }

  v19 = v26;
  *(a2 + 72) = v25;
  if (v5 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v5;
  }

  if (v5)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  v23 = v3[11];
  v22 = v3[12];
  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = v17;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7;
  *(a2 + 64) = v11;
  *(a2 + 88) = v19;
  *(a2 + 104) = v27;
  *(a2 + 112) = v23;
  *(a2 + 120) = v22;
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2172FCC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v335 = a3;
  v336 = a2;
  v337 = a4;
  v338 = a1;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v4 = *(*(v323 - 8) + 64);
  MEMORY[0x28223BE20](v323, v5);
  v324 = v301 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v325 = v301 - v9;
  v10 = type metadata accessor for CloudStation(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v333 = v301 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v14 = *(*(v319 - 8) + 64);
  MEMORY[0x28223BE20](v319, v15);
  v321 = v301 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v322 = v301 - v19;
  v20 = type metadata accessor for CloudSong(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v332 = v301 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v24 = *(*(v316 - 8) + 64);
  MEMORY[0x28223BE20](v316, v25);
  v318 = v301 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v320 = v301 - v29;
  v30 = type metadata accessor for CloudRecordLabel(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v331 = v301 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v34 = *(*(v313 - 8) + 64);
  MEMORY[0x28223BE20](v313, v35);
  v315 = v301 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v317 = v301 - v39;
  v40 = type metadata accessor for CloudRadioShow(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8, v42);
  v330 = v301 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v44 = *(*(v310 - 8) + 64);
  MEMORY[0x28223BE20](v310, v45);
  v312 = v301 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v314 = v301 - v49;
  v50 = type metadata accessor for CloudPlaylist(0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8, v52);
  v329 = v301 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v54 = *(*(v308 - 8) + 64);
  MEMORY[0x28223BE20](v308, v55);
  v309 = v301 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v58);
  v311 = v301 - v59;
  v60 = type metadata accessor for CloudMusicVideo(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8, v62);
  v328 = v301 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for CloudGenre(0);
  v64 = *(*(v302 - 8) + 64);
  MEMORY[0x28223BE20](v302, v65);
  v301[1] = v301 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v67 = *(*(v305 - 8) + 64);
  MEMORY[0x28223BE20](v305, v68);
  v306 = v301 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70, v71);
  v307 = v301 - v72;
  v73 = type metadata accessor for CloudCurator(0);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8, v75);
  v327 = v301 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v78 = *(*(v77 - 1) + 64);
  MEMORY[0x28223BE20](v77, v79);
  v304 = v301 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81, v82);
  v84 = v301 - v83;
  v85 = type metadata accessor for CloudArtist(0);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85 - 8, v87);
  v326 = v301 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v90 = *(*(v89 - 1) + 64);
  MEMORY[0x28223BE20](v89, v91);
  v303 = v301 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93, v94);
  v96 = v301 - v95;
  v97 = type metadata accessor for CloudAlbum(0);
  v98 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97 - 8, v99);
  v101 = v301 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v103 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102, v104);
  v106 = (v301 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v107, v108);
  v110 = v301 - v109;
  sub_21733CAD0();
  v334 = v110;
  sub_21733CAD0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21733CE30();
      sub_21733CAD0();
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v176 = v175[10];
      v177 = v338;
      v178 = v338 + v175[9];
      v179 = *v178;
      v333 = *(v178 + 8);
      v180 = v333;
      LODWORD(v328) = *(v178 + 16);
      v181 = *(v338 + v176 + 8);
      v331 = *(v338 + v176);
      v329 = v179;
      v330 = v181;
      v182 = v175[11];
      memcpy(v344, (v338 + v182), 0x180uLL);
      v183 = v175[13];
      v332 = *(v338 + v175[12]);
      v184 = v332;
      v185 = *(v338 + v183);
      v186 = v175[15];
      v187 = *(v338 + v175[14]);
      v188 = *(v338 + v186);
      v189 = &v84[v77[9]];
      *v189 = v329;
      *(v189 + 1) = v180;
      v189[16] = v328;
      v190 = &v84[v77[10]];
      v191 = v330;
      *v190 = v331;
      *(v190 + 1) = v191;
      memcpy(&v84[v77[11]], (v177 + v182), 0x180uLL);
      *&v84[v77[12]] = v184;
      *&v84[v77[13]] = v185;
      *&v84[v77[14]] = v187;
      *&v84[v77[15]] = v188;
      v192 = v304;
      sub_21726A630(v84, v304, &qword_27CB24728, &qword_217758CB0);
      v193 = v336;
      sub_2172CA838(v336, v343);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v344, &v339, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172FEB30(v192, v343);
      sub_21733AB9C(v193);
      sub_2171F0738(v177, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v84, &qword_27CB24728, &qword_217758CB0);
      sub_21733CA78(v326, type metadata accessor for CloudArtist);
      result = sub_21733CA78(v334, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v194 = v340;
      v152 = v337;
      *v337 = v339;
      v152[1] = v194;
      v152[2] = v341;
      *(v152 + 6) = v342;
      v153 = 1;
      goto LABEL_11;
    case 2u:
      sub_21733CE30();
      v132 = v307;
      sub_21733CAD0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v134 = v133[10];
      v135 = v338;
      v136 = v338 + v133[9];
      v137 = *v136;
      v138 = *(v136 + 8);
      LODWORD(v329) = *(v136 + 16);
      v139 = v338 + v134;
      v140 = *(v338 + v134);
      v141 = *(v139 + 8);
      v330 = v137;
      v331 = v140;
      v332 = v141;
      v333 = v138;
      v142 = v133[11];
      memcpy(v344, (v338 + v142), 0x180uLL);
      v143 = *(v338 + v133[12]);
      v144 = *(v338 + v133[13]);
      v145 = *(v338 + v133[14]);
      v328 = *(v338 + v133[15]);
      v146 = v305;
      v147 = v132 + *(v305 + 36);
      *v147 = v330;
      *(v147 + 8) = v138;
      *(v147 + 16) = v329;
      v148 = (v132 + v146[10]);
      *v148 = v331;
      v148[1] = v141;
      memcpy((v132 + v146[11]), (v135 + v142), 0x180uLL);
      *(v132 + v146[12]) = v143;
      *(v132 + v146[13]) = v144;
      *(v132 + v146[14]) = v145;
      *(v132 + v146[15]) = v328;
      v149 = v306;
      sub_21726A630(v132, v306, &qword_27CB24490, &qword_21775A250);
      v150 = v336;
      sub_2172CA838(v336, v343);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v344, &v339, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217301D0C(v149, v343);
      sub_21733AB9C(v150);
      sub_2171F0738(v135, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v132, &qword_27CB24490, &qword_21775A250);
      sub_21733CA78(v327, type metadata accessor for CloudCurator);
      result = sub_21733CA78(v334, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v151 = v340;
      v152 = v337;
      *v337 = v339;
      v152[1] = v151;
      v152[2] = v341;
      *(v152 + 6) = v342;
      v153 = 2;
      goto LABEL_11;
    case 3u:
      sub_21733CE30();
      *&v344[0] = 0;
      *(&v344[0] + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177ABA30);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000056, 0x80000002177ABAB0);
      goto LABEL_15;
    case 4u:
      sub_21733CE30();
      v279 = v311;
      sub_21733CAD0();
      v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v281 = v280[10];
      v282 = v338;
      v283 = v338 + v280[9];
      v284 = *v283;
      v333 = *(v283 + 8);
      v285 = v333;
      LODWORD(v327) = *(v283 + 16);
      v286 = *(v338 + v281 + 8);
      v331 = *(v338 + v281);
      v329 = v284;
      v330 = v286;
      v287 = v280[11];
      memcpy(v344, (v338 + v287), 0x180uLL);
      v288 = v280[13];
      v332 = *(v338 + v280[12]);
      v289 = v332;
      v290 = *(v338 + v288);
      v291 = *(v338 + v280[14]);
      v292 = *(v338 + v280[15]);
      v293 = v308;
      v294 = v279 + *(v308 + 36);
      *v294 = v329;
      *(v294 + 8) = v285;
      *(v294 + 16) = v327;
      v295 = (v279 + v293[10]);
      v296 = v330;
      *v295 = v331;
      v295[1] = v296;
      memcpy((v279 + v293[11]), (v282 + v287), 0x180uLL);
      *(v279 + v293[12]) = v289;
      *(v279 + v293[13]) = v290;
      *(v279 + v293[14]) = v291;
      *(v279 + v293[15]) = v292;
      v297 = v309;
      sub_21726A630(v279, v309, &qword_27CB24808, &qword_217758D90);
      v298 = v336;
      sub_2172CA838(v336, v343);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v344, &v339, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172F1160(v297, v343);
      sub_21733AB9C(v298);
      sub_2171F0738(v282, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v279, &qword_27CB24808, &qword_217758D90);
      sub_21733CA78(v328, type metadata accessor for CloudMusicVideo);
      result = sub_21733CA78(v334, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v299 = v340;
      v152 = v337;
      *v337 = v339;
      v152[1] = v299;
      v152[2] = v341;
      *(v152 + 6) = v342;
      v153 = 3;
      goto LABEL_11;
    case 5u:
      sub_21733CE30();
      v258 = v314;
      sub_21733CAD0();
      v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v260 = v259[10];
      v261 = v338;
      v262 = v338 + v259[9];
      v263 = *(v262 + 8);
      v328 = *v262;
      v333 = v263;
      LODWORD(v327) = *(v262 + 16);
      v264 = v338 + v260;
      v265 = *(v338 + v260);
      v330 = *(v264 + 8);
      v331 = v265;
      v266 = v259[11];
      memcpy(v344, (v338 + v266), 0x180uLL);
      v267 = v259[13];
      v332 = *(v338 + v259[12]);
      v268 = v332;
      v269 = *(v338 + v267);
      v270 = *(v338 + v259[14]);
      v271 = *(v338 + v259[15]);
      v272 = v310;
      v273 = v258 + *(v310 + 36);
      *v273 = v328;
      *(v273 + 8) = v263;
      *(v273 + 16) = v327;
      v274 = (v258 + v272[10]);
      v275 = v330;
      *v274 = v331;
      v274[1] = v275;
      memcpy((v258 + v272[11]), (v261 + v266), 0x180uLL);
      *(v258 + v272[12]) = v268;
      *(v258 + v272[13]) = v269;
      *(v258 + v272[14]) = v270;
      *(v258 + v272[15]) = v271;
      v276 = v312;
      sub_21726A630(v258, v312, &qword_27CB24790, &unk_21775A220);
      v277 = v336;
      sub_2172CA838(v336, v343);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v344, &v339, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172F565C(v276, v343);
      sub_21733AB9C(v277);
      sub_2171F0738(v261, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v258, &qword_27CB24790, &unk_21775A220);
      sub_21733CA78(v329, type metadata accessor for CloudPlaylist);
      result = sub_21733CA78(v334, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v278 = v340;
      v152 = v337;
      *v337 = v339;
      v152[1] = v278;
      v152[2] = v341;
      *(v152 + 6) = v342;
      v153 = 4;
      goto LABEL_11;
    case 6u:
      sub_21733CE30();
      v195 = v317;
      sub_21733CAD0();
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v197 = v196[10];
      v198 = v338;
      v199 = v338 + v196[9];
      v200 = *v199;
      v333 = *(v199 + 8);
      v201 = v333;
      LODWORD(v327) = *(v199 + 16);
      v202 = *(v338 + v197 + 8);
      v331 = *(v338 + v197);
      v328 = v200;
      v329 = v202;
      v203 = v196[11];
      memcpy(v344, (v338 + v203), 0x180uLL);
      v204 = v196[13];
      v332 = *(v338 + v196[12]);
      v205 = v332;
      v206 = *(v338 + v204);
      v207 = *(v338 + v196[14]);
      v208 = *(v338 + v196[15]);
      v209 = v313;
      v210 = v195 + *(v313 + 36);
      *v210 = v328;
      *(v210 + 8) = v201;
      *(v210 + 16) = v327;
      v211 = (v195 + v209[10]);
      v212 = v329;
      *v211 = v331;
      v211[1] = v212;
      memcpy((v195 + v209[11]), (v198 + v203), 0x180uLL);
      *(v195 + v209[12]) = v205;
      *(v195 + v209[13]) = v206;
      *(v195 + v209[14]) = v207;
      *(v195 + v209[15]) = v208;
      v213 = v315;
      sub_21726A630(v195, v315, &qword_27CB247C0, &unk_21779AA10);
      v214 = v336;
      sub_2172CA838(v336, v343);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v344, &v339, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217302770(v213, v343);
      sub_21733AB9C(v214);
      sub_2171F0738(v198, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v195, &qword_27CB247C0, &unk_21779AA10);
      sub_21733CA78(v330, type metadata accessor for CloudRadioShow);
      result = sub_21733CA78(v334, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v215 = v340;
      v152 = v337;
      *v337 = v339;
      v152[1] = v215;
      v152[2] = v341;
      *(v152 + 6) = v342;
      v153 = 5;
      goto LABEL_11;
    case 7u:
      sub_21733CE30();
      v216 = v320;
      sub_21733CAD0();
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v218 = v217[10];
      v219 = v338;
      v220 = v338 + v217[9];
      v221 = *v220;
      v333 = *(v220 + 8);
      v222 = v333;
      LODWORD(v327) = *(v220 + 16);
      v223 = *(v338 + v218 + 8);
      v330 = *(v338 + v218);
      v328 = v221;
      v329 = v223;
      v224 = v217[11];
      memcpy(v344, (v338 + v224), 0x180uLL);
      v225 = v217[13];
      v332 = *(v338 + v217[12]);
      v226 = v332;
      v227 = *(v338 + v225);
      v228 = *(v338 + v217[14]);
      v229 = *(v338 + v217[15]);
      v230 = v316;
      v231 = v216 + *(v316 + 36);
      *v231 = v328;
      *(v231 + 8) = v222;
      *(v231 + 16) = v327;
      v232 = (v216 + v230[10]);
      v233 = v329;
      *v232 = v330;
      v232[1] = v233;
      memcpy((v216 + v230[11]), (v219 + v224), 0x180uLL);
      *(v216 + v230[12]) = v226;
      *(v216 + v230[13]) = v227;
      *(v216 + v230[14]) = v228;
      *(v216 + v230[15]) = v229;
      v234 = v318;
      sub_21726A630(v216, v318, &qword_27CB24778, &unk_217758D00);
      v235 = v336;
      sub_2172CA838(v336, v343);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v344, &v339, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_21730319C(v234, v343);
      sub_21733AB9C(v235);
      sub_2171F0738(v219, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v216, &qword_27CB24778, &unk_217758D00);
      sub_21733CA78(v331, type metadata accessor for CloudRecordLabel);
      result = sub_21733CA78(v334, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v236 = v340;
      v152 = v337;
      *v337 = v339;
      v152[1] = v236;
      v152[2] = v341;
      *(v152 + 6) = v342;
      v153 = 6;
      goto LABEL_11;
    case 8u:
      sub_21733CE30();
      v154 = v322;
      sub_21733CAD0();
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v156 = v155[10];
      v157 = v338;
      v158 = v338 + v155[9];
      v159 = *v158;
      v333 = *(v158 + 8);
      v160 = v333;
      LODWORD(v327) = *(v158 + 16);
      v161 = *(v338 + v156 + 8);
      v330 = *(v338 + v156);
      v328 = v159;
      v329 = v161;
      v162 = v155[11];
      memcpy(v344, (v338 + v162), 0x180uLL);
      v163 = v155[13];
      v331 = *(v338 + v155[12]);
      v164 = v331;
      v165 = *(v338 + v163);
      v166 = *(v338 + v155[14]);
      v167 = *(v338 + v155[15]);
      v168 = v319;
      v169 = v154 + *(v319 + 36);
      *v169 = v328;
      *(v169 + 8) = v160;
      *(v169 + 16) = v327;
      v170 = (v154 + v168[10]);
      v171 = v329;
      *v170 = v330;
      v170[1] = v171;
      memcpy((v154 + v168[11]), (v157 + v162), 0x180uLL);
      *(v154 + v168[12]) = v164;
      *(v154 + v168[13]) = v165;
      *(v154 + v168[14]) = v166;
      *(v154 + v168[15]) = v167;
      v172 = v321;
      sub_21726A630(v154, v321, &qword_27CB24748, &unk_217758CD0);
      v173 = v336;
      sub_2172CA838(v336, v343);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v344, &v339, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217303E60(v172, v343);
      sub_21733AB9C(v173);
      sub_2171F0738(v157, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v154, &qword_27CB24748, &unk_217758CD0);
      sub_21733CA78(v332, type metadata accessor for CloudSong);
      result = sub_21733CA78(v334, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v174 = v340;
      v152 = v337;
      *v337 = v339;
      v152[1] = v174;
      v152[2] = v341;
      *(v152 + 6) = v342;
      v153 = 7;
      goto LABEL_11;
    case 9u:
      sub_21733CE30();
      v237 = v325;
      sub_21733CAD0();
      v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v239 = v238[10];
      v240 = v338;
      v241 = v338 + v238[9];
      v242 = *v241;
      v332 = *(v241 + 8);
      v243 = v332;
      LODWORD(v327) = *(v241 + 16);
      v244 = *(v338 + v239 + 8);
      v330 = *(v338 + v239);
      v328 = v242;
      v329 = v244;
      v245 = v238[11];
      memcpy(v344, (v338 + v245), 0x180uLL);
      v246 = v238[13];
      v331 = *(v338 + v238[12]);
      v247 = v331;
      v248 = *(v338 + v246);
      v249 = *(v338 + v238[14]);
      v250 = *(v338 + v238[15]);
      v251 = v323;
      v252 = v237 + *(v323 + 36);
      *v252 = v328;
      *(v252 + 8) = v243;
      *(v252 + 16) = v327;
      v253 = (v237 + v251[10]);
      v254 = v329;
      *v253 = v330;
      v253[1] = v254;
      memcpy((v237 + v251[11]), (v240 + v245), 0x180uLL);
      *(v237 + v251[12]) = v247;
      *(v237 + v251[13]) = v248;
      *(v237 + v251[14]) = v249;
      *(v237 + v251[15]) = v250;
      v255 = v324;
      sub_21726A630(v237, v324, &qword_27CB24738, &qword_217758CC0);
      v256 = v336;
      sub_2172CA838(v336, v343);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v344, &v339, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2173078AC(v255, v343);
      sub_21733AB9C(v256);
      sub_2171F0738(v240, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v237, &qword_27CB24738, &qword_217758CC0);
      sub_21733CA78(v333, type metadata accessor for CloudStation);
      result = sub_21733CA78(v334, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v257 = v340;
      v152 = v337;
      *v337 = v339;
      v152[1] = v257;
      v152[2] = v341;
      *(v152 + 6) = v342;
      v153 = 8;
LABEL_11:
      *(v152 + 56) = v153;
      break;
    case 0xAu:
      v300 = v106[1];
      v344[0] = *v106;
      v344[1] = v300;
      *(&v344[1] + 9) = *(v106 + 25);
      *&v339 = 0;
      *(&v339 + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177ABA30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25890, &unk_21775D928);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000056, 0x80000002177ABA50);
LABEL_15:
      result = sub_217752D08();
      __break(1u);
      break;
    default:
      sub_21733CE30();
      sub_21733CAD0();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v112 = v111[10];
      v113 = v338;
      v114 = v338 + v111[9];
      v115 = *v114;
      v116 = *(v114 + 8);
      LODWORD(v328) = *(v114 + 16);
      v117 = *(v338 + v112 + 8);
      v331 = *(v338 + v112);
      v332 = v116;
      v329 = v115;
      v330 = v117;
      v118 = v111[11];
      memcpy(v344, (v338 + v118), 0x180uLL);
      v119 = v111[13];
      v327 = *(v338 + v111[12]);
      v120 = *(v338 + v119);
      v121 = v111[15];
      v122 = *(v338 + v111[14]);
      v333 = v122;
      v123 = *(v338 + v121);
      v124 = &v96[v89[9]];
      *v124 = v329;
      *(v124 + 1) = v116;
      v124[16] = v328;
      v125 = &v96[v89[10]];
      v126 = v330;
      *v125 = v331;
      *(v125 + 1) = v126;
      memcpy(&v96[v89[11]], (v113 + v118), 0x180uLL);
      *&v96[v89[12]] = v327;
      *&v96[v89[13]] = v120;
      *&v96[v89[14]] = v122;
      *&v96[v89[15]] = v123;
      v127 = v303;
      sub_21726A630(v96, v303, &qword_27CB247F0, &qword_21775D360);
      v128 = v336;
      sub_2172CA838(v336, v343);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v344, &v339, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172E5528(v127, v343);
      sub_21733AB9C(v128);
      sub_2171F0738(v113, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v96, &qword_27CB247F0, &qword_21775D360);
      sub_21733CA78(v101, type metadata accessor for CloudAlbum);
      result = sub_21733CA78(v334, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v130 = v340;
      v131 = v337;
      *v337 = v339;
      v131[1] = v130;
      v131[2] = v341;
      *(v131 + 6) = v342;
      *(v131 + 56) = 0;
      break;
  }

  return result;
}