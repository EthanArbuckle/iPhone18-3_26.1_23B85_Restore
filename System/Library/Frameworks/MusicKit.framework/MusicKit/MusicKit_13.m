uint64_t sub_2172FEB30(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v313 = v2;
  v307 = v4;
  v308 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v289 = &v274 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25670, &unk_21775D6A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v283 = &v274 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v275 = (&v274 - v18);
  v314 = type metadata accessor for CloudArtist(0);
  v19 = *(*(v314 - 1) + 64);
  MEMORY[0x28223BE20](v314, v20);
  v316 = &v274 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = 0;
  v22 = type metadata accessor for ArtistPropertyProvider();
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v274 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6270 != -1)
  {
    swift_once();
  }

  v344 = 0u;
  v345 = 0u;
  v346 = 0u;
  v347 = 0u;
  v348 = 0u;
  v349 = 0u;
  v350 = 0u;
  v351 = 0;
  sub_2172DA77C();
  memcpy(v353, v332, sizeof(v353));
  v309 = v332[35];
  memcpy(v352, &v332[36], sizeof(v352));
  v27 = v15[10];
  v28 = v6 + v15[9];
  v29 = *(v28 + 8);
  v282 = *v28;
  LODWORD(v281) = *(v28 + 16);
  v30 = *(v6 + v27 + 8);
  v280 = *(v6 + v27);
  v31 = v15[13];
  v310 = *(v6 + v15[12]);
  v32 = *(v6 + v31);
  v33 = v15[15];
  v34 = *(v6 + v15[14]);
  v312 = v6;
  v35 = *(v6 + v33);
  v276 = v34;
  v277 = v35;
  sub_2172A497C(v354);
  memcpy(v26, v354, 0x221uLL);
  v36 = v22[6];
  v37 = sub_2177516D8();
  v284 = v36;
  __swift_storeEnumTagSinglePayload(&v26[v36], 1, 1, v37);
  v38 = &v26[v22[8]];
  *v38 = xmmword_2177586D0;
  *(v38 + 1) = 0u;
  *(v38 + 2) = 0u;
  *(v38 + 3) = 0u;
  v285 = v38;
  v26[v22[14]] = 2;
  memcpy(&v26[v22[15]], v354, 0x221uLL);
  v39 = v22[17];
  v286 = v37;
  v287 = v39;
  __swift_storeEnumTagSinglePayload(&v26[v39], 1, 1, v37);
  v40 = &v26[v22[18]];
  *v40 = 0;
  v40[8] = 1;
  v41 = &v26[v22[19]];
  *v41 = 0;
  v41[8] = 1;
  v42 = &v26[v22[20]];
  *v42 = 0;
  v42[8] = 1;
  v43 = &v26[v22[21]];
  *v43 = 0;
  v43[8] = 1;
  v315 = v26;
  v44 = v22[22];
  v45 = sub_2177517D8();
  v46 = v315 + v44;
  v47 = v315;
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v45);
  *(v47 + v22[23]) = 3;
  __swift_storeEnumTagSinglePayload(v47 + v22[24], 1, 1, v45);
  v48 = v47 + v22[25];
  *v48 = 0;
  v48[8] = 1;
  v49 = v47 + v22[26];
  *(v49 + 96) = 0;
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0u;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v288 = v49;
  v50 = v47 + v22[27];
  *(v50 + 96) = 0;
  *(v50 + 64) = 0u;
  *(v50 + 80) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  v290 = v50;
  v51 = (v47 + v22[28]);
  v51[6] = 0u;
  v51[7] = 0u;
  v51[4] = 0u;
  v51[5] = 0u;
  v51[2] = 0u;
  v51[3] = 0u;
  *v51 = 0u;
  v51[1] = 0u;
  v291 = v51;
  v52 = v47 + v22[29];
  *(v52 + 96) = 0;
  *(v52 + 64) = 0u;
  *(v52 + 80) = 0u;
  *(v52 + 32) = 0u;
  *(v52 + 48) = 0u;
  *v52 = 0u;
  *(v52 + 16) = 0u;
  v292 = v52;
  v53 = v47 + v22[30];
  *(v53 + 96) = 0;
  *(v53 + 64) = 0u;
  *(v53 + 80) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v293 = v53;
  v54 = v47 + v22[31];
  *(v54 + 96) = 0;
  *(v54 + 64) = 0u;
  *(v54 + 80) = 0u;
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0u;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  v294 = v54;
  v55 = v47 + v22[32];
  *(v55 + 96) = 0;
  *(v55 + 64) = 0u;
  *(v55 + 80) = 0u;
  *(v55 + 32) = 0u;
  *(v55 + 48) = 0u;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  v295 = v55;
  v56 = v47 + v22[33];
  *(v56 + 96) = 0;
  *(v56 + 64) = 0u;
  *(v56 + 80) = 0u;
  *(v56 + 32) = 0u;
  *(v56 + 48) = 0u;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  v296 = v56;
  v57 = v47 + v22[34];
  *(v57 + 96) = 0;
  *(v57 + 64) = 0u;
  *(v57 + 80) = 0u;
  *(v57 + 32) = 0u;
  *(v57 + 48) = 0u;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  v297 = v57;
  v58 = v47 + v22[35];
  *(v58 + 96) = 0;
  *(v58 + 64) = 0u;
  *(v58 + 80) = 0u;
  *(v58 + 32) = 0u;
  *(v58 + 48) = 0u;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  v298 = v58;
  v59 = v47 + v22[36];
  *(v59 + 96) = 0;
  *(v59 + 64) = 0u;
  *(v59 + 80) = 0u;
  *(v59 + 32) = 0u;
  *(v59 + 48) = 0u;
  *v59 = 0u;
  *(v59 + 16) = 0u;
  v299 = v59;
  v60 = v47 + v22[37];
  *(v60 + 96) = 0;
  *(v60 + 64) = 0u;
  *(v60 + 80) = 0u;
  *(v60 + 32) = 0u;
  *(v60 + 48) = 0u;
  *v60 = 0u;
  *(v60 + 16) = 0u;
  v300 = v60;
  v61 = v47 + v22[38];
  *(v61 + 96) = 0;
  *(v61 + 64) = 0u;
  *(v61 + 80) = 0u;
  *(v61 + 32) = 0u;
  *(v61 + 48) = 0u;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  v301 = v61;
  v62 = v47 + v22[39];
  *(v62 + 96) = 0;
  *(v62 + 64) = 0u;
  *(v62 + 80) = 0u;
  *(v62 + 32) = 0u;
  *(v62 + 48) = 0u;
  *v62 = 0u;
  *(v62 + 16) = 0u;
  v302 = v62;
  v63 = v47 + v22[40];
  *(v63 + 96) = 0;
  *(v63 + 64) = 0u;
  *(v63 + 80) = 0u;
  *(v63 + 32) = 0u;
  *(v63 + 48) = 0u;
  *v63 = 0u;
  *(v63 + 16) = 0u;
  v303 = v63;
  v64 = v47 + v22[41];
  *(v64 + 96) = 0;
  *(v64 + 64) = 0u;
  *(v64 + 80) = 0u;
  *(v64 + 32) = 0u;
  *(v64 + 48) = 0u;
  *v64 = 0u;
  *(v64 + 16) = 0u;
  v304 = v64;
  v65 = v47 + v22[42];
  *(v65 + 96) = 0;
  *(v65 + 64) = 0u;
  *(v65 + 80) = 0u;
  *(v65 + 32) = 0u;
  *(v65 + 48) = 0u;
  *v65 = 0u;
  *(v65 + 16) = 0u;
  v305 = v65;
  v311 = v22;
  v66 = v47 + v22[43];
  *(v66 + 96) = 0;
  *(v66 + 64) = 0u;
  *(v66 + 80) = 0u;
  *(v66 + 32) = 0u;
  *(v66 + 48) = 0u;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  v306 = v66;
  v67 = qword_280BE3968;
  v279 = v29;
  sub_217751DE8();
  v278 = v30;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v68 = v276;
  sub_217751DE8();
  v69 = v277;
  sub_217751DE8();
  if (v67 != -1)
  {
    swift_once();
  }

  v70 = qword_280C01FC8;
  if (qword_280C01FC8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v270 = sub_217752D28();

    v70 = v270;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v71 = v311;
  *(v47 + v311[45]) = v70;
  v72 = (v47 + v71[48]);
  v73 = v47 + v71[46];
  memcpy(v73, v353, 0x118uLL);
  *(v73 + 35) = v309;
  memcpy(v73 + 288, v352, 0x41uLL);
  v74 = v47 + v71[47];
  v75 = v279;
  *v74 = v282;
  *(v74 + 1) = v75;
  v74[16] = v281;
  v76 = v278;
  *v72 = v280;
  v72[1] = v76;
  *(v47 + v71[49]) = v310;
  *(v47 + v71[50]) = v32;
  *(v47 + v71[51]) = v68;
  v77 = v71;
  *(v47 + v71[52]) = v69;
  v78 = v316;
  sub_21733CAD0();
  v79 = v314[6];
  sub_21726A630(v78 + v79, v332, &qword_27CB24328, &unk_21775D440);
  if (v332[2] == 1)
  {
    sub_2171F0738(v332, &qword_27CB24328, &unk_21775D440);
    v80 = v283;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v15);
    goto LABEL_20;
  }

  sub_21726A630(&v332[16], v341, &qword_27CB24280, &unk_21775D680);
  sub_21726A204(v332);
  v80 = v283;
  if (!v341[2])
  {
    sub_2171F0738(v341, &qword_27CB24280, &unk_21775D680);
    goto LABEL_19;
  }

  sub_217751DE8();
  sub_2171F0738(v341, &qword_27CB24288, &qword_217758F80);
  sub_2172CE7E0();

  if (__swift_getEnumTagSinglePayload(v80, 1, v15) == 1)
  {
LABEL_20:
    v93 = &qword_27CB25670;
    v94 = &unk_21775D6A0;
    goto LABEL_21;
  }

  v81 = v80;
  v80 = v275;
  sub_21726A594(v81, v275, &qword_27CB24728, &qword_217758CB0);
  v83 = *v80;
  v82 = v80[1];
  v84 = *(v73 + 3);
  sub_217751DE8();

  *(v73 + 2) = v83;
  *(v73 + 3) = v82;
  v73[32] = 0;
  v332[1] = 0;
  v332[0] = 0;
  MEMORY[0x28223BE20](v85, v86);
  *(&v274 - 2) = v332;
  v87 = v317;
  v88 = sub_2173DDA80();
  v317 = v87;
  if (!v88)
  {
    v89 = *(v73 + 35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v73 + 35) = v89;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v271 = *(v89 + 16);
      sub_2172B1F4C();
      v89 = v272;
      *(v73 + 35) = v272;
    }

    v91 = *(v89 + 16);
    if (v91 >= *(v89 + 24) >> 1)
    {
      sub_2172B1F4C();
      v89 = v273;
    }

    *(v89 + 16) = v91 + 1;
    v92 = v89 + 16 * v91;
    *(v92 + 32) = 0;
    *(v92 + 40) = 0;
    *(v73 + 35) = v89;
  }

  v78 = v316;
  sub_21733CA78(v316, type metadata accessor for CloudArtist);
  sub_21733CAD0();
  v93 = &qword_27CB24728;
  v94 = &qword_217758CB0;
LABEL_21:
  sub_2171F0738(v80, v93, v94);
  v95 = v78 + v314[5];
  memcpy(v342, v95, sizeof(v342));
  memcpy(v343, v95, sizeof(v343));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v343) == 1)
  {
    v96 = v354;
  }

  else
  {
    memcpy(v332, v343, 0x1B8uLL);
    memcpy(v318, v342, 0x1B8uLL);
    sub_21726A630(v318, v341, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v340);
    memcpy(v319, v332, 0x1B8uLL);
    sub_2171F0738(v319, &qword_27CB243F0, &qword_21775D690);
    memcpy(v332, v340, 0x221uLL);
    nullsub_1(v332, v97);
    v96 = v332;
  }

  memcpy(v341, v96, 0x221uLL);
  v310 = v79;
  v98 = v77[7];
  memcpy(v340, v47, 0x221uLL);
  sub_2171F0738(v340, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v47, v341, 0x221uLL);
  v99 = *(v95 + 448);
  v47[69] = *(v95 + 440);
  v47[70] = v99;
  v100 = type metadata accessor for CloudArtist.Attributes(0);
  v101 = v100[6];
  sub_217751DE8();
  v283 = v101;
  sub_21733B95C(&v101[v95], v47 + v284, &unk_27CB277C0, &qword_217758DC0);
  *(v47 + v98) = *(v95 + v100[7]);
  v102 = (v95 + v100[8]);
  v103 = v102[8];
  v309 = v95;
  if (v103)
  {
    v104 = v102[7];
    v284 = v102[6];
    v105 = v102[4];
    v106 = v102[5];
    v107 = v102[3];
    v280 = v102[2];
    v281 = v105;
    v108 = v102[1];
    v279 = *v102;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v282 = v106;
    sub_217751DE8();
  }

  else
  {
    v279 = 0;
    v280 = 0;
    v107 = 0;
    v281 = 0;
    v282 = 0;
    v284 = 0;
    v104 = 0;
    v108 = 1;
  }

  v109 = v77[9];
  v110 = v77[10];
  v111 = v77[12];
  v277 = v77[11];
  v278 = v111;
  v112 = v285;
  v113 = *(v285 + 1);
  v339[0] = *v285;
  v339[1] = v113;
  v114 = *(v285 + 3);
  v339[2] = *(v285 + 2);
  v339[3] = v114;
  sub_217751DE8();
  sub_2171F0738(v339, &qword_27CB24B70, &unk_217759460);
  v115 = v280;
  *v112 = v279;
  *(v112 + 1) = v108;
  *(v112 + 2) = v115;
  *(v112 + 3) = v107;
  v116 = v282;
  *(v112 + 4) = v281;
  *(v112 + 5) = v116;
  *(v112 + 6) = v284;
  *(v112 + 7) = v104;
  v117 = v309;
  v118 = v315;
  *(v315 + v109) = *(v309 + v100[9]);
  *(v118 + v110) = *(v117 + v100[10]);
  v119 = v278;
  *(v118 + v277) = *(v117 + v100[11]);
  *(v118 + v119) = *(v117 + v100[12]);
  v120 = v289;
  sub_21726A630(&v283[v117], v289, &unk_27CB277C0, &qword_217758DC0);
  LOBYTE(v109) = __swift_getEnumTagSinglePayload(v120, 1, v286) != 1;
  v121 = v77[13];
  v122 = (v118 + v77[16]);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v120, &unk_27CB277C0, &qword_217758DC0);
  *(v118 + v121) = v109;
  v123 = (v117 + v100[13]);
  v124 = v123[1];
  *v122 = *v123;
  v122[1] = v124;
  v125 = v100[14];
  sub_217751DE8();
  sub_21733B95C(v117 + v125, v118 + v287, &unk_27CB277C0, &qword_217758DC0);
  v126 = v316;
  v127 = v310;
  sub_21726A630(v316 + v310, v332, &qword_27CB24328, &unk_21775D440);
  if (v332[2] == 1)
  {
    sub_2171F0738(v332, &qword_27CB24328, &unk_21775D440);
    v128 = v308;
    v129 = v313;
  }

  else
  {
    sub_21726A630(v332, v319, &qword_27CB24270, &unk_21775D640);
    sub_21726A204(v332);
    v128 = v308;
    v129 = v313;
    if (*&v319[1])
    {
      v331 = 0;
      v330 = 0u;
      v329 = 0u;
      sub_2172E94A8(v318, v308, v313, &v329);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v319, &qword_27CB24278, &unk_217759070);
      goto LABEL_33;
    }

    sub_2171F0738(v319, &qword_27CB24270, &unk_21775D640);
  }

  memset(v318, 0, 104);
LABEL_33:
  sub_21733BBDC(v318, v288, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v126 + v127, v332, &qword_27CB24328, &unk_21775D440);
  if (v332[2] == 1)
  {
    v130 = &qword_27CB24328;
    v131 = &unk_21775D440;
    v132 = v332;
LABEL_39:
    sub_2171F0738(v132, v130, v131);
    memset(v318, 0, 104);
    goto LABEL_52;
  }

  sub_21726A630(&v332[16], v319, &qword_27CB24280, &unk_21775D680);
  v133 = sub_21726A204(v332);
  v135 = *&v319[1];
  if (!*&v319[1])
  {
    v130 = &qword_27CB24280;
    v131 = &unk_21775D680;
    v132 = v319;
    goto LABEL_39;
  }

  v331 = 0;
  v330 = 0u;
  v329 = 0u;
  MEMORY[0x28223BE20](v133, v134);
  *(&v274 - 2) = v129;
  *(&v274 - 1) = v128;
  sub_217751DE8();
  v136 = v317;
  v137 = sub_2172E4A28(sub_21733CED0, (&v274 - 4), v135, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v317 = v136;

  sub_21726A630(&v329, &v323, &qword_27CB24188, &dword_217758930);
  if (*(&v324 + 1))
  {
    sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    v326 = v323;
    v327 = v324;
    v328 = v325;
  }

  else
  {
    v322 = 0;
    v321 = 0u;
    v320 = 0u;
    v138 = *&v319[4];
    if (*&v319[4])
    {
      v139 = *(&v319[3] + 1);
      sub_2172CA838(v128, &v318[1]);
      *&v318[0] = v139;
      *(&v318[0] + 1) = v138;
      v140 = swift_allocObject();
      v141 = v318[1];
      *(v140 + 16) = v318[0];
      *(v140 + 32) = v141;
      *(v140 + 48) = v318[2];
      *(v140 + 64) = *&v318[3];
      sub_217751DE8();
      sub_2171F0738(&v320, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      *&v320 = v140;
      *(&v321 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v322 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    }

    v326 = v320;
    v327 = v321;
    v328 = v322;
    if (*(&v324 + 1))
    {
      sub_2171F0738(&v323, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v319[0] + 1) == 1)
  {
    v142 = 0;
  }

  else
  {
    v142 = *&v319[0];
  }

  if (*(&v319[0] + 1) == 1)
  {
    v143 = 0;
  }

  else
  {
    v143 = *(&v319[0] + 1);
  }

  *&v318[0] = v137;
  BYTE8(v318[0]) = 0;
  v318[1] = v326;
  v318[2] = v327;
  *&v318[3] = v328;
  *(&v318[3] + 1) = v142;
  *&v318[4] = v143;
  *(&v318[4] + 1) = *(&v319[1] + 1);
  *&v318[5] = *&v319[2];
  *(&v318[5] + 8) = v319[7];
  sub_2171FB568(*&v319[0], *(&v319[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB24288, &qword_217758F80);
  v129 = v313;
  v126 = v316;
LABEL_52:
  sub_21733BBDC(v318, v290, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v126 + v127, v332, &qword_27CB24328, &unk_21775D440);
  if (v332[2] == 1)
  {
    sub_2171F0738(v332, &qword_27CB24328, &unk_21775D440);
    memset(v319, 0, 128);
  }

  else
  {
    sub_21726A630(&v332[32], v319, &qword_27CB24330, &unk_21775D460);
    sub_21726A204(v332);
  }

  sub_21733BBDC(v319, v291, &qword_27CB24330, &unk_21775D460);
  sub_21726A630(v126 + v127, v332, &qword_27CB24328, &unk_21775D440);
  if (v332[2] == 1)
  {
    v144 = &qword_27CB24328;
    v145 = &unk_21775D440;
    v146 = v332;
  }

  else
  {
    sub_21726A630(&v332[48], v319, &qword_27CB243B0, &unk_21775D670);
    sub_21726A204(v332);
    if (*&v319[1])
    {
      v331 = 0;
      v330 = 0u;
      v329 = 0u;
      sub_2172E9588(v128, v129, &v329, v318);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v319, &qword_27CB243B8, &qword_2177586B0);
      goto LABEL_61;
    }

    v144 = &qword_27CB243B0;
    v145 = &unk_21775D670;
    v146 = v319;
  }

  sub_2171F0738(v146, v144, v145);
  memset(v318, 0, 104);
LABEL_61:
  sub_21733BBDC(v318, v292, &qword_27CB25320, &unk_21776E020);
  sub_21726A630(v126 + v127, v332, &qword_27CB24328, &unk_21775D440);
  if (v332[2] == 1)
  {
    v147 = &qword_27CB24328;
    v148 = &unk_21775D440;
    v149 = v332;
LABEL_67:
    sub_2171F0738(v149, v147, v148);
    memset(v318, 0, 104);
    goto LABEL_80;
  }

  sub_21726A630(&v332[64], v319, &qword_27CB242B0, &unk_21775D630);
  v150 = sub_21726A204(v332);
  if (!*&v319[1])
  {
    v147 = &qword_27CB242B0;
    v148 = &unk_21775D630;
    v149 = v319;
    goto LABEL_67;
  }

  v331 = 0;
  v330 = 0u;
  v329 = 0u;
  MEMORY[0x28223BE20](v150, v151);
  *(&v274 - 2) = v129;
  *(&v274 - 1) = v128;
  v152 = v317;
  v154 = sub_2172E4A28(sub_21733CEB8, (&v274 - 4), v153, sub_217276278, &qword_27CB24808, &qword_217758D90);
  v317 = v152;
  sub_21726A630(&v329, &v323, &qword_27CB24188, &dword_217758930);
  if (*(&v324 + 1))
  {
    sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    v326 = v323;
    v327 = v324;
    v328 = v325;
  }

  else
  {
    v322 = 0;
    v321 = 0u;
    v320 = 0u;
    v155 = *&v319[4];
    if (*&v319[4])
    {
      v156 = *(&v319[3] + 1);
      sub_2172CA838(v128, &v318[1]);
      *&v318[0] = v156;
      *(&v318[0] + 1) = v155;
      v157 = swift_allocObject();
      v158 = v318[1];
      *(v157 + 16) = v318[0];
      *(v157 + 32) = v158;
      *(v157 + 48) = v318[2];
      *(v157 + 64) = *&v318[3];
      sub_217751DE8();
      sub_2171F0738(&v320, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      *&v320 = v157;
      *(&v321 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v322 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    }

    v326 = v320;
    v327 = v321;
    v328 = v322;
    if (*(&v324 + 1))
    {
      sub_2171F0738(&v323, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v319[0] + 1) == 1)
  {
    v159 = 0;
  }

  else
  {
    v159 = *&v319[0];
  }

  if (*(&v319[0] + 1) == 1)
  {
    v160 = 0;
  }

  else
  {
    v160 = *(&v319[0] + 1);
  }

  *&v318[0] = v154;
  BYTE8(v318[0]) = 0;
  v318[1] = v326;
  v318[2] = v327;
  *&v318[3] = v328;
  *(&v318[3] + 1) = v159;
  *&v318[4] = v160;
  *(&v318[4] + 1) = *(&v319[1] + 1);
  *&v318[5] = *&v319[2];
  *(&v318[5] + 8) = v319[7];
  sub_2171FB568(*&v319[0], *(&v319[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB242B8, &unk_21777EEA0);
  v129 = v313;
  v126 = v316;
LABEL_80:
  sub_21733BBDC(v318, v293, &qword_27CB25338, &unk_21775D3E0);
  sub_21726A630(v126 + v127, v332, &qword_27CB24328, &unk_21775D440);
  if (v332[2] == 1)
  {
    v161 = &qword_27CB24328;
    v162 = &unk_21775D440;
    v163 = v332;
LABEL_86:
    sub_2171F0738(v163, v161, v162);
    memset(v318, 0, 104);
    goto LABEL_99;
  }

  sub_21726A630(v333, v319, &qword_27CB242C0, &unk_21775D650);
  v164 = sub_21726A204(v332);
  if (!*&v319[1])
  {
    v161 = &qword_27CB242C0;
    v162 = &unk_21775D650;
    v163 = v319;
    goto LABEL_86;
  }

  v331 = 0;
  v330 = 0u;
  v329 = 0u;
  MEMORY[0x28223BE20](v164, v165);
  *(&v274 - 2) = v129;
  *(&v274 - 1) = v128;
  v166 = v317;
  v168 = sub_2172E4A28(sub_21733CEE8, (&v274 - 4), v167, sub_217276258, &qword_27CB24790, &unk_21775A220);
  v317 = v166;
  sub_21726A630(&v329, &v323, &qword_27CB24188, &dword_217758930);
  if (*(&v324 + 1))
  {
    sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    v326 = v323;
    v327 = v324;
    v328 = v325;
  }

  else
  {
    v322 = 0;
    v321 = 0u;
    v320 = 0u;
    v169 = *&v319[4];
    if (*&v319[4])
    {
      v170 = *(&v319[3] + 1);
      sub_2172CA838(v128, &v318[1]);
      *&v318[0] = v170;
      *(&v318[0] + 1) = v169;
      v171 = swift_allocObject();
      v172 = v318[1];
      *(v171 + 16) = v318[0];
      *(v171 + 32) = v172;
      *(v171 + 48) = v318[2];
      *(v171 + 64) = *&v318[3];
      sub_217751DE8();
      sub_2171F0738(&v320, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      *&v320 = v171;
      *(&v321 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v322 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    }

    v326 = v320;
    v327 = v321;
    v328 = v322;
    if (*(&v324 + 1))
    {
      sub_2171F0738(&v323, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v319[0] + 1) == 1)
  {
    v173 = 0;
  }

  else
  {
    v173 = *&v319[0];
  }

  if (*(&v319[0] + 1) == 1)
  {
    v174 = 0;
  }

  else
  {
    v174 = *(&v319[0] + 1);
  }

  *&v318[0] = v168;
  BYTE8(v318[0]) = 0;
  v318[1] = v326;
  v318[2] = v327;
  *&v318[3] = v328;
  *(&v318[3] + 1) = v173;
  *&v318[4] = v174;
  *(&v318[4] + 1) = *(&v319[1] + 1);
  *&v318[5] = *&v319[2];
  *(&v318[5] + 8) = v319[7];
  sub_2171FB568(*&v319[0], *(&v319[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB242C8, &unk_217758970);
  v129 = v313;
  v126 = v316;
LABEL_99:
  sub_21733BBDC(v318, v294, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(v126 + v127, v332, &qword_27CB24328, &unk_21775D440);
  if (v332[2] == 1)
  {
    v175 = &qword_27CB24328;
    v176 = &unk_21775D440;
    v177 = v332;
LABEL_105:
    sub_2171F0738(v177, v175, v176);
    memset(v318, 0, 104);
    goto LABEL_118;
  }

  sub_21726A630(v334, v319, &qword_27CB242F0, &unk_217797B80);
  v178 = sub_21726A204(v332);
  if (!*&v319[1])
  {
    v175 = &qword_27CB242F0;
    v176 = &unk_217797B80;
    v177 = v319;
    goto LABEL_105;
  }

  v331 = 0;
  v330 = 0u;
  v329 = 0u;
  MEMORY[0x28223BE20](v178, v179);
  *(&v274 - 2) = v129;
  *(&v274 - 1) = v128;
  v180 = v317;
  v182 = sub_2172E4A28(sub_21733B5C0, (&v274 - 4), v181, sub_2172761D8, &qword_27CB24738, &qword_217758CC0);
  v317 = v180;
  sub_21726A630(&v329, &v323, &qword_27CB24188, &dword_217758930);
  if (*(&v324 + 1))
  {
    sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    v326 = v323;
    v327 = v324;
    v328 = v325;
  }

  else
  {
    v322 = 0;
    v321 = 0u;
    v320 = 0u;
    v183 = *&v319[4];
    if (*&v319[4])
    {
      v184 = *(&v319[3] + 1);
      sub_2172CA838(v128, &v318[1]);
      *&v318[0] = v184;
      *(&v318[0] + 1) = v183;
      v185 = swift_allocObject();
      v186 = v318[1];
      *(v185 + 16) = v318[0];
      *(v185 + 32) = v186;
      *(v185 + 48) = v318[2];
      *(v185 + 64) = *&v318[3];
      sub_217751DE8();
      sub_2171F0738(&v320, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      *&v320 = v185;
      *(&v321 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v322 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    }

    v326 = v320;
    v327 = v321;
    v328 = v322;
    if (*(&v324 + 1))
    {
      sub_2171F0738(&v323, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v319[0] + 1) == 1)
  {
    v187 = 0;
  }

  else
  {
    v187 = *&v319[0];
  }

  if (*(&v319[0] + 1) == 1)
  {
    v188 = 0;
  }

  else
  {
    v188 = *(&v319[0] + 1);
  }

  *&v318[0] = v182;
  BYTE8(v318[0]) = 0;
  v318[1] = v326;
  v318[2] = v327;
  *&v318[3] = v328;
  *(&v318[3] + 1) = v187;
  *&v318[4] = v188;
  *(&v318[4] + 1) = *(&v319[1] + 1);
  *&v318[5] = *&v319[2];
  *(&v318[5] + 8) = v319[7];
  sub_2171FB568(*&v319[0], *(&v319[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB242F8, &qword_21775D6C0);
  v129 = v313;
  v126 = v316;
LABEL_118:
  sub_21733BBDC(v318, v295, &qword_27CB255B0, &unk_217793B50);
  v189 = v314[7];
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v190 = &qword_27CB24AB0;
    v191 = &qword_217759088;
    v192 = v332;
  }

  else
  {
    sub_21726A630(v332, v319, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v332);
    if (*&v319[1])
    {
      v331 = 0;
      v330 = 0u;
      v329 = 0u;
      sub_2172E94A8(v318, v128, v129, &v329);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v319, &qword_27CB24278, &unk_217759070);
      goto LABEL_124;
    }

    v190 = &qword_27CB24270;
    v191 = &unk_21775D640;
    v192 = v319;
  }

  sub_2171F0738(v192, v190, v191);
  memset(v318, 0, 104);
LABEL_124:
  sub_21733BBDC(v318, v296, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v193 = &qword_27CB24AB0;
    v194 = &qword_217759088;
    v195 = v332;
  }

  else
  {
    sub_21726A630(&v332[16], v319, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v332);
    if (*&v319[1])
    {
      v331 = 0;
      v330 = 0u;
      v329 = 0u;
      sub_2172E94A8(v318, v128, v129, &v329);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v319, &qword_27CB24278, &unk_217759070);
      goto LABEL_130;
    }

    v193 = &qword_27CB24270;
    v194 = &unk_21775D640;
    v195 = v319;
  }

  sub_2171F0738(v195, v193, v194);
  memset(v318, 0, 104);
LABEL_130:
  sub_21733BBDC(v318, v297, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v196 = &qword_27CB24AB0;
    v197 = &qword_217759088;
    v198 = v332;
  }

  else
  {
    sub_21726A630(&v332[32], v319, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v332);
    if (*&v319[1])
    {
      v331 = 0;
      v330 = 0u;
      v329 = 0u;
      sub_2172E94A8(v318, v128, v129, &v329);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v319, &qword_27CB24278, &unk_217759070);
      goto LABEL_136;
    }

    v196 = &qword_27CB24270;
    v197 = &unk_21775D640;
    v198 = v319;
  }

  sub_2171F0738(v198, v196, v197);
  memset(v318, 0, 104);
LABEL_136:
  sub_21733BBDC(v318, v298, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v199 = &qword_27CB24AB0;
    v200 = &qword_217759088;
    v201 = v332;
LABEL_142:
    sub_2171F0738(v201, v199, v200);
    memset(v318, 0, 104);
    goto LABEL_155;
  }

  sub_21726A630(&v332[48], v319, &qword_27CB242C0, &unk_21775D650);
  v202 = sub_21728463C(v332);
  if (!*&v319[1])
  {
    v199 = &qword_27CB242C0;
    v200 = &unk_21775D650;
    v201 = v319;
    goto LABEL_142;
  }

  v331 = 0;
  v330 = 0u;
  v329 = 0u;
  MEMORY[0x28223BE20](v202, v203);
  *(&v274 - 2) = v129;
  *(&v274 - 1) = v128;
  v204 = v317;
  v206 = sub_2172E4A28(sub_21733CEE8, (&v274 - 4), v205, sub_217276258, &qword_27CB24790, &unk_21775A220);
  v317 = v204;
  sub_21726A630(&v329, &v323, &qword_27CB24188, &dword_217758930);
  if (*(&v324 + 1))
  {
    sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    v326 = v323;
    v327 = v324;
    v328 = v325;
  }

  else
  {
    v322 = 0;
    v321 = 0u;
    v320 = 0u;
    v207 = *&v319[4];
    if (*&v319[4])
    {
      v208 = *(&v319[3] + 1);
      sub_2172CA838(v128, &v318[1]);
      *&v318[0] = v208;
      *(&v318[0] + 1) = v207;
      v209 = swift_allocObject();
      v210 = v318[1];
      *(v209 + 16) = v318[0];
      *(v209 + 32) = v210;
      *(v209 + 48) = v318[2];
      *(v209 + 64) = *&v318[3];
      sub_217751DE8();
      sub_2171F0738(&v320, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      *&v320 = v209;
      *(&v321 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v322 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    }

    v326 = v320;
    v327 = v321;
    v328 = v322;
    if (*(&v324 + 1))
    {
      sub_2171F0738(&v323, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v319[0] + 1) == 1)
  {
    v211 = 0;
  }

  else
  {
    v211 = *&v319[0];
  }

  if (*(&v319[0] + 1) == 1)
  {
    v212 = 0;
  }

  else
  {
    v212 = *(&v319[0] + 1);
  }

  *&v318[0] = v206;
  BYTE8(v318[0]) = 0;
  v318[1] = v326;
  v318[2] = v327;
  *&v318[3] = v328;
  *(&v318[3] + 1) = v211;
  *&v318[4] = v212;
  *(&v318[4] + 1) = *(&v319[1] + 1);
  *&v318[5] = *&v319[2];
  *(&v318[5] + 8) = v319[7];
  sub_2171FB568(*&v319[0], *(&v319[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB242C8, &unk_217758970);
  v129 = v313;
  v126 = v316;
LABEL_155:
  sub_21733BBDC(v318, v299, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v213 = &qword_27CB24AB0;
    v214 = &qword_217759088;
    v215 = v332;
  }

  else
  {
    sub_21726A630(&v332[64], v319, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v332);
    if (*&v319[1])
    {
      v331 = 0;
      v330 = 0u;
      v329 = 0u;
      sub_2172E94A8(v318, v128, v129, &v329);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v319, &qword_27CB24278, &unk_217759070);
      goto LABEL_161;
    }

    v213 = &qword_27CB24270;
    v214 = &unk_21775D640;
    v215 = v319;
  }

  sub_2171F0738(v215, v213, v214);
  memset(v318, 0, 104);
LABEL_161:
  sub_21733BBDC(v318, v300, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v216 = &qword_27CB24AB0;
    v217 = &qword_217759088;
    v218 = v332;
  }

  else
  {
    sub_21726A630(v333, v319, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v332);
    if (*&v319[1])
    {
      v331 = 0;
      v330 = 0u;
      v329 = 0u;
      sub_2172E94A8(v318, v128, v129, &v329);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v319, &qword_27CB24278, &unk_217759070);
      goto LABEL_167;
    }

    v216 = &qword_27CB24270;
    v217 = &unk_21775D640;
    v218 = v319;
  }

  sub_2171F0738(v218, v216, v217);
  memset(v318, 0, 104);
LABEL_167:
  sub_21733BBDC(v318, v301, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v219 = &qword_27CB24AB0;
    v220 = &qword_217759088;
    v221 = v332;
  }

  else
  {
    sub_21726A630(v334, v319, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v332);
    if (*&v319[1])
    {
      v331 = 0;
      v330 = 0u;
      v329 = 0u;
      sub_2172E94A8(v318, v128, v129, &v329);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v319, &qword_27CB24278, &unk_217759070);
      goto LABEL_173;
    }

    v219 = &qword_27CB24270;
    v220 = &unk_21775D640;
    v221 = v319;
  }

  sub_2171F0738(v221, v219, v220);
  memset(v318, 0, 104);
LABEL_173:
  sub_21733BBDC(v318, v302, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v222 = &qword_27CB24AB0;
    v223 = &qword_217759088;
    v224 = v332;
LABEL_179:
    sub_2171F0738(v224, v222, v223);
    memset(v318, 0, 104);
    goto LABEL_192;
  }

  sub_21726A630(&v335, v319, &qword_27CB24280, &unk_21775D680);
  v225 = sub_21728463C(v332);
  v227 = *&v319[1];
  if (!*&v319[1])
  {
    v222 = &qword_27CB24280;
    v223 = &unk_21775D680;
    v224 = v319;
    goto LABEL_179;
  }

  v331 = 0;
  v330 = 0u;
  v329 = 0u;
  MEMORY[0x28223BE20](v225, v226);
  *(&v274 - 2) = v129;
  *(&v274 - 1) = v128;
  sub_217751DE8();
  v228 = v317;
  v229 = sub_2172E4A28(sub_21733CED0, (&v274 - 4), v227, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v317 = v228;

  sub_21726A630(&v329, &v323, &qword_27CB24188, &dword_217758930);
  if (*(&v324 + 1))
  {
    sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    v326 = v323;
    v327 = v324;
    v328 = v325;
  }

  else
  {
    v322 = 0;
    v321 = 0u;
    v320 = 0u;
    v230 = *&v319[4];
    if (*&v319[4])
    {
      v231 = *(&v319[3] + 1);
      sub_2172CA838(v128, &v318[1]);
      *&v318[0] = v231;
      *(&v318[0] + 1) = v230;
      v232 = swift_allocObject();
      v233 = v318[1];
      *(v232 + 16) = v318[0];
      *(v232 + 32) = v233;
      *(v232 + 48) = v318[2];
      *(v232 + 64) = *&v318[3];
      sub_217751DE8();
      sub_2171F0738(&v320, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      *&v320 = v232;
      *(&v321 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v322 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    }

    v326 = v320;
    v327 = v321;
    v328 = v322;
    if (*(&v324 + 1))
    {
      sub_2171F0738(&v323, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v319[0] + 1) == 1)
  {
    v234 = 0;
  }

  else
  {
    v234 = *&v319[0];
  }

  if (*(&v319[0] + 1) == 1)
  {
    v235 = 0;
  }

  else
  {
    v235 = *(&v319[0] + 1);
  }

  *&v318[0] = v229;
  BYTE8(v318[0]) = 0;
  v318[1] = v326;
  v318[2] = v327;
  *&v318[3] = v328;
  *(&v318[3] + 1) = v234;
  *&v318[4] = v235;
  *(&v318[4] + 1) = *(&v319[1] + 1);
  *&v318[5] = *&v319[2];
  *(&v318[5] + 8) = v319[7];
  sub_2171FB568(*&v319[0], *(&v319[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB24288, &qword_217758F80);
  v129 = v313;
  v126 = v316;
LABEL_192:
  sub_21733BBDC(v318, v303, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v236 = &qword_27CB24AB0;
    v237 = &qword_217759088;
    v238 = v332;
  }

  else
  {
    sub_21726A630(&v336, v319, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v332);
    if (*&v319[1])
    {
      v331 = 0;
      v330 = 0u;
      v329 = 0u;
      sub_2172E94A8(v318, v128, v129, &v329);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v319, &qword_27CB24278, &unk_217759070);
      goto LABEL_198;
    }

    v236 = &qword_27CB24270;
    v237 = &unk_21775D640;
    v238 = v319;
  }

  sub_2171F0738(v238, v236, v237);
  memset(v318, 0, 104);
LABEL_198:
  sub_21733BBDC(v318, v304, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v239 = &qword_27CB24AB0;
    v240 = &qword_217759088;
    v241 = v332;
LABEL_204:
    sub_2171F0738(v241, v239, v240);
    memset(v318, 0, 104);
    goto LABEL_217;
  }

  sub_21726A630(&v337, v319, &qword_27CB242B0, &unk_21775D630);
  v242 = sub_21728463C(v332);
  if (!*&v319[1])
  {
    v239 = &qword_27CB242B0;
    v240 = &unk_21775D630;
    v241 = v319;
    goto LABEL_204;
  }

  v331 = 0;
  v330 = 0u;
  v329 = 0u;
  MEMORY[0x28223BE20](v242, v243);
  *(&v274 - 2) = v129;
  *(&v274 - 1) = v128;
  v244 = v317;
  v246 = sub_2172E4A28(sub_21733CEB8, (&v274 - 4), v245, sub_217276278, &qword_27CB24808, &qword_217758D90);
  v317 = v244;
  sub_21726A630(&v329, &v323, &qword_27CB24188, &dword_217758930);
  if (*(&v324 + 1))
  {
    sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    v326 = v323;
    v327 = v324;
    v328 = v325;
  }

  else
  {
    v322 = 0;
    v321 = 0u;
    v320 = 0u;
    v247 = *&v319[4];
    if (*&v319[4])
    {
      v248 = *(&v319[3] + 1);
      sub_2172CA838(v128, &v318[1]);
      *&v318[0] = v248;
      *(&v318[0] + 1) = v247;
      v249 = swift_allocObject();
      v250 = v318[1];
      *(v249 + 16) = v318[0];
      *(v249 + 32) = v250;
      *(v249 + 48) = v318[2];
      *(v249 + 64) = *&v318[3];
      sub_217751DE8();
      sub_2171F0738(&v320, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      *&v320 = v249;
      *(&v321 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v322 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    }

    v326 = v320;
    v327 = v321;
    v328 = v322;
    if (*(&v324 + 1))
    {
      sub_2171F0738(&v323, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v319[0] + 1) == 1)
  {
    v251 = 0;
  }

  else
  {
    v251 = *&v319[0];
  }

  if (*(&v319[0] + 1) == 1)
  {
    v252 = 0;
  }

  else
  {
    v252 = *(&v319[0] + 1);
  }

  *&v318[0] = v246;
  BYTE8(v318[0]) = 0;
  v318[1] = v326;
  v318[2] = v327;
  *&v318[3] = v328;
  *(&v318[3] + 1) = v251;
  *&v318[4] = v252;
  *(&v318[4] + 1) = *(&v319[1] + 1);
  *&v318[5] = *&v319[2];
  *(&v318[5] + 8) = v319[7];
  sub_2171FB568(*&v319[0], *(&v319[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB242B8, &unk_21777EEA0);
  v129 = v313;
  v126 = v316;
LABEL_217:
  sub_21733BBDC(v318, v305, &qword_27CB25338, &unk_21775D3E0);
  sub_21726A630(v126 + v189, v332, &qword_27CB24AB0, &qword_217759088);
  if (v332[2] == 1)
  {
    v253 = &qword_27CB24AB0;
    v254 = &qword_217759088;
    v255 = v332;
LABEL_223:
    sub_2171F0738(v255, v253, v254);
    memset(v318, 0, 104);
    v260 = v311;
    goto LABEL_236;
  }

  sub_21726A630(&v338, v319, &qword_27CB242E0, &unk_21777EEE0);
  v256 = sub_21728463C(v332);
  v258 = *&v319[1];
  if (!*&v319[1])
  {
    v253 = &qword_27CB242E0;
    v254 = &unk_21777EEE0;
    v255 = v319;
    goto LABEL_223;
  }

  v331 = 0;
  v330 = 0u;
  v329 = 0u;
  MEMORY[0x28223BE20](v256, v257);
  *(&v274 - 2) = v129;
  *(&v274 - 1) = v128;
  sub_217751DE8();
  v259 = sub_2172E4A28(sub_21733B5A4, (&v274 - 4), v258, sub_2172761F8, &qword_27CB24748, &unk_217758CD0);

  sub_21726A630(&v329, &v323, &qword_27CB24188, &dword_217758930);
  if (*(&v324 + 1))
  {
    sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    v326 = v323;
    v327 = v324;
    v328 = v325;
    v260 = v311;
  }

  else
  {
    v322 = 0;
    v321 = 0u;
    v320 = 0u;
    v261 = *&v319[4];
    if (*&v319[4])
    {
      v262 = *(&v319[3] + 1);
      sub_2172CA838(v128, &v318[1]);
      *&v318[0] = v262;
      *(&v318[0] + 1) = v261;
      v263 = swift_allocObject();
      v264 = v318[1];
      *(v263 + 16) = v318[0];
      *(v263 + 32) = v264;
      *(v263 + 48) = v318[2];
      *(v263 + 64) = *&v318[3];
      sub_217751DE8();
      sub_2171F0738(&v320, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
      *&v320 = v263;
      *(&v321 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v322 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v329, &qword_27CB24188, &dword_217758930);
    }

    v260 = v311;
    v326 = v320;
    v327 = v321;
    v328 = v322;
    if (*(&v324 + 1))
    {
      sub_2171F0738(&v323, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v319[0] + 1) == 1)
  {
    v265 = 0;
  }

  else
  {
    v265 = *&v319[0];
  }

  if (*(&v319[0] + 1) == 1)
  {
    v266 = 0;
  }

  else
  {
    v266 = *(&v319[0] + 1);
  }

  *&v318[0] = v259;
  BYTE8(v318[0]) = 0;
  v318[1] = v326;
  v318[2] = v327;
  *&v318[3] = v328;
  *(&v318[3] + 1) = v265;
  *&v318[4] = v266;
  *(&v318[4] + 1) = *(&v319[1] + 1);
  *&v318[5] = *&v319[2];
  *(&v318[5] + 8) = v319[7];
  sub_2171FB568(*&v319[0], *(&v319[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB242E8, &unk_21775D6B0);
  v126 = v316;
LABEL_236:
  sub_21733BBDC(v318, v306, &qword_27CB255A8, &unk_21775D450);
  if (*(v126 + v314[8]) == 1)
  {
    v267 = 0;
  }

  else
  {
    v267 = sub_217751DE8();
  }

  v268 = v315;
  *(v315 + *(v260 + 176)) = v267;
  v332[3] = v260;
  v332[4] = &protocol witness table for ArtistPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v332);
  sub_21733CAD0();
  Artist.init(propertyProvider:)(v332, v307);

  sub_2171F0738(v312, &qword_27CB24728, &qword_217758CB0);
  sub_21733AB9C(v128);
  sub_21733CA78(v126, type metadata accessor for CloudArtist);
  return sub_21733CA78(v268, type metadata accessor for ArtistPropertyProvider);
}

uint64_t sub_217301D0C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v83 = v3;
  v84 = v2;
  v86 = v4;
  v6 = v5;
  v88 = type metadata accessor for CloudCurator(0);
  v7 = *(*(v88 - 1) + 64);
  MEMORY[0x28223BE20](v88, v8);
  v89 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CuratorPropertyProvider();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE7FE8 != -1)
  {
    swift_once();
  }

  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0;
  sub_2172DB00C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v16 = v15[10];
  v17 = v6 + v15[9];
  v18 = *(v17 + 8);
  v85 = *v17;
  v80 = v17;
  LODWORD(v78) = *(v17 + 16);
  v19 = *(v6 + v16 + 8);
  v77 = *(v6 + v16);
  v20 = v15[13];
  v75 = *(v6 + v15[12]);
  v21 = *(v6 + v20);
  v22 = *(v6 + v15[14]);
  v23 = *(v6 + v15[15]);
  sub_2172A497C(v118);
  memcpy(v14, v118, 0x221uLL);
  *(v14 + 35) = xmmword_2177586D0;
  *(v14 + 36) = 0u;
  *(v14 + 37) = 0u;
  *(v14 + 38) = 0u;
  v14[632] = 2;
  memcpy(v14 + 640, v118, 0x221uLL);
  v24 = *(v10 + 44);
  v25 = sub_2177516D8();
  v81 = v24;
  __swift_storeEnumTagSinglePayload(&v14[v24], 1, 1, v25);
  v87 = v10;
  v26 = &v14[*(v10 + 48)];
  *(v26 + 96) = 0;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v82 = v26;
  v27 = qword_280BE7AA8;
  v79 = v18;
  sub_217751DE8();
  v76 = v19;
  v28 = v21;
  v29 = v75;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v27 != -1)
  {
    swift_once();
  }

  v30 = qword_280C023C8;
  if (qword_280C023C8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v73 = sub_217752D28();

    v30 = v73;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v31 = v87;
  *&v14[v87[14]] = v30;
  v32 = &v14[v31[17]];
  memcpy(&v14[v31[15]], v117, 0x161uLL);
  v33 = &v14[v31[16]];
  v34 = v79;
  *v33 = v85;
  *(v33 + 1) = v34;
  v33[16] = v78;
  v35 = v76;
  *v32 = v77;
  *(v32 + 1) = v35;
  *&v14[v31[18]] = v29;
  *&v14[v31[19]] = v28;
  *&v14[v31[20]] = v22;
  *&v14[v31[21]] = v23;
  v36 = v89;
  sub_21733CAD0();
  v37 = &v36[v88[5]];
  memcpy(v107, v37, sizeof(v107));
  memcpy(v108, v37, sizeof(v108));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v108) == 1)
  {
    v38 = v118;
  }

  else
  {
    memcpy(v106, v108, 0x1B8uLL);
    memcpy(v90, v107, 0x1B8uLL);
    sub_21726A630(v90, v105, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v92);
    memcpy(v91, v106, sizeof(v91));
    sub_2171F0738(v91, &qword_27CB243F0, &qword_21775D690);
    memcpy(v105, v92, 0x221uLL);
    nullsub_1(v105, v39);
    v38 = v105;
  }

  memcpy(v106, v38, sizeof(v106));
  v85 = v6;
  memcpy(v105, v14, 0x221uLL);
  sub_2171F0738(v105, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v14, v106, 0x221uLL);
  *(v14 + 69) = *(v37 + 55);
  if (*(v37 + 64))
  {
    v40 = *(v37 + 62);
    v41 = *(v37 + 63);
    v42 = *(v37 + 61);
    v78 = *(v37 + 60);
    v79 = v40;
    v44 = *(v37 + 58);
    v43 = *(v37 + 59);
    v46 = *(v37 + 56);
    v45 = *(v37 + 57);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v46 = 0;
    v44 = 0;
    v43 = 0;
    v78 = 0;
    v79 = 0;
    v42 = 0;
    v41 = 0;
    v45 = 1;
  }

  v47 = *(v14 + 36);
  v104[0] = *(v14 + 35);
  v104[1] = v47;
  v48 = *(v14 + 38);
  v104[2] = *(v14 + 37);
  v104[3] = v48;
  sub_217751DE8();
  sub_2171F0738(v104, &qword_27CB24B70, &unk_217759460);
  *(v14 + 70) = v46;
  *(v14 + 71) = v45;
  *(v14 + 72) = v44;
  *(v14 + 73) = v43;
  v49 = v79;
  *(v14 + 74) = v78;
  *(v14 + 75) = v42;
  *(v14 + 76) = v49;
  *(v14 + 77) = v41;
  *(v14 + 78) = *(v37 + 65);
  v50 = *(v80 + 8);
  v51 = *(v80 + 16);
  v92[0] = *v80;
  v92[1] = v50;
  LOBYTE(v92[2]) = v51;
  LOBYTE(v90[0]) = v37[528];
  sub_217751DE8();
  sub_217751DE8();
  sub_21763E734(v92, v90, v91);

  v14[632] = v91[0];
  v52 = *(v37 + 68);
  *(v14 + 149) = *(v37 + 67);
  *(v14 + 150) = v52;
  v53 = *(type metadata accessor for CloudCurator.Attributes(0) + 40);
  sub_217751DE8();
  sub_21733B95C(&v37[v53], &v14[v81], &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(&v89[v88[6]], v91, &qword_27CB24498, &unk_217758960);
  if (v91[2] == 1)
  {
    sub_2171F0738(v91, &qword_27CB24498, &unk_217758960);
    v55 = v85;
    v54 = v86;
LABEL_19:
    memset(v90, 0, 104);
    goto LABEL_32;
  }

  sub_21726A630(v91, v92, &qword_27CB242C0, &unk_21775D650);
  v56 = sub_2172831A8(v91);
  v58 = v92[2];
  v55 = v85;
  v54 = v86;
  v59 = v84;
  if (!v92[2])
  {
    sub_2171F0738(v92, &qword_27CB242C0, &unk_21775D650);
    goto LABEL_19;
  }

  v103 = 0;
  memset(v102, 0, sizeof(v102));
  MEMORY[0x28223BE20](v56, v57);
  *(&v74 - 2) = v59;
  *(&v74 - 1) = v54;
  sub_217751DE8();
  v60 = sub_2172E4A28(sub_21733CEE8, (&v74 - 4), v58, sub_217276258, &qword_27CB24790, &unk_21775A220);

  sub_21726A630(v102, &v96, &qword_27CB24188, &dword_217758930);
  if (*(&v97 + 1))
  {
    sub_2171F0738(v102, &qword_27CB24188, &dword_217758930);
    v99 = v96;
    v100 = v97;
    v101 = v98;
  }

  else
  {
    v95 = 0;
    v94 = 0u;
    v93 = 0u;
    v61 = v92[8];
    if (v92[8])
    {
      v62 = v92[7];
      sub_2172CA838(v54, &v90[1]);
      *&v90[0] = v62;
      *(&v90[0] + 1) = v61;
      v63 = swift_allocObject();
      v64 = v90[1];
      *(v63 + 16) = v90[0];
      *(v63 + 32) = v64;
      *(v63 + 48) = v90[2];
      *(v63 + 64) = *&v90[3];
      sub_217751DE8();
      sub_2171F0738(&v93, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v102, &qword_27CB24188, &dword_217758930);
      *&v93 = v63;
      *(&v94 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v95 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v102, &qword_27CB24188, &dword_217758930);
    }

    v99 = v93;
    v100 = v94;
    v101 = v95;
    if (*(&v97 + 1))
    {
      sub_2171F0738(&v96, &qword_27CB24188, &dword_217758930);
    }
  }

  if (v92[1] == 1)
  {
    v65 = 0;
  }

  else
  {
    v65 = v92[0];
  }

  if (v92[1] == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = v92[1];
  }

  *&v90[0] = v60;
  BYTE8(v90[0]) = 0;
  v90[1] = v99;
  v90[2] = v100;
  *&v90[3] = v101;
  *(&v90[3] + 1) = v65;
  *&v90[4] = v66;
  *(&v90[4] + 1) = v92[3];
  *&v90[5] = v92[4];
  *(&v90[5] + 1) = v92[14];
  *&v90[6] = v92[15];
  sub_2171FB568(v92[0], v92[1]);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v92, &qword_27CB242C8, &unk_217758970);
LABEL_32:
  sub_21733BBDC(v90, v82, &qword_27CB25330, &unk_21775E9B0);
  v67 = v89;
  v68 = v88[8];
  v69 = *&v89[v68];
  if (v69 == 1)
  {
    v70 = 0;
  }

  else
  {
    v70 = *&v89[v68];
  }

  v71 = v87;
  *&v14[v87[13]] = v70;
  v92[3] = v71;
  v92[4] = &protocol witness table for CuratorPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v92);
  sub_21733CAD0();
  sub_217221020(v69);
  Curator.init(propertyProvider:)(v92, v83);

  sub_2171F0738(v55, &qword_27CB24490, &qword_21775A250);
  sub_21733CA78(v67, type metadata accessor for CloudCurator);
  sub_21733AB9C(v54);
  return sub_21733CA78(v14, type metadata accessor for CuratorPropertyProvider);
}

uint64_t sub_217302770(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v80 = v3;
  v81 = v2;
  v83 = v4;
  v6 = v5;
  v85 = type metadata accessor for CloudRadioShow(0);
  v7 = *(*(v85 - 1) + 64);
  MEMORY[0x28223BE20](v85, v8);
  v86 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RadioShowPropertyProvider();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE61F8 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0;
  sub_2172DADE8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v16 = v15[10];
  v17 = v6 + v15[9];
  v18 = *(v17 + 8);
  v82 = *v17;
  LODWORD(v76) = *(v17 + 16);
  v19 = *(v6 + v16 + 8);
  v75 = *(v6 + v16);
  v20 = v15[13];
  v73 = *(v6 + v15[12]);
  v21 = *(v6 + v20);
  v22 = *(v6 + v15[14]);
  v23 = *(v6 + v15[15]);
  sub_2172A497C(v115);
  memcpy(v14, v115, 0x221uLL);
  *(v14 + 35) = xmmword_2177586D0;
  *(v14 + 36) = 0u;
  *(v14 + 37) = 0u;
  *(v14 + 38) = 0u;
  memcpy(v14 + 648, v115, 0x221uLL);
  v24 = *(v10 + 44);
  v25 = sub_2177516D8();
  v78 = v24;
  __swift_storeEnumTagSinglePayload(&v14[v24], 1, 1, v25);
  v84 = v10;
  v26 = &v14[*(v10 + 48)];
  *(v26 + 96) = 0;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v79 = v26;
  v27 = qword_280BE3578;
  v77 = v18;
  sub_217751DE8();
  v74 = v19;
  v28 = v21;
  v29 = v73;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v27 != -1)
  {
    swift_once();
  }

  v30 = qword_280C01FB8;
  if (qword_280C01FB8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v72 = sub_217752D28();

    v30 = v72;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v31 = v84;
  *&v14[v84[14]] = v30;
  v32 = &v14[v31[17]];
  memcpy(&v14[v31[15]], v114, 0x161uLL);
  v33 = &v14[v31[16]];
  v34 = v77;
  *v33 = v82;
  *(v33 + 1) = v34;
  v33[16] = v76;
  v35 = v74;
  *v32 = v75;
  *(v32 + 1) = v35;
  *&v14[v31[18]] = v29;
  *&v14[v31[19]] = v28;
  *&v14[v31[20]] = v22;
  *&v14[v31[21]] = v23;
  v36 = v86;
  sub_21733CAD0();
  v37 = &v36[v85[5]];
  memcpy(v104, v37, sizeof(v104));
  memcpy(v105, v37, sizeof(v105));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v105) == 1)
  {
    v38 = v115;
  }

  else
  {
    memcpy(v103, v105, 0x1B8uLL);
    memcpy(v87, v104, 0x1B8uLL);
    sub_21726A630(v87, v102, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v89);
    memcpy(v88, v103, sizeof(v88));
    sub_2171F0738(v88, &qword_27CB243F0, &qword_21775D690);
    memcpy(v102, v89, 0x221uLL);
    nullsub_1(v102, v39);
    v38 = v102;
  }

  memcpy(v103, v38, sizeof(v103));
  v82 = v6;
  memcpy(v102, v14, 0x221uLL);
  sub_2171F0738(v102, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v14, v103, 0x221uLL);
  *(v14 + 69) = *(v37 + 55);
  if (*(v37 + 64))
  {
    v40 = *(v37 + 62);
    v41 = *(v37 + 63);
    v42 = *(v37 + 61);
    v76 = *(v37 + 60);
    v77 = v40;
    v44 = *(v37 + 58);
    v43 = *(v37 + 59);
    v46 = *(v37 + 56);
    v45 = *(v37 + 57);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v46 = 0;
    v44 = 0;
    v43 = 0;
    v76 = 0;
    v77 = 0;
    v42 = 0;
    v41 = 0;
    v45 = 1;
  }

  v47 = *(v14 + 36);
  v101[0] = *(v14 + 35);
  v101[1] = v47;
  v48 = *(v14 + 38);
  v101[2] = *(v14 + 37);
  v101[3] = v48;
  sub_217751DE8();
  sub_2171F0738(v101, &qword_27CB24B70, &unk_217759460);
  *(v14 + 70) = v46;
  *(v14 + 71) = v45;
  *(v14 + 72) = v44;
  *(v14 + 73) = v43;
  v49 = v77;
  *(v14 + 74) = v76;
  *(v14 + 75) = v42;
  *(v14 + 76) = v49;
  *(v14 + 77) = v41;
  *(v14 + 78) = *(v37 + 65);
  v50 = *(v37 + 68);
  *(v14 + 79) = *(v37 + 67);
  *(v14 + 80) = v50;
  v51 = *(v37 + 70);
  *(v14 + 150) = *(v37 + 69);
  *(v14 + 151) = v51;
  v52 = *(type metadata accessor for CloudRadioShow.Attributes(0) + 44);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v37[v52], &v14[v78], &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(&v86[v85[6]], v88, &qword_27CB25640, &qword_217764750);
  if (v88[2] == 1)
  {
    sub_2171F0738(v88, &qword_27CB25640, &qword_217764750);
    v54 = v82;
    v53 = v83;
LABEL_19:
    memset(v87, 0, 104);
    goto LABEL_32;
  }

  sub_21726A630(v88, v89, &qword_27CB242C0, &unk_21775D650);
  v55 = sub_21733BB04(v88);
  v57 = v89[2];
  v54 = v82;
  v53 = v83;
  v58 = v81;
  if (!v89[2])
  {
    sub_2171F0738(v89, &qword_27CB242C0, &unk_21775D650);
    goto LABEL_19;
  }

  v100 = 0;
  memset(v99, 0, sizeof(v99));
  MEMORY[0x28223BE20](v55, v56);
  *(&v73 - 2) = v58;
  *(&v73 - 1) = v53;
  sub_217751DE8();
  v59 = sub_2172E4A28(sub_21733CEE8, (&v73 - 4), v57, sub_217276258, &qword_27CB24790, &unk_21775A220);

  sub_21726A630(v99, &v93, &qword_27CB24188, &dword_217758930);
  if (*(&v94 + 1))
  {
    sub_2171F0738(v99, &qword_27CB24188, &dword_217758930);
    v96 = v93;
    v97 = v94;
    v98 = v95;
  }

  else
  {
    v92 = 0;
    v91 = 0u;
    v90 = 0u;
    v60 = v89[8];
    if (v89[8])
    {
      v61 = v89[7];
      sub_2172CA838(v53, &v87[1]);
      *&v87[0] = v61;
      *(&v87[0] + 1) = v60;
      v62 = swift_allocObject();
      v63 = v87[1];
      *(v62 + 16) = v87[0];
      *(v62 + 32) = v63;
      *(v62 + 48) = v87[2];
      *(v62 + 64) = *&v87[3];
      sub_217751DE8();
      sub_2171F0738(&v90, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v99, &qword_27CB24188, &dword_217758930);
      *&v90 = v62;
      *(&v91 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v92 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v99, &qword_27CB24188, &dword_217758930);
    }

    v96 = v90;
    v97 = v91;
    v98 = v92;
    if (*(&v94 + 1))
    {
      sub_2171F0738(&v93, &qword_27CB24188, &dword_217758930);
    }
  }

  if (v89[1] == 1)
  {
    v64 = 0;
  }

  else
  {
    v64 = v89[0];
  }

  if (v89[1] == 1)
  {
    v65 = 0;
  }

  else
  {
    v65 = v89[1];
  }

  *&v87[0] = v59;
  BYTE8(v87[0]) = 0;
  v87[1] = v96;
  v87[2] = v97;
  *&v87[3] = v98;
  *(&v87[3] + 1) = v64;
  *&v87[4] = v65;
  *(&v87[4] + 1) = v89[3];
  *&v87[5] = v89[4];
  *(&v87[5] + 1) = v89[14];
  *&v87[6] = v89[15];
  sub_2171FB568(v89[0], v89[1]);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v89, &qword_27CB242C8, &unk_217758970);
LABEL_32:
  sub_21733BBDC(v87, v79, &qword_27CB25330, &unk_21775E9B0);
  v66 = v86;
  v67 = v85[8];
  v68 = *&v86[v67];
  if (v68 == 1)
  {
    v69 = 0;
  }

  else
  {
    v69 = *&v86[v67];
  }

  v70 = v84;
  *&v14[v84[13]] = v69;
  v89[3] = v70;
  v89[4] = &protocol witness table for RadioShowPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v89);
  sub_21733CAD0();
  sub_217221020(v68);
  RadioShow.init(propertyProvider:)(v89, v80);

  sub_2171F0738(v54, &qword_27CB247C0, &unk_21779AA10);
  sub_21733CA78(v66, type metadata accessor for CloudRadioShow);
  sub_21733AB9C(v53);
  return sub_21733CA78(v14, type metadata accessor for RadioShowPropertyProvider);
}

uint64_t sub_21730319C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v93 = v3;
  v94 = v2;
  v5 = v4;
  v92 = v6;
  v97 = type metadata accessor for CloudRecordLabel(0);
  v7 = *(*(v97 - 1) + 64);
  MEMORY[0x28223BE20](v97, v8);
  v98 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = 0;
  v10 = type metadata accessor for RecordLabelPropertyProvider();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6348 != -1)
  {
    swift_once();
  }

  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0;
  sub_2172DB678();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v16 = v15[10];
  v17 = v5 + v15[9];
  v18 = *(v17 + 8);
  *&v88 = *v17;
  v87 = *(v17 + 16);
  v19 = *(v5 + v16 + 8);
  v86 = *(v5 + v16);
  v20 = *(v5 + v15[12]);
  v21 = *(v5 + v15[13]);
  v22 = v15[15];
  v23 = *(v5 + v15[14]);
  v96 = v5;
  v24 = *(v5 + v22);
  sub_2172A497C(v127);
  memcpy(v14, v127, 0x221uLL);
  memcpy(v14 + 600, v127, 0x221uLL);
  v25 = v10[11];
  v26 = sub_2177516D8();
  v89 = v25;
  __swift_storeEnumTagSinglePayload(&v14[v25], 1, 1, v26);
  v27 = &v14[v10[12]];
  *(v27 + 96) = 0;
  *(v27 + 64) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  v90 = v27;
  v95 = v10;
  v28 = &v14[v10[13]];
  *(v28 + 96) = 0;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  v91 = v28;
  v29 = qword_27CB23D38;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_27CB8A2E0;
  if (qword_27CB8A2E0 >> 62)
  {
    v82 = qword_27CB8A2E0 & 0xFFFFFFFFFFFFFF8;
    if (qword_27CB8A2E0 < 0)
    {
      v82 = qword_27CB8A2E0;
    }

    v84 = v82;
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v83 = sub_217752D28();

    v30 = v83;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v31 = v95;
  *&v14[v95[15]] = v30;
  v32 = v31;
  v33 = &v14[v31[18]];
  memcpy(&v14[v31[16]], v126, 0x161uLL);
  v34 = &v14[v32[17]];
  *v34 = v88;
  *(v34 + 1) = v18;
  v34[16] = v87;
  *v33 = v86;
  *(v33 + 1) = v19;
  *&v14[v32[19]] = v20;
  *&v14[v32[20]] = v21;
  *&v14[v32[21]] = v23;
  *&v14[v32[22]] = v24;
  v35 = v98;
  sub_21733CAD0();
  v36 = &v35[v97[5]];
  memcpy(v116, v36, sizeof(v116));
  memcpy(v117, v36, sizeof(v117));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v117) == 1)
  {
    v37 = v127;
  }

  else
  {
    memcpy(v115, v117, 0x1B8uLL);
    memcpy(v99, v116, 0x1B8uLL);
    sub_21726A630(v99, v114, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v101);
    memcpy(v100, v115, sizeof(v100));
    sub_2171F0738(v100, &qword_27CB243F0, &qword_21775D690);
    memcpy(v114, v101, 0x221uLL);
    nullsub_1(v114, v38);
    v37 = v114;
  }

  memcpy(v115, v37, sizeof(v115));
  memcpy(v114, v14, 0x221uLL);
  sub_2171F0738(v114, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v14, v115, 0x221uLL);
  v39 = *(v36 + 59);
  *(v14 + 69) = *(v36 + 60);
  *(v14 + 70) = *(v36 + 61);
  if (v39)
  {
    v40 = *(v36 + 55);
    v41 = *(v36 + 58);
    v88 = *(v36 + 28);
    sub_217751DE8();
    sub_217751DE8();
    v42 = v88;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0uLL;
  }

  *(v14 + 71) = v40;
  *(v14 + 36) = v42;
  *(v14 + 74) = v41;
  v43 = *(v36 + 63);
  *(v14 + 144) = *(v36 + 62);
  *(v14 + 145) = v43;
  v44 = *(type metadata accessor for CloudRecordLabel.Attributes(0) + 36);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v36[v44], &v14[v89], &unk_27CB277C0, &qword_217758DC0);
  v45 = v97[7];
  sub_21726A630(&v98[v45], v101, &qword_27CB24A98, &unk_217759060);
  if (v101[2] == 1)
  {
    v46 = &qword_27CB24A98;
    v47 = &unk_217759060;
    v48 = v101;
LABEL_19:
    sub_2171F0738(v48, v46, v47);
    memset(v99, 0, 104);
    goto LABEL_32;
  }

  sub_21726A630(v101, v100, &qword_27CB24270, &unk_21775D640);
  v49 = sub_217284540(v101);
  v51 = v100[2];
  if (!v100[2])
  {
    v46 = &qword_27CB24270;
    v47 = &unk_21775D640;
    v48 = v100;
    goto LABEL_19;
  }

  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  MEMORY[0x28223BE20](v49, v50);
  v52 = v94;
  *(&v84 - 2) = v93;
  *(&v84 - 1) = v52;
  sub_217751DE8();
  v53 = v85;
  v54 = sub_2172E4A28(sub_21733CE88, (&v84 - 4), v51, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
  v85 = v53;

  sub_21726A630(&v111, &v105, &qword_27CB24188, &dword_217758930);
  if (*(&v106 + 1))
  {
    sub_2171F0738(&v111, &qword_27CB24188, &dword_217758930);
    v108 = v105;
    v109 = v106;
    v110 = v107;
  }

  else
  {
    v104 = 0;
    v103 = 0u;
    v102 = 0u;
    v55 = v100[8];
    if (v100[8])
    {
      v56 = v100[7];
      sub_2172CA838(v94, &v99[1]);
      *&v99[0] = v56;
      *(&v99[0] + 1) = v55;
      v57 = swift_allocObject();
      v58 = v99[1];
      *(v57 + 16) = v99[0];
      *(v57 + 32) = v58;
      *(v57 + 48) = v99[2];
      *(v57 + 64) = *&v99[3];
      sub_217751DE8();
      sub_2171F0738(&v102, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v111, &qword_27CB24188, &dword_217758930);
      *&v102 = v57;
      *(&v103 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v104 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v111, &qword_27CB24188, &dword_217758930);
    }

    v108 = v102;
    v109 = v103;
    v110 = v104;
    if (*(&v106 + 1))
    {
      sub_2171F0738(&v105, &qword_27CB24188, &dword_217758930);
    }
  }

  if (v100[1] == 1)
  {
    v59 = 0;
  }

  else
  {
    v59 = v100[0];
  }

  if (v100[1] == 1)
  {
    v60 = 0;
  }

  else
  {
    v60 = v100[1];
  }

  *&v99[0] = v54;
  BYTE8(v99[0]) = 0;
  v99[1] = v108;
  v99[2] = v109;
  *&v99[3] = v110;
  *(&v99[3] + 1) = v59;
  *&v99[4] = v60;
  *(&v99[4] + 1) = v100[3];
  *&v99[5] = v100[4];
  *(&v99[5] + 1) = v100[14];
  *&v99[6] = v100[15];
  sub_2171FB568(v100[0], v100[1]);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v100, &qword_27CB24278, &unk_217759070);
LABEL_32:
  sub_21733BBDC(v99, v90, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(&v98[v45], v101, &qword_27CB24A98, &unk_217759060);
  if (v101[2] == 1)
  {
    v61 = &qword_27CB24A98;
    v62 = &unk_217759060;
    v63 = v101;
LABEL_38:
    sub_2171F0738(v63, v61, v62);
    memset(v99, 0, 104);
    v70 = v95;
    v69 = v96;
    goto LABEL_51;
  }

  sub_21726A630(&v101[16], v100, &qword_27CB24270, &unk_21775D640);
  v64 = sub_217284540(v101);
  v66 = v100[2];
  if (!v100[2])
  {
    v61 = &qword_27CB24270;
    v62 = &unk_21775D640;
    v63 = v100;
    goto LABEL_38;
  }

  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  MEMORY[0x28223BE20](v64, v65);
  v67 = v94;
  *(&v84 - 2) = v93;
  *(&v84 - 1) = v67;
  sub_217751DE8();
  v68 = sub_2172E4A28(sub_21733CE88, (&v84 - 4), v66, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);

  sub_21726A630(&v111, &v105, &qword_27CB24188, &dword_217758930);
  if (*(&v106 + 1))
  {
    sub_2171F0738(&v111, &qword_27CB24188, &dword_217758930);
    v108 = v105;
    v109 = v106;
    v110 = v107;
    v70 = v95;
    v69 = v96;
  }

  else
  {
    v104 = 0;
    v103 = 0u;
    v102 = 0u;
    v71 = v100[8];
    if (v100[8])
    {
      v72 = v100[7];
      sub_2172CA838(v94, &v99[1]);
      *&v99[0] = v72;
      *(&v99[0] + 1) = v71;
      v73 = swift_allocObject();
      v74 = v99[1];
      *(v73 + 16) = v99[0];
      *(v73 + 32) = v74;
      *(v73 + 48) = v99[2];
      *(v73 + 64) = *&v99[3];
      sub_217751DE8();
      sub_2171F0738(&v102, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v111, &qword_27CB24188, &dword_217758930);
      *&v102 = v73;
      *(&v103 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v104 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v111, &qword_27CB24188, &dword_217758930);
    }

    v70 = v95;
    v69 = v96;
    v108 = v102;
    v109 = v103;
    v110 = v104;
    if (*(&v106 + 1))
    {
      sub_2171F0738(&v105, &qword_27CB24188, &dword_217758930);
    }
  }

  if (v100[1] == 1)
  {
    v75 = 0;
  }

  else
  {
    v75 = v100[0];
  }

  if (v100[1] == 1)
  {
    v76 = 0;
  }

  else
  {
    v76 = v100[1];
  }

  *&v99[0] = v68;
  BYTE8(v99[0]) = 0;
  v99[1] = v108;
  v99[2] = v109;
  *&v99[3] = v110;
  *(&v99[3] + 1) = v75;
  *&v99[4] = v76;
  *(&v99[4] + 1) = v100[3];
  *&v99[5] = v100[4];
  *(&v99[5] + 1) = v100[14];
  *&v99[6] = v100[15];
  sub_2171FB568(v100[0], v100[1]);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v100, &qword_27CB24278, &unk_217759070);
LABEL_51:
  sub_21733BBDC(v99, v91, &qword_27CB25318, &qword_2177657C0);
  v77 = v98;
  v78 = v97[8];
  v79 = *&v98[v78];
  if (v79 == 1)
  {
    v80 = 0;
  }

  else
  {
    v80 = *&v98[v78];
  }

  *&v14[*(v70 + 56)] = v80;
  v101[3] = v70;
  v101[4] = &protocol witness table for RecordLabelPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v101);
  sub_21733CAD0();
  sub_217221020(v79);
  RecordLabel.init(propertyProvider:)(v101, v92);

  sub_2171F0738(v69, &qword_27CB24778, &unk_217758D00);
  sub_21733AB9C(v94);
  sub_21733CA78(v77, type metadata accessor for CloudRecordLabel);
  return sub_21733CA78(v14, type metadata accessor for RecordLabelPropertyProvider);
}

uint64_t sub_217303E60(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v413 = v2;
  v409 = v3;
  v5 = v4;
  v407 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v392 = v368 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  v371 = *(v11 - 8);
  v12 = *(v371 + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v423 = v368 - v14;
  v15 = type metadata accessor for PreviewAsset();
  v420 = *(v15 - 8);
  v421 = v15;
  v16 = *(v420 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v422 = v368 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = type metadata accessor for SongPropertyProvider();
  v19 = *(*(v418 - 1) + 64);
  MEMORY[0x28223BE20](v418, v20);
  v424 = v368 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25688, &qword_21775D6D8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v370 = v368 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v368 - v28;
  v415 = 0;
  v30 = type metadata accessor for CloudSong(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30, v32);
  v368[1] = v368 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v386 = v368 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = v368 - v39;
  sub_21733CAD0();
  if (qword_280BEB138 != -1)
  {
    swift_once();
  }

  v41 = &v40[*(v30 + 20)];
  v416 = type metadata accessor for CloudSong.Attributes(0);
  v417 = v41;
  v419 = &v41[v416[31]];
  memcpy(__dst, v419, sizeof(__dst));
  sub_2172DA110();
  v406 = v30;
  v414 = *(v30 + 24);
  sub_21726A630(&v40[v414], v449, &qword_27CB24A78, &qword_217759040);
  v412 = v40;
  if (v449[2] == 1)
  {
    sub_2171F0738(v449, &qword_27CB24A78, &qword_217759040);
    v42 = v424;
  }

  else
  {
    sub_21726A630(&v449[64], v446, &qword_27CB242E0, &unk_21777EEE0);
    sub_217284234(v449);
    v42 = v424;
    if (v446[2])
    {
      sub_217751DE8();
      sub_2171F0738(v446, &qword_27CB242E8, &unk_21775D6B0);
      sub_2172CE6FC();

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
      if (__swift_getEnumTagSinglePayload(v29, 1, v43) == 1)
      {
        v44 = &qword_27CB25688;
        v45 = &qword_21775D6D8;
      }

      else
      {
        swift_getKeyPath();
        sub_21735F954();

        v44 = &qword_27CB24748;
        v45 = &unk_217758CD0;
      }

      v46 = v29;
    }

    else
    {
      v44 = &qword_27CB242E0;
      v45 = &unk_21777EEE0;
      v46 = v446;
    }

    sub_2171F0738(v46, v44, v45);
  }

  memcpy(v445, v457, sizeof(v445));
  v411 = v458;
  memcpy(v444, v459, sizeof(v444));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v48 = v47[10];
  v49 = (v5 + v47[9]);
  v50 = v49[1];
  v380 = *v49;
  v379 = *(v49 + 16);
  v51 = *(v5 + v48 + 8);
  v378 = *(v5 + v48);
  v52 = v47[13];
  v410 = *(v5 + v47[12]);
  v53 = *(v5 + v52);
  v54 = v47[14];
  v55 = v47[15];
  v369 = v47;
  v374 = *(v5 + v54);
  v375 = v53;
  v408 = v5;
  v376 = *(v5 + v55);
  sub_2172A497C(v446);
  memcpy(v42, v446, 0x221uLL);
  sub_21733B708(v447);
  memcpy(v42 + 552, v447, 0x161uLL);
  v56 = v418;
  v57 = v418[8];
  v58 = sub_2177516D8();
  v381 = v57;
  __swift_storeEnumTagSinglePayload(&v42[v57], 1, 1, v58);
  v382 = v56[12];
  v59 = &v42[v382];
  v59[4] = 0;
  *v59 = 512;
  v373 = v56[14];
  v424[v373] = 2;
  v60 = &v424[v56[16]];
  *v60 = 0;
  v372 = v60;
  v60[8] = 1;
  v61 = &v424[v56[18]];
  *v61 = xmmword_2177586D0;
  *(v61 + 1) = 0u;
  *(v61 + 2) = 0u;
  *(v61 + 3) = 0u;
  v383 = v61;
  v424[v56[21]] = 2;
  v62 = &v424[v56[25]];
  *v62 = 0;
  *(v62 + 1) = 0;
  v62[16] = 0;
  v63 = &v424[v56[26]];
  v63[1] = 0;
  v384 = v63;
  v385 = v63 + 1;
  *v63 = 0;
  v63[2] = 1;
  memcpy(&v424[v56[27]], v446, 0x221uLL);
  v64 = &v424[v56[32]];
  *(v64 + 14) = 0;
  *(v64 + 5) = 0u;
  *(v64 + 6) = 0u;
  *(v64 + 3) = 0u;
  *(v64 + 4) = 0u;
  *(v64 + 1) = 0u;
  *(v64 + 2) = 0u;
  v387 = v64;
  *v64 = 0u;
  v65 = v56[34];
  v66 = sub_2177517D8();
  v388 = v65;
  __swift_storeEnumTagSinglePayload(&v424[v65], 1, 1, v66);
  v67 = &v424[v56[35]];
  *v67 = 0;
  v67[8] = 1;
  v68 = v56[37];
  sub_21733B710(v448);
  v389 = v68;
  memcpy(&v424[v68], v448, 0xB0uLL);
  v390 = v56[41];
  __swift_storeEnumTagSinglePayload(&v424[v390], 1, 1, v58);
  __swift_storeEnumTagSinglePayload(&v424[v56[43]], 1, 1, v66);
  v424[v56[44]] = 3;
  v424[v56[45]] = 2;
  v424[v56[47]] = 2;
  v424[v56[48]] = 5;
  v424[v56[49]] = 7;
  v69 = &v424[v56[50]];
  *v69 = 0;
  v69[8] = 1;
  __swift_storeEnumTagSinglePayload(&v424[v56[51]], 1, 1, v66);
  __swift_storeEnumTagSinglePayload(&v424[v56[52]], 1, 1, v66);
  v70 = &v424[v56[53]];
  *v70 = 0;
  v70[8] = 1;
  v424[v56[54]] = 2;
  v71 = v424;
  v424[v56[55]] = 10;
  v72 = &v71[v56[56]];
  *v72 = 0;
  v72[8] = 1;
  v73 = &v71[v56[57]];
  *(v73 + 96) = 0;
  *(v73 + 64) = 0u;
  *(v73 + 80) = 0u;
  *(v73 + 32) = 0u;
  *(v73 + 48) = 0u;
  *v73 = 0u;
  *(v73 + 16) = 0u;
  v391 = v73;
  v74 = &v71[v56[58]];
  *(v74 + 96) = 0;
  *(v74 + 64) = 0u;
  *(v74 + 80) = 0u;
  *(v74 + 32) = 0u;
  *(v74 + 48) = 0u;
  *v74 = 0u;
  *(v74 + 16) = 0u;
  v393 = v74;
  v75 = &v71[v56[59]];
  *(v75 + 96) = 0;
  *(v75 + 64) = 0u;
  *(v75 + 80) = 0u;
  *(v75 + 32) = 0u;
  *(v75 + 48) = 0u;
  *v75 = 0u;
  *(v75 + 16) = 0u;
  v395 = v75;
  v76 = &v71[v56[60]];
  *(v76 + 6) = 0u;
  *(v76 + 7) = 0u;
  *(v76 + 4) = 0u;
  *(v76 + 5) = 0u;
  *(v76 + 2) = 0u;
  *(v76 + 3) = 0u;
  *v76 = 0u;
  *(v76 + 1) = 0u;
  v394 = v76;
  v77 = &v71[v56[61]];
  *(v77 + 96) = 0;
  *(v77 + 64) = 0u;
  *(v77 + 80) = 0u;
  *(v77 + 32) = 0u;
  *(v77 + 48) = 0u;
  *v77 = 0u;
  *(v77 + 16) = 0u;
  v396 = v77;
  v78 = &v71[v56[62]];
  *(v78 + 96) = 0;
  *(v78 + 64) = 0u;
  *(v78 + 80) = 0u;
  *(v78 + 32) = 0u;
  *(v78 + 48) = 0u;
  *v78 = 0u;
  *(v78 + 16) = 0u;
  v397 = v78;
  v79 = &v71[v56[63]];
  *(v79 + 6) = 0u;
  *(v79 + 7) = 0u;
  *(v79 + 4) = 0u;
  *(v79 + 5) = 0u;
  *(v79 + 2) = 0u;
  *(v79 + 3) = 0u;
  *v79 = 0u;
  *(v79 + 1) = 0u;
  v401 = v79;
  v80 = &v71[v56[64]];
  *(v80 + 6) = 0u;
  *(v80 + 7) = 0u;
  *(v80 + 4) = 0u;
  *(v80 + 5) = 0u;
  *(v80 + 2) = 0u;
  *(v80 + 3) = 0u;
  *v80 = 0u;
  *(v80 + 1) = 0u;
  v398 = v80;
  v81 = &v71[v56[65]];
  *(v81 + 96) = 0;
  *(v81 + 64) = 0u;
  *(v81 + 80) = 0u;
  *(v81 + 32) = 0u;
  *(v81 + 48) = 0u;
  *v81 = 0u;
  *(v81 + 16) = 0u;
  v399 = v81;
  v82 = &v71[v56[66]];
  *(v82 + 96) = 0;
  *(v82 + 64) = 0u;
  *(v82 + 80) = 0u;
  *(v82 + 32) = 0u;
  *(v82 + 48) = 0u;
  *v82 = 0u;
  *(v82 + 16) = 0u;
  v400 = v82;
  v83 = &v71[v56[67]];
  *(v83 + 96) = 0;
  *(v83 + 64) = 0u;
  *(v83 + 80) = 0u;
  *(v83 + 32) = 0u;
  *(v83 + 48) = 0u;
  *v83 = 0u;
  *(v83 + 16) = 0u;
  v402 = v83;
  v84 = &v71[v56[68]];
  *(v84 + 96) = 0;
  *(v84 + 64) = 0u;
  *(v84 + 80) = 0u;
  *(v84 + 32) = 0u;
  *(v84 + 48) = 0u;
  *v84 = 0u;
  *(v84 + 16) = 0u;
  v404 = v84;
  v405 = v56[71];
  *&v71[v405] = 0;
  v377 = v51;
  sub_217751DE8();
  sub_217751DE8();
  v85 = v375;
  sub_217751DE8();
  v86 = v374;
  sub_217751DE8();
  v87 = v376;
  sub_217751DE8();
  sub_217751DE8();
  v88 = sub_217536388();
  if (v88 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    v89 = sub_217752D28();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v89 = v88;
  }

  v90 = v412;

  v91 = v418;
  *&v71[v418[72]] = v89;
  v92 = &v71[v91[75]];
  *v92 = 0;
  *(v92 + 1) = 0;
  v93 = &v71[v91[73]];
  memcpy(v93, v445, 0x108uLL);
  *(v93 + 33) = v411;
  v403 = v93;
  memcpy(v93 + 272, v444, 0x51uLL);
  v94 = &v71[v91[74]];
  *v94 = v380;
  *(v94 + 1) = v50;
  v94[16] = v379;
  v95 = v377;
  *v92 = v378;
  *(v92 + 1) = v95;
  *&v71[v91[76]] = v410;
  *&v71[v91[77]] = v85;
  *&v71[v91[78]] = v86;
  *&v71[v91[79]] = v87;
  sub_21726A630(&v90[v414], v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    v96 = &qword_27CB24A78;
    v97 = &qword_217759040;
    v98 = v449;
LABEL_20:
    sub_2171F0738(v98, v96, v97);
    sub_21733CAD0();
    goto LABEL_21;
  }

  sub_21726A630(&v449[64], v441, &qword_27CB242E0, &unk_21777EEE0);
  sub_217284234(v449);
  if (!v441[2])
  {
    v96 = &qword_27CB242E0;
    v97 = &unk_21777EEE0;
    v98 = v441;
    goto LABEL_20;
  }

  sub_217751DE8();
  sub_2171F0738(v441, &qword_27CB242E8, &unk_21775D6B0);
  v99 = v370;
  sub_2172CE6FC();

  if (__swift_getEnumTagSinglePayload(v99, 1, v369) == 1)
  {
    v96 = &qword_27CB25688;
    v97 = &qword_21775D6D8;
    v98 = v99;
    goto LABEL_20;
  }

  sub_21733CAD0();
  sub_2171F0738(v99, &qword_27CB24748, &unk_217758CD0);
  sub_21733CE30();
LABEL_21:
  sub_21733BC28();
  memcpy(v442, v417, sizeof(v442));
  memcpy(v443, v417, sizeof(v443));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v443) == 1)
  {
    v100 = v446;
  }

  else
  {
    memcpy(v449, v443, 0x1B8uLL);
    memcpy(v427, v442, 0x1B8uLL);
    sub_21726A630(v427, v441, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v440);
    memcpy(v428, v449, 0x1B8uLL);
    sub_2171F0738(v428, &qword_27CB243F0, &qword_21775D690);
    memcpy(v449, v440, 0x221uLL);
    nullsub_1(v449, v101);
    v100 = v449;
  }

  memcpy(v441, v100, 0x221uLL);
  v102 = v418;
  v103 = v418[9];
  v104 = &v71[v418[10]];
  v105 = v418[11];
  memcpy(v440, v71, 0x221uLL);
  sub_2171F0738(v440, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v71, v441, 0x221uLL);
  v107 = v416;
  v106 = v417;
  *(v71 + 114) = *(v417 + 55);
  v108 = *(v106 + 58);
  *(v71 + 920) = *(v106 + 28);
  *(v71 + 117) = v108;
  v109 = v107[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v106[v109], &v424[v381], &unk_27CB277C0, &qword_217758DC0);
  *&v424[v103] = *&v106[v107[18]];
  v110 = &v106[v107[8]];
  v111 = *(v110 + 1);
  *v104 = *v110;
  *(v104 + 1) = v111;
  KeyPath = swift_getKeyPath();
  v113 = swift_getKeyPath();
  v386 = v111;
  sub_217751DE8();
  sub_217751DE8();
  v114 = sub_2172E3DDC(v106, KeyPath, v113);

  *&v424[v105] = v114;
  v115 = v419;
  v116 = *(v419 + 1);
  sub_21735D9D8();
  v118 = v117;
  if (v116)
  {
    v119 = 3;
  }

  else
  {
    v119 = 0;
  }

  v120 = *(v115 + 1);
  sub_21735D9D8();
  v122 = v121 | (v120 != 0);
  v123 = *(v115 + 1);
  sub_21735D9D8();
  v125 = v124 | (v123 != 0);
  v126 = &v424[v102[13]];
  sub_21735D9D8();
  if (v118)
  {
    v128 = 3;
  }

  else
  {
    v128 = v119;
  }

  v129 = v424;
  v130 = 256;
  if ((v122 & 1) == 0)
  {
    v130 = 0;
  }

  v131 = v130 | v128;
  v132 = 0x10000;
  if ((v125 & 1) == 0)
  {
    v132 = 0;
  }

  v133 = &v424[v382];
  *v133 = v131 | v132;
  v133[4] = (v127 & 1) != 0;
  v134 = &v106[v107[11]];
  v135 = *(v134 + 1);
  *v126 = *v134;
  *(v126 + 1) = v135;
  v136 = &v106[v107[12]];
  if (*(v136 + 1))
  {
    v137 = *v136;
    sub_217751DE8();
    v138 = sub_217752DC8();
    if (v138 == 1)
    {
      v139 = 1;
    }

    else
    {
      v139 = 2;
    }

    if (!v138)
    {
      v139 = 0;
    }

    v129[v373] = v139;
  }

  else
  {
    sub_217751DE8();
  }

  v140 = v417;
  v141 = &v129[v418[15]];
  v142 = v416;
  v143 = &v417[v416[13]];
  v144 = *v143;
  LOBYTE(v143) = v143[8];
  *v141 = v144;
  v141[8] = v143;
  v145 = &v140[v142[14]];
  if ((v145[8] & 1) == 0)
  {
    v146 = *v145 / 1000.0;
    v147 = v372;
    *v372 = v146;
    *(v147 + 8) = 0;
  }

  v149 = v416;
  v148 = v417;
  *&v129[v418[17]] = *&v417[v416[15]];
  v150 = &v148[v149[16]];
  if (*(v150 + 8))
  {
    v151 = *(v150 + 7);
    v410 = *(v150 + 6);
    v152 = *(v150 + 4);
    v153 = *(v150 + 5);
    v154 = *(v150 + 3);
    v381 = *(v150 + 2);
    v382 = v152;
    v156 = *v150;
    v155 = *(v150 + 1);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v156 = 0;
    v381 = 0;
    v382 = 0;
    v154 = 0;
    v153 = 0;
    v410 = 0;
    v151 = 0;
    v155 = 1;
  }

  v158 = v418[19];
  v157 = v418[20];
  v159 = v383;
  v160 = v383[1];
  v439[0] = *v383;
  v439[1] = v160;
  v161 = v383[3];
  v439[2] = v383[2];
  v439[3] = v161;
  sub_217751DE8();
  sub_2171F0738(v439, &qword_27CB24B70, &unk_217759460);
  *v159 = v156;
  v159[1] = v155;
  v162 = v382;
  v159[2] = v381;
  v159[3] = v154;
  v159[4] = v162;
  v159[5] = v153;
  v159[6] = v410;
  v159[7] = v151;
  v163 = v416;
  v164 = v417;
  v165 = v424;
  *&v424[v158] = *&v417[v416[17]];
  *&v165[v157] = *&v164[v163[19]];
  v166 = v164[v163[20]] | (v164[v163[21]] << 8) | 0x20000;
  v167 = v384;
  v168 = *v384;
  v169 = v384[1];
  v170 = v384[2];
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B290(v168, v169, v170);
  *v167 = v166;
  v171 = v385;
  *v385 = 0;
  v171[1] = 0;
  v172 = swift_getKeyPath();
  v173 = swift_getKeyPath();
  if (v164[v163[22]] == 2)
  {
    v174 = v164[v163[23]];
  }

  else
  {
    v174 = v164[v163[22]];
  }

  v410 = v172;
  v175 = sub_2172E3DE0(v164, v172, v173);
  if (v175)
  {
    v383 = v173;
    LODWORD(v384) = v174;
    v176 = *(v175 + 16);
    v385 = v175;
    v177 = (v175 + 32);
    v178 = (v175 + 32);
    while (2)
    {
      if (v176)
      {
        switch(*v178)
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
            v179 = sub_217753058();

            ++v178;
            --v176;
            if ((v179 & 1) == 0)
            {
              continue;
            }

            LOBYTE(v180) = 1;
            break;
          default:

            LOBYTE(v180) = 1;
            break;
        }

        v181 = v384;
      }

      else
      {
        v180 = v385[2];
        v181 = v384;
        while (2)
        {
          if (v180)
          {
            switch(*v177)
            {
              case 8:

                LOBYTE(v180) = 1;
                break;
              default:
                v182 = sub_217753058();

                ++v177;
                --v180;
                if ((v182 & 1) == 0)
                {
                  continue;
                }

                LOBYTE(v180) = 1;
                break;
            }
          }

          else
          {
          }

          break;
        }
      }

      break;
    }

    v165 = v424;
    if (v181 == 2)
    {
      LOBYTE(v174) = v180;
    }

    else
    {
      LOBYTE(v174) = (v180 | v181) & 1;
    }
  }

  else
  {
  }

  v183 = v418;
  v184 = v419;
  v165[v418[22]] = v174;
  v185 = *(v184 + 1);
  v186 = v417;
  sub_21735D9D8();
  v187 = v183[24];
  v188 = &v165[v183[23]];
  v189 = v183[29];
  v190 = &v165[v183[28]];
  v191 = v183[30];
  v192 = v183[31];
  v165[v183[46]] = v193 & 1 | (v185 != 0);
  v194 = &v165[v189];
  v195 = v416;
  v196 = &v186[v416[25]];
  v197 = *(v196 + 1);
  *v188 = *v196;
  *(v188 + 1) = v197;
  v165[v187] = v186[v195[24]];
  v198 = &v165[v191];
  v199 = &v186[v195[26]];
  v200 = *v199;
  LOBYTE(v199) = v199[8];
  *v190 = v200;
  v190[8] = v199;
  v201 = &v186[v195[27]];
  v202 = *(v201 + 1);
  *v194 = *v201;
  *(v194 + 1) = v202;
  v203 = &v186[v195[28]];
  v204 = *v203;
  LOBYTE(v203) = v203[8];
  *v198 = v204;
  v198[8] = v203;
  *&v165[v192] = *&v186[v195[30]];
  memcpy(v437, v184, sizeof(v437));
  memcpy(v438, v387, sizeof(v438));
  memcpy(v387, v184, 0x78uLL);
  sub_21726A630(v437, v449, &qword_27CB244D0, &unk_21775D620);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v438, &qword_27CB244D0, &unk_21775D620);
  v205 = *&v186[v195[32]];
  if (v205)
  {
    v206 = *(v205 + 16);
    v207 = MEMORY[0x277D84F90];
    if (v206)
    {
      *&v434 = MEMORY[0x277D84F90];
      sub_217276450();
      v207 = v434;
      v208 = v205 + ((*(v371 + 80) + 32) & ~*(v371 + 80));
      v419 = *(v371 + 72);
      do
      {
        v209 = v423;
        sub_21726A630(v208, v423, &qword_27CB24A68, &qword_217759030);
        memcpy(v429, v209, 0x1B8uLL);
        memcpy(v430, v209, 0x1B8uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v430) == 1)
        {
          v210 = v446;
        }

        else
        {
          memcpy(v449, v430, 0x1B8uLL);
          memcpy(v425, v429, 0x1B8uLL);
          sub_21726A630(v425, v428, &qword_27CB243F0, &qword_21775D690);
          CloudAttribute<A>.convertToArtwork()(v427);
          memcpy(v426, v449, 0x1B8uLL);
          sub_2171F0738(v426, &qword_27CB243F0, &qword_21775D690);
          memcpy(v428, v427, 0x221uLL);
          nullsub_1(v428, v211);
          v210 = v428;
        }

        memcpy(v449, v210, 0x221uLL);
        v212 = type metadata accessor for CloudPreviewAsset();
        v214 = v421;
        v213 = v422;
        v215 = v423;
        sub_21726A630(v423 + *(v212 + 20), &v422[*(v421 + 20)], &unk_27CB277C0, &qword_217758DC0);
        sub_21726A630(v215 + *(v212 + 24), v213 + *(v214 + 24), &unk_27CB277C0, &qword_217758DC0);
        sub_2171F0738(v215, &qword_27CB24A68, &qword_217759030);
        memcpy(v213, v449, 0x221uLL);
        *&v434 = v207;
        v216 = *(v207 + 16);
        if (v216 >= *(v207 + 24) >> 1)
        {
          sub_217276450();
          v207 = v434;
        }

        *(v207 + 16) = v216 + 1;
        v217 = v207 + ((*(v420 + 80) + 32) & ~*(v420 + 80)) + *(v420 + 72) * v216;
        sub_21733CE30();
        v208 += v419;
        --v206;
      }

      while (v206);
    }
  }

  else
  {
    v207 = 0;
  }

  v218 = v424;
  v219 = v418[33];
  v220 = v418[36];
  v221 = v418[39];
  v423 = v418[38];
  v222 = &v424[v221];
  v223 = &v424[v418[40]];
  v224 = &v424[v418[42]];
  *&v424[v219] = v207;
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v225 = type metadata accessor for CloudFormatter();
  __swift_project_value_buffer(v225, qword_280BE8918);
  v226 = v416;
  v227 = v417;
  v228 = &v417[v416[33]];
  v229 = *v228;
  v230 = *(v228 + 1);
  LOBYTE(v449[0]) = 0;
  v231 = v392;
  CloudFormatter.date(from:withFormat:)(v230, v449, v392);
  sub_21733BBDC(v231, &v218[v388], &qword_27CB241C0, &qword_217759480);
  v218[v220] = v386 != 0;
  memcpy(v427, &v227[v226[34]], 0xB0uLL);
  v232 = v389;
  memcpy(v428, &v218[v389], 0xB0uLL);
  sub_21726A630(v427, v449, &qword_27CB25690, &qword_21775D720);
  sub_2171F0738(v428, &qword_27CB25690, &qword_21775D720);
  memcpy(&v218[v232], v427, 0xB0uLL);
  v218[v423] = v227[v226[35]];
  v233 = &v227[v226[29]];
  v234 = *(v233 + 1);
  *v222 = *v233;
  *(v222 + 1) = v234;
  v235 = &v227[v226[36]];
  v236 = *v235;
  LOBYTE(v235) = v235[8];
  *v223 = v236;
  v223[8] = v235;
  v237 = v226[37];
  sub_217751DE8();
  sub_21733B95C(&v227[v237], &v218[v390], &unk_27CB277C0, &qword_217758DC0);
  v238 = &v227[v226[38]];
  v239 = *(v238 + 1);
  *v224 = *v238;
  *(v224 + 1) = v239;
  v240 = v412;
  v241 = v414;
  sub_21726A630(&v412[v414], v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    sub_217751DE8();
    sub_2171F0738(v449, &qword_27CB24A78, &qword_217759040);
    v242 = v409;
LABEL_87:
    memset(v429, 0, 104);
    goto LABEL_100;
  }

  sub_21726A630(v449, v430, &qword_27CB24270, &unk_21775D640);
  sub_217751DE8();
  v243 = sub_217284234(v449);
  v242 = v409;
  if (!*&v430[1])
  {
    sub_2171F0738(v430, &qword_27CB24270, &unk_21775D640);
    goto LABEL_87;
  }

  memset(v426, 0, 40);
  MEMORY[0x28223BE20](v243, v244);
  v368[-2] = v413;
  v368[-1] = v242;
  v245 = v415;
  v247 = sub_2172E4A28(sub_21733CE88, &v368[-4], v246, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
  v415 = v245;
  sub_21726A630(v426, &v434, &qword_27CB24188, &dword_217758930);
  if (*(&v435 + 1))
  {
    sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    v425[0] = v434;
    v425[1] = v435;
    *&v425[2] = v436;
  }

  else
  {
    v433 = 0;
    v432 = 0u;
    v431 = 0u;
    v248 = *&v430[4];
    if (*&v430[4])
    {
      v249 = *(&v430[3] + 1);
      sub_2172CA838(v242, &v429[1]);
      *&v429[0] = v249;
      *(&v429[0] + 1) = v248;
      v250 = swift_allocObject();
      v251 = v429[1];
      *(v250 + 16) = v429[0];
      *(v250 + 32) = v251;
      *(v250 + 48) = v429[2];
      *(v250 + 64) = *&v429[3];
      sub_217751DE8();
      sub_2171F0738(&v431, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
      *&v431 = v250;
      *(&v432 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v433 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    }

    v425[0] = v431;
    v425[1] = v432;
    *&v425[2] = v433;
    if (*(&v435 + 1))
    {
      sub_2171F0738(&v434, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v430[0] + 1) == 1)
  {
    v252 = 0;
  }

  else
  {
    v252 = *&v430[0];
  }

  if (*(&v430[0] + 1) == 1)
  {
    v253 = 0;
  }

  else
  {
    v253 = *(&v430[0] + 1);
  }

  *&v429[0] = v247;
  BYTE8(v429[0]) = 0;
  v429[1] = v425[0];
  v429[2] = v425[1];
  *&v429[3] = *&v425[2];
  *(&v429[3] + 1) = v252;
  *&v429[4] = v253;
  *(&v429[4] + 1) = *(&v430[1] + 1);
  *&v429[5] = *&v430[2];
  *(&v429[5] + 8) = v430[7];
  sub_2171FB568(*&v430[0], *(&v430[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v430, &qword_27CB24278, &unk_217759070);
  v241 = v414;
LABEL_100:
  sub_21733BBDC(v429, v391, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    v254 = &qword_27CB24A78;
    v255 = &qword_217759040;
    v256 = v449;
LABEL_106:
    sub_2171F0738(v256, v254, v255);
    memset(v429, 0, 104);
    goto LABEL_119;
  }

  sub_21726A630(&v449[16], v430, &qword_27CB243B0, &unk_21775D670);
  v257 = sub_217284234(v449);
  if (!*&v430[1])
  {
    v254 = &qword_27CB243B0;
    v255 = &unk_21775D670;
    v256 = v430;
    goto LABEL_106;
  }

  memset(v426, 0, 40);
  MEMORY[0x28223BE20](v257, v258);
  v368[-2] = v413;
  v368[-1] = v242;
  v259 = v415;
  v261 = sub_2172E4A28(sub_21733CF18, &v368[-4], v260, sub_2172764A8, &qword_27CB24768, &qword_217758CF0);
  v415 = v259;
  sub_21726A630(v426, &v434, &qword_27CB24188, &dword_217758930);
  if (*(&v435 + 1))
  {
    sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    v425[0] = v434;
    v425[1] = v435;
    *&v425[2] = v436;
  }

  else
  {
    v433 = 0;
    v432 = 0u;
    v431 = 0u;
    v262 = *&v430[4];
    if (*&v430[4])
    {
      v263 = *(&v430[3] + 1);
      sub_2172CA838(v242, &v429[1]);
      *&v429[0] = v263;
      *(&v429[0] + 1) = v262;
      v264 = swift_allocObject();
      v265 = v429[1];
      *(v264 + 16) = v429[0];
      *(v264 + 32) = v265;
      *(v264 + 48) = v429[2];
      *(v264 + 64) = *&v429[3];
      sub_217751DE8();
      sub_2171F0738(&v431, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
      *&v431 = v264;
      *(&v432 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v433 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    }

    v425[0] = v431;
    v425[1] = v432;
    *&v425[2] = v433;
    if (*(&v435 + 1))
    {
      sub_2171F0738(&v434, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v430[0] + 1) == 1)
  {
    v266 = 0;
  }

  else
  {
    v266 = *&v430[0];
  }

  if (*(&v430[0] + 1) == 1)
  {
    v267 = 0;
  }

  else
  {
    v267 = *(&v430[0] + 1);
  }

  *&v429[0] = v261;
  BYTE8(v429[0]) = 0;
  v429[1] = v425[0];
  v429[2] = v425[1];
  *&v429[3] = *&v425[2];
  *(&v429[3] + 1) = v266;
  *&v429[4] = v267;
  *(&v429[4] + 1) = *(&v430[1] + 1);
  *&v429[5] = *&v430[2];
  *(&v429[5] + 8) = v430[7];
  sub_2171FB568(*&v430[0], *(&v430[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v430, &qword_27CB243B8, &qword_2177586B0);
  v241 = v414;
LABEL_119:
  sub_21733BBDC(v429, v393, &qword_27CB25320, &unk_21776E020);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    sub_2171F0738(v449, &qword_27CB24A78, &qword_217759040);
    memset(v430, 0, 128);
  }

  else
  {
    sub_21726A630(&v449[48], v430, &qword_27CB255E0, &unk_2177756D0);
    sub_217284234(v449);
  }

  sub_21733BBDC(v430, v394, &qword_27CB255E0, &unk_2177756D0);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    v268 = &qword_27CB24A78;
    v269 = &qword_217759040;
    v270 = v449;
LABEL_128:
    sub_2171F0738(v270, v268, v269);
    memset(v429, 0, 104);
    goto LABEL_141;
  }

  sub_21726A630(&v449[32], v430, &qword_27CB24280, &unk_21775D680);
  v271 = sub_217284234(v449);
  if (!*&v430[1])
  {
    v268 = &qword_27CB24280;
    v269 = &unk_21775D680;
    v270 = v430;
    goto LABEL_128;
  }

  memset(v426, 0, 40);
  MEMORY[0x28223BE20](v271, v272);
  v368[-2] = v413;
  v368[-1] = v242;
  v273 = v415;
  v275 = sub_2172E4A28(sub_21733CED0, &v368[-4], v274, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v415 = v273;
  sub_21726A630(v426, &v434, &qword_27CB24188, &dword_217758930);
  if (*(&v435 + 1))
  {
    sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    v425[0] = v434;
    v425[1] = v435;
    *&v425[2] = v436;
  }

  else
  {
    v433 = 0;
    v432 = 0u;
    v431 = 0u;
    v276 = *&v430[4];
    if (*&v430[4])
    {
      v277 = *(&v430[3] + 1);
      sub_2172CA838(v242, &v429[1]);
      *&v429[0] = v277;
      *(&v429[0] + 1) = v276;
      v278 = swift_allocObject();
      v279 = v429[1];
      *(v278 + 16) = v429[0];
      *(v278 + 32) = v279;
      *(v278 + 48) = v429[2];
      *(v278 + 64) = *&v429[3];
      sub_217751DE8();
      sub_2171F0738(&v431, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
      *&v431 = v278;
      *(&v432 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v433 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    }

    v425[0] = v431;
    v425[1] = v432;
    *&v425[2] = v433;
    if (*(&v435 + 1))
    {
      sub_2171F0738(&v434, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v430[0] + 1) == 1)
  {
    v280 = 0;
  }

  else
  {
    v280 = *&v430[0];
  }

  if (*(&v430[0] + 1) == 1)
  {
    v281 = 0;
  }

  else
  {
    v281 = *(&v430[0] + 1);
  }

  *&v429[0] = v275;
  BYTE8(v429[0]) = 0;
  v429[1] = v425[0];
  v429[2] = v425[1];
  *&v429[3] = *&v425[2];
  *(&v429[3] + 1) = v280;
  *&v429[4] = v281;
  *(&v429[4] + 1) = *(&v430[1] + 1);
  *&v429[5] = *&v430[2];
  *(&v429[5] + 8) = v430[7];
  sub_2171FB568(*&v430[0], *(&v430[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v430, &qword_27CB24288, &qword_217758F80);
  v241 = v414;
LABEL_141:
  sub_21733BBDC(v429, v395, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    v282 = &qword_27CB24A78;
    v283 = &qword_217759040;
    v284 = v449;
LABEL_147:
    sub_2171F0738(v284, v282, v283);
    memset(v429, 0, 104);
    goto LABEL_160;
  }

  sub_21726A630(&v449[64], v430, &qword_27CB242E0, &unk_21777EEE0);
  v285 = sub_217284234(v449);
  v287 = *&v430[1];
  if (!*&v430[1])
  {
    v282 = &qword_27CB242E0;
    v283 = &unk_21777EEE0;
    v284 = v430;
    goto LABEL_147;
  }

  memset(v426, 0, 40);
  MEMORY[0x28223BE20](v285, v286);
  v368[-2] = v413;
  v368[-1] = v242;
  sub_217751DE8();
  v288 = v415;
  v289 = sub_2172E4A28(sub_21733CF30, &v368[-4], v287, sub_2172761F8, &qword_27CB24748, &unk_217758CD0);
  v415 = v288;

  sub_21726A630(v426, &v434, &qword_27CB24188, &dword_217758930);
  if (*(&v435 + 1))
  {
    sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    v425[0] = v434;
    v425[1] = v435;
    *&v425[2] = v436;
  }

  else
  {
    v433 = 0;
    v432 = 0u;
    v431 = 0u;
    v290 = *&v430[4];
    if (*&v430[4])
    {
      v291 = *(&v430[3] + 1);
      sub_2172CA838(v242, &v429[1]);
      *&v429[0] = v291;
      *(&v429[0] + 1) = v290;
      v292 = swift_allocObject();
      v293 = v429[1];
      *(v292 + 16) = v429[0];
      *(v292 + 32) = v293;
      *(v292 + 48) = v429[2];
      *(v292 + 64) = *&v429[3];
      sub_217751DE8();
      sub_2171F0738(&v431, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
      *&v431 = v292;
      *(&v432 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v433 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    }

    v425[0] = v431;
    v425[1] = v432;
    *&v425[2] = v433;
    if (*(&v435 + 1))
    {
      sub_2171F0738(&v434, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v430[0] + 1) == 1)
  {
    v294 = 0;
  }

  else
  {
    v294 = *&v430[0];
  }

  if (*(&v430[0] + 1) == 1)
  {
    v295 = 0;
  }

  else
  {
    v295 = *(&v430[0] + 1);
  }

  *&v429[0] = v289;
  BYTE8(v429[0]) = 0;
  v429[1] = v425[0];
  v429[2] = v425[1];
  *&v429[3] = *&v425[2];
  *(&v429[3] + 1) = v294;
  *&v429[4] = v295;
  *(&v429[4] + 1) = *(&v430[1] + 1);
  *&v429[5] = *&v430[2];
  *(&v429[5] + 8) = v430[7];
  sub_2171FB568(*&v430[0], *(&v430[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v430, &qword_27CB242E8, &unk_21775D6B0);
  v241 = v414;
LABEL_160:
  sub_21733BBDC(v429, v396, &qword_27CB255A8, &unk_21775D450);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    v296 = &qword_27CB24A78;
    v297 = &qword_217759040;
    v298 = v449;
LABEL_166:
    sub_2171F0738(v298, v296, v297);
    memset(v429, 0, 104);
    goto LABEL_179;
  }

  sub_21726A630(&v450, v430, &qword_27CB24280, &unk_21775D680);
  v299 = sub_217284234(v449);
  if (!*&v430[1])
  {
    v296 = &qword_27CB24280;
    v297 = &unk_21775D680;
    v298 = v430;
    goto LABEL_166;
  }

  memset(v426, 0, 40);
  MEMORY[0x28223BE20](v299, v300);
  v368[-2] = v413;
  v368[-1] = v242;
  v301 = v415;
  v303 = sub_2172E4A28(sub_21733CED0, &v368[-4], v302, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v415 = v301;
  sub_21726A630(v426, &v434, &qword_27CB24188, &dword_217758930);
  if (*(&v435 + 1))
  {
    sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    v425[0] = v434;
    v425[1] = v435;
    *&v425[2] = v436;
  }

  else
  {
    v433 = 0;
    v432 = 0u;
    v431 = 0u;
    v304 = *&v430[4];
    if (*&v430[4])
    {
      v305 = *(&v430[3] + 1);
      sub_2172CA838(v242, &v429[1]);
      *&v429[0] = v305;
      *(&v429[0] + 1) = v304;
      v306 = swift_allocObject();
      v307 = v429[1];
      *(v306 + 16) = v429[0];
      *(v306 + 32) = v307;
      *(v306 + 48) = v429[2];
      *(v306 + 64) = *&v429[3];
      sub_217751DE8();
      sub_2171F0738(&v431, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
      *&v431 = v306;
      *(&v432 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v433 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    }

    v425[0] = v431;
    v425[1] = v432;
    *&v425[2] = v433;
    if (*(&v435 + 1))
    {
      sub_2171F0738(&v434, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v430[0] + 1) == 1)
  {
    v308 = 0;
  }

  else
  {
    v308 = *&v430[0];
  }

  if (*(&v430[0] + 1) == 1)
  {
    v309 = 0;
  }

  else
  {
    v309 = *(&v430[0] + 1);
  }

  *&v429[0] = v303;
  BYTE8(v429[0]) = 0;
  v429[1] = v425[0];
  v429[2] = v425[1];
  *&v429[3] = *&v425[2];
  *(&v429[3] + 1) = v308;
  *&v429[4] = v309;
  *(&v429[4] + 1) = *(&v430[1] + 1);
  *&v429[5] = *&v430[2];
  *(&v429[5] + 8) = v430[7];
  sub_2171FB568(*&v430[0], *(&v430[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v430, &qword_27CB24288, &qword_217758F80);
  v241 = v414;
LABEL_179:
  sub_21733BBDC(v429, v397, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    sub_2171F0738(v449, &qword_27CB24A78, &qword_217759040);
    memset(v430, 0, 128);
  }

  else
  {
    sub_21726A630(&v452, v430, &qword_27CB255D0, &qword_21775D4A8);
    sub_217284234(v449);
  }

  sub_21733BBDC(v430, v398, &qword_27CB255D0, &qword_21775D4A8);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    v310 = &qword_27CB24A78;
    v311 = &qword_217759040;
    v312 = v449;
LABEL_188:
    sub_2171F0738(v312, v310, v311);
    memset(v429, 0, 104);
    goto LABEL_201;
  }

  sub_21726A630(&v453, v430, &qword_27CB243B0, &unk_21775D670);
  v313 = sub_217284234(v449);
  if (!*&v430[1])
  {
    v310 = &qword_27CB243B0;
    v311 = &unk_21775D670;
    v312 = v430;
    goto LABEL_188;
  }

  memset(v426, 0, 40);
  MEMORY[0x28223BE20](v313, v314);
  v368[-2] = v413;
  v368[-1] = v242;
  v315 = v415;
  v317 = sub_2172E4A28(sub_21733CF18, &v368[-4], v316, sub_2172764A8, &qword_27CB24768, &qword_217758CF0);
  v415 = v315;
  sub_21726A630(v426, &v434, &qword_27CB24188, &dword_217758930);
  if (*(&v435 + 1))
  {
    sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    v425[0] = v434;
    v425[1] = v435;
    *&v425[2] = v436;
  }

  else
  {
    v433 = 0;
    v432 = 0u;
    v431 = 0u;
    v318 = *&v430[4];
    if (*&v430[4])
    {
      v319 = *(&v430[3] + 1);
      sub_2172CA838(v242, &v429[1]);
      *&v429[0] = v319;
      *(&v429[0] + 1) = v318;
      v320 = swift_allocObject();
      v321 = v429[1];
      *(v320 + 16) = v429[0];
      *(v320 + 32) = v321;
      *(v320 + 48) = v429[2];
      *(v320 + 64) = *&v429[3];
      sub_217751DE8();
      sub_2171F0738(&v431, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
      *&v431 = v320;
      *(&v432 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v433 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    }

    v425[0] = v431;
    v425[1] = v432;
    *&v425[2] = v433;
    if (*(&v435 + 1))
    {
      sub_2171F0738(&v434, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v430[0] + 1) == 1)
  {
    v322 = 0;
  }

  else
  {
    v322 = *&v430[0];
  }

  if (*(&v430[0] + 1) == 1)
  {
    v323 = 0;
  }

  else
  {
    v323 = *(&v430[0] + 1);
  }

  *&v429[0] = v317;
  BYTE8(v429[0]) = 0;
  v429[1] = v425[0];
  v429[2] = v425[1];
  *&v429[3] = *&v425[2];
  *(&v429[3] + 1) = v322;
  *&v429[4] = v323;
  *(&v429[4] + 1) = *(&v430[1] + 1);
  *&v429[5] = *&v430[2];
  *(&v429[5] + 8) = v430[7];
  sub_2171FB568(*&v430[0], *(&v430[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v430, &qword_27CB243B8, &qword_2177586B0);
  v241 = v414;
LABEL_201:
  sub_21733BBDC(v429, v399, &qword_27CB25320, &unk_21776E020);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    v324 = &qword_27CB24A78;
    v325 = &qword_217759040;
    v326 = v449;
  }

  else
  {
    sub_21726A630(&v454, v430, &qword_27CB242E0, &unk_21777EEE0);
    sub_217284234(v449);
    if (*&v430[1])
    {
      memset(v426, 0, 40);
      sub_2172E93C8();
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v430, &qword_27CB242E8, &unk_21775D6B0);
      goto LABEL_207;
    }

    v324 = &qword_27CB242E0;
    v325 = &unk_21777EEE0;
    v326 = v430;
  }

  sub_2171F0738(v326, v324, v325);
  memset(v429, 0, 104);
LABEL_207:
  sub_21733BBDC(v429, v400, &qword_27CB255A8, &unk_21775D450);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    sub_2171F0738(v449, &qword_27CB24A78, &qword_217759040);
    memset(v430, 0, 128);
  }

  else
  {
    sub_21726A630(&v451, v430, &qword_27CB255D8, &unk_21775D4B0);
    sub_217284234(v449);
  }

  sub_21733BBDC(v430, v401, &qword_27CB255D8, &unk_21775D4B0);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    v327 = &qword_27CB24A78;
    v328 = &qword_217759040;
    v329 = v449;
LABEL_216:
    sub_2171F0738(v329, v327, v328);
    memset(v429, 0, 104);
    goto LABEL_229;
  }

  sub_21726A630(&v455, v430, &qword_27CB242B0, &unk_21775D630);
  v330 = sub_217284234(v449);
  if (!*&v430[1])
  {
    v327 = &qword_27CB242B0;
    v328 = &unk_21775D630;
    v329 = v430;
    goto LABEL_216;
  }

  memset(v426, 0, 40);
  MEMORY[0x28223BE20](v330, v331);
  v368[-2] = v413;
  v368[-1] = v242;
  v332 = v415;
  v334 = sub_2172E4A28(sub_21733CEB8, &v368[-4], v333, sub_217276278, &qword_27CB24808, &qword_217758D90);
  v415 = v332;
  sub_21726A630(v426, &v434, &qword_27CB24188, &dword_217758930);
  if (*(&v435 + 1))
  {
    sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    v425[0] = v434;
    v425[1] = v435;
    *&v425[2] = v436;
  }

  else
  {
    v433 = 0;
    v432 = 0u;
    v431 = 0u;
    v335 = *&v430[4];
    if (*&v430[4])
    {
      v336 = *(&v430[3] + 1);
      sub_2172CA838(v242, &v429[1]);
      *&v429[0] = v336;
      *(&v429[0] + 1) = v335;
      v337 = swift_allocObject();
      v338 = v429[1];
      *(v337 + 16) = v429[0];
      *(v337 + 32) = v338;
      *(v337 + 48) = v429[2];
      *(v337 + 64) = *&v429[3];
      sub_217751DE8();
      sub_2171F0738(&v431, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
      *&v431 = v337;
      *(&v432 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v433 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    }

    v425[0] = v431;
    v425[1] = v432;
    *&v425[2] = v433;
    if (*(&v435 + 1))
    {
      sub_2171F0738(&v434, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v430[0] + 1) == 1)
  {
    v339 = 0;
  }

  else
  {
    v339 = *&v430[0];
  }

  if (*(&v430[0] + 1) == 1)
  {
    v340 = 0;
  }

  else
  {
    v340 = *(&v430[0] + 1);
  }

  *&v429[0] = v334;
  BYTE8(v429[0]) = 0;
  v429[1] = v425[0];
  v429[2] = v425[1];
  *&v429[3] = *&v425[2];
  *(&v429[3] + 1) = v339;
  *&v429[4] = v340;
  *(&v429[4] + 1) = *(&v430[1] + 1);
  *&v429[5] = *&v430[2];
  *(&v429[5] + 8) = v430[7];
  sub_2171FB568(*&v430[0], *(&v430[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v430, &qword_27CB242B8, &unk_21777EEA0);
  v241 = v414;
LABEL_229:
  sub_21733BBDC(v429, v402, &qword_27CB25338, &unk_21775D3E0);
  sub_21726A630(v240 + v241, v449, &qword_27CB24A78, &qword_217759040);
  if (v449[2] == 1)
  {
    v341 = &qword_27CB24A78;
    v342 = &qword_217759040;
    v343 = v449;
LABEL_235:
    sub_2171F0738(v343, v341, v342);
    memset(v429, 0, 104);
    v348 = v408;
    v349 = v424;
    goto LABEL_248;
  }

  sub_21726A630(&v456, v430, &qword_27CB242F0, &unk_217797B80);
  v344 = sub_217284234(v449);
  if (!*&v430[1])
  {
    v341 = &qword_27CB242F0;
    v342 = &unk_217797B80;
    v343 = v430;
    goto LABEL_235;
  }

  memset(v426, 0, 40);
  MEMORY[0x28223BE20](v344, v345);
  v368[-2] = v413;
  v368[-1] = v242;
  v347 = sub_2172E4A28(sub_21733CF00, &v368[-4], v346, sub_2172761D8, &qword_27CB24738, &qword_217758CC0);
  sub_21726A630(v426, &v434, &qword_27CB24188, &dword_217758930);
  if (*(&v435 + 1))
  {
    sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    v425[0] = v434;
    v425[1] = v435;
    *&v425[2] = v436;
    v348 = v408;
    v349 = v424;
  }

  else
  {
    v433 = 0;
    v432 = 0u;
    v431 = 0u;
    v350 = *&v430[4];
    if (*&v430[4])
    {
      v351 = *(&v430[3] + 1);
      sub_2172CA838(v242, &v429[1]);
      *&v429[0] = v351;
      *(&v429[0] + 1) = v350;
      v352 = swift_allocObject();
      v353 = v429[1];
      *(v352 + 16) = v429[0];
      *(v352 + 32) = v353;
      *(v352 + 48) = v429[2];
      *(v352 + 64) = *&v429[3];
      sub_217751DE8();
      sub_2171F0738(&v431, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
      *&v431 = v352;
      *(&v432 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v433 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v426, &qword_27CB24188, &dword_217758930);
    }

    v348 = v408;
    v349 = v424;
    v425[0] = v431;
    v425[1] = v432;
    *&v425[2] = v433;
    if (*(&v435 + 1))
    {
      sub_2171F0738(&v434, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v430[0] + 1) == 1)
  {
    v354 = 0;
  }

  else
  {
    v354 = *&v430[0];
  }

  if (*(&v430[0] + 1) == 1)
  {
    v355 = 0;
  }

  else
  {
    v355 = *(&v430[0] + 1);
  }

  *&v429[0] = v347;
  BYTE8(v429[0]) = 0;
  v429[1] = v425[0];
  v429[2] = v425[1];
  *&v429[3] = *&v425[2];
  *(&v429[3] + 1) = v354;
  *&v429[4] = v355;
  *(&v429[4] + 1) = *(&v430[1] + 1);
  *&v429[5] = *&v430[2];
  *(&v429[5] + 8) = v430[7];
  sub_2171FB568(*&v430[0], *(&v430[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v430, &qword_27CB242F8, &qword_21775D6C0);
LABEL_248:
  v356 = v406;
  sub_21733BBDC(v429, v404, &qword_27CB255B0, &unk_217793B50);
  v357 = v240 + *(v356 + 32);
  v358 = *(v357 + 24);
  if (v358 == 1)
  {
    v359 = v418;
    *(v349 + v418[69]) = 0;
    v360 = v349 + v359[70];
    *v360 = 0;
    *(v360 + 8) = 1;
    *(v349 + v405) = 0;
LABEL_255:

    v366 = MEMORY[0x277D84FA0];
    goto LABEL_256;
  }

  if (*v357 == 1)
  {
    v361 = 0;
  }

  else
  {
    v361 = sub_217751DE8();
  }

  v362 = v405;
  v363 = v418;
  *(v349 + v418[69]) = v361;
  v364 = *(v357 + 16);
  v365 = v349 + v363[70];
  *v365 = *(v357 + 8);
  *(v365 + 8) = v364;
  *(v349 + v362) = v358;
  v366 = *(v357 + 32);
  sub_217751DE8();
  if (!v366)
  {
    goto LABEL_255;
  }

  sub_217751DE8();
LABEL_256:

  *(v403 + 33) = v366;
  v449[3] = v418;
  v449[4] = &protocol witness table for SongPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v449);
  sub_21733CAD0();
  Song.init(propertyProvider:)(v449, v407);

  sub_2171F0738(v348, &qword_27CB24748, &unk_217758CD0);
  sub_21733AB9C(v242);
  sub_21733CA78(v349, type metadata accessor for SongPropertyProvider);
  return sub_21733CA78(v240, type metadata accessor for CloudSong);
}

uint64_t sub_2173078AC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v142 = v3;
  v143 = v2;
  v5 = v4;
  v141 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v134 = &v124 - v10;
  v145 = type metadata accessor for CloudStation(0);
  v11 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145, v12);
  v146 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StationPropertyProvider();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6248 != -1)
  {
    swift_once();
  }

  memset(v177, 0, sizeof(v177));
  sub_2172DA334();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v20 = v19[10];
  v21 = v5 + v19[9];
  v22 = *(v21 + 8);
  v132 = *v21;
  LODWORD(v131) = *(v21 + 16);
  v23 = *(v5 + v20 + 8);
  v130 = *(v5 + v20);
  v144 = v23;
  v24 = *(v5 + v19[12]);
  v25 = *(v5 + v19[13]);
  v26 = v19[15];
  v128 = *(v5 + v19[14]);
  v147 = v5;
  v27 = *(v5 + v26);
  v125 = type metadata accessor for Station._AirTime();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v125);
  v28 = v14[5];
  sub_2172A497C(v179);
  v133 = v28;
  memcpy(&v18[v28], v179, 0x221uLL);
  v29 = v14[6];
  v18[v29] = 2;
  v30 = &v18[v14[7]];
  *v30 = 0;
  v126 = v30;
  v127 = v29;
  v30[8] = 1;
  v31 = &v18[v14[9]];
  v148 = xmmword_2177586D0;
  *v31 = xmmword_2177586D0;
  *(v31 + 1) = 0u;
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  v135 = v14[13];
  v18[v135] = 14;
  memcpy(&v18[v14[14]], v179, 0x221uLL);
  v136 = v14[16];
  memcpy(&v18[v136], v177, 0x78uLL);
  v32 = v14[18];
  v33 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v18[v32], 1, 1, v33);
  v137 = v14[20];
  __swift_storeEnumTagSinglePayload(&v18[v137], 1, 1, v33);
  v34 = &v18[v14[21]];
  *v34 = v148;
  v34[2] = 0;
  v34[3] = 0;
  v138 = v34;
  v35 = &v18[v14[24]];
  *(v35 + 6) = 0u;
  *(v35 + 7) = 0u;
  *(v35 + 4) = 0u;
  *(v35 + 5) = 0u;
  *(v35 + 2) = 0u;
  *(v35 + 3) = 0u;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v139 = v35;
  *&v148 = v14;
  v36 = &v18[v14[25]];
  *(v36 + 96) = 0;
  *(v36 + 64) = 0u;
  *(v36 + 80) = 0u;
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0u;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  v140 = v36;
  v37 = qword_280BE3758;
  v129 = v22;
  sub_217751DE8();
  sub_217751DE8();
  v38 = v24;
  sub_217751DE8();
  v39 = v25;
  sub_217751DE8();
  v40 = v128;
  sub_217751DE8();
  sub_217751DE8();
  if (v37 != -1)
  {
    swift_once();
  }

  v41 = qword_280C01FC0;
  if (qword_280C01FC0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v123 = sub_217752D28();

    v41 = v123;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v42 = v148;
  *&v18[*(v148 + 104)] = v41;
  v43 = v42;
  v44 = &v18[v42[29]];
  memcpy(&v18[v42[27]], v178, 0x161uLL);
  v45 = &v18[v43[28]];
  v46 = v129;
  *v45 = v132;
  *(v45 + 1) = v46;
  v45[16] = v131;
  v47 = v144;
  *v44 = v130;
  *(v44 + 1) = v47;
  *&v18[v43[30]] = v38;
  *&v18[v43[31]] = v39;
  *&v18[v43[32]] = v40;
  *&v18[v43[33]] = v27;
  v48 = v146;
  sub_21733CAD0();
  v49 = &v48[*(v145 + 20)];
  v50 = *(v49 + 1);
  if (v50 == 1)
  {
    v51 = v134;
    __swift_storeEnumTagSinglePayload(v134, 1, 1, v125);
  }

  else
  {
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    v174[0] = *v49;
    v174[1] = v50;
    v174[2] = v53;
    v174[3] = v52;
    sub_217751DE8();
    sub_217751DE8();
    v51 = v134;
    CloudStation.AirTime.convertToStationAirTime()(v134);
  }

  sub_21733BBDC(v51, v18, &qword_27CB255C0, &unk_21775D480);
  memcpy(v175, v49 + 48, sizeof(v175));
  memcpy(v176, v49 + 48, sizeof(v176));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v176) == 1)
  {
    v54 = v179;
  }

  else
  {
    memcpy(v174, v176, 0x1B8uLL);
    memcpy(v149, v175, 0x1B8uLL);
    sub_21726A630(v149, v173, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v151);
    memcpy(v150, v174, sizeof(v150));
    sub_2171F0738(v150, &qword_27CB243F0, &qword_21775D690);
    memcpy(v173, v151, 0x221uLL);
    nullsub_1(v173, v55);
    v54 = v173;
  }

  memcpy(v174, v54, 0x221uLL);
  v56 = v133;
  memcpy(v173, &v18[v133], 0x221uLL);
  sub_2171F0738(v173, &qword_27CB24400, &unk_21775E9A0);
  memcpy(&v18[v56], v174, 0x221uLL);
  if (*(v49 + 62))
  {
    v57 = *(v49 + 61);
    v58 = sub_217752DC8();
    if (v58 == 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2;
    }

    if (!v58)
    {
      v59 = 0;
    }

    v18[v127] = v59;
  }

  if ((v49[512] & 1) == 0)
  {
    v60 = v126;
    *v126 = *(v49 + 63) / 1000.0;
    *(v60 + 8) = 0;
  }

  *&v18[v43[8]] = *(v49 + 65);
  if (*(v49 + 74))
  {
    v61 = *(v49 + 73);
    v62 = *(v49 + 72);
    v63 = *(v49 + 71);
    v133 = *(v49 + 70);
    v134 = v62;
    v64 = *(v49 + 69);
    v65 = *(v49 + 68);
    v66 = *(v49 + 67);
    v131 = *(v49 + 66);
    v132 = v65;
    v144 = v61;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v131 = 0;
    v132 = 0;
    v64 = 0;
    v133 = 0;
    v134 = 0;
    v63 = 0;
    v144 = 0;
    v66 = 1;
  }

  v67 = v148;
  v68 = *(v148 + 40);
  v69 = *(v31 + 1);
  v172[0] = *v31;
  v172[1] = v69;
  v70 = *(v31 + 3);
  v172[2] = *(v31 + 2);
  v172[3] = v70;
  sub_217751DE8();
  sub_2171F0738(v172, &qword_27CB24B70, &unk_217759460);
  v71 = v132;
  *v31 = v131;
  *(v31 + 1) = v66;
  *(v31 + 2) = v71;
  *(v31 + 3) = v64;
  v72 = v134;
  *(v31 + 4) = v133;
  *(v31 + 5) = v63;
  v73 = v144;
  *(v31 + 6) = v72;
  *(v31 + 7) = v73;
  *&v18[v68] = *(v49 + 75);
  v74 = *(v49 + 76);
  v75 = v49[616];
  if (v75)
  {
    v74 = 0;
  }

  v76 = v67[12];
  v77 = &v18[v67[11]];
  *v77 = v74;
  v77[8] = v75;
  v18[v76] = v49[617];
  v78 = *(v49 + 79);
  if (v78)
  {
    v151[0] = *(v49 + 78);
    v151[1] = v78;
    v79 = *(v49 + 100);
    v150[0] = *(v49 + 99);
    v150[1] = v79;
    CloudStation.Kind.convertToStationKind(with:)(v150, &v171);
    sub_217751DE8();
    sub_217751DE8();
    v67 = v148;
    sub_217751DE8();

    v80 = v171;
  }

  else
  {
    sub_217751DE8();
    v80 = 14;
  }

  v81 = v146;
  v82 = &v18[v67[15]];
  v83 = &v18[v67[17]];
  v84 = &v18[v67[19]];
  v18[v135] = v80;
  v85 = *(v49 + 81);
  *v82 = *(v49 + 80);
  *(v82 + 1) = v85;
  memcpy(v169, v49 + 656, sizeof(v169));
  v86 = v136;
  memcpy(v170, &v18[v136], 0x78uLL);
  sub_217751DE8();
  sub_21726A630(v169, v151, &qword_27CB244D0, &unk_21775D620);
  sub_2171F0738(v170, &qword_27CB244D0, &unk_21775D620);
  memcpy(&v18[v86], v169, 0x78uLL);
  v87 = *(v49 + 5);
  *v83 = *(v49 + 4);
  *(v83 + 1) = v87;
  v88 = *(v49 + 98);
  *v84 = *(v49 + 97);
  *(v84 + 1) = v88;
  v89 = *(type metadata accessor for CloudStation.Attributes(0) + 76);
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v49[v89], &v18[v137], &unk_27CB277C0, &qword_217758DC0);
  v90 = *(v145 + 32);
  sub_21726A630(v81 + v90, v151, &qword_27CB24340, &unk_2177650B0);
  if (v151[6] == 1)
  {
    sub_2171F0738(v151, &qword_27CB24340, &unk_2177650B0);
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 1;
  }

  else
  {
    v91 = v151[0];
    v94 = v151[1];
    v92 = v151[2];
    v93 = v151[3];
    sub_2172838F8(v151[0], v151[1]);
    sub_21726A258(v151);
  }

  v95 = v142;
  v96 = v138;
  v97 = v138[2];
  v98 = v138[3];
  sub_217283940(*v138, v138[1]);
  *v96 = v91;
  v96[1] = v94;
  v96[2] = v92;
  v96[3] = v93;
  sub_21726A630(v81 + v90, v151, &qword_27CB24340, &unk_2177650B0);
  v99 = v151[6];
  if (v151[6] == 1)
  {
    sub_2171F0738(v151, &qword_27CB24340, &unk_2177650B0);
    v100 = 0;
    v101 = 0;
    v102 = v148;
  }

  else
  {
    v100 = v151[4];
    v101 = v151[5];
    sub_2172E1074(v151[4], v151[5], v151[6]);
    sub_21726A258(v151);
    v102 = v148;
    if (v99)
    {
      sub_217751DE8();
      sub_2172E141C(v100, v101, v99);
    }

    else
    {
      v100 = 0;
      v101 = 0;
    }
  }

  v103 = &v18[*(v102 + 88)];
  *v103 = v100;
  v103[1] = v101;
  sub_21726A630(v81 + v90, v151, &qword_27CB24340, &unk_2177650B0);
  if (v151[6] == 1)
  {
    sub_2171F0738(v151, &qword_27CB24340, &unk_2177650B0);
    v104 = 0;
  }

  else
  {
    v104 = v151[7];
    sub_217751DE8();
    sub_21726A258(v151);
  }

  *&v18[*(v102 + 92)] = v104;
  sub_21726A630(v81 + v90, v151, &qword_27CB24340, &unk_2177650B0);
  if (v151[6] == 1)
  {
    v105 = &qword_27CB24340;
    v106 = &unk_2177650B0;
    v107 = v151;
LABEL_45:
    sub_2171F0738(v107, v105, v106);
    memset(v149, 0, 128);
    goto LABEL_47;
  }

  sub_21726A630(&v151[8], v150, &qword_27CB24228, &unk_21775D490);
  sub_21726A258(v151);
  if (v150[2] == 1)
  {
    v105 = &qword_27CB24228;
    v106 = &unk_21775D490;
    v107 = v150;
    goto LABEL_45;
  }

  sub_21726A630(v150, v149, &qword_27CB24230, &unk_21775E9D0);
  sub_217269DB0(v150);
LABEL_47:
  sub_21733BBDC(v149, v139, &qword_27CB24230, &unk_21775E9D0);
  sub_21726A630(v81 + v90, v151, &qword_27CB24340, &unk_2177650B0);
  if (v151[6] == 1)
  {
    sub_2171F0738(v151, &qword_27CB24340, &unk_2177650B0);
    v108 = v143;
LABEL_56:
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    memset(v168, 0, sizeof(v168));
    goto LABEL_57;
  }

  sub_21726A630(&v151[8], v150, &qword_27CB24228, &unk_21775D490);
  sub_21726A258(v151);
  v108 = v143;
  if (v150[2] == 1)
  {
    v109 = &qword_27CB24228;
    v110 = &unk_21775D490;
    v111 = v150;
LABEL_55:
    sub_2171F0738(v111, v109, v110);
    goto LABEL_56;
  }

  sub_21726A630(&v150[16], v149, &qword_27CB24240, &qword_217758668);
  v112 = sub_217269DB0(v150);
  if (!*&v149[1])
  {
    v109 = &qword_27CB24240;
    v110 = &qword_217758668;
    v111 = v149;
    goto LABEL_55;
  }

  v162 = 0;
  memset(v161, 0, sizeof(v161));
  MEMORY[0x28223BE20](v112, v113);
  *(&v124 - 2) = v95;
  *(&v124 - 1) = v108;
  v115 = sub_2172E4ECC(sub_21733CEA0, (&v124 - 4), v114, sub_2172763AC, &qword_27CB24820, &unk_2177650E0);
  sub_21726A630(v161, &v155, &qword_27CB24188, &dword_217758930);
  if (*(&v156 + 1))
  {
    sub_2171F0738(v161, &qword_27CB24188, &dword_217758930);
    v158 = v155;
    v159 = v156;
    v160 = v157;
  }

  else
  {
    v154 = 0;
    v153 = 0u;
    v152 = 0u;
    v117 = *&v149[4];
    if (*&v149[4])
    {
      v118 = *(&v149[3] + 1);
      sub_2172CA838(v108, &v164);
      *&v163 = v118;
      *(&v163 + 1) = v117;
      v119 = swift_allocObject();
      v120 = v164;
      *(v119 + 16) = v163;
      *(v119 + 32) = v120;
      *(v119 + 48) = v165;
      *(v119 + 64) = v166;
      sub_217751DE8();
      sub_2171F0738(&v152, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v161, &qword_27CB24188, &dword_217758930);
      *&v152 = v119;
      *(&v153 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v154 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v161, &qword_27CB24188, &dword_217758930);
    }

    v158 = v152;
    v159 = v153;
    v160 = v154;
    if (*(&v156 + 1))
    {
      sub_2171F0738(&v155, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v149[0] + 1) == 1)
  {
    v121 = 0;
  }

  else
  {
    v121 = *&v149[0];
  }

  if (*(&v149[0] + 1) == 1)
  {
    v122 = 0;
  }

  else
  {
    v122 = *(&v149[0] + 1);
  }

  *&v163 = v115;
  BYTE8(v163) = 0;
  v164 = v158;
  v165 = v159;
  *&v166 = v160;
  *(&v166 + 1) = v121;
  *&v167 = v122;
  *(&v167 + 1) = *(&v149[1] + 1);
  *v168 = *&v149[2];
  *&v168[8] = v149[7];
  sub_2171FB568(*&v149[0], *(&v149[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v149, &qword_27CB24248, &qword_217758670);
  v102 = v148;
LABEL_57:
  sub_21733BBDC(&v163, v140, &unk_27CB28A60, &qword_217770B60);
  v151[3] = v102;
  v151[4] = &protocol witness table for StationPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v151);
  sub_21733CAD0();
  Station.init(propertyProvider:)(v151, v141);

  sub_2171F0738(v147, &qword_27CB24738, &qword_217758CC0);
  sub_21733CA78(v81, type metadata accessor for CloudStation);
  sub_21733AB9C(v108);
  return sub_21733CA78(v18, type metadata accessor for StationPropertyProvider);
}

void *sub_2173088F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a1;
  v159 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v3 = *(*(v156 - 1) + 64);
  MEMORY[0x28223BE20](v156, v4);
  v157 = &v148 - v5;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v6 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154, v7);
  v155 = &v148 - v8;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v9 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152, v10);
  v153 = &v148 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v12 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150, v13);
  v151 = &v148 - v14;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v15 = *(*(v149 - 1) + 64);
  MEMORY[0x28223BE20](v149, v16);
  v18 = &v148 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v148 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v148 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v30 = *(*(v29 - 1) + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v148 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v35 = *(*(v34 - 1) + 64);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v148 - v37;
  sub_217283E1C(v2, &v164);
  switch(v168)
  {
    case 1:
      v160 = v164;
      v161 = v165;
      v162 = v166;
      v163 = v167;
      sub_217309580();
      sub_217284498(&v160);
      v104 = v159;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v105 = v29[10];
      v106 = &v33[v29[9]];
      v107 = *v106;
      v108 = *(v106 + 1);
      v109 = v106[16];
      v110 = *&v33[v29[12]];
      v157 = v29[11];
      v158 = v110;
      v111 = v29[14];
      v156 = *&v33[v29[13]];
      v113 = *&v33[v105];
      v112 = *&v33[v105 + 8];
      v114 = *&v33[v111];
      v115 = *&v33[v29[15]];
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v117 = v104 + v116[9];
      *v117 = v107;
      *(v117 + 8) = v108;
      *(v117 + 16) = v109;
      v118 = (v104 + v116[10]);
      *v118 = v113;
      v118[1] = v112;
      result = memcpy((v104 + v116[11]), &v157[v33], 0x180uLL);
      *(v104 + v116[12]) = v158;
      *(v104 + v116[13]) = v156;
      *(v104 + v116[14]) = v114;
      *(v104 + v116[15]) = v115;
      return result;
    case 2:
      v160 = v164;
      v161 = v165;
      v162 = v166;
      v163 = v167;
      sub_21730B148(v158, v28);
      sub_2172842E4(&v160);
      v71 = v159;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v72 = v24[10];
      v73 = (v28 + v24[9]);
      v74 = *v73;
      v75 = *(v73 + 1);
      v76 = v73[16];
      v77 = *(v28 + v24[12]);
      v157 = v24[11];
      v158 = v77;
      v78 = v24[14];
      v156 = *(v28 + v24[13]);
      v80 = *(v28 + v72);
      v79 = *(v28 + v72 + 8);
      v81 = *(v28 + v78);
      v82 = *(v28 + v24[15]);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v84 = v71 + v83[9];
      *v84 = v74;
      *(v84 + 8) = v75;
      *(v84 + 16) = v76;
      v85 = (v71 + v83[10]);
      *v85 = v80;
      v85[1] = v79;
      result = memcpy((v71 + v83[11]), &v157[v28], 0x180uLL);
      *(v71 + v83[12]) = v158;
      *(v71 + v83[13]) = v156;
      *(v71 + v83[14]) = v81;
      *(v71 + v83[15]) = v82;
      return result;
    case 3:
      v160 = v164;
      v161 = v165;
      v162 = v166;
      v163 = v167;
      sub_2172F34C8(v158, v39);
      sub_217283C08(&v160);
      v86 = v159;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v87 = v19[10];
      v88 = &v23[v19[9]];
      v89 = *v88;
      v90 = *(v88 + 1);
      v91 = v88[16];
      v92 = *&v23[v19[12]];
      v157 = v19[11];
      v158 = v92;
      v93 = v19[14];
      v156 = *&v23[v19[13]];
      v95 = *&v23[v87];
      v94 = *&v23[v87 + 8];
      v96 = *&v23[v93];
      v97 = *&v23[v19[15]];
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v99 = v86 + v98[9];
      *v99 = v89;
      *(v99 + 8) = v90;
      *(v99 + 16) = v91;
      v100 = (v86 + v98[10]);
      *v100 = v95;
      v100[1] = v94;
      result = memcpy((v86 + v98[11]), &v157[v23], 0x180uLL);
      *(v86 + v98[12]) = v158;
      *(v86 + v98[13]) = v156;
      *(v86 + v98[14]) = v96;
      *(v86 + v98[15]) = v97;
      return result;
    case 4:
      v160 = v164;
      v161 = v165;
      v162 = v166;
      v163 = v167;
      sub_2172F9998(v158, v39);
      sub_21726B8C4(&v160);
      v56 = v159;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v57 = v149[10];
      v58 = &v18[v149[9]];
      v59 = *v58;
      v60 = *(v58 + 1);
      v61 = v58[16];
      v62 = *&v18[v149[12]];
      v157 = v149[11];
      v158 = v62;
      v63 = v149[14];
      v156 = *&v18[v149[13]];
      v64 = *&v18[v57];
      v65 = *&v18[v57 + 8];
      v66 = *&v18[v63];
      v67 = *&v18[v149[15]];
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v69 = v56 + v68[9];
      *v69 = v59;
      *(v69 + 8) = v60;
      *(v69 + 16) = v61;
      v70 = (v56 + v68[10]);
      *v70 = v64;
      v70[1] = v65;
      result = memcpy((v56 + v68[11]), &v157[v18], 0x180uLL);
      *(v56 + v68[12]) = v158;
      *(v56 + v68[13]) = v156;
      *(v56 + v68[14]) = v66;
      *(v56 + v68[15]) = v67;
      return result;
    case 5:
      v160 = v164;
      v161 = v165;
      v162 = v166;
      v163 = v167;
      v101 = v151;
      sub_21730BC14(v158, v151);
      sub_217284394(&v160);
      v102 = v159;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v119 = &v169;
      goto LABEL_10;
    case 6:
      v160 = v164;
      v161 = v165;
      v162 = v166;
      v163 = v167;
      v101 = v153;
      sub_21730C6EC(v158, v153);
      sub_217283CC4(&v160);
      v102 = v159;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v119 = &v170;
LABEL_10:
      v103 = *(v119 - 32);
      goto LABEL_11;
    case 7:
      v160 = v164;
      v161 = v165;
      v162 = v166;
      v163 = v167;
      v101 = v155;
      sub_21730D230(v158, v39);
      sub_217283B58(&v160);
      v102 = v159;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v103 = v154;
LABEL_11:
      v120 = v103[10];
      v121 = v101 + v103[9];
      v122 = *v121;
      v123 = *(v121 + 8);
      v124 = *(v121 + 16);
      v125 = *(v101 + v103[12]);
      v157 = v103[11];
      v158 = v125;
      v126 = v103[14];
      v156 = *(v101 + v103[13]);
      v127 = *(v101 + v120);
      v128 = *(v101 + v120 + 8);
      v129 = *(v101 + v126);
      v130 = *(v101 + v103[15]);
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v132 = v102 + v131[9];
      *v132 = v122;
      *(v132 + 8) = v123;
      *(v132 + 16) = v124;
      v133 = (v102 + v131[10]);
      *v133 = v127;
      v133[1] = v128;
      result = memcpy((v102 + v131[11]), &v157[v101], 0x180uLL);
      *(v102 + v131[12]) = v158;
      v134 = v131[13];
      v135 = v156;
      goto LABEL_13;
    case 8:
      v160 = v164;
      v161 = v165;
      v162 = v166;
      v163 = v167;
      v136 = v157;
      sub_21730FC14(v158, v39);
      sub_217283DC8(&v160);
      v102 = v159;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v137 = v156[10];
      v138 = &v136[v156[9]];
      v139 = *v138;
      v140 = *(v138 + 1);
      v141 = v138[16];
      v142 = v156[12];
      v155 = v156[11];
      v158 = *&v136[v142];
      v143 = v156[14];
      v154 = *&v136[v156[13]];
      v144 = *&v136[v137];
      v145 = *&v136[v137 + 8];
      v129 = *&v136[v143];
      v130 = *&v136[v156[15]];
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v146 = v102 + v131[9];
      *v146 = v139;
      *(v146 + 8) = v140;
      *(v146 + 16) = v141;
      v147 = (v102 + v131[10]);
      *v147 = v144;
      v147[1] = v145;
      result = memcpy((v102 + v131[11]), &v136[v155], 0x180uLL);
      *(v102 + v131[12]) = v158;
      v134 = v131[13];
      v135 = v154;
LABEL_13:
      *(v102 + v134) = v135;
      *(v102 + v131[14]) = v129;
      *(v102 + v131[15]) = v130;
      break;
    default:
      v160 = v164;
      v161 = v165;
      v162 = v166;
      v163 = v167;
      sub_2172E9898(v158, v39);
      sub_21725CE44(&v160);
      v40 = v159;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v41 = v34[10];
      v42 = &v38[v34[9]];
      v43 = *v42;
      v44 = *(v42 + 1);
      v45 = v42[16];
      v46 = *&v38[v34[12]];
      v157 = v34[11];
      v158 = v46;
      v47 = v34[14];
      v156 = *&v38[v34[13]];
      v49 = *&v38[v41];
      v48 = *&v38[v41 + 8];
      v50 = *&v38[v47];
      v51 = *&v38[v34[15]];
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v53 = v40 + v52[9];
      *v53 = v43;
      *(v53 + 8) = v44;
      *(v53 + 16) = v45;
      v54 = (v40 + v52[10]);
      *v54 = v49;
      v54[1] = v48;
      result = memcpy((v40 + v52[11]), &v157[v38], 0x180uLL);
      *(v40 + v52[12]) = v158;
      *(v40 + v52[13]) = v156;
      *(v40 + v52[14]) = v50;
      *(v40 + v52[15]) = v51;
      break;
  }

  return result;
}

void sub_217309580()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  v3 = v0;
  v454 = v4;
  v457 = v5;
  v455 = type metadata accessor for CloudArtist(0);
  v6 = OUTLINED_FUNCTION_43(v455);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_81();
  v456 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v440 - v16;
  v18 = type metadata accessor for CloudArtist.Attributes(0);
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_81();
  v458 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v30 = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v24, v25, v26, v27, v28, v29, v437, v438, v439);
  sub_2176CB030(v30, v31, v32, v33, v34, v35, v36, v37, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456);

  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v500) == 1)
  {
    sub_2172E22C0(v499);
  }

  else
  {
    memcpy(v468, v500, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v494);
    v38 = OUTLINED_FUNCTION_69_7();
    memcpy(v38, v468, 0x221uLL);
    v39 = OUTLINED_FUNCTION_69_7();
    sub_217284084(v39);
    memcpy(v468, v494, 0x1B8uLL);
    nullsub_1(v468, v40);
    memcpy(v499, v468, sizeof(v499));
  }

  if (qword_280BE6A48 != -1)
  {
    swift_once();
  }

  v41 = sub_2172A3FF0();
  v451 = v42;
  v452 = v41;
  if (qword_280BE69D8 != -1)
  {
    swift_once();
  }

  sub_2176CA788(qword_280C021B8, v42, v43, v44, v45, v46, v47, v48, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE68F0 != -1)
  {
    swift_once();
  }

  v453 = v17;
  v450 = sub_2172A494C(qword_280C02170);
  if (qword_280BE6998 != -1)
  {
    swift_once();
  }

  sub_2176CA7A8(qword_280C021A0, v49, v50, v51, v52, v53, v54, v55, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456);
  v495 = v482;
  v496 = v483[0];
  v497 = v483[1];
  v498 = v483[2];
  v56 = *(&v482 + 1);
  if (*(&v482 + 1) == 1)
  {
    v444 = 0;
    v445 = 0;
    v56 = 0;
    v446 = 0;
    v447 = 0;
    v448 = 0;
    v449 = 0uLL;
    v443 = 0;
  }

  else
  {
    v449 = v498;
    v57 = *(&v497 + 1);
    v447 = v497;
    v58 = *(&v496 + 1);
    v444 = v495;
    v445 = v496;
    sub_217751DE8();
    sub_217751DE8();
    v446 = v58;
    sub_217751DE8();
    v448 = v57;
    sub_217751DE8();
    v443 = sub_217751DC8();
    sub_2171F0738(&v495, &qword_27CB24B70, &unk_217759460);
  }

  if (qword_280BE68D0 != -1)
  {
    swift_once();
  }

  v442 = sub_2172A4930(qword_280C02158);
  if (qword_280BE6A28 != -1)
  {
    swift_once();
  }

  v441 = sub_2172A4364(qword_280C021D0);
  if (qword_280BE6928 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02180, v59, v60, v61, v62, v63, v64, v65, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452);
  v74 = v73;
  if (qword_280BE6A50 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C021E0, v66, v67, v68, v69, v70, v71, v72, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452);
  v76 = v75;
  if (qword_280BE6898 != -1)
  {
    swift_once();
  }

  v77 = sub_2172A3FF0();
  if (v78)
  {
    v85 = v77;
  }

  else
  {
    v85 = 0;
  }

  if (v78)
  {
    v86 = v78;
  }

  else
  {
    v86 = 0xE000000000000000;
  }

  if (qword_280BE68A0 != -1)
  {
    swift_once();
  }

  v87 = v458;
  v88 = v458 + v18[14];
  sub_2176CA788(qword_280C02140, v78, v79, v80, v81, v82, v83, v84, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  memcpy(v87, v499, 0x1B8uLL);
  v89 = v451;
  v87[55] = v452;
  v87[56] = v89;
  sub_21726A594(v453, v87 + v18[6], &unk_27CB277C0, &qword_217758DC0);
  *(v87 + v18[7]) = v450;
  v90 = (v87 + v18[8]);
  v91 = v445;
  *v90 = v444;
  v90[1] = v56;
  v93 = v446;
  v92 = v447;
  v90[2] = v91;
  v90[3] = v93;
  v90[4] = v92;
  v94 = v449;
  v90[5] = v448;
  v90[6] = v94;
  v95 = v442;
  v96 = v443;
  v90[7] = *(&v449 + 1);
  v90[8] = v96;
  *(v87 + v18[9]) = v95;
  *(v87 + v18[10]) = v441;
  *(v87 + v18[11]) = v74;
  *(v87 + v18[12]) = v76;
  v97 = (v87 + v18[13]);
  *v97 = v85;
  v97[1] = v86;
  v494[1] = 0;
  v494[0] = 0;
  v494[2] = 1;
  bzero(&v494[3], 0x368uLL);
  if (qword_280BE6880 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6888, v98, v99, v100, v101, v102, v103, v104, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE69A8 != -1)
  {
    swift_once();
  }

  sub_2176CB03C(qword_280C021A8, v105, v106, v107, v108, v109, v110, v111, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE68E0 != -1)
  {
    swift_once();
  }

  sub_2176CB058(qword_280C02168, v112, v113, v114, v115, v116, v117, v118, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6870 != -1)
  {
    swift_once();
  }

  sub_2176CA750(qword_280BE6878, v119, v120, v121, v122, v123, v124, v125, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE69E8 != -1)
  {
    swift_once();
  }

  sub_2176CA69C(qword_280BE69F0, v126, v127, v128, v129, v130, v131, v132, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6820 != -1)
  {
    swift_once();
  }

  sub_2176CA4F0(qword_280BE6828, v133, v134, v135, v136, v137, v138, v139, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6848 != -1)
  {
    swift_once();
  }

  sub_2176CA450(qword_280BE6850, v140, v141, v142, v143, v144, v145, v146, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (v493[40] || v493[27] || v493[2] || v492[11] || v491[37] || v491[24] || v491[11])
  {
    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v147, v148, v149, v150);
    if (v484)
    {
      OUTLINED_FUNCTION_33_8();
      sub_2172EBBF4();
      v151 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v151, v152, v153);
    }

    else
    {
      v154 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v154, v155, v156);
      OUTLINED_FUNCTION_199_0(0);
      v468[4] = v157;
      v468[5] = v157;
      v468[6] = v157;
      v468[7] = v157;
    }

    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v158, v159, v160, v161);
    if (v484)
    {
      v162 = OUTLINED_FUNCTION_33_8();
      sub_2172EBD40(v164, v162, v163);
      v165 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v165, v166, v167);
    }

    else
    {
      v168 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v168, v169, v170);
      OUTLINED_FUNCTION_114_2();
    }

    sub_21726A630(v493, v469, &qword_27CB24330, &unk_21775D460);
    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v171, v172, v173, v174);
    if (v484)
    {
      OUTLINED_FUNCTION_33_8();
      sub_2172EBE8C(v175, v176);
      v177 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v177, v178, v179);
    }

    else
    {
      v180 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v180, v181, v182);
      OUTLINED_FUNCTION_42_7(0);
      OUTLINED_FUNCTION_111_4(v183);
    }

    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v184, v185, v186, v187);
    if (v484)
    {
      OUTLINED_FUNCTION_33_8();
      sub_2172EC0A8();
      v188 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v188, v189, v190);
    }

    else
    {
      v191 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v191, v192, v193);
      memset(v466, 0, 64);
      OUTLINED_FUNCTION_51_6(0);
    }

    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v194, v195, v196, v197);
    if (v484)
    {
      v198 = OUTLINED_FUNCTION_33_8();
      sub_2172EC1F4(v200, v198, v199);
      v201 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v201, v202, v203);
    }

    else
    {
      v204 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v204, v205, v206);
      OUTLINED_FUNCTION_157_3();
    }

    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v207, v208, v209, v210);
    if (v484)
    {
      OUTLINED_FUNCTION_33_8();
      sub_2172EC340();
      v211 = OUTLINED_FUNCTION_175_1();
      sub_2171F0738(v211, v212, v213);
      v214 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v214, v215, v216);
    }

    else
    {
      v217 = OUTLINED_FUNCTION_175_1();
      sub_2171F0738(v217, v218, v219);
      v220 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v220, v221, v222);
      OUTLINED_FUNCTION_173_2();
    }

    v223 = OUTLINED_FUNCTION_69_7();
    memcpy(v223, v468, 0x80uLL);
    memcpy(v485, v470, sizeof(v485));
    memcpy(v486, v469, sizeof(v486));
    memcpy(v487, v467, sizeof(v487));
    memcpy(v488, v466, sizeof(v488));
    memcpy(v489, v465, sizeof(v489));
    memcpy(v490, v464, sizeof(v490));
    OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_146_2();
    memcpy(v224, v225, 0x380uLL);
  }

  v482 = 0uLL;
  *&v483[0] = 1;
  bzero(v483 + 8, 0x568uLL);
  if (qword_280BE6950 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6958, v226, v227, v228, v229, v230, v231, v232, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6908 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6910, v233, v234, v235, v236, v237, v238, v239, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6980 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6988, v240, v241, v242, v243, v244, v245, v246, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE68F8 != -1)
  {
    swift_once();
  }

  sub_2176CA4F0(qword_280BE6900, v247, v248, v249, v250, v251, v252, v253, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6A30 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6A38, v254, v255, v256, v257, v258, v259, v260, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE69C8 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE69D0, v261, v262, v263, v264, v265, v266, v267, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6A10 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6A18, v268, v269, v270, v271, v272, v273, v274, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6968 != -1)
  {
    swift_once();
  }

  sub_2176CB03C(qword_280BE6970, v275, v276, v277, v278, v279, v280, v281, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6860 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6868, v282, v283, v284, v285, v286, v287, v288, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6A58 != -1)
  {
    swift_once();
  }

  sub_2176CA69C(qword_280BE6A60, v289, v290, v291, v292, v293, v294, v295, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (qword_280BE6830 != -1)
  {
    swift_once();
  }

  sub_2176CB104(qword_280BE6838, v296, v297, v298, v299, v300, v301, v302, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, *(&v449 + 1), v450, v451, v452, v453, v454, v455, v456, v457, v458, *&v459[0], *(&v459[0] + 1));
  if (v481[11] || v480[11] || v479[11] || v478[11] || v477[11] || v476[11] || v475[11] || v474[11] || v473[11] || v472[11] || v471[11])
  {
    sub_21726A630(v481, v468, &qword_27CB25318, &qword_2177657C0);
    if (*(&v468[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v468, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_114_2();
    }

    sub_21726A630(v480, v468, &qword_27CB25318, &qword_2177657C0);
    if (*(&v468[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v468, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25318, &qword_2177657C0);
      memset(v469, 0, 128);
    }

    sub_21726A630(v479, v468, &qword_27CB25318, &qword_2177657C0);
    if (*(&v468[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v468, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_42_7(0);
      OUTLINED_FUNCTION_111_4(v303);
    }

    sub_21726A630(v478, v468, &qword_27CB25330, &unk_21775E9B0);
    if (*(&v468[5] + 1))
    {
      v304 = OUTLINED_FUNCTION_31_8();
      sub_2172EC1F4(v306, v304, v305);
      sub_2171F0738(v468, &unk_27CB28230, &unk_21775CD50);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25330, &unk_21775E9B0);
      memset(v466, 0, 64);
      OUTLINED_FUNCTION_51_6(0);
    }

    sub_21726A630(v477, v468, &qword_27CB25318, &qword_2177657C0);
    if (*(&v468[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v468, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_157_3();
    }

    sub_21726A630(v476, v468, &qword_27CB25318, &qword_2177657C0);
    if (*(&v468[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v468, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_173_2();
    }

    sub_21726A630(v475, v468, &qword_27CB25318, &qword_2177657C0);
    if (*(&v468[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v468, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25318, &qword_2177657C0);
      memset(v463, 0, sizeof(v463));
    }

    sub_21726A630(v474, v468, &qword_27CB25310, &unk_21775D3D0);
    if (*(&v468[5] + 1))
    {
      v307 = OUTLINED_FUNCTION_31_8();
      sub_2172EBD40(v309, v307, v308);
      sub_2171F0738(v468, &qword_27CB25398, &unk_21776C4F0);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25310, &unk_21775D3D0);
      memset(v462, 0, sizeof(v462));
    }

    sub_21726A630(v473, v468, &qword_27CB25318, &qword_2177657C0);
    if (*(&v468[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v468, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25318, &qword_2177657C0);
      memset(v461, 0, sizeof(v461));
    }

    sub_21726A630(v472, v468, &qword_27CB25338, &unk_21775D3E0);
    if (*(&v468[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EC0A8();
      sub_2171F0738(v468, &qword_27CB25380, &unk_21775DAA0);
    }

    else
    {
      sub_2171F0738(v468, &qword_27CB25338, &unk_21775D3E0);
      memset(v460, 0, sizeof(v460));
    }

    sub_21726A630(v471, v468, &qword_27CB255A8, &unk_21775D450);
    if (*(&v468[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EC48C();
      v310 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v310, v311, v312);
      sub_2171F0738(v468, &qword_27CB27820, &qword_21775DAB0);
    }

    else
    {
      v313 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v313, v314, v315);
      sub_2171F0738(v468, &qword_27CB255A8, &unk_21775D450);
      *&v316 = OUTLINED_FUNCTION_156_2();
      v459[2] = v316;
      v459[3] = v316;
      v459[4] = v316;
      v459[5] = v316;
      v459[6] = v316;
      v459[7] = v316;
    }

    memcpy(v468, v470, 0x80uLL);
    memcpy(&v468[8], v469, 0x80uLL);
    memcpy(&v468[16], v467, 0x80uLL);
    memcpy(&v468[24], v466, 0x80uLL);
    memcpy(&v468[32], v465, 0x80uLL);
    memcpy(&v468[40], v464, 0x80uLL);
    memcpy(&v468[48], v463, 0x80uLL);
    memcpy(&v468[56], v462, 0x80uLL);
    memcpy(&v468[64], v461, 0x80uLL);
    memcpy(&v468[72], v460, 0x80uLL);
    memcpy(&v468[80], v459, 0x80uLL);
    v317 = OUTLINED_FUNCTION_69_7();
    memcpy(v317, v468, 0x580uLL);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A0, &qword_217794FF0);
  swift_allocObject();
  v318 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  sub_2172A44E0(v318);
  OUTLINED_FUNCTION_5_4();

  if ((v3 + 2) <= 1)
  {
    v319 = 1;
  }

  else
  {
    v319 = (v3 + 2);
  }

  v321 = *v3;
  v320 = v3[1];
  v322 = v455;
  v323 = v456;
  v324 = v455[5];
  sub_21733CAD0();
  v325 = v322[6];
  v326 = OUTLINED_FUNCTION_175_1();
  sub_21726A630(v326, v323 + v327, v328, v329);
  v330 = v322[7];
  v331 = OUTLINED_FUNCTION_69_7();
  sub_21726A630(v331, v323 + v332, v333, v334);
  *v323 = v321;
  v323[1] = v320;
  *(v323 + v322[8]) = v319;
  v335 = v3[5];
  v336 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v335);
  v337 = *(v336 + 24);
  sub_217751DE8();
  v337(v469, v335, v336);
  nullsub_1(v469, v338);
  memcpy(v470, v469, 0x161uLL);
  sub_21733CAD0();
  v339 = v3[5];
  v340 = v3[6];
  OUTLINED_FUNCTION_162_2(v3 + 2);
  v341 = OUTLINED_FUNCTION_5_4();
  v342(v341, v340);
  v343 = *&v468[2];
  __swift_project_boxed_opaque_existential_1(v468, *(&v468[1] + 1));
  v344 = *(*(v343 + 8) + 48);
  v345 = OUTLINED_FUNCTION_5_4();
  v346(v345);
  __swift_destroy_boxed_opaque_existential_1(v468);
  v454 = v466[1];
  v455 = v466[0];
  LODWORD(v453) = LOBYTE(v466[2]);
  v347 = v3[5];
  v348 = v3[6];
  OUTLINED_FUNCTION_162_2(v3 + 2);
  v349 = OUTLINED_FUNCTION_5_4();
  v350(v349, v348);
  OUTLINED_FUNCTION_67(v468, *(&v468[1] + 1));
  v352 = *(v351 + 56);
  v353 = OUTLINED_FUNCTION_5_4();
  v355 = v354(v353);
  v357 = v356;
  __swift_destroy_boxed_opaque_existential_1(v468);
  memcpy(v468, v470, 0x168uLL);
  *(&v468[22] + 1) = 0;
  v468[23] = 0uLL;
  nullsub_1(v468, v358);
  v359 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  OUTLINED_FUNCTION_124_4();
  v360 = OUTLINED_FUNCTION_15();
  v361(v360);
  v362 = v467[3];
  v363 = OUTLINED_FUNCTION_208_2();
  OUTLINED_FUNCTION_67(v363, v362);
  v365 = (*(v364 + 64))(v362);
  __swift_destroy_boxed_opaque_existential_1(v467);
  v366 = v3[5];
  v367 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v366);
  OUTLINED_FUNCTION_124_4();
  v368(v366, v367);
  v369 = v467[3];
  v370 = OUTLINED_FUNCTION_208_2();
  OUTLINED_FUNCTION_67(v370, v369);
  v372 = (*(v371 + 72))(v369);
  __swift_destroy_boxed_opaque_existential_1(v467);
  v373 = v3[5];
  v374 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v373);
  OUTLINED_FUNCTION_124_4();
  v375(v373, v374);
  v376 = v467[3];
  v377 = OUTLINED_FUNCTION_208_2();
  OUTLINED_FUNCTION_67(v377, v376);
  v379 = (*(v378 + 80))(v376);
  __swift_destroy_boxed_opaque_existential_1(v467);
  v380 = v3[5];
  v381 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v380);
  OUTLINED_FUNCTION_124_4();
  v382(v380, v381);
  v383 = v467[3];
  v384 = OUTLINED_FUNCTION_208_2();
  OUTLINED_FUNCTION_67(v384, v383);
  v386 = (*(v385 + 88))(v383);
  sub_21733CA78(v456, type metadata accessor for CloudArtist);
  v387 = OUTLINED_FUNCTION_69_7();
  sub_2171F0738(v387, &qword_27CB24AB0, &qword_217759088);
  v388 = OUTLINED_FUNCTION_175_1();
  sub_2171F0738(v388, &qword_27CB24328, &unk_21775D440);
  sub_21733CA78(v458, type metadata accessor for CloudArtist.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v467);
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v390 = v457;
  v391 = v457 + v389[9];
  v392 = v454;
  *v391 = v455;
  *(v391 + 8) = v392;
  *(v391 + 16) = v453;
  v393 = (v390 + v389[10]);
  *v393 = v355;
  v393[1] = v357;
  v394 = v390;
  memcpy((v390 + v389[11]), v468, 0x180uLL);
  *(v394 + v389[12]) = v365;
  *(v394 + v389[13]) = v372;
  *(v394 + v389[14]) = v379;
  *(v394 + v389[15]) = v386;
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v395, v396, v397);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v398, v399, v400);
  sub_2171F0738(v471, &qword_27CB255A8, &unk_21775D450);
  OUTLINED_FUNCTION_206_2();
  sub_2171F0738(v401, v402, v403);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v404, v405, v406);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0738(v407, v408, v409);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v410, v411, v412);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v413, v414, v415);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v416, v417, v418);
  OUTLINED_FUNCTION_82_4();
  sub_2171F0738(v419, v420, v421);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v422, v423, v424);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v425, v426, v427);
  sub_2171F0738(v491, &qword_27CB255B0, &unk_217793B50);
  OUTLINED_FUNCTION_82_4();
  sub_2171F0738(v428, v429, v430);
  OUTLINED_FUNCTION_206_2();
  sub_2171F0738(v431, v432, v433);
  sub_2171F0738(v492, &qword_27CB25320, &unk_21776E020);
  sub_2171F0738(v493, &qword_27CB24330, &unk_21775D460);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0738(v434, v435, v436);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21730B148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v114 = a1;
  v126 = a2;
  v125 = type metadata accessor for CloudCurator(0);
  v4 = *(*(v125 - 1) + 64);
  MEMORY[0x28223BE20](v125, v5);
  v7 = (&v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CloudCurator.Attributes(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v127 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE8148 != -1)
  {
    swift_once();
  }

  sub_2176CAC7C(qword_280C02450, v11, v12, v13, v14, v15, v16, v17, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1], v128[2], v128[3]);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v148) == 1)
  {
    sub_2172E22C0(v128);
  }

  else
  {
    memcpy(v128, v148, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v130);
    memcpy(v129, v128, 0x221uLL);
    sub_217284084(v129);
    memcpy(v131, v130, sizeof(v131));
    nullsub_1(v131, v19);
    memcpy(v128, v131, 0x1B8uLL);
  }

  if (qword_280BE8190 != -1)
  {
    swift_once();
  }

  v124 = sub_2172A4778(qword_280C02478);
  if (qword_280BE81A8 != -1)
  {
    swift_once();
  }

  sub_2176CA390(qword_280C02488, v20, v21, v22, v23, v24, v25, v26, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1], v128[2], v128[3]);
  v27 = v141;
  if (v141 == 1)
  {
    v117 = 0;
    v118 = 0;
    v27 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v116 = 0;
  }

  else
  {
    v122 = v146;
    v123 = v147;
    v28 = v145;
    v120 = v144;
    v29 = v143;
    v117 = v140;
    v118 = v142;
    sub_217751DE8();
    sub_217751DE8();
    v119 = v29;
    sub_217751DE8();
    v121 = v28;
    sub_217751DE8();
    v116 = sub_217751DC8();
    sub_2171F0738(&v140, &qword_27CB24B70, &unk_217759460);
  }

  if (qword_280BE8180 != -1)
  {
    swift_once();
  }

  v115 = sub_2172A475C(qword_280C02470);
  if (qword_280BE8168 != -1)
  {
    swift_once();
  }

  sub_2176CA2D8(qword_280C02460, v30, v31, v32, v33, v34, v35, v36, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1], v128[2], v128[3], v128[4], v128[5]);
  v37 = (LOBYTE(v129[0]) << 31 >> 31) & 3;
  if (qword_280BE8158 != -1)
  {
    swift_once();
  }

  v38 = sub_2172A4018();
  if (v39)
  {
    v46 = v38;
  }

  else
  {
    v46 = 0;
  }

  if (v39)
  {
    v47 = v39;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  if (qword_280BE8170 != -1)
  {
    swift_once();
  }

  v48 = *(v8 + 40);
  v49 = v127;
  sub_2176CA370(qword_280C02468, v39, v40, v41, v42, v43, v44, v45, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1], v128[2], v128[3], v128[4], v128[5], v128[6], v128[7]);
  memcpy(v49, v128, 0x1B8uLL);
  v58 = v117;
  v57 = v118;
  *(v49 + 440) = v124;
  *(v49 + 448) = v58;
  *(v49 + 456) = v27;
  *(v49 + 464) = v57;
  v59 = v120;
  *(v49 + 472) = v119;
  *(v49 + 480) = v59;
  v60 = v122;
  *(v49 + 488) = v121;
  *(v49 + 496) = v60;
  v61 = v115;
  v62 = v116;
  *(v49 + 504) = v123;
  *(v49 + 512) = v62;
  *(v49 + 520) = v61;
  *(v49 + 528) = v37;
  *(v49 + 536) = v46;
  *(v49 + 544) = v47;
  v139[1] = 0;
  v139[0] = 0;
  memset(&v139[3], 0, 104);
  v139[2] = 1;
  if (qword_280BE8138 != -1)
  {
    swift_once();
  }

  sub_2176CA354(qword_280BE8140, v50, v51, v52, v53, v54, v55, v56, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1], v128[2], v128[3], v128[4], v128[5], v128[6], v128[7]);
  if (v138[11])
  {
    sub_21726A630(v138, v129, &qword_27CB25330, &unk_21775E9B0);
    if (v129[11])
    {
      sub_2172EC1F4();
      sub_2171F0738(v139, &qword_27CB24498, &unk_217758960);
      sub_2171F0738(v129, &unk_27CB28230, &unk_21775CD50);
    }

    else
    {
      sub_2171F0738(v139, &qword_27CB24498, &unk_217758960);
      sub_2171F0738(v129, &qword_27CB25330, &unk_21775E9B0);
      memset(v132, 0, sizeof(v132));
    }

    memcpy(v139, v132, sizeof(v139));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25498, &unk_21775D580);
  swift_allocObject();
  v63 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  v64 = sub_2172A4740(v63);

  if (v64 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = v64;
  }

  v67 = *v3;
  v66 = v3[1];
  v68 = v125;
  v69 = v125[5];
  sub_21733CAD0();
  sub_21726A630(v139, v7 + v68[6], &qword_27CB24498, &unk_217758960);
  v70 = v68[8];
  *(v7 + v70) = 1;
  *v7 = v67;
  v7[1] = v66;
  *(v7 + v68[7]) = 1;
  v71 = *(v7 + v70);
  sub_217751DE8();
  sub_217221010(v71);
  *(v7 + v70) = v65;
  v72 = v3[5];
  v73 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v72);
  (*(v73 + 24))(v130, v72, v73);
  nullsub_1(v130, v74);
  memcpy(v131, v130, 0x161uLL);
  v75 = v7;
  v76 = v126;
  sub_21733CAD0();
  v77 = v3[5];
  v78 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v77);
  (*(v78 + 96))(v129, v77, v78);
  v79 = v129[3];
  v80 = v129[4];
  __swift_project_boxed_opaque_existential_1(v129, v129[3]);
  (*(*(v80 + 8) + 48))(v136, v79);
  __swift_destroy_boxed_opaque_existential_1(v129);
  v124 = v136[1];
  v125 = v136[0];
  LODWORD(v123) = v137;
  v81 = v3[5];
  v82 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v81);
  (*(v82 + 96))(v129, v81, v82);
  v83 = v129[3];
  v84 = v129[4];
  __swift_project_boxed_opaque_existential_1(v129, v129[3]);
  v85 = (*(*(v84 + 8) + 56))(v83);
  v121 = v86;
  v122 = v85;
  __swift_destroy_boxed_opaque_existential_1(v129);
  memcpy(v129, v131, 0x168uLL);
  memset(&v129[45], 0, 24);
  nullsub_1(v129, v87);
  v88 = v3[5];
  v89 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v88);
  (*(v89 + 96))(v133, v88, v89);
  v90 = v134;
  v91 = v135;
  __swift_project_boxed_opaque_existential_1(v133, v134);
  v92 = (*(*(v91 + 8) + 64))(v90);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v93 = v3[5];
  v94 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v93);
  (*(v94 + 96))(v133, v93, v94);
  v95 = v134;
  v96 = v135;
  __swift_project_boxed_opaque_existential_1(v133, v134);
  v97 = (*(*(v96 + 8) + 72))(v95);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v99 = v3[5];
  v98 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v99);
  (*(v98 + 96))(v133, v99, v98);
  v100 = v134;
  v101 = v135;
  __swift_project_boxed_opaque_existential_1(v133, v134);
  v102 = (*(*(v101 + 8) + 80))(v100);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v103 = v3[5];
  v104 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v103);
  (*(v104 + 96))(v133, v103, v104);
  v105 = v134;
  v106 = v135;
  __swift_project_boxed_opaque_existential_1(v133, v134);
  v107 = (*(*(v106 + 8) + 88))(v105);
  sub_2171F0738(v139, &qword_27CB24498, &unk_217758960);
  sub_21733CA78(v127, type metadata accessor for CloudCurator.Attributes);
  sub_21733CA78(v75, type metadata accessor for CloudCurator);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v109 = v76 + v108[9];
  v110 = v124;
  *v109 = v125;
  *(v109 + 8) = v110;
  *(v109 + 16) = v123;
  v111 = (v76 + v108[10]);
  v112 = v121;
  *v111 = v122;
  v111[1] = v112;
  memcpy((v76 + v108[11]), v129, 0x180uLL);
  *(v76 + v108[12]) = v92;
  *(v76 + v108[13]) = v97;
  *(v76 + v108[14]) = v102;
  *(v76 + v108[15]) = v107;
  return sub_2171F0738(v138, &qword_27CB25330, &unk_21775E9B0);
}

uint64_t sub_21730BC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v113 = a1;
  v126 = a2;
  v125 = type metadata accessor for CloudRadioShow(0);
  v4 = *(*(v125 - 1) + 64);
  MEMORY[0x28223BE20](v125, v5);
  v7 = (&v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CloudRadioShow.Attributes(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v127 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6648 != -1)
  {
    swift_once();
  }

  sub_2176CAC70(qword_280C01FF8, v11, v12, v13, v14, v15, v16, v17, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1]);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v148) == 1)
  {
    sub_2172E22C0(v128);
  }

  else
  {
    memcpy(v128, v148, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v130);
    memcpy(v129, v128, 0x221uLL);
    sub_217284084(v129);
    memcpy(v131, v130, sizeof(v131));
    nullsub_1(v131, v19);
    memcpy(v128, v131, 0x1B8uLL);
  }

  if (qword_280BE6680 != -1)
  {
    swift_once();
  }

  v124 = sub_2172A4724(qword_280C02018);
  if (qword_280BE6698 != -1)
  {
    swift_once();
  }

  sub_2176CA348(qword_280C02028, v20, v21, v22, v23, v24, v25, v26, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1]);
  v27 = v141;
  if (v141 == 1)
  {
    v116 = 0;
    v117 = 0;
    v27 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v115 = 0;
  }

  else
  {
    v121 = v146;
    v122 = v147;
    v28 = v145;
    v119 = v144;
    v29 = v143;
    v116 = v140;
    v117 = v142;
    sub_217751DE8();
    sub_217751DE8();
    v118 = v29;
    sub_217751DE8();
    v120 = v28;
    sub_217751DE8();
    v115 = sub_217751DC8();
    sub_2171F0738(&v140, &qword_27CB24B70, &unk_217759460);
  }

  v123 = v27;
  if (qword_280BE6670 != -1)
  {
    swift_once();
  }

  v114 = sub_2172A4708(qword_280C02010);
  if (qword_280BE6638 != -1)
  {
    swift_once();
  }

  v30 = sub_2172A3F00();
  v32 = v31;
  if (qword_280BE6658 != -1)
  {
    swift_once();
  }

  v33 = sub_2172A3F00();
  if (v34)
  {
    v41 = v33;
  }

  else
  {
    v41 = 0;
  }

  if (v34)
  {
    v42 = v34;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  if (qword_280BE6660 != -1)
  {
    swift_once();
  }

  v43 = *(v8 + 44);
  v44 = v127;
  sub_2176CA328(qword_280C02008, v34, v35, v36, v37, v38, v39, v40, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1], v128[2], v128[3], v128[4], v128[5]);
  memcpy(v44, v128, 0x1B8uLL);
  v52 = v116;
  *(v44 + 440) = v124;
  *(v44 + 448) = v52;
  v53 = v117;
  v54 = v118;
  *(v44 + 456) = v123;
  *(v44 + 464) = v53;
  v55 = v119;
  v56 = v120;
  *(v44 + 472) = v54;
  *(v44 + 480) = v55;
  v57 = v121;
  v58 = v122;
  *(v44 + 488) = v56;
  *(v44 + 496) = v57;
  v59 = v114;
  v60 = v115;
  *(v44 + 504) = v58;
  *(v44 + 512) = v60;
  *(v44 + 520) = v59;
  *(v44 + 528) = 2;
  *(v44 + 536) = v30;
  *(v44 + 544) = v32;
  *(v44 + 552) = v41;
  *(v44 + 560) = v42;
  v139[1] = 0;
  v139[0] = 0;
  memset(&v139[3], 0, 104);
  v139[2] = 1;
  if (qword_280BE6628 != -1)
  {
    swift_once();
  }

  sub_2176CA30C(qword_280BE6630, v45, v46, v47, v48, v49, v50, v51, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1], v128[2], v128[3], v128[4], v128[5]);
  if (v138[11])
  {
    sub_21726A630(v138, v129, &qword_27CB25330, &unk_21775E9B0);
    if (v129[11])
    {
      sub_2172EC1F4(v132, v113, 0);
      sub_2171F0738(v139, &qword_27CB25640, &qword_217764750);
      sub_2171F0738(v129, &unk_27CB28230, &unk_21775CD50);
    }

    else
    {
      sub_2171F0738(v139, &qword_27CB25640, &qword_217764750);
      sub_2171F0738(v129, &qword_27CB25330, &unk_21775E9B0);
      memset(v132, 0, sizeof(v132));
    }

    memcpy(v139, v132, sizeof(v139));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
  swift_allocObject();
  v61 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  v62 = sub_2172A46EC(v61);

  if (v62 <= 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = v62;
  }

  v65 = *v3;
  v64 = v3[1];
  v66 = v125;
  v67 = v125[5];
  sub_21733CAD0();
  sub_21726A630(v139, v7 + v66[6], &qword_27CB25640, &qword_217764750);
  v68 = v66[8];
  *(v7 + v68) = 1;
  *v7 = v65;
  v7[1] = v64;
  *(v7 + v66[7]) = 1;
  v69 = *(v7 + v68);
  sub_217751DE8();
  sub_217221010(v69);
  *(v7 + v68) = v63;
  v70 = v3[5];
  v71 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v70);
  (*(v71 + 24))(v130, v70, v71);
  nullsub_1(v130, v72);
  memcpy(v131, v130, 0x161uLL);
  v73 = v7;
  v74 = v126;
  sub_21733CAD0();
  v75 = v3[5];
  v76 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v75);
  (*(v76 + 96))(v129, v75, v76);
  v77 = v129[3];
  v78 = v129[4];
  __swift_project_boxed_opaque_existential_1(v129, v129[3]);
  (*(*(v78 + 8) + 48))(v136, v77);
  __swift_destroy_boxed_opaque_existential_1(v129);
  v124 = v136[1];
  v125 = v136[0];
  LODWORD(v123) = v137;
  v79 = v3[5];
  v80 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v79);
  (*(v80 + 96))(v129, v79, v80);
  v81 = v129[3];
  v82 = v129[4];
  __swift_project_boxed_opaque_existential_1(v129, v129[3]);
  v83 = (*(*(v82 + 8) + 56))(v81);
  v121 = v84;
  v122 = v83;
  __swift_destroy_boxed_opaque_existential_1(v129);
  memcpy(v129, v131, 0x168uLL);
  memset(&v129[45], 0, 24);
  nullsub_1(v129, v85);
  v86 = v3[5];
  v87 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v86);
  (*(v87 + 96))(v133, v86, v87);
  v88 = v134;
  v89 = v135;
  __swift_project_boxed_opaque_existential_1(v133, v134);
  v90 = (*(*(v89 + 8) + 64))(v88);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v91 = v3[5];
  v92 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v91);
  (*(v92 + 96))(v133, v91, v92);
  v93 = v134;
  v94 = v135;
  __swift_project_boxed_opaque_existential_1(v133, v134);
  v95 = (*(*(v94 + 8) + 72))(v93);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v97 = v3[5];
  v96 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v97);
  (*(v96 + 96))(v133, v97, v96);
  v98 = v134;
  v99 = v135;
  __swift_project_boxed_opaque_existential_1(v133, v134);
  v100 = (*(*(v99 + 8) + 80))(v98);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v101 = v3[5];
  v102 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v101);
  (*(v102 + 96))(v133, v101, v102);
  v103 = v134;
  v104 = v135;
  __swift_project_boxed_opaque_existential_1(v133, v134);
  v105 = (*(*(v104 + 8) + 88))(v103);
  sub_2171F0738(v139, &qword_27CB25640, &qword_217764750);
  sub_21733CA78(v127, type metadata accessor for CloudRadioShow.Attributes);
  sub_21733CA78(v73, type metadata accessor for CloudRadioShow);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v107 = v74 + v106[9];
  v108 = v124;
  *v107 = v125;
  *(v107 + 8) = v108;
  *(v107 + 16) = v123;
  v109 = (v74 + v106[10]);
  v110 = v121;
  *v109 = v122;
  v109[1] = v110;
  memcpy((v74 + v106[11]), v129, 0x180uLL);
  *(v74 + v106[12]) = v90;
  *(v74 + v106[13]) = v95;
  *(v74 + v106[14]) = v100;
  *(v74 + v106[15]) = v105;
  return sub_2171F0738(v138, &qword_27CB25330, &unk_21775E9B0);
}

uint64_t sub_21730C6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v115 = a2;
  v114 = type metadata accessor for CloudRecordLabel(0);
  v5 = *(*(v114 - 1) + 64);
  MEMORY[0x28223BE20](v114, v6);
  v8 = (&v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CloudRecordLabel.Attributes(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v116 = (&v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27CB23B10 != -1)
  {
    swift_once();
  }

  sub_2176CA854(qword_27CB8A248, v12, v13, v14, v15, v16, v17, v18, v109, v110, v111, v112, v113, v114, v115, v116, v117[0], v117[1], v117[2], v117[3], v117[4], v117[5], v117[6], v117[7], v117[8], v117[9]);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v129) == 1)
  {
    sub_2172E22C0(v117);
  }

  else
  {
    memcpy(v117, v129, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v119);
    memcpy(v118, v117, 0x221uLL);
    sub_217284084(v118);
    memcpy(v120, v119, 0x1B8uLL);
    nullsub_1(v120, v20);
    memcpy(v117, v120, 0x1B8uLL);
  }

  if (qword_27CB23B38 != -1)
  {
    swift_once();
  }

  v21 = sub_2172A4004();
  v112 = v22;
  v113 = v21;
  if (qword_27CB23B40 != -1)
  {
    swift_once();
  }

  v23 = sub_2172A4004();
  v110 = v24;
  v111 = v23;
  v25 = sub_217751DC8();
  if (qword_27CB23B18 != -1)
  {
    swift_once();
  }

  v26 = sub_2172A48C0(qword_27CB8A250);
  if (qword_27CB23B20 != -1)
  {
    swift_once();
  }

  v109 = a1;
  v27 = sub_2172A48A4(qword_27CB8A258);
  if (qword_27CB23B30 != -1)
  {
    swift_once();
  }

  v28 = sub_2172A4004();
  if (v29)
  {
    v36 = v28;
  }

  else
  {
    v36 = 0;
  }

  if (v29)
  {
    v37 = v29;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  if (qword_27CB23B48 != -1)
  {
    swift_once();
  }

  v38 = *(v9 + 36);
  v39 = v116;
  sub_2176CA39C(qword_27CB8A280, v29, v30, v31, v32, v33, v34, v35, v109, v110, v111, v112, v113, v114, v115, v116, v117[0], v117[1], v117[2], v117[3], v117[4], v117[5], v117[6], v117[7], v117[8], v117[9], v117[10], v117[11], v117[12], v117[13]);
  memcpy(v39, v117, 0x1B8uLL);
  v40 = v112;
  v39[55] = v113;
  v39[56] = v40;
  v41 = v110;
  v39[57] = v111;
  v39[58] = v41;
  v39[59] = v25;
  v39[60] = v26;
  v39[61] = v27;
  v39[62] = v36;
  v39[63] = v37;
  v128[1] = 0;
  v128[0] = 0;
  v128[2] = 1;
  bzero(&v128[3], 0xE8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255E8, &unk_21775D4D0);
  swift_allocObject();
  v42 = sub_21736C3E8(0x722D74736574616CLL, 0xEF73657361656C65, 1);
  sub_2176CAF84(v42, v43, v44, v45, v46, v47, v48, v49, v109, v110, v111, v112, v113, v114, v115, v116, v117[0], v117[1], v117[2], v117[3], v117[4], v117[5], v117[6], v117[7], v117[8], v117[9], v117[10], v117[11], v117[12], v117[13]);

  swift_allocObject();
  v50 = sub_21736C3E8(0x656C65722D706F74, 0xEC00000073657361, 1);
  sub_2176CAF84(v50, v51, v52, v53, v54, v55, v56, v57, v109, v110, v111, v112, v113, v114, v115, v116, v117[0], v117[1], v117[2], v117[3], v117[4], v117[5], v117[6], v117[7], v117[8], v117[9], v117[10], v117[11], v117[12], v117[13]);

  if (v127[11] | v126[11])
  {
    sub_21726A630(v127, v118, &qword_27CB25318, &qword_2177657C0);
    if (v118[11])
    {
      v58 = v109;
      sub_2172EBBF4(v120, v109, 0);
      sub_2171F0738(v118, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v118, &qword_27CB25318, &qword_2177657C0);
      memset(v120, 0, 128);
      v58 = v109;
    }

    sub_21726A630(v126, v118, &qword_27CB25318, &qword_2177657C0);
    if (v118[11])
    {
      sub_2172EBBF4(v119, v58, 0);
      sub_2171F0738(v128, &qword_27CB24A98, &unk_217759060);
      sub_2171F0738(v118, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v128, &qword_27CB24A98, &unk_217759060);
      sub_2171F0738(v118, &qword_27CB25318, &qword_2177657C0);
      memset(v119, 0, 128);
    }

    memcpy(v118, v120, 0x80uLL);
    memcpy(&v118[16], v119, 0x80uLL);
    memcpy(v128, v118, sizeof(v128));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25488, &qword_21775CD08);
  swift_allocObject();
  v59 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  v60 = sub_2172A4888(v59);

  if (v60 <= 1)
  {
    v61 = 1;
  }

  else
  {
    v61 = v60;
  }

  v63 = *v3;
  v62 = v3[1];
  v64 = v114;
  v65 = v114[5];
  sub_21733CAD0();
  sub_21726A630(v128, v8 + v64[7], &qword_27CB24A98, &unk_217759060);
  *v8 = v63;
  v8[1] = v62;
  *(v8 + v64[6]) = 1;
  *(v8 + v64[8]) = v61;
  v66 = v3[5];
  v67 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v66);
  v68 = *(v67 + 24);
  sub_217751DE8();
  v68(v119, v66, v67);
  nullsub_1(v119, v69);
  memcpy(v120, v119, 0x161uLL);
  v70 = v8;
  v71 = v115;
  sub_21733CAD0();
  v72 = v3[5];
  v73 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v72);
  (*(v73 + 96))(v118, v72, v73);
  v74 = v118[3];
  v75 = v118[4];
  __swift_project_boxed_opaque_existential_1(v118, v118[3]);
  (*(*(v75 + 8) + 48))(v124, v74);
  __swift_destroy_boxed_opaque_existential_1(v118);
  v113 = v124[1];
  v114 = v124[0];
  LODWORD(v112) = v125;
  v76 = v3[5];
  v77 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v76);
  (*(v77 + 96))(v118, v76, v77);
  v78 = v118[3];
  v79 = v118[4];
  __swift_project_boxed_opaque_existential_1(v118, v118[3]);
  v80 = (*(*(v79 + 8) + 56))(v78);
  v110 = v81;
  v111 = v80;
  __swift_destroy_boxed_opaque_existential_1(v118);
  memcpy(v118, v120, 0x168uLL);
  memset(&v118[45], 0, 24);
  nullsub_1(v118, v82);
  v83 = v3[5];
  v84 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v83);
  (*(v84 + 96))(v121, v83, v84);
  v85 = v122;
  v86 = v123;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  v87 = (*(*(v86 + 8) + 64))(v85);
  __swift_destroy_boxed_opaque_existential_1(v121);
  v88 = v3[5];
  v89 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v88);
  (*(v89 + 96))(v121, v88, v89);
  v90 = v122;
  v91 = v123;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  v92 = (*(*(v91 + 8) + 72))(v90);
  __swift_destroy_boxed_opaque_existential_1(v121);
  v94 = v3[5];
  v93 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v94);
  (*(v93 + 96))(v121, v94, v93);
  v95 = v122;
  v96 = v123;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  v97 = (*(*(v96 + 8) + 80))(v95);
  __swift_destroy_boxed_opaque_existential_1(v121);
  v98 = v3[5];
  v99 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v98);
  (*(v99 + 96))(v121, v98, v99);
  v100 = v122;
  v101 = v123;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  v102 = (*(*(v101 + 8) + 88))(v100);
  sub_21733CA78(v70, type metadata accessor for CloudRecordLabel);
  sub_2171F0738(v128, &qword_27CB24A98, &unk_217759060);
  sub_21733CA78(v116, type metadata accessor for CloudRecordLabel.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v121);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v104 = v71 + v103[9];
  v105 = v113;
  *v104 = v114;
  *(v104 + 8) = v105;
  *(v104 + 16) = v112;
  v106 = (v71 + v103[10]);
  v107 = v110;
  *v106 = v111;
  v106[1] = v107;
  memcpy((v71 + v103[11]), v118, 0x180uLL);
  *(v71 + v103[12]) = v87;
  *(v71 + v103[13]) = v92;
  *(v71 + v103[14]) = v97;
  *(v71 + v103[15]) = v102;
  sub_2171F0738(v127, &qword_27CB25318, &qword_2177657C0);
  return sub_2171F0738(v126, &qword_27CB25318, &qword_2177657C0);
}

uint64_t sub_21730D230(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v465 = v4;
  v6 = v5;
  v7 = type metadata accessor for CloudSong(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v410 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = sub_2177517D8();
  v414 = *(v462 - 8);
  v12 = *(v414 + 64);
  MEMORY[0x28223BE20](v462, v13);
  v413 = &v410 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v461 = &v410 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v410 - v21;
  v473 = type metadata accessor for CloudPreviewAsset();
  v23 = *(*(v473 - 8) + 64);
  MEMORY[0x28223BE20](v473, v24);
  v472 = &v410 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v471 = type metadata accessor for PreviewAsset();
  v468 = *(v471 - 8);
  v26 = *(v468 + 64);
  MEMORY[0x28223BE20](v471, v27);
  v29 = &v410 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  v469 = *(v30 - 8);
  v470 = v30;
  v31 = *(v469 + 64);
  MEMORY[0x28223BE20](v30, v32);
  v474 = &v410 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v38 = &v410 - v37;
  v464 = type metadata accessor for CloudSong.Attributes(0);
  v39 = *(*(v464 - 8) + 64);
  MEMORY[0x28223BE20](v464, v40);
  v42 = &v410 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE96D8 != -1)
  {
    swift_once();
  }

  *&result = COERCE_DOUBLE(sub_2172A41F0());
  v463 = v44;
  if (v44)
  {
    v457 = 0;
    goto LABEL_9;
  }

  v51 = *&result * 1000.0;
  if (COERCE__INT64(fabs(*&result * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_200;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v51 < 9.22337204e18)
  {
    v457 = v51;
LABEL_9:
    if (qword_280BE9708 != -1)
    {
      swift_once();
    }

    sub_2176CA860(qword_280C02840, v44, v45, v46, v47, v48, v49, v50, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427);
    memcpy(v509, v508, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v509) == 1)
    {
      sub_2172E22C0(v507);
    }

    else
    {
      memcpy(v489, v509, 0x221uLL);
      Artwork.convertToCloudArtworkAttribute()(v477);
      memcpy(v501, v489, 0x221uLL);
      sub_217284084(v501);
      memcpy(v489, v477, 0x1B8uLL);
      nullsub_1(v489, v52);
      memcpy(v507, v489, sizeof(v507));
    }

    if (qword_280BE9960 != -1)
    {
      swift_once();
    }

    v467 = v11;
    v53 = sub_2172A41AC();
    v455 = v54;
    v456 = v53;
    if (qword_280BE9958 != -1)
    {
      swift_once();
    }

    v55 = sub_2172A41AC();
    if (v56)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0;
    }

    v58 = 0xE000000000000000;
    if (v56)
    {
      v58 = v56;
    }

    v453 = v58;
    v454 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C8, &qword_21775D4A0);
    swift_allocObject();
    v59 = sub_2172E3DC0(0x7255747369747261, 0xE90000000000006CLL);
    sub_2176CA560(v59, v60, v61, v62, v63, v64, v65, v66, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);

    if (qword_280BE9920 != -1)
    {
      swift_once();
    }

    v459 = v7;
    v67 = sub_2172A41AC();
    v451 = v68;
    v452 = v67;
    if (qword_280BE9880 != -1)
    {
      swift_once();
    }

    v69 = qword_280BE9888;
    v77 = sub_2172A43DC(qword_280BE9888);
    if (qword_280BE97B8 != -1)
    {
      swift_once();
    }

    v460 = v6;
    v78 = qword_280C02888;
    sub_2172A43D0(qword_280C02888, v70, v71, v72, v73, v74, v75, v76, v410, v411, v412, v413, v414, v415, SWORD2(v415), SBYTE6(v415), SHIBYTE(v415), v416, v417, v418, v419, v420, v421, v422, v423);
    v450 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v77, v79, 0);
    v80 = v78;

    v81 = sub_2172A43DC(v69);
    sub_2172A43D0(v78, v82, v83, v84, v85, v86, v87, v88, v410, v411, v412, v413, v414, v415, SWORD2(v415), SBYTE6(v415), SHIBYTE(v415), v416, v417, v418, v419, v420, v421, v422, v423);
    v449 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v81, v89, 1);

    if (qword_280BE98B0 != -1)
    {
      swift_once();
    }

    v90 = sub_2172A41AC();
    v447 = v91;
    v448 = v90;
    if (qword_280BE9878 != -1)
    {
      swift_once();
    }

    sub_2176CA5B8(qword_280C02910, v91, v92, v93, v94, v95, v96, v97, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429);
    if (LOBYTE(v501[0]) == 2)
    {
      v445 = 0;
      v446 = 0;
    }

    else
    {
      if (v501[0])
      {
        v98 = 0x746963696C707865;
      }

      else
      {
        v98 = 0x6E61656C63;
      }

      v99 = 0xE500000000000000;
      if (v501[0])
      {
        v99 = 0xE800000000000000;
      }

      v445 = v99;
      v446 = v98;
    }

    if (qword_280BE9950 != -1)
    {
      swift_once();
    }

    v444 = sub_2172A41C0();
    v443 = v100;
    if (qword_280BE97D0 != -1)
    {
      swift_once();
    }

    v442 = sub_2172A45A4(qword_280C02898);
    if (qword_280BE9838 != -1)
    {
      swift_once();
    }

    sub_2176CA5AC(qword_280C028E8, v101, v102, v103, v104, v105, v106, v107, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427);
    v503 = v501[0];
    v504 = v501[1];
    v505 = v501[2];
    v506 = v501[3];
    v108 = *(&v501[0] + 1);
    if (*(&v501[0] + 1) == 1)
    {
      v435 = 0;
      v436 = 0;
      v108 = 0;
      v437 = 0;
      v438 = 0;
      v439 = 0;
      v440 = 0uLL;
      v434 = 0;
    }

    else
    {
      v440 = v506;
      v109 = *(&v505 + 1);
      v438 = v505;
      v110 = *(&v504 + 1);
      v435 = v503;
      v436 = v504;
      sub_217751DE8();
      sub_217751DE8();
      v437 = v110;
      sub_217751DE8();
      v439 = v109;
      sub_217751DE8();
      v434 = sub_217751DC8();
      sub_2171F0738(&v503, &qword_27CB24B70, &unk_217759460);
    }

    v441 = v108;
    if (qword_280BE9790 != -1)
    {
      swift_once();
    }

    v433 = sub_2172A4588(qword_280C02868);
    if (qword_280BE82C0 != -1)
    {
      swift_once();
    }

    v432 = sub_2172A456C(qword_280C02560);
    if (qword_280BE9948 != -1)
    {
      swift_once();
    }

    v429 = sub_2172A41D4(qword_280C02980);
    if (qword_280BE8260 != -1)
    {
      swift_once();
    }

    v118 = qword_280C02510;
    sub_2176CA5A0(qword_280C02510, v111, v112, v113, v114, v115, v116, v117, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427);
    v125 = *&v501[1];
    if (*&v501[1] == 1)
    {
      v431 = 2;
    }

    else
    {
      v431 = *&v501[0];
      sub_21733B290(*&v501[0], *(&v501[0] + 1), *&v501[1]);
    }

    sub_2176CA5A0(v118, v119, v125, v120, v121, v122, v123, v124, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427);
    v132 = *&v501[1];
    if (*&v501[1] == 1)
    {
      v430 = 2;
    }

    else
    {
      v430 = *&v501[0] >> 8;
      sub_21733B290(*&v501[0], *(&v501[0] + 1), *&v501[1]);
    }

    sub_2172A43D0(v80, v126, v132, v127, v128, v129, v130, v131, v410, v411, v412, v413, v414, v415, SWORD2(v415), SBYTE6(v415), SHIBYTE(v415), v416, v417, v418, v419, v420, v421, v422, v423);
    HIDWORD(v428) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v133, 1u);
    sub_2172A43D0(v80, v134, v135, v136, v137, v138, v139, v140, v410, v411, v412, v413, v414, v415, SWORD2(v415), SBYTE6(v415), SHIBYTE(v415), v416, v417, v418, v419, v420, v421, v422, v423);
    LODWORD(v428) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v141, 0);
    if (qword_280BE8270 != -1)
    {
      swift_once();
    }

    sub_2172A43D0(qword_280C02520, v142, v143, v144, v145, v146, v147, v148, v410, v411, v412, v413, v414, v415, SWORD2(v415), SBYTE6(v415), SHIBYTE(v415), v416, v417, v418, v419, v420, v421, v422, v423);
    HIDWORD(v416) = v149;
    if (qword_280BE9760 != -1)
    {
      swift_once();
    }

    v150 = sub_2172A41AC();
    v426 = v151;
    v427 = v150;
    if (qword_280BE9868 != -1)
    {
      swift_once();
    }

    v425 = sub_2172A41C0();
    HIDWORD(v424) = v152;
    if (qword_280BE98A0 != -1)
    {
      swift_once();
    }

    v153 = sub_2172A41AC();
    v422 = v154;
    v423 = v153;
    if (qword_280BE9808 != -1)
    {
      swift_once();
    }

    v421 = sub_2172A41C0();
    HIDWORD(v420) = v155;
    if (qword_280BE9750 != -1)
    {
      swift_once();
    }

    v156 = sub_2172A41AC();
    if (v157)
    {
      v158 = v156;
    }

    else
    {
      v158 = 0;
    }

    v159 = 0xE000000000000000;
    if (v157)
    {
      v159 = v157;
    }

    v418 = v159;
    v419 = v158;
    if (qword_280BE8258 != -1)
    {
      swift_once();
    }

    v417 = sub_2172A4550(qword_280C02508);
    if (qword_280BE9800 != -1)
    {
      swift_once();
    }

    sub_2176CAA38(qword_280C028C0, v160, v161, v162, v163, v164, v165, v166, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427);
    if (qword_280BE9858 != -1)
    {
      swift_once();
    }

    v167 = sub_2172A4534(qword_280C02900);
    v466 = v42;
    v458 = v38;
    if (v167)
    {
      v168 = v167;
      v169 = *(v167 + 16);
      if (v169)
      {
        v415 = v22;
        v412 = v3;
        v495[0] = MEMORY[0x277D84F90];
        sub_2172766B8(0, v169, 0);
        v170 = v495[0];
        v171 = *(v468 + 80);
        v411 = v168;
        v172 = v168 + ((v171 + 32) & ~v171);
        v468 = *(v468 + 72);
        for (i = v169 - 1; ; --i)
        {
          sub_21733CAD0();
          memcpy(v489, v29, 0x221uLL);
          memcpy(v501, v29, 0x221uLL);
          if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v501) == 1)
          {
            sub_2172E22C0(v479);
          }

          else
          {
            memcpy(v475, v501, 0x221uLL);
            memcpy(v476, v489, 0x221uLL);
            sub_217284028(v476, v477);
            Artwork.convertToCloudArtworkAttribute()(v478);
            memcpy(v477, v475, 0x221uLL);
            sub_217284084(v477);
            memcpy(v475, v478, 0x1B8uLL);
            nullsub_1(v475, v174);
            memcpy(v479, v475, sizeof(v479));
          }

          v176 = v471;
          v175 = v472;
          v177 = v473;
          sub_21726A630(&v29[*(v471 + 20)], &v472[*(v473 + 20)], &unk_27CB277C0, &qword_217758DC0);
          sub_21726A630(&v29[*(v176 + 24)], v175 + *(v177 + 24), &unk_27CB277C0, &qword_217758DC0);
          memcpy(v175, v479, 0x1B8uLL);
          v178 = v474;
          sub_21733CAD0();
          v179 = sub_217751DC8();
          sub_21733CA78(v175, type metadata accessor for CloudPreviewAsset);
          sub_21733CA78(v29, type metadata accessor for PreviewAsset);
          v180 = v178;
          *&v178[*(v470 + 28)] = v179;
          v495[0] = v170;
          v182 = *(v170 + 16);
          v181 = *(v170 + 24);
          if (v182 >= v181 >> 1)
          {
            sub_2172766B8(v181 > 1, v182 + 1, 1);
            v180 = v474;
            v170 = v495[0];
          }

          *(v170 + 16) = v182 + 1;
          sub_21726A594(v180, v170 + ((*(v469 + 80) + 32) & ~*(v469 + 80)) + *(v469 + 72) * v182, &qword_27CB24A68, &qword_217759030);
          if (!i)
          {
            break;
          }

          v172 += v468;
        }

        v3 = v412;
        v22 = v415;
      }

      else
      {

        v170 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v170 = 0;
    }

    v183 = v462;
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v184 = type metadata accessor for CloudFormatter();
    v192 = __swift_project_value_buffer(v184, qword_280BE8918);
    if (qword_280BE98F0 != -1)
    {
      swift_once();
    }

    sub_2176CA580(qword_280C02950, v185, v186, v187, v188, v189, v190, v191, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    v193 = v461;
    sub_21726A630(v22, v461, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v193, 1, v183) == 1)
    {
      sub_2171F0738(v22, &qword_27CB241C0, &qword_217759480);
      sub_2171F0738(v193, &qword_27CB241C0, &qword_217759480);
      v474 = 0;
      v473 = 0;
    }

    else
    {
      v201 = v414;
      v202 = *(v414 + 32);
      v415 = v22;
      v203 = v413;
      v202(v413, v193, v183);
      v204 = *(v192 + *(v184 + 20));
      v205 = sub_2177517A8();
      v206 = [v204 stringFromDate_];

      v474 = sub_217751F48();
      v473 = v207;

      (*(v201 + 8))(v203, v183);
      sub_2171F0738(v415, &qword_27CB241C0, &qword_217759480);
    }

    if (qword_280BE8288 != -1)
    {
      swift_once();
    }

    sub_2176CAA44(qword_280C02530, v194, v195, v196, v197, v198, v199, v200, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429);
    if (qword_280BE98E8 != -1)
    {
      swift_once();
    }

    v208 = BYTE4(v416) & 1;
    v472 = sub_2172A41C0();
    v216 = v209;
    if (qword_280BE9770 != -1)
    {
      swift_once();
    }

    v217 = v464;
    v218 = v466;
    v219 = v466 + *(v464 + 148);
    sub_2176CA560(qword_280C02858, v209, v210, v211, v212, v213, v214, v215, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE96C8 != -1)
    {
      swift_once();
    }

    v220 = sub_2172A41AC();
    v222 = v221;
    v223 = v3;
    if (v429)
    {
      v224 = v429;
    }

    else
    {
      v224 = MEMORY[0x277D84F90];
    }

    memcpy(v218, v507, 0x1B8uLL);
    v225 = v455;
    v218[55] = v456;
    v218[56] = v225;
    v226 = v453;
    v218[57] = v454;
    v218[58] = v226;
    sub_21726A594(v458, v218 + v217[7], &unk_27CB277C0, &qword_217758DC0);
    v227 = (v218 + v217[8]);
    v228 = v451;
    *v227 = v452;
    v227[1] = v228;
    v229 = v449;
    *(v218 + v217[9]) = v450;
    *(v218 + v217[10]) = v229;
    v230 = (v218 + v217[11]);
    v231 = v447;
    *v230 = v448;
    v230[1] = v231;
    v232 = (v218 + v217[12]);
    v233 = v445;
    *v232 = v446;
    v232[1] = v233;
    v234 = v218 + v217[13];
    *v234 = v444;
    v234[8] = v443 & 1;
    v235 = v218 + v217[14];
    *v235 = v457;
    v235[8] = v463 & 1;
    *(v218 + v217[15]) = v442;
    v236 = (v218 + v217[16]);
    v237 = v441;
    *v236 = v435;
    v236[1] = v237;
    v238 = v437;
    v236[2] = v436;
    v236[3] = v238;
    v239 = v439;
    v236[4] = v438;
    v236[5] = v239;
    v240 = *(&v440 + 1);
    v236[6] = v440;
    v236[7] = v240;
    v241 = v433;
    v236[8] = v434;
    *(v218 + v217[17]) = v241;
    LOBYTE(v241) = v431;
    *(v218 + v217[18]) = v432;
    *(v218 + v217[19]) = v224;
    *(v218 + v217[20]) = v241;
    *(v218 + v217[21]) = v430;
    LOBYTE(v241) = v428;
    *(v218 + v217[22]) = BYTE4(v428);
    *(v218 + v217[23]) = v241;
    *(v218 + v217[24]) = v208;
    v242 = (v218 + v217[25]);
    v243 = v426;
    *v242 = v427;
    v242[1] = v243;
    v244 = v218 + v217[26];
    *v244 = v425;
    v244[8] = BYTE4(v424) & 1;
    v245 = (v218 + v217[27]);
    v246 = v422;
    *v245 = v423;
    v245[1] = v246;
    v247 = v218 + v217[28];
    *v247 = v421;
    v247[8] = BYTE4(v420) & 1;
    v248 = (v218 + v217[29]);
    v249 = v418;
    *v248 = v419;
    v248[1] = v249;
    *(v218 + v217[30]) = v417;
    memcpy(v218 + v217[31], v502, 0x78uLL);
    *(v218 + v217[32]) = v170;
    v250 = (v218 + v217[33]);
    v251 = v473;
    *v250 = v474;
    v250[1] = v251;
    memcpy(v218 + v217[34], v479, 0xB0uLL);
    v259 = v217[35];
    v260 = v218 + v217[36];
    *v260 = v472;
    v260[8] = v216 & 1;
    v261 = (v218 + v217[38]);
    *v261 = v220;
    v261[1] = v222;
    if (qword_280BE8280 != -1)
    {
      swift_once();
    }

    sub_2172A43D0(qword_280C02528, v252, v253, v254, v255, v256, v257, v258, v410, v411, v412, v413, v414, v415, SWORD2(v415), SBYTE6(v415), SHIBYTE(v415), v416, v417, v418, v419, v420, v421, v422, v423);
    *(v218 + v259) = v262;
    v501[0] = 0uLL;
    *&v501[1] = 1;
    bzero(&v501[1] + 8, 0x5E8uLL);
    v270 = v223;
    if (qword_280BE9738 != -1)
    {
      swift_once();
    }

    sub_2176CA544(qword_280BE9740, v263, v264, v265, v266, v267, v268, v269, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    v278 = v465;
    if (qword_280BE82D0 != -1)
    {
      swift_once();
    }

    sub_2176CA528(qword_280C02568, v271, v272, v273, v274, v275, v276, v277, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE9710 != -1)
    {
      swift_once();
    }

    sub_2176CA50C(qword_280BE9718, v279, v280, v281, v282, v283, v284, v285, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE9848 != -1)
    {
      swift_once();
    }

    sub_2176CAAF4(qword_280C028F8, v286, v287, v288, v289, v290, v291, v292, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE98B8 != -1)
    {
      swift_once();
    }

    sub_2176CAB10(qword_280C02930, v293, v294, v295, v296, v297, v298, v299, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE96B0 != -1)
    {
      swift_once();
    }

    sub_2176CA50C(qword_280BE96B8, v300, v301, v302, v303, v304, v305, v306, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE8250 != -1)
    {
      swift_once();
    }

    sub_2176CAB2C(qword_280C02500, v307, v308, v309, v310, v311, v312, v313, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE9890 != -1)
    {
      swift_once();
    }

    sub_2176CAB48(qword_280C02918, v314, v315, v316, v317, v318, v319, v320, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE9720 != -1)
    {
      swift_once();
    }

    sub_2176CA528(qword_280BE9728, v321, v322, v323, v324, v325, v326, v327, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE96F8 != -1)
    {
      swift_once();
    }

    sub_2176CAB10(qword_280BE9700, v328, v329, v330, v331, v332, v333, v334, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE9900 != -1)
    {
      swift_once();
    }

    sub_2176CAB64(qword_280BE9908, v335, v336, v337, v338, v339, v340, v341, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (qword_280BE96E8 != -1)
    {
      swift_once();
    }

    sub_2176CAB80(qword_280BE96F0, v342, v343, v344, v345, v346, v347, v348, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431);
    if (v500[11] || v499[11] || v498[11] || v478[2] || v497[11] || v496[11] || v495[2] || v494[2] || v493[11] || v492[11] || v491[11] || v490[11])
    {
      sub_21726A630(v500, v489, &qword_27CB25318, &qword_2177657C0);
      if (v489[11])
      {
        sub_2172EBBF4(v477, v278, 0);
        sub_2171F0738(v489, &qword_27CB25388, &unk_21775D410);
      }

      else
      {
        sub_2171F0738(v489, &qword_27CB25318, &qword_2177657C0);
        memset(v477, 0, 128);
      }

      sub_21726A630(v499, v489, &qword_27CB25320, &unk_21776E020);
      if (v489[11])
      {
        sub_2172EBE8C(0, v476);
        sub_2171F0738(v489, &qword_27CB27C80, &unk_21775D420);
      }

      else
      {
        sub_2171F0738(v489, &qword_27CB25320, &unk_21776E020);
        memset(v476, 0, 128);
      }

      sub_21726A630(v498, v489, &qword_27CB25310, &unk_21775D3D0);
      if (v489[11])
      {
        sub_2172EBD40(v475, v278, 0);
        sub_2171F0738(v489, &qword_27CB25398, &unk_21776C4F0);
      }

      else
      {
        sub_2171F0738(v489, &qword_27CB25310, &unk_21775D3D0);
        memset(v475, 0, 128);
      }

      sub_21726A630(v478, v488, &qword_27CB255E0, &unk_2177756D0);
      sub_21726A630(v497, v489, &qword_27CB255A8, &unk_21775D450);
      if (v489[11])
      {
        sub_2172EC48C(v487, v278, 0);
        sub_2171F0738(v489, &qword_27CB27820, &qword_21775DAB0);
      }

      else
      {
        sub_2171F0738(v489, &qword_27CB255A8, &unk_21775D450);
        memset(v487, 0, sizeof(v487));
      }

      sub_21726A630(v496, v489, &qword_27CB25310, &unk_21775D3D0);
      if (v489[11])
      {
        sub_2172EBD40(v486, v278, 0);
        sub_2171F0738(v489, &qword_27CB25398, &unk_21776C4F0);
      }

      else
      {
        sub_2171F0738(v489, &qword_27CB25310, &unk_21775D3D0);
        memset(v486, 0, sizeof(v486));
      }

      sub_21726A630(v495, v485, &qword_27CB255D8, &unk_21775D4B0);
      sub_21726A630(v494, v484, &qword_27CB255D0, &qword_21775D4A8);
      sub_21726A630(v493, v489, &qword_27CB25320, &unk_21776E020);
      if (v489[11])
      {
        sub_2172EBE8C(0, v483);
        sub_2171F0738(v489, &qword_27CB27C80, &unk_21775D420);
      }

      else
      {
        sub_2171F0738(v489, &qword_27CB25320, &unk_21776E020);
        memset(v483, 0, sizeof(v483));
      }

      sub_21726A630(v492, v489, &qword_27CB255A8, &unk_21775D450);
      if (v489[11])
      {
        sub_2172EC48C(v482, v278, 0);
        sub_2171F0738(v489, &qword_27CB27820, &qword_21775DAB0);
      }

      else
      {
        sub_2171F0738(v489, &qword_27CB255A8, &unk_21775D450);
        memset(v482, 0, sizeof(v482));
      }

      sub_21726A630(v491, v489, &qword_27CB25338, &unk_21775D3E0);
      if (v489[11])
      {
        sub_2172EC0A8(v481, v278, 0);
        sub_2171F0738(v489, &qword_27CB25380, &unk_21775DAA0);
      }

      else
      {
        sub_2171F0738(v489, &qword_27CB25338, &unk_21775D3E0);
        memset(v481, 0, sizeof(v481));
      }

      sub_21726A630(v490, v489, &qword_27CB255B0, &unk_217793B50);
      if (v489[11])
      {
        sub_2172EC340();
        sub_2171F0738(v501, &qword_27CB24A78, &qword_217759040);
        sub_2171F0738(v489, &qword_27CB255B8, &unk_21775D470);
      }

      else
      {
        sub_2171F0738(v501, &qword_27CB24A78, &qword_217759040);
        sub_2171F0738(v489, &qword_27CB255B0, &unk_217793B50);
        memset(v480, 0, sizeof(v480));
      }

      memcpy(v489, v477, 0x80uLL);
      memcpy(&v489[16], v476, 0x80uLL);
      memcpy(&v489[32], v475, 0x80uLL);
      memcpy(&v489[48], v488, 0x80uLL);
      memcpy(&v489[64], v487, 0x80uLL);
      memcpy(&v489[80], v486, 0x80uLL);
      memcpy(&v489[96], v485, 0x80uLL);
      memcpy(&v489[112], v484, 0x80uLL);
      memcpy(&v489[128], v483, 0x80uLL);
      memcpy(&v489[144], v482, 0x80uLL);
      memcpy(&v489[160], v481, 0x80uLL);
      memcpy(&v489[176], v480, 0x80uLL);
      memcpy(v501, v489, sizeof(v501));
    }

    if (qword_280BE8268 != -1)
    {
      swift_once();
    }

    v349 = sub_2172A4518(qword_280C02518);
    if (qword_280BE9938 != -1)
    {
      swift_once();
    }

    v350 = sub_2172A41F0();
    v352 = v351;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25480, &unk_2177756F0);
    swift_allocObject();
    v353 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
    v354 = sub_2172A44FC(v353);

    v477[3] = &type metadata for Song;
    v477[4] = &protocol witness table for Song;
    v477[0] = swift_allocObject();
    sub_217283AFC(v270, v477[0] + 16);
    v355 = __swift_project_boxed_opaque_existential_1(v477, &type metadata for Song);
    sub_21729C5E8((v355 + 2), v475);
    v356 = v475[3];
    v357 = v475[4];
    __swift_project_boxed_opaque_existential_1(v475, v475[3]);
    (*(v357 + 24))(v489, v356, v357);
    sub_21729C644(v475);
    memcpy(v476, v489, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v477);
    v358 = v476[33];
    sub_217751DE8();
    sub_217269F50(v476);
    if (v349 <= 1)
    {
      v359 = 1;
    }

    else
    {
      v359 = v349;
    }

    if (!v349 && (v352 & 1) != 0)
    {
      if (!v354 && !*(v358 + 16))
      {

        v473 = 0;
        v474 = 0;
        v361 = 0;
        v358 = 0;
        v360 = 1;
        goto LABEL_197;
      }

      v359 = 1;
    }

    v473 = v359;
    v360 = v354;
    v474 = v350;
    v361 = v352 & 1;
LABEL_197:
    v362 = *v270;
    v363 = v270[1];
    v364 = v459;
    v365 = v459[5];
    v366 = v467;
    sub_21733CAD0();
    sub_21726A630(v501, v366 + v364[6], &qword_27CB24A78, &qword_217759040);
    *v366 = v362;
    v366[1] = v363;
    *(v366 + v364[7]) = 1;
    v367 = (v366 + v364[8]);
    v368 = v474;
    *v367 = v473;
    v367[1] = v368;
    v367[2] = v361;
    v367[3] = v360;
    v367[4] = v358;
    v369 = v270[5];
    v370 = v270[6];
    __swift_project_boxed_opaque_existential_1(v270 + 2, v369);
    v371 = *(v370 + 24);
    sub_217751DE8();
    v371(v475, v369, v370);
    nullsub_1(v475, v372);
    memcpy(v477, v475, 0x161uLL);
    v373 = v460;
    sub_21733CAD0();
    v374 = v270[5];
    v375 = v270[6];
    __swift_project_boxed_opaque_existential_1(v270 + 2, v374);
    (*(v375 + 96))(v489, v374, v375);
    v376 = v489[3];
    v377 = v489[4];
    __swift_project_boxed_opaque_existential_1(v489, v489[3]);
    (*(*(v377 + 8) + 48))(v487, v376);
    __swift_destroy_boxed_opaque_existential_1(v489);
    v473 = *(&v487[0] + 1);
    v474 = *&v487[0];
    LODWORD(v472) = LOBYTE(v487[1]);
    v378 = v270[5];
    v379 = v270[6];
    __swift_project_boxed_opaque_existential_1(v270 + 2, v378);
    (*(v379 + 96))(v489, v378, v379);
    v380 = v489[3];
    v381 = v489[4];
    __swift_project_boxed_opaque_existential_1(v489, v489[3]);
    v382 = (*(*(v381 + 8) + 56))(v380);
    v470 = v383;
    v471 = v382;
    __swift_destroy_boxed_opaque_existential_1(v489);
    memcpy(v489, v477, 0x168uLL);
    memset(&v489[45], 0, 24);
    nullsub_1(v489, v384);
    v385 = v270[5];
    v386 = v270[6];
    __swift_project_boxed_opaque_existential_1(v270 + 2, v385);
    (*(v386 + 96))(v488, v385, v386);
    v387 = v488[3];
    v388 = v488[4];
    __swift_project_boxed_opaque_existential_1(v488, v488[3]);
    v389 = (*(*(v388 + 8) + 64))(v387);
    __swift_destroy_boxed_opaque_existential_1(v488);
    v390 = v270[5];
    v391 = v270[6];
    __swift_project_boxed_opaque_existential_1(v270 + 2, v390);
    (*(v391 + 96))(v488, v390, v391);
    v392 = v488[3];
    v393 = v488[4];
    __swift_project_boxed_opaque_existential_1(v488, v488[3]);
    v394 = (*(*(v393 + 8) + 72))(v392);
    __swift_destroy_boxed_opaque_existential_1(v488);
    v396 = v270[5];
    v395 = v270[6];
    __swift_project_boxed_opaque_existential_1(v270 + 2, v396);
    (*(v395 + 96))(v488, v396, v395);
    v397 = v488[3];
    v398 = v488[4];
    __swift_project_boxed_opaque_existential_1(v488, v488[3]);
    v399 = (*(*(v398 + 8) + 80))(v397);
    __swift_destroy_boxed_opaque_existential_1(v488);
    v401 = v270[5];
    v400 = v270[6];
    __swift_project_boxed_opaque_existential_1(v270 + 2, v401);
    (*(v400 + 96))(v488, v401, v400);
    v402 = v488[3];
    v403 = v488[4];
    __swift_project_boxed_opaque_existential_1(v488, v488[3]);
    v404 = (*(*(v403 + 8) + 88))(v402);
    sub_21733CA78(v467, type metadata accessor for CloudSong);
    sub_2171F0738(v501, &qword_27CB24A78, &qword_217759040);
    sub_21733CA78(v466, type metadata accessor for CloudSong.Attributes);
    __swift_destroy_boxed_opaque_existential_1(v488);
    v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
    v406 = v373 + v405[9];
    v407 = v473;
    *v406 = v474;
    *(v406 + 8) = v407;
    *(v406 + 16) = v472;
    v408 = (v373 + v405[10]);
    v409 = v470;
    *v408 = v471;
    v408[1] = v409;
    memcpy((v373 + v405[11]), v489, 0x180uLL);
    *(v373 + v405[12]) = v389;
    *(v373 + v405[13]) = v394;
    *(v373 + v405[14]) = v399;
    *(v373 + v405[15]) = v404;
    sub_2171F0738(v500, &qword_27CB25318, &qword_2177657C0);
    sub_2171F0738(v490, &qword_27CB255B0, &unk_217793B50);
    sub_2171F0738(v491, &qword_27CB25338, &unk_21775D3E0);
    sub_2171F0738(v492, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(v493, &qword_27CB25320, &unk_21776E020);
    sub_2171F0738(v494, &qword_27CB255D0, &qword_21775D4A8);
    sub_2171F0738(v495, &qword_27CB255D8, &unk_21775D4B0);
    sub_2171F0738(v496, &qword_27CB25310, &unk_21775D3D0);
    sub_2171F0738(v497, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(v478, &qword_27CB255E0, &unk_2177756D0);
    sub_2171F0738(v498, &qword_27CB25310, &unk_21775D3D0);
    *&result = COERCE_DOUBLE(sub_2171F0738(v499, &qword_27CB25320, &unk_21776E020));
    return result;
  }

LABEL_201:
  __break(1u);
  return result;
}

uint64_t sub_21730FC14(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v191 = v4;
  v6 = v5;
  v7 = type metadata accessor for CloudStation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v217 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v190 - v14;
  v16 = type metadata accessor for CloudStation.Attributes(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6750 != -1)
  {
    swift_once();
  }

  *&result = COERCE_DOUBLE(sub_2172A40DC());
  LODWORD(v218) = v22;
  if ((v22 & 1) == 0)
  {
    v29 = *&result * 1000.0;
    if (COERCE__INT64(fabs(*&result * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        v213 = v29;
        goto LABEL_9;
      }

LABEL_100:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_100;
  }

  v213 = 0;
LABEL_9:
  if (qword_280BE6758 != -1)
  {
    swift_once();
  }

  sub_2176CABC4(qword_280C02098, v22, v23, v24, v25, v26, v27, v28, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206, v207, v208, v209, v210);
  v30 = type metadata accessor for Station._AirTime();
  if (__swift_getEnumTagSinglePayload(v15, 1, v30) == 1)
  {
    sub_2171F0738(v15, &qword_27CB255C0, &unk_21775D480);
    v211 = 0u;
    v212 = xmmword_2177586D0;
  }

  else
  {
    Station._AirTime.convertToCloudStationAirTime()(v240);
    sub_21733CA78(v15, type metadata accessor for Station._AirTime);
    v211 = v240[1];
    v212 = v240[0];
  }

  if (qword_280BE6790 != -1)
  {
    swift_once();
  }

  v31 = sub_2172A3FDC();
  v209 = v32;
  v210 = v31;
  if (qword_280BE6760 != -1)
  {
    swift_once();
  }

  sub_2176CABE4(qword_280C020A0, v32, v33, v34, v35, v36, v37, v38, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206);
  memcpy(v239, v238, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v239) == 1)
  {
    sub_2172E22C0(v219);
  }

  else
  {
    memcpy(v219, v239, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v221);
    memcpy(v220, v219, sizeof(v220));
    sub_217284084(v220);
    memcpy(v222, v221, sizeof(v222));
    nullsub_1(v222, v46);
    memcpy(v219, v222, 0x1B8uLL);
  }

  if (qword_280BE6818 != -1)
  {
    swift_once();
  }

  sub_2176CA43C(qword_280C02128, v39, v40, v41, v42, v43, v44, v45, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206, v207, v208);
  if (v220[0] == 2)
  {
    v207 = 0;
    v208 = 0;
  }

  else
  {
    if (v220[0])
    {
      v47 = 0x746963696C707865;
    }

    else
    {
      v47 = 0x6E61656C63;
    }

    v48 = 0xE500000000000000;
    if (v220[0])
    {
      v48 = 0xE800000000000000;
    }

    v207 = v48;
    v208 = v47;
  }

  if (qword_280BE67D8 != -1)
  {
    swift_once();
  }

  v206 = sub_2172A46A0(qword_280C020F8);
  if (qword_280BE6800 != -1)
  {
    swift_once();
  }

  sub_2176CA430(qword_280C02110, v49, v50, v51, v52, v53, v54, v55, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206);
  v234 = *v220;
  v235 = *&v220[16];
  v236 = *&v220[32];
  v237 = *&v220[48];
  v56 = *&v220[8];
  if (*&v220[8] == 1)
  {
    v199 = 0;
    v200 = 0;
    v56 = 0;
    v201 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 0uLL;
    v198 = 0;
  }

  else
  {
    v204 = v237;
    v57 = *(&v236 + 1);
    v202 = v236;
    v58 = *(&v235 + 1);
    v199 = v234;
    v200 = v235;
    sub_217751DE8();
    sub_217751DE8();
    v201 = v58;
    sub_217751DE8();
    v203 = v57;
    sub_217751DE8();
    v198 = sub_217751DC8();
    sub_2171F0738(&v234, &qword_27CB24B70, &unk_217759460);
  }

  v205 = v56;
  if (qword_280BE6798 != -1)
  {
    swift_once();
  }

  v197 = sub_2172A4684(qword_280C020D0);
  if (qword_280BE6810 != -1)
  {
    swift_once();
  }

  v59 = sub_2172A4038();
  HIDWORD(v196) = v60;
  if (v60)
  {
    v67 = 0;
  }

  else
  {
    v67 = v59;
  }

  v195 = v67;
  if (qword_280BE6768 != -1)
  {
    swift_once();
  }

  *&v214 = v16;
  sub_2172A402C(qword_280C020A8, v60, v61, v62, v63, v64, v65, v66, v190, v191, v192, v193, v194, v195, SWORD2(v195), SBYTE6(v195), SHIBYTE(v195), v196, v197, v198, v199, v200, v201, v202, v203);
  v76 = v75;
  if (qword_280BE6770 != -1)
  {
    swift_once();
  }

  v77 = qword_280C020B0;
  sub_2176CABF0(qword_280C020B0, v68, v69, v70, v71, v72, v73, v74, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206, v207, v208);
  if (v222[0] == 14)
  {
    v193 = 0;
    v194 = 0;
  }

  else
  {
    LOBYTE(v221[0]) = v222[0];
    sub_2176507D0(v220);
    v193 = *&v220[8];
    v194 = *v220;
  }

  v216 = v6;
  if (qword_280BE6778 != -1)
  {
    swift_once();
  }

  v78 = sub_2172A3FDC();
  if (v79)
  {
    v86 = v78;
  }

  else
  {
    v86 = 0;
  }

  v192 = v86;
  if (v79)
  {
    v87 = v79;
  }

  else
  {
    v87 = 0xE000000000000000;
  }

  if (qword_280BE67F0 != -1)
  {
    swift_once();
  }

  v215 = v7;
  sub_2176CAC04(qword_280C02108, v79, v80, v81, v82, v83, v84, v85, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206);
  if (qword_280BE67C8 != -1)
  {
    swift_once();
  }

  v88 = sub_2172A3FDC();
  v90 = v89;
  sub_2176CABF0(v77, v89, v91, v92, v93, v94, v95, v96, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206, v207, v208);
  v104 = (v220[0] - 2);
  v105 = 0x65646F73697045;
  if (v220[0])
  {
    v105 = 0x73616374756F6853;
  }

  v106 = 0xE700000000000000;
  if (v220[0])
  {
    v106 = 0xE900000000000074;
  }

  if (v104 >= 0xD)
  {
    v107 = v105;
  }

  else
  {
    v107 = 0;
  }

  if (v104 >= 0xD)
  {
    v108 = v106;
  }

  else
  {
    v108 = 0;
  }

  v109 = v76 & 1;
  if (qword_280BE6780 != -1)
  {
    swift_once();
  }

  v110 = &v20[*(v214 + 76)];
  sub_2176CA410(qword_280C020C0, v97, v98, v99, v100, v101, v102, v103, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206, v207, v208, v209, v210);
  v111 = v211;
  *v20 = v212;
  *(v20 + 1) = v111;
  v112 = v209;
  *(v20 + 4) = v210;
  *(v20 + 5) = v112;
  memcpy(v20 + 48, v219, 0x1B8uLL);
  v113 = v207;
  *(v20 + 61) = v208;
  *(v20 + 62) = v113;
  *(v20 + 63) = v213;
  v20[512] = v218 & 1;
  *(v20 + 65) = v206;
  *(v20 + 66) = v199;
  *(v20 + 67) = v205;
  v114 = v201;
  *(v20 + 68) = v200;
  *(v20 + 69) = v114;
  v115 = v203;
  *(v20 + 70) = v202;
  *(v20 + 71) = v115;
  v116 = *(&v204 + 1);
  *(v20 + 72) = v204;
  *(v20 + 73) = v116;
  v117 = v197;
  *(v20 + 74) = v198;
  *(v20 + 75) = v117;
  *(v20 + 76) = v195;
  v20[616] = BYTE4(v196) & 1;
  v20[617] = v109;
  v118 = v193;
  *(v20 + 78) = v194;
  *(v20 + 79) = v118;
  *(v20 + 80) = v192;
  *(v20 + 81) = v87;
  memcpy(v20 + 656, v233, 0x78uLL);
  *(v20 + 97) = v88;
  *(v20 + 98) = v90;
  *(v20 + 99) = v107;
  *(v20 + 100) = v108;
  v232[1] = 0;
  v232[0] = 0;
  v232[2] = 1;
  bzero(&v232[3], 0xE8uLL);
  if (qword_280BE67D0 != -1)
  {
    swift_once();
  }

  sub_2176CAC10(qword_280C020F0, v119, v120, v121, v122, v123, v124, v125, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206, v207, v208, v209, v210);
  if (qword_27CB23B00 != -1)
  {
    swift_once();
  }

  sub_2176CAC2C(qword_27CB8A238, v126, v127, v128, v129, v130, v131, v132, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206, v207, v208, v209, v210);
  if (v231[2] | v230[11])
  {
    sub_21726A630(v231, v222, &qword_27CB24230, &unk_21775E9D0);
    sub_21726A630(v230, v220, &unk_27CB28A60, &qword_217770B60);
    if (*&v220[88])
    {
      sub_2172EC5D8(0, v221);
      sub_2171F0738(v232, &qword_27CB24228, &unk_21775D490);
      sub_2171F0738(v220, &qword_27CB240D0, &unk_21775D400);
    }

    else
    {
      sub_2171F0738(v232, &qword_27CB24228, &unk_21775D490);
      sub_2171F0738(v220, &unk_27CB28A60, &qword_217770B60);
      memset(v221, 0, 128);
    }

    memcpy(v220, v222, 0x80uLL);
    memcpy(&v220[128], v221, 0x80uLL);
    memcpy(v232, v220, sizeof(v232));
  }

  memset(v229, 0, 48);
  v229[6] = 1;
  bzero(&v229[7], 0x108uLL);
  if (qword_280BE6808 != -1)
  {
    swift_once();
  }

  sub_2176CAC48(qword_280C02118, v133, v134, v135, v136, v137, v138, v139, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, v206, v207, v208);
  v214 = *&v220[16];
  v218 = *v220;
  if (qword_280BE67B8 != -1)
  {
    swift_once();
  }

  v140 = sub_2172A3FDC();
  v142 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
  swift_allocObject();
  v143 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  v144 = sub_2172A45C0(v143);

  sub_21726A630(v232, v228, &qword_27CB24228, &unk_21775D490);
  if (*(&v218 + 1) != 1 || v142 || v144 || v228[2] != 1)
  {
    if (v142)
    {
      v145 = sub_217751DC8();
      sub_2171F0738(v229, &qword_27CB24340, &unk_2177650B0);
    }

    else
    {
      sub_2171F0738(v229, &qword_27CB24340, &unk_2177650B0);
      v140 = 0;
      v145 = 0;
    }

    sub_21726A630(v228, &v220[64], &qword_27CB24228, &unk_21775D490);
    *v220 = v218;
    *&v220[16] = v214;
    *&v220[32] = v140;
    *&v220[40] = v142;
    *&v220[48] = v145;
    *&v220[56] = v144;
    memcpy(v229, v220, sizeof(v229));
  }

  v147 = *v3;
  v146 = v3[1];
  v148 = v215;
  v149 = v215[5];
  v150 = v217;
  sub_21733CAD0();
  sub_21726A630(v229, v150 + v148[8], &qword_27CB24340, &unk_2177650B0);
  *v150 = v147;
  v150[1] = v146;
  *(v150 + v148[6]) = 1;
  *(v150 + v148[7]) = 1;
  v151 = v3[5];
  v152 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v151);
  v153 = *(v152 + 24);
  sub_217751DE8();
  v153(v221, v151, v152);
  nullsub_1(v221, v154);
  memcpy(v222, v221, 0x161uLL);
  v155 = v216;
  sub_21733CAD0();
  v156 = v3[5];
  v157 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v156);
  (*(v157 + 96))(v220, v156, v157);
  v158 = *&v220[24];
  v159 = *&v220[32];
  __swift_project_boxed_opaque_existential_1(v220, *&v220[24]);
  (*(*(v159 + 8) + 48))(v226, v158);
  __swift_destroy_boxed_opaque_existential_1(v220);
  *&v218 = v226[0];
  v215 = v226[1];
  LODWORD(v214) = v227;
  v160 = v3[5];
  v161 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v160);
  (*(v161 + 96))(v220, v160, v161);
  v162 = *&v220[24];
  v163 = *&v220[32];
  __swift_project_boxed_opaque_existential_1(v220, *&v220[24]);
  v213 = (*(*(v163 + 8) + 56))(v162);
  *&v212 = v164;
  __swift_destroy_boxed_opaque_existential_1(v220);
  memcpy(v220, v222, 0x168uLL);
  memset(&v220[360], 0, 24);
  nullsub_1(v220, v165);
  v166 = v3[5];
  v167 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v166);
  (*(v167 + 96))(v223, v166, v167);
  v168 = v224;
  v169 = v225;
  __swift_project_boxed_opaque_existential_1(v223, v224);
  *&v211 = (*(*(v169 + 8) + 64))(v168);
  __swift_destroy_boxed_opaque_existential_1(v223);
  v170 = v3[5];
  v171 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v170);
  (*(v171 + 96))(v223, v170, v171);
  v172 = v224;
  v173 = v225;
  __swift_project_boxed_opaque_existential_1(v223, v224);
  v174 = (*(*(v173 + 8) + 72))(v172);
  __swift_destroy_boxed_opaque_existential_1(v223);
  v175 = v3[5];
  v176 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v175);
  (*(v176 + 96))(v223, v175, v176);
  v177 = v224;
  v178 = v225;
  __swift_project_boxed_opaque_existential_1(v223, v224);
  v179 = (*(*(v178 + 8) + 80))(v177);
  __swift_destroy_boxed_opaque_existential_1(v223);
  v180 = v3[5];
  v181 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v180);
  (*(v181 + 96))(v223, v180, v181);
  v182 = v224;
  v183 = v225;
  __swift_project_boxed_opaque_existential_1(v223, v224);
  v184 = (*(*(v183 + 8) + 88))(v182);
  sub_21733CA78(v150, type metadata accessor for CloudStation);
  sub_2171F0738(v229, &qword_27CB24340, &unk_2177650B0);
  sub_2171F0738(v232, &qword_27CB24228, &unk_21775D490);
  sub_21733CA78(v20, type metadata accessor for CloudStation.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v223);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v186 = v155 + v185[9];
  v187 = v215;
  *v186 = v218;
  *(v186 + 8) = v187;
  *(v186 + 16) = v214;
  v188 = (v155 + v185[10]);
  v189 = v212;
  *v188 = v213;
  v188[1] = v189;
  memcpy((v155 + v185[11]), v220, 0x180uLL);
  *(v155 + v185[12]) = v211;
  *(v155 + v185[13]) = v174;
  *(v155 + v185[14]) = v179;
  *(v155 + v185[15]) = v184;
  sub_2171F0738(v231, &qword_27CB24230, &unk_21775E9D0);
  sub_2171F0738(v228, &qword_27CB24228, &unk_21775D490);
  *&result = COERCE_DOUBLE(sub_2171F0738(v230, &unk_27CB28A60, &qword_217770B60));
  return result;
}

void *sub_217310E74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25680, &qword_21775D6D0);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339A9C(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB24748, &unk_217758CD0);
    sub_2172CA838(a3, v21);
    result = sub_217303E60(v22, v12, v21, 0);
    v16 = v22[1];
    *a4 = v22[0];
    *(a4 + 16) = v16;
    *(a4 + 32) = v22[2];
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217310FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25678, &qword_21775D6C8);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339B58(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB24738, &qword_217758CC0);
    sub_2172CA838(a3, v21);
    result = sub_2173078AC(v12, v21);
    v16 = v23;
    *a4 = v22;
    *(a4 + 16) = v16;
    *(a4 + 32) = v24;
    *(a4 + 48) = v25;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_21731116C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2172E924C(type metadata accessor for CloudTrack);
  v11[2] = a1;
  v11[3] = a3;
  v11[4] = a2;
  sub_217312558(v8, v9, a2, sub_21733BDEC, v11, &qword_27CB25700, &qword_21775D848, sub_217339C1C, a4);
}

void *sub_217311240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256F8, &qword_21775D840);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339CDC(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB24808, &qword_217758D90);
    sub_2172CA838(a3, v21);
    result = sub_2172F1160(v22, v12, v21, 0);
    v16 = v22[1];
    *a4 = v22[0];
    *(a4 + 16) = v16;
    *(a4 + 32) = v22[2];
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_2173113BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25668, &qword_21775D698);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339DA4(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB24728, &qword_217758CB0);
    sub_2172CA838(a3, v21);
    result = sub_2172FEB30(v12, v21);
    v16 = v23;
    *a4 = v22;
    *(a4 + 16) = v16;
    *(a4 + 32) = v24;
    *(a4 + 48) = v25;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217311538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256B0, &qword_21775D768);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339E64(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB24790, &unk_21775A220);
    sub_2172CA838(a3, v21);
    result = sub_2172F565C(v12, v21);
    v16 = v23;
    *a4 = v22;
    *(a4 + 16) = v16;
    *(a4 + 32) = v24;
    *(a4 + 48) = v25;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_2173116B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256C8, &qword_21775D7E0);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339FE8(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB247C0, &unk_21779AA10);
    sub_2172CA838(a3, v21);
    result = sub_217302770(v12, v21);
    v16 = v23;
    *a4 = v22;
    *(a4 + 16) = v16;
    *(a4 + 32) = v24;
    *(a4 + 48) = v25;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217311830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256C0, &qword_21775D7D8);
    swift_allocObject();

    sub_217751DE8();
    result = sub_21733A0B0(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB24490, &qword_21775A250);
    sub_2172CA838(a3, v21);
    result = sub_217301D0C(v12, v21);
    v16 = v23;
    *a4 = v22;
    *(a4 + 16) = v16;
    *(a4 + 32) = v24;
    *(a4 + 48) = v25;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_2173119AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25698, &qword_21775D748);
    swift_allocObject();

    sub_217751DE8();
    result = sub_21733A174(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB24768, &qword_217758CF0);
    sub_2172CA838(a3, v21);
    result = sub_21733316C(v12, v21);
    v16 = v23;
    *a4 = v22;
    *(a4 + 16) = v16;
    *(a4 + 32) = v24;
    *(a4 + 48) = v25;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217311B28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256F0, &qword_21775D838);
    swift_allocObject();

    sub_217751DE8();
    result = sub_21733A234(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB247F0, &qword_21775D360);
    sub_2172CA838(a3, v21);
    result = sub_2172E5528(v12, v21);
    v16 = v23;
    *a4 = v22;
    *(a4 + 16) = v16;
    *(a4 + 32) = v24;
    *(a4 + 48) = v25;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217311CA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17[-v11];
  v13 = *a1;
  v14 = a1[1];
  v18 = a1;
  v19 = a3;
  v20 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256A8, &qword_21775D760);
    swift_allocObject();

    sub_217751DE8();
    result = sub_21733A2F4(v13, v14, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v17[-v11], &qword_27CB24778, &unk_217758D00);
    sub_2172CA838(a3, v21);
    result = sub_21730319C(v12, v21);
    v16 = v23;
    *a4 = v22;
    *(a4 + 16) = v16;
    *(a4 + 32) = v24;
    *(a4 + 48) = v25;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217311E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  CatalogSearchRawResponse.TopResult.id.getter();
  v11[2] = a1;
  v11[3] = a3;
  v11[4] = a2;
  sub_217312558(v8, v9, a2, sub_21733C548, v11, &qword_27CB25888, &qword_21775D920, sub_21733A3C0, a4);
}

uint64_t sub_217311ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = CloudPersonalRecommendation.Item.id.getter();
  v11[2] = a1;
  v11[3] = a3;
  v11[4] = a2;
  sub_217312558(v8, v9, a2, sub_21733C904, v11, &qword_27CB25940, &qword_21775D9C8, sub_21733A50C, a4);
}

void sub_217311F78()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for MusicPersonalRecommendation();
  v9 = OUTLINED_FUNCTION_45_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_1();
  v13 = *v5;
  v14 = v5[1];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A90, &qword_21775DA98);
    swift_allocObject();
    OUTLINED_FUNCTION_87_6();

    sub_217751DE8();
    *v7 = sub_21733A488(v13, v14, v3, sub_21733CE18);
  }

  else
  {
    sub_21726A630(v5, v18, &qword_27CB244A8, &unk_217758980);
    sub_2172CA838(v1, v17);
    sub_21726A630(v18, &v16, &qword_27CB244A8, &unk_217758980);
    sub_2172CA838(v17, &v15);
    sub_2173349C8();
    sub_21733AB9C(v17);
    sub_2171F0738(v18, &qword_27CB244A8, &unk_217758980);
    OUTLINED_FUNCTION_25_0();
    sub_21733CE30();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217312158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v11 = OUTLINED_FUNCTION_141_1(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_45_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_21_2();
  v16 = OUTLINED_FUNCTION_70_6();
  sub_21726A630(v16, v17, v9, v8);
  sub_2172CA838(v10, v20);

  v18 = OUTLINED_FUNCTION_202_3();
  return v7(v18);
}

uint64_t sub_2173121F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v11 = OUTLINED_FUNCTION_141_1(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_45_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_21_2();
  v16 = OUTLINED_FUNCTION_70_6();
  sub_21726A630(v16, v17, v9, v8);
  sub_2172CA838(v10, v20);

  v18 = OUTLINED_FUNCTION_202_3();
  return v7(v18);
}

void sub_217312288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  sub_21726A630(a3, &v11[-v9 - 8], &qword_27CB24948, &unk_21775A210);
  sub_2172CA838(a4, v11);

  sub_217338F1C();
}

uint64_t sub_2173123A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21726A630(a3, v9, &qword_27CB244A8, &unk_217758980);
  sub_2172CA838(a4, v8);
  sub_21726A630(v9, v7, &qword_27CB244A8, &unk_217758980);
  sub_2172CA838(v8, &v6);

  sub_2173349C8();
  sub_21733AB9C(v8);
  return sub_2171F0738(v9, &qword_27CB244A8, &unk_217758980);
}

void *sub_217312474@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256D0, &qword_21775D7E8);
    swift_allocObject();

    sub_217751DE8();
    v6 = OUTLINED_FUNCTION_25_0();
    result = sub_217339F28(v6, v7, a1);
    *a3 = result;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_25_0();
    result = a2(v9);
    *a3 = v10;
    *(a3 + 16) = v11;
    *(a3 + 32) = v12;
    *(a3 + 48) = v13;
  }

  *(a3 + 56) = a1 != 0;
  return result;
}

void *sub_217312558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *(*a4)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, void *(*)(_OWORD *__return_ptr, uint64_t, uint64_t), uint64_t)@<X7>, uint64_t a9@<X8>)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    swift_allocObject();

    sub_217751DE8();
    result = a8(a1, a2, a3, a4, a5);
    *a9 = result;
  }

  else
  {
    result = a4(v18, a1, a2);
    v17 = v18[1];
    *a9 = v18[0];
    *(a9 + 16) = v17;
    *(a9 + 32) = v19[0];
    *(a9 + 41) = *(v19 + 9);
  }

  *(a9 + 57) = a3 != 0;
  return result;
}

void sub_217312640(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = *a1;
  v13 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256D0, &qword_21775D7E8);
    swift_allocObject();

    sub_217751DE8();
    *a4 = sub_217339F28(v12, v13, a2);
  }

  else
  {
    sub_21726A630(a1, &v15[-v11], &qword_27CB247D8, &qword_217758D60);
    sub_2172CA838(a3, v19);
    sub_217336414();
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
}

uint64_t sub_217312B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(__int128 *__return_ptr, uint64_t)@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v9 = v6;
  sub_21726A630(v6 + 72, &v49, &qword_27CB24188, &dword_217758930);
  if (*(&v50 + 1))
  {
    v52[0] = v49;
    v52[1] = v50;
    v53 = v51;
  }

  else
  {
    a4(v52, a2);
    if (*(&v50 + 1))
    {
      sub_2171F0738(&v49, &qword_27CB24188, &dword_217758930);
    }
  }

  sub_21726A630(a1 + 72, &v46, &qword_27CB24188, &dword_217758930);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    a4(&v49, a2);
    if (*(&v47 + 1))
    {
      sub_2171F0738(&v46, &qword_27CB24188, &dword_217758930);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25660, &unk_21775D5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217759200;
  sub_21726A630(v52, inited + 32, &qword_27CB24188, &dword_217758930);
  sub_21726A630(&v49, inited + 72, &qword_27CB24188, &dword_217758930);
  sub_2174D3370(inited, &v46);

  if ((a3 & 1) == 0)
  {
    sub_21726A630(&v46, v43, &qword_27CB24188, &dword_217758930);
    if (v44)
    {
      v15 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v16 = *(v15 + 8);
      v17 = OUTLINED_FUNCTION_15();
      v42 = v18(v17);
      v20 = v19;
      sub_217283154(v43);
      goto LABEL_14;
    }

    sub_2171F0738(v43, &qword_27CB24188, &dword_217758930);
  }

  v42 = 0;
  v20 = 0;
LABEL_14:
  v21 = *v9;
  v22 = *(v9 + 8);
  v23 = *(a1 + 16);
  v43[0] = *(v9 + 16);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171FB568(v21, v22);
  a5(v23);
  OUTLINED_FUNCTION_158();
  sub_2171F0738(v24, v25, v26);
  OUTLINED_FUNCTION_158();
  sub_2171F0738(v27, v28, v29);
  v30 = v43[0];
  v31 = *(v9 + 24);
  v32 = *(v9 + 48);
  v41 = *(v9 + 32);
  if (v20)
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(&v46, &qword_27CB24188, &dword_217758930);
    v33 = 0;
    v34 = 0uLL;
    v35 = 0uLL;
  }

  else
  {
    v39 = v46;
    v40 = v47;
    v33 = v48;
    sub_217751DE8();
    sub_217751DE8();
    v34 = v39;
    v35 = v40;
  }

  v36 = *(v9 + 112);
  v37 = *(v9 + 120);
  *a6 = v21;
  *(a6 + 8) = v22;
  *(a6 + 16) = v30;
  *(a6 + 24) = v31;
  *(a6 + 32) = v41;
  *(a6 + 48) = v32;
  *(a6 + 56) = v42;
  *(a6 + 64) = v20;
  *(a6 + 72) = v34;
  *(a6 + 88) = v35;
  *(a6 + 104) = v33;
  *(a6 + 112) = v36;
  *(a6 + 120) = v37;
  sub_217751DE8();
  return sub_217751DE8();
}

void sub_217312E74()
{
  OUTLINED_FUNCTION_12();
  v9 = v5;
  OUTLINED_FUNCTION_113_4();
  sub_217751DE8();
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_171_2(v10);
  os_unfair_lock_unlock(*(v2 + 16));
  if (v1)
  {

    __break(1u);
  }

  else
  {

    if ((v10[0] & 1) == 0)
    {
      v6 = v0(v10, v4, v3);
      MEMORY[0x28223BE20](v6, v7);
      OUTLINED_FUNCTION_192_2(&v8);
      v9(v10);
    }

    OUTLINED_FUNCTION_13();
  }
}

uint64_t sub_217312F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = type metadata accessor for MusicPersonalRecommendation();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + 24);
  v13 = *(v12 + 16);

  sub_217751DE8();
  os_unfair_lock_lock(v13);
  sub_2174E3DC8(v3, &v18);
  os_unfair_lock_unlock(*(v12 + 16));

  if ((v18 & 1) == 0)
  {
    v15 = a3(a1, a2);
    MEMORY[0x28223BE20](v15, v16);
    *&v17[-48] = v11;
    *&v17[-40] = v3;
    *&v17[-32] = a1;
    *&v17[-24] = a2;
    *&v17[-16] = 0xD00000000000001BLL;
    *&v17[-8] = 0x80000002177AB220;
    sub_21720BA7C();
    return sub_21733CA78(v11, type metadata accessor for MusicPersonalRecommendation);
  }

  return result;
}

void sub_2173130F4()
{
  OUTLINED_FUNCTION_12();
  v8 = v5;
  OUTLINED_FUNCTION_113_4();
  sub_217751DE8();
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_171_2(v9);
  os_unfair_lock_unlock(*(v2 + 16));
  if (v1)
  {

    __break(1u);
  }

  else
  {

    if ((v9[0] & 1) == 0)
    {
      v6 = v0(v9, v4, v3);
      MEMORY[0x28223BE20](v6, v7);
      OUTLINED_FUNCTION_192_2(&v8);
      v8(v9);
    }

    OUTLINED_FUNCTION_13();
  }
}