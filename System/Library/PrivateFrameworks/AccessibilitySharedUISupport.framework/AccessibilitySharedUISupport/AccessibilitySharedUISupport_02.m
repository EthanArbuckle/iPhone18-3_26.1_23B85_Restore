uint64_t sub_23DA4BB10@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v107 = type metadata accessor for PracticeGeneralView();
  v1 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107, v2);
  v4 = (v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCC8, &qword_23DB76E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v106 = (v103 - v8);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCD0, &qword_23DB76E18);
  v9 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111, v10);
  v108 = v103 - v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCD8, &qword_23DB76E20);
  v12 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109, v13);
  v110 = v103 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCE0, &qword_23DB76E28);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v112 = v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCE8, &qword_23DB76E30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v103 - v22;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if (v130 == 1)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v24 = *(&v130 + 1);
    v112 = v130;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v25 = v130;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v26 = swift_allocObject();
    *(v26 + 16) = v130;
    *v23 = v112;
    *(v23 + 1) = v24;
    *(v23 + 1) = v25;
    *(v23 + 4) = sub_23DA40310;
    *(v23 + 5) = v26;
    swift_storeEnumTagMultiPayload();
    sub_23DA51134();
    sub_23DA51188();
    return sub_23DB6F79C();
  }

  v103[1] = v19;
  v104 = v23;
  v105 = v15;
  type metadata accessor for Page.CollectionFinished(0);
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;

    KeyPath = swift_getKeyPath();
    type metadata accessor for NavigationModel();
    sub_23DA5425C(&unk_27E2FE800, type metadata accessor for NavigationModel);

    v31 = sub_23DB6F39C();
    v33 = v32;
    *&v123 = 0;
    sub_23DB7037C();
    v34 = v130;
    *&v123 = 0;
    sub_23DB7037C();
    *&v114 = v29;
    *(&v114 + 1) = v31;
    *v115 = v33;
    *&v115[8] = KeyPath;
    v115[16] = 0;
    *&v115[24] = v34;
    *&v115[40] = v130;
    *&v115[56] = 0x3FD999999999999ALL;
    *&v131[16] = *&v115[16];
    *&v131[32] = *&v115[32];
    *&v131[48] = *&v115[48];
    v130 = v114;
    *v131 = *v115;
    v133 = 0;
    v131[64] = 0;
    sub_23DA51574(&v114, &v123);
    sub_23DA50BA8();
    sub_23DA50BFC();
    sub_23DB6F79C();
    *&v131[16] = v125;
    *&v131[32] = v126;
    *&v131[48] = v127;
    v131[64] = v128;
    v130 = v123;
    *v131 = v124;
    LOBYTE(v134) = 0;
    v131[65] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD68, &qword_23DB76EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50B1C();
    sub_23DA50C50();
    sub_23DB6F79C();
    v125 = v119;
    v126 = v120;
    v127 = v121;
    v128 = v122;
    v123 = v117;
    v124 = v118;
    LOBYTE(v135[0]) = 0;
    v129 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v35 = *&v131[32];
    v36 = v110;
    *(v110 + 32) = *&v131[16];
    *(v36 + 48) = v35;
    *(v36 + 64) = *&v131[48];
    *(v36 + 79) = *&v131[63];
    v37 = *v131;
    *v36 = v130;
    *(v36 + 16) = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v38 = v112;
    sub_23DB6F79C();
    sub_23DA515D0(&v114);
    goto LABEL_10;
  }

  type metadata accessor for Page.WhatsNew(0);
  if (swift_dynamicCastClass())
  {

    sub_23DA5425C(&qword_27E2FCE58, type metadata accessor for Page.WhatsNew);

    v39 = sub_23DB6F1EC();
    v41 = v40;
    *&v123 = 0;
    sub_23DB7037C();
    v42 = v130;
    *&v123 = 0;
    sub_23DB7037C();
    v43 = v130;
    v133 = 1;
    *&v130 = v39;
    *(&v130 + 1) = v41;
    *v131 = v42;
    *&v131[16] = v43;
    *&v131[32] = v114;
    *&v131[48] = *v115;
    v131[64] = 1;
    sub_23DA50BA8();
    sub_23DA50BFC();

    sub_23DB6F79C();
    *&v131[16] = v125;
    *&v131[32] = v126;
    *&v131[48] = v127;
    v131[64] = v128;
    v130 = v123;
    *v131 = v124;
    LOBYTE(v134) = 0;
    v131[65] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD68, &qword_23DB76EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50B1C();
    sub_23DA50C50();
    sub_23DB6F79C();
    v125 = v119;
    v126 = v120;
    v127 = v121;
    v128 = v122;
    v123 = v117;
    v124 = v118;
    LOBYTE(v135[0]) = 0;
    v129 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v44 = *&v131[32];
    v45 = v110;
    *(v110 + 32) = *&v131[16];
    *(v45 + 48) = v44;
    *(v45 + 64) = *&v131[48];
    *(v45 + 79) = *&v131[63];
    v46 = *v131;
    *v45 = v130;
    *(v45 + 16) = v46;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v38 = v112;
    sub_23DB6F79C();

LABEL_7:

    goto LABEL_10;
  }

  type metadata accessor for Page.PracticeSingleButton(0);
  if (swift_dynamicCastClass())
  {

    sub_23DA513F8(&v114);
    v135[0] = v114;
    v134 = *&v115[8];
    v123 = v114;
    v124 = *v115;
    v125 = *&v115[16];
    LOBYTE(v126) = 0;
    sub_23DA0E2B4(v135, &v130, &qword_27E2FCE48, &qword_23DB76EF8);
    sub_23DA0E2B4(&v134, &v130, &qword_27E2FCE50, &qword_23DB76F00);
    sub_23DA50CDC();
    sub_23DA50D30();
    sub_23DB6F79C();
    v132 = v131[32];
    v116 = 1;
    v131[65] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD68, &qword_23DB76EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50B1C();
    sub_23DA50C50();
    sub_23DB6F79C();
    v125 = v119;
    v126 = v120;
    v127 = v121;
    v128 = v122;
    v123 = v117;
    v124 = v118;
    v133 = 0;
    v129 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v47 = *&v131[32];
    v48 = v110;
    *(v110 + 32) = *&v131[16];
    *(v48 + 48) = v47;
    *(v48 + 64) = *&v131[48];
    *(v48 + 79) = *&v131[63];
    v49 = *v131;
    *v48 = v130;
    *(v48 + 16) = v49;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v38 = v112;
    sub_23DB6F79C();
    sub_23DA17988(v135, &qword_27E2FCE48, &qword_23DB76EF8);
    sub_23DA17988(&v134, &qword_27E2FCE50, &qword_23DB76F00);
    goto LABEL_10;
  }

  type metadata accessor for Page.PracticeScroll(0);
  if (swift_dynamicCastClass())
  {

    v50 = swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FCE40, type metadata accessor for Page.PracticeScroll);

    v51 = sub_23DB6F1EC();
    v53 = v52;
    LOBYTE(v123) = 0;
    sub_23DB7037C();
    *&v123 = v51;
    *(&v123 + 1) = v53;
    v124 = v50;
    *&v125 = v130;
    *(&v125 + 1) = *(&v130 + 1);
    LOBYTE(v126) = 1;
    sub_23DA50CDC();
    sub_23DA50D30();

    sub_23DB6F79C();
    LOBYTE(v134) = v131[32];
    v133 = 1;
    *&v131[33] = v114;
    *&v131[49] = *v115;
    v131[65] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD68, &qword_23DB76EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50B1C();
    sub_23DA50C50();
    sub_23DB6F79C();
    v125 = v119;
    v126 = v120;
    v127 = v121;
    v128 = v122;
    v123 = v117;
    v124 = v118;
    LOBYTE(v135[0]) = 0;
    v129 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v54 = *&v131[32];
    v55 = v110;
    *(v110 + 32) = *&v131[16];
    *(v55 + 48) = v54;
    *(v55 + 64) = *&v131[48];
    *(v55 + 79) = *&v131[63];
    v56 = *v131;
    *v55 = v130;
    *(v55 + 16) = v56;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v38 = v112;
    sub_23DB6F79C();

LABEL_13:

    goto LABEL_7;
  }

  type metadata accessor for Page.PracticeText(0);
  if (swift_dynamicCastClass())
  {

    sub_23DA5425C(&qword_27E2FCE38, type metadata accessor for Page.PracticeText);

    *&v123 = sub_23DB6F1EC();
    *(&v123 + 1) = v57;
    *&v124 = 0;
    WORD4(v124) = 0;
    BYTE10(v124) = 0;
    sub_23DA50E9C();
    sub_23DA50EF0();

    sub_23DB6F79C();
    *&v131[11] = v114;
    LOBYTE(v134) = v131[10];
    v133 = 0;
    *&v131[27] = *v115;
    *&v131[41] = *&v115[14];
    v131[49] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50E10();
    sub_23DA50F44();
    sub_23DB6F79C();
    v125 = v119;
    v126 = v120;
    LOWORD(v127) = v121;
    v123 = v117;
    v124 = v118;
    LOBYTE(v135[0]) = 1;
    v129 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v58 = *&v131[32];
    v59 = v110;
    *(v110 + 32) = *&v131[16];
    *(v59 + 48) = v58;
    *(v59 + 64) = *&v131[48];
    *(v59 + 79) = *&v131[63];
    v60 = *v131;
    *v59 = v130;
    *(v59 + 16) = v60;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v38 = v112;
    sub_23DB6F79C();
    goto LABEL_7;
  }

  type metadata accessor for Page.PracticeUneditableText(0);
  if (swift_dynamicCastClass())
  {

    v61 = swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FCE30, type metadata accessor for Page.PracticeUneditableText);

    *&v123 = sub_23DB6F1EC();
    *(&v123 + 1) = v62;
    *&v124 = v61;
    WORD4(v124) = 256;
    BYTE10(v124) = 1;
    sub_23DA50E9C();
    sub_23DA50EF0();

    sub_23DB6F79C();
    *&v131[11] = v114;
    LOBYTE(v134) = v131[10];
    v133 = 0;
    *&v131[27] = *v115;
    *&v131[41] = *&v115[14];
    v131[49] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50E10();
    sub_23DA50F44();
    sub_23DB6F79C();
    v125 = v119;
    v126 = v120;
    LOWORD(v127) = v121;
    v123 = v117;
    v124 = v118;
    LOBYTE(v135[0]) = 1;
    v129 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v63 = *&v131[32];
    v64 = v110;
    *(v110 + 32) = *&v131[16];
    *(v64 + 48) = v63;
    *(v64 + 64) = *&v131[48];
    *(v64 + 79) = *&v131[63];
    v65 = *v131;
    *v64 = v130;
    *(v64 + 16) = v65;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v38 = v112;
    sub_23DB6F79C();
    goto LABEL_13;
  }

  type metadata accessor for Page.PracticeGrid(0);
  if (swift_dynamicCastClass())
  {

    v66 = swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FCE28, type metadata accessor for Page.PracticeGrid);

    v67 = sub_23DB6F1EC();
    v69 = v68;
    LOBYTE(v123) = 1;
    sub_23DB7037C();
    v70 = v130;
    v71 = *(&v130 + 1);
    if (qword_27E2FBB88 != -1)
    {
      swift_once();
    }

    v72 = qword_27E30A660;
    v73 = qword_27E2FBB90;

    v38 = v112;
    if (v73 != -1)
    {
      swift_once();
    }

    *&v114 = v67;
    *(&v114 + 1) = v69;
    v115[0] = v70;
    *&v115[8] = v71;
    *&v115[16] = v66;
    v115[24] = 0;
    *&v115[32] = v72;
    *&v115[40] = qword_27E30A668;
    v130 = v114;
    *v131 = *v115;
    *&v131[16] = *&v115[16];
    *&v131[32] = *&v115[32];
    v133 = 0;
    v131[48] = 0;

    sub_23DA5121C(&v114, &v123);
    sub_23DA50FD0();
    sub_23DA51024();
    sub_23DB6F79C();
    *&v131[16] = v125;
    *&v131[32] = v126;
    v131[48] = v127;
    v130 = v123;
    *v131 = v124;
    LOBYTE(v134) = 1;
    v131[49] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50E10();
    sub_23DA50F44();
    sub_23DB6F79C();
    v125 = v119;
    v126 = v120;
    LOWORD(v127) = v121;
    v123 = v117;
    v124 = v118;
    LOBYTE(v135[0]) = 1;
    v129 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v74 = *&v131[32];
    v75 = v110;
    *(v110 + 32) = *&v131[16];
    *(v75 + 48) = v74;
    *(v75 + 64) = *&v131[48];
    *(v75 + 79) = *&v131[63];
    v76 = *v131;
    *v75 = v130;
    *(v75 + 16) = v76;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    sub_23DB6F79C();
    sub_23DA51254(&v114);
    goto LABEL_10;
  }

  type metadata accessor for Page.PracticeKeyboardCommands(0);
  if (swift_dynamicCastClass())
  {

    v77 = swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FCE20, type metadata accessor for Page.PracticeKeyboardCommands);

    v78 = sub_23DB6F1EC();
    *&v131[9] = v114;
    v133 = 0;
    v132 = 1;
    *&v130 = v78;
    *(&v130 + 1) = v79;
    *v131 = v77;
    v131[8] = 0;
    *&v131[25] = *v115;
    *&v131[40] = *&v115[15];
    v131[48] = 1;
    sub_23DA50FD0();
    sub_23DA51024();

    sub_23DB6F79C();
    *&v131[16] = v125;
    *&v131[32] = v126;
    v131[48] = v127;
    v130 = v123;
    *v131 = v124;
    LOBYTE(v134) = 1;
    v131[49] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50E10();
    sub_23DA50F44();
    sub_23DB6F79C();
    v125 = v119;
    v126 = v120;
    LOWORD(v127) = v121;
    v123 = v117;
    v124 = v118;
    LOBYTE(v135[0]) = 1;
    v129 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v80 = *&v131[32];
    v81 = v110;
    *(v110 + 32) = *&v131[16];
    *(v81 + 48) = v80;
    *(v81 + 64) = *&v131[48];
    *(v81 + 79) = *&v131[63];
    v82 = *v131;
    *v81 = v130;
    *(v81 + 16) = v82;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v38 = v112;
    sub_23DB6F79C();
  }

  else
  {
    type metadata accessor for Page.PracticeAppNavigationCommands(0);
    if (swift_dynamicCastClass())
    {

      v83 = swift_getKeyPath();
      sub_23DA5425C(&qword_27E2FCE18, type metadata accessor for Page.PracticeAppNavigationCommands);

      *&v123 = sub_23DB6F1EC();
      *(&v123 + 1) = v84;
      v124 = xmmword_23DB76AA0;
      v103[0] = v83;
      *&v125 = v83;
      WORD4(v125) = 0;
      sub_23DA5087C();
      sub_23DA508D0();

      sub_23DB6F79C();
      if (v131[25])
      {
        v85 = 256;
      }

      else
      {
        v85 = 0;
      }

      v123 = v130;
      v124 = *v131;
      *&v125 = *&v131[16];
      WORD4(v125) = v85 | v131[24];
      BYTE10(v125) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD08, &qword_23DB76E88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD28, &qword_23DB76E90);
      sub_23DA507F0();
      sub_23DA50924();
      sub_23DB6F79C();
      v86 = *&v131[16];
      v87 = *&v131[24];
      v88 = v131[26];
      v89 = *v131;
      v90 = v106;
      *v106 = v130;
      v90[1] = v89;
      *(v90 + 4) = v86;
      *(v90 + 20) = v87;
      *(v90 + 42) = v88;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCF0, &qword_23DB76E80);
      sub_23DA50764();
      sub_23DA5425C(&qword_27E2FCD38, type metadata accessor for PracticeGeneralView);
      v91 = v108;
      sub_23DB6F79C();
      sub_23DA0E2B4(v91, v110, &qword_27E2FCCD0, &qword_23DB76E18);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
      sub_23DA50A04();
      sub_23DA51078();
      v38 = v112;
      sub_23DB6F79C();
    }

    else
    {
      type metadata accessor for Page.PracticeCommandsCheckmark(0);
      if (swift_dynamicCastClass())
      {

        sub_23DA5425C(&qword_27E2FCE10, type metadata accessor for Page.PracticeCommandsCheckmark);

        *&v123 = sub_23DB6F1EC();
        *(&v123 + 1) = v92;
        v124 = xmmword_23DB76AA0;
        *&v125 = 0;
        WORD4(v125) = 256;
        sub_23DA5087C();
        sub_23DA508D0();

        sub_23DB6F79C();
        if (v131[25])
        {
          v93 = 256;
        }

        else
        {
          v93 = 0;
        }

        v123 = v130;
        v124 = *v131;
        *&v125 = *&v131[16];
        WORD4(v125) = v93 | v131[24];
        BYTE10(v125) = 0;
      }

      else
      {
        type metadata accessor for Page.PracticeVO(0);
        if (!swift_dynamicCastClass())
        {
          *(v4 + *(v107 + 20)) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for Page.Practice(0);
          sub_23DA5425C(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
          *v4 = sub_23DB6F1EC();
          v4[1] = v101;
          sub_23DA52A58(v4, v106, type metadata accessor for PracticeGeneralView);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCF0, &qword_23DB76E80);
          sub_23DA50764();
          sub_23DA5425C(&qword_27E2FCD38, type metadata accessor for PracticeGeneralView);
          v102 = v108;
          sub_23DB6F79C();
          sub_23DA0E2B4(v102, v110, &qword_27E2FCCD0, &qword_23DB76E18);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
          sub_23DA50A04();
          sub_23DA51078();
          v38 = v112;
          sub_23DB6F79C();
          sub_23DA17988(v102, &qword_27E2FCCD0, &qword_23DB76E18);
          sub_23DA53A8C(v4, type metadata accessor for PracticeGeneralView);
          goto LABEL_10;
        }

        sub_23DA5425C(&qword_27E2FCE08, type metadata accessor for Page.PracticeVO);

        *&v123 = sub_23DB6F1EC();
        *(&v123 + 1) = v94;
        *&v124 = 0;
        WORD4(v124) = 256;
        sub_23DA508D0();
        sub_23DA509B0();

        sub_23DB6F79C();
        if (v131[9])
        {
          v95 = 256;
        }

        else
        {
          v95 = 0;
        }

        v123 = v130;
        *&v124 = *v131;
        *(&v124 + 1) = v95 | v131[8];
        *&v125 = 0;
        WORD4(v125) = 0;
        BYTE10(v125) = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD08, &qword_23DB76E88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD28, &qword_23DB76E90);
      sub_23DA507F0();
      sub_23DA50924();
      sub_23DB6F79C();
      v96 = *&v131[16];
      v97 = *&v131[24];
      v98 = v131[26];
      v99 = *v131;
      v100 = v106;
      *v106 = v130;
      v100[1] = v99;
      *(v100 + 4) = v96;
      *(v100 + 20) = v97;
      *(v100 + 42) = v98;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCF0, &qword_23DB76E80);
      sub_23DA50764();
      sub_23DA5425C(&qword_27E2FCD38, type metadata accessor for PracticeGeneralView);
      v91 = v108;
      sub_23DB6F79C();
      sub_23DA0E2B4(v91, v110, &qword_27E2FCCD0, &qword_23DB76E18);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
      sub_23DA50A04();
      sub_23DA51078();
      v38 = v112;
      sub_23DB6F79C();
    }

    sub_23DA17988(v91, &qword_27E2FCCD0, &qword_23DB76E18);
  }

LABEL_10:
  sub_23DA0E2B4(v38, v104, &qword_27E2FCCE0, &qword_23DB76E28);
  swift_storeEnumTagMultiPayload();
  sub_23DA51134();
  sub_23DA51188();
  sub_23DB6F79C();
  return sub_23DA17988(v38, &qword_27E2FCCE0, &qword_23DB76E28);
}

__n128 sub_23DA4DCE8@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for Page.PracticeLongText(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FD0C8, type metadata accessor for Page.PracticeLongText);

    sub_23DB6F1EC();
    sub_23DA53360();
    sub_23DA533B4();

    sub_23DB6F79C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0A0, &qword_23DB77C80);
    sub_23DA532D4();
    sub_23DB6F79C();
  }

  else
  {
    type metadata accessor for Page.PracticeShortText(0);
    if (swift_dynamicCastClass())
    {
      sub_23DA5425C(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText);

      sub_23DB6F1EC();
      sub_23DA53360();
      sub_23DA533B4();

      sub_23DB6F79C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0A0, &qword_23DB77C80);
      sub_23DA532D4();
      sub_23DB6F79C();
    }

    else
    {
      sub_23DB6F61C();
      sub_23DB6FD6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0A0, &qword_23DB77C80);
      sub_23DA532D4();
      sub_23DB6F79C();
    }
  }

  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_23DA4E054@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *&result = sub_23DA4DCE8(a1).n128_u64[0];
  return result;
}

uint64_t sub_23DA4E05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_23DB6F8DC();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PracticeGeneralView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF08, &qword_23DB77908);
  v11 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v12);
  v14 = &v22 - v13;
  *v14 = sub_23DB6F68C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF10, &unk_23DB77910) + 44);
  v23 = a1;
  v24 = v15;
  v16 = *((*(**(a1 + 8) + 1496))() + 16);

  v30 = 0;
  v31 = v16;
  swift_getKeyPath();
  sub_23DA52A58(a1, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeGeneralView);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_23DA53A24(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PracticeGeneralView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
  sub_23DA52254();
  sub_23DB704FC();
  v19 = v25;
  sub_23DB6F8BC();
  sub_23DA52A58(v23, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeGeneralView);
  v20 = swift_allocObject();
  sub_23DA53A24(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v17, type metadata accessor for PracticeGeneralView);
  sub_23DA17B80(&qword_27E2FCF30, &qword_27E2FCF08, &qword_23DB77908);
  sub_23DB6FF6C();

  (*(v28 + 8))(v19, v29);
  return sub_23DA17988(v14, &qword_27E2FCF08, &qword_23DB77908);
}

uint64_t sub_23DA4E41C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  result = (*(**(a2 + 8) + 1496))();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(result + 16))
  {
    v6 = *(result + 8 * v4 + 32);

    *a3 = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DA4E4B0(uint64_t a1)
{
  v23 = sub_23DB6F55C();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v22 - v10);
  v12 = sub_23DB6F12C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PracticeGeneralView();
  sub_23DA0E2B4(a1 + *(v18 + 20), v11, &qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v19 = *v11;
    sub_23DB70ACC();
    v20 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v23);
  }

  sub_23DB6F11C();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_23DA4E738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8, a2);
  sub_23DA52A58(v3, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PracticeGeneralView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23DA53A24(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for PracticeGeneralView);
  v9 = sub_23DB6F68C();
  v10 = sub_23DB6F5BC();
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = 0x4059000000000000;
  *(a3 + 40) = 0;
  *(a3 + 48) = sub_23DA52164;
  *(a3 + 56) = v8;
  return result;
}

uint64_t sub_23DA4E88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_23DB7044C();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - v9;
  v11 = sub_23DB6F2DC();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v31 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCE68, &unk_23DB76FE0);
  v16 = sub_23DB6F2DC();
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v31 - v23;
  v35 = v4;
  v36 = v5;
  v37 = v3;
  sub_23DB6F68C();
  sub_23DB7043C();
  sub_23DB7062C();
  WitnessTable = swift_getWitnessTable();
  sub_23DB7005C();
  (*(v31 + 8))(v10, v6);
  sub_23DB700EC();
  v25 = sub_23DB701FC();

  v42 = v25;
  sub_23DB6FB3C();
  v40 = WitnessTable;
  v41 = MEMORY[0x277CDFC60];
  v26 = swift_getWitnessTable();
  sub_23DB6FE0C();

  (*(v32 + 8))(v15, v11);
  v27 = sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0);
  v38 = v26;
  v39 = v27;
  swift_getWitnessTable();
  sub_23DAAC170(v21);
  v28 = *(v33 + 8);
  v28(v21, v16);
  sub_23DAAC170(v24);
  return (v28)(v24, v16);
}

uint64_t sub_23DA4ECB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DAAC170(v5);
  sub_23DAAC170(v7);
  return (*(v3 + 8))(v7, a2);
}

double sub_23DA4ED98(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_23DA4EDE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DB7018C();
  result = sub_23DB6F13C();
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_23DA4EE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB7062C();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB58, &qword_23DB76B00);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB60, &unk_23DB76B08);
  v9 = (a2 + *(result + 36));
  *v9 = sub_23DA4EDE0;
  v9[1] = 0;
  v9[2] = v4;
  v9[3] = v6;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23DA4EF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23DA4EF78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DA4EFD8()
{
  result = qword_27E2FCB68;
  if (!qword_27E2FCB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCB60, &unk_23DB76B08);
    sub_23DA17B80(&qword_27E2FCB70, &qword_27E2FCB58, &qword_23DB76B00);
    sub_23DA17B80(&qword_27E2FCB78, &qword_27E2FCB80, qword_23DB76BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCB68);
  }

  return result;
}

uint64_t sub_23DA4F0D8(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FCC30, &qword_23DB76D00);
  return sub_23DB7047C();
}

uint64_t sub_23DA4F13C()
{
  sub_23DB6FB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBE8, &qword_23DB76C98);
  sub_23DA500EC();
  return sub_23DB6F01C();
}

__n128 sub_23DA4F1B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC00, &qword_23DB76CA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v18 - v11;
  *v12 = sub_23DB6F68C();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC08, &qword_23DB76CA8);
  sub_23DA4F3A0(a1, a2, a3, &v12[*(v13 + 44)]);
  sub_23DB6F13C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v12, a4, &qword_27E2FCC00, &qword_23DB76CA0);
  v14 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBE8, &qword_23DB76C98) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_23DA4F3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a2;
  v38 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC10, &qword_23DB76CB0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v35 - v12);
  v14 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for PracticeHeaderView(0);
  *(v13 + *(v16 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  swift_storeEnumTagMultiPayload();
  v17 = *(v16 + 24);

  sub_23DB6F91C();
  type metadata accessor for Page(0);
  sub_23DA5425C(&qword_27E2FCBD8, type metadata accessor for Page);
  *v13 = sub_23DB6F1EC();
  v13[1] = v18;
  v66 = *(a1 + 32);
  v67 = *(a1 + 48);
  v40 = *(a1 + 32);
  *&v41 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBB0, &qword_23DB76C80);
  sub_23DB703AC();
  v35 = v43;
  v19 = v44;
  LOBYTE(v17) = v45;
  v20 = swift_allocObject();
  *(v20 + 16) = v35;
  *(v20 + 32) = v19;
  *(v20 + 40) = v17;
  v21 = (v13 + *(v6 + 44));
  *v21 = v36;
  v21[1] = v20;
  type metadata accessor for Page.Practice(0);
  sub_23DA5425C(&qword_27E2FC3C0, type metadata accessor for Page.Practice);

  v36 = sub_23DB6F1EC();
  v23 = v22;
  sub_23DB6F13C();
  v43 = v66;
  v44 = v67;
  sub_23DB7038C();
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v55[55] = v62;
  *&v55[71] = v63;
  *&v55[87] = v64;
  *&v55[103] = v65;
  *&v55[7] = v59;
  *&v55[23] = v60;
  v58 = 1;
  v56 = 1;
  *&v55[39] = v61;
  v24 = v39;
  sub_23DA0E2B4(v13, v39, &qword_27E2FCC10, &qword_23DB76CB0);
  v25 = v38;
  sub_23DA0E2B4(v24, v38, &qword_27E2FCC10, &qword_23DB76CB0);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC20, &qword_23DB76CF0) + 48);
  *(v42 + 9) = *v55;
  *(&v42[4] + 9) = *&v55[64];
  v27 = (v25 + v26);
  *&v40 = 0;
  BYTE8(v40) = 1;
  *(&v40 + 9) = *v57;
  HIDWORD(v40) = *&v57[3];
  v28 = v36;
  *&v41 = v36;
  *(&v41 + 1) = v23;
  *&v42[0] = 0;
  BYTE8(v42[0]) = 1;
  *(&v42[5] + 9) = *&v55[80];
  *(&v42[6] + 9) = *&v55[96];
  *(&v42[7] + 1) = *&v55[111];
  *(&v42[1] + 9) = *&v55[16];
  *(&v42[2] + 9) = *&v55[32];
  *(&v42[3] + 9) = *&v55[48];
  v29 = v42[5];
  v27[6] = v42[4];
  v27[7] = v29;
  v30 = v42[7];
  v27[8] = v42[6];
  v27[9] = v30;
  v31 = v42[1];
  v27[2] = v42[0];
  v27[3] = v31;
  v32 = v42[3];
  v27[4] = v42[2];
  v27[5] = v32;
  v33 = v41;
  *v27 = v40;
  v27[1] = v33;
  sub_23DA0E2B4(&v40, &v43, &qword_27E2FCC28, &qword_23DB76CF8);
  sub_23DA17988(v13, &qword_27E2FCC10, &qword_23DB76CB0);
  v52 = *&v55[64];
  v53 = *&v55[80];
  *v54 = *&v55[96];
  v48 = *v55;
  v49 = *&v55[16];
  v50 = *&v55[32];
  *&v43 = 0;
  BYTE8(v43) = 1;
  *(&v43 + 9) = *v57;
  HIDWORD(v43) = *&v57[3];
  v44 = v28;
  v45 = v23;
  v46 = 0;
  v47 = 1;
  *&v54[15] = *&v55[111];
  v51 = *&v55[48];
  sub_23DA17988(&v43, &qword_27E2FCC28, &qword_23DB76CF8);
  return sub_23DA17988(v24, &qword_27E2FCC10, &qword_23DB76CB0);
}

uint64_t sub_23DA4F8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB88, &qword_23DB76C58);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42, v4);
  v40 = &v39 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB90, &qword_23DB76C60);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41, v7);
  v9 = (&v39 - v8);
  v10 = sub_23DB6F55C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB98, &qword_23DB76C68);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v39 - v23;
  v51 = *(v2 + 24);
  v25 = *(v2 + 2);
  v50 = v25;
  if (v51 != 1)
  {

    sub_23DB70ACC();
    v29 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v50, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v11 + 8))(v15, v10);
    if (v47 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v49 = *v2;
    v47 = v2[2];
    v48 = *(v2 + 6);
    v30 = swift_allocObject();
    v31 = v2[1];
    *(v30 + 16) = *v2;
    *(v30 + 32) = v31;
    *(v30 + 48) = v2[2];
    *(v30 + 64) = *(v2 + 6);
    *v9 = sub_23DA50084;
    v9[1] = v30;
    swift_storeEnumTagMultiPayload();
    sub_23DA0E2B4(&v50, v44, &qword_27E2FCBA0, &qword_23DB76C70);
    sub_23DA0E2B4(&v49, v44, &qword_27E2FCBA8, &qword_23DB76C78);
    sub_23DA0E2B4(&v47, v44, &qword_27E2FCBB0, &qword_23DB76C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBB8, &qword_23DB76C88);
    sub_23DA17B80(&qword_27E2FCBC0, &qword_27E2FCBB8, &qword_23DB76C88);
    sub_23DA4FF50();
    sub_23DB6F79C();
    goto LABEL_6;
  }

  if (v25)
  {
    goto LABEL_5;
  }

LABEL_3:
  v49 = *v2;
  v47 = v2[2];
  v48 = *(v2 + 6);
  v26 = swift_allocObject();
  v27 = v2[1];
  *(v26 + 16) = *v2;
  *(v26 + 32) = v27;
  *(v26 + 48) = v2[2];
  *(v26 + 64) = *(v2 + 6);
  v45 = sub_23DA4FF20;
  v46 = v26;
  sub_23DA0E2B4(&v50, v44, &qword_27E2FCBA0, &qword_23DB76C70);
  sub_23DA0E2B4(&v49, v44, &qword_27E2FCBA8, &qword_23DB76C78);
  sub_23DA0E2B4(&v47, v44, &qword_27E2FCBB0, &qword_23DB76C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBB8, &qword_23DB76C88);
  sub_23DA17B80(&qword_27E2FCBC0, &qword_27E2FCBB8, &qword_23DB76C88);
  v28 = v40;
  sub_23DB7000C();

  sub_23DA0E2B4(v28, v9, &qword_27E2FCB88, &qword_23DB76C58);
  swift_storeEnumTagMultiPayload();
  sub_23DA4FF50();
  sub_23DB6F79C();
  sub_23DA17988(v28, &qword_27E2FCB88, &qword_23DB76C58);
LABEL_6:
  v32 = *(v2 + 1);
  type metadata accessor for Page(0);
  sub_23DA5425C(&qword_27E2FCBD8, type metadata accessor for Page);

  v33 = sub_23DB6F1EC();
  v35 = v34;
  sub_23DA0E2B4(v24, v21, &qword_27E2FCB98, &qword_23DB76C68);
  v36 = v43;
  sub_23DA0E2B4(v21, v43, &qword_27E2FCB98, &qword_23DB76C68);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBE0, &qword_23DB76C90) + 48));
  *v37 = v33;
  v37[1] = v35;

  sub_23DA17988(v24, &qword_27E2FCB98, &qword_23DB76C68);

  return sub_23DA17988(v21, &qword_27E2FCB98, &qword_23DB76C68);
}

uint64_t sub_23DA4FF14(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_23DA4FF50()
{
  result = qword_27E2FCBC8;
  if (!qword_27E2FCBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCB88, &qword_23DB76C58);
    sub_23DA17B80(&qword_27E2FCBC0, &qword_27E2FCBB8, &qword_23DB76C88);
    sub_23DA5425C(&qword_27E2FCBD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCBC8);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 64);

  return swift_deallocObject();
}

unint64_t sub_23DA500EC()
{
  result = qword_27E2FCBF0;
  if (!qword_27E2FCBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCBE8, &qword_23DB76C98);
    sub_23DA17B80(&qword_27E2FCBF8, &qword_27E2FCC00, &qword_23DB76CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCBF0);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23DA5026C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_23DA4F0D8(a1);
}

uint64_t sub_23DA5029C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23DA5030C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_23DA5044C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata accessor for PracticeGeneralView()
{
  result = qword_27E2FCE80;
  if (!qword_27E2FCE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23DA50764()
{
  result = qword_27E2FCCF8;
  if (!qword_27E2FCCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCCF0, &qword_23DB76E80);
    sub_23DA507F0();
    sub_23DA50924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCCF8);
  }

  return result;
}

unint64_t sub_23DA507F0()
{
  result = qword_27E2FCD00;
  if (!qword_27E2FCD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD08, &qword_23DB76E88);
    sub_23DA5087C();
    sub_23DA508D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD00);
  }

  return result;
}

unint64_t sub_23DA5087C()
{
  result = qword_27E2FCD10;
  if (!qword_27E2FCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD10);
  }

  return result;
}

unint64_t sub_23DA508D0()
{
  result = qword_27E2FCD18;
  if (!qword_27E2FCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD18);
  }

  return result;
}

unint64_t sub_23DA50924()
{
  result = qword_27E2FCD20;
  if (!qword_27E2FCD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD28, &qword_23DB76E90);
    sub_23DA508D0();
    sub_23DA509B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD20);
  }

  return result;
}

unint64_t sub_23DA509B0()
{
  result = qword_27E2FCD30;
  if (!qword_27E2FCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD30);
  }

  return result;
}

unint64_t sub_23DA50A04()
{
  result = qword_27E2FCD48;
  if (!qword_27E2FCD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A90();
    sub_23DA50D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD48);
  }

  return result;
}

unint64_t sub_23DA50A90()
{
  result = qword_27E2FCD50;
  if (!qword_27E2FCD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD58, &qword_23DB76EA0);
    sub_23DA50B1C();
    sub_23DA50C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD50);
  }

  return result;
}

unint64_t sub_23DA50B1C()
{
  result = qword_27E2FCD60;
  if (!qword_27E2FCD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD68, &qword_23DB76EA8);
    sub_23DA50BA8();
    sub_23DA50BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD60);
  }

  return result;
}

unint64_t sub_23DA50BA8()
{
  result = qword_27E2FCD70;
  if (!qword_27E2FCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD70);
  }

  return result;
}

unint64_t sub_23DA50BFC()
{
  result = qword_27E2FCD78;
  if (!qword_27E2FCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD78);
  }

  return result;
}

unint64_t sub_23DA50C50()
{
  result = qword_27E2FCD80;
  if (!qword_27E2FCD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50CDC();
    sub_23DA50D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD80);
  }

  return result;
}

unint64_t sub_23DA50CDC()
{
  result = qword_27E2FCD90;
  if (!qword_27E2FCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD90);
  }

  return result;
}

unint64_t sub_23DA50D30()
{
  result = qword_27E2FCD98;
  if (!qword_27E2FCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD98);
  }

  return result;
}

unint64_t sub_23DA50D84()
{
  result = qword_27E2FCDA0;
  if (!qword_27E2FCDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50E10();
    sub_23DA50F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDA0);
  }

  return result;
}

unint64_t sub_23DA50E10()
{
  result = qword_27E2FCDB0;
  if (!qword_27E2FCDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    sub_23DA50E9C();
    sub_23DA50EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDB0);
  }

  return result;
}

unint64_t sub_23DA50E9C()
{
  result = qword_27E2FCDC0;
  if (!qword_27E2FCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDC0);
  }

  return result;
}

unint64_t sub_23DA50EF0()
{
  result = qword_27E2FCDC8;
  if (!qword_27E2FCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDC8);
  }

  return result;
}

unint64_t sub_23DA50F44()
{
  result = qword_27E2FCDD0;
  if (!qword_27E2FCDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50FD0();
    sub_23DA51024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDD0);
  }

  return result;
}

unint64_t sub_23DA50FD0()
{
  result = qword_27E2FCDE0;
  if (!qword_27E2FCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDE0);
  }

  return result;
}

unint64_t sub_23DA51024()
{
  result = qword_27E2FCDE8;
  if (!qword_27E2FCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDE8);
  }

  return result;
}

unint64_t sub_23DA51078()
{
  result = qword_27E2FCDF0;
  if (!qword_27E2FCDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCCD0, &qword_23DB76E18);
    sub_23DA50764();
    sub_23DA5425C(&qword_27E2FCD38, type metadata accessor for PracticeGeneralView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDF0);
  }

  return result;
}

unint64_t sub_23DA51134()
{
  result = qword_27E2FCDF8;
  if (!qword_27E2FCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDF8);
  }

  return result;
}

unint64_t sub_23DA51188()
{
  result = qword_27E2FCE00;
  if (!qword_27E2FCE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCCE0, &qword_23DB76E28);
    sub_23DA50A04();
    sub_23DA51078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCE00);
  }

  return result;
}

uint64_t sub_23DA512D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23DA513A4@<X0>(void *a1@<X8>)
{
  result = sub_23DB6F3CC();
  *a1 = v3;
  return result;
}

double sub_23DA513F8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Page.PracticeSingleButton(0);
  sub_23DA5425C(&qword_27E2FCE60, type metadata accessor for Page.PracticeSingleButton);
  v2 = sub_23DB6F1EC();
  v4 = v3;
  v5 = [objc_opt_self() mainScreen];
  [v5 bounds];
  v7 = v6;

  if (v7 >= 850.0)
  {
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10)
    {
      v8 = INFINITY;
    }

    else
    {
      v8 = 280.0;
    }
  }

  else
  {
    v8 = 280.0;
  }

  sub_23DB7037C();
  result = v12;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_23DA5163C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23DA516C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DA51794(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DA51844()
{
  sub_23DA518C8();
  if (v0 <= 0x3F)
  {
    sub_23DA5195C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DA518C8()
{
  if (!qword_27E2FCE90)
  {
    type metadata accessor for Page.Practice(255);
    sub_23DA5425C(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v0 = sub_23DB6F21C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FCE90);
    }
  }
}

void sub_23DA5195C()
{
  if (!qword_27E2FCE98)
  {
    sub_23DB6F12C();
    v0 = sub_23DB6F05C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FCE98);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DA519D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_23DA51A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DA51AA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23DA51AF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_23DA51B64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_23DA51BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DA51C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DA51C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DA51CB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23DA51D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DA51D74()
{
  result = qword_27E2FCEA0;
  if (!qword_27E2FCEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCEA8, &qword_23DB77410);
    sub_23DA51134();
    sub_23DA51188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCEA0);
  }

  return result;
}

uint64_t sub_23DA51E00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23DB7044C();
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCE68, &unk_23DB76FE0);
  sub_23DB6F2DC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0);
  return swift_getWitnessTable();
}

void sub_23DA52040(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {

    sub_23DA5208C(a3, a4 & 1);
  }
}

uint64_t sub_23DA5208C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_23DA52098(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {

    sub_23DA4FF14(a3, a4 & 1);
  }
}

uint64_t sub_23DA52164@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PracticeGeneralView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23DA4E05C(v4, a1);
}

uint64_t sub_23DA521D4@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PracticeGeneralView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23DA4E41C(a1, v6, a2);
}

unint64_t sub_23DA52254()
{
  result = qword_27E2FCF20;
  if (!qword_27E2FCF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF18, &qword_23DB79B10);
    sub_23DA522E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCF20);
  }

  return result;
}

unint64_t sub_23DA522E0()
{
  result = qword_27E2FCF28;
  if (!qword_27E2FCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCF28);
  }

  return result;
}

uint64_t objectdestroy_143Tm()
{
  v1 = (type metadata accessor for PracticeGeneralView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23DB6F12C();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  return swift_deallocObject();
}

unint64_t sub_23DA52490()
{
  result = qword_27E2FCF90;
  if (!qword_27E2FCF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC638, &qword_23DB779A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCF90);
  }

  return result;
}

unint64_t sub_23DA5251C()
{
  result = qword_27E2FCF98;
  if (!qword_27E2FCF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF70, &qword_23DB77980);
    sub_23DA525D4();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCF98);
  }

  return result;
}

unint64_t sub_23DA525D4()
{
  result = qword_27E2FCFA0;
  if (!qword_27E2FCFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF68, &qword_23DB77978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC2B8, &qword_23DB74308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC638, &qword_23DB779A0);
    sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308);
    sub_23DA52490();
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCFA0);
  }

  return result;
}

unint64_t sub_23DA5278C()
{
  result = qword_27E2FCFC8;
  if (!qword_27E2FCFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF88, &qword_23DB77998);
    sub_23DA52818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCFC8);
  }

  return result;
}

unint64_t sub_23DA52818()
{
  result = qword_27E2FCFD0;
  if (!qword_27E2FCFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF80, &qword_23DB77990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF70, &qword_23DB77980);
    sub_23DB6FA4C();
    sub_23DA5251C();
    sub_23DA5425C(&qword_27E2FCFB8, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FCFD8, &qword_27E2FCFC0, &qword_23DB77A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCFD0);
  }

  return result;
}

unint64_t sub_23DA5295C()
{
  result = qword_27E2FCFE0;
  if (!qword_27E2FCFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FCFE0);
  }

  return result;
}

uint64_t objectdestroy_154Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_23DA529E8()
{
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE50, &qword_23DB76F00);
  return sub_23DB7039C();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DA52A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_23DA52AD0(_OWORD *a1)
{
  result = 0.0;
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

uint64_t objectdestroy_186Tm()
{
  v1 = *(v0 + 24);

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_23DA52B60()
{
  v1 = *(*(sub_23DB6F2FC() - 8) + 80);
  v2 = *(v0 + 24);

  return sub_23DA52F28();
}

unint64_t sub_23DA52BC4()
{
  result = qword_27E2FD050;
  if (!qword_27E2FD050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD030, &qword_23DB77B20);
    sub_23DA52C7C();
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD050);
  }

  return result;
}

unint64_t sub_23DA52C7C()
{
  result = qword_27E2FD058;
  if (!qword_27E2FD058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD060, &qword_23DB77B80);
    sub_23DA52D34();
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD058);
  }

  return result;
}

unint64_t sub_23DA52D34()
{
  result = qword_27E2FD068;
  if (!qword_27E2FD068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD070, &qword_23DB77B88);
    sub_23DA17B80(&qword_27E2FD078, &qword_27E2FD028, &qword_23DB77B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD068);
  }

  return result;
}

uint64_t objectdestroy_198Tm()
{
  v1 = sub_23DB6F2FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));
  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23DA52EC4()
{
  v1 = *(*(sub_23DB6F2FC() - 8) + 80);

  return sub_23DA433D8(v0 + 16);
}

uint64_t sub_23DA52F28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  sub_23DB7067C();
  sub_23DB7065C();

  MEMORY[0x28223BE20](v0, v1);
  sub_23DB6F19C();
}

unint64_t sub_23DA532D4()
{
  result = qword_27E2FD0A8;
  if (!qword_27E2FD0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD0A0, &qword_23DB77C80);
    sub_23DA53360();
    sub_23DA533B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD0A8);
  }

  return result;
}

unint64_t sub_23DA53360()
{
  result = qword_27E2FD0B0;
  if (!qword_27E2FD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD0B0);
  }

  return result;
}

unint64_t sub_23DA533B4()
{
  result = qword_27E2FD0B8;
  if (!qword_27E2FD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD0B8);
  }

  return result;
}

uint64_t sub_23DA53418@<X0>(void *a1@<X8>)
{
  result = sub_23DB6F3CC();
  *a1 = v3;
  return result;
}

unint64_t sub_23DA5346C()
{
  result = qword_27E2FD138;
  if (!qword_27E2FD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD138);
  }

  return result;
}

unint64_t sub_23DA534C0()
{
  result = qword_27E2FD140;
  if (!qword_27E2FD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD140);
  }

  return result;
}

unint64_t sub_23DA53530()
{
  result = qword_27E2FD180;
  if (!qword_27E2FD180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD178, &qword_23DB77DF0);
    sub_23DA535E8();
    sub_23DA17B80(&qword_27E2FD1B8, &qword_27E2FD1C0, &qword_23DB77E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD180);
  }

  return result;
}

unint64_t sub_23DA535E8()
{
  result = qword_27E2FD188;
  if (!qword_27E2FD188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD190, &qword_23DB77DF8);
    sub_23DA53674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD188);
  }

  return result;
}

unint64_t sub_23DA53674()
{
  result = qword_27E2FD198;
  if (!qword_27E2FD198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD1A0, &qword_23DB77E00);
    sub_23DA5372C();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD198);
  }

  return result;
}

unint64_t sub_23DA5372C()
{
  result = qword_27E2FD1A8;
  if (!qword_27E2FD1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD1B0, &qword_23DB77E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD1A8);
  }

  return result;
}

uint64_t objectdestroy_240Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_23DA4FF14(*(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_23DA53814()
{
  v1 = sub_23DB6F15C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_23DA538C8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_23DA5394C()
{
  result = qword_27E2FD248;
  if (!qword_27E2FD248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD238, &qword_23DB77ED8);
    sub_23DA539D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD248);
  }

  return result;
}

unint64_t sub_23DA539D0()
{
  result = qword_27E2FD250;
  if (!qword_27E2FD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD250);
  }

  return result;
}

uint64_t sub_23DA53A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DA53A8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DA53AEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DA53B30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23DA53B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23DA53BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_23DA53D9C()
{
  result = qword_27E2FD2B8;
  if (!qword_27E2FD2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD2C0, &qword_23DB780C0);
    sub_23DA532D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD2B8);
  }

  return result;
}

uint64_t sub_23DA53F90@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  return sub_23DA449D8(a1);
}

uint64_t objectdestroy_284Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_23DA4FF14(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_23DA54004()
{
  result = qword_27E2FD358;
  if (!qword_27E2FD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD338, &unk_23DB788B0);
    sub_23DA540BC();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD358);
  }

  return result;
}

unint64_t sub_23DA540BC()
{
  result = qword_27E2FD360;
  if (!qword_27E2FD360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD330, &unk_23DB78200);
    sub_23DA54174();
    sub_23DA17B80(&qword_27E2FD378, &qword_27E2FD380, &unk_23DB78950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD360);
  }

  return result;
}

unint64_t sub_23DA54174()
{
  result = qword_27E2FD368;
  if (!qword_27E2FD368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD128, &qword_23DB77D08);
    sub_23DA5425C(&qword_27E2FD370, MEMORY[0x277CDD6F0]);
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD368);
  }

  return result;
}

uint64_t sub_23DA5425C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DA542AC()
{
  v1 = *(v0 + 24);

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_23DA542F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_23DA44EA4();
}

unint64_t sub_23DA54308()
{
  result = qword_27E2FD3A8;
  if (!qword_27E2FD3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD398, &qword_23DB782C8);
    sub_23DA543C0();
    sub_23DA17B80(&qword_27E2FD3D0, &qword_27E2FCEF8, &qword_23DB778D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD3A8);
  }

  return result;
}

unint64_t sub_23DA543C0()
{
  result = qword_27E2FD3B0;
  if (!qword_27E2FD3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD3B8, &qword_23DB782D8);
    sub_23DA54478();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD3B0);
  }

  return result;
}

unint64_t sub_23DA54478()
{
  result = qword_27E2FD3C0;
  if (!qword_27E2FD3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD3C8, &unk_23DB782E0);
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD3C0);
  }

  return result;
}

uint64_t sub_23DA54538()
{
  sub_23DA4FF14(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_23DA54580(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23DA54634()
{
  result = qword_27E2FD430;
  if (!qword_27E2FD430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD438, &qword_23DB78350);
    sub_23DA17B80(&qword_27E2FD440, &qword_27E2FD448, &qword_23DB78358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD430);
  }

  return result;
}

unint64_t sub_23DA54734()
{
  result = qword_27E2FD490;
  if (!qword_27E2FD490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD498, &qword_23DB78398);
    sub_23DA54308();
    sub_23DA17B80(&qword_27E2FD3D8, &qword_27E2FD388, &qword_23DB782B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD490);
  }

  return result;
}

unint64_t sub_23DA547F0()
{
  result = qword_27E2FD4A0;
  if (!qword_27E2FD4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD4A8, &unk_23DB783A0);
    sub_23DA54580(&qword_27E2FD418, &qword_27E2FD410, &qword_23DB78340, sub_23DA54604);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD4A0);
  }

  return result;
}

uint64_t sub_23DA54900(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v2 = sub_23DB6E92C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23DB708DC();
  v14 = v8;
  sub_23DB6E8FC();
  sub_23DA16E70();
  v12[0] = sub_23DB70BAC();
  v9 = *(v3 + 8);
  v9(v7, v2);

  v13 = sub_23DB708DC();
  v14 = v10;
  sub_23DB6E8FC();
  sub_23DB70BAC();
  v9(v7, v2);

  LOBYTE(v2) = sub_23DB3C3FC();

  return v2 & 1;
}

uint64_t sub_23DA54ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23DB6E92C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3;
  v16 = a4;
  sub_23DB6E8FC();
  sub_23DA16E70();
  sub_23DB70BAC();
  v12 = *(v7 + 8);
  v12(v11, v6);
  v15 = sub_23DB708DC();
  v16 = v13;
  sub_23DB6E8FC();
  sub_23DB70BAC();
  v12(v11, v6);

  LOBYTE(v6) = sub_23DB3C3FC();

  return v6 & 1;
}

uint64_t sub_23DA54C74()
{
  v0 = sub_23DB6E92C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23DB708DC();
  v19 = v6;
  sub_23DB6E8FC();
  sub_23DA16E70();
  v7 = sub_23DB70BAC();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v5, v0);

  v18 = v7;
  v19 = v9;
  v16 = sub_23DB708DC();
  v17 = v11;
  sub_23DB6E8FC();
  v12 = sub_23DB70BAC();
  v14 = v13;
  v10(v5, v0);

  v16 = v12;
  v17 = v14;
  LOBYTE(v0) = sub_23DB70BDC();

  return v0 & 1;
}

uint64_t sub_23DA54E3C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = type metadata accessor for PracticeShortTextDefaultView(0);
  v1 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40, v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for PracticeShortTextVOView(0);
  v5 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4B0, &qword_23DB78438);
  v9 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41, v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4B8, &qword_23DB78440);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4C0, &qword_23DB78448);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v35 - v21;
  type metadata accessor for Page.PracticeShortTextFormatted(0);
  if (swift_dynamicCastClass())
  {
    KeyPath = swift_getKeyPath();
    sub_23DA55628(&qword_27E2FD4F0, type metadata accessor for Page.PracticeShortTextFormatted);

    *v17 = sub_23DB6F1EC();
    *(v17 + 1) = v24;
    *(v17 + 2) = KeyPath;
    v17[24] = 0;
    swift_storeEnumTagMultiPayload();
    sub_23DA555D4();
    sub_23DA55628(&qword_27E2FD4D8, type metadata accessor for PracticeShortTextVOView);

    sub_23DB6F79C();
    sub_23DA0E2B4(v22, v12, &qword_27E2FD4C0, &qword_23DB78448);
    swift_storeEnumTagMultiPayload();
    sub_23DA55518();
    sub_23DA55628(&qword_27E2FD4E0, type metadata accessor for PracticeShortTextDefaultView);
    sub_23DB6F79C();

    return sub_23DA17988(v22, &qword_27E2FD4C0, &qword_23DB78448);
  }

  else
  {
    v37 = v12;
    v38 = v18;
    v26 = v40;
    type metadata accessor for Page.PracticeShortTextVO(0);
    v27 = swift_dynamicCastClass();
    v36 = swift_getKeyPath();
    if (v27)
    {
      v28 = *(v39 + 24);

      sub_23DB6F91C();
      sub_23DA55628(&qword_27E2FD4E8, type metadata accessor for Page.PracticeShortTextVO);
      *v8 = sub_23DB6F1EC();
      *(v8 + 1) = v29;
      *(v8 + 2) = v36;
      v8[24] = 0;
      sub_23DA55670(v8, v17, type metadata accessor for PracticeShortTextVOView);
      swift_storeEnumTagMultiPayload();
      sub_23DA555D4();
      sub_23DA55628(&qword_27E2FD4D8, type metadata accessor for PracticeShortTextVOView);
      sub_23DB6F79C();
      sub_23DA0E2B4(v22, v37, &qword_27E2FD4C0, &qword_23DB78448);
      swift_storeEnumTagMultiPayload();
      sub_23DA55518();
      sub_23DA55628(&qword_27E2FD4E0, type metadata accessor for PracticeShortTextDefaultView);
      sub_23DB6F79C();
      sub_23DA17988(v22, &qword_27E2FD4C0, &qword_23DB78448);
      v30 = v8;
      v31 = type metadata accessor for PracticeShortTextVOView;
    }

    else
    {
      v32 = *(v26 + 24);

      sub_23DB6F91C();
      type metadata accessor for Page.PracticeShortText(0);
      sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText);
      *v4 = sub_23DB6F1EC();
      *(v4 + 1) = v33;
      v34 = v37;
      *(v4 + 2) = v36;
      v4[24] = 0;
      sub_23DA55670(v4, v34, type metadata accessor for PracticeShortTextDefaultView);
      swift_storeEnumTagMultiPayload();
      sub_23DA55518();
      sub_23DA55628(&qword_27E2FD4E0, type metadata accessor for PracticeShortTextDefaultView);
      sub_23DB6F79C();
      v30 = v4;
      v31 = type metadata accessor for PracticeShortTextDefaultView;
    }

    return sub_23DA556D8(v30, v31);
  }
}

unint64_t sub_23DA55518()
{
  result = qword_27E2FD4C8;
  if (!qword_27E2FD4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD4C0, &qword_23DB78448);
    sub_23DA555D4();
    sub_23DA55628(&qword_27E2FD4D8, type metadata accessor for PracticeShortTextVOView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD4C8);
  }

  return result;
}

unint64_t sub_23DA555D4()
{
  result = qword_27E2FD4D0;
  if (!qword_27E2FD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD4D0);
  }

  return result;
}

uint64_t sub_23DA55628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DA55670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DA556D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23DA557A4()
{
  if (!qword_27E2FD518)
  {
    v0 = sub_23DB6F05C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FD518);
    }
  }
}

void sub_23DA557F4()
{
  if (!qword_27E2FD520)
  {
    v0 = sub_23DB6F92C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FD520);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DA55A1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t), unint64_t *a6, void (*a7)(uint64_t))
{
  sub_23DA55AC8(319, a4, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    sub_23DA557A4();
    if (v8 <= 0x3F)
    {
      sub_23DA557F4();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DA55AC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_23DA55628(a4, a5);
    v8 = sub_23DB6F21C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_23DA55B70()
{
  result = qword_27E2FD540;
  if (!qword_27E2FD540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD548, &qword_23DB78558);
    sub_23DA55518();
    sub_23DA55628(&qword_27E2FD4E0, type metadata accessor for PracticeShortTextDefaultView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD540);
  }

  return result;
}

uint64_t sub_23DA55C48@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = sub_23DB6F03C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD638, &qword_23DB789B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v46 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD640, &qword_23DB789C0);
  v50 = *(v48 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v48, v15);
  v47 = &v46 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD648, &unk_23DB789C8);
  v49 = *(v51 - 8);
  v17 = *(v49 + 64);
  v19 = MEMORY[0x28223BE20](v51, v18);
  v54 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v53 = &v46 - v22;
  v23 = a1;
  v25 = *a1;
  v24 = a1[1];
  v26 = v23;
  type metadata accessor for Page.PracticeShortText(0);
  sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  sub_23DB6F02C();
  v46 = v26;
  v27 = sub_23DA57618();
  sub_23DA45838(v27 & 1, v13);
  (*(v4 + 8))(v8, v3);
  v28 = sub_23DB6FB5C();
  v29 = &v13[*(v9 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  LODWORD(v4) = *(type metadata accessor for PracticeShortTextDefaultView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v30 = sub_23DA594A8(&qword_27E2FD650, &qword_27E2FD638, &qword_23DB789B8, sub_23DA5952C);
  v31 = v47;
  sub_23DB6FF9C();

  sub_23DA17988(v13, &qword_27E2FD638, &qword_23DB789B8);
  v32 = v46;
  sub_23DB6F8EC();
  v60 = v55;
  v55 = v9;
  v56 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v53;
  v34 = v48;
  sub_23DB700BC();
  (*(v50 + 8))(v31, v34);
  v50 = sub_23DB6F5BC();
  sub_23DA588C8(v32, &v55);
  v35 = v56;
  v48 = v55;
  v36 = v57;
  LOBYTE(v32) = v58;
  v37 = v59;
  LOBYTE(v55) = 1;
  v60 = v59;
  v38 = v49;
  v39 = *(v49 + 16);
  v40 = v54;
  v41 = v51;
  v39(v54, v33, v51);
  v42 = v52;
  v39(v52, v40, v41);
  v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD668, &qword_23DB789D8) + 48)];
  *v43 = v50;
  *(v43 + 1) = 0;
  v43[16] = 1;
  *(v43 + 3) = v48;
  *(v43 + 4) = v35;
  *(v43 + 5) = v36;
  v43[48] = v32;
  v43[49] = v37;
  v44 = *(v38 + 8);

  v44(v53, v41);

  return (v44)(v54, v41);
}

uint64_t sub_23DA561E8()
{
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  *(v0 + 40) = 62;

  sub_23DABC32C();
}

uint64_t sub_23DA56278()
{
  v1 = *(v0 + 8);
  type metadata accessor for Page.PracticeShortTextCapitalization(0);
  v2 = swift_dynamicCastClass();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (v2)
  {
    v3 = sub_23DA54ADC(v6, v7, v6, v7);
  }

  else
  {
    v3 = sub_23DA54900(v6, v7);
  }

  v4 = v3;

  return v4 & 1;
}

uint64_t sub_23DA56404@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD620, &qword_23DB789A0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v27 - v11;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &v12[*(v4 + 72)];
  sub_23DB6F91C();
  *(v12 + 2) = 0x4020000000000000;
  v14 = v1[1];
  v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v16 = *(v14 + v15);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v17 = v28;
  *(v12 + 3) = v16;
  *(v12 + 4) = 0;
  v12[40] = 1;
  v12[41] = v17;
  v18 = &v12[*(v4 + 68)];
  *v18 = sub_23DB6F68C();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD628, &qword_23DB789A8);
  sub_23DA55C48(v1, &v18[*(v19 + 44)]);

  LOBYTE(v18) = sub_23DA56278();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v21 = v28;
  v20 = v29;
  type metadata accessor for Page.PracticeShortText(0);
  sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText);
  v22 = sub_23DB6F1EC();
  v24 = v23;
  sub_23DA0E2B4(v12, v9, &qword_27E2FD620, &qword_23DB789A0);
  sub_23DA0E2B4(v9, a1, &qword_27E2FD620, &qword_23DB789A0);
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD630, &qword_23DB789B0) + 48);

  sub_23DA17988(v12, &qword_27E2FD620, &qword_23DB789A0);
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = v18 & 1;
  *(v25 + 24) = v21;
  *(v25 + 32) = v20;

  return sub_23DA17988(v9, &qword_27E2FD620, &qword_23DB789A0);
}

uint64_t sub_23DA56718@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v47 = a4;
  v7 = sub_23DB6F55C();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD568, &qword_23DB78788);
  v11 = *(*(v44 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v44, v12);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v45 = &v40 - v16;
  type metadata accessor for Page.PracticeShortTextFormatted(0);
  sub_23DA55628(&qword_27E2FD4F0, type metadata accessor for Page.PracticeShortTextFormatted);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  v18 = v48;
  v17 = v49;
  v19 = v50;
  v20 = type metadata accessor for RichTextWrapper.TextFieldDelegate();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtCV28AccessibilitySharedUISupport15RichTextWrapper17TextFieldDelegate__currentPhrase];
  *v22 = v18;
  v22[1] = v17;
  v22[2] = v19;
  v55.receiver = v21;
  v55.super_class = v20;

  v23 = v19;

  v24 = objc_msgSendSuper2(&v55, sel_init);
  if (a3)
  {
    v54 = a2 & 1;
    v25 = a2;
  }

  else
  {

    sub_23DB70ACC();
    v26 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    v27 = v41;
    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v42 + 8))(v27, v43);
    v25 = v54;
  }

  v28 = v45;
  sub_23DA56B5C(v25 & 1, v18, v17, v23, v24, v45);

  v29 = sub_23DB6FB5C();
  v30 = v28 + *(v44 + 36);
  *v30 = v29;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  *(v30 + 40) = 1;
  v44 = sub_23DB6F5BC();
  sub_23DA56FE8(a1, a2, a3 & 1, &v48);
  v32 = v48;
  v31 = v49;
  v33 = v50;
  v34 = v51;
  v35 = v52;
  LOBYTE(v48) = 1;
  v53 = v52;
  v36 = v46;
  sub_23DA0E2B4(v28, v46, &qword_27E2FD568, &qword_23DB78788);
  v37 = v47;
  sub_23DA0E2B4(v36, v47, &qword_27E2FD568, &qword_23DB78788);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD570, &qword_23DB78790) + 48);
  *v38 = v44;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  *(v38 + 24) = v32;
  *(v38 + 32) = v31;
  *(v38 + 40) = v33;
  *(v38 + 48) = v34;
  *(v38 + 49) = v35;

  sub_23DA17988(v28, &qword_27E2FD568, &qword_23DB78788);

  return sub_23DA17988(v36, &qword_27E2FD568, &qword_23DB78788);
}

uint64_t sub_23DA56B5C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a1;
  v59 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD578, &qword_23DB78798);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v53[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD580, &qword_23DB787A0);
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v53[-v18];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD588, &qword_23DB787A8);
  v20 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55, v21);
  v56 = &v53[-v22];
  byte_27E30A720 = 0;
  v23 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD590, &unk_23DB787B0) + 36));
  v24 = *(sub_23DB6F32C() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_23DB6F63C();
  v27 = v23 + v24;
  v28 = v19;
  (*(*(v26 - 8) + 104))(v27, v25, v26);
  __asm { FMOV            V0.2D, #8.0 }

  *v23 = _Q0;
  *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)) = 256;
  *v14 = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;

  v34 = a4;
  v35 = a5;
  v36 = sub_23DB7020C();
  KeyPath = swift_getKeyPath();
  v38 = (v14 + *(v10 + 36));
  *v38 = KeyPath;
  v38[1] = v36;
  sub_23DA58E68();
  sub_23DB6FEAC();
  sub_23DA17988(v14, &qword_27E2FD578, &qword_23DB78798);
  if ((v54 & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  if (qword_27E2FBC08 != -1)
  {
    swift_once();
  }

  sub_23DB7062C();
  sub_23DB6F34C();
  v39 = v56;
  (*(v57 + 32))(v56, v28, v58);
  v40 = &v39[*(v55 + 36)];
  v41 = v65;
  v40[4] = v64;
  v40[5] = v41;
  v40[6] = v66;
  v42 = v61;
  *v40 = v60;
  v40[1] = v42;
  v43 = v63;
  v40[2] = v62;
  v40[3] = v43;
  v44 = sub_23DB6EFDC();
  v46 = v45;
  v48 = v47;
  v49 = v39;
  v50 = v59;
  sub_23DA17A54(v49, v59, &qword_27E2FD588, &qword_23DB787A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5B0, &qword_23DB787F8);
  v52 = v50 + *(result + 36);
  *v52 = v44 & 1;
  *(v52 + 8) = v46;
  *(v52 + 16) = v48 & 1;
  return result;
}

uint64_t sub_23DA56FE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_23DB6F55C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];

  if ((a3 & 1) == 0)
  {
    sub_23DA5208C(a2, 0);
    sub_23DB70ACC();
    v18 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    result = (*(v9 + 8))(v13, v8);
    LOBYTE(a2) = v19[7];
  }

  *a4 = v16;
  *(a4 + 8) = v15;
  *(a4 + 16) = 0;
  *(a4 + 24) = (a2 & 1) == 0;
  *(a4 + 25) = a2 & 1;
  return result;
}

uint64_t sub_23DA57190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v45 = a3;
  v46 = a5;
  v43[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD550, &qword_23DB78650);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v43 - v14;
  v16 = sub_23DB6E9BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v43 - v24;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  sub_23DB6E9EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  sub_23DB6E9EC();
  v26 = sub_23DB6E96C();
  v27 = *(v17 + 8);
  v27(v22, v16);
  v27(v25, v16);
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v28 = &v15[*(v7 + 72)];
  sub_23DB6F91C();
  *(v15 + 2) = 0x4020000000000000;
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v30 = *(a2 + v29);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v31 = v47;
  *(v15 + 3) = v30;
  *(v15 + 4) = 0;
  v15[40] = 1;
  v15[41] = v31;
  v32 = &v15[*(v7 + 68)];
  *v32 = sub_23DB6F68C();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD558, &qword_23DB78730);
  sub_23DA56718(a2, v45, v44 & 1, &v32[*(v33 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v34 = v48;
  v45 = v47;
  type metadata accessor for Page.PracticeShortText(0);
  sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText);
  v35 = sub_23DB6F1EC();
  v37 = v36;
  v38 = v12;
  sub_23DA0E2B4(v15, v12, &qword_27E2FD550, &qword_23DB78650);
  v39 = v12;
  v40 = v46;
  sub_23DA0E2B4(v39, v46, &qword_27E2FD550, &qword_23DB78650);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD560, &qword_23DB78780) + 48);

  sub_23DA17988(v15, &qword_27E2FD550, &qword_23DB78650);
  *v41 = v35;
  *(v41 + 8) = v37;
  *(v41 + 16) = v26 & 1;
  *(v41 + 24) = v45;
  *(v41 + 32) = v34;

  return sub_23DA17988(v38, &qword_27E2FD550, &qword_23DB78650);
}

uint64_t sub_23DA57618()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    v8 = *(v0 + 16);

    sub_23DB70ACC();
    v9 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v7, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v7) = v11[15];
  }

  return v7 & 1;
}

uint64_t sub_23DA57770@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v114 = a2;
  v103 = type metadata accessor for PracticeShortTextVOView(0);
  v109 = *(v103 - 1);
  v3 = *(v109 + 64);
  MEMORY[0x28223BE20](v103, v4);
  v116 = v5;
  v113 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD330, &unk_23DB78200);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v92 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD338, &unk_23DB788B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v92 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD340, &unk_23DB78210);
  v97 = *(v98 - 8);
  v17 = *(v97 + 64);
  MEMORY[0x28223BE20](v98, v18);
  v94 = &v92 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD348, &unk_23DB788C0);
  v20 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93, v21);
  v96 = &v92 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD350, &qword_23DB78220);
  v23 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95, v24);
  v26 = &v92 - v25;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5D0, &qword_23DB788D0);
  v27 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100, v28);
  v99 = &v92 - v29;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5D8, &qword_23DB788D8);
  v102 = *(v104 - 8);
  v30 = *(v102 + 64);
  MEMORY[0x28223BE20](v104, v31);
  v115 = &v92 - v32;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5E0, &qword_23DB788E0);
  v106 = *(v107 - 8);
  v33 = *(v106 + 64);
  MEMORY[0x28223BE20](v107, v34);
  v105 = &v92 - v35;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5E8, &qword_23DB788E8);
  v111 = *(v112 - 8);
  v36 = *(v111 + 64);
  v38 = MEMORY[0x28223BE20](v112, v37);
  v110 = &v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v108 = &v92 - v41;
  v43 = *a1;
  v42 = a1[1];
  type metadata accessor for Page.PracticeShortTextVO(0);
  sub_23DA55628(&qword_27E2FD4E8, type metadata accessor for Page.PracticeShortTextVO);
  v101 = v42;
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  sub_23DB6F02C();
  v44 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD128, &qword_23DB77D08) + 36)];
  v45 = *(sub_23DB6F32C() + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_23DB6F63C();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #8.0 }

  *v44 = _Q0;
  *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  *&v11[*(v7 + 44)] = sub_23DB6F87C();
  v53 = a1;
  if (sub_23DA57618())
  {
    v54 = sub_23DB6FBCC();
  }

  else
  {
    v54 = sub_23DB6FBDC();
  }

  v55 = v54;
  KeyPath = swift_getKeyPath();
  sub_23DA5904C(v11, v16);
  v57 = &v16[*(v12 + 36)];
  *v57 = KeyPath;
  v57[1] = v55;
  sub_23DA54004();
  v58 = v94;
  sub_23DB6FEAC();
  sub_23DA17988(v16, &qword_27E2FD338, &unk_23DB788B0);
  if ((sub_23DA57618() & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  if (qword_27E2FBC08 != -1)
  {
    swift_once();
  }

  sub_23DB7062C();
  sub_23DB6F34C();
  v59 = v96;
  (*(v97 + 32))(v96, v58, v98);
  v60 = (v59 + *(v93 + 36));
  v61 = v128;
  v60[4] = v127;
  v60[5] = v61;
  v60[6] = v129;
  v62 = v124;
  *v60 = v123;
  v60[1] = v62;
  v63 = v126;
  v60[2] = v125;
  v60[3] = v63;
  v64 = swift_getKeyPath();
  sub_23DA17A54(v59, v26, &qword_27E2FD348, &unk_23DB788C0);
  v65 = &v26[*(v95 + 36)];
  *v65 = v64;
  v65[1] = 0x4014000000000000;
  LOBYTE(v64) = sub_23DB6FB5C();
  v66 = v99;
  sub_23DA17A54(v26, v99, &qword_27E2FD350, &qword_23DB78220);
  v67 = v100;
  v68 = v66 + *(v100 + 36);
  *v68 = v64;
  *(v68 + 8) = 0u;
  *(v68 + 24) = 0u;
  *(v68 + 40) = 1;
  v69 = *(v103 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v70 = sub_23DA594A8(&qword_27E2FD5F0, &qword_27E2FD5D0, &qword_23DB788D0, sub_23DA590C4);
  sub_23DB6FF9C();

  sub_23DA17988(v66, &qword_27E2FD5D0, &qword_23DB788D0);
  sub_23DB6F8EC();
  LOBYTE(v121) = v117;
  v103 = type metadata accessor for PracticeShortTextVOView;
  v71 = v113;
  sub_23DA55670(v53, v113, type metadata accessor for PracticeShortTextVOView);
  v72 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v73 = swift_allocObject();
  sub_23DA59248(v71, v73 + v72);
  v117 = v67;
  v118 = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = MEMORY[0x277D839C8];
  v76 = v105;
  v77 = v104;
  v78 = v115;
  sub_23DB700BC();

  (*(v102 + 8))(v78, v77);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v121 = v117;
  v122 = v118;
  sub_23DA55670(v53, v71, v103);
  v79 = swift_allocObject();
  sub_23DA59248(v71, v79 + v72);
  v117 = v77;
  v118 = MEMORY[0x277D839B0];
  v119 = OpaqueTypeConformance2;
  v120 = v75;
  swift_getOpaqueTypeConformance2();
  v80 = v108;
  v81 = v107;
  sub_23DB700BC();

  (*(v106 + 8))(v76, v81);
  v116 = sub_23DB6F5BC();
  sub_23DA588C8(v53, &v117);
  v82 = v117;
  v83 = v118;
  v115 = v119;
  LODWORD(v113) = v120;
  LOBYTE(v76) = BYTE1(v120);
  LOBYTE(v117) = 1;
  LOBYTE(v121) = BYTE1(v120);
  v84 = v111;
  v85 = *(v111 + 16);
  v86 = v110;
  v87 = v112;
  v85(v110, v80, v112);
  v88 = v114;
  v85(v114, v86, v87);
  v89 = &v88[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD618, &qword_23DB78998) + 48)];
  *v89 = v116;
  *(v89 + 1) = 0;
  v89[16] = 1;
  *(v89 + 3) = v82;
  *(v89 + 4) = v83;
  *(v89 + 5) = v115;
  v89[48] = v113;
  v89[49] = v76;
  v90 = *(v84 + 8);

  v90(v80, v87);

  return (v90)(v86, v87);
}

uint64_t sub_23DA58504@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_23DA58584(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA58608()
{
  v0 = *(type metadata accessor for PracticeShortTextVOView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  result = sub_23DB6F8EC();
  if (v3 == 1)
  {
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v2 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v2 + 40) = 62;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DA586D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v2 = sub_23DA54C74();

  if (v2)
  {
    v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (*(v5 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v6 = type metadata accessor for CommandToPractice(0);
      v7 = *(v6 - 8);
      result = v6 - 8;
      if (*(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) + 18))
      {
        return result;
      }

      if (qword_27E2FBBD0 == -1)
      {
        goto LABEL_5;
      }
    }

    swift_once();
LABEL_5:
    v8 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v8 + 40) = 63;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DA588C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8) + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  result = sub_23DA57618();
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = (result & 1) == 0;
  *(a2 + 25) = result & 1;
  return result;
}

uint64_t sub_23DA58950@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5B8, &qword_23DB78800);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v28 - v11;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &v12[*(v4 + 72)];
  sub_23DB6F91C();
  *(v12 + 2) = 0x4020000000000000;
  v14 = v1[1];
  v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v16 = *(v14 + v15);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v17 = v29;
  *(v12 + 3) = v16;
  *(v12 + 4) = 0;
  v12[40] = 1;
  v12[41] = v17;
  v18 = &v12[*(v4 + 68)];
  *v18 = sub_23DB6F68C();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5C0, &qword_23DB78808);
  sub_23DA57770(v1, &v18[*(v19 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v20 = sub_23DA54C74();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v22 = v29;
  v21 = v30;
  type metadata accessor for Page.PracticeShortText(0);
  sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText);
  v23 = sub_23DB6F1EC();
  v25 = v24;
  sub_23DA0E2B4(v12, v9, &qword_27E2FD5B8, &qword_23DB78800);
  sub_23DA0E2B4(v9, a1, &qword_27E2FD5B8, &qword_23DB78800);
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5C8, &unk_23DB788A0) + 48);

  sub_23DA17988(v12, &qword_27E2FD5B8, &qword_23DB78800);
  *v26 = v23;
  *(v26 + 8) = v25;
  *(v26 + 16) = v20 & 1;
  *(v26 + 24) = v22;
  *(v26 + 32) = v21;

  return sub_23DA17988(v9, &qword_27E2FD5B8, &qword_23DB78800);
}

uint64_t sub_23DA58D18@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v4 = v11;
  if (v11 == 2)
  {
    v4 = *(v1 + 16);
  }

  v11 = *(v1 + 24);
  v5 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    v6 = v11;
    KeyPath = swift_getKeyPath();
    v8 = 0x3FF0000000000000;
    if ((v4 & 1) == 0)
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = 0;
    KeyPath = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v5;
  a1[2] = KeyPath;
  a1[3] = 0;
  a1[4] = v8;
  return sub_23DA0E2B4(&v11, &v10, &qword_27E2FC358, &qword_23DB74690);
}

uint64_t sub_23DA58E0C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_23DA58D18(a1);
}

unint64_t sub_23DA58E68()
{
  result = qword_27E2FD598;
  if (!qword_27E2FD598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD578, &qword_23DB78798);
    sub_23DA58F20();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD598);
  }

  return result;
}

unint64_t sub_23DA58F20()
{
  result = qword_27E2FD5A0;
  if (!qword_27E2FD5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD590, &unk_23DB787B0);
    sub_23DA58FD8();
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD5A0);
  }

  return result;
}

unint64_t sub_23DA58FD8()
{
  result = qword_27E2FD5A8;
  if (!qword_27E2FD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD5A8);
  }

  return result;
}

uint64_t sub_23DA5904C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD330, &unk_23DB78200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DA590C4()
{
  result = qword_27E2FD5F8;
  if (!qword_27E2FD5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD350, &qword_23DB78220);
    sub_23DA5917C();
    sub_23DA17B80(&qword_27E2FD608, &qword_27E2FD610, &qword_23DB78990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD5F8);
  }

  return result;
}

unint64_t sub_23DA5917C()
{
  result = qword_27E2FD600;
  if (!qword_27E2FD600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD348, &unk_23DB788C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD338, &unk_23DB788B0);
    sub_23DA54004();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD600);
  }

  return result;
}

uint64_t sub_23DA59248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PracticeShortTextVOView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for PracticeShortTextVOView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  sub_23DA4FF14(*(v3 + 16), *(v3 + 24));
  v5 = v3 + v1[8];
  v6 = sub_23DB6F9BC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0) + 40));

  return swift_deallocObject();
}

uint64_t sub_23DA59434(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PracticeShortTextVOView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23DA594A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23DA5952C()
{
  result = qword_27E2FD658;
  if (!qword_27E2FD658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD320, &qword_23DB781F0);
    sub_23DA590C4();
    sub_23DA595B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD658);
  }

  return result;
}

unint64_t sub_23DA595B8()
{
  result = qword_27E2FD660;
  if (!qword_27E2FD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD660);
  }

  return result;
}

unint64_t sub_23DA59710()
{
  result = qword_27E2FD6A0;
  if (!qword_27E2FD6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD6A8, &qword_23DB78AE0);
    sub_23DA59794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD6A0);
  }

  return result;
}

unint64_t sub_23DA59794()
{
  result = qword_27E2FD6B0;
  if (!qword_27E2FD6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD6B8, &qword_23DB78AE8);
    sub_23DA59820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD6B0);
  }

  return result;
}

unint64_t sub_23DA59820()
{
  result = qword_27E2FD6C0;
  if (!qword_27E2FD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD6C0);
  }

  return result;
}

uint64_t AccessibilityResolvedAction.image.getter()
{
  sub_23DB6EB8C();
  if (v0)
  {
    return sub_23DB702DC();
  }

  sub_23DA59900();
  if (!v2)
  {
    return 0;
  }

  sub_23DB6EBAC();
  return sub_23DB702FC();
}

uint64_t sub_23DA59900()
{
  if ((sub_23DB6EB9C() & 1) == 0)
  {
    return sub_23DB6EBBC();
  }

  v0 = sub_23DB6EBBC();
  if (!v1)
  {
    return sub_23DB6EBBC();
  }

  v2 = v0;
  if (AXSSDeviceHasHomeButton())
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    IsPad = AXDeviceIsPad();
    if (IsPad)
    {
      v3 = 0x4150495F42484E5FLL;
    }

    else
    {
      v3 = 1112034911;
    }

    if (IsPad)
    {
      v4 = 0xE900000000000044;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  MEMORY[0x23EEF6D00](v3, v4);

  return v2;
}

double sub_23DA59A10@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB6F63C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB6F7CC();
  (*(v3 + 104))(v7, *MEMORY[0x277CE0118], v2);
  sub_23DB6FCBC();
  result = *&v11;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_23DA59B90(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23DB6EF6C();
  return sub_23DA59C18;
}

void sub_23DA59C18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23DA59C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DA5AD34();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23DA59CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DA5AD34();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23DA59D2C(uint64_t a1)
{
  v2 = sub_23DA5AD34();

  return MEMORY[0x282133738](a1, v2);
}

double sub_23DA59D78@<D0>(uint64_t a1@<X8>)
{
  sub_23DB7062C();
  sub_23DB6F10C();
  if (qword_27E2FBB90 != -1)
  {
    swift_once();
  }

  v2 = qword_27E30A668;

  v3 = sub_23DB702BC();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v2;
  *(a1 + 56) = v3;
  result = 4.0;
  *(a1 + 64) = xmmword_23DB78B00;
  return result;
}

uint64_t sub_23DA59E7C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6F8, &qword_23DB78BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD700, &qword_23DB78BC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v34 - v18;
  v20 = *(sub_23DB6F32C() + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_23DB6F63C();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #8.0 }

  *v19 = _Q0;
  sub_23DB7062C();
  sub_23DB6F10C();
  v28 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD458, &qword_23DB78BD0) + 36)];
  v29 = v34[2];
  *v28 = v34[1];
  *(v28 + 1) = v29;
  *(v28 + 2) = v34[3];
  if (qword_27E2FBB90 != -1)
  {
    swift_once();
  }

  v30 = qword_27E30A668;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD708, &qword_23DB78BD8) + 36)] = v30;
  *&v19[*(v11 + 36)] = 0x3FECCCCCCCCCCCCDLL;

  *v10 = sub_23DB6F5BC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD710, &unk_23DB78BE0) + 44);
  v34[0] = xmmword_23DB78B10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD718, &qword_23DB78C10);
  sub_23DA52254();
  sub_23DA5AADC();
  sub_23DB704FC();
  sub_23DA0E2B4(v19, v15, &qword_27E2FD700, &qword_23DB78BC8);
  sub_23DA0E2B4(v10, v6, &qword_27E2FD6F8, &qword_23DB78BC0);
  sub_23DA0E2B4(v15, a1, &qword_27E2FD700, &qword_23DB78BC8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD738, &qword_23DB78C20);
  sub_23DA0E2B4(v6, a1 + *(v32 + 48), &qword_27E2FD6F8, &qword_23DB78BC0);
  sub_23DA17988(v10, &qword_27E2FD6F8, &qword_23DB78BC0);
  sub_23DA17988(v19, &qword_27E2FD700, &qword_23DB78BC8);
  sub_23DA17988(v6, &qword_27E2FD6F8, &qword_23DB78BC0);
  return sub_23DA17988(v15, &qword_27E2FD700, &qword_23DB78BC8);
}

uint64_t sub_23DA5A258@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_23DB7062C();
  v6 = v5;
  sub_23DA5A3C4(v3, &v18);
  v33 = v24;
  v34 = v25;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v27 = v18;
  v28 = v19;
  v36[6] = v24;
  v36[7] = v25;
  v36[2] = v20;
  v36[3] = v21;
  v36[4] = v22;
  v36[5] = v23;
  v35 = v26;
  v37 = v26;
  v36[0] = v18;
  v36[1] = v19;
  sub_23DA0E2B4(&v27, v17, &qword_27E2FD740, &qword_23DB78C28);
  sub_23DA17988(v36, &qword_27E2FD740, &qword_23DB78C28);
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v23 = v32;
  v18 = v27;
  v19 = v28;
  v7 = sub_23DB6FB8C();
  result = sub_23DB6EFAC();
  *a2 = v4;
  *(a2 + 8) = v6;
  v9 = v25;
  *(a2 + 112) = v24;
  *(a2 + 128) = v9;
  *(a2 + 144) = v26;
  v10 = v21;
  *(a2 + 48) = v20;
  *(a2 + 64) = v10;
  v11 = v23;
  *(a2 + 80) = v22;
  *(a2 + 96) = v11;
  v12 = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v12;
  *(a2 + 152) = v7;
  *(a2 + 160) = v13;
  *(a2 + 168) = v14;
  *(a2 + 176) = v15;
  *(a2 + 184) = v16;
  *(a2 + 192) = 0;
  return result;
}

uint64_t sub_23DA5A3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_23DB702CC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB702BC();
  v9 = *MEMORY[0x277CE0FE0];
  v36 = v4[13];
  v36(v8, v9, v3);
  v38 = sub_23DB702EC();

  v10 = v4[1];
  v10(v8, v3);
  sub_23DB7062C();
  sub_23DB6F10C();
  v11 = v70;
  v34 = v71;
  v35 = v69;
  v12 = v72;
  v32 = v74;
  v33 = v73;
  v31 = sub_23DB6F89C();
  v82 = v11;
  v81 = v12;
  sub_23DB702BC();
  v36(v8, v9, v3);
  v36 = sub_23DB702EC();

  v10(v8, v3);
  sub_23DB7062C();
  sub_23DB6F10C();
  v13 = v75;
  v14 = v76;
  v15 = v77;
  v16 = v78;
  v17 = v79;
  v18 = v80;
  if (qword_27E2FBB88 != -1)
  {
    swift_once();
  }

  v19 = qword_27E30A660;
  v20 = 1.0;
  v48 = v14;
  if (v37 != 3)
  {
    v20 = 0.0;
  }

  v47 = v16;
  *&v49 = v38;
  *(&v49 + 1) = v35;
  LOBYTE(v50) = v82;
  *(&v50 + 1) = v34;
  LOBYTE(v51[0]) = v81;
  *(&v51[0] + 1) = v33;
  *&v51[1] = v32;
  DWORD2(v51[1]) = v31;
  *(v41 + 12) = *(v51 + 12);
  v40 = v50;
  v41[0] = v51[0];
  *&v39[72] = v49;
  v21 = v36;
  *&v52 = v36;
  *(&v52 + 1) = v13;
  LOBYTE(v53) = v14;
  DWORD1(v53) = *&v68[3];
  *(&v53 + 1) = *v68;
  *(&v53 + 1) = v15;
  LOBYTE(v54) = v16;
  DWORD1(v54) = *&v67[3];
  *(&v54 + 1) = *v67;
  *(&v54 + 1) = v17;
  *&v55 = v18;
  *(&v55 + 1) = qword_27E30A660;
  v56 = v20;
  v46 = v20;
  v44 = v54;
  v45 = v55;
  v42 = v52;
  v43 = v53;
  v22 = v49;
  v23 = v50;
  v24 = v41[1];
  *(a2 + 32) = v51[0];
  *(a2 + 48) = v24;
  *a2 = v22;
  *(a2 + 16) = v23;
  v25 = v42;
  v26 = v43;
  v27 = v44;
  v28 = v45;
  *(a2 + 128) = v46;
  *(a2 + 96) = v27;
  *(a2 + 112) = v28;
  *(a2 + 64) = v25;
  *(a2 + 80) = v26;
  v57[0] = v21;
  v57[1] = v13;
  v58 = v14;
  *v59 = *v68;
  *&v59[3] = *&v68[3];
  v60 = v15;
  v61 = v16;
  *v62 = *v67;
  *&v62[3] = *&v67[3];
  v63 = v17;
  v64 = v18;
  v65 = v19;
  v66 = v20;

  sub_23DA0E2B4(&v49, v39, &qword_27E2FD748, &qword_23DB78C30);
  sub_23DA0E2B4(&v52, v39, &qword_27E2FD750, &qword_23DB78C38);
  sub_23DA17988(v57, &qword_27E2FD750, &qword_23DB78C38);
}

uint64_t sub_23DA5A7E4@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6D0, &qword_23DB78B98);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v29 - v10);
  v12 = sub_23DB7063C();
  v14 = v13;
  sub_23DA59D78(&v41);
  v36 = v43;
  v37 = v44;
  v34 = v41;
  v35 = v42;
  v39[2] = v43;
  v39[3] = v44;
  v39[4] = v45;
  v39[1] = v42;
  v38 = v45;
  v39[0] = v41;
  sub_23DA0E2B4(&v34, v40, &qword_27E2FD6D8, &qword_23DB78BA0);
  sub_23DA17988(v39, &qword_27E2FD6D8, &qword_23DB78BA0);
  v31 = v36;
  v32 = v37;
  v33 = v38;
  v29 = v34;
  v30 = v35;
  *v11 = sub_23DB7062C();
  v11[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6E0, &qword_23DB78BA8);
  sub_23DA59E7C(v11 + *(v16 + 44));
  v17 = sub_23DB6FB4C();
  sub_23DB6EFAC();
  v18 = v11 + *(v3 + 44);
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_23DA0E2B4(v11, v7, &qword_27E2FD6D0, &qword_23DB78B98);
  *&v40[0] = v12;
  *(&v40[0] + 1) = v14;
  v24 = v29;
  v23 = v30;
  v40[2] = v30;
  v40[1] = v29;
  v25 = v31;
  v40[3] = v31;
  v40[4] = v32;
  v26 = v33;
  v40[5] = v33;
  a1[4] = v32;
  a1[5] = v26;
  a1[2] = v23;
  a1[3] = v25;
  *a1 = v40[0];
  a1[1] = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6E8, &qword_23DB78BB0);
  sub_23DA0E2B4(v7, a1 + *(v27 + 64), &qword_27E2FD6D0, &qword_23DB78B98);
  sub_23DA0E2B4(v40, &v41, &qword_27E2FD6F0, &qword_23DB78BB8);
  sub_23DA17988(v11, &qword_27E2FD6D0, &qword_23DB78B98);
  sub_23DA17988(v7, &qword_27E2FD6D0, &qword_23DB78B98);
  *&v41 = v12;
  *(&v41 + 1) = v14;
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v43 = v30;
  v42 = v29;
  return sub_23DA17988(&v41, &qword_27E2FD6F0, &qword_23DB78BB8);
}

uint64_t sub_23DA5AA94@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_23DB7061C();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6C8, &qword_23DB78B90);
  return sub_23DA5A7E4((a1 + *(v3 + 44)));
}

unint64_t sub_23DA5AADC()
{
  result = qword_27E2FD720;
  if (!qword_27E2FD720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD718, &qword_23DB78C10);
    sub_23DA17B80(&qword_27E2FD728, &qword_27E2FD730, &qword_23DB78C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD720);
  }

  return result;
}

unint64_t sub_23DA5AC30()
{
  result = qword_27E2FD778;
  if (!qword_27E2FD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD778);
  }

  return result;
}

unint64_t sub_23DA5AC88()
{
  result = qword_27E2FD780;
  if (!qword_27E2FD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD780);
  }

  return result;
}

unint64_t sub_23DA5ACE0()
{
  result = qword_27E2FD788;
  if (!qword_27E2FD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD788);
  }

  return result;
}

unint64_t sub_23DA5AD34()
{
  result = qword_27E2FD790[0];
  if (!qword_27E2FD790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2FD790);
  }

  return result;
}

uint64_t sub_23DA5AD88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23DA5AE2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if (v65)
  {
    sub_23DA16E70();
    v4 = sub_23DB6FD8C();
    v6 = v5;
    v52 = v8;
    v53 = v4;
    v50 = v7 & 1;
    sub_23DA6D470(v4, v8, v7 & 1);
    v51 = v6;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
  }

  v9 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v64 = v10;
  v65 = v11;
  sub_23DA16E70();

  v12 = sub_23DB6FD8C();
  v14 = v13;
  v16 = v15;
  sub_23DB6FBFC();
  v17 = sub_23DB6FCCC();
  v19 = v18;
  v21 = v20;
  sub_23DA16EC4(v12, v14, v16 & 1);

  sub_23DB6FBAC();
  v47 = sub_23DB6FD3C();
  v48 = v22;
  v40 = v23;
  LOBYTE(v14) = v24;
  v25 = v22;

  sub_23DA16EC4(v17, v19, v21 & 1);

  v46 = sub_23DB6FB5C();
  sub_23DB6EFAC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v64) = v14 & 1;
  LOBYTE(v12) = v14 & 1;
  v45 = v14 & 1;
  type metadata accessor for Page(0);
  sub_23DA6CEEC(&qword_27E2FCBD8, type metadata accessor for Page);
  v49 = sub_23DB6F1EC();
  v35 = v34;
  sub_23DB7062C();
  sub_23DB6F10C();
  v36 = v77;
  v43 = v78;
  v44 = v76;
  LOBYTE(v14) = v79;
  v41 = v81;
  v42 = v80;
  *&v56 = v47;
  *(&v56 + 1) = v40;
  LOBYTE(v57) = v12;
  *(&v57 + 1) = *v55;
  DWORD1(v57) = *&v55[3];
  *(&v57 + 1) = v25;
  LOBYTE(v58) = v46;
  DWORD1(v58) = *&v54[3];
  *(&v58 + 1) = *v54;
  *(&v58 + 1) = v27;
  *v59 = v29;
  *&v59[8] = v31;
  *&v59[16] = v33;
  v59[24] = 0;
  *(v63 + 9) = *&v59[9];
  v62 = v58;
  v63[0] = *v59;
  v60 = v56;
  v61 = v57;
  sub_23DA6EC54(v53, v52, v50, v51);
  sub_23DA0E2B4(&v56, &v64, &qword_27E2FD908, &qword_23DB790D8);

  sub_23DA6EC98(v53, v52, v50, v51);
  *a2 = v53;
  *(a2 + 8) = v52;
  *(a2 + 16) = v50;
  *(a2 + 24) = v51;
  v37 = v63[0];
  *(a2 + 64) = v62;
  *(a2 + 80) = v37;
  *(a2 + 89) = *(v63 + 9);
  v38 = v61;
  *(a2 + 32) = v60;
  *(a2 + 48) = v38;
  *(a2 + 112) = v49;
  *(a2 + 120) = v35;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = v44;
  *(a2 + 152) = v36;
  *(a2 + 160) = v43;
  *(a2 + 168) = v14;
  *(a2 + 176) = v42;
  *(a2 + 184) = v41;

  v64 = v47;
  v65 = v40;
  v66 = v45;
  *v67 = *v55;
  *&v67[3] = *&v55[3];
  v68 = v48;
  v69 = v46;
  *v70 = *v54;
  *&v70[3] = *&v54[3];
  v71 = v27;
  v72 = v29;
  v73 = v31;
  v74 = v33;
  v75 = 0;
  sub_23DA17988(&v64, &qword_27E2FD908, &qword_23DB790D8);
  return sub_23DA6EC98(v53, v52, v50, v51);
}

uint64_t sub_23DA5B284@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _OWORD *a4@<X8>)
{
  LODWORD(v4) = a3;
  v150 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v143 = (v137 - v10);
  v11 = type metadata accessor for SubPageButtonsView(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v147 = (v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBD8, &qword_23DB79580);
  v15 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155, v16);
  v146 = v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v149 = v137 - v20;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBE0, &qword_23DB79588);
  v21 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153, v22);
  v154 = v137 - v23;
  v142 = type metadata accessor for SubPageCompactButtonsView(0);
  v24 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142, v25);
  v145 = (v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBE8, &qword_23DB79590);
  v27 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152, v28);
  v144 = v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v148 = v137 - v32;
  v33 = sub_23DB6F55C();
  v140 = *(v33 - 8);
  v141 = v33;
  v34 = *(v140 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v139 = v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBF0, &qword_23DB79598);
  v156 = *(v37 - 8);
  v157 = v37;
  v38 = *(v156 + 64);
  MEMORY[0x28223BE20](v37, v39);
  v151 = v137 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBF8, &qword_23DB795A0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8, v43);
  v159 = v137 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46);
  v158 = v137 - v47;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (*(&v187 + 1))
  {
    sub_23DA16E70();
    v48 = sub_23DB6FD8C();
    v50 = v49;
    v138 = v4;
    v52 = v51;
    sub_23DB6FBFC();
    v53 = sub_23DB6FCCC();
    v55 = v54;
    v57 = v56;
    v137[1] = a1;
    sub_23DA16EC4(v48, v50, v52 & 1);

    sub_23DB6FC3C();
    v58 = sub_23DB6FD3C();
    v4 = v59;
    LOBYTE(v50) = v60;
    v137[0] = v61;

    sub_23DA16EC4(v53, v55, v57 & 1);

    LOBYTE(v48) = sub_23DB6FB5C();
    sub_23DB6EFAC();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    LOBYTE(v162) = v50 & 1;
    v160 = 0;
    LOBYTE(v53) = sub_23DB6FB2C();
    v70 = [objc_opt_self() currentDevice];
    [v70 userInterfaceIdiom];

    sub_23DB6EFAC();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    LOBYTE(v177[0]) = 0;
    sub_23DB7063C();
    sub_23DB6F34C();
    *&v161[55] = v186[12];
    *&v161[71] = v186[13];
    *&v161[87] = v186[14];
    *&v161[103] = v186[15];
    *&v161[7] = v186[9];
    *&v161[23] = v186[10];
    *&v161[39] = v186[11];
    KeyPath = swift_getKeyPath();
    *&v179 = v58;
    *(&v179 + 1) = v4;
    LOBYTE(v4) = v138;
    LOBYTE(v180) = v50 & 1;
    *(&v180 + 1) = v137[0];
    LOBYTE(v181) = v48;
    *(&v181 + 1) = v63;
    *&v182 = v65;
    *(&v182 + 1) = v67;
    *&v183 = v69;
    BYTE8(v183) = 0;
    LOBYTE(v184) = v53;
    *(&v184 + 1) = v72;
    *&v185 = v74;
    *(&v185 + 1) = v76;
    *&v186[0] = v78;
    BYTE8(v186[0]) = 0;
    *(&v186[4] + 9) = *&v161[64];
    *(&v186[5] + 9) = *&v161[80];
    *(&v186[6] + 9) = *&v161[96];
    *(v186 + 9) = *v161;
    *(&v186[1] + 9) = *&v161[16];
    *(&v186[2] + 9) = *&v161[32];
    *(&v186[3] + 9) = *&v161[48];
    *(&v186[7] + 1) = *&v161[111];
    *&v186[8] = KeyPath;
    BYTE8(v186[8]) = 0;
    nullsub_1(&v179);
    v199 = v186[5];
    v200 = v186[6];
    v201[0] = v186[7];
    *(v201 + 9) = *(&v186[7] + 9);
    v195 = v186[1];
    v196 = v186[2];
    v197 = v186[3];
    v198 = v186[4];
    v191 = v183;
    v192 = v184;
    v193 = v185;
    v194 = v186[0];
    v187 = v179;
    v188 = v180;
    v189 = v181;
    v190 = v182;
  }

  else
  {
    sub_23DA6EAA8(&v187);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v80 = v179;
  if (v179)
  {
    if (v4)
    {
      v81 = v158;
      if ((v150 & 1) == 0)
      {
LABEL_7:
        v82 = swift_getKeyPath();
        v83 = v143;
        *v143 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
        swift_storeEnumTagMultiPayload();
        v84 = v147;
        sub_23DA5C0D8(v80, v83, v147);
        LOBYTE(v83) = sub_23DB6FB2C();
        v85 = [objc_opt_self() currentDevice];
        [v85 userInterfaceIdiom];

        sub_23DB6EFAC();
        v87 = v86;
        v89 = v88;
        v91 = v90;
        v93 = v92;
        v94 = v146;
        sub_23DA6E464(v84, v146, type metadata accessor for SubPageButtonsView);
        v95 = v94 + *(v155 + 36);
        *v95 = v83;
        *(v95 + 8) = v87;
        *(v95 + 16) = v89;
        *(v95 + 24) = v91;
        *(v95 + 32) = v93;
        *(v95 + 40) = 0;
        v96 = &qword_27E2FDBD8;
        v97 = &qword_23DB79580;
        v98 = v149;
        sub_23DA17A54(v94, v149, &qword_27E2FDBD8, &qword_23DB79580);
        sub_23DA0E2B4(v98, v154, &qword_27E2FDBD8, &qword_23DB79580);
        swift_storeEnumTagMultiPayload();
        sub_23DA6EADC();
        sub_23DA6EB98();
        v99 = v151;
LABEL_11:
        sub_23DB6F79C();
        sub_23DA17988(v98, v96, v97);
        sub_23DA17A54(v99, v81, &qword_27E2FDBF0, &qword_23DB79598);
        v100 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v101 = v150;

      sub_23DB70ACC();
      v102 = sub_23DB6FAFC();
      sub_23DB6EBCC();

      v103 = v139;
      sub_23DB6F54C();
      swift_getAtKeyPath();
      sub_23DA4FF14(v101, 0);
      (*(v140 + 8))(v103, v141);
      v81 = v158;
      if (v179 != 1)
      {
        goto LABEL_7;
      }
    }

    v104 = swift_getKeyPath();
    v105 = v142;
    v106 = v145;
    *(v145 + *(v142 + 24)) = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
    swift_storeEnumTagMultiPayload();
    *v106 = v80;
    type metadata accessor for NavigationModel();
    sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel);
    v106[1] = sub_23DB6F39C();
    v106[2] = v107;
    v108 = *(v105 + 28);
    *(v106 + v108) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v108) = sub_23DB6FB2C();
    v109 = [objc_opt_self() currentDevice];
    [v109 userInterfaceIdiom];

    sub_23DB6EFAC();
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v118 = v144;
    sub_23DA6E464(v106, v144, type metadata accessor for SubPageCompactButtonsView);
    v119 = v118 + *(v152 + 36);
    *v119 = v108;
    *(v119 + 8) = v111;
    *(v119 + 16) = v113;
    *(v119 + 24) = v115;
    *(v119 + 32) = v117;
    *(v119 + 40) = 0;
    v96 = &qword_27E2FDBE8;
    v97 = &qword_23DB79590;
    v98 = v148;
    sub_23DA17A54(v118, v148, &qword_27E2FDBE8, &qword_23DB79590);
    sub_23DA0E2B4(v98, v154, &qword_27E2FDBE8, &qword_23DB79590);
    swift_storeEnumTagMultiPayload();
    sub_23DA6EADC();
    sub_23DA6EB98();
    v99 = v151;
    goto LABEL_11;
  }

  v100 = 1;
  v81 = v158;
LABEL_12:
  (*(v156 + 56))(v81, v100, 1, v157);
  v174 = v199;
  v175 = v200;
  v176[0] = v201[0];
  *(v176 + 9) = *(v201 + 9);
  v170 = v195;
  v171 = v196;
  v172 = v197;
  v173 = v198;
  v166 = v191;
  v167 = v192;
  v168 = v193;
  v169 = v194;
  v162 = v187;
  v163 = v188;
  v164 = v189;
  v165 = v190;
  v120 = v159;
  sub_23DA0E2B4(v81, v159, &qword_27E2FDBF8, &qword_23DB795A0);
  v121 = v175;
  v177[12] = v174;
  v177[13] = v175;
  v122 = v176[0];
  v178[0] = v176[0];
  *(v178 + 9) = *(v176 + 9);
  v123 = v170;
  v124 = v171;
  v177[8] = v170;
  v177[9] = v171;
  v125 = v172;
  v126 = v173;
  v177[10] = v172;
  v177[11] = v173;
  v127 = v166;
  v128 = v167;
  v177[4] = v166;
  v177[5] = v167;
  v129 = v168;
  v130 = v169;
  v177[6] = v168;
  v177[7] = v169;
  v131 = v162;
  v132 = v163;
  v177[0] = v162;
  v177[1] = v163;
  v133 = v164;
  v134 = v165;
  v177[2] = v164;
  v177[3] = v165;
  a4[12] = v174;
  a4[13] = v121;
  a4[14] = v122;
  *(a4 + 233) = *(v176 + 9);
  a4[8] = v123;
  a4[9] = v124;
  a4[10] = v125;
  a4[11] = v126;
  a4[4] = v127;
  a4[5] = v128;
  a4[6] = v129;
  a4[7] = v130;
  *a4 = v131;
  a4[1] = v132;
  a4[2] = v133;
  a4[3] = v134;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDC00, &qword_23DB79638);
  sub_23DA0E2B4(v120, a4 + *(v135 + 48), &qword_27E2FDBF8, &qword_23DB795A0);
  sub_23DA0E2B4(v177, &v179, &qword_27E2FDC08, &qword_23DB79640);
  sub_23DA17988(v81, &qword_27E2FDBF8, &qword_23DB795A0);
  sub_23DA17988(v120, &qword_27E2FDBF8, &qword_23DB795A0);
  v186[5] = v174;
  v186[6] = v175;
  v186[7] = v176[0];
  *(&v186[7] + 9) = *(v176 + 9);
  v186[1] = v170;
  v186[2] = v171;
  v186[3] = v172;
  v186[4] = v173;
  v183 = v166;
  v184 = v167;
  v185 = v168;
  v186[0] = v169;
  v179 = v162;
  v180 = v163;
  v181 = v164;
  v182 = v165;
  return sub_23DA17988(&v179, &qword_27E2FDC08, &qword_23DB79640);
}

uint64_t sub_23DA5C0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_23DB7057C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a3 = a1;
  type metadata accessor for NavigationModel();
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel);
  a3[1] = sub_23DB6F39C();
  a3[2] = v12;
  v13 = type metadata accessor for SubPageButtonsView(0);
  sub_23DA17A54(a2, a3 + *(v13 + 24), &qword_27E2FCE78, &unk_23DB791B0);
  v14 = [objc_opt_self() mainScreen];
  [v14 bounds];
  v16 = v15;

  if (v16 >= 850.0 && (v17 = [objc_opt_self() currentDevice], v18 = objc_msgSend(v17, sel_userInterfaceIdiom), v17, v18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDC30, &qword_23DB79648);
    v19 = *(sub_23DB7058C() - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v28[1] = 2 * *(v19 + 72);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_23DB76A80;
    v29 = vdupq_n_s64(0x406E800000000000uLL);
    *v11 = v29;
    v22 = *MEMORY[0x277CDF100];
    v23 = *(v7 + 104);
    v23(v11, v22, v6);
    sub_23DB7059C();
    *v11 = v29;
    v23(v11, v22, v6);
    sub_23DB7059C();
    *v11 = v29;
    v23(v11, v22, v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDC30, &qword_23DB79648);
    v24 = *(sub_23DB7058C() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_23DB73BA0;
    *v11 = vdupq_n_s64(0x406E800000000000uLL);
    (*(v7 + 104))(v11, *MEMORY[0x277CDF100], v6);
  }

  result = sub_23DB7059C();
  *(a3 + *(v13 + 28)) = v21;
  return result;
}

uint64_t sub_23DA5C508()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {
    v8 = *(v0 + 32);

    sub_23DB70ACC();
    v9 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v7, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v7) = v11[15];
  }

  return v7 & 1;
}

uint64_t sub_23DA5C660@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_23DB6F8DC();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v67 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_23DB6F31C();
  v61 = *(v59 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v59, v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeaderBigView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v65 = v14;
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA48, &qword_23DB793A0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v56 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA40, &qword_23DB79398);
  v22 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62, v23);
  v57 = &v56 - v24;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA28, &qword_23DB79390);
  v25 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70, v26);
  v63 = &v56 - v27;
  v66 = type metadata accessor for HeaderBigView;
  v58 = v1;
  v60 = v15;
  sub_23DA6D398(v1, v15, type metadata accessor for HeaderBigView);
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v29 = swift_allocObject();
  v64 = type metadata accessor for HeaderBigView;
  sub_23DA6E464(v15, v29 + v28, type metadata accessor for HeaderBigView);
  v72 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA88, &qword_23DB793B8);
  sub_23DA6E528();
  sub_23DB703CC();
  sub_23DB6F30C();
  sub_23DA17B80(&qword_27E2FDA50, &qword_27E2FDA48, &qword_23DB793A0);
  sub_23DA6CEEC(&qword_27E2FD1D0, MEMORY[0x277CDDB18]);
  v30 = v57;
  v31 = v59;
  sub_23DB6FE2C();
  (*(v61 + 8))(v9, v31);
  (*(v17 + 8))(v21, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_23DB78D60;
  *(v32 + 32) = sub_23DB700EC();
  sub_23DB700EC();
  v33 = sub_23DB701FC();

  *(v32 + 40) = v33;
  sub_23DB7073C();
  sub_23DB7074C();
  MEMORY[0x23EEF6910](v32);
  sub_23DB6F1DC();
  v34 = v30 + *(v62 + 36);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA60, &qword_23DB793A8);
  v36 = (v34 + *(v35 + 52));
  v37 = *(sub_23DB6F32C() + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_23DB6F63C();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #8.0 }

  *v36 = _Q0;
  v45 = v63;
  v46 = v76;
  *v34 = v75;
  *(v34 + 16) = v46;
  *(v34 + 32) = v77;
  *(v34 + *(v35 + 56)) = 256;
  v47 = v67;
  sub_23DB6F8BC();
  v48 = v58;
  v49 = v60;
  sub_23DA6D398(v58, v60, v66);
  v50 = swift_allocObject();
  sub_23DA6E464(v49, v50 + v28, v64);
  sub_23DA6E154();
  sub_23DB6FF6C();

  (*(v68 + 8))(v47, v69);
  sub_23DA17988(v30, &qword_27E2FDA40, &qword_23DB79398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_23DB73BA0;
  v52 = *(v48 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v53 = v74;
  if (v74)
  {
    v54 = v73;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v54 = (*(*qword_27E30A6D8 + 304))(0xD000000000000024, 0x800000023DB87B30);
  }

  *(v51 + 32) = v54;
  *(v51 + 40) = v53;
  sub_23DA16E70();
  sub_23DB6F2BC();

  return sub_23DA17988(v45, &qword_27E2FDA28, &qword_23DB79390);
}

double sub_23DA5CE84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F68C();
  v22 = 1;
  sub_23DA5D0C4(a1, __src);
  memcpy(__dst, __src, 0x251uLL);
  memcpy(v25, __src, 0x251uLL);
  sub_23DA0E2B4(__dst, v19, &qword_27E2FDAD8, &qword_23DB79430);
  sub_23DA17988(v25, &qword_27E2FDAD8, &qword_23DB79430);
  memcpy(&v21[7], __dst, 0x251uLL);
  v5 = v22;
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v23[55] = *&__src[48];
  *&v23[71] = *&__src[64];
  *&v23[87] = *&__src[80];
  *&v23[103] = *&__src[96];
  *&v23[7] = *__src;
  *&v23[23] = *&__src[16];
  *&v23[39] = *&__src[32];
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA88, &qword_23DB793B8) + 36));
  v7 = *(sub_23DB6F32C() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_23DB6F63C();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC0, &unk_23DB793D0) + 36)] = 0;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v21, 0x258uLL);
  v15 = *&v23[80];
  *(a2 + 681) = *&v23[64];
  *(a2 + 697) = v15;
  *(a2 + 713) = *&v23[96];
  *(a2 + 728) = *&v23[111];
  v16 = *&v23[16];
  *(a2 + 617) = *v23;
  *(a2 + 633) = v16;
  result = *&v23[32];
  v18 = *&v23[48];
  *(a2 + 649) = *&v23[32];
  *(a2 + 665) = v18;
  return result;
}

uint64_t sub_23DA5D0C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_23DB6F25C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(type metadata accessor for HeaderBigView(0) + 32);
  sub_23DB330E8();
  LOBYTE(v10) = sub_23DB6F24C();
  (*(v5 + 8))(v9, v4);
  if (v10)
  {
    *v47 = sub_23DB6F68C();
    *&v47[8] = 0;
    v47[16] = 1;
    sub_23DA6E8C4();
  }

  else
  {
    *v47 = sub_23DB6F5BC();
    *&v47[8] = 0;
    v47[16] = 1;
    sub_23DA6E84C();
  }

  v11 = sub_23DB7068C();

  sub_23DA5D8B8(a1, v47);
  memcpy(v73, v47, 0x149uLL);
  memcpy(v74, v47, 0x149uLL);
  sub_23DA0E2B4(v73, v42, &qword_27E2FDAE8, &unk_23DB79438);
  sub_23DA17988(v74, &qword_27E2FDAE8, &unk_23DB79438);

  memcpy(v75, v73, 0x149uLL);
  v39 = sub_23DB6FB4C();
  v75[336] = 1;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v13 = sub_23DA54900(0, 0xE000000000000000);

  v40 = v11;
  if (v13)
  {
    sub_23DA6E8A0(&v61);
  }

  else
  {
    v38 = a2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    sub_23DA16E70();
    v14 = sub_23DB6FD8C();
    v16 = v15;
    v18 = v17;
    *v47 = sub_23DB701AC();
    v19 = sub_23DB6FCEC();
    v21 = v20;
    v23 = v22;
    sub_23DA16EC4(v14, v16, v18 & 1);

    sub_23DB6FC5C();
    v24 = sub_23DB6FD3C();
    v26 = v25;
    LOBYTE(v16) = v27;
    v29 = v28;

    sub_23DA16EC4(v19, v21, v23 & 1);

    sub_23DB7063C();
    sub_23DB6F34C();
    v30 = v16 & 1;
    LOBYTE(v45[0]) = v16 & 1;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_23DB78D60;
    LOBYTE(v16) = sub_23DB6FB2C();
    *(v32 + 32) = v16;
    v33 = sub_23DB6FB5C();
    *(v32 + 33) = v33;
    v34 = sub_23DB6FB7C();
    sub_23DB6FB7C();
    if (sub_23DB6FB7C() != v16)
    {
      v34 = sub_23DB6FB7C();
    }

    sub_23DB6FB7C();
    if (sub_23DB6FB7C() != v33)
    {
      v34 = sub_23DB6FB7C();
    }

    v11 = v40;
    LOBYTE(v42[0]) = 1;
    *v47 = v24;
    *&v47[8] = v26;
    v47[16] = v30;
    *&v47[96] = v58;
    *&v47[112] = v59;
    *&v47[128] = v60;
    *&v47[32] = v54;
    *&v47[48] = v55;
    *&v47[64] = v56;
    *&v47[80] = v57;
    *&v47[24] = v29;
    *&v47[144] = KeyPath;
    v47[152] = 0;
    v47[160] = v34;
    memset(&v47[168], 0, 32);
    v47[200] = 1;
    nullsub_1(v47);
    v71 = *&v47[160];
    v72[0] = *&v47[176];
    *(v72 + 9) = *&v47[185];
    v67 = *&v47[96];
    v68 = *&v47[112];
    v70 = *&v47[144];
    v69 = *&v47[128];
    v63 = *&v47[32];
    v64 = *&v47[48];
    v66 = *&v47[80];
    v65 = *&v47[64];
    v62 = *&v47[16];
    v61 = *v47;
    a2 = v38;
  }

  v45[10] = v71;
  v46[0] = v72[0];
  *(v46 + 9) = *(v72 + 9);
  v45[6] = v67;
  v45[7] = v68;
  v45[9] = v70;
  v45[8] = v69;
  v45[2] = v63;
  v45[3] = v64;
  v45[5] = v66;
  v45[4] = v65;
  v45[1] = v62;
  v45[0] = v61;
  v42[0] = v11;
  memcpy(&v42[1], v75, 0x149uLL);
  *(&v42[42] + 1) = v77[0];
  HIDWORD(v42[42]) = *(v77 + 3);
  v35 = v39;
  LOBYTE(v42[43]) = v39;
  *(&v42[43] + 1) = *v76;
  HIDWORD(v42[43]) = *&v76[3];
  memset(&v42[44], 0, 32);
  LOBYTE(v42[48]) = 1;
  memcpy(v41, v42, 0x181uLL);
  v43[10] = v71;
  v44[0] = v72[0];
  *(v44 + 9) = *(v72 + 9);
  v43[6] = v67;
  v43[7] = v68;
  v43[9] = v70;
  v43[8] = v69;
  v43[2] = v63;
  v43[3] = v64;
  v43[5] = v66;
  v43[4] = v65;
  v43[1] = v62;
  v43[0] = v61;
  *&v41[69] = v71;
  *&v41[71] = v72[0];
  *(&v41[72] + 1) = *(v72 + 9);
  *&v41[61] = v67;
  *&v41[63] = v68;
  *&v41[65] = v69;
  *&v41[67] = v70;
  *&v41[53] = v63;
  *&v41[55] = v64;
  *&v41[57] = v65;
  *&v41[59] = v66;
  *&v41[49] = v61;
  *&v41[51] = v62;
  memcpy(a2, v41, 0x251uLL);
  sub_23DA0E2B4(v42, v47, &qword_27E2FDAF0, &qword_23DB79448);
  sub_23DA0E2B4(v43, v47, &qword_27E2FDAF8, &qword_23DB79450);
  sub_23DA17988(v45, &qword_27E2FDAF8, &qword_23DB79450);
  *v47 = v40;
  memcpy(&v47[8], v75, 0x149uLL);
  *v48 = v77[0];
  *&v48[3] = *(v77 + 3);
  v49 = v35;
  *v50 = *v76;
  *&v50[3] = *&v76[3];
  v51 = 0u;
  v52 = 0u;
  v53 = 1;
  return sub_23DA17988(v47, &qword_27E2FDAF0, &qword_23DB79448);
}

uint64_t sub_23DA5D8B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v3 = sub_23DB6F25C();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v59 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23DB702CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = a1;
  v13 = (*(a1 + 8) + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  if (v13[1])
  {
    v14 = *v13;
  }

  sub_23DB702DC();
  (*(v8 + 104))(v12, *MEMORY[0x277CE0FE0], v7);
  v66 = sub_23DB702EC();

  (*(v8 + 8))(v12, v7);
  v63 = sub_23DB701AC();
  sub_23DB7062C();
  sub_23DB6F10C();
  v139 = 1;
  v65 = sub_23DB6FB2C();
  v140 = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v15 = v101;
  if (v101)
  {
    v16 = v100;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v16 = (*(*qword_27E30A6D8 + 304))(0xD000000000000024, 0x800000023DB87B30);
  }

  v100 = v16;
  v101 = v15;
  sub_23DA16E70();
  v17 = sub_23DB6FD8C();
  v19 = v18;
  v21 = v20;
  v100 = sub_23DB701AC();
  v22 = sub_23DB6FCEC();
  v24 = v23;
  v26 = v25;
  sub_23DA16EC4(v17, v19, v21 & 1);

  sub_23DB6FBDC();
  v27 = sub_23DB6FD3C();
  v29 = v28;
  LOBYTE(v19) = v30;

  sub_23DA16EC4(v22, v24, v26 & 1);

  v31 = sub_23DB6FD1C();
  v56 = v32;
  v57 = v31;
  LOBYTE(v17) = v33;
  v58 = v34;
  sub_23DA16EC4(v27, v29, v19 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v35 = v17 & 1;
  v130 = v17 & 1;
  KeyPath = swift_getKeyPath();
  v55 = sub_23DB6FB6C();
  v37 = type metadata accessor for HeaderBigView(0);
  v38 = v59;
  v39 = v60 + *(v37 + 32);
  sub_23DB330E8();
  LOBYTE(v39) = sub_23DB6F24C();
  (*(v61 + 8))(v38, v62);
  if ((v39 & 1) != 0 && qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v131 = 0;
  v82[0] = v66;
  v82[1] = 0;
  LOWORD(v83) = 1;
  *(&v83 + 2) = v137;
  WORD3(v83) = v138;
  v48 = v63;
  *(&v83 + 1) = v63;
  v85 = v135;
  v86 = v136;
  v84 = v134;
  LOBYTE(v87[0]) = v65;
  DWORD1(v87[0]) = *(v141 + 3);
  *(v87 + 1) = v141[0];
  *(&v87[1] + 8) = 0u;
  *(v87 + 8) = 0u;
  BYTE8(v87[2]) = 1;
  v81[2] = v134;
  v81[3] = v135;
  v81[0] = v66;
  v81[1] = v83;
  *(&v81[6] + 9) = *(&v87[1] + 9);
  v81[4] = v136;
  v81[5] = v87[0];
  v50 = v56;
  v49 = v57;
  *&v88 = v57;
  *(&v88 + 1) = v56;
  LOBYTE(v89) = v35;
  DWORD1(v89) = *&v129[3];
  *(&v89 + 1) = *v129;
  v51 = v58;
  *(&v89 + 1) = v58;
  v90 = v122;
  v91 = v123;
  v95 = v127;
  v96 = v128;
  v93 = v125;
  v94 = v126;
  v92 = v124;
  *&v97 = KeyPath;
  BYTE8(v97) = 0;
  HIDWORD(v97) = *&v133[3];
  *(&v97 + 9) = *v133;
  v52 = v55;
  LOBYTE(v98) = v55;
  DWORD1(v98) = *&v132[3];
  *(&v98 + 1) = *v132;
  *(&v98 + 1) = v40;
  *&v99[0] = v42;
  *(&v99[0] + 1) = v44;
  *&v99[1] = v46;
  BYTE8(v99[1]) = 0;
  *(&v81[19] + 9) = *(v99 + 9);
  v81[6] = v87[1];
  v81[8] = v88;
  v81[9] = v89;
  v81[11] = v123;
  v81[12] = v124;
  v81[10] = v122;
  v81[15] = v127;
  v81[16] = v128;
  v81[13] = v125;
  v81[14] = v126;
  v81[18] = v98;
  v81[19] = v99[0];
  v81[17] = v97;
  memcpy(v64, v81, 0x149uLL);
  v100 = v49;
  v101 = v50;
  v102 = v35;
  *v103 = *v129;
  *&v103[3] = *&v129[3];
  v104 = v51;
  v109 = v126;
  v110 = v127;
  v111 = v128;
  v105 = v122;
  v106 = v123;
  v108 = v125;
  v107 = v124;
  v112 = KeyPath;
  v113 = 0;
  *&v114[3] = *&v133[3];
  *v114 = *v133;
  v115 = v52;
  *&v116[3] = *&v132[3];
  *v116 = *v132;
  v117 = v41;
  v118 = v43;
  v119 = v45;
  v120 = v47;
  v121 = 0;
  sub_23DA0E2B4(v82, v67, &qword_27E2FDB08, &qword_23DB79458);
  sub_23DA0E2B4(&v88, v67, &qword_27E2FDB10, &qword_23DB79460);
  sub_23DA17988(&v100, &qword_27E2FDB10, &qword_23DB79460);
  v67[0] = v66;
  v67[1] = 0;
  v68 = 1;
  v69 = 0;
  v70 = v137;
  v71 = v138;
  v72 = v48;
  v73 = v134;
  v74 = v135;
  v75 = v136;
  v76 = v65;
  *&v77[3] = *(v141 + 3);
  *v77 = v141[0];
  v78 = 0u;
  v79 = 0u;
  v80 = 1;
  return sub_23DA17988(v67, &qword_27E2FDB08, &qword_23DB79458);
}

uint64_t sub_23DA5E100@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_23DB6F8DC();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeaderBigView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8, v9);
  v44 = v10;
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA70, &qword_23DB793B0);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v41 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB18, &qword_23DB79468);
  v52 = *(v50 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v50, v19);
  v47 = &v41 - v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA18, &qword_23DB79380);
  v21 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55, v22);
  v45 = &v41 - v23;
  v46 = type metadata accessor for HeaderBigView;
  v42 = v1;
  sub_23DA6D398(v1, v11, type metadata accessor for HeaderBigView);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v43 = type metadata accessor for HeaderBigView;
  sub_23DA6E464(v11, v25 + v24, type metadata accessor for HeaderBigView);
  v57 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB20, &qword_23DB79470);
  sub_23DA17B80(&qword_27E2FDB28, &qword_27E2FDB20, &qword_23DB79470);
  sub_23DB703CC();
  v26 = sub_23DA17B80(&qword_27E2FDA78, &qword_27E2FDA70, &qword_23DB793B0);
  v27 = sub_23DA6E40C();
  v28 = v47;
  v29 = v48;
  sub_23DB6FE3C();
  v30 = v45;
  (*(v49 + 8))(v17, v29);
  v31 = v51;
  sub_23DB6F8BC();
  v32 = v42;
  sub_23DA6D398(v42, v11, v46);
  v33 = swift_allocObject();
  sub_23DA6E464(v11, v33 + v24, v43);
  v58 = v29;
  v59 = &type metadata for TOCHeaderButtonStyle;
  v60 = v26;
  v61 = v27;
  swift_getOpaqueTypeConformance2();
  v34 = v30;
  v35 = v50;
  sub_23DB6FF6C();

  (*(v53 + 8))(v31, v54);
  (*(v52 + 8))(v28, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_23DB73BA0;
  v37 = *(v32 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v38 = v59;
  if (v59)
  {
    v39 = v58;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v39 = (*(*qword_27E30A6D8 + 304))(0xD000000000000024, 0x800000023DB87B30);
  }

  *(v36 + 32) = v39;
  *(v36 + 40) = v38;
  sub_23DA16E70();
  sub_23DB6F2BC();

  return sub_23DA17988(v34, &qword_27E2FDA18, &qword_23DB79380);
}

uint64_t sub_23DA5E750(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = 0;

    sub_23DABB0B8(&v3);
  }

  else
  {
    v2 = *(a1 + 24);
    type metadata accessor for NavigationModel();
    sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DA5E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23DB6F5BC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB30, &qword_23DB79478);
  return sub_23DA5E858(a1, a2 + *(v4 + 44));
}

uint64_t sub_23DA5E858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB38, &qword_23DB79480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v64 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB40, &qword_23DB79488);
  v8 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65, v9);
  v11 = &v64 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB48, &qword_23DB79490);
  v12 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66, v13);
  v69 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v64 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v68 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB50, &qword_23DB79498);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = (&v64 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB58, &qword_23DB794A0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27, v29);
  v67 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v64 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v64 - v37;
  v64 = a1;
  v39 = (*(a1 + 8) + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  if (v39[1])
  {
    v40 = *v39;
    v41 = v39[1];
  }

  else
  {
    v41 = 0x800000023DB87B60;
    v40 = 0xD000000000000010;
  }

  *v26 = sub_23DB7062C();
  v26[1] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB60, &qword_23DB794A8);
  sub_23DA5EEC0(v40, v41, v26 + *(v43 + 44));

  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v26, v34, &qword_27E2FDB50, &qword_23DB79498);
  v44 = &v34[*(v27 + 36)];
  v45 = v76;
  *(v44 + 4) = v75;
  *(v44 + 5) = v45;
  *(v44 + 6) = v77;
  v46 = v72;
  *v44 = v71;
  *(v44 + 1) = v46;
  v47 = v74;
  *(v44 + 2) = v73;
  *(v44 + 3) = v47;
  sub_23DA17A54(v34, v38, &qword_27E2FDB58, &qword_23DB794A0);
  *v7 = sub_23DB6F68C();
  *(v7 + 1) = 0x4024000000000000;
  v7[16] = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB68, &qword_23DB794B0);
  sub_23DA5F648(v64, &v7[*(v48 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB78D60;
  v50 = sub_23DB6FB2C();
  *(inited + 32) = v50;
  v51 = sub_23DB6FB9C();
  *(inited + 33) = v51;
  v52 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v50)
  {
    v52 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v51)
  {
    v52 = sub_23DB6FB7C();
  }

  sub_23DA17A54(v7, v11, &qword_27E2FDB38, &qword_23DB79480);
  v53 = &v11[*(v65 + 36)];
  *v53 = v52;
  *(v53 + 8) = 0u;
  *(v53 + 24) = 0u;
  v53[40] = 1;
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v11, v18, &qword_27E2FDB40, &qword_23DB79488);
  v54 = &v18[*(v66 + 36)];
  v55 = v83;
  *(v54 + 4) = v82;
  *(v54 + 5) = v55;
  *(v54 + 6) = v84;
  v56 = v79;
  *v54 = v78;
  *(v54 + 1) = v56;
  v57 = v81;
  *(v54 + 2) = v80;
  *(v54 + 3) = v57;
  v58 = v68;
  sub_23DA17A54(v18, v68, &qword_27E2FDB48, &qword_23DB79490);
  v59 = v67;
  sub_23DA0E2B4(v38, v67, &qword_27E2FDB58, &qword_23DB794A0);
  v60 = v69;
  sub_23DA0E2B4(v58, v69, &qword_27E2FDB48, &qword_23DB79490);
  v61 = v70;
  sub_23DA0E2B4(v59, v70, &qword_27E2FDB58, &qword_23DB794A0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB70, &qword_23DB794B8);
  sub_23DA0E2B4(v60, v61 + *(v62 + 48), &qword_27E2FDB48, &qword_23DB79490);
  sub_23DA17988(v58, &qword_27E2FDB48, &qword_23DB79490);
  sub_23DA17988(v38, &qword_27E2FDB58, &qword_23DB794A0);
  sub_23DA17988(v60, &qword_27E2FDB48, &qword_23DB79490);
  return sub_23DA17988(v59, &qword_27E2FDB58, &qword_23DB794A0);
}

uint64_t sub_23DA5EEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v78 = a1;
  v79 = a3;
  v77 = sub_23DB702CC();
  v3 = *(v77 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v77, v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB6F8AC();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBB8, &qword_23DB79560);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBC0, &qword_23DB79568);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v23);
  v80 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v74 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v75 = &v74 - v31;
  sub_23DB6F7CC();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = *(v9 + 28);
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_23DB6F63C();
  (*(*(v42 - 8) + 104))(&v13[v40], v41, v42);
  *v13 = v33;
  *(v13 + 1) = v35;
  *(v13 + 2) = v37;
  *(v13 + 3) = v39;
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA6E464(v13, v19, MEMORY[0x277CE0550]);
  v43 = &v19[*(v15 + 44)];
  v44 = v117;
  *(v43 + 4) = v116;
  *(v43 + 5) = v44;
  *(v43 + 6) = v118;
  v45 = v113;
  *v43 = v112;
  *(v43 + 1) = v45;
  v46 = v115;
  *(v43 + 2) = v114;
  *(v43 + 3) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
  v47 = swift_allocObject();
  v74 = xmmword_23DB78D60;
  *(v47 + 16) = xmmword_23DB78D60;
  *(v47 + 32) = sub_23DB700EC();
  sub_23DB700EC();
  v48 = sub_23DB701FC();

  *(v47 + 40) = v48;
  sub_23DB7073C();
  sub_23DB7074C();
  MEMORY[0x23EEF6910](v47);
  sub_23DB6F1DC();
  v49 = v119;
  sub_23DA17A54(v19, v28, &qword_27E2FDBB8, &qword_23DB79560);
  v50 = &v28[*(v21 + 44)];
  *v50 = v49;
  v51 = v120;
  *(v50 + 24) = v121;
  *(v50 + 8) = v51;
  v52 = v75;
  sub_23DA17A54(v28, v75, &qword_27E2FDBC0, &qword_23DB79568);

  sub_23DB702DC();
  v53 = v77;
  (*(v3 + 104))(v7, *MEMORY[0x277CE0FE0], v77);
  v78 = sub_23DB702EC();

  (*(v3 + 8))(v7, v53);
  v54 = swift_allocObject();
  *(v54 + 16) = v74;
  sub_23DB701AC();
  v55 = sub_23DB701FC();

  *(v54 + 32) = v55;
  *(v54 + 40) = sub_23DB701AC();
  sub_23DB706FC();
  sub_23DB706EC();
  MEMORY[0x23EEF6910](v54);
  sub_23DB6F1DC();
  v56 = v122;
  v57 = v123;
  v58 = v124;
  v59 = v125;
  v60 = v126;
  LOBYTE(v95[0]) = 1;
  sub_23DB7062C();
  sub_23DB6F10C();
  LOBYTE(v54) = sub_23DB6FB9C();
  LOBYTE(v95[0]) = 1;
  v61 = v80;
  sub_23DA0E2B4(v52, v80, &qword_27E2FDBC0, &qword_23DB79568);
  v62 = v61;
  v63 = v79;
  sub_23DA0E2B4(v62, v79, &qword_27E2FDBC0, &qword_23DB79568);
  v64 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBC8, &qword_23DB79570) + 48));
  v65 = v78;
  v87[0] = v78;
  v87[1] = 0;
  LOWORD(v88) = 1;
  *(&v88 + 2) = v84;
  WORD3(v88) = v85;
  *(&v88 + 1) = v56;
  *&v89 = v57;
  *(&v89 + 1) = v58;
  *&v90 = v59;
  *(&v90 + 1) = v60;
  v91 = v81;
  v92 = v82;
  v93 = v83;
  LOBYTE(v94[0]) = v54;
  DWORD1(v94[0]) = *&v86[3];
  *(v94 + 1) = *v86;
  *(&v94[1] + 8) = 0u;
  *(v94 + 8) = 0u;
  BYTE8(v94[2]) = 1;
  v66 = v88;
  *v64 = v78;
  v64[1] = v66;
  v67 = v89;
  v68 = v90;
  v69 = v92;
  v64[4] = v91;
  v64[5] = v69;
  v64[2] = v67;
  v64[3] = v68;
  v70 = v93;
  v71 = v94[0];
  v72 = v94[1];
  *(v64 + 137) = *(&v94[1] + 9);
  v64[7] = v71;
  v64[8] = v72;
  v64[6] = v70;
  sub_23DA0E2B4(v87, v95, &qword_27E2FDBD0, &qword_23DB79578);
  sub_23DA17988(v52, &qword_27E2FDBC0, &qword_23DB79568);
  v95[0] = v65;
  v95[1] = 0;
  v96 = 1;
  v97 = v84;
  v98 = v85;
  v99 = v56;
  v100 = v57;
  v101 = v58;
  v102 = v59;
  v103 = v60;
  v106 = v83;
  v105 = v82;
  v104 = v81;
  v107 = v54;
  *v108 = *v86;
  *&v108[3] = *&v86[3];
  v109 = 0u;
  v110 = 0u;
  v111 = 1;
  sub_23DA17988(v95, &qword_27E2FDBD0, &qword_23DB79578);
  return sub_23DA17988(v80, &qword_27E2FDBC0, &qword_23DB79568);
}

uint64_t sub_23DA5F648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB78, &qword_23DB794C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v44 - v10;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v13 = *(&v61 + 1);
  if (*(&v61 + 1))
  {
    v14 = v61;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v14 = (*(*qword_27E30A6D8 + 304))(0xD000000000000024, 0x800000023DB87B30);
  }

  *&v61 = v14;
  *(&v61 + 1) = v13;
  sub_23DA16E70();
  v15 = sub_23DB6FD8C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_23DB7020C();
  sub_23DA5FBCC(v22, v15, v17, v19 & 1, v21, v11);

  sub_23DA16EC4(v15, v17, v19 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  LOBYTE(v15) = sub_23DA54900(0, 0xE000000000000000);

  if (v15)
  {
    sub_23DA6E97C(&v61);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v23 = sub_23DB6FD8C();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    KeyPath = swift_getKeyPath();
    sub_23DA6D470(v23, v25, v27 & 1);

    sub_23DB7063C();
    sub_23DB6F34C();
    sub_23DA16EC4(v23, v25, v27 & 1);

    *(&v60[1] + 7) = v72;
    *(v60 + 7) = v71;
    *(&v60[3] + 7) = v74;
    *(&v60[4] + 7) = v75;
    *(&v60[5] + 7) = v76;
    *(&v60[6] + 7) = v77;
    *(&v60[2] + 7) = v73;
    *(&v59[4] + 9) = v60[4];
    *(&v59[5] + 9) = v60[5];
    *(&v59[6] + 9) = v60[6];
    *(v59 + 9) = v60[0];
    *(&v59[1] + 9) = v60[1];
    *(&v59[2] + 9) = v60[2];
    LOBYTE(v56[0]) = v27 & 1;
    *&v57 = v23;
    *(&v57 + 1) = v25;
    LOBYTE(v58) = v27 & 1;
    *(&v58 + 1) = v29;
    *&v59[0] = KeyPath;
    BYTE8(v59[0]) = 0;
    *(&v59[7] + 1) = *(&v77 + 1);
    *(&v59[3] + 9) = v60[3];
    nullsub_1(&v57);
    v67 = v59[4];
    v68 = v59[5];
    v69 = v59[6];
    v70 = v59[7];
    v63 = v59[0];
    v64 = v59[1];
    v65 = v59[2];
    v66 = v59[3];
    v61 = v57;
    v62 = v58;
  }

  sub_23DA0E2B4(v11, v7, &qword_27E2FDB78, &qword_23DB794C0);
  v52 = v67;
  v53 = v68;
  v54 = v69;
  v55 = v70;
  v48 = v63;
  v49 = v64;
  v50 = v65;
  v51 = v66;
  v46 = v61;
  v47 = v62;
  v31 = v45;
  sub_23DA0E2B4(v7, v45, &qword_27E2FDB78, &qword_23DB794C0);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB80, &qword_23DB794C8) + 48);
  v33 = v53;
  v56[6] = v52;
  v56[7] = v53;
  v34 = v54;
  v35 = v55;
  v56[8] = v54;
  v56[9] = v55;
  v36 = v50;
  v37 = v51;
  v56[4] = v50;
  v56[5] = v51;
  v38 = v48;
  v39 = v49;
  v56[2] = v48;
  v56[3] = v49;
  v40 = v46;
  v41 = v47;
  v56[0] = v46;
  v56[1] = v47;
  v42 = (v31 + v32);
  v42[6] = v52;
  v42[7] = v33;
  v42[8] = v34;
  v42[9] = v35;
  v42[2] = v38;
  v42[3] = v39;
  v42[4] = v36;
  v42[5] = v37;
  *v42 = v40;
  v42[1] = v41;
  sub_23DA0E2B4(v56, &v57, &qword_27E2FDB88, &qword_23DB794D0);
  sub_23DA17988(v11, &qword_27E2FDB78, &qword_23DB794C0);
  v59[4] = v52;
  v59[5] = v53;
  v59[6] = v54;
  v59[7] = v55;
  v59[0] = v48;
  v59[1] = v49;
  v59[2] = v50;
  v59[3] = v51;
  v57 = v46;
  v58 = v47;
  sub_23DA17988(&v57, &qword_27E2FDB88, &qword_23DB794D0);
  return sub_23DA17988(v7, &qword_27E2FDB78, &qword_23DB794C0);
}

uint64_t sub_23DA5FBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB90, &qword_23DB794D8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB98, &qword_23DB794E0);
  v18 = *(v17 - 8);
  v38 = v17 - 8;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8, v20);
  v37 = &v36 - v21;
  KeyPath = swift_getKeyPath();
  *&v40 = a2;
  *(&v40 + 1) = a3;
  LOBYTE(v41) = a4 & 1;
  v36 = a5;
  *(&v41 + 1) = a5;
  *&v42 = KeyPath;
  *(&v42 + 1) = a1;

  sub_23DA6D470(a2, a3, a4 & 1);

  sub_23DB6FBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBA0, &unk_23DB79518);
  sub_23DA6E9A0();
  sub_23DB6FE1C();
  sub_23DA16EC4(a2, a3, a4 & 1);

  v23 = sub_23DB6FBDC();
  v24 = swift_getKeyPath();
  v25 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBB0, &qword_23DB79558) + 36)];
  *v25 = v24;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = &v16[*(v12 + 44)];
  *v27 = v26;
  v27[8] = 0;
  sub_23DB7063C();
  sub_23DB6F34C();
  v28 = v37;
  sub_23DA17A54(v16, v37, &qword_27E2FDB90, &qword_23DB794D8);
  v29 = (v28 + *(v38 + 44));
  v30 = v45;
  v29[4] = v44;
  v29[5] = v30;
  v29[6] = v46;
  v31 = v41;
  *v29 = v40;
  v29[1] = v31;
  v32 = v43;
  v29[2] = v42;
  v29[3] = v32;
  v33 = v28;
  v34 = v39;
  sub_23DA17A54(v33, v39, &qword_27E2FDB98, &qword_23DB794E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB78, &qword_23DB794C0);
  *(v34 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_23DA5FEA8(uint64_t a1)
{
  v23 = sub_23DB6F55C();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v22 - v10);
  v12 = sub_23DB6F12C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HeaderBigView(0);
  sub_23DA0E2B4(a1 + *(v18 + 28), v11, &qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v19 = *v11;
    sub_23DB70ACC();
    v20 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v23);
  }

  sub_23DB6F11C();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_23DA60130()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA18, &qword_23DB79380);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA20, &qword_23DB79388);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA28, &qword_23DB79390);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - v13;
  if (sub_23DA5C508())
  {
    sub_23DA5C660(v14);
    sub_23DA0E2B4(v14, v9, &qword_27E2FDA28, &qword_23DB79390);
    swift_storeEnumTagMultiPayload();
    sub_23DA6FE84(&qword_27E2FDA30, &qword_27E2FDA28, &qword_23DB79390, sub_23DA6E154);
    sub_23DA6E2CC();
    sub_23DB6F79C();
    v15 = v14;
    v16 = &qword_27E2FDA28;
    v17 = &qword_23DB79390;
  }

  else
  {
    sub_23DA5E100(v4);
    sub_23DA0E2B4(v4, v9, &qword_27E2FDA18, &qword_23DB79380);
    swift_storeEnumTagMultiPayload();
    sub_23DA6FE84(&qword_27E2FDA30, &qword_27E2FDA28, &qword_23DB79390, sub_23DA6E154);
    sub_23DA6E2CC();
    sub_23DB6F79C();
    v15 = v4;
    v16 = &qword_27E2FDA18;
    v17 = &qword_23DB79380;
  }

  return sub_23DA17988(v15, v16, v17);
}

uint64_t sub_23DA603AC@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = type metadata accessor for PrimaryTOCView(0);
  v3 = v2 - 8;
  v70 = *(v2 - 8);
  v69 = *(v70 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD960, &qword_23DB79110);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v61 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD968, &qword_23DB79118);
  v12 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63, v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD970, &qword_23DB79120);
  v66 = *(v16 - 8);
  v67 = v16;
  v17 = *(v66 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v62 = &v61 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD978, &qword_23DB79128);
  v21 = *(v20 - 8);
  v65 = v20 - 8;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8, v23);
  v64 = &v61 - v24;
  v25 = *(v1 + 8);
  KeyPath = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v28 = type metadata accessor for HeaderBigView(0);
  *&v11[*(v28 + 28)] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Page.PrimaryTOC(0);
  sub_23DA6CEEC(&qword_27E2FD8A0, type metadata accessor for Page.PrimaryTOC);

  *v11 = sub_23DB6F1EC();
  *(v11 + 1) = v29;
  type metadata accessor for NavigationModel();
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel);
  *(v11 + 2) = sub_23DB6F39C();
  *(v11 + 3) = v30;
  *(v11 + 4) = KeyPath;
  v11[40] = 0;
  v31 = *(v28 + 32);
  *&v11[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v31) = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v32 = &v11[*(v7 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  LOBYTE(v31) = sub_23DB6FB2C();
  v37 = [objc_opt_self() currentDevice];
  [v37 userInterfaceIdiom];

  sub_23DB6EFAC();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_23DA17A54(v11, v15, &qword_27E2FD960, &qword_23DB79110);
  v46 = &v15[*(v63 + 36)];
  *v46 = v31;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = *(v3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  v48 = v1;
  sub_23DB6F90C();
  sub_23DA6D5A4();
  v49 = v62;
  sub_23DB6FF9C();

  sub_23DA17988(v15, &qword_27E2FD968, &qword_23DB79118);
  v50 = v68;
  sub_23DA6D398(v1, v68, type metadata accessor for PrimaryTOCView);
  v51 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v52 = swift_allocObject();
  sub_23DA6E464(v50, v52 + v51, type metadata accessor for PrimaryTOCView);
  v53 = v64;
  (*(v66 + 32))(v64, v49, v67);
  v54 = (v53 + *(v65 + 44));
  *v54 = sub_23DA6D6F0;
  v54[1] = v52;
  v54[2] = 0;
  v54[3] = 0;
  sub_23DA6D398(v48, v50, type metadata accessor for PrimaryTOCView);
  v55 = swift_allocObject();
  sub_23DA6E464(v50, v55 + v51, type metadata accessor for PrimaryTOCView);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD950, &qword_23DB79100);
  v57 = v71;
  v58 = (v71 + *(v56 + 36));
  v59 = v58 + *(sub_23DB6F18C() + 20);
  sub_23DB70A4C();
  *v58 = &unk_23DB791A8;
  v58[1] = v55;
  return sub_23DA17A54(v53, v57, &qword_27E2FD978, &qword_23DB79128);
}

uint64_t sub_23DA609E0()
{
  v0 = *(type metadata accessor for PrimaryTOCView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  return sub_23DB6F8FC();
}

uint64_t sub_23DA60A40(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_23DB70A3C();
  *(v1 + 24) = sub_23DB70A2C();
  v3 = sub_23DB70A1C();

  return MEMORY[0x2822009F8](sub_23DA60AD8, v3, v2);
}

uint64_t sub_23DA60AD8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(type metadata accessor for PrimaryTOCView(0) + 20);
  *(v0 + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F8FC();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23DA60B7C(uint64_t a1)
{
  v2 = sub_23DB6F83C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD928, &qword_23DB790E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13[-v9];
  v14 = a1;
  sub_23DB6F68C();
  LODWORD(v15) = 0;
  sub_23DA6CEEC(&qword_27E2FD938, MEMORY[0x277CE0428]);
  sub_23DB70E6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD940, &qword_23DB790F8);
  sub_23DA17B80(&qword_27E2FD948, &qword_27E2FD940, &qword_23DB790F8);
  sub_23DB6EFEC();
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v15 = (*(*qword_27E30A6D8 + 304))(0xD000000000000021, 0x800000023DB87B00);
  v16 = v11;
  sub_23DA17B80(&qword_27E2FD920, &qword_27E2FD928, &qword_23DB790E8);
  sub_23DA16E70();
  sub_23DB6FF1C();

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_23DA60E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD950, &qword_23DB79100);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - v11;
  sub_23DA603AC(&v20 - v11);
  v13 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  type metadata accessor for Page(0);
  sub_23DA6CEEC(&qword_27E2FCBD8, type metadata accessor for Page);

  v15 = sub_23DB6F1EC();
  v17 = v16;
  sub_23DA0E2B4(v12, v8, &qword_27E2FD950, &qword_23DB79100);
  sub_23DA0E2B4(v8, a2, &qword_27E2FD950, &qword_23DB79100);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD958, &qword_23DB79108) + 48);
  *v18 = v15;
  *(v18 + 8) = v17;
  *(v18 + 16) = KeyPath;
  *(v18 + 24) = 0;

  sub_23DA5208C(KeyPath, 0);
  sub_23DA17988(v12, &qword_27E2FD950, &qword_23DB79100);

  sub_23DA4FF14(KeyPath, 0);
  return sub_23DA17988(v8, &qword_27E2FD950, &qword_23DB79100);
}

uint64_t sub_23DA61040@<X0>(uint64_t a1@<X8>)
{
  sub_23DB6FB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD910, &qword_23DB790E0);
  sub_23DA6D488();
  sub_23DB6F01C();
  if (qword_27E2FBB98 != -1)
  {
    swift_once();
  }

  v2 = qword_27E30A670;
  v3 = sub_23DB6FB3C();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD930, &qword_23DB790F0) + 36);
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t sub_23DA61134@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Page(0);
  sub_23DA6CEEC(&qword_27E2FCBD8, type metadata accessor for Page);
  swift_retain_n();
  v2 = sub_23DB6F1EC();
  v4 = v3;
  KeyPath = swift_getKeyPath();
  v6 = sub_23DB6F1EC();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;

  sub_23DA5208C(KeyPath, 0);

  sub_23DA4FF14(KeyPath, 0);
}

uint64_t sub_23DA6124C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_23DA61134(a1);
}

double sub_23DA61254(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4 + *a1;
  *a1 = result;
  return result;
}

void *sub_23DA6129C(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_23DA612F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEA8, &qword_23DB79A78);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28[-v12];
  v15 = *a1;
  v14 = a1[1];
  type metadata accessor for Page.WhatsNew(0);
  sub_23DA6CEEC(&qword_27E2FCE58, type metadata accessor for Page.WhatsNew);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  v16 = v29;
  v17 = v30;
  KeyPath = swift_getKeyPath();
  sub_23DA61CE4(v16, *(&v16 + 1), v17, KeyPath, sub_23DA61654, 0);
  v19 = *(a1 + 2);
  v29 = *(a1 + 1);
  v31 = v19;
  v20 = swift_allocObject();
  v21 = *(a1 + 1);
  v20[1] = *a1;
  v20[2] = v21;
  v20[3] = *(a1 + 2);
  v22 = swift_allocObject();
  v23 = *(a1 + 1);
  v22[1] = *a1;
  v22[2] = v23;
  v22[3] = *(a1 + 2);
  v24 = v5[2];
  v24(v9, v13, v4);
  v24(a2, v9, v4);
  v25 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEB0, &qword_23DB79AC8) + 48)];
  *v25 = 0;
  v25[8] = 1;
  *(v25 + 2) = sub_23DA701A0;
  *(v25 + 3) = v20;
  *(v25 + 4) = sub_23DA70240;
  *(v25 + 5) = v22;

  sub_23DA0E2B4(&v29, v28, &qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DA0E2B4(&v31, v28, &qword_27E2FDCB8, &qword_23DB798F8);

  sub_23DA0E2B4(&v29, v28, &qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DA0E2B4(&v31, v28, &qword_27E2FDCB8, &qword_23DB798F8);
  v26 = v5[1];

  v26(v13, v4);

  return (v26)(v9, v4);
}

void *sub_23DA61654@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v11[0] = *a1;
  v11[1] = v3;
  v11[2] = a1[2];
  v4 = sub_23DB6F68C();
  v10 = 0;
  sub_23DA6173C(v11, __src);
  memcpy(__dst, __src, 0x149uLL);
  memcpy(v13, __src, 0x149uLL);
  sub_23DA0E2B4(__dst, v7, &qword_27E2FDEF8, &qword_23DB79B18);
  sub_23DA17988(v13, &qword_27E2FDEF8, &qword_23DB79B18);
  memcpy(&v9[7], __dst, 0x149uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x150uLL);
}

uint64_t sub_23DA6173C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  swift_getKeyPath();
  v3 = a1[1];
  v79 = *a1;
  v80 = v3;
  v81 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF00, &qword_23DB79B40);
  sub_23DB7048C();

  v42 = v68;
  v43 = v69;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF08, &qword_23DB79B48);
  MEMORY[0x23EEF6810](&v59);
  v5 = v59;

  v52 = v5;
  sub_23DA16E70();
  v6 = sub_23DB6FD8C();
  v8 = v7;
  v10 = v9;
  sub_23DB6FC8C();
  v38 = sub_23DB6FD3C();
  v39 = v11;
  v41 = v12;
  v14 = v13;

  sub_23DA16EC4(v6, v8, v10 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v14 &= 1u;
  v107 = v14;
  swift_getKeyPath();
  v15 = a1[1];
  v79 = *a1;
  v80 = v15;
  v81 = a1[2];
  sub_23DB7048C();

  v42 = v68;
  v43 = v69;
  MEMORY[0x23EEF6810](&v59, v4);
  v16 = v59;

  v52 = v16;
  v17 = sub_23DB6FD8C();
  v19 = v18;
  v21 = v20;
  sub_23DB6FBCC();
  v22 = sub_23DB6FD3C();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_23DA16EC4(v17, v19, v21 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v96 = v26 & 1;
  LOBYTE(v4) = sub_23DB6FB5C();
  sub_23DB6EFAC();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v97 = 0;
  *&v59 = v38;
  *(&v59 + 1) = v41;
  LOBYTE(v60) = v14;
  *(&v60 + 1) = *v106;
  DWORD1(v60) = *&v106[3];
  *(&v60 + 1) = v39;
  v65 = v103;
  v66 = v104;
  v67 = v105;
  v61 = v99;
  v62 = v100;
  v63 = v101;
  v64 = v102;
  __src[2] = v99;
  __src[3] = v100;
  __src[0] = v59;
  __src[1] = v60;
  __src[6] = v103;
  __src[7] = v104;
  __src[4] = v101;
  __src[5] = v102;
  *&v68 = v22;
  *(&v68 + 1) = v24;
  LOBYTE(v69) = v26 & 1;
  *(&v69 + 1) = *v95;
  DWORD1(v69) = *&v95[3];
  *(&v69 + 1) = v28;
  v74 = v56;
  v75 = v57;
  v76 = v58;
  v70 = v16;
  v71 = v53;
  v72 = v54;
  v73 = v55;
  LOBYTE(v77) = v4;
  DWORD1(v77) = *&v98[3];
  *(&v77 + 1) = *v98;
  *(&v77 + 1) = v29;
  *v78 = v31;
  *&v78[8] = v33;
  *&v78[16] = v35;
  v78[24] = 0;
  *(&__src[19] + 9) = *&v78[9];
  __src[10] = v69;
  __src[11] = v16;
  __src[8] = v105;
  __src[9] = v68;
  __src[16] = v57;
  __src[17] = v58;
  __src[14] = v55;
  __src[15] = v56;
  __src[12] = v53;
  __src[13] = v54;
  __src[18] = v77;
  __src[19] = *v78;
  memcpy(a2, __src, 0x149uLL);
  *&v79 = v22;
  *(&v79 + 1) = v24;
  LOBYTE(v80) = v26 & 1;
  *(&v80 + 1) = *v95;
  DWORD1(v80) = *&v95[3];
  *(&v80 + 1) = v28;
  v85 = v56;
  v86 = v57;
  v87 = v58;
  v81 = v52;
  v82 = v53;
  v84 = v55;
  v83 = v54;
  v88 = v4;
  *&v89[3] = *&v98[3];
  *v89 = *v98;
  v90 = v30;
  v91 = v32;
  v92 = v34;
  v93 = v36;
  v94 = 0;
  sub_23DA0E2B4(&v59, &v42, &qword_27E2FDE00, &unk_23DB7C750);
  sub_23DA0E2B4(&v68, &v42, &qword_27E2FDF10, &qword_23DB79B70);
  sub_23DA17988(&v79, &qword_27E2FDF10, &qword_23DB79B70);
  *&v42 = v38;
  *(&v42 + 1) = v41;
  LOBYTE(v43) = v14;
  *(&v43 + 1) = *v106;
  DWORD1(v43) = *&v106[3];
  *(&v43 + 1) = v39;
  v48 = v103;
  v49 = v104;
  v50 = v105;
  v44 = v99;
  v45 = v100;
  v46 = v101;
  v47 = v102;
  return sub_23DA17988(&v42, &qword_27E2FDE00, &unk_23DB7C750);
}

uint64_t sub_23DA61CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEB8, &qword_23DB79AD0);
  MEMORY[0x23EEF6810](v18, v11);
  v12 = *(v18[0] + 16);

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v18[0] = 0;
  v18[1] = v12;
  v18[2] = sub_23DA702E8;
  v18[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEC0, &unk_23DB79AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC548, &qword_23DB74B10);
  sub_23DA702F8();
  sub_23DA17B80(&qword_27E2FDED0, &qword_27E2FDEC0, &unk_23DB79AF8);
  sub_23DA17B80(&qword_27E2FDED8, &qword_27E2FC548, &qword_23DB74B10);
  sub_23DA17B80(&qword_27E2FDEE0, &qword_27E2FC548, &qword_23DB74B10);
  swift_getKeyPath();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a5;
  v14[6] = a6;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_23DA7039C;
  *(v15 + 24) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEE8, &qword_23DB79B08);
  sub_23DA70460();
  return sub_23DB704FC();
}

uint64_t sub_23DA61F6C()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 32);
  v7 = *(v0 + 24);
  v11 = v7;
  if (v12 != 1)
  {

    sub_23DB70ACC();
    v8 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v11, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_23DA620CC@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = v1[2];
  KeyPath = swift_getKeyPath();
  sub_23DA612F0(v7, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEA0, &qword_23DB79A70);
  v6 = &a1[*(result + 36)];
  *v6 = KeyPath;
  v6[8] = 0;
  return result;
}

uint64_t sub_23DA62144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v5 = sub_23DB6F9FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23DB6F68C();
  v20 = 0;
  sub_23DA62388(a1, a2, v23);
  memcpy(v21, v23, sizeof(v21));
  memcpy(v22, v23, sizeof(v22));
  sub_23DA0E2B4(v21, v18, &qword_27E2FDDF8, &qword_23DB79A10);
  sub_23DA17988(v22, &qword_27E2FDDF8, &qword_23DB79A10);
  memcpy(&v19[7], v21, 0x120uLL);
  v12 = v20;
  v13 = sub_23DB7062C();
  v15 = v14;
  LOBYTE(a1) = sub_23DB6FB5C();
  v20 = 1;
  v18[0] = v11;
  v18[1] = 0;
  LOBYTE(v18[2]) = v12;
  memcpy(&v18[2] + 1, v19, 0x127uLL);
  v18[39] = sub_23DA713C4;
  v18[40] = 0;
  v18[41] = v13;
  v18[42] = v15;
  LOBYTE(v18[43]) = a1;
  memset(&v18[44], 0, 32);
  LOBYTE(v18[48]) = 1;
  sub_23DB6F9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD80, &qword_23DB799C0);
  sub_23DA6FB48();
  sub_23DB6FF8C();
  (*(v6 + 8))(v10, v5);
  memcpy(v23, v18, 0x181uLL);
  return sub_23DA17988(v23, &qword_27E2FDD80, &qword_23DB799C0);
}

uint64_t sub_23DA62388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  (*(*qword_27E30A6D8 + 304))(0xD00000000000002BLL, 0x800000023DB87BA0);
  sub_23DA16E70();
  v5 = sub_23DB6FD8C();
  v25 = v6;
  v26 = v5;
  v8 = v7;
  v27 = v9;
  sub_23DB7063C();
  sub_23DB6F34C();
  v10 = v8 & 1;
  v87 = v8 & 1;
  v65 = a1;
  v66 = a2;

  v11 = sub_23DB6FD8C();
  v13 = v12;
  v15 = v14;
  if (sub_23DA61F6C())
  {
    sub_23DB6FBDC();
  }

  else
  {
    sub_23DB6FBAC();
  }

  v16 = sub_23DB6FD3C();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_23DA16EC4(v11, v13, v15 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v78 = v20 & 1;
  *&v36 = v26;
  *(&v36 + 1) = v25;
  LOBYTE(v37) = v10;
  *(&v37 + 1) = *v86;
  DWORD1(v37) = *&v86[3];
  *(&v37 + 1) = v27;
  v42 = v83;
  v43 = v84;
  v44 = v85;
  v38 = v79;
  v39 = v80;
  v40 = v81;
  v41 = v82;
  __src[6] = v83;
  __src[7] = v84;
  __src[2] = v79;
  __src[3] = v80;
  __src[4] = v81;
  __src[5] = v82;
  __src[0] = v36;
  __src[1] = v37;
  *&v45 = v16;
  *(&v45 + 1) = v18;
  LOBYTE(v46) = v20 & 1;
  *(&v46 + 1) = *v77;
  DWORD1(v46) = *&v77[3];
  *(&v46 + 1) = v22;
  v51 = v33;
  v52 = v34;
  v53 = v35;
  v47 = v29;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  __src[12] = v30;
  __src[13] = v31;
  __src[10] = v46;
  __src[11] = v29;
  __src[14] = v32;
  __src[15] = v33;
  __src[16] = v34;
  __src[17] = v35;
  __src[8] = v85;
  __src[9] = v45;
  memcpy(a3, __src, 0x120uLL);
  v54[0] = v16;
  v54[1] = v18;
  v55 = v20 & 1;
  *v56 = *v77;
  *&v56[3] = *&v77[3];
  v57 = v22;
  v62 = v33;
  v63 = v34;
  v64 = v35;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v61 = v32;
  sub_23DA0E2B4(&v36, &v65, &qword_27E2FDE00, &unk_23DB7C750);
  sub_23DA0E2B4(&v45, &v65, &qword_27E2FDE00, &unk_23DB7C750);
  sub_23DA17988(v54, &qword_27E2FDE00, &unk_23DB7C750);
  v65 = v26;
  v66 = v25;
  v67 = v10;
  *v68 = *v86;
  *&v68[3] = *&v86[3];
  v69 = v27;
  v74 = v83;
  v75 = v84;
  v76 = v85;
  v70 = v79;
  v71 = v80;
  v72 = v81;
  v73 = v82;
  return sub_23DA17988(&v65, &qword_27E2FDE00, &unk_23DB7C750);
}

double sub_23DA6277C@<D0>(uint64_t a1@<X8>)
{
  sub_23DA16E70();

  v3 = sub_23DB6FD8C();
  v5 = v4;
  v7 = v6;
  if (sub_23DA61F6C())
  {
    sub_23DB6FC3C();
  }

  else
  {
    sub_23DB6FBDC();
  }

  v20 = sub_23DB6FD3C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_23DA16EC4(v3, v5, v7 & 1);

  v14 = *(v1 + 72);
  v15 = sub_23DB7062C();
  v17 = v16;
  v21 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  sub_23DB7063C();
  sub_23DB6F34C();
  v18 = sub_23DB6FB5C();
  *a1 = v20;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 120) = v24;
  *(a1 + 136) = v25;
  *(a1 + 152) = v26;
  *(a1 + 168) = v27;
  *(a1 + 72) = v21;
  *(a1 + 88) = v22;
  *(a1 + 40) = sub_23DA713C4;
  *(a1 + 48) = 0;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17;
  *(a1 + 104) = v23;
  *(a1 + 184) = v18;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1;
  return result;
}

uint64_t sub_23DA629B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DB6F7BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB7018C();
  sub_23DB6F94C();
  sub_23DB6F14C();
  v10 = v9;
  result = (*(v3 + 8))(v7, v2);
  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t sub_23DA62AB4()
{
  v1 = sub_23DB702BC();
  if (sub_23DA61F6C())
  {
    v2 = sub_23DB6FC3C();
  }

  else
  {
    v2 = sub_23DB6FBDC();
  }

  v3 = v2;
  KeyPath = swift_getKeyPath();
  v21[0] = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  v21[0] = *(v0 + 56);
  sub_23DB7038C();
  sub_23DB7062C();
  v5 = *(v0 + 72);
  sub_23DB6F34C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23DB78D60;
  v7 = sub_23DB6FB5C();
  *(v6 + 32) = v7;
  v8 = sub_23DB6FB8C();
  *(v6 + 33) = v8;
  v9 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v7)
  {
    v9 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v8)
  {
    v9 = sub_23DB6FB7C();
  }

  v23 = 1;
  *&v11 = v1;
  *(&v11 + 1) = KeyPath;
  *&v12 = v3;
  *(&v12 + 1) = v5;
  v17 = *&v22[13];
  v18 = *&v22[15];
  v19 = *&v22[17];
  v13 = *&v22[5];
  v14 = *&v22[7];
  v15 = *&v22[9];
  v16 = *&v22[11];
  v20[0] = v9;
  memset(&v20[8], 0, 32);
  v20[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE48, &qword_23DB79A38);
  sub_23DA6FF38();
  sub_23DB6FE7C();
  v21[8] = v19;
  v21[9] = *v20;
  *v22 = *&v20[16];
  *(&v22[1] + 1) = *&v20[25];
  v21[4] = v15;
  v21[5] = v16;
  v21[6] = v17;
  v21[7] = v18;
  v21[0] = v11;
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  return sub_23DA17988(v21, &qword_27E2FDE48, &qword_23DB79A38);
}

uint64_t sub_23DA62DC4()
{
  v1 = sub_23DB702BC();
  if (sub_23DA61F6C())
  {
    v2 = sub_23DB6FC3C();
  }

  else
  {
    v2 = sub_23DB6FBDC();
  }

  v3 = v2;
  KeyPath = swift_getKeyPath();
  v19[0] = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  v19[0] = *(v0 + 40);
  sub_23DB7038C();
  sub_23DB7062C();
  sub_23DB6F34C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23DB78D60;
  v6 = sub_23DB6FB5C();
  *(v5 + 32) = v6;
  v7 = sub_23DB6FB8C();
  *(v5 + 33) = v7;
  v8 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v6)
  {
    v8 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v7)
  {
    v8 = sub_23DB6FB7C();
  }

  v21 = 1;
  *&v10 = v1;
  *(&v10 + 1) = KeyPath;
  v15 = *&v20[13];
  v16 = *&v20[15];
  v17 = *&v20[17];
  v11 = *&v20[5];
  v12 = *&v20[7];
  v13 = *&v20[9];
  v14 = *&v20[11];
  v18[0] = v8;
  memset(&v18[8], 0, 32);
  v18[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE48, &qword_23DB79A38);
  sub_23DA6FF38();
  sub_23DB6FE7C();
  v19[8] = v17;
  v19[9] = *v18;
  *v20 = *&v18[16];
  *(&v20[1] + 1) = *&v18[25];
  v19[4] = v13;
  v19[5] = v14;
  v19[6] = v15;
  v19[7] = v16;
  v19[0] = v10;
  v19[1] = v3;
  v19[2] = v11;
  v19[3] = v12;
  return sub_23DA17988(v19, &qword_27E2FDE48, &qword_23DB79A38);
}

uint64_t sub_23DA630C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 8))
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if (v12[0] >> 62)
  {
    if (sub_23DB70C3C())
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v12[0] & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEF70C0](0, v12[0]);
LABEL_8:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v12[0])
    {
      v12[10] = v12[0];
      v5 = swift_allocObject();
      v6 = *(a1 + 48);
      v5[3] = *(a1 + 32);
      v5[4] = v6;
      v5[5] = *(a1 + 64);
      v7 = *(a1 + 16);
      v5[1] = *a1;
      v5[2] = v7;
      sub_23DA51574(a1, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF0, &qword_23DB830A0);
      sub_23DB6EA8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE10, &qword_23DB79A20);
      sub_23DA17B80(&qword_27E2FDD00, &qword_27E2FDCF0, &qword_23DB830A0);
      sub_23DA6FD1C();
      sub_23DA6CEEC(&qword_27E2FDDC0, type metadata accessor for Page);
      sub_23DB7050C();
      v8 = 0;
LABEL_13:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE08, &qword_23DB79A18);
      return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
    }

LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  if (*((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v12[0] + 32);

    goto LABEL_8;
  }

  __break(1u);
LABEL_16:
  v11 = *(a1 + 16);
  type metadata accessor for NavigationModel();
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DA63450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t, uint64_t)@<X8>)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE88, &qword_23DB79A58);
  v7 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76, v8);
  v75 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE78, &qword_23DB79A50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v77 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE90, &qword_23DB79A60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v69 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE98, &qword_23DB79A68);
  v19 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81, v20);
  v82 = &v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE28, &qword_23DB79A28);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v24);
  v84 = &v69 - v25;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE38, &qword_23DB79A30);
  v26 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80, v27);
  v83 = &v69 - v28;
  v92 = sub_23DB6EA8C();
  v78 = *(v92 - 8);
  v29 = *(v78 + 64);
  MEMORY[0x28223BE20](v92, v30);
  v94 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v93 = &v69 - v34;
  v85 = a2;
  v35 = *(a2 + 8);
  if (v35)
  {
    v95 = *a1;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    KeyPath = v35;
    v86 = v22;
    if (Strong)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_23DB6EF0C();

      v38 = v97;
      if (v97 >> 62)
      {
        goto LABEL_26;
      }

      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

LABEL_27:

      v46 = KeyPath;
      Strong = 0;
    }

    else
    {
LABEL_21:
      swift_retain_n();
      v46 = KeyPath;
    }

LABEL_28:
    v47 = sub_23DABB420();

    if (Strong < v47)
    {

      v48 = v83;
      sub_23DA62AB4();
      sub_23DA0E2B4(v48, v82, &qword_27E2FDE38, &qword_23DB79A30);
      goto LABEL_59;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v79 = v46;
    if (!Strong)
    {
      goto LABEL_57;
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v38 = v96;
    if (v96 >> 62)
    {
      goto LABEL_55;
    }

    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      v74 = v18;
      if ((v38 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEF70C0](0, v38);
      }

      else
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v49 = *(v38 + 32);
      }

      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C();

      v38 = v96;
      if (v96)
      {
        v3 = v96 & 0xFFFFFFFFFFFFFF8;
        v72 = a3;
        v73 = v10;
        v71 = v14;
        v70 = Strong;
        if (!(v96 >> 62))
        {
          v91 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:
          v89 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
          swift_beginAccess();
          v50 = 0;
          v90 = v38 & 0xC000000000000001;
          v88 = v78 + 16;
          v87 = (v78 + 8);
          a3 = (v78 + 16);
          v51 = v93;
          while (1)
          {
            if (v91 == v50)
            {

              Strong = 0;
              goto LABEL_51;
            }

            if (v90)
            {
              v52 = MEMORY[0x23EEF70C0](v50, v38);
              if (__OFADD__(v50, 1))
              {
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }
            }

            else
            {
              if (v50 >= *(v3 + 16))
              {
                __break(1u);
                while (2)
                {
                  MEMORY[0x23EEF70C0](0, v38);
LABEL_8:

                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_23DB6EF0C();

                  v38 = v97;
                  if (!v97)
                  {

                    v46 = KeyPath;
                    Strong = 0;
                    v10 = v73;
                    v18 = v74;
                    goto LABEL_28;
                  }

                  v3 = v97 & 0xFFFFFFFFFFFFFF8;
                  v72 = a3;
                  v71 = v14;
                  v79 = KeyPath;
                  v70 = Strong;
                  if (v97 >> 62)
                  {
                    v91 = sub_23DB70C3C();
                  }

                  else
                  {
                    v91 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v89 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
                  swift_beginAccess();
                  v10 = 0;
                  v90 = v38 & 0xC000000000000001;
                  v88 = v78 + 16;
                  v87 = (v78 + 8);
                  a3 = (v78 + 16);
                  v18 = v93;
                  while (2)
                  {
                    if (v91 == v10)
                    {

                      v46 = v79;

                      Strong = 0;
                      goto LABEL_24;
                    }

                    if (v90)
                    {
                      v40 = MEMORY[0x23EEF70C0](v10, v38);
                      if (__OFADD__(v10, 1))
                      {
LABEL_20:
                        __break(1u);
                        goto LABEL_21;
                      }

LABEL_16:
                      v41 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
                      swift_beginAccess();
                      v42 = v38;
                      v43 = *a3;
                      v14 = v92;
                      (*a3)(v18, v40 + v41, v92);
                      v44 = v94;
                      v43(v94, v95 + v89, v14);
                      v38 = v42;
                      KeyPath = sub_23DB6EA6C();

                      Strong = v87;
                      v45 = *v87;
                      (*v87)(v44, v14);
                      v45(v18, v14);
                      ++v10;
                      if (KeyPath)
                      {

                        v46 = v79;

                        Strong = v10 - 1;
LABEL_24:
                        a3 = v72;
                        v10 = v73;
                        v18 = v74;
                        v14 = v71;
                        goto LABEL_28;
                      }

                      continue;
                    }

                    break;
                  }

                  if (v10 < *(v3 + 16))
                  {
                    v40 = *(v38 + 8 * v10 + 32);

                    if (__OFADD__(v10, 1))
                    {
                      goto LABEL_20;
                    }

                    goto LABEL_16;
                  }

                  __break(1u);
LABEL_26:
                  if (!sub_23DB70C3C())
                  {
                    goto LABEL_27;
                  }

LABEL_5:
                  v73 = v10;
                  v74 = v18;
                  if ((v38 & 0xC000000000000001) != 0)
                  {
                    continue;
                  }

                  break;
                }

                if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v39 = *(v38 + 32);

                  goto LABEL_8;
                }

                __break(1u);
LABEL_55:
                if (!sub_23DB70C3C())
                {
                  goto LABEL_56;
                }

                goto LABEL_33;
              }

              v52 = *(v38 + 8 * v50 + 32);

              if (__OFADD__(v50, 1))
              {
                goto LABEL_48;
              }
            }

            v53 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
            swift_beginAccess();
            v54 = v38;
            v55 = *a3;
            v14 = v3;
            v56 = v92;
            (*a3)(v51, v52 + v53, v92);
            v57 = v94;
            v55(v94, v95 + v89, v56);
            v38 = v54;
            KeyPath = sub_23DB6EA6C();

            Strong = v87;
            v58 = *v87;
            (*v87)(v57, v56);
            v59 = v56;
            v3 = v14;
            v58(v51, v59);
            ++v50;
            if (KeyPath)
            {

              Strong = v50 - 1;
LABEL_51:
              v18 = v74;
              goto LABEL_57;
            }
          }
        }

LABEL_65:
        v91 = sub_23DB70C3C();
        goto LABEL_39;
      }

LABEL_49:

      Strong = 0;
      v18 = v74;
    }

    else
    {
LABEL_56:

      Strong = 0;
    }

LABEL_57:

    v60 = sub_23DABB420();

    if (Strong != v60)
    {
      v65 = v75;
      sub_23DA62AB4();
      *(v65 + *(v76 + 36)) = 0;
      sub_23DA700DC();
      v66 = v77;
      sub_23DB6FE7C();
      sub_23DA17988(v65, &qword_27E2FDE88, &qword_23DB79A58);
      sub_23DA0E2B4(v66, v18, &qword_27E2FDE78, &qword_23DB79A50);
      swift_storeEnumTagMultiPayload();
      sub_23DA6FDD4();
      sub_23DA6FE84(&qword_27E2FDE70, &qword_27E2FDE78, &qword_23DB79A50, sub_23DA700DC);
      sub_23DB6F79C();
      v62 = v66;
      v63 = &qword_27E2FDE78;
      v64 = &qword_23DB79A50;
      return sub_23DA17988(v62, v63, v64);
    }

    v48 = v83;
    sub_23DA62DC4();
    sub_23DA0E2B4(v48, v82, &qword_27E2FDE38, &qword_23DB79A30);
LABEL_59:
    swift_storeEnumTagMultiPayload();
    sub_23DA6FE84(&qword_27E2FDE30, &qword_27E2FDE38, &qword_23DB79A30, sub_23DA6FF38);
    v61 = v84;
    sub_23DB6F79C();
    sub_23DA0E2B4(v61, v18, &qword_27E2FDE28, &qword_23DB79A28);
    swift_storeEnumTagMultiPayload();
    sub_23DA6FDD4();
    sub_23DA6FE84(&qword_27E2FDE70, &qword_27E2FDE78, &qword_23DB79A50, sub_23DA700DC);
    sub_23DB6F79C();
    sub_23DA17988(v61, &qword_27E2FDE28, &qword_23DB79A28);
    v62 = v48;
    v63 = &qword_27E2FDE38;
    v64 = &qword_23DB79A30;
    return sub_23DA17988(v62, v63, v64);
  }

  v68 = *(v85 + 16);
  type metadata accessor for NavigationModel();
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DA642A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 8))
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if (v12[0] >> 62)
  {
    if (sub_23DB70C3C())
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v12[0] & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEF70C0](0, v12[0]);
LABEL_8:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v12[0])
    {
      v12[10] = v12[0];
      v5 = swift_allocObject();
      v6 = *(a1 + 48);
      v5[3] = *(a1 + 32);
      v5[4] = v6;
      v5[5] = *(a1 + 64);
      v7 = *(a1 + 16);
      v5[1] = *a1;
      v5[2] = v7;
      sub_23DA51574(a1, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF0, &qword_23DB830A0);
      sub_23DB6EA8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF8, &qword_23DB79980);
      sub_23DA17B80(&qword_27E2FDD00, &qword_27E2FDCF0, &qword_23DB830A0);
      sub_23DA6F660();
      sub_23DA6CEEC(&qword_27E2FDDC0, type metadata accessor for Page);
      sub_23DB7050C();
      v8 = 0;
LABEL_13:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCE8, &qword_23DB79928);
      return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
    }

LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  if (*((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v12[0] + 32);

    goto LABEL_8;
  }

  __break(1u);
LABEL_16:
  v11 = *(a1 + 16);
  type metadata accessor for NavigationModel();
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DA6462C@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDC8, &qword_23DB799E0);
  v100 = *(v6 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v99 = &v95 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDD0, &qword_23DB799E8);
  v10 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105, v11);
  v13 = &v95 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDD8, &qword_23DB799F0);
  v14 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101, v15);
  v102 = &v95 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD18, &qword_23DB79988);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v103 = &v95 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDE0, &qword_23DB799F8);
  v104 = *(v21 - 8);
  v22 = *(v104 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v95 - v24;
  v117 = sub_23DB6EA8C();
  v110 = *(v117 - 8);
  v26 = *(v110 + 64);
  MEMORY[0x28223BE20](v117, v27);
  v119 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v118 = &v95 - v31;
  v32 = *(a2 + 1);
  if (!v32)
  {
    v94 = *(a2 + 2);
    type metadata accessor for NavigationModel();
    sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
    return result;
  }

  v106 = v17;
  v107 = v21;
  v108 = v13;
  v120 = *a1;
  v33 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_dataModel;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v111 = v6;
  if (Strong)
  {
    v35 = Strong;
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    swift_retain_n();
    sub_23DB6EF0C();

    v37 = v138;
    if (v138 >> 62)
    {
      goto LABEL_26;
    }

    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_27:
  }

  else
  {
LABEL_21:
    swift_retain_n();
  }

  KeyPath = 0;
LABEL_29:
  v35 = v136;
  v43 = sub_23DABB420();

  if (KeyPath >= v43)
  {
    swift_beginAccess();
    v56 = swift_weakLoadStrong();
    if (v56)
    {
      v33 = v56;
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v95 = v33;
      sub_23DB6EF0C();

      v37 = v138;
      if (v138 >> 62)
      {
        goto LABEL_56;
      }

      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v33 = v6;
            MEMORY[0x23EEF70C0](0, v37);
          }

          else
          {
            if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_67:
              v116 = sub_23DB70C3C();
              goto LABEL_40;
            }

            v33 = v6;
            v57 = *(v37 + 32);
          }

          swift_getKeyPath();
          v6 = swift_getKeyPath();
          sub_23DB6EF0C();

          KeyPath = v138;
          if (!v138)
          {
LABEL_50:

            v6 = v33;
            goto LABEL_59;
          }

          v3 = v138 & 0xFFFFFFFFFFFFFF8;
          v97 = a2;
          v98 = v25;
          v96 = v32;
          if (v138 >> 62)
          {
            goto LABEL_67;
          }

          v116 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
          v114 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
          swift_beginAccess();
          v37 = 0;
          v115 = KeyPath & 0xC000000000000001;
          v112 = v3;
          v113 = (v110 + 16);
          v110 += 8;
          v25 = v113;
          while (1)
          {
            if (v116 == v37)
            {

              KeyPath = 0;
              goto LABEL_52;
            }

            if (v115)
            {
              v58 = MEMORY[0x23EEF70C0](v37, KeyPath);
              if (__OFADD__(v37, 1))
              {
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

              goto LABEL_45;
            }

            if (v37 >= *(v3 + 16))
            {
              break;
            }

            v58 = *(KeyPath + 8 * v37 + 32);

            if (__OFADD__(v37, 1))
            {
              goto LABEL_49;
            }

LABEL_45:
            v59 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
            swift_beginAccess();
            v60 = *v25;
            v61 = v117;
            a2 = v118;
            (*v25)(v118, v58 + v59, v117);
            v32 = KeyPath;
            v62 = v119;
            v60(v119, v120 + v114, v61);
            v35 = sub_23DB6EA6C();

            v6 = v110;
            v33 = *v110;
            v63 = v62;
            KeyPath = v32;
            (*v110)(v63, v61);
            v64 = v61;
            v3 = v112;
            v33(a2, v64);
            ++v37;
            if (v35)
            {

              KeyPath = v37 - 1;
LABEL_52:
              v6 = v111;
              v25 = v98;
              v35 = v136;
              goto LABEL_59;
            }
          }

          __break(1u);
          while (2)
          {
            v3 = v25;
            v33 = v6;
            MEMORY[0x23EEF70C0](0, v37);
LABEL_8:

            swift_getKeyPath();
            v6 = swift_getKeyPath();
            sub_23DB6EF0C();

            KeyPath = v138;
            if (!v138)
            {

              v6 = v33;
              v25 = v3;
              goto LABEL_29;
            }

            v25 = (v138 & 0xFFFFFFFFFFFFFF8);
            v97 = a2;
            v98 = v3;
            v95 = v35;
            v96 = v32;
            if (v138 >> 62)
            {
              v116 = sub_23DB70C3C();
            }

            else
            {
              v116 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v114 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
            swift_beginAccess();
            v37 = 0;
            v115 = KeyPath & 0xC000000000000001;
            v112 = (v110 + 8);
            v113 = (v110 + 16);
            v32 = v117;
            while (2)
            {
              if (v116 == v37)
              {

                v32 = v96;

                KeyPath = 0;
                goto LABEL_24;
              }

              if (v115)
              {
                v6 = MEMORY[0x23EEF70C0](v37, KeyPath);
                if (__OFADD__(v37, 1))
                {
LABEL_20:
                  __break(1u);
                  goto LABEL_21;
                }

LABEL_16:
                v39 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
                swift_beginAccess();
                v40 = *v113;
                a2 = v118;
                (*v113)(v118, v6 + v39, v32);
                v35 = KeyPath;
                v41 = v119;
                v40(v119, v120 + v114, v32);
                v3 = sub_23DB6EA6C();

                v6 = v112;
                v33 = *v112;
                v42 = v41;
                KeyPath = v35;
                (*v112)(v42, v32);
                v33(a2, v32);
                ++v37;
                if (v3)
                {

                  v32 = v96;

                  KeyPath = v37 - 1;
LABEL_24:
                  v6 = v111;
                  a2 = v97;
                  v25 = v98;
                  goto LABEL_29;
                }

                continue;
              }

              break;
            }

            if (v37 < *(v25 + 2))
            {
              v6 = *(KeyPath + 8 * v37 + 32);

              if (__OFADD__(v37, 1))
              {
                goto LABEL_20;
              }

              goto LABEL_16;
            }

            __break(1u);
LABEL_26:
            if (!sub_23DB70C3C())
            {
              goto LABEL_27;
            }

LABEL_5:
            if ((v37 & 0xC000000000000001) != 0)
            {
              continue;
            }

            break;
          }

          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v3 = v25;
            v33 = v6;
            v38 = *(v37 + 32);

            goto LABEL_8;
          }

          __break(1u);
LABEL_56:
          ;
        }

        while (sub_23DB70C3C());
      }
    }

    KeyPath = 0;
LABEL_59:

    v65 = sub_23DABB420();

    if (KeyPath == v65)
    {
      v66 = (v120 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v67 = *v66;
      v68 = v66[1];

      v69 = v99;
      sub_23DA62144(v67, v68, v99);

      v70 = v100;
      (*(v100 + 16))(v102, v69, v6);
      swift_storeEnumTagMultiPayload();
      v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDD20, &qword_23DB79990);
      v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDD28, &qword_23DB79998);
      v73 = sub_23DA6F8F4();
      v74 = sub_23DA17B80(&qword_27E2FDD78, &qword_27E2FDD28, &qword_23DB79998);
      *&v138 = v71;
      *(&v138 + 1) = v72;
      *&v139 = v73;
      *(&v139 + 1) = v74;
      swift_getOpaqueTypeConformance2();
      v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDD80, &qword_23DB799C0);
      v76 = sub_23DA6FB48();
      *&v138 = v75;
      *(&v138 + 1) = v76;
      swift_getOpaqueTypeConformance2();
      v77 = v103;
      v78 = v111;
      sub_23DB6F79C();
      sub_23DA0E2B4(v77, v108, &qword_27E2FDD18, &qword_23DB79988);
      swift_storeEnumTagMultiPayload();
      sub_23DA6F790();
      sub_23DB6F79C();
      sub_23DA17988(v77, &qword_27E2FDD18, &qword_23DB79988);
      return (*(v70 + 8))(v69, v78);
    }

    v80 = (v120 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v81 = *v80;
    v82 = v80[1];

    sub_23DA6277C(v136);

    v83 = *(v35 + 208);
    v133 = *(v35 + 192);
    v134 = v83;
    v135 = v137;
    v84 = *(v35 + 144);
    v129 = *(v35 + 128);
    v130 = v84;
    v85 = *(v35 + 176);
    v131 = *(v35 + 160);
    v132 = v85;
    v86 = *(v35 + 80);
    v125 = *(v35 + 64);
    v126 = v86;
    v87 = *(v35 + 112);
    v127 = *(v35 + 96);
    v128 = v87;
    v88 = *(v35 + 16);
    v121 = *v35;
    v122 = v88;
    v89 = *(v35 + 48);
    v123 = *(v35 + 32);
    v124 = v89;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD20, &qword_23DB79990);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD28, &qword_23DB79998);
    v92 = sub_23DA6F8F4();
    v93 = sub_23DA17B80(&qword_27E2FDD78, &qword_27E2FDD28, &qword_23DB79998);
    sub_23DB6FEFC();
    v150 = v133;
    v151 = v134;
    v152 = v135;
    v146 = v129;
    v147 = v130;
    v148 = v131;
    v149 = v132;
    v142 = v125;
    v143 = v126;
    v144 = v127;
    v145 = v128;
    v138 = v121;
    v139 = v122;
    v140 = v123;
    v141 = v124;
    sub_23DA17988(&v138, &qword_27E2FDD20, &qword_23DB79990);
    v51 = v104;
    v52 = v107;
    (*(v104 + 16))(v108, v25, v107);
    swift_storeEnumTagMultiPayload();
    sub_23DA6F790();
    *&v121 = v90;
    *(&v121 + 1) = v91;
    *&v122 = v92;
    *(&v122 + 1) = v93;
    swift_getOpaqueTypeConformance2();
    sub_23DB6F79C();
    return (*(v51 + 8))(v25, v52);
  }

  v44 = (v120 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];

  sub_23DA6277C(v136);

  v133 = v136[12];
  v134 = v136[13];
  v135 = v137;
  v129 = v136[8];
  v130 = v136[9];
  v131 = v136[10];
  v132 = v136[11];
  v125 = v136[4];
  v126 = v136[5];
  v127 = v136[6];
  v128 = v136[7];
  v121 = v136[0];
  v122 = v136[1];
  v123 = v136[2];
  v124 = v136[3];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD20, &qword_23DB79990);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD28, &qword_23DB79998);
  v49 = sub_23DA6F8F4();
  v50 = sub_23DA17B80(&qword_27E2FDD78, &qword_27E2FDD28, &qword_23DB79998);
  sub_23DB6FEFC();
  v150 = v133;
  v151 = v134;
  v152 = v135;
  v146 = v129;
  v147 = v130;
  v148 = v131;
  v149 = v132;
  v142 = v125;
  v143 = v126;
  v144 = v127;
  v145 = v128;
  v138 = v121;
  v139 = v122;
  v140 = v123;
  v141 = v124;
  sub_23DA17988(&v138, &qword_27E2FDD20, &qword_23DB79990);
  v51 = v104;
  v52 = v107;
  (*(v104 + 16))(v102, v25, v107);
  swift_storeEnumTagMultiPayload();
  *&v121 = v47;
  *(&v121 + 1) = v48;
  *&v122 = v49;
  *(&v122 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDD80, &qword_23DB799C0);
  v54 = sub_23DA6FB48();
  *&v121 = v53;
  *(&v121 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v103;
  sub_23DB6F79C();
  sub_23DA0E2B4(v55, v108, &qword_27E2FDD18, &qword_23DB79988);
  swift_storeEnumTagMultiPayload();
  sub_23DA6F790();
  sub_23DB6F79C();
  sub_23DA17988(v55, &qword_27E2FDD18, &qword_23DB79988);
  return (*(v51 + 8))(v25, v52);
}

uint64_t sub_23DA65798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDE8, &qword_23DB79A00);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v23 - v7;
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v25 = (*(*qword_27E30A6D8 + 304))(0xD00000000000001BLL, 0x800000023DB87B80);
  v26 = v9;
  sub_23DA16E70();
  v10 = sub_23DB6FD8C();
  v23 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v4[2];
  v17(v8, a1, v3);
  v18 = v24;
  *v24 = v10;
  v18[1] = v12;
  *(v18 + 16) = v14 & 1;
  v18[3] = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDF0, &qword_23DB79A08);
  v17(v18 + *(v19 + 48), v8, v3);
  v20 = v23;
  sub_23DA6D470(v23, v12, v14 & 1);
  v21 = v4[1];

  v21(v8, v3);
  sub_23DA16EC4(v20, v12, v14 & 1);
}

uint64_t sub_23DA659C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDE8, &qword_23DB79A00);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v23 - v7;
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v25 = (*(*qword_27E30A6D8 + 304))(0xD00000000000002DLL, 0x800000023DB87BD0);
  v26 = v9;
  sub_23DA16E70();
  v10 = sub_23DB6FD8C();
  v23 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v4[2];
  v17(v8, a1, v3);
  v18 = v24;
  *v24 = v10;
  v18[1] = v12;
  *(v18 + 16) = v14 & 1;
  v18[3] = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDF0, &qword_23DB79A08);
  v17(v18 + *(v19 + 48), v8, v3);
  v20 = v23;
  sub_23DA6D470(v23, v12, v14 & 1);
  v21 = v4[1];

  v21(v8, v3);
  sub_23DA16EC4(v20, v12, v14 & 1);
}

uint64_t sub_23DA65BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCC0, &qword_23DB79900);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCC8, &qword_23DB79908);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v26 - v20;
  *v21 = sub_23DB6F68C();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCD0, &qword_23DB79910);
  sub_23DA630C4(a1, &v21[*(v22 + 44)]);
  *v12 = sub_23DB6F68C();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCD8, &qword_23DB79918);
  sub_23DA642A0(a1, &v12[*(v23 + 44)]);
  sub_23DA0E2B4(v21, v17, &qword_27E2FDCC8, &qword_23DB79908);
  sub_23DA0E2B4(v12, v8, &qword_27E2FDCC0, &qword_23DB79900);
  sub_23DA0E2B4(v17, a2, &qword_27E2FDCC8, &qword_23DB79908);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCE0, &qword_23DB79920);
  sub_23DA0E2B4(v8, a2 + *(v24 + 48), &qword_27E2FDCC0, &qword_23DB79900);
  sub_23DA17988(v12, &qword_27E2FDCC0, &qword_23DB79900);
  sub_23DA17988(v21, &qword_27E2FDCC8, &qword_23DB79908);
  sub_23DA17988(v8, &qword_27E2FDCC0, &qword_23DB79900);
  return sub_23DA17988(v17, &qword_27E2FDCC8, &qword_23DB79908);
}

uint64_t sub_23DA65E38@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v20 = v1[2];
  v21 = v3;
  v22 = v1[4];
  v4 = v1[1];
  v18 = *v1;
  v19 = v4;
  KeyPath = swift_getKeyPath();
  *a1 = sub_23DB6F5BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDC98, &qword_23DB798D8);
  sub_23DA65BF8(&v18, a1 + *(v6 + 44));
  v7 = swift_allocObject();
  v8 = v21;
  *(v7 + 3) = v20;
  *(v7 + 4) = v8;
  *(v7 + 5) = v22;
  v9 = v19;
  *(v7 + 1) = v18;
  *(v7 + 2) = v9;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCA0, &qword_23DB798E0) + 36));
  *v10 = sub_23DA6F5A0;
  v10[1] = v7;
  v11 = swift_allocObject();
  v12 = v21;
  *(v11 + 3) = v20;
  *(v11 + 4) = v12;
  *(v11 + 5) = v22;
  v13 = v19;
  *(v11 + 1) = v18;
  *(v11 + 2) = v13;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCA8, &qword_23DB798E8) + 36));
  *v14 = sub_23DA6F5F8;
  v14[1] = v11;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB0, &qword_23DB798F0) + 36);
  *v15 = KeyPath;
  *(v15 + 8) = 0;
  sub_23DA51574(&v18, v17);
  return sub_23DA51574(&v18, v17);
}

uint64_t sub_23DA65FF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DB7018C();
  result = sub_23DB6F13C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_23DA66038(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v6 = *(a2 + 24);
  v7 = v6;
  v8 = *(&v6 + 1);
  sub_23DA0E2B4(&v8, &v5, &qword_27E2FE100, &qword_23DB79F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  v3 = v5;
  if (v5 <= v2)
  {
    v3 = v2;
  }

  v6 = v7;
  v5 = v3;
  sub_23DB7039C();
  return sub_23DA17988(&v7, &qword_27E2FDCB8, &qword_23DB798F8);
}

uint64_t sub_23DA66104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0A8, &qword_23DB79EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v65 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v67 = &v52 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v12 = v76;
  v13 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v14 = v13[1];
  v55 = *v13;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v64 = v76;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v15 = v76;
  if (v76)
  {
    if (v76 >> 62)
    {
      v63 = sub_23DB70C3C();
    }

    else
    {
      v63 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v63 = 0;
  }

  v66 = v15 == 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v62 = v76;
  v114[0] = *v2;
  v16 = *(v2 + 8);
  v112 = *(v2 + 24);
  v113 = v16;
  v17 = swift_allocObject();
  v18 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 56) = a1;
  sub_23DA0E2B4(v114, &v76, &qword_27E2FDCF0, &qword_23DB830A0);

  sub_23DA0E2B4(&v113, &v76, &qword_27E2FE108, &qword_23DB79F98);
  sub_23DA0E2B4(&v112, &v76, &qword_27E2FDCB8, &qword_23DB798F8);
  *a2 = sub_23DB6F68C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  if (*(&v12 + 1))
  {
    v19 = v12;
  }

  else
  {
    v19 = 0x6761702E6B6F6F62;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = sub_23DA712B0;
  *(v20 + 24) = v17;

  v58 = v17;

  v21 = sub_23DB6FB5C();
  sub_23DB6EFAC();
  v104 = 0;
  *&v76 = v19;
  *(&v76 + 1) = v12;
  *&v77 = sub_23DA713C0;
  *(&v77 + 1) = v20;
  LOBYTE(v78) = 0;
  BYTE8(v78) = v21;
  *&v79 = v22;
  *(&v79 + 1) = v23;
  *&v80 = v24;
  *(&v80 + 1) = v25;
  v81 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23DB73BA0;
  v27 = v55;
  *(v26 + 32) = v55;
  *(v26 + 40) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0D0, &qword_23DB79F28);
  v57 = *(&v12 + 1);
  sub_23DA71170();
  v54 = v2;
  sub_23DA16E70();
  sub_23DB6FFFC();

  v97[2] = v78;
  v97[3] = v79;
  v97[4] = v80;
  v98 = v81;
  v97[0] = v76;
  v97[1] = v77;
  sub_23DA17988(v97, &qword_27E2FE0D0, &qword_23DB79F28);
  v60 = sub_23DB6F68C();
  v95 = 1;
  KeyPath = swift_getKeyPath();
  v100 = v66;
  v99 = 0;
  v59 = v95;
  v76 = v112;

  v56 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  sub_23DB7061C();
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0E8, &qword_23DB79F30) + 44);
  sub_23DB6F34C();
  *&v96[55] = v108;
  *&v96[71] = v109;
  *&v96[87] = v110;
  *&v96[103] = v111;
  *&v96[7] = v105;
  *&v96[23] = v106;
  *&v96[39] = v107;
  v29 = sub_23DB7062C();
  v53 = v29;
  v31 = v30;
  v32 = swift_allocObject();
  v33 = v54;
  v34 = v54[1];
  *(v32 + 16) = *v54;
  *(v32 + 32) = v34;
  *(v32 + 48) = *(v33 + 4);
  v35 = v65;
  sub_23DA0E2B4(v67, v65, &qword_27E2FE0A8, &qword_23DB79EC0);
  sub_23DA0E2B4(v35, v28, &qword_27E2FE0A8, &qword_23DB79EC0);
  v36 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0F0, &qword_23DB79F38) + 48);
  v68 = v60;
  LOBYTE(v69) = v59;
  *(&v69 + 1) = *v103;
  DWORD1(v69) = *&v103[3];
  v37 = v56;
  *(&v69 + 1) = v27;
  *v70 = v56;
  v38 = *(&v64 + 1);
  *&v70[8] = v64;
  *&v70[24] = v63;
  LOBYTE(v71) = v66;
  BYTE1(v71) = v62;
  *(&v71 + 2) = v101;
  WORD3(v71) = v102;
  *(&v71 + 1) = KeyPath;
  LOBYTE(v72[0]) = 0;
  *&v72[7] = *&v96[111];
  *(&v72[6] + 1) = *&v96[96];
  *(&v72[4] + 1) = *&v96[64];
  *(&v72[5] + 1) = *&v96[80];
  *(v72 + 1) = *v96;
  *(&v72[1] + 1) = *&v96[16];
  *(&v72[2] + 1) = *&v96[32];
  *(&v72[3] + 1) = *&v96[48];
  *(&v72[7] + 1) = sub_23DA65FF8;
  *&v73 = 0;
  *(&v73 + 1) = v29;
  *&v74 = v31;
  *(&v74 + 1) = sub_23DA7137C;
  v75 = v32;
  v39 = v72[7];
  v40 = v73;
  v41 = v74;
  *(v36 + 240) = v32;
  *(v36 + 208) = v40;
  *(v36 + 224) = v41;
  *(v36 + 192) = v39;
  v42 = v68;
  v43 = v69;
  v44 = *&v70[16];
  *(v36 + 32) = *v70;
  *(v36 + 48) = v44;
  *v36 = v42;
  *(v36 + 16) = v43;
  v45 = v71;
  v46 = v72[0];
  v47 = v72[2];
  *(v36 + 96) = v72[1];
  *(v36 + 112) = v47;
  *(v36 + 64) = v45;
  *(v36 + 80) = v46;
  v48 = v72[3];
  v49 = v72[4];
  v50 = v72[6];
  *(v36 + 160) = v72[5];
  *(v36 + 176) = v50;
  *(v36 + 128) = v48;
  *(v36 + 144) = v49;
  sub_23DA0E2B4(v114, &v76, &qword_27E2FDCF0, &qword_23DB830A0);
  sub_23DA0E2B4(&v113, &v76, &qword_27E2FE108, &qword_23DB79F98);
  sub_23DA0E2B4(&v112, &v76, &qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DA0E2B4(&v68, &v76, &qword_27E2FE0F8, &qword_23DB79F40);
  sub_23DA17988(v67, &qword_27E2FE0A8, &qword_23DB79EC0);
  v86 = *&v96[64];
  v87 = *&v96[80];
  *v88 = *&v96[96];
  v82 = *v96;
  v83 = *&v96[16];
  v84 = *&v96[32];
  v76 = v60;
  LOBYTE(v77) = v59;
  *(&v77 + 1) = *v103;
  DWORD1(v77) = *&v103[3];
  *(&v77 + 1) = v27;
  *&v78 = v37;
  *(&v78 + 1) = v64;
  *&v79 = v38;
  *(&v79 + 1) = v63;
  LOBYTE(v80) = v66;
  BYTE1(v80) = v62;
  *(&v80 + 2) = v101;
  WORD3(v80) = v102;
  *(&v80 + 1) = KeyPath;
  v81 = 0;
  v85 = *&v96[48];
  *&v88[15] = *&v96[111];
  v89 = sub_23DA65FF8;
  v90 = 0;
  v91 = v53;
  v92 = v31;
  v93 = sub_23DA7137C;
  v94 = v32;
  sub_23DA17988(&v76, &qword_27E2FE0F8, &qword_23DB79F40);
  sub_23DA17988(v65, &qword_27E2FE0A8, &qword_23DB79EC0);
}