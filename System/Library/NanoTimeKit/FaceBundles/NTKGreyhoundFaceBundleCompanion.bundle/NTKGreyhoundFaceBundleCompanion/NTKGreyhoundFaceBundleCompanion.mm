id sub_1028(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_193D0);
  if (qword_193D8)
  {
    v3 = qword_193D8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_193E0))
  {
    qword_193D8 = v2;
    qword_193E0 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_193C8;
    qword_193C8 = v5;
  }

  v7 = qword_193C8;
  os_unfair_lock_unlock(&unk_193D0);

  return v7;
}

void sub_1150(id a1)
{
  v3[0] = &off_156A8;
  v3[1] = &off_156C0;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_156D8;
  v4[2] = NTKFaceBundleStyle3;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_193E8;
  qword_193E8 = v1;
}

void sub_13A8(id a1)
{
  v7[0] = &off_16068;
  v7[1] = &off_16080;
  v8[0] = &off_16050;
  v1 = [NSArray arrayWithObjects:v7 count:2];
  v8[1] = v1;
  v8[2] = &off_16098;
  v2 = [NSArray arrayWithObjects:v8 count:3];
  v9[0] = v2;
  v6[0] = &off_160B0;
  v6[1] = &off_160C8;
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v9[1] = v3;
  v9[2] = &off_160E0;
  v9[3] = &off_160F8;
  v9[4] = &off_16110;
  v4 = [NSArray arrayWithObjects:v9 count:5];
  v5 = qword_193F8;
  qword_193F8 = v4;
}

void sub_1608(id a1)
{
  v1 = +[NTKGreyhoundFontLoader nyNumeralsBlackFontDescriptor];
  v14[0] = v1;
  v2 = +[NTKGreyhoundFontLoader nyNumeralsHeavyFontDescriptor];
  v14[1] = v2;
  v3 = [NSArray arrayWithObjects:v14 count:2];
  v15[0] = v3;
  v4 = +[NTKGreyhoundFontLoader sfNumeralsBlackFontDescriptor];
  v13[0] = v4;
  v5 = +[NTKGreyhoundFontLoader sfNumeralsHeavyFontDescriptor];
  v13[1] = v5;
  v6 = [NSArray arrayWithObjects:v13 count:2];
  v15[1] = v6;
  v7 = +[NTKGreyhoundFontLoader tokyoBlackFontDescriptor];
  v8 = +[NTKGreyhoundFontLoader tokyoHeavyFontDescriptor];
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v15[2] = v9;
  v10 = [NSArray arrayWithObjects:v15 count:3];
  v11 = qword_19408;
  qword_19408 = v10;
}

uint64_t sub_1794(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_1A504);
  if (qword_1A508)
  {
    v3 = qword_1A508 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1A510))
  {
    v5 = byte_1A500;
  }

  else
  {
    qword_1A508 = v2;
    qword_1A510 = [v2 version];
    sub_183C(qword_1A510, v2);
    v5 = 1;
    byte_1A500 = 1;
  }

  os_unfair_lock_unlock(&stru_1A504);

  return v5;
}

void sub_183C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [v3 scaledPoint:{37.0, 0.0}];
  qword_19508 = v4;
  unk_19510 = v5;
  [v3 scaledPoint:0.5];
  qword_19518 = v6;
  unk_19520 = v7;
  [v3 scaledPoint:?];
  qword_19528 = v8;
  unk_19530 = v9;
  [v3 scaledPoint:2.5];
  qword_19538 = v10;
  unk_19540 = v11;
  [v3 scaledPoint:{37.0, -3.0}];
  qword_19548 = v12;
  unk_19550 = v13;
  [v3 scaledPoint:{-2.0, 58.5}];
  qword_19558 = v14;
  unk_19560 = v15;
  [v3 scaledPoint:{-36.0, -3.0}];
  qword_19568 = v16;
  unk_19570 = v17;
  [v3 scaledPoint:0.5];
  qword_19578 = v18;
  unk_19580 = v19;
  [v3 scaledPoint:?];
  qword_19588 = v20;
  unk_19590 = v21;
  [v3 scaledPoint:-7.5];
  qword_19598 = v22;
  unk_195A0 = v23;
  [v3 scaledPoint:?];
  qword_195A8 = v24;
  unk_195B0 = v25;
  [v3 scaledPoint:{-2.5, -48.5}];
  qword_195B8 = v26;
  unk_195C0 = v27;
  [v3 scaledPoint:65.5];
  qword_195C8 = v28;
  unk_195D0 = v29;
  [v3 scaledPoint:{61.5, -37.0}];
  qword_195D8 = v30;
  unk_195E0 = v31;
  [v3 scaledPoint:{56.5, 0.5}];
  qword_195E8 = v32;
  unk_195F0 = v33;
  [v3 scaledPoint:{52.0, 38.0}];
  qword_195F8 = v34;
  unk_19600 = v35;
  [v3 scaledPoint:58.5];
  qword_19608 = v36;
  unk_19610 = v37;
  [v3 scaledPoint:{3.5, 75.0}];
  qword_19618 = v38;
  unk_19620 = v39;
  [v3 scaledPoint:?];
  qword_19628 = v40;
  unk_19630 = v41;
  [v3 scaledPoint:?];
  qword_19638 = v42;
  unk_19640 = v43;
  [v3 scaledPoint:{-54.5, 0.5}];
  qword_19648 = v44;
  unk_19650 = v45;
  [v3 scaledPoint:?];
  qword_19658 = v46;
  unk_19660 = v47;
  [v3 scaledPoint:{-54.5, -74.0}];
  qword_19668 = v48;
  unk_19670 = v49;
  [v3 scaledPoint:{4.5, -74.0}];
  qword_19678 = v50;
  unk_19680 = v51;
  [v3 scaledPoint:61.5];
  qword_19688 = v52;
  unk_19690 = v53;
  [v3 scaledPoint:{65.5, -38.5}];
  qword_19698 = v54;
  unk_196A0 = v55;
  [v3 scaledPoint:?];
  qword_196A8 = v56;
  unk_196B0 = v57;
  [v3 scaledPoint:?];
  qword_196B8 = v58;
  unk_196C0 = v59;
  [v3 scaledPoint:?];
  qword_196C8 = v60;
  unk_196D0 = v61;
  [v3 scaledPoint:{4.0, 74.0}];
  qword_196D8 = v62;
  unk_196E0 = v63;
  [v3 scaledPoint:{-48.0, 74.0}];
  qword_196E8 = v64;
  unk_196F0 = v65;
  [v3 scaledPoint:-48.5];
  qword_196F8 = v66;
  unk_19700 = v67;
  [v3 scaledPoint:?];
  qword_19708 = v68;
  qword_19710 = v69;
  [v3 scaledPoint:?];
  qword_19718 = v70;
  qword_19720 = v71;
  [v3 scaledPoint:{-53.0, -75.5}];
  qword_19728 = v72;
  qword_19730 = v73;
  [v3 scaledPoint:{4.5, -75.5}];
  qword_19738 = v74;
  qword_19740 = v75;
  [v3 scaledPoint:60.0];
  qword_19748 = v76;
  qword_19750 = v77;
  [v3 scaledPoint:63.5];
  qword_19758 = v78;
  qword_19760 = v79;
  [v3 scaledPoint:{60.0, 5.0}];
  qword_19768 = v80;
  qword_19770 = v81;
  [v3 scaledPoint:{56.5, 42.0}];
  qword_19778 = v82;
  qword_19780 = v83;
  [v3 scaledPoint:{56.5, 79.5}];
  qword_19788 = v84;
  qword_19790 = v85;
  [v3 scaledPoint:{-2.5, 79.0}];
  qword_19798 = v86;
  qword_197A0 = v87;
  [v3 scaledPoint:{-53.0, 79.0}];
  qword_197A8 = v88;
  qword_197B0 = v89;
  [v3 scaledPoint:{-53.5, 42.0}];
  qword_197B8 = v90;
  qword_197C0 = v91;
  [v3 scaledPoint:{-64.5, 4.5}];
  qword_197C8 = v92;
  qword_197D0 = v93;
  [v3 scaledPoint:-60.0];
  qword_197D8 = v94;
  qword_197E0 = v95;
  [v3 scaledPoint:{-52.5, -70.0}];
  qword_197E8 = v96;
  qword_197F0 = v97;
  [v3 scaledPoint:{1.0, -70.0}];
  qword_197F8 = v98;
  qword_19800 = v99;
  [v3 scaledPoint:52.5];
  qword_19808 = v100;
  qword_19810 = v101;
  [v3 scaledPoint:{2.5, 52.5}];
  qword_19818 = v102;
  qword_19820 = v103;
  [v3 scaledPoint:?];
  qword_19828 = v104;
  qword_19830 = v105;
  [v3 scaledPoint:{0.0, -53.5}];
  qword_19838 = v106;
  qword_19840 = v107;
  [v3 scaledPoint:{47.0, 4.5}];
  qword_19848 = v108;
  qword_19850 = v109;
  [v3 scaledPoint:-0.5];
  qword_19858 = v110;
  qword_19860 = v111;
  [v3 scaledPoint:{-41.5, 4.0}];
  qword_19868 = v112;
  qword_19870 = v113;
  [v3 scaledPoint:-4.0];
  qword_19878 = v114;
  qword_19880 = v115;
  [v3 scaledPoint:{49.0, 12.5}];
  qword_19888 = v116;
  qword_19890 = v117;
  [v3 scaledPoint:{1.0, 72.0}];
  qword_19898 = v118;
  qword_198A0 = v119;
  [v3 scaledPoint:{-47.5, 12.5}];
  qword_198A8 = v120;
  qword_198B0 = v121;
  [v3 scaledPoint:-15.0];
  qword_198B8 = v122;
  qword_198C0 = v123;
  [v3 scaledPoint:?];
  qword_198C8 = v124;
  qword_198D0 = v125;
  [v3 scaledPoint:{63.5, -39.5}];
  qword_198D8 = v126;
  qword_198E0 = v127;
  [v3 scaledPoint:?];
  qword_198E8 = v128;
  qword_198F0 = v129;
  [v3 scaledPoint:{61.0, 37.5}];
  qword_198F8 = v130;
  qword_19900 = v131;
  [v3 scaledPoint:49.0];
  qword_19908 = v132;
  qword_19910 = v133;
  [v3 scaledPoint:0.5];
  qword_19918 = v134;
  qword_19920 = v135;
  [v3 scaledPoint:{-48.5, 75.5}];
  qword_19928 = v136;
  qword_19930 = v137;
  [v3 scaledPoint:{-61.5, 37.5}];
  qword_19938 = v138;
  qword_19940 = v139;
  [v3 scaledPoint:{-61.0, -1.5}];
  qword_19948 = v140;
  qword_19950 = v141;
  [v3 scaledPoint:{-54.5, -39.5}];
  qword_19958 = v142;
  qword_19960 = v143;
  [v3 scaledPoint:?];
  qword_19968 = v144;
  qword_19970 = v145;
  [v3 scaledPoint:{0.5, -77.5}];
  qword_19978 = v146;
  qword_19980 = v147;
  [v3 scaledPoint:49.0];
  qword_19988 = v148;
  qword_19990 = v149;
  [v3 scaledPoint:{62.5, -40.0}];
  qword_19998 = v150;
  qword_199A0 = v151;
  [v3 scaledPoint:{62.5, -2.0}];
  qword_199A8 = v152;
  qword_199B0 = v153;
  [v3 scaledPoint:{61.0, 36.5}];
  qword_199B8 = v154;
  qword_199C0 = v155;
  [v3 scaledPoint:?];
  qword_199C8 = v156;
  qword_199D0 = v157;
  [v3 scaledPoint:0.5];
  qword_199D8 = v158;
  qword_199E0 = v159;
  [v3 scaledPoint:{-47.5, 75.0}];
  qword_199E8 = v160;
  qword_199F0 = v161;
  [v3 scaledPoint:{-61.5, 36.5}];
  qword_199F8 = v162;
  qword_19A00 = v163;
  [v3 scaledPoint:{-62.0, -2.0}];
  qword_19A08 = v164;
  qword_19A10 = v165;
  [v3 scaledPoint:{-55.5, -40.0}];
  qword_19A18 = v166;
  qword_19A20 = v167;
  [v3 scaledPoint:{-49.0, -78.5}];
  qword_19A28 = v168;
  qword_19A30 = v169;
  [v3 scaledPoint:{1.0, -78.5}];
  qword_19A38 = v170;
  qword_19A40 = v171;
  [v3 scaledPoint:{49.0, -70.0}];
  qword_19A48 = v172;
  qword_19A50 = v173;
  [v3 scaledPoint:{62.5, -33.0}];
  qword_19A58 = v174;
  qword_19A60 = v175;
  [v3 scaledPoint:{63.0, 4.5}];
  qword_19A68 = v176;
  qword_19A70 = v177;
  [v3 scaledPoint:{63.0, 42.0}];
  qword_19A78 = v178;
  qword_19A80 = v179;
  [v3 scaledPoint:{53.5, 79.0}];
  qword_19A88 = v180;
  qword_19A90 = v181;
  [v3 scaledPoint:0.5];
  qword_19A98 = v182;
  qword_19AA0 = v183;
  [v3 scaledPoint:?];
  qword_19AA8 = v184;
  qword_19AB0 = v185;
  [v3 scaledPoint:-62.5];
  qword_19AB8 = v186;
  qword_19AC0 = v187;
  [v3 scaledPoint:{-62.5, 4.5}];
  qword_19AC8 = v188;
  qword_19AD0 = v189;
  [v3 scaledPoint:{-64.5, -33.0}];
  qword_19AD8 = v190;
  qword_19AE0 = v191;
  [v3 scaledPoint:{-60.5, -70.0}];
  qword_19AE8 = v192;
  qword_19AF0 = v193;
  [v3 scaledPoint:{-6.0, -70.0}];
  qword_19AF8 = v194;
  qword_19B00 = v195;
  [v3 scaledPoint:{45.0, 7.5}];
  qword_19B08 = v196;
  qword_19B10 = v197;
  [v3 scaledPoint:{12.5, 54.0}];
  qword_19B18 = v198;
  qword_19B20 = v199;
  [v3 scaledPoint:{-45.5, 7.5}];
  qword_19B28 = v200;
  qword_19B30 = v201;
  [v3 scaledPoint:{-5.0, -54.5}];
  qword_19B38 = v202;
  qword_19B40 = v203;
  [v3 scaledPoint:{44.0, 8.0}];
  qword_19B48 = v204;
  qword_19B50 = v205;
  [v3 scaledPoint:{1.0, 52.5}];
  qword_19B58 = v206;
  qword_19B60 = v207;
  [v3 scaledPoint:{-49.5, 8.0}];
  qword_19B68 = v208;
  qword_19B70 = v209;
  [v3 scaledPoint:{-5.5, -60.5}];
  qword_19B78 = v210;
  qword_19B80 = v211;
  [v3 scaledPoint:{49.0, 11.5}];
  qword_19B88 = v212;
  qword_19B90 = v213;
  [v3 scaledPoint:{0.5, 72.0}];
  qword_19B98 = v214;
  qword_19BA0 = v215;
  [v3 scaledPoint:{-47.5, 12.5}];
  qword_19BA8 = v216;
  qword_19BB0 = v217;
  [v3 scaledPoint:{0.0, -49.0}];
  qword_19BB8 = v218;
  qword_19BC0 = v219;
  [v3 scaledPoint:{47.5, -77.5}];
  qword_19BC8 = v220;
  qword_19BD0 = v221;
  [v3 scaledPoint:{61.5, -39.5}];
  qword_19BD8 = v222;
  qword_19BE0 = v223;
  [v3 scaledPoint:{62.0, -1.5}];
  qword_19BE8 = v224;
  qword_19BF0 = v225;
  [v3 scaledPoint:{61.0, 37.5}];
  qword_19BF8 = v226;
  qword_19C00 = v227;
  [v3 scaledPoint:{47.5, 75.5}];
  qword_19C08 = v228;
  qword_19C10 = v229;
  [v3 scaledPoint:{1.0, 76.5}];
  qword_19C18 = v230;
  qword_19C20 = v231;
  [v3 scaledPoint:{-47.5, 75.5}];
  qword_19C28 = v232;
  qword_19C30 = v233;
  [v3 scaledPoint:{-61.5, 37.5}];
  qword_19C38 = v234;
  qword_19C40 = v235;
  [v3 scaledPoint:?];
  qword_19C48 = v236;
  qword_19C50 = v237;
  [v3 scaledPoint:{-59.5, -39.5}];
  qword_19C58 = v238;
  qword_19C60 = v239;
  [v3 scaledPoint:{-49.5, -78.0}];
  qword_19C68 = v240;
  qword_19C70 = v241;
  [v3 scaledPoint:{0.5, -78.0}];
  qword_19C78 = v242;
  qword_19C80 = v243;
  [v3 scaledPoint:{49.5, -78.5}];
  qword_19C88 = v244;
  qword_19C90 = v245;
  [v3 scaledPoint:{62.5, -40.0}];
  qword_19C98 = v246;
  qword_19CA0 = v247;
  [v3 scaledPoint:{60.5, -2.0}];
  qword_19CA8 = v248;
  qword_19CB0 = v249;
  [v3 scaledPoint:{62.0, 37.0}];
  qword_19CB8 = v250;
  qword_19CC0 = v251;
  [v3 scaledPoint:{49.5, 75.0}];
  qword_19CC8 = v252;
  qword_19CD0 = v253;
  [v3 scaledPoint:{0.5, 78.0}];
  qword_19CD8 = v254;
  qword_19CE0 = v255;
  [v3 scaledPoint:{-46.0, 75.0}];
  qword_19CE8 = v256;
  qword_19CF0 = v257;
  [v3 scaledPoint:{-61.5, 36.5}];
  qword_19CF8 = v258;
  qword_19D00 = v259;
  [v3 scaledPoint:{-63.0, -2.0}];
  qword_19D08 = v260;
  qword_19D10 = v261;
  [v3 scaledPoint:{-60.5, -40.0}];
  qword_19D18 = v262;
  qword_19D20 = v263;
  [v3 scaledPoint:{-51.0, -78.5}];
  qword_19D28 = v264;
  qword_19D30 = v265;
  [v3 scaledPoint:{0.5, -78.5}];
  qword_19D38 = v266;
  qword_19D40 = v267;
  [v3 scaledPoint:{55.5, -70.0}];
  qword_19D48 = v268;
  qword_19D50 = v269;
  [v3 scaledPoint:{62.5, -33.0}];
  qword_19D58 = v270;
  qword_19D60 = v271;
  [v3 scaledPoint:{62.5, 4.5}];
  qword_19D68 = v272;
  qword_19D70 = v273;
  [v3 scaledPoint:{62.0, 42.0}];
  qword_19D78 = v274;
  qword_19D80 = v275;
  [v3 scaledPoint:{53.0, 79.0}];
  qword_19D88 = v276;
  qword_19D90 = v277;
  [v3 scaledPoint:{0.0, 82.0}];
  qword_19D98 = v278;
  qword_19DA0 = v279;
  [v3 scaledPoint:{-50.5, 79.0}];
  qword_19DA8 = v280;
  qword_19DB0 = v281;
  [v3 scaledPoint:{-62.5, 41.5}];
  qword_19DB8 = v282;
  qword_19DC0 = v283;
  [v3 scaledPoint:{-63.0, 4.5}];
  qword_19DC8 = v284;
  qword_19DD0 = v285;
  [v3 scaledPoint:{-68.5, -33.0}];
  qword_19DD8 = v286;
  qword_19DE0 = v287;
  [v3 scaledPoint:{-60.0, -70.0}];
  qword_19DE8 = v288;
  qword_19DF0 = v289;
  [v3 scaledPoint:{0.0, -70.0}];
  qword_19DF8 = v290;
  qword_19E00 = v291;
  [v3 scaledPoint:{44.5, 21.5}];
  qword_19E08 = v292;
  qword_19E10 = v293;
  [v3 scaledPoint:{4.0, 50.5}];
  qword_19E18 = v294;
  qword_19E20 = v295;
  [v3 scaledPoint:{-46.0, 21.0}];
  qword_19E28 = v296;
  qword_19E30 = v297;
  [v3 scaledPoint:{-5.0, -54.5}];
  qword_19E38 = v298;
  qword_19E40 = v299;
  [v3 scaledPoint:{50.5, 12.5}];
  qword_19E48 = v300;
  qword_19E50 = v301;
  [v3 scaledPoint:{1.0, 56.0}];
  qword_19E58 = v302;
  qword_19E60 = v303;
  [v3 scaledPoint:{-50.0, 12.5}];
  qword_19E68 = v304;
  qword_19E70 = v305;
  [v3 scaledPoint:{1.5, -57.0}];
  qword_19E78 = v306;
  qword_19E80 = v307;
  [v3 scaledPoint:{49.5, 14.5}];
  qword_19E88 = v308;
  qword_19E90 = v309;
  [v3 scaledPoint:{0.5, 73.0}];
  qword_19E98 = v310;
  qword_19EA0 = v311;
  [v3 scaledPoint:{-47.5, 13.5}];
  qword_19EA8 = v312;
  qword_19EB0 = v313;
  [v3 scaledPoint:{-3.0, -49.0}];
  qword_19EB8 = v314;
  qword_19EC0 = v315;
  [v3 scaledPoint:{47.5, -77.5}];
  qword_19EC8 = v316;
  qword_19ED0 = v317;
  [v3 scaledPoint:{61.5, -39.5}];
  qword_19ED8 = v318;
  qword_19EE0 = v319;
  [v3 scaledPoint:{62.5, -1.0}];
  qword_19EE8 = v320;
  qword_19EF0 = v321;
  [v3 scaledPoint:{62.0, 37.5}];
  qword_19EF8 = v322;
  qword_19F00 = v323;
  [v3 scaledPoint:?];
  qword_19F08 = v324;
  qword_19F10 = v325;
  [v3 scaledPoint:{1.0, 76.5}];
  qword_19F18 = v326;
  qword_19F20 = v327;
  [v3 scaledPoint:{-47.0, 75.5}];
  qword_19F28 = v328;
  qword_19F30 = v329;
  [v3 scaledPoint:{-62.5, 37.0}];
  qword_19F38 = v330;
  qword_19F40 = v331;
  [v3 scaledPoint:{-63.0, -1.0}];
  qword_19F48 = v332;
  qword_19F50 = v333;
  [v3 scaledPoint:?];
  qword_19F58 = v334;
  qword_19F60 = v335;
  [v3 scaledPoint:{-46.0, -78.0}];
  qword_19F68 = v336;
  qword_19F70 = v337;
  [v3 scaledPoint:{1.0, -78.0}];
  qword_19F78 = v338;
  qword_19F80 = v339;
  [v3 scaledPoint:?];
  qword_19F88 = v340;
  qword_19F90 = v341;
  [v3 scaledPoint:{62.0, -40.5}];
  qword_19F98 = v342;
  qword_19FA0 = v343;
  [v3 scaledPoint:{62.5, -2.0}];
  qword_19FA8 = v344;
  qword_19FB0 = v345;
  [v3 scaledPoint:{62.0, 37.0}];
  qword_19FB8 = v346;
  qword_19FC0 = v347;
  [v3 scaledPoint:{47.5, 75.0}];
  qword_19FC8 = v348;
  qword_19FD0 = v349;
  [v3 scaledPoint:{0.5, 78.0}];
  qword_19FD8 = v350;
  qword_19FE0 = v351;
  [v3 scaledPoint:{-44.5, 75.0}];
  qword_19FE8 = v352;
  qword_19FF0 = v353;
  [v3 scaledPoint:{-62.5, 36.5}];
  qword_19FF8 = v354;
  qword_1A000 = v355;
  [v3 scaledPoint:{-63.0, -2.0}];
  qword_1A008 = v356;
  qword_1A010 = v357;
  [v3 scaledPoint:{-53.5, -40.5}];
  qword_1A018 = v358;
  qword_1A020 = v359;
  [v3 scaledPoint:{-46.5, -78.5}];
  qword_1A028 = v360;
  qword_1A030 = v361;
  [v3 scaledPoint:{1.5, -79.0}];
  qword_1A038 = v362;
  qword_1A040 = v363;
  [v3 scaledPoint:{53.0, -70.0}];
  qword_1A048 = v364;
  qword_1A050 = v365;
  [v3 scaledPoint:{62.5, -32.5}];
  qword_1A058 = v366;
  qword_1A060 = v367;
  [v3 scaledPoint:{62.5, 4.5}];
  qword_1A068 = v368;
  qword_1A070 = v369;
  [v3 scaledPoint:{62.0, 41.5}];
  qword_1A078 = v370;
  qword_1A080 = v371;
  [v3 scaledPoint:{52.5, 79.0}];
  qword_1A088 = v372;
  qword_1A090 = v373;
  [v3 scaledPoint:{0.5, 82.0}];
  qword_1A098 = v374;
  qword_1A0A0 = v375;
  [v3 scaledPoint:{-50.5, 79.0}];
  qword_1A0A8 = v376;
  qword_1A0B0 = v377;
  [v3 scaledPoint:{-62.5, 41.5}];
  qword_1A0B8 = v378;
  qword_1A0C0 = v379;
  [v3 scaledPoint:{-63.0, 4.5}];
  qword_1A0C8 = v380;
  qword_1A0D0 = v381;
  [v3 scaledPoint:{-55.0, -32.0}];
  qword_1A0D8 = v382;
  qword_1A0E0 = v383;
  [v3 scaledPoint:{-54.5, -70.0}];
  qword_1A0E8 = v384;
  qword_1A0F0 = v385;
  [v3 scaledPoint:{-2.5, -70.0}];
  qword_1A0F8 = v386;
  qword_1A100 = v387;
  [v3 scaledPoint:{40.5, 7.5}];
  qword_1A108 = v388;
  qword_1A110 = v389;
  [v3 scaledPoint:{1.0, 66.0}];
  qword_1A118 = v390;
  qword_1A120 = v391;
  [v3 scaledPoint:{-41.0, 7.0}];
  qword_1A128 = v392;
  qword_1A130 = v393;
  [v3 scaledPoint:{1.0, -61.5}];
  qword_1A138 = v394;
  qword_1A140 = v395;
  [v3 scaledPoint:{42.5, 6.0}];
  qword_1A148 = v396;
  qword_1A150 = v397;
  [v3 scaledPoint:{0.5, 61.5}];
  qword_1A158 = v398;
  qword_1A160 = v399;
  [v3 scaledPoint:{-40.5, 6.0}];
  qword_1A168 = v400;
  qword_1A170 = v401;
  [v3 scaledPoint:{0.5, -65.0}];
  qword_1A178 = v402;
  qword_1A180 = v403;
  [v3 scaledPoint:{48.5, 17.5}];
  qword_1A188 = v404;
  qword_1A190 = v405;
  [v3 scaledPoint:{0.0, 74.0}];
  qword_1A198 = v406;
  qword_1A1A0 = v407;
  [v3 scaledPoint:{-40.5, 18.0}];
  qword_1A1A8 = v408;
  qword_1A1B0 = v409;
  [v3 scaledPoint:{0.5, -49.5}];
  qword_1A1B8 = v410;
  qword_1A1C0 = v411;
  [v3 scaledPoint:{49.5, -74.0}];
  qword_1A1C8 = v412;
  qword_1A1D0 = v413;
  [v3 scaledPoint:{57.5, -40.0}];
  qword_1A1D8 = v414;
  qword_1A1E0 = v415;
  [v3 scaledPoint:{57.5, -1.5}];
  qword_1A1E8 = v416;
  qword_1A1F0 = v417;
  [v3 scaledPoint:{57.5, 37.5}];
  qword_1A1F8 = v418;
  qword_1A200 = v419;
  [v3 scaledPoint:{48.0, 75.5}];
  qword_1A208 = v420;
  qword_1A210 = v421;
  [v3 scaledPoint:{1.0, 75.5}];
  qword_1A218 = v422;
  qword_1A220 = v423;
  [v3 scaledPoint:{-47.0, 75.5}];
  qword_1A228 = v424;
  qword_1A230 = v425;
  [v3 scaledPoint:{-57.5, 37.5}];
  qword_1A238 = v426;
  qword_1A240 = v427;
  [v3 scaledPoint:{-57.5, -1.5}];
  qword_1A248 = v428;
  qword_1A250 = v429;
  [v3 scaledPoint:{-57.5, -36.5}];
  qword_1A258 = v430;
  qword_1A260 = v431;
  [v3 scaledPoint:{-47.5, -75.5}];
  qword_1A268 = v432;
  qword_1A270 = v433;
  [v3 scaledPoint:{0.5, -74.5}];
  qword_1A278 = v434;
  qword_1A280 = v435;
  [v3 scaledPoint:{45.5, -74.5}];
  qword_1A288 = v436;
  qword_1A290 = v437;
  [v3 scaledPoint:{58.0, -37.0}];
  qword_1A298 = v438;
  qword_1A2A0 = v439;
  [v3 scaledPoint:{59.0, -2.0}];
  qword_1A2A8 = v440;
  qword_1A2B0 = v441;
  [v3 scaledPoint:{58.0, 37.5}];
  qword_1A2B8 = v442;
  qword_1A2C0 = v443;
  [v3 scaledPoint:{45.5, 74.5}];
  qword_1A2C8 = v444;
  qword_1A2D0 = v445;
  [v3 scaledPoint:{-0.5, 74.5}];
  qword_1A2D8 = v446;
  qword_1A2E0 = v447;
  [v3 scaledPoint:{-45.5, 74.5}];
  qword_1A2E8 = v448;
  qword_1A2F0 = v449;
  [v3 scaledPoint:{-59.0, 37.5}];
  qword_1A2F8 = v450;
  qword_1A300 = v451;
  [v3 scaledPoint:{-59.0, -2.0}];
  qword_1A308 = v452;
  qword_1A310 = v453;
  [v3 scaledPoint:{-59.0, -37.5}];
  qword_1A318 = v454;
  qword_1A320 = v455;
  [v3 scaledPoint:{-45.5, -79.0}];
  qword_1A328 = v456;
  qword_1A330 = v457;
  [v3 scaledPoint:{0.0, -78.5}];
  qword_1A338 = v458;
  qword_1A340 = v459;
  [v3 scaledPoint:{46.5, -71.5}];
  qword_1A348 = v460;
  qword_1A350 = v461;
  [v3 scaledPoint:{57.0, -32.5}];
  qword_1A358 = v462;
  qword_1A360 = v463;
  [v3 scaledPoint:{57.0, 2.5}];
  qword_1A368 = v464;
  qword_1A370 = v465;
  [v3 scaledPoint:{57.0, 41.5}];
  qword_1A378 = v466;
  qword_1A380 = v467;
  [v3 scaledPoint:{46.0, 79.0}];
  qword_1A388 = v468;
  qword_1A390 = v469;
  [v3 scaledPoint:{0.0, 79.0}];
  qword_1A398 = v470;
  qword_1A3A0 = v471;
  [v3 scaledPoint:{-46.5, 79.0}];
  qword_1A3A8 = v472;
  qword_1A3B0 = v473;
  [v3 scaledPoint:{-59.0, 41.5}];
  qword_1A3B8 = v474;
  qword_1A3C0 = v475;
  [v3 scaledPoint:{-59.0, 2.5}];
  qword_1A3C8 = v476;
  qword_1A3D0 = v477;
  [v3 scaledPoint:{-59.0, -33.0}];
  qword_1A3D8 = v478;
  qword_1A3E0 = v479;
  [v3 scaledPoint:{-46.5, -71.5}];
  qword_1A3E8 = v480;
  qword_1A3F0 = v481;
  [v3 scaledPoint:{0.0, -71.5}];
  qword_1A3F8 = v482;
  qword_1A400 = v483;
  v698 = v2;
  [v2 screenBounds];
  CLKRectGetCenter();
  for (i = 0; i != 8; i += 2)
  {
    v485 = &qword_19418[i];
    v486 = qword_19418[i + 30];
    v487 = qword_19418[i + 31];
    CLKAddPoints();
    v485[30] = v488;
    v485[31] = v489;
    v490 = qword_19418[i + 38];
    v491 = qword_19418[i + 39];
    CLKAddPoints();
    v485[38] = v492;
    v485[39] = v493;
    v494 = qword_19418[i + 46];
    v495 = qword_19418[i + 47];
    CLKAddPoints();
    v485[46] = v496;
    v485[47] = v497;
    v498 = qword_19418[i + 126];
    v499 = qword_19418[i + 127];
    CLKAddPoints();
    v485[126] = v500;
    v485[127] = v501;
    v502 = qword_19418[i + 134];
    v503 = qword_19418[i + 135];
    CLKAddPoints();
    v485[134] = v504;
    v485[135] = v505;
    v506 = qword_19418[i + 142];
    v507 = qword_19418[i + 143];
    CLKAddPoints();
    v485[142] = v508;
    v485[143] = v509;
    v510 = qword_19418[i + 222];
    v511 = qword_19418[i + 223];
    CLKAddPoints();
    v485[222] = v512;
    v485[223] = v513;
    v514 = qword_19418[i + 230];
    v515 = qword_19418[i + 231];
    CLKAddPoints();
    v485[230] = v516;
    v485[231] = v517;
    v518 = qword_19418[i + 238];
    v519 = qword_19418[i + 239];
    CLKAddPoints();
    v485[238] = v520;
    v485[239] = v521;
    v522 = qword_19418[i + 318];
    v523 = qword_19418[i + 319];
    CLKAddPoints();
    v485[318] = v524;
    v485[319] = v525;
    v526 = qword_19418[i + 326];
    v527 = qword_19418[i + 327];
    CLKAddPoints();
    v485[326] = v528;
    v485[327] = v529;
    v530 = qword_19418[i + 334];
    v531 = qword_19418[i + 335];
    CLKAddPoints();
    v485[334] = v532;
    v485[335] = v533;
    v534 = qword_19418[i + 414];
    v535 = qword_19418[i + 415];
    CLKAddPoints();
    v485[414] = v536;
    v485[415] = v537;
    v538 = qword_19418[i + 422];
    v539 = qword_19418[i + 423];
    CLKAddPoints();
    v485[422] = v540;
    v485[423] = v541;
    v542 = qword_19418[i + 430];
    v543 = qword_19418[i + 431];
    CLKAddPoints();
    v485[430] = v544;
    v485[431] = v545;
  }

  for (j = 0; j != 24; j += 2)
  {
    v547 = &qword_19418[j];
    v548 = qword_19418[j + 54];
    v549 = qword_19418[j + 55];
    CLKAddPoints();
    v547[54] = v550;
    v547[55] = v551;
    v552 = qword_19418[j + 78];
    v553 = qword_19418[j + 79];
    CLKAddPoints();
    v547[78] = v554;
    v547[79] = v555;
    v556 = qword_19418[j + 102];
    v557 = qword_19418[j + 103];
    CLKAddPoints();
    v547[102] = v558;
    v547[103] = v559;
    v560 = qword_19418[j + 150];
    v561 = qword_19418[j + 151];
    CLKAddPoints();
    v547[150] = v562;
    v547[151] = v563;
    v564 = qword_19418[j + 174];
    v565 = qword_19418[j + 175];
    CLKAddPoints();
    v547[174] = v566;
    v547[175] = v567;
    v568 = qword_19418[j + 198];
    v569 = qword_19418[j + 199];
    CLKAddPoints();
    v547[198] = v570;
    v547[199] = v571;
    v572 = qword_19418[j + 246];
    v573 = qword_19418[j + 247];
    CLKAddPoints();
    v547[246] = v574;
    v547[247] = v575;
    v576 = qword_19418[j + 270];
    v577 = qword_19418[j + 271];
    CLKAddPoints();
    v547[270] = v578;
    v547[271] = v579;
    v580 = qword_19418[j + 294];
    v581 = qword_19418[j + 295];
    CLKAddPoints();
    v547[294] = v582;
    v547[295] = v583;
    v584 = qword_19418[j + 342];
    v585 = qword_19418[j + 343];
    CLKAddPoints();
    v547[342] = v586;
    v547[343] = v587;
    v588 = qword_19418[j + 366];
    v589 = qword_19418[j + 367];
    CLKAddPoints();
    v547[366] = v590;
    v547[367] = v591;
    v592 = qword_19418[j + 390];
    v593 = qword_19418[j + 391];
    CLKAddPoints();
    v547[390] = v594;
    v547[391] = v595;
    v596 = qword_19418[j + 438];
    v597 = qword_19418[j + 439];
    CLKAddPoints();
    v547[438] = v598;
    v547[439] = v599;
    v600 = qword_19418[j + 462];
    v601 = qword_19418[j + 463];
    CLKAddPoints();
    v547[462] = v602;
    v547[463] = v603;
    v604 = qword_19418[j + 486];
    v605 = qword_19418[j + 487];
    CLKAddPoints();
    v547[486] = v606;
    v547[487] = v607;
  }

  qword_19418[0] = &qword_19508;
  unk_19420 = &qword_19808;
  qword_19428 = &qword_19B08;
  unk_19430 = &qword_19E08;
  qword_19438 = &qword_1A108;
  unk_19440 = &qword_19548;
  qword_19448 = &qword_19848;
  unk_19450 = &qword_19B48;
  qword_19458 = &qword_19E48;
  unk_19460 = &qword_1A148;
  qword_19468 = &qword_19588;
  unk_19470 = &qword_19888;
  qword_19478 = &qword_19B88;
  unk_19480 = &qword_19E88;
  qword_19488 = &qword_1A188;
  unk_19490 = &qword_195C8;
  qword_19498 = &qword_198C8;
  unk_194A0 = &qword_19BC8;
  qword_194A8 = &qword_19EC8;
  unk_194B0 = &qword_1A1C8;
  qword_194B8 = &qword_19688;
  unk_194C0 = &qword_19988;
  qword_194C8 = &qword_19C88;
  unk_194D0 = &qword_19F88;
  qword_194D8 = &qword_1A288;
  unk_194E0 = &qword_19748;
  qword_194E8 = &qword_19A48;
  unk_194F0 = &qword_19D48;
  qword_194F8 = &qword_1A048;
  unk_19500 = &qword_1A348;
  [v3 scaledValue:74.5];
  v696 = v608;
  [v3 scaledValue:95.0];
  v693 = v609;
  [v3 scaledValue:94.0];
  v691 = v610;
  [v3 scaledValue:92.5];
  v689 = v611;
  [v3 scaledValue:63.0];
  v687 = v612;
  [v3 scaledValue:87.5];
  v614 = v613;
  [v3 scaledValue:95.0];
  v616 = v615;
  [v3 scaledValue:91.5];
  v618 = v617;
  [v3 scaledValue:68.0];
  v620 = v619;
  [v3 scaledValue:82.0];
  v622 = v621;
  [v3 scaledValue:81.0];
  v624 = v623;
  [v3 scaledValue:36.0];
  v626 = v625;
  [v3 scaledValue:32.5];
  v628 = v627;
  [v3 scaledValue:34.0];
  qword_1A408 = v696;
  qword_1A410 = v693;
  qword_1A418 = v691;
  qword_1A420 = v689;
  qword_1A428 = v687;
  qword_1A430 = v614;
  qword_1A438 = v616;
  qword_1A440 = v616;
  qword_1A448 = v618;
  qword_1A450 = v620;
  qword_1A458 = v622;
  qword_1A460 = v622;
  qword_1A468 = v622;
  qword_1A470 = v622;
  qword_1A478 = v624;
  qword_1A480 = v628;
  qword_1A488 = v629;
  qword_1A490 = v629;
  qword_1A498 = v629;
  qword_1A4A0 = v628;
  qword_1A4A8 = v628;
  qword_1A4B0 = v629;
  qword_1A4B8 = v629;
  qword_1A4C0 = v629;
  qword_1A4C8 = v628;
  qword_1A4D0 = v628;
  qword_1A4D8 = v628;
  qword_1A4E0 = v628;
  qword_1A4E8 = v628;
  qword_1A4F0 = v626;
  v756[0] = &off_156F0;
  v754[0] = &off_15708;
  v752 = &off_156F0;
  v750[0] = &off_15720;
  [v3 scaledValue:21.0];
  v697 = [NSNumber numberWithDouble:?];
  v751[0] = v697;
  v750[1] = &off_15738;
  [v3 scaledValue:-3.0];
  v695 = [NSNumber numberWithDouble:?];
  v751[1] = v695;
  v750[2] = &off_15750;
  [v3 scaledValue:-3.0];
  v694 = [NSNumber numberWithDouble:?];
  v751[2] = v694;
  v750[3] = &off_15768;
  [v3 scaledValue:-3.0];
  v692 = [NSNumber numberWithDouble:?];
  v749[0] = v692;
  [v3 scaledValue:-7.0];
  v690 = [NSNumber numberWithDouble:?];
  v749[1] = v690;
  v688 = [NSArray arrayWithObjects:v749 count:2];
  v751[3] = v688;
  v686 = [NSDictionary dictionaryWithObjects:v751 forKeys:v750 count:4];
  v753 = v686;
  v685 = [NSDictionary dictionaryWithObjects:&v753 forKeys:&v752 count:1];
  v754[1] = &off_15780;
  v755[0] = v685;
  v747[0] = &off_156F0;
  v745[0] = &off_15738;
  [v3 scaledValue:-22.0];
  v684 = [NSNumber numberWithDouble:?];
  v746[0] = v684;
  v745[1] = &off_15750;
  [v3 scaledValue:-22.0];
  v683 = [NSNumber numberWithDouble:?];
  v746[1] = v683;
  v745[2] = &off_15768;
  [v3 scaledValue:-13.0];
  v682 = [NSNumber numberWithDouble:?];
  v746[2] = v682;
  v681 = [NSDictionary dictionaryWithObjects:v746 forKeys:v745 count:3];
  v748[0] = v681;
  v747[1] = &off_15708;
  v743[0] = &off_15738;
  [v3 scaledValue:-8.0];
  v680 = [NSNumber numberWithDouble:?];
  v744[0] = v680;
  v743[1] = &off_15798;
  [v3 scaledValue:-5.0];
  v679 = [NSNumber numberWithDouble:?];
  v744[1] = v679;
  v743[2] = &off_157B0;
  [v3 scaledValue:-2.0];
  v678 = [NSNumber numberWithDouble:?];
  v744[2] = v678;
  v743[3] = &off_15750;
  [v3 scaledValue:-8.0];
  v677 = [NSNumber numberWithDouble:?];
  v744[3] = v677;
  v743[4] = &off_157C8;
  [v3 scaledValue:-8.0];
  v676 = [NSNumber numberWithDouble:?];
  v744[4] = v676;
  v743[5] = &off_15768;
  [v3 scaledValue:-4.0];
  v675 = [NSNumber numberWithDouble:?];
  v744[5] = v675;
  v674 = [NSDictionary dictionaryWithObjects:v744 forKeys:v743 count:6];
  v748[1] = v674;
  v673 = [NSDictionary dictionaryWithObjects:v748 forKeys:v747 count:2];
  v755[1] = v673;
  v672 = [NSDictionary dictionaryWithObjects:v755 forKeys:v754 count:2];
  v757[0] = v672;
  v756[1] = &off_15708;
  v741[0] = &off_156F0;
  v739[0] = &off_156F0;
  v737 = &off_15768;
  [v3 scaledValue:-6.0];
  v671 = [NSNumber numberWithDouble:?];
  v738 = v671;
  v670 = [NSDictionary dictionaryWithObjects:&v738 forKeys:&v737 count:1];
  v740[0] = v670;
  v739[1] = &off_15708;
  v735[0] = &off_157E0;
  [v3 scaledValue:-1.0];
  v669 = [NSNumber numberWithDouble:?];
  v736[0] = v669;
  v735[1] = &off_157C8;
  [v3 scaledValue:-2.0];
  v668 = [NSNumber numberWithDouble:?];
  v736[1] = v668;
  v667 = [NSDictionary dictionaryWithObjects:v736 forKeys:v735 count:2];
  v740[1] = v667;
  v666 = [NSDictionary dictionaryWithObjects:v740 forKeys:v739 count:2];
  v742[0] = v666;
  v741[1] = &off_15708;
  v733[0] = &off_156F0;
  v731 = &off_15768;
  [v3 scaledValue:-7.0];
  v665 = [NSNumber numberWithDouble:?];
  v732 = v665;
  v664 = [NSDictionary dictionaryWithObjects:&v732 forKeys:&v731 count:1];
  v734[0] = v664;
  v733[1] = &off_15708;
  v729[0] = &off_157E0;
  [v3 scaledValue:-1.0];
  v663 = [NSNumber numberWithDouble:?];
  v730[0] = v663;
  v729[1] = &off_157C8;
  [v3 scaledValue:-2.0];
  v662 = [NSNumber numberWithDouble:?];
  v730[1] = v662;
  v661 = [NSDictionary dictionaryWithObjects:v730 forKeys:v729 count:2];
  v734[1] = v661;
  v660 = [NSDictionary dictionaryWithObjects:v734 forKeys:v733 count:2];
  v742[1] = v660;
  v741[2] = &off_15780;
  v727[0] = &off_156F0;
  v725 = &off_15768;
  [v3 scaledValue:-2.0];
  v659 = [NSNumber numberWithDouble:?];
  v726 = v659;
  v658 = [NSDictionary dictionaryWithObjects:&v726 forKeys:&v725 count:1];
  v728[0] = v658;
  v727[1] = &off_15708;
  v723 = &off_157C8;
  [v3 scaledValue:-14.0];
  v657 = [NSNumber numberWithDouble:?];
  v724 = v657;
  v656 = [NSDictionary dictionaryWithObjects:&v724 forKeys:&v723 count:1];
  v728[1] = v656;
  v655 = [NSDictionary dictionaryWithObjects:v728 forKeys:v727 count:2];
  v742[2] = v655;
  v654 = [NSDictionary dictionaryWithObjects:v742 forKeys:v741 count:3];
  v757[1] = v654;
  v756[2] = &off_15780;
  v721[0] = &off_156F0;
  v719 = &off_156F0;
  v717 = &off_15768;
  [v3 scaledValue:-4.0];
  v653 = [NSNumber numberWithDouble:?];
  v718 = v653;
  v652 = [NSDictionary dictionaryWithObjects:&v718 forKeys:&v717 count:1];
  v720 = v652;
  v651 = [NSDictionary dictionaryWithObjects:&v720 forKeys:&v719 count:1];
  v722[0] = v651;
  v721[1] = &off_15708;
  v715 = &off_156F0;
  v713 = &off_15768;
  [v3 scaledValue:-7.0];
  v650 = [NSNumber numberWithDouble:?];
  v714 = v650;
  v649 = [NSDictionary dictionaryWithObjects:&v714 forKeys:&v713 count:1];
  v716 = v649;
  v648 = [NSDictionary dictionaryWithObjects:&v716 forKeys:&v715 count:1];
  v722[1] = v648;
  v721[2] = &off_15780;
  v711[0] = &off_156F0;
  v709 = &off_15768;
  [v3 scaledValue:-18.0];
  v647 = [NSNumber numberWithDouble:?];
  v710 = v647;
  v646 = [NSDictionary dictionaryWithObjects:&v710 forKeys:&v709 count:1];
  v712[0] = v646;
  v711[1] = &off_15708;
  v707[0] = &off_157E0;
  [v3 scaledValue:-14.0];
  v645 = [NSNumber numberWithDouble:?];
  v708[0] = v645;
  v707[1] = &off_157C8;
  [v3 scaledValue:-14.0];
  v644 = [NSNumber numberWithDouble:?];
  v708[1] = v644;
  v707[2] = &off_15768;
  [v3 scaledValue:-6.0];
  v643 = [NSNumber numberWithDouble:?];
  v708[2] = v643;
  v642 = [NSDictionary dictionaryWithObjects:v708 forKeys:v707 count:3];
  v712[1] = v642;
  v641 = [NSDictionary dictionaryWithObjects:v712 forKeys:v711 count:2];
  v722[2] = v641;
  v640 = [NSDictionary dictionaryWithObjects:v722 forKeys:v721 count:3];
  v757[2] = v640;
  v756[3] = &off_157F8;
  v705 = &off_15780;
  v703[0] = &off_156F0;
  v701 = &off_15768;
  [v3 scaledValue:-9.0];
  v639 = [NSNumber numberWithDouble:?];
  v702 = v639;
  v630 = [NSDictionary dictionaryWithObjects:&v702 forKeys:&v701 count:1];
  v704[0] = v630;
  v703[1] = &off_15708;
  v699[0] = &off_157E0;
  [v3 scaledValue:-3.0];
  v631 = [NSNumber numberWithDouble:?];
  v700[0] = v631;
  v699[1] = &off_157C8;
  [v3 scaledValue:-3.0];
  v632 = [NSNumber numberWithDouble:?];
  v700[1] = v632;
  v699[2] = &off_15768;
  [v3 scaledValue:-4.0];
  v633 = [NSNumber numberWithDouble:?];
  v700[2] = v633;
  v634 = [NSDictionary dictionaryWithObjects:v700 forKeys:v699 count:3];
  v704[1] = v634;
  v635 = [NSDictionary dictionaryWithObjects:v704 forKeys:v703 count:2];
  v706 = v635;
  v636 = [NSDictionary dictionaryWithObjects:&v706 forKeys:&v705 count:1];
  v757[3] = v636;
  v637 = [NSDictionary dictionaryWithObjects:v757 forKeys:v756 count:4];
  v638 = qword_1A4F8;
  qword_1A4F8 = v637;
}

void sub_51B8(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:9000];
          v16[0] = v6;
          v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
          v16[1] = v7;
          v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
          v16[2] = v8;
          v9 = v16;
LABEL_12:
          v10 = [NSArray arrayWithObjects:v9 count:3];
          [(NTKFace *)v5 setCurationPlacements:v10];
LABEL_15:

LABEL_16:
          goto LABEL_17;
        }

        goto LABEL_17;
      }

      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
      v17[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v17[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v17[2] = v8;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
      v17[3] = v10;
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v17[4] = v11;
      v12 = [NSArray arrayWithObjects:v17 count:5];
      [(NTKFace *)v5 setCurationPlacements:v12];
    }

    else
    {
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v18[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v18[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
      v18[2] = v8;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:8000];
      v18[3] = v10;
      v11 = [NSArray arrayWithObjects:v18 count:4];
      [(NTKFace *)v5 setCurationPlacements:v11];
    }

    goto LABEL_15;
  }

  switch(a3)
  {
    case 3uLL:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v15[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
      v15[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v15[2] = v8;
      v9 = v15;
      goto LABEL_12;
    case 4uLL:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v14[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v14[1] = v7;
      v8 = [NSArray arrayWithObjects:v14 count:2];
      [(NTKFace *)v5 setCurationPlacements:v8];
      goto LABEL_16;
    case 5uLL:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v13[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
      v13[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v13[2] = v8;
      v9 = v13;
      goto LABEL_12;
  }

LABEL_17:
}

void sub_5874(id a1)
{
  qword_1A518 = [NTKFontLoader fontDescriptorForSectName:@"__NYNumeralsBL" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_5908(id a1)
{
  qword_1A528 = [NTKFontLoader fontDescriptorForSectName:@"__NYNumeralsH" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_599C(id a1)
{
  qword_1A538 = [NTKFontLoader fontDescriptorForSectName:@"__SFNumeralsBL" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_5A30(id a1)
{
  qword_1A548 = [NTKFontLoader fontDescriptorForSectName:@"__SFNumeralsH" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_5AC4(id a1)
{
  qword_1A558 = [NTKFontLoader fontDescriptorForSectName:@"__TokyoBL" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_5B58(id a1)
{
  qword_1A568 = [NTKFontLoader fontDescriptorForSectName:@"__TokyoH" fromMachO:&dword_0];

  _objc_release_x1();
}

id sub_5BB8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_1A580);
  if (qword_1A588)
  {
    v3 = qword_1A588 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_1A590))
  {
    qword_1A588 = v2;
    qword_1A590 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_1A578;
    qword_1A578 = v5;
  }

  v7 = qword_1A578;
  os_unfair_lock_unlock(&unk_1A580);

  return v7;
}

void sub_5CE4(id a1)
{
  v3[0] = &off_15948;
  v3[1] = &off_15960;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_1A598;
  qword_1A598 = v1;
}

id sub_5E6C(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_1A5B0);
  if (qword_1A5B8)
  {
    v4 = qword_1A5B8 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_1A5C0))
  {
    qword_1A5B8 = v3;
    qword_1A5C0 = [v3 version];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_5F90;
    v10[3] = &unk_14588;
    v10[4] = *(a1 + 32);
    v6 = sub_5F90(v10, v3);
    v7 = qword_1A5A8;
    qword_1A5A8 = v6;
  }

  v8 = qword_1A5A8;
  os_unfair_lock_unlock(&unk_1A5B0);

  return v8;
}

id sub_5F90(uint64_t a1, uint64_t a2)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___NTKGreyhoundColorEditOption;
  v2 = objc_msgSendSuper2(&v5, "_orderedValuesForDevice:", a2);
  v3 = [v2 mutableCopy];

  [v3 removeObject:&off_15978];

  return v3;
}

id sub_6090(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_1A5D0);
  if (qword_1A5D8)
  {
    v3 = qword_1A5D8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_1A5E0))
  {
    qword_1A5D8 = v2;
    qword_1A5E0 = [v2 version];
    v5 = sub_6150(qword_1A5E0, v2);
    v6 = qword_1A5C8;
    qword_1A5C8 = v5;
  }

  v7 = qword_1A5C8;
  os_unfair_lock_unlock(&unk_1A5D0);

  return v7;
}

id sub_6150(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _EnumValueRange();
  v4 = [v2 supportsPDRCapability:360081074];

  if (v4)
  {
    v5 = [v3 arrayByAddingObject:&off_15990];

    v3 = v5;
  }

  return v3;
}

void sub_6244(id a1)
{
  v3[0] = &off_159A8;
  v3[1] = &off_159C0;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_159D8;
  v3[3] = &off_159F0;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v3[4] = &off_15990;
  v4[4] = NTKFaceBundleStyle5;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_1A5E8;
  qword_1A5E8 = v1;
}

void sub_66B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 text];

  if (v4)
  {
    [v3 setTextColor:*(a1 + 32)];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3 subviews];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setTextColor:*(a1 + 32)];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

void sub_695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = __chkstk_darwin(a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v9 = v6;
  v10 = *(*(v6 + 32) + 8);
  v15 = v11;
  sub_744C(v15, v10);
  memcpy(__dst, qword_1A5F8, 0x10E0uLL);
  v12 = *(v9 + 32);
  v13 = v12[5];
  __dst[540] = qword_1B6D8;
  v14 = (__dst[15 * v13 + 5 * v12[6] + v12[4]] + 16 * v8);
  [v15 setCenter:{*v14, v14[1]}];
  [*(v9 + 32) addSubview:v15];
}

uint64_t sub_744C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_1B6E4);
  if (qword_1B6E8)
  {
    v3 = qword_1B6E8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1B6F0))
  {
    v5 = byte_1B6E0;
  }

  else
  {
    qword_1B6E8 = v2;
    qword_1B6F0 = [v2 version];
    sub_74F4(qword_1B6F0, v2);
    v5 = 1;
    byte_1B6E0 = 1;
  }

  os_unfair_lock_unlock(&stru_1B6E4);

  return v5;
}

void sub_74F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [v3 scaledPoint:{37.0, 0.0}];
  qword_1A6E8 = v4;
  unk_1A6F0 = v5;
  [v3 scaledPoint:0.5];
  qword_1A6F8 = v6;
  unk_1A700 = v7;
  [v3 scaledPoint:?];
  qword_1A708 = v8;
  unk_1A710 = v9;
  [v3 scaledPoint:2.5];
  qword_1A718 = v10;
  unk_1A720 = v11;
  [v3 scaledPoint:{37.0, -3.0}];
  qword_1A728 = v12;
  unk_1A730 = v13;
  [v3 scaledPoint:{-2.0, 58.5}];
  qword_1A738 = v14;
  unk_1A740 = v15;
  [v3 scaledPoint:{-36.0, -3.0}];
  qword_1A748 = v16;
  unk_1A750 = v17;
  [v3 scaledPoint:0.5];
  qword_1A758 = v18;
  unk_1A760 = v19;
  [v3 scaledPoint:?];
  qword_1A768 = v20;
  unk_1A770 = v21;
  [v3 scaledPoint:-7.5];
  qword_1A778 = v22;
  unk_1A780 = v23;
  [v3 scaledPoint:?];
  qword_1A788 = v24;
  unk_1A790 = v25;
  [v3 scaledPoint:{-2.5, -48.5}];
  qword_1A798 = v26;
  unk_1A7A0 = v27;
  [v3 scaledPoint:65.5];
  qword_1A7A8 = v28;
  unk_1A7B0 = v29;
  [v3 scaledPoint:{61.5, -37.0}];
  qword_1A7B8 = v30;
  unk_1A7C0 = v31;
  [v3 scaledPoint:{56.5, 0.5}];
  qword_1A7C8 = v32;
  unk_1A7D0 = v33;
  [v3 scaledPoint:{52.0, 38.0}];
  qword_1A7D8 = v34;
  unk_1A7E0 = v35;
  [v3 scaledPoint:58.5];
  qword_1A7E8 = v36;
  unk_1A7F0 = v37;
  [v3 scaledPoint:{3.5, 75.0}];
  qword_1A7F8 = v38;
  unk_1A800 = v39;
  [v3 scaledPoint:?];
  qword_1A808 = v40;
  unk_1A810 = v41;
  [v3 scaledPoint:?];
  qword_1A818 = v42;
  unk_1A820 = v43;
  [v3 scaledPoint:{-54.5, 0.5}];
  qword_1A828 = v44;
  unk_1A830 = v45;
  [v3 scaledPoint:?];
  qword_1A838 = v46;
  unk_1A840 = v47;
  [v3 scaledPoint:{-54.5, -74.0}];
  qword_1A848 = v48;
  unk_1A850 = v49;
  [v3 scaledPoint:{4.5, -74.0}];
  qword_1A858 = v50;
  unk_1A860 = v51;
  [v3 scaledPoint:61.5];
  qword_1A868 = v52;
  unk_1A870 = v53;
  [v3 scaledPoint:{65.5, -38.5}];
  qword_1A878 = v54;
  unk_1A880 = v55;
  [v3 scaledPoint:?];
  qword_1A888 = v56;
  unk_1A890 = v57;
  [v3 scaledPoint:?];
  qword_1A898 = v58;
  unk_1A8A0 = v59;
  [v3 scaledPoint:?];
  qword_1A8A8 = v60;
  unk_1A8B0 = v61;
  [v3 scaledPoint:{4.0, 74.0}];
  qword_1A8B8 = v62;
  unk_1A8C0 = v63;
  [v3 scaledPoint:{-48.0, 74.0}];
  qword_1A8C8 = v64;
  unk_1A8D0 = v65;
  [v3 scaledPoint:-48.5];
  qword_1A8D8 = v66;
  unk_1A8E0 = v67;
  [v3 scaledPoint:?];
  qword_1A8E8 = v68;
  qword_1A8F0 = v69;
  [v3 scaledPoint:?];
  qword_1A8F8 = v70;
  qword_1A900 = v71;
  [v3 scaledPoint:{-53.0, -75.5}];
  qword_1A908 = v72;
  qword_1A910 = v73;
  [v3 scaledPoint:{4.5, -75.5}];
  qword_1A918 = v74;
  qword_1A920 = v75;
  [v3 scaledPoint:60.0];
  qword_1A928 = v76;
  qword_1A930 = v77;
  [v3 scaledPoint:63.5];
  qword_1A938 = v78;
  qword_1A940 = v79;
  [v3 scaledPoint:{60.0, 5.0}];
  qword_1A948 = v80;
  qword_1A950 = v81;
  [v3 scaledPoint:{56.5, 42.0}];
  qword_1A958 = v82;
  qword_1A960 = v83;
  [v3 scaledPoint:{56.5, 79.5}];
  qword_1A968 = v84;
  qword_1A970 = v85;
  [v3 scaledPoint:{-2.5, 79.0}];
  qword_1A978 = v86;
  qword_1A980 = v87;
  [v3 scaledPoint:{-53.0, 79.0}];
  qword_1A988 = v88;
  qword_1A990 = v89;
  [v3 scaledPoint:{-53.5, 42.0}];
  qword_1A998 = v90;
  qword_1A9A0 = v91;
  [v3 scaledPoint:{-64.5, 4.5}];
  qword_1A9A8 = v92;
  qword_1A9B0 = v93;
  [v3 scaledPoint:-60.0];
  qword_1A9B8 = v94;
  qword_1A9C0 = v95;
  [v3 scaledPoint:{-52.5, -70.0}];
  qword_1A9C8 = v96;
  qword_1A9D0 = v97;
  [v3 scaledPoint:{1.0, -70.0}];
  qword_1A9D8 = v98;
  qword_1A9E0 = v99;
  [v3 scaledPoint:52.5];
  qword_1A9E8 = v100;
  qword_1A9F0 = v101;
  [v3 scaledPoint:{2.5, 52.5}];
  qword_1A9F8 = v102;
  qword_1AA00 = v103;
  [v3 scaledPoint:?];
  qword_1AA08 = v104;
  qword_1AA10 = v105;
  [v3 scaledPoint:{0.0, -53.5}];
  qword_1AA18 = v106;
  qword_1AA20 = v107;
  [v3 scaledPoint:{47.0, 4.5}];
  qword_1AA28 = v108;
  qword_1AA30 = v109;
  [v3 scaledPoint:-0.5];
  qword_1AA38 = v110;
  qword_1AA40 = v111;
  [v3 scaledPoint:{-41.5, 4.0}];
  qword_1AA48 = v112;
  qword_1AA50 = v113;
  [v3 scaledPoint:-4.0];
  qword_1AA58 = v114;
  qword_1AA60 = v115;
  [v3 scaledPoint:{49.0, 12.5}];
  qword_1AA68 = v116;
  qword_1AA70 = v117;
  [v3 scaledPoint:{1.0, 72.0}];
  qword_1AA78 = v118;
  qword_1AA80 = v119;
  [v3 scaledPoint:{-47.5, 12.5}];
  qword_1AA88 = v120;
  qword_1AA90 = v121;
  [v3 scaledPoint:-15.0];
  qword_1AA98 = v122;
  qword_1AAA0 = v123;
  [v3 scaledPoint:?];
  qword_1AAA8 = v124;
  qword_1AAB0 = v125;
  [v3 scaledPoint:{63.5, -39.5}];
  qword_1AAB8 = v126;
  qword_1AAC0 = v127;
  [v3 scaledPoint:?];
  qword_1AAC8 = v128;
  qword_1AAD0 = v129;
  [v3 scaledPoint:{61.0, 37.5}];
  qword_1AAD8 = v130;
  qword_1AAE0 = v131;
  [v3 scaledPoint:49.0];
  qword_1AAE8 = v132;
  qword_1AAF0 = v133;
  [v3 scaledPoint:0.5];
  qword_1AAF8 = v134;
  qword_1AB00 = v135;
  [v3 scaledPoint:{-48.5, 75.5}];
  qword_1AB08 = v136;
  qword_1AB10 = v137;
  [v3 scaledPoint:{-61.5, 37.5}];
  qword_1AB18 = v138;
  qword_1AB20 = v139;
  [v3 scaledPoint:{-61.0, -1.5}];
  qword_1AB28 = v140;
  qword_1AB30 = v141;
  [v3 scaledPoint:{-54.5, -39.5}];
  qword_1AB38 = v142;
  qword_1AB40 = v143;
  [v3 scaledPoint:?];
  qword_1AB48 = v144;
  qword_1AB50 = v145;
  [v3 scaledPoint:{0.5, -77.5}];
  qword_1AB58 = v146;
  qword_1AB60 = v147;
  [v3 scaledPoint:49.0];
  qword_1AB68 = v148;
  qword_1AB70 = v149;
  [v3 scaledPoint:{62.5, -40.0}];
  qword_1AB78 = v150;
  qword_1AB80 = v151;
  [v3 scaledPoint:{62.5, -2.0}];
  qword_1AB88 = v152;
  qword_1AB90 = v153;
  [v3 scaledPoint:{61.0, 36.5}];
  qword_1AB98 = v154;
  qword_1ABA0 = v155;
  [v3 scaledPoint:?];
  qword_1ABA8 = v156;
  qword_1ABB0 = v157;
  [v3 scaledPoint:0.5];
  qword_1ABB8 = v158;
  qword_1ABC0 = v159;
  [v3 scaledPoint:{-47.5, 75.0}];
  qword_1ABC8 = v160;
  qword_1ABD0 = v161;
  [v3 scaledPoint:{-61.5, 36.5}];
  qword_1ABD8 = v162;
  qword_1ABE0 = v163;
  [v3 scaledPoint:{-62.0, -2.0}];
  qword_1ABE8 = v164;
  qword_1ABF0 = v165;
  [v3 scaledPoint:{-55.5, -40.0}];
  qword_1ABF8 = v166;
  qword_1AC00 = v167;
  [v3 scaledPoint:{-49.0, -78.5}];
  qword_1AC08 = v168;
  qword_1AC10 = v169;
  [v3 scaledPoint:{1.0, -78.5}];
  qword_1AC18 = v170;
  qword_1AC20 = v171;
  [v3 scaledPoint:{49.0, -70.0}];
  qword_1AC28 = v172;
  qword_1AC30 = v173;
  [v3 scaledPoint:{62.5, -33.0}];
  qword_1AC38 = v174;
  qword_1AC40 = v175;
  [v3 scaledPoint:{63.0, 4.5}];
  qword_1AC48 = v176;
  qword_1AC50 = v177;
  [v3 scaledPoint:{63.0, 42.0}];
  qword_1AC58 = v178;
  qword_1AC60 = v179;
  [v3 scaledPoint:{53.5, 79.0}];
  qword_1AC68 = v180;
  qword_1AC70 = v181;
  [v3 scaledPoint:0.5];
  qword_1AC78 = v182;
  qword_1AC80 = v183;
  [v3 scaledPoint:?];
  qword_1AC88 = v184;
  qword_1AC90 = v185;
  [v3 scaledPoint:-62.5];
  qword_1AC98 = v186;
  qword_1ACA0 = v187;
  [v3 scaledPoint:{-62.5, 4.5}];
  qword_1ACA8 = v188;
  qword_1ACB0 = v189;
  [v3 scaledPoint:{-64.5, -33.0}];
  qword_1ACB8 = v190;
  qword_1ACC0 = v191;
  [v3 scaledPoint:{-60.5, -70.0}];
  qword_1ACC8 = v192;
  qword_1ACD0 = v193;
  [v3 scaledPoint:{-6.0, -70.0}];
  qword_1ACD8 = v194;
  qword_1ACE0 = v195;
  [v3 scaledPoint:{45.0, 7.5}];
  qword_1ACE8 = v196;
  qword_1ACF0 = v197;
  [v3 scaledPoint:{12.5, 54.0}];
  qword_1ACF8 = v198;
  qword_1AD00 = v199;
  [v3 scaledPoint:{-45.5, 7.5}];
  qword_1AD08 = v200;
  qword_1AD10 = v201;
  [v3 scaledPoint:{-5.0, -54.5}];
  qword_1AD18 = v202;
  qword_1AD20 = v203;
  [v3 scaledPoint:{44.0, 8.0}];
  qword_1AD28 = v204;
  qword_1AD30 = v205;
  [v3 scaledPoint:{1.0, 52.5}];
  qword_1AD38 = v206;
  qword_1AD40 = v207;
  [v3 scaledPoint:{-49.5, 8.0}];
  qword_1AD48 = v208;
  qword_1AD50 = v209;
  [v3 scaledPoint:{-5.5, -60.5}];
  qword_1AD58 = v210;
  qword_1AD60 = v211;
  [v3 scaledPoint:{49.0, 11.5}];
  qword_1AD68 = v212;
  qword_1AD70 = v213;
  [v3 scaledPoint:{0.5, 72.0}];
  qword_1AD78 = v214;
  qword_1AD80 = v215;
  [v3 scaledPoint:{-47.5, 12.5}];
  qword_1AD88 = v216;
  qword_1AD90 = v217;
  [v3 scaledPoint:{0.0, -49.0}];
  qword_1AD98 = v218;
  qword_1ADA0 = v219;
  [v3 scaledPoint:{47.5, -77.5}];
  qword_1ADA8 = v220;
  qword_1ADB0 = v221;
  [v3 scaledPoint:{61.5, -39.5}];
  qword_1ADB8 = v222;
  qword_1ADC0 = v223;
  [v3 scaledPoint:{62.0, -1.5}];
  qword_1ADC8 = v224;
  qword_1ADD0 = v225;
  [v3 scaledPoint:{61.0, 37.5}];
  qword_1ADD8 = v226;
  qword_1ADE0 = v227;
  [v3 scaledPoint:{47.5, 75.5}];
  qword_1ADE8 = v228;
  qword_1ADF0 = v229;
  [v3 scaledPoint:{1.0, 76.5}];
  qword_1ADF8 = v230;
  qword_1AE00 = v231;
  [v3 scaledPoint:{-47.5, 75.5}];
  qword_1AE08 = v232;
  qword_1AE10 = v233;
  [v3 scaledPoint:{-61.5, 37.5}];
  qword_1AE18 = v234;
  qword_1AE20 = v235;
  [v3 scaledPoint:?];
  qword_1AE28 = v236;
  qword_1AE30 = v237;
  [v3 scaledPoint:{-59.5, -39.5}];
  qword_1AE38 = v238;
  qword_1AE40 = v239;
  [v3 scaledPoint:{-49.5, -78.0}];
  qword_1AE48 = v240;
  qword_1AE50 = v241;
  [v3 scaledPoint:{0.5, -78.0}];
  qword_1AE58 = v242;
  qword_1AE60 = v243;
  [v3 scaledPoint:{49.5, -78.5}];
  qword_1AE68 = v244;
  qword_1AE70 = v245;
  [v3 scaledPoint:{62.5, -40.0}];
  qword_1AE78 = v246;
  qword_1AE80 = v247;
  [v3 scaledPoint:{60.5, -2.0}];
  qword_1AE88 = v248;
  qword_1AE90 = v249;
  [v3 scaledPoint:{62.0, 37.0}];
  qword_1AE98 = v250;
  qword_1AEA0 = v251;
  [v3 scaledPoint:{49.5, 75.0}];
  qword_1AEA8 = v252;
  qword_1AEB0 = v253;
  [v3 scaledPoint:{0.5, 78.0}];
  qword_1AEB8 = v254;
  qword_1AEC0 = v255;
  [v3 scaledPoint:{-46.0, 75.0}];
  qword_1AEC8 = v256;
  qword_1AED0 = v257;
  [v3 scaledPoint:{-61.5, 36.5}];
  qword_1AED8 = v258;
  qword_1AEE0 = v259;
  [v3 scaledPoint:{-63.0, -2.0}];
  qword_1AEE8 = v260;
  qword_1AEF0 = v261;
  [v3 scaledPoint:{-60.5, -40.0}];
  qword_1AEF8 = v262;
  qword_1AF00 = v263;
  [v3 scaledPoint:{-51.0, -78.5}];
  qword_1AF08 = v264;
  qword_1AF10 = v265;
  [v3 scaledPoint:{0.5, -78.5}];
  qword_1AF18 = v266;
  qword_1AF20 = v267;
  [v3 scaledPoint:{55.5, -70.0}];
  qword_1AF28 = v268;
  qword_1AF30 = v269;
  [v3 scaledPoint:{62.5, -33.0}];
  qword_1AF38 = v270;
  qword_1AF40 = v271;
  [v3 scaledPoint:{62.5, 4.5}];
  qword_1AF48 = v272;
  qword_1AF50 = v273;
  [v3 scaledPoint:{62.0, 42.0}];
  qword_1AF58 = v274;
  qword_1AF60 = v275;
  [v3 scaledPoint:{53.0, 79.0}];
  qword_1AF68 = v276;
  qword_1AF70 = v277;
  [v3 scaledPoint:{0.0, 82.0}];
  qword_1AF78 = v278;
  qword_1AF80 = v279;
  [v3 scaledPoint:{-50.5, 79.0}];
  qword_1AF88 = v280;
  qword_1AF90 = v281;
  [v3 scaledPoint:{-62.5, 41.5}];
  qword_1AF98 = v282;
  qword_1AFA0 = v283;
  [v3 scaledPoint:{-63.0, 4.5}];
  qword_1AFA8 = v284;
  qword_1AFB0 = v285;
  [v3 scaledPoint:{-68.5, -33.0}];
  qword_1AFB8 = v286;
  qword_1AFC0 = v287;
  [v3 scaledPoint:{-60.0, -70.0}];
  qword_1AFC8 = v288;
  qword_1AFD0 = v289;
  [v3 scaledPoint:{0.0, -70.0}];
  qword_1AFD8 = v290;
  qword_1AFE0 = v291;
  [v3 scaledPoint:{44.5, 21.5}];
  qword_1AFE8 = v292;
  qword_1AFF0 = v293;
  [v3 scaledPoint:{4.0, 50.5}];
  qword_1AFF8 = v294;
  qword_1B000 = v295;
  [v3 scaledPoint:{-46.0, 21.0}];
  qword_1B008 = v296;
  qword_1B010 = v297;
  [v3 scaledPoint:{-5.0, -54.5}];
  qword_1B018 = v298;
  qword_1B020 = v299;
  [v3 scaledPoint:{50.5, 12.5}];
  qword_1B028 = v300;
  qword_1B030 = v301;
  [v3 scaledPoint:{1.0, 56.0}];
  qword_1B038 = v302;
  qword_1B040 = v303;
  [v3 scaledPoint:{-50.0, 12.5}];
  qword_1B048 = v304;
  qword_1B050 = v305;
  [v3 scaledPoint:{1.5, -57.0}];
  qword_1B058 = v306;
  qword_1B060 = v307;
  [v3 scaledPoint:{49.5, 14.5}];
  qword_1B068 = v308;
  qword_1B070 = v309;
  [v3 scaledPoint:{0.5, 73.0}];
  qword_1B078 = v310;
  qword_1B080 = v311;
  [v3 scaledPoint:{-47.5, 13.5}];
  qword_1B088 = v312;
  qword_1B090 = v313;
  [v3 scaledPoint:{-3.0, -49.0}];
  qword_1B098 = v314;
  qword_1B0A0 = v315;
  [v3 scaledPoint:{47.5, -77.5}];
  qword_1B0A8 = v316;
  qword_1B0B0 = v317;
  [v3 scaledPoint:{61.5, -39.5}];
  qword_1B0B8 = v318;
  qword_1B0C0 = v319;
  [v3 scaledPoint:{62.5, -1.0}];
  qword_1B0C8 = v320;
  qword_1B0D0 = v321;
  [v3 scaledPoint:{62.0, 37.5}];
  qword_1B0D8 = v322;
  qword_1B0E0 = v323;
  [v3 scaledPoint:?];
  qword_1B0E8 = v324;
  qword_1B0F0 = v325;
  [v3 scaledPoint:{1.0, 76.5}];
  qword_1B0F8 = v326;
  qword_1B100 = v327;
  [v3 scaledPoint:{-47.0, 75.5}];
  qword_1B108 = v328;
  qword_1B110 = v329;
  [v3 scaledPoint:{-62.5, 37.0}];
  qword_1B118 = v330;
  qword_1B120 = v331;
  [v3 scaledPoint:{-63.0, -1.0}];
  qword_1B128 = v332;
  qword_1B130 = v333;
  [v3 scaledPoint:?];
  qword_1B138 = v334;
  qword_1B140 = v335;
  [v3 scaledPoint:{-46.0, -78.0}];
  qword_1B148 = v336;
  qword_1B150 = v337;
  [v3 scaledPoint:{1.0, -78.0}];
  qword_1B158 = v338;
  qword_1B160 = v339;
  [v3 scaledPoint:?];
  qword_1B168 = v340;
  qword_1B170 = v341;
  [v3 scaledPoint:{62.0, -40.5}];
  qword_1B178 = v342;
  qword_1B180 = v343;
  [v3 scaledPoint:{62.5, -2.0}];
  qword_1B188 = v344;
  qword_1B190 = v345;
  [v3 scaledPoint:{62.0, 37.0}];
  qword_1B198 = v346;
  qword_1B1A0 = v347;
  [v3 scaledPoint:{47.5, 75.0}];
  qword_1B1A8 = v348;
  qword_1B1B0 = v349;
  [v3 scaledPoint:{0.5, 78.0}];
  qword_1B1B8 = v350;
  qword_1B1C0 = v351;
  [v3 scaledPoint:{-44.5, 75.0}];
  qword_1B1C8 = v352;
  qword_1B1D0 = v353;
  [v3 scaledPoint:{-62.5, 36.5}];
  qword_1B1D8 = v354;
  qword_1B1E0 = v355;
  [v3 scaledPoint:{-63.0, -2.0}];
  qword_1B1E8 = v356;
  qword_1B1F0 = v357;
  [v3 scaledPoint:{-53.5, -40.5}];
  qword_1B1F8 = v358;
  qword_1B200 = v359;
  [v3 scaledPoint:{-46.5, -78.5}];
  qword_1B208 = v360;
  qword_1B210 = v361;
  [v3 scaledPoint:{1.5, -79.0}];
  qword_1B218 = v362;
  qword_1B220 = v363;
  [v3 scaledPoint:{53.0, -70.0}];
  qword_1B228 = v364;
  qword_1B230 = v365;
  [v3 scaledPoint:{62.5, -32.5}];
  qword_1B238 = v366;
  qword_1B240 = v367;
  [v3 scaledPoint:{62.5, 4.5}];
  qword_1B248 = v368;
  qword_1B250 = v369;
  [v3 scaledPoint:{62.0, 41.5}];
  qword_1B258 = v370;
  qword_1B260 = v371;
  [v3 scaledPoint:{52.5, 79.0}];
  qword_1B268 = v372;
  qword_1B270 = v373;
  [v3 scaledPoint:{0.5, 82.0}];
  qword_1B278 = v374;
  qword_1B280 = v375;
  [v3 scaledPoint:{-50.5, 79.0}];
  qword_1B288 = v376;
  qword_1B290 = v377;
  [v3 scaledPoint:{-62.5, 41.5}];
  qword_1B298 = v378;
  qword_1B2A0 = v379;
  [v3 scaledPoint:{-63.0, 4.5}];
  qword_1B2A8 = v380;
  qword_1B2B0 = v381;
  [v3 scaledPoint:{-55.0, -32.0}];
  qword_1B2B8 = v382;
  qword_1B2C0 = v383;
  [v3 scaledPoint:{-54.5, -70.0}];
  qword_1B2C8 = v384;
  qword_1B2D0 = v385;
  [v3 scaledPoint:{-2.5, -70.0}];
  qword_1B2D8 = v386;
  qword_1B2E0 = v387;
  [v3 scaledPoint:{40.5, 7.5}];
  qword_1B2E8 = v388;
  qword_1B2F0 = v389;
  [v3 scaledPoint:{1.0, 66.0}];
  qword_1B2F8 = v390;
  qword_1B300 = v391;
  [v3 scaledPoint:{-41.0, 7.0}];
  qword_1B308 = v392;
  qword_1B310 = v393;
  [v3 scaledPoint:{1.0, -61.5}];
  qword_1B318 = v394;
  qword_1B320 = v395;
  [v3 scaledPoint:{42.5, 6.0}];
  qword_1B328 = v396;
  qword_1B330 = v397;
  [v3 scaledPoint:{0.5, 61.5}];
  qword_1B338 = v398;
  qword_1B340 = v399;
  [v3 scaledPoint:{-40.5, 6.0}];
  qword_1B348 = v400;
  qword_1B350 = v401;
  [v3 scaledPoint:{0.5, -65.0}];
  qword_1B358 = v402;
  qword_1B360 = v403;
  [v3 scaledPoint:{48.5, 17.5}];
  qword_1B368 = v404;
  qword_1B370 = v405;
  [v3 scaledPoint:{0.0, 74.0}];
  qword_1B378 = v406;
  qword_1B380 = v407;
  [v3 scaledPoint:{-40.5, 18.0}];
  qword_1B388 = v408;
  qword_1B390 = v409;
  [v3 scaledPoint:{0.5, -49.5}];
  qword_1B398 = v410;
  qword_1B3A0 = v411;
  [v3 scaledPoint:{49.5, -74.0}];
  qword_1B3A8 = v412;
  qword_1B3B0 = v413;
  [v3 scaledPoint:{57.5, -40.0}];
  qword_1B3B8 = v414;
  qword_1B3C0 = v415;
  [v3 scaledPoint:{57.5, -1.5}];
  qword_1B3C8 = v416;
  qword_1B3D0 = v417;
  [v3 scaledPoint:{57.5, 37.5}];
  qword_1B3D8 = v418;
  qword_1B3E0 = v419;
  [v3 scaledPoint:{48.0, 75.5}];
  qword_1B3E8 = v420;
  qword_1B3F0 = v421;
  [v3 scaledPoint:{1.0, 75.5}];
  qword_1B3F8 = v422;
  qword_1B400 = v423;
  [v3 scaledPoint:{-47.0, 75.5}];
  qword_1B408 = v424;
  qword_1B410 = v425;
  [v3 scaledPoint:{-57.5, 37.5}];
  qword_1B418 = v426;
  qword_1B420 = v427;
  [v3 scaledPoint:{-57.5, -1.5}];
  qword_1B428 = v428;
  qword_1B430 = v429;
  [v3 scaledPoint:{-57.5, -36.5}];
  qword_1B438 = v430;
  qword_1B440 = v431;
  [v3 scaledPoint:{-47.5, -75.5}];
  qword_1B448 = v432;
  qword_1B450 = v433;
  [v3 scaledPoint:{0.5, -74.5}];
  qword_1B458 = v434;
  qword_1B460 = v435;
  [v3 scaledPoint:{45.5, -74.5}];
  qword_1B468 = v436;
  qword_1B470 = v437;
  [v3 scaledPoint:{58.0, -37.0}];
  qword_1B478 = v438;
  qword_1B480 = v439;
  [v3 scaledPoint:{59.0, -2.0}];
  qword_1B488 = v440;
  qword_1B490 = v441;
  [v3 scaledPoint:{58.0, 37.5}];
  qword_1B498 = v442;
  qword_1B4A0 = v443;
  [v3 scaledPoint:{45.5, 74.5}];
  qword_1B4A8 = v444;
  qword_1B4B0 = v445;
  [v3 scaledPoint:{-0.5, 74.5}];
  qword_1B4B8 = v446;
  qword_1B4C0 = v447;
  [v3 scaledPoint:{-45.5, 74.5}];
  qword_1B4C8 = v448;
  qword_1B4D0 = v449;
  [v3 scaledPoint:{-59.0, 37.5}];
  qword_1B4D8 = v450;
  qword_1B4E0 = v451;
  [v3 scaledPoint:{-59.0, -2.0}];
  qword_1B4E8 = v452;
  qword_1B4F0 = v453;
  [v3 scaledPoint:{-59.0, -37.5}];
  qword_1B4F8 = v454;
  qword_1B500 = v455;
  [v3 scaledPoint:{-45.5, -79.0}];
  qword_1B508 = v456;
  qword_1B510 = v457;
  [v3 scaledPoint:{0.0, -78.5}];
  qword_1B518 = v458;
  qword_1B520 = v459;
  [v3 scaledPoint:{46.5, -71.5}];
  qword_1B528 = v460;
  qword_1B530 = v461;
  [v3 scaledPoint:{57.0, -32.5}];
  qword_1B538 = v462;
  qword_1B540 = v463;
  [v3 scaledPoint:{57.0, 2.5}];
  qword_1B548 = v464;
  qword_1B550 = v465;
  [v3 scaledPoint:{57.0, 41.5}];
  qword_1B558 = v466;
  qword_1B560 = v467;
  [v3 scaledPoint:{46.0, 79.0}];
  qword_1B568 = v468;
  qword_1B570 = v469;
  [v3 scaledPoint:{0.0, 79.0}];
  qword_1B578 = v470;
  qword_1B580 = v471;
  [v3 scaledPoint:{-46.5, 79.0}];
  qword_1B588 = v472;
  qword_1B590 = v473;
  [v3 scaledPoint:{-59.0, 41.5}];
  qword_1B598 = v474;
  qword_1B5A0 = v475;
  [v3 scaledPoint:{-59.0, 2.5}];
  qword_1B5A8 = v476;
  qword_1B5B0 = v477;
  [v3 scaledPoint:{-59.0, -33.0}];
  qword_1B5B8 = v478;
  qword_1B5C0 = v479;
  [v3 scaledPoint:{-46.5, -71.5}];
  qword_1B5C8 = v480;
  qword_1B5D0 = v481;
  [v3 scaledPoint:{0.0, -71.5}];
  qword_1B5D8 = v482;
  qword_1B5E0 = v483;
  v698 = v2;
  [v2 screenBounds];
  CLKRectGetCenter();
  for (i = 0; i != 8; i += 2)
  {
    v485 = &qword_1A5F8[i];
    v486 = qword_1A5F8[i + 30];
    v487 = qword_1A5F8[i + 31];
    CLKAddPoints();
    v485[30] = v488;
    v485[31] = v489;
    v490 = qword_1A5F8[i + 38];
    v491 = qword_1A5F8[i + 39];
    CLKAddPoints();
    v485[38] = v492;
    v485[39] = v493;
    v494 = qword_1A5F8[i + 46];
    v495 = qword_1A5F8[i + 47];
    CLKAddPoints();
    v485[46] = v496;
    v485[47] = v497;
    v498 = qword_1A5F8[i + 126];
    v499 = qword_1A5F8[i + 127];
    CLKAddPoints();
    v485[126] = v500;
    v485[127] = v501;
    v502 = qword_1A5F8[i + 134];
    v503 = qword_1A5F8[i + 135];
    CLKAddPoints();
    v485[134] = v504;
    v485[135] = v505;
    v506 = qword_1A5F8[i + 142];
    v507 = qword_1A5F8[i + 143];
    CLKAddPoints();
    v485[142] = v508;
    v485[143] = v509;
    v510 = qword_1A5F8[i + 222];
    v511 = qword_1A5F8[i + 223];
    CLKAddPoints();
    v485[222] = v512;
    v485[223] = v513;
    v514 = qword_1A5F8[i + 230];
    v515 = qword_1A5F8[i + 231];
    CLKAddPoints();
    v485[230] = v516;
    v485[231] = v517;
    v518 = qword_1A5F8[i + 238];
    v519 = qword_1A5F8[i + 239];
    CLKAddPoints();
    v485[238] = v520;
    v485[239] = v521;
    v522 = qword_1A5F8[i + 318];
    v523 = qword_1A5F8[i + 319];
    CLKAddPoints();
    v485[318] = v524;
    v485[319] = v525;
    v526 = qword_1A5F8[i + 326];
    v527 = qword_1A5F8[i + 327];
    CLKAddPoints();
    v485[326] = v528;
    v485[327] = v529;
    v530 = qword_1A5F8[i + 334];
    v531 = qword_1A5F8[i + 335];
    CLKAddPoints();
    v485[334] = v532;
    v485[335] = v533;
    v534 = qword_1A5F8[i + 414];
    v535 = qword_1A5F8[i + 415];
    CLKAddPoints();
    v485[414] = v536;
    v485[415] = v537;
    v538 = qword_1A5F8[i + 422];
    v539 = qword_1A5F8[i + 423];
    CLKAddPoints();
    v485[422] = v540;
    v485[423] = v541;
    v542 = qword_1A5F8[i + 430];
    v543 = qword_1A5F8[i + 431];
    CLKAddPoints();
    v485[430] = v544;
    v485[431] = v545;
  }

  for (j = 0; j != 24; j += 2)
  {
    v547 = &qword_1A5F8[j];
    v548 = qword_1A5F8[j + 54];
    v549 = qword_1A5F8[j + 55];
    CLKAddPoints();
    v547[54] = v550;
    v547[55] = v551;
    v552 = qword_1A5F8[j + 78];
    v553 = qword_1A5F8[j + 79];
    CLKAddPoints();
    v547[78] = v554;
    v547[79] = v555;
    v556 = qword_1A5F8[j + 102];
    v557 = qword_1A5F8[j + 103];
    CLKAddPoints();
    v547[102] = v558;
    v547[103] = v559;
    v560 = qword_1A5F8[j + 150];
    v561 = qword_1A5F8[j + 151];
    CLKAddPoints();
    v547[150] = v562;
    v547[151] = v563;
    v564 = qword_1A5F8[j + 174];
    v565 = qword_1A5F8[j + 175];
    CLKAddPoints();
    v547[174] = v566;
    v547[175] = v567;
    v568 = qword_1A5F8[j + 198];
    v569 = qword_1A5F8[j + 199];
    CLKAddPoints();
    v547[198] = v570;
    v547[199] = v571;
    v572 = qword_1A5F8[j + 246];
    v573 = qword_1A5F8[j + 247];
    CLKAddPoints();
    v547[246] = v574;
    v547[247] = v575;
    v576 = qword_1A5F8[j + 270];
    v577 = qword_1A5F8[j + 271];
    CLKAddPoints();
    v547[270] = v578;
    v547[271] = v579;
    v580 = qword_1A5F8[j + 294];
    v581 = qword_1A5F8[j + 295];
    CLKAddPoints();
    v547[294] = v582;
    v547[295] = v583;
    v584 = qword_1A5F8[j + 342];
    v585 = qword_1A5F8[j + 343];
    CLKAddPoints();
    v547[342] = v586;
    v547[343] = v587;
    v588 = qword_1A5F8[j + 366];
    v589 = qword_1A5F8[j + 367];
    CLKAddPoints();
    v547[366] = v590;
    v547[367] = v591;
    v592 = qword_1A5F8[j + 390];
    v593 = qword_1A5F8[j + 391];
    CLKAddPoints();
    v547[390] = v594;
    v547[391] = v595;
    v596 = qword_1A5F8[j + 438];
    v597 = qword_1A5F8[j + 439];
    CLKAddPoints();
    v547[438] = v598;
    v547[439] = v599;
    v600 = qword_1A5F8[j + 462];
    v601 = qword_1A5F8[j + 463];
    CLKAddPoints();
    v547[462] = v602;
    v547[463] = v603;
    v604 = qword_1A5F8[j + 486];
    v605 = qword_1A5F8[j + 487];
    CLKAddPoints();
    v547[486] = v606;
    v547[487] = v607;
  }

  qword_1A5F8[0] = &qword_1A6E8;
  unk_1A600 = &qword_1A9E8;
  qword_1A608 = &qword_1ACE8;
  unk_1A610 = &qword_1AFE8;
  qword_1A618 = &qword_1B2E8;
  unk_1A620 = &qword_1A728;
  qword_1A628 = &qword_1AA28;
  unk_1A630 = &qword_1AD28;
  qword_1A638 = &qword_1B028;
  unk_1A640 = &qword_1B328;
  qword_1A648 = &qword_1A768;
  unk_1A650 = &qword_1AA68;
  qword_1A658 = &qword_1AD68;
  unk_1A660 = &qword_1B068;
  qword_1A668 = &qword_1B368;
  unk_1A670 = &qword_1A7A8;
  qword_1A678 = &qword_1AAA8;
  unk_1A680 = &qword_1ADA8;
  qword_1A688 = &qword_1B0A8;
  unk_1A690 = &qword_1B3A8;
  qword_1A698 = &qword_1A868;
  unk_1A6A0 = &qword_1AB68;
  qword_1A6A8 = &qword_1AE68;
  unk_1A6B0 = &qword_1B168;
  qword_1A6B8 = &qword_1B468;
  unk_1A6C0 = &qword_1A928;
  qword_1A6C8 = &qword_1AC28;
  unk_1A6D0 = &qword_1AF28;
  qword_1A6D8 = &qword_1B228;
  unk_1A6E0 = &qword_1B528;
  [v3 scaledValue:74.5];
  v696 = v608;
  [v3 scaledValue:95.0];
  v693 = v609;
  [v3 scaledValue:94.0];
  v691 = v610;
  [v3 scaledValue:92.5];
  v689 = v611;
  [v3 scaledValue:63.0];
  v687 = v612;
  [v3 scaledValue:87.5];
  v614 = v613;
  [v3 scaledValue:95.0];
  v616 = v615;
  [v3 scaledValue:91.5];
  v618 = v617;
  [v3 scaledValue:68.0];
  v620 = v619;
  [v3 scaledValue:82.0];
  v622 = v621;
  [v3 scaledValue:81.0];
  v624 = v623;
  [v3 scaledValue:36.0];
  v626 = v625;
  [v3 scaledValue:32.5];
  v628 = v627;
  [v3 scaledValue:34.0];
  qword_1B5E8 = v696;
  qword_1B5F0 = v693;
  qword_1B5F8 = v691;
  qword_1B600 = v689;
  qword_1B608 = v687;
  qword_1B610 = v614;
  qword_1B618 = v616;
  qword_1B620 = v616;
  qword_1B628 = v618;
  qword_1B630 = v620;
  qword_1B638 = v622;
  qword_1B640 = v622;
  qword_1B648 = v622;
  qword_1B650 = v622;
  qword_1B658 = v624;
  qword_1B660 = v628;
  qword_1B668 = v629;
  qword_1B670 = v629;
  qword_1B678 = v629;
  qword_1B680 = v628;
  qword_1B688 = v628;
  qword_1B690 = v629;
  qword_1B698 = v629;
  qword_1B6A0 = v629;
  qword_1B6A8 = v628;
  qword_1B6B0 = v628;
  qword_1B6B8 = v628;
  qword_1B6C0 = v628;
  qword_1B6C8 = v628;
  qword_1B6D0 = v626;
  v756[0] = &off_15A08;
  v754[0] = &off_15A20;
  v752 = &off_15A08;
  v750[0] = &off_15A38;
  [v3 scaledValue:21.0];
  v697 = [NSNumber numberWithDouble:?];
  v751[0] = v697;
  v750[1] = &off_15A50;
  [v3 scaledValue:-3.0];
  v695 = [NSNumber numberWithDouble:?];
  v751[1] = v695;
  v750[2] = &off_15A68;
  [v3 scaledValue:-3.0];
  v694 = [NSNumber numberWithDouble:?];
  v751[2] = v694;
  v750[3] = &off_15A80;
  [v3 scaledValue:-3.0];
  v692 = [NSNumber numberWithDouble:?];
  v749[0] = v692;
  [v3 scaledValue:-7.0];
  v690 = [NSNumber numberWithDouble:?];
  v749[1] = v690;
  v688 = [NSArray arrayWithObjects:v749 count:2];
  v751[3] = v688;
  v686 = [NSDictionary dictionaryWithObjects:v751 forKeys:v750 count:4];
  v753 = v686;
  v685 = [NSDictionary dictionaryWithObjects:&v753 forKeys:&v752 count:1];
  v754[1] = &off_15A98;
  v755[0] = v685;
  v747[0] = &off_15A08;
  v745[0] = &off_15A50;
  [v3 scaledValue:-22.0];
  v684 = [NSNumber numberWithDouble:?];
  v746[0] = v684;
  v745[1] = &off_15A68;
  [v3 scaledValue:-22.0];
  v683 = [NSNumber numberWithDouble:?];
  v746[1] = v683;
  v745[2] = &off_15A80;
  [v3 scaledValue:-13.0];
  v682 = [NSNumber numberWithDouble:?];
  v746[2] = v682;
  v681 = [NSDictionary dictionaryWithObjects:v746 forKeys:v745 count:3];
  v748[0] = v681;
  v747[1] = &off_15A20;
  v743[0] = &off_15A50;
  [v3 scaledValue:-8.0];
  v680 = [NSNumber numberWithDouble:?];
  v744[0] = v680;
  v743[1] = &off_15AB0;
  [v3 scaledValue:-5.0];
  v679 = [NSNumber numberWithDouble:?];
  v744[1] = v679;
  v743[2] = &off_15AC8;
  [v3 scaledValue:-2.0];
  v678 = [NSNumber numberWithDouble:?];
  v744[2] = v678;
  v743[3] = &off_15A68;
  [v3 scaledValue:-8.0];
  v677 = [NSNumber numberWithDouble:?];
  v744[3] = v677;
  v743[4] = &off_15AE0;
  [v3 scaledValue:-8.0];
  v676 = [NSNumber numberWithDouble:?];
  v744[4] = v676;
  v743[5] = &off_15A80;
  [v3 scaledValue:-4.0];
  v675 = [NSNumber numberWithDouble:?];
  v744[5] = v675;
  v674 = [NSDictionary dictionaryWithObjects:v744 forKeys:v743 count:6];
  v748[1] = v674;
  v673 = [NSDictionary dictionaryWithObjects:v748 forKeys:v747 count:2];
  v755[1] = v673;
  v672 = [NSDictionary dictionaryWithObjects:v755 forKeys:v754 count:2];
  v757[0] = v672;
  v756[1] = &off_15A20;
  v741[0] = &off_15A08;
  v739[0] = &off_15A08;
  v737 = &off_15A80;
  [v3 scaledValue:-6.0];
  v671 = [NSNumber numberWithDouble:?];
  v738 = v671;
  v670 = [NSDictionary dictionaryWithObjects:&v738 forKeys:&v737 count:1];
  v740[0] = v670;
  v739[1] = &off_15A20;
  v735[0] = &off_15AF8;
  [v3 scaledValue:-1.0];
  v669 = [NSNumber numberWithDouble:?];
  v736[0] = v669;
  v735[1] = &off_15AE0;
  [v3 scaledValue:-2.0];
  v668 = [NSNumber numberWithDouble:?];
  v736[1] = v668;
  v667 = [NSDictionary dictionaryWithObjects:v736 forKeys:v735 count:2];
  v740[1] = v667;
  v666 = [NSDictionary dictionaryWithObjects:v740 forKeys:v739 count:2];
  v742[0] = v666;
  v741[1] = &off_15A20;
  v733[0] = &off_15A08;
  v731 = &off_15A80;
  [v3 scaledValue:-7.0];
  v665 = [NSNumber numberWithDouble:?];
  v732 = v665;
  v664 = [NSDictionary dictionaryWithObjects:&v732 forKeys:&v731 count:1];
  v734[0] = v664;
  v733[1] = &off_15A20;
  v729[0] = &off_15AF8;
  [v3 scaledValue:-1.0];
  v663 = [NSNumber numberWithDouble:?];
  v730[0] = v663;
  v729[1] = &off_15AE0;
  [v3 scaledValue:-2.0];
  v662 = [NSNumber numberWithDouble:?];
  v730[1] = v662;
  v661 = [NSDictionary dictionaryWithObjects:v730 forKeys:v729 count:2];
  v734[1] = v661;
  v660 = [NSDictionary dictionaryWithObjects:v734 forKeys:v733 count:2];
  v742[1] = v660;
  v741[2] = &off_15A98;
  v727[0] = &off_15A08;
  v725 = &off_15A80;
  [v3 scaledValue:-2.0];
  v659 = [NSNumber numberWithDouble:?];
  v726 = v659;
  v658 = [NSDictionary dictionaryWithObjects:&v726 forKeys:&v725 count:1];
  v728[0] = v658;
  v727[1] = &off_15A20;
  v723 = &off_15AE0;
  [v3 scaledValue:-14.0];
  v657 = [NSNumber numberWithDouble:?];
  v724 = v657;
  v656 = [NSDictionary dictionaryWithObjects:&v724 forKeys:&v723 count:1];
  v728[1] = v656;
  v655 = [NSDictionary dictionaryWithObjects:v728 forKeys:v727 count:2];
  v742[2] = v655;
  v654 = [NSDictionary dictionaryWithObjects:v742 forKeys:v741 count:3];
  v757[1] = v654;
  v756[2] = &off_15A98;
  v721[0] = &off_15A08;
  v719 = &off_15A08;
  v717 = &off_15A80;
  [v3 scaledValue:-4.0];
  v653 = [NSNumber numberWithDouble:?];
  v718 = v653;
  v652 = [NSDictionary dictionaryWithObjects:&v718 forKeys:&v717 count:1];
  v720 = v652;
  v651 = [NSDictionary dictionaryWithObjects:&v720 forKeys:&v719 count:1];
  v722[0] = v651;
  v721[1] = &off_15A20;
  v715 = &off_15A08;
  v713 = &off_15A80;
  [v3 scaledValue:-7.0];
  v650 = [NSNumber numberWithDouble:?];
  v714 = v650;
  v649 = [NSDictionary dictionaryWithObjects:&v714 forKeys:&v713 count:1];
  v716 = v649;
  v648 = [NSDictionary dictionaryWithObjects:&v716 forKeys:&v715 count:1];
  v722[1] = v648;
  v721[2] = &off_15A98;
  v711[0] = &off_15A08;
  v709 = &off_15A80;
  [v3 scaledValue:-18.0];
  v647 = [NSNumber numberWithDouble:?];
  v710 = v647;
  v646 = [NSDictionary dictionaryWithObjects:&v710 forKeys:&v709 count:1];
  v712[0] = v646;
  v711[1] = &off_15A20;
  v707[0] = &off_15AF8;
  [v3 scaledValue:-14.0];
  v645 = [NSNumber numberWithDouble:?];
  v708[0] = v645;
  v707[1] = &off_15AE0;
  [v3 scaledValue:-14.0];
  v644 = [NSNumber numberWithDouble:?];
  v708[1] = v644;
  v707[2] = &off_15A80;
  [v3 scaledValue:-6.0];
  v643 = [NSNumber numberWithDouble:?];
  v708[2] = v643;
  v642 = [NSDictionary dictionaryWithObjects:v708 forKeys:v707 count:3];
  v712[1] = v642;
  v641 = [NSDictionary dictionaryWithObjects:v712 forKeys:v711 count:2];
  v722[2] = v641;
  v640 = [NSDictionary dictionaryWithObjects:v722 forKeys:v721 count:3];
  v757[2] = v640;
  v756[3] = &off_15B10;
  v705 = &off_15A98;
  v703[0] = &off_15A08;
  v701 = &off_15A80;
  [v3 scaledValue:-9.0];
  v639 = [NSNumber numberWithDouble:?];
  v702 = v639;
  v630 = [NSDictionary dictionaryWithObjects:&v702 forKeys:&v701 count:1];
  v704[0] = v630;
  v703[1] = &off_15A20;
  v699[0] = &off_15AF8;
  [v3 scaledValue:-3.0];
  v631 = [NSNumber numberWithDouble:?];
  v700[0] = v631;
  v699[1] = &off_15AE0;
  [v3 scaledValue:-3.0];
  v632 = [NSNumber numberWithDouble:?];
  v700[1] = v632;
  v699[2] = &off_15A80;
  [v3 scaledValue:-4.0];
  v633 = [NSNumber numberWithDouble:?];
  v700[2] = v633;
  v634 = [NSDictionary dictionaryWithObjects:v700 forKeys:v699 count:3];
  v704[1] = v634;
  v635 = [NSDictionary dictionaryWithObjects:v704 forKeys:v703 count:2];
  v706 = v635;
  v636 = [NSDictionary dictionaryWithObjects:&v706 forKeys:&v705 count:1];
  v757[3] = v636;
  v637 = [NSDictionary dictionaryWithObjects:v757 forKeys:v756 count:4];
  v638 = qword_1B6D8;
  qword_1B6D8 = v637;
}

void sub_AF8C(id a1)
{
  qword_1B700 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_B204(uint64_t a1)
{
  v2 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v2;
  v10 = *(a1 + 72);
  v3 = [*(a1 + 32) greyhoundContentView];
  [v3 setTransform:&v8];

  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v4 = [*(a1 + 32) dialComplicationContainerView];
  v8 = v5;
  v9 = v6;
  v10 = v7;
  [v4 setTransform:&v8];
}

void sub_C514(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_1B758);
  if (qword_1B760)
  {
    v3 = qword_1B760 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_1B768))
  {
    qword_1B760 = v7;
    qword_1B768 = [v7 version];
    sub_C604(v7, v8);
    xmmword_1B730 = v8[2];
    unk_1B740 = v8[3];
    qword_1B750 = v9;
    xmmword_1B710 = v8[0];
    unk_1B720 = v8[1];
  }

  v5 = unk_1B740;
  *(a2 + 32) = xmmword_1B730;
  *(a2 + 48) = v5;
  *(a2 + 64) = qword_1B750;
  v6 = unk_1B720;
  *a2 = xmmword_1B710;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&unk_1B758);
}

void sub_C604(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:15.0];
  *a2 = v4;
  *(a2 + 8) = v4 + -2.5;
  *(a2 + 16) = UIFontWeightBlack;
  *(a2 + 24) = UIFontWeightHeavy;
  *(a2 + 48) = 0x3FED70A3D70A3D71;
  [v3 constantValue:2 withOverride:0.92 forSizeClass:0.89];
  *(a2 + 56) = v5;
  [v3 scaledValue:3 withOverride:-62.0 forSizeClass:-69.0];
  *(a2 + 32) = v6;
  *(a2 + 40) = v6 + 5.0;
  v9[0] = &off_15B88;
  v9[1] = &off_15BA0;
  v10[0] = &off_16218;
  v10[1] = &off_16228;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v3 constantValue:v7 withOverrides:1.0];
  *(a2 + 64) = v8;
}