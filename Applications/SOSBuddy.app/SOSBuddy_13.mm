void *sub_10011D238(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v59 = v6;
  v7 = v1[3];
  type metadata accessor for AlertAppearanceModel();
  sub_100126650(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel);
  v8 = static ObservableObject.environmentStore.getter();
  v9 = v1[2];
  type metadata accessor for AppEvents();
  sub_100126650(&qword_100354D48, type metadata accessor for AppEvents);

  v10 = static ObservableObject.environmentStore.getter();
  v56 = v1[4];
  type metadata accessor for AppPropertiesModel();
  sub_100126650(&qword_10035B6A0, type metadata accessor for AppPropertiesModel);

  v57 = static ObservableObject.environmentStore.getter();
  v58 = v1[5];
  *&v62 = v5;
  *(&v62 + 1) = v3;
  *&v63 = v8;
  *(&v63 + 1) = v7;
  *&v64 = v10;
  *(&v64 + 1) = v9;
  *&v65 = v57;
  *(&v65 + 1) = v56;
  type metadata accessor for AppRuntimeStateModel();
  sub_100126650(&qword_10035D780, type metadata accessor for AppRuntimeStateModel);

  v11 = static ObservableObject.environmentStore.getter();
  v265[0] = v62;
  v265[1] = v63;
  v265[2] = v64;
  v265[3] = v65;
  v66[0] = v5;
  v66[1] = v3;
  v66[2] = v8;
  v66[3] = v7;
  v66[4] = v10;
  v66[5] = v9;
  v66[6] = v57;
  v66[7] = v56;
  sub_100006C20(&v62, v266, &qword_10035F470);

  sub_100008FA0(v66, &qword_10035F470);
  v12 = v1[6];
  v67 = v265[0];
  v68 = v265[1];
  v69 = v265[2];
  v70 = v265[3];
  *&v71 = v11;
  *(&v71 + 1) = v58;
  type metadata accessor for BannerAppearanceModel();
  sub_100126650(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v13 = static ObservableObject.environmentStore.getter();
  __dst[2] = v69;
  __dst[3] = v70;
  __dst[4] = v71;
  __dst[0] = v67;
  __dst[1] = v68;
  v72[0] = v265[0];
  v72[1] = v265[1];
  v72[2] = v265[2];
  v72[3] = v265[3];
  v73 = v11;
  v74 = v58;
  sub_100006C20(&v67, v266, &qword_10035F478);

  sub_100008FA0(v72, &qword_10035F478);
  v14 = v1[7];
  v77 = __dst[2];
  v78 = __dst[3];
  v79 = __dst[4];
  v76 = __dst[1];
  v75 = __dst[0];
  *&v80 = v13;
  *(&v80 + 1) = v12;
  type metadata accessor for BluetoothModel();
  sub_100126650(&qword_100357BF8, type metadata accessor for BluetoothModel);
  v15 = static ObservableObject.environmentStore.getter();
  v265[2] = v77;
  v265[3] = v78;
  v265[4] = v79;
  v265[5] = v80;
  v265[0] = v75;
  v265[1] = v76;
  v81[2] = __dst[2];
  v81[3] = __dst[3];
  v81[4] = __dst[4];
  v81[1] = __dst[1];
  v81[0] = __dst[0];
  v82 = v13;
  v83 = v12;
  sub_100006C20(&v75, v266, &qword_10035F480);

  sub_100008FA0(v81, &qword_10035F480);
  v16 = v1[8];
  v17 = v16[14];
  v86 = v265[2];
  v87 = v265[3];
  v88 = v265[4];
  v89 = v265[5];
  v84 = v265[0];
  v85 = v265[1];
  *&v90 = v15;
  *(&v90 + 1) = v14;
  type metadata accessor for ConnectionClosedModel(0);
  sub_100126650(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);

  v18 = static ObservableObject.environmentStore.getter();
  __dst[4] = v88;
  __dst[5] = v89;
  __dst[6] = v90;
  __dst[0] = v84;
  __dst[1] = v85;
  __dst[2] = v86;
  __dst[3] = v87;
  v91[1] = v265[1];
  v91[0] = v265[0];
  v91[5] = v265[5];
  v91[4] = v265[4];
  v91[3] = v265[3];
  v91[2] = v265[2];
  v92 = v15;
  v93 = v14;
  sub_100006C20(&v84, v266, &qword_10035F488);
  sub_100008FA0(v91, &qword_10035F488);
  v19 = v16[9];
  v94 = __dst[0];
  v95 = __dst[1];
  v97 = __dst[3];
  v96 = __dst[2];
  v98 = __dst[4];
  v99 = __dst[5];
  v100 = __dst[6];
  *&v101 = v18;
  *(&v101 + 1) = v17;
  type metadata accessor for ConnectionModel(0);
  sub_100126650(&qword_100354F88, type metadata accessor for ConnectionModel);

  v20 = static ObservableObject.environmentStore.getter();
  v265[4] = v98;
  v265[5] = v99;
  v265[6] = v100;
  v265[7] = v101;
  v265[0] = v94;
  v265[1] = v95;
  v265[2] = v96;
  v265[3] = v97;
  v102[0] = __dst[0];
  v102[1] = __dst[1];
  v102[6] = __dst[6];
  v102[5] = __dst[5];
  v102[4] = __dst[4];
  v102[2] = __dst[2];
  v102[3] = __dst[3];
  v103 = v18;
  v104 = v17;
  sub_100006C20(&v94, v266, &qword_10035F490);
  sub_100008FA0(v102, &qword_10035F490);
  v21 = v16[12];
  v109 = v265[4];
  v110 = v265[5];
  v105 = v265[0];
  v106 = v265[1];
  v107 = v265[2];
  v108 = v265[3];
  v111 = v265[6];
  v112 = v265[7];
  *&v113 = v20;
  *(&v113 + 1) = v19;
  type metadata accessor for ConnectivityModel();
  sub_100126650(&qword_100354F78, type metadata accessor for ConnectivityModel);

  v22 = static ObservableObject.environmentStore.getter();
  __dst[6] = v111;
  __dst[7] = v112;
  __dst[8] = v113;
  __dst[2] = v107;
  __dst[3] = v108;
  __dst[4] = v109;
  __dst[5] = v110;
  __dst[0] = v105;
  __dst[1] = v106;
  v114[4] = v265[4];
  v114[5] = v265[5];
  v114[6] = v265[6];
  v114[7] = v265[7];
  v114[0] = v265[0];
  v114[1] = v265[1];
  v114[2] = v265[2];
  v114[3] = v265[3];
  v115 = v20;
  v116 = v19;
  sub_100006C20(&v105, v266, &qword_10035F498);
  sub_100008FA0(v114, &qword_10035F498);
  v23 = v16[8];
  v119 = __dst[2];
  v120 = __dst[3];
  v118 = __dst[1];
  v117 = __dst[0];
  v123 = __dst[6];
  v124 = __dst[7];
  v125 = __dst[8];
  v122 = __dst[5];
  v121 = __dst[4];
  *&v126 = v22;
  *(&v126 + 1) = v21;
  type metadata accessor for GuidanceMessagesModel();
  sub_100126650(&qword_100357820, type metadata accessor for GuidanceMessagesModel);

  v24 = static ObservableObject.environmentStore.getter();
  v265[6] = v123;
  v265[7] = v124;
  v265[8] = v125;
  v265[9] = v126;
  v265[2] = v119;
  v265[3] = v120;
  v265[4] = v121;
  v265[5] = v122;
  v265[0] = v117;
  v265[1] = v118;
  v127[6] = __dst[6];
  v127[7] = __dst[7];
  v127[8] = __dst[8];
  v127[2] = __dst[2];
  v127[3] = __dst[3];
  v127[5] = __dst[5];
  v127[4] = __dst[4];
  v127[1] = __dst[1];
  v127[0] = __dst[0];
  v128 = v22;
  v129 = v21;
  sub_100006C20(&v117, v266, &qword_10035F4A0);
  sub_100008FA0(v127, &qword_10035F4A0);
  v25 = v16[7];
  v130 = v265[0];
  v131 = v265[1];
  v136 = v265[6];
  v137 = v265[7];
  v138 = v265[8];
  v139 = v265[9];
  v132 = v265[2];
  v133 = v265[3];
  v134 = v265[4];
  v135 = v265[5];
  *&v140 = v24;
  *(&v140 + 1) = v23;
  type metadata accessor for GuidanceModel(0);
  sub_100126650(&qword_100354F80, type metadata accessor for GuidanceModel);

  v26 = static ObservableObject.environmentStore.getter();
  __dst[8] = v138;
  __dst[9] = v139;
  __dst[10] = v140;
  __dst[4] = v134;
  __dst[5] = v135;
  __dst[6] = v136;
  __dst[7] = v137;
  __dst[0] = v130;
  __dst[1] = v131;
  __dst[2] = v132;
  __dst[3] = v133;
  v141[6] = v265[6];
  v141[7] = v265[7];
  v141[8] = v265[8];
  v141[9] = v265[9];
  v141[2] = v265[2];
  v141[3] = v265[3];
  v141[4] = v265[4];
  v141[5] = v265[5];
  v141[0] = v265[0];
  v141[1] = v265[1];
  v142 = v24;
  v143 = v23;
  sub_100006C20(&v130, v266, &qword_10035F4A8);
  sub_100008FA0(v141, &qword_10035F4A8);
  v27 = v16[3];
  v152 = __dst[8];
  v153 = __dst[9];
  v154 = __dst[10];
  v148 = __dst[4];
  v149 = __dst[5];
  v151 = __dst[7];
  v150 = __dst[6];
  v144 = __dst[0];
  v145 = __dst[1];
  v147 = __dst[3];
  v146 = __dst[2];
  *&v155 = v26;
  *(&v155 + 1) = v25;
  type metadata accessor for OrientationModel();
  sub_100126650(&qword_10035B1B0, type metadata accessor for OrientationModel);

  v28 = static ObservableObject.environmentStore.getter();
  v265[8] = v152;
  v265[9] = v153;
  v265[10] = v154;
  v265[11] = v155;
  v265[4] = v148;
  v265[5] = v149;
  v265[6] = v150;
  v265[7] = v151;
  v265[0] = v144;
  v265[1] = v145;
  v265[2] = v146;
  v265[3] = v147;
  v156[8] = __dst[8];
  v156[9] = __dst[9];
  v156[10] = __dst[10];
  v156[4] = __dst[4];
  v156[5] = __dst[5];
  v156[7] = __dst[7];
  v156[6] = __dst[6];
  v156[0] = __dst[0];
  v156[1] = __dst[1];
  v156[3] = __dst[3];
  v156[2] = __dst[2];
  v157 = v26;
  v158 = v25;
  sub_100006C20(&v144, v266, &qword_10035F4B0);
  sub_100008FA0(v156, &qword_10035F4B0);
  v29 = v16[15];
  v163 = v265[4];
  v164 = v265[5];
  v159 = v265[0];
  v160 = v265[1];
  v161 = v265[2];
  v162 = v265[3];
  v167 = v265[8];
  v168 = v265[9];
  v169 = v265[10];
  v170 = v265[11];
  v165 = v265[6];
  v166 = v265[7];
  *&v171 = v28;
  *(&v171 + 1) = v27;
  type metadata accessor for PartnerModel();
  sub_100126650(&qword_1003561A8, type metadata accessor for PartnerModel);

  v30 = static ObservableObject.environmentStore.getter();
  __dst[10] = v169;
  __dst[11] = v170;
  __dst[12] = v171;
  __dst[6] = v165;
  __dst[7] = v166;
  __dst[8] = v167;
  __dst[9] = v168;
  __dst[2] = v161;
  __dst[3] = v162;
  __dst[4] = v163;
  __dst[5] = v164;
  __dst[0] = v159;
  __dst[1] = v160;
  v172[8] = v265[8];
  v172[9] = v265[9];
  v172[10] = v265[10];
  v172[11] = v265[11];
  v172[4] = v265[4];
  v172[5] = v265[5];
  v172[6] = v265[6];
  v172[7] = v265[7];
  v172[0] = v265[0];
  v172[1] = v265[1];
  v172[2] = v265[2];
  v172[3] = v265[3];
  v173 = v28;
  v174 = v27;
  sub_100006C20(&v159, v266, &qword_10035F4B8);
  sub_100008FA0(v172, &qword_10035F4B8);
  v31 = v16[4];
  v176 = __dst[1];
  v175 = __dst[0];
  v185 = __dst[10];
  v186 = __dst[11];
  v187 = __dst[12];
  v181 = __dst[6];
  v182 = __dst[7];
  v184 = __dst[9];
  v183 = __dst[8];
  v177 = __dst[2];
  v178 = __dst[3];
  v180 = __dst[5];
  v179 = __dst[4];
  *&v188 = v30;
  *(&v188 + 1) = v29;
  type metadata accessor for StewieModel(0);
  sub_100126650(&qword_1003561B8, type metadata accessor for StewieModel);

  v32 = static ObservableObject.environmentStore.getter();
  v265[10] = v185;
  v265[11] = v186;
  v265[12] = v187;
  v265[13] = v188;
  v265[6] = v181;
  v265[7] = v182;
  v265[8] = v183;
  v265[9] = v184;
  v265[2] = v177;
  v265[3] = v178;
  v265[4] = v179;
  v265[5] = v180;
  v265[0] = v175;
  v265[1] = v176;
  v189[10] = __dst[10];
  v189[11] = __dst[11];
  v189[12] = __dst[12];
  v189[6] = __dst[6];
  v189[7] = __dst[7];
  v189[9] = __dst[9];
  v189[8] = __dst[8];
  v189[2] = __dst[2];
  v189[3] = __dst[3];
  v189[5] = __dst[5];
  v189[4] = __dst[4];
  v189[1] = __dst[1];
  v189[0] = __dst[0];
  v190 = v30;
  v191 = v29;
  sub_100006C20(&v175, v266, &qword_10035F4C0);
  sub_100008FA0(v189, &qword_10035F4C0);
  v33 = v16[2];
  v202 = v265[10];
  v203 = v265[11];
  v204 = v265[12];
  v205 = v265[13];
  v198 = v265[6];
  v199 = v265[7];
  v200 = v265[8];
  v201 = v265[9];
  v194 = v265[2];
  v195 = v265[3];
  v196 = v265[4];
  v197 = v265[5];
  v192 = v265[0];
  v193 = v265[1];
  *&v206 = v32;
  *(&v206 + 1) = v31;
  type metadata accessor for SystemSettingsModel();
  sub_100126650(&qword_1003561B0, type metadata accessor for SystemSettingsModel);

  v34 = static ObservableObject.environmentStore.getter();
  __dst[12] = v204;
  __dst[13] = v205;
  __dst[14] = v206;
  __dst[8] = v200;
  __dst[9] = v201;
  __dst[10] = v202;
  __dst[11] = v203;
  __dst[4] = v196;
  __dst[5] = v197;
  __dst[6] = v198;
  __dst[7] = v199;
  __dst[0] = v192;
  __dst[1] = v193;
  __dst[2] = v194;
  __dst[3] = v195;
  v207[10] = v265[10];
  v207[11] = v265[11];
  v207[12] = v265[12];
  v207[13] = v265[13];
  v207[6] = v265[6];
  v207[7] = v265[7];
  v207[8] = v265[8];
  v207[9] = v265[9];
  v207[2] = v265[2];
  v207[3] = v265[3];
  v207[4] = v265[4];
  v207[5] = v265[5];
  v207[0] = v265[0];
  v207[1] = v265[1];
  v208 = v32;
  v209 = v31;
  sub_100006C20(&v192, v266, &qword_10035F4C8);
  sub_100008FA0(v207, &qword_10035F4C8);
  v35 = v1[9];
  v222 = __dst[12];
  v223 = __dst[13];
  v224 = __dst[14];
  v218 = __dst[8];
  v219 = __dst[9];
  v221 = __dst[11];
  v220 = __dst[10];
  v214 = __dst[4];
  v215 = __dst[5];
  v217 = __dst[7];
  v216 = __dst[6];
  v210 = __dst[0];
  v211 = __dst[1];
  v213 = __dst[3];
  v212 = __dst[2];
  *&v225 = v34;
  *(&v225 + 1) = v33;
  type metadata accessor for EmergencyModel();
  sub_100126650(&qword_100356B60, type metadata accessor for EmergencyModel);
  v36 = static ObservableObject.environmentStore.getter();
  v265[12] = v222;
  v265[13] = v223;
  v265[14] = v224;
  v265[15] = v225;
  v265[8] = v218;
  v265[9] = v219;
  v265[10] = v220;
  v265[11] = v221;
  v265[4] = v214;
  v265[5] = v215;
  v265[6] = v216;
  v265[7] = v217;
  v265[0] = v210;
  v265[1] = v211;
  v265[2] = v212;
  v265[3] = v213;
  v226[12] = __dst[12];
  v226[13] = __dst[13];
  v226[14] = __dst[14];
  v226[8] = __dst[8];
  v226[9] = __dst[9];
  v226[11] = __dst[11];
  v226[10] = __dst[10];
  v226[4] = __dst[4];
  v226[5] = __dst[5];
  v226[7] = __dst[7];
  v226[6] = __dst[6];
  v226[0] = __dst[0];
  v226[1] = __dst[1];
  v226[3] = __dst[3];
  v226[2] = __dst[2];
  v227 = v34;
  v228 = v33;
  sub_100006C20(&v210, v266, &qword_10035F4D0);

  sub_100008FA0(v226, &qword_10035F4D0);
  v37 = v1[10];
  v229[12] = v265[12];
  v229[13] = v265[13];
  v229[14] = v265[14];
  v229[15] = v265[15];
  v229[8] = v265[8];
  v229[9] = v265[9];
  v229[10] = v265[10];
  v229[11] = v265[11];
  v229[4] = v265[4];
  v229[5] = v265[5];
  v229[6] = v265[6];
  v229[7] = v265[7];
  v229[0] = v265[0];
  v229[1] = v265[1];
  v229[2] = v265[2];
  v229[3] = v265[3];
  *&v229[16] = v36;
  *(&v229[16] + 1) = v35;
  type metadata accessor for GeoLocationModel();
  sub_100126650(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
  v38 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v229, 0x110uLL);
  v230[12] = v265[12];
  v230[13] = v265[13];
  v230[14] = v265[14];
  v230[15] = v265[15];
  v230[8] = v265[8];
  v230[9] = v265[9];
  v230[10] = v265[10];
  v230[11] = v265[11];
  v230[4] = v265[4];
  v230[5] = v265[5];
  v230[6] = v265[6];
  v230[7] = v265[7];
  v230[0] = v265[0];
  v230[1] = v265[1];
  v230[2] = v265[2];
  v230[3] = v265[3];
  v231 = v36;
  v232 = v35;
  sub_100006C20(v229, v266, &qword_10035F4D8);

  sub_100008FA0(v230, &qword_10035F4D8);
  v39 = v1[12];
  memcpy(v233, __dst, 0x110uLL);
  v233[34] = v38;
  v233[35] = v37;
  type metadata accessor for OfferModel();
  sub_100126650(&qword_10035F1E0, type metadata accessor for OfferModel);
  v40 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v233, 0x120uLL);
  memcpy(v234, __dst, sizeof(v234));
  v235 = v38;
  v236 = v37;
  sub_100006C20(v233, v266, &qword_10035F4E0);

  sub_100008FA0(v234, &qword_10035F4E0);
  v41 = v1[19];
  memcpy(v237, v265, 0x120uLL);
  v237[36] = v40;
  v237[37] = v39;
  type metadata accessor for OffTheGridModel();
  sub_100126650(&qword_1003561C0, type metadata accessor for OffTheGridModel);
  v42 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v237, 0x130uLL);
  memcpy(v238, v265, sizeof(v238));
  v239 = v40;
  v240 = v39;
  sub_100006C20(v237, v266, &qword_10035F4E8);

  sub_100008FA0(v238, &qword_10035F4E8);
  v43 = v1[13];
  memcpy(v241, __dst, 0x130uLL);
  v241[38] = v42;
  v241[39] = v41;
  type metadata accessor for OnboardingModel();
  sub_100126650(&qword_10035F1F8, type metadata accessor for OnboardingModel);
  v44 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v241, 0x140uLL);
  memcpy(v242, __dst, sizeof(v242));
  v243 = v42;
  v244 = v41;
  sub_100006C20(v241, v266, &qword_10035F4F0);

  sub_100008FA0(v242, &qword_10035F4F0);
  v45 = v1[14];
  memcpy(v245, v265, 0x140uLL);
  v245[40] = v44;
  v245[41] = v43;
  type metadata accessor for RoadsideAssistanceModel();
  sub_100126650(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  v46 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v245, 0x150uLL);
  memcpy(v246, v265, sizeof(v246));
  v247 = v44;
  v248 = v43;
  sub_100006C20(v245, v266, &qword_10035F4F8);

  sub_100008FA0(v246, &qword_10035F4F8);
  v47 = v1[15];
  memcpy(v249, __dst, 0x150uLL);
  v249[42] = v46;
  v249[43] = v45;
  type metadata accessor for TransitionAlertModel();
  sub_100126650(&qword_10035F210, type metadata accessor for TransitionAlertModel);
  v48 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v249, 0x160uLL);
  memcpy(v250, __dst, sizeof(v250));
  v251 = v46;
  v252 = v45;
  sub_100006C20(v249, v266, &qword_10035F500);

  sub_100008FA0(v250, &qword_10035F500);
  v49 = v1[17];
  memcpy(v253, v265, 0x160uLL);
  v253[44] = v48;
  v253[45] = v47;
  type metadata accessor for TimeZoneModel();
  sub_100126650(&qword_10035F220, type metadata accessor for TimeZoneModel);
  v50 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v253, 0x170uLL);
  memcpy(v254, v265, sizeof(v254));
  v255 = v48;
  v256 = v47;
  sub_100006C20(v253, v266, &qword_10035F508);

  sub_100008FA0(v254, &qword_10035F508);
  v51 = v1[18];
  memcpy(v257, __dst, 0x170uLL);
  v257[46] = v50;
  v257[47] = v49;
  type metadata accessor for TryOutModel();
  sub_100126650(&qword_100357990, type metadata accessor for TryOutModel);
  v52 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v257, 0x180uLL);
  memcpy(v258, __dst, sizeof(v258));
  v259 = v50;
  v260 = v49;
  sub_100006C20(v257, v266, &qword_10035F510);

  sub_100008FA0(v258, &qword_10035F510);
  v53 = v1[20];
  memcpy(v261, v265, 0x180uLL);
  v261[48] = v52;
  v261[49] = v51;
  type metadata accessor for UIMetrics();
  sub_100126650(&qword_100354D40, type metadata accessor for UIMetrics);
  v54 = static ObservableObject.environmentStore.getter();
  memcpy(__src, v261, sizeof(__src));
  memcpy(v262, v265, sizeof(v262));
  v263 = v52;
  v264 = v51;
  sub_100006C20(v261, v266, &qword_10035F518);

  sub_100008FA0(v262, &qword_10035F518);
  memcpy(v265, __src, 0x190uLL);
  *&v265[25] = v54;
  *(&v265[25] + 1) = v53;
  memcpy(v266, __src, sizeof(v266));
  v267 = v54;
  v268 = v53;
  sub_100006C20(v265, __dst, &qword_10035F450);
  sub_100008FA0(v266, &qword_10035F450);
  return memcpy(v59, v265, 0x1A0uLL);
}

void *sub_10011EED0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v59 = v6;
  v7 = v1[3];
  type metadata accessor for AlertAppearanceModel();
  sub_100126650(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel);
  v8 = static ObservableObject.environmentStore.getter();
  v9 = v1[2];
  type metadata accessor for AppEvents();
  sub_100126650(&qword_100354D48, type metadata accessor for AppEvents);

  v10 = static ObservableObject.environmentStore.getter();
  v56 = v1[4];
  type metadata accessor for AppPropertiesModel();
  sub_100126650(&qword_10035B6A0, type metadata accessor for AppPropertiesModel);

  v57 = static ObservableObject.environmentStore.getter();
  v58 = v1[5];
  *&v62 = v5;
  *(&v62 + 1) = v3;
  *&v63 = v8;
  *(&v63 + 1) = v7;
  *&v64 = v10;
  *(&v64 + 1) = v9;
  *&v65 = v57;
  *(&v65 + 1) = v56;
  type metadata accessor for AppRuntimeStateModel();
  sub_100126650(&qword_10035D780, type metadata accessor for AppRuntimeStateModel);

  v11 = static ObservableObject.environmentStore.getter();
  v265[0] = v62;
  v265[1] = v63;
  v265[2] = v64;
  v265[3] = v65;
  v66[0] = v5;
  v66[1] = v3;
  v66[2] = v8;
  v66[3] = v7;
  v66[4] = v10;
  v66[5] = v9;
  v66[6] = v57;
  v66[7] = v56;
  sub_100006C20(&v62, v266, &qword_10035F168);

  sub_100008FA0(v66, &qword_10035F168);
  v12 = v1[6];
  v67 = v265[0];
  v68 = v265[1];
  v69 = v265[2];
  v70 = v265[3];
  *&v71 = v11;
  *(&v71 + 1) = v58;
  type metadata accessor for BannerAppearanceModel();
  sub_100126650(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v13 = static ObservableObject.environmentStore.getter();
  __dst[2] = v69;
  __dst[3] = v70;
  __dst[4] = v71;
  __dst[0] = v67;
  __dst[1] = v68;
  v72[0] = v265[0];
  v72[1] = v265[1];
  v72[2] = v265[2];
  v72[3] = v265[3];
  v73 = v11;
  v74 = v58;
  sub_100006C20(&v67, v266, &qword_10035F170);

  sub_100008FA0(v72, &qword_10035F170);
  v14 = v1[7];
  v77 = __dst[2];
  v78 = __dst[3];
  v79 = __dst[4];
  v76 = __dst[1];
  v75 = __dst[0];
  *&v80 = v13;
  *(&v80 + 1) = v12;
  type metadata accessor for BluetoothModel();
  sub_100126650(&qword_100357BF8, type metadata accessor for BluetoothModel);
  v15 = static ObservableObject.environmentStore.getter();
  v265[2] = v77;
  v265[3] = v78;
  v265[4] = v79;
  v265[5] = v80;
  v265[0] = v75;
  v265[1] = v76;
  v81[2] = __dst[2];
  v81[3] = __dst[3];
  v81[4] = __dst[4];
  v81[1] = __dst[1];
  v81[0] = __dst[0];
  v82 = v13;
  v83 = v12;
  sub_100006C20(&v75, v266, &qword_10035F178);

  sub_100008FA0(v81, &qword_10035F178);
  v16 = v1[8];
  v17 = v16[14];
  v86 = v265[2];
  v87 = v265[3];
  v88 = v265[4];
  v89 = v265[5];
  v84 = v265[0];
  v85 = v265[1];
  *&v90 = v15;
  *(&v90 + 1) = v14;
  type metadata accessor for ConnectionClosedModel(0);
  sub_100126650(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);

  v18 = static ObservableObject.environmentStore.getter();
  __dst[4] = v88;
  __dst[5] = v89;
  __dst[6] = v90;
  __dst[0] = v84;
  __dst[1] = v85;
  __dst[2] = v86;
  __dst[3] = v87;
  v91[1] = v265[1];
  v91[0] = v265[0];
  v91[5] = v265[5];
  v91[4] = v265[4];
  v91[3] = v265[3];
  v91[2] = v265[2];
  v92 = v15;
  v93 = v14;
  sub_100006C20(&v84, v266, &qword_10035F180);
  sub_100008FA0(v91, &qword_10035F180);
  v19 = v16[9];
  v94 = __dst[0];
  v95 = __dst[1];
  v97 = __dst[3];
  v96 = __dst[2];
  v98 = __dst[4];
  v99 = __dst[5];
  v100 = __dst[6];
  *&v101 = v18;
  *(&v101 + 1) = v17;
  type metadata accessor for ConnectionModel(0);
  sub_100126650(&qword_100354F88, type metadata accessor for ConnectionModel);

  v20 = static ObservableObject.environmentStore.getter();
  v265[4] = v98;
  v265[5] = v99;
  v265[6] = v100;
  v265[7] = v101;
  v265[0] = v94;
  v265[1] = v95;
  v265[2] = v96;
  v265[3] = v97;
  v102[0] = __dst[0];
  v102[1] = __dst[1];
  v102[6] = __dst[6];
  v102[5] = __dst[5];
  v102[4] = __dst[4];
  v102[2] = __dst[2];
  v102[3] = __dst[3];
  v103 = v18;
  v104 = v17;
  sub_100006C20(&v94, v266, &qword_10035F188);
  sub_100008FA0(v102, &qword_10035F188);
  v21 = v16[12];
  v109 = v265[4];
  v110 = v265[5];
  v105 = v265[0];
  v106 = v265[1];
  v107 = v265[2];
  v108 = v265[3];
  v111 = v265[6];
  v112 = v265[7];
  *&v113 = v20;
  *(&v113 + 1) = v19;
  type metadata accessor for ConnectivityModel();
  sub_100126650(&qword_100354F78, type metadata accessor for ConnectivityModel);

  v22 = static ObservableObject.environmentStore.getter();
  __dst[6] = v111;
  __dst[7] = v112;
  __dst[8] = v113;
  __dst[2] = v107;
  __dst[3] = v108;
  __dst[4] = v109;
  __dst[5] = v110;
  __dst[0] = v105;
  __dst[1] = v106;
  v114[4] = v265[4];
  v114[5] = v265[5];
  v114[6] = v265[6];
  v114[7] = v265[7];
  v114[0] = v265[0];
  v114[1] = v265[1];
  v114[2] = v265[2];
  v114[3] = v265[3];
  v115 = v20;
  v116 = v19;
  sub_100006C20(&v105, v266, &qword_10035F190);
  sub_100008FA0(v114, &qword_10035F190);
  v23 = v16[8];
  v119 = __dst[2];
  v120 = __dst[3];
  v118 = __dst[1];
  v117 = __dst[0];
  v123 = __dst[6];
  v124 = __dst[7];
  v125 = __dst[8];
  v122 = __dst[5];
  v121 = __dst[4];
  *&v126 = v22;
  *(&v126 + 1) = v21;
  type metadata accessor for GuidanceMessagesModel();
  sub_100126650(&qword_100357820, type metadata accessor for GuidanceMessagesModel);

  v24 = static ObservableObject.environmentStore.getter();
  v265[6] = v123;
  v265[7] = v124;
  v265[8] = v125;
  v265[9] = v126;
  v265[2] = v119;
  v265[3] = v120;
  v265[4] = v121;
  v265[5] = v122;
  v265[0] = v117;
  v265[1] = v118;
  v127[6] = __dst[6];
  v127[7] = __dst[7];
  v127[8] = __dst[8];
  v127[2] = __dst[2];
  v127[3] = __dst[3];
  v127[5] = __dst[5];
  v127[4] = __dst[4];
  v127[1] = __dst[1];
  v127[0] = __dst[0];
  v128 = v22;
  v129 = v21;
  sub_100006C20(&v117, v266, &qword_10035F198);
  sub_100008FA0(v127, &qword_10035F198);
  v25 = v16[7];
  v130 = v265[0];
  v131 = v265[1];
  v136 = v265[6];
  v137 = v265[7];
  v138 = v265[8];
  v139 = v265[9];
  v132 = v265[2];
  v133 = v265[3];
  v134 = v265[4];
  v135 = v265[5];
  *&v140 = v24;
  *(&v140 + 1) = v23;
  type metadata accessor for GuidanceModel(0);
  sub_100126650(&qword_100354F80, type metadata accessor for GuidanceModel);

  v26 = static ObservableObject.environmentStore.getter();
  __dst[8] = v138;
  __dst[9] = v139;
  __dst[10] = v140;
  __dst[4] = v134;
  __dst[5] = v135;
  __dst[6] = v136;
  __dst[7] = v137;
  __dst[0] = v130;
  __dst[1] = v131;
  __dst[2] = v132;
  __dst[3] = v133;
  v141[6] = v265[6];
  v141[7] = v265[7];
  v141[8] = v265[8];
  v141[9] = v265[9];
  v141[2] = v265[2];
  v141[3] = v265[3];
  v141[4] = v265[4];
  v141[5] = v265[5];
  v141[0] = v265[0];
  v141[1] = v265[1];
  v142 = v24;
  v143 = v23;
  sub_100006C20(&v130, v266, &qword_10035F1A0);
  sub_100008FA0(v141, &qword_10035F1A0);
  v27 = v16[3];
  v152 = __dst[8];
  v153 = __dst[9];
  v154 = __dst[10];
  v148 = __dst[4];
  v149 = __dst[5];
  v151 = __dst[7];
  v150 = __dst[6];
  v144 = __dst[0];
  v145 = __dst[1];
  v147 = __dst[3];
  v146 = __dst[2];
  *&v155 = v26;
  *(&v155 + 1) = v25;
  type metadata accessor for OrientationModel();
  sub_100126650(&qword_10035B1B0, type metadata accessor for OrientationModel);

  v28 = static ObservableObject.environmentStore.getter();
  v265[8] = v152;
  v265[9] = v153;
  v265[10] = v154;
  v265[11] = v155;
  v265[4] = v148;
  v265[5] = v149;
  v265[6] = v150;
  v265[7] = v151;
  v265[0] = v144;
  v265[1] = v145;
  v265[2] = v146;
  v265[3] = v147;
  v156[8] = __dst[8];
  v156[9] = __dst[9];
  v156[10] = __dst[10];
  v156[4] = __dst[4];
  v156[5] = __dst[5];
  v156[7] = __dst[7];
  v156[6] = __dst[6];
  v156[0] = __dst[0];
  v156[1] = __dst[1];
  v156[3] = __dst[3];
  v156[2] = __dst[2];
  v157 = v26;
  v158 = v25;
  sub_100006C20(&v144, v266, &qword_10035F1A8);
  sub_100008FA0(v156, &qword_10035F1A8);
  v29 = v16[15];
  v163 = v265[4];
  v164 = v265[5];
  v159 = v265[0];
  v160 = v265[1];
  v161 = v265[2];
  v162 = v265[3];
  v167 = v265[8];
  v168 = v265[9];
  v169 = v265[10];
  v170 = v265[11];
  v165 = v265[6];
  v166 = v265[7];
  *&v171 = v28;
  *(&v171 + 1) = v27;
  type metadata accessor for PartnerModel();
  sub_100126650(&qword_1003561A8, type metadata accessor for PartnerModel);

  v30 = static ObservableObject.environmentStore.getter();
  __dst[10] = v169;
  __dst[11] = v170;
  __dst[12] = v171;
  __dst[6] = v165;
  __dst[7] = v166;
  __dst[8] = v167;
  __dst[9] = v168;
  __dst[2] = v161;
  __dst[3] = v162;
  __dst[4] = v163;
  __dst[5] = v164;
  __dst[0] = v159;
  __dst[1] = v160;
  v172[8] = v265[8];
  v172[9] = v265[9];
  v172[10] = v265[10];
  v172[11] = v265[11];
  v172[4] = v265[4];
  v172[5] = v265[5];
  v172[6] = v265[6];
  v172[7] = v265[7];
  v172[0] = v265[0];
  v172[1] = v265[1];
  v172[2] = v265[2];
  v172[3] = v265[3];
  v173 = v28;
  v174 = v27;
  sub_100006C20(&v159, v266, &qword_10035F1B0);
  sub_100008FA0(v172, &qword_10035F1B0);
  v31 = v16[4];
  v176 = __dst[1];
  v175 = __dst[0];
  v185 = __dst[10];
  v186 = __dst[11];
  v187 = __dst[12];
  v181 = __dst[6];
  v182 = __dst[7];
  v184 = __dst[9];
  v183 = __dst[8];
  v177 = __dst[2];
  v178 = __dst[3];
  v180 = __dst[5];
  v179 = __dst[4];
  *&v188 = v30;
  *(&v188 + 1) = v29;
  type metadata accessor for StewieModel(0);
  sub_100126650(&qword_1003561B8, type metadata accessor for StewieModel);

  v32 = static ObservableObject.environmentStore.getter();
  v265[10] = v185;
  v265[11] = v186;
  v265[12] = v187;
  v265[13] = v188;
  v265[6] = v181;
  v265[7] = v182;
  v265[8] = v183;
  v265[9] = v184;
  v265[2] = v177;
  v265[3] = v178;
  v265[4] = v179;
  v265[5] = v180;
  v265[0] = v175;
  v265[1] = v176;
  v189[10] = __dst[10];
  v189[11] = __dst[11];
  v189[12] = __dst[12];
  v189[6] = __dst[6];
  v189[7] = __dst[7];
  v189[9] = __dst[9];
  v189[8] = __dst[8];
  v189[2] = __dst[2];
  v189[3] = __dst[3];
  v189[5] = __dst[5];
  v189[4] = __dst[4];
  v189[1] = __dst[1];
  v189[0] = __dst[0];
  v190 = v30;
  v191 = v29;
  sub_100006C20(&v175, v266, &qword_10035F1B8);
  sub_100008FA0(v189, &qword_10035F1B8);
  v33 = v16[2];
  v202 = v265[10];
  v203 = v265[11];
  v204 = v265[12];
  v205 = v265[13];
  v198 = v265[6];
  v199 = v265[7];
  v200 = v265[8];
  v201 = v265[9];
  v194 = v265[2];
  v195 = v265[3];
  v196 = v265[4];
  v197 = v265[5];
  v192 = v265[0];
  v193 = v265[1];
  *&v206 = v32;
  *(&v206 + 1) = v31;
  type metadata accessor for SystemSettingsModel();
  sub_100126650(&qword_1003561B0, type metadata accessor for SystemSettingsModel);

  v34 = static ObservableObject.environmentStore.getter();
  __dst[12] = v204;
  __dst[13] = v205;
  __dst[14] = v206;
  __dst[8] = v200;
  __dst[9] = v201;
  __dst[10] = v202;
  __dst[11] = v203;
  __dst[4] = v196;
  __dst[5] = v197;
  __dst[6] = v198;
  __dst[7] = v199;
  __dst[0] = v192;
  __dst[1] = v193;
  __dst[2] = v194;
  __dst[3] = v195;
  v207[10] = v265[10];
  v207[11] = v265[11];
  v207[12] = v265[12];
  v207[13] = v265[13];
  v207[6] = v265[6];
  v207[7] = v265[7];
  v207[8] = v265[8];
  v207[9] = v265[9];
  v207[2] = v265[2];
  v207[3] = v265[3];
  v207[4] = v265[4];
  v207[5] = v265[5];
  v207[0] = v265[0];
  v207[1] = v265[1];
  v208 = v32;
  v209 = v31;
  sub_100006C20(&v192, v266, &qword_10035F1C0);
  sub_100008FA0(v207, &qword_10035F1C0);
  v35 = v1[9];
  v222 = __dst[12];
  v223 = __dst[13];
  v224 = __dst[14];
  v218 = __dst[8];
  v219 = __dst[9];
  v221 = __dst[11];
  v220 = __dst[10];
  v214 = __dst[4];
  v215 = __dst[5];
  v217 = __dst[7];
  v216 = __dst[6];
  v210 = __dst[0];
  v211 = __dst[1];
  v213 = __dst[3];
  v212 = __dst[2];
  *&v225 = v34;
  *(&v225 + 1) = v33;
  type metadata accessor for EmergencyModel();
  sub_100126650(&qword_100356B60, type metadata accessor for EmergencyModel);
  v36 = static ObservableObject.environmentStore.getter();
  v265[12] = v222;
  v265[13] = v223;
  v265[14] = v224;
  v265[15] = v225;
  v265[8] = v218;
  v265[9] = v219;
  v265[10] = v220;
  v265[11] = v221;
  v265[4] = v214;
  v265[5] = v215;
  v265[6] = v216;
  v265[7] = v217;
  v265[0] = v210;
  v265[1] = v211;
  v265[2] = v212;
  v265[3] = v213;
  v226[12] = __dst[12];
  v226[13] = __dst[13];
  v226[14] = __dst[14];
  v226[8] = __dst[8];
  v226[9] = __dst[9];
  v226[11] = __dst[11];
  v226[10] = __dst[10];
  v226[4] = __dst[4];
  v226[5] = __dst[5];
  v226[7] = __dst[7];
  v226[6] = __dst[6];
  v226[0] = __dst[0];
  v226[1] = __dst[1];
  v226[3] = __dst[3];
  v226[2] = __dst[2];
  v227 = v34;
  v228 = v33;
  sub_100006C20(&v210, v266, &qword_10035F1C8);

  sub_100008FA0(v226, &qword_10035F1C8);
  v37 = v1[10];
  v229[12] = v265[12];
  v229[13] = v265[13];
  v229[14] = v265[14];
  v229[15] = v265[15];
  v229[8] = v265[8];
  v229[9] = v265[9];
  v229[10] = v265[10];
  v229[11] = v265[11];
  v229[4] = v265[4];
  v229[5] = v265[5];
  v229[6] = v265[6];
  v229[7] = v265[7];
  v229[0] = v265[0];
  v229[1] = v265[1];
  v229[2] = v265[2];
  v229[3] = v265[3];
  *&v229[16] = v36;
  *(&v229[16] + 1) = v35;
  type metadata accessor for GeoLocationModel();
  sub_100126650(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
  v38 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v229, 0x110uLL);
  v230[12] = v265[12];
  v230[13] = v265[13];
  v230[14] = v265[14];
  v230[15] = v265[15];
  v230[8] = v265[8];
  v230[9] = v265[9];
  v230[10] = v265[10];
  v230[11] = v265[11];
  v230[4] = v265[4];
  v230[5] = v265[5];
  v230[6] = v265[6];
  v230[7] = v265[7];
  v230[0] = v265[0];
  v230[1] = v265[1];
  v230[2] = v265[2];
  v230[3] = v265[3];
  v231 = v36;
  v232 = v35;
  sub_100006C20(v229, v266, &qword_10035F1D8);

  sub_100008FA0(v230, &qword_10035F1D8);
  v39 = v1[12];
  memcpy(v233, __dst, 0x110uLL);
  v233[34] = v38;
  v233[35] = v37;
  type metadata accessor for OfferModel();
  sub_100126650(&qword_10035F1E0, type metadata accessor for OfferModel);
  v40 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v233, 0x120uLL);
  memcpy(v234, __dst, sizeof(v234));
  v235 = v38;
  v236 = v37;
  sub_100006C20(v233, v266, &qword_10035F1E8);

  sub_100008FA0(v234, &qword_10035F1E8);
  v41 = v1[19];
  memcpy(v237, v265, 0x120uLL);
  v237[36] = v40;
  v237[37] = v39;
  type metadata accessor for OffTheGridModel();
  sub_100126650(&qword_1003561C0, type metadata accessor for OffTheGridModel);
  v42 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v237, 0x130uLL);
  memcpy(v238, v265, sizeof(v238));
  v239 = v40;
  v240 = v39;
  sub_100006C20(v237, v266, &qword_10035F1F0);

  sub_100008FA0(v238, &qword_10035F1F0);
  v43 = v1[13];
  memcpy(v241, __dst, 0x130uLL);
  v241[38] = v42;
  v241[39] = v41;
  type metadata accessor for OnboardingModel();
  sub_100126650(&qword_10035F1F8, type metadata accessor for OnboardingModel);
  v44 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v241, 0x140uLL);
  memcpy(v242, __dst, sizeof(v242));
  v243 = v42;
  v244 = v41;
  sub_100006C20(v241, v266, &qword_10035F200);

  sub_100008FA0(v242, &qword_10035F200);
  v45 = v1[14];
  memcpy(v245, v265, 0x140uLL);
  v245[40] = v44;
  v245[41] = v43;
  type metadata accessor for RoadsideAssistanceModel();
  sub_100126650(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  v46 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v245, 0x150uLL);
  memcpy(v246, v265, sizeof(v246));
  v247 = v44;
  v248 = v43;
  sub_100006C20(v245, v266, &qword_10035F208);

  sub_100008FA0(v246, &qword_10035F208);
  v47 = v1[15];
  memcpy(v249, __dst, 0x150uLL);
  v249[42] = v46;
  v249[43] = v45;
  type metadata accessor for TransitionAlertModel();
  sub_100126650(&qword_10035F210, type metadata accessor for TransitionAlertModel);
  v48 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v249, 0x160uLL);
  memcpy(v250, __dst, sizeof(v250));
  v251 = v46;
  v252 = v45;
  sub_100006C20(v249, v266, &qword_10035F218);

  sub_100008FA0(v250, &qword_10035F218);
  v49 = v1[17];
  memcpy(v253, v265, 0x160uLL);
  v253[44] = v48;
  v253[45] = v47;
  type metadata accessor for TimeZoneModel();
  sub_100126650(&qword_10035F220, type metadata accessor for TimeZoneModel);
  v50 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v253, 0x170uLL);
  memcpy(v254, v265, sizeof(v254));
  v255 = v48;
  v256 = v47;
  sub_100006C20(v253, v266, &qword_10035F228);

  sub_100008FA0(v254, &qword_10035F228);
  v51 = v1[18];
  memcpy(v257, __dst, 0x170uLL);
  v257[46] = v50;
  v257[47] = v49;
  type metadata accessor for TryOutModel();
  sub_100126650(&qword_100357990, type metadata accessor for TryOutModel);
  v52 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v257, 0x180uLL);
  memcpy(v258, __dst, sizeof(v258));
  v259 = v50;
  v260 = v49;
  sub_100006C20(v257, v266, &qword_10035F230);

  sub_100008FA0(v258, &qword_10035F230);
  v53 = v1[20];
  memcpy(v261, v265, 0x180uLL);
  v261[48] = v52;
  v261[49] = v51;
  type metadata accessor for UIMetrics();
  sub_100126650(&qword_100354D40, type metadata accessor for UIMetrics);
  v54 = static ObservableObject.environmentStore.getter();
  memcpy(__src, v261, sizeof(__src));
  memcpy(v262, v265, sizeof(v262));
  v263 = v52;
  v264 = v51;
  sub_100006C20(v261, v266, &qword_10035F238);

  sub_100008FA0(v262, &qword_10035F238);
  memcpy(v265, __src, 0x190uLL);
  *&v265[25] = v54;
  *(&v265[25] + 1) = v53;
  memcpy(v266, __src, sizeof(v266));
  v267 = v54;
  v268 = v53;
  sub_100006C20(v265, __dst, &qword_10035F148);
  sub_100008FA0(v266, &qword_10035F148);
  return memcpy(v59, v265, 0x1A0uLL);
}

void *sub_100120B68(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v59 = v6;
  v7 = v1[3];
  type metadata accessor for AlertAppearanceModel();
  sub_100126650(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel);
  v8 = static ObservableObject.environmentStore.getter();
  v9 = v1[2];
  type metadata accessor for AppEvents();
  sub_100126650(&qword_100354D48, type metadata accessor for AppEvents);

  v10 = static ObservableObject.environmentStore.getter();
  v56 = v1[4];
  type metadata accessor for AppPropertiesModel();
  sub_100126650(&qword_10035B6A0, type metadata accessor for AppPropertiesModel);

  v57 = static ObservableObject.environmentStore.getter();
  v58 = v1[5];
  *&v62 = v5;
  *(&v62 + 1) = v3;
  *&v63 = v8;
  *(&v63 + 1) = v7;
  *&v64 = v10;
  *(&v64 + 1) = v9;
  *&v65 = v57;
  *(&v65 + 1) = v56;
  type metadata accessor for AppRuntimeStateModel();
  sub_100126650(&qword_10035D780, type metadata accessor for AppRuntimeStateModel);

  v11 = static ObservableObject.environmentStore.getter();
  v265[0] = v62;
  v265[1] = v63;
  v265[2] = v64;
  v265[3] = v65;
  v66[0] = v5;
  v66[1] = v3;
  v66[2] = v8;
  v66[3] = v7;
  v66[4] = v10;
  v66[5] = v9;
  v66[6] = v57;
  v66[7] = v56;
  sub_100006C20(&v62, v266, &qword_10035F240);

  sub_100008FA0(v66, &qword_10035F240);
  v12 = v1[6];
  v67 = v265[0];
  v68 = v265[1];
  v69 = v265[2];
  v70 = v265[3];
  *&v71 = v11;
  *(&v71 + 1) = v58;
  type metadata accessor for BannerAppearanceModel();
  sub_100126650(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v13 = static ObservableObject.environmentStore.getter();
  __dst[2] = v69;
  __dst[3] = v70;
  __dst[4] = v71;
  __dst[0] = v67;
  __dst[1] = v68;
  v72[0] = v265[0];
  v72[1] = v265[1];
  v72[2] = v265[2];
  v72[3] = v265[3];
  v73 = v11;
  v74 = v58;
  sub_100006C20(&v67, v266, &qword_10035F248);

  sub_100008FA0(v72, &qword_10035F248);
  v14 = v1[7];
  v77 = __dst[2];
  v78 = __dst[3];
  v79 = __dst[4];
  v76 = __dst[1];
  v75 = __dst[0];
  *&v80 = v13;
  *(&v80 + 1) = v12;
  type metadata accessor for BluetoothModel();
  sub_100126650(&qword_100357BF8, type metadata accessor for BluetoothModel);
  v15 = static ObservableObject.environmentStore.getter();
  v265[2] = v77;
  v265[3] = v78;
  v265[4] = v79;
  v265[5] = v80;
  v265[0] = v75;
  v265[1] = v76;
  v81[2] = __dst[2];
  v81[3] = __dst[3];
  v81[4] = __dst[4];
  v81[1] = __dst[1];
  v81[0] = __dst[0];
  v82 = v13;
  v83 = v12;
  sub_100006C20(&v75, v266, &qword_10035F250);

  sub_100008FA0(v81, &qword_10035F250);
  v16 = v1[8];
  v17 = v16[14];
  v86 = v265[2];
  v87 = v265[3];
  v88 = v265[4];
  v89 = v265[5];
  v84 = v265[0];
  v85 = v265[1];
  *&v90 = v15;
  *(&v90 + 1) = v14;
  type metadata accessor for ConnectionClosedModel(0);
  sub_100126650(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);

  v18 = static ObservableObject.environmentStore.getter();
  __dst[4] = v88;
  __dst[5] = v89;
  __dst[6] = v90;
  __dst[0] = v84;
  __dst[1] = v85;
  __dst[2] = v86;
  __dst[3] = v87;
  v91[1] = v265[1];
  v91[0] = v265[0];
  v91[5] = v265[5];
  v91[4] = v265[4];
  v91[3] = v265[3];
  v91[2] = v265[2];
  v92 = v15;
  v93 = v14;
  sub_100006C20(&v84, v266, &qword_10035F258);
  sub_100008FA0(v91, &qword_10035F258);
  v19 = v16[9];
  v94 = __dst[0];
  v95 = __dst[1];
  v97 = __dst[3];
  v96 = __dst[2];
  v98 = __dst[4];
  v99 = __dst[5];
  v100 = __dst[6];
  *&v101 = v18;
  *(&v101 + 1) = v17;
  type metadata accessor for ConnectionModel(0);
  sub_100126650(&qword_100354F88, type metadata accessor for ConnectionModel);

  v20 = static ObservableObject.environmentStore.getter();
  v265[4] = v98;
  v265[5] = v99;
  v265[6] = v100;
  v265[7] = v101;
  v265[0] = v94;
  v265[1] = v95;
  v265[2] = v96;
  v265[3] = v97;
  v102[0] = __dst[0];
  v102[1] = __dst[1];
  v102[6] = __dst[6];
  v102[5] = __dst[5];
  v102[4] = __dst[4];
  v102[2] = __dst[2];
  v102[3] = __dst[3];
  v103 = v18;
  v104 = v17;
  sub_100006C20(&v94, v266, &qword_10035F260);
  sub_100008FA0(v102, &qword_10035F260);
  v21 = v16[12];
  v109 = v265[4];
  v110 = v265[5];
  v105 = v265[0];
  v106 = v265[1];
  v107 = v265[2];
  v108 = v265[3];
  v111 = v265[6];
  v112 = v265[7];
  *&v113 = v20;
  *(&v113 + 1) = v19;
  type metadata accessor for ConnectivityModel();
  sub_100126650(&qword_100354F78, type metadata accessor for ConnectivityModel);

  v22 = static ObservableObject.environmentStore.getter();
  __dst[6] = v111;
  __dst[7] = v112;
  __dst[8] = v113;
  __dst[2] = v107;
  __dst[3] = v108;
  __dst[4] = v109;
  __dst[5] = v110;
  __dst[0] = v105;
  __dst[1] = v106;
  v114[4] = v265[4];
  v114[5] = v265[5];
  v114[6] = v265[6];
  v114[7] = v265[7];
  v114[0] = v265[0];
  v114[1] = v265[1];
  v114[2] = v265[2];
  v114[3] = v265[3];
  v115 = v20;
  v116 = v19;
  sub_100006C20(&v105, v266, &qword_10035F268);
  sub_100008FA0(v114, &qword_10035F268);
  v23 = v16[8];
  v119 = __dst[2];
  v120 = __dst[3];
  v118 = __dst[1];
  v117 = __dst[0];
  v123 = __dst[6];
  v124 = __dst[7];
  v125 = __dst[8];
  v122 = __dst[5];
  v121 = __dst[4];
  *&v126 = v22;
  *(&v126 + 1) = v21;
  type metadata accessor for GuidanceMessagesModel();
  sub_100126650(&qword_100357820, type metadata accessor for GuidanceMessagesModel);

  v24 = static ObservableObject.environmentStore.getter();
  v265[6] = v123;
  v265[7] = v124;
  v265[8] = v125;
  v265[9] = v126;
  v265[2] = v119;
  v265[3] = v120;
  v265[4] = v121;
  v265[5] = v122;
  v265[0] = v117;
  v265[1] = v118;
  v127[6] = __dst[6];
  v127[7] = __dst[7];
  v127[8] = __dst[8];
  v127[2] = __dst[2];
  v127[3] = __dst[3];
  v127[5] = __dst[5];
  v127[4] = __dst[4];
  v127[1] = __dst[1];
  v127[0] = __dst[0];
  v128 = v22;
  v129 = v21;
  sub_100006C20(&v117, v266, &qword_10035F270);
  sub_100008FA0(v127, &qword_10035F270);
  v25 = v16[7];
  v130 = v265[0];
  v131 = v265[1];
  v136 = v265[6];
  v137 = v265[7];
  v138 = v265[8];
  v139 = v265[9];
  v132 = v265[2];
  v133 = v265[3];
  v134 = v265[4];
  v135 = v265[5];
  *&v140 = v24;
  *(&v140 + 1) = v23;
  type metadata accessor for GuidanceModel(0);
  sub_100126650(&qword_100354F80, type metadata accessor for GuidanceModel);

  v26 = static ObservableObject.environmentStore.getter();
  __dst[8] = v138;
  __dst[9] = v139;
  __dst[10] = v140;
  __dst[4] = v134;
  __dst[5] = v135;
  __dst[6] = v136;
  __dst[7] = v137;
  __dst[0] = v130;
  __dst[1] = v131;
  __dst[2] = v132;
  __dst[3] = v133;
  v141[6] = v265[6];
  v141[7] = v265[7];
  v141[8] = v265[8];
  v141[9] = v265[9];
  v141[2] = v265[2];
  v141[3] = v265[3];
  v141[4] = v265[4];
  v141[5] = v265[5];
  v141[0] = v265[0];
  v141[1] = v265[1];
  v142 = v24;
  v143 = v23;
  sub_100006C20(&v130, v266, &qword_10035F278);
  sub_100008FA0(v141, &qword_10035F278);
  v27 = v16[3];
  v152 = __dst[8];
  v153 = __dst[9];
  v154 = __dst[10];
  v148 = __dst[4];
  v149 = __dst[5];
  v151 = __dst[7];
  v150 = __dst[6];
  v144 = __dst[0];
  v145 = __dst[1];
  v147 = __dst[3];
  v146 = __dst[2];
  *&v155 = v26;
  *(&v155 + 1) = v25;
  type metadata accessor for OrientationModel();
  sub_100126650(&qword_10035B1B0, type metadata accessor for OrientationModel);

  v28 = static ObservableObject.environmentStore.getter();
  v265[8] = v152;
  v265[9] = v153;
  v265[10] = v154;
  v265[11] = v155;
  v265[4] = v148;
  v265[5] = v149;
  v265[6] = v150;
  v265[7] = v151;
  v265[0] = v144;
  v265[1] = v145;
  v265[2] = v146;
  v265[3] = v147;
  v156[8] = __dst[8];
  v156[9] = __dst[9];
  v156[10] = __dst[10];
  v156[4] = __dst[4];
  v156[5] = __dst[5];
  v156[7] = __dst[7];
  v156[6] = __dst[6];
  v156[0] = __dst[0];
  v156[1] = __dst[1];
  v156[3] = __dst[3];
  v156[2] = __dst[2];
  v157 = v26;
  v158 = v25;
  sub_100006C20(&v144, v266, &qword_10035F280);
  sub_100008FA0(v156, &qword_10035F280);
  v29 = v16[15];
  v163 = v265[4];
  v164 = v265[5];
  v159 = v265[0];
  v160 = v265[1];
  v161 = v265[2];
  v162 = v265[3];
  v167 = v265[8];
  v168 = v265[9];
  v169 = v265[10];
  v170 = v265[11];
  v165 = v265[6];
  v166 = v265[7];
  *&v171 = v28;
  *(&v171 + 1) = v27;
  type metadata accessor for PartnerModel();
  sub_100126650(&qword_1003561A8, type metadata accessor for PartnerModel);

  v30 = static ObservableObject.environmentStore.getter();
  __dst[10] = v169;
  __dst[11] = v170;
  __dst[12] = v171;
  __dst[6] = v165;
  __dst[7] = v166;
  __dst[8] = v167;
  __dst[9] = v168;
  __dst[2] = v161;
  __dst[3] = v162;
  __dst[4] = v163;
  __dst[5] = v164;
  __dst[0] = v159;
  __dst[1] = v160;
  v172[8] = v265[8];
  v172[9] = v265[9];
  v172[10] = v265[10];
  v172[11] = v265[11];
  v172[4] = v265[4];
  v172[5] = v265[5];
  v172[6] = v265[6];
  v172[7] = v265[7];
  v172[0] = v265[0];
  v172[1] = v265[1];
  v172[2] = v265[2];
  v172[3] = v265[3];
  v173 = v28;
  v174 = v27;
  sub_100006C20(&v159, v266, &qword_10035F288);
  sub_100008FA0(v172, &qword_10035F288);
  v31 = v16[4];
  v176 = __dst[1];
  v175 = __dst[0];
  v185 = __dst[10];
  v186 = __dst[11];
  v187 = __dst[12];
  v181 = __dst[6];
  v182 = __dst[7];
  v184 = __dst[9];
  v183 = __dst[8];
  v177 = __dst[2];
  v178 = __dst[3];
  v180 = __dst[5];
  v179 = __dst[4];
  *&v188 = v30;
  *(&v188 + 1) = v29;
  type metadata accessor for StewieModel(0);
  sub_100126650(&qword_1003561B8, type metadata accessor for StewieModel);

  v32 = static ObservableObject.environmentStore.getter();
  v265[10] = v185;
  v265[11] = v186;
  v265[12] = v187;
  v265[13] = v188;
  v265[6] = v181;
  v265[7] = v182;
  v265[8] = v183;
  v265[9] = v184;
  v265[2] = v177;
  v265[3] = v178;
  v265[4] = v179;
  v265[5] = v180;
  v265[0] = v175;
  v265[1] = v176;
  v189[10] = __dst[10];
  v189[11] = __dst[11];
  v189[12] = __dst[12];
  v189[6] = __dst[6];
  v189[7] = __dst[7];
  v189[9] = __dst[9];
  v189[8] = __dst[8];
  v189[2] = __dst[2];
  v189[3] = __dst[3];
  v189[5] = __dst[5];
  v189[4] = __dst[4];
  v189[1] = __dst[1];
  v189[0] = __dst[0];
  v190 = v30;
  v191 = v29;
  sub_100006C20(&v175, v266, &qword_10035F290);
  sub_100008FA0(v189, &qword_10035F290);
  v33 = v16[2];
  v202 = v265[10];
  v203 = v265[11];
  v204 = v265[12];
  v205 = v265[13];
  v198 = v265[6];
  v199 = v265[7];
  v200 = v265[8];
  v201 = v265[9];
  v194 = v265[2];
  v195 = v265[3];
  v196 = v265[4];
  v197 = v265[5];
  v192 = v265[0];
  v193 = v265[1];
  *&v206 = v32;
  *(&v206 + 1) = v31;
  type metadata accessor for SystemSettingsModel();
  sub_100126650(&qword_1003561B0, type metadata accessor for SystemSettingsModel);

  v34 = static ObservableObject.environmentStore.getter();
  __dst[12] = v204;
  __dst[13] = v205;
  __dst[14] = v206;
  __dst[8] = v200;
  __dst[9] = v201;
  __dst[10] = v202;
  __dst[11] = v203;
  __dst[4] = v196;
  __dst[5] = v197;
  __dst[6] = v198;
  __dst[7] = v199;
  __dst[0] = v192;
  __dst[1] = v193;
  __dst[2] = v194;
  __dst[3] = v195;
  v207[10] = v265[10];
  v207[11] = v265[11];
  v207[12] = v265[12];
  v207[13] = v265[13];
  v207[6] = v265[6];
  v207[7] = v265[7];
  v207[8] = v265[8];
  v207[9] = v265[9];
  v207[2] = v265[2];
  v207[3] = v265[3];
  v207[4] = v265[4];
  v207[5] = v265[5];
  v207[0] = v265[0];
  v207[1] = v265[1];
  v208 = v32;
  v209 = v31;
  sub_100006C20(&v192, v266, &qword_10035F298);
  sub_100008FA0(v207, &qword_10035F298);
  v35 = v1[9];
  v222 = __dst[12];
  v223 = __dst[13];
  v224 = __dst[14];
  v218 = __dst[8];
  v219 = __dst[9];
  v221 = __dst[11];
  v220 = __dst[10];
  v214 = __dst[4];
  v215 = __dst[5];
  v217 = __dst[7];
  v216 = __dst[6];
  v210 = __dst[0];
  v211 = __dst[1];
  v213 = __dst[3];
  v212 = __dst[2];
  *&v225 = v34;
  *(&v225 + 1) = v33;
  type metadata accessor for EmergencyModel();
  sub_100126650(&qword_100356B60, type metadata accessor for EmergencyModel);
  v36 = static ObservableObject.environmentStore.getter();
  v265[12] = v222;
  v265[13] = v223;
  v265[14] = v224;
  v265[15] = v225;
  v265[8] = v218;
  v265[9] = v219;
  v265[10] = v220;
  v265[11] = v221;
  v265[4] = v214;
  v265[5] = v215;
  v265[6] = v216;
  v265[7] = v217;
  v265[0] = v210;
  v265[1] = v211;
  v265[2] = v212;
  v265[3] = v213;
  v226[12] = __dst[12];
  v226[13] = __dst[13];
  v226[14] = __dst[14];
  v226[8] = __dst[8];
  v226[9] = __dst[9];
  v226[11] = __dst[11];
  v226[10] = __dst[10];
  v226[4] = __dst[4];
  v226[5] = __dst[5];
  v226[7] = __dst[7];
  v226[6] = __dst[6];
  v226[0] = __dst[0];
  v226[1] = __dst[1];
  v226[3] = __dst[3];
  v226[2] = __dst[2];
  v227 = v34;
  v228 = v33;
  sub_100006C20(&v210, v266, &qword_10035F2A0);

  sub_100008FA0(v226, &qword_10035F2A0);
  v37 = v1[10];
  v229[12] = v265[12];
  v229[13] = v265[13];
  v229[14] = v265[14];
  v229[15] = v265[15];
  v229[8] = v265[8];
  v229[9] = v265[9];
  v229[10] = v265[10];
  v229[11] = v265[11];
  v229[4] = v265[4];
  v229[5] = v265[5];
  v229[6] = v265[6];
  v229[7] = v265[7];
  v229[0] = v265[0];
  v229[1] = v265[1];
  v229[2] = v265[2];
  v229[3] = v265[3];
  *&v229[16] = v36;
  *(&v229[16] + 1) = v35;
  type metadata accessor for GeoLocationModel();
  sub_100126650(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
  v38 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v229, 0x110uLL);
  v230[12] = v265[12];
  v230[13] = v265[13];
  v230[14] = v265[14];
  v230[15] = v265[15];
  v230[8] = v265[8];
  v230[9] = v265[9];
  v230[10] = v265[10];
  v230[11] = v265[11];
  v230[4] = v265[4];
  v230[5] = v265[5];
  v230[6] = v265[6];
  v230[7] = v265[7];
  v230[0] = v265[0];
  v230[1] = v265[1];
  v230[2] = v265[2];
  v230[3] = v265[3];
  v231 = v36;
  v232 = v35;
  sub_100006C20(v229, v266, &qword_10035F2A8);

  sub_100008FA0(v230, &qword_10035F2A8);
  v39 = v1[12];
  memcpy(v233, __dst, 0x110uLL);
  v233[34] = v38;
  v233[35] = v37;
  type metadata accessor for OfferModel();
  sub_100126650(&qword_10035F1E0, type metadata accessor for OfferModel);
  v40 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v233, 0x120uLL);
  memcpy(v234, __dst, sizeof(v234));
  v235 = v38;
  v236 = v37;
  sub_100006C20(v233, v266, &qword_10035F2B0);

  sub_100008FA0(v234, &qword_10035F2B0);
  v41 = v1[19];
  memcpy(v237, v265, 0x120uLL);
  v237[36] = v40;
  v237[37] = v39;
  type metadata accessor for OffTheGridModel();
  sub_100126650(&qword_1003561C0, type metadata accessor for OffTheGridModel);
  v42 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v237, 0x130uLL);
  memcpy(v238, v265, sizeof(v238));
  v239 = v40;
  v240 = v39;
  sub_100006C20(v237, v266, &qword_10035F2B8);

  sub_100008FA0(v238, &qword_10035F2B8);
  v43 = v1[13];
  memcpy(v241, __dst, 0x130uLL);
  v241[38] = v42;
  v241[39] = v41;
  type metadata accessor for OnboardingModel();
  sub_100126650(&qword_10035F1F8, type metadata accessor for OnboardingModel);
  v44 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v241, 0x140uLL);
  memcpy(v242, __dst, sizeof(v242));
  v243 = v42;
  v244 = v41;
  sub_100006C20(v241, v266, &qword_10035F2C0);

  sub_100008FA0(v242, &qword_10035F2C0);
  v45 = v1[14];
  memcpy(v245, v265, 0x140uLL);
  v245[40] = v44;
  v245[41] = v43;
  type metadata accessor for RoadsideAssistanceModel();
  sub_100126650(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  v46 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v245, 0x150uLL);
  memcpy(v246, v265, sizeof(v246));
  v247 = v44;
  v248 = v43;
  sub_100006C20(v245, v266, &qword_10035F2C8);

  sub_100008FA0(v246, &qword_10035F2C8);
  v47 = v1[15];
  memcpy(v249, __dst, 0x150uLL);
  v249[42] = v46;
  v249[43] = v45;
  type metadata accessor for TransitionAlertModel();
  sub_100126650(&qword_10035F210, type metadata accessor for TransitionAlertModel);
  v48 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v249, 0x160uLL);
  memcpy(v250, __dst, sizeof(v250));
  v251 = v46;
  v252 = v45;
  sub_100006C20(v249, v266, &qword_10035F2D0);

  sub_100008FA0(v250, &qword_10035F2D0);
  v49 = v1[17];
  memcpy(v253, v265, 0x160uLL);
  v253[44] = v48;
  v253[45] = v47;
  type metadata accessor for TimeZoneModel();
  sub_100126650(&qword_10035F220, type metadata accessor for TimeZoneModel);
  v50 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v253, 0x170uLL);
  memcpy(v254, v265, sizeof(v254));
  v255 = v48;
  v256 = v47;
  sub_100006C20(v253, v266, &qword_10035F2D8);

  sub_100008FA0(v254, &qword_10035F2D8);
  v51 = v1[18];
  memcpy(v257, __dst, 0x170uLL);
  v257[46] = v50;
  v257[47] = v49;
  type metadata accessor for TryOutModel();
  sub_100126650(&qword_100357990, type metadata accessor for TryOutModel);
  v52 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v257, 0x180uLL);
  memcpy(v258, __dst, sizeof(v258));
  v259 = v50;
  v260 = v49;
  sub_100006C20(v257, v266, &qword_10035F2E0);

  sub_100008FA0(v258, &qword_10035F2E0);
  v53 = v1[20];
  memcpy(v261, v265, 0x180uLL);
  v261[48] = v52;
  v261[49] = v51;
  type metadata accessor for UIMetrics();
  sub_100126650(&qword_100354D40, type metadata accessor for UIMetrics);
  v54 = static ObservableObject.environmentStore.getter();
  memcpy(__src, v261, sizeof(__src));
  memcpy(v262, v265, sizeof(v262));
  v263 = v52;
  v264 = v51;
  sub_100006C20(v261, v266, &qword_10035F2E8);

  sub_100008FA0(v262, &qword_10035F2E8);
  memcpy(v265, __src, 0x190uLL);
  *&v265[25] = v54;
  *(&v265[25] + 1) = v53;
  memcpy(v266, __src, sizeof(v266));
  v267 = v54;
  v268 = v53;
  sub_100006C20(v265, __dst, &qword_10035F128);
  sub_100008FA0(v266, &qword_10035F128);
  return memcpy(v59, v265, 0x1A0uLL);
}

void *sub_100122800(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v59 = v6;
  v7 = v1[3];
  type metadata accessor for AlertAppearanceModel();
  sub_100126650(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel);
  v8 = static ObservableObject.environmentStore.getter();
  v9 = v1[2];
  type metadata accessor for AppEvents();
  sub_100126650(&qword_100354D48, type metadata accessor for AppEvents);

  v10 = static ObservableObject.environmentStore.getter();
  v56 = v1[4];
  type metadata accessor for AppPropertiesModel();
  sub_100126650(&qword_10035B6A0, type metadata accessor for AppPropertiesModel);

  v57 = static ObservableObject.environmentStore.getter();
  v58 = v1[5];
  *&v62 = v5;
  *(&v62 + 1) = v3;
  *&v63 = v8;
  *(&v63 + 1) = v7;
  *&v64 = v10;
  *(&v64 + 1) = v9;
  *&v65 = v57;
  *(&v65 + 1) = v56;
  type metadata accessor for AppRuntimeStateModel();
  sub_100126650(&qword_10035D780, type metadata accessor for AppRuntimeStateModel);

  v11 = static ObservableObject.environmentStore.getter();
  v265[0] = v62;
  v265[1] = v63;
  v265[2] = v64;
  v265[3] = v65;
  v66[0] = v5;
  v66[1] = v3;
  v66[2] = v8;
  v66[3] = v7;
  v66[4] = v10;
  v66[5] = v9;
  v66[6] = v57;
  v66[7] = v56;
  sub_100006C20(&v62, v266, &qword_10035F2F0);

  sub_100008FA0(v66, &qword_10035F2F0);
  v12 = v1[6];
  v67 = v265[0];
  v68 = v265[1];
  v69 = v265[2];
  v70 = v265[3];
  *&v71 = v11;
  *(&v71 + 1) = v58;
  type metadata accessor for BannerAppearanceModel();
  sub_100126650(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v13 = static ObservableObject.environmentStore.getter();
  __dst[2] = v69;
  __dst[3] = v70;
  __dst[4] = v71;
  __dst[0] = v67;
  __dst[1] = v68;
  v72[0] = v265[0];
  v72[1] = v265[1];
  v72[2] = v265[2];
  v72[3] = v265[3];
  v73 = v11;
  v74 = v58;
  sub_100006C20(&v67, v266, &qword_10035F2F8);

  sub_100008FA0(v72, &qword_10035F2F8);
  v14 = v1[7];
  v77 = __dst[2];
  v78 = __dst[3];
  v79 = __dst[4];
  v76 = __dst[1];
  v75 = __dst[0];
  *&v80 = v13;
  *(&v80 + 1) = v12;
  type metadata accessor for BluetoothModel();
  sub_100126650(&qword_100357BF8, type metadata accessor for BluetoothModel);
  v15 = static ObservableObject.environmentStore.getter();
  v265[2] = v77;
  v265[3] = v78;
  v265[4] = v79;
  v265[5] = v80;
  v265[0] = v75;
  v265[1] = v76;
  v81[2] = __dst[2];
  v81[3] = __dst[3];
  v81[4] = __dst[4];
  v81[1] = __dst[1];
  v81[0] = __dst[0];
  v82 = v13;
  v83 = v12;
  sub_100006C20(&v75, v266, &qword_10035F300);

  sub_100008FA0(v81, &qword_10035F300);
  v16 = v1[8];
  v17 = v16[14];
  v86 = v265[2];
  v87 = v265[3];
  v88 = v265[4];
  v89 = v265[5];
  v84 = v265[0];
  v85 = v265[1];
  *&v90 = v15;
  *(&v90 + 1) = v14;
  type metadata accessor for ConnectionClosedModel(0);
  sub_100126650(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);

  v18 = static ObservableObject.environmentStore.getter();
  __dst[4] = v88;
  __dst[5] = v89;
  __dst[6] = v90;
  __dst[0] = v84;
  __dst[1] = v85;
  __dst[2] = v86;
  __dst[3] = v87;
  v91[1] = v265[1];
  v91[0] = v265[0];
  v91[5] = v265[5];
  v91[4] = v265[4];
  v91[3] = v265[3];
  v91[2] = v265[2];
  v92 = v15;
  v93 = v14;
  sub_100006C20(&v84, v266, &qword_10035F308);
  sub_100008FA0(v91, &qword_10035F308);
  v19 = v16[9];
  v94 = __dst[0];
  v95 = __dst[1];
  v97 = __dst[3];
  v96 = __dst[2];
  v98 = __dst[4];
  v99 = __dst[5];
  v100 = __dst[6];
  *&v101 = v18;
  *(&v101 + 1) = v17;
  type metadata accessor for ConnectionModel(0);
  sub_100126650(&qword_100354F88, type metadata accessor for ConnectionModel);

  v20 = static ObservableObject.environmentStore.getter();
  v265[4] = v98;
  v265[5] = v99;
  v265[6] = v100;
  v265[7] = v101;
  v265[0] = v94;
  v265[1] = v95;
  v265[2] = v96;
  v265[3] = v97;
  v102[0] = __dst[0];
  v102[1] = __dst[1];
  v102[6] = __dst[6];
  v102[5] = __dst[5];
  v102[4] = __dst[4];
  v102[2] = __dst[2];
  v102[3] = __dst[3];
  v103 = v18;
  v104 = v17;
  sub_100006C20(&v94, v266, &qword_10035F310);
  sub_100008FA0(v102, &qword_10035F310);
  v21 = v16[12];
  v109 = v265[4];
  v110 = v265[5];
  v105 = v265[0];
  v106 = v265[1];
  v107 = v265[2];
  v108 = v265[3];
  v111 = v265[6];
  v112 = v265[7];
  *&v113 = v20;
  *(&v113 + 1) = v19;
  type metadata accessor for ConnectivityModel();
  sub_100126650(&qword_100354F78, type metadata accessor for ConnectivityModel);

  v22 = static ObservableObject.environmentStore.getter();
  __dst[6] = v111;
  __dst[7] = v112;
  __dst[8] = v113;
  __dst[2] = v107;
  __dst[3] = v108;
  __dst[4] = v109;
  __dst[5] = v110;
  __dst[0] = v105;
  __dst[1] = v106;
  v114[4] = v265[4];
  v114[5] = v265[5];
  v114[6] = v265[6];
  v114[7] = v265[7];
  v114[0] = v265[0];
  v114[1] = v265[1];
  v114[2] = v265[2];
  v114[3] = v265[3];
  v115 = v20;
  v116 = v19;
  sub_100006C20(&v105, v266, &qword_10035F318);
  sub_100008FA0(v114, &qword_10035F318);
  v23 = v16[8];
  v119 = __dst[2];
  v120 = __dst[3];
  v118 = __dst[1];
  v117 = __dst[0];
  v123 = __dst[6];
  v124 = __dst[7];
  v125 = __dst[8];
  v122 = __dst[5];
  v121 = __dst[4];
  *&v126 = v22;
  *(&v126 + 1) = v21;
  type metadata accessor for GuidanceMessagesModel();
  sub_100126650(&qword_100357820, type metadata accessor for GuidanceMessagesModel);

  v24 = static ObservableObject.environmentStore.getter();
  v265[6] = v123;
  v265[7] = v124;
  v265[8] = v125;
  v265[9] = v126;
  v265[2] = v119;
  v265[3] = v120;
  v265[4] = v121;
  v265[5] = v122;
  v265[0] = v117;
  v265[1] = v118;
  v127[6] = __dst[6];
  v127[7] = __dst[7];
  v127[8] = __dst[8];
  v127[2] = __dst[2];
  v127[3] = __dst[3];
  v127[5] = __dst[5];
  v127[4] = __dst[4];
  v127[1] = __dst[1];
  v127[0] = __dst[0];
  v128 = v22;
  v129 = v21;
  sub_100006C20(&v117, v266, &qword_10035F320);
  sub_100008FA0(v127, &qword_10035F320);
  v25 = v16[7];
  v130 = v265[0];
  v131 = v265[1];
  v136 = v265[6];
  v137 = v265[7];
  v138 = v265[8];
  v139 = v265[9];
  v132 = v265[2];
  v133 = v265[3];
  v134 = v265[4];
  v135 = v265[5];
  *&v140 = v24;
  *(&v140 + 1) = v23;
  type metadata accessor for GuidanceModel(0);
  sub_100126650(&qword_100354F80, type metadata accessor for GuidanceModel);

  v26 = static ObservableObject.environmentStore.getter();
  __dst[8] = v138;
  __dst[9] = v139;
  __dst[10] = v140;
  __dst[4] = v134;
  __dst[5] = v135;
  __dst[6] = v136;
  __dst[7] = v137;
  __dst[0] = v130;
  __dst[1] = v131;
  __dst[2] = v132;
  __dst[3] = v133;
  v141[6] = v265[6];
  v141[7] = v265[7];
  v141[8] = v265[8];
  v141[9] = v265[9];
  v141[2] = v265[2];
  v141[3] = v265[3];
  v141[4] = v265[4];
  v141[5] = v265[5];
  v141[0] = v265[0];
  v141[1] = v265[1];
  v142 = v24;
  v143 = v23;
  sub_100006C20(&v130, v266, &qword_10035F328);
  sub_100008FA0(v141, &qword_10035F328);
  v27 = v16[3];
  v152 = __dst[8];
  v153 = __dst[9];
  v154 = __dst[10];
  v148 = __dst[4];
  v149 = __dst[5];
  v151 = __dst[7];
  v150 = __dst[6];
  v144 = __dst[0];
  v145 = __dst[1];
  v147 = __dst[3];
  v146 = __dst[2];
  *&v155 = v26;
  *(&v155 + 1) = v25;
  type metadata accessor for OrientationModel();
  sub_100126650(&qword_10035B1B0, type metadata accessor for OrientationModel);

  v28 = static ObservableObject.environmentStore.getter();
  v265[8] = v152;
  v265[9] = v153;
  v265[10] = v154;
  v265[11] = v155;
  v265[4] = v148;
  v265[5] = v149;
  v265[6] = v150;
  v265[7] = v151;
  v265[0] = v144;
  v265[1] = v145;
  v265[2] = v146;
  v265[3] = v147;
  v156[8] = __dst[8];
  v156[9] = __dst[9];
  v156[10] = __dst[10];
  v156[4] = __dst[4];
  v156[5] = __dst[5];
  v156[7] = __dst[7];
  v156[6] = __dst[6];
  v156[0] = __dst[0];
  v156[1] = __dst[1];
  v156[3] = __dst[3];
  v156[2] = __dst[2];
  v157 = v26;
  v158 = v25;
  sub_100006C20(&v144, v266, &qword_10035F330);
  sub_100008FA0(v156, &qword_10035F330);
  v29 = v16[15];
  v163 = v265[4];
  v164 = v265[5];
  v159 = v265[0];
  v160 = v265[1];
  v161 = v265[2];
  v162 = v265[3];
  v167 = v265[8];
  v168 = v265[9];
  v169 = v265[10];
  v170 = v265[11];
  v165 = v265[6];
  v166 = v265[7];
  *&v171 = v28;
  *(&v171 + 1) = v27;
  type metadata accessor for PartnerModel();
  sub_100126650(&qword_1003561A8, type metadata accessor for PartnerModel);

  v30 = static ObservableObject.environmentStore.getter();
  __dst[10] = v169;
  __dst[11] = v170;
  __dst[12] = v171;
  __dst[6] = v165;
  __dst[7] = v166;
  __dst[8] = v167;
  __dst[9] = v168;
  __dst[2] = v161;
  __dst[3] = v162;
  __dst[4] = v163;
  __dst[5] = v164;
  __dst[0] = v159;
  __dst[1] = v160;
  v172[8] = v265[8];
  v172[9] = v265[9];
  v172[10] = v265[10];
  v172[11] = v265[11];
  v172[4] = v265[4];
  v172[5] = v265[5];
  v172[6] = v265[6];
  v172[7] = v265[7];
  v172[0] = v265[0];
  v172[1] = v265[1];
  v172[2] = v265[2];
  v172[3] = v265[3];
  v173 = v28;
  v174 = v27;
  sub_100006C20(&v159, v266, &qword_10035F338);
  sub_100008FA0(v172, &qword_10035F338);
  v31 = v16[4];
  v176 = __dst[1];
  v175 = __dst[0];
  v185 = __dst[10];
  v186 = __dst[11];
  v187 = __dst[12];
  v181 = __dst[6];
  v182 = __dst[7];
  v184 = __dst[9];
  v183 = __dst[8];
  v177 = __dst[2];
  v178 = __dst[3];
  v180 = __dst[5];
  v179 = __dst[4];
  *&v188 = v30;
  *(&v188 + 1) = v29;
  type metadata accessor for StewieModel(0);
  sub_100126650(&qword_1003561B8, type metadata accessor for StewieModel);

  v32 = static ObservableObject.environmentStore.getter();
  v265[10] = v185;
  v265[11] = v186;
  v265[12] = v187;
  v265[13] = v188;
  v265[6] = v181;
  v265[7] = v182;
  v265[8] = v183;
  v265[9] = v184;
  v265[2] = v177;
  v265[3] = v178;
  v265[4] = v179;
  v265[5] = v180;
  v265[0] = v175;
  v265[1] = v176;
  v189[10] = __dst[10];
  v189[11] = __dst[11];
  v189[12] = __dst[12];
  v189[6] = __dst[6];
  v189[7] = __dst[7];
  v189[9] = __dst[9];
  v189[8] = __dst[8];
  v189[2] = __dst[2];
  v189[3] = __dst[3];
  v189[5] = __dst[5];
  v189[4] = __dst[4];
  v189[1] = __dst[1];
  v189[0] = __dst[0];
  v190 = v30;
  v191 = v29;
  sub_100006C20(&v175, v266, &qword_10035F340);
  sub_100008FA0(v189, &qword_10035F340);
  v33 = v16[2];
  v202 = v265[10];
  v203 = v265[11];
  v204 = v265[12];
  v205 = v265[13];
  v198 = v265[6];
  v199 = v265[7];
  v200 = v265[8];
  v201 = v265[9];
  v194 = v265[2];
  v195 = v265[3];
  v196 = v265[4];
  v197 = v265[5];
  v192 = v265[0];
  v193 = v265[1];
  *&v206 = v32;
  *(&v206 + 1) = v31;
  type metadata accessor for SystemSettingsModel();
  sub_100126650(&qword_1003561B0, type metadata accessor for SystemSettingsModel);

  v34 = static ObservableObject.environmentStore.getter();
  __dst[12] = v204;
  __dst[13] = v205;
  __dst[14] = v206;
  __dst[8] = v200;
  __dst[9] = v201;
  __dst[10] = v202;
  __dst[11] = v203;
  __dst[4] = v196;
  __dst[5] = v197;
  __dst[6] = v198;
  __dst[7] = v199;
  __dst[0] = v192;
  __dst[1] = v193;
  __dst[2] = v194;
  __dst[3] = v195;
  v207[10] = v265[10];
  v207[11] = v265[11];
  v207[12] = v265[12];
  v207[13] = v265[13];
  v207[6] = v265[6];
  v207[7] = v265[7];
  v207[8] = v265[8];
  v207[9] = v265[9];
  v207[2] = v265[2];
  v207[3] = v265[3];
  v207[4] = v265[4];
  v207[5] = v265[5];
  v207[0] = v265[0];
  v207[1] = v265[1];
  v208 = v32;
  v209 = v31;
  sub_100006C20(&v192, v266, &qword_10035F348);
  sub_100008FA0(v207, &qword_10035F348);
  v35 = v1[9];
  v222 = __dst[12];
  v223 = __dst[13];
  v224 = __dst[14];
  v218 = __dst[8];
  v219 = __dst[9];
  v221 = __dst[11];
  v220 = __dst[10];
  v214 = __dst[4];
  v215 = __dst[5];
  v217 = __dst[7];
  v216 = __dst[6];
  v210 = __dst[0];
  v211 = __dst[1];
  v213 = __dst[3];
  v212 = __dst[2];
  *&v225 = v34;
  *(&v225 + 1) = v33;
  type metadata accessor for EmergencyModel();
  sub_100126650(&qword_100356B60, type metadata accessor for EmergencyModel);
  v36 = static ObservableObject.environmentStore.getter();
  v265[12] = v222;
  v265[13] = v223;
  v265[14] = v224;
  v265[15] = v225;
  v265[8] = v218;
  v265[9] = v219;
  v265[10] = v220;
  v265[11] = v221;
  v265[4] = v214;
  v265[5] = v215;
  v265[6] = v216;
  v265[7] = v217;
  v265[0] = v210;
  v265[1] = v211;
  v265[2] = v212;
  v265[3] = v213;
  v226[12] = __dst[12];
  v226[13] = __dst[13];
  v226[14] = __dst[14];
  v226[8] = __dst[8];
  v226[9] = __dst[9];
  v226[11] = __dst[11];
  v226[10] = __dst[10];
  v226[4] = __dst[4];
  v226[5] = __dst[5];
  v226[7] = __dst[7];
  v226[6] = __dst[6];
  v226[0] = __dst[0];
  v226[1] = __dst[1];
  v226[3] = __dst[3];
  v226[2] = __dst[2];
  v227 = v34;
  v228 = v33;
  sub_100006C20(&v210, v266, &qword_10035F350);

  sub_100008FA0(v226, &qword_10035F350);
  v37 = v1[10];
  v229[12] = v265[12];
  v229[13] = v265[13];
  v229[14] = v265[14];
  v229[15] = v265[15];
  v229[8] = v265[8];
  v229[9] = v265[9];
  v229[10] = v265[10];
  v229[11] = v265[11];
  v229[4] = v265[4];
  v229[5] = v265[5];
  v229[6] = v265[6];
  v229[7] = v265[7];
  v229[0] = v265[0];
  v229[1] = v265[1];
  v229[2] = v265[2];
  v229[3] = v265[3];
  *&v229[16] = v36;
  *(&v229[16] + 1) = v35;
  type metadata accessor for GeoLocationModel();
  sub_100126650(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
  v38 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v229, 0x110uLL);
  v230[12] = v265[12];
  v230[13] = v265[13];
  v230[14] = v265[14];
  v230[15] = v265[15];
  v230[8] = v265[8];
  v230[9] = v265[9];
  v230[10] = v265[10];
  v230[11] = v265[11];
  v230[4] = v265[4];
  v230[5] = v265[5];
  v230[6] = v265[6];
  v230[7] = v265[7];
  v230[0] = v265[0];
  v230[1] = v265[1];
  v230[2] = v265[2];
  v230[3] = v265[3];
  v231 = v36;
  v232 = v35;
  sub_100006C20(v229, v266, &qword_10035F358);

  sub_100008FA0(v230, &qword_10035F358);
  v39 = v1[12];
  memcpy(v233, __dst, 0x110uLL);
  v233[34] = v38;
  v233[35] = v37;
  type metadata accessor for OfferModel();
  sub_100126650(&qword_10035F1E0, type metadata accessor for OfferModel);
  v40 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v233, 0x120uLL);
  memcpy(v234, __dst, sizeof(v234));
  v235 = v38;
  v236 = v37;
  sub_100006C20(v233, v266, &qword_10035F360);

  sub_100008FA0(v234, &qword_10035F360);
  v41 = v1[19];
  memcpy(v237, v265, 0x120uLL);
  v237[36] = v40;
  v237[37] = v39;
  type metadata accessor for OffTheGridModel();
  sub_100126650(&qword_1003561C0, type metadata accessor for OffTheGridModel);
  v42 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v237, 0x130uLL);
  memcpy(v238, v265, sizeof(v238));
  v239 = v40;
  v240 = v39;
  sub_100006C20(v237, v266, &qword_10035F368);

  sub_100008FA0(v238, &qword_10035F368);
  v43 = v1[13];
  memcpy(v241, __dst, 0x130uLL);
  v241[38] = v42;
  v241[39] = v41;
  type metadata accessor for OnboardingModel();
  sub_100126650(&qword_10035F1F8, type metadata accessor for OnboardingModel);
  v44 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v241, 0x140uLL);
  memcpy(v242, __dst, sizeof(v242));
  v243 = v42;
  v244 = v41;
  sub_100006C20(v241, v266, &qword_10035F370);

  sub_100008FA0(v242, &qword_10035F370);
  v45 = v1[14];
  memcpy(v245, v265, 0x140uLL);
  v245[40] = v44;
  v245[41] = v43;
  type metadata accessor for RoadsideAssistanceModel();
  sub_100126650(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  v46 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v245, 0x150uLL);
  memcpy(v246, v265, sizeof(v246));
  v247 = v44;
  v248 = v43;
  sub_100006C20(v245, v266, &qword_10035F378);

  sub_100008FA0(v246, &qword_10035F378);
  v47 = v1[15];
  memcpy(v249, __dst, 0x150uLL);
  v249[42] = v46;
  v249[43] = v45;
  type metadata accessor for TransitionAlertModel();
  sub_100126650(&qword_10035F210, type metadata accessor for TransitionAlertModel);
  v48 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v249, 0x160uLL);
  memcpy(v250, __dst, sizeof(v250));
  v251 = v46;
  v252 = v45;
  sub_100006C20(v249, v266, &qword_10035F380);

  sub_100008FA0(v250, &qword_10035F380);
  v49 = v1[17];
  memcpy(v253, v265, 0x160uLL);
  v253[44] = v48;
  v253[45] = v47;
  type metadata accessor for TimeZoneModel();
  sub_100126650(&qword_10035F220, type metadata accessor for TimeZoneModel);
  v50 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v253, 0x170uLL);
  memcpy(v254, v265, sizeof(v254));
  v255 = v48;
  v256 = v47;
  sub_100006C20(v253, v266, &qword_10035F388);

  sub_100008FA0(v254, &qword_10035F388);
  v51 = v1[18];
  memcpy(v257, __dst, 0x170uLL);
  v257[46] = v50;
  v257[47] = v49;
  type metadata accessor for TryOutModel();
  sub_100126650(&qword_100357990, type metadata accessor for TryOutModel);
  v52 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v257, 0x180uLL);
  memcpy(v258, __dst, sizeof(v258));
  v259 = v50;
  v260 = v49;
  sub_100006C20(v257, v266, &qword_10035F390);

  sub_100008FA0(v258, &qword_10035F390);
  v53 = v1[20];
  memcpy(v261, v265, 0x180uLL);
  v261[48] = v52;
  v261[49] = v51;
  type metadata accessor for UIMetrics();
  sub_100126650(&qword_100354D40, type metadata accessor for UIMetrics);
  v54 = static ObservableObject.environmentStore.getter();
  memcpy(__src, v261, sizeof(__src));
  memcpy(v262, v265, sizeof(v262));
  v263 = v52;
  v264 = v51;
  sub_100006C20(v261, v266, &qword_10035F398);

  sub_100008FA0(v262, &qword_10035F398);
  memcpy(v265, __src, 0x190uLL);
  *&v265[25] = v54;
  *(&v265[25] + 1) = v53;
  memcpy(v266, __src, sizeof(v266));
  v267 = v54;
  v268 = v53;
  sub_100006C20(v265, __dst, &qword_10035F108);
  sub_100008FA0(v266, &qword_10035F108);
  return memcpy(v59, v265, 0x1A0uLL);
}

void *sub_100124498(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v59 = v6;
  v7 = v1[3];
  type metadata accessor for AlertAppearanceModel();
  sub_100126650(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel);
  v8 = static ObservableObject.environmentStore.getter();
  v9 = v1[2];
  type metadata accessor for AppEvents();
  sub_100126650(&qword_100354D48, type metadata accessor for AppEvents);

  v10 = static ObservableObject.environmentStore.getter();
  v56 = v1[4];
  type metadata accessor for AppPropertiesModel();
  sub_100126650(&qword_10035B6A0, type metadata accessor for AppPropertiesModel);

  v57 = static ObservableObject.environmentStore.getter();
  v58 = v1[5];
  *&v62 = v5;
  *(&v62 + 1) = v3;
  *&v63 = v8;
  *(&v63 + 1) = v7;
  *&v64 = v10;
  *(&v64 + 1) = v9;
  *&v65 = v57;
  *(&v65 + 1) = v56;
  type metadata accessor for AppRuntimeStateModel();
  sub_100126650(&qword_10035D780, type metadata accessor for AppRuntimeStateModel);

  v11 = static ObservableObject.environmentStore.getter();
  v265[0] = v62;
  v265[1] = v63;
  v265[2] = v64;
  v265[3] = v65;
  v66[0] = v5;
  v66[1] = v3;
  v66[2] = v8;
  v66[3] = v7;
  v66[4] = v10;
  v66[5] = v9;
  v66[6] = v57;
  v66[7] = v56;
  sub_100006C20(&v62, v266, &qword_10035F3A0);

  sub_100008FA0(v66, &qword_10035F3A0);
  v12 = v1[6];
  v67 = v265[0];
  v68 = v265[1];
  v69 = v265[2];
  v70 = v265[3];
  *&v71 = v11;
  *(&v71 + 1) = v58;
  type metadata accessor for BannerAppearanceModel();
  sub_100126650(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v13 = static ObservableObject.environmentStore.getter();
  __dst[2] = v69;
  __dst[3] = v70;
  __dst[4] = v71;
  __dst[0] = v67;
  __dst[1] = v68;
  v72[0] = v265[0];
  v72[1] = v265[1];
  v72[2] = v265[2];
  v72[3] = v265[3];
  v73 = v11;
  v74 = v58;
  sub_100006C20(&v67, v266, &qword_10035F3A8);

  sub_100008FA0(v72, &qword_10035F3A8);
  v14 = v1[7];
  v77 = __dst[2];
  v78 = __dst[3];
  v79 = __dst[4];
  v76 = __dst[1];
  v75 = __dst[0];
  *&v80 = v13;
  *(&v80 + 1) = v12;
  type metadata accessor for BluetoothModel();
  sub_100126650(&qword_100357BF8, type metadata accessor for BluetoothModel);
  v15 = static ObservableObject.environmentStore.getter();
  v265[2] = v77;
  v265[3] = v78;
  v265[4] = v79;
  v265[5] = v80;
  v265[0] = v75;
  v265[1] = v76;
  v81[2] = __dst[2];
  v81[3] = __dst[3];
  v81[4] = __dst[4];
  v81[1] = __dst[1];
  v81[0] = __dst[0];
  v82 = v13;
  v83 = v12;
  sub_100006C20(&v75, v266, &qword_10035F3B0);

  sub_100008FA0(v81, &qword_10035F3B0);
  v16 = v1[8];
  v17 = v16[14];
  v86 = v265[2];
  v87 = v265[3];
  v88 = v265[4];
  v89 = v265[5];
  v84 = v265[0];
  v85 = v265[1];
  *&v90 = v15;
  *(&v90 + 1) = v14;
  type metadata accessor for ConnectionClosedModel(0);
  sub_100126650(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);

  v18 = static ObservableObject.environmentStore.getter();
  __dst[4] = v88;
  __dst[5] = v89;
  __dst[6] = v90;
  __dst[0] = v84;
  __dst[1] = v85;
  __dst[2] = v86;
  __dst[3] = v87;
  v91[1] = v265[1];
  v91[0] = v265[0];
  v91[5] = v265[5];
  v91[4] = v265[4];
  v91[3] = v265[3];
  v91[2] = v265[2];
  v92 = v15;
  v93 = v14;
  sub_100006C20(&v84, v266, &qword_10035F3B8);
  sub_100008FA0(v91, &qword_10035F3B8);
  v19 = v16[9];
  v94 = __dst[0];
  v95 = __dst[1];
  v97 = __dst[3];
  v96 = __dst[2];
  v98 = __dst[4];
  v99 = __dst[5];
  v100 = __dst[6];
  *&v101 = v18;
  *(&v101 + 1) = v17;
  type metadata accessor for ConnectionModel(0);
  sub_100126650(&qword_100354F88, type metadata accessor for ConnectionModel);

  v20 = static ObservableObject.environmentStore.getter();
  v265[4] = v98;
  v265[5] = v99;
  v265[6] = v100;
  v265[7] = v101;
  v265[0] = v94;
  v265[1] = v95;
  v265[2] = v96;
  v265[3] = v97;
  v102[0] = __dst[0];
  v102[1] = __dst[1];
  v102[6] = __dst[6];
  v102[5] = __dst[5];
  v102[4] = __dst[4];
  v102[2] = __dst[2];
  v102[3] = __dst[3];
  v103 = v18;
  v104 = v17;
  sub_100006C20(&v94, v266, &qword_10035F3C0);
  sub_100008FA0(v102, &qword_10035F3C0);
  v21 = v16[12];
  v109 = v265[4];
  v110 = v265[5];
  v105 = v265[0];
  v106 = v265[1];
  v107 = v265[2];
  v108 = v265[3];
  v111 = v265[6];
  v112 = v265[7];
  *&v113 = v20;
  *(&v113 + 1) = v19;
  type metadata accessor for ConnectivityModel();
  sub_100126650(&qword_100354F78, type metadata accessor for ConnectivityModel);

  v22 = static ObservableObject.environmentStore.getter();
  __dst[6] = v111;
  __dst[7] = v112;
  __dst[8] = v113;
  __dst[2] = v107;
  __dst[3] = v108;
  __dst[4] = v109;
  __dst[5] = v110;
  __dst[0] = v105;
  __dst[1] = v106;
  v114[4] = v265[4];
  v114[5] = v265[5];
  v114[6] = v265[6];
  v114[7] = v265[7];
  v114[0] = v265[0];
  v114[1] = v265[1];
  v114[2] = v265[2];
  v114[3] = v265[3];
  v115 = v20;
  v116 = v19;
  sub_100006C20(&v105, v266, &qword_10035F3C8);
  sub_100008FA0(v114, &qword_10035F3C8);
  v23 = v16[8];
  v119 = __dst[2];
  v120 = __dst[3];
  v118 = __dst[1];
  v117 = __dst[0];
  v123 = __dst[6];
  v124 = __dst[7];
  v125 = __dst[8];
  v122 = __dst[5];
  v121 = __dst[4];
  *&v126 = v22;
  *(&v126 + 1) = v21;
  type metadata accessor for GuidanceMessagesModel();
  sub_100126650(&qword_100357820, type metadata accessor for GuidanceMessagesModel);

  v24 = static ObservableObject.environmentStore.getter();
  v265[6] = v123;
  v265[7] = v124;
  v265[8] = v125;
  v265[9] = v126;
  v265[2] = v119;
  v265[3] = v120;
  v265[4] = v121;
  v265[5] = v122;
  v265[0] = v117;
  v265[1] = v118;
  v127[6] = __dst[6];
  v127[7] = __dst[7];
  v127[8] = __dst[8];
  v127[2] = __dst[2];
  v127[3] = __dst[3];
  v127[5] = __dst[5];
  v127[4] = __dst[4];
  v127[1] = __dst[1];
  v127[0] = __dst[0];
  v128 = v22;
  v129 = v21;
  sub_100006C20(&v117, v266, &qword_10035F3D0);
  sub_100008FA0(v127, &qword_10035F3D0);
  v25 = v16[7];
  v130 = v265[0];
  v131 = v265[1];
  v136 = v265[6];
  v137 = v265[7];
  v138 = v265[8];
  v139 = v265[9];
  v132 = v265[2];
  v133 = v265[3];
  v134 = v265[4];
  v135 = v265[5];
  *&v140 = v24;
  *(&v140 + 1) = v23;
  type metadata accessor for GuidanceModel(0);
  sub_100126650(&qword_100354F80, type metadata accessor for GuidanceModel);

  v26 = static ObservableObject.environmentStore.getter();
  __dst[8] = v138;
  __dst[9] = v139;
  __dst[10] = v140;
  __dst[4] = v134;
  __dst[5] = v135;
  __dst[6] = v136;
  __dst[7] = v137;
  __dst[0] = v130;
  __dst[1] = v131;
  __dst[2] = v132;
  __dst[3] = v133;
  v141[6] = v265[6];
  v141[7] = v265[7];
  v141[8] = v265[8];
  v141[9] = v265[9];
  v141[2] = v265[2];
  v141[3] = v265[3];
  v141[4] = v265[4];
  v141[5] = v265[5];
  v141[0] = v265[0];
  v141[1] = v265[1];
  v142 = v24;
  v143 = v23;
  sub_100006C20(&v130, v266, &qword_10035F3D8);
  sub_100008FA0(v141, &qword_10035F3D8);
  v27 = v16[3];
  v152 = __dst[8];
  v153 = __dst[9];
  v154 = __dst[10];
  v148 = __dst[4];
  v149 = __dst[5];
  v151 = __dst[7];
  v150 = __dst[6];
  v144 = __dst[0];
  v145 = __dst[1];
  v147 = __dst[3];
  v146 = __dst[2];
  *&v155 = v26;
  *(&v155 + 1) = v25;
  type metadata accessor for OrientationModel();
  sub_100126650(&qword_10035B1B0, type metadata accessor for OrientationModel);

  v28 = static ObservableObject.environmentStore.getter();
  v265[8] = v152;
  v265[9] = v153;
  v265[10] = v154;
  v265[11] = v155;
  v265[4] = v148;
  v265[5] = v149;
  v265[6] = v150;
  v265[7] = v151;
  v265[0] = v144;
  v265[1] = v145;
  v265[2] = v146;
  v265[3] = v147;
  v156[8] = __dst[8];
  v156[9] = __dst[9];
  v156[10] = __dst[10];
  v156[4] = __dst[4];
  v156[5] = __dst[5];
  v156[7] = __dst[7];
  v156[6] = __dst[6];
  v156[0] = __dst[0];
  v156[1] = __dst[1];
  v156[3] = __dst[3];
  v156[2] = __dst[2];
  v157 = v26;
  v158 = v25;
  sub_100006C20(&v144, v266, &qword_10035F3E0);
  sub_100008FA0(v156, &qword_10035F3E0);
  v29 = v16[15];
  v163 = v265[4];
  v164 = v265[5];
  v159 = v265[0];
  v160 = v265[1];
  v161 = v265[2];
  v162 = v265[3];
  v167 = v265[8];
  v168 = v265[9];
  v169 = v265[10];
  v170 = v265[11];
  v165 = v265[6];
  v166 = v265[7];
  *&v171 = v28;
  *(&v171 + 1) = v27;
  type metadata accessor for PartnerModel();
  sub_100126650(&qword_1003561A8, type metadata accessor for PartnerModel);

  v30 = static ObservableObject.environmentStore.getter();
  __dst[10] = v169;
  __dst[11] = v170;
  __dst[12] = v171;
  __dst[6] = v165;
  __dst[7] = v166;
  __dst[8] = v167;
  __dst[9] = v168;
  __dst[2] = v161;
  __dst[3] = v162;
  __dst[4] = v163;
  __dst[5] = v164;
  __dst[0] = v159;
  __dst[1] = v160;
  v172[8] = v265[8];
  v172[9] = v265[9];
  v172[10] = v265[10];
  v172[11] = v265[11];
  v172[4] = v265[4];
  v172[5] = v265[5];
  v172[6] = v265[6];
  v172[7] = v265[7];
  v172[0] = v265[0];
  v172[1] = v265[1];
  v172[2] = v265[2];
  v172[3] = v265[3];
  v173 = v28;
  v174 = v27;
  sub_100006C20(&v159, v266, &qword_10035F3E8);
  sub_100008FA0(v172, &qword_10035F3E8);
  v31 = v16[4];
  v176 = __dst[1];
  v175 = __dst[0];
  v185 = __dst[10];
  v186 = __dst[11];
  v187 = __dst[12];
  v181 = __dst[6];
  v182 = __dst[7];
  v184 = __dst[9];
  v183 = __dst[8];
  v177 = __dst[2];
  v178 = __dst[3];
  v180 = __dst[5];
  v179 = __dst[4];
  *&v188 = v30;
  *(&v188 + 1) = v29;
  type metadata accessor for StewieModel(0);
  sub_100126650(&qword_1003561B8, type metadata accessor for StewieModel);

  v32 = static ObservableObject.environmentStore.getter();
  v265[10] = v185;
  v265[11] = v186;
  v265[12] = v187;
  v265[13] = v188;
  v265[6] = v181;
  v265[7] = v182;
  v265[8] = v183;
  v265[9] = v184;
  v265[2] = v177;
  v265[3] = v178;
  v265[4] = v179;
  v265[5] = v180;
  v265[0] = v175;
  v265[1] = v176;
  v189[10] = __dst[10];
  v189[11] = __dst[11];
  v189[12] = __dst[12];
  v189[6] = __dst[6];
  v189[7] = __dst[7];
  v189[9] = __dst[9];
  v189[8] = __dst[8];
  v189[2] = __dst[2];
  v189[3] = __dst[3];
  v189[5] = __dst[5];
  v189[4] = __dst[4];
  v189[1] = __dst[1];
  v189[0] = __dst[0];
  v190 = v30;
  v191 = v29;
  sub_100006C20(&v175, v266, &qword_10035F3F0);
  sub_100008FA0(v189, &qword_10035F3F0);
  v33 = v16[2];
  v202 = v265[10];
  v203 = v265[11];
  v204 = v265[12];
  v205 = v265[13];
  v198 = v265[6];
  v199 = v265[7];
  v200 = v265[8];
  v201 = v265[9];
  v194 = v265[2];
  v195 = v265[3];
  v196 = v265[4];
  v197 = v265[5];
  v192 = v265[0];
  v193 = v265[1];
  *&v206 = v32;
  *(&v206 + 1) = v31;
  type metadata accessor for SystemSettingsModel();
  sub_100126650(&qword_1003561B0, type metadata accessor for SystemSettingsModel);

  v34 = static ObservableObject.environmentStore.getter();
  __dst[12] = v204;
  __dst[13] = v205;
  __dst[14] = v206;
  __dst[8] = v200;
  __dst[9] = v201;
  __dst[10] = v202;
  __dst[11] = v203;
  __dst[4] = v196;
  __dst[5] = v197;
  __dst[6] = v198;
  __dst[7] = v199;
  __dst[0] = v192;
  __dst[1] = v193;
  __dst[2] = v194;
  __dst[3] = v195;
  v207[10] = v265[10];
  v207[11] = v265[11];
  v207[12] = v265[12];
  v207[13] = v265[13];
  v207[6] = v265[6];
  v207[7] = v265[7];
  v207[8] = v265[8];
  v207[9] = v265[9];
  v207[2] = v265[2];
  v207[3] = v265[3];
  v207[4] = v265[4];
  v207[5] = v265[5];
  v207[0] = v265[0];
  v207[1] = v265[1];
  v208 = v32;
  v209 = v31;
  sub_100006C20(&v192, v266, &qword_10035F3F8);
  sub_100008FA0(v207, &qword_10035F3F8);
  v35 = v1[9];
  v222 = __dst[12];
  v223 = __dst[13];
  v224 = __dst[14];
  v218 = __dst[8];
  v219 = __dst[9];
  v221 = __dst[11];
  v220 = __dst[10];
  v214 = __dst[4];
  v215 = __dst[5];
  v217 = __dst[7];
  v216 = __dst[6];
  v210 = __dst[0];
  v211 = __dst[1];
  v213 = __dst[3];
  v212 = __dst[2];
  *&v225 = v34;
  *(&v225 + 1) = v33;
  type metadata accessor for EmergencyModel();
  sub_100126650(&qword_100356B60, type metadata accessor for EmergencyModel);
  v36 = static ObservableObject.environmentStore.getter();
  v265[12] = v222;
  v265[13] = v223;
  v265[14] = v224;
  v265[15] = v225;
  v265[8] = v218;
  v265[9] = v219;
  v265[10] = v220;
  v265[11] = v221;
  v265[4] = v214;
  v265[5] = v215;
  v265[6] = v216;
  v265[7] = v217;
  v265[0] = v210;
  v265[1] = v211;
  v265[2] = v212;
  v265[3] = v213;
  v226[12] = __dst[12];
  v226[13] = __dst[13];
  v226[14] = __dst[14];
  v226[8] = __dst[8];
  v226[9] = __dst[9];
  v226[11] = __dst[11];
  v226[10] = __dst[10];
  v226[4] = __dst[4];
  v226[5] = __dst[5];
  v226[7] = __dst[7];
  v226[6] = __dst[6];
  v226[0] = __dst[0];
  v226[1] = __dst[1];
  v226[3] = __dst[3];
  v226[2] = __dst[2];
  v227 = v34;
  v228 = v33;
  sub_100006C20(&v210, v266, &qword_10035F400);

  sub_100008FA0(v226, &qword_10035F400);
  v37 = v1[10];
  v229[12] = v265[12];
  v229[13] = v265[13];
  v229[14] = v265[14];
  v229[15] = v265[15];
  v229[8] = v265[8];
  v229[9] = v265[9];
  v229[10] = v265[10];
  v229[11] = v265[11];
  v229[4] = v265[4];
  v229[5] = v265[5];
  v229[6] = v265[6];
  v229[7] = v265[7];
  v229[0] = v265[0];
  v229[1] = v265[1];
  v229[2] = v265[2];
  v229[3] = v265[3];
  *&v229[16] = v36;
  *(&v229[16] + 1) = v35;
  type metadata accessor for GeoLocationModel();
  sub_100126650(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
  v38 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v229, 0x110uLL);
  v230[12] = v265[12];
  v230[13] = v265[13];
  v230[14] = v265[14];
  v230[15] = v265[15];
  v230[8] = v265[8];
  v230[9] = v265[9];
  v230[10] = v265[10];
  v230[11] = v265[11];
  v230[4] = v265[4];
  v230[5] = v265[5];
  v230[6] = v265[6];
  v230[7] = v265[7];
  v230[0] = v265[0];
  v230[1] = v265[1];
  v230[2] = v265[2];
  v230[3] = v265[3];
  v231 = v36;
  v232 = v35;
  sub_100006C20(v229, v266, &qword_10035F408);

  sub_100008FA0(v230, &qword_10035F408);
  v39 = v1[12];
  memcpy(v233, __dst, 0x110uLL);
  v233[34] = v38;
  v233[35] = v37;
  type metadata accessor for OfferModel();
  sub_100126650(&qword_10035F1E0, type metadata accessor for OfferModel);
  v40 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v233, 0x120uLL);
  memcpy(v234, __dst, sizeof(v234));
  v235 = v38;
  v236 = v37;
  sub_100006C20(v233, v266, &qword_10035F410);

  sub_100008FA0(v234, &qword_10035F410);
  v41 = v1[19];
  memcpy(v237, v265, 0x120uLL);
  v237[36] = v40;
  v237[37] = v39;
  type metadata accessor for OffTheGridModel();
  sub_100126650(&qword_1003561C0, type metadata accessor for OffTheGridModel);
  v42 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v237, 0x130uLL);
  memcpy(v238, v265, sizeof(v238));
  v239 = v40;
  v240 = v39;
  sub_100006C20(v237, v266, &qword_10035F418);

  sub_100008FA0(v238, &qword_10035F418);
  v43 = v1[13];
  memcpy(v241, __dst, 0x130uLL);
  v241[38] = v42;
  v241[39] = v41;
  type metadata accessor for OnboardingModel();
  sub_100126650(&qword_10035F1F8, type metadata accessor for OnboardingModel);
  v44 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v241, 0x140uLL);
  memcpy(v242, __dst, sizeof(v242));
  v243 = v42;
  v244 = v41;
  sub_100006C20(v241, v266, &qword_10035F420);

  sub_100008FA0(v242, &qword_10035F420);
  v45 = v1[14];
  memcpy(v245, v265, 0x140uLL);
  v245[40] = v44;
  v245[41] = v43;
  type metadata accessor for RoadsideAssistanceModel();
  sub_100126650(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  v46 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v245, 0x150uLL);
  memcpy(v246, v265, sizeof(v246));
  v247 = v44;
  v248 = v43;
  sub_100006C20(v245, v266, &qword_10035F428);

  sub_100008FA0(v246, &qword_10035F428);
  v47 = v1[15];
  memcpy(v249, __dst, 0x150uLL);
  v249[42] = v46;
  v249[43] = v45;
  type metadata accessor for TransitionAlertModel();
  sub_100126650(&qword_10035F210, type metadata accessor for TransitionAlertModel);
  v48 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v249, 0x160uLL);
  memcpy(v250, __dst, sizeof(v250));
  v251 = v46;
  v252 = v45;
  sub_100006C20(v249, v266, &qword_10035F430);

  sub_100008FA0(v250, &qword_10035F430);
  v49 = v1[17];
  memcpy(v253, v265, 0x160uLL);
  v253[44] = v48;
  v253[45] = v47;
  type metadata accessor for TimeZoneModel();
  sub_100126650(&qword_10035F220, type metadata accessor for TimeZoneModel);
  v50 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v253, 0x170uLL);
  memcpy(v254, v265, sizeof(v254));
  v255 = v48;
  v256 = v47;
  sub_100006C20(v253, v266, &qword_10035F438);

  sub_100008FA0(v254, &qword_10035F438);
  v51 = v1[18];
  memcpy(v257, __dst, 0x170uLL);
  v257[46] = v50;
  v257[47] = v49;
  type metadata accessor for TryOutModel();
  sub_100126650(&qword_100357990, type metadata accessor for TryOutModel);
  v52 = static ObservableObject.environmentStore.getter();
  memcpy(v265, v257, 0x180uLL);
  memcpy(v258, __dst, sizeof(v258));
  v259 = v50;
  v260 = v49;
  sub_100006C20(v257, v266, &qword_10035F440);

  sub_100008FA0(v258, &qword_10035F440);
  v53 = v1[20];
  memcpy(v261, v265, 0x180uLL);
  v261[48] = v52;
  v261[49] = v51;
  type metadata accessor for UIMetrics();
  sub_100126650(&qword_100354D40, type metadata accessor for UIMetrics);
  v54 = static ObservableObject.environmentStore.getter();
  memcpy(__src, v261, sizeof(__src));
  memcpy(v262, v265, sizeof(v262));
  v263 = v52;
  v264 = v51;
  sub_100006C20(v261, v266, &qword_10035F448);

  sub_100008FA0(v262, &qword_10035F448);
  memcpy(v265, __src, 0x190uLL);
  *&v265[25] = v54;
  *(&v265[25] + 1) = v53;
  memcpy(v266, __src, sizeof(v266));
  v267 = v54;
  v268 = v53;
  sub_100006C20(v265, __dst, &qword_10035F0E8);
  sub_100008FA0(v266, &qword_10035F0E8);
  return memcpy(v59, v265, 0x1A0uLL);
}

void sub_100126130(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v30 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381C80);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "handleUserTappedOnMessagesApp", v17, 2u);
  }

  sub_10014ADC8();
  v18 = *(a1 + 64);
  v19 = *(v18 + 32);
  if (*(v19 + 64))
  {
    if (sub_100071A54(2, *(v19 + 80)))
    {
      v20 = *(v18 + 32);
      if (!*(v20 + 64) || (sub_100071A54(2, *(v20 + 88)) & 1) == 0)
      {
        sub_10000F574();
        v25 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v21 = *(v30 + 8);
        v30 += 8;
        v26 = v21;
        v21(v11, v8);
        v22 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_100126630;
        aBlock[5] = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001D2438;
        aBlock[3] = &unk_100331320;
        v23 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100126650(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000040A8(&unk_100355D70);
        sub_100009274(&qword_10035BB50, &unk_100355D70);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v24 = v25;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v23);

        (*(v29 + 8))(v4, v2);
        (*(v27 + 8))(v7, v28);
        v26(v13, v8);
      }
    }
  }
}

uint64_t sub_1001265F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100126638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100126650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100126754(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_10035F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  v6 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentLinkState;
  swift_beginAccess();
  sub_10012C1D8(a1, v1 + v6);
  swift_endAccess();
  v7 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data;
  swift_beginAccess();
  sub_100006C20(v1 + v7, v5, &qword_10035F980);
  v8 = _s8SOSBuddy4DataVMa_2(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v5, 1, v8);
  result = sub_100008FA0(v5, &qword_10035F980);
  if (v10 != 1)
  {
    swift_beginAccess();
    result = v9((v1 + v7), 1, v8);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1001268F8(a1);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1001268F8(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v2 - 8);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for LinkState(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C20(a1, v15, &qword_100359798);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_100008FA0(v15, &qword_100359798);
  }

  v39 = v9;
  sub_10012C010(v15, v19, type metadata accessor for LinkState);
  v21 = v19[1];
  if (v21 != 2 || v19[2] != 2)
  {
    v37 = _s8SOSBuddy4DataVMa_2(0);
    v22 = *(v37 + 32);
    sub_100006C20(v41 + v22, v12, &qword_100356518);
    v23 = type metadata accessor for DispatchTime();
    v38 = *(v23 - 8);
    v36 = *(v38 + 48);
    v24 = v36(v12, 1, v23);
    sub_100008FA0(v12, &qword_100356518);
    if (v24 == 1)
    {
      v25 = v39;
      static DispatchTime.now()();
      (*(v38 + 56))(v25, 0, 1, v23);
      sub_1000C6F74(v25, v41 + v22, &qword_100356518);
    }

    if (v21 != 2 && (v21 & 1) != 0)
    {
      v26 = *(v37 + 36);
      sub_100006C20(v41 + v26, v6, &qword_100356518);
      v27 = v36(v6, 1, v23);
      sub_100008FA0(v6, &qword_100356518);
      if (v27 == 1)
      {
        v28 = v39;
        static DispatchTime.now()();
        (*(v38 + 56))(v28, 0, 1, v23);
        sub_1000C6F74(v28, v41 + v26, &qword_100356518);
      }
    }
  }

  v29 = v19[2];
  if (v29 == 2)
  {
    return sub_10012BF4C(v19, type metadata accessor for LinkState);
  }

  if ((v29 & 1) == 0)
  {
    return sub_10012BF4C(v19, type metadata accessor for LinkState);
  }

  v30 = *(_s8SOSBuddy4DataVMa_2(0) + 40);
  v31 = v40;
  sub_100006C20(v41 + v30, v40, &qword_100356518);
  v32 = type metadata accessor for DispatchTime();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 48))(v31, 1, v32);
  sub_100008FA0(v31, &qword_100356518);
  if (v34 != 1)
  {
    return sub_10012BF4C(v19, type metadata accessor for LinkState);
  }

  v35 = v39;
  static DispatchTime.now()();
  sub_10012BF4C(v19, type metadata accessor for LinkState);
  (*(v33 + 56))(v35, 0, 1, v32);
  return sub_1000C6F74(v35, v41 + v30, &qword_100356518);
}

uint64_t sub_100126E50(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v3 - 8);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v24 = &v23 - v6;
  v7 = sub_1000040A8(&qword_10035F980);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentSuggestedActions;
  *(v1 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentSuggestedActions) = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions);

  v11 = v1 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data;
  swift_beginAccess();
  sub_100006C20(v11, v9, &qword_10035F980);
  v12 = _s8SOSBuddy4DataVMa_2(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v9, 1, v12);
  result = sub_100008FA0(v9, &qword_10035F980);
  if (v14 != 1)
  {
    v16 = *(v1 + v10);
    swift_beginAccess();
    result = v13(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      if (sub_100071A54(0, v16))
      {
        v17 = *(v12 + 28);
        v18 = v24;
        sub_100006C20(v11 + v17, v24, &qword_100356518);
        v19 = type metadata accessor for DispatchTime();
        v20 = *(v19 - 8);
        v21 = (*(v20 + 48))(v18, 1, v19);

        sub_100008FA0(v18, &qword_100356518);
        if (v21 == 1)
        {
          v22 = v23;
          static DispatchTime.now()();
          (*(v20 + 56))(v22, 0, 1, v19);
          sub_1000C6F74(v22, v11 + v17, &qword_100356518);
        }
      }

      else
      {
      }

      swift_endAccess();
    }
  }

  return result;
}

void sub_100127170(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_10035F818);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for EmergencyData(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v26 = &v26 - v11;
  v12 = sub_1000040A8(&qword_10035F980);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = _s8SOSBuddy4DataVMa_2(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 8) || *a1 != 5)
  {
    v19 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data;
    swift_beginAccess();
    sub_100006C20(v1 + v19, v14, &qword_10035F980);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_100008FA0(v14, &qword_10035F980);
    }

    else
    {
      sub_10012C010(v14, v18, _s8SOSBuddy4DataVMa_2);
      sub_100006C20(&v18[*(v15 + 20)], v5, &qword_10035F818);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_100008FA0(v5, &qword_10035F818);
      }

      else
      {
        v20 = v26;
        sub_10012C010(v5, v26, type metadata accessor for EmergencyData);
        if (qword_100353A08 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_10000F53C(v21, qword_100381C68);
        sub_10012BFAC(v20, v9);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 134349056;
          v25 = *v9;
          sub_10012BF4C(v9, type metadata accessor for EmergencyData);
          *(v24 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v22, v23, "Emergency conversation ID %{public}llu was not committed, considering start message not ACKed and dropped, finalizing session start event.", v24, 0xCu);
        }

        else
        {
          sub_10012BF4C(v9, type metadata accessor for EmergencyData);
        }

        sub_10012BF4C(v20, type metadata accessor for EmergencyData);
      }

      sub_100129C44();
      sub_10012BF4C(v18, _s8SOSBuddy4DataVMa_2);
    }
  }
}

uint64_t sub_1001275E4(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v3 - 8);
  v64 = &v60 - v4;
  v5 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v5 - 8);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v60 - v8;
  v9 = type metadata accessor for EmergencyData(0);
  v67 = *(v9 - 8);
  __chkstk_darwin(v9);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v60 - v12;
  v13 = sub_1000040A8(&qword_10035F980);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  v19 = v1 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data;
  swift_beginAccess();
  v72 = v19;
  sub_100006C20(v19, v18, &qword_10035F980);
  v20 = _s8SOSBuddy4DataVMa_2(0);
  v65 = *(v20 - 1);
  v70 = *(v65 + 48);
  v71 = v65 + 48;
  LODWORD(v19) = v70(v18, 1, v20);
  sub_100008FA0(v18, &qword_10035F980);
  v68 = v1;
  if (v19 == 1)
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000F53C(v21, qword_100381C68);
    sub_10012C128(a1, &v74);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    sub_10012C184(a1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v73[0] = v25;
      *v24 = 136446210;
      v26 = *(a1 + 16);
      v74 = *a1;
      v75 = v26;
      v76 = *(a1 + 32);
      v27 = String.init<A>(describing:)();
      v29 = sub_10017C9E8(v27, v28, v73);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Tracking session start for %{public}s", v24, 0xCu);
      sub_100008964(v25);
LABEL_10:
    }
  }

  else
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000F53C(v30, qword_100381C68);
    sub_10012C128(a1, &v74);
    v22 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    sub_10012C184(a1);
    if (os_log_type_enabled(v22, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v73[0] = v33;
      *v32 = 136446210;
      v34 = *(a1 + 16);
      v74 = *a1;
      v75 = v34;
      v76 = *(a1 + 32);
      v35 = String.init<A>(describing:)();
      v37 = sub_10017C9E8(v35, v36, v73);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v22, v31, "Resetting tracking session start for %{public}s", v32, 0xCu);
      sub_100008964(v33);
      goto LABEL_10;
    }
  }

  v38 = *a1;
  v39 = *(a1 + 8);
  v77 = *(a1 + 34);
  v40 = v9;
  v41 = *(v9 + 28);
  v42 = type metadata accessor for DispatchTime();
  v62 = *(v42 - 8);
  v43 = *(v62 + 56);
  v44 = v69;
  v43(v69 + v41, 1, 1, v42);
  *v44 = v39;
  *(v44 + 8) = v38;
  *(v44 + 9) = v77;
  *(v44 + *(v40 + 32)) = 0;
  v45 = v66;
  sub_10012BFAC(v44, v66);
  v46 = v20[5];
  v47 = *(v67 + 56);
  v47(&v15[v46], 1, 1, v40);
  v15[v20[6]] = 1;
  v43(&v15[v20[7]], 1, 1, v42);
  v43(&v15[v20[8]], 1, 1, v42);
  v43(&v15[v20[9]], 1, 1, v42);
  v43(&v15[v20[10]], 1, 1, v42);
  v48 = &v15[v20[11]];
  *(v48 + 4) = 0;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  v48[40] = 1;
  static DispatchTime.now()();
  sub_100008FA0(&v15[v46], &qword_10035F818);
  sub_10012C010(v45, &v15[v46], type metadata accessor for EmergencyData);
  v47(&v15[v46], 0, 1, v40);
  (*(v65 + 56))(v15, 0, 1, v20);
  v49 = v72;
  swift_beginAccess();
  sub_1000C6F74(v15, v49, &qword_10035F980);
  v50 = v68;
  v51 = *(v68 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentSuggestedActions);
  result = v70(v49, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (sub_100071A54(0, v51))
    {
      v53 = v20[7];
      v54 = v63;
      sub_100006C20(v72 + v53, v63, &qword_100356518);
      v55 = (*(v62 + 48))(v54, 1, v42);

      v49 = v72;
      sub_100008FA0(v54, &qword_100356518);
      if (v55 == 1)
      {
        v56 = v61;
        static DispatchTime.now()();
        v43(v56, 0, 1, v42);
        sub_1000C6F74(v56, v49 + v53, &qword_100356518);
      }
    }

    else
    {
    }

    swift_endAccess();

    v57 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentLinkState;
    swift_beginAccess();
    v58 = v50 + v57;
    v59 = v64;
    sub_100006C20(v58, v64, &qword_100359798);
    swift_beginAccess();
    result = v70(v49, 1, v20);
    if (result != 1)
    {
      sub_1001268F8(v59);
      sub_100008FA0(v59, &qword_100359798);
      swift_endAccess();
      return sub_10012BF4C(v69, type metadata accessor for EmergencyData);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100127F30(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v3 - 8);
  v64 = &v60 - v4;
  v5 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v5 - 8);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v60 - v8;
  v9 = type metadata accessor for EmergencyData(0);
  v67 = *(v9 - 8);
  __chkstk_darwin(v9);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v60 - v12;
  v13 = sub_1000040A8(&qword_10035F980);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  v72 = v1;
  v19 = v1 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data;
  swift_beginAccess();
  sub_100006C20(v19, v18, &qword_10035F980);
  v20 = _s8SOSBuddy4DataVMa_2(0);
  v65 = *(v20 - 1);
  v70 = *(v65 + 48);
  v71 = v65 + 48;
  v21 = v70(v18, 1, v20);
  sub_100008FA0(v18, &qword_10035F980);
  v68 = v19;
  if (v21 == 1)
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000F53C(v22, qword_100381C68);
    sub_10012C078(a1, &v74);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    sub_10012C0D4(a1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v73[0] = v26;
      *v25 = 136446210;
      v27 = *(a1 + 16);
      v74 = *a1;
      v75[0] = v27;
      *(v75 + 10) = *(a1 + 26);
      v28 = String.init<A>(describing:)();
      v30 = sub_10017C9E8(v28, v29, v73);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Tracking session start for %{public}s", v25, 0xCu);
      sub_100008964(v26);
LABEL_10:
    }
  }

  else
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000F53C(v31, qword_100381C68);
    sub_10012C078(a1, &v74);
    v23 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    sub_10012C0D4(a1);
    if (os_log_type_enabled(v23, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v73[0] = v34;
      *v33 = 136446210;
      v35 = *(a1 + 16);
      v74 = *a1;
      v75[0] = v35;
      *(v75 + 10) = *(a1 + 26);
      v36 = String.init<A>(describing:)();
      v38 = sub_10017C9E8(v36, v37, v73);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v23, v32, "Resetting tracking session start for %{public}s", v33, 0xCu);
      sub_100008964(v34);
      goto LABEL_10;
    }
  }

  v39 = *a1;
  v76 = *(a1 + 42);
  v40 = *(v9 + 28);
  v41 = type metadata accessor for DispatchTime();
  v62 = *(v41 - 8);
  v42 = *(v62 + 56);
  v43 = v9;
  v44 = v69;
  v42(v69 + v40, 1, 1, v41);
  *v44 = v39;
  *(v44 + 8) = 4;
  *(v44 + 9) = v76;
  *(v44 + *(v43 + 32)) = 0;
  v45 = v66;
  sub_10012BFAC(v44, v66);
  v46 = v20[5];
  v47 = *(v67 + 56);
  v47(&v15[v46], 1, 1, v43);
  v15[v20[6]] = 1;
  v42(&v15[v20[7]], 1, 1, v41);
  v42(&v15[v20[8]], 1, 1, v41);
  v42(&v15[v20[9]], 1, 1, v41);
  v42(&v15[v20[10]], 1, 1, v41);
  v48 = &v15[v20[11]];
  *(v48 + 4) = 0;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  v48[40] = 1;
  static DispatchTime.now()();
  sub_100008FA0(&v15[v46], &qword_10035F818);
  sub_10012C010(v45, &v15[v46], type metadata accessor for EmergencyData);
  v47(&v15[v46], 0, 1, v43);
  (*(v65 + 56))(v15, 0, 1, v20);
  v49 = v68;
  swift_beginAccess();
  sub_1000C6F74(v15, v49, &qword_10035F980);
  v50 = *(v72 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentSuggestedActions);
  result = v70(v49, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (sub_100071A54(0, v50))
    {
      v52 = v20[7];
      v53 = v63;
      sub_100006C20(v49 + v52, v63, &qword_100356518);
      v54 = (*(v62 + 48))(v53, 1, v41);

      sub_100008FA0(v53, &qword_100356518);
      if (v54 == 1)
      {
        v55 = v61;
        static DispatchTime.now()();
        v42(v55, 0, 1, v41);
        sub_1000C6F74(v55, v49 + v52, &qword_100356518);
      }
    }

    else
    {
    }

    swift_endAccess();

    v56 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentLinkState;
    v57 = v72;
    swift_beginAccess();
    v58 = v57 + v56;
    v59 = v64;
    sub_100006C20(v58, v64, &qword_100359798);
    swift_beginAccess();
    result = v70(v49, 1, v20);
    if (result != 1)
    {
      sub_1001268F8(v59);
      sub_100008FA0(v59, &qword_100359798);
      swift_endAccess();
      return sub_10012BF4C(v69, type metadata accessor for EmergencyData);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100128878(int a1, uint64_t a2)
{
  v72 = a2;
  v70 = a1;
  v3 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v3 - 8);
  v71 = &v67 - v4;
  v5 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v5 - 8);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v67 - v8;
  v9 = sub_1000040A8(&qword_10035F818);
  __chkstk_darwin(v9 - 8);
  v11 = &v67 - v10;
  v12 = sub_1000040A8(&qword_10035F980);
  __chkstk_darwin(v12 - 8);
  v74 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  v78 = v2;
  v20 = v2 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data;
  swift_beginAccess();
  sub_100006C20(v20, v19, &qword_10035F980);
  v21 = _s8SOSBuddy4DataVMa_2(0);
  v73 = *(v21 - 1);
  v22 = v73 + 48;
  v23 = *(v73 + 48);
  v24 = v23(v19, 1, v21);
  sub_100008FA0(v19, &qword_10035F980);
  v76 = v22;
  v77 = v23;
  v75 = v20;
  if (v24 == 1)
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000F53C(v25, qword_100381C68);
    v26 = v72;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_17;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v79[0] = v30;
    *v29 = 136446210;
    v80 = v70 & 1;
    v81 = v26;

    v31 = String.init<A>(describing:)();
    v33 = sub_10017C9E8(v31, v32, v79);

    *(v29 + 4) = v33;
    v34 = "Tracking FindMy start for %{public}s";
  }

  else
  {
    sub_100006C20(v20, v16, &qword_10035F980);
    result = v23(v16, 1, v21);
    if (result == 1)
    {
      goto LABEL_26;
    }

    sub_100006C20(&v16[v21[5]], v11, &qword_10035F818);
    v36 = type metadata accessor for EmergencyData(0);
    v37 = (*(*(v36 - 8) + 48))(v11, 1, v36);
    sub_100008FA0(v11, &qword_10035F818);
    sub_10012BF4C(v16, _s8SOSBuddy4DataVMa_2);
    if (v37 == 1)
    {
      v38 = v72;
      if (qword_100353A08 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000F53C(v39, qword_100381C68);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_17;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v79[0] = v30;
      *v29 = 136446210;
      v80 = v70 & 1;
      v81 = v38;

      v40 = String.init<A>(describing:)();
      v42 = sub_10017C9E8(v40, v41, v79);

      *(v29 + 4) = v42;
      v34 = "Resetting tracking FindMy start for %{public}s";
    }

    else
    {
      v43 = v72;
      if (qword_100353A08 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000F53C(v44, qword_100381C68);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_17;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v79[0] = v30;
      *v29 = 136446210;
      v80 = v70 & 1;
      v81 = v43;

      v45 = String.init<A>(describing:)();
      v47 = sub_10017C9E8(v45, v46, v79);

      *(v29 + 4) = v47;
      v34 = "Session is already in progress, ignoring FindMy start for %{public}s";
    }
  }

  _os_log_impl(&_mh_execute_header, v27, v28, v34, v29, 0xCu);
  sub_100008964(v30);

LABEL_17:

  v48 = v21[5];
  v49 = type metadata accessor for EmergencyData(0);
  v50 = v74;
  (*(*(v49 - 8) + 56))(&v74[v48], 1, 1, v49);
  v51 = v21[6];
  v52 = v21[7];
  v53 = type metadata accessor for DispatchTime();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v55(v50 + v52, 1, 1, v53);
  v55(v50 + v21[8], 1, 1, v53);
  v55(v50 + v21[9], 1, 1, v53);
  v55(v50 + v21[10], 1, 1, v53);
  v56 = v50 + v21[11];
  *(v56 + 32) = 0;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  *(v56 + 40) = 1;
  static DispatchTime.now()();
  *(v50 + v51) = 0;
  (*(v73 + 56))(v50, 0, 1, v21);
  v57 = v75;
  swift_beginAccess();
  sub_1000C6F74(v50, v57, &qword_10035F980);
  v58 = *(v78 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentSuggestedActions);
  result = v77(v57, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (sub_100071A54(0, v58))
    {
      v59 = v21[7];
      v60 = v69;
      sub_100006C20(v57 + v59, v69, &qword_100356518);
      v61 = (*(v54 + 48))(v60, 1, v53);

      sub_100008FA0(v60, &qword_100356518);
      if (v61 == 1)
      {
        v62 = v68;
        static DispatchTime.now()();
        v55(v62, 0, 1, v53);
        sub_1000C6F74(v62, v57 + v59, &qword_100356518);
      }
    }

    else
    {
    }

    swift_endAccess();

    v63 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentLinkState;
    v64 = v78;
    swift_beginAccess();
    v65 = v64 + v63;
    v66 = v71;
    sub_100006C20(v65, v71, &qword_100359798);
    swift_beginAccess();
    result = v77(v57, 1, v21);
    if (result != 1)
    {
      sub_1001268F8(v66);
      sub_100008FA0(v66, &qword_100359798);
      return swift_endAccess();
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100129288(uint64_t a1)
{
  v53 = a1;
  v2 = sub_1000040A8(&qword_10035F980);
  __chkstk_darwin(v2 - 8);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v7 = sub_1000040A8(&qword_10035F818);
  __chkstk_darwin(v7 - 8);
  v55 = &v46 - v8;
  v54 = type metadata accessor for EmergencyData(0);
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v52 = v1;
  v15 = v1 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data;
  swift_beginAccess();
  sub_100006C20(v15, v6, &qword_10035F980);
  v16 = _s8SOSBuddy4DataVMa_2(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v6, 1, v16))
  {
    sub_100008FA0(v6, &qword_10035F980);
    v19 = v55;
    (*(v9 + 56))(v55, 1, 1, v54);
    return sub_100008FA0(v19, &qword_10035F818);
  }

  v47 = v18;
  v48 = v11;
  v20 = v17;
  v49 = v15;
  v50 = v14;
  v19 = v55;
  sub_100006C20(&v6[*(v16 + 20)], v55, &qword_10035F818);
  sub_100008FA0(v6, &qword_10035F980);
  v21 = *(v9 + 48);
  v22 = v54;
  if (v21(v19, 1, v54) == 1)
  {
    return sub_100008FA0(v19, &qword_10035F818);
  }

  v24 = v50;
  sub_10012C010(v19, v50, type metadata accessor for EmergencyData);
  v25 = *(v53 + 8 * ((*(v53 + 40) >> 15) ^ 1u));
  if (v25 == *v24)
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000F53C(v26, qword_100381C68);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v47;
    if (v29)
    {
      v31 = swift_slowAlloc();
      *v31 = 134349056;
      *(v31 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v28, "Conversation ID %{public}llu is committed, considering start message ACKed, finalizing session start event.", v31, 0xCu);
    }

    v32 = v49;
    result = v30(v49, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v33 = v32 + *(v16 + 20);
      result = (v21)(v33, 1, v22);
      if (result != 1)
      {
        *(v33 + *(v22 + 32)) = 1;
        sub_100129C44();
        return sub_10012BF4C(v50, type metadata accessor for EmergencyData);
      }
    }

    __break(1u);
  }

  else
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000F53C(v34, qword_100381C68);
    v35 = v50;
    v36 = v48;
    sub_10012BFAC(v50, v48);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v49;
    v41 = v20;
    if (v39)
    {
      v42 = swift_slowAlloc();
      *v42 = 134349312;
      v43 = v25;
      v44 = *v36;
      sub_10012BF4C(v36, type metadata accessor for EmergencyData);
      *(v42 + 4) = v44;
      *(v42 + 12) = 2050;
      *(v42 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Conversation ID for the pending start session %{public}llu does not match the current one %{public}llu, resetting.", v42, 0x16u);
    }

    else
    {
      sub_10012BF4C(v36, type metadata accessor for EmergencyData);
    }

    v45 = v51;

    sub_10012BF4C(v35, type metadata accessor for EmergencyData);
    (*(v41 + 56))(v45, 1, 1, v16);
    swift_beginAccess();
    sub_1000C6F74(v45, v40, &qword_10035F980);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1001298C8(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 144);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (*(v3 + v4 + 31) == 4)
    {
      v5 = sub_1001266F4();
      v7 = v6;
      v8 = _s8SOSBuddy4DataVMa_2(0);
      if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
      {
        sub_100129998();
      }

      return (v5)(v9, 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100129998()
{
  v1 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_10035F818);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = v0 + *(_s8SOSBuddy4DataVMa_2(0) + 20);
  sub_100006C20(v10, v9, &qword_10035F818);
  v11 = type metadata accessor for EmergencyData(0);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v9, 1, v11);
  result = sub_100008FA0(v9, &qword_10035F818);
  if (v13 != 1)
  {
    result = v12(v10, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_100006C20(v10 + *(v11 + 28), v6, &qword_100356518);
      v15 = type metadata accessor for DispatchTime();
      v16 = *(v15 - 8);
      v17 = (*(v16 + 48))(v6, 1, v15);
      result = sub_100008FA0(v6, &qword_100356518);
      if (v17 != 1)
      {
        return result;
      }

      static DispatchTime.now()();
      (*(v16 + 56))(v3, 0, 1, v15);
      result = v12(v10, 1, v11);
      if (result != 1)
      {
        return sub_1000C6F74(v3, v10 + *(v11 + 28), &qword_100356518);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100129C44()
{
  v1 = sub_1000040A8(&qword_10035F818);
  __chkstk_darwin(v1 - 8);
  v50 = &v41 - v2;
  v3 = type metadata accessor for EmergencyData(0);
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000040A8(&qword_10035F980);
  __chkstk_darwin(v5 - 8);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v41 - v8;
  __chkstk_darwin(v9);
  v45 = &v41 - v10;
  __chkstk_darwin(v11);
  v42 = &v41 - v12;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v19 = v0;
  v20 = v0 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data;
  swift_beginAccess();
  sub_100006C20(v20, v18, &qword_10035F980);
  v21 = _s8SOSBuddy4DataVMa_2(0);
  v46 = *(v21 - 1);
  v22 = *(v46 + 48);
  v23 = v22(v18, 1, v21);
  result = sub_100008FA0(v18, &qword_10035F980);
  if (v23 != 1)
  {
    result = v22(v20, 1, v21);
    if (result == 1)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v25 = *(v19 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentTarget + 40);
    v26 = *(v19 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentTarget + 32);
    v27 = v20 + v21[11];
    v28 = *(v19 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentTarget + 16);
    *v27 = *(v19 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentTarget);
    *(v27 + 16) = v28;
    *(v27 + 32) = v26;
    *(v27 + 40) = v25;
    sub_100006C20(v20, v15, &qword_10035F980);
    v29 = v22(v15, 1, v21);
    v30 = v50;
    if (v29)
    {
      sub_100008FA0(v15, &qword_10035F980);
      (*(v48 + 56))(v30, 1, 1, v49);
LABEL_6:
      sub_100008FA0(v30, &qword_10035F818);
      v31 = v45;
      sub_100006C20(v20, v45, &qword_10035F980);
      if (v22(v31, 1, v21))
      {
        sub_100008FA0(v31, &qword_10035F980);
LABEL_20:
        v40 = v47;
        (*(v46 + 56))(v47, 1, 1, v21);
        swift_beginAccess();
        sub_1000C6F74(v40, v20, &qword_10035F980);
        return swift_endAccess();
      }

      v32 = *(v31 + v21[6]);
      sub_100008FA0(v31, &qword_10035F980);
      if (v32)
      {
        goto LABEL_20;
      }

      v33 = v43;
      sub_100006C20(v20, v43, &qword_10035F980);
      result = v22(v33, 1, v21);
      if (result != 1)
      {
        v34 = sub_10012A2E0();
        sub_10012BF4C(v33, _s8SOSBuddy4DataVMa_2);
        sub_10017EEA8(4, v34);

        goto LABEL_20;
      }

      goto LABEL_23;
    }

    sub_100006C20(&v15[v21[5]], v50, &qword_10035F818);
    sub_100008FA0(v15, &qword_10035F980);
    if ((*(v48 + 48))(v30, 1, v49) == 1)
    {
      goto LABEL_6;
    }

    v35 = v44;
    sub_10012C010(v30, v44, type metadata accessor for EmergencyData);
    v36 = "startConversation";
    if (!*(v35 + 9))
    {
      v36 = "llDetection";
    }

    if ((*(v35 + 9) & 1) != 0 || (v36 | 0x8000000000000000) != 0x8000000100294520)
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v38 = v42;
    sub_100006C20(v20, v42, &qword_10035F980);
    result = v22(v38, 1, v21);
    if (result == 1)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v39 = sub_10012A2E0();
    sub_10012BF4C(v38, _s8SOSBuddy4DataVMa_2);
    sub_10017EEA8(4, v39);

LABEL_19:
    sub_10012BF4C(v35, type metadata accessor for EmergencyData);
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10012A2E0()
{
  v135 = type metadata accessor for DispatchTime();
  v137 = *(v135 - 8);
  __chkstk_darwin(v135);
  v117 = &v116 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v125 = &v116 - v3;
  __chkstk_darwin(v4);
  v118 = &v116 - v5;
  __chkstk_darwin(v6);
  v129 = &v116 - v7;
  __chkstk_darwin(v8);
  v134 = &v116 - v9;
  __chkstk_darwin(v10);
  v130 = &v116 - v11;
  v12 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v12 - 8);
  v116 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v116 - v15;
  __chkstk_darwin(v17);
  v128 = &v116 - v18;
  __chkstk_darwin(v19);
  v131 = &v116 - v20;
  __chkstk_darwin(v21);
  v133 = &v116 - v22;
  __chkstk_darwin(v23);
  v139 = &v116 - v24;
  __chkstk_darwin(v25);
  v138 = (&v116 - v26);
  v27 = sub_1000040A8(&qword_10035F818);
  __chkstk_darwin(v27 - 8);
  v124 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v116 - v30;
  v32 = type metadata accessor for EmergencyData(0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v126 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v116 - v36;
  v38 = _s8SOSBuddy4DataVMa_2(0);
  v119 = v38[5];
  sub_100006C20(v0 + v119, v31, &qword_10035F818);
  v39 = *(v33 + 48);
  v136 = v32;
  v121 = v33 + 48;
  v120 = v39;
  v40 = v39(v31, 1, v32);
  v123 = v16;
  if (v40 == 1)
  {
    sub_100008FA0(v31, &qword_10035F818);
  }

  else
  {
    sub_10012C010(v31, v37, type metadata accessor for EmergencyData);
    sub_10012BF4C(v37, type metadata accessor for EmergencyData);
  }

  v41 = v0;
  sub_1000040A8(&qword_100358320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10027A620;
  *(inited + 32) = 0x707954746E657665;
  v132 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  v43 = String._bridgeToObjectiveC()();

  *(inited + 48) = v43;
  *(inited + 56) = 0x6767697254777473;
  *(inited + 64) = 0xEA00000000007265;
  v44 = String._bridgeToObjectiveC()();

  *(inited + 72) = v44;
  *(inited + 80) = 0x74617453636E7973;
  *(inited + 88) = 0xEA00000000007375;
  v127 = v38[9];
  v45 = v138;
  sub_100006C20(v0 + v127, v138, &qword_100356518);
  v46 = (v137 + 12);
  v47 = *(v137 + 6);
  v48 = v135;
  (v47)(v45, 1, v135);
  sub_100008FA0(v45, &qword_100356518);
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = 0x7574617453676572;
  *(inited + 112) = 0xE900000000000073;
  v122 = v38[10];
  v49 = v139;
  sub_100006C20(v41 + v122, v139, &qword_100356518);
  (v47)(v49, 1, v48);
  sub_100008FA0(v49, &qword_100356518);
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v50 = sub_10025663C(inited);
  v51 = v48;
  swift_setDeallocating();
  sub_1000040A8(&qword_100358328);
  swift_arrayDestroy();
  v52 = v38;
  v53 = v133;
  sub_100006C20(v41 + v38[7], v133, &qword_100356518);
  v138 = v47;
  v139 = v46;
  if ((v47)(v53, 1, v51) == 1)
  {
    sub_100008FA0(v53, &qword_100356518);
    v54 = v137;
    v55 = v38;
    v56 = v134;
  }

  else
  {
    v57 = v50;
    v58 = v137;
    v59 = v51;
    (*(v137 + 4))(v130, v53, v51);
    v60 = DispatchTime.uptimeNanoseconds.getter();
    v61 = DispatchTime.uptimeNanoseconds.getter();
    v62 = v58;
    v55 = v52;
    v56 = v134;
    if (v61 < v60)
    {
      v63 = DispatchTime.uptimeNanoseconds.getter();
      if (v63 < DispatchTime.uptimeNanoseconds.getter())
      {
        __break(1u);
      }
    }

    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v57;
    sub_1001894D4(isa, 0xD000000000000011, 0x800000010029E4E0, isUniquelyReferenced_nonNull_native);
    v50 = v140;
    v54 = v62;
    v66 = *(v62 + 1);
    v51 = v59;
    v66(v130, v59);
  }

  v67 = v131;
  sub_100006C20(v41 + v55[8], v131, &qword_100356518);
  if ((v138)(v67, 1, v51) == 1)
  {
    sub_100008FA0(v67, &qword_100356518);
  }

  else
  {
    v68 = v50;
    (*(v54 + 4))(v56, v67, v51);
    v69 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() < v69)
    {
      v70 = DispatchTime.uptimeNanoseconds.getter();
      if (v70 < DispatchTime.uptimeNanoseconds.getter())
      {
        __break(1u);
      }
    }

    v71 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v68;
    sub_1001894D4(v71, 0xD000000000000012, 0x800000010029E4C0, v72);
    v50 = v140;
    (*(v54 + 1))(v56, v51);
  }

  v73 = v129;
  v74 = v128;
  sub_100006C20(v41 + v127, v128, &qword_100356518);
  if ((v138)(v74, 1, v51) == 1)
  {
    sub_100008FA0(v74, &qword_100356518);
  }

  else
  {
    v75 = v50;
    (*(v54 + 4))(v73, v74, v51);
    v76 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() < v76)
    {
      v77 = DispatchTime.uptimeNanoseconds.getter();
      if (v77 < DispatchTime.uptimeNanoseconds.getter())
      {
        __break(1u);
      }
    }

    v78 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v75;
    sub_1001894D4(v78, 0x4379636E6574616CLL, 0xEC0000004D706D61, v79);
    v50 = v140;
    (*(v54 + 1))(v73, v51);
  }

  v137 = v55;
  v80 = v123;
  sub_100006C20(v41 + v122, v123, &qword_100356518);
  v81 = (v138)(v80, 1, v51);
  v82 = v125;
  if (v81 == 1)
  {
    v83 = v54;
    sub_100008FA0(v80, &qword_100356518);
    v84 = v124;
    v85 = v126;
  }

  else
  {
    v86 = v50;
    v83 = v54;
    v87 = v118;
    (*(v54 + 4))(v118, v80, v51);
    v88 = DispatchTime.uptimeNanoseconds.getter();
    v89 = DispatchTime.uptimeNanoseconds.getter();
    v84 = v124;
    v85 = v126;
    if (v89 < v88)
    {
      v90 = DispatchTime.uptimeNanoseconds.getter();
      if (v90 < DispatchTime.uptimeNanoseconds.getter())
      {
        __break(1u);
      }
    }

    v91 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v86;
    sub_1001894D4(v91, 0x5279636E6574616CLL, 0xEB000000004D6765, v92);
    v50 = v140;
    (*(v83 + 1))(v87, v51);
  }

  sub_100006C20(v41 + v119, v84, &qword_10035F818);
  if (v120(v84, 1, v136) == 1)
  {
    sub_100008FA0(v84, &qword_10035F818);
    goto LABEL_50;
  }

  v93 = v50;
  sub_10012C010(v84, v85, type metadata accessor for EmergencyData);
  v94 = "startConversation";
  if (!*(v85 + 9))
  {
    v94 = "llDetection";
  }

  if ((*(v85 + 9) & 1) != 0 || (v94 | 0x8000000000000000) != 0x8000000100294520)
  {
    v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v95 & 1) == 0)
    {
      sub_10012BF4C(v85, type metadata accessor for EmergencyData);
      v50 = v93;
      goto LABEL_50;
    }
  }

  else
  {
  }

  v96 = *(v85 + *(v136 + 32));
  v97 = Bool._bridgeToObjectiveC()().super.super.isa;
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v140 = v93;
  sub_1001894D4(v97, 0x74617453766E6F63, 0xEA00000000007375, v98);
  v99 = v140;
  if (v96 != 1)
  {
    goto LABEL_40;
  }

  static DispatchTime.now()();
  v100 = DispatchTime.uptimeNanoseconds.getter();
  v101 = DispatchTime.uptimeNanoseconds.getter();
  v102 = v117;
  if (v101 >= v100)
  {
    (*(v83 + 1))(v82, v51);
  }

  else
  {
    v103 = DispatchTime.uptimeNanoseconds.getter();
    v104 = DispatchTime.uptimeNanoseconds.getter();
    (*(v83 + 1))(v82, v51);
    if (v103 < v104)
    {
      __break(1u);
LABEL_40:
      v102 = v117;
      v50 = v99;
      goto LABEL_44;
    }
  }

  v105 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v140 = v99;
  sub_1001894D4(v105, 0xD000000000000010, 0x800000010029E4A0, v106);
  v50 = v140;
LABEL_44:
  v107 = v116;
  sub_100006C20(v85 + *(v136 + 28), v116, &qword_100356518);
  if ((v138)(v107, 1, v51) == 1)
  {
    sub_10012BF4C(v85, type metadata accessor for EmergencyData);
    sub_100008FA0(v107, &qword_100356518);
  }

  else
  {
    v108 = v50;
    (*(v83 + 4))(v102, v107, v51);
    v109 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() < v109)
    {
      v110 = DispatchTime.uptimeNanoseconds.getter();
      if (v110 < DispatchTime.uptimeNanoseconds.getter())
      {
        __break(1u);
      }
    }

    v111 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v108;
    sub_1001894D4(v111, 0xD000000000000011, 0x800000010029E480, v112);
    v50 = v140;
    (*(v83 + 1))(v102, v51);
    sub_10012BF4C(v85, type metadata accessor for EmergencyData);
  }

LABEL_50:
  if ((*(v41 + v137[11] + 40) & 1) == 0)
  {
    v113 = Int64._bridgeToObjectiveC()().super.super.isa;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v50;
    sub_1001894D4(v113, 0x6449746173, 0xE500000000000000, v114);
    return v140;
  }

  return v50;
}

uint64_t sub_10012B4A8()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data, &qword_10035F980);

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentLinkState, &qword_100359798);

  return swift_deallocClassInstance();
}

void sub_10012B57C()
{
  sub_10012B6C4(319, &unk_10035F678, _s8SOSBuddy4DataVMa_2);
  if (v0 <= 0x3F)
  {
    sub_10012B6C4(319, &qword_10035E300, type metadata accessor for LinkState);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10012B6C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10012B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000040A8(&qword_10035F818);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000040A8(&qword_100356518);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_10012B898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000040A8(&qword_10035F818);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000040A8(&qword_100356518);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_10012B9FC()
{
  type metadata accessor for DispatchTime();
  if (v0 <= 0x3F)
  {
    sub_10012B6C4(319, &qword_10035F888, type metadata accessor for EmergencyData);
    if (v1 <= 0x3F)
    {
      sub_100087F94(319, &unk_10035F890);
      if (v2 <= 0x3F)
      {
        sub_10012B6C4(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
        if (v3 <= 0x3F)
        {
          sub_100087F94(319, &qword_1003582E0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10012BB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000040A8(&qword_100356518);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10012BC30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v7 = sub_1000040A8(&qword_100356518);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10012BCDC()
{
  sub_100087F94(319, &unk_10035F940);
  if (v0 <= 0x3F)
  {
    sub_10012B6C4(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_10012BDAC(uint64_t a1)
{
  v2 = *v1 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentTarget;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v3;
  result = *(a1 + 25);
  *(v2 + 25) = result;
  return result;
}

uint64_t sub_10012BE3C(char *a1)
{
  v1 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  if (v7 >> 62)
  {
    if (v7 >> 62 == 1)
    {
      return sub_100128878(*a1 & 1, v2);
    }

    else
    {
      v9 = *a1;
      v10 = v1;
      v12 = BYTE6(v1);
      v11 = WORD2(v1);
      v13 = v2;
      v14 = v3;
      v15 = v5;
      v16 = v4;
      v17 = v6;
      v18 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      return sub_100127F30(&v9);
    }
  }

  else
  {
    v9 = *a1;
    v10 = v1;
    v12 = BYTE6(v1);
    v11 = WORD2(v1);
    v13 = v2;
    v14 = v3;
    v15 = v5;
    v16 = v4;
    v17 = v6;
    return sub_1001275E4(&v9);
  }
}

uint64_t sub_10012BF4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012BFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012C1D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100359798);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C248()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy18ThrottledExecution__interval;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10012C414(v0 + OBJC_IVAR____TtC8SOSBuddy18ThrottledExecution__lastRun);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ThrottledExecution()
{
  result = qword_10035F9C0;
  if (!qword_10035F9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012C348()
{
  type metadata accessor for DispatchTimeInterval();
  if (v0 <= 0x3F)
  {
    sub_10002B388();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10012C414(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100356518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012C47C()
{
  v1 = v0;
  v2 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_1000040A8(&qword_10035EE98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v31 = sub_1000040A8(&unk_100359B30);
  swift_allocObject();
  *(v0 + 32) = PassthroughSubject.init()();
  sub_1000040A8(&qword_10035F530);
  swift_allocObject();
  *(v0 + 40) = PassthroughSubject.init()();
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 48) = PassthroughSubject.init()();
  *(v0 + 56) = [objc_allocWithZone(type metadata accessor for ApplicationActiveStateSource()) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  *(v0 + 64) = v9;
  v30 = v0 + 64;
  type metadata accessor for PreventSuspension();
  v10 = swift_allocObject();
  v10[3] = 0x800000010029E6D0;
  v10[4] = 0;
  v10[2] = 0xD000000000000011;
  *(v0 + 72) = v10;
  *(v0 + 80) = 2;
  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 applicationState];

  *(v1 + 81) = v12 == 0;
  swift_allocObject();
  *(v1 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v1 + 24) = PassthroughSubject.init()();
  v13 = qword_100353A10;
  swift_retain_n();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381C80);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32[0] = v29;
    *v17 = 136446210;
    v33 = v1;

    v18 = String.init<A>(describing:)();
    v20 = v4;
    v21 = v8;
    v22 = v6;
    v23 = v5;
    v24 = sub_10017C9E8(v18, v19, v32);

    *(v17 + 4) = v24;
    v5 = v23;
    v6 = v22;
    v8 = v21;
    v4 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] init", v17, 0xCu);
    sub_100008964(v29);
  }

  v32[0] = *(*(v1 + 56) + OBJC_IVAR____TtC8SOSBuddy28ApplicationActiveStateSource_appForegroundDidChange);
  sub_10000F574();

  v25 = static OS_dispatch_queue.main.getter();
  v33 = v25;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  sub_100009274(&qword_10035EEA0, &unk_100359B30);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100026894(v4);

  swift_allocObject();
  swift_weakInit();
  sub_100009274(&qword_10035EEA8, &qword_10035EE98);
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_10012CA7C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 81);
    if (v1 != v4)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v3 + 81) = v1;
    sub_10012D164(v4);
  }

  return result;
}

uint64_t sub_10012CB60()
{
}

uint64_t sub_10012CBB0()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_10012CD84()
{
  sub_10012CBB0();

  return swift_deallocClassInstance();
}

void sub_10012CDDC()
{
  if ((sub_100223578() & 1) == 0)
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000F53C(v0, qword_100381C80);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to start ApplicationActiveStateSource", v2, 2u);
    }
  }
}

uint64_t sub_10012CEE0(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 80);
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "mainSceneIsForeground changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  v16 = *(v2 + 80);
  PassthroughSubject.send(_:)();
  v14 = *(v2 + 80);

  sub_1000E17A4(v14 & 1);
}

uint64_t sub_10012D164(uint64_t result)
{
  if (*(v1 + 81) != (result & 1))
  {
    v2 = v1;
    v3 = result;
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381C80);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v7 = 136446466;
      if (v3)
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if (v3)
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      v10 = sub_10017C9E8(v8, v9, &v14);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;
      if (*(v2 + 81))
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (*(v2 + 81))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      v13 = sub_10017C9E8(v11, v12, &v14);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "appIsForeground changed from: %{public}s to: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    v15 = *(v2 + 81);
    return PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_10012D3B4(uint64_t a1, uint64_t a2)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "bringForegroundWith()", v7, 2u);
  }

  v8 = [objc_allocWithZone(_LSOpenConfiguration) init];
  sub_1000040A8(&unk_100357278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279170;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  sub_1002559FC(inited);
  swift_setDeallocating();
  sub_1000040A8(&unk_10036A000);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 setFrontBoardOptions:isa];

  [v8 setSensitive:1];
  v13 = [objc_opt_self() defaultWorkspace];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() mainBundle];
    v16 = [v15 bundleIdentifier];

    if (v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v17 = String._bridgeToObjectiveC()();

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v22[4] = sub_10012E1C4;
    v22[5] = v19;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_10012DA7C;
    v22[3] = &unk_1003314D0;
    v20 = _Block_copy(v22);
    v21 = v8;

    [v14 openApplicationWithBundleIdentifier:v17 configuration:v21 completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10012D78C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381C80);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "bringForegroundWith()) succeeded", v9, 2u);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }
  }

  else
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F53C(v11, qword_100381C80);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136446210;
      v20[3] = a2;
      swift_errorRetain();
      sub_1000040A8(&qword_100355D88);
      v16 = String.init<A>(describing:)();
      v18 = sub_10017C9E8(v16, v17, v20);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "bringForegroundWith() failed: %{public}s", v14, 0xCu);
      sub_100008964(v15);
    }
  }

  return a4(a1 & 1);
}

void sub_10012DA7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_10012DAF4(char a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "bringForeground: success - %{BOOL,public}d", v4, 8u);
  }
}

uint64_t sub_10012DBF8(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381C80);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v5 = 136446466;
      v6 = String.init<A>(describing:)();
      v8 = sub_10017C9E8(v6, v7, &v12);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2082;
      v9 = String.init<A>(describing:)();
      v11 = sub_10017C9E8(v9, v10, &v12);

      *(v5 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "App stage changed from: %{public}s to: %{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

uint64_t sub_10012DE14(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 41);
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "guidanceUIRequired changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  v15 = *(v2 + 41);
  return PassthroughSubject.send(_:)();
}

uint64_t sub_10012E078()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10012E0F8()
{
  result = qword_10035FC18;
  if (!qword_10035FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FC18);
  }

  return result;
}

uint64_t sub_10012E14C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10012E184()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10012E1D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012E1F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_10035FC28);
  __chkstk_darwin(v4);
  v6 = v69 - v5;
  v85 = sub_1000040A8(&qword_10035FC30);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = v69 - v7;
  v82 = sub_1000040A8(&qword_10035FC38);
  __chkstk_darwin(v82);
  v9 = v69 - v8;
  v86 = sub_1000040A8(&qword_10035FC40);
  __chkstk_darwin(v86);
  v87 = v69 - v10;
  v11 = sub_1000040A8(&qword_10035FC48);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v88 = v69 - v13;
  v14 = sub_1000040A8(&qword_10035FC50);
  __chkstk_darwin(v14);
  v89 = v69 - v15;
  v16 = sub_1000040A8(&qword_10035FC58);
  __chkstk_darwin(v16);
  v20 = v69 - v19;
  v21 = *(v2 + 32);
  if (!v21)
  {
    type metadata accessor for RoadsideAssistanceModel();
    v66 = &qword_100356B48;
    v67 = type metadata accessor for RoadsideAssistanceModel;
LABEL_9:
    sub_10013043C(v66, v67);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v22 = *(v21 + 104);
  if (v22)
  {
    v70 = v9;
    v72 = v12;
    v73 = v11;
    v75 = v20;
    v76 = v18;
    v77 = v14;
    v78 = v17;
    v79 = v4;
    v80 = v6;
    v81 = a1;
    v96 = *(v2 + 64);
    *v95 = *(v2 + 64);

    v69[1] = sub_1000040A8(&qword_10035FC70);
    State.projectedValue.getter();
    *v95 = v90;
    *&v95[8] = v91;
    v23 = sub_1000040A8(&qword_10035FC20);
    sub_1000040A8(&qword_10035FC78);
    sub_100009274(&qword_10035FC80, &qword_10035FC20);
    sub_100009274(&qword_10035FC88, &qword_10035FC20);
    sub_100009274(&qword_10035FC90, &qword_10035FC20);
    v24 = sub_1001305AC();
    v25 = sub_100130600();
    v90 = &type metadata for QuestionnairePageView;
    *&v91 = &type metadata for QuestionnaireNavigationPage;
    *(&v91 + 1) = &type metadata for QuestionnairePageView;
    v92 = v24;
    v93 = v25;
    v94 = v24;
    swift_getOpaqueTypeConformance2();
    v26 = v83;
    v74 = v22;
    v71 = v23;
    NavigationStack.init<>(path:root:)();
    v27 = *(v2 + 48);
    if (v27)
    {
      v28 = v27[9];
      v29 = v27[10];
      sub_1000088DC(v27 + 6, v28);
      (*(v29 + 24))(&v90, v28, v29);
      v30 = static Color.white.getter();
      sub_100008964(&v90);
      KeyPath = swift_getKeyPath();
      v32 = v70;
      (*(v84 + 32))(v70, v26, v85);
      v33 = (v32 + *(v82 + 36));
      *v33 = KeyPath;
      v33[1] = v30;
      v34 = swift_allocObject();
      v35 = *(v2 + 48);
      *(v34 + 3) = *(v2 + 32);
      *(v34 + 4) = v35;
      v36 = *(v2 + 80);
      *(v34 + 5) = *(v2 + 64);
      *(v34 + 6) = v36;
      v37 = *(v2 + 16);
      *(v34 + 1) = *v2;
      *(v34 + 2) = v37;
      v38 = v32;
      v39 = v87;
      sub_1001306B8(v38, v87);
      v40 = (v39 + *(v86 + 36));
      *v40 = sub_1001306B0;
      v40[1] = v34;
      v40[2] = 0;
      v40[3] = 0;
      *v95 = v96;
      sub_100130728(v2, &v90);
      State.wrappedValue.getter();
      *v95 = v90;
      v41 = swift_allocObject();
      v42 = *(v2 + 48);
      v41[3] = *(v2 + 32);
      v41[4] = v42;
      v43 = *(v2 + 80);
      v41[5] = *(v2 + 64);
      v41[6] = v43;
      v44 = *(v2 + 16);
      v41[1] = *v2;
      v41[2] = v44;
      sub_100130728(v2, &v90);
      sub_100130768();
      sub_1001308D8();
      v45 = v88;
      View.onChange<A>(of:initial:_:)();

      sub_100008FA0(v39, &qword_10035FC40);
      v46 = *(v21 + 32);

      v47 = swift_allocObject();
      v48 = *(v2 + 48);
      v47[3] = *(v2 + 32);
      v47[4] = v48;
      v49 = *(v2 + 80);
      v47[5] = *(v2 + 64);
      v47[6] = v49;
      v50 = *(v2 + 16);
      v47[1] = *v2;
      v47[2] = v50;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_10013095C;
      *(v51 + 24) = v47;
      v52 = v89;
      (*(v72 + 32))(v89, v45, v73);
      v53 = v77;
      *(v52 + *(v77 + 52)) = v46;
      v54 = (v52 + *(v53 + 56));
      *v54 = sub_10002693C;
      v54[1] = v51;
      *v95 = *(v2 + 80);
      sub_100130728(v2, &v90);
      sub_1000040A8(&qword_100354AA8);
      State.projectedValue.getter();
      v55 = swift_allocObject();
      v56 = *(v2 + 48);
      v55[3] = *(v2 + 32);
      v55[4] = v56;
      v57 = *(v2 + 80);
      v55[5] = *(v2 + 64);
      v55[6] = v57;
      v58 = *(v2 + 16);
      v55[1] = *v2;
      v55[2] = v58;
      sub_100130728(v2, &v90);
      v59 = sub_100009274(&qword_10035FC60, &qword_10035FC50);
      v68 = sub_1000B6C30();
      v60 = v75;
      View.fullScreenCover<A>(isPresented:onDismiss:content:)();

      sub_100008FA0(v52, &qword_10035FC50);
      v61 = v76;
      v62 = v78;
      (*(v76 + 16))(v80, v60, v78);
      swift_storeEnumTagMultiPayload();
      v90 = v53;
      *&v91 = &type metadata for BusinessOnboardingView;
      *(&v91 + 1) = v59;
      v92 = v68;
      swift_getOpaqueTypeConformance2();
      sub_100130550();
      _ConditionalContent<>.init(storage:)();

      return (*(v61 + 8))(v60, v62);
    }

    type metadata accessor for UIMetrics();
    v66 = &qword_100354D40;
    v67 = type metadata accessor for UIMetrics;
    goto LABEL_9;
  }

  swift_storeEnumTagMultiPayload();
  v64 = sub_100009274(&qword_10035FC60, &qword_10035FC50);
  v65 = sub_1000B6C30();
  v90 = v14;
  *&v91 = &type metadata for BusinessOnboardingView;
  *(&v91 + 1) = v64;
  v92 = v65;
  swift_getOpaqueTypeConformance2();
  sub_100130550();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10012ED34()
{
  sub_1000B9BD0(&v11);
  v0 = v11;
  v1 = v12;
  v2 = v14;
  v6 = v13;
  v15 = v13;
  v16 = v14;

  sub_100006C20(&v15, v7, &qword_10035D1F8);
  type metadata accessor for UIMetrics();
  sub_10013043C(&qword_100354D40, type metadata accessor for UIMetrics);
  v7[0] = EnvironmentObject.init()();
  v7[1] = v3;
  v7[2] = v0;
  v8 = v1;
  v9 = v6;
  v10 = v2;
  sub_1001305AC();
  sub_100130600();
  View.navigationDestination<A, B>(for:destination:)();

  sub_100008FA0(&v15, &qword_10035D1F8);
  v4 = v9;

  return sub_1000C70F4(v4);
}

uint64_t sub_10012EEC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];

  sub_1000C70B0(v5);
  type metadata accessor for UIMetrics();
  sub_10013043C(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.init()();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_10012EF88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 104))
    {

      sub_1000B9C60();
    }

    sub_1000040A8(&qword_10035FC70);
    State.wrappedValue.setter();
    return sub_10012F084();
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_10013043C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10012F084()
{
  v7 = *(v0 + 80);
  v6[1] = *(v0 + 80);
  v8 = *(&v7 + 1);
  sub_100006C20(&v8, v6, &qword_100354AB0);
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  if (v6[0])
  {
    return sub_100008FA0(&v7, &qword_100354AA8);
  }

  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v1 + 104);
  if (!v2)
  {
    return sub_100008FA0(&v7, &qword_100354AA8);
  }

  swift_beginAccess();
  v3 = *(v2 + 144);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (*(v3 + v4 + 31) == 2)
    {
      if ([objc_opt_self() shouldShowBusinessOnboarding])
      {
        v6[0] = v7;
        State.wrappedValue.setter();
      }
    }

    return sub_100008FA0(&v7, &qword_100354AA8);
  }

  __break(1u);
LABEL_10:
  type metadata accessor for RoadsideAssistanceModel();
  sub_10013043C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_10012F208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 16);
  if (v3 < *(*a1 + 16))
  {
    v4 = *(a3 + 32);
    if (v4)
    {
      v5 = a3;
      if (*(v4 + 104))
      {

        v6 = sub_1000B9C60();
      }

      else
      {
        v6 = _swiftEmptyArrayStorage;
      }

      v7 = *(v6 + 2);
      v71 = v7 - v3;
      if (v7 <= v3)
      {
      }

      else
      {
        v72 = v4;
        if (qword_100353AA8 != -1)
        {
          goto LABEL_58;
        }

        while (1)
        {
          v8 = type metadata accessor for Logger();
          sub_10000F53C(v8, qword_100381E48);
          sub_100130728(v5, &v75);

          v9 = Logger.logObject.getter();
          v10 = static os_log_type_t.default.getter();
          v73 = v5;
          sub_100130ACC(v5);

          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *v11 = 136446723;
            if (*(v72 + 104))
            {

              v12 = sub_1000B9A7C();
              v14 = v13;
            }

            else
            {
              v14 = 0xE100000000000000;
              v12 = 63;
            }

            v15 = sub_10017C9E8(v12, v14, &v75);

            *(v11 + 4) = v15;
            *(v11 + 12) = 2081;
            v16 = Array.description.getter();
            v5 = sub_10017C9E8(v16, v17, &v75);

            *(v11 + 14) = v5;
            *(v11 + 22) = 2081;
            v18 = Array.description.getter();
            v20 = sub_10017C9E8(v18, v19, &v75);

            *(v11 + 24) = v20;
            _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Path reduced from %{private}s to %{private}s", v11, 0x20u);
            swift_arrayDestroy();
          }

          v21 = *(v73 + 16);
          v22 = v72;
          if (!v21)
          {
            type metadata accessor for AppRuntimeStateModel();
            v67 = &qword_10035D780;
            v68 = type metadata accessor for AppRuntimeStateModel;
            goto LABEL_62;
          }

          if (*(v21 + 40) != 8)
          {
            break;
          }

          sub_100130728(v73, &v75);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          sub_100130ACC(v73);
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v75 = v26;
            *v25 = 136446466;
            if (*(v72 + 104))
            {

              v27 = sub_1000B9A7C();
              v29 = v28;
            }

            else
            {
              v29 = 0xE100000000000000;
              v27 = 63;
            }

            v5 = sub_10017C9E8(v27, v29, &v75);

            *(v25 + 4) = v5;
            *(v25 + 12) = 2050;
            *(v25 + 14) = v71;
            _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Going back %{public}ld page(s)", v25, 0x16u);
            sub_100008964(v26);

            v36 = v71;

            v22 = v72;
          }

          else
          {

            v36 = v71;
          }

          if ((v36 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_60;
          }

          for (i = 0; i < v36; ++i)
          {
            v38 = i + 1;
            if (__OFADD__(i, 1))
            {
              goto LABEL_56;
            }

            v39 = *(v22 + 104);
            if (v39)
            {
              v40 = *(v39 + 32);
              v41 = __CFADD__(v40, 1);
              v42 = v40 + 1;
              if (v41)
              {
                goto LABEL_57;
              }

              *(v39 + 32) = v42;

              v43 = sub_1000BD8A4();
              v44 = *(v39 + 32);
              if (!v44 || (v45 = v44 - 1, (*(v39 + 32) = v45) == 0))
              {
                if (*(v39 + 40))
                {
                  *(v39 + 40) = 0;
                  v5 = sub_1000040A8(&unk_100365610);
                  sub_100009274(&qword_10035CF00, &unk_100365610);
                  Subject<>.send()();
                }

                if (*(v39 + 41) == 1)
                {
                  *(v39 + 41) = 0;
                  v5 = sub_1000040A8(&unk_100365610);
                  sub_100009274(&qword_10035CF00, &unk_100365610);
                  Subject<>.send()();
                }
              }

              if (!v43)
              {
                sub_100130728(v73, &v75);
                v46 = Logger.logObject.getter();
                v47 = static os_log_type_t.error.getter();
                sub_100130ACC(v73);
                if (os_log_type_enabled(v46, v47))
                {
                  v48 = swift_slowAlloc();
                  v49 = swift_slowAlloc();
                  v74 = v49;
                  *v48 = 136446210;
                  v50 = *(v22 + 104);
                  if (v50)
                  {
                    if (*(*(v50 + 344) + 32))
                    {
                      v51 = 82;
                    }

                    else
                    {
                      v51 = 69;
                    }

                    v75 = v51;
                    v76 = 0xE100000000000000;

                    v52._countAndFlagsBits = 46;
                    v52._object = 0xE100000000000000;
                    String.append(_:)(v52);

                    v69 = v49;
                    v54 = v75;
                    v53 = v76;
                    v75 = *(v50 + 352);
                    v70 = v48;
                    v55 = v47;
                    v56 = dispatch thunk of CustomStringConvertible.description.getter();
                    v58 = v57;
                    v75 = v54;
                    v76 = v53;
                    v49 = v69;

                    v59._countAndFlagsBits = v56;
                    v47 = v55;
                    v48 = v70;
                    v59._object = v58;
                    String.append(_:)(v59);

                    v36 = v71;

                    v60 = v75;
                    v61 = v76;
                  }

                  else
                  {
                    v61 = 0xE100000000000000;
                    v60 = 63;
                  }

                  v5 = sub_10017C9E8(v60, v61, &v74);

                  *(v48 + 4) = v5;
                  _os_log_impl(&_mh_execute_header, v46, v47, "[%{public}s] Failed trying to go back", v48, 0xCu);
                  sub_100008964(v49);

                  v22 = v72;
                }

                else
                {
                }
              }
            }

            if (v38 == v36)
            {

              return;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          swift_once();
        }

        sub_100130728(v73, &v75);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        sub_100130ACC(v73);
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *v32 = 136446466;
          if (*(v72 + 104))
          {

            v33 = sub_1000B9A7C();
            v35 = v34;
          }

          else
          {
            v35 = 0xE100000000000000;
            v33 = 63;
          }

          v62 = sub_10017C9E8(v33, v35, &v75);

          *(v32 + 4) = v62;
          *(v32 + 12) = 2082;
          v63 = *(v21 + 40);

          LOBYTE(v74) = v63;
          v64 = String.init<A>(describing:)();
          v66 = sub_10017C9E8(v64, v65, &v75);

          *(v32 + 14) = v66;
          _os_log_impl(&_mh_execute_header, v30, v31, "[%{public}s] RoadsideAssistanceQuestionnaireView: requesting going back on %{public}s stage", v32, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }
    }

    else
    {
LABEL_60:
      type metadata accessor for RoadsideAssistanceModel();
      v67 = &qword_100356B48;
      v68 = type metadata accessor for RoadsideAssistanceModel;
LABEL_62:
      sub_10013043C(v67, v68);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

void sub_10012FB50(void *a1)
{
  v2 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[4];
  if (v6)
  {
    if (*(v6 + 104))
    {
      swift_retain_n();

      v7 = sub_1000B9C60();

      v9 = a1[8];
      v8 = a1[9];
      v47 = v8;
      v48[0] = v9;
      *&v45[0] = v9;
      *(&v45[0] + 1) = v8;
      sub_100006C20(v48, &v46, &qword_10035FC20);
      sub_100006C20(&v47, &v46, &qword_10035FCC8);
      v44 = sub_1000040A8(&qword_10035FC70);
      State.wrappedValue.getter();
      v10 = sub_100202D78(v7, v46);

      if (v10)
      {
        sub_100008FA0(v48, &qword_10035FC20);
        sub_100008FA0(&v47, &qword_10035FCC8);

        if (qword_100353AA8 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10000F53C(v11, qword_100381E48);
        sub_100130728(a1, v45);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        sub_100130ACC(a1);
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *&v45[0] = v15;
          *v14 = 136446210;
          v16 = *(v6 + 104);

          if (v16)
          {
            v17 = sub_1000B9A7C();
            v19 = v18;
          }

          else
          {
            v19 = 0xE100000000000000;
            v17 = 63;
          }

          v28 = sub_10017C9E8(v17, v19, v45);

          *(v14 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] Questionnaire path has not changed", v14, 0xCu);
          sub_100008964(v15);
        }

        else
        {
        }
      }

      else
      {

        if (qword_100353AA8 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_10000F53C(v20, qword_100381E48);
        sub_100130728(a1, v45);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        sub_100130ACC(a1);

        if (os_log_type_enabled(v21, v22))
        {
          v41 = v21;
          v42 = v3;
          v43 = v2;
          v23 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v46 = v39;
          *v23 = 136446723;
          v24 = *(v6 + 104);

          v40 = v22;
          if (v24)
          {
            v25 = sub_1000B9A7C();
            v27 = v26;
          }

          else
          {
            v27 = 0xE100000000000000;
            v25 = 63;
          }

          v29 = sub_10017C9E8(v25, v27, &v46);

          *(v23 + 4) = v29;
          *(v23 + 12) = 2081;
          *&v45[0] = v9;
          *(&v45[0] + 1) = v8;
          State.wrappedValue.getter();
          v30 = Array.description.getter();
          v32 = v31;

          v33 = sub_10017C9E8(v30, v32, &v46);

          *(v23 + 14) = v33;
          *(v23 + 22) = 2081;
          v34 = Array.description.getter();
          v36 = sub_10017C9E8(v34, v35, &v46);

          *(v23 + 24) = v36;
          v37 = v41;
          _os_log_impl(&_mh_execute_header, v41, v40, "[%{public}s] Questionnaire path changed from %{private}s to %{private}s", v23, 0x20u);
          swift_arrayDestroy();

          v3 = v42;
          v2 = v43;
        }

        else
        {
        }

        *&v45[0] = v9;
        *(&v45[0] + 1) = v8;
        v46 = v7;
        State.wrappedValue.setter();
        sub_100008FA0(v48, &qword_10035FC20);
        sub_100008FA0(&v47, &qword_10035FCC8);
        sub_10012F084();
        memset(v45, 0, 32);
        AccessibilityNotification.ScreenChanged.init(_:)();
        _AccessibilityNotifications.post()();
        (*(v3 + 8))(v5, v2);
      }
    }
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_10013043C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1001301F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10013024C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_10013043C(&qword_100354D48, type metadata accessor for AppEvents);
  v14 = EnvironmentObject.init()();
  v3 = v2;
  type metadata accessor for AppRuntimeStateModel();
  sub_10013043C(&qword_10035D780, type metadata accessor for AppRuntimeStateModel);
  v4 = EnvironmentObject.init()();
  v6 = v5;
  type metadata accessor for RoadsideAssistanceModel();
  sub_10013043C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  v7 = EnvironmentObject.init()();
  v9 = v8;
  type metadata accessor for UIMetrics();
  sub_10013043C(&qword_100354D40, type metadata accessor for UIMetrics);
  v10 = EnvironmentObject.init()();
  v12 = v11;
  sub_1000040A8(&qword_10035FC20);
  State.init(wrappedValue:)();
  result = State.init(wrappedValue:)();
  *a1 = v14;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  *(a1 + 64) = v15;
  *(a1 + 72) = v16;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  return result;
}

uint64_t sub_10013043C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100130484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001304CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100130550()
{
  result = qword_10035FC68;
  if (!qword_10035FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FC68);
  }

  return result;
}

unint64_t sub_1001305AC()
{
  result = qword_10035FC98;
  if (!qword_10035FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FC98);
  }

  return result;
}

unint64_t sub_100130600()
{
  result = qword_10035FCA0;
  if (!qword_10035FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FCA0);
  }

  return result;
}

uint64_t sub_100130654@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001306B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035FC38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100130768()
{
  result = qword_10035FCA8;
  if (!qword_10035FCA8)
  {
    sub_100008CF0(&qword_10035FC40);
    sub_1001307F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FCA8);
  }

  return result;
}

unint64_t sub_1001307F4()
{
  result = qword_10035FCB0;
  if (!qword_10035FCB0)
  {
    sub_100008CF0(&qword_10035FC38);
    sub_100009274(&qword_10035FCB8, &qword_10035FC30);
    sub_100009274(&qword_100355068, &qword_100355070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FCB0);
  }

  return result;
}

unint64_t sub_1001308D8()
{
  result = qword_10035FCC0;
  if (!qword_10035FCC0)
  {
    sub_100008CF0(&qword_10035FC20);
    sub_100086E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FCC0);
  }

  return result;
}

uint64_t sub_100130964()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013099C@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = swift_allocObject();
  v4 = v1[4];
  *(v3 + 3) = v1[3];
  *(v3 + 4) = v4;
  v5 = v1[6];
  *(v3 + 5) = v1[5];
  *(v3 + 6) = v5;
  v6 = v1[2];
  *(v3 + 1) = v1[1];
  *(v3 + 2) = v6;
  *a1 = sub_100130A78;
  a1[1] = v3;
  return sub_100130728((v1 + 1), &v8);
}

uint64_t sub_100130A10()
{

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_100130B00()
{
  result = qword_10035FCD0;
  if (!qword_10035FCD0)
  {
    sub_100008CF0(&qword_10035FCD8);
    sub_100008CF0(&qword_10035FC50);
    sub_100009274(&qword_10035FC60, &qword_10035FC50);
    sub_1000B6C30();
    swift_getOpaqueTypeConformance2();
    sub_100130550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FCD0);
  }

  return result;
}

uint64_t sub_100130C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100130C68(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100130CE4(uint64_t a1)
{
  v8 = *(a1 + 16);
  v7 = v8;
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_100006C20(&v8, v6, &qword_10035FCE0);
  sub_10013197C(a1, v6);
  sub_1000040A8(&qword_10035FCE0);
  sub_1000040A8(&qword_10035FCE8);
  sub_100009274(&qword_10035FCF0, &qword_10035FCE0);
  sub_100094E80();
  sub_100131A14();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100130E40@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = sub_1000040A8(&qword_100357568);
  v60 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v55 - v6;
  v58 = sub_1000040A8(&qword_10035FD18);
  v8 = *(v58 - 8);
  __chkstk_darwin(v58);
  v10 = &v55 - v9;
  v57 = sub_1000040A8(&qword_10035FCE8);
  __chkstk_darwin(v57);
  v61 = &v55 - v11;
  v12 = a1[3];
  v77 = a1[2];
  v78 = v12;
  v13 = a1[5];
  v79 = a1[4];
  v80 = v13;
  v14 = a1[1];
  v75 = *a1;
  v76 = v14;
  v96 = v75;
  v15 = *(a1 + 2);
  v16 = *(a1 + 24);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v95 = *(a1 + 11);
  v93 = v18;
  v94 = v19;
  v91 = v16;
  v92 = v17;
  v89 = *(a1 + 8);
  v63 = *(a1 + 8);
  v20 = swift_allocObject();
  v21 = *(a2 + 48);
  *(v20 + 48) = *(a2 + 32);
  *(v20 + 64) = v21;
  v22 = *(a2 + 16);
  *(v20 + 16) = *a2;
  *(v20 + 32) = v22;
  v23 = a1[3];
  *(v20 + 120) = a1[2];
  *(v20 + 136) = v23;
  v24 = a1[5];
  *(v20 + 152) = a1[4];
  *(v20 + 168) = v24;
  v25 = a1[1];
  *(v20 + 88) = *a1;
  *(v20 + 80) = *(a2 + 64);
  *(v20 + 104) = v25;
  sub_100032618(&v89, &v66);
  sub_10013197C(a2, &v66);
  sub_10003A6A4(&v75, &v66);
  sub_100031770();
  v59 = v7;
  Button<>.init<A>(_:action:)();
  v26 = *(a2 + 16);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = (v26 + 96 * v27);
    v29 = *(v28 - 3);
    v63 = *(v28 - 4);
    v64[0] = v29;
    v30 = *(v28 - 2);
    v31 = *(v28 - 1);
    v32 = v28[1];
    v64[3] = *v28;
    v64[4] = v32;
    v64[1] = v30;
    v64[2] = v31;
    v66 = *(v28 - 4);
    v67[0] = *(v28 - 3);
    v33 = *(v28 - 2);
    v34 = *(v28 - 1);
    v35 = v28[1];
    v67[3] = *v28;
    v67[4] = v35;
    v67[1] = v33;
    v67[2] = v34;
    sub_10003A6A4(&v63, v90);
    v90[2] = v67[1];
    v90[3] = v67[2];
    v90[4] = v67[3];
    v90[5] = v67[4];
    v90[0] = v66;
    v90[1] = v67[0];
    v36 = *&v67[0];
  }

  else
  {
    v36 = 0;
    memset(v90, 0, sizeof(v90));
  }

  if (!v15)
  {
    if (!v36)
    {
      v66 = *a1;
      *(&v67[1] + 8) = *(a1 + 40);
      *(&v67[2] + 8) = *(a1 + 56);
      *(&v67[3] + 8) = *(a1 + 72);
      v43 = *(a1 + 11);
      *&v67[0] = 0;
      *(&v67[4] + 1) = v43;
      *(v67 + 8) = *(a1 + 24);
      sub_10003A6A4(&v75, &v63);
      sub_10003A6A4(&v75, &v63);
      sub_100008FA0(&v66, &qword_10035FD28);
      v40 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (!v36)
  {
LABEL_8:
    v66 = *a1;
    *(&v67[1] + 8) = *(a1 + 40);
    *(&v67[2] + 8) = *(a1 + 56);
    *(&v67[3] + 8) = *(a1 + 72);
    v42 = *(a1 + 11);
    *&v67[0] = v15;
    *(&v67[4] + 1) = v42;
    *(v67 + 8) = *(a1 + 24);
    v68 = v90[0];
    v70 = *(&v90[1] + 8);
    v69 = v36;
    v74 = *(&v90[5] + 1);
    v73 = *(&v90[4] + 8);
    v72 = *(&v90[3] + 8);
    v71 = *(&v90[2] + 8);
    sub_10003A6A4(&v75, &v63);
    sub_10003A6A4(&v75, &v63);
    sub_100008FA0(&v66, &qword_10035FD20);
    v40 = 0;
    goto LABEL_10;
  }

  v63 = v90[0];
  *&v64[0] = v36;
  *(v64 + 8) = *(&v90[1] + 8);
  *(&v64[4] + 1) = *(&v90[5] + 1);
  *(&v64[3] + 8) = *(&v90[4] + 8);
  *(&v64[2] + 8) = *(&v90[3] + 8);
  *(&v64[1] + 8) = *(&v90[2] + 8);
  v88[0] = v90[0];
  v88[1] = v64[0];
  v88[4] = v64[3];
  v88[5] = v64[4];
  v88[2] = v64[1];
  v88[3] = v64[2];
  v81 = *a1;
  v83 = *(a1 + 24);
  v37 = *(a1 + 40);
  v38 = *(a1 + 56);
  v39 = *(a1 + 11);
  v86 = *(a1 + 72);
  v85 = v38;
  v84 = v37;
  v87 = v39;
  v82 = v15;
  sub_10003A6A4(&v75, &v66);
  sub_10003A6A4(&v75, &v66);
  sub_10003A6A4(&v75, &v66);
  v55 = v5;
  v56 = v10;
  sub_100006C20(v90, &v66, &qword_10035FD28);
  v40 = sub_100094F2C(&v81, v88);
  sub_100008FA0(&v63, &qword_10035FD28);
  sub_100008FA0(v90, &qword_10035FD28);
  sub_10003A700(&v75);
  v66 = *a1;
  *(&v67[1] + 8) = *(a1 + 40);
  *(&v67[2] + 8) = *(a1 + 56);
  *(&v67[3] + 8) = *(a1 + 72);
  v41 = *(a1 + 11);
  *&v67[0] = v15;
  *(&v67[4] + 1) = v41;
  *(v67 + 8) = *(a1 + 24);
  v5 = v55;
  v10 = v56;
  sub_100008FA0(&v66, &qword_10035FD28);
LABEL_10:
  v44 = sub_100131588(&v75);
  v63 = v96;
  *(&v64[1] + 8) = v92;
  *(&v64[2] + 8) = v93;
  *(&v64[3] + 8) = v94;
  *&v64[0] = v15;
  *(&v64[4] + 1) = v95;
  *(v64 + 8) = v91;
  LOBYTE(v65) = v40 & 1;
  HIBYTE(v65) = v44 & 1;
  sub_100009274(&qword_100357588, &qword_100357568);
  sub_100131B50();
  v45 = v59;
  View.buttonStyle<A>(_:)();
  v67[3] = v64[3];
  v67[4] = v64[4];
  LOWORD(v68) = v65;
  v66 = v63;
  v67[0] = v64[0];
  v67[1] = v64[1];
  v67[2] = v64[2];
  sub_100131BD4(&v66);
  (*(v60 + 8))(v45, v5);
  v46 = swift_allocObject();
  v47 = *(a2 + 48);
  *(v46 + 48) = *(a2 + 32);
  *(v46 + 64) = v47;
  v48 = *(a2 + 16);
  *(v46 + 16) = *a2;
  *(v46 + 32) = v48;
  v49 = v78;
  *(v46 + 120) = v77;
  *(v46 + 136) = v49;
  v50 = v80;
  *(v46 + 152) = v79;
  *(v46 + 168) = v50;
  v51 = v76;
  *(v46 + 88) = v75;
  *(v46 + 80) = *(a2 + 64);
  *(v46 + 104) = v51;
  v52 = v61;
  (*(v8 + 32))(v61, v10, v58);
  v53 = (v52 + *(v57 + 36));
  *v53 = sub_100131CB4;
  v53[1] = v46;
  sub_100131CC0(v52, v62);
  sub_10013197C(a2, &v63);
  return sub_10003A6A4(&v75, &v63);
}

uint64_t sub_100131588(void *a1)
{
  v16[0] = *(v1 + 56);
  sub_1000040A8(&qword_1003598D8);
  State.wrappedValue.getter();
  if (v15[0] == 6 || v15[0] != *a1)
  {
    v4 = *(v1 + 16);
    v5 = *(v4 + 16);
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = 0;
    v7 = v4 - 64;
    while (1)
    {
      v8 = *(v7 + 96);
      v16[0] = *(v1 + 56);
      State.wrappedValue.getter();
      if (v15[0] != 6 && v8 == v15[0])
      {
        break;
      }

      ++v6;
      v7 += 96;
      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }

    if (v6)
    {
      v10 = *(v7 + 16);
      v16[0] = *v7;
      v16[1] = v10;
      v11 = *(v7 + 32);
      v12 = *(v7 + 48);
      v13 = *(v7 + 80);
      v16[4] = *(v7 + 64);
      v16[5] = v13;
      v16[2] = v11;
      v16[3] = v12;
      sub_10003A6A4(v16, v15);
      v3 = sub_100094F2C(a1, v16);
      sub_10003A700(v16);
    }

    else
    {
LABEL_14:
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1001316C0(_BYTE *a1, uint64_t a2, char *a3)
{
  if (*a1 == 1)
  {
    v4 = *a3;
    v8 = *(a2 + 56);
    LOBYTE(v7) = v4;
    sub_1000040A8(&qword_1003598D8);
    return State.wrappedValue.setter();
  }

  else
  {
    v8 = *(a2 + 56);
    v9 = *(&v8 + 1);
    v7 = *(a2 + 56);
    sub_100006C20(&v9, v6, &qword_10035FD30);
    sub_1000040A8(&qword_1003598D8);
    State.wrappedValue.getter();
    if (v6[0] != 6 && v6[0] == *a3)
    {
      v7 = v8;
      v6[0] = 6;
      State.wrappedValue.setter();
    }

    return sub_100008FA0(&v8, &qword_1003598D8);
  }
}

uint64_t sub_1001317DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 32))
  {
    sub_100031770();

    result = Text.init<A>(_:)();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_100131860@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v3;
  v15 = *(v1 + 64);
  v4 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  v8 = swift_allocObject();
  v9 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v1 + 64);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  sub_10013197C(v14, v13);
  sub_10013197C(v14, v13);
  type metadata accessor for UIMetrics();
  sub_10003BDC8();
  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v12;
  a1[2] = sub_10013196C;
  a1[3] = v5;
  a1[4] = sub_100131974;
  a1[5] = v8;
  return result;
}

uint64_t sub_1001319B4()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_100131A14()
{
  result = qword_10035FCF8;
  if (!qword_10035FCF8)
  {
    sub_100008CF0(&qword_10035FCE8);
    sub_100008CF0(&qword_100357568);
    sub_100009274(&qword_100357588, &qword_100357568);
    sub_100131B50();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_10035FD08, &qword_10035FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FCF8);
  }

  return result;
}

unint64_t sub_100131B50()
{
  result = qword_10035FD00;
  if (!qword_10035FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FD00);
  }

  return result;
}

uint64_t sub_100131C2C()
{

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_100131CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035FCE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100131DAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32) == 2)
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();

    EnvironmentObject.init()();
  }

  else
  {
    sub_100131F84();
    sub_100131FD8();

    _ConditionalContent<>.init(storage:)();
  }

  sub_1000040A8(&qword_10035FD48);
  sub_100131EF8();
  sub_10013202C();
  _ConditionalContent<>.init(storage:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_100131EF8()
{
  result = qword_10035FD50;
  if (!qword_10035FD50)
  {
    sub_100008CF0(&qword_10035FD48);
    sub_100131F84();
    sub_100131FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FD50);
  }

  return result;
}

unint64_t sub_100131F84()
{
  result = qword_10035FD58;
  if (!qword_10035FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FD58);
  }

  return result;
}

unint64_t sub_100131FD8()
{
  result = qword_10035FD60;
  if (!qword_10035FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FD60);
  }

  return result;
}

unint64_t sub_10013202C()
{
  result = qword_10035FD68;
  if (!qword_10035FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FD68);
  }

  return result;
}

uint64_t sub_100132080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001320C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10013212C()
{
  result = qword_10035FD70;
  if (!qword_10035FD70)
  {
    sub_100008CF0(&qword_10035FD78);
    sub_100131EF8();
    sub_10013202C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FD70);
  }

  return result;
}

uint64_t sub_1001321D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v5 = *(*v1 + 72);
  v4 = *(*v1 + 80);
  v7 = *(v3 + 88);
  v6 = *(v3 + 96);
  type metadata accessor for UIMetrics();
  sub_10003BDC8();

  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v9;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v7;
  a1[5] = v6;
  return result;
}

uint64_t sub_100132254@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1000040A8(&qword_10035FDC8);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v41 = sub_1000040A8(&qword_10035FDD0);
  __chkstk_darwin(v41);
  v44 = &v40 - v5;
  v43 = sub_1000040A8(&qword_10035FDD8);
  __chkstk_darwin(v43);
  v7 = &v40 - v6;
  v42 = sub_1000040A8(&qword_10035FDE0);
  __chkstk_darwin(v42);
  v9 = &v40 - v8;
  v10 = *v1;
  if (*v1)
  {
    v11 = *(v10 + 72);
    v12 = *(v10 + 80);
    sub_1000088DC((v10 + 48), v11);
    v13 = *(v12 + 24);

    v13(v46, v11, v12);
    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v14 = sub_1000040A8(&qword_10035FDE8);
    sub_100132718(v1, &v4[*(v14 + 44)]);
    v15 = *(v10 + 112);
    v16 = static UIContentSizeCategory.>= infix(_:_:)();

    v17 = 0.0;
    if ((v16 & 1) == 0)
    {
      v17 = *(*sub_1000088DC(v46, v47) + 64);
    }

    v18 = *(v10 + 112);

    v19 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v19)
    {
      v20 = INFINITY;
    }

    else
    {
      v20 = *(*sub_1000088DC(v46, v47) + 64);
    }

    static Alignment.center.getter();
    if (v17 > v20)
    {
      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v22 = v44;
    sub_10000CF4C(v4, v44, &qword_10035FDC8);
    v23 = (v22 + *(v41 + 36));
    v24 = v53;
    v23[4] = v52;
    v23[5] = v24;
    v23[6] = v54;
    v25 = v49;
    *v23 = v48;
    v23[1] = v25;
    v26 = v51;
    v23[2] = v50;
    v23[3] = v26;
    v27 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_10000CF4C(v22, v7, &qword_10035FDD0);
    v36 = &v7[*(v43 + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = static Edge.Set.bottom.getter();
    sub_10000CF4C(v7, v9, &qword_10035FDD8);
    v38 = &v9[*(v42 + 36)];
    *v38 = v37;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    v38[40] = 1;
    sub_10000CF4C(v9, v45, &qword_10035FDE0);
    return sub_100008964(v46);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100132718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v98 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000040A8(&qword_100356C40);
  __chkstk_darwin(v9 - 8);
  v101 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v103 = a1;
  v104 = &v87 - v12;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  *&v126 = v13;
  *(&v126 + 1) = v14;
  v15 = sub_100031770();

  v91 = v15;
  v16 = Text.init<A>(_:)();
  v18 = v17;
  LOBYTE(v15) = v19;
  static Font.largeTitle.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v20 = *(v6 + 104);
  v89 = enum case for Font.Leading.tight(_:);
  v90 = v6 + 104;
  v88 = v20;
  v20(v8);
  Font.leading(_:)();

  v21 = *(v6 + 8);
  v92 = v8;
  v93 = v6 + 8;
  v94 = v5;
  v87 = v21;
  v21(v8, v5);
  v22 = Text.font(_:)();
  v24 = v23;
  v96 = v25;
  v97 = v26;

  sub_1000317C4(v16, v18, v15 & 1);

  v27 = *v103;
  if (*v103)
  {
    v28 = *(v27 + 72);
    v29 = *(v27 + 80);
    sub_1000088DC((v27 + 48), v28);
    v30 = *(v29 + 24);
    swift_retain_n();
    v30(&v126, v28, v29);
    sub_100008964(&v126);
    v31 = *(v27 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v32 = *(v27 + 72);
    v33 = *(v27 + 80);
    sub_1000088DC((v27 + 48), v32);
    (*(v33 + 24))(&v126, v32, v33);
    static Alignment.leading.getter();
    sub_100008964(&v126);
    v34 = *(v27 + 112);
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v133[55] = v138;
    *&v133[71] = v139;
    *&v133[87] = v140;
    *&v133[103] = v141;
    *&v133[7] = v135;
    *&v133[23] = v136;
    v35 = v96 & 1;
    v134 = v96 & 1;
    *&v133[39] = v137;
    v36 = *(v27 + 112);

    v37 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v37)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = 0.5;
    }

    v39 = swift_getKeyPath();
    *(&v128[4] + 9) = *&v133[64];
    *(&v128[5] + 9) = *&v133[80];
    *(&v128[6] + 9) = *&v133[96];
    *(v128 + 9) = *v133;
    *(&v128[1] + 9) = *&v133[16];
    *(&v128[2] + 9) = *&v133[32];
    *&v126 = v22;
    *(&v126 + 1) = v24;
    LOBYTE(v127) = v35;
    v40 = v98;
    *(&v127 + 1) = v97;
    *&v128[0] = KeyPath;
    BYTE8(v128[0]) = 0;
    *(&v128[3] + 9) = *&v133[48];
    *(&v128[7] + 1) = *&v133[111];
    *&v129 = v39;
    *(&v129 + 1) = v38;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100356C48);
    sub_10003BE30();
    View.accessibility(addTraits:)();
    (*(v99 + 8))(v40, v100);
    v132[8] = v128[6];
    v132[9] = v128[7];
    v132[10] = v129;
    v132[4] = v128[2];
    v132[5] = v128[3];
    v132[7] = v128[5];
    v132[6] = v128[4];
    v132[0] = v126;
    v132[1] = v127;
    v132[3] = v128[1];
    v132[2] = v128[0];
    sub_100008FA0(v132, &qword_100356C48);
    v149 = *(v103 + 32);
    v41 = v149 & 0xFFFFFFFFFFFFLL;
    if ((*(&v149 + 1) & 0x2000000000000000) != 0)
    {
      v41 = HIBYTE(*(&v149 + 1)) & 0xFLL;
    }

    if (v41)
    {
      v126 = *(v103 + 32);

      v42 = Text.init<A>(_:)();
      v44 = v43;
      v46 = v45;
      v98 = v47;
      static Font.body.getter();
      v48 = v92;
      v49 = v94;
      v88(v92, v89, v94);
      Font.leading(_:)();

      v87(v48, v49);
      v103 = Text.font(_:)();
      v99 = v51;
      v100 = v50;
      v53 = v52;

      sub_1000317C4(v42, v44, v46 & 1);

      v54 = *(v27 + 72);
      v55 = *(v27 + 80);
      sub_1000088DC((v27 + 48), v54);
      (*(v55 + 24))(&v126, v54, v55);
      sub_100008964(&v126);
      v56 = *(v27 + 112);
      static UIContentSizeCategory.>= infix(_:_:)();

      v57 = swift_getKeyPath();
      static Alignment.center.getter();
      v58 = *(v27 + 72);
      v59 = *(v27 + 80);
      sub_1000088DC((v27 + 48), v58);
      (*(v59 + 24))(&v126, v58, v59);
      static Alignment.leading.getter();
      sub_100008964(&v126);
      v60 = *(v27 + 112);
      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        static Alignment.center.getter();
        if (static Alignment.== infix(_:_:)())
        {
          static Alignment.leading.getter();
        }
      }

      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v125[55] = v145;
      *&v125[71] = v146;
      *&v125[87] = v147;
      *&v125[103] = v148;
      *&v125[7] = v142;
      *&v125[23] = v143;
      v61 = v53 & 1;
      LOBYTE(v105) = v61;
      *&v125[39] = v144;
      v62 = *(v27 + 112);

      v63 = static UIContentSizeCategory.>= infix(_:_:)();

      if (v63)
      {
        v64 = 1.0;
      }

      else
      {
        v64 = 0.5;
      }

      v65 = swift_getKeyPath();
      v66 = static Edge.Set.top.getter();
      *(&v122[4] + 9) = *&v125[64];
      *(&v122[5] + 9) = *&v125[80];
      *(&v122[6] + 9) = *&v125[96];
      *(v122 + 9) = *v125;
      *(&v122[1] + 9) = *&v125[16];
      *(&v122[2] + 9) = *&v125[32];
      LOBYTE(v118[0]) = 1;
      *&v120 = v103;
      *(&v120 + 1) = v100;
      LOBYTE(v121) = v61;
      *(&v121 + 1) = v99;
      *&v122[0] = v57;
      BYTE8(v122[0]) = 0;
      *(&v122[3] + 9) = *&v125[48];
      *(&v122[7] + 1) = *&v125[111];
      *&v123 = v65;
      *(&v123 + 1) = v64;
      LOBYTE(v124[0]) = v66;
      *(v124 + 8) = 0u;
      *(&v124[1] + 8) = 0u;
      BYTE8(v124[2]) = 1;
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(&v120);
      v129 = v123;
      v130 = v124[0];
      v131[0] = v124[1];
      *(v131 + 9) = *(&v124[1] + 9);
      v128[4] = v122[4];
      v128[5] = v122[5];
      v128[6] = v122[6];
      v128[7] = v122[7];
      v128[0] = v122[0];
      v128[1] = v122[1];
      v128[2] = v122[2];
      v128[3] = v122[3];
      v126 = v120;
      v127 = v121;
    }

    else
    {

      sub_100032674(&v149);
      sub_100133E90(&v126);
    }

    v67 = v104;
    v68 = v101;
    sub_100006C20(v104, v101, &qword_100356C40);
    v115 = v129;
    v116 = v130;
    v117[0] = v131[0];
    *(v117 + 9) = *(v131 + 9);
    v111 = v128[4];
    v112 = v128[5];
    v113 = v128[6];
    v114 = v128[7];
    v107 = v128[0];
    v108 = v128[1];
    v109 = v128[2];
    v110 = v128[3];
    v105 = v126;
    v106 = v127;
    v69 = v102;
    sub_100006C20(v68, v102, &qword_100356C40);
    v70 = sub_1000040A8(&qword_10035FDF0);
    v71 = *(v70 + 48);
    v72 = v116;
    v118[10] = v115;
    v118[11] = v116;
    v73 = v117[0];
    v119[0] = v117[0];
    *(v119 + 9) = *(v117 + 9);
    v74 = v111;
    v75 = v112;
    v118[6] = v111;
    v118[7] = v112;
    v76 = v113;
    v77 = v114;
    v118[8] = v113;
    v118[9] = v114;
    v78 = v109;
    v79 = v110;
    v118[4] = v109;
    v118[5] = v110;
    v80 = v107;
    v81 = v108;
    v118[2] = v107;
    v118[3] = v108;
    v82 = v105;
    v83 = v106;
    v118[0] = v105;
    v118[1] = v106;
    v84 = (v69 + v71);
    v84[10] = v115;
    v84[11] = v72;
    v84[12] = v73;
    *(v84 + 201) = *(v117 + 9);
    v84[6] = v74;
    v84[7] = v75;
    v84[8] = v76;
    v84[9] = v77;
    v84[2] = v80;
    v84[3] = v81;
    v84[4] = v78;
    v84[5] = v79;
    *v84 = v82;
    v84[1] = v83;
    v85 = v69 + *(v70 + 64);
    *v85 = 0;
    *(v85 + 8) = 1;
    sub_100006C20(v118, &v120, &qword_10035FDF8);
    sub_100008FA0(v67, &qword_100356C40);
    v123 = v115;
    v124[0] = v116;
    v124[1] = v117[0];
    *(&v124[1] + 9) = *(v117 + 9);
    v122[4] = v111;
    v122[5] = v112;
    v122[6] = v113;
    v122[7] = v114;
    v122[0] = v107;
    v122[1] = v108;
    v122[2] = v109;
    v122[3] = v110;
    v120 = v105;
    v121 = v106;
    sub_100008FA0(&v120, &qword_10035FDF8);
    return sub_100008FA0(v68, &qword_100356C40);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100133324@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = sub_1000040A8(&qword_10035FD80);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_1000040A8(&qword_10035FD88);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v36 = sub_1000040A8(&qword_10035FD90);
  __chkstk_darwin(v36);
  v14 = &v36 - v13;
  if (a1)
  {
    v15 = a1[9];
    v16 = a1[10];
    sub_1000088DC(a1 + 6, v15);
    (*(v16 + 24))(v38, v15, v16);
    *v9 = static HorizontalAlignment.center.getter();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v17 = sub_1000040A8(&qword_10035FD98);
    sub_1001336C8(a1, a2, a3, &v9[*(v17 + 44)]);
    v18 = *(*sub_1000088DC(v38, v39) + 80) * 0.5;
    v19 = *(*sub_1000088DC(v38, v39) + 80);
    static Alignment.center.getter();
    if (v18 > v19)
    {
      static os_log_type_t.fault.getter();
      v20 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v9, v12, &qword_10035FD80);
    v21 = &v12[*(v10 + 36)];
    v22 = v45;
    *(v21 + 4) = v44;
    *(v21 + 5) = v22;
    *(v21 + 6) = v46;
    v23 = v41;
    *v21 = v40;
    *(v21 + 1) = v23;
    v24 = v43;
    *(v21 + 2) = v42;
    *(v21 + 3) = v24;
    v25 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    sub_10000CF4C(v12, v14, &qword_10035FD88);
    v34 = &v14[*(v36 + 36)];
    *v34 = v25;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    sub_10000CF4C(v14, v37, &qword_10035FD90);
    return sub_100008964(v38);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001336C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42[0] = a2;
  v52 = a4;
  v50 = type metadata accessor for AccessibilityTraits();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Font.Leading();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000040A8(&qword_100356C40);
  __chkstk_darwin(v10 - 8);
  v51 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = v42 - v13;
  v14 = *(a3 + 80);
  *&v57[0] = *(a3 + 72);
  *(&v57[0] + 1) = v14;
  sub_100031770();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  v42[1] = v20;
  static Font.largeTitle.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v21 = v46;
  (*(v7 + 104))(v9, enum case for Font.Leading.tight(_:), v46);
  Font.leading(_:)();

  (*(v7 + 8))(v9, v21);
  v22 = Text.font(_:)();
  v45 = v23;
  v46 = v22;
  v43 = v24;
  v44 = v25;

  sub_1000317C4(v15, v17, v19 & 1);

  if (a1)
  {
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    sub_1000088DC((a1 + 48), v26);
    v28 = *(v27 + 24);

    v28(v57, v26, v27);
    sub_100008964(v57);
    v29 = *(a1 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v31 = *(a1 + 72);
    v32 = *(a1 + 80);
    sub_1000088DC((a1 + 48), v31);
    (*(v32 + 24))(v57, v31, v32);
    static Alignment.leading.getter();
    sub_100008964(v57);
    v33 = *(a1 + 112);
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v58[55] = v63;
    *&v58[71] = v64;
    *&v58[87] = v65;
    *&v58[103] = v66;
    *&v58[7] = v60;
    *&v58[23] = v61;
    v34 = v43 & 1;
    v59 = v43 & 1;
    *&v58[39] = v62;
    v35 = swift_getKeyPath();
    *(&v55[4] + 9) = *&v58[64];
    *(&v55[5] + 9) = *&v58[80];
    *(&v55[6] + 9) = *&v58[96];
    *(v55 + 9) = *v58;
    *(&v55[1] + 9) = *&v58[16];
    *(&v55[2] + 9) = *&v58[32];
    *&v53 = v46;
    *(&v53 + 1) = v45;
    LOBYTE(v54) = v34;
    *(&v54 + 1) = v44;
    *&v55[0] = KeyPath;
    BYTE8(v55[0]) = 0;
    *(&v55[3] + 9) = *&v58[48];
    *(&v55[7] + 1) = *&v58[111];
    *&v56 = v35;
    *(&v56 + 1) = 0x3FE0000000000000;
    v36 = v47;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100356C48);
    sub_10003BE30();
    v37 = v49;
    View.accessibility(addTraits:)();
    (*(v48 + 8))(v36, v50);
    v57[8] = v55[6];
    v57[9] = v55[7];
    v57[10] = v56;
    v57[4] = v55[2];
    v57[5] = v55[3];
    v57[6] = v55[4];
    v57[7] = v55[5];
    v57[0] = v53;
    v57[1] = v54;
    v57[2] = v55[0];
    v57[3] = v55[1];
    sub_100008FA0(v57, &qword_100356C48);
    v38 = v51;
    sub_100006C20(v37, v51, &qword_100356C40);
    v39 = v52;
    sub_100006C20(v38, v52, &qword_100356C40);
    v40 = v39 + *(sub_1000040A8(&qword_10035FDA0) + 48);
    *v40 = 0;
    *(v40 + 8) = 1;
    sub_100008FA0(v37, &qword_100356C40);
    return sub_100008FA0(v38, &qword_100356C40);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_100133D24()
{
  result = qword_10035FDA8;
  if (!qword_10035FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FDA8);
  }

  return result;
}

unint64_t sub_100133DBC()
{
  result = qword_10035FDB8;
  if (!qword_10035FDB8)
  {
    sub_100008CF0(&qword_10035FD88);
    sub_100009274(&qword_10035FDC0, &qword_10035FD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FDB8);
  }

  return result;
}

double sub_100133E90(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 201) = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100133EFC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100133FB0()
{
  result = qword_10035FE10;
  if (!qword_10035FE10)
  {
    sub_100008CF0(&qword_10035FDD0);
    sub_100009274(&qword_10035FE18, &qword_10035FDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035FE10);
  }

  return result;
}

uint64_t ConnectionAssistantEarthRenderer.__allocating_init(device:buffers:renderPipelines:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConnectionAssistantEarthRenderer.init(device:buffers:renderPipelines:)(a1, a2, a3);
  return v6;
}

void *ConnectionAssistantEarthRenderer.init(device:buffers:renderPipelines:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  type metadata accessor for ConnectionAssistantRendererEarthOutline();
  v5 = swift_allocObject();
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 65) = 0u;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 88) = 0;
  *(v5 + 112) = 1;
  *(v5 + 16) = a1;
  v3[7] = v5;
  swift_unknownObjectRetain_n();

  v6 = [a1 newBufferWithLength:192 options:1];
  if (v6 && (swift_unknownObjectRelease(), v3[4] = v6, (v7 = [swift_unknownObjectRetain() newBufferWithLength:176 options:1]) != 0))
  {
    v8 = v7;
    swift_unknownObjectRelease();
    v3[5] = v8;
    v9 = [a1 newBufferWithLength:48 options:1];
    if (v9)
    {
      v10 = v9;
      swift_unknownObjectRelease();

      v3[6] = v10;
      return v3;
    }

    sub_100022AD4();
    swift_allocError();
    swift_willThrow();

    v11 = 1;
  }

  else
  {
    sub_100022AD4();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    v11 = 0;
  }

  swift_unknownObjectRelease();

  if (v6)
  {
    swift_unknownObjectRelease();
  }

  if (v11)
  {
    swift_unknownObjectRelease();
  }

  type metadata accessor for ConnectionAssistantEarthRenderer();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t ConnectionAssistantEarthRenderer.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ConnectionAssistantEarthRenderer.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_10013438C(float32x4_t *a1, uint64_t a2, void *a3, double a4, double a5)
{
  v6 = v5;
  ConnectionAssistantEarth.project(camera:)(a2, v93, a5);
  if ((v97 & 1) == 0)
  {
    v77 = v96;
    v74 = v95;
    v72 = v94;
    v82 = v93[2];
    v84 = v93[3];
    v80 = v93[1];
    v70 = v93[0];
    v10 = v5[7];
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    ConnectionAssistantRendererEarthOutline.loadTexturesIfNecessary(in:)(*a2, v12, v13);
    v15 = a1[4].f32[1];
    v14 = a1[4].f32[2];
    v89 = *(a2 + 208);
    v91 = *(a2 + 192);
    v85 = *(a2 + 240);
    v87 = *(a2 + 224);
    *v16.i64 = ConnectionAssistantEarth.model.getter();
    v20 = v15 * v14;
    v98.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v91, v16.f32[0]), v89, *v16.f32, 1), v87, v16, 2), v85, v16, 3);
    v98.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v91, v17.f32[0]), v89, *v17.f32, 1), v87, v17, 2), v85, v17, 3);
    v98.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v91, v18.f32[0]), v89, *v18.f32, 1), v87, v18, 2), v85, v18, 3);
    v98.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v91, v19.f32[0]), v89, *v19.f32, 1), v87, v19, 2), v85, v19, 3);
    v99 = __invert_f4(v98);
    v99.columns[0].i32[3] = 0;
    v99.columns[1].i32[3] = 0;
    v64 = v99.columns[1];
    v67 = v99.columns[0];
    v99.columns[2].i32[3] = 0;
    v99.columns[3].i32[3] = 0;
    v59 = v99.columns[3];
    v61 = v99.columns[2];
    v21 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(v11, v12, v13);
    v22 = v13;
    v23 = *(a2 + 32);
    v24 = a1[4].i32[3];
    v25 = v5[4];
    v26 = [swift_unknownObjectRetain() contents];
    v27 = v25;
    *v26 = v80;
    *(v26 + 1) = v82;
    *(v26 + 2) = v84;
    *(v26 + 3) = v67;
    *(v26 + 4) = v64;
    *(v26 + 5) = v61;
    *(v26 + 6) = v59;
    v83 = v21;
    v26[28] = v21;
    v26[29] = v22;
    v81 = v13;
    *(v26 + 30) = v23;
    *(v26 + 31) = v24;
    *(v26 + 8) = v70;
    v26[36] = v15;
    v26[37] = v15 * v15;
    *(v26 + 19) = v72;
    *(v26 + 20) = v74;
    *(v26 + 42) = v77;
    v26[43] = v15 * 0.6;
    v26[44] = v15;
    v26[45] = v20;
    v28 = v6[3];
    v29 = sub_100254A80(1);
    if (v29)
    {
      v30 = v29;
      v75 = v12;
      v78 = v11;
      v31 = String._bridgeToObjectiveC()();
      [a3 setLabel:v31];

      [a3 setRenderPipelineState:v30];
      v32 = v6[2];
      [a3 setVertexBuffer:*(v32 + 24) offset:0 atIndex:0];
      [a3 setVertexBuffer:*(v32 + 32) offset:0 atIndex:1];
      [a3 setFragmentBuffer:v25 offset:0 atIndex:0];
      swift_beginAccess();
      v33 = v10[7];
      if (v33)
      {
        v34 = v10[8];
        v35 = v10[9];
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        [a3 setFragmentTexture:v33 atIndex:0];
        [a3 setFragmentTexture:v34 atIndex:1];
        [a3 setFragmentTexture:v35 atIndex:2];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      [a3 drawPrimitives:4 vertexStart:0 vertexCount:{4, *&v59}];
      swift_unknownObjectRelease();
      v11 = v78;
      v12 = v75;
    }

    swift_beginAccess();
    v36 = *(v28 + 108);
    v79 = *(v28 + 128);
    v60 = *(a2 + 320);
    v62 = *(a2 + 336);
    v65 = *(a2 + 352);
    v68 = *(a2 + 368);
    *v37.i64 = ConnectionAssistantEarth.model.getter();
    v73 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, v38.f32[0]), v62, *v38.f32, 1), v65, v38, 2), v68, v38, 3);
    v76 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, v37.f32[0]), v62, *v37.f32, 1), v65, v37, 2), v68, v37, 3);
    v71 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, v42.f32[0]), v62, *v42.f32, 1), v65, v42, 2), v68, v42, 3);
    v69 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, v39.f32[0]), v62, *v39.f32, 1), v65, v39, 2), v68, v39, 3);
    v40 = v6[5];
    v41 = 1.0;
    v42.i32[0] = 1.0;
    if (v11)
    {
      v42.i32[0] = 1.0;
      if (v12)
      {
        v43 = v11 / v12;
        v41 = fminf(v43, 1.0);
        v42.f32[0] = fmaxf(v43, 1.0);
      }
    }

    v42.f32[1] = 1.0 / v41;
    v44 = v91;
    v44.i32[3] = 0;
    v92 = v44;
    v45 = v89;
    v45.i32[3] = 0;
    v90 = v45;
    v46 = v87;
    v46.i32[3] = 0;
    v88 = v46;
    v47 = v85;
    v47.i32[3] = 0;
    v86 = v47;
    v63 = v42.i64[0];
    v66 = *a1;
    v48 = [swift_unknownObjectRetain() contents];
    v49 = v40;
    v48->i64[0] = v63;
    v48->f32[2] = v83;
    v48->f32[3] = v81;
    v48[1] = v76;
    v48[2] = v73;
    v48[3] = v71;
    v48[4] = v69;
    v48[5] = v92;
    v48[6] = v90;
    v48[7] = v88;
    v48[8] = v86;
    v48[9] = v66;
    v48[10].f32[0] = v15;
    v48[10].i32[1] = v36;
    v50 = v6[6];
    v51 = [swift_unknownObjectRetain() contents];
    v52 = v50;
    *v51 = v83;
    v51[1] = v81;
    *(v51 + 2) = v23;
    *(v51 + 1) = v79;
    *(v51 + 8) = v36;
    *(v51 + 9) = v24;
    v53 = sub_100254A80(3);
    if (v53)
    {
      v54 = v53;
      swift_beginAccess();
      v55 = v10[4];
      if (v55)
      {
        v57 = v10[5];
        v56 = v10[6];
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v58 = String._bridgeToObjectiveC()();
        [a3 setLabel:v58];

        [a3 setRenderPipelineState:v54];
        [a3 setVertexBuffer:v40 offset:0 atIndex:0];
        [a3 setVertexBuffer:v55 offset:0 atIndex:1];
        [a3 setVertexBuffer:v56 offset:0 atIndex:2];
        [a3 setFragmentBuffer:v50 offset:0 atIndex:0];
        if ((v57 * 6) >> 64 != (6 * v57) >> 63)
        {
          __break(1u);
          return;
        }

        [a3 drawPrimitives:3 vertexStart:0 vertexCount:?];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100134A64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v34 = a7;
  v32 = a6;
  v9 = type metadata accessor for VStack();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v31 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  if (a1)
  {
    v19 = a1[9];
    v18 = a1[10];
    sub_1000088DC(a1 + 6, v19);
    v20 = (*(v18 + 48))(v37, v19, v18);
    __chkstk_darwin(v20);
    v21 = v32;
    *(&v28 - 6) = a5;
    *(&v28 - 5) = v21;
    v22 = v30;
    *(&v28 - 4) = a1;
    *(&v28 - 3) = v22;
    v23 = v29;
    *(&v28 - 2) = v28;
    *(&v28 - 1) = v23;
    static HorizontalAlignment.center.getter();
    VStack.init(alignment:spacing:content:)();
    sub_100008964(v37);
    WitnessTable = swift_getWitnessTable();
    View.padding(_:)();
    (*(v33 + 8))(v11, v9);
    v35 = WitnessTable;
    v36 = &protocol witness table for _PaddingLayout;
    v25 = swift_getWitnessTable();
    sub_10009A58C(v14, v12, v25);
    v26 = *(v31 + 8);
    v26(v14, v12);
    sub_10009A58C(v17, v12, v25);
    return (v26)(v17, v12);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100134D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v18 - v13;
  v15(v12);
  sub_10009A58C(v11, a5, a6);
  v16 = *(v8 + 8);
  v16(v11, a5);
  sub_10009A58C(v14, a5, a6);
  return (v16)(v14, a5);
}

uint64_t sub_100134EE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = a1[4];
  v23 = a1[2];
  v24 = v4;
  type metadata accessor for VStack();
  sub_100008CF0(&qword_10035FFE8);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035FFF0);
  type metadata accessor for ModifiedContent();
  v25 = a1;
  v5 = a1[3];
  sub_100008CF0(&qword_100355060);
  v22 = v5;
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035FFF8);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100356758);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = *v2;
  if (*v2)
  {
    v14 = v13[9];
    v15 = v13[10];
    sub_1000088DC(v13 + 6, v14);
    v16 = (*(v15 + 48))(v27, v14, v15);
    __chkstk_darwin(v16);
    v17 = v22;
    *(&v22 - 6) = v23;
    *(&v22 - 5) = v17;
    v18 = v25[5];
    *(&v22 - 4) = v24;
    *(&v22 - 3) = v18;
    *(&v22 - 2) = v2;
    *(&v22 - 1) = v27;
    static HorizontalAlignment.center.getter();
    VStack.init(alignment:spacing:content:)();
    WitnessTable = swift_getWitnessTable();
    sub_10009A58C(v9, v6, WitnessTable);
    v20 = *(v7 + 8);
    v20(v9, v6);
    sub_10009A58C(v12, v6, WitnessTable);
    v20(v12, v6);
    return sub_100008964(v27);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001352A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v72 = a6;
  v77 = a2;
  v103 = a1;
  v100 = a7;
  v86 = *(a4 - 8);
  __chkstk_darwin(a1);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008CF0(&qword_100355060);
  v82 = type metadata accessor for ModifiedContent();
  v88 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v69 - v11;
  sub_100008CF0(&qword_10035FFF8);
  v83 = type metadata accessor for ModifiedContent();
  v89 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v69 - v12;
  sub_100008CF0(&qword_100356758);
  v85 = type metadata accessor for ModifiedContent();
  v95 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v69 - v13;
  v90 = type metadata accessor for ModifiedContent();
  v97 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v69 - v14;
  v91 = type metadata accessor for ModifiedContent();
  v99 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v69 - v15;
  v92 = type metadata accessor for ModifiedContent();
  v94 = type metadata accessor for ModifiedContent();
  v98 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v96 = &v69 - v18;
  v74 = a5;
  v19 = type metadata accessor for VStack();
  v76 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v69 - v20;
  sub_100008CF0(&qword_10035FFE8);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035FFF0);
  v22 = type metadata accessor for ModifiedContent();
  v104 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v101 = a4;
  v102 = &v69 - v26;
  v73 = a3;
  v106[10] = a3;
  v106[11] = a4;
  v27 = v72;
  v106[12] = a5;
  v106[13] = v72;
  v106[14] = v103;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v106[2] = a3;
  v106[3] = a4;
  v106[4] = a5;
  v106[5] = v27;
  v28 = v27;
  v106[6] = v77;
  WitnessTable = swift_getWitnessTable();
  v30 = sub_100009274(&qword_100360000, &qword_10035FFE8);
  v108[18] = WitnessTable;
  v108[19] = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_100009274(&qword_100360008, &qword_10035FFF0);
  v108[16] = v31;
  v108[17] = v32;
  v33 = swift_getWitnessTable();
  v34 = WitnessTable;
  v35 = v33;
  v75 = v33;
  sub_1000340DC(sub_1001366BC, v106, v19, v22, v34, v33);
  (*(v76 + 8))(v21, v19);
  v70 = v24;
  v71 = v22;
  sub_10009A58C(v24, v22, v35);
  v36 = *(v104 + 8);
  v76 = v104 + 8;
  v77 = v36;
  v37 = v36(v24, v22);
  v38 = v80;
  (*(v103 + 32))(v37);
  static Font.footnote.getter();
  v39 = v78;
  v40 = v101;
  View.font(_:)();

  (*(v86 + 8))(v38, v40);
  LODWORD(v108[0]) = static HierarchicalShapeStyle.secondary.getter();
  v41 = sub_100009274(&qword_100355058, &qword_100355060);
  v108[14] = v28;
  v108[15] = v41;
  v42 = v82;
  v43 = swift_getWitnessTable();
  v44 = v79;
  View.foregroundStyle<A>(_:)();
  (*(v88 + 8))(v39, v42);
  v45 = sub_100009274(&qword_100360010, &qword_10035FFF8);
  v108[12] = v43;
  v108[13] = v45;
  v46 = v83;
  v47 = swift_getWitnessTable();
  v48 = v81;
  View.multilineTextAlignment(_:)();
  (*(v89 + 8))(v44, v46);
  static Alignment.leading.getter();
  v49 = sub_100009274(&qword_100356750, &qword_100356758);
  v108[10] = v47;
  v108[11] = v49;
  v67 = v85;
  v68 = swift_getWitnessTable();
  v50 = v84;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v95 + 8))(v48, v67);
  static Edge.Set.top.getter();
  v108[8] = v68;
  v108[9] = &protocol witness table for _FlexFrameLayout;
  v51 = v90;
  v52 = swift_getWitnessTable();
  v53 = v87;
  View.padding(_:_:)();
  (*(v97 + 8))(v50, v51);
  v105[2] = v73;
  v105[3] = v101;
  v105[4] = v74;
  v105[5] = v28;
  v108[6] = v52;
  v108[7] = &protocol witness table for _PaddingLayout;
  v54 = v91;
  v55 = swift_getWitnessTable();
  v108[4] = v55;
  v108[5] = &protocol witness table for _PaddingLayout;
  v108[2] = swift_getWitnessTable();
  v108[3] = &protocol witness table for _PaddingLayout;
  v56 = v94;
  v57 = swift_getWitnessTable();
  v58 = v93;
  v103 = v57;
  sub_1000340DC(sub_1001366CC, v105, v54, v56, v55, v57);
  (*(v99 + 8))(v53, v54);
  v59 = v96;
  sub_10009A58C(v58, v56, v57);
  v60 = v98;
  v61 = *(v98 + 8);
  v61(v58, v56);
  v62 = v70;
  v63 = v71;
  v64 = v102;
  (*(v104 + 16))(v70, v102, v71);
  v108[0] = v62;
  (*(v60 + 16))(v58, v59, v56);
  v108[1] = v58;
  v107[0] = v63;
  v107[1] = v56;
  v106[15] = v75;
  v106[16] = v103;
  sub_1000970F0(v108, 2uLL, v107);
  v61(v59, v56);
  v65 = v77;
  v77(v64, v63);
  v61(v58, v56);
  return v65(v62, v63);
}

uint64_t sub_100135E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v15 - v11;
  (*(v10 + 16))();
  sub_10009A58C(v9, a2, a4);
  v13 = *(v6 + 8);
  v13(v9, a2);
  sub_10009A58C(v12, a2, a4);
  return (v13)(v12, a2);
}

uint64_t sub_100135FB0@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = type metadata accessor for Material();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VStack();
  sub_100008CF0(&qword_10035FFE8);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  static Material.ultraThin.getter();
  static Edge.Set.all.getter();
  WitnessTable = swift_getWitnessTable();
  View.background<A>(_:ignoresSafeAreaEdges:)();
  (*(v2 + 8))(v4, v1);
  v10 = sub_100009274(&qword_100360000, &qword_10035FFE8);
  v12[2] = WitnessTable;
  v12[3] = v10;
  swift_getWitnessTable();
  View.cornerRadius(_:antialiased:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100136214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v16 = a1;
  v17 = a3;
  sub_100008CF0(&qword_100355060);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035FFF8);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100356758);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  v15[3] = static Edge.Set.leading.getter();
  v8 = sub_100009274(&qword_100355058, &qword_100355060);
  v28 = a2;
  v29 = v8;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_100009274(&qword_100360010, &qword_10035FFF8);
  v26 = WitnessTable;
  v27 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_100009274(&qword_100356750, &qword_100356758);
  v24 = v11;
  v25 = v12;
  v22 = swift_getWitnessTable();
  v23 = &protocol witness table for _FlexFrameLayout;
  v20 = swift_getWitnessTable();
  v21 = &protocol witness table for _PaddingLayout;
  v13 = swift_getWitnessTable();
  View.padding(_:_:)();
  static Edge.Set.trailing.getter();
  v18 = v13;
  v19 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  View.padding(_:_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10013655C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001365B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001366D8()
{
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10013676C()
{
  type metadata accessor for VStack();
  sub_100008CF0(&qword_10035FFE8);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035FFF0);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100355060);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035FFF8);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100356758);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

void ConnectionAssistantArrow.init(curveRadius:startAngle:endAngle:color:)(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  v8 = a4 + 1.5708;
  v9 = a5 + 1.5708;
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  [a1 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];

  v10.f64[0] = v15;
  v11.f64[0] = v13;
  v10.f64[1] = v14;
  v11.f64[1] = v12;
  *a2 = 0x4180000040400000;
  *(a2 + 8) = a3;
  *(a2 + 12) = 0;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 24) = xmmword_100287280;
  *(a2 + 40) = 0;
  *(a2 + 48) = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v11);
  *(a2 + 64) = 1065353216;
}

uint64_t ConnectionAssistantArrow.project(center:camera:)(float32x4_t *a1, float32x4_t a2)
{
  v15 = a2;
  v13 = *(v2 + 12);
  v14 = a1[7];
  a2.i64[0] = vaddq_f32(vmulq_n_f32(v14, v13), a2).u64[0];
  v3 = a2.f32[2];
  a2.f32[2] = a2.f32[2] + vmuls_lane_f32(v13, v14, 2);
  a2.i32[3] = 0;
  ConnectionAssistantCamera.projectUV(point:)(a2);
  v5 = v4;
  v7 = v6;
  v8 = v13 + *(v2 + 8);
  v9 = vmuls_lane_f32(v8, v14, 2);
  v10.i64[0] = vaddq_f32(vmulq_n_f32(v14, v8), v15).u64[0];
  v10.f32[2] = v3 + v9;
  v10.i32[3] = 0;
  ConnectionAssistantCamera.projectUV(point:)(v10);
  if (v7 & 1) != 0 || (v11)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

float32x2_t ConnectionAssistantArrow.boundingBox(pointSize:projection:)(float a1, float32x2_t a2, float a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 20);
  v8 = (v6 + v7) * 0.5;
  v9 = fminf(fmaxf((roundf(v8 / 3.1416) * 3.1416) + 6.2832, v6), v7);
  v10 = fminf(fmaxf((roundf((v8 + -1.5708) / 3.1416) * 3.1416) + 1.5708, v6), v7);
  v11 = v6 + 1.5708;
  v12 = __sincosf_stret(v6);
  v13 = __sincosf_stret(v11);
  v14 = vsub_f32(vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), a3), a2), vmul_n_f32(__PAIR64__(LODWORD(v13.__sinval), LODWORD(v13.__cosval)), COERCE_FLOAT(*(v3 + 24))));
  v22 = cosf(v9);
  v15 = vadd_f32(vmul_n_f32(__PAIR64__(COERCE_UNSIGNED_INT(sinf(v10)), LODWORD(v22)), a3), a2);
  v16 = __sincosf_stret(v7);
  v17 = __sincosf_stret(v7 + -1.5708);
  v18 = vsub_f32(vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v16.__sinval), LODWORD(v16.__cosval)), a3), a2), vmul_n_f32(__PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval)), COERCE_FLOAT(*(v3 + 28))));
  v19 = vminnm_f32(v14, vminnm_f32(v15, v18));
  v20 = vmaxnm_f32(v15, v18);
  v20.i32[0] = *(v3 + 36);
  if (*v20.i32 <= *(v3 + 40))
  {
    v20.i32[0] = *(v3 + 40);
  }

  *v20.i32 = ((*v20.i32 * a1) + ((*v3 * 0.5) * a1)) + ((*(v3 + 4) * a1) * 2.8);
  return vsub_f32(v19, vdup_lane_s32(v20, 0));
}

BOOL sub_100136E5C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8 = a1[4].i32[0];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i32[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s8SOSBuddy24ConnectionAssistantArrowV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9);
}

BOOL _s8SOSBuddy24ConnectionAssistantArrowV23__derived_struct_equalsySbAC_ACtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  if (a1->f32[0] == a2->f32[0] && a1->f32[1] == a2->f32[1] && a1->f32[2] == a2->f32[2] && a1->f32[3] == a2->f32[3] && a1[1].f32[0] == a2[1].f32[0] && a1[1].f32[1] == a2[1].f32[1] && a1[1].f32[2] == a2[1].f32[2] && a1[1].f32[3] == a2[1].f32[3] && a1[2].f32[0] == a2[2].f32[0] && a1[2].f32[1] == a2[2].f32[1] && a1[2].f32[2] == a2[2].f32[2] && (v2 = vmovn_s32(vceqq_f32(a1[3], a2[3])), (v2.i16[0] & v2.i16[1] & 1) != 0) && (v2.i16[2] & v2.i16[3] & 1) != 0)
  {
    return a1[4].f32[0] == a2[4].f32[0];
  }

  else
  {
    return 0;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ConnectionAssistantRendererProjection.Circle(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_100137014@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *v1;
  if (*v1)
  {
    v5 = v3[9];
    v6 = v3[10];
    sub_1000088DC(v3 + 6, v5);
    v7 = *(v6 + 24);

    v7(v36, v5, v6);

    v8 = v3[9];
    v9 = v3[10];
    sub_1000088DC(v3 + 6, v8);
    (*(v9 + 24))(v25, v8, v9);
    v10 = static HorizontalAlignment.center.getter();
    v27 = 0;
    sub_10013724C(v2, &v18);
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v35[0] = v18;
    v35[1] = v19;
    v35[2] = v20;
    v35[3] = v21;
    v35[4] = v22;
    v35[5] = v23;
    v35[6] = v24;
    sub_100006C20(&v28, &v17, &qword_100360018);
    sub_100008FA0(v35, &qword_100360018);
    *&v26[55] = v31;
    *&v26[71] = v32;
    *&v26[87] = v33;
    *&v26[103] = v34;
    *&v26[7] = v28;
    *&v26[23] = v29;
    *&v26[39] = v30;
    sub_100008964(v25);
    v11 = v27;
    v12 = static Edge.Set.all.getter();
    result = sub_100008964(v36);
    *a1 = v10;
    *(a1 + 8) = 0x402C000000000000;
    *(a1 + 16) = v11;
    v14 = *&v26[80];
    *(a1 + 81) = *&v26[64];
    *(a1 + 97) = v14;
    *(a1 + 113) = *&v26[96];
    *(a1 + 128) = *&v26[111];
    v15 = *&v26[16];
    *(a1 + 17) = *v26;
    *(a1 + 33) = v15;
    v16 = *&v26[48];
    *(a1 + 49) = *&v26[32];
    *(a1 + 65) = v16;
    *(a1 + 136) = v12;
    *(a1 + 144) = xmmword_100280CB0;
    *(a1 + 160) = xmmword_100287330;
    *(a1 + 176) = 0;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10005ECAC(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10013724C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v29._object = 0x800000010029E7A0;
  v6._countAndFlagsBits = 0x796669746F4ELL;
  v6._object = 0xE600000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD00000000000005CLL;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v29);

  type metadata accessor for OptionPresentation();
  v9 = swift_allocObject();
  v9[1] = v8;
  v9[3]._countAndFlagsBits = 0;
  v9[3]._object = 0;
  v9[4]._countAndFlagsBits = static Color.clear.getter();
  v9[2]._countAndFlagsBits = 0;
  v9[2]._object = 0;
  v10 = *a1;
  v27 = a1[1];
  v28 = v10;
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = a1[2];
  *(v11 + 64) = *(a1 + 6);
  sub_100006C20(&v28, v26, &qword_100360020);
  sub_100006C20(&v27, v26, &qword_100360028);
  type metadata accessor for UIMetrics();
  sub_10005ECAC(&qword_100354D40, type metadata accessor for UIMetrics);

  v13 = EnvironmentObject.init()();
  v24 = v14;
  v25 = v13;
  v15 = [v4 mainBundle];
  v30._object = 0x800000010029E800;
  v16._countAndFlagsBits = 0x20749980E26E6F44;
  v16._object = 0xAE00796669746F4ELL;
  v30._countAndFlagsBits = 0xD000000000000062;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v30);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  v21 = a1[1];
  *(v20 + 16) = *a1;
  *(v20 + 32) = v21;
  *(v20 + 48) = a1[2];
  *(v20 + 64) = *(a1 + 6);
  sub_100006C20(&v28, v26, &qword_100360020);
  sub_100006C20(&v27, v26, &qword_100360028);

  result = EnvironmentObject.init()();
  *a2 = v25;
  a2[1] = v24;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = v9;
  a2[5] = sub_100137B9C;
  a2[6] = v11;
  a2[7] = result;
  a2[8] = v23;
  a2[10] = 0;
  a2[11] = 0;
  a2[9] = v19;
  a2[12] = sub_100137BC4;
  a2[13] = v20;
  return result;
}

uint64_t sub_10013757C(char a1)
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E48);
  v35 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 4);
  v33 = *(v1 + 5);
  sub_100006C20(&v35, v34, &qword_100360020);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  sub_100008FA0(&v35, &qword_100360020);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34[0] = v9;
    *v8 = 136446467;
    if (v4)
    {
      v10 = v9;

      v11 = sub_1000B9A7C();
      v13 = v12;

      v14 = sub_10017C9E8(v11, v13, v34);

      *(v8 + 4) = v14;
      *(v8 + 12) = 1025;
      *(v8 + 14) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] QuestionnaireBodyView: notify contacts: %{BOOL,private}d", v8, 0x12u);
      sub_100008964(v10);

      goto LABEL_7;
    }
  }

  else
  {

    if (v4)
    {
LABEL_7:
      v34[3] = &type metadata for Bool;
      LOBYTE(v34[0]) = a1 & 1;
      swift_retain_n();
      v15 = sub_1000C0AF0(v5, v34);

      sub_100008FA0(v34, &qword_1003577F8);
      if (!v15)
      {
        sub_100006C20(&v35, v34, &qword_100360020);

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        sub_100008FA0(&v35, &qword_100360020);

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v34[0] = swift_slowAlloc();
          *v18 = 136446467;
          v19 = sub_1000B9A7C();
          v21 = v20;

          v22 = sub_10017C9E8(v19, v21, v34);

          *(v18 + 4) = v22;
          *(v18 + 12) = 2081;
          *(v18 + 14) = sub_10017C9E8(*(v5 + 16), *(v5 + 24), v34);
          _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] QuestionnaireBodyView: failed to update data for %{private}s", v18, 0x16u);
          swift_arrayDestroy();

          goto LABEL_12;
        }
      }

LABEL_12:
      v23 = sub_1000BB344(v5, 0, 4);

      if ((v23 & 1) == 0)
      {
        sub_100006C20(&v35, v34, &qword_100360020);

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        sub_100008FA0(&v35, &qword_100360020);

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v34[0] = swift_slowAlloc();
          *v26 = 136446467;
          v27 = sub_1000B9A7C();
          v29 = v28;

          v30 = sub_10017C9E8(v27, v29, v34);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2081;
          *(v26 + 14) = sub_10017C9E8(*(v5 + 16), *(v5 + 24), v34);
          _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] QuestionnaireBodyView: failed to record answer for %{private}s", v26, 0x16u);
          swift_arrayDestroy();

          return v33(v31);
        }
      }

      return v33(v31);
    }
  }

  type metadata accessor for QuestionnaireState();
  sub_10005ECAC(&qword_100354D50, type metadata accessor for QuestionnaireState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}