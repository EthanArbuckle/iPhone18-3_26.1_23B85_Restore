uint64_t sub_2409D4BCC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = type metadata accessor for RepairView();
  v45[0] = *(v1 - 8);
  v2 = *(v45[0] + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v45[1] = v4;
  v46 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E548, &qword_240A36AE0);
  v5 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52, v6);
  v51 = v45 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50, v9);
  v49 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E550, &qword_240A36AE8);
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v48 = v45 - v14;
  v15 = sub_240A29EFC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_240A2A08C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_240A29EEC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2A09C();
  if ((*(v22 + 88))(v26, v21) != *MEMORY[0x277CED758])
  {
    (*(v22 + 8))(v26, v21);
LABEL_8:
    v36 = 1;
    v37 = v55;
    return (*(v53 + 56))(v37, v36, 1, v54);
  }

  (*(v22 + 96))(v26, v21);
  (*(v28 + 32))(v32, v26, v27);
  sub_240A29E8C();
  if ((*(v16 + 88))(v20, v15) != *MEMORY[0x277CED6B8])
  {
    (*(v28 + 8))(v32, v27);
    (*(v16 + 8))(v20, v15);
    goto LABEL_8;
  }

  (*(v16 + 8))(v20, v15);
  v33 = sub_240A29EAC();
  if (v33 == 2 || (v33 & 1) == 0)
  {
    v34 = v49;
    sub_240A2B22C();
    v38 = v46;
    sub_2409DBB30(v47, v46, type metadata accessor for RepairView);
    v39 = (*(v45[0] + 80) + 16) & ~*(v45[0] + 80);
    v40 = swift_allocObject();
    sub_2409DB944(v38, v40 + v39, type metadata accessor for RepairView);
    v41 = (v34 + *(v50 + 36));
    *v41 = sub_2409DC298;
    v41[1] = v40;
    v41[2] = 0;
    v41[3] = 0;
  }

  else
  {
    v34 = v49;
    sub_240A2B22C();
    v35 = (v34 + *(v50 + 36));
    *v35 = sub_2409DA630;
    v35[1] = 0;
    v35[2] = 0;
    v35[3] = 0;
  }

  sub_240919298(v34, v51, &qword_27E50CA50, &unk_240A33750);
  swift_storeEnumTagMultiPayload();
  sub_240972938();
  v42 = v48;
  sub_240A2B6EC();
  sub_240919300(v34, &qword_27E50CA50, &unk_240A33750);
  (*(v28 + 8))(v32, v27);
  v43 = v55;
  sub_24093A86C(v42, v55, &qword_27E50E550, &qword_240A36AE8);
  v37 = v43;
  v36 = 0;
  return (*(v53 + 56))(v37, v36, 1, v54);
}

uint64_t sub_2409D51F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for RepairView();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39, v8);
  v10 = &v35 - v9;
  v11 = sub_240A2A8FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_240A2A57C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11);
  if ((*(v12 + 88))(v16, v11) != *MEMORY[0x277CEDC60])
  {
    (*(v12 + 8))(v16, v11);
LABEL_7:
    v33 = 1;
    v31 = v39;
    v32 = v40;
    return (*(v6 + 56))(v32, v33, 1, v31);
  }

  v23 = v38;
  (*(v12 + 96))(v16, v11);
  (*(v18 + 32))(v22, v16, v17);
  v24 = sub_240A2A56C();
  if (v24 == 2 || (v24 & 1) == 0)
  {
    (*(v18 + 8))(v22, v17);
    goto LABEL_7;
  }

  sub_240A2B22C();
  (*(v18 + 8))(v22, v17);
  v25 = v37;
  sub_2409DBB30(v23, v37, type metadata accessor for RepairView);
  v26 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v27 = swift_allocObject();
  sub_2409DB944(v25, v27 + v26, type metadata accessor for RepairView);
  v28 = v39;
  v29 = &v10[*(v39 + 36)];
  *v29 = sub_2409DBFFC;
  v29[1] = v27;
  v29[2] = 0;
  v29[3] = 0;
  v30 = v40;
  sub_24093A86C(v10, v40, &qword_27E50CA50, &unk_240A33750);
  v31 = v28;
  v32 = v30;
  v33 = 0;
  return (*(v6 + 56))(v32, v33, 1, v31);
}

uint64_t sub_2409D55FC@<X0>(uint64_t a1@<X8>)
{
  v441 = a1;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E510, &qword_240A369A0);
  v2 = *(*(v370 - 8) + 64);
  MEMORY[0x28223BE20](v370, v3);
  v371 = &v356 - v4;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4E0, &qword_240A36958);
  v5 = *(*(v413 - 8) + 64);
  MEMORY[0x28223BE20](v413, v6);
  v372 = &v356 - v7;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v8 = *(*(v369 - 8) + 64);
  MEMORY[0x28223BE20](v369, v9);
  v373 = &v356 - v10;
  v357 = sub_240A29A1C();
  v404 = *(v357 - 8);
  v11 = *(v404 + 64);
  MEMORY[0x28223BE20](v357, v12);
  v403 = &v356 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E518, &qword_240A369A8);
  v14 = *(*(v358 - 8) + 64);
  MEMORY[0x28223BE20](v358, v15);
  v402 = &v356 - v16;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  v17 = *(*(v360 - 8) + 64);
  MEMORY[0x28223BE20](v360, v18);
  v401 = &v356 - v19;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4D0, &qword_240A36950);
  v20 = *(*(v391 - 8) + 64);
  MEMORY[0x28223BE20](v391, v21);
  v359 = &v356 - v22;
  v23 = sub_240A2976C();
  v24 = *(v23 - 1);
  v442 = v23;
  v443 = v24;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v400 = &v356 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v418 = (&v356 - v30);
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E520, &qword_240A369B0);
  v31 = *(*(v408 - 8) + 64);
  MEMORY[0x28223BE20](v408, v32);
  v411 = &v356 - v33;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E528, &qword_240A369B8);
  v34 = *(*(v386 - 8) + 64);
  MEMORY[0x28223BE20](v386, v35);
  v388 = (&v356 - v36);
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4C0, &qword_240A36948);
  v37 = *(*(v410 - 8) + 64);
  MEMORY[0x28223BE20](v410, v38);
  v392 = &v356 - v39;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4B0, &qword_240A36940);
  v40 = *(*(v440 - 8) + 64);
  MEMORY[0x28223BE20](v440, v41);
  v412 = &v356 - v42;
  v397 = type metadata accessor for SignInView();
  v43 = *(*(v397 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v397, v44);
  v375 = &v356 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v376 = &v356 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  v50 = *(*(v49 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v49 - 8, v51);
  v389 = &v356 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v409 = &v356 - v55;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D220, &qword_240A34A48);
  v56 = *(*(v394 - 8) + 64);
  MEMORY[0x28223BE20](v394, v57);
  v395 = &v356 - v58;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0E0, &qword_240A34960);
  v59 = *(*(v427 - 8) + 64);
  MEMORY[0x28223BE20](v427, v60);
  v396 = &v356 - v61;
  v422 = sub_240A2A10C();
  v398 = *(v422 - 8);
  v62 = *(v398 + 64);
  v64 = MEMORY[0x28223BE20](v422, v63);
  v366 = &v356 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v64, v66);
  v365 = &v356 - v68;
  MEMORY[0x28223BE20](v67, v69);
  v390 = &v356 - v70;
  v393 = type metadata accessor for AuthenticationView();
  v71 = *(*(v393 - 8) + 64);
  MEMORY[0x28223BE20](v393, v72);
  v374 = &v356 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v75 = *(*(v74 - 8) + 64);
  v77 = MEMORY[0x28223BE20](v74 - 8, v76);
  v385 = &v356 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77, v79);
  v387 = &v356 - v80;
  v416 = sub_240A2975C();
  v415 = *(v416 - 8);
  v81 = *(v415 + 64);
  v83 = MEMORY[0x28223BE20](v416, v82);
  v414 = &v356 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83, v85);
  v435 = &v356 - v86;
  v384 = type metadata accessor for DiscoveryView();
  v87 = *(*(v384 - 8) + 64);
  MEMORY[0x28223BE20](v384, v88);
  v368 = &v356 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  v91 = *(*(v90 - 8) + 64);
  v93 = MEMORY[0x28223BE20](v90 - 8, v92);
  v407 = &v356 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93, v95);
  v367 = &v356 - v96;
  v97 = type metadata accessor for RepairView();
  v428 = *(v97 - 8);
  v98 = *(v428 + 64);
  MEMORY[0x28223BE20](v97 - 8, v99);
  v429 = v100;
  v430 = &v356 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101 - 8, v103);
  v383 = &v356 - v104;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E530, &qword_240A369C0);
  v105 = *(*(v437 - 8) + 64);
  MEMORY[0x28223BE20](v437, v106);
  v439 = &v356 - v107;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E538, &qword_240A369C8);
  v108 = *(*(v423 - 8) + 64);
  MEMORY[0x28223BE20](v423, v109);
  v425 = &v356 - v110;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E540, &qword_240A369D0);
  v111 = *(*(v378 - 8) + 64);
  MEMORY[0x28223BE20](v378, v112);
  v380 = &v356 - v113;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4A0, &qword_240A36938);
  v114 = *(*(v424 - 8) + 64);
  MEMORY[0x28223BE20](v424, v115);
  v382 = &v356 - v116;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E490, &qword_240A36930);
  v117 = *(*(v438 - 8) + 64);
  MEMORY[0x28223BE20](v438, v118);
  v426 = &v356 - v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v399 = *(v120 - 8);
  v121 = *(v399 + 64);
  MEMORY[0x28223BE20](v120, v122);
  v124 = &v356 - v123;
  v377 = sub_240A297DC();
  v125 = *(*(v377 - 8) + 64);
  MEMORY[0x28223BE20](v377, v126);
  v128 = &v356 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_240A2981C();
  v130 = *(v129 - 8);
  v131 = *(v130 + 64);
  v133 = MEMORY[0x28223BE20](v129, v132);
  v363 = &v356 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x28223BE20](v133, v135);
  v364 = &v356 - v137;
  v139 = MEMORY[0x28223BE20](v136, v138);
  v381 = &v356 - v140;
  v142 = MEMORY[0x28223BE20](v139, v141);
  v417 = &v356 - v143;
  MEMORY[0x28223BE20](v142, v144);
  v146 = &v356 - v145;
  v147 = sub_240A29A9C();
  v148 = *(v147 - 8);
  v149 = *(v148 + 64);
  v151 = MEMORY[0x28223BE20](v147, v150);
  v361 = &v356 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = MEMORY[0x28223BE20](v151, v153);
  v362 = &v356 - v155;
  v157 = MEMORY[0x28223BE20](v154, v156);
  v379 = &v356 - v158;
  v160 = MEMORY[0x28223BE20](v157, v159);
  v405 = &v356 - v161;
  MEMORY[0x28223BE20](v160, v162);
  v164 = &v356 - v163;
  v166 = v1[5];
  v165 = v1[6];
  v436 = v1;
  v431 = v166;
  *&v446 = v166;
  *(&v446 + 1) = v165;
  v419 = v165;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_240A29A3C();
  v167 = *(v148 + 8);
  v168 = v164;
  v169 = v443;
  v406 = v147;
  v433 = v148 + 8;
  v420 = v167;
  v167(v168, v147);
  sub_240A297EC();
  v170 = v442;
  v171 = *(v130 + 8);
  v421 = v129;
  v434 = v130 + 8;
  (v171)(v146, v129);
  v172 = v169[6](v128, 6, v170);
  if (v172 > 2)
  {
    if (v172 > 4)
    {
      if (v172 == 5)
      {
        sub_2409D8EA0(&v446);
        v239 = v446;
        v240 = v447;
        v241 = v448;
        v242 = v449;
        v243 = v388;
        *v388 = v446;
        *(v243 + 2) = v240;
        *(v243 + 3) = v241;
        *(v243 + 32) = v242;
        swift_storeEnumTagMultiPayload();

        v244 = v239;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
        sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
        sub_2409DB1E0();
        v245 = v392;
        sub_240A2B6EC();
        sub_240919298(v245, v411, &qword_27E50E4C0, &qword_240A36948);
        swift_storeEnumTagMultiPayload();
        sub_2409DB130(&qword_27E50E4B8, &qword_27E50E4C0, &qword_240A36948, sub_2409DB1E0);
        sub_2409DB298(&qword_27E50E4D8, &qword_27E50E4E0, &qword_240A36958, sub_240972938);
        v246 = v412;
        sub_240A2B6EC();
        sub_240919300(v245, &qword_27E50E4C0, &qword_240A36948);
        sub_240919298(v246, v439, &qword_27E50E4B0, &qword_240A36940);
        swift_storeEnumTagMultiPayload();
        sub_2409DAED8();
        sub_2409DB04C();
        sub_240A2B6EC();

        v224 = v246;
        v225 = &qword_27E50E4B0;
        v226 = &qword_240A36940;
        return sub_240919300(v224, v225, v226);
      }

      v312 = v373;
      sub_240A2B22C();
      v313 = v430;
      sub_2409DBB30(v436, v430, type metadata accessor for RepairView);
      v314 = (*(v428 + 80) + 16) & ~*(v428 + 80);
      v315 = swift_allocObject();
      sub_2409DB944(v313, v315 + v314, type metadata accessor for RepairView);
      v316 = (v312 + *(v369 + 36));
      *v316 = sub_2409DB724;
      v316[1] = v315;
      v316[2] = 0;
      v316[3] = 0;
      v317 = &unk_240A33750;
      sub_240919298(v312, v371, &qword_27E50CA50, &unk_240A33750);
      swift_storeEnumTagMultiPayload();
      sub_240972938();
      v318 = v372;
      sub_240A2B6EC();
      sub_240919298(v318, v411, &qword_27E50E4E0, &qword_240A36958);
      swift_storeEnumTagMultiPayload();
      sub_2409DB130(&qword_27E50E4B8, &qword_27E50E4C0, &qword_240A36948, sub_2409DB1E0);
      sub_2409DB298(&qword_27E50E4D8, &qword_27E50E4E0, &qword_240A36958, sub_240972938);
      v319 = v412;
      sub_240A2B6EC();
      sub_240919300(v318, &qword_27E50E4E0, &qword_240A36958);
      sub_240919298(v319, v439, &qword_27E50E4B0, &qword_240A36940);
      swift_storeEnumTagMultiPayload();
      sub_2409DAED8();
      sub_2409DB04C();
      sub_240A2B6EC();
      sub_240919300(v319, &qword_27E50E4B0, &qword_240A36940);
      v224 = v312;
      v225 = &qword_27E50CA50;
    }

    else
    {
      v443 = v171;
      if (v172 == 3)
      {
        v173 = v436;
        v174 = v430;
        sub_2409DBB30(v436, v430, type metadata accessor for RepairView);
        sub_240A2C21C();
        v175 = sub_240A2C20C();
        v176 = (*(v428 + 80) + 32) & ~*(v428 + 80);
        v177 = swift_allocObject();
        v178 = MEMORY[0x277D85700];
        *(v177 + 16) = v175;
        *(v177 + 24) = v178;
        sub_2409DB944(v174, v177 + v176, type metadata accessor for RepairView);
        sub_2409DBB30(v173, v174, type metadata accessor for RepairView);
        v179 = sub_240A2C20C();
        v180 = swift_allocObject();
        *(v180 + 16) = v179;
        *(v180 + 24) = v178;
        sub_2409DB944(v174, v180 + v176, type metadata accessor for RepairView);
        sub_240A2A9AC();
        v181 = v387;
        sub_240A2BD2C();
        sub_240919298(v181, v385, &qword_27E50D700, &qword_240A34A50);
        *&v446 = v431;
        v182 = v431;
        v183 = v419;
        *(&v446 + 1) = v419;
        sub_240A2BC5C();
        v184 = v405;
        sub_240A29CCC();

        v185 = v417;
        sub_240A29A3C();
        v186 = v184;
        v187 = v406;
        v188 = v420;
        v420(v186, v406);
        sub_240A297CC();
        v189 = v421;
        v190 = v443;
        (v443)(v185, v421);
        *&v446 = v182;
        *(&v446 + 1) = v183;
        sub_240A2BC5C();
        v191 = v379;
        sub_240A29CCC();

        v192 = v381;
        sub_240A29A3C();
        v188(v191, v187);
        v193 = v390;
        sub_240A297BC();
        (v190)(v192, v189);
        LODWORD(v442) = sub_240A2A07C();
        v194 = *(v398 + 8);
        v195 = v193;
        v196 = v422;
        v194(v195, v422);
        *&v446 = v431;
        *(&v446 + 1) = v183;
        sub_240A2BC5C();
        v197 = v362;
        sub_240A29CCC();

        v198 = v364;
        sub_240A29A3C();
        v188(v197, v187);
        v199 = v365;
        sub_240A297BC();
        (v190)(v198, v421);
        v200 = sub_240A29DFC();
        v202 = v201;
        v194(v199, v196);
        v203 = v393;
        v204 = *(v393 + 28);
        v444 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
        sub_240A2BC4C();
        v205 = v374;
        *&v374[v204] = v446;
        v206 = v203[8];
        v444 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D6F0, &qword_240A34B08);
        sub_240A2BC4C();
        *(v205 + v206) = v446;
        v207 = v203[9];
        v444 = 0;
        sub_240A2BC4C();
        *(v205 + v207) = v446;
        v208 = v205 + v203[12];
        *v208 = swift_getKeyPath();
        v208[8] = 0;
        v209 = v205 + v203[13];
        *v209 = swift_getKeyPath();
        v209[8] = 0;
        v210 = v203[14];
        *&v446 = 0;
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D248, &unk_240A34FB0);
        v212 = *(v211 + 48);
        v213 = *(v211 + 52);
        swift_allocObject();
        *(v205 + v210) = sub_240A2AF1C();
        v214 = v385;
        sub_240919298(v385, v205 + v203[5], &qword_27E50D700, &qword_240A34A50);
        v215 = (v205 + v203[6]);
        *v215 = v200;
        v215[1] = v202;
        *v205 = 0;
        LOBYTE(v444) = v442 & 1;
        sub_240A2BC4C();
        v216 = *(&v446 + 1);
        v217 = v205 + v203[10];
        *v217 = v446;
        *(v217 + 1) = v216;
        v218 = v415;
        v219 = v435;
        v220 = v416;
        (*(v415 + 16))(v414, v435, v416);
        v221 = v205 + v203[11];
        sub_240A2BC4C();
        (*(v218 + 8))(v219, v220);
        sub_240919300(v214, &qword_27E50D700, &qword_240A34A50);
        sub_2409DBB30(v205, v395, type metadata accessor for AuthenticationView);
        swift_storeEnumTagMultiPayload();
        sub_2409DB744(&qword_27E50D0E8, type metadata accessor for AuthenticationView);
        sub_2409DB744(&qword_27E50D0F0, type metadata accessor for SignInView);
        v222 = v396;
        sub_240A2B6EC();
        sub_240919298(v222, v425, &qword_27E50D0E0, &qword_240A34960);
        swift_storeEnumTagMultiPayload();
        sub_2409DAF64();
        sub_240995A38();
        v223 = v426;
        sub_240A2B6EC();
        sub_240919300(v222, &qword_27E50D0E0, &qword_240A34960);
        sub_240919298(v223, v439, &qword_27E50E490, &qword_240A36930);
        swift_storeEnumTagMultiPayload();
        sub_2409DAED8();
        sub_2409DB04C();
        sub_240A2B6EC();
        sub_240919300(v223, &qword_27E50E490, &qword_240A36930);
        sub_2409DBAD0(v205, type metadata accessor for AuthenticationView);
        v224 = v387;
        v225 = &qword_27E50D700;
        v226 = &qword_240A34A50;
        return sub_240919300(v224, v225, v226);
      }

      v287 = v436;
      v288 = v430;
      v418 = type metadata accessor for RepairView;
      sub_2409DBB30(v436, v430, type metadata accessor for RepairView);
      sub_240A2C21C();
      v289 = sub_240A2C20C();
      v290 = (*(v428 + 80) + 32) & ~*(v428 + 80);
      v291 = swift_allocObject();
      v292 = MEMORY[0x277D85700];
      *(v291 + 16) = v289;
      *(v291 + 24) = v292;
      v442 = type metadata accessor for RepairView;
      sub_2409DB944(v288, v291 + v290, type metadata accessor for RepairView);
      sub_2409DBB30(v287, v288, type metadata accessor for RepairView);
      v293 = sub_240A2C20C();
      v294 = swift_allocObject();
      *(v294 + 16) = v293;
      *(v294 + 24) = MEMORY[0x277D85700];
      sub_2409DB944(v288, v294 + v290, type metadata accessor for RepairView);
      sub_240A29B5C();
      sub_240A2BD2C();
      v295 = v418;
      sub_2409DBB30(v287, v288, v418);
      v296 = sub_240A2C20C();
      v297 = swift_allocObject();
      *(v297 + 16) = v296;
      v298 = MEMORY[0x277D85700];
      *(v297 + 24) = MEMORY[0x277D85700];
      v299 = v442;
      sub_2409DB944(v288, v297 + v290, v442);
      sub_2409DBB30(v287, v288, v295);
      v300 = sub_240A2C20C();
      v301 = swift_allocObject();
      *(v301 + 16) = v300;
      *(v301 + 24) = v298;
      sub_2409DB944(v288, v301 + v290, v299);
      sub_240A2BD2C();
      sub_240919298(v409, v389, &qword_27E50D218, &qword_240A34A40);
      *&v446 = v431;
      *(&v446 + 1) = v419;
      sub_240A2BC5C();
      v302 = v361;
      sub_240A29CCC();

      v303 = v363;
      sub_240A29A3C();
      v304 = v406;
      v420(v302, v406);
      v305 = v366;
      sub_240A297BC();
      v306 = v303;
      v307 = v421;
      (v443)(v306, v421);
      v308 = sub_240A2A0FC();
      if (v308 == 1)
      {
        v310 = v307;
        v327 = sub_240932DE0();
        v328 = *(v398 + 8);
        v430 = (v398 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v436 = v328;
        v328(v305, v422);
        if (v327)
        {
          v329 = 1;
        }

        else
        {
          v329 = 2;
        }

        LODWORD(v442) = v329;
        v330 = v417;
        v309 = v405;
      }

      else
      {
        v309 = v405;
        v310 = v307;
        v311 = *(v398 + 8);
        v430 = (v398 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v436 = v311;
        if (v308)
        {
          v311(v305, v422);
          LODWORD(v442) = 2;
        }

        else
        {
          v311(v305, v422);
          LODWORD(v442) = 0;
        }

        v330 = v417;
      }

      v331 = v431;
      v332 = v419;
      *&v446 = v431;
      *(&v446 + 1) = v419;
      sub_240A2BC5C();
      sub_240A29CCC();

      sub_240A29A3C();
      v333 = v309;
      v334 = v420;
      v420(v333, v304);
      sub_240A297CC();
      v335 = v330;
      v336 = v443;
      (v443)(v335, v310);
      *&v446 = v331;
      *(&v446 + 1) = v332;
      sub_240A2BC5C();
      v337 = v379;
      sub_240A29CCC();

      v338 = v381;
      sub_240A29A3C();
      v334(v337, v304);
      v339 = v390;
      sub_240A297BC();
      (v336)(v338, v310);
      LOBYTE(v338) = sub_240A2A07C();
      v436(v339, v422);
      v340 = v397;
      v341 = v375;
      sub_240919298(v407, &v375[*(v397 + 36)], &qword_27E50BD20, &qword_240A31BC0);
      v342 = v340[5];
      v444 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
      sub_240A2BC4C();
      *(v341 + v342) = v446;
      v343 = v341 + v340[10];
      *v343 = swift_getKeyPath();
      *(v343 + 8) = 0;
      v344 = v389;
      sub_240919298(v389, v341, &qword_27E50D218, &qword_240A34A40);
      *(v341 + v340[6]) = v442;
      v345 = v415;
      v346 = v435;
      v347 = v416;
      (*(v415 + 16))(v414, v435, v416);
      v348 = v341 + v340[7];
      sub_240A2BC4C();
      LOBYTE(v444) = v338 & 1;
      sub_240A2BC4C();
      (*(v345 + 8))(v346, v347);
      v349 = v344;
      v317 = &qword_240A34A40;
      sub_240919300(v349, &qword_27E50D218, &qword_240A34A40);
      v350 = *(&v446 + 1);
      v351 = v341 + v340[8];
      *v351 = v446;
      *(v351 + 8) = v350;
      v352 = v341;
      v353 = v376;
      sub_2409DB944(v352, v376, type metadata accessor for SignInView);
      sub_2409DBB30(v353, v395, type metadata accessor for SignInView);
      swift_storeEnumTagMultiPayload();
      sub_2409DB744(&qword_27E50D0E8, type metadata accessor for AuthenticationView);
      sub_2409DB744(&qword_27E50D0F0, type metadata accessor for SignInView);
      v354 = v396;
      sub_240A2B6EC();
      sub_240919298(v354, v425, &qword_27E50D0E0, &qword_240A34960);
      swift_storeEnumTagMultiPayload();
      sub_2409DAF64();
      sub_240995A38();
      v355 = v426;
      sub_240A2B6EC();
      sub_240919300(v354, &qword_27E50D0E0, &qword_240A34960);
      sub_240919298(v355, v439, &qword_27E50E490, &qword_240A36930);
      swift_storeEnumTagMultiPayload();
      sub_2409DAED8();
      sub_2409DB04C();
      sub_240A2B6EC();
      sub_240919300(v355, &qword_27E50E490, &qword_240A36930);
      sub_2409DBAD0(v353, type metadata accessor for SignInView);
      sub_240919300(v407, &qword_27E50BD20, &qword_240A31BC0);
      v224 = v409;
      v225 = &qword_27E50D218;
    }

    v226 = v317;
    return sub_240919300(v224, v225, v226);
  }

  v227 = v124;
  v228 = v399;
  v409 = v120;
  v229 = v400;
  v230 = v401;
  v231 = v403;
  v232 = v404;
  v233 = v402;
  if (v172)
  {
    if (v172 == 1)
    {
      v234 = v227;
      sub_240A2B22C();
      v235 = v409;
      (*(v228 + 16))(v380, v234, v409);
      swift_storeEnumTagMultiPayload();
      sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
      sub_2409DB744(&qword_27E50CA58, type metadata accessor for DiscoveryView);
      v236 = v382;
      sub_240A2B6EC();
      sub_240919298(v236, v425, &qword_27E50E4A0, &qword_240A36938);
      swift_storeEnumTagMultiPayload();
      sub_2409DAF64();
      sub_240995A38();
      v237 = v426;
      sub_240A2B6EC();
      sub_240919300(v236, &qword_27E50E4A0, &qword_240A36938);
      sub_240919298(v237, v439, &qword_27E50E490, &qword_240A36930);
      swift_storeEnumTagMultiPayload();
      sub_2409DAED8();
      sub_2409DB04C();
      sub_240A2B6EC();
      sub_240919300(v237, &qword_27E50E490, &qword_240A36930);
      return (*(v228 + 8))(v234, v235);
    }

    v442 = type metadata accessor for RepairView;
    v443 = v171;
    v255 = v436;
    v256 = v430;
    sub_2409DBB30(v436, v430, type metadata accessor for RepairView);
    sub_240A2C21C();
    v257 = sub_240A2C20C();
    v258 = (*(v428 + 80) + 32) & ~*(v428 + 80);
    v259 = swift_allocObject();
    v260 = MEMORY[0x277D85700];
    *(v259 + 16) = v257;
    *(v259 + 24) = v260;
    sub_2409DB944(v256, v259 + v258, type metadata accessor for RepairView);
    sub_2409DBB30(v255, v256, type metadata accessor for RepairView);
    v261 = sub_240A2C20C();
    v262 = swift_allocObject();
    *(v262 + 16) = v261;
    *(v262 + 24) = MEMORY[0x277D85700];
    sub_2409DB944(v256, v262 + v258, type metadata accessor for RepairView);
    sub_240A2BD2C();
    v263 = v442;
    sub_2409DBB30(v255, v256, v442);
    v264 = sub_240A2C20C();
    v265 = swift_allocObject();
    *(v265 + 16) = v264;
    v266 = MEMORY[0x277D85700];
    *(v265 + 24) = MEMORY[0x277D85700];
    sub_2409DB944(v256, v265 + v258, type metadata accessor for RepairView);
    sub_2409DBB30(v255, v256, v263);
    v267 = sub_240A2C20C();
    v268 = swift_allocObject();
    *(v268 + 16) = v267;
    *(v268 + 24) = v266;
    sub_2409DB944(v256, v268 + v258, type metadata accessor for RepairView);
    v269 = v367;
    sub_240A2BD2C();
    v270 = v383;
    v271 = v368;
    sub_240919298(v383, v368, &qword_27E50BD18, &qword_240A33940);
    v272 = v384;
    sub_240919298(v269, v271 + *(v384 + 32), &qword_27E50BD20, &qword_240A31BC0);
    *&v446 = v431;
    *(&v446 + 1) = v419;
    sub_240A2BC5C();
    v273 = v405;
    sub_240A29CCC();

    v274 = v417;
    sub_240A29A3C();
    v420(v273, v406);
    v275 = v435;
    sub_240A297CC();
    (v443)(v274, v421);
    v276 = v271 + v272[5];
    v444 = 0;
    v445 = 0xE000000000000000;
    sub_240A2BC4C();
    v277 = v447;
    *v276 = v446;
    *(v276 + 16) = v277;
    *(v271 + v272[6]) = 0;
    *(v271 + v272[7]) = 0;
    v278 = v272[9];
    v279 = v415;
    v280 = v416;
    (*(v415 + 16))(v414, v275, v416);
    sub_240A2BC4C();
    (*(v279 + 8))(v275, v280);
    v281 = v272[10];
    *(v271 + v281) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    v282 = v272[11];
    *(v271 + v282) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v283 = v271 + v272[12];
    *v283 = swift_getKeyPath();
    *(v283 + 8) = 0;
    v284 = v271 + v272[13];
    *v284 = swift_getKeyPath();
    *(v284 + 8) = 0;
    sub_2409DBB30(v271, v380, type metadata accessor for DiscoveryView);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_2409DB744(&qword_27E50CA58, type metadata accessor for DiscoveryView);
    v285 = v382;
    sub_240A2B6EC();
    sub_240919298(v285, v425, &qword_27E50E4A0, &qword_240A36938);
    swift_storeEnumTagMultiPayload();
    sub_2409DAF64();
    sub_240995A38();
    v286 = v426;
    sub_240A2B6EC();
    sub_240919300(v285, &qword_27E50E4A0, &qword_240A36938);
    sub_240919298(v286, v439, &qword_27E50E490, &qword_240A36930);
    swift_storeEnumTagMultiPayload();
    sub_2409DAED8();
    sub_2409DB04C();
    sub_240A2B6EC();
    sub_240919300(v286, &qword_27E50E490, &qword_240A36930);
    sub_2409DBAD0(v271, type metadata accessor for DiscoveryView);
    sub_240919300(v269, &qword_27E50BD20, &qword_240A31BC0);
    v224 = v270;
    v225 = &qword_27E50BD18;
    v226 = &qword_240A33940;
    return sub_240919300(v224, v225, v226);
  }

  v247 = v418;
  v169[4](v418, v128, v170);
  v169[2](v229, v247, v170);
  v248 = (v169[11])(v229, v170);
  if (v248 == *MEMORY[0x277CED2D8] || v248 == *MEMORY[0x277CED270] || v248 == *MEMORY[0x277CED268])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    sub_240A2B21C();
    v320 = v430;
    sub_2409DBB30(v436, v430, type metadata accessor for RepairView);
    v321 = (*(v428 + 80) + 16) & ~*(v428 + 80);
    v322 = swift_allocObject();
    sub_2409DB944(v320, v322 + v321, type metadata accessor for RepairView);
    v323 = (v230 + *(v360 + 36));
    *v323 = sub_2409DB78C;
    v323[1] = v322;
    v323[2] = 0;
    v323[3] = 0;
    sub_240919298(v230, v233, &unk_27E50D720, &unk_240A337B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
    sub_240972F80();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    v252 = v359;
    sub_240A2B6EC();
    v324 = v230;
    v254 = v442;
    sub_240919300(v324, &unk_27E50D720, &unk_240A337B0);
    v253 = v443;
  }

  else
  {
    sub_2409DB744(&qword_27E50C518, MEMORY[0x277CED2E0]);
    sub_240A2C6DC();
    sub_2409D89FC(&v446);
    v249 = v447;
    v250 = v448;
    v251 = v449;
    *v233 = v446;
    *(v233 + 16) = v249;
    *(v233 + 24) = v250;
    *(v233 + 32) = v251;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
    sub_240972F80();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    v252 = v359;
    sub_240A2B6EC();
    (*(v232 + 8))(v231, v357);
    v253 = v443;
    v254 = v442;
    (v443[1])(v229, v442);
  }

  sub_240919298(v252, v388, &qword_27E50E4D0, &qword_240A36950);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
  sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
  sub_2409DB1E0();
  v325 = v392;
  sub_240A2B6EC();
  sub_240919298(v325, v411, &qword_27E50E4C0, &qword_240A36948);
  swift_storeEnumTagMultiPayload();
  sub_2409DB130(&qword_27E50E4B8, &qword_27E50E4C0, &qword_240A36948, sub_2409DB1E0);
  sub_2409DB298(&qword_27E50E4D8, &qword_27E50E4E0, &qword_240A36958, sub_240972938);
  v326 = v412;
  sub_240A2B6EC();
  sub_240919300(v325, &qword_27E50E4C0, &qword_240A36948);
  sub_240919298(v326, v439, &qword_27E50E4B0, &qword_240A36940);
  swift_storeEnumTagMultiPayload();
  sub_2409DAED8();
  sub_2409DB04C();
  sub_240A2B6EC();
  sub_240919300(v326, &qword_27E50E4B0, &qword_240A36940);
  sub_240919300(v252, &qword_27E50E4D0, &qword_240A36950);
  return v253[1](v418, v254);
}

void sub_2409D89FC(void *a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for RepairView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v31 = v6;
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s14AppleIDSetupUI22ProxCardViewControllerC022newRepairAccountFailedefG0ACyFZ_0();
  v44 = 1;
  sub_240A2BD3C();
  v35 = v39;
  v36 = aBlock;
  v34 = v40;
  sub_240A2C06C();
  v32 = type metadata accessor for RepairView;
  sub_2409DBB30(v1, v7, type metadata accessor for RepairView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v30 = type metadata accessor for RepairView;
  sub_2409DB944(v7, v10 + v9, type metadata accessor for RepairView);
  v11 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v12 = swift_allocObject();
  v12[2] = sub_2409DBEA4;
  v12[3] = v10;
  v12[4] = v11;
  v13 = v8;

  v14 = sub_240A2BF1C();

  v42 = sub_2409977DC;
  v43 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v29 = &v40;
  v40 = sub_2409DFF20;
  v41 = &block_descriptor_107;
  v15 = _Block_copy(&aBlock);
  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:v15];

  _Block_release(v15);

  v18 = [v13 addAction_];

  sub_2409DBB30(v33, v7, v32);
  v19 = swift_allocObject();
  sub_2409DB944(v7, v19 + v9, v30);
  v20 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v21 = swift_allocObject();
  v21[2] = sub_2409DBEA8;
  v21[3] = v19;
  v21[4] = v20;
  v22 = v13;

  v23 = sub_240A2BF1C();
  v42 = sub_24093A3B8;
  v43 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_2409DFF20;
  v41 = &block_descriptor_117;
  v24 = _Block_copy(&aBlock);
  v25 = [v16 actionWithTitle:v23 style:0 handler:v24];

  _Block_release(v24);

  [v22 setDismissButtonAction_];

  v26 = MEMORY[0x277D84F90];
  v27 = v37;
  *v37 = v22;
  v27[1] = v26;
  v28 = v35;
  v27[2] = v36;
  v27[3] = v28;
  *(v27 + 32) = v34;
}

void sub_2409D8EA0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RepairView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = _s14AppleIDSetupUI22ProxCardViewControllerC024newRepairAccountCompleteefG0ACyFZ_0();
  v28 = 1;
  sub_240A2BD3C();
  v8 = v23;
  v21 = aBlock;
  v20 = v24;
  sub_240A2C06C();
  sub_2409DBB30(v1, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for RepairView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_2409DB944(&v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for RepairView);
  v11 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v12 = swift_allocObject();
  v12[2] = sub_2409DC2D4;
  v12[3] = v10;
  v12[4] = v11;
  v13 = v7;

  v14 = sub_240A2BF1C();

  v26 = sub_240998A78;
  v27 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2409DFF20;
  v25 = &block_descriptor_134;
  v15 = _Block_copy(&aBlock);
  v16 = [objc_opt_self() actionWithTitle:v14 style:0 handler:v15];

  _Block_release(v15);

  v17 = [v13 addAction_];

  v18 = MEMORY[0x277D84F90];
  *a1 = v13;
  *(a1 + 8) = v18;
  *(a1 + 16) = v21;
  *(a1 + 24) = v8;
  *(a1 + 32) = v20;
}

void sub_2409D919C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v96 = a3;
  v88 = a2;
  v3 = type metadata accessor for RepairView();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v94 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v93 = &v85 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v85 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v16 = *(*(v91 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v91, v17);
  v90 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v85 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E400, &qword_240A368C8);
  v89 = *(v95 - 8);
  v23 = *(v89 + 64);
  v25 = MEMORY[0x28223BE20](v95, v24);
  v86 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v87 = &v85 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v85 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v92 = &v85 - v35;
  v36 = sub_240A2BE7C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = (&v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_240979B08();
  *v41 = sub_240A2C32C();
  (*(v37 + 104))(v41, *MEMORY[0x277D85200], v36);
  v42 = sub_240A2BE8C();
  v44 = *(v37 + 8);
  v43 = v37 + 8;
  v44(v41, v36);
  if ((v42 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_5:
    v46 = sub_240A2B00C();
    __swift_project_value_buffer(v46, qword_27E50E380);
    sub_2409DBB30(v41, v22, type metadata accessor for RepairView);
    sub_2409DBB30(v41, v43, type metadata accessor for RepairView);
    v47 = sub_240A2AFFC();
    v48 = sub_240A2C2AC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v100 = v50;
      *v49 = 136315394;
      v51 = &v22[*(v11 + 32)];
      sub_240A2BC5C();
      v52 = sub_240A2BF9C();
      v54 = v53;
      sub_2409DBAD0(v22, type metadata accessor for RepairView);
      v55 = sub_240925464(v52, v54, &v100);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = v43 + *(v11 + 36);
      v57 = *(v56 + 16);
      v98 = *v56;
      v99 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E408, &qword_240A368D0);
      sub_240A2BC5C();
      v98 = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C070, &qword_240A31F68);
      v58 = sub_240A2BF9C();
      v60 = v59;
      sub_2409DBAD0(v43, type metadata accessor for RepairView);
      v61 = sub_240925464(v58, v60, &v100);

      *(v49 + 14) = v61;
      _os_log_impl(&dword_2408FE000, v47, v48, "[onChange] Unable to send response, no modelSender available: %s %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CCDDB0](v50, -1, -1);
      MEMORY[0x245CCDDB0](v49, -1, -1);
    }

    else
    {

      sub_2409DBAD0(v22, type metadata accessor for RepairView);
      sub_2409DBAD0(v43, type metadata accessor for RepairView);
    }

    return;
  }

  v45 = *(v3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);
  v41 = v96;
  sub_240A2BC5C();
  if ((*(v11 + 48))(v22, 1, v10))
  {
    v11 = v3;
    sub_240919300(v22, &qword_27E50C058, &qword_240A31F50);
    goto LABEL_4;
  }

  (*(v11 + 16))(v15, v22, v10);
  sub_240919300(v22, &qword_27E50C058, &qword_240A31F50);
  sub_240A29CAC();
  (*(v11 + 8))(v15, v10);
  v62 = v89;
  v63 = v92;
  v64 = v33;
  v65 = v95;
  (*(v89 + 32))(v92, v64, v95);
  v66 = v41 + *(v3 + 36);
  v67 = *(v66 + 2);
  v98 = *v66;
  v99 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E408, &qword_240A368D0);
  sub_240A2BC5C();
  v68 = v97;
  if (!v97)
  {
    v11 = v3;
    (*(v62 + 8))(v63, v65);
LABEL_4:
    v22 = v93;
    v43 = v94;
    if (qword_27E50AF88 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v69 = *(&v97 + 1);
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v70 = sub_240A2B00C();
  __swift_project_value_buffer(v70, qword_27E50E380);
  v71 = *(v62 + 16);
  v72 = v87;
  v71(v87, v63, v65);
  v73 = sub_240A2AFFC();
  v74 = sub_240A2C29C();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v96 = v69;
    v77 = v76;
    *&v98 = v76;
    *v75 = 136315138;
    v71(v86, v72, v95);
    v78 = sub_240A2BF9C();
    v80 = v79;
    v81 = *(v62 + 8);
    v81(v72, v95);
    v82 = sub_240925464(v78, v80, &v98);

    *(v75 + 4) = v82;
    _os_log_impl(&dword_2408FE000, v73, v74, "[onChange] Sending response: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x245CCDDB0](v77, -1, -1);
    v83 = v75;
    v65 = v95;
    MEMORY[0x245CCDDB0](v83, -1, -1);
  }

  else
  {

    v81 = *(v62 + 8);
    v81(v72, v65);
  }

  v84 = v92;
  v68(v92);
  sub_24090C1A0(v68);
  v81(v84, v65);
}

uint64_t sub_2409D9AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(char *))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v19 - v13;
  v15 = *(a4 + 48);
  v20[0] = *(a4 + 40);
  v20[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  (*(v10 + 16))(v14, a1, v9);
  v16 = sub_240A29CBC();
  v17 = sub_240A29A2C();
  a6(v14);
  v17(v19, 0);
  v16(v20, 0);
}

uint64_t sub_2409D9C4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_240A2981C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A29A9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 48);
  v21[2] = *(a3 + 40);
  v21[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_240A29A3C();
  v19 = (*(v13 + 8))(v17, v12);
  a4(v19);
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_2409D9E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_240A297DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 48);
  v16[0] = *(a4 + 40);
  v16[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_2409DBB30(a1, v10, MEMORY[0x277CED338]);
  v12 = sub_240A29CBC();
  v13 = sub_240A29A2C();
  sub_240A297FC();
  v13(v15, 0);
  v12(v16, 0);
}

uint64_t sub_2409D9F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RepairView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v20 - v12;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_2409DBB30(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RepairView);
  sub_240A2C21C();
  v15 = sub_240A2C20C();
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_2409DB944(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for RepairView);
  sub_2409230D4(0, 0, v13, a3, v17);
}

uint64_t sub_2409DA128()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3 & 1;
  sub_240A2BA6C();
  sub_240920658(v0, v2, v4);
}

uint64_t sub_2409DA204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240A29A5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 48);
  v14[0] = *(a3 + 40);
  v14[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  (*(v5 + 104))(v9, *MEMORY[0x277CED480], v4);
  v11 = sub_240A29CBC();
  sub_240A29A7C();
  v11(v14, 0);
}

void sub_2409DA340(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RepairView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  sub_2409DBB30(a3, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RepairView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_2409DB944(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for RepairView);
  aBlock[4] = sub_2409DBF28;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = &block_descriptor_123;
  v11 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_2409DA4DC(uint64_t a1)
{
  v2 = sub_240A297DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 48);
  v13[0] = *(a1 + 40);
  v13[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  v8 = sub_240A2976C();
  (*(*(v8 - 8) + 56))(v6, 6, 6, v8);
  v9 = sub_240A29CBC();
  v10 = sub_240A29A2C();
  sub_240A297FC();
  v10(v12, 0);
  v9(v13, 0);
}

void sub_2409DA630()
{
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50E380);
  oslog = sub_240A2AFFC();
  v1 = sub_240A2C29C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v1, "Observed pairing cancelled, user selected manual sign in", v2, 2u);
    MEMORY[0x245CCDDB0](v2, -1, -1);
  }
}

uint64_t sub_2409DA718(uint64_t a1, const char *a2, unsigned int *a3)
{
  v6 = sub_240A297DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v11 = sub_240A2B00C();
  __swift_project_value_buffer(v11, qword_27E50E380);
  v12 = sub_240A2AFFC();
  v13 = sub_240A2C29C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2408FE000, v12, v13, a2, v14, 2u);
    MEMORY[0x245CCDDB0](v14, -1, -1);
  }

  v15 = *(a1 + 48);
  v23[0] = *(a1 + 40);
  v23[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  v16 = *a3;
  v17 = sub_240A2976C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v10, v16, v17);
  (*(v18 + 56))(v10, 0, 6, v17);
  v19 = sub_240A29CBC();
  v20 = sub_240A29A2C();
  sub_240A297FC();
  v20(v22, 0);
  v19(v23, 0);
}

void sub_2409DA960(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RepairView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_2409D919C(a1, a2, v6);
}

unint64_t sub_2409DA9E0()
{
  result = qword_27E50E3B8;
  if (!qword_27E50E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E398, &qword_240A36828);
    sub_24091CE28(&qword_27E50E3C0, &qword_27E50E3C8, &qword_240A36848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E3B8);
  }

  return result;
}

void sub_2409DAAD4()
{
  sub_240919DC0();
  if (v0 <= 0x3F)
  {
    sub_240A2A27C();
    if (v1 <= 0x3F)
    {
      sub_24099673C(319, &qword_27E50E3E8, &qword_27E50C078, &qword_240A31FA8);
      if (v2 <= 0x3F)
      {
        sub_24099673C(319, &qword_27E50E3F0, &qword_27E50C058, &qword_240A31F50);
        if (v3 <= 0x3F)
        {
          sub_24099673C(319, &qword_27E50E3F8, &qword_27E50C070, &qword_240A31F68);
          if (v4 <= 0x3F)
          {
            sub_2409DAC00();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2409DAC00()
{
  if (!qword_27E50C9F8)
  {
    sub_240A2B2AC();
    v0 = sub_240A2B1DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50C9F8);
    }
  }
}

unint64_t sub_2409DAC58()
{
  result = qword_27E50E460;
  if (!qword_27E50E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E458, &qword_240A36920);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E460);
  }

  return result;
}

unint64_t sub_2409DAD08()
{
  result = qword_27E50E470;
  if (!qword_27E50E470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E438, &qword_240A36900);
    sub_2409DADC0();
    sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E470);
  }

  return result;
}

unint64_t sub_2409DADC0()
{
  result = qword_27E50E478;
  if (!qword_27E50E478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E430, &qword_240A368F8);
    sub_240972938();
    sub_2409DAE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E478);
  }

  return result;
}

unint64_t sub_2409DAE4C()
{
  result = qword_27E50E480;
  if (!qword_27E50E480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E410, &qword_240A368D8);
    sub_2409DAED8();
    sub_2409DB04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E480);
  }

  return result;
}

unint64_t sub_2409DAED8()
{
  result = qword_27E50E488;
  if (!qword_27E50E488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E490, &qword_240A36930);
    sub_2409DAF64();
    sub_240995A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E488);
  }

  return result;
}

unint64_t sub_2409DAF64()
{
  result = qword_27E50E498;
  if (!qword_27E50E498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E4A0, &qword_240A36938);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_2409DB744(&qword_27E50CA58, type metadata accessor for DiscoveryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E498);
  }

  return result;
}

unint64_t sub_2409DB04C()
{
  result = qword_27E50E4A8;
  if (!qword_27E50E4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E4B0, &qword_240A36940);
    sub_2409DB130(&qword_27E50E4B8, &qword_27E50E4C0, &qword_240A36948, sub_2409DB1E0);
    sub_2409DB298(&qword_27E50E4D8, &qword_27E50E4E0, &qword_240A36958, sub_240972938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E4A8);
  }

  return result;
}

uint64_t sub_2409DB130(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2409DB1E0()
{
  result = qword_27E50E4C8;
  if (!qword_27E50E4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E4D0, &qword_240A36950);
    sub_240972F80();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E4C8);
  }

  return result;
}

uint64_t sub_2409DB298(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2409DB31C(uint64_t result)
{
  if (result)
  {
    v1 = result;

    v2 = v1;
  }

  return result;
}

void *sub_2409DB37C(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2409DB3FC()
{
  v2 = *(type metadata accessor for RepairView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_240915E50;

  return sub_2409D13EC();
}

uint64_t sub_2409DB4EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240915E50;

  return sub_2409D212C(a1);
}

uint64_t sub_2409DB58C()
{
  v1 = *(type metadata accessor for RepairView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v5 = *(v0 + v2 + 24);
  return (*(v0 + v2 + 16))(v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409DB67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for RepairView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_2409D26E0(a1, a2, a3, v8);
}

uint64_t sub_2409DB744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2409DB944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409DBAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2409DBB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409DBB98(uint64_t a1)
{
  v4 = *(type metadata accessor for RepairView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240916360;

  return sub_2409D1E9C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for RepairView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = *(v0 + v3 + 48);

  v12 = v0 + v3 + v1[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840) + 28));

  v16 = (v6 + v1[9]);
  if (*v16)
  {
    v17 = v16[1];
  }

  v18 = v16[2];

  v19 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_240A2B2AC();
    (*(*(v20 - 8) + 8))(v6 + v19, v20);
  }

  else
  {
    v21 = *(v6 + v19);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2409DBEA8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RepairView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2409DA340(a1, a2, v6);
}

uint64_t sub_2409DBF28()
{
  v1 = *(type metadata accessor for RepairView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2409DA4DC(v2);
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for RepairView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 48);

  v11 = v0 + v3 + v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840) + 28));

  v15 = (v5 + v1[9]);
  if (*v15)
  {
    v16 = v15[1];
  }

  v17 = v15[2];

  v18 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_240A2B2AC();
    (*(*(v19 - 8) + 8))(v5 + v18, v19);
  }

  else
  {
    v20 = *(v5 + v18);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409DC2D8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  sub_240A2C21C();
  v2[13] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x2822009F8](sub_2409DC3A8, v5, v4);
}

id sub_2409DC3A8()
{
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v2 = result;
    v4 = v0[11];
    v3 = v0[12];
    v5 = sub_2409194E8(0, &unk_27E50DD80, 0x277CF02F0);
    v6 = MEMORY[0x277CEDE68];
    v0[5] = v5;
    v0[6] = v6;
    v0[2] = v2;
    v7 = *(*(v4 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings) + 16);
    v8 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
    swift_beginAccess();
    sub_2409BF428(v7 + v8, v3);
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_2409DC4F0;
    v10 = v0[12];

    return sub_2409BE490((v0 + 2), v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2409DC4F0(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[16];
  v11 = *v2;
  (*v2)[17] = v1;

  if (v1)
  {
    sub_2409DDB3C(v4[12]);
    v6 = v4[14];
    v7 = v4[15];
    v8 = sub_2409DC6B8;
  }

  else
  {
    v9 = v4[12];
    v4[18] = a1;
    sub_2409DDB3C(v9);
    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v6 = v4[14];
    v7 = v4[15];
    v8 = sub_2409DC62C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2409DC62C()
{
  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];

  sub_240A2944C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2409DC6B8()
{
  v2 = v0[12];
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t AISFlowStepChildMigration.__allocating_init(guardianAuthResponse:settings:remoteUIPresenter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  AISFlowStepChildMigration.init(guardianAuthResponse:settings:remoteUIPresenter:)(a1, a2, a3);
  return v9;
}

id AISFlowStepChildMigration.guardianAuthResults.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_guardianAuthResults;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t AISFlowStepChildMigration.init(guardianAuthResponse:settings:remoteUIPresenter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15[-v11];
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_childAuthResults) = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error) = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_guardianAuthResults) = a1;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings) = a2;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_remoteUIPresenter) = a3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v15[15] = 0;
  sub_240A2B0DC();
  (*(v8 + 32))(v3 + v13, v12, v7);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v3;
}

uint64_t AISFlowStepChildMigration.nextStep()()
{
  v1 = sub_240A2B00C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error);
  if (v16)
  {
    v17 = v16;
LABEL_3:
    swift_willThrow();
    return v0;
  }

  v18 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_childAuthResults);
  if (!v18)
  {
    sub_240A2AE9C();
    v40 = sub_240A2AFFC();
    v0 = sub_240A2C2AC();
    if (os_log_type_enabled(v40, v0))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2408FE000, v40, v0, "AISFlowStepChildMigration: Missing child auth results", v41, 2u);
      MEMORY[0x245CCDDB0](v41, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    sub_2409B91C4();
    swift_allocError();
    *v42 = 2;
    goto LABEL_3;
  }

  v19 = sub_240A2C24C();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  sub_240A2C21C();
  v44 = v18;

  v20 = v0;
  v21 = sub_240A2C20C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  sub_2409230D4(0, 0, v15, &unk_240A36AF8, v22);

  sub_240A2AE9C();
  v24 = sub_240A2AFFC();
  v25 = sub_240A2C2CC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2408FE000, v24, v25, "AISFlowStepChildMigration: Migration successful. Starting repair step.", v26, 2u);
    MEMORY[0x245CCDDB0](v26, -1, -1);
  }

  (*(v2 + 8))(v10, v1);
  v27 = OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_guardianAuthResults;
  swift_beginAccess();
  v28 = *(v20 + v27);
  v29 = *(v20 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings);
  v30 = objc_allocWithZone(sub_240A2983C());
  v31 = v28;

  v32 = [v30 init];
  v33 = sub_240A2A12C();
  v34 = sub_240A2A11C();
  v35 = type metadata accessor for AISFlowStepChildAccountRepair();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error) = 0;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_guardianAuthResponse) = v31;
  v45[4] = MEMORY[0x277CED7C0];
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_childAuthResults) = v44;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_locationServicesEnabled) = 0;
  v45[3] = v33;
  v45[0] = v34;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings) = v29;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask) = v32;
  sub_240919A14(v45, v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager);
  v38 = (v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider);
  *v38 = sub_24097B004;
  v38[1] = 0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v46 = 0;
  sub_240A2B0DC();
  __swift_destroy_boxed_opaque_existential_0(v45);
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v0;
}

uint64_t sub_2409DCE48()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_2409DDBA4();
}

uint64_t AISFlowStepChildMigration.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_240A2999C();

  v4 = sub_240A2A4AC();
  v8 = *(v4 - 8);
  v5 = MEMORY[0x277CEDAD0];
  if (v3 != 1)
  {
    v5 = MEMORY[0x277CEDAC8];
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v4);
}

void sub_2409DCFE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings);

  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_remoteUIPresenter);
}

uint64_t AISFlowStepChildMigration.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings);

  return v0;
}

uint64_t AISFlowStepChildMigration.__deallocating_deinit()
{
  AISFlowStepChildMigration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t AISFlowStepChildMigrationError.description.getter()
{
  result = 0xD000000000000019;
  v2 = *v0;
  if (*v0 == 1)
  {
    return 0xD00000000000001DLL;
  }

  if (v2 != 2)
  {
    sub_240A2C47C();
    MEMORY[0x245CCCD90](0xD000000000000038, 0x8000000240A3E500);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v4 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v4);

    return 0;
  }

  return result;
}

uint64_t sub_2409DD298()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_2409DCE48();
}

uint64_t type metadata accessor for AISFlowStepChildMigration()
{
  result = qword_27E50E560;
  if (!qword_27E50E560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI30AISFlowStepChildMigrationErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2409DD454(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2409DD4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2409DD518(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v67 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v67 - v16;
  if (a1)
  {
    v72 = a1;
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    if (swift_dynamicCast())
    {
      v19 = v68;
      v20 = v69;
      v21 = v70;
      if (*(&v68 + 1) == 1)
      {
        v67 = v71;
        sub_240A2AE9C();
        v22 = sub_240A2AFFC();
        v23 = sub_240A2C2AC();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_2408FE000, v22, v23, "User cancelled. Tearing down flow migration flow.", v24, 2u);
          MEMORY[0x245CCDDB0](v24, -1, -1);
        }

        (*(v5 + 8))(v17, v4);
        v25 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings);
        v27 = *(v25 + 24);
        v26 = *(v25 + 32);
        sub_240926FD4();
        v28 = swift_allocError();
        *v29 = v19;
        v29[1] = 1;
        v29[2] = v20;
        v29[3] = v21;
        v29[4] = v67;

        v27(v28, 1);

        return sub_2409F4D6C();
      }

      sub_240964124(v68, *(&v68 + 1));
    }

    sub_2409B91C4();
    v30 = swift_allocError();
    *v31 = a1;
  }

  else
  {
    v30 = 0;
  }

  v32 = OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error;
  v33 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error);
  *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error) = v30;
  v34 = a1;

  sub_240A2AE9C();
  v35 = sub_240A2AFFC();
  v36 = sub_240A2C2AC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2408FE000, v35, v36, "AISFlowStepChildMigration: Constructing auth results", v37, 2u);
    MEMORY[0x245CCDDB0](v37, -1, -1);
  }

  v38 = *(v5 + 8);
  v38(v14, v4);
  v39 = objc_opt_self();
  v40 = [v39 sharedInstance];
  v41 = [v40 primaryAuthKitAccount];

  if (v41)
  {
    v42 = [v39 sharedInstance];
    v43 = [v42 DSIDForAccount_];

    v44 = [v39 sharedInstance];
    v45 = [v44 altDSIDForAccount_];

    if (v45)
    {
      v46 = sub_240A2BF4C();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240A32540;
    *(inited + 32) = sub_240A2AC1C();
    v57 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    if (v48)
    {
      v58 = v46;
    }

    else
    {
      v58 = 0;
    }

    if (v48)
    {
      v59 = v48;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    *(inited + 40) = v56;
    *(inited + 48) = v58;
    *(inited + 56) = v59;
    v60 = *MEMORY[0x277CEFF88];
    *(inited + 80) = sub_240A2BF4C();
    *(inited + 88) = v61;
    if (v43)
    {
      v70 = sub_2409194E8(0, &unk_27E50C960, 0x277CCABB0);
      *&v68 = v43;
      sub_24091C780(&v68, (inited + 96));
    }

    else
    {
      *(inited + 120) = v57;
      *(inited + 96) = 0;
      *(inited + 104) = 0xE000000000000000;
    }

    v62 = v43;
    sub_240926374(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB00, &unk_240A38260);
    swift_arrayDestroy();
    v63 = objc_allocWithZone(sub_240A2AC6C());
    v64 = sub_240A2ABDC();

    v65 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_childAuthResults);
    *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_childAuthResults) = v64;
  }

  else
  {
    sub_240A2AE9C();
    v49 = sub_240A2AFFC();
    v50 = sub_240A2C2AC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2408FE000, v49, v50, "AISFlowStepChildMigration: No primary account or DSID found", v51, 2u);
      MEMORY[0x245CCDDB0](v51, -1, -1);
    }

    v38(v10, v4);
    sub_2409B91C4();
    v52 = swift_allocError();
    *v53 = 2;
    v54 = *(v2 + v32);
    *(v2 + v32) = v52;
  }

  return sub_2409F4D6C();
}

uint64_t sub_2409DDB3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2409DDBA4()
{
  v1 = sub_240A2B00C();
  v0[39] = v1;
  v2 = *(v1 - 8);
  v0[40] = v2;
  v3 = *(v2 + 64) + 15;
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  sub_240A2C21C();
  v0[45] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v0[46] = v5;
  v0[47] = v4;

  return MEMORY[0x2822009F8](sub_2409DDCB8, v5, v4);
}

uint64_t sub_2409DDCB8()
{
  v1 = v0[44];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Clearing pending dob as IdMS migration flow succeeded", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[44];
  v6 = v0[39];
  v7 = v0[40];

  v8 = *(v7 + 8);
  v0[48] = v8;
  v8(v5, v6);
  v9 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v0[49] = v9;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_2409DDE98;
  v10 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6A8, qword_240A36C50);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_240964C08;
  v0[21] = &block_descriptor_19;
  v0[22] = v10;
  [v9 aa:v0 + 18 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2409DDE98()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 376);
  v5 = *(v1 + 368);
  if (v3)
  {
    v6 = sub_2409DE4A4;
  }

  else
  {
    v6 = sub_2409DDFC8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2409DDFC8()
{
  v1 = v0[37];
  v0[51] = v1;
  if (v1)
  {
    v2 = v0[49];
    [v1 aa:0 setPendingDOB:?];
    v0[10] = v0;
    v0[15] = v0 + 53;
    v0[11] = sub_2409DE220;
    v3 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_240A13784;
    v0[29] = &block_descriptor_8;
    v0[30] = v3;
    [v2 saveVerifiedAccount:v1 withCompletionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v4 = v0[45];

    v5 = v0[42];
    sub_240A2AE9C();
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C2CC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[48];
    v10 = v0[49];
    v11 = v0[42];
    v12 = v0[39];
    v13 = v0[40];
    if (v8)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2408FE000, v6, v7, "No primary account available.", v14, 2u);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    v9(v11, v12);
    v16 = v0[43];
    v15 = v0[44];
    v18 = v0[41];
    v17 = v0[42];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2409DE220()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 416) = v3;
  v4 = *(v1 + 376);
  v5 = *(v1 + 368);
  if (v3)
  {
    v6 = sub_2409DE5FC;
  }

  else
  {
    v6 = sub_2409DE350;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2409DE350()
{
  v1 = v0[51];
  v2 = v0[45];
  v3 = v0[43];

  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[51];
  v8 = v0[48];
  v9 = v0[49];
  v10 = v0[43];
  v11 = v0[39];
  v12 = v0[40];
  if (v6)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "Successfully cleared pending DOB", v13, 2u);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  v8(v10, v11);
  v15 = v0[43];
  v14 = v0[44];
  v17 = v0[41];
  v16 = v0[42];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2409DE4A4()
{
  v1 = v0[50];
  v2 = v0[45];

  swift_willThrow();

  v3 = v0[42];
  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[48];
  v8 = v0[49];
  v9 = v0[42];
  v10 = v0[39];
  v11 = v0[40];
  if (v6)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "No primary account available.", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  v7(v9, v10);
  v14 = v0[43];
  v13 = v0[44];
  v16 = v0[41];
  v15 = v0[42];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2409DE5FC()
{
  v36 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 360);
  v4 = *(v0 + 328);

  swift_willThrow();

  sub_240A2AE9C();
  v5 = v2;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 416);
    v9 = *(v0 + 392);
    v34 = *(v0 + 384);
    v10 = *(v0 + 320);
    v32 = *(v0 + 408);
    v33 = *(v0 + 328);
    v31 = *(v0 + 312);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = *(v0 + 272);
    v13 = *(v0 + 280);
    v15 = *(v0 + 288);
    v16 = sub_240A2C6CC();
    v18 = sub_240925464(v16, v17, &v35);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2408FE000, v6, v7, "Failed to save account: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);

    v34(v33, v31);
  }

  else
  {
    v20 = *(v0 + 408);
    v19 = *(v0 + 416);
    v21 = *(v0 + 384);
    v23 = *(v0 + 320);
    v22 = *(v0 + 328);
    v24 = *(v0 + 312);

    v21(v22, v24);
  }

  v26 = *(v0 + 344);
  v25 = *(v0 + 352);
  v28 = *(v0 + 328);
  v27 = *(v0 + 336);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2409DEE08(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2409DEEB4;

  return sub_2409DFAFC();
}

uint64_t sub_2409DEEB4(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v5)
  {
    v7 = *(v3 + 16);
    (v7)[2](v7, a1);

    _Block_release(v7);
  }

  else
  {
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2409DEFF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_2409DEE08(v2, v3);
}

uint64_t sub_2409DF0AC()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISAppleIDAuthContextProvider contextDidPresentLoginAlertController", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF230()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISAppleIDAuthContextProvider contextWillDismissLoginAlertController", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF3B4()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISAppleIDAuthContextProvider contextDidDismissLoginAlertController", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 24))(ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF538()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISAppleIDAuthContextProvider contextWillBeginPresentingSecondaryUI", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF6BC()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISAppleIDAuthContextProvider contextDidEndPresentingSecondaryUI", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 40))(ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF840()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISAppleIDAuthContextProvider remoteUIStyle", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  return 0;
}

uint64_t sub_2409DF978()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISAppleIDAuthContextProvider willPresentModalNavigationController", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 48))(ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DFAFC()
{
  v1 = sub_240A2B00C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2409DFBB8, 0, 0);
}

uint64_t sub_2409DFBB8()
{
  v1 = v0[4];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AISAppleIDAuthContextProvider signAdditionalHeaders", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(0);
}

uint64_t AISSignInSettings.completion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AISSignInSettings.onSkip.getter()
{
  v1 = *(v0 + 40);
  sub_240964BBC(v1, *(v0 + 48));
  return v1;
}

uint64_t AISSignInSettings.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  sub_24090C1A0(*(v0 + 40));
  return v0;
}

uint64_t AISSignInSettings.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  sub_24090C1A0(*(v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2409DFDA0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AISSignInSettings();
  result = sub_240A2B0BC();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AgeMigrationHostingController()
{
  result = qword_27E50E600;
  if (!qword_27E50E600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2409DFE80(uint64_t a1)
{
  v3 = type metadata accessor for AgeMigrationView();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  sub_24092F130(a1, v7);
  v9 = sub_240A2B5EC();
  sub_24092F194(a1);
  return v9;
}

void sub_2409DFF20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2409DFF88()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50E5E8);
  __swift_project_value_buffer(v0, qword_27E50E5E8);
  return sub_240A2AE5C();
}

void sub_2409DFFD4()
{
  v1 = v0;
  v2 = type metadata accessor for AgeMigrationView();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AgeMigrationHostingController();
  v15.receiver = v0;
  v15.super_class = v8;
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v9 = [v0 navigationItem];
  sub_2409E0948();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_240A2C39C();
  [v9 setBackAction_];

  sub_240A2B5FC();
  v11 = *(v3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  sub_24092F194(v7);
  v12 = v14[1];
  v13 = v1;
  sub_2409AEC1C(v1);
}

void sub_2409E016C(void *a1)
{
  v1 = a1;
  sub_2409DFFD4();
}

void sub_2409E01B4()
{
  sub_240A2BFDC();
  sub_240A2BFDC();
  v1 = sub_240A2BF1C();

  v2 = sub_240A2BF1C();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  sub_240A2BFDC();
  v4 = sub_240A2BF1C();

  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v4 style:0 handler:0];

  [v3 addAction_];
  sub_240A2BFDC();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_240A2BF1C();

  v11[4] = sub_2409E09C4;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2409DFF20;
  v11[3] = &block_descriptor_20;
  v9 = _Block_copy(v11);

  v10 = [v5 actionWithTitle:v8 style:2 handler:v9];
  _Block_release(v9);

  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_2409E0460(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_2409E04BC()
{
  v1 = sub_240A2A33C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AgeMigrationView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 navigationController];
  if (v11)
  {
    v12 = v11;
    sub_240A2B5FC();
    v13 = *(v6 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    sub_240A2BD7C();
    sub_24092F194(v10);
    v14 = v21;
    *v5 = xmmword_240A315B0;
    *(v5 + 3) = 0;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v21 = v14;
    sub_24092F0D8();
    sub_240A296EC();

    v21 = v14;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v21 = v14;
    swift_getKeyPath();
    sub_240A296FC();

    v15 = [v12 popViewControllerAnimated_];
  }

  else
  {
    if (qword_27E50AF90 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50E5E8);
    v20 = sub_240A2AFFC();
    v17 = sub_240A2C2AC();
    if (os_log_type_enabled(v20, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v20, v17, "Could not pop back because navigation controller is nil", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    v19 = v20;
  }
}

uint64_t sub_2409E07E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeMigrationView();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  sub_24092F130(a2, v8);
  v10 = sub_240A2B5CC();
  sub_24092F194(a2);
  return v10;
}

id sub_2409E088C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AgeMigrationHostingController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_2409E0908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeMigrationHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2409E0948()
{
  result = qword_27E50D8D0;
  if (!qword_27E50D8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50D8D0);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_2409E0A0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageConfiguration;
  v7 = [objc_opt_self() systemFontOfSize_];
  v8 = [objc_opt_self() configurationWithFont_];

  *&v1[v6] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] = v9;
  result = [v9 tintColor];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = result;
    v11 = &v1[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition];
    *v11 = v2;
    *(v11 + 1) = v3;
    *(v11 + 2) = v4;
    v11[24] = v5;
    v35.receiver = v1;
    v35.super_class = type metadata accessor for ImageCardContentView();
    v12 = objc_msgSendSuper2(&v35, sel_initWithCardStyle_, 0);
    v13 = OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView;
    v14 = *&v12[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView];
    v15 = v12;
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v12[v13] setContentMode_];
    [v15 addSubview_];
    v16 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_240A33530;
    v18 = [*&v12[v13] centerXAnchor];
    v19 = [v15 mainContentGuide];
    v20 = [v19 centerXAnchor];

    v21 = [v18 constraintEqualToAnchor_];
    *(v17 + 32) = v21;
    v22 = [*&v12[v13] centerYAnchor];
    v23 = [v15 mainContentGuide];
    v24 = [v23 centerYAnchor];

    v25 = [v22 constraintEqualToAnchor_];
    *(v17 + 40) = v25;
    v26 = [*&v12[v13] topAnchor];
    v27 = [v15 mainContentGuide];
    v28 = [v27 topAnchor];

    v29 = [v26 constraintGreaterThanOrEqualToAnchor_];
    *(v17 + 48) = v29;
    v30 = [*&v12[v13] bottomAnchor];
    v31 = [v15 mainContentGuide];

    v32 = [v31 bottomAnchor];
    v33 = [v30 constraintLessThanOrEqualToAnchor_];

    *(v17 + 56) = v33;
    sub_24092F234();
    v34 = sub_240A2C15C();

    [v16 activateConstraints_];

    sub_2409E0EDC();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2409E0EDC()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition);
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition + 8);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition + 16);
  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition + 24);
  if (v4 <= 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView);
    v6 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageConfiguration);
    if (v4)
    {

      v13 = v3;
      v14 = [v6 configurationByApplyingConfiguration_];
      v15 = sub_240A2BF1C();

      v21 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

      [v5 setImage_];
    }

    else
    {
      sub_2409E12F0(v2, v1, v3, 0);
      v7 = v6;
      v8 = sub_240A2BF1C();
      sub_2409E13A4(v2, v1, v3, 0);
      v21 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

      [v5 setImage_];
    }

LABEL_15:

    return;
  }

  if (v4 == 2)
  {
    v9 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView);
    if (v3)
    {
      v10 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition + 8);

      v11 = v3;
      v12 = v11;
    }

    else
    {
      v18 = qword_27E50AFA8;

      if (v18 != -1)
      {
        swift_once();
      }

      v12 = qword_27E516348;
      v11 = 0;
    }

    v19 = v11;
    v20 = sub_240A2BF1C();

    v21 = [objc_opt_self() imageNamed:v20 inBundle:v12];

    [v9 setImage_];
    goto LABEL_15;
  }

  v16 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView);
  v17 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition);

  [v16 setImage_];
}

id sub_2409E1220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageCardContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2409E12F0(id result, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        return result;
      }

      goto LABEL_7;
    }

    v4 = a3;
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    result = a3;
LABEL_7:

    return result;
  }
}

void sub_2409E13A4(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_8:

    a1 = a3;
LABEL_9:

    return;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_8;
  }
}

uint64_t type metadata accessor for DiscoveringView()
{
  result = qword_27E50E648;
  if (!qword_27E50E648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409E14AC()
{
  sub_2409E17F4(319, &qword_27E50C0D0, MEMORY[0x277CED688], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_2409E17A4(319, &unk_27E50D8E0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2409E17F4(319, &qword_27E50BD60, sub_2409E0948, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2409E17F4(319, &unk_27E50BD70, MEMORY[0x277CED338], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_2409E17F4(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2409E17A4(319, &qword_27E50E658, &type metadata for ProxViewModel, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_2409E17F4(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_2409E17F4(319, &unk_27E50BD88, type metadata accessor for AKUserAgeRange, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_2409E17F4(319, &qword_27E50C9F8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_2409E17A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2409E17F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2409E1898(uint64_t a1)
{
  v2 = sub_240A29EFC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_240A29E9C();
}

uint64_t sub_2409E1960()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50E630);
  __swift_project_value_buffer(v0, qword_27E50E630);
  return sub_240A2AE9C();
}

uint64_t sub_2409E19AC@<X0>(uint64_t a1@<X8>)
{
  v222 = a1;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v192 = *(v193 - 8);
  v2 = *(v192 + 64);
  v4 = MEMORY[0x28223BE20](v193, v3);
  v188 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v189 = &v173 - v7;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E660, &qword_240A36EC8);
  v8 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204, v9);
  v205 = (&v173 - v10);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E668, &qword_240A36ED0);
  v11 = *(*(v215 - 8) + 64);
  MEMORY[0x28223BE20](v215, v12);
  v206 = &v173 - v13;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E670, &qword_240A36ED8);
  v14 = *(*(v212 - 8) + 64);
  MEMORY[0x28223BE20](v212, v15);
  v214 = &v173 - v16;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E678, &qword_240A36EE0);
  v17 = *(*(v221 - 8) + 64);
  MEMORY[0x28223BE20](v221, v18);
  v216 = &v173 - v19;
  v213 = type metadata accessor for DiscoveringRepairView();
  v20 = *(*(v213 - 8) + 64);
  MEMORY[0x28223BE20](v213, v21);
  v23 = (&v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = sub_240A2975C();
  v186 = *(v187 - 8);
  v24 = *(v186 + 64);
  v26 = MEMORY[0x28223BE20](v187, v25);
  v185 = &v173 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v184 = &v173 - v29;
  v210 = type metadata accessor for DiscoveringSetupView();
  v30 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210, v31);
  v196 = (&v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E680, &qword_240A36EE8);
  v33 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218, v34);
  v220 = &v173 - v35;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E688, &qword_240A36EF0);
  v36 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207, v37);
  v208 = &v173 - v38;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E690, &qword_240A36EF8);
  v39 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219, v40);
  v209 = &v173 - v41;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  v42 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197, v43);
  v173 = &v173 - v44;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  v45 = *(*(v217 - 8) + 64);
  MEMORY[0x28223BE20](v217, v46);
  v183 = &v173 - v47;
  v202 = type metadata accessor for PairingView();
  v48 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202, v49);
  v191 = &v173 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E698, &qword_240A36F00);
  v51 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190, v52);
  v195 = &v173 - v53;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6A0, &qword_240A36F08);
  v54 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199, v55);
  v201 = &v173 - v56;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6A8, &qword_240A36F10);
  v57 = *(*(v211 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v211, v58);
  v181 = &v173 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v61);
  v175 = &v173 - v62;
  v63 = type metadata accessor for DiscoveringView();
  v178 = *(v63 - 1);
  v64 = *(v178 + 64);
  MEMORY[0x28223BE20](v63, v65);
  v179 = v66;
  v180 = &v173 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6B0, &qword_240A36F18);
  v67 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200, v68);
  v174 = &v173 - v69;
  v177 = sub_240A29EFC();
  v198 = *(v177 - 8);
  v70 = *(v198 + 64);
  MEMORY[0x28223BE20](v177, v71);
  v182 = &v173 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_240A29EEC();
  v176 = *(v73 - 8);
  v74 = *(v176 + 64);
  MEMORY[0x28223BE20](v73, v75);
  v77 = &v173 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6B8, &qword_240A36F20);
  v78 = *(*(v203 - 8) + 64);
  MEMORY[0x28223BE20](v203, v79);
  v194 = &v173 - v80;
  v81 = sub_240A2974C();
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81, v84);
  v86 = &v173 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v1;
  v88 = v1[1];
  if (v88 > 1)
  {
    if (v88 == 2)
    {
      (*(v82 + 104))(v86, *MEMORY[0x277CED1F0], v81);
      v104 = sub_240A2973C();
      (*(v82 + 8))(v86, v81);
      if (v104)
      {
        v105 = *v1;
        v106 = sub_240A2A05C();
        v102 = v206;
        if (v106)
        {
          v107 = v180;
          sub_2409E4AF4(v1, v180, type metadata accessor for DiscoveringView);
          v108 = (*(v178 + 80) + 16) & ~*(v178 + 80);
          v109 = swift_allocObject();
          sub_2409E49AC(v107, v109 + v108);
          v110 = v174;
          sub_2409E37EC(sub_2409E4A10, v109, v174);

          sub_240919298(v110, v201, &qword_27E50E6B0, &qword_240A36F18);
          swift_storeEnumTagMultiPayload();
          sub_2409E4524();
          sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView);
          v111 = v181;
          sub_240A2B6EC();
          sub_240919300(v110, &qword_27E50E6B0, &qword_240A36F18);
        }

        else
        {
          v158 = &v1[v63[9]];
          v159 = v183;
          sub_240A2BD1C();
          swift_getKeyPath();
          v160 = v191;
          sub_240A2BD0C();

          sub_240919300(v159, &qword_27E50BE28, qword_240A320C0);
          v161 = v202;
          v162 = *(v202 + 24);
          *(v160 + v162) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
          swift_storeEnumTagMultiPayload();
          *(v160 + *(v161 + 20)) = 2;
          sub_2409E4AF4(v160, v201, type metadata accessor for PairingView);
          swift_storeEnumTagMultiPayload();
          sub_2409E4524();
          sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView);
          v111 = v181;
          sub_240A2B6EC();
          sub_2409E4B5C(v160, type metadata accessor for PairingView);
        }

        sub_240919298(v111, v205, &qword_27E50E6A8, &qword_240A36F10);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6C0, &qword_240A36F28);
        sub_2409E4468();
        sub_2409E4680();
        sub_240A2B6EC();
        sub_240919300(v111, &qword_27E50E6A8, &qword_240A36F10);
      }

      else
      {
        sub_240A2B56C();
        v148 = v189;
        sub_240A2B23C();
        v149 = v192;
        v150 = v193;
        (*(v192 + 16))(v188, v148, v193);
        sub_2409E4870(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
        v151 = sub_240A2BCDC();
        (*(v149 + 8))(v148, v150);
        v152 = v205;
        *v205 = v151;
        v152[1] = sub_2409E4010;
        v152[2] = 0;
        v152[3] = 0;
        v152[4] = 0;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6C0, &qword_240A36F28);
        sub_2409E4468();
        sub_2409E4680();
        v102 = v206;
        sub_240A2B6EC();
      }

      v163 = &qword_27E50E668;
      v164 = &qword_240A36ED0;
      sub_240919298(v102, v214, &qword_27E50E668, &qword_240A36ED0);
      swift_storeEnumTagMultiPayload();
      sub_2409E4BBC(&qword_27E50E6F0, type metadata accessor for DiscoveringRepairView);
      sub_2409E47EC(&qword_27E50E6F8, &qword_27E50E668, &qword_240A36ED0, sub_2409E4680);
      v165 = v216;
      sub_240A2B6EC();
      v166 = &qword_27E50E678;
      v167 = &qword_240A36EE0;
      sub_240919298(v165, v220, &qword_27E50E678, &qword_240A36EE0);
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (v1[1])
  {
LABEL_10:
    v112 = *v1;
    v114 = *(v1 + 1);
    v113 = *(v1 + 2);
    v115 = v1[24];
    v116 = v63[9];
    v117 = v213;
    v118 = *(v213 + 40);
    v119 = *(v87 + 2);

    sub_240A2BD1C();
    *v23 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
    swift_storeEnumTagMultiPayload();
    v120 = v117[5];
    *(v23 + v120) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    *(v23 + v117[6]) = v112;
    *(v23 + v117[7]) = v88;
    v121 = (v23 + v117[8]);
    *v121 = v114;
    v121[1] = v113;
    *(v23 + v117[9]) = v115;
    v122 = v23 + v117[11];
    v223 = 0;
    sub_240A2BC4C();
    v123 = v225;
    *v122 = v224;
    *(v122 + 1) = v123;
    sub_2409E4AF4(v23, v214, type metadata accessor for DiscoveringRepairView);
    swift_storeEnumTagMultiPayload();
    sub_2409E4BBC(&qword_27E50E6F0, type metadata accessor for DiscoveringRepairView);
    sub_2409E47EC(&qword_27E50E6F8, &qword_27E50E668, &qword_240A36ED0, sub_2409E4680);
    v124 = v216;
    sub_240A2B6EC();
    sub_240919298(v124, v220, &qword_27E50E678, &qword_240A36EE0);
    swift_storeEnumTagMultiPayload();
    sub_2409E4704();
    sub_2409E48C4();
    sub_240A2B6EC();
    sub_240919300(v124, &qword_27E50E678, &qword_240A36EE0);
    v125 = type metadata accessor for DiscoveringRepairView;
    return sub_2409E4B5C(v23, v125);
  }

  (*(v82 + 104))(v86, *MEMORY[0x277CED208], v81);
  v89 = sub_240A2973C();
  (*(v82 + 8))(v86, v81);
  if ((v89 & 1) == 0)
  {
    v127 = *v1;
    v128 = v210;
    v23 = v196;
    v129 = v196 + *(v210 + 32);
    v130 = &v1[v63[9]];
    sub_240A2BD1C();
    v131 = &v87[v63[10]];
    v133 = *v131;
    v132 = *(v131 + 1);
    v134 = *&v87[v63[11]];
    v135 = v63[12];
    v136 = v128[12];
    v137 = v134;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
    sub_240A2BD1C();
    v138 = v63[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    v139 = v184;
    sub_240A2BC5C();
    *v23 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
    swift_storeEnumTagMultiPayload();
    v140 = v128[5];
    *(v23 + v140) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    *(v23 + v128[6]) = v127;
    *(v23 + v128[7]) = 0;
    v141 = v23 + v128[9];
    v223 = 0;
    sub_240A2BC4C();
    v142 = v225;
    *v141 = v224;
    *(v141 + 1) = v142;
    v143 = (v23 + v128[10]);
    *v143 = v133;
    v143[1] = v132;
    *(v23 + v128[11]) = v134;
    v144 = v128[13];
    v145 = v186;
    v146 = v187;
    (*(v186 + 16))(v185, v139, v187);
    sub_240A2BC4C();
    (*(v145 + 8))(v139, v146);
    sub_2409E4AF4(v23, v208, type metadata accessor for DiscoveringSetupView);
    swift_storeEnumTagMultiPayload();
    sub_2409E47EC(&qword_27E50E708, &qword_27E50E6B8, &qword_240A36F20, sub_240972F80);
    sub_2409E4BBC(&qword_27E50E710, type metadata accessor for DiscoveringSetupView);
    v147 = v209;
    sub_240A2B6EC();
    sub_240919298(v147, v220, &qword_27E50E690, &qword_240A36EF8);
    swift_storeEnumTagMultiPayload();
    sub_2409E4704();
    sub_2409E48C4();
    sub_240A2B6EC();
    sub_240919300(v147, &qword_27E50E690, &qword_240A36EF8);
    v125 = type metadata accessor for DiscoveringSetupView;
    return sub_2409E4B5C(v23, v125);
  }

  v90 = v63[9];
  MEMORY[0x245CCC9B0](v217);
  v91 = v182;
  sub_240A29E8C();
  (*(v176 + 8))(v77, v73);
  v92 = v198;
  v93 = v177;
  v94 = (*(v198 + 88))(v91, v177);
  if (v94 == *MEMORY[0x277CED6A0])
  {
    (*(v92 + 96))(v91, v93);
    v95 = *(v91 + 1);

    v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
    v97 = v183;
    sub_240A2BD1C();
    swift_getKeyPath();
    v98 = v191;
    sub_240A2BD0C();

    sub_240919300(v97, &qword_27E50BE28, qword_240A320C0);
    v99 = v202;
    v100 = *(v202 + 24);
    *(v98 + v100) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    *(v98 + *(v99 + 20)) = 0;
    sub_2409E4AF4(v98, v201, type metadata accessor for PairingView);
    swift_storeEnumTagMultiPayload();
    sub_2409E4524();
    sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView);
    v101 = v175;
    sub_240A2B6EC();
    sub_240919298(v101, v195, &qword_27E50E6A8, &qword_240A36F10);
    swift_storeEnumTagMultiPayload();
    sub_2409E4468();
    sub_240972F80();
    v102 = v194;
    sub_240A2B6EC();
    sub_240919300(v101, &qword_27E50E6A8, &qword_240A36F10);
    sub_2409E4B5C(v98, type metadata accessor for PairingView);
    v103 = sub_240A2A0DC();
    (*(*(v103 - 8) + 8))(&v91[v96], v103);
  }

  else
  {
    v102 = v194;
    if (v94 == *MEMORY[0x277CED690])
    {
      v153 = v180;
      sub_2409E4AF4(v1, v180, type metadata accessor for DiscoveringView);
      v154 = (*(v178 + 80) + 16) & ~*(v178 + 80);
      v155 = swift_allocObject();
      sub_2409E49AC(v153, v155 + v154);
      v156 = v174;
      sub_2409E37EC(sub_2409E4C1C, v155, v174);

      sub_240919298(v156, v201, &qword_27E50E6B0, &qword_240A36F18);
      swift_storeEnumTagMultiPayload();
      sub_2409E4524();
      sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView);
      v157 = v175;
      sub_240A2B6EC();
      sub_240919298(v157, v195, &qword_27E50E6A8, &qword_240A36F10);
      swift_storeEnumTagMultiPayload();
      sub_2409E4468();
      sub_240972F80();
      sub_240A2B6EC();
      sub_240919300(v157, &qword_27E50E6A8, &qword_240A36F10);
      sub_240919300(v156, &qword_27E50E6B0, &qword_240A36F18);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
      sub_240974954();
      v168 = v173;
      sub_240A2B21C();
      v169 = v180;
      sub_2409E4AF4(v1, v180, type metadata accessor for DiscoveringView);
      v170 = (*(v178 + 80) + 16) & ~*(v178 + 80);
      v171 = swift_allocObject();
      sub_2409E49AC(v169, v171 + v170);
      v172 = (v168 + *(v197 + 36));
      *v172 = sub_2409E4C04;
      v172[1] = v171;
      v172[2] = 0;
      v172[3] = 0;
      sub_240919298(v168, v195, &unk_27E50D720, &unk_240A337B0);
      swift_storeEnumTagMultiPayload();
      sub_2409E4468();
      sub_240972F80();
      sub_240A2B6EC();
      sub_240919300(v168, &unk_27E50D720, &unk_240A337B0);
      (*(v198 + 8))(v91, v93);
    }
  }

  v163 = &qword_27E50E6B8;
  v164 = &qword_240A36F20;
  sub_240919298(v102, v208, &qword_27E50E6B8, &qword_240A36F20);
  swift_storeEnumTagMultiPayload();
  sub_2409E47EC(&qword_27E50E708, &qword_27E50E6B8, &qword_240A36F20, sub_240972F80);
  sub_2409E4BBC(&qword_27E50E710, type metadata accessor for DiscoveringSetupView);
  v165 = v209;
  sub_240A2B6EC();
  v166 = &qword_27E50E690;
  v167 = &qword_240A36EF8;
  sub_240919298(v165, v220, &qword_27E50E690, &qword_240A36EF8);
LABEL_21:
  swift_storeEnumTagMultiPayload();
  sub_2409E4704();
  sub_2409E48C4();
  sub_240A2B6EC();
  sub_240919300(v165, v166, v167);
  return sub_240919300(v102, v163, v164);
}

uint64_t sub_2409E3674()
{
  v0 = sub_240A29EEC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  if (qword_27E50AF98 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50E630);
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "User selected to use manual setup", v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v7 = *(type metadata accessor for DiscoveringView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0]();
  sub_240A29EBC();
  return sub_240A2BCFC();
}

uint64_t sub_2409E37EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = a1;
  v35 = a2;
  v39 = a3;
  v5 = type metadata accessor for DiscoveringView();
  v6 = v5 - 8;
  v36 = *(v5 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = sub_240A29EFC();
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_240A29EEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (v3 + *(v6 + 64));
  v22 = v21[3];
  v55 = v21[2];
  v56 = v22;
  v57 = v21[4];
  v23 = v21[1];
  v53 = *v21;
  v54 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E720, &qword_240A36FB8);
  sub_240A2BC7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E728, &qword_240A36FC0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0;
  *&v40 = v24;
  sub_240A2BC4C();
  v42 = v49;
  v43 = v50;
  v44 = v51;
  v45[0] = v52;
  v40 = v47;
  v41 = v48;
  *&v45[8] = v53;
  *&v45[24] = v34;
  v46 = v35;
  v25 = *(v6 + 44);

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v26);
  sub_240A29E8C();
  (*(v16 + 8))(v20, v15);
  sub_2409E4AF4(v4, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiscoveringView);
  v27 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v28 = swift_allocObject();
  sub_2409E49AC(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  sub_2409E462C();
  sub_2409E4BBC(&qword_27E50E6E0, MEMORY[0x277CED6C0]);
  v29 = v39;
  v30 = v37;
  sub_240A2BAFC();

  (*(v38 + 8))(v14, v30);
  v57 = v44;
  v58 = *v45;
  v59 = *&v45[16];
  v60 = v46;
  v53 = v40;
  v54 = v41;
  v55 = v42;
  v56 = v43;
  sub_2409E5088(&v53);
  v31 = sub_240A2B3AC();
  LOBYTE(v15) = sub_240A2B86C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6B0, &qword_240A36F18);
  v33 = v29 + *(result + 36);
  *v33 = v31;
  *(v33 + 8) = v15;
  return result;
}

uint64_t sub_2409E3C10(uint64_t a1)
{
  v23 = sub_240A2B52C();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v22 - v10);
  v12 = sub_240A2B2AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DiscoveringView();
  sub_240919298(a1 + *(v18 + 68), v11, &qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v19 = *v11;
    sub_240A2C2BC();
    v20 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v23);
  }

  sub_240A2B29C();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_2409E3E98()
{
  v0 = sub_240A29EEC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  if (qword_27E50AF98 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50E630);
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C28C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "User selected Other Options", v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v7 = *(type metadata accessor for DiscoveringView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0]();
  sub_240A29EDC();
  return sub_240A2BCFC();
}

void sub_2409E4010()
{
  if (qword_27E50AF98 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50E630);
  oslog = sub_240A2AFFC();
  v1 = sub_240A2C2AC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v1, "Age migration feature is not enabled!", v2, 2u);
    MEMORY[0x245CCDDB0](v2, -1, -1);
  }
}

uint64_t sub_2409E40F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v4 = sub_240A29EFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v34 - v12;
  if (qword_27E50AF98 != -1)
  {
    swift_once();
  }

  v14 = sub_240A2B00C();
  __swift_project_value_buffer(v14, qword_27E50E630);
  v15 = *(v5 + 16);
  v15(v13, a2, v4);
  v16 = sub_240A2AFFC();
  v37 = sub_240A2C28C();
  if (os_log_type_enabled(v16, v37))
  {
    v17 = swift_slowAlloc();
    v36 = a2;
    v18 = v17;
    v35 = swift_slowAlloc();
    *&v50 = v35;
    *v18 = 136315138;
    v15(v10, v13, v4);
    v19 = sub_240A2BF9C();
    v21 = v20;
    (*(v5 + 8))(v13, v4);
    v22 = sub_240925464(v19, v21, &v50);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2408FE000, v16, v37, "model pairing state changed to %s", v18, 0xCu);
    v23 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x245CCDDB0](v23, -1, -1);
    v24 = v18;
    a2 = v36;
    MEMORY[0x245CCDDB0](v24, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v13, v4);
  }

  v25 = (v38 + *(type metadata accessor for DiscoveringView() + 56));
  v26 = v25[3];
  v52 = v25[2];
  v53 = v26;
  v54 = v25[4];
  v27 = v25[1];
  v50 = *v25;
  v51 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E720, &qword_240A36FB8);
  sub_240A2BC5C();
  sub_240A22AC0(a2, &v39);
  v28 = v25[2];
  v29 = *v25;
  v46 = v25[1];
  v47 = v28;
  v30 = v25[2];
  v31 = v25[4];
  v48 = v25[3];
  v49 = v31;
  v32 = *v25;
  v42 = v30;
  v43 = v48;
  v44 = v25[4];
  v45 = v32;
  v40 = v29;
  v41 = v46;
  sub_240919298(&v45, &v50, &qword_27E50E720, &qword_240A36FB8);
  sub_240A2BC6C();
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v50 = v40;
  v51 = v41;
  return sub_240919300(&v50, &qword_27E50E720, &qword_240A36FB8);
}

unint64_t sub_2409E4468()
{
  result = qword_27E50E6C8;
  if (!qword_27E50E6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E6A8, &qword_240A36F10);
    sub_2409E4524();
    sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E6C8);
  }

  return result;
}

unint64_t sub_2409E4524()
{
  result = qword_27E50E6D0;
  if (!qword_27E50E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E6B0, &qword_240A36F18);
    sub_240A29EFC();
    sub_2409E462C();
    sub_2409E4BBC(&qword_27E50E6E0, MEMORY[0x277CED6C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E6D0);
  }

  return result;
}

unint64_t sub_2409E462C()
{
  result = qword_27E50E6D8;
  if (!qword_27E50E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E6D8);
  }

  return result;
}

unint64_t sub_2409E4680()
{
  result = qword_27E50E6E8;
  if (!qword_27E50E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E6C0, &qword_240A36F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E6E8);
  }

  return result;
}

unint64_t sub_2409E4704()
{
  result = qword_27E50E700;
  if (!qword_27E50E700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E690, &qword_240A36EF8);
    sub_2409E47EC(&qword_27E50E708, &qword_27E50E6B8, &qword_240A36F20, sub_240972F80);
    sub_2409E4BBC(&qword_27E50E710, type metadata accessor for DiscoveringSetupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E700);
  }

  return result;
}

uint64_t sub_2409E47EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_2409E4468();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2409E4870(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2409E48C4()
{
  result = qword_27E50E718;
  if (!qword_27E50E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E678, &qword_240A36EE0);
    sub_2409E4BBC(&qword_27E50E6F0, type metadata accessor for DiscoveringRepairView);
    sub_2409E47EC(&qword_27E50E6F8, &qword_27E50E668, &qword_240A36ED0, sub_2409E4680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E718);
  }

  return result;
}

uint64_t sub_2409E49AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveringView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409E4A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0C8, &qword_240A32740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  sub_240919298(a1, &v7 - v5, &qword_27E50C0C8, &qword_240A32740);
  return sub_240A2B4AC();
}

uint64_t sub_2409E4AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409E4B5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2409E4BBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2409E4C34(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DiscoveringView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for DiscoveringView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = (v0 + v3 + v1[9]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0) + 32);
  v11 = sub_240A29EEC();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = *(v0 + v3 + v1[10] + 8);

  v13 = (v0 + v3 + v1[12]);
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v17 = sub_240A2976C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v13[v16], 6, v17))
  {
    (*(v18 + 8))(&v13[v16], v17);
  }

  v19 = v5 + v1[13];
  v20 = sub_240A2975C();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28));

  v22 = (v5 + v1[14]);
  v23 = v22[1];

  v24 = v22[3];

  v25 = v22[6];

  v26 = v22[9];

  v27 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_240A29DBC();
    (*(*(v28 - 8) + 8))(v5 + v27, v28);
  }

  else
  {
    v29 = *(v5 + v27);
  }

  sub_24090C1E4(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  v30 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_240A2B2AC();
    (*(*(v31 - 8) + 8))(v5 + v30, v31);
  }

  else
  {
    v32 = *(v5 + v30);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409E5008(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DiscoveringView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2409E40F8(a1, a2, v6);
}

unint64_t sub_2409E50DC()
{
  result = qword_27E50E730;
  if (!qword_27E50E730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E738, &qword_240A36FC8);
    sub_2409E4704();
    sub_2409E48C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E730);
  }

  return result;
}

void sub_2409E5168(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2409E51C8()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2409E5214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *SetupCardViewController.init(contextBuilder:reportHandler:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v85 = a1;
  v86 = a4;
  v82 = a3;
  v78 = a2;
  v5 = sub_240A2981C();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v71 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v13 = *(*(v71 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v71, v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v71 - v24;
  v26 = type metadata accessor for SetupView();
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController] = 0;
  v32 = type metadata accessor for SetupCardViewController();
  v91.receiver = v4;
  v91.super_class = v32;
  v33 = objc_msgSendSuper2(&v91, sel_initWithContentView_, 0);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v79 = v35;
  v80 = v34;
  v36 = v82;
  v35[2] = v34;
  v35[3] = v36;
  v35[4] = v86;
  LOBYTE(v89) = 1;
  v82 = v33;

  sub_240A2BD3C();
  v77 = *(&v87 + 1);
  v72 = v87;
  v76 = v88;
  LOBYTE(v89) = 0;
  sub_240A2BD3C();
  v74 = *(&v87 + 1);
  v75 = v87;
  v73 = v88;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  v37 = sub_240A2B01C();
  (*(*(v37 - 8) + 56))(v25, 1, 1, v37);
  v38 = sub_240A2A1BC();
  LOBYTE(v89) = 0;
  sub_240A2BC4C();
  v39 = *(&v87 + 1);
  v31[48] = v87;
  *(v31 + 7) = v39;
  v40 = v27[12];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  (*(*(v41 - 8) + 56))(v20, 1, 1, v41);
  sub_240919298(v20, v17, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_2409E5D18(v20);
  v42 = &v31[v27[13]];
  v89 = 0;
  v90 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v43 = v88;
  *v42 = v87;
  *(v42 + 2) = v43;
  v44 = v27[14];
  *&v31[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v45 = v27[15];
  *&v31[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v46 = v27[16];
  *&v31[v46] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v47 = &v31[v27[17]];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  v48 = &v31[v27[18]];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  v49 = &v31[v27[19]];
  *v49 = swift_getKeyPath();
  v49[8] = 0;
  v50 = v27[20];
  v51 = v27[21];
  v52 = &v31[v27[24]];
  LOBYTE(v89) = 1;
  sub_240A2BC4C();
  v53 = *(&v87 + 1);
  *v52 = v87;
  *(v52 + 1) = v53;
  sub_240A2979C();
  v54 = v27[11];
  v56 = v83;
  v55 = v84;
  (*(v83 + 16))(v81, v12, v84);
  sub_240A2BC4C();
  (*(v56 + 8))(v12, v55);
  v57 = v78;
  *v31 = v85;
  *(v31 + 1) = v57;
  v58 = v79;
  *(v31 + 2) = sub_2409E5D0C;
  *(v31 + 3) = v58;
  *&v31[v50] = 0;
  *&v31[v51] = 0;
  *(v31 + 4) = v38;
  v59 = &v31[v27[22]];
  v60 = v77;
  *v59 = v72;
  *(v59 + 1) = v60;
  v59[16] = v76;
  v61 = &v31[v27[23]];
  v62 = v74;
  *v61 = v75;
  *(v61 + 1) = v62;
  v61[16] = v73;
  v63 = objc_allocWithZone(sub_240A29DEC());

  *(v31 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v64 = sub_240A297AC();
  sub_240A2A04C();
  v64(&v87, 0);
  sub_240A2BC6C();

  v65 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v66 = sub_240A2B5EC();

  v67 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  v68 = v82;
  swift_beginAccess();
  v69 = *&v68[v67];
  *&v68[v67] = v66;

  return v68;
}

void sub_2409E5ACC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v26 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_240A2C24C();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    sub_240919298(a1, v12, &qword_27E50C6E0, &qword_240A32F18);
    sub_240A2C21C();
    v21 = v19;

    v22 = sub_240A2C20C();
    v23 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v22;
    v24[3] = v25;
    v24[4] = v21;
    v24[5] = a3;
    v24[6] = a4;
    sub_2409974DC(v12, v24 + v23);
    sub_2409230D4(0, 0, v17, &unk_240A37120, v24);
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_2409E5D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2409E5D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v7[12] = v8;
  v7[13] = *(v8 + 64);
  v7[14] = swift_task_alloc();
  sub_240A2C21C();
  v7[15] = sub_240A2C20C();
  v10 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409E5E88, v10, v9);
}

uint64_t sub_2409E5E88()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];

  sub_240919298(v6, v2, &qword_27E50C6E0, &qword_240A32F18);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  sub_2409974DC(v2, v10 + v9);
  v0[6] = sub_2409C4528;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2409EC704;
  v0[5] = &block_descriptor_21;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v7 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);

  v13 = v0[1];

  return v13();
}

void sub_2409E5FFC()
{
  v1 = v0;
  v2 = sub_240A2B80C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v65.receiver = v0;
  v65.super_class = type metadata accessor for SetupCardViewController();
  objc_msgSendSuper2(&v65, sel_viewDidLoad);
  v5 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (!v6)
  {
    __break(1u);
    goto LABEL_28;
  }

  v7 = v6;
  sub_240A2B7FC();
  sub_240A2B5AC();

  v8 = *&v0[v5];
  if (!v8)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = v8;
  v10 = sub_240A2B3BC();
  v12 = sub_240A2B5BC();
  if ((*v11 & v10) != 0)
  {
    *v11 &= ~v10;
  }

  v12(v64, 0);

  v13 = *&v1[v5];
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = [v13 view];
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = *&v1[v5];
  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v16 willMoveToParentViewController_];
  if (!*&v1[v5])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v1 addChildViewController_];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = v17;
  v19 = *&v1[v5];
  if (!v19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = [v19 view];
  if (!v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v21 = v20;
  [v18 addSubview_];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_240A318E0;
  v25 = *&v1[v5];
  if (!v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = [v25 view];
  if (!v26)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v23 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v24 + 32) = v30;
  v31 = *&v1[v5];
  if (!v31)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v32 = [v31 view];
  if (!v32)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v23 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v24 + 40) = v36;
  v37 = *&v1[v5];
  if (!v37)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v38 = [v37 view];
  if (!v38)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v23 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v24 + 48) = v42;
  v43 = *&v1[v5];
  if (!v43)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v44 = [v43 view];
  if (!v44)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v23 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v24 + 56) = v48;
  v49 = *&v1[v5];
  if (!v49)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v50 = [v49 view];
  if (!v50)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v51 = v50;
  v52 = [v50 centerXAnchor];

  v53 = [v23 centerXAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v24 + 64) = v54;
  v55 = *&v1[v5];
  if (!v55)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v56 = [v55 view];
  if (!v56)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v57 = v56;
  v58 = objc_opt_self();
  v59 = [v57 centerYAnchor];

  v60 = [v23 centerYAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v24 + 72) = v61;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v62 = sub_240A2C15C();

  [v58 activateConstraints_];

  v63 = *&v1[v5];
  if (v63)
  {
    [v63 didMoveToParentViewController_];

    return;
  }

LABEL_49:
  __break(1u);
}

id SetupCardViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id SetupCardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupCardViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409E67FC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_240915E50;

  return sub_2409E5D80(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2409E693C(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_27E50AFA0 != -1)
    {
      swift_once();
    }

    v1 = qword_27E516340;
    v4 = sub_240A2BF1C();
    v5 = [objc_opt_self() imageNamed:v4 inBundle:v1 compatibleWithTraitCollection:0];
    goto LABEL_7;
  }

  v1 = [objc_opt_self() configurationWithPointSize:5 weight:40.0];
  v2 = sub_240A2BF1C();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [v3 imageWithConfiguration_];

    v5 = [v4 imageWithRenderingMode_];
LABEL_7:
    v3 = v5;
  }

  return v3;
}

uint64_t sub_2409E6AC4(char a1)
{
  v2 = sub_240A2974C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x277CED220], v2);
  v8 = sub_240A2973C();
  (*(v3 + 8))(v7, v2);
  v9 = 2;
  if (a1)
  {
    v9 = 4;
  }

  if (v8)
  {
    return 5;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_2409E6BD4()
{
  if (*v0)
  {
    result = 0x64726F7773736170;
  }

  else
  {
    result = 0x74696D69786F7270;
  }

  *v0;
  return result;
}

uint64_t sub_2409E6C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696D69786F7270 && a2 == 0xEE00707574655379;
  if (v6 || (sub_240A2C66C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xED00007972746E45)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_240A2C66C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2409E6D2C(uint64_t a1)
{
  v2 = sub_2409E776C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2409E6D68(uint64_t a1)
{
  v2 = sub_2409E776C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2409E6DA4(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E798, &qword_240A372C8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7A0, &qword_240A372D0);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22, v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7A8, &qword_240A372D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v22 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2409E776C();
  sub_240A2C78C();
  v20 = (v14 + 8);
  if (v25)
  {
    v27 = 1;
    sub_2409E77C0();
    sub_240A2C61C();
    (*(v23 + 8))(v7, v24);
  }

  else
  {
    v26 = 0;
    sub_2409E7814();
    sub_240A2C61C();
    (*(v8 + 8))(v12, v22);
  }

  return (*v20)(v18, v13);
}

uint64_t sub_2409E706C(uint64_t a1)
{
  v2 = sub_2409E77C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2409E70A8(uint64_t a1)
{
  v2 = sub_2409E77C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2409E70E4(uint64_t a1)
{
  v2 = sub_2409E7814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2409E7120(uint64_t a1)
{
  v2 = sub_2409E7814();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2409E716C(uint64_t *a1@<X8>)
{
  v2 = 0x20797469786F7250;
  if (*v1)
  {
    v2 = 0x64726F7773736150;
  }

  v3 = 0xED00007075746553;
  if (*v1)
  {
    v3 = 0xEE007972746E6520;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2409E71C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2409E7330(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_2409E7220()
{
  result = qword_27E50E748;
  if (!qword_27E50E748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E750, qword_240A371D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E748);
  }

  return result;
}

unint64_t sub_2409E7288()
{
  result = qword_27E50E758;
  if (!qword_27E50E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E758);
  }

  return result;
}

uint64_t sub_2409E72DC()
{
  if (*v0)
  {
    result = 0x64726F7773736150;
  }

  else
  {
    result = 0x20797469786F7250;
  }

  *v0;
  return result;
}

uint64_t sub_2409E7330(uint64_t *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E760, &qword_240A372A8);
  v30 = *(v32 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v32, v3);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E768, &qword_240A372B0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E770, &qword_240A372B8);
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v28 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2409E776C();
  v17 = v34;
  sub_240A2C77C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = v6;
  v34 = a1;
  v19 = v31;
  v18 = v32;
  v20 = v15;
  v21 = sub_240A2C60C();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_240A2C4BC();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E780, &qword_240A372C0) + 48);
    *v25 = &type metadata for SignInOption;
    sub_240A2C5FC();
    sub_240A2C4AC();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v33 + 8))(v20, v11);
    swift_unknownObjectRelease();
    a1 = v34;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28[1] = v21;
  v35 = *(v21 + 32);
  if (v35)
  {
    v37 = 1;
    sub_2409E77C0();
    sub_240A2C5EC();
    v22 = v33;
    (*(v30 + 8))(v5, v18);
  }

  else
  {
    v36 = 0;
    sub_2409E7814();
    sub_240A2C5EC();
    v22 = v33;
    (*(v19 + 8))(v10, v29);
  }

  (*(v22 + 8))(v15, v11);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v35;
}

unint64_t sub_2409E776C()
{
  result = qword_27E50E778;
  if (!qword_27E50E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E778);
  }

  return result;
}

unint64_t sub_2409E77C0()
{
  result = qword_27E50E788;
  if (!qword_27E50E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E788);
  }

  return result;
}

unint64_t sub_2409E7814()
{
  result = qword_27E50E790;
  if (!qword_27E50E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeadlineFailure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeadlineFailure(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2409E79DC()
{
  result = qword_27E50E7B0;
  if (!qword_27E50E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7B0);
  }

  return result;
}

unint64_t sub_2409E7A34()
{
  result = qword_27E50E7B8;
  if (!qword_27E50E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7B8);
  }

  return result;
}

unint64_t sub_2409E7A8C()
{
  result = qword_27E50E7C0;
  if (!qword_27E50E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7C0);
  }

  return result;
}

unint64_t sub_2409E7AE4()
{
  result = qword_27E50E7C8;
  if (!qword_27E50E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7C8);
  }

  return result;
}

unint64_t sub_2409E7B3C()
{
  result = qword_27E50E7D0;
  if (!qword_27E50E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7D0);
  }

  return result;
}

unint64_t sub_2409E7B94()
{
  result = qword_27E50E7D8;
  if (!qword_27E50E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7D8);
  }

  return result;
}

unint64_t sub_2409E7BEC()
{
  result = qword_27E50E7E0;
  if (!qword_27E50E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7E0);
  }

  return result;
}

id sub_2409E7C68()
{
  v0 = objc_allocWithZone(type metadata accessor for QRCodeScanner());

  return [v0 init];
}

uint64_t sub_2409E7CA0@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for QRCodeScannerView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v44 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E828, &qword_240A37678);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v37 - v10);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E830, &qword_240A37680);
  v12 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v13);
  v15 = &v37 - v14;
  *v11 = sub_240A2BDEC();
  v11[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E838, &qword_240A37688);
  sub_2409E81F4(v1, v11 + *(v17 + 44));
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2409EB2B4(v1, v37);
  v43 = *(v4 + 80);
  v18 = (v43 + 16) & ~v43;
  v19 = swift_allocObject();
  sub_2409EB328(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_24091CE28(&qword_27E50E840, &qword_27E50E828, &qword_240A37678);
  sub_240A2BA2C();

  sub_240919300(v11, &qword_27E50E828, &qword_240A37678);
  v20 = sub_240A2BE1C();
  v21 = *(v3 + 40);
  v22 = v1;
  v38 = v1;
  v23 = (v1 + v21);
  v24 = *v23;
  v41 = v23[1];
  v42 = v24;
  v40 = *(v23 + 16);
  v39 = type metadata accessor for QRCodeScanner();
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner);
  v25 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  LOBYTE(v24) = v47;
  v26 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E848, &qword_240A376D8) + 36)];
  *v26 = v20;
  v26[8] = v24;
  v27 = v37;
  sub_2409EB2B4(v22, v37);
  v28 = swift_allocObject();
  sub_2409EB328(v27, v28 + v18);
  v29 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E850, &qword_240A376E0) + 36)];
  *v29 = sub_2409EB3E8;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  v30 = &v15[*(v45 + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E858, &qword_240A376E8) + 28);
  v32 = *MEMORY[0x277CDF3C0];
  v33 = sub_240A2B1BC();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  v34 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  sub_2409EB2B4(v38, v27);
  v35 = swift_allocObject();
  sub_2409EB328(v27, v35 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C3E0, &unk_240A30960);
  sub_2409EB570();
  sub_2409EB7DC();
  sub_240A2BAFC();

  return sub_240909F9C(v15);
}

uint64_t sub_2409E81F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8A0, &qword_240A37778);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v39 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v37[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8A8, &qword_240A37780);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v37[-v19];
  v38 = sub_240A2B86C();
  v21 = a1 + *(type metadata accessor for QRCodeScannerView() + 32);
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  type metadata accessor for QRCodeScanner();
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner);
  v41 = sub_240A2B1EC();
  sub_240A2BC4C();
  v25 = v42;
  v26 = v43;
  v27 = sub_240A2BDEC();
  v29 = v28;
  v30 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8B0, &qword_240A37788) + 36);
  sub_2409E8530(a1, v30);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8B8, &qword_240A37790) + 36));
  *v31 = v27;
  v31[1] = v29;
  *v20 = v25;
  v20[1] = v26;
  *(v20 + *(v12 + 44)) = sub_240A2B86C();
  *v10 = sub_240A2B58C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8C0, &qword_240A37798);
  sub_2409E8710(a1, &v10[*(v32 + 44)]);
  sub_240919298(v20, v17, &qword_27E50E8A8, &qword_240A37780);
  v33 = v39;
  sub_240919298(v10, v39, &qword_27E50E8A0, &qword_240A37778);
  v34 = v40;
  *v40 = v38;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8C8, &qword_240A377A0);
  sub_240919298(v17, &v34[*(v35 + 48)], &qword_27E50E8A8, &qword_240A37780);
  sub_240919298(v33, &v34[*(v35 + 64)], &qword_27E50E8A0, &qword_240A37778);
  sub_240919300(v10, &qword_27E50E8A0, &qword_240A37778);
  sub_240919300(v20, &qword_27E50E8A8, &qword_240A37780);
  sub_240919300(v33, &qword_27E50E8A0, &qword_240A37778);
  return sub_240919300(v17, &qword_27E50E8A8, &qword_240A37780);
}

uint64_t sub_2409E8530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E978, &qword_240A378F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17[-v8];
  v10 = (a1 + *(type metadata accessor for QRCodeScannerView() + 32));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  type metadata accessor for QRCodeScanner();
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner);
  v14 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v17[15])
  {
    v15 = 1;
  }

  else
  {
    sub_240A2BDDC();
    *&v9[*(v4 + 56)] = 256;
    sub_24093A86C(v9, a2, &qword_27E50E978, &qword_240A378F0);
    v15 = 0;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t sub_2409E8710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8D0, &qword_240A377A8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26 - v12;
  sub_2409E89D8(&v26 - v12);
  *&v13[*(v5 + 44)] = 0x3FF0000000000000;
  v14 = sub_240A2BDEC();
  v16 = v15;
  sub_2409E8CCC(a1, &v53);
  v38 = v57;
  v39 = v58;
  v40 = v59;
  v41 = v60;
  v34 = v53;
  v35 = v54;
  v36 = v55;
  v37 = v56;
  v42[0] = v53;
  v42[1] = v54;
  v42[2] = v55;
  v42[3] = v56;
  v42[4] = v57;
  v42[5] = v58;
  v42[6] = v59;
  v42[7] = v60;
  sub_240919298(&v34, &v43, &qword_27E50E8D8, &qword_240A377B0);
  sub_240919300(v42, &qword_27E50E8D8, &qword_240A377B0);
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  sub_240919298(v13, v10, &qword_27E50E8D0, &qword_240A377A8);
  sub_240919298(v10, a2, &qword_27E50E8D0, &qword_240A377A8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8E0, &qword_240A377B8);
  v18 = a2 + v17[12];
  *v18 = 0;
  *(v18 + 8) = 0;
  v19 = a2 + v17[16];
  *&v43 = v14;
  *(&v43 + 1) = v16;
  v44 = v26;
  v45 = v27;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v46 = v28;
  v47 = v29;
  v52 = 0x4014000000000000;
  *(v19 + 144) = 0x4014000000000000;
  v20 = v50;
  *(v19 + 96) = v49;
  *(v19 + 112) = v20;
  *(v19 + 128) = v51;
  v21 = v46;
  *(v19 + 32) = v45;
  *(v19 + 48) = v21;
  v22 = v48;
  *(v19 + 64) = v47;
  *(v19 + 80) = v22;
  v23 = v44;
  *v19 = v43;
  *(v19 + 16) = v23;
  v24 = a2 + v17[20];
  *v24 = 0;
  *(v24 + 8) = 0;
  sub_240919298(&v43, &v53, &qword_27E50E8E8, &unk_240A377C0);
  sub_240919300(v13, &qword_27E50E8D0, &qword_240A377A8);
  *&v53 = v14;
  *(&v53 + 1) = v16;
  v58 = v30;
  v59 = v31;
  v60 = v32;
  v61 = v33;
  v54 = v26;
  v55 = v27;
  v56 = v28;
  v57 = v29;
  v62 = 0x4014000000000000;
  sub_240919300(&v53, &qword_27E50E8E8, &unk_240A377C0);
  return sub_240919300(v10, &qword_27E50E8D0, &qword_240A377A8);
}

uint64_t sub_2409E89D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2BB5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = sub_240A2B58C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8F8, &qword_240A37838);
  sub_2409E96E0(v2, (a1 + *(v10 + 44)));
  v11 = sub_240A2B86C();
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E900, &qword_240A37840) + 36);
  *v12 = v11;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 1;
  v13 = sub_240A2B87C();
  sub_240A2B1AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E908, &qword_240A37848) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  v23 = sub_240A2BE1C();
  v24 = v2 + *(type metadata accessor for QRCodeScannerView() + 32);
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  type metadata accessor for QRCodeScanner();
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner);
  v28 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  LOBYTE(v28) = v36[15];
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E910, &qword_240A37850) + 36);
  *v29 = v23;
  *(v29 + 8) = v28;
  (*(v5 + 104))(v9, *MEMORY[0x277CE0EE0], v4);
  v30 = sub_240A2BBAC();
  LOBYTE(v9) = sub_240A2B86C();
  v31 = sub_240A2BDEC();
  v33 = v32;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E918, &qword_240A37858);
  v35 = a1 + *(result + 36);
  *v35 = v30;
  *(v35 + 8) = v9;
  *(v35 + 16) = v31;
  *(v35 + 24) = v33;
  return result;
}

uint64_t sub_2409E8CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v34 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v30 - v7;
  LOBYTE(v41) = 0;
  v9 = sub_240A2BC4C();
  v37 = v38;
  v36 = *(&v38 + 1);
  v10 = 0.0;
  MEMORY[0x245CCCAD0](v9, 2.0, 0.0, 1.5);
  v35 = sub_240A2BDFC();

  v33 = type metadata accessor for QRCodeScannerView();
  v11 = (a1 + *(v33 + 32));
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v11 + 16);
  type metadata accessor for QRCodeScanner();
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner);
  v15 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v38)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  v32 = sub_240A2BBCC();
  v17 = sub_240A2B8CC();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v31 = sub_240A2B91C();
  sub_240919300(v8, &qword_27E50B7D0, &qword_240A31218);
  KeyPath = swift_getKeyPath();
  v19 = sub_240A2BB9C();
  v20 = swift_getKeyPath();
  v21 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (!v38)
  {
    v10 = 1.0;
  }

  v22 = (v34 + *(v33 + 36));
  v23 = *(v22 + 2);
  v41 = *v22;
  v42 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E898, &qword_240A37770);
  sub_240A2BC7C();
  v34 = v38;
  v24 = v39;
  v25 = v40;
  *&v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8F0, &qword_240A37830);
  sub_240A2BC4C();
  v26 = v38;
  *a2 = v37;
  v27 = v35;
  *(a2 + 8) = v36;
  *(a2 + 16) = v27;
  *(a2 + 24) = v16;
  v28 = v31;
  *(a2 + 32) = v32;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = v28;
  *(a2 + 56) = v20;
  *(a2 + 64) = v19;
  *(a2 + 72) = v10;
  *(a2 + 80) = v34;
  *(a2 + 96) = v24;
  *(a2 + 104) = v25;
  *(a2 + 112) = v26;
}

uint64_t sub_2409E907C()
{
  v1 = type metadata accessor for QRCodeScannerView();
  v2 = (v0 + *(v1 + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for QRCodeScanner();
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner);
  v6 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v12)
  {
    v7 = [objc_opt_self() generalPasteboard];
    v8 = sub_240A2BF1C();

    [v7 setString_];
  }

  sub_240A2C06C();
  v9 = (v0 + *(v1 + 36));
  v11 = *v9;
  v13 = *(v9 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E898, &qword_240A37770);
  return sub_240A2BC6C();
}

void sub_2409E9258(uint64_t a1)
{
  v8 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v8)
  {
    v2 = (a1 + *(type metadata accessor for QRCodeScannerView() + 32));
    v3 = *v2;
    v4 = v2[1];
    v5 = *(v2 + 16);
    type metadata accessor for QRCodeScanner();
    sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner);
    v6 = sub_240A2B1EC();
    sub_240947EA0(v8);

    v7 = sub_240A2B1EC();
    [*&v7[OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession] startRunning];
  }
}

uint64_t sub_2409E945C()
{
  v1 = (v0 + *(type metadata accessor for QRCodeScannerView() + 32));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for QRCodeScanner();
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner);
  v5 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  v6 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v10 == 1)
  {
    sub_240A2B11C();

    if (v11)
    {
      return v10;
    }
  }

  else
  {
    sub_240A2B11C();

    if (v11)
    {
      sub_240A2C06C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_240A305D0;
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_240913AEC();
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      v9 = sub_240A2BF6C();

      return v9;
    }
  }

  return sub_240A2C06C();
}

uint64_t sub_2409E96E0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v64 - v6;
  v8 = sub_240A2B97C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E920, &qword_240A37860);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v68 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v66 = v64 - v20;
  v67 = sub_240A2B55C();
  LOBYTE(v96[0]) = 1;
  v64[1] = a1;
  sub_2409E9D58(a1, &v85);
  v79 = v87;
  v80 = v88;
  v81 = v89;
  v82 = v90;
  v77 = v85;
  v78 = v86;
  v84 = v90;
  v83[2] = v87;
  v83[3] = v88;
  v83[4] = v89;
  v83[0] = v85;
  v83[1] = v86;
  sub_240919298(&v77, &v70, &qword_27E50E928, &qword_240A37868);
  sub_240919300(v83, &qword_27E50E928, &qword_240A37868);
  *&v76[39] = v79;
  *&v76[55] = v80;
  *&v76[71] = v81;
  v76[87] = v82;
  *&v76[7] = v77;
  *&v76[23] = v78;
  v65 = LOBYTE(v96[0]);
  *&v85 = sub_2409E945C();
  *(&v85 + 1) = v21;
  sub_24091C4F8();
  v22 = sub_240A2B9CC();
  v24 = v23;
  v26 = v25;
  (*(v9 + 104))(v13, *MEMORY[0x277CE0AC0], v8);
  v27 = sub_240A2B8CC();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  sub_240A2B8DC();
  sub_240A2B92C();
  sub_240919300(v7, &qword_27E50B7D0, &qword_240A31218);
  (*(v9 + 8))(v13, v8);
  v28 = sub_240A2B9AC();
  v30 = v29;
  LOBYTE(v9) = v31;
  v33 = v32;

  sub_240920658(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v22) = sub_240A2B87C();
  sub_240A2B1AC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  LOBYTE(v24) = v9 & 1;
  LOBYTE(v70) = v9 & 1;
  LOBYTE(v96[0]) = 0;
  LOBYTE(v9) = sub_240A2B85C();
  sub_240A2B1AC();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  LOBYTE(v85) = 0;
  v51 = sub_2409E945C();
  *&v70 = v28;
  *(&v70 + 1) = v30;
  LOBYTE(v71[0]) = v24;
  *(&v71[0] + 1) = v33;
  *&v71[1] = KeyPath;
  BYTE8(v71[1]) = 1;
  LOBYTE(v71[2]) = v22;
  *(&v71[2] + 1) = v36;
  *&v71[3] = v38;
  *(&v71[3] + 1) = v40;
  *&v71[4] = v42;
  BYTE8(v71[4]) = 0;
  LOBYTE(v71[5]) = v9;
  *(&v71[5] + 1) = v44;
  *&v72 = v46;
  *(&v72 + 1) = v48;
  *&v73 = v50;
  BYTE8(v73) = 0;
  *&v74 = 0;
  *(&v74 + 1) = v51;
  v75 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E930, &qword_240A378A0);
  sub_2409EB858();
  v53 = v66;
  sub_240A2BA6C();
  v93 = v73;
  v94 = v74;
  v95 = v75;
  v89 = v71[3];
  v90 = v71[4];
  v91 = v71[5];
  v92 = v72;
  v85 = v70;
  v86 = v71[0];
  v87 = v71[1];
  v88 = v71[2];
  sub_240919300(&v85, &qword_27E50E930, &qword_240A378A0);
  v54 = v68;
  sub_240919298(v53, v68, &qword_27E50E920, &qword_240A37860);
  v55 = v67;
  v96[0] = v67;
  v96[1] = 0;
  LOBYTE(v30) = v65;
  LOBYTE(v97[0]) = v65;
  *(v97 + 1) = *v76;
  *(&v97[1] + 1) = *&v76[16];
  *(&v97[5] + 1) = *&v76[80];
  *(&v97[4] + 1) = *&v76[64];
  *(&v97[3] + 1) = *&v76[48];
  *(&v97[2] + 1) = *&v76[32];
  v56 = v97[0];
  v57 = v69;
  *v69 = v67;
  v57[1] = v56;
  v58 = v97[1];
  v59 = v97[2];
  *(v57 + 89) = *(&v97[4] + 9);
  v60 = v97[4];
  v57[4] = v97[3];
  v57[5] = v60;
  v57[2] = v58;
  v57[3] = v59;
  v61 = v57;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E960, &qword_240A378D0);
  sub_240919298(v54, v61 + *(v62 + 48), &qword_27E50E920, &qword_240A37860);
  sub_240919298(v96, &v70, &qword_27E50E968, &unk_240A378D8);
  sub_240919300(v53, &qword_27E50E920, &qword_240A37860);
  sub_240919300(v54, &qword_27E50E920, &qword_240A37860);
  *(&v71[2] + 1) = *&v76[32];
  *(&v71[3] + 1) = *&v76[48];
  *(&v71[4] + 1) = *&v76[64];
  *(v71 + 1) = *v76;
  v70 = v55;
  LOBYTE(v71[0]) = v30;
  *(&v71[5] + 1) = *&v76[80];
  *(&v71[1] + 1) = *&v76[16];
  return sub_240919300(&v70, &qword_27E50E968, &unk_240A378D8);
}

uint64_t sub_2409E9D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for QRCodeScannerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  sub_2409EB2B4(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2409EB328(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  LOBYTE(v8) = sub_240A2B88C();
  sub_240A2B1AC();
  v21 = 1;
  *&v22 = sub_2409EBB68;
  *(&v22 + 1) = v9;
  LOWORD(v23) = 257;
  BYTE8(v23) = v8;
  *&v24 = v10;
  *(&v24 + 1) = v11;
  *&v25 = v12;
  *(&v25 + 1) = v13;
  v26 = 0;
  *&v20[7] = v22;
  v20[71] = 0;
  *&v20[55] = v25;
  *&v20[39] = v24;
  *&v20[23] = v23;
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = *&v20[16];
  *(a2 + 9) = *v20;
  v15 = *&v20[32];
  v16 = *&v20[48];
  *(a2 + 73) = *&v20[64];
  *(a2 + 57) = v16;
  *(a2 + 41) = v15;
  *(a2 + 25) = v14;
  v27[0] = sub_2409EBB68;
  v27[1] = v9;
  v28 = 257;
  v29 = v8;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = v13;
  v34 = 0;
  sub_240919298(&v22, &v19, &qword_27E50E970, &qword_240A378E8);
  return sub_240919300(v27, &qword_27E50E970, &qword_240A378E8);
}

double sub_2409E9F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = sub_240A2C06C();
  a3[3] = v4;
  v5 = type metadata accessor for QRCodeScannerView();
  v6 = v5[6];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v7 = v5[7];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7E8, &qword_240A375E8);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v5[8];
  *v8 = sub_2409E7C68;
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = a3 + v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C3E0, &unk_240A30960);
  sub_240A2BC4C();
  result = *&v11;
  *v9 = v11;
  *(v9 + 2) = v12;
  return result;
}

uint64_t type metadata accessor for QRCodeScannerView()
{
  result = qword_27E50E7F8;
  if (!qword_27E50E7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2409EA0C0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v68 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9D0, &qword_240A37B88);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = (&v58 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9D8, &qword_240A37B90);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v18);
  v60 = &v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9E0, &qword_240A37B98);
  v21 = *(v20 - 8);
  v63 = v20 - 8;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8, v23);
  v61 = &v58 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9E8, &qword_240A37BA0);
  v26 = *(v25 - 8);
  v64 = v25 - 8;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8, v28);
  v62 = &v58 - v29;
  v59 = sub_240A2BBCC();
  v30 = sub_240A2B8CC();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  sub_240A2B91C();
  sub_240919300(v8, &qword_27E50B7D0, &qword_240A31218);
  sub_240A2B8EC();
  v31 = sub_240A2B94C();

  KeyPath = swift_getKeyPath();
  v33 = sub_240A2BB8C();
  v34 = swift_getKeyPath();
  v35 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9F0, &qword_240A37BA8) + 36));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9F8, &qword_240A37BB0) + 28);
  v37 = *MEMORY[0x277CE1048];
  v38 = sub_240A2BC0C();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  *v14 = v59;
  v14[1] = KeyPath;
  v14[2] = v31;
  v14[3] = v34;
  v14[4] = v33;
  v39 = v14 + *(v10 + 44);
  *v39 = 0;
  *(v39 + 4) = 1;
  v40 = v65;
  v70 = v65;
  v41 = v66;
  v71 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  sub_240A2BC5C();
  if (v69)
  {
    v42 = 1.05;
  }

  else
  {
    v42 = 1.0;
  }

  sub_240A2BE3C();
  v44 = v43;
  v46 = v45;
  v47 = v60;
  sub_24093A86C(v14, v60, &qword_27E50E9D0, &qword_240A37B88);
  v48 = v47 + *(v16 + 44);
  *v48 = v42;
  *(v48 + 8) = v42;
  *(v48 + 16) = v44;
  *(v48 + 24) = v46;
  v70 = v40;
  v71 = v41;
  sub_240A2BC5C();
  v49 = v69;
  v50 = v61;
  sub_24093A86C(v47, v61, &qword_27E50E9D8, &qword_240A37B90);
  v51 = v50 + *(v63 + 44);
  v52 = v67;
  *v51 = v67;
  *(v51 + 8) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = v40;
  *(v53 + 24) = v41;
  *(v53 + 32) = v52;
  v54 = v50;
  v55 = v62;
  sub_24093A86C(v54, v62, &qword_27E50E9E0, &qword_240A37B98);
  v56 = (v55 + *(v64 + 44));
  *v56 = sub_2409EC18C;
  v56[1] = v53;
  v56[2] = 0;
  v56[3] = 0;
  sub_24093A86C(v55, v68, &qword_27E50E9E8, &qword_240A37BA0);

  return swift_retain_n();
}

uint64_t sub_2409EA5B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E988, &qword_240A37B38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E990, &unk_240A37B40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v48 - v13;
  v16 = *v1;
  v15 = v1[1];
  v60 = *(v1 + 1);
  *&v57[0] = v16;
  *(&v57[0] + 1) = v15;
  v57[1] = *(v1 + 1);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B598, &qword_240A30A48);
  MEMORY[0x245CCC9B0](&v56, v17);
  v18 = 1;
  if (*(&v56 + 1))
  {
    v57[0] = v56;
    sub_24091C4F8();
    v19 = sub_240A2B9CC();
    v51 = v16;
    v52 = v15;
    v20 = v19;
    v22 = v21;
    v54 = v9;
    v55 = a1;
    v24 = v23;
    v49 = v25;
    v26 = v10;
    v27 = sub_240A2B86C();
    v53 = v14;
    v28 = v24 & 1;
    LOBYTE(v57[0]) = v24 & 1;
    LOBYTE(v56) = 1;
    v29 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E998, &unk_240A37B50) + 36)];
    sub_240A2BDCC();
    v30 = sub_240A2B86C();
    v50 = v4;
    v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B790, &qword_240A311E0) + 36)] = v30;
    *v8 = v20;
    *(v8 + 1) = v22;
    v8[16] = v28;
    *(v8 + 3) = v49;
    v8[32] = v27;
    v10 = v26;
    *(v8 + 56) = 0u;
    *(v8 + 40) = 0u;
    v8[72] = 1;
    v31 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9A0, &unk_240A37B60) + 36)];
    v32 = *(sub_240A2B3FC() + 20);
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_240A2B57C();
    v35 = &v31[v32];
    v36 = v33;
    v9 = v54;
    a1 = v55;
    (*(*(v34 - 8) + 104))(v35, v36, v34);
    __asm { FMOV            V0.2D, #10.0 }

    *v31 = _Q0;
    *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0) + 36)] = 256;
    v61 = v51;
    v57[0] = v60;
    v42 = v2[4];
    v58 = v2[5];
    v59 = v42;
    v43 = swift_allocObject();
    v44 = *(v2 + 1);
    *(v43 + 1) = *v2;
    *(v43 + 2) = v44;
    *(v43 + 3) = *(v2 + 2);
    v45 = &v8[*(v50 + 36)];
    *v45 = sub_2409EBDC8;
    v45[1] = v43;
    v45[2] = 0;
    v45[3] = 0;
    sub_2409EBDEC(&v61, &v56);

    sub_240919298(v57, &v56, &unk_27E50C3E0, &unk_240A30960);
    sub_240919298(&v59, &v56, &qword_27E50E8F0, &qword_240A37830);
    sub_240919298(&v58, &v56, &qword_27E50E9A8, &unk_240A37B70);
    sub_2409EBE48();
    v46 = v53;
    sub_240A2BA6C();
    sub_240919300(v8, &qword_27E50E988, &qword_240A37B38);
    sub_24093A86C(v46, a1, &qword_27E50E990, &unk_240A37B40);
    v18 = 0;
  }

  return (*(v10 + 56))(a1, v18, 1, v9);
}

uint64_t sub_2409EA9D4()
{
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v23 = v3;
  v22 = v2;
  aBlock = v3;
  v15 = v2;
  sub_240919298(&v23, v20, &qword_27E50E8F0, &qword_240A37830);
  sub_240919298(&v22, v20, &qword_27E50E9A8, &unk_240A37B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9C8, &qword_240A37B80);
  sub_240A2BC5C();
  v4 = v20[0];
  [v20[0] invalidate];

  v5 = objc_opt_self();
  v6 = *v1;
  v7 = v1[1];
  *v20 = *(v1 + 1);
  v21 = v6;
  v8 = swift_allocObject();
  v9 = *(v1 + 1);
  v8[1] = *v1;
  v8[2] = v9;
  v8[3] = *(v1 + 2);
  v18 = sub_2409EC09C;
  v19 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2409DFF20;
  v17 = &block_descriptor_22;
  v10 = _Block_copy(&aBlock);
  sub_240919298(&v23, v13, &qword_27E50E8F0, &qword_240A37830);
  sub_240919298(&v22, v13, &qword_27E50E9A8, &unk_240A37B70);
  sub_2409EBDEC(&v21, v13);

  sub_240919298(v20, v13, &unk_27E50C3E0, &unk_240A30960);

  v11 = [v5 scheduledTimerWithTimeInterval:0 repeats:v10 block:5.0];
  _Block_release(v10);
  aBlock = v3;
  v15 = v2;
  v13[0] = v11;
  sub_240A2BC6C();
  sub_240919300(&v23, &qword_27E50E8F0, &qword_240A37830);
  return sub_240919300(&v22, &qword_27E50E9A8, &unk_240A37B70);
}

uint64_t sub_2409EAC28(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v6 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B598, &qword_240A30A48);
  sub_240A2BCFC();
  v5 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9C8, &qword_240A37B80);
  return sub_240A2BC6C();
}

uint64_t sub_2409EACB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_2409EA5B8(a1);
}

id sub_2409EACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() buttonWithProximityType_];
  sub_2409E0948();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_240A2C39C();
  [v5 addAction:v7 forControlEvents:{64, 0, 0, 0, sub_2409EC1EC, v6}];

  v8 = v5;
  v9 = sub_240A2BF1C();
  [v8 setAccessibilityIdentifier_];

  return v8;
}

uint64_t sub_2409EAE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409EC214();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2409EAE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409EC214();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2409EAF00()
{
  sub_2409EC214();
  sub_240A2B6AC();
  __break(1u);
}

uint64_t sub_2409EAF28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v5;
  return result;
}

uint64_t sub_2409EAFA8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_240A2B12C();
}

void sub_2409EB040()
{
  sub_240919DC0();
  if (v0 <= 0x3F)
  {
    sub_2409EB14C(319, &qword_27E50C9F8, MEMORY[0x277CDD848]);
    if (v1 <= 0x3F)
    {
      sub_2409EB14C(319, &qword_27E50E808, MEMORY[0x277CDF708]);
      if (v2 <= 0x3F)
      {
        sub_2409EB1A0();
        if (v3 <= 0x3F)
        {
          sub_2409EB234();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2409EB14C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_240A2B1DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2409EB1A0()
{
  if (!qword_27E50E810)
  {
    type metadata accessor for QRCodeScanner();
    sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner);
    v0 = sub_240A2B1FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50E810);
    }
  }
}

void sub_2409EB234()
{
  if (!qword_27E50E820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C3E0, &unk_240A30960);
    v0 = sub_240A2BC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50E820);
    }
  }
}

uint64_t sub_2409EB2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QRCodeScannerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409EB318(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t sub_2409EB328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QRCodeScannerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409EB38C()
{
  v1 = *(type metadata accessor for QRCodeScannerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2409E907C();
}

void sub_2409EB3E8()
{
  v1 = *(type metadata accessor for QRCodeScannerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2409E9258(v2);
}

uint64_t sub_2409EB448@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2B4DC();
  *a1 = result;
  return result;
}

uint64_t sub_2409EB474(uint64_t *a1)
{
  v1 = *a1;

  return sub_240A2B4EC();
}

uint64_t sub_2409EB4A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2B47C();
  *a1 = result;
  return result;
}

uint64_t sub_2409EB4CC(uint64_t *a1)
{
  v1 = *a1;

  return sub_240A2B48C();
}

uint64_t sub_2409EB4F8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for QRCodeScannerView();
  v7 = *(v4 - 8);
  result = v4 - 8;
  v6 = v7;
  if (a2[1])
  {
    v8 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));
    v9 = *(v8 + 8);
    return (*v8)(0, *a2);
  }

  return result;
}

unint64_t sub_2409EB570()
{
  result = qword_27E50E860;
  if (!qword_27E50E860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E830, &qword_240A37680);
    sub_2409EB628();
    sub_24091CE28(&qword_27E50E888, &qword_27E50E858, &qword_240A376E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E860);
  }

  return result;
}

unint64_t sub_2409EB628()
{
  result = qword_27E50E868;
  if (!qword_27E50E868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E850, &qword_240A376E0);
    sub_2409EB6B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E868);
  }

  return result;
}

unint64_t sub_2409EB6B4()
{
  result = qword_27E50E870;
  if (!qword_27E50E870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E848, &qword_240A376D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E828, &qword_240A37678);
    sub_24091CE28(&qword_27E50E840, &qword_27E50E828, &qword_240A37678);
    swift_getOpaqueTypeConformance2();
    sub_24091CE28(&qword_27E50E878, &qword_27E50E880, &qword_240A37768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E870);
  }

  return result;
}

unint64_t sub_2409EB7DC()
{
  result = qword_27E50E890;
  if (!qword_27E50E890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C3E0, &unk_240A30960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E890);
  }

  return result;
}

unint64_t sub_2409EB858()
{
  result = qword_27E50E938;
  if (!qword_27E50E938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E930, &qword_240A378A0);
    sub_2409EB910();
    sub_24091CE28(&qword_27E50E950, &qword_27E50E958, &qword_240A378C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E938);
  }

  return result;
}

unint64_t sub_2409EB910()
{
  result = qword_27E50E940;
  if (!qword_27E50E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E948, &qword_240A378A8);
    sub_240920668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E940);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for QRCodeScannerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_240A2B2AC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7E8, &qword_240A375E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_240A2B2BC();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  sub_2409EB318(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 16));
  v14 = v5 + v1[9];
  v15 = *(v14 + 8);

  v16 = *(v14 + 16);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409EBB68()
{
  v1 = *(type metadata accessor for QRCodeScannerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 8);
  return (*v2)(0, 0, 0);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2409EBBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2409EBC34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2409EBC90(uint64_t a1, int a2)
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

uint64_t sub_2409EBCD8(uint64_t result, int a2, int a3)
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

unint64_t sub_2409EBD3C()
{
  result = qword_27E50E980;
  if (!qword_27E50E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E980);
  }

  return result;
}

unint64_t sub_2409EBE48()
{
  result = qword_27E50E9B0;
  if (!qword_27E50E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E988, &qword_240A37B38);
    sub_2409EBED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E9B0);
  }

  return result;
}

unint64_t sub_2409EBED4()
{
  result = qword_27E50E9B8;
  if (!qword_27E50E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9A0, &unk_240A37B60);
    sub_2409EBF8C();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E9B8);
  }

  return result;
}

unint64_t sub_2409EBF8C()
{
  result = qword_27E50E9C0;
  if (!qword_27E50E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E998, &unk_240A37B50);
    sub_240940614();
    sub_24091CE28(&qword_27E50B8E8, &qword_27E50B790, &qword_240A311E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E9C0);
  }

  return result;
}

uint64_t objectdestroy_61Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409EC0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_2409EC18C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  return sub_240A2BC6C();
}

uint64_t sub_2409EC1EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2409EC214()
{
  result = qword_27E50EA00;
  if (!qword_27E50EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA00);
  }

  return result;
}

unint64_t sub_2409EC268()
{
  result = qword_27E50EA08;
  if (!qword_27E50EA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EA10, &unk_240A37BF0);
    sub_2409EC2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA08);
  }

  return result;
}

unint64_t sub_2409EC2EC()
{
  result = qword_27E50EA18;
  if (!qword_27E50EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E990, &unk_240A37B40);
    sub_2409EBE48();
    sub_2409EC3A8(&qword_27E50CBC0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA18);
  }

  return result;
}

uint64_t sub_2409EC3A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2409EC3F0()
{
  result = qword_27E50EA20;
  if (!qword_27E50EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9E8, &qword_240A37BA0);
    sub_2409EC47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA20);
  }

  return result;
}

unint64_t sub_2409EC47C()
{
  result = qword_27E50EA28;
  if (!qword_27E50EA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9E0, &qword_240A37B98);
    sub_2409EC534();
    sub_24091CE28(&qword_27E50E878, &qword_27E50E880, &qword_240A37768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA28);
  }

  return result;
}

unint64_t sub_2409EC534()
{
  result = qword_27E50EA30;
  if (!qword_27E50EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9D8, &qword_240A37B90);
    sub_2409EC5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA30);
  }

  return result;
}

unint64_t sub_2409EC5C0()
{
  result = qword_27E50EA38;
  if (!qword_27E50EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9D0, &qword_240A37B88);
    sub_2409EC64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA38);
  }

  return result;
}

unint64_t sub_2409EC64C()
{
  result = qword_27E50EA40;
  if (!qword_27E50EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9F0, &qword_240A37BA8);
    sub_240920B70();
    sub_24091CE28(&qword_27E50EA48, &qword_27E50E9F8, &qword_240A37BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA40);
  }

  return result;
}

uint64_t sub_2409EC704(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2409EC874()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2409EC8D4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AISAppleIDSignInController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_240966580;
}

id sub_2409EC9B0()
{
  v1 = OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController;
  v2 = *&v0[OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController];
  }

  else
  {
    v4 = sub_2409ECA5C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2409ECA5C(char *a1)
{
  v2 = sub_240A2B33C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AppleIDSignInView();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v32 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v31 - v19;
  v21 = *&a1[OBJC_IVAR___AISAppleIDSignInController_configuration];
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  v24 = *(v13 + 28);
  v25 = a1;
  v26 = v21;
  sub_240A2B32C();
  (*(v3 + 16))(v8, v11, v2);
  sub_240A2BC4C();
  (*(v3 + 8))(v11, v2);
  type metadata accessor for AISSignInSettings();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = sub_2409ED48C;
  v27[4] = v23;
  v27[5] = sub_2409ED484;
  v27[6] = v22;
  *v20 = sub_2409ED498;
  *(v20 + 1) = v27;
  v20[16] = 0;
  sub_2409ED4A0(v20, v32);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA68, &qword_240A37C48));
  v29 = sub_240A2B5EC();
  sub_2409ED504(v20);
  return v29;
}

void *sub_2409ECCEC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 signInControllerDidSkip_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2409ECD78(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = sub_240A2952C();
    [v6 signInController:a3 didFinishWithError:v7];
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    [result signInController:a3 didFinishSignInWithResults:a1];
  }

  return swift_unknownObjectRelease();
}

id AISAppleIDSignInController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController] = 0;
  *&v3[OBJC_IVAR___AISAppleIDSignInController_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISAppleIDSignInController.init(configuration:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController] = 0;
  *&v1[OBJC_IVAR___AISAppleIDSignInController_configuration] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AISAppleIDSignInController();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_2409ECFC8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2409EC9B0();
  if (a3)
  {
    v10[4] = a3;
    v10[5] = a4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2409EC704;
    v10[3] = &block_descriptor_23;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [a1 presentViewController:v8 animated:a2 & 1 completion:v9];
  _Block_release(v9);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AISAppleIDSignInController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISAppleIDSignInController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISAppleIDSignInController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409ED4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIDSignInView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409ED504(uint64_t a1)
{
  v2 = type metadata accessor for AppleIDSignInView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PairingView()
{
  result = qword_27E50EA78;
  if (!qword_27E50EA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409ED5DC()
{
  sub_2409ED6C8(319, &qword_27E50EA88, MEMORY[0x277CED6C0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_2409ED6C8(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2409ED6C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2409ED748(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_240A2BF4C();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_2409ED7B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_240A29EFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C248, &qword_240A32308);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v21 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  MEMORY[0x245CCC9B0]();
  if ((*(v3 + 88))(v7, v2) != *MEMORY[0x277CED6B8])
  {
    (*(v3 + 8))(v7, v2);
    return MEMORY[0x245CCC9B0](v17);
  }

  (*(v3 + 96))(v7, v2);
  v18 = *v7;
  v19 = swift_projectBox();
  sub_240919298(v19, v16, &qword_27E50C248, &qword_240A32308);

  sub_2409F4C4C(v16, v13);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_240919300(v13, &qword_27E50C248, &qword_240A32308);
    return MEMORY[0x245CCC9B0](v17);
  }

  return (*(v3 + 32))(a1, v13, v2);
}

uint64_t sub_2409EDA04@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA90, &qword_240A37CD0);
  v1 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103, v2);
  v104 = &v96 - v3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA98, &qword_240A37CD8);
  v4 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98, v5);
  v99 = &v96 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAA0, &qword_240A37CE0);
  v7 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100, v8);
  v102 = &v96 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAA8, &qword_240A37CE8);
  v10 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124, v11);
  v105 = &v96 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v108 = *(v113 - 8);
  v13 = *(v108 + 64);
  MEMORY[0x28223BE20](v113, v14);
  v112 = &v96 - v15;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAB0, &qword_240A37CF0);
  v16 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109, v17);
  v110 = &v96 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAB8, &qword_240A37CF8);
  v19 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117, v20);
  v111 = &v96 - v21;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v107 = *(v114 - 8);
  v22 = *(v107 + 64);
  MEMORY[0x28223BE20](v114, v23);
  v106 = &v96 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAC0, &qword_240A37D00);
  v25 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123, v26);
  v122 = &v96 - v27;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAC8, &qword_240A37D08);
  v28 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121, v29);
  v120 = &v96 - v30;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAD0, &qword_240A37D10);
  v31 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115, v32);
  v34 = (&v96 - v33);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAD8, &qword_240A37D18);
  v35 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116, v36);
  v119 = &v96 - v37;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAE0, &qword_240A37D20);
  v38 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126, v39);
  v118 = &v96 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAE8, &qword_240A37D28);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v96 - v44;
  v46 = sub_240A2A0DC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  v51 = &v96 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_240A29EFC();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52, v55);
  v57 = (&v96 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2409ED7B4(v57);
  v58 = (*(v53 + 88))(v57, v52);
  if (v58 == *MEMORY[0x277CED6A0])
  {
    (*(v53 + 96))(v57, v52);
    v59 = *v57;
    v60 = v57[1];
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180);
    (*(v47 + 32))(v51, v57 + *(v61 + 48), v46);
    sub_2409EFA0C(v59, v60, v51, &v127);

    *v34 = v127;
    swift_storeEnumTagMultiPayload();
    sub_2409F39F0();

    v62 = v119;
    sub_240A2B6EC();
    sub_240919298(v62, v120, &qword_27E50EAD8, &qword_240A37D18);
    swift_storeEnumTagMultiPayload();
    sub_2409F3964();
    sub_2409F3DE4();
    v63 = v118;
    sub_240A2B6EC();
    sub_240919300(v62, &qword_27E50EAD8, &qword_240A37D18);
    sub_240919298(v63, v122, &qword_27E50EAE0, &qword_240A37D20);
    swift_storeEnumTagMultiPayload();
    sub_2409F38D8();
    sub_2409F3EC4();
    sub_240A2B6EC();

    sub_240919300(v63, &qword_27E50EAE0, &qword_240A37D20);
    return (*(v47 + 8))(v51, v46);
  }

  else
  {
    v97 = v57;
    v65 = v119;
    v96 = v47;
    v101 = v46;
    if (v58 == *MEMORY[0x277CED698])
    {
      v66 = v97;
      (*(v53 + 96))(v97, v52);
      v67 = v96;
      (*(v96 + 32))(v51, v66, v101);
      sub_2409EED18(v51, v45);
      sub_240919298(v45, v34, &qword_27E50EAE8, &qword_240A37D28);
      swift_storeEnumTagMultiPayload();
      sub_2409F39F0();
      sub_240A2B6EC();
      sub_240919298(v65, v120, &qword_27E50EAD8, &qword_240A37D18);
      swift_storeEnumTagMultiPayload();
      sub_2409F3964();
      sub_2409F3DE4();
      v68 = v118;
      sub_240A2B6EC();
      sub_240919300(v65, &qword_27E50EAD8, &qword_240A37D18);
      sub_240919298(v68, v122, &qword_27E50EAE0, &qword_240A37D20);
      swift_storeEnumTagMultiPayload();
      sub_2409F38D8();
      sub_2409F3EC4();
      sub_240A2B6EC();
      sub_240919300(v68, &qword_27E50EAE0, &qword_240A37D20);
      sub_240919300(v45, &qword_27E50EAE8, &qword_240A37D28);
      return (*(v67 + 8))(v51, v101);
    }

    else if (v58 == *MEMORY[0x277CED6A8])
    {
      v69 = v106;
      sub_240A2B22C();
      v70 = v107;
      (*(v107 + 16))(v110, v69, v114);
      swift_storeEnumTagMultiPayload();
      sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
      sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
      v71 = v111;
      sub_240A2B6EC();
      sub_240919298(v71, v120, &qword_27E50EAB8, &qword_240A37CF8);
      swift_storeEnumTagMultiPayload();
      sub_2409F3964();
      sub_2409F3DE4();
      v72 = v118;
      sub_240A2B6EC();
      sub_240919300(v71, &qword_27E50EAB8, &qword_240A37CF8);
      sub_240919298(v72, v122, &qword_27E50EAE0, &qword_240A37D20);
      swift_storeEnumTagMultiPayload();
      sub_2409F38D8();
      sub_2409F3EC4();
      sub_240A2B6EC();
      sub_240919300(v72, &qword_27E50EAE0, &qword_240A37D20);
      (*(v70 + 8))(v69, v114);
      return (*(v53 + 8))(v97, v52);
    }

    else
    {
      v73 = v122;
      v74 = v120;
      v75 = v97;
      if (v58 == *MEMORY[0x277CED6B0])
      {
        (*(v53 + 96))(v97, v52);
        v76 = v75[1];

        v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
        v127 = sub_240A2C06C();
        v128 = v77;
        sub_24091C4F8();
        v78 = v112;
        sub_240A2B24C();
        v79 = v108;
        v80 = v113;
        (*(v108 + 16))(v110, v78, v113);
        swift_storeEnumTagMultiPayload();
        sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
        sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
        v81 = v111;
        sub_240A2B6EC();
        sub_240919298(v81, v74, &qword_27E50EAB8, &qword_240A37CF8);
        swift_storeEnumTagMultiPayload();
        sub_2409F3964();
        sub_2409F3DE4();
        v82 = v118;
        sub_240A2B6EC();
        sub_240919300(v81, &qword_27E50EAB8, &qword_240A37CF8);
        sub_240919298(v82, v73, &qword_27E50EAE0, &qword_240A37D20);
        swift_storeEnumTagMultiPayload();
        sub_2409F38D8();
        sub_2409F3EC4();
        sub_240A2B6EC();
        sub_240919300(v82, &qword_27E50EAE0, &qword_240A37D20);
        (*(v79 + 8))(v112, v80);
        return (*(v96 + 8))(v75 + v119, v101);
      }

      else if (v58 == *MEMORY[0x277CED6B8])
      {
        (*(v53 + 8))(v97, v52);
        v127 = sub_240A2C06C();
        v128 = v83;
        sub_24091C4F8();
        v84 = v112;
        sub_240A2B24C();
        v85 = v108;
        v86 = v113;
        (*(v108 + 16))(v99, v84, v113);
        swift_storeEnumTagMultiPayload();
        sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
        v87 = v102;
        sub_240A2B6EC();
        sub_240919298(v87, v104, &qword_27E50EAA0, &qword_240A37CE0);
        swift_storeEnumTagMultiPayload();
        sub_2409F3828();
        v88 = v105;
        sub_240A2B6EC();
        sub_240919300(v87, &qword_27E50EAA0, &qword_240A37CE0);
        sub_240919298(v88, v73, &qword_27E50EAA8, &qword_240A37CE8);
        swift_storeEnumTagMultiPayload();
        sub_2409F38D8();
        sub_2409F3EC4();
        sub_240A2B6EC();
        sub_240919300(v88, &qword_27E50EAA8, &qword_240A37CE8);
        return (*(v85 + 8))(v84, v86);
      }

      else if (v58 == *MEMORY[0x277CED690])
      {
        v89 = v122;
        v127 = sub_240A2C06C();
        v128 = v90;
        sub_24091C4F8();
        v91 = v112;
        sub_240A2B24C();
        v92 = v108;
        v93 = v113;
        (*(v108 + 16))(v99, v91, v113);
        swift_storeEnumTagMultiPayload();
        sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
        v94 = v102;
        sub_240A2B6EC();
        sub_240919298(v94, v104, &qword_27E50EAA0, &qword_240A37CE0);
        swift_storeEnumTagMultiPayload();
        sub_2409F3828();
        v95 = v105;
        sub_240A2B6EC();
        sub_240919300(v94, &qword_27E50EAA0, &qword_240A37CE0);
        sub_240919298(v95, v89, &qword_27E50EAA8, &qword_240A37CE8);
        swift_storeEnumTagMultiPayload();
        sub_2409F38D8();
        sub_2409F3EC4();
        sub_240A2B6EC();
        sub_240919300(v95, &qword_27E50EAA8, &qword_240A37CE8);
        return (*(v92 + 8))(v91, v93);
      }

      else
      {
        result = sub_240A2C58C();
        __break(1u);
      }
    }
  }

  return result;
}

void sub_2409EED18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v66 = type metadata accessor for QRCodeScannerView();
  v3 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66, v4);
  v62 = (v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBA8, &qword_240A37D70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v65 = v60 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB48, &qword_240A37D48);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68, v11);
  v67 = v60 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB58, &qword_240A37D50);
  v13 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64, v14);
  v63 = v60 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBB0, &qword_240A37D78);
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69, v17);
  v19 = v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBB8, &qword_240A37D80);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v60 - v23;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB18, &qword_240A37D30);
  v25 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70, v26);
  v28 = v60 - v27;
  v29 = sub_240A2A0DC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = (v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v34, a1, v29);
  v35 = (*(v30 + 88))(v34, v29);
  if (v35 == *MEMORY[0x277CED778])
  {
    (*(v30 + 96))(v34, v29);
    sub_2409F002C(*v34, 1, &v77);
    v36 = v77;
    v72 = v77;
    v73 = v78;
    LOBYTE(v74) = v79;
    HIBYTE(v74) = 1;

    v67 = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB38, &qword_240A37D40);
    sub_24091CE28(&qword_27E50EB30, &qword_27E50EB38, &qword_240A37D40);
    sub_240A2B6EC();
    v37 = v79;
    v38 = BYTE1(v79);
    v39 = v78;
    *v24 = v77;
    *(v24 + 1) = v39;
    v24[32] = v37;
    v24[33] = v38;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB28, &qword_240A37D38);
    sub_2409F3B08();
    sub_2409F3BB8();
    sub_240A2B6EC();
    sub_240919298(v28, v19, &qword_27E50EB18, &qword_240A37D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3A7C();
    sub_2409F3CA0();
    sub_240A2B6EC();

    v40 = v28;
LABEL_5:
    v47 = &qword_27E50EB18;
    v48 = &qword_240A37D30;
LABEL_6:
    sub_240919300(v40, v47, v48);
    return;
  }

  v60[1] = v20;
  v60[0] = v28;
  v61 = v19;
  if (v35 == *MEMORY[0x277CED780])
  {
    (*(v30 + 96))(v34, v29);
    sub_2409F002C(*v34, 0, &v77);
    v41 = v77;
    v72 = v77;
    v73 = v78;
    v74 = v79;

    v42 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB38, &qword_240A37D40);
    sub_24091CE28(&qword_27E50EB30, &qword_27E50EB38, &qword_240A37D40);
    sub_240A2B6EC();
    v43 = v79;
    v44 = BYTE1(v79);
    v45 = v78;
    *v24 = v77;
    *(v24 + 1) = v45;
    v24[32] = v43;
    v24[33] = v44;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB28, &qword_240A37D38);
    sub_2409F3B08();
    sub_2409F3BB8();
    v46 = v60[0];
    sub_240A2B6EC();
    sub_240919298(v46, v61, &qword_27E50EB18, &qword_240A37D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3A7C();
    sub_2409F3CA0();
    sub_240A2B6EC();

    v40 = v46;
    goto LABEL_5;
  }

  if (v35 == *MEMORY[0x277CED790])
  {
    v49 = v63;
    sub_2409F065C(v63);
    sub_240919298(v49, v65, &qword_27E50EB58, &qword_240A37D50);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50EB50, &qword_27E50EB58, &qword_240A37D50);
    sub_2409F4A84(&qword_27E50EB60, type metadata accessor for QRCodeScannerView);
    v50 = v67;
    sub_240A2B6EC();
    sub_240919298(v50, v24, &qword_27E50EB48, &qword_240A37D48);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB28, &qword_240A37D38);
    sub_2409F3B08();
    sub_2409F3BB8();
    v51 = v60[0];
    sub_240A2B6EC();
    sub_240919300(v50, &qword_27E50EB48, &qword_240A37D48);
    sub_240919298(v51, v61, &qword_27E50EB18, &qword_240A37D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3A7C();
    sub_2409F3CA0();
    sub_240A2B6EC();
    sub_240919300(v51, &qword_27E50EB18, &qword_240A37D30);
    v40 = v49;
    v47 = &qword_27E50EB58;
    v48 = &qword_240A37D50;
    goto LABEL_6;
  }

  if (v35 == *MEMORY[0x277CED788])
  {
    sub_2409F0A24(&v77);
    v52 = v77;
    v81 = 0;
    v72 = v77;
    v73 = v78;
    LOBYTE(v74) = v79;
    v75 = *(&v79 + 1);
    v76 = v80;

    v53 = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB80, &qword_240A37D60);
    sub_2409F3D2C();
    sub_240A2B6EC();
    v54 = v78;
    v55 = v61;
    *v61 = v77;
    v55[1] = v54;
    v55[2] = v79;
    *(v55 + 24) = v80;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3A7C();
    sub_2409F3CA0();
    sub_240A2B6EC();
  }

  else
  {
    v56 = v61;
    if (v35 == *MEMORY[0x277CED770])
    {
      v57 = v62;
      sub_2409F07D4(v62);
      sub_2409F4ACC(v57, v65, type metadata accessor for QRCodeScannerView);
      swift_storeEnumTagMultiPayload();
      sub_24091CE28(&qword_27E50EB50, &qword_27E50EB58, &qword_240A37D50);
      sub_2409F4A84(&qword_27E50EB60, type metadata accessor for QRCodeScannerView);
      v58 = v67;
      sub_240A2B6EC();
      sub_240919298(v58, v24, &qword_27E50EB48, &qword_240A37D48);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB28, &qword_240A37D38);
      sub_2409F3B08();
      sub_2409F3BB8();
      v59 = v60[0];
      sub_240A2B6EC();
      sub_240919300(v58, &qword_27E50EB48, &qword_240A37D48);
      sub_240919298(v59, v56, &qword_27E50EB18, &qword_240A37D30);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
      sub_2409F3A7C();
      sub_2409F3CA0();
      sub_240A2B6EC();
      sub_240919300(v59, &qword_27E50EB18, &qword_240A37D30);
      sub_2409F4B34(v57, type metadata accessor for QRCodeScannerView);
    }

    else
    {
      sub_240A2C58C();
      __break(1u);
    }
  }
}

uint64_t sub_2409EFA0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBF8, &qword_240A37DB8);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v55 - v13;
  v15 = sub_240A2A0DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v63 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v55 - v22;
  v24 = sub_240A2B00C();
  v61 = *(v24 - 8);
  v62 = v24;
  v25 = *(v61 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v66 = v16;
  v29 = *(v16 + 16);
  v64 = a3;
  v60 = v29;
  v29(v23, a3, v15);

  v30 = sub_240A2AFFC();
  v31 = sub_240A2C2CC();

  v58 = v31;
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v67 = v56;
    *v32 = 136315394;
    *(v32 + 4) = sub_240925464(a1, a2, &v67);
    *(v32 + 12) = 2080;
    sub_2409F4A84(&qword_27E50EC50, MEMORY[0x277CED798]);
    v55 = v30;
    v33 = sub_240A2C62C();
    v57 = v14;
    v34 = a1;
    v35 = a2;
    v37 = v36;
    (*(v66 + 8))(v23, v15);
    v38 = sub_240925464(v33, v37, &v67);
    a2 = v35;
    a1 = v34;
    v14 = v57;

    *(v32 + 14) = v38;
    v39 = v55;
    _os_log_impl(&dword_2408FE000, v55, v58, "PairingView showPairingCodeView for code %s ofType %s", v32, 0x16u);
    v40 = v56;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v40, -1, -1);
    MEMORY[0x245CCDDB0](v32, -1, -1);
  }

  else
  {

    (*(v66 + 8))(v23, v15);
  }

  (*(v61 + 8))(v28, v62);
  v41 = v63;
  v60(v63, v64, v15);
  v42 = (*(v66 + 88))(v41, v15);
  if (v42 == *MEMORY[0x277CED778])
  {
    goto LABEL_5;
  }

  if (v42 == *MEMORY[0x277CED780])
  {
    v43 = v14;
    v44 = a1;
    v45 = a2;
    v46 = 0;
    goto LABEL_8;
  }

  if (v42 == *MEMORY[0x277CED790])
  {
LABEL_5:
    v43 = v14;
    v44 = a1;
    v45 = a2;
    v46 = 1;
LABEL_8:
    sub_2409F29D8(v44, v45, v46, v43);
    sub_240919298(v14, v59, &qword_27E50EBF8, &qword_240A37DB8);
    sub_2409F485C();
    v47 = sub_240A2BCDC();
    result = sub_240919300(v14, &qword_27E50EBF8, &qword_240A37DB8);
LABEL_9:
    *v65 = v47;
    return result;
  }

  if (v42 == *MEMORY[0x277CED788])
  {
    v49 = a2;
    v50 = sub_240A2B3AC();
    v51 = sub_240A2B86C();
    v67 = a1;
    v68 = v49;
    v69 = v50;
    v70 = v51;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC08, &qword_240A37DC0);
    sub_2409F47D0();
LABEL_15:
    result = sub_240A2BCDC();
    v47 = result;
    goto LABEL_9;
  }

  if (v42 == *MEMORY[0x277CED770])
  {
    v67 = 0xD000000000000010;
    v68 = 0x8000000240A3EE10;
    MEMORY[0x245CCCD90](a1, a2);
    v52 = v67;
    v53 = v68;
    v54 = swift_allocObject();
    v54[2] = v52;
    v54[3] = v53;
    v54[4] = 0x4079000000000000;
    v67 = sub_2409F4770;
    v68 = v54;
    LOBYTE(v69) = 0;
    sub_2409F477C();
    goto LABEL_15;
  }

  result = sub_240A2C58C();
  __break(1u);
  return result;
}

uint64_t sub_2409F002C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v5 = type metadata accessor for PairingView();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_240A2B00C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C2CC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = a1;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v46 & 1;
    _os_log_impl(&dword_2408FE000, v14, v15, "PairingView askForManualPairingCodeView length: %ld isAlpha: %{BOOL}d", v16, 0x12u);
    MEMORY[0x245CCDDB0](v16, -1, -1);
  }

  (*(v9 + 8))(v13, v8);
  v17 = [objc_allocWithZone(MEMORY[0x277D43368]) init];
  v53 = 1;
  sub_240A2BD3C();
  v42 = v48;
  v43 = aBlock;
  v18 = v49;
  sub_240A2C06C();
  v19 = sub_240A2BF1C();

  [v17 setTitle_];

  sub_240A2C06C();
  v20 = sub_240A2BF1C();

  [v17 setSubtitle_];

  [v17 setDismissalType_];
  v21 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v22 = swift_allocObject();
  v22[2] = sub_2409F0E0C;
  v22[3] = 0;
  v22[4] = v21;
  v23 = v17;

  v24 = sub_240A2BF1C();
  v51 = sub_2409977DC;
  v52 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_2409DFF20;
  v50 = &block_descriptor_24;
  v25 = _Block_copy(&aBlock);
  v26 = [objc_opt_self() actionWithTitle:v24 style:0 handler:v25];

  _Block_release(v25);

  [v23 setDismissButtonAction_];

  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  LOBYTE(aBlock) = v18;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2409F3F68;
  *(v28 + 24) = v27;

  v29 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_240937BC0(0, v29[2] + 1, 1, v29);
  }

  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_240937BC0((v30 > 1), v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v32 = &v29[2 * v31];
  v32[4] = sub_24093A2A0;
  v32[5] = v28;
  v33 = aBlock;
  sub_2409F4ACC(v45, &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PairingView);
  v34 = (*(v44 + 80) + 17) & ~*(v44 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v46 & 1;
  sub_2409F3FCC(&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  *(v35 + ((v6 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  *a3 = v23;
  *(a3 + 8) = v29;
  v36 = v42;
  *(a3 + 16) = v43;
  *(a3 + 24) = v36;
  *(a3 + 32) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2409F4030;
  *(v37 + 24) = v35;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_240937BC0(0, v29[2] + 1, 1, v29);
  }

  v39 = v29[2];
  v38 = v29[3];
  if (v39 >= v38 >> 1)
  {
    v29 = sub_240937BC0((v38 > 1), v39 + 1, 1, v29);
  }

  v29[2] = v39 + 1;
  v41 = &v29[2 * v39];
  v41[4] = sub_24093A8F0;
  v41[5] = v37;
  *(a3 + 8) = v29;
  return result;
}

uint64_t sub_2409F065C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C2CC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "PairingView askForUnknownCodeView", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  *a1 = sub_240A2B58C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBC0, &qword_240A37D88);
  return sub_2409F1A8C(v2, a1 + *(v13 + 44));
}

double sub_2409F07D4@<D0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PairingView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = sub_240A2B00C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C2CC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v5;
    v17 = v2;
    v18 = a1;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2408FE000, v14, v15, "PairingView askForQRCodeScannerView", v16, 2u);
    v20 = v19;
    a1 = v18;
    v2 = v17;
    v5 = v25;
    MEMORY[0x245CCDDB0](v20, -1, -1);
  }

  (*(v9 + 8))(v13, v8);
  sub_2409F4ACC(v2, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PairingView);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  sub_2409F3FCC(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  return sub_2409E9F30(sub_2409F43DC, v22, a1);
}

uint64_t sub_2409F0A24@<X0>(uint64_t a1@<X8>)
{
  v44 = type metadata accessor for PairingView();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v44, v4);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v43 - v7;
  v9 = sub_240A29DBC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_240A2B00C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v20 = sub_240A2AFFC();
  v21 = sub_240A2C2CC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = v8;
    v23 = v2;
    v24 = v22;
    *v22 = 0;
    _os_log_impl(&dword_2408FE000, v20, v21, "PairingView askForVisualPairingCodeView", v22, 2u);
    v25 = v24;
    v2 = v23;
    v8 = v43;
    MEMORY[0x245CCDDB0](v25, -1, -1);
  }

  (*(v15 + 8))(v19, v14);
  v26 = v44;
  v27 = v46;
  v28 = *(v46 + *(v44 + 20));
  v29 = sub_240A2A0EC();
  v30 = v27 + *(v26 + 24);
  sub_240945D78(v13);
  sub_24091F1E0(v29 & 1, v13, 1, v51);
  sub_2409F4ACC(v27, v8, type metadata accessor for PairingView);
  v31 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v32 = swift_allocObject();
  sub_2409F3FCC(v8, v32 + v31);
  v33 = v45;
  sub_2409F4ACC(v27, v45, type metadata accessor for PairingView);
  v34 = swift_allocObject();
  sub_2409F3FCC(v33, v34 + v31);
  v35 = objc_allocWithZone(type metadata accessor for DustCloudScannerCardViewController());
  v36 = sub_24091EA18(v51, sub_2409F4514, v32, sub_2409F4710, v34);
  v47 = 1;
  sub_240A2BD3C();
  v37 = v48;
  v38 = v49;
  v39 = v50;
  LOBYTE(v32) = sub_240A2B88C();
  v40 = sub_240A2B89C();
  sub_240A2B89C();
  if (sub_240A2B89C() != v32)
  {
    v40 = sub_240A2B89C();
  }

  result = sub_240A2B3AC();
  v42 = MEMORY[0x277D84F90];
  *a1 = v36;
  *(a1 + 8) = v42;
  *(a1 + 16) = v37;
  *(a1 + 24) = v38;
  *(a1 + 32) = v39;
  *(a1 + 40) = result;
  *(a1 + 48) = v40;
  return result;
}

void sub_2409F0E0C(void *a1)
{
  v1 = [a1 passcodeEntryView];
  [v1 endEditing_];

  exit(1);
}

void sub_2409F0E50(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 passcodeEntryView];
  v14 = v13;
  if (a2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 11;
  }

  [v13 setKeyboardType_];

  sub_2409F4ACC(a3, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PairingView);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = v16 + v10;
  v18 = swift_allocObject();
  sub_2409F3FCC(v12, v18 + v16);
  *(v18 + v17) = a2;
  *(v18 + (v17 & 0xFFFFFFFFFFFFFFF8) + 8) = a4;
  aBlock[4] = sub_2409F40D0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409ED748;
  aBlock[3] = &block_descriptor_23_0;
  v19 = _Block_copy(aBlock);

  [a1 setTextEntryCompletionHandler_];
  _Block_release(v19);
}

uint64_t sub_2409F1030(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v29[1] = a3;
  v9 = sub_240A29EFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = v29 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = v29 - v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  *v22 = a1;
  *(v22 + 1) = a2;
  *&v22[v23] = a5;
  v24 = sub_240A2A0DC();
  v25 = MEMORY[0x277CED778];
  if ((a4 & 1) == 0)
  {
    v25 = MEMORY[0x277CED780];
  }

  (*(*(v24 - 8) + 104))(&v22[v23], *v25, v24);
  (*(v10 + 104))(v22, *MEMORY[0x277CED6B0], v9);
  v26 = *(v10 + 16);
  v26(v19, v22, v9);
  v26(v15, v19, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  sub_240A2BCFC();
  v27 = *(v10 + 8);
  v27(v19, v9);
  return (v27)(v22, v9);
}

uint64_t sub_2409F126C(uint64_t a1, uint64_t a2)
{
  v4 = sub_240A29EFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  *v17 = a1;
  *(v17 + 1) = a2;
  v19 = *MEMORY[0x277CED788];
  v20 = sub_240A2A0DC();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  (*(v5 + 104))(v17, *MEMORY[0x277CED6B0], v4);
  v21 = *(v5 + 16);
  v21(v14, v17, v4);
  v21(v10, v14, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  sub_240A2BCFC();
  v22 = *(v5 + 8);
  v22(v14, v4);
  return (v22)(v17, v4);
}

uint64_t sub_2409F1488()
{
  v0 = sub_240A29EFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v19 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = 6;
  v14 = *MEMORY[0x277CED780];
  v15 = sub_240A2A0DC();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(v1 + 104))(v13, *MEMORY[0x277CED6A8], v0);
  v16 = *(v1 + 16);
  v16(v10, v13, v0);
  v16(v6, v10, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  sub_240A2BCFC();
  v17 = *(v1 + 8);
  v17(v10, v0);
  return (v17)(v13, v0);
}

uint64_t sub_2409F1678(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_240A29EFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = v46 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = (v46 - v20);
  if (a1)
  {
    v22 = *MEMORY[0x277CED790];
    v23 = sub_240A2A0DC();
    (*(*(v23 - 8) + 104))(v21, v22, v23);
    v24 = MEMORY[0x277CED698];
LABEL_7:
    (*(v9 + 104))(v21, *v24, v8);
    v43 = *(v9 + 16);
    v43(v18, v21, v8);
    v43(v14, v18, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
    goto LABEL_8;
  }

  if (!a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C248, &qword_240A32308);
    v40 = swift_allocBox();
    v42 = v41;
    sub_2409ED7B4(v41);
    (*(v9 + 56))(v42, 0, 1, v8);
    *v21 = v40;
    v24 = MEMORY[0x277CED6B8];
    goto LABEL_7;
  }

  if (sub_240A2C0FC())
  {
    v25 = sub_240A2C0AC();
    v26 = sub_2409F4464(v25, a2, a3);
    v28 = v27;
    v30 = v29;
    v46[1] = a4;
    v32 = v31;

    v33 = MEMORY[0x245CCCD40](v26, v28, v30, v32);
    v35 = v34;

    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
    *v21 = v33;
    v21[1] = v35;
    v37 = *MEMORY[0x277CED770];
    v38 = sub_240A2A0DC();
    (*(*(v38 - 8) + 104))(v21 + v36, v37, v38);
    (*(v9 + 104))(v21, *MEMORY[0x277CED6B0], v8);
    v39 = *(v9 + 16);
    v39(v18, v21, v8);
    v39(v14, v18, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
LABEL_8:
    sub_240A2BCFC();
    v44 = *(v9 + 8);
    v44(v18, v8);
    return (v44)(v21, v8);
  }
}

uint64_t sub_2409F1A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a1;
  v126 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v125 = *(v124 - 8);
  v2 = *(v125 + 64);
  MEMORY[0x28223BE20](v124, v3);
  v122 = &v107 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D740, &qword_240A34FE0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v123 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v133 = &v107 - v11;
  v120 = sub_240A2B37C();
  v118 = *(v120 - 8);
  v12 = *(v118 + 64);
  MEMORY[0x28223BE20](v120, v13);
  v114 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PairingView();
  v112 = *(v15 - 8);
  v111 = *(v112 + 64);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v110 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBC8, &qword_240A37D90);
  v115 = *(v113 - 8);
  v18 = *(v115 + 64);
  MEMORY[0x28223BE20](v113, v19);
  v108 = &v107 - v20;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBD0, &qword_240A37D98);
  v117 = *(v116 - 8);
  v21 = *(v117 + 64);
  MEMORY[0x28223BE20](v116, v22);
  v109 = &v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBD8, &qword_240A37DA0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v121 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v129 = &v107 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8, v33);
  v119 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v131 = &v107 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v134 = &v107 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v130 = &v107 - v43;
  v137 = sub_240A2C06C();
  v138 = v44;
  v128 = sub_24091C4F8();
  v45 = sub_240A2B9CC();
  v47 = v46;
  v49 = v48;
  sub_240A2B8AC();
  v50 = sub_240A2B9AC();
  v52 = v51;
  v54 = v53;

  sub_240920658(v45, v47, v49 & 1);

  LODWORD(v137) = sub_240A2B70C();
  v55 = sub_240A2B98C();
  v57 = v56;
  LOBYTE(v45) = v58;
  v60 = v59;
  sub_240920658(v50, v52, v54 & 1);

  v137 = v55;
  v138 = v57;
  LOBYTE(v139) = v45 & 1;
  v140 = v60;
  sub_240A2BA6C();
  sub_240920658(v55, v57, v45 & 1);

  v137 = sub_240A2C06C();
  v138 = v61;
  v62 = sub_240A2B9CC();
  v64 = v63;
  LOBYTE(v55) = v65;
  sub_240A2B96C();
  v66 = sub_240A2B9AC();
  v68 = v67;
  v70 = v69;

  sub_240920658(v62, v64, v55 & 1);

  LODWORD(v137) = sub_240A2B72C();
  v71 = sub_240A2B98C();
  v73 = v72;
  LOBYTE(v62) = v74;
  v76 = v75;
  sub_240920658(v66, v68, v70 & 1);

  v137 = v71;
  v138 = v73;
  LOBYTE(v139) = v62 & 1;
  v140 = v76;
  sub_240A2BA6C();
  sub_240920658(v71, v73, v62 & 1);

  v77 = swift_allocObject();
  v137 = 0;
  v138 = 0xE000000000000000;
  sub_240A2BC4C();
  v78 = sub_240A2C06C();
  v80 = v79;
  v81 = *(v77 + 32);
  v135 = *(v77 + 16);
  v136 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBE0, &qword_240A37DA8);
  sub_240A2BC7C();
  v137 = v78;
  v138 = v80;
  v82 = v108;
  sub_240A2BE2C();
  v107 = type metadata accessor for PairingView;
  v83 = v110;
  sub_2409F4ACC(v132, v110, type metadata accessor for PairingView);
  v84 = *(v112 + 80);
  v112 = (v84 + 16) & ~v84;
  v85 = (v111 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  sub_2409F3FCC(v83, v86 + ((v84 + 16) & ~v84));
  v127 = v77;
  *(v86 + v85) = v77;

  v87 = v114;
  sub_240A2B36C();
  v88 = sub_24091CE28(&qword_27E50EBE8, &qword_27E50EBC8, &qword_240A37D90);
  v89 = v109;
  v90 = v113;
  sub_240A2BB0C();

  (*(v118 + 8))(v87, v120);
  (*(v115 + 8))(v82, v90);
  v137 = v90;
  v138 = v88;
  swift_getOpaqueTypeConformance2();
  v91 = v129;
  v92 = v116;
  sub_240A2BA6C();
  (*(v117 + 8))(v89, v92);
  v137 = sub_240A2C06C();
  v138 = v93;
  sub_2409F4ACC(v132, v83, v107);
  v94 = swift_allocObject();
  sub_2409F3FCC(v83, v94 + v112);
  *(v94 + v85) = v127;

  v95 = v122;
  sub_240A2BCCC();
  sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
  v96 = v133;
  v97 = v124;
  sub_240A2BA6C();
  (*(v125 + 8))(v95, v97);
  v98 = v131;
  sub_240919298(v130, v131, &qword_27E50D9B0, &unk_240A34540);
  v99 = v119;
  sub_240919298(v134, v119, &qword_27E50D9B0, &unk_240A34540);
  v100 = v91;
  v101 = v121;
  sub_240919298(v100, v121, &qword_27E50EBD8, &qword_240A37DA0);
  v102 = v123;
  sub_240919298(v96, v123, &qword_27E50D740, &qword_240A34FE0);
  v103 = v98;
  v104 = v126;
  sub_240919298(v103, v126, &qword_27E50D9B0, &unk_240A34540);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBF0, &qword_240A37DB0);
  sub_240919298(v99, v104 + v105[12], &qword_27E50D9B0, &unk_240A34540);
  sub_240919298(v101, v104 + v105[16], &qword_27E50EBD8, &qword_240A37DA0);
  sub_240919298(v102, v104 + v105[20], &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v133, &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v129, &qword_27E50EBD8, &qword_240A37DA0);
  sub_240919300(v134, &qword_27E50D9B0, &unk_240A34540);
  sub_240919300(v130, &qword_27E50D9B0, &unk_240A34540);
  sub_240919300(v102, &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v101, &qword_27E50EBD8, &qword_240A37DA0);
  sub_240919300(v99, &qword_27E50D9B0, &unk_240A34540);
  sub_240919300(v131, &qword_27E50D9B0, &unk_240A34540);
}

uint64_t sub_2409F2794(uint64_t a1, uint64_t a2)
{
  v3 = sub_240A29EFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v25 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = v25 - v15;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v18 = *(a2 + 32);
  v26 = *(a2 + 16);
  v27 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBE0, &qword_240A37DA8);
  sub_240A2BC5C();
  v19 = v25[2];
  *v16 = v25[1];
  *(v16 + 1) = v19;
  v20 = *MEMORY[0x277CED790];
  v21 = sub_240A2A0DC();
  (*(*(v21 - 8) + 104))(&v16[v17], v20, v21);
  (*(v4 + 104))(v16, *MEMORY[0x277CED6B0], v3);
  v22 = *(v4 + 16);
  v22(v13, v16, v3);
  v22(v9, v13, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  sub_240A2BCFC();
  v23 = *(v4 + 8);
  v23(v13, v3);
  return (v23)(v16, v3);
}

uint64_t sub_2409F29D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_240A2B00C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();

  v14 = sub_240A2AFFC();
  v15 = sub_240A2C2CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v43 = v8;
    v17 = a3;
    v18 = v16;
    v19 = swift_slowAlloc();
    v44 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_240925464(a1, a2, &v44);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v17 & 1;
    _os_log_impl(&dword_2408FE000, v14, v15, "PairingView showManualPairingCodeView for code %s isAlpha %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x245CCDDB0](v19, -1, -1);
    MEMORY[0x245CCDDB0](v18, -1, -1);

    (*(v9 + 8))(v13, v43);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  *a4 = sub_240A2B58C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC58, &qword_240A37DE0);
  sub_2409F2D2C(a1, a2, a4 + *(v20 + 44));
  v21 = sub_240A2B86C();
  sub_240A2B1AC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC38, &qword_240A37DD0) + 36);
  *v30 = v21;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  v31 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC28, &qword_240A37DC8) + 36);
  sub_240A2BDBC();
  v32 = sub_240A2B86C();
  *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B790, &qword_240A311E0) + 36)) = v32;
  v33 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBF8, &qword_240A37DB8) + 36));
  v34 = *(sub_240A2B3FC() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_240A2B57C();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #20.0 }

  *v33 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0);
  *&v33[*(result + 36)] = 256;
  return result;
}

uint64_t sub_2409F2D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(&v116 + 1) = a2;
  *&v116 = a1;
  v124 = a3;
  v3 = sub_240A2B3FC();
  v4 = *(v3 - 8);
  v117 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v118 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC60, &qword_240A37DE8);
  v8 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120, v9);
  v119 = &v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC68, &qword_240A37DF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v123 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v122 = &v111 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v111 - v21;
  v23 = sub_240A2B97C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D8, &qword_240A31220);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8, v31);
  v121 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v125 = &v111 - v35;
  *&v133[0] = sub_240A2C06C();
  *(&v133[0] + 1) = v36;
  v115 = sub_24091C4F8();
  v37 = sub_240A2B9CC();
  v39 = v38;
  v41 = v40;
  (*(v24 + 104))(v28, *MEMORY[0x277CE0A70], v23);
  v111 = sub_240A2B8CC();
  v112 = *(v111 - 8);
  v42 = *(v112 + 56);
  v113 = v112 + 56;
  v114 = v42;
  v42(v22, 1, 1, v111);
  sub_240A2B8DC();
  sub_240A2B92C();
  sub_240919300(v22, &qword_27E50B7D0, &qword_240A31218);
  (*(v24 + 8))(v28, v23);
  v43 = sub_240A2B9AC();
  v45 = v44;
  LOBYTE(v24) = v46;

  sub_240920658(v37, v39, v41 & 1);

  LODWORD(v133[0]) = sub_240A2B70C();
  v47 = sub_240A2B98C();
  v49 = v48;
  LOBYTE(v37) = v50;
  v52 = v51;
  sub_240920658(v43, v45, v24 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v39) = sub_240A2B88C();
  sub_240A2B1AC();
  v132 = v37 & 1;
  v131 = 0;
  *&v126 = v47;
  *(&v126 + 1) = v49;
  LOBYTE(v127) = v37 & 1;
  *(&v127 + 1) = v52;
  *&v128 = KeyPath;
  BYTE8(v128) = 1;
  LOBYTE(v129) = v39;
  *(&v129 + 1) = v54;
  *&v130[0] = v55;
  *(&v130[0] + 1) = v56;
  *&v130[1] = v57;
  BYTE8(v130[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7E0, &unk_240A378B0);
  sub_240920668();
  sub_240A2BA6C();
  v133[2] = v128;
  v133[3] = v129;
  *v134 = v130[0];
  *&v134[9] = *(v130 + 9);
  v133[0] = v126;
  v133[1] = v127;
  sub_240919300(v133, &qword_27E50B7E0, &unk_240A378B0);
  v126 = v116;

  v58 = sub_240A2B9CC();
  v60 = v59;
  LOBYTE(v37) = v61;
  sub_240A2B8DC();
  v62 = v111;
  (*(v112 + 104))(v22, *MEMORY[0x277CE0980], v111);
  v114(v22, 0, 1, v62);
  sub_240A2B91C();
  sub_240919300(v22, &qword_27E50B7D0, &qword_240A31218);
  v63 = sub_240A2B9AC();
  v65 = v64;
  LOBYTE(v22) = v66;

  sub_240920658(v58, v60, v37 & 1);

  LODWORD(v126) = sub_240A2B70C();
  *(&v116 + 1) = sub_240A2B98C();
  *&v116 = v67;
  LOBYTE(v47) = v68;
  v70 = v69;
  sub_240920658(v63, v65, v22 & 1);

  LOBYTE(v65) = sub_240A2B86C();
  sub_240A2B1AC();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  LOBYTE(v22) = v47 & 1;
  v132 = v47 & 1;
  v131 = 0;
  v79 = *(v117 + 28);
  v80 = *MEMORY[0x277CE0118];
  v81 = sub_240A2B57C();
  v82 = v118;
  (*(*(v81 - 8) + 104))(&v118[v79], v80, v81);
  __asm { FMOV            V0.2D, #15.0 }

  *v82 = _Q0;
  sub_240A2B20C();
  v88 = v119;
  v89 = &v119[*(v120 + 36)];
  v90 = MEMORY[0x277CDFC08];
  sub_2409F4ACC(v82, v89, MEMORY[0x277CDFC08]);
  v91 = *&v126 * 0.5;
  v92 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC70, &qword_240A37E28) + 68);
  sub_2409F4ACC(v82, v92, v90);
  *(v92 + *(sub_240A2B3EC() + 20)) = v91;
  v93 = v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC78, &qword_240A37E30) + 36);
  v94 = v127;
  *v93 = v126;
  *(v93 + 16) = v94;
  *(v93 + 32) = v128;
  *(v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC80, &qword_240A37E38) + 56)) = 256;
  v95 = sub_240A2BDEC();
  v97 = v96;
  sub_2409F4B34(v82, MEMORY[0x277CDFC08]);
  v98 = (v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC88, &qword_240A37E40) + 36));
  *v98 = v95;
  v98[1] = v97;
  v99 = sub_240A2BDEC();
  v101 = v100;
  v102 = (v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC90, &qword_240A37E48) + 36));
  *v102 = v99;
  v102[1] = v101;
  v103 = v116;
  *v88 = *(&v116 + 1);
  *(v88 + 8) = v103;
  *(v88 + 16) = v22;
  *(v88 + 24) = v70;
  *(v88 + 32) = v65;
  *(v88 + 40) = v72;
  *(v88 + 48) = v74;
  *(v88 + 56) = v76;
  *(v88 + 64) = v78;
  *(v88 + 72) = 0;
  sub_2409F4B94();
  v104 = v122;
  sub_240A2BA6C();
  sub_240919300(v88, &qword_27E50EC60, &qword_240A37DE8);
  v105 = v125;
  v106 = v121;
  sub_240919298(v125, v121, &qword_27E50B7D8, &qword_240A31220);
  v107 = v123;
  sub_240919298(v104, v123, &qword_27E50EC68, &qword_240A37DF0);
  v108 = v124;
  sub_240919298(v106, v124, &qword_27E50B7D8, &qword_240A31220);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ECA8, &qword_240A37E50);
  sub_240919298(v107, v108 + *(v109 + 48), &qword_27E50EC68, &qword_240A37DF0);
  sub_240919300(v104, &qword_27E50EC68, &qword_240A37DF0);
  sub_240919300(v105, &qword_27E50B7D8, &qword_240A31220);
  sub_240919300(v107, &qword_27E50EC68, &qword_240A37DF0);
  return sub_240919300(v106, &qword_27E50B7D8, &qword_240A31220);
}

unint64_t sub_2409F3828()
{
  result = qword_27E50EAF0;
  if (!qword_27E50EAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAA0, &qword_240A37CE0);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EAF0);
  }

  return result;
}

unint64_t sub_2409F38D8()
{
  result = qword_27E50EAF8;
  if (!qword_27E50EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAE0, &qword_240A37D20);
    sub_2409F3964();
    sub_2409F3DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EAF8);
  }

  return result;
}

unint64_t sub_2409F3964()
{
  result = qword_27E50EB00;
  if (!qword_27E50EB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAD8, &qword_240A37D18);
    sub_2409F39F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB00);
  }

  return result;
}

unint64_t sub_2409F39F0()
{
  result = qword_27E50EB08;
  if (!qword_27E50EB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAE8, &qword_240A37D28);
    sub_2409F3A7C();
    sub_2409F3CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB08);
  }

  return result;
}

unint64_t sub_2409F3A7C()
{
  result = qword_27E50EB10;
  if (!qword_27E50EB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB18, &qword_240A37D30);
    sub_2409F3B08();
    sub_2409F3BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB10);
  }

  return result;
}

unint64_t sub_2409F3B08()
{
  result = qword_27E50EB20;
  if (!qword_27E50EB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB28, &qword_240A37D38);
    sub_24091CE28(&qword_27E50EB30, &qword_27E50EB38, &qword_240A37D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB20);
  }

  return result;
}

unint64_t sub_2409F3BB8()
{
  result = qword_27E50EB40;
  if (!qword_27E50EB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB48, &qword_240A37D48);
    sub_24091CE28(&qword_27E50EB50, &qword_27E50EB58, &qword_240A37D50);
    sub_2409F4A84(&qword_27E50EB60, type metadata accessor for QRCodeScannerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB40);
  }

  return result;
}

unint64_t sub_2409F3CA0()
{
  result = qword_27E50EB68;
  if (!qword_27E50EB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB68);
  }

  return result;
}

unint64_t sub_2409F3D2C()
{
  result = qword_27E50EB78;
  if (!qword_27E50EB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB80, &qword_240A37D60);
    sub_24091CE28(&qword_27E50EB88, &qword_27E50EB90, &qword_240A37D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB78);
  }

  return result;
}

unint64_t sub_2409F3DE4()
{
  result = qword_27E50EB98;
  if (!qword_27E50EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAB8, &qword_240A37CF8);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB98);
  }

  return result;
}