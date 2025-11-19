uint64_t AUSpatialCapture::SetAudioChannelLayoutFromTuning(AUSpatialCapture *this, const __CFDictionary *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v3 = v2;
  v495 = *MEMORY[0x1E69E9840];
  v5 = v4;
  v6 = [v5 objectForKeyedSubscript:@"outputChannelLayout"];

  v7 = &xmmword_1ECDA9000;
  if (!v6)
  {
    goto LABEL_108;
  }

  v8 = [v5 objectForKeyedSubscript:@"outputChannelLayout"];
  std::string::basic_string[abi:ne200100]<0>(&__str, [v8 UTF8String]);
  v70 = v8;
  std::string::basic_string[abi:ne200100]<0>(buf, "Mono");
  *&v87[10] = 6553601;
  v71 = v5;
  std::string::basic_string[abi:ne200100]<0>(&v89[1], "Stereo");
  v90 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v91, "StereoHeadphones");
  v93 = 6684674;
  std::string::basic_string[abi:ne200100]<0>(v94, "MatrixStereo");
  v96 = 6750210;
  std::string::basic_string[abi:ne200100]<0>(v97, "MidSide");
  v98 = 6815746;
  std::string::basic_string[abi:ne200100]<0>(v99, "XY");
  v100 = 6881282;
  std::string::basic_string[abi:ne200100]<0>(v101, "Binaural");
  v102 = 6946818;
  std::string::basic_string[abi:ne200100]<0>(v103, "Ambisonic_B_Format");
  v104 = 7012356;
  std::string::basic_string[abi:ne200100]<0>(v105, "Quadraphonic");
  v106 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v107, "Pentagonal");
  v108 = 7143429;
  std::string::basic_string[abi:ne200100]<0>(v109, "Hexagonal");
  v110 = 7208966;
  std::string::basic_string[abi:ne200100]<0>(v111, "Octagonal");
  v112 = 7274504;
  std::string::basic_string[abi:ne200100]<0>(v113, "Cube");
  v114 = 7340040;
  std::string::basic_string[abi:ne200100]<0>(v115, "MPEG_1_0");
  v116 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v117, "MPEG_2_0");
  v118 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v119, "MPEG_3_0_A");
  v120 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v121, "MPEG_3_0_B");
  v122 = 7471107;
  std::string::basic_string[abi:ne200100]<0>(v123, "MPEG_4_0_A");
  v124 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v125, "MPEG_4_0_B");
  v126 = 7602180;
  std::string::basic_string[abi:ne200100]<0>(v127, "MPEG_5_0_A");
  v128 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v129, "MPEG_5_0_B");
  v130 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v131, "MPEG_5_0_C");
  v132 = 7798789;
  std::string::basic_string[abi:ne200100]<0>(v133, "MPEG_5_0_D");
  v134 = 7864325;
  std::string::basic_string[abi:ne200100]<0>(v135, "MPEG_5_1_A");
  v136 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v137, "MPEG_5_1_B");
  v138 = 7995398;
  std::string::basic_string[abi:ne200100]<0>(v139, "MPEG_5_1_C");
  v140 = 8060934;
  std::string::basic_string[abi:ne200100]<0>(v141, "MPEG_5_1_D");
  v142 = 8126470;
  std::string::basic_string[abi:ne200100]<0>(v143, "MPEG_6_1_A");
  v144 = 8192007;
  std::string::basic_string[abi:ne200100]<0>(v145, "MPEG_7_1_A");
  v146 = 8257544;
  std::string::basic_string[abi:ne200100]<0>(v147, "MPEG_7_1_B");
  v148 = 8323080;
  std::string::basic_string[abi:ne200100]<0>(v149, "MPEG_7_1_C");
  v150 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v151, "Emagic_Default_7_1");
  v152 = 8454152;
  std::string::basic_string[abi:ne200100]<0>(v153, "SMPTE_DTV");
  v154 = 8519688;
  std::string::basic_string[abi:ne200100]<0>(v155, "ITU_1_0");
  v156 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v157, "ITU_2_0");
  v158 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v159, "ITU_2_1");
  v160 = 8585219;
  std::string::basic_string[abi:ne200100]<0>(v161, "ITU_2_2");
  v162 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v163, "ITU_3_0");
  v164 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v165, "ITU_3_1");
  v166 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v167, "ITU_3_2");
  v168 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v169, "ITU_3_2_1");
  v170 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v171, "ITU_3_4_1");
  v172 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v173, "DVD_0");
  v174 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v175, "DVD_1");
  v176 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v177, "DVD_2");
  v178 = 8585219;
  std::string::basic_string[abi:ne200100]<0>(v179, "DVD_3");
  v180 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v181, "DVD_4");
  v182 = 8716291;
  std::string::basic_string[abi:ne200100]<0>(v183, "DVD_5");
  v184 = 8781828;
  std::string::basic_string[abi:ne200100]<0>(v185, "DVD_6");
  v186 = 8847365;
  std::string::basic_string[abi:ne200100]<0>(v187, "DVD_7");
  v188 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v189, "DVD_8");
  v190 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v191, "DVD_9");
  v192 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v193, "DVD_10");
  v69 = v3;
  v194 = 8912900;
  std::string::basic_string[abi:ne200100]<0>(v195, "DVD_11");
  v196 = 8978437;
  std::string::basic_string[abi:ne200100]<0>(v197, "DVD_12");
  v198 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v199, "DVD_13");
  v200 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v201, "DVD_14");
  v202 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v203, "DVD_15");
  v204 = 8912900;
  std::string::basic_string[abi:ne200100]<0>(v205, "DVD_16");
  v206 = 8978437;
  std::string::basic_string[abi:ne200100]<0>(v207, "DVD_17");
  v208 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v209, "DVD_18");
  v210 = 9043973;
  std::string::basic_string[abi:ne200100]<0>(v211, "DVD_19");
  v212 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v213, "DVD_20");
  v214 = 7995398;
  std::string::basic_string[abi:ne200100]<0>(v215, "AudioUnit_4");
  v216 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v217, "AudioUnit_5");
  v218 = 7143429;
  std::string::basic_string[abi:ne200100]<0>(v219, "AudioUnit_6");
  v220 = 7208966;
  std::string::basic_string[abi:ne200100]<0>(v221, "AudioUnit_8");
  v222 = 7274504;
  std::string::basic_string[abi:ne200100]<0>(v223, "AudioUnit_5_0");
  v224 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v225, "AudioUnit_6_0");
  v226 = 9109510;
  std::string::basic_string[abi:ne200100]<0>(v227, "AudioUnit_7_0");
  v228 = 9175047;
  std::string::basic_string[abi:ne200100]<0>(v229, "AudioUnit_7_0_Front");
  v230 = 9699335;
  std::string::basic_string[abi:ne200100]<0>(v231, "AudioUnit_5_1");
  v232 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v233, "AudioUnit_6_1");
  v234 = 8192007;
  std::string::basic_string[abi:ne200100]<0>(v235, "AudioUnit_7_1");
  v236 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v237, "AudioUnit_7_1_Front");
  v238 = 8257544;
  std::string::basic_string[abi:ne200100]<0>(v239, "AAC_3_0");
  v240 = 7471107;
  std::string::basic_string[abi:ne200100]<0>(v241, "AAC_Quadraphonic");
  v242 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v243, "AAC_4_0");
  v244 = 7602180;
  std::string::basic_string[abi:ne200100]<0>(v245, "AAC_5_0");
  v246 = 7864325;
  std::string::basic_string[abi:ne200100]<0>(v247, "AAC_5_1");
  v248 = 8126470;
  std::string::basic_string[abi:ne200100]<0>(v249, "AAC_6_0");
  v250 = 9240582;
  std::string::basic_string[abi:ne200100]<0>(v251, "AAC_6_1");
  v252 = 9306119;
  std::string::basic_string[abi:ne200100]<0>(v253, "AAC_7_0");
  v254 = 9371655;
  std::string::basic_string[abi:ne200100]<0>(v255, "AAC_7_1");
  v256 = 8323080;
  std::string::basic_string[abi:ne200100]<0>(v257, "AAC_7_1_B");
  v258 = 11993096;
  std::string::basic_string[abi:ne200100]<0>(v259, "AAC_7_1_C");
  v260 = 12058632;
  std::string::basic_string[abi:ne200100]<0>(v261, "AAC_Octagonal");
  v262 = 9437192;
  std::string::basic_string[abi:ne200100]<0>(v263, "TMH_10_2_std");
  v264 = 9502736;
  std::string::basic_string[abi:ne200100]<0>(v265, "TMH_10_2_full");
  v266 = 9568277;
  std::string::basic_string[abi:ne200100]<0>(v267, "AC3_1_0_1");
  v268 = 9764866;
  std::string::basic_string[abi:ne200100]<0>(v269, "AC3_3_0");
  v270 = 9830403;
  std::string::basic_string[abi:ne200100]<0>(v271, "AC3_3_1");
  v272 = 9895940;
  std::string::basic_string[abi:ne200100]<0>(v273, "AC3_3_0_1");
  v274 = 9961476;
  std::string::basic_string[abi:ne200100]<0>(v275, "AC3_2_1_1");
  v276 = 10027012;
  std::string::basic_string[abi:ne200100]<0>(v277, "AC3_3_1_1");
  v278 = 10092549;
  std::string::basic_string[abi:ne200100]<0>(v279, "EAC_6_0_A");
  v280 = 10158086;
  std::string::basic_string[abi:ne200100]<0>(v281, "EAC_7_0_A");
  v282 = 10223623;
  std::string::basic_string[abi:ne200100]<0>(v283, "EAC3_6_1_A");
  v284 = 10289159;
  std::string::basic_string[abi:ne200100]<0>(v285, "EAC3_6_1_B");
  v286 = 10354695;
  std::string::basic_string[abi:ne200100]<0>(v287, "EAC3_6_1_C");
  v288 = 10420231;
  std::string::basic_string[abi:ne200100]<0>(v289, "EAC3_7_1_A");
  v290 = 10485768;
  std::string::basic_string[abi:ne200100]<0>(v291, "EAC3_7_1_B");
  v292 = 10551304;
  std::string::basic_string[abi:ne200100]<0>(v293, "EAC3_7_1_C");
  v294 = 10616840;
  std::string::basic_string[abi:ne200100]<0>(v295, "EAC3_7_1_D");
  v296 = 10682376;
  std::string::basic_string[abi:ne200100]<0>(v297, "EAC3_7_1_E");
  v298 = 10747912;
  std::string::basic_string[abi:ne200100]<0>(v299, "EAC3_7_1_F");
  v300 = 10813448;
  std::string::basic_string[abi:ne200100]<0>(v301, "EAC3_7_1_G");
  v302 = 10878984;
  std::string::basic_string[abi:ne200100]<0>(v303, "EAC3_7_1_H");
  v304 = 10944520;
  std::string::basic_string[abi:ne200100]<0>(v305, "DTS_3_1");
  v306 = 11010052;
  std::string::basic_string[abi:ne200100]<0>(v307, "DTS_4_1");
  v308 = 11075589;
  std::string::basic_string[abi:ne200100]<0>(v309, "DTS_6_0_A");
  v310 = 11141126;
  std::string::basic_string[abi:ne200100]<0>(v311, "DTS_6_0_B");
  v312 = 11206662;
  std::string::basic_string[abi:ne200100]<0>(v313, "DTS_6_0_C");
  v314 = 11272198;
  std::string::basic_string[abi:ne200100]<0>(v315, "DTS_6_1_A");
  v316 = 11337735;
  std::string::basic_string[abi:ne200100]<0>(v317, "DTS_6_1_B");
  v318 = 11403271;
  std::string::basic_string[abi:ne200100]<0>(v319, "DTS_6_1_C");
  v320 = 11468807;
  std::string::basic_string[abi:ne200100]<0>(v321, "DTS_7_0");
  v322 = 11534343;
  std::string::basic_string[abi:ne200100]<0>(v323, "DTS_7_1");
  v324 = 11599880;
  std::string::basic_string[abi:ne200100]<0>(v325, "DTS_8_0_A");
  v326 = 11665416;
  std::string::basic_string[abi:ne200100]<0>(v327, "DTS_8_0_B");
  v328 = 11730952;
  std::string::basic_string[abi:ne200100]<0>(v329, "DTS_8_1_A");
  v330 = 11796489;
  std::string::basic_string[abi:ne200100]<0>(v331, "DTS_8_1_B");
  v332 = 11862025;
  std::string::basic_string[abi:ne200100]<0>(v333, "DTS_6_1_D");
  v334 = 11927559;
  std::string::basic_string[abi:ne200100]<0>(v335, "WAVE_2_1");
  v336 = 8716291;
  std::string::basic_string[abi:ne200100]<0>(v337, "WAVE_3_0");
  v338 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v339, "WAVE_4_0_A");
  v340 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v341, "WAVE_4_0_B");
  v342 = 12124164;
  std::string::basic_string[abi:ne200100]<0>(v343, "WAVE_5_0_A");
  v344 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v345, "WAVE_5_0_B");
  v346 = 12189701;
  std::string::basic_string[abi:ne200100]<0>(v347, "WAVE_5_1_A");
  v348 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v349, "WAVE_5_1_B");
  v350 = 12255238;
  std::string::basic_string[abi:ne200100]<0>(v351, "WAVE_6_1");
  v352 = 12320775;
  std::string::basic_string[abi:ne200100]<0>(v353, "WAVE_7_1");
  v354 = 12386312;
  std::string::basic_string[abi:ne200100]<0>(v355, "Atmos_5_1_2");
  v356 = 12713992;
  std::string::basic_string[abi:ne200100]<0>(v357, "Atmos_5_1_4");
  v358 = 12779530;
  std::string::basic_string[abi:ne200100]<0>(v359, "Atmos_7_1_2");
  v360 = 12845066;
  std::string::basic_string[abi:ne200100]<0>(v361, "Atmos_7_1_4");
  v362 = 12582924;
  std::string::basic_string[abi:ne200100]<0>(v363, "Atmos_9_1_6");
  v364 = 12648464;
  std::string::basic_string[abi:ne200100]<0>(v365, "Logic_Mono");
  v366 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v367, "Logic_Stereo");
  v368 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v369, "Logic_Quadraphonic");
  v370 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v371, "Logic_4_0_A");
  v372 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v373, "Logic_4_0_B");
  v374 = 7602180;
  std::string::basic_string[abi:ne200100]<0>(v375, "Logic_4_0_C");
  v376 = 12910596;
  std::string::basic_string[abi:ne200100]<0>(v377, "Logic_5_0_A");
  v378 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v379, "Logic_5_0_B");
  v380 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v381, "Logic_5_0_C");
  v382 = 7798789;
  std::string::basic_string[abi:ne200100]<0>(v383, "Logic_5_0_D");
  v384 = 7864325;
  std::string::basic_string[abi:ne200100]<0>(v385, "Logic_5_1_A");
  v386 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v387, "Logic_5_1_B");
  v388 = 7995398;
  std::string::basic_string[abi:ne200100]<0>(v389, "Logic_5_1_C");
  v390 = 8060934;
  std::string::basic_string[abi:ne200100]<0>(v391, "Logic_5_1_D");
  v392 = 8126470;
  std::string::basic_string[abi:ne200100]<0>(v393, "Logic_6_0_A");
  v394 = 9240582;
  std::string::basic_string[abi:ne200100]<0>(v395, "Logic_6_0_B");
  v396 = 12976134;
  std::string::basic_string[abi:ne200100]<0>(v397, "Logic_6_0_C");
  v398 = 9109510;
  std::string::basic_string[abi:ne200100]<0>(v399, "Logic_6_1_A");
  v400 = 9306119;
  std::string::basic_string[abi:ne200100]<0>(v401, "Logic_6_1_B");
  v402 = 13041671;
  std::string::basic_string[abi:ne200100]<0>(v403, "Logic_6_1_C");
  v404 = 8192007;
  std::string::basic_string[abi:ne200100]<0>(v405, "Logic_6_1_D");
  v406 = 13107207;
  std::string::basic_string[abi:ne200100]<0>(v407, "Logic_7_1_A");
  v408 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v409, "Logic_7_1_B");
  v410 = 13172744;
  std::string::basic_string[abi:ne200100]<0>(v411, "Logic_7_1_C");
  v412 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v413, "Logic_7_1_SDDS_A");
  v414 = 8257544;
  std::string::basic_string[abi:ne200100]<0>(v415, "Logic_7_1_SDDS_B");
  v416 = 8323080;
  std::string::basic_string[abi:ne200100]<0>(v417, "Logic_7_1_SDDS_C");
  v418 = 8454152;
  std::string::basic_string[abi:ne200100]<0>(v419, "Logic_Atmos_5_1_2");
  v420 = 12713992;
  std::string::basic_string[abi:ne200100]<0>(v421, "Logic_Atmos_5_1_4");
  v422 = 12779530;
  std::string::basic_string[abi:ne200100]<0>(v423, "Logic_Atmos_7_1_2");
  v424 = 12845066;
  std::string::basic_string[abi:ne200100]<0>(v425, "Logic_Atmos_7_1_4_A");
  v426 = 12582924;
  std::string::basic_string[abi:ne200100]<0>(v427, "Logic_Atmos_7_1_4_B");
  v7 = &xmmword_1ECDA9000;
  v428 = 13238284;
  std::string::basic_string[abi:ne200100]<0>(v429, "Logic_Atmos_7_1_6");
  v430 = 13303822;
  std::string::basic_string[abi:ne200100]<0>(v431, "CICP_1");
  v432 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v433, "CICP_2");
  v434 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v435, "CICP_3");
  v436 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v437, "CICP_4");
  v438 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v439, "CICP_5");
  v440 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v441, "CICP_6");
  v442 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v443, "CICP_7");
  v444 = 8323080;
  std::string::basic_string[abi:ne200100]<0>(v445, "CICP_9");
  v446 = 8585219;
  std::string::basic_string[abi:ne200100]<0>(v447, "CICP_10");
  v448 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v449, "CICP_11");
  v450 = 8192007;
  std::string::basic_string[abi:ne200100]<0>(v451, "CICP_12");
  v452 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v453, "CICP_13");
  v454 = 13369368;
  std::string::basic_string[abi:ne200100]<0>(v455, "CICP_14");
  v456 = 13434888;
  std::string::basic_string[abi:ne200100]<0>(v457, "CICP_15");
  v458 = 13500428;
  std::string::basic_string[abi:ne200100]<0>(v459, "CICP_16");
  v460 = 13565962;
  std::string::basic_string[abi:ne200100]<0>(v461, "CICP_17");
  v462 = 13631500;
  std::string::basic_string[abi:ne200100]<0>(v463, "CICP_18");
  v464 = 13697038;
  std::string::basic_string[abi:ne200100]<0>(v465, "CICP_19");
  v466 = 13762572;
  std::string::basic_string[abi:ne200100]<0>(v467, "CICP_20");
  v468 = 13828110;
  std::string::basic_string[abi:ne200100]<0>(v469, "Ogg_3_0");
  v470 = 9830403;
  std::string::basic_string[abi:ne200100]<0>(v471, "Ogg_4_0");
  v472 = 12124164;
  std::string::basic_string[abi:ne200100]<0>(v473, "Ogg_5_0");
  v474 = 13893637;
  std::string::basic_string[abi:ne200100]<0>(v475, "Ogg_5_1");
  v476 = 13959174;
  std::string::basic_string[abi:ne200100]<0>(v477, "Ogg_6_1");
  v478 = 14024711;
  std::string::basic_string[abi:ne200100]<0>(v479, "Ogg_7_1");
  v480 = 14090248;
  std::string::basic_string[abi:ne200100]<0>(v481, "MPEG_5_0_E");
  v482 = 14155781;
  std::string::basic_string[abi:ne200100]<0>(v483, "MPEG_5_1_E");
  v484 = 14221318;
  std::string::basic_string[abi:ne200100]<0>(v485, "MPEG_6_1_B");
  v486 = 14286855;
  std::string::basic_string[abi:ne200100]<0>(v487, "MPEG_7_1_D");
  v488 = 14352392;
  std::string::basic_string[abi:ne200100]<0>(v489, "BeginReserved");
  v490 = -268435456;
  std::string::basic_string[abi:ne200100]<0>(v491, "EndReserved");
  v492 = -65537;
  std::string::basic_string[abi:ne200100]<0>(v493, "Unknown");
  *&v494[1] = -65536;
  std::map<std::string,unsigned int>::map[abi:ne200100](&v83, buf, 203);
  v9 = v494;
  v10 = -6496;
  v11 = v494;
  do
  {
    v12 = *v11;
    v11 -= 32;
    if (v12 < 0)
    {
      operator delete(*(v9 - 23));
    }

    v9 = v11;
    v10 += 32;
  }

  while (v10);
  v82 = -65536;
  v13 = v84[0];
  if (v84[0])
  {
    v14 = v84;
    do
    {
      v15 = v14;
      v16 = v13 + 32;
      v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v13 + 4, &__str);
      if ((v17 & 0x80u) == 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = v15;
      }

      v13 = *&v13[(v17 >> 4) & 8];
    }

    while (v13);
    if (v14 != v84)
    {
      v18 = (v17 & 0x80u) == 0 ? v16 : (v15 + 4);
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str, v18) & 0x80) == 0)
      {
        v19 = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(&v83, buf, &__str);
        if (!v19)
        {
          std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
        }

        v20 = (v19 + 56);
        v3 = v69;
        goto LABEL_105;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "HOA_ACN_SN3D");
  *&v87[10] = 12451840;
  std::string::basic_string[abi:ne200100]<0>(&v89[1], "HOA_ACN_N3D");
  v90 = 12517376;
  std::map<std::string,unsigned int>::map[abi:ne200100](&v80, buf, 2);
  for (i = 0; i != -32; i -= 16)
  {
    if (SHIBYTE(v89[i + 12]) < 0)
    {
      operator delete(*&v89[i + 1]);
    }
  }

  v22 = v80;
  v23 = MEMORY[0x1E69E54E0];
  if (v80 != v81)
  {
    v73 = *MEMORY[0x1E69E54E0];
    v24 = &v87[2];
    v72 = *(MEMORY[0x1E69E54E0] + 24);
    v74 = -65536;
    while (1)
    {
      v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v26 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v27 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : __str.__r_.__value_.__l.__size_;
      v28 = *(v22 + 55);
      v29 = v28 >= 0 ? v22 + 4 : v22[4];
      v30 = v28 >= 0 ? *(v22 + 55) : v22[5];
      if (!v30)
      {
        break;
      }

      if (v27 >= v30)
      {
        v31 = v24;
        v32 = v23;
        v33 = (v26 + v27);
        v34 = *v29;
        v35 = v26;
        while (1)
        {
          v36 = v27 - v30;
          if (v36 == -1 || (v37 = memchr(v35, v34, v36 + 1)) == 0)
          {
LABEL_44:
            v23 = v32;
            v24 = v31;
            goto LABEL_57;
          }

          v38 = v37;
          if (!memcmp(v37, v29, v30))
          {
            break;
          }

          v35 = (&v38->__r_.__value_.__l.__data_ + 1);
          v27 = v33 - (&v38->__r_.__value_.__l.__data_ + 1);
          if (v27 < v30)
          {
            goto LABEL_44;
          }
        }

        v24 = v31;
        if (v38 == v33)
        {
          v23 = v32;
        }

        else
        {
          v39 = v38 == v26;
          v23 = v32;
          if (v39)
          {
            break;
          }
        }
      }

LABEL_57:
      v44 = v22[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v22[2];
          v39 = *v45 == v22;
          v22 = v45;
        }

        while (!v39);
      }

      v22 = v45;
      if (v45 == v81)
      {
        goto LABEL_66;
      }
    }

    v40 = *(v22 + 14);
    v82 = v40;
    if ((v25 & 0x80u) == 0)
    {
      size = v25;
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&v78, &__str, v30, size, buf);
    LODWORD(v77.__r_.__value_.__l.__data_) = 0;
    std::istringstream::basic_istringstream[abi:ne200100](buf, &v78);
    MEMORY[0x1E12BCB50](buf, &v77);
    v42 = *(&v89[1] + *(*buf - 24));
    *buf = v73;
    *&buf[*(v73 - 24)] = v72;
    *&v87[2] = MEMORY[0x1E69E5548] + 16;
    if (v95 < 0)
    {
      operator delete(__p);
    }

    *&v87[2] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v87[10]);
    std::istream::~istream();
    MEMORY[0x1E12BD050](&v96);
    v43 = ((LODWORD(v77.__r_.__value_.__l.__data_) + 1) * (LODWORD(v77.__r_.__value_.__l.__data_) + 1)) | v40;
    if ((v42 & 5) != 0)
    {
      v43 = -65536;
    }

    v74 = v43;
    v82 = v43;
    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    goto LABEL_57;
  }

  v74 = -65536;
LABEL_66:
  std::string::basic_string[abi:ne200100]<0>(&v78, "DiscreteInOrder");
  v79 = 9633792;
  v46 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = __str.__r_.__value_.__l.__size_;
  }

  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v78;
  }

  else
  {
    v49 = v78.__r_.__value_.__r.__words[0];
  }

  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v78.__r_.__value_.__l.__size_;
  }

  v7 = &xmmword_1ECDA9000;
  if (!v50)
  {
    goto LABEL_90;
  }

  if (v48 >= v50)
  {
    v51 = (p_str + v48);
    v52 = v49->__r_.__value_.__s.__data_[0];
    v53 = p_str;
    while (1)
    {
      v54 = v48 - v50;
      if (v54 == -1)
      {
LABEL_85:
        v7 = &xmmword_1ECDA9000;
        goto LABEL_97;
      }

      v55 = memchr(v53, v52, v54 + 1);
      if (!v55)
      {
        v7 = &xmmword_1ECDA9000;
        goto LABEL_97;
      }

      v56 = v55;
      if (!memcmp(v55, v49, v50))
      {
        break;
      }

      v53 = (&v56->__r_.__value_.__l.__data_ + 1);
      v48 = v51 - (&v56->__r_.__value_.__l.__data_ + 1);
      if (v48 < v50)
      {
        goto LABEL_85;
      }
    }

    v7 = &xmmword_1ECDA9000;
    if (v56 != v51 && v56 == p_str)
    {
LABEL_90:
      v82 = 9633792;
      if ((v46 & 0x80u) == 0)
      {
        v57 = v46;
      }

      else
      {
        v57 = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string(&v77, &__str, v50, v57, buf);
      v76 = 0;
      std::istringstream::basic_istringstream[abi:ne200100](buf, &v77);
      MEMORY[0x1E12BCB50](buf, &v76);
      *buf = *v23;
      *&buf[*(*buf - 24)] = v23[3];
      *&v87[2] = MEMORY[0x1E69E5548] + 16;
      if (v95 < 0)
      {
        operator delete(__p);
      }

      *&v87[2] = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v87[10]);
      std::istream::~istream();
      MEMORY[0x1E12BD050](&v96);
      v74 = v76 | 0x930000;
      v82 = v76 | 0x930000;
      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_97:
  v5 = v71;
  v3 = v69;
  if (v74 == -65536)
  {
    std::istringstream::basic_istringstream[abi:ne200100](buf, &__str);
    MEMORY[0x1E12BCB50](buf, &v82);
    v58 = *(&v89[1] + *(*buf - 24)) & 5;
    *buf = *v23;
    *&buf[*(*buf - 24)] = v23[3];
    *&v87[2] = MEMORY[0x1E69E5548] + 16;
    if (v95 < 0)
    {
      operator delete(__p);
    }

    *&v87[2] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v87[10]);
    std::istream::~istream();
    MEMORY[0x1E12BD050](&v96);
    if (v58)
    {
      v82 = -65536;
    }
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v81[0]);
  v20 = &v82;
LABEL_105:
  v59 = *v20;
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v84[0]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v59 == -65536)
  {
LABEL_108:
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    v60 = *(v7 + 337);
    if (v60)
    {
      v61 = *v60;
      if (!v61)
      {
LABEL_117:
        v59 = 6946818;
        goto LABEL_118;
      }
    }

    else
    {
      v61 = MEMORY[0x1E69E9C10];
      v62 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "SpatialCapture.mm";
      v86 = 1024;
      *v87 = 553;
      _os_log_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Plist has unknown outputChannelLayout. Using Binaural by default", buf, 0x12u);
    }

    goto LABEL_117;
  }

LABEL_118:

  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  v63 = *(v7 + 337);
  if (v63)
  {
    v64 = *v63;
    if (!v64)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v64 = MEMORY[0x1E69E9C10];
    v65 = MEMORY[0x1E69E9C10];
  }

  v66 = v64;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    GetStringFromAudioChannelLayoutTag(&v78, v59);
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v78;
    }

    else
    {
      v67 = v78.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "AUSpatialCapture.mm";
    v86 = 1024;
    *v87 = 224;
    *&v87[4] = 2080;
    *&v87[6] = v67;
    v88 = 1024;
    *v89 = v59;
    _os_log_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loaded output channel layout %s (%u) from tuning plist ", buf, 0x22u);
    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }
  }

LABEL_131:
  *&buf[4] = 0;
  *&buf[8] = 0;
  *buf = v59;
  return (*(*v3 + 536))(v3, 2, 0, buf);
}

void sub_1DDD8ED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char *a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a44);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<SCRenderModes>::__init_with_size[abi:ne200100]<SCRenderModes*,SCRenderModes*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDD8F20C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<char const*,char const*>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void AUSpatialCapture::~AUSpatialCapture(AUSpatialCapture *this)
{
  AUSpatialCapture::~AUSpatialCapture(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59216F8;
  if (*(this + 1056) == 1)
  {
    v2 = *(this + 129);
    if (v2)
    {
      *(this + 130) = v2;
      operator delete(v2);
    }

    v7 = (this + 1008);
    std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  if (*(this + 991) < 0)
  {
    operator delete(*(this + 121));
  }

  v7 = (this + 944);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(this + 116));
  if (*(this + 911) < 0)
  {
    operator delete(*(this + 111));
  }

  if (*(this + 887) < 0)
  {
    operator delete(*(this + 108));
  }

  if (*(this + 863) < 0)
  {
    operator delete(*(this + 105));
  }

  v3 = *(this + 103);
  *(this + 103) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::condition_variable::~condition_variable((this + 760));
  std::mutex::~mutex((this + 696));
  std::mutex::~mutex((this + 632));
  v4 = *(this + 75);
  if (v4)
  {
    CFRelease(v4);
  }

  std::__tree<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::__map_value_compare<AUSpatialCaptureParameterID,std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::less<AUSpatialCaptureParameterID>,true>,std::allocator<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>>>::destroy(*(this + 73));
  v5 = *(this + 69);
  if (v5)
  {
    *(this + 70) = v5;
    operator delete(v5);
  }

  v6 = *(this + 66);
  if (v6)
  {
    *(this + 67) = v6;
    operator delete(v6);
  }

  ausdk::AUBase::~AUBase(this);
}

void std::__tree<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::__map_value_compare<AUSpatialCaptureParameterID,std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::less<AUSpatialCaptureParameterID>,true>,std::allocator<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::__map_value_compare<AUSpatialCaptureParameterID,std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::less<AUSpatialCaptureParameterID>,true>,std::allocator<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::__map_value_compare<AUSpatialCaptureParameterID,std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::less<AUSpatialCaptureParameterID>,true>,std::allocator<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<AUSpatialCaptureParameterID const,SpatialCaptureParameterInfo>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<AUSpatialCaptureParameterID const,SpatialCaptureParameterInfo>,0>(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::optional<AU::SpatialCapture::MicSelector>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(a1 + 48) = v2;
      operator delete(v2);
    }

    v4 = (a1 + 16);
    std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1;
}

void SCOrientationManager::~SCOrientationManager(SCOrientationManager *this)
{
  std::condition_variable::~condition_variable(this + 3);
  std::mutex::~mutex((this + 80));
  std::mutex::~mutex((this + 16));
}

void AUSpatialCapture::AddParameterToMap(uint64_t a1, unsigned int a2, int a3, int a4, const __CFString *a5, std::string **a6, int a7, char **a8, float a9, float a10, float a11)
{
  v50 = *MEMORY[0x1E69E9840];
  __dst = 0u;
  v48 = 0u;
  v47 = 0u;
  bzero(buffer, 0x98uLL);
  v42 = a3;
  v43 = a9;
  v44 = a10;
  v45 = a11;
  LODWORD(v46) = a4;
  if (&v47 != a6)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v47, *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
  }

  if ((&v48 + 8) != a8)
  {
    v22 = a7;
    v24 = *a8;
    v23 = a8[1];
    v25 = v23 - *a8;
    v26 = *(&__dst + 1);
    v27 = *(&v48 + 1);
    if (*(&__dst + 1) - *(&v48 + 1) < v25)
    {
      v28 = v25 >> 2;
      if (*(&v48 + 1))
      {
        *&__dst = *(&v48 + 1);
        operator delete(*(&v48 + 1));
        v26 = 0;
        *(&v48 + 1) = 0;
        __dst = 0uLL;
      }

      if (!(v28 >> 62))
      {
        v29 = v26 >> 1;
        if (v26 >> 1 <= v28)
        {
          v29 = v25 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v30 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (!(v30 >> 62))
        {
          std::allocator<int>::allocate_at_least[abi:ne200100](v30);
        }
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v31 = __dst;
    v32 = __dst - *(&v48 + 1);
    if (__dst - *(&v48 + 1) >= v25)
    {
      a7 = v22;
      if (v23 != v24)
      {
        memmove(*(&v48 + 1), v24, v25);
      }

      *&__dst = v27 + v25;
    }

    else
    {
      if (__dst != *(&v48 + 1))
      {
        memmove(*(&v48 + 1), v24, __dst - *(&v48 + 1));
        v31 = __dst;
      }

      v33 = &v24[v32];
      v34 = v23 - &v24[v32];
      if (v34)
      {
        memmove(v31, v33, v34);
      }

      *&__dst = &v31[v34];
      a7 = v22;
    }
  }

  v41 = a5;
  LODWORD(v46) = v46 | 0x8000000;
  CFStringGetCString(a5, buffer, 52, 0x8000100u);
  v40 = a7;
  LODWORD(v46) = v46 | 0x100000;
  v35 = *(a1 + 8);
  if (!v35)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v36 = v35;
      v37 = *(v35 + 32);
      if (v37 <= a2)
      {
        break;
      }

      v35 = *v36;
      if (!*v36)
      {
        goto LABEL_29;
      }
    }

    if (v37 >= a2)
    {
      break;
    }

    v35 = v36[1];
    if (!v35)
    {
      goto LABEL_29;
    }
  }

  if (*(&v48 + 1))
  {
    *&__dst = *(&v48 + 1);
    operator delete(*(&v48 + 1));
  }

  v38 = &v47;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
}

void sub_1DDD8F9B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va1);
  std::unique_ptr<std::__tree_node<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,void *>>>>::~unique_ptr[abi:ne200100](va);
  SpatialCaptureParameterInfo::~SpatialCaptureParameterInfo(va2);
  _Unwind_Resume(a1);
}

void SpatialCaptureParameterInfo::~SpatialCaptureParameterInfo(SpatialCaptureParameterInfo *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = (this + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AUSpatialCaptureParameterID const,SpatialCaptureParameterInfo>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void dft_v3::dftInit2(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v15 = malloc_type_malloc(0x80uLL, 0x36D645E8uLL);
  if (!v15)
  {
    exception = __cxa_allocate_exception(8uLL);
    v27 = std::bad_alloc::bad_alloc(exception);
  }

  v16 = v15;
  v15[7] = 0u;
  *(v15 + 100) = 0u;
  *(v15 + 84) = 0u;
  *(v15 + 68) = 0u;
  *(v15 + 52) = 0u;
  *(v15 + 36) = 0u;
  *(v15 + 20) = 0u;
  *(v15 + 4) = 0u;
  *a1 = v15;
  v17 = 2 * a3;
  v18 = a3 + 1;
  *v15 = 2 * a3;
  if (a8)
  {
    v19 = a4 + 1;
  }

  else
  {
    v19 = a4;
  }

  *(v15 + 11) = a4;
  *(v15 + 12) = v19;
  *(v15 + 4) = a3;
  *(v15 + 7) = a3;
  v20 = a3;
  *(v15 + 8) = 1.0 / a3;
  *(v15 + 16) = a5;
  if (a6 && (v21 = (a5 / 5000.0), *(v15 + 17) = v21, v21 > 0))
  {
    if (v21 < 7)
    {
      goto LABEL_11;
    }

    v22 = 6;
  }

  else
  {
    v22 = 1;
  }

  *(v15 + 17) = v22;
LABEL_11:
  v23 = 0.0;
  v24 = v20 / a5;
  if (a5)
  {
    v23 = v24 * 1000.0;
  }

  else
  {
    v24 = 0.0;
  }

  *(v15 + 5) = v24;
  *(v15 + 6) = v23;
  *(v15 + 9) = a3 >> 1;
  *(v15 + 10) = v18;
  *(v15 + 13) = a4 * a3;
  *(v15 + 14) = v19 * v18;
  *(v15 + 15) = v19 * a3;
  *(v15 + 23) = 0;
  v25 = powf((1.0 / (a2 * -3.0)) + 1.0, v20);
  *(v16 + 19) = v17;
  *(v16 + 20) = 1065353216;
  *(v16 + 21) = 1.0 / v17;
  *(v16 + 22) = v25;
  *(v16 + 24) = a7;
  *(v16 + 25) = a8;
  *(v16 + 18) = a4 * a3 + v17;
  MultiRadixRealFFT_Create();
}

void dft_v3::dftRemove(void **a1)
{
  if (*a1)
  {
    MultiRadixFFT_Dispose(*(*a1 + 1));
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }
  }
}

signed int *dft_v3::GetIndexSequence(signed int *this, int *a2, int a3, signed int a4)
{
  if (a4 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4;
  }

  v5 = a2 + a4 + a4 * ((((a2 - a3 + 1) & ~((a2 - a3 + 1) >> 31)) - (a2 - a3 + 1) + ((a2 - a3 + 1) >> 31)) / v4 + ((a2 - a3 + 1) >> 31)) - a3 + 1;
  do
  {
    v5 -= a4;
  }

  while (v5 >= a4);
  *this = v5;
  if (a3 >= 2)
  {
    for (i = 1; i != a3; this[i++] = v5)
    {
      v5 += 1 + a4 + a4 * ((~v5 + ((v5 + 1) >> 31) + ((v5 + 1) & ~((v5 + 1) >> 31))) / v4 + ((v5 + 1) >> 31));
      do
      {
        v5 -= a4;
      }

      while (v5 >= a4);
    }
  }

  return this;
}

uint64_t dft_v3::dftGenericAnalysis2ndHalf(const DSPComplex *a1, float *__C, float *a3, uint64_t a4, int a5)
{
  v9 = *(a4 + 36);
  v10 = v9;
  if (a5)
  {
    v11 = *(a4 + 36);
  }

  else
  {
    v11 = 0;
  }

  vDSP_vclr(__C, 1, 2 * v9);
  vDSP_vclr(a3, 1, 2 * v10);
  v15.realp = &__C[v11];
  v15.imagp = &a3[v11];
  vDSP_ctoz(a1, 2, &v15, 1, v10);
  v15.realp = __C;
  v15.imagp = a3;
  v13 = *(a4 + 8);
  if (v13)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v13, &v15, 1, v12);
  }

  MEMORY[0x1E12BE940](__C, 1, a4 + 84, __C, 1, *(a4 + 16));
  return MEMORY[0x1E12BE940](a3, 1, a4 + 84, a3, 1, *(a4 + 16));
}

void dft_v3::dftGenericAnalysis2ndHalf_dsc(const void *a1, const void *a2, float *__C, float *a4, int *a5)
{
  v10 = *a5 >> 2;
  v11 = *a5 >> 2;
  vDSP_vclr(__C, 1, v11);
  vDSP_vclr(a4, 1, v11);
  memcpy(&__C[v10], a1, 4 * v10);
  memcpy(&a4[v10], a2, 4 * v10);
  v14.realp = __C;
  v14.imagp = a4;
  v13 = *(a5 + 1);
  if (v13)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v13, &v14, 1, v12);
  }

  MEMORY[0x1E12BE940](__C, 1, a5 + 21, __C, 1, *a5 >> 1);

  JUMPOUT(0x1E12BE940);
}

void dft_v3::dftSynthesis(float *a1, float *a2, uint64_t a3)
{
  v4 = *(a3 + 80);
  v7 = v4;
  v8.realp = a1;
  v8.imagp = a2;
  if (v4 != 1.0)
  {
    MEMORY[0x1E12BE940](a1, 1, &v7, a1, 1, *(a3 + 16));
    MEMORY[0x1E12BE940](a2, 1, &v7, a2, 1, *(a3 + 16));
  }

  v6 = *(a3 + 8);
  if (v6)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v6, &v8, -1, v4);
  }
}

uint64_t AUNFNSwitch::ValidFormat(AUNFNSwitch *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 32 && a4->mFormatID == 1819304813)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2)
  {
    v6 = a4->mChannelsPerFrame == 1;
  }

  else
  {
    if (a2 != 1)
    {
      return result;
    }

    v6 = a4->mChannelsPerFrame == 2;
  }

  if (v6)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AUNFNSwitch::SupportedNumChannels(AUNFNSwitch *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUNFNSwitch::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUNFNSwitch::GetParameterValueStrings(AUNFNSwitch *this, int a2, unsigned int a3, const __CFArray **a4)
{
  if (a4)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return 4294956430;
  }
}

uint64_t AUNFNSwitch::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
    ++*(this + 134);
  }

  return result;
}

uint64_t AUNFNSwitch::GetParameterInfo(AUNFNSwitch *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956430;
  }

  if (a3 > 0x1D)
  {
    return 4294956418;
  }

  v6 = *(&off_1E866ADD0 + a3);
  v7 = dword_1DE0B82F0[a3];
  v8 = dword_1DE0B8368[a3];
  v9 = flt_1DE0B83E0[a3];
  v10 = flt_1DE0B8458[a3];
  v11 = flt_1DE0B84D0[a3];
  v12 = dword_1DE0B8548[a3];
  buffer->cfNameString = v6;
  buffer->flags = 0x8000000;
  CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->clumpID = v7;
  flags = buffer->flags;
  buffer->unit = v8;
  buffer->maxValue = v11;
  buffer->defaultValue = v10;
  buffer->minValue = v9;
  buffer->flags = flags | v12;
  return result;
}

uint64_t AUNFNSwitch::GetParameterList(AUNFNSwitch *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
    result = 4294956430;
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = xmmword_1DE096230;
      *(a3 + 1) = xmmword_1DE09BC60;
      *(a3 + 2) = xmmword_1DE09C1E0;
      *(a3 + 3) = xmmword_1DE09C0E0;
      *(a3 + 4) = xmmword_1DE09C1F0;
    }

    v4 = 20;
  }

  *a4 = v4;
  return result;
}

ausdk::AUInputElement *AUNFNSwitch::Render(AUNFNSwitch *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v23[1] = *MEMORY[0x1E69E9840];
  do
  {
    Element = ausdk::AUScope::GetElement((this + 80), v8);
    if (Element && *(Element + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v8);
      if (v12)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v8, a4);
      }

      if (result)
      {
        return result;
      }
    }

    else
    {
      v9 = 1;
    }

    v8 = (v8 + 1);
  }

  while (v8 != 3);
  v13 = 0;
  v22 = 0;
  v23[0] = 0;
  v14 = &v22;
  v15 = 1;
  do
  {
    v16 = v15;
    v17 = ausdk::AUScope::GetElement((this + 128), v13);
    if (!v17)
    {
LABEL_21:
      ausdk::Throw(0xFFFFD583);
    }

    v18 = ausdk::AUIOElement::PrepareBuffer(v17, a4);
    v15 = 0;
    *v14 = v18;
    v13 = 1;
    v14 = v23;
  }

  while ((v16 & 1) != 0);
  if (v9)
  {
    return 0;
  }

  v19 = 0;
  memset(v21, 0, sizeof(v21));
  do
  {
    v20 = ausdk::AUScope::GetElement((this + 80), v19);
    if (!v20)
    {
      goto LABEL_21;
    }

    if (!*(v20 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v21[v19++] = *(v20 + 152) + 48;
  }

  while (v19 != 3);
  return (*(*this + 184))(this, a2, a4, 3, v21, 2, &v22);
}

uint64_t AUNFNSwitch::ProcessMultipleBufferLists(AUNFNSwitch *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v11 = *(this + 132);
  if (*(this + 133) == v11)
  {
    goto LABEL_54;
  }

  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 140) = ausdk::AUElement::GetParameter(v12, 0);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 141) = ausdk::AUElement::GetParameter(v14, 1u);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 142) = ausdk::AUElement::GetParameter(v16, 2u);
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 143) = ausdk::AUElement::GetParameter(v18, 3u);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 144) = ausdk::AUElement::GetParameter(v20, 4u);
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 145) = ausdk::AUElement::GetParameter(v22, 5u);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 146) = ausdk::AUElement::GetParameter(v24, 6u);
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 147) = ausdk::AUElement::GetParameter(v26, 7u);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 148) = ausdk::AUElement::GetParameter(v28, 8u);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 149) = ausdk::AUElement::GetParameter(v30, 9u);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 150) = ausdk::AUElement::GetParameter(v32, 0xAu);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 151) = ausdk::AUElement::GetParameter(v34, 0xBu);
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 152) = ausdk::AUElement::GetParameter(v36, 0xCu);
  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 153) = ausdk::AUElement::GetParameter(v38, 0xDu);
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 154) = ausdk::AUElement::GetParameter(v40, 0xEu);
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 155) = ausdk::AUElement::GetParameter(v42, 0xFu);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 624) = ausdk::AUElement::GetParameter(v44, 0x10u) != 0.0;
  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 157) = ausdk::AUElement::GetParameter(v46, 0x11u);
  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 158) = ausdk::AUElement::GetParameter(v48, 0x12u);
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_106;
  }

  *(this + 159) = ausdk::AUElement::GetParameter(v50, 0x13u);
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v53 = *(Element + 80);
  v54 = *(this + 144);
  v55 = v53 * 0.5;
  v56 = v54;
  if (v54 > (v53 * 0.5))
  {
    *(this + 144) = v55;
    v56 = v53 * 0.5;
  }

  v57 = *(this + 145);
  if (v57 <= v55)
  {
    if (v56 <= v57)
    {
      if (v54 <= v55)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

  *(this + 145) = v55;
  v57 = v55;
  if (v56 > v55)
  {
LABEL_29:
    *(this + 144) = v57;
  }

LABEL_30:
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v58, 4u, *(this + 144));
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v60, 5u, *(this + 145));
LABEL_33:
  v62 = *(this + 146);
  v63 = v62;
  if (v62 > v55)
  {
    *(this + 146) = v55;
    v63 = v55;
  }

  v64 = *(this + 147);
  if (v64 <= v55)
  {
    if (v63 <= v64)
    {
      if (v62 <= v55)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  *(this + 147) = v55;
  v64 = v55;
  if (v63 > v55)
  {
LABEL_39:
    *(this + 146) = v64;
  }

LABEL_40:
  v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v65, 6u, *(this + 146));
  v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v67, 7u, *(this + 147));
LABEL_43:
  v69 = *(this + 148);
  v70 = v69;
  if (v69 > v55)
  {
    *(this + 148) = v55;
    v70 = v55;
  }

  v71 = *(this + 149);
  if (v71 > v55)
  {
    *(this + 149) = v55;
    v71 = v55;
    if (v70 <= v55)
    {
LABEL_50:
      v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v73 & 1) == 0)
      {
        goto LABEL_106;
      }

      ausdk::AUElement::SetParameter(v72, 8u, *(this + 148));
      v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v75 & 1) == 0)
      {
        goto LABEL_106;
      }

      ausdk::AUElement::SetParameter(v74, 9u, *(this + 149));
      goto LABEL_53;
    }

LABEL_49:
    *(this + 148) = v71;
    goto LABEL_50;
  }

  if (v70 > v71)
  {
    goto LABEL_49;
  }

  if (v69 > v55)
  {
    goto LABEL_50;
  }

LABEL_53:
  *(this + 133) = v11;
LABEL_54:
  v76 = *(this + 134);
  if (*(this + 135) != v76)
  {
    v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v78 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 160) = ausdk::AUElement::GetParameter(v77, 0x14u);
    v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v80 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 161) = ausdk::AUElement::GetParameter(v79, 0x15u);
    v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v82 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 162) = ausdk::AUElement::GetParameter(v81, 0x16u);
    v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v84 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 163) = ausdk::AUElement::GetParameter(v83, 0x17u);
    v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v86 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 164) = ausdk::AUElement::GetParameter(v85, 0x18u);
    v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v88 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 165) = ausdk::AUElement::GetParameter(v87, 0x19u);
    v89 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v90 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 166) = ausdk::AUElement::GetParameter(v89, 0x1Au);
    v91 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v92 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 167) = ausdk::AUElement::GetParameter(v91, 0x1Bu);
    v93 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v94 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 168) = ausdk::AUElement::GetParameter(v93, 0x1Cu);
    v95 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v96 & 1) == 0)
    {
      goto LABEL_106;
    }

    *(this + 169) = ausdk::AUElement::GetParameter(v95, 0x1Du);
    *(this + 135) = v76;
  }

  v97 = *(this + 69);
  v98 = *(this + 35);
  v99 = *(this + 36);
  v100 = *(this + 37);
  *(v97 + 104) = *(this + 38);
  *(v97 + 88) = v100;
  *(v97 + 72) = v99;
  *(v97 + 56) = v98;
  v101 = *(this + 39);
  v102 = *(this + 40);
  v103 = *(this + 41);
  *(v97 + 168) = *(this + 84);
  *(v97 + 152) = v103;
  *(v97 + 136) = v102;
  *(v97 + 120) = v101;
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  v104 = *a5;
  if (!*a5)
  {
    return 4294956420;
  }

  if (*v104 != 2)
  {
    return 4294956428;
  }

  v105 = a5[1];
  if (!v105)
  {
    return 4294956420;
  }

  if (v105->mNumberBuffers != 2)
  {
    return 4294956428;
  }

  v106 = a5[2];
  if (!v106)
  {
    return 4294956420;
  }

  if (v106->mNumberBuffers != 2)
  {
    return 4294956428;
  }

  v107 = *a7;
  if (*a7)
  {
    if (*v107 != 1)
    {
      return 4294956428;
    }
  }

  v108 = a7[1];
  if (v108)
  {
    if (v108->mNumberBuffers != 1)
    {
      return 4294956428;
    }
  }

  v109 = (this + 560);
  if (*(this + 544) != 1)
  {
    NFNSwitchKernel::ProcessBufferLists(*(this + 69), *(v104 + 16), *(v104 + 32), v105->mBuffers[0].mData, *&v105[1].mBuffers[0].mNumberChannels, v106->mBuffers[0].mData, *&v106[1].mBuffers[0].mNumberChannels, *(v107 + 16), *&v101, *&v102, *&v103, v108->mBuffers[0].mData);
    v118 = *(this + 69);
    v119 = *(v118 + 72);
    v120 = *(v118 + 104);
    v121 = *(v118 + 56);
    *(this + 37) = *(v118 + 88);
    *(this + 38) = v120;
    *v109 = v121;
    *(this + 36) = v119;
    v122 = *(v118 + 136);
    v123 = *(v118 + 152);
    v124 = *(v118 + 120);
    *(this + 84) = *(v118 + 168);
    *(this + 40) = v122;
    *(this + 41) = v123;
    *(this + 39) = v124;
    v125 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v126)
    {
      ausdk::AUElement::SetParameter(v125, 0xDu, *(this + 153));
      v127 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v128)
      {
        ausdk::AUElement::SetParameter(v127, 0xEu, *(this + 154));
        v129 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v130)
        {
          ausdk::AUElement::SetParameter(v129, 0xFu, *(this + 155));
          v131 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v133)
          {
            LOBYTE(v132) = *(this + 624);
            ausdk::AUElement::SetParameter(v131, 0x10u, v132);
            v134 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v135)
            {
              ausdk::AUElement::SetParameter(v134, 0x11u, *(this + 157));
              v136 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v137)
              {
                ausdk::AUElement::SetParameter(v136, 0x12u, *(this + 158));
                goto LABEL_99;
              }
            }
          }
        }
      }
    }

LABEL_106:
    abort();
  }

  if (v107)
  {
    memcpy(*(v107 + 16), *&v105[1].mBuffers[0].mNumberChannels, *(&v105[1].mNumberBuffers + 1));
    v108 = a7[1];
  }

  if (v108)
  {
    memcpy(v108->mBuffers[0].mData, *&a5[2][1].mBuffers[0].mNumberChannels, *(&a5[2][1].mNumberBuffers + 1));
  }

  *(this + 159) = 1;
  *(this + 164) = *(this + 169);
  *(this + 40) = *(this + 660);
  v110 = *(this + 69);
  v111 = *v109;
  v112 = *(this + 36);
  v113 = *(this + 38);
  *(v110 + 88) = *(this + 37);
  *(v110 + 72) = v112;
  *(v110 + 56) = v111;
  *(v110 + 104) = v113;
  v115 = *(this + 40);
  v114 = *(this + 41);
  v116 = *(this + 84);
  *(v110 + 120) = *(this + 39);
  *(v110 + 136) = v115;
  *(v110 + 168) = v116;
  *(v110 + 152) = v114;
LABEL_99:
  v138 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v139 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v138, 0x13u, *(this + 159));
  v140 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v141 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v140, 0x14u, *(this + 160));
  v142 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v143 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v142, 0x15u, *(this + 161));
  v144 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v145 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v144, 0x16u, *(this + 162));
  v146 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v147 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v146, 0x17u, *(this + 163));
  v148 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v149 & 1) == 0)
  {
    goto LABEL_106;
  }

  ausdk::AUElement::SetParameter(v148, 0x18u, *(this + 164));
  return 0;
}

uint64_t AUNFNSwitch::SetParameter(AUNFNSwitch *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  v10 = 528;
  if (a2 - 20 < 0xA)
  {
    v10 = 536;
  }

  ++*(this + v10);
  return result;
}

uint64_t AUNFNSwitch::SetProperty(AUNFNSwitch *this, int a2, int a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 4294956445;
    if (a6 >= 4)
    {
      if (*a5)
      {
        return 0;
      }

      else
      {
        return 4294956445;
      }
    }
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 544) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUNFNSwitch::GetProperty(AUNFNSwitch *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 544;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUNFNSwitch::GetPropertyInfo(AUNFNSwitch *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 3700 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUNFNSwitch::Reset(AUNFNSwitch *this)
{
  v1 = *(this + 69);
  *(v1 + 24) = 0;
  *(v1 + 20) = 0;
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(v3 + 8 * v4);
      if (v6)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v6);
        MEMORY[0x1E12BD160]();
        VPTimeFreqConverter_Create();
      }

      v4 = v5++;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  return 0;
}

uint64_t AUNFNSwitch::Initialize(AUNFNSwitch *this)
{
  for (i = 0; i != 3; ++i)
  {
    Element = ausdk::AUScope::GetElement((this + 80), i);
    if (!Element)
    {
LABEL_14:
      ausdk::Throw(0xFFFFD583);
    }

    if (*(Element + 108) != 2)
    {
      return 4294956421;
    }
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = ausdk::AUScope::GetElement((this + 128), v4);
    if (!v7)
    {
      goto LABEL_14;
    }

    if (*(v7 + 108) != 1)
    {
      return 4294956421;
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v8 = *(this + 69);
  v9 = *(this + 84);
  *(v8 + 8) = *(v7 + 80);
  *(v8 + 16) = v9;
  v15 = 0;
  std::vector<void *>::assign(v8 + 32, 5uLL, &v15);
  if (*(v8 + 40) != *(v8 + 32))
  {
    VPTimeFreqConverter_Create();
  }

  v11 = (2 * *(v8 + 16));
  LODWORD(v15) = 0;
  std::vector<float>::assign((v8 + 176), v11, &v15, v10);
  v12 = *(v8 + 16);
  LODWORD(v15) = 0;
  std::vector<float>::assign((v8 + 200), v12, &v15, v13);
  *v8 = 1;
  (*(*this + 72))(this, 0, 0);
  return 0;
}

void AUNFNSwitch::~AUNFNSwitch(AUNFNSwitch *this)
{
  AUNFNSwitch::~AUNFNSwitch(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5921948;
  v2 = *(this + 69);
  if (v2)
  {
    v4 = v2[4];
    v3 = v2[5];
    if (v3 != v4)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = *(v4 + 8 * v5);
        if (v7)
        {
          VPTimeFreqConverter::~VPTimeFreqConverter(v7);
          MEMORY[0x1E12BD160]();
          *(v2[4] + 8 * v5) = 0;
          v4 = v2[4];
          v3 = v2[5];
        }

        v5 = v6++;
      }

      while (v5 < (v3 - v4) >> 3);
    }

    v8 = v2[25];
    if (v8)
    {
      v2[26] = v8;
      operator delete(v8);
    }

    v9 = v2[22];
    if (v9)
    {
      v2[23] = v9;
      operator delete(v9);
    }

    v10 = v2[4];
    if (v10)
    {
      v2[5] = v10;
      operator delete(v10);
    }

    MEMORY[0x1E12BD160](v2, 0x1080C40FD18A842);
  }

  ausdk::AUBase::~AUBase(this);
}

id GetSubDictionaryWithKey(const __CFDictionary *a1, const char *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v6 = *SCLogScope(void)::scope;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "AUSpatialCaptureLoadTuning.mm";
      v31 = 1024;
      v32 = 19;
      v33 = 2080;
      v34 = [v4 UTF8String];
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required key missing '%s'", &v29, 0x1Cu);
    }
  }

LABEL_11:
  v9 = [(__CFDictionary *)v3 objectForKeyedSubscript:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v11 = *SCLogScope(void)::scope;
      if (!v11)
      {
LABEL_28:
        v21 = MEMORY[0x1E695DF20];
        v22 = [(__CFDictionary *)v3 objectForKeyedSubscript:v4];
        v14 = [v21 dictionaryWithContentsOfFile:v22];

        if (v14)
        {
          goto LABEL_43;
        }

        if (SCLogScope(void)::once != -1)
        {
          dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
        }

        if (SCLogScope(void)::scope)
        {
          v15 = *SCLogScope(void)::scope;
          if (!v15)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v15 = MEMORY[0x1E69E9C10];
          v27 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        v29 = 136315394;
        v30 = "AUSpatialCaptureLoadTuning.mm";
        v31 = 1024;
        v32 = 25;
        v24 = "%25s:%-5d Dictionary file not present on disk!";
        v25 = v15;
        v26 = 18;
        goto LABEL_40;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    v17 = v11;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(__CFDictionary *)v3 objectForKeyedSubscript:v4];
      v19 = v18;
      v20 = [v18 UTF8String];
      v29 = 136315906;
      v30 = "AUSpatialCaptureLoadTuning.mm";
      v31 = 1024;
      v32 = 23;
      v33 = 2080;
      v34 = a2;
      v35 = 2080;
      v36 = v20;
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading plist file for %s from %s", &v29, 0x26u);
    }

    goto LABEL_28;
  }

  v12 = [(__CFDictionary *)v3 objectForKeyedSubscript:v4];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    v14 = [(__CFDictionary *)v3 objectForKeyedSubscript:v4];
    goto LABEL_43;
  }

  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v15 = *SCLogScope(void)::scope;
    if (!v15)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v29 = 136315650;
    v30 = "AUSpatialCaptureLoadTuning.mm";
    v31 = 1024;
    v32 = 29;
    v33 = 2080;
    v34 = a2;
    v24 = "%25s:%-5d Bad object for key '%s'";
    v25 = v15;
    v26 = 28;
LABEL_40:
    _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, v24, &v29, v26);
  }

LABEL_41:

LABEL_42:
  v14 = 0;
LABEL_43:

  return v14;
}

uint64_t *std::vector<WindUtility::EventTracker<float>>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = 0x8E38E38E38E38E39 * ((v2 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    v7 = result[2];
    if (0x8E38E38E38E38E39 * ((v7 - v2) >> 3) < v6)
    {
      if (a2 <= 0x38E38E38E38E38ELL)
      {
        v8 = 0x8E38E38E38E38E39 * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x1C71C71C71C71C7)
        {
          v10 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v2 + 72 * v6;
    do
    {
      *(v2 + 16) = 0uLL;
      *(v2 + 32) = 0uLL;
      *v2 = 0uLL;
      *(v2 + 48) = 0;
      *(v2 + 56) = 1;
      *(v2 + 64) = 0;
      v2 += 72;
    }

    while (v2 != v11);
    result[1] = v11;
  }

  else if (!v5)
  {
    result[1] = v3 + 72 * a2;
  }

  return result;
}

void WindSuppressorCore::~WindSuppressorCore(WindSuppressorCore *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v12 = (this + 264);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v4 = *(this + 30);
  if (v4)
  {
    *(this + 31) = v4;
    operator delete(v4);
  }

  v5 = *(this + 27);
  if (v5)
  {
    *(this + 28) = v5;
    operator delete(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    *(this + 22) = v7;
    operator delete(v7);
  }

  v8 = *(this + 18);
  if (v8)
  {
    *(this + 19) = v8;
    operator delete(v8);
  }

  v9 = *(this + 15);
  if (v9)
  {
    *(this + 16) = v9;
    operator delete(v9);
  }

  v10 = *(this + 12);
  if (v10)
  {
    *(this + 13) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

uint64_t WindUtility::EventTracker<float>::update(uint64_t result, float a2)
{
  v2 = *result;
  v3 = *(result + 4);
  v4 = *(result + 64);
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v5 = *(result + 16);
          if (v2 >= a2)
          {
            v6 = *(result + 56);
            v7 = *(result + 32);
            goto LABEL_27;
          }

LABEL_14:
          v6 = 0;
          v9 = 1;
LABEL_29:
          *(result + 64) = v9;
          *(result + 20) = v5;
          goto LABEL_30;
        }

LABEL_17:
        v6 = *(result + 56);
        v5 = 0.0;
        goto LABEL_30;
      }

      v6 = *(result + 56);
      v5 = *(result + 20) + (*(result + 24) * v6);
      if (v3 > a2)
      {
        v6 = 0;
        v10 = 2;
        goto LABEL_20;
      }

      v8 = *(result + 12);
      if (v5 < v8)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v5 = *(result + 8);
    if (v2 < a2)
    {
      goto LABEL_14;
    }

LABEL_31:
    v8 = v5;
    goto LABEL_32;
  }

  if (v4 == 3)
  {
    v5 = *(result + 12);
    if (v3 > a2)
    {
      v6 = 0;
      v10 = 4;
LABEL_20:
      *(result + 64) = v10;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (v4 == 4)
  {
    if (v2 >= a2)
    {
      v5 = *(result + 16);
      v6 = *(result + 56);
      v7 = *(result + 40);
LABEL_27:
      if (v6 > v7)
      {
        v6 = 0;
        v9 = 5;
        goto LABEL_29;
      }

LABEL_30:
      *(result + 56) = v6 + 1;
      goto LABEL_31;
    }

    v8 = *(result + 12);
LABEL_24:
    *(result + 64) = 3;
    goto LABEL_25;
  }

  if (v4 != 5)
  {
    goto LABEL_17;
  }

  v6 = *(result + 56);
  v5 = *(result + 20) + (*(result + 28) * v6);
  if (v2 < a2)
  {
    goto LABEL_14;
  }

  v8 = *(result + 8);
  if (v5 > v8)
  {
    goto LABEL_30;
  }

  *(result + 64) = 0;
LABEL_25:
  *(result + 56) = 0;
LABEL_32:
  *(result + 16) = v8;
  return result;
}

void IVA_HRLS_Rank1::CovarianceUpdate(IVA_HRLS_Rank1 *this)
{
  v1 = *(this + 11);
  v19 = *(this + 12);
  if (v1)
  {
    v3 = 0;
    do
    {
      v18 = sqrtf(fmaxf(*(this + 4) / (*(*(this + 105) + 4 * v3) + *(this + 30)), 0.0));
      vDSP_vclr(*(this + 100), 1, *(this + 12));
      vDSP_vclr(*(this + 101), 1, *(this + 12));
      MEMORY[0x1E12BE940](*(*(this + 135) + 24 * v3), 1, this + 1152, *(*(this + 135) + 24 * v3), 1, (*(this + 12) * *(this + 13)));
      MEMORY[0x1E12BE940](*(*(this + 138) + 24 * v3), 1, this + 1152, *(*(this + 138) + 24 * v3), 1, (*(this + 12) * *(this + 13)));
      vDSP_vclr(*(this + 76), 1, (*(this + 12) * *(this + 11)));
      vDSP_vclr(*(this + 79), 1, (*(this + 12) * *(this + 11)));
      LODWORD(v4) = *(this + 11);
      if (v4)
      {
        v5 = 0;
        do
        {
          if (v4)
          {
            v6 = 0;
            v7 = 0;
            do
            {
              vDSP_zvcma((*(*(this + 141) + 24 * v3) + 16 * (v5 + v4 * v7++)), 1, (*(this + 55) + v6), 1, (*(this + 94) + 16 * v5), 1, (*(this + 94) + 16 * v5), 1, *(this + 12));
              v4 = *(this + 11);
              v6 += 16;
            }

            while (v7 < v4);
          }

          ++v5;
        }

        while (v5 < v4);
      }

      MEMORY[0x1E12BE940](*(this + 76), 1, &v18, *(this + 76), 1, (*(this + 12) * v4));
      MEMORY[0x1E12BE940](*(this + 79), 1, &v18, *(this + 79), 1, (*(this + 12) * *(this + 11)));
      if (*(this + 11))
      {
        v8 = 0;
        v9 = 0;
        do
        {
          vDSP_zvmgsa((*(this + 94) + v8), 1, *(this + 100), 1, *(this + 100), 1, *(this + 12));
          ++v9;
          v8 += 16;
        }

        while (v9 < *(this + 11));
      }

      MEMORY[0x1E12BE8A0](*(this + 100), 1, this + 108, **(this + 73), 1, *(this + 12));
      vDSP_vthr(**(this + 73), 1, *(this + 19), **(this + 73), 1, *(this + 12));
      vvsqrtf(*(this + 100), **(this + 73), &v19);
      MEMORY[0x1E12BE5D0](*(this + 100), 1, **(this + 73), 1, *(this + 100), 1, *(this + 12));
      vDSP_vthr(*(this + 100), 1, this + 26, *(this + 100), 1, *(this + 12));
      vDSP_svdiv(this + 28, *(this + 100), 1, **(this + 73), 1, *(this + 12));
      vDSP_vclr(*(this + 82), 1, (*(this + 12) * *(this + 11)));
      vDSP_vclr(*(this + 85), 1, (*(this + 12) * *(this + 11)));
      LODWORD(v10) = *(this + 11);
      if (!v10)
      {
        break;
      }

      v11 = 0;
      do
      {
        if (v10)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            vDSP_zvma((*(*(this + 141) + 24 * v3) + 16 * (v13++ + v11 * v10)), 1, (*(this + 94) + v12), 1, (*(this + 97) + 16 * v11), 1, (*(this + 97) + 16 * v11), 1, *(this + 12));
            v10 = *(this + 11);
            v12 += 16;
          }

          while (v13 < v10);
        }

        vDSP_zrvmul((*(this + 97) + 16 * v11), 1, **(this + 73), 1, (*(this + 97) + 16 * v11), 1, *(this + 12));
        ++v11;
        v10 = *(this + 11);
      }

      while (v11 < v10);
      if (!v10)
      {
        break;
      }

      v14 = 0;
      do
      {
        if (v10)
        {
          v15 = 0;
          for (i = 0; i < v10; ++i)
          {
            v17 = (*(*(this + 141) + 24 * v3) + 16 * (i + v14 * v10));
            vDSP_zvcma((*(this + 94) + v15), 1, (*(this + 97) + 16 * v14), 1, v17, 1, v17, 1, *(this + 12));
            v10 = *(this + 11);
            v15 += 16;
          }
        }

        ++v14;
      }

      while (v14 < v10);
      ++v3;
    }

    while (v3 < v10);
  }
}

void IVA_HRLS_Rank1::WAUpdate(IVA_HRLS_Rank1 *this)
{
  LODWORD(v2) = *(this + 11);
  if (v2)
  {
    v3 = 0;
    do
    {
      vDSP_vclr(*(this + 82), 1, (*(this + 12) * v2));
      vDSP_vclr(*(this + 85), 1, (*(this + 12) * *(this + 11)));
      v4 = *(this + 11);
      if (v4)
      {
        for (i = 0; i < v4; ++i)
        {
          if (v4)
          {
            for (j = 0; j < v4; ++j)
            {
              vDSP_zvcma((*(*(this + 141) + 24 * v3) + 16 * (v4 * j + i)), 1, (*(this + 132) + 16 * (v4 * j + v3)), 1, (*(this + 97) + 16 * i), 1, (*(this + 97) + 16 * i), 1, *(this + 12));
              v4 = *(this + 11);
            }
          }
        }
      }

      vDSP_vclr(*(this + 76), 1, *(this + 12) * v4);
      vDSP_vclr(*(this + 79), 1, (*(this + 12) * *(this + 11)));
      LODWORD(v7) = *(this + 11);
      if (v7)
      {
        v8 = 0;
        do
        {
          if (v7)
          {
            v9 = 0;
            v10 = 0;
            do
            {
              vDSP_zvma((*(*(this + 141) + 24 * v3) + 16 * (v10++ + v8 * v7)), 1, (*(this + 97) + v9), 1, (*(this + 94) + 16 * v8), 1, (*(this + 94) + 16 * v8), 1, *(this + 12));
              v7 = *(this + 11);
              v9 += 16;
            }

            while (v10 < v7);
          }

          ++v8;
        }

        while (v8 < v7);
      }

      vDSP_vclr(**(this + 73), 1, *(this + 12));
      if (*(this + 11))
      {
        v11 = 0;
        v12 = 0;
        do
        {
          vDSP_zvmgsa((*(this + 97) + v11), 1, **(this + 73), 1, **(this + 73), 1, *(this + 12));
          ++v12;
          v11 += 16;
        }

        while (v12 < *(this + 11));
      }

      MEMORY[0x1E12BE8A0](**(this + 73), 1, this + 96, **(this + 73), 1, *(this + 12));
      vDSP_svdiv(this + 27, **(this + 73), 1, **(this + 73), 1, *(this + 12));
      LODWORD(v13) = *(this + 11);
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          vDSP_zrvmul((*(this + 94) + v14), 1, **(this + 73), 1, (*(this + 94) + v14), 1, *(this + 12));
          ++v15;
          v13 = *(this + 11);
          v14 += 16;
        }

        while (v15 < v13);
      }

      MEMORY[0x1E12BE9A0](*(this + 111) + 4 * (v13 * v3 * *(this + 12)), 1, *(this + 76), 1, *(this + 82), 1, (*(this + 12) * v13));
      MEMORY[0x1E12BE5D0](*(this + 120) + 4 * (*(this + 12) * *(this + 11) * v3), 1, *(this + 79), 1, *(this + 85), 1);
      vDSP_zvconj(*(this + 94), 1, (*(this + 129) + 16 * (*(this + 11) * v3)), 1, (*(this + 12) * *(this + 11)));
      SeparationBase::rank1WInverseA(this, v3++);
      v2 = *(this + 11);
    }

    while (v3 < v2);
  }

  SeparationBase::minimumDistrotionPrinciple(this);
}

uint64_t AUNeuralNetRES::GetScopeExtended(AUNeuralNetRES *this, int a2)
{
  if (a2 == 4)
  {
    return this + 568;
  }

  else
  {
    return 0;
  }
}

uint64_t AUNeuralNetRES::ChangeStreamFormat(AUNeuralNetRES *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  v6 = a3;
  v7 = a2;
  v17 = *MEMORY[0x1E69E9840];
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  v9 = 0;
  if (v7 == 1 && !v6)
  {
    if (ausdk::AUScope::GetElement((this + 80), 1u))
    {
      Element = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v9 = (*(*Element + 56))(Element, a5);
      if (AUNeuralNetRESLogScope(void)::once != -1)
      {
        dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
      }

      if (AUNeuralNetRESLogScope(void)::scope)
      {
        v11 = *AUNeuralNetRESLogScope(void)::scope;
        if (!*AUNeuralNetRESLogScope(void)::scope)
        {
          return v9;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "AUNeuralNetRES.cpp";
        v15 = 1024;
        v16 = 761;
        _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Setting the stream format for the second input bus to match the format of the first bus.\n", &v13, 0x12u);
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t AUNeuralNetRES::ValidFormat(AUNeuralNetRES *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2)
  {
    if (a4->mChannelsPerFrame == 1)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  else if (a2 == 1)
  {
    if (a4->mChannelsPerFrame < 0x11)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUNeuralNetRES::SupportedNumChannels(AUNeuralNetRES *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUNeuralNetRES::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 16;
}

uint64_t AUNeuralNetRES::GetParameterValueStrings(AUNeuralNetRES *this, int a2, unsigned int a3, const __CFArray **a4)
{
  if (a4)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return 4294956430;
  }
}

uint64_t AUNeuralNetRES::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    this[66] = (this[66] + 1);
    this[68] = (this[68] + 1);
  }

  return result;
}

uint64_t AUNeuralNetRES::SaveExtendedScopes(AUNeuralNetRES *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUNeuralNetRES::GetParameterInfo(AUNeuralNetRES *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    result = 4294956418;
    if (a3 <= 101)
    {
      if (a3 == 100)
      {
        buffer->cfNameString = @"EC Delta EIR.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC Delta EIR.", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v10 = 0x501502F900000000;
      }

      else
      {
        if (a3 != 101)
        {
          return result;
        }

        buffer->cfNameString = @"EC IR Delay.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC IR Delay.", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v10 = 0x43C8000000000000;
      }

      goto LABEL_28;
    }

    switch(a3)
    {
      case 'f':
        v8 = @"EC Adapted flag.";
        break;
      case 'g':
        buffer->cfNameString = @"EC Time aligned ref signal energy.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC Time aligned ref signal energy.", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v10 = 0x447A000000000000;
        goto LABEL_28;
      case 'h':
        v8 = @"EC Mic-Eclee cross correlation.";
        break;
      default:
        return result;
    }

    buffer->cfNameString = v8;
    buffer->flags = 0x8000000;
    CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Generic;
    buffer->defaultValue = 0.0;
    v10 = 0x3F80000000000000;
LABEL_28:
    *&buffer->minValue = v10;
    goto LABEL_29;
  }

  if (a2)
  {
    return 4294956430;
  }

  result = 4294956418;
  if (a3 <= 1)
  {
    if (!a3)
    {
      buffer->cfNameString = @"Number of DNN layers";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Number of DNN layers", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4100000000000000;
      buffer->defaultValue = 0.0;
      goto LABEL_29;
    }

    if (a3 != 1)
    {
      return result;
    }

    buffer->cfNameString = @"Number of frames for context window";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"Number of frames for context window", buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Generic;
    *&buffer->minValue = 0x410000003F800000;
    v9 = 1.0;
LABEL_21:
    buffer->defaultValue = v9;
LABEL_29:
    flags = buffer->flags;
    v7 = 1073774592;
LABEL_30:
    v11 = flags | v7;
    goto LABEL_31;
  }

  if (a3 == 2)
  {
    buffer->cfNameString = @"Forgetting factor (time constant)";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"Forgetting factor (time constant)", buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Seconds;
    *&buffer->minValue = 0x404000003E99999ALL;
    v9 = 0.3;
    goto LABEL_21;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return result;
    }

    buffer->cfNameString = @"Use gain floor?";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"Use gain floor?", buffer->name, 52, 0x8000100u);
    buffer->clumpID = 1;
    flags = buffer->flags;
    buffer->unit = kAudioUnitParameterUnit_Boolean;
    *&buffer->minValue = 0x3F80000000000000;
    buffer->defaultValue = 0.0;
    v7 = -1072693248;
    goto LABEL_30;
  }

  buffer->cfNameString = @"Echo suppression amount";
  buffer->flags = 0x8000000;
  CFStringGetCString(@"Echo suppression amount", buffer->name, 52, 0x8000100u);
  buffer->unit = kAudioUnitParameterUnit_Decibels;
  *&buffer->minValue = 3281387520;
  buffer->defaultValue = -300.0;
  v11 = buffer->flags | 0xC0000000;
LABEL_31:
  result = 0;
  buffer->flags = v11;
  return result;
}

uint64_t AUNeuralNetRES::GetParameterList(AUNeuralNetRES *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 4)
  {
    if (a3)
    {
      v4 = xmmword_1DE09CC80;
      v5 = 104;
      goto LABEL_7;
    }

LABEL_8:
    result = 0;
    *a4 = 5;
    return result;
  }

  if (!a2)
  {
    if (a3)
    {
      v4 = xmmword_1DE096230;
      v5 = 4;
LABEL_7:
      *a3 = v4;
      a3[4] = v5;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 4294956430;
}

ausdk::AUInputElement *AUNeuralNetRES::Render(AUNeuralNetRES *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v23[1] = *MEMORY[0x1E69E9840];
  v10 = 1;
  do
  {
    v11 = v10;
    Element = ausdk::AUScope::GetElement((this + 80), v8);
    if (Element && *(Element + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v8);
      if (v14)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v8, a4);
      }

      if (result)
      {
        return result;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = 0;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  v15 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v15)
  {
LABEL_19:
    ausdk::Throw(0xFFFFD583);
  }

  v23[0] = ausdk::AUIOElement::PrepareBuffer(v15, a4);
  if (v9)
  {
    return 0;
  }

  v16 = 0;
  v21 = 0;
  v22 = 0;
  v17 = &v21;
  v18 = 1;
  do
  {
    v19 = v18;
    v20 = ausdk::AUScope::GetElement((this + 80), v16);
    if (!v20)
    {
      goto LABEL_19;
    }

    if (!*(v20 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v18 = 0;
    *v17 = *(v20 + 152) + 48;
    v16 = 1;
    v17 = &v22;
  }

  while ((v19 & 1) != 0);
  return (*(*this + 184))(this, a2, a4, 2, &v21, 1, v23);
}

uint64_t AUNeuralNetRES::ProcessMultipleBufferLists(AUNeuralNetRES *this, unsigned int *a2, AudioDSP::Utility *a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v9 = a3;
  v52 = *MEMORY[0x1E69E9840];
  v11 = *(this + 66);
  if (*(this + 67) != v11)
  {
    v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v13 & 1) == 0)
    {
      goto LABEL_62;
    }

    Parameter = ausdk::AUElement::GetParameter(v12, 3u);
    v15 = 1.0;
    if (Parameter != 0.0)
    {
      v15 = __exp10f(Parameter / 20.0);
    }

    *(this + 160) = v15;
    v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v17 & 1) == 0)
    {
LABEL_62:
      abort();
    }

    *(this + 644) = ausdk::AUElement::GetParameter(v16, 4u) != 0.0;
    *(this + 67) = v11;
  }

  v18 = *(this + 68);
  if (*(this + 69) != v18)
  {
    if (*(this + 158))
    {
      v19 = 0;
      v20 = (this + 664);
      do
      {
        Element = ausdk::AUScope::GetElement((this + 568), v19);
        *(v20 - 4) = ausdk::AUElement::GetParameter(Element, 0x64u);
        v22 = ausdk::AUScope::GetElement((this + 568), v19);
        *(v20 - 3) = ausdk::AUElement::GetParameter(v22, 0x65u);
        v23 = ausdk::AUScope::GetElement((this + 568), v19);
        *(v20 - 2) = ausdk::AUElement::GetParameter(v23, 0x66u);
        v24 = ausdk::AUScope::GetElement((this + 568), v19);
        *(v20 - 1) = ausdk::AUElement::GetParameter(v24, 0x67u);
        v25 = ausdk::AUScope::GetElement((this + 568), v19);
        *v20 = ausdk::AUElement::GetParameter(v25, 0x68u);
        v20 += 5;
        ++v19;
      }

      while (v19 < *(this + 158));
    }

    *(this + 69) = v18;
  }

  if (*(this + 84) != v9)
  {
    return 4294956422;
  }

  v26 = *a5;
  if (!*a5)
  {
    if (AUNeuralNetRESLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
    }

    if (AUNeuralNetRESLogScope(void)::scope)
    {
      v34 = *AUNeuralNetRESLogScope(void)::scope;
      if (!*AUNeuralNetRESLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v48.mNumberBuffers = 136315394;
      *(&v48.mNumberBuffers + 1) = "AUNeuralNetRES.cpp";
      LOWORD(v48.mBuffers[0].mDataByteSize) = 1024;
      *(&v48.mBuffers[0].mDataByteSize + 2) = 887;
      v35 = "%25s:%-5d InputSignals cannot be NULL. It is a required input\n";
LABEL_46:
      _os_log_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_ERROR, v35, &v48, 0x12u);
    }

    return 4294956420;
  }

  v27 = *v26;
  if (*v26 != *(this + 158))
  {
    return 4294956428;
  }

  v28 = a5[1];
  if (!v28)
  {
    if (AUNeuralNetRESLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
    }

    if (AUNeuralNetRESLogScope(void)::scope)
    {
      v34 = *AUNeuralNetRESLogScope(void)::scope;
      if (!*AUNeuralNetRESLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v48.mNumberBuffers = 136315394;
      *(&v48.mNumberBuffers + 1) = "AUNeuralNetRES.cpp";
      LOWORD(v48.mBuffers[0].mDataByteSize) = 1024;
      *(&v48.mBuffers[0].mDataByteSize + 2) = 895;
      v35 = "%25s:%-5d EchoEstimates cannot be NULL when Beam selection is not Off.\n";
      goto LABEL_46;
    }

    return 4294956420;
  }

  if (v28->mNumberBuffers != v27 || *a7 && (*a7)->mNumberBuffers != 1)
  {
    return 4294956428;
  }

  v39 = 0;
  v38 = 0;
  v29 = (2 * *(this + 155));
  *&v48.mNumberBuffers = *(this + 78);
  v48.mBuffers[0] = xmmword_1DE09BD50;
  v49 = 4;
  v50 = v27;
  v51 = 32;
  AudioDSP::Utility::DetectNonFinites(v29, v26, &v48, (&v39 + 1), a5);
  AudioDSP::Utility::DetectNonFinites(v29, a5[1], &v48, &v39, v30);
  if ((*(this + 560) & 1) != 0 || (v31 = *(this + 160), v31 == 1.0) || ((v39 & 0x100) != 0 || v39 == 1) && *(this + 636) == 1)
  {
    CopyBufferList(*a5, *a7);
    if ((v39 & 0x100) == 0 && v39 != 1)
    {
      return 0;
    }

    if (AUNeuralNetRESLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
    }

    if (AUNeuralNetRESLogScope(void)::scope)
    {
      v32 = *AUNeuralNetRESLogScope(void)::scope;
      if (!*AUNeuralNetRESLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v40 = 136315906;
      v41 = "AUNeuralNetRES.cpp";
      v42 = 1024;
      v43 = 927;
      v44 = 1024;
      v45 = HIBYTE(v39);
      v46 = 1024;
      v47 = v39;
      _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d AUNeuralNetRES: (InputSignals, EchoEstimates) is NOT finite: (%u, %u)\n", &v40, 0x1Eu);
    }

    return 0;
  }

  NeuralNetRES::ProcessBufferList(*(this + 121), *a5, a5[1], *a7, v31, *(this + 644), 0, 2.2204e-16);
  AudioDSP::Utility::DetectNonFinites(v29, *a7, &v48, &v38, v36);
  if (v38 != 1 || *(this + 636) != 1)
  {
    return 0;
  }

  if (AUNeuralNetRESLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
  }

  if (!AUNeuralNetRESLogScope(void)::scope)
  {
    v37 = MEMORY[0x1E69E9C10];
LABEL_64:
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v40 = 136315650;
      v41 = "AUNeuralNetRES.cpp";
      v42 = 1024;
      v43 = 945;
      v44 = 1024;
      v45 = v38;
      _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d AUNeuralNetRES: (OutputSignals) is NOT finite: (%u)", &v40, 0x18u);
    }

    goto LABEL_66;
  }

  v37 = *AUNeuralNetRESLogScope(void)::scope;
  if (*AUNeuralNetRESLogScope(void)::scope)
  {
    goto LABEL_64;
  }

LABEL_66:
  (*(*this + 64))(this);
  CopyBufferList(*a5, *a7);
  return 0;
}

uint64_t AUNeuralNetRES::SetParameter(AUNeuralNetRES *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3 == 4)
  {
    Element = ausdk::AUScope::GetElement((this + 568), a4);
    v10 = 544;
LABEL_6:
    ausdk::AUElement::SetParameter(Element, a2, a5);
    result = 0;
    ++*(this + v10);
    return result;
  }

  if (!a3)
  {
    Element = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    v10 = 528;
    goto LABEL_6;
  }

  return 4294956418;
}

uint64_t AUNeuralNetRES::SetProperty(AUNeuralNetRES *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 3700)
  {
    if (a2 != 3698)
    {
      if (a2 != 21)
      {
        return 4294956417;
      }

      if (a6 == 4)
      {
        result = 0;
        *(this + 560) = *a5 != 0;
        return result;
      }

      return 4294956445;
    }

    if (a5)
    {
      if (*(this + 121))
      {
        std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](this + 121, 0);
      }

      if (AUNeuralNetRESLogScope(void)::once != -1)
      {
        dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
      }

      operator new();
    }

    if (AUNeuralNetRESLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
    }

    if (AUNeuralNetRESLogScope(void)::scope)
    {
      v8 = *AUNeuralNetRESLogScope(void)::scope;
      if (!*AUNeuralNetRESLogScope(void)::scope)
      {
        return 4294956445;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "AUNeuralNetRES.cpp";
      v11 = 1024;
      v12 = 384;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.\n", buf, 0x12u);
    }

    return 4294956445;
  }

  result = 4294956445;
  if (a6 >= 4)
  {
    if (*a5)
    {
      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

void sub_1DDD93410(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9, int a10, __int128 buf, __int16 a12, __int16 a13, int a14)
{
  MEMORY[0x1E12BD160](v14, 0x10E0C403CD53A6ALL);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  exception_ptr = __cxa_get_exception_ptr(a1);
  a9.__vftable = &unk_1F593B0D8;
  a10 = exception_ptr[2];
  __cxa_begin_catch(a1);
  if (*(v16 + 2744) != -1)
  {
    dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
  }

  v20 = *(v15 + 2736);
  if (v20)
  {
    v21 = *v20;
    if (!*v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315650;
    *(&buf + 4) = "AUNeuralNetRES.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 398;
    a13 = 1024;
    a14 = a10;
    _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not load NeuralNetRES plist, exception (%d).\n", &buf, 0x18u);
  }

LABEL_10:
  std::exception::~exception(&a9);
  __cxa_end_catch();
  JUMPOUT(0x1DDD933BCLL);
}

uint64_t *std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      sparse_matrix_destroy(v3);
      *(v2 + 48) = 0;
    }

    v4 = *(v2 + 192);
    if (v4)
    {
      *(v2 + 200) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 168);
    if (v5)
    {
      *(v2 + 176) = v5;
      operator delete(v5);
    }

    std::unique_ptr<NeuralNet>::reset[abi:ne200100]((v2 + 152), 0);
    v6 = *(v2 + 128);
    if (v6)
    {
      *(v2 + 136) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 104);
    if (v7)
    {
      *(v2 + 112) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 80);
    if (v8)
    {
      *(v2 + 88) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 56);
    if (v9)
    {
      *(v2 + 64) = v9;
      operator delete(v9);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUNeuralNetRES::GetProperty(AUNeuralNetRES *this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 3699)
  {
    if (a2 != 21)
    {
      if (a2 == 3699)
      {
        memcpy(__dst, *(*(this + 121) + 192), 4 * (*(this + 155) + 1));
        return 0;
      }

      return result;
    }

    result = 0;
    v9 = *(this + 560);
LABEL_12:
    *__dst = v9;
    return result;
  }

  if (a2 == 3700)
  {
    result = 0;
    v9 = *(this + 376);
    goto LABEL_12;
  }

  if (a2 == 103699)
  {
    CFArray = applesauce::CF::details::make_CFArrayRef<float>((*(this + 121) + 192));
    result = 0;
    *__dst = CFArray;
  }

  return result;
}

uint64_t AUNeuralNetRES::GetPropertyInfo(AUNeuralNetRES *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 3699)
  {
    if (a2 != 21)
    {
      if (a2 != 3699)
      {
        return result;
      }

      *a6 = 0;
      v8 = 4 * *(this + 155) + 4;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 == 3700)
  {
LABEL_10:
    *a6 = 1;
    v8 = 4;
    goto LABEL_11;
  }

  if (a2 != 103699)
  {
    return result;
  }

  *a6 = 0;
  v8 = 8;
LABEL_11:
  result = 0;
  *a5 = v8;
  return result;
}

uint64_t AUNeuralNetRES::Reset(AUNeuralNetRES *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (AUNeuralNetRESLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
  }

  if (AUNeuralNetRESLogScope(void)::scope)
  {
    v1 = *AUNeuralNetRESLogScope(void)::scope;
    if (!*AUNeuralNetRESLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "AUNeuralNetRES.cpp";
    v5 = 1024;
    v6 = 190;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_INFO, "%25s:%-5d AUNeuralNetRES: Reset.\n", &v3, 0x12u);
  }

  return 0;
}

void AUNeuralNetRES::Cleanup(NeuralNetRES **this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (AUNeuralNetRESLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
  }

  if (AUNeuralNetRESLogScope(void)::scope)
  {
    v2 = *AUNeuralNetRESLogScope(void)::scope;
    if (!*AUNeuralNetRESLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "AUNeuralNetRES.cpp";
    v5 = 1024;
    v6 = 178;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d AUNeuralNetRES: Cleanup().\n", &v3, 0x12u);
  }

LABEL_9:
  if (*(this + 616) == 1)
  {
    NeuralNetRES::Cleanup(this[121]);
  }
}

uint64_t AUNeuralNetRES::Initialize(AUNeuralNetRES *this)
{
  v33 = *MEMORY[0x1E69E9840];
  if (AUNeuralNetRESLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
  }

  if (AUNeuralNetRESLogScope(void)::scope)
  {
    v2 = *AUNeuralNetRESLogScope(void)::scope;
    if (!*AUNeuralNetRESLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v29 = 136315394;
    v30 = "AUNeuralNetRES.cpp";
    v31 = 1024;
    v32 = 107;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d AUNeuralNetRES: Initialize.\n", &v29, 0x12u);
  }

LABEL_9:
  if (*(this + 616))
  {
    (*(*this + 64))(this);
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v4 = 0;
    v5 = *(Element + 80);
    *(this + 158) = *(Element + 108);
    *(this + 78) = v5;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = ausdk::AUScope::GetElement((this + 80), v4);
      if (!v8)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (*(v8 + 108) != *(this + 158))
      {
        return 4294956421;
      }

      v6 = 0;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
    v9 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v9)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (*(v9 + 108) != 1)
    {
      return 4294956421;
    }

    v10 = (*(*this + 408))(this, 4);
    if (!v10)
    {
      ausdk::ThrowQuiet(0);
    }

    ausdk::AUScope::SetNumberOfElements(v10, 0x10u);
    v11 = *(this + 84);
    *(this + 155) = v11;
    v12 = *(this + 121);
    if (*(this + 78) == *v12)
    {
LABEL_39:
      if (v11 == *(v12 + 8))
      {
LABEL_49:
        (*(*this + 72))(this, 0, 0);
        v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v20 & 1) == 0 || (v21 = v19, v22 = **(*(this + 121) + 152), v23 = (*(*v22 + 16))(v22), ausdk::AUElement::SetParameter(v21, 0, v23), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 1u, *(*(this + 121) + 12)), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v27 & 1) == 0))
        {
          abort();
        }

        ausdk::AUElement::SetParameter(v26, 2u, *(*(this + 121) + 16));
        if (AUNeuralNetRESLogScope(void)::once != -1)
        {
          dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
        }

        if (AUNeuralNetRESLogScope(void)::scope)
        {
          v28 = *AUNeuralNetRESLogScope(void)::scope;
          if (!*AUNeuralNetRESLogScope(void)::scope)
          {
            return 0;
          }
        }

        else
        {
          v28 = MEMORY[0x1E69E9C10];
        }

        result = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        v29 = 136315394;
        v30 = "AUNeuralNetRES.cpp";
        v31 = 1024;
        v32 = 166;
        _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_INFO, "%25s:%-5d AUNeuralNetRES: Successfully Initialized.\n", &v29, 0x12u);
        return 0;
      }

      if (AUNeuralNetRESLogScope(void)::once != -1)
      {
        dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
      }

      if (AUNeuralNetRESLogScope(void)::scope)
      {
        v18 = *AUNeuralNetRESLogScope(void)::scope;
        if (!*AUNeuralNetRESLogScope(void)::scope)
        {
LABEL_48:
          *(this + 560) = 1;
          goto LABEL_49;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315394;
        v30 = "AUNeuralNetRES.cpp";
        v31 = 1024;
        v32 = 154;
        _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Block size is not supported! Setting AU in Bypass mode.\n", &v29, 0x12u);
      }

      goto LABEL_48;
    }

    if (AUNeuralNetRESLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
    }

    if (AUNeuralNetRESLogScope(void)::scope)
    {
      v13 = *AUNeuralNetRESLogScope(void)::scope;
      if (!*AUNeuralNetRESLogScope(void)::scope)
      {
LABEL_38:
        *(this + 560) = 1;
        v11 = *(this + 155);
        v12 = *(this + 121);
        goto LABEL_39;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315394;
      v30 = "AUNeuralNetRES.cpp";
      v31 = 1024;
      v32 = 150;
      _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sample rate is not supported! Setting AU in Bypass mode.\n", &v29, 0x12u);
    }

    goto LABEL_38;
  }

  if (AUNeuralNetRESLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetRESLogScope(void)::once, &__block_literal_global_6988);
  }

  if (!AUNeuralNetRESLogScope(void)::scope)
  {
    v15 = MEMORY[0x1E69E9C10];
LABEL_31:
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315394;
      v30 = "AUNeuralNetRES.cpp";
      v31 = 1024;
      v32 = 114;
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initialize called without setting setting NeuralNetRESLayers plist! Setting AU in Bypass mode.\n", &v29, 0x12u);
    }

    goto LABEL_33;
  }

  v15 = *AUNeuralNetRESLogScope(void)::scope;
  if (*AUNeuralNetRESLogScope(void)::scope)
  {
    goto LABEL_31;
  }

LABEL_33:
  *(this + 560) = 1;
  v16 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v16)
  {
    ausdk::Throw(0xFFFFD583);
  }

  result = 0;
  v17 = *(v16 + 80);
  *(this + 158) = *(v16 + 108);
  *(this + 78) = v17;
  return result;
}

void AUNeuralNetRES::CreateExtendedElements(AUNeuralNetRES *this)
{
  ausdk::AUScope::Initialize((this + 568), this, 4, 16);
  for (i = 0; i != 16; ++i)
  {
    std::to_string(&v9, i);
    v3 = std::string::insert(&v9, 0, "Mic", 3uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v11 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (v11 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v5)
    {
      if (v11 >= 0)
      {
        v6 = HIBYTE(v11);
      }

      else
      {
        v6 = __p[1];
      }

      v9.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
      if (!v9.__r_.__value_.__r.__words[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      v9.__r_.__value_.__r.__words[0] = 0;
    }

    Element = ausdk::AUScope::GetElement((this + 568), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v9.__r_.__value_.__l.__data_);
    if (v9.__r_.__value_.__r.__words[0])
    {
      CFRelease(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DDD94094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AUNeuralNetRES::~AUNeuralNetRES(AUNeuralNetRES *this)
{
  AUNeuralNetRES::~AUNeuralNetRES(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5921BB8;
  std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](this + 121, 0);
  std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](this + 121, 0);
  v2 = (this + 584);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v2);

  ausdk::AUBase::~AUBase(this);
}

float applesauce::CF::details::find_at_key<float,__CFString const* const&>(const __CFDictionary *a1, const void *a2)
{
  v2 = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<float,0>(v2);
}

uint64_t applesauce::CF::details::find_at_key<unsigned int,__CFString const* const&>(const __CFDictionary *a1, const void *a2)
{
  v2 = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<unsigned int,0>(v2);
}

void aec_v5::aec_init(void **a1, int a2, int *a3)
{
  v5 = *a3;
  v14 = a3[1];
  v6 = a3[3];
  v13 = *(a3 + 84);
  v7 = a3[27];
  v8 = malloc_type_malloc(0x78uLL, 0x512CD523uLL);
  if (v8)
  {
    v8[14] = 0;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    *a1 = v8;
    v9 = malloc_type_malloc(0x1E0uLL, 0x97D23271uLL);
    if (v9)
    {
      v9[28] = 0u;
      v9[29] = 0u;
      v9[26] = 0u;
      v9[27] = 0u;
      v9[24] = 0u;
      v9[25] = 0u;
      v9[22] = 0u;
      v9[23] = 0u;
      v9[20] = 0u;
      v9[21] = 0u;
      v9[18] = 0u;
      v9[19] = 0u;
      v9[16] = 0u;
      v9[17] = 0u;
      v9[14] = 0u;
      v9[15] = 0u;
      v9[12] = 0u;
      v9[13] = 0u;
      v9[10] = 0u;
      v9[11] = 0u;
      v9[8] = 0u;
      v9[9] = 0u;
      v9[6] = 0u;
      v9[7] = 0u;
      v9[4] = 0u;
      v9[5] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
      *v9 = 0u;
      v9[1] = 0u;
      if (v5 / v14 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v5 / v14;
      }

      (*a1)[7] = v9;
      dft_v5::paramInit_v5(*a1, v10 * v14, v14, v10, a2, v13, v6, v7);
    }
  }

  exception = __cxa_allocate_exception(8uLL);
  v12 = std::bad_alloc::bad_alloc(exception);
}

uint64_t aec_v5::get_EchoEst_Err(DSPComplex *__C, uint64_t a2, float *a3, float *a4, uint64_t a5, uint64_t a6)
{
  v11.realp = a3;
  v11.imagp = a4;
  vDSP_ztoc(&v11, 1, __C, 2, *(a6 + 36));
  return MEMORY[0x1E12BE9A0](__C, 1, a5, 1, a2, 1, *(a6 + 28));
}

void aec_v5::run_aec(float **a1, _DWORD *a2, float *a3, _DWORD *a4, _DWORD *a5, const float *__A, void *a7, float *a8, _DWORD *a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = __A;
  v13 = *a1;
  v14 = a1[1];
  v16 = a1[6];
  v15 = a1[7];
  v642 = a1[9];
  v600 = a1[8];
  v17 = a1[2];
  v596 = a1[3];
  v581 = a1[4];
  imagp = v15->imagp;
  realp = v15->realp;
  v607 = v15[4].imagp;
  v608 = v15[4].realp;
  v601 = v15[5].realp;
  v590 = v15[6].realp;
  v583 = v15[6].imagp;
  v584 = v15[7].imagp;
  v603 = v15[8].realp;
  v585 = v15[8].imagp;
  v586 = v15[5].imagp;
  v18 = *(*a1 + 4);
  v19 = *(*a1 + 34);
  v20 = *(*a1 + 7);
  v620 = *(*a1 + 9);
  v21 = *(*a1 + 32);
  *(v16 + 604) = 0;
  v22 = *(v16 + 568);
  v23 = a10 == 0;
  v682 = v18;
  v588 = v18;
  v602 = (v16 + 28);
  if (v22 < 100.0 && (*v602 / v588) > 0.00000001)
  {
    *(v16 + 568) = v22 + v13[5];
  }

  v24 = *(v13 + 40);
  v674 = v13;
  v637 = v16;
  v621 = v15;
  v622 = v17;
  v598 = v20;
  v611 = v21;
  if (v24 >= 1)
  {
    if (v21 >= 1)
    {
      v25 = 0;
      v26 = *(v14 + 15);
      v27 = *(v14 + 18);
      do
      {
        if (*(v25 + v26) == 1)
        {
          *&v27[4 * v25] = 0;
          *(v25 + *(v14 + 16)) = 1;
        }

        else
        {
          v28 = *&v27[4 * v25];
          v29 = *(v13 + 11) - 1;
          if (v28 == v29)
          {
            *(v25 + *(v14 + 16)) = 0;
          }

          if (v28 < v29)
          {
            *&v27[4 * v25] = v28 + 1;
          }
        }

        v25 = (v25 + 1);
      }

      while (v21 != v25);
    }

    if (*(v13 + 178) != 1)
    {
      goto LABEL_75;
    }

    v30 = *(v13 + 4);
    LODWORD(__C.realp) = 0;
    v575 = v19;
    vDSP_svesq(__A, 1, &__C, v30);
    v31 = (*&__C.realp / v30) + 1.0e-20;
    *&__C.realp = log10f(v31) * 10.0;
    v32 = *(v17 + 9);
    v33 = v13;
    v34 = v17[12];
    v35 = v17[13];
    v36 = v17[14];
    LODWORD(__Z.realp) = 0;
    LODWORD(__Aa.realp) = 0;
    LODWORD(__B.realp) = 0;
    v37 = 4 * v32;
    memcpy(v35, v622[6], 4 * v32);
    MEMORY[0x1E12BE9A0](v34, 1, v35, 1, v36, 1, v32);
    vDSP_svesq(v34, 1, &__Z, v32);
    vDSP_svesq(v35, 1, &__Aa, v32);
    v38 = v36;
    v39 = v622;
    vDSP_svesq(v38, 1, &__B, v32);
    v40 = *&__B.realp;
    v41 = *&__Aa.realp;
    v42 = *&__Z.realp;
    memcpy(v34, v35, 4 * v32);
    LODWORD(v685.realp) = 0;
    v43 = v622[15];
    v44 = *(v33 + 32);
    if (v44 < 1)
    {
      v57 = 0;
      v56 = 1.0e-20;
      v21 = v611;
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v47 = *(v33 + 11);
      do
      {
        if (v47 < 1)
        {
          v50 = 0.0;
        }

        else
        {
          v48 = 0;
          v49 = &v622[6][v45];
          v50 = 0.0;
          do
          {
            vDSP_svesq(v49, 1, &v685, v30);
            if (*&v685.realp > v50)
            {
              v50 = *&v685.realp;
            }

            ++v48;
            v47 = *(v674 + 11);
            v49 += v30;
          }

          while (v48 < v47);
          v44 = *(v674 + 32);
          v16 = v637;
        }

        v43[v46++] = v50;
        v45 += v37;
      }

      while (v46 < v44);
      if (v44 >= 1)
      {
        v51 = *(v14 + 20);
        v52 = v44;
        v53 = 0.0;
        v54 = v43;
        v21 = v611;
        v39 = v622;
        v23 = a10 == 0;
        do
        {
          v55 = *v51++;
          if (v55 && *v54 > v53)
          {
            v53 = *v54;
          }

          ++v54;
          --v52;
        }

        while (v52);
        v56 = v53 + 1.0e-20;
        v57 = 1;
LABEL_35:
        v58 = *v43 / v56 + 1.0e-20;
        v59 = log10f(v58);
        v13 = v674;
        if (*(v16 + 148) != 1)
        {
LABEL_74:
          v15 = v621;
          v19 = v575;
          v12 = __A;
LABEL_75:
          v14[38] = 0.0;
          if (v21 < 1)
          {
            goto LABEL_82;
          }

          v83 = 0;
          v84 = *(v14 + 16);
          v85 = v21;
          do
          {
            v86 = *v84++;
            if (v86 == 1)
            {
              *(v14 + 38) = ++v83;
            }

            v85 = (v85 - 1);
          }

          while (v85);
          if (v83 < 1)
          {
LABEL_82:
            v87 = *(v13 + 42);
            if (v87 <= 1)
            {
              *(v13 + 42) = v87 + 1;
            }
          }

          else
          {
            v13[42] = 0.0;
          }

          v24 = *(v13 + 40);
          goto LABEL_85;
        }

        v60 = v59;
        v660 = v674[48];
        v61 = *(v674 + 49);
        v675 = v674[46];
        __src = v674[45];
        v62 = *(v16 + 140) + 1.0e-20;
        v63 = log10f(v62);
        v64 = v674[47];
        v65 = *(v16 + 24) / (*(v16 + 28) + 1.0e-20) + 1.0e-20;
        v66 = log10f(v65) * 10.0;
        v68 = *&__C.realp > -70.0 && v66 > v64;
        if (v68 || ((v63 * 10.0) <= __src ? (v69 = v40 / (v42 * 0.8 + v41 * 0.2 + 1.0e-20), v70 = v675 < v69) : (v70 = 1), v70))
        {
          if (v57)
          {
            v75 = 0;
            v76 = *(v14 + 20);
            do
            {
              if (*&v76[4 * v75])
              {
                *(*(v14 + 16) + v75) = 0;
              }

              ++v75;
            }

            while (v44 != v75);
            v77 = 0;
            *(v16 + 640) = -1110651699;
            do
            {
              if (*(*(v14 + 20) + 4 * v77) == 1)
              {
                v78 = *(v39 + 9);
                v79 = v78 * v77;
                v80 = 4 * v78;
                bzero(&(*v39)[4 * v78 * v77], v80);
                bzero(&v39[1][4 * v79], v80);
                bzero(&v39[2][4 * v79], v80);
                bzero(&v39[3][4 * v79], v80);
                bzero(&v39[6][4 * v79], v80);
                v44 = *(v674 + 32);
              }

              ++v77;
            }

            while (v77 < v44);
            goto LABEL_74;
          }
        }

        else
        {
          if ((v60 * 10.0) <= v660)
          {
            v74 = -1110651699;
            if (v57)
            {
              v81 = 0;
              v82 = *(v14 + 20);
              do
              {
                if (*&v82[4 * v81])
                {
                  *(*(v14 + 16) + v81) = 1;
                }

                ++v81;
              }

              while (v44 != v81);
            }

            goto LABEL_73;
          }

          if (v57)
          {
            v71 = 0;
            v72 = *(v14 + 20);
            do
            {
              if (*&v72[4 * v71])
              {
                *(*(v14 + 16) + v71) = 1;
              }

              ++v71;
            }

            while (v44 != v71);
          }

          v73 = *(v16 + 644);
          if (v73 == v61)
          {
            v74 = 1059481190;
LABEL_73:
            *(v16 + 640) = v74;
            goto LABEL_74;
          }

          *(v16 + 644) = v73 + 1;
        }

        v74 = -1110651699;
        goto LABEL_73;
      }

      v57 = 0;
      v56 = 1.0e-20;
      v21 = v611;
      v39 = v622;
    }

    v23 = a10 == 0;
    goto LABEL_35;
  }

LABEL_85:
  if (v24 < 2)
  {
    v93 = *(v14 + 17);
    *v93 = 1;
    v92 = v21 - 1;
    if (v21 > 1)
    {
      goto LABEL_94;
    }
  }

  else if (v24 == 2)
  {
    if (v21 >= 1)
    {
      v94 = *(v14 + 16);
      v95 = *(v14 + 17);
      v96 = v21;
      do
      {
        v97 = *v94++;
        *v95++ = v97;
        v96 = (v96 - 1);
      }

      while (v96);
    }
  }

  else if (v24 == 3)
  {
    if (v21 >= 1)
    {
      v88 = *(v14 + 16);
      v89 = *(v14 + 17);
      v90 = v21;
      do
      {
        v91 = *v88++;
        *v89++ = v91;
        v90 = (v90 - 1);
      }

      while (v90);
    }

    v92 = *(v13 + 41);
    if (v92 >= 1)
    {
      v93 = *(v14 + 17);
LABEL_94:
      bzero(v93 + 1, v92);
    }
  }

  else if (v21 >= 1)
  {
    v98 = *(v14 + 16);
    v99 = *(v14 + 17);
    v100 = v21;
    do
    {
      v101 = *v98++;
      *v99++ = v101;
      v100 = (v100 - 1);
    }

    while (v100);
  }

  v606 = v16 + 284;
  v102 = *(v13 + 26);
  if (v102 < 1 || *(v14 + 38) < 1)
  {
    v587 = 0;
  }

  else
  {
    v103 = v102 != 1 || *(v16 + 568) < (*(v16 + 552) + 2.0);
    v587 = v103;
  }

  *v16 = v23;
  *(v16 + 516) = *(v16 + 40);
  *(v16 + 556) = *(v16 + 408);
  *(v16 + 532) = *(v16 + 524);
  *(v16 + 592) = 0;
  v683 = v14;
  if (*(v13 + 25) || *(v16 + 148))
  {
    *(v16 + 376) = *(v16 + 4);
    memcpy(v15[10].imagp, v12, 4 * *(v13 + 4));
    v105 = v12;
    goto LABEL_112;
  }

  v576 = v19;
  v578 = v12;
  v163 = *(v13 + 18);
  *(&v571 + 1) = v13[33];
  __lena = v163;
  if (SHIDWORD(v571) >= 1)
  {
    v164 = 0;
    v165 = v163 - v682;
    v166 = (4 * v682);
    v167 = v578;
    v168 = HIDWORD(v571);
    do
    {
      if (*(*(v14 + 17) + v164) == 1)
      {
        v169 = *(*(v14 + 8) + 8 * v164);
        v170 = *(*(v14 + 7) + 8 * v164);
        v171 = v682;
        if (__lena != v682)
        {
          v172 = 0;
          do
          {
            memcpy((v170 + 4 * v172), (v170 + 4 * (v682 + v172)), v166);
            memcpy((v169 + 4 * v172), (v169 + 4 * (v682 + v172)), v166);
            v172 += v682;
            v171 = v682;
          }

          while (v172 < v165);
        }

        v173 = (v170 + 4 * v165);
        memcpy(v173, v167, v166);
        MEMORY[0x1E12BE990](v173, 1, v169 + 4 * v165, 1, v171);
        v168 = *(v674 + 33);
        v16 = v637;
        v15 = v621;
      }

      v167 += v682;
      ++v164;
    }

    while (v164 < v168);
    HIDWORD(v571) = v168;
    v13 = v674;
    __lena = *(v674 + 18);
  }

  __na = *(v14 + 8);
  v616 = *(v14 + 17);
  v618 = *(v14 + 7);
  v174 = *(v13 + 4);
  __srca = *(v642 + 16);
  HIDWORD(v686) = *(v16 + 372);
  *&v686 = 1.0 - *(&v686 + 1);
  v677 = *(v16 + 356);
  v175 = v15;
  v176 = v15[11].realp;
  v177 = v175[15].realp;
  v685 = *&v175[13].imagp;
  v178 = v175[12].realp;
  v179 = v175[18].realp;
  v569 = v174;
  v180 = &v176[v174];
  v181 = 4 * v174;
  memcpy(v176, v180, v181);
  v567 = v181;
  memcpy(v180, a7, v181);
  v182 = v175[17].realp;
  MEMORY[0x1E12BE7F0](v176, 1, v179, 1, v178, 1, __srca);
  dft_v5::dftGenericAnalysis2ndHalf(v178, v685.realp, v685.imagp, v642, 0);
  vDSP_zvmags(&v685, 1, v177, 1, v677);
  MEMORY[0x1E12BE940](v177, 1, &v686, v177, 1, v677);
  v638 = v177;
  v573 = v182;
  MEMORY[0x1E12BE8F0](v182, 1, &v686 + 4, v177, 1, v182, 1, v677);
  if (v571 <= 0)
  {
    v231 = 0;
    v228 = *(v16 + 328);
    v233 = 0.0;
    v13 = v674;
    v15 = v175;
    v21 = v611;
    v19 = v576;
    v230 = __lena;
LABEL_197:
    v237 = sqrtf(v233);
    if (v237 <= 1.0)
    {
      v232 = v237;
    }

    else
    {
      v232 = 1.0;
    }

    v228 += v231;
    goto LABEL_201;
  }

  v183 = 0;
  v184 = 0;
  __dst = v175[11].imagp;
  v595 = __lena - __srca;
  v185 = HIDWORD(v571);
  v582 = (((__lena - __srca) / 3.0) + ((__lena - __srca) / 3.0));
  v186 = 0.0;
  v13 = v674;
  v15 = v175;
  v187 = v616;
  do
  {
    if (*(v187 + v183) == 1)
    {
      v662 = v184;
      v678 = *&v618[8 * v183];
      v188 = *(__na + 8 * v183);
      v656 = *&v15[16].imagp[2 * v183];
      v658 = v183;
      v647 = *&v15[17].imagp[4 * v183];
      v189 = *(v13 + 17);
      v190 = v15[11].realp;
      v191 = v595 - v189;
      LODWORD(__C.realp) = 0;
      LODWORD(__Z.realp) = 0;
      LODWORD(__Aa.realp) = 0;
      if (v595 - v189 >= v582)
      {
        v192 = (v191 - v582 + 1) & ~((v191 - v582 + 1) >> 31);
      }

      else
      {
        v192 = 0;
      }

      vDSP_sve((v188 + 4 * v192), 1, &__Z, __srca);
      vDSP_dotpr(v190, 1, v190, 1, &__C, __srca);
      v193 = *&__Z.realp;
      v194 = (v191 + 2);
      if (v192 >= v194)
      {
        v199 = v192;
      }

      else
      {
        v195 = v192 + __srca - v189;
        v196 = v192 - v189;
        v197 = 0.0;
        v198 = v192;
        v199 = v192;
        do
        {
          vDSP_dotpr((v678 + 4 * v198), 1, v190, 1, &__Aa, __srca);
          v200 = *&__Z.realp;
          if (v198 > v192 && v198 >= v189 && v189 >= 1)
          {
            v201 = (v188 + 4 * v196);
            v202 = v189;
            v203 = (v188 + 4 * v195);
            do
            {
              v204 = *v201++;
              v205 = v200 - v204;
              v206 = *v203++;
              v200 = v205 + v206;
              --v202;
            }

            while (v202);
            *&__Z.realp = v200;
          }

          v207 = *&__Aa.realp / (sqrtf(v200 * *&__C.realp) + 2.2204e-16);
          v208 = fabsf(v207);
          if (v208 > v197)
          {
            v193 = v200;
            v197 = v208;
            v199 = v198;
          }

          v198 += v189;
          v195 += v189;
          v196 += v189;
        }

        while (v198 < v194);
      }

      memcpy(__dst, (v678 + 4 * v199), 4 * __srca);
      v16 = v637;
      *(v637 + 376) = v193;
      *(v637 + 324) = v199;
      __C = v647;
      v15 = v621;
      v210 = v621[11].imagp;
      v211 = v621[18].realp;
      v212 = *(v642 + 16);
      v213 = *&v621[13].imagp;
      __Aa = *&v621[12].imagp;
      __Z = v213;
      v214 = v621[14].imagp;
      __B = *&v621[15].imagp;
      v215 = *(v637 + 352);
      v216 = *(v637 + 356);
      v688 = *(v637 + 372);
      v687 = 1.0 - v688;
      MEMORY[0x1E12BE7F0](v210, 1, v211, 1, v210, 1, v212);
      dft_v5::dftGenericAnalysis2ndHalf(v210, __Aa.realp, __Aa.imagp, v642, 0);
      vDSP_zvmags(&__Aa, 1, v214, 1, v216);
      vDSP_zvcmul(&__Z, 1, &__Aa, 1, &__B, 1, v216);
      MEMORY[0x1E12BE940](v214, 1, &v687, v214, 1, v216);
      MEMORY[0x1E12BE8F0](v656, 1, &v688, v214, 1, v656, 1, v216);
      MEMORY[0x1E12BE940](__B.realp, 1, &v687, __B.realp, 1, v216);
      MEMORY[0x1E12BE940](__B.imagp, 1, &v687, __B.imagp, 1, v216);
      MEMORY[0x1E12BE940](v647.realp, 1, &v688, v647.realp, 1, v216);
      MEMORY[0x1E12BE940](v647.imagp, 1, &v688, v647.imagp, 1, v216);
      vDSP_zvadd(&__C, 1, &__B, 1, &__C, 1, v216);
      vDSP_zvabs(&__C, 1, v638, 1, v216);
      v217 = 0.0;
      v218 = v216 - v215;
      v14 = v683;
      if (v216 >= v215)
      {
        v219 = (v656 + 4 * (v215 - 1));
        v220 = v218 + 1;
        v221 = (v573 + 4 * (v215 - 1));
        v222 = &v638[v215 - 1];
        do
        {
          v223 = *v222++;
          v224 = v223;
          v225 = *v221++;
          v226 = v225;
          v227 = *v219++;
          v217 = v224 / (sqrtf(v226 * v227) + 0.00000001) + v217;
          --v220;
        }

        while (v220);
      }

      v186 = v186 + v193;
      v184 = v662 + 1;
      v209 = v217 / (v218 + 1);
      v13 = v674;
      v187 = v616;
      v185 = HIDWORD(v571);
      v183 = v658;
    }

    else
    {
      v199 = 0;
      v209 = 0.0;
    }

    v228 = *(v16 + 328);
    v228[v183] = v199;
    v229 = *(v16 + 312);
    v229[v183++] = v209;
  }

  while (v183 != v185);
  v21 = v611;
  v19 = v576;
  if (v184 >= 2)
  {
    *(v16 + 376) = v186 / v184;
  }

  v230 = __lena;
  if (HIDWORD(v571) != 1)
  {
    v234 = 0;
    LODWORD(v231) = 0;
    v235 = 0.0;
    v233 = 0.0;
    do
    {
      if (*(v187 + v234) == 1)
      {
        v236 = v229[v234];
        if (v236 > v235)
        {
          LODWORD(v231) = v234;
          v235 = v229[v234];
        }

        v233 = v233 + (v236 * v236);
      }

      ++v234;
    }

    while (v185 != v234);
    v231 = v231;
    goto LABEL_197;
  }

  v231 = 0;
  v232 = *v229;
LABEL_201:
  v238 = *v228;
  if (v238 >= v230 - v569)
  {
    v238 = v230 - v569;
  }

  memcpy(v15[10].imagp, (*&v618[8 * v231] + 4 * v238), v567);
  *(v16 + 320) = v232;
  v105 = v578;
LABEL_112:
  p_realp = &v15[3].realp;
  v106 = *(v14 + 20);
  v107 = *(v14 + 4);
  v108 = v15[9].realp;
  v109 = v106 == 0;
  if (v106)
  {
    v110 = &v107[4 * v19];
  }

  else
  {
    v110 = *(v14 + 4);
  }

  if (v106)
  {
    v111 = *(v14 + 4);
  }

  else
  {
    v111 = &v107[4 * v19];
  }

  if (v109)
  {
    v112 = v15[9].realp;
  }

  else
  {
    v112 = &v108[v682];
  }

  if (v109)
  {
    v113 = &v108[v682];
  }

  else
  {
    v113 = v15[9].realp;
  }

  *(v14 + 5) = v110;
  *(v14 + 6) = v111;
  v15[9].imagp = v112;
  v15[10].realp = v113;
  lmsfilt_v5::preemphasisFilter(v105, *(v13 + 4), *v600, v110, v21, *(v14 + 15), v104);
  v684 = 1;
  lmsfilt_v5::preemphasisFilter(a7, *(v13 + 4), v600 + 2, v15[9].imagp, 1, &v684, v114);
  v115 = *(v14 + 18);
  *(v14 + 19) = v115;
  dft_v3::GetIndexSequence(*(v14 + 11), v115, *(v13 + 11), *(v13 + 12));
  v676 = *(v14 + 5);
  v116 = *(v16 + 56);
  v117 = *(v13 + 4);
  v118 = *(v13 + 32);
  v119 = v14;
  v121 = *(v13 + 9);
  v120 = *(v13 + 10);
  v122 = *(v119 + 19);
  v123 = v119[2];
  v124 = v119[3];
  v126 = *v119;
  v125 = v119[1];
  v127 = v13;
  v128 = *(v13 + 11);
  v129 = v119[12];
  v130 = v119[13];
  LODWORD(__Aa.realp) = 1065353216;
  v646 = v118;
  if (v118 >= 1)
  {
    v131 = 0;
    v132 = &v129[4 * v122 * v120];
    v655 = v117;
    v133 = v122 * v117;
    v134 = &v124[4 * v133];
    v617 = v128;
    __len = 4 * (v128 - 1);
    v630 = v128 - 1;
    __n = 4 * v121;
    v615 = 4 * v121;
    v661 = v116 + 1;
    v135 = &v123[4 * v133];
    __N = v121;
    do
    {
      v657 = v131;
      if (v683[16][v131] == 1)
      {
        memcpy(v135, v126, __n);
        memcpy(v134, v125, __n);
        __Z.realp = &v135[__N];
        __Z.imagp = &v134[__N];
        vDSP_ctoz(v676, 2, &__Z, 1, __N);
        memcpy(v126, &v135[__N], v615);
        memcpy(v125, &v134[__N], v615);
        __Z.realp = v135;
        __Z.imagp = v134;
        v137 = *(v674 + 1);
        if (v137)
        {
          MultiRadixRealFFT::RealInPlaceTransform(v137, &__Z, 1, v136);
        }

        MEMORY[0x1E12BE940](v135, 1, v674 + 22, v135, 1, *v674 >> 1);
        MEMORY[0x1E12BE940](v134, 1, v674 + 22, v134, 1, *v674 >> 1);
        __C.realp = v135;
        __C.imagp = v134;
        vDSP_zvmags(&__C, 1, v116, 1, v655);
        *v116 = *v135 * *v135;
        v116[v655] = *v134 * *v134;
        v138 = v674[43];
        *v132 = v138 + *v116;
        v132[v120 - 1] = v138 + v116[v120 - 1];
        if (v120 >= 3)
        {
          v139 = v132 + 1;
          v140 = v661;
          v141 = v120 - 2;
          do
          {
            v143 = *(v140 - 1);
            v142 = *v140;
            v144 = v140[1];
            ++v140;
            *v139++ = v138 + (((v142 + v143) + v144) * 0.33333);
            --v141;
          }

          while (v141);
        }

        if (v617 == 1)
        {
          vDSP_vfill(&__Aa, v130, 1, 1uLL);
        }

        else
        {
          LODWORD(__C.realp) = 0;
          vDSP_sve(v132, 1, &__C, v120);
          v147 = log10f(*&__C.realp) * 10.0;
          memmove(v130, v130 + 1, __len);
          v130[v630] = v147;
        }

        v146 = __N;
        v145 = v674;
      }

      else
      {
        v145 = v127;
        vDSP_vclr(v135, 1, v127[4]);
        vDSP_vclr(v134, 1, v145[4]);
        v146 = __N;
        vDSP_vclr(v126, 1, __N);
        vDSP_vclr(v125, 1, __N);
        vDSP_vclr(v116, 1, v120);
        vDSP_vclr(v132, 1, v145[10]);
        memmove(v130, v130 + 1, __len);
        v130[v630] = -90.458;
      }

      v148 = v145[15];
      v135 += v148;
      v134 += v148;
      v126 += 4 * v146;
      v125 += 4 * v146;
      v676 = (v676 + 4 * v655);
      v116 += v120;
      v127 = v145;
      v132 += v145[14];
      v131 = v657 + 1;
      v661 += v120;
      v130 += v145[11];
    }

    while (v657 + 1 != v646);
    v128 = v145[11];
    v16 = v637;
    v15 = v621;
  }

  v149 = v622;
  v150 = v611;
  v151 = v127;
  if (*(v622 + 17) == 1)
  {
    if (*(v16 + 148) != 1)
    {
LABEL_234:
      if (*(v151 + 104) >= 1)
      {
        *(a1[5] + 9) = v149[9];
      }

      goto LABEL_236;
    }

    v152 = v128;
    LODWORD(__C.realp) = 0;
    v154 = *(v622 + 18);
    v153 = *(v622 + 19);
    v155 = 1.0;
    if (v128 < 1)
    {
      v157 = 0;
      v160 = 0;
      v159 = 0.0;
      goto LABEL_209;
    }

    v156 = 0;
    v157 = 0;
    v158 = *(v16 + 120);
    v159 = 0.0;
    do
    {
      if (*(v158 + 4 * v156) > v159)
      {
        v157 = v156;
        v159 = *(v158 + 4 * v156);
      }

      ++v156;
    }

    while (v128 != v156);
    v160 = 0;
    if (v128 < 4 || v674[6] >= 12.0)
    {
LABEL_209:
      v239 = *(v16 + 608) * 0.95;
      *(v16 + 608) = v239;
      if ((v159 * 0.9) <= v239)
      {
        v157 = *(v16 + 612);
      }

      else
      {
        *(v16 + 612) = v157;
        *(v16 + 608) = v159;
      }

      v240 = (v157 - *(v622 + 20)) & ~((v157 - *(v622 + 20)) >> 31);
      if (v240 + *(v622 + 21) >= v128)
      {
        v241 = v128;
      }

      else
      {
        v241 = v240 + *(v622 + 21);
      }

      vDSP_sve((*(v16 + 120) + 4 * v240), 1, &__C, v241 - v240);
      v242 = v241 - 1 - v240 + v160;
      if (v242 <= 1)
      {
        v242 = 1;
      }

      v243 = v159 / ((v155 * (*&__C.realp - v159)) / v242);
      v244 = *(v16 + 568);
      if (v244 <= 2.0 || v243 <= 5.0)
      {
        v151 = v674;
        if (v244 > 2.0)
        {
          v150 = v611;
          v149 = v622;
          if (v243 < 3.0)
          {
            ++v153;
            --v154;
          }

          goto LABEL_231;
        }
      }

      else
      {
        if (v154 <= v240)
        {
          v245 = 0;
        }

        else
        {
          v245 = -1;
        }

        if (v154 < v240)
        {
          v245 = 1;
        }

        v154 += v245;
        v151 = v674;
        if (v153 >= v241 - 1)
        {
          v153 -= v153 >= v241;
        }

        else
        {
          ++v153;
        }
      }

      v150 = v611;
      v149 = v622;
LABEL_231:
      v246 = v152 - 1;
      if (v153 < v152)
      {
        v246 = v153;
      }

      *(v149 + 18) = v154 & ~(v154 >> 31);
      *(v149 + 19) = v246;
      v15 = v621;
      goto LABEL_234;
    }

    v161 = v157 + 1;
    if (v161 == v128)
    {
      v162 = *(v158 + 4 * v157 - 4);
    }

    else
    {
      if (v157)
      {
        v159 = v159 + ((*(v158 + 4 * v157 - 4) + *(v158 + 4 * v161)) * 0.5);
LABEL_208:
        v155 = 2.0;
        v160 = -1;
        goto LABEL_209;
      }

      v162 = *(v158 + 4);
    }

    v159 = v159 + v162;
    goto LABEL_208;
  }

LABEL_236:
  HIDWORD(v557) = *(v151 + 60);
  LODWORD(v563) = *(v149 + 9);
  LODWORD(v557) = v150;
  lmsfilt_v5::runLmsFilter_v5(v15 + 1, v15 + 2, *(v151 + 16), v149[2], v149[3], v683[2], v683[3], v683[11], v149[9], v557, v563, v683[16], p_realp, v683[20], *(v683 + 168), v565, v567, v569, v571, v573);
  dft_v5::dftSynthesis(v15[2].realp, v15[2].imagp, v151);
  aec_v5::get_EchoEst_Err(v601, v603, &v15[2].realp[v620], &v15[2].imagp[v620], v15[9].imagp, v151);
  if (*(v683 + 168) == 1)
  {
    dft_v5::dftSynthesis(v15[3].realp, v15[3].imagp, v151);
    aec_v5::get_EchoEst_Err(v586, v585, &v15[3].realp[v620], &v15[3].imagp[v620], v15[9].imagp, v151);
  }

  v247 = (v16 + 4);
  v248 = v15[9].imagp;
  v249 = *(v151 + 16);
  vDSP_svesq(v683[5], 1, (v16 + 4), v249);
  vDSP_svesq(v248, 1, v602, v249);
  v250 = *(v16 + 4);
  v251 = *(v16 + 8);
  *v251 = v250;
  v252 = *(v151 + 132);
  if (v252 <= 1)
  {
    if (v150 > 1)
    {
      bzero(v251 + 1, 4 * (v150 - 1));
      v250 = *v247;
    }
  }

  else
  {
    v253 = 0;
    v254 = 0;
    v255 = 0;
    v256 = 0;
    v257 = 0.0;
    v258 = 4 * v252;
    do
    {
      if (v683[17][v255] == 1)
      {
        ++v256;
        vDSP_svesq(&v683[5][v253], 1, &v251[v254 / 4], *(v674 + 4));
        v251 = *(v16 + 8);
        v257 = v257 + v251[v254 / 4];
      }

      else
      {
        v251[v254 / 4] = 0.0;
      }

      ++v255;
      v254 += 4;
      v253 += 4 * v682;
    }

    while (v258 != v254);
    v250 = v257 / v256;
    *v247 = v250;
    v151 = v674;
    v149 = v622;
  }

  v259 = v621;
  p_imagp = &v621[18].imagp;
  v261 = *(v16 + 28);
  v262 = *(v151 + 16);
  v263 = log10((v250 / v262) + 1.0e-20) * 10.0;
  *(v16 + 16) = v263;
  learnrate_v4::updateStatistics_echo(v262, v603, v601, v16);
  v264 = *(v16 + 24);
  v265 = (v264 + 1.0e-13) / (*(v16 + 36) + 1.0e-13);
  *(v16 + 604) = log10f(v265) * 10.0;
  v266 = v621[8];
  v267 = v621[5];
  v268 = v596;
  if (*(v683 + 38) >= 1)
  {
    *__Na = v621[5];
    v269 = 0;
    v659 = *&v621[19].imagp;
    v663 = *p_imagp;
    *__srcb = v621[8];
    v270 = *(v151 + 128);
    v271 = *(v149 + 9);
    v272 = *(v151 + 60);
    v273 = *(v16 + 260);
    v274 = *(v16 + 264);
    v275 = *(v16 + 268);
    v276 = *(v16 + 272);
    v277 = *(v16 + 276);
    v278 = *(v151 + 36);
    v279 = *(v151 + 32);
    v596[15] = 0.0;
    v280 = *(v16 + 232);
    if (v280 <= 1)
    {
      if (v280 != 1)
      {
        goto LABEL_252;
      }

      v269 = 2;
    }

    *(v16 + 232) = v269;
LABEL_252:
    v281 = v279 * v264;
    if (*(v596 + 14) == 1)
    {
      *(v596 + 7) = 0x100000000;
      **(v16 + 192) = 1;
      v282 = 0.0;
      v259 = v621;
    }

    else
    {
      v619 = v274;
      __lenb = v275;
      v631 = v276;
      v643 = v279 * v264;
      LODWORD(v564) = v271;
      lmsfilt_v5::runLmsFilter_v5((v621 + 328), (v621 + 344), *(v151 + 16), *(v596 + 2), *(v596 + 3), v683[2], v683[3], v683[11], *(v596 + 9), __PAIR64__(v272, v270), v564, v683[16], &v621[22].imagp, v683[20], *(v683 + 168), v566, v568, v570, v572, v574);
      dft_v5::dftSynthesis(v621[21].imagp, v621[22].realp, v151);
      aec_v5::get_EchoEst_Err(v663.realp, v659.realp, &v621[21].imagp[v278], &v621[22].realp[v278], v621[9].imagp, v151);
      if (*(v683 + 168) == 1)
      {
        dft_v5::dftSynthesis(v621[22].imagp, v621[23].realp, v151);
        v268 = v596;
        aec_v5::get_EchoEst_Err(v663.imagp, v659.imagp, &v621[22].imagp[v278], &v621[23].realp[v278], v621[9].imagp, v151);
      }

      v289 = v277;
      vDSP_svesq(v659.realp, 1, (v16 + 216), *(v151 + 16));
      v290 = *(v16 + 216);
      *(v16 + 220) = v290;
      v291 = (*v151 * 100.0) * 9.3132e-10;
      if (v290 < v291)
      {
        *(v16 + 216) = v290 + v291;
      }

      LODWORD(__C.realp) = 0;
      vDSP_svesq(v663.realp, 1, &__C, *(v151 + 16));
      v292 = *(v16 + 220) + 1.0e-13;
      v293 = (*&__C.realp + 1.0e-13) / v292;
      v639 = log10f(v293);
      v294 = *(v16 + 36) + 1.0e-13;
      v295 = *(v16 + 28) + 0.000000001;
      v296 = v273;
      v297 = v294 / v295 + v273;
      v298 = log10f(v297) * 10.0;
      v299 = v292 / v295 + v296;
      v300 = log10f(v299) * 10.0;
      v301 = v294 / (*(v16 + 24) + 0.000000001) + v296;
      v302 = log10f(v301) * 10.0;
      v303 = *(v16 + 236);
      v305 = *(v16 + 160);
      v304 = *(v16 + 168);
      v307 = *(v16 + 176);
      v306 = *(v16 + 184);
      v309 = *(v16 + 192);
      v308 = *(v16 + 200);
      v310 = v303 - 1;
      if (v303 != 1)
      {
        v311 = 0;
        v312 = *(v16 + 208);
        v313 = v312 + 4 * v310;
        v314 = v303 - 2;
        v315 = v310 - 1;
        v316 = &v308[v310];
        v317 = &v309[v310];
        v318 = &v306[v310];
        v319 = &v307[v310];
        v320 = &v304[v310];
        v321 = &v305[v310];
        do
        {
          v321[v311] = v305[(v314 + v311)];
          v320[v311] = v304[(v314 + v311)];
          v319[v311] = v307[(v314 + v311)];
          v318[v311] = v306[(v314 + v311)];
          v317[v311] = v309[(v314 + v311)];
          v316[v311] = v308[(v314 + v311)];
          *(v313 + 4 * v311) = *(v312 + 4 * (v314 + v311));
        }

        while (v315 + v311--);
      }

      *v305 = v298 - v300;
      *v304 = v298;
      *v307 = v302;
      v323 = *v305;
      v324 = (v619 + *v305) < 0.0;
      v277 = v289;
      v281 = v643;
      if (v643 < v277)
      {
        v324 = 1;
      }

      *v306 = v324;
      *v309 = v323 < __lenb;
      *v308 = *(v16 + 36) > *(v16 + 220);
      v325 = v302 < v631 && *(v16 + 16) < -9.0;
      v326 = *(v16 + 208);
      *v326 = v325;
      v327 = *(v16 + 252);
      if (v327 > *(v16 + 236))
      {
        goto LABEL_294;
      }

      if (v327 < 1)
      {
        v331 = 0;
      }

      else
      {
        v328 = 0;
        v329 = *(v16 + 252);
        do
        {
          v330 = *v306++;
          v328 += v330;
          --v329;
        }

        while (v329);
        v331 = v328 != 0;
      }

      v332 = *(v16 + 228);
      if (v332 < 2)
      {
        v331 = 1;
      }

      v333 = !v331 || v332 >= v327;
      if (v333 && *v16 == 1)
      {
        v334 = 4 * *(v149 + 22);
        memcpy(*v149, *v268, v334);
        memcpy(v149[1], *(v268 + 1), v334);
        memcpy(v149[2], *(v268 + 2), v334);
        memcpy(v149[3], *(v268 + 3), v334);
        memcpy(v149[6], *(v268 + 6), v334);
        v149[9] = *(v268 + 9);
        *(v16 + 232) = 1;
        *v632 = *(v621 + 312);
        *__Na = *p_imagp;
        v335 = 4 * *(v151 + 16);
        v336 = 4 * *(v151 + 136);
        v337 = v335;
        memcpy(__srcb[0], v659.realp, v335);
        memcpy(__srcb[1], v659.imagp, v337);
        v338 = v621;
        v339 = v336;
        v151 = v674;
        memcpy(v621[1].realp, v621[20].imagp, v339);
        memcpy(v338[1].imagp, v338[21].realp, v339);
        memcpy(v338[2].realp, v338[21].imagp, v337);
        memcpy(v338[2].imagp, v338[22].realp, v337);
        memcpy(v338[3].realp, v338[22].imagp, v337);
        memcpy(v338[3].imagp, v338[23].realp, v337);
        *(v16 + 88) = *v606;
        v340 = 4 * *(v674 + 10);
        memcpy(*(v16 + 72), *(v16 + 296), v340);
        memcpy(*(v16 + 80), *(v16 + 304), v340);
        **(v16 + 184) = 1;
        v259 = v621;
        v268 = v596;
        *(v16 + 228) = 0;
        *__srcb = *v632;
      }

      else
      {
LABEL_294:
        v341 = *(v16 + 192);
        v342 = *(v16 + 244);
        if (v342 < 1)
        {
          v343 = 0;
          v259 = v621;
        }

        else
        {
          v343 = 0;
          v344 = *(v16 + 192);
          v345 = *(v16 + 244);
          v259 = v621;
          do
          {
            v346 = *v344++;
            v343 += v346;
            --v345;
          }

          while (v345);
        }

        v347 = *(v16 + 248);
        if (v347 < 1)
        {
          v351 = 0.0;
        }

        else
        {
          v348 = 0;
          v349 = *(v16 + 248);
          do
          {
            v350 = *v341++;
            v348 += v350;
            --v349;
          }

          while (v349);
          v351 = v348 * 1.5;
        }

        v352 = *(v16 + 256);
        if (v352 < 1)
        {
          v353 = 0;
        }

        else
        {
          v353 = 0;
          v354 = *(v16 + 256);
          do
          {
            v355 = *v326++;
            v353 += v355;
            --v354;
          }

          while (v354);
        }

        v356 = v304[1];
        if (*v304 < v356 || v356 < v304[2])
        {
          v357 = *v16 == 1 && v343 == v342;
          v358 = v357 && v353 == v352;
          if (v358 && v351 > v347)
          {
            *(v268 + 15) = 1;
          }
        }
      }

      v282 = v639 * 10.0;
    }

    v360 = *(v268 + 15);
    if (v360 == 1)
    {
      *(v16 + 224) = 0;
      v361 = 4 * *(v268 + 22);
      memcpy(*v268, *v149, v361);
      memcpy(*(v268 + 1), v149[1], v361);
      memcpy(*(v268 + 2), v149[2], v361);
      memcpy(*(v268 + 3), v149[3], v361);
      memcpy(*(v268 + 6), v149[6], v361);
      *(v268 + 9) = v149[9];
      *v606 = *(v16 + 88);
      v362 = 4 * *(v151 + 40);
      memcpy(*(v16 + 296), *(v16 + 72), v362);
      memcpy(*(v16 + 304), *(v16 + 80), v362);
      **(v16 + 184) = 0;
      **(v16 + 192) = 0;
      **(v16 + 200) = 0;
      **(v16 + 208) = 0;
      v363 = *(v16 + 624);
      if (v363 <= 3)
      {
        *(v16 + 624) = v363 + 1;
      }
    }

    else
    {
      if (*v16 != 1)
      {
        goto LABEL_329;
      }

      *(v16 + 224) = *(v16 + 224) + 1.0;
    }

    v360 = *(v268 + 15);
LABEL_329:
    if (!v360)
    {
      v364 = *(v16 + 240);
      if (v364 < 1)
      {
        v365 = 0;
      }

      else
      {
        v365 = 0;
        v366 = *(v16 + 200);
        v367 = *(v16 + 240);
        do
        {
          v368 = *v366++;
          v365 += v368;
          --v367;
        }

        while (v367);
      }

      if (v365 == v364)
      {
        *(v16 + 36) = *(v16 + 220);
        if (v281 >= v277 && *v16 == 1)
        {
          ++*(v16 + 228);
        }

        *(v16 + 232) = 1;
        *(v16 + 604) = v282;
        goto LABEL_342;
      }

      *(v16 + 228) = 0;
    }

    v659 = *__srcb;
    v663 = *__Na;
    goto LABEL_342;
  }

  v283 = *(v151 + 168);
  if (v283 == 1)
  {
    *__srcc = v621[8];
    *__Nb = v621[5];
    v284 = *(v16 + 236);
    vDSP_vclr(*(v16 + 160), 1, v284);
    vDSP_vclr(*(v16 + 168), 1, v284);
    vDSP_vclr(*(v16 + 176), 1, v284);
    if (v284 >= 1)
    {
      v285 = *(v16 + 192);
      v286 = *(v16 + 200);
      v287 = *(v16 + 208);
      do
      {
        *v285++ = 1;
        *v286++ = 1;
        *v287++ = 1;
        --v284;
      }

      while (v284);
    }

    v288 = *(v16 + 236);
    if (v288 <= *(v16 + 252))
    {
      v288 = *(v16 + 252);
    }

    if (v288 >= 1)
    {
      memset_pattern16(*(v16 + 184), &unk_1DE09EA50, 4 * v288);
    }

    vDSP_vclr(*v683[7], 1, *(v151 + 76));
    vDSP_vclr(*v683[8], 1, *(v151 + 76));
    vDSP_vclr(v621[11].realp, 1, *(v151 + 80));
    vDSP_vclr(*v621[16].imagp, 1, *(v151 + 128) * *(v151 + 80));
    vDSP_vclr(v621[17].realp, 1, *(v151 + 80));
    vDSP_vclr(*v621[17].imagp, 1, 2 * *(v151 + 80) * *(v151 + 128));
    v283 = *(v151 + 168);
    v267 = *__Nb;
    v266 = *__srcc;
  }

  if (v283 >= 1)
  {
    *(v16 + 568) = 0;
    *(v16 + 148) = 0;
  }

  v659 = v266;
  v663 = v267;
LABEL_342:
  v644 = (v16 + 408);
  dft_v5::dftGenericAnalysis2ndHalf(v603, v608, v607, v151, 1);
  dft_v5::dftGenericAnalysis2ndHalf_dsc(&v259[2].realp[v620], &v259[2].imagp[v620], realp, imagp, v151);
  __srcd = a1[10];
  v369 = v16;
  v371 = v259[28].imagp;
  v370 = v259[29].realp;
  v372 = v259[29].imagp;
  v373 = *(v151 + 16);
  v374 = *(v369 + 424) - v373;
  v375 = *&v259[25].imagp;
  __Aa = *&v259[26].imagp;
  __Z = v375;
  __B = *&v259[27].imagp;
  __Nc = *(v369 + 432);
  v640 = *(v369 + 436);
  v376 = *(v369 + 444);
  v378 = *(v369 + 496);
  v377 = *(v369 + 504);
  __lenc = *(v369 + 480);
  v633 = *(v369 + 488);
  LODWORD(v685.realp) = *(v369 + 416);
  v688 = 1.0 - *&v685.realp;
  if (v374 >= 1)
  {
    memmove(v371, v371 + 4 * v373, 4 * v374);
    memmove(v370, v370 + 4 * v373, 4 * v374);
    memmove(v372, v372 + 4 * v373, 4 * v374);
  }

  memcpy(v371 + 4 * v374, v621[9].imagp, 4 * v373);
  memcpy(v370 + 4 * v374, v621[5].realp, 4 * v373);
  memcpy(v372 + 4 * v374, v621[8].realp, 4 * v373);
  dft_v5::dftGenericAnalysis2ndHalf(v371, __Z.realp, __Z.imagp, __srcd, 0);
  dft_v5::dftGenericAnalysis2ndHalf(v370, __Aa.realp, __Aa.imagp, __srcd, 0);
  v380 = __B.realp;
  v379 = __B.imagp;
  vDSP_zvmags(&__Z, 1, v378, 1, v376);
  MEMORY[0x1E12BE940](v378, 1, &v688, v380, 1, v376);
  MEMORY[0x1E12BE940](v377, 1, &v685, v379, 1, v376);
  MEMORY[0x1E12BE5D0](v380, 1, v379, 1, v377, 1, v376);
  vDSP_zvcmul(&__Z, 1, &__Aa, 1, &__B, 1, v376);
  vDSP_zvabs(&__B, 1, __lenc, 1, v376);
  MEMORY[0x1E12BE940](__lenc, 1, &v688, v380, 1, v376);
  MEMORY[0x1E12BE940](v633, 1, &v685, v379, 1, v376);
  MEMORY[0x1E12BE5D0](v380, 1, v379, 1, v633, 1, v376);
  v687 = 2.2204e-16;
  MEMORY[0x1E12BE8A0](v377, 1, &v687, v380, 1, v376);
  vDSP_vdiv(v380, 1, v633, 1, v379, 1, v376);
  vDSP_meanv(&v379[__Nc], 1, v644, v640 - __Nc + 1);
  v381 = v637;
  *(v637 + 408) = fmaxf(fminf(*(v637 + 408), 1.0), 0.0);
  dft_v5::dftGenericAnalysis2ndHalf(v372, __B.realp, __B.imagp, __srcd, 0);
  v382 = __B.realp;
  v383 = __B.imagp;
  v384 = __Aa.realp;
  v385 = __Aa.imagp;
  v386 = *(v637 + 448);
  v387 = *(v637 + 456);
  v388 = *(v637 + 472);
  __Nd = *(v637 + 464);
  v686 = 0;
  v389 = *(v637 + 412);
  v390 = *(v637 + 420);
  v391 = *(v637 + 424);
  v392 = *(v637 + 428);
  __srce = *(v637 + 440);
  __C = __B;
  vDSP_zvmags(&__C, 1, v387, 1, v391);
  *v387 = *v382 * *v382;
  v387[v391] = *v383 * *v383;
  __C.realp = v384;
  __C.imagp = v385;
  vDSP_zvmags(&__C, 1, v386, 1, v391);
  *v386 = *v384 * *v384;
  v386[v391] = *v385 * *v385;
  learnrate_v3::crossCorrSpec_raw(v387, v388, v386, __Nd, &v686 + 1, &v686, ((v392 >> 1) + 1));
  v393 = sqrtf(*&v686);
  v394 = (*(&v686 + 1) / v393) / (v393 + v687);
  if (v394 <= 0.001)
  {
    v394 = 0.001;
  }

  *(v637 + 400) = v394;
  *(v637 + 404) = ((1.0 - v389) * v394) + (v389 * *(v637 + 404));
  VPEchoGateV3::GatesmoothPowerSpectrum(v388, v387, __srce, v390);
  VPEchoGateV3::GatesmoothPowerSpectrum(__Nd, v386, __srce, v390);
  *a11 = *(v637 + 408);
  v395 = *v674;
  LODWORD(__Z.realp) = 0;
  LODWORD(__Aa.realp) = 0;
  v396 = *(v674 + 4);
  v397 = *(v674 + 10);
  v398 = *(v637 + 48);
  __C.realp = v608;
  __C.imagp = v607;
  vDSP_zvmags(&__C, 1, v398, 1, v396);
  *v398 = *v608 * *v608;
  v398[v396] = *v607 * *v607;
  v399 = *(v637 + 64);
  __C.realp = realp;
  __C.imagp = imagp;
  vDSP_zvmags(&__C, 1, v399, 1, v396);
  *v399 = *realp * *realp;
  v399[v396] = *imagp * *imagp;
  learnrate_v3::crossCorrSpec_raw(*(v637 + 48), *(v637 + 72), *(v637 + 64), *(v637 + 80), &__Z, &__Aa, ((v395 >> 1) + 1));
  v400 = sqrtf(*&__Aa.realp);
  v401 = *(v637 + 24);
  v402 = *(v637 + 136);
  v403 = *(v637 + 132) * v401;
  v404 = *(v637 + 32);
  if (v403 > (v402 * v404))
  {
    v403 = v402 * v404;
  }

  v405 = v403 / v404;
  if (v404 < 9.3132e-19)
  {
    v405 = *(v637 + 136);
  }

  v406 = ((*&__Z.realp / v400) * v405) + ((1.0 - v405) * *(v637 + 88));
  v407 = (v405 * v400) + ((1.0 - v405) * *(v637 + 92));
  if (v407 < 9.3132e-10)
  {
    v407 = 9.3132e-10;
  }

  if (v406 >= (v407 * 0.005))
  {
    v408 = v406;
  }

  else
  {
    v408 = v407 * 0.005;
  }

  if (v408 <= v407)
  {
    v409 = v408;
  }

  else
  {
    v409 = v407;
  }

  *&__Aa.realp = v400;
  *&__Z.realp = *&__Z.realp / v400;
  *(v637 + 88) = v406;
  *(v637 + 92) = v407;
  if (v406 < (v407 * 0.005) || v408 > v407)
  {
    *(v637 + 88) = v409;
  }

  v411 = v409 / v407;
  v412 = ((v401 * (v411 * 3.0)) + (*(v637 + 4) * 0.0001)) / v404;
  v413 = (*(v637 + 20) * *(v637 + 20)) / ((v404 * v401) + 8.6736e-19);
  if (v412 >= v413)
  {
    v413 = v412;
  }

  if (v413 > 0.5)
  {
    v413 = 0.5;
  }

  *(v637 + 140) = v411;
  *(v637 + 144) = v413;
  v414 = *(v637 + 148);
  v415 = v683;
  v416 = v622;
  if (v414)
  {
    v417 = v674;
    v418 = v621;
    if (v414 != 1)
    {
      goto LABEL_377;
    }

    if (*(v637 + 404) < *(v637 + 392) && *(v637 + 408) < *(v637 + 396))
    {
      *(v637 + 144) = 0;
    }
  }

  else
  {
    v417 = v674;
    v418 = v621;
    if (*(v637 + 152) <= *(v674 + 11))
    {
      goto LABEL_377;
    }

    *(v637 + 148) = 1;
  }

  if (*(v417 + 104) == 3 && v411 > 0.0631)
  {
    *(v637 + 148) = 0;
    vDSP_vclr(*v683[8], 1, *(v417 + 76));
    vDSP_vclr(*v683[7], 1, *(v417 + 76));
    vDSP_vclr(v418[11].realp, 1, *(v417 + 80));
    vDSP_vclr(*v418[16].imagp, 1, *(v417 + 128) * *(v417 + 80));
    vDSP_vclr(v418[17].realp, 1, *(v417 + 80));
    vDSP_vclr(*v418[17].imagp, 1, 2 * *(v417 + 80) * *(v417 + 128));
  }

LABEL_377:
  learnrate_v4::getAdaptationRate4_v6(v637);
  VPEchoGateV3::GatesmoothPowerSpectrum(*(v637 + 72), *(v637 + 48), v397, *(v637 + 128));
  VPEchoGateV3::GatesmoothPowerSpectrum(*(v637 + 80), *(v637 + 64), v397, *(v637 + 128));
  if (a10)
  {
    v421 = *(v637 + 36);
    if (v587)
    {
      __srcf = 0;
      LOBYTE(v422) = 0;
      v634 = 1;
      v423 = v622;
      v622 = v581;
      goto LABEL_463;
    }

LABEL_478:
    v504 = v598;
    v503 = v663;
    goto LABEL_479;
  }

  v424 = *(v637 + 104);
  v425 = *(v417 + 44);
  v426 = v425;
  if (*(v417 + 100))
  {
    v427 = -0.1;
  }

  else if (*(v637 + 148))
  {
    if (*(v637 + 404) <= 2.6)
    {
      v427 = *(v637 + 640);
    }

    else
    {
      v427 = 0.65;
    }
  }

  else
  {
    v427 = 0.65;
  }

  v428 = *(v637 + 120);
  v429 = v683[13];
  v430 = *(v417 + 16);
  v431 = *(v417 + 156);
  v432 = *(v637 + 632);
  v679 = v683[16];
  v433 = *(v683 + 38);
  v434 = *(v417 + 24);
  v435 = *(v622 + 9);
  LODWORD(__C.realp) = 0;
  LODWORD(__Z.realp) = 0;
  LODWORD(__B.realp) = 1065353216;
  if (v425 == 1)
  {
    vDSP_vfill(&__B, v424, 1, v431);
    *a3 = v434 * 0.5;
    goto LABEL_439;
  }

  if (v425 <= 1)
  {
    v436 = 0;
    v440 = *v429;
    v439 = v429;
  }

  else
  {
    v436 = 0;
    v437 = *v424;
    for (i = 1; i != v425; ++i)
    {
      if (v424[i] >= v437)
      {
        v436 = i;
        v437 = v424[i];
      }
    }

    v439 = &v429[v436];
    v440 = *v439;
    if (v436 >= 1)
    {
      v441 = &v429[v436];
      v442 = *(v441 - 1);
      if (v436 == 1)
      {
        v443 = *(v441 - 1);
      }

      else
      {
        v443 = *(v441 - 2);
      }

      goto LABEL_399;
    }
  }

  v442 = v440;
  v443 = v440;
LABEL_399:
  *&v420 = v440;
  if (v436 < v426 - 1)
  {
    *&v420 = v439[1];
  }

  LODWORD(v444) = v420;
  if (v436 < v426 - 2)
  {
    v444 = v439[2];
  }

  if (fabsf(v440 - v444) <= 10.0)
  {
    v445.i64[0] = __PAIR64__(LODWORD(v444), LODWORD(v442));
    v445.i64[1] = __PAIR64__(LODWORD(v442), LODWORD(v440));
    v446 = v420;
    *&v446.i32[1] = v440;
    v447 = vzip1q_s32(v446, v446);
    v447.i32[2] = v420;
    v448 = vabds_f32(v443, v442);
    v449 = fabsf(v443 - v440);
    v450 = (vaddvq_s32(vandq_s8(vcgtq_f32(vabsq_f32(vsubq_f32(v445, v447)), xmmword_1DE09CC90), xmmword_1DE098920)) & 0xF) == 0 && v449 <= 10.0;
    if (v450 && v448 <= 8.0)
    {
      v635 = v435;
      v597 = v428;
      v589 = v433;
      __nb = v426;
      __dsta = v432;
      LODWORD(__Aa.realp) = 0;
      __srcg = *(v622 + 18);
      __Ne = *(v622 + 19);
      if (*(v622 + 17) == 1 && v611 >= 1)
      {
        v452 = (v426 - (__Ne + 1));
        v453 = 4 * v426;
        v454 = __Ne + 1;
        v455 = v424;
        v456 = v428;
        v457 = v611;
        do
        {
          if (__srcg >= 1)
          {
            vDSP_vfill(&__Aa, v455, 1, __srcg);
            vDSP_vfill(&__Aa, v456, 1, __srcg);
          }

          if (v452 >= 1)
          {
            vDSP_vfill(&__Aa, &v455[v454], 1, v452);
            vDSP_vfill(&__Aa, &v456[v454], 1, v452);
          }

          v456 = (v456 + v453);
          v455 = (v455 + v453);
          --v457;
        }

        while (v457);
      }

      v458 = 0.0;
      v459 = 0.0;
      v460 = v611;
      v461 = __srcg;
      v415 = v683;
      if (v611 >= 1)
      {
        v462 = 0;
        v464 = *v622;
        v463 = v622[1];
        v636 = 4 * v635;
        v465 = &__dsta[4 * __srcg];
        __lend = 4 * __nb;
        v466 = &v597[__srcg];
        v467 = 0.0;
        do
        {
          if (v461 <= __Ne)
          {
            v468 = 0;
            v469 = 4 * __srcg * v430;
            do
            {
              vDSP_svesq(&v464[v469], 1, &__C, v430);
              vDSP_svesq(&v463[v469], 1, &__Z, v430);
              v470 = *&__C.realp + *&__Z.realp;
              v466[v468] = (*&__C.realp + *&__Z.realp) + 1.0e-20;
              v471 = sqrtf((1.0 / v430) * v470) + 0.02;
              *&v465[4 * v468] = v471;
              if (!v462)
              {
                v459 = v459 + ((__srcg + v468) * v470);
                *&__Aa.realp = v470 + *&__Aa.realp;
              }

              v472 = v467 + v471;
              if (*(v462 + v679))
              {
                v467 = v472;
              }

              v469 += 4 * v430;
              ++v468;
            }

            while (__srcg + ~__Ne + v468);
          }

          v462 = (v462 + 1);
          v463 += v636;
          v464 += v636;
          v465 += __lend;
          v466 = (v466 + __lend);
          v461 = __srcg;
        }

        while (v462 != v611);
        v458 = v467 + v467;
        v415 = v683;
        v381 = v637;
        v460 = v611;
      }

      v473 = *&__Aa.realp;
      *a2 = __Aa.realp;
      v474 = ((__nb + -0.5) - (v459 * (1.0 / (v473 + 1.0e-20)))) * v434;
      if (v474 < 0.0)
      {
        v474 = 0.0;
      }

      *a3 = v474;
      v417 = v674;
      v475 = __dsta;
      if (v460 >= 1)
      {
        v476 = 0;
        v477 = (v427 + 1.0) / v458;
        v478 = 4 * __nb;
        do
        {
          if (v461 <= __Ne)
          {
            v479 = v461;
            v480 = __Ne - __srcg + 1;
            do
            {
              v424[v479] = ((1.0 - v427) / ((v589 * __nb) + (v589 * __nb))) + (v477 * *&v475[v479 * 4]);
              ++v479;
              --v480;
            }

            while (v480);
          }

          ++v476;
          v424 = (v424 + v478);
          v475 += v478;
        }

        while (v476 != v460);
      }
    }
  }

LABEL_439:
  v680 = *(v417 + 56);
  v481 = v417;
  v482 = *(v417 + 40);
  v483 = *(v417 + 44);
  v484 = *(v481 + 128);
  LODWORD(__C.realp) = 0;
  v485 = v415[12];
  v486 = *(v381 + 96);
  v487 = *(v381 + 104);
  vDSP_vclr(v486, 1, v482);
  if (v484 >= 1)
  {
    for (j = 0; j != v484; ++j)
    {
      if (v683[16][j] == 1 && v483 >= 1)
      {
        v490 = 0;
        do
        {
          LODWORD(__C.realp) = *(v487 + v490);
          if (*&__C.realp != 0.0)
          {
            MEMORY[0x1E12BE8F0](&v485[4 * *&v683[11][v490] * v482], 1, &__C, v486, 1, v486, 1, v482);
          }

          v490 += 4;
        }

        while (4 * v483 != v490);
      }

      v485 += 4 * v680;
      v487 += 4 * v483;
    }
  }

  LODWORD(__Z.realp) = 1065353216;
  vDSP_svdiv(&__Z, v486, 1, v486, 1, v482);
  v415 = v683;
  v417 = v674;
  v381 = v637;
  v418 = v621;
  if (*(v683 + 38) < 1)
  {
    goto LABEL_477;
  }

  v491 = *(v637 + 568) < *(v637 + 552) || *(v637 + 148) == 0;
  v492 = *(v637 + 404) > 0.15 && *v644 > 0.65;
  v422 = v492;
  if (*(v674 + 26) == 3)
  {
    v422 = *v644 > 0.9 || v492;
  }

  if ((v587 & (v491 | v422)) != 1)
  {
LABEL_477:
    v416 = v622;
    learnrate_v5::adaptLmsFilter_v4(v608);
    v421 = *(v637 + 36);
    goto LABEL_478;
  }

  __srcf = v491;
  v423 = v581;
  a1[2] = v581;
  a1[4] = v622;
  learnrate_v5::adaptLmsFilter_v4(v608);
  v421 = *(v637 + 36);
  v634 = !v492;
LABEL_463:
  *__Nf = *(v621 + 392);
  *v645 = *(v621 + 376);
  *(v381 + 576) = 0;
  v493 = *(v381 + 40) + 1.0e-20;
  *(v381 + 540) = log10f(v493 / (*(v381 + 28) + 1.0e-20)) * 10.0;
  *(v381 + 548) = 0;
  v681 = &v418[22].imagp;
  *(&v558 + 1) = v674[15];
  LODWORD(v564) = *(v423 + 9);
  LODWORD(v558) = v611;
  lmsfilt_v5::runLmsFilter_v5((v418 + 328), (v418 + 344), *(v674 + 4), v423[2], v423[3], v415[2], v415[3], v415[11], v423[9], v558, v564, v415[16], &v418[22].imagp, v415[20], 0, v566, v568, v570, v572, v574);
  dft_v5::dftSynthesis(v418[21].imagp, v418[22].realp, v674);
  aec_v5::get_EchoEst_Err(v645[0], __Nf[0], &v418[21].imagp[v620], &v418[22].realp[v620], v418[9].imagp, v674);
  v494 = *(v674 + 4);
  vDSP_svesq(__Nf[0], 1, (v381 + 512), v494);
  vDSP_svesq(v645[0], 1, (v381 + 564), v494);
  v495 = *(v381 + 512);
  *(v381 + 544) = log10f((v495 + 1.0e-20) / (*(v381 + 28) + 1.0e-20)) * 10.0;
  v496 = log10f((v495 + 1.0e-20) / v493) * -10.0;
  *(v381 + 596) = v496;
  v497 = *(v381 + 40);
  *(v381 + 40) = v495;
  if (*(v381 + 148) != 1 || *(v381 + 568) <= *(v381 + 552) || *(v381 + 540) >= -20.0 || v496 >= -2.0)
  {
    goto LABEL_474;
  }

  *(v637 + 580) = 1;
  v499 = *(v674 + 12);
  v500 = v499 <= 1 ? 1 : *(v674 + 12);
  v498 = *(v415 + 18) - 1;
  LODWORD(v501) = v498 + v499 + v499 * (((v498 & ~(v498 >> 31)) - (v498 + (v498 >> 31))) / v500 + (v498 >> 31));
  do
  {
    v501 = (v501 - v499);
  }

  while (v501 >= v499);
  *(v415 + 19) = v501;
  dft_v3::GetIndexSequence(v415[11], v501, *(v674 + 11), v499);
  *(&v559 + 1) = v674[15];
  LODWORD(v564) = *(v423 + 9);
  LODWORD(v559) = v611;
  lmsfilt_v5::runLmsFilter_v5((v418 + 328), (v418 + 344), *(v674 + 4), v423[2], v423[3], v415[2], v415[3], v415[11], v423[9], v559, v564, v415[16], v681, v415[20], 0, v566, v568, v570, v572, v574);
  dft_v5::dftSynthesis(v418[21].imagp, v418[22].realp, v674);
  aec_v5::get_EchoEst_Err(v645[0], __Nf[0], &v418[21].imagp[v620], &v418[22].realp[v620], v418[10].realp, v674);
  LODWORD(__C.realp) = 0;
  vDSP_svesq(__Nf[0], 1, &__C, v682);
  v502 = log10f((*&__C.realp + 1.0e-20) / (*(v637 + 516) + 1.0e-20)) * -10.0;
  *(v637 + 600) = v502;
  if (v502 < -0.5)
  {
    *(v637 + 576) = 1;
    a1[2] = v622;
    a1[4] = v423;
    *(v637 + 40) = v497;
    *(v637 + 512) = v497;
  }

  else
  {
LABEL_474:
    v622 = v423;
  }

  v503 = v663;
  v381 = v637;
  *(v637 + 584) = 0;
  if (*(v637 + 580))
  {
    goto LABEL_476;
  }

  if (__srcf)
  {
    v381 = v637;
    if (*(v637 + 404) > 0.02 || *(v674 + 26) == 3)
    {
      goto LABEL_517;
    }

LABEL_476:
    *(v381 + 588) = 1;
    v417 = v674;
    v504 = v598;
    v416 = v622;
    goto LABEL_479;
  }

  v381 = v637;
  if ((v422 & 1) == 0)
  {
    goto LABEL_476;
  }

LABEL_517:
  v641 = v421;
  *(v381 + 584) = 1;
  v537 = a1[5];
  if (*(v381 + 588) == 1)
  {
    *(v381 + 588) = 0;
    v538 = 4 * *(v537 + 22);
    memcpy(*v537, *v622, v538);
    memcpy(*(v537 + 1), v622[1], v538);
    memcpy(*(v537 + 2), v622[2], v538);
    memcpy(*(v537 + 3), v622[3], v538);
    memcpy(*(v537 + 6), v622[6], v538);
    *(v537 + 9) = v622[9];
  }

  __srch = *(v674 + 176);
  v539 = 2.5;
  if (__srch)
  {
    v539 = 1.25;
  }

  __lene = v539;
  v540 = (v381 + 560);
  v541 = 1;
  do
  {
    *(&v562 + 1) = v674[15];
    LODWORD(v564) = *(v622 + 9);
    LODWORD(v562) = v611;
    lmsfilt_v5::runLmsFilter_v5((v418 + 328), (v418 + 344), *(v674 + 4), *(v537 + 2), *(v537 + 3), v683[2], v683[3], v683[11], *(v537 + 9), v562, v564, v683[16], v681, v683[20], *(v683 + 168), v566, v568, v570, v572, v574);
    dft_v5::dftSynthesis(v418[21].imagp, v418[22].realp, v674);
    aec_v5::get_EchoEst_Err(v645[0], __Nf[0], &v418[21].imagp[v620], &v418[22].realp[v620], v418[9].imagp, v674);
    if (*(v683 + 168) == 1)
    {
      dft_v5::dftSynthesis(v418[22].imagp, v418[23].realp, v674);
      aec_v5::get_EchoEst_Err(v645[1], __Nf[1], &v418[22].imagp[v620], &v418[23].realp[v620], v418[9].imagp, v674);
    }

    v542 = *(v674 + 4);
    v543 = 1;
    vDSP_svesq(__Nf[0], 1, (v637 + 520), v542);
    vDSP_svesq(v645[0], 1, v540, v542);
    v544 = *(v637 + 520);
    v545 = v544 + 1.0e-20;
    v546 = log10(v545 / (*(v637 + 36) + 1.0e-20)) * 10.0;
    *(v637 + 524) = v546;
    v547 = log10(v545 / (*(v637 + 220) + 1.0e-20)) * 10.0;
    *(v637 + 528) = v547;
    *(v637 + 548) = 0;
    v548 = 0.0;
    if (v546 < -1.0 && v547 < -1.0)
    {
      v418 = v621;
      if (*(v606 + 248) >= 0.0 || *(v637 + 536) >= 0.0 || (*v540 / v588) <= 0.0000001 || *v540 >= (*(v637 + 24) * 10.0))
      {
        v543 = 1;
      }

      else
      {
        v543 = 0;
        *(v637 + 548) = 1065353216;
        v548 = 1.0;
      }
    }

    else
    {
      v418 = v621;
    }

    if (*(v674 + 26) == 3 && v546 < -0.25 && v548 == 0.0 && v547 < -0.25 && *(v606 + 248) < 0.0 && *(v637 + 536) < 0.0)
    {
      *(v637 + 548) = 1065353216;
    }

    else if (v548 != 1.0)
    {
      goto LABEL_544;
    }

    v550 = (*(v637 + 560) + 1.0e-13) / (v544 + 1.0e-13);
    *(v637 + 604) = log10f(v550) * 10.0;
    *(v637 + 592) = 1;
    v641 = v544;
    v659 = *__Nf;
    v663 = *v645;
LABEL_544:
    if (v546 <= 4.0)
    {
      learnrate_v4::updateStatistics_echo(*(v674 + 4), __Nf[0], v645[0], v637);
      dft_v5::dftGenericAnalysis2ndHalf(__Nf[0], v608, v607, v674, 1);
      dft_v5::dftGenericAnalysis2ndHalf_dsc(&v418[21].imagp[v620], &v418[22].realp[v620], realp, imagp, v674);
      v552 = __lene * *(v637 + 144);
      v553 = 0.5;
      v554 = v552 <= 0.5;
      v555 = v552 < 1.0 || v552 <= 0.5;
      if (v552 >= 1.0)
      {
        v554 = 1;
      }

      if (!v555)
      {
        v553 = 1.0;
      }

      if (v554)
      {
        v552 = v553;
      }

      *(v637 + 140) = fminf(__lene * *(v637 + 140), 1.0);
      *(v637 + 144) = v552;
      learnrate_v4::getAdaptationRate4_v6(v637);
      v540 = (v381 + 560);
      learnrate_v5::adaptLmsFilter_v4(v608);
    }

    else if (((v634 | v543) & 1) == 0)
    {
      v551 = 4 * *(v537 + 22);
      memcpy(*v537, *v622, v551);
      memcpy(*(v537 + 1), v622[1], v551);
      memcpy(*(v537 + 2), v622[2], v551);
      memcpy(*(v537 + 3), v622[3], v551);
      memcpy(*(v537 + 6), v622[6], v551);
      *(v537 + 9) = v622[9];
    }

    v556 = v541 & __srch;
    v541 = 0;
  }

  while ((v556 & 1) != 0);
  v415 = v683;
  v417 = v674;
  v381 = v637;
  v504 = v598;
  v416 = v622;
  v503 = v663;
  v421 = v641;
LABEL_479:
  v505 = *v602;
  v506 = *v602 * 3.0;
  v507 = v659.realp;
  if (v421 > v506)
  {
    v507 = v418[9].imagp;
  }

  v664 = v503;
  if (*(v417 + 124) >= 1)
  {
    if (*(v381 + 40) <= v506 || *(v381 + 604) <= -3.0 || *(v381 + 16) <= -70.0 || (v508 = *(v381 + 24), v508 <= (v505 * 8.0)) || (v261 / v588) <= 0.00000001 || *(v381 + 624) < 2)
    {
      *(v381 + 616) = 0;
    }

    else
    {
      v509 = *(v417 + 24);
      v510 = v509 + *(v381 + 616);
      *(v381 + 616) = v510;
      if (v508 > (v505 * 32.0))
      {
        *(v381 + 620) = v509 + *(v381 + 620);
      }

      if (v510 > 100.0)
      {
        LODWORD(__C.realp) = 1056964608;
        if (*(v381 + 620) > 100.0)
        {
          LODWORD(__C.realp) = 1048576000;
        }

        v511 = *(v416 + 22);
        MEMORY[0x1E12BE940](*v416, 1, &__C, *v416, 1, v511);
        MEMORY[0x1E12BE940](v416[1], 1, &__C, v416[1], 1, v511);
        MEMORY[0x1E12BE940](v416[2], 1, &__C, v416[2], 1, v511);
        MEMORY[0x1E12BE940](v416[3], 1, &__C, v416[3], 1, v511);
        MEMORY[0x1E12BE940](v416[6], 1, &__C, v416[6], 1, v511);
        *(v381 + 616) = 0;
        v503.realp = v664.realp;
      }
    }
  }

  if (*(v417 + 177) == 1)
  {
    if (*(v381 + 548) == 1.0)
    {
      v512 = v621;
      v514 = v621[23].imagp;
      v513 = v621[24].realp;
      v516 = v621[24].imagp;
      v515 = v621[25].realp;
      *(&v560 + 1) = v674[15];
      LODWORD(v564) = *(v416 + 9);
      LODWORD(v560) = v611;
      lmsfilt_v5::runLmsFilter_v5((v621 + 328), (v621 + 344), *(v674 + 4), *(a1[5] + 2), *(a1[5] + 3), v415[2], v415[3], v415[11], *(a1[5] + 9), v560, v564, v415[16], &v621[22].imagp, v415[20], *(v415 + 168), v566, v568, v570, v572, v574);
      dft_v5::dftSynthesis(v512[21].imagp, v512[22].realp, v674);
      v517 = v514;
      v417 = v674;
      v518 = v516;
      v504 = v598;
      aec_v5::get_EchoEst_Err(v517, v518, &v512[21].imagp[v620], &v512[22].realp[v620], v512[9].imagp, v674);
      v503.realp = v664.realp;
      if (*(v415 + 168) == 1)
      {
        dft_v5::dftSynthesis(v621[22].imagp, v621[23].realp, v674);
        v519 = &v621[22].imagp[v620];
        v520 = &v621[23].realp[v620];
        v521 = v621[9].imagp;
        v504 = v598;
        v522 = v513;
        v523 = v515;
        goto LABEL_501;
      }
    }

    else
    {
      HIDWORD(v561) = *(v417 + 60);
      LODWORD(v564) = *(v416 + 9);
      v524 = v621;
      LODWORD(v561) = v611;
      lmsfilt_v5::runLmsFilter_v5(v621 + 1, v621 + 2, *(v417 + 16), v416[2], v416[3], v415[2], v415[3], v415[11], v416[9], v561, v564, v415[16], p_realp, v415[20], *(v415 + 168), v566, v568, v570, v572, v574);
      dft_v5::dftSynthesis(v524[2].realp, v524[2].imagp, v417);
      aec_v5::get_EchoEst_Err(v601, v603, &v524[2].realp[v620], &v524[2].imagp[v620], v524[9].imagp, v417);
      v503.realp = v664.realp;
      if (*(v415 + 168) == 1)
      {
        dft_v5::dftSynthesis(v621[3].realp, v621[3].imagp, v417);
        v519 = &v621[3].realp[v620];
        v520 = &v621[3].imagp[v620];
        v521 = v621[9].imagp;
        v523 = v585;
        v522 = v586;
LABEL_501:
        aec_v5::get_EchoEst_Err(v522, v523, v519, v520, v521, v417);
        v503.realp = v664.realp;
      }
    }
  }

  v525 = v503.realp;
  lmsfilt_v5::deemphasisFilterDuo(v504, v503.realp, v600 + 4, v590, v507, v600 + 3, a8, v419);
  if (*(v415 + 168) == 1)
  {
    v527 = lmsfilt_v5::deemphasisFilterDuo(v504, v664.imagp, v600 + 5, v583, v659.imagp, v600 + 7, v584, v526);
    MEMORY[0x1E12BE9A0](v664.imagp, 1, v525, 1, v621[7].realp, 1, v682, v527);
  }

  *a4 = *(v381 + 148);
  *a5 = *(v381 + 376);
  *a9 = *(v381 + 604);
  *a12 = *(v381 + 140);
  v529 = *(v417 + 48);
  if (v529 <= 1)
  {
    v530 = 1;
  }

  else
  {
    v530 = *(v417 + 48);
  }

  v528 = *(v415 + 18) + 1;
  v531 = v528 + v529 + v529 * (((v528 & ~(v528 >> 31)) - (v528 + (v528 >> 31))) / v530 + (v528 >> 31));
  do
  {
    v531 -= v529;
  }

  while (v531 >= v529);
  *(v415 + 18) = v531;
  v532 = *(v415 + 20);
  v533 = v532 + 1;
  v534 = (((v532 + 1) & ~((v532 + 1) >> 31)) - (v532 + 1 + ((v532 + 1) >> 31)) + 2 * ((v532 + 1) >> 31)) & 0xFFFFFFFE;
  v535 = v532 + v534;
  v536 = v534 + v533;
  if (v536 >= 1)
  {
    v536 = 1;
  }

  *(v415 + 20) = v535 - ((v535 - v536 + 2) & 0xFFFFFFFE) + 1;
}

uint64_t CartesianPannerNN::implements(CartesianPannerNN *this)
{
  v1 = this;
  result = 1;
  if (v1 > 8126469)
  {
    if (v1 > 12648463)
    {
      if (v1 > 12779529)
      {
        if (v1 == 12779530)
        {
          return result;
        }

        v3 = 12845066;
      }

      else
      {
        if (v1 == 12648464)
        {
          return result;
        }

        v3 = 12713992;
      }
    }

    else if (v1 > 10485767)
    {
      if (v1 == 10485768)
      {
        return result;
      }

      v3 = 12582924;
    }

    else
    {
      if (v1 == 8126470)
      {
        return result;
      }

      v3 = 8388616;
    }

    goto LABEL_22;
  }

  if (v1 > 7864324)
  {
    if (v1 > 7995397)
    {
      if (v1 == 7995398)
      {
        return result;
      }

      v3 = 8060934;
    }

    else
    {
      if (v1 == 7864325)
      {
        return result;
      }

      v3 = 7929862;
    }

    goto LABEL_22;
  }

  if (v1 != 7667717 && v1 != 7733253)
  {
    v3 = 7798789;
LABEL_22:
    if (v1 != v3)
    {
      return 0;
    }
  }

  return result;
}

int32x2_t *CartesianPannerNN::panAtmos502(int32x2_t *this, float a2, float a3, float a4, float a5, float *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a6 == 7)
  {
    v6 = this;
    CartesianPannerNN::panAtmos502Side(&v17, a2, a3, a4, a5, a6);
    CartesianPannerNN::panAtmos502Side(&v16, a2, -a3, a4, a5, v11);
    v12 = vmaxnmq_f32(v17, 0);
    v13 = vmaxnmq_f32(v16, 0);
    v16 = v13;
    v17 = v12;
    v6[1].i32[0] = v12.i32[1];
    *v6 = vzip1_s32(*v12.f32, *v13.f32);
    v19.val[0] = v12.i64[1];
    v14 = &v6[1] + 1;
    v19.val[1] = v13.i64[1];
    vst2_f32(v14, v19);
    v15 = 1066024305;
    return MEMORY[0x1E12BE940](v6, 1, &v15, v6, 1, 7);
  }

  return this;
}

void sub_1DDD99998(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t CartesianPannerNN::panAtmos504(uint64_t this, float a2, float a3, float a4, float a5, float *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a6 == 9)
  {
    v6 = this;
    CartesianPannerNN::panAtmos504Side(v22, a2, a3, a4, a5, a6);
    CartesianPannerNN::panAtmos504Side(v19, a2, -a3, a4, a5, v11);
    for (i = 0; i != 5; ++i)
    {
      *&v22[i] = fmaxf(*&v22[i], 0.0);
    }

    for (j = 0; j != 5; ++j)
    {
      *&v19[j] = fmaxf(*&v19[j], 0.0);
    }

    v12.i32[0] = v19[0];
    v16 = v22[1];
    *v6 = v22[0];
    *(v6 + 4) = v12.i32[0];
    *(v6 + 8) = v16;
    v12.i64[0] = v23;
    v13.i64[0] = v20;
    *(v6 + 12) = vzip1q_s32(v12, v13);
    v17 = v21;
    *(v6 + 28) = v24;
    *(v6 + 32) = v17;
    v18 = 1065772646;
    return MEMORY[0x1E12BE940](v6, 1, &v18, v6, 1, 9);
  }

  return this;
}

void sub_1DDD99ADC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t CartesianPannerNN::panAtmos702(uint64_t this, float a2, float a3, float a4, float a5, float *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a6 == 9)
  {
    v6 = this;
    CartesianPannerNN::panAtmos702Side(v22, a2, a3, a4, a5, a6);
    CartesianPannerNN::panAtmos702Side(v19, a2, -a3, a4, a5, v11);
    for (i = 0; i != 5; ++i)
    {
      *&v22[i] = fmaxf(*&v22[i], 0.0);
    }

    for (j = 0; j != 5; ++j)
    {
      *&v19[j] = fmaxf(*&v19[j], 0.0);
    }

    v12.i32[0] = v19[0];
    v16 = v22[1];
    *v6 = v22[0];
    *(v6 + 4) = v12.i32[0];
    *(v6 + 8) = v16;
    v12.i64[0] = v23;
    v13.i64[0] = v20;
    *(v6 + 12) = vzip1q_s32(v12, v13);
    v17 = v21;
    *(v6 + 28) = v24;
    *(v6 + 32) = v17;
    v18 = 1065479045;
    return MEMORY[0x1E12BE940](v6, 1, &v18, v6, 1, 9);
  }

  return this;
}

void sub_1DDD99C20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t CartesianPannerNN::panAtmos704(uint64_t this, float a2, float a3, float a4, float a5, float *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a6 == 11)
  {
    v6 = this;
    CartesianPannerNN::panAtmos704Side(v21, a2, a3, a4, a5, a6);
    CartesianPannerNN::panAtmos704Side(v19, a2, -a3, a4, a5, v11);
    for (i = 0; i != 6; ++i)
    {
      *&v21[i] = fmaxf(*&v21[i], 0.0);
    }

    for (j = 0; j != 6; ++j)
    {
      *&v19[j] = fmaxf(*&v19[j], 0.0);
    }

    v14 = v19[0];
    v15 = v21[1];
    *v6 = v21[0];
    *(v6 + 4) = v14;
    *(v6 + 8) = v15;
    v16 = v22;
    v17 = v20;
    *(v6 + 12) = vzip1q_s32(v22, v20);
    *(v6 + 28) = vzip1q_s32(vdupq_laneq_s64(v16, 1), vdupq_laneq_s64(v17, 1));
    v18 = 1064564687;
    return MEMORY[0x1E12BE940](v6, 1, &v18, v6, 1, 11);
  }

  return this;
}

void sub_1DDD99D68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t CartesianPannerNN::panAtmos906(uint64_t this, float a2, float a3, float a4, float a5, float *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a6 == 15)
  {
    v6 = this;
    CartesianPannerNN::panAtmos906Side(v18, a2, a3, a4, a5, a6);
    CartesianPannerNN::panAtmos906Side(v17, a2, -a3, a4, a5, v11);
    v12 = vmaxnmq_f32(*v18, 0);
    v13 = vmaxnmq_f32(*&v18[16], 0);
    *v18 = v12;
    *&v18[16] = v13;
    v14 = vmaxnmq_f32(*v17, 0);
    v15 = vmaxnmq_f32(*&v17[16], 0);
    *v17 = v14;
    *&v17[16] = v15;
    *v6 = v12.i32[0];
    v14.i32[1] = v12.i32[1];
    *(v6 + 4) = v14.i64[0];
    *(v6 + 12) = vzip1q_s32(*&v18[8], *&v17[8]);
    *(v6 + 28) = vzip1q_s32(v13, v15);
    *(v6 + 44) = vzip1q_s32(vdupq_laneq_s64(v13, 1), vdupq_laneq_s64(v15, 1));
    v16 = 1064933786;
    return MEMORY[0x1E12BE940](v6, 1, &v16, v6, 1, 15);
  }

  return this;
}

void sub_1DDD99E90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t CartesianPannerNN::panAtmos906Side(CartesianPannerNN *this, float a2, float a3, float a4, float a5, float *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  *v35 = a2;
  *&v35[1] = a3;
  *&v35[2] = a4;
  *&v35[3] = a5;
  v13 = 4;
  v14 = xmmword_1DE09CCA0;
  v15 = xmmword_1DE09CCB0;
  v16 = -1082130432;
  MEMORY[0x1E12BE8C0](v35, 1, &v14, 1, &v15, 1, __B, 1, 4);
  MEMORY[0x1E12BE8A0](__B, 1, &v16, __B, 1, 4);
  v33 = 1074682858;
  __A[2] = xmmword_1DE0BA45C;
  __A[3] = unk_1DE0BA46C;
  __A[4] = xmmword_1DE0BA47C;
  v32 = xmmword_1DE0BA428;
  __A[0] = xmmword_1DE0BA43C;
  __A[1] = unk_1DE0BA44C;
  vDSP_mmul(__A, 1, __B, 1, __C, 1, 5uLL, 1uLL, 4uLL);
  MEMORY[0x1E12BE5D0](__C, 1, &v32, 1, __C, 1, 5);
  for (i = 0; i != 5; ++i)
  {
    __C[i] = (2.0 / (expf(__C[i] * -2.0) + 1.0)) + -1.0;
  }

  v28[0] = xmmword_1DE0BA48C;
  v28[1] = unk_1DE0BA49C;
  v29 = 0xC1A9E704C1278D50;
  v26[10] = xmmword_1DE0BA554;
  v26[11] = unk_1DE0BA564;
  v27 = 0x3F168251C0AB6EC1;
  v26[6] = xmmword_1DE0BA514;
  v26[7] = unk_1DE0BA524;
  v26[8] = xmmword_1DE0BA534;
  v26[9] = unk_1DE0BA544;
  v26[2] = xmmword_1DE0BA4D4;
  v26[3] = unk_1DE0BA4E4;
  v26[4] = xmmword_1DE0BA4F4;
  v26[5] = unk_1DE0BA504;
  v26[0] = xmmword_1DE0BA4B4;
  v26[1] = unk_1DE0BA4C4;
  vDSP_mmul(v26, 1, __C, 1, v25, 1, 0xAuLL, 1uLL, 5uLL);
  MEMORY[0x1E12BE5D0](v25, 1, v28, 1, v25, 1, 10);
  for (j = 0; j != 10; ++j)
  {
    v25[j] = (2.0 / (expf(v25[j] * -2.0) + 1.0)) + -1.0;
  }

  v23[0] = xmmword_1DE0BA57C;
  v23[1] = unk_1DE0BA58C;
  v24[0] = xmmword_1DE0BA59C;
  *(v24 + 12) = *(&xmmword_1DE0BA59C + 12);
  memcpy(__dst, &unk_1DE0BA5B8, sizeof(__dst));
  vDSP_mmul(__dst, 1, v25, 1, v21, 1, 0xFuLL, 1uLL, 0xAuLL);
  MEMORY[0x1E12BE5D0](v21, 1, v23, 1, v21, 1, 15);
  for (k = 0; k != 15; ++k)
  {
    v21[k] = (2.0 / (expf(v21[k] * -2.0) + 1.0)) + -1.0;
  }

  v20[0] = xmmword_1DE0BA810;
  v20[1] = unk_1DE0BA820;
  memcpy(v19, &unk_1DE0BA830, sizeof(v19));
  vDSP_mmul(v19, 1, v21, 1, v18, 1, 8uLL, 1uLL, 0xFuLL);
  MEMORY[0x1E12BE5D0](v18, 1, v20, 1, v18, 1, 8);
  v11[0] = xmmword_1DE0BAA7C;
  v11[1] = unk_1DE0BAA8C;
  v12[0] = xmmword_1DE0BAA9C;
  v12[1] = unk_1DE0BAAAC;
  v17 = 1065353216;
  MEMORY[0x1E12BE8A0](v18, 1, &v17, this, 1, 8);
  vDSP_vdiv(v11, 1, this, 1, this, 1, 8uLL);
  return MEMORY[0x1E12BE5D0](this, 1, v12, 1, this, 1, 8);
}

void sub_1DDD9A304(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CartesianPannerNN::panAtmos704Side(CartesianPannerNN *this, float a2, float a3, float a4, float a5, float *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  *v38 = a2;
  *&v38[1] = a3;
  *&v38[2] = a4;
  *&v38[3] = a5;
  v15 = 4;
  v16 = xmmword_1DE09CCA0;
  v17 = xmmword_1DE09CCB0;
  v18 = -1082130432;
  MEMORY[0x1E12BE8C0](v38, 1, &v16, 1, &v17, 1, __B, 1, 4);
  MEMORY[0x1E12BE8A0](__B, 1, &v18, __B, 1, 4);
  v36 = 1066657309;
  __A[2] = xmmword_1DE0B9EF4;
  __A[3] = unk_1DE0B9F04;
  __A[4] = xmmword_1DE0B9F14;
  v35 = xmmword_1DE0B9EC0;
  __A[0] = xmmword_1DE0B9ED4;
  __A[1] = unk_1DE0B9EE4;
  vDSP_mmul(__A, 1, __B, 1, __C, 1, 5uLL, 1uLL, 4uLL);
  MEMORY[0x1E12BE5D0](__C, 1, &v35, 1, __C, 1, 5);
  for (i = 0; i != 5; ++i)
  {
    __C[i] = (2.0 / (expf(__C[i] * -2.0) + 1.0)) + -1.0;
  }

  v31[0] = xmmword_1DE0B9F24;
  v31[1] = unk_1DE0B9F34;
  v32 = 0x42515653416462B7;
  v29[10] = xmmword_1DE0B9FEC;
  v29[11] = unk_1DE0B9FFC;
  v30 = 0x3CD09C65C271BBCDLL;
  v29[6] = xmmword_1DE0B9FAC;
  v29[7] = unk_1DE0B9FBC;
  v29[8] = xmmword_1DE0B9FCC;
  v29[9] = unk_1DE0B9FDC;
  v29[2] = xmmword_1DE0B9F6C;
  v29[3] = unk_1DE0B9F7C;
  v29[4] = xmmword_1DE0B9F8C;
  v29[5] = unk_1DE0B9F9C;
  v29[0] = xmmword_1DE0B9F4C;
  v29[1] = unk_1DE0B9F5C;
  vDSP_mmul(v29, 1, __C, 1, v28, 1, 0xAuLL, 1uLL, 5uLL);
  MEMORY[0x1E12BE5D0](v28, 1, v31, 1, v28, 1, 10);
  for (j = 0; j != 10; ++j)
  {
    v28[j] = (2.0 / (expf(v28[j] * -2.0) + 1.0)) + -1.0;
  }

  v26[0] = xmmword_1DE0BA014;
  v26[1] = unk_1DE0BA024;
  v27[0] = xmmword_1DE0BA034;
  *(v27 + 12) = *(&xmmword_1DE0BA034 + 12);
  memcpy(__dst, &unk_1DE0BA050, sizeof(__dst));
  vDSP_mmul(__dst, 1, v28, 1, v24, 1, 0xFuLL, 1uLL, 0xAuLL);
  MEMORY[0x1E12BE5D0](v24, 1, v26, 1, v24, 1, 15);
  for (k = 0; k != 15; ++k)
  {
    v24[k] = (2.0 / (expf(v24[k] * -2.0) + 1.0)) + -1.0;
  }

  v22 = xmmword_1DE0BA2A8;
  v23 = 0xC09B02F3C1175C7DLL;
  memcpy(v21, &unk_1DE0BA2C0, sizeof(v21));
  vDSP_mmul(v21, 1, v24, 1, v20, 1, 6uLL, 1uLL, 0xFuLL);
  MEMORY[0x1E12BE5D0](v20, 1, &v22, 1, v20, 1, 6);
  v11 = xmmword_1DE0BAA4C;
  v12 = 0x4001C5824001C582;
  v13 = xmmword_1DE0BAA64;
  v14 = 0x381098ED381098EDLL;
  v19 = 1065353216;
  MEMORY[0x1E12BE8A0](v20, 1, &v19, this, 1, 6);
  vDSP_vdiv(&v11, 1, this, 1, this, 1, 6uLL);
  return MEMORY[0x1E12BE5D0](this, 1, &v13, 1, this, 1, 6);
}

void sub_1DDD9A794(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CartesianPannerNN::panAtmos702Side(CartesianPannerNN *this, float a2, float a3, float a4, float a5, float *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  *v38 = a2;
  *&v38[1] = a3;
  *&v38[2] = a4;
  *&v38[3] = a5;
  v15 = 4;
  v16 = xmmword_1DE09CCA0;
  v17 = xmmword_1DE09CCB0;
  v18 = -1082130432;
  MEMORY[0x1E12BE8C0](v38, 1, &v16, 1, &v17, 1, __B, 1, 4);
  MEMORY[0x1E12BE8A0](__B, 1, &v18, __B, 1, 4);
  v36 = 1067328649;
  __A[2] = xmmword_1DE0B99CC;
  __A[3] = unk_1DE0B99DC;
  __A[4] = xmmword_1DE0B99EC;
  v35 = xmmword_1DE0B9998;
  __A[0] = xmmword_1DE0B99AC;
  __A[1] = unk_1DE0B99BC;
  vDSP_mmul(__A, 1, __B, 1, __C, 1, 5uLL, 1uLL, 4uLL);
  MEMORY[0x1E12BE5D0](__C, 1, &v35, 1, __C, 1, 5);
  for (i = 0; i != 5; ++i)
  {
    __C[i] = (2.0 / (expf(__C[i] * -2.0) + 1.0)) + -1.0;
  }

  v31[0] = xmmword_1DE0B99FC;
  v31[1] = unk_1DE0B9A0C;
  v32 = 0x3E703B823F0C02E2;
  v29[10] = xmmword_1DE0B9AC4;
  v29[11] = unk_1DE0B9AD4;
  v30 = 0xBFF32CA5BFB925EELL;
  v29[6] = xmmword_1DE0B9A84;
  v29[7] = unk_1DE0B9A94;
  v29[8] = xmmword_1DE0B9AA4;
  v29[9] = unk_1DE0B9AB4;
  v29[2] = xmmword_1DE0B9A44;
  v29[3] = unk_1DE0B9A54;
  v29[4] = xmmword_1DE0B9A64;
  v29[5] = unk_1DE0B9A74;
  v29[0] = xmmword_1DE0B9A24;
  v29[1] = unk_1DE0B9A34;
  vDSP_mmul(v29, 1, __C, 1, v28, 1, 0xAuLL, 1uLL, 5uLL);
  MEMORY[0x1E12BE5D0](v28, 1, v31, 1, v28, 1, 10);
  for (j = 0; j != 10; ++j)
  {
    v28[j] = (2.0 / (expf(v28[j] * -2.0) + 1.0)) + -1.0;
  }

  v26[0] = xmmword_1DE0B9AEC;
  v26[1] = unk_1DE0B9AFC;
  v27[0] = xmmword_1DE0B9B0C;
  *(v27 + 12) = *(&xmmword_1DE0B9B0C + 12);
  memcpy(__dst, &unk_1DE0B9B28, sizeof(__dst));
  vDSP_mmul(__dst, 1, v28, 1, v24, 1, 0xFuLL, 1uLL, 0xAuLL);
  MEMORY[0x1E12BE5D0](v24, 1, v26, 1, v24, 1, 15);
  for (k = 0; k != 15; ++k)
  {
    v24[k] = (2.0 / (expf(v24[k] * -2.0) + 1.0)) + -1.0;
  }

  v23 = 1043507737;
  v22 = xmmword_1DE0B9D80;
  memcpy(v21, &unk_1DE0B9D94, sizeof(v21));
  vDSP_mmul(v21, 1, v24, 1, v20, 1, 5uLL, 1uLL, 0xFuLL);
  MEMORY[0x1E12BE5D0](v20, 1, &v22, 1, v20, 1, 5);
  v12 = 1074619650;
  v11 = xmmword_1DE0BAA24;
  v14 = 940611821;
  v13 = xmmword_1DE0BAA38;
  v19 = 1065353216;
  MEMORY[0x1E12BE8A0](v20, 1, &v19, this, 1, 5);
  vDSP_vdiv(&v11, 1, this, 1, this, 1, 5uLL);
  return MEMORY[0x1E12BE5D0](this, 1, &v13, 1, this, 1, 5);
}

void sub_1DDD9AC30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CartesianPannerNN::panAtmos700Side(CartesianPannerNN *this, float a2, float a3, float a4, float a5, float *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  *v36 = a2;
  *&v36[1] = a3;
  *&v36[2] = a4;
  *&v36[3] = a5;
  v14 = 4;
  v15 = xmmword_1DE09CCA0;
  v16 = xmmword_1DE09CCB0;
  v17 = -1082130432;
  MEMORY[0x1E12BE8C0](v36, 1, &v15, 1, &v16, 1, __B, 1, 4);
  MEMORY[0x1E12BE8A0](__B, 1, &v17, __B, 1, 4);
  v34 = -1086603607;
  __A[2] = xmmword_1DE0B94F4;
  __A[3] = unk_1DE0B9504;
  __A[4] = xmmword_1DE0B9514;
  v33 = xmmword_1DE0B94C0;
  __A[0] = xmmword_1DE0B94D4;
  __A[1] = unk_1DE0B94E4;
  vDSP_mmul(__A, 1, __B, 1, __C, 1, 5uLL, 1uLL, 4uLL);
  MEMORY[0x1E12BE5D0](__C, 1, &v33, 1, __C, 1, 5);
  for (i = 0; i != 5; ++i)
  {
    __C[i] = (2.0 / (expf(__C[i] * -2.0) + 1.0)) + -1.0;
  }

  v29[0] = xmmword_1DE0B9524;
  v29[1] = unk_1DE0B9534;
  v30 = 0x40102D0E404A0A52;
  v27[10] = xmmword_1DE0B95EC;
  v27[11] = unk_1DE0B95FC;
  v28 = 0x40B9ADD63F32ECD0;
  v27[6] = xmmword_1DE0B95AC;
  v27[7] = unk_1DE0B95BC;
  v27[8] = xmmword_1DE0B95CC;
  v27[9] = unk_1DE0B95DC;
  v27[2] = xmmword_1DE0B956C;
  v27[3] = unk_1DE0B957C;
  v27[4] = xmmword_1DE0B958C;
  v27[5] = unk_1DE0B959C;
  v27[0] = xmmword_1DE0B954C;
  v27[1] = unk_1DE0B955C;
  vDSP_mmul(v27, 1, __C, 1, v26, 1, 0xAuLL, 1uLL, 5uLL);
  MEMORY[0x1E12BE5D0](v26, 1, v29, 1, v26, 1, 10);
  for (j = 0; j != 10; ++j)
  {
    v26[j] = (2.0 / (expf(v26[j] * -2.0) + 1.0)) + -1.0;
  }

  v24[0] = xmmword_1DE0B9614;
  v24[1] = unk_1DE0B9624;
  v25[0] = xmmword_1DE0B9634;
  *(v25 + 12) = *(&xmmword_1DE0B9634 + 12);
  memcpy(__dst, &unk_1DE0B9650, sizeof(__dst));
  vDSP_mmul(__dst, 1, v26, 1, v22, 1, 0xFuLL, 1uLL, 0xAuLL);
  MEMORY[0x1E12BE5D0](v22, 1, v24, 1, v22, 1, 15);
  for (k = 0; k != 15; ++k)
  {
    v22[k] = (2.0 / (expf(v22[k] * -2.0) + 1.0)) + -1.0;
  }

  v20[12] = xmmword_1DE0B9968;
  v20[13] = unk_1DE0B9978;
  v20[14] = xmmword_1DE0B9988;
  v21 = xmmword_1DE09E8A0;
  v20[8] = xmmword_1DE0B9928;
  v20[9] = unk_1DE0B9938;
  v20[10] = xmmword_1DE0B9948;
  v20[11] = unk_1DE0B9958;
  v20[4] = xmmword_1DE0B98E8;
  v20[5] = unk_1DE0B98F8;
  v20[6] = xmmword_1DE0B9908;
  v20[7] = unk_1DE0B9918;
  v20[0] = xmmword_1DE0B98A8;
  v20[1] = unk_1DE0B98B8;
  v20[2] = xmmword_1DE0B98C8;
  v20[3] = unk_1DE0B98D8;
  vDSP_mmul(v20, 1, v22, 1, v19, 1, 4uLL, 1uLL, 0xFuLL);
  MEMORY[0x1E12BE5D0](v19, 1, &v21, 1, v19, 1, 4);
  v11 = xmmword_1DE09CCC0;
  v12 = xmmword_1DE09CCD0;
  v13 = 940611821;
  v18 = 1065353216;
  MEMORY[0x1E12BE8A0](v19, 1, &v18, this, 1, 4);
  vDSP_vdiv(&v11 + 1, 1, this, 1, this, 1, 4uLL);
  return MEMORY[0x1E12BE5D0](this, 1, &v12 + 4, 1, this, 1, 4);
}

void sub_1DDD9B0D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CartesianPannerNN::panAtmos504Side(CartesianPannerNN *this, float a2, float a3, float a4, float a5, float *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  *v38 = a2;
  *&v38[1] = a3;
  *&v38[2] = a4;
  *&v38[3] = a5;
  v15 = 4;
  v16 = xmmword_1DE09CCA0;
  v17 = xmmword_1DE09CCB0;
  v18 = -1082130432;
  MEMORY[0x1E12BE8C0](v38, 1, &v16, 1, &v17, 1, __B, 1, 4);
  MEMORY[0x1E12BE8A0](__B, 1, &v18, __B, 1, 4);
  v36 = 1069091767;
  __A[2] = xmmword_1DE0B8FCC;
  __A[3] = unk_1DE0B8FDC;
  __A[4] = xmmword_1DE0B8FEC;
  v35 = xmmword_1DE0B8F98;
  __A[0] = xmmword_1DE0B8FAC;
  __A[1] = unk_1DE0B8FBC;
  vDSP_mmul(__A, 1, __B, 1, __C, 1, 5uLL, 1uLL, 4uLL);
  MEMORY[0x1E12BE5D0](__C, 1, &v35, 1, __C, 1, 5);
  for (i = 0; i != 5; ++i)
  {
    __C[i] = (2.0 / (expf(__C[i] * -2.0) + 1.0)) + -1.0;
  }

  v31[0] = xmmword_1DE0B8FFC;
  v31[1] = unk_1DE0B900C;
  v32 = 0xC185B40541A38275;
  v29[10] = xmmword_1DE0B90C4;
  v29[11] = unk_1DE0B90D4;
  v30 = 0x42018241C11ACAACLL;
  v29[6] = xmmword_1DE0B9084;
  v29[7] = unk_1DE0B9094;
  v29[8] = xmmword_1DE0B90A4;
  v29[9] = unk_1DE0B90B4;
  v29[2] = xmmword_1DE0B9044;
  v29[3] = unk_1DE0B9054;
  v29[4] = xmmword_1DE0B9064;
  v29[5] = unk_1DE0B9074;
  v29[0] = xmmword_1DE0B9024;
  v29[1] = unk_1DE0B9034;
  vDSP_mmul(v29, 1, __C, 1, v28, 1, 0xAuLL, 1uLL, 5uLL);
  MEMORY[0x1E12BE5D0](v28, 1, v31, 1, v28, 1, 10);
  for (j = 0; j != 10; ++j)
  {
    v28[j] = (2.0 / (expf(v28[j] * -2.0) + 1.0)) + -1.0;
  }

  v26[0] = xmmword_1DE0B90EC;
  v26[1] = unk_1DE0B90FC;
  v27[0] = xmmword_1DE0B910C;
  *(v27 + 12) = *(&xmmword_1DE0B910C + 12);
  memcpy(__dst, &unk_1DE0B9128, sizeof(__dst));
  vDSP_mmul(__dst, 1, v28, 1, v24, 1, 0xFuLL, 1uLL, 0xAuLL);
  MEMORY[0x1E12BE5D0](v24, 1, v26, 1, v24, 1, 15);
  for (k = 0; k != 15; ++k)
  {
    v24[k] = (2.0 / (expf(v24[k] * -2.0) + 1.0)) + -1.0;
  }

  v23 = -1059880803;
  v22 = xmmword_1DE0B9380;
  memcpy(v21, &unk_1DE0B9394, sizeof(v21));
  vDSP_mmul(v21, 1, v24, 1, v20, 1, 5uLL, 1uLL, 0xFuLL);
  MEMORY[0x1E12BE5D0](v20, 1, &v22, 1, v20, 1, 5);
  v12 = 1075454526;
  v11 = xmmword_1DE0BAA10;
  v14 = 940611821;
  v13 = xmmword_1DE0BAA38;
  v19 = 1065353216;
  MEMORY[0x1E12BE8A0](v20, 1, &v19, this, 1, 5);
  vDSP_vdiv(&v11, 1, this, 1, this, 1, 5uLL);
  return MEMORY[0x1E12BE5D0](this, 1, &v13, 1, this, 1, 5);
}

void sub_1DDD9B570(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CartesianPannerNN::panAtmos502Side(CartesianPannerNN *this, float a2, float a3, float a4, float a5, float *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  *v36 = a2;
  *&v36[1] = a3;
  *&v36[2] = a4;
  *&v36[3] = a5;
  v14 = 4;
  v15 = xmmword_1DE09CCA0;
  v16 = xmmword_1DE09CCB0;
  v17 = -1082130432;
  MEMORY[0x1E12BE8C0](v36, 1, &v15, 1, &v16, 1, __B, 1, 4);
  MEMORY[0x1E12BE8A0](__B, 1, &v17, __B, 1, 4);
  v34 = 1059530213;
  __A[2] = xmmword_1DE0B8AF4;
  __A[3] = unk_1DE0B8B04;
  __A[4] = xmmword_1DE0B8B14;
  v33 = xmmword_1DE0B8AC0;
  __A[0] = xmmword_1DE0B8AD4;
  __A[1] = unk_1DE0B8AE4;
  vDSP_mmul(__A, 1, __B, 1, __C, 1, 5uLL, 1uLL, 4uLL);
  MEMORY[0x1E12BE5D0](__C, 1, &v33, 1, __C, 1, 5);
  for (i = 0; i != 5; ++i)
  {
    __C[i] = (2.0 / (expf(__C[i] * -2.0) + 1.0)) + -1.0;
  }

  v29[0] = xmmword_1DE0B8B24;
  v29[1] = unk_1DE0B8B34;
  v30 = 0x405C1284408482D4;
  v27[10] = xmmword_1DE0B8BEC;
  v27[11] = unk_1DE0B8BFC;
  v28 = 0xBEBA8390BF73FF9BLL;
  v27[6] = xmmword_1DE0B8BAC;
  v27[7] = unk_1DE0B8BBC;
  v27[8] = xmmword_1DE0B8BCC;
  v27[9] = unk_1DE0B8BDC;
  v27[2] = xmmword_1DE0B8B6C;
  v27[3] = unk_1DE0B8B7C;
  v27[4] = xmmword_1DE0B8B8C;
  v27[5] = unk_1DE0B8B9C;
  v27[0] = xmmword_1DE0B8B4C;
  v27[1] = unk_1DE0B8B5C;
  vDSP_mmul(v27, 1, __C, 1, v26, 1, 0xAuLL, 1uLL, 5uLL);
  MEMORY[0x1E12BE5D0](v26, 1, v29, 1, v26, 1, 10);
  for (j = 0; j != 10; ++j)
  {
    v26[j] = (2.0 / (expf(v26[j] * -2.0) + 1.0)) + -1.0;
  }

  v24[0] = xmmword_1DE0B8C14;
  v24[1] = unk_1DE0B8C24;
  v25[0] = xmmword_1DE0B8C34;
  *(v25 + 12) = *(&xmmword_1DE0B8C34 + 12);
  memcpy(__dst, &unk_1DE0B8C50, sizeof(__dst));
  vDSP_mmul(__dst, 1, v26, 1, v22, 1, 0xFuLL, 1uLL, 0xAuLL);
  MEMORY[0x1E12BE5D0](v22, 1, v24, 1, v22, 1, 15);
  for (k = 0; k != 15; ++k)
  {
    v22[k] = (2.0 / (expf(v22[k] * -2.0) + 1.0)) + -1.0;
  }

  v20[12] = xmmword_1DE0B8F68;
  v20[13] = unk_1DE0B8F78;
  v20[14] = xmmword_1DE0B8F88;
  v21 = xmmword_1DE09E890;
  v20[8] = xmmword_1DE0B8F28;
  v20[9] = unk_1DE0B8F38;
  v20[10] = xmmword_1DE0B8F48;
  v20[11] = unk_1DE0B8F58;
  v20[4] = xmmword_1DE0B8EE8;
  v20[5] = unk_1DE0B8EF8;
  v20[6] = xmmword_1DE0B8F08;
  v20[7] = unk_1DE0B8F18;
  v20[0] = xmmword_1DE0B8EA8;
  v20[1] = unk_1DE0B8EB8;
  v20[2] = xmmword_1DE0B8EC8;
  v20[3] = unk_1DE0B8ED8;
  vDSP_mmul(v20, 1, v22, 1, v19, 1, 4uLL, 1uLL, 0xFuLL);
  MEMORY[0x1E12BE5D0](v19, 1, &v21, 1, v19, 1, 4);
  v11 = xmmword_1DE09CCE0;
  v12 = xmmword_1DE09CCF0;
  v13 = 940611821;
  v18 = 1065353216;
  MEMORY[0x1E12BE8A0](v19, 1, &v18, this, 1, 4);
  vDSP_vdiv(&v11 + 1, 1, this, 1, this, 1, 4uLL);
  return MEMORY[0x1E12BE5D0](this, 1, &v12 + 4, 1, this, 1, 4);
}

void sub_1DDD9BA14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CartesianPannerNN::panAtmos500Side(CartesianPannerNN *this, float a2, float a3, float a4, float a5, float *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  *v38 = a2;
  *&v38[1] = a3;
  *&v38[2] = a4;
  *&v38[3] = a5;
  v14 = 4;
  v15 = xmmword_1DE09CCA0;
  v16 = xmmword_1DE09CCB0;
  v17 = -1082130432;
  MEMORY[0x1E12BE8C0](v38, 1, &v15, 1, &v16, 1, __B, 1, 4);
  MEMORY[0x1E12BE8A0](__B, 1, &v17, __B, 1, 4);
  v36 = 1049795033;
  __A[2] = xmmword_1DE0B864C;
  __A[3] = unk_1DE0B865C;
  __A[4] = xmmword_1DE0B866C;
  v35 = xmmword_1DE0B8618;
  __A[0] = xmmword_1DE0B862C;
  __A[1] = unk_1DE0B863C;
  vDSP_mmul(__A, 1, __B, 1, __C, 1, 5uLL, 1uLL, 4uLL);
  MEMORY[0x1E12BE5D0](__C, 1, &v35, 1, __C, 1, 5);
  for (i = 0; i != 5; ++i)
  {
    __C[i] = (2.0 / (expf(__C[i] * -2.0) + 1.0)) + -1.0;
  }

  v31[0] = xmmword_1DE0B867C;
  v31[1] = unk_1DE0B868C;
  v32 = 0xC05DFE33BFBCF4C7;
  v29[10] = xmmword_1DE0B8744;
  v29[11] = unk_1DE0B8754;
  v30 = 0x4144C2F8C02AF1FELL;
  v29[6] = xmmword_1DE0B8704;
  v29[7] = unk_1DE0B8714;
  v29[8] = xmmword_1DE0B8724;
  v29[9] = unk_1DE0B8734;
  v29[2] = xmmword_1DE0B86C4;
  v29[3] = unk_1DE0B86D4;
  v29[4] = xmmword_1DE0B86E4;
  v29[5] = unk_1DE0B86F4;
  v29[0] = xmmword_1DE0B86A4;
  v29[1] = unk_1DE0B86B4;
  vDSP_mmul(v29, 1, __C, 1, v28, 1, 0xAuLL, 1uLL, 5uLL);
  MEMORY[0x1E12BE5D0](v28, 1, v31, 1, v28, 1, 10);
  for (j = 0; j != 10; ++j)
  {
    v28[j] = (2.0 / (expf(v28[j] * -2.0) + 1.0)) + -1.0;
  }

  v26[0] = xmmword_1DE0B876C;
  v26[1] = unk_1DE0B877C;
  v27[0] = xmmword_1DE0B878C;
  *(v27 + 12) = *(&xmmword_1DE0B878C + 12);
  memcpy(__dst, &unk_1DE0B87A8, sizeof(__dst));
  vDSP_mmul(__dst, 1, v28, 1, v24, 1, 0xFuLL, 1uLL, 0xAuLL);
  MEMORY[0x1E12BE5D0](v24, 1, v26, 1, v24, 1, 15);
  for (k = 0; k != 15; ++k)
  {
    v24[k] = (2.0 / (expf(v24[k] * -2.0) + 1.0)) + -1.0;
  }

  v20[7] = unk_1DE0B8A7C;
  v20[8] = xmmword_1DE0B8A8C;
  v20[9] = unk_1DE0B8A9C;
  v20[10] = xmmword_1DE0B8AAC;
  v20[3] = unk_1DE0B8A3C;
  v20[4] = xmmword_1DE0B8A4C;
  v20[5] = unk_1DE0B8A5C;
  v20[6] = xmmword_1DE0B8A6C;
  v20[0] = xmmword_1DE0B8A0C;
  v20[1] = unk_1DE0B8A1C;
  v23 = -1061062149;
  v22 = 0x420055813FD26D48;
  v20[2] = xmmword_1DE0B8A2C;
  v21 = 1053414079;
  vDSP_mmul(v20, 1, v24, 1, v19, 1, 3uLL, 1uLL, 0xFuLL);
  MEMORY[0x1E12BE5D0](v19, 1, &v22, 1, v19, 1, 3);
  v11 = xmmword_1DE09CD00;
  v12 = vdup_n_s32(0x381098EDu);
  v13 = 940611821;
  v18 = 1065353216;
  MEMORY[0x1E12BE8A0](v19, 1, &v18, this, 1, 3);
  vDSP_vdiv(&v11 + 1, 1, this, 1, this, 1, 3uLL);
  return MEMORY[0x1E12BE5D0](this, 1, &v12, 1, this, 1, 3);
}

void sub_1DDD9BEC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CAX4CCString::CAX4CCString(CAX4CCString *this, unsigned int a2)
{
  v4 = bswap32(a2);
  *(this + 1) = v4;
  v5 = MEMORY[0x1E69E9830];
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(this + 2);
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v5 + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    *(this + 5) = 39;
    *this = 39;
    return;
  }

  if ((*(v5 + 4 * v7 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(this, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(this, 0x10uLL, "%d");
  }
}

void CDSPSplitComplex::resize(CDSPSplitComplex *this, uint64_t a2)
{
  v2 = 2 * a2;
  if (v2)
  {
    std::valarray<float>::resize(this + 16, v2);
    v4 = *(this + 2);
    v5 = v4 + 4 * ((*(this + 3) - v4) >> 3);
    *this = v4;
    *(this + 1) = v5;
  }
}

void FreqDomainConvolver::Reset(FreqDomainConvolver *this)
{
  v2 = *(this + 17);
  v3 = *(this + 18) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  v4 = *(this + 14);
  v5 = *(this + 15) - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  v6 = *(this + 8);
  v7 = *(this + 9) - v6;
  if (v7 >= 1)
  {

    bzero(v6, v7);
  }
}

void CDSPSplitComplex::~CDSPSplitComplex(CDSPSplitComplex *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = v3[1];
    if (v4 != v2)
    {
      *(this + 3) = &v4[(v2 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *v3 = 0;
    v3[1] = 0;
  }
}

void FreqDomainConvolver::FreqDomainConvolver(FreqDomainConvolver *this, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0u;
  v3 = (this + 16);
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 5) = 0u;
  v5 = (this + 80);
  *(this + 7) = 0u;
  v6 = (this + 112);
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 40) = a2;
  v7 = vcnt_s8(a2);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.i32[0] > 1u;
  if (v7.i32[0] >= 2u)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v16, v8);
      *__p = 136315906;
      *&__p[4] = "FreqDomainConvolver.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 30;
      v18 = 2080;
      v19 = v16;
      v20 = 2080;
      v21 = "Block size must be power of 2";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", __p, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Block size must be power of 2", v8);
  }

  v9 = MultiRadixRealFFT::Initialize(this, 2 * a2);
  if (v9)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v16, v9);
      *__p = 136315906;
      *&__p[4] = "FreqDomainConvolver.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 31;
      v18 = 2080;
      v19 = v16;
      v20 = 2080;
      v21 = "FFT initialization failed";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", __p, 0x26u);
    }

    v15 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v15, "FFT initialization failed", v9);
  }

  CDSPSplitComplex::resize(v4, *(this + 40));
  CDSPSplitComplex::resize(v5, *(this + 40));
  CDSPSplitComplex::resize(v3, *(this + 40));
  std::vector<float>::resize(this + 17, (2 * *(this + 40)));
  std::vector<float>::resize(v6, *(this + 40));
  v10 = *(this + 40);
  v16[0] = 0.0;
  std::vector<float>::vector[abi:ne200100](__p, v10);
  v11 = *__p;
  if (*&__p[8] == *__p)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  **__p = 1065353216;
  vDSP_ctoz(v11, 2, v3, 1, *(this + 40) >> 1);
  if (*this)
  {
    v12 = **this;
  }

  else
  {
    v12 = 0.0;
  }

  v16[0] = 1.0 / v12;
  MEMORY[0x1E12BE940](*(this + 2), 1, v16, *(this + 2), 1, *(this + 40));
  v13 = MEMORY[0x1E12BE940](*(this + 3), 1, v16, *(this + 3), 1, *(this + 40));
  MultiRadixRealFFT::RealInPlaceTransform(this, v3, 1, v13);
  FreqDomainConvolver::Reset(this);
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }
}

void sub_1DDD9C4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v18 = v12[17];
  if (v18)
  {
    v12[18] = v18;
    operator delete(v18);
  }

  v19 = *v16;
  if (*v16)
  {
    v12[15] = v19;
    operator delete(v19);
  }

  CDSPSplitComplex::~CDSPSplitComplex(v15);
  CDSPSplitComplex::~CDSPSplitComplex(v14);
  CDSPSplitComplex::~CDSPSplitComplex(v13);
  v20 = v12[1];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void FreqDomainConvolver::Initialize(DSPSplitComplex *this, DSPComplex *__C, unint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  realp = this[2].realp;
  v7 = this[2].imagp - realp;
  if (v7 >= 1)
  {
    bzero(realp, v7);
  }

  if (a3)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v17, a3 & 1);
      *buf = 4.8153e-34;
      v19 = "FreqDomainConvolver.cpp";
      v20 = 1024;
      v21 = 57;
      v22 = 2080;
      v23 = v17;
      v24 = 2080;
      v25 = "Filter length must be even";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Filter length must be even", a3 & 1);
  }

  realp_low = LODWORD(this[10].realp);
  v9 = realp_low >= a3;
  v10 = realp_low < a3;
  if (!v9)
  {
    v14 = v10;
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v17, v14);
      *buf = 4.8153e-34;
      v19 = "FreqDomainConvolver.cpp";
      v20 = 1024;
      v21 = 58;
      v22 = 2080;
      v23 = v17;
      v24 = 2080;
      v25 = "Filter length must be less than or equal to block size";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v16 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v16, "Filter length must be less than or equal to block size", v14);
  }

  vDSP_ctoz(__C, 2, this + 1, 1, a3 >> 1);
  if (this->realp)
  {
    v11 = *this->realp;
  }

  else
  {
    v11 = 0.0;
  }

  *buf = 1.0 / v11;
  MEMORY[0x1E12BE940](this[1].realp, 1, buf, this[1].realp, 1, LODWORD(this[10].realp));
  v12 = MEMORY[0x1E12BE940](this[1].imagp, 1, buf, this[1].imagp, 1, LODWORD(this[10].realp));
  MultiRadixRealFFT::RealInPlaceTransform(this, this + 1, 1, v12);
  FreqDomainConvolver::Reset(this);
}

void FreqDomainConvolver::Process(DSPSplitComplex *this, const float *__src, float *a3, unint64_t a4, void **a5, DSPSplitComplex *a6)
{
  if (LODWORD(this[10].realp) >= a4)
  {
    v11 = a4;
    p_imagp = &this[8].imagp;
    imagp = this[8].imagp;
    v13 = p_imagp[1];
    v15 = v13 - imagp;
    v16 = &imagp[a4];
    if (v15 > a4 && v16 != v13)
    {
      memmove(imagp, v16, v13 - v16);
      imagp = this[8].imagp;
      v15 = this[9].realp - imagp;
    }

    if (v15 <= v15 - v11)
    {
      goto LABEL_16;
    }

    memcpy(&imagp[v15 - v11], __src, 4 * v11);
    v18 = this[8].imagp;
    if (this[9].realp == v18)
    {
      goto LABEL_16;
    }

    vDSP_ctoz(v18, 2, this + 3, 1, LODWORD(this[10].realp));
    MultiRadixRealFFT::RealInPlaceTransform(this, this + 3, 1, v19);
    if (a5)
    {
      memcpy(*a5, this[3].realp, 4 * LODWORD(this[10].realp));
      memcpy(a5[1], this[3].imagp, 4 * LODWORD(this[10].realp));
    }

    vDSP_zvmul(this + 3, 1, this + 1, 1, this + 5, 1, LODWORD(this[10].realp), 1);
    v20 = this[3].imagp;
    v21 = this[1].imagp;
    v22 = this[5].imagp;
    *this[5].realp = *this[3].realp * *this[1].realp;
    v23 = *v20 * *v21;
    *v22 = v23;
    if (a3)
    {
      MultiRadixRealFFT::RealInPlaceTransform(this, this + 5, -1, v23);
      v24 = LODWORD(this[10].realp) >> 1;
      v25 = &this[5].imagp[v24];
      v29.realp = &this[5].realp[v24];
      v29.imagp = v25;
      realp = this[7].realp;
      if (this[7].imagp != realp)
      {
        vDSP_ztoc(&v29, 1, realp, 2, v24);
        v27 = this[7].realp;
        v28 = this[7].imagp - v27;
        if (v28 > v28 - a4)
        {
          memcpy(a3, &v27[v28 - a4], 4 * a4);
          return;
        }
      }

LABEL_16:
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }
  }
}

uint64_t Cns::deallocate_memory(uint64_t this)
{
  if (*this)
  {
    v1 = this;
    *this = 0;
    if (*(this + 208))
    {
      v2 = 0;
      v3 = 1;
      do
      {
        v4 = v3;
        v5 = *(*(v1 + 208) + 8 * v2);
        if (v5)
        {
          MEMORY[0x1E12BD130](v5, 0x1000C8052888210);
        }

        v3 = 0;
        v2 = 1;
      }

      while ((v4 & 1) != 0);
      v6 = *(v1 + 208);
      if (v6)
      {
        MEMORY[0x1E12BD130](v6, 0x10C80436913F5);
      }

      *(v1 + 208) = 0;
    }

    if (*(v1 + 328))
    {
      if (*(v1 + 4) + *(v1 + 28) < 1)
      {
        goto LABEL_33;
      }

      v7 = 0;
      v8 = 64;
      do
      {
        v9 = *(v1 + 328);
        v10 = *(v9 + v8 - 64);
        if (v10)
        {
          MEMORY[0x1E12BD130](v10, 0x1000C8052888210);
          v9 = *(v1 + 328);
        }

        v11 = *(v9 + v8 - 56);
        if (v11)
        {
          MEMORY[0x1E12BD130](v11, 0x1000C8052888210);
          v9 = *(v1 + 328);
        }

        v12 = *(v9 + v8 - 48);
        if (v12)
        {
          MEMORY[0x1E12BD130](v12, 0x1000C8052888210);
          v9 = *(v1 + 328);
        }

        v13 = *(v9 + v8 - 40);
        if (v13)
        {
          MEMORY[0x1E12BD130](v13, 0x1000C8052888210);
          v9 = *(v1 + 328);
        }

        v14 = *(v9 + v8 - 32);
        if (v14)
        {
          MEMORY[0x1E12BD130](v14, 0x1000C8052888210);
          v9 = *(v1 + 328);
        }

        v15 = *(v9 + v8 - 24);
        if (v15)
        {
          MEMORY[0x1E12BD130](v15, 0x1000C8052888210);
          v9 = *(v1 + 328);
        }

        v16 = *(v9 + v8 - 16);
        if (v16)
        {
          MEMORY[0x1E12BD130](v16, 0x1000C8052888210);
          v9 = *(v1 + 328);
        }

        v17 = *(v9 + v8 - 8);
        if (v17)
        {
          MEMORY[0x1E12BD130](v17, 0x1000C8052888210);
          v9 = *(v1 + 328);
        }

        v18 = *(v9 + v8);
        if (v18)
        {
          MEMORY[0x1E12BD130](v18, 0x1000C8052888210);
        }

        ++v7;
        v8 += 112;
      }

      while (v7 < *(v1 + 4) + *(v1 + 28));
      if (*(v1 + 328))
      {
LABEL_33:
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 328) = 0;
    }

    v19 = *(v1 + 104);
    if (v19)
    {
      MEMORY[0x1E12BD130](v19, 0x1000C8052888210);
    }

    *(v1 + 104) = 0;
    v20 = *(v1 + 72);
    if (v20)
    {
      MEMORY[0x1E12BD130](v20, 0x1000C8052888210);
    }

    *(v1 + 72) = 0;
    v21 = *(v1 + 80);
    if (v21)
    {
      MEMORY[0x1E12BD130](v21, 0x1000C8052888210);
    }

    *(v1 + 80) = 0;
    v22 = *(v1 + 88);
    if (v22)
    {
      MEMORY[0x1E12BD130](v22, 0x1000C8052888210);
    }

    v23 = *(v1 + 96);
    if (v23)
    {
      MEMORY[0x1E12BD130](v23, 0x1000C8052888210);
    }

    *(v1 + 96) = 0;
    v24 = *(v1 + 112);
    if (v24)
    {
      MEMORY[0x1E12BD130](v24, 0x1000C8052888210);
    }

    *(v1 + 112) = 0;
    v25 = *(v1 + 120);
    if (v25)
    {
      MEMORY[0x1E12BD130](v25, 0x1000C8052888210);
    }

    *(v1 + 120) = 0;
    v26 = *(v1 + 128);
    if (v26)
    {
      MEMORY[0x1E12BD130](v26, 0x1000C8052888210);
    }

    *(v1 + 128) = 0;
    v27 = *(v1 + 224);
    if (v27)
    {
      MEMORY[0x1E12BD130](v27, 0x1000C8052888210);
    }

    *(v1 + 224) = 0;
    v28 = *(v1 + 232);
    if (v28)
    {
      MEMORY[0x1E12BD130](v28, 0x1000C8052888210);
    }

    *(v1 + 232) = 0;
    v29 = *(v1 + 240);
    if (v29)
    {
      MEMORY[0x1E12BD130](v29, 0x1000C8052888210);
    }

    *(v1 + 240) = 0;
    v30 = *(v1 + 248);
    if (v30)
    {
      MEMORY[0x1E12BD130](v30, 0x1000C8052888210);
    }

    *(v1 + 248) = 0;
    v31 = *(v1 + 8);
    if (v31)
    {
      MEMORY[0x1E12BD130](v31, 0x1000C8052888210);
    }

    *(v1 + 8) = 0;
    v32 = *(v1 + 144);
    if (v32)
    {
      MEMORY[0x1E12BD130](v32, 0x1000C8052888210);
    }

    *(v1 + 144) = 0;
    v33 = *(v1 + 152);
    if (v33)
    {
      MEMORY[0x1E12BD130](v33, 0x1000C8052888210);
    }

    *(v1 + 152) = 0;
    this = *(v1 + 288);
    if (this)
    {
      this = MEMORY[0x1E12BD130](this, 0x1000C8052888210);
    }

    *(v1 + 288) = 0;
  }

  return this;
}

uint64_t Cns::init(Cns *this)
{
  if (*this)
  {
    Cns::deallocate_memory(this);
  }

  *this = 1;
  v2 = *(this + 1);
  v3 = v2 + *(this + 7);
  if (v3 < 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 4 * v3;
  }

  v5 = operator new[](v4, MEMORY[0x1E69E5398]);
  *(this + 1) = v5;
  if (!v5)
  {
    return 4294967294;
  }

  v6 = v3;
  if (v3 >= 1)
  {
    memset_pattern16(v5, &unk_1DE09EA50, 4 * (v3 - 1) + 4);
  }

  v7 = *(this + 6);
  v8 = v7 < -2 ? -1 : 4 * (v7 + 2);
  v9 = operator new[](v8, MEMORY[0x1E69E5398]);
  *(this + 14) = v9;
  if (!v9)
  {
    return 4294967294;
  }

  if (v7 >= -1)
  {
    bzero(v9, 4 * (v7 + 2));
  }

  v10 = v7 / 2;
  v11 = v7 / 2 - 1;
  *(this + 8) = v11;
  v12 = v7 / 2 - 2;
  if (v7 >= 104)
  {
    v12 = 50;
  }

  *(this + 10) = v12;
  v13 = v10 + 1;
  v14 = v7 < -3 ? -1 : 4 * v13;
  v15 = operator new[](v14, MEMORY[0x1E69E5398]);
  *(this + 29) = v15;
  if (!v15)
  {
    return 4294967294;
  }

  v16 = v15;
  v17 = v7 < 2 ? -1 : 4 * v11;
  v18 = operator new[](v17, MEMORY[0x1E69E5398]);
  *(this + 15) = v18;
  if (!v18)
  {
    return 4294967294;
  }

  v199 = v18;
  v198 = v16;
  v19 = operator new[](v17, MEMORY[0x1E69E5398]);
  *(this + 16) = v19;
  if (!v19)
  {
    return 4294967294;
  }

  v20 = v19;
  v195 = v10 - 1;
  __sz = v4;
  v21 = v7;
  v192 = v2;
  v197 = v17;
  if (v7 > -2)
  {
    v193 = v6;
    v22 = 0;
    v24 = 0;
    v23 = *(this + 4);
    v25 = 2;
    v26 = 1;
    do
    {
      v27 = v22;
      v28 = v26;
      v29 = v25 / 21.4;
      v30 = (__exp10f(v29) + -1.0) / 0.00437;
      do
      {
        v31 = v24++;
      }

      while (v30 > ((v23 * v24) / v21));
      if (v24 >= v13)
      {
        v32 = v10 + 1;
      }

      else
      {
        v32 = v24;
      }

      v20[v22++] = v32 - 1;
      v25 += 2;
      v26 = v28 + 1;
    }

    while (v31 < v10);
    *v199 = 0;
    if (v27)
    {
      v33 = v28 - 1;
      v34 = v199 + 1;
      v35 = v20;
      do
      {
        v36 = *v35++;
        *v34++ = v36 + 1;
        --v33;
      }

      while (v33);
    }

    else
    {
      LODWORD(v22) = 1;
    }

    v6 = v193;
    v17 = v197;
  }

  else
  {
    LODWORD(v22) = 0;
    *v199 = 0;
    v23 = *(this + 4);
  }

  v37 = ((1625.0 / v23) * v21);
  *(this + 9) = v22;
  *(this + 11) = v37;
  v38 = (v37 + 1);
  v39 = v37 < -1 ? -1 : 4 * v38;
  v40 = operator new[](v39, MEMORY[0x1E69E5398]);
  *(this + 30) = v40;
  if (!v40)
  {
    return 4294967294;
  }

  v41 = v40;
  if (*(this + 16))
  {
    if (v37 <= 0x7FFFFFFE && (v23 / v21) > 0.0)
    {
      v42 = 0;
      do
      {
        v43 = ((v23 / v21) * v42) / 125.0;
        v44 = vcvtps_s32_f32(v43);
        v45 = 0.35481;
        if (v44 <= 13)
        {
          v46 = vcvtms_s32_f32(v43);
          if (v44 == v46)
          {
            v45 = preemph16x128[v46];
          }

          else
          {
            v45 = preemph16x128[v46] + ((v43 - v46) * ((preemph16x128[v44] - preemph16x128[v46]) / (v44 - v46)));
          }
        }

        v40[v42++] = v45;
      }

      while (v38 != v42);
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    memset_pattern16(v40, &unk_1DE095DF0, 4 * (v37 + 1));
  }

  v47 = operator new[](v17, MEMORY[0x1E69E5398]);
  *(this + 31) = v47;
  if (!v47)
  {
    return 4294967294;
  }

  v48 = v47;
  if (v7 >= 4)
  {
    memset_pattern16(v47, &unk_1DE095DF0, 4 * (v10 - 1));
  }

  if ((v37 & 0x80000000) == 0)
  {
    do
    {
      v49 = *v41++;
      *v48++ = 1.0 / v49;
      --v38;
    }

    while (v38);
  }

  *(this + 12) = (500 / v10);
  *(this + 34) = 1055439407;
  *(this + 35) = v21 * 0.09375;
  v50 = operator new[](__sz, MEMORY[0x1E69E5398]);
  *(this + 18) = v50;
  if (!v50)
  {
    return 4294967294;
  }

  v51 = v50;
  v52 = operator new[](__sz, MEMORY[0x1E69E5398]);
  *(this + 19) = v52;
  if (!v52)
  {
    return 4294967294;
  }

  v53 = v52;
  v54 = operator new[](__sz, MEMORY[0x1E69E5398]);
  *(this + 36) = v54;
  if (!v54)
  {
    return 4294967294;
  }

  if (v6 >= 1)
  {
    v56 = v54;
    v57 = 4 * (v6 - 1);
    memset_pattern16(v51, &unk_1DE09E8B0, v57 + 4);
    memset_pattern16(v53, &unk_1DE09E8C0, v57 + 4);
    memset_pattern16(v56, &unk_1DE09E8C0, v57 + 4);
  }

  *v55.i32 = *(this + 5);
  v184 = *(this + 4);
  v185 = v55;
  v191 = (v184 / *v55.i32);
  __asm { FMOV            V2.2D, #-1.0 }

  v187 = _Q2;
  v188 = vdivq_f64(_Q2, vmulq_n_f64(xmmword_1DE09CD20, v191));
  __x = vdivq_f64(_Q2, vmulq_n_f64(xmmword_1DE09CD10, v191));
  v182 = exp(__x.f64[1]);
  v63.f64[0] = exp(__x.f64[0]);
  v63.f64[1] = v182;
  v183 = v63;
  __x.f64[0] = exp(v188.f64[1]);
  v64.f64[0] = exp(v188.f64[0]);
  v64.f64[1] = __x.f64[0];
  *(this + 10) = vcvt_hight_f32_f64(vcvt_f32_f64(v64), v183);
  *(this + 180) = 0x3600000000000000;
  *(this + 47) = 905969664;
  *(this + 48) = v21 * 0.1875;
  *(this + 64) = (((v184 * 200.0) / *v185.i32) / 1000.0);
  *(this + 65) = 1068960317;
  v65 = (((v184 * 40.0) / *v185.i32) / 1000.0);
  *(this + 68) = v65;
  v189 = vcvt_s32_f32(vdiv_f32(vdiv_f32(vmul_n_f32(0x4320000043A00000, v184), vdup_lane_s32(v185, 0)), vdup_n_s32(0x447A0000u)));
  *(this + 33) = v189;
  v66.i64[0] = v189.i32[0];
  v66.i64[1] = v189.i32[1];
  *(this + 276) = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v66), vdupq_n_s64(0x3FB999999999999AuLL)));
  *v64.f64 = vcvtd_n_f64_s32(v65, 1uLL);
  *(this + 71) = LODWORD(v64.f64[0]);
  *(this + 74) = 1050728607;
  v67 = exp(-1.0 / (v191 * 0.24));
  *(this + 75) = v67;
  v186 = vdivq_f64(v187, vmulq_n_f64(xmmword_1DE09CD30, v191));
  v187.f64[0] = exp(v186.f64[1]);
  v68.f64[0] = exp(v186.f64[0]);
  v68.f64[1] = v187.f64[0];
  *&v68.f64[0] = vcvt_f32_f64(v68);
  *(this + 19) = vzip1q_s32(v68, vdupq_lane_s32(*&v68.f64[0], 1));
  v69 = v189.i32[0];
  if (v189.i32[0] <= v189.i32[1])
  {
    v69 = v189.i32[1];
  }

  *(this + 80) = v69;
  v70 = exp(-1.0 / (v191 * 0.5));
  *(this + 49) = v70;
  *(this + 25) = 0x3840000000000000;
  v71 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
  *(this + 26) = v71;
  if (!v71)
  {
    return 4294967294;
  }

  v72 = v71;
  v71[1] = 0;
  if (*v20 <= 0)
  {
    v74 = 0;
    v73 = v22 & ~(v22 >> 31);
    while (v73 != v74)
    {
      v75 = v74 + 1;
      v76 = v20[++v74];
      if (v76 >= 1)
      {
        LODWORD(v73) = v75;
        break;
      }
    }
  }

  else
  {
    LODWORD(v73) = 0;
  }

  v77 = v73 + v195 - 1;
  v194 = v6;
  if (*v20 >= v77)
  {
    LODWORD(v79) = 0;
  }

  else
  {
    v78 = 0;
    v79 = v22 & ~(v22 >> 31);
    while (v79 != v78)
    {
      v80 = v78 + 1;
      v81 = v20[++v78];
      if (v81 >= v77)
      {
        LODWORD(v79) = v80;
        break;
      }
    }
  }

  v82 = v79 - v73 + 1;
  *(this + 54) = v82;
  v83 = v79 - v73 < -1 ? -1 : 4 * v82;
  v84 = operator new[](v83, MEMORY[0x1E69E5398]);
  *v72 = v84;
  if (!v84)
  {
    return 4294967294;
  }

  v190 = v84;
  v85 = operator new[](v83, MEMORY[0x1E69E5398]);
  v72[1] = v85;
  if (!v85)
  {
    return 4294967294;
  }

  v86 = v85;
  if (v79 >= v73)
  {
    v87 = v73 - 1;
    v88 = v190;
    v89 = v85;
    v90 = &v20[v73];
    v91 = &v199[v73];
    do
    {
      v92 = *v91++;
      v93 = v92 - 1;
      if (v92 <= 1)
      {
        v93 = 0;
      }

      *v88++ = v93;
      v94 = *v90++;
      v95 = v94 - 1;
      if (v94 <= 1)
      {
        v95 = 0;
      }

      *v89++ = v95;
      ++v87;
    }

    while (v79 > v87);
  }

  v85[v82 - 1] = v73 + v195 - 2;
  v96 = v22 < 0 ? -1 : 4 * v22;
  v200 = v96;
  v97 = operator new[](v96, MEMORY[0x1E69E5398]);
  *(this + 28) = v97;
  if (!v97)
  {
    return 4294967294;
  }

  v98 = v97;
  if (v22 >= 1)
  {
    bzero(v97, 4 * v22);
  }

  v99 = v73 + v195 - 2;
  if (((v79 - v73) & 0x80000000) == 0)
  {
    v100 = v86;
    v101 = v190;
    v102 = v82;
    do
    {
      v104 = *v100++;
      v103 = v104;
      v105 = *v101++;
      v106 = sqrtf((v103 - v105) + 1.0);
      if (v106 >= 1.4)
      {
        v106 = 1.4;
      }

      *v98++ = v106;
      --v102;
    }

    while (v102);
    v107 = 0;
    do
    {
      v108 = v190[v107];
      v109 = v86[v107];
      if (v108 <= v109)
      {
        v110 = 0;
        v111 = v109 - v108;
        v112 = (v109 - v108 + 4) & 0xFFFFFFFFFFFFFFFCLL;
        v113 = vdupq_n_s64(v111);
        v114 = (v198 + 8 + 4 * v108);
        do
        {
          v115 = vdupq_n_s64(v110);
          v116 = vmovn_s64(vcgeq_u64(v113, vorrq_s8(v115, xmmword_1DE095160)));
          if (vuzp1_s16(v116, 2).u8[0])
          {
            *(v114 - 2) = v107;
          }

          if (vuzp1_s16(v116, 2).i8[2])
          {
            *(v114 - 1) = v107;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v113, vorrq_s8(v115, xmmword_1DE095150)))).i32[1])
          {
            *v114 = v107;
            v114[1] = v107;
          }

          v110 += 4;
          v114 += 4;
        }

        while (v112 != v110);
      }

      ++v107;
    }

    while (v107 < v82);
    v99 = v86[v82 - 1];
  }

  v117 = v192;
  if (v99 < v10)
  {
    v118 = 0;
    v119 = *(v198 + 4 * (v73 + v195 - 2));
    v120 = v10 - v99;
    v121 = vdupq_n_s64(v120 - 1);
    v122 = (v198 + 4 * v99 + 8);
    do
    {
      v123 = vdupq_n_s64(v118);
      v124 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_1DE095160)));
      if (vuzp1_s16(v124, *v121.i8).u8[0])
      {
        *(v122 - 1) = v119;
      }

      if (vuzp1_s16(v124, *&v121).i8[2])
      {
        *v122 = v119;
      }

      if (vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_1DE095150)))).i32[1])
      {
        v122[1] = v119;
        v122[2] = v119;
      }

      v118 += 4;
      v122 += 4;
    }

    while (((v120 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v118);
  }

  v125 = v7 < 2 ? -1 : 8 * v195;
  v126 = operator new[](v125, MEMORY[0x1E69E5398]);
  *(this + 12) = v126;
  if (!v126)
  {
    return 4294967294;
  }

  v127 = operator new[](v197, MEMORY[0x1E69E5398]);
  *(this + 9) = v127;
  if (!v127)
  {
    return 4294967294;
  }

  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v128 = is_mul_ok(v194, 0x70uLL) ? 112 * v194 : -1;
  v129 = operator new[](v128, MEMORY[0x1E69E5398]);
  *(this + 41) = v129;
  if (!v129)
  {
    return 4294967294;
  }

  bzero(v129, 112 * v194);
  v130 = v200;
  if (v194 >= 1)
  {
    v131 = 0;
    v132 = MEMORY[0x1E69E5398];
    do
    {
      v133 = operator new[](v130, v132);
      v134 = *(this + 41);
      v135 = (v134 + 112 * v131);
      *v135 = v133;
      if (!v133)
      {
        return 4294967294;
      }

      v136 = (v134 + 112 * v131);
      v136[5] = 0;
      v136[6] = 0;
      v137 = operator new[](v130, v132);
      v136[1] = v137;
      v138 = (v136 + 1);
      if (!v137)
      {
        return 4294967294;
      }

      v139 = operator new[](v130, v132);
      v140 = v134 + 112 * v131;
      *(v140 + 56) = v139;
      v141 = (v140 + 56);
      if (!v139)
      {
        return 4294967294;
      }

      v142 = operator new[](v130, v132);
      v143 = v134 + 112 * v131;
      *(v143 + 16) = v142;
      v144 = (v143 + 16);
      if (!v142)
      {
        return 4294967294;
      }

      v135[8] = 0;
      v145 = operator new[](v130, v132);
      v146 = v132;
      v147 = v134 + 112 * v131;
      *(v147 + 24) = v145;
      v148 = (v147 + 24);
      if (!v145)
      {
        return 4294967294;
      }

      v149 = *(this + 80);
      v150 = v149 < 0 ? -1 : 4 * v149;
      v151 = operator new[](v150, v146);
      *(v134 + 112 * v131 + 32) = v151;
      if (!v151)
      {
        return 4294967294;
      }

      if (v22 >= 1)
      {
        v152 = *v135;
        v153 = *v138;
        v154 = *v141;
        v155 = *v144;
        v156 = v22;
        v157 = *v148;
        do
        {
          *v152++ = 0;
          *v153++ = *(this + 12);
          *v154++ = 966787072;
          *v155++ = 1065353216;
          *v157++ = 0;
          --v156;
        }

        while (v156);
      }

      if (v149 >= 1)
      {
        bzero(v151, 4 * v149);
      }

      v158 = v134 + 112 * v131;
      *(v158 + 72) = *(this + 6);
      *(v158 + 76) = 1065353216;
      *(v158 + 92) = 0;
      *(v158 + 84) = 0;
      *(v158 + 100) = 0x3F800000000000C8;
      ++v131;
      v117 = v192;
      v130 = v200;
      v132 = MEMORY[0x1E69E5398];
    }

    while (v131 != v194);
  }

  if (!v117)
  {
    goto LABEL_171;
  }

  v159 = *(this + 8);
  if (v159 < 0)
  {
    v160 = -1;
  }

  else
  {
    v160 = 4 * v159;
  }

  v161 = operator new[](v160, MEMORY[0x1E69E5398]);
  *(this + 10) = v161;
  if (v161)
  {
    v162 = operator new[](v160, MEMORY[0x1E69E5398]);
    *(this + 11) = v162;
    if (v162)
    {
      v163 = operator new[](__sz, MEMORY[0x1E69E5398]);
      *(this + 13) = v163;
      v201 = v163;
      if (v163)
      {
        if (v194 >= 1)
        {
          v164 = 0;
          v165 = *(this + 9);
          if (v165 < 0)
          {
            v166 = -1;
          }

          else
          {
            v166 = 4 * v165;
          }

          v167 = v165;
          v168 = MEMORY[0x1E69E5398];
          do
          {
            v169 = operator new[](v166, v168);
            v170 = *(this + 41);
            v171 = v170 + 112 * v164;
            *(v171 + 40) = v169;
            v172 = (v171 + 40);
            if (!v169)
            {
              return 4294967294;
            }

            v173 = operator new[](v166, v168);
            v174 = v170 + 112 * v164;
            *(v174 + 48) = v173;
            v175 = (v174 + 48);
            if (!v173)
            {
              return 4294967294;
            }

            v176 = operator new[](v166, v168);
            *(v170 + 112 * v164 + 64) = v176;
            if (!v176)
            {
              return 4294967294;
            }

            if (v167 >= 1)
            {
              v177 = *v172;
              v178 = *v175;
              v179 = v167;
              do
              {
                *v177++ = 0;
                *v178++ = 0;
                *v176++ = 1036831949;
                --v179;
              }

              while (v179);
            }

            v201[v164++] = 0;
          }

          while (v164 != v194);
        }

LABEL_171:
        result = 0;
        *(this + 7) = 0x3F33333339687B18;
        return result;
      }
    }
  }

  return 4294967294;
}

uint64_t Cns::process(uint64_t this, float **a2)
{
  if (!*(this + 4))
  {
    v147 = *(this + 28);
    if (v147 >= 1)
    {
      v2 = 0;
      v3 = *(this + 112);
      v4 = *(this + 44);
      v5 = *(this + 32);
      v6 = *(this + 72);
      v7 = *(this + 216);
      v8 = *(this + 328);
      v9 = *(this + 96);
      v145 = *(this + 288);
      v146 = *(this + 320);
      v144 = *(this + 52);
      v10 = v5;
      v11 = (v3 + 12);
      v142 = 8 * (v4 & ~(v4 >> 31)) + 12;
      v143 = v5 - (v4 & ~(v4 >> 31));
      v141 = (v3 + v142);
      v12 = 4 * v7;
      do
      {
        v13 = a2[v2];
        if (v4 < 1)
        {
          v21 = 0;
        }

        else
        {
          v14 = (*(this + 240) + 4);
          v15 = v13 + 3;
          v16 = v11;
          v17 = v4;
          do
          {
            *(v16 - 1) = *(v15 - 1) * *v14;
            v18 = *v14++;
            v19 = v18;
            v20 = *v15;
            v15 += 2;
            *v16 = v20 * v19;
            v16 += 2;
            --v17;
          }

          while (v17);
          v21 = v4;
        }

        if (v21 < v5)
        {
          v22 = v141;
          v23 = (v13 + v142);
          v24 = v143;
          do
          {
            *(v22 - 1) = *(v23 - 1);
            v25 = *v23;
            v23 += 2;
            *v22 = v25;
            v22 += 2;
            --v24;
          }

          while (v24);
        }

        if (v5 >= 1)
        {
          v26 = v11;
          v27 = v6;
          v28 = v5;
          do
          {
            *v27++ = fabsf(*(v26 - 1)) + fabsf(*v26);
            v26 += 2;
            --v28;
          }

          while (v28);
        }

        if (v7 >= 1)
        {
          v29 = 0;
          v30 = *(this + 208);
          v31 = *v30;
          v32 = v30[1];
          do
          {
            v33 = *(v31 + 4 * v29);
            v34 = *(v32 + 4 * v29);
            if (v33 <= v34)
            {
              v36 = v34 + 1;
              v37 = v36 - v33;
              v38 = &v6[v33];
              v39 = 0.0;
              do
              {
                v40 = *v38++;
                v39 = v39 + v40;
                --v37;
              }

              while (v37);
              v35 = v39 / (v36 - v33);
            }

            else
            {
              v35 = NAN;
            }

            v6[v29++] = v35;
          }

          while (v29 != v7);
          v41 = *(v8 + 112 * v2);
          v42 = *(this + 180);
          v43 = v6;
          v44 = v7;
          do
          {
            v45 = *v43++;
            v46 = v45 + (*(this + 160 + 4 * (v45 <= *v41)) * (*v41 - v45));
            if (v46 <= v42)
            {
              v46 = v42;
            }

            *v41++ = v46;
            --v44;
          }

          while (v44);
        }

        v47 = v8 + 112 * v2;
        if (*(v47 + 88) < *(this + 280))
        {
          *(v47 + 100) = *(this + 256);
        }

        if (v7 <= 0)
        {
          v50 = *v47;
          *(v8 + 112 * v2 + 96) = 0.0 / v5;
          v59 = 0.0 / v5;
        }

        else
        {
          v48 = 0;
          v49 = *(v47 + 24);
          v50 = *v47;
          v51 = 0.0;
          do
          {
            v52 = *(v49 + v48);
            v53 = v50[v48 / 4];
            if (v52 <= v53)
            {
              v54 = v50[v48 / 4];
            }

            else
            {
              v54 = *(v49 + v48);
            }

            v55 = fmaxf(v54, 0.000030518);
            if (v52 >= v53)
            {
              v52 = v50[v48 / 4];
            }

            v51 = v51 + ((v55 / fmaxf(v52, 0.000030518)) * (*(*(*(this + 208) + 8) + v48) - *(**(this + 208) + v48) + 1));
            v48 += 4;
          }

          while (v12 != v48);
          v56 = 0;
          *(v8 + 112 * v2 + 96) = v51 / v10;
          v57 = *(this + 180);
          do
          {
            v58 = v50[v56 / 4] + (*(this + 312 + 4 * (v50[v56 / 4] <= *(v49 + v56))) * (*(v49 + v56) - v50[v56 / 4]));
            if (v58 <= v57)
            {
              v58 = v57;
            }

            *(v49 + v56) = v58;
            v56 += 4;
          }

          while (v12 != v56);
          v59 = *(v47 + 96);
        }

        if (v59 <= *(this + 260))
        {
          v61 = *(v47 + 100);
          if (v61)
          {
            if (*(v47 + 92) <= *(this + 284))
            {
              v60 = 1;
            }

            else
            {
              v62 = __OFSUB__(v61, 1);
              v63 = v61 - 1;
              if ((v63 < 0) ^ v62 | (v63 == 0))
              {
                v60 = 0;
              }

              else
              {
                v60 = v63;
              }

              *(v8 + 112 * v2 + 100) = v60;
            }
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v60 = *(this + 256);
          *(v47 + 100) = v60;
        }

        if (v146 > 1)
        {
          v64 = (*(v8 + 112 * v2 + 32) + 4 * v146 - 4);
          v65 = v146 + 1;
          v66 = v64;
          do
          {
            v67 = *--v66;
            *v64 = v67;
            --v65;
            v64 = v66;
          }

          while (v65 > 2);
        }

        if (v7 < 1)
        {
          v76 = 0.0;
        }

        else
        {
          v68 = *(v47 + 8);
          v69 = v9;
          v70 = v7;
          do
          {
            v71 = *v50++;
            v72 = v71;
            v73 = *v68++;
            *v69++ = v72 / v73;
            --v70;
          }

          while (v70);
          v75 = **(this + 208);
          v74 = *(*(this + 208) + 8);
          v76 = 0.0;
          v77 = v9;
          v78 = v7;
          do
          {
            v79 = *v77++;
            v80 = v79;
            v82 = *v74++;
            v81 = v82;
            v83 = *v75++;
            v76 = v76 + (v80 * (v81 - v83 + 1));
            --v78;
          }

          while (v78);
        }

        v84 = *(v8 + 112 * v2 + 32);
        if (((v76 / v10) * *(v145 + 4 * v2)) <= *(this + 296))
        {
          v85 = 0.0;
        }

        else
        {
          v85 = 1.0;
        }

        *v84 = v85;
        v86 = *(v47 + 88);
        v87 = v85 + (*(this + 300) * *(v47 + 84));
        *(v47 + 84) = v87;
        *(v47 + 88) = *v84 + (*(this + 304) * v86);
        *(v47 + 92) = *v84 + (*(this + 308) * *(v47 + 92));
        if (v87 < *(this + 276) || v60 == 0)
        {
          *(v8 + 112 * v2 + 104) = 0;
        }

        else
        {
          *(v47 + 104) = 1065353216;
        }

        v89 = v8 + 112 * v2;
        if (*(v89 + 104))
        {
          v90 = 1;
        }

        else
        {
          v90 = v7 < 1;
        }

        if (!v90)
        {
          v91 = *(v89 + 8);
          v92 = v6;
          v93 = v7;
          do
          {
            v94 = *v92++;
            v95 = v94;
            v96 = *v91 - v94;
            if (v94 <= *v91)
            {
              v97 = 172;
            }

            else
            {
              v97 = 168;
            }

            v98 = v95 + (*(this + v97) * v96);
            *v91 = v98;
            if (v98 <= *(this + 184))
            {
              v98 = *(this + 184);
            }

            *v91++ = v98;
            --v93;
          }

          while (v93);
        }

        v99 = *v47;
        v100 = v8 + 112 * v2;
        *(v100 + 72) = 0;
        v101 = (v100 + 72);
        if (v7 < 1)
        {
          v126 = 0.0;
        }

        else
        {
          v102 = v4;
          v103 = v11;
          v104 = v9;
          v105 = *(this + 224);
          v106 = v8 + 112 * v2;
          v107 = *(v106 + 8);
          v108 = *(v106 + 16);
          v109 = *(this + 208);
          v110 = *v109;
          v111 = v109[1];
          v113 = *(this + 144);
          v112 = *(this + 152);
          v114 = v7;
          do
          {
            v115 = *v99++;
            v116 = v115;
            v117 = *v105++;
            v118 = v116 * (*(v112 + 4 * v2) * v117);
            v119 = *v107++;
            v120 = v119;
            if (v119 <= *(this + 188))
            {
              v120 = *(this + 188);
            }

            v121 = v118 / v120;
            if (v121 > 1.0)
            {
              v121 = 1.0;
            }

            v123 = *v111++;
            v122 = v123;
            v124 = *v110++;
            *v108 = v121;
            *v101 = *v101 + (v121 * (v122 - v124 + 1));
            v125 = *v108;
            if (*v108 <= *(v113 + 4 * v2))
            {
              v125 = *(v113 + 4 * v2);
            }

            if (v125 > 1.0)
            {
              v125 = 1.0;
            }

            *v108++ = v125;
            --v114;
          }

          while (v114);
          v126 = *v101;
          v9 = v104;
          v11 = v103;
          v4 = v102;
        }

        v127 = *(v47 + 76) * v126;
        *(v47 + 72) = v127;
        v128 = 1.0;
        if (v127 <= *(this + 140))
        {
          v128 = *(this + 136);
        }

        *(v47 + 76) = v128;
        if (v7 >= 1)
        {
          v129 = *(v8 + 112 * v2 + 16);
          v130 = 4 * (v7 - 1);
          v131 = *(v129 + v130);
          do
          {
            v131 = *(v129 + v130) + ((v131 - *(v129 + v130)) * 0.5);
            *(v129 + v130) = v131;
            v130 -= 4;
          }

          while (v130 != -4);
        }

        if (!v144 && !*(v89 + 104) && v7 >= 1)
        {
          v133 = *(v89 + 56);
          v134 = v6;
          v135 = v7;
          do
          {
            v136 = *v134++;
            v137 = v136;
            v138 = *v133 - v136;
            if (v136 <= *v133)
            {
              v139 = 172;
            }

            else
            {
              v139 = 168;
            }

            v140 = v137 + (*(this + v139) * v138);
            *v133 = v140;
            if (v140 <= *(this + 184))
            {
              v140 = *(this + 184);
            }

            *v133++ = v140;
            --v135;
          }

          while (v135);
        }

        ++v2;
      }

      while (v2 != v147);
    }
  }

  return this;
}