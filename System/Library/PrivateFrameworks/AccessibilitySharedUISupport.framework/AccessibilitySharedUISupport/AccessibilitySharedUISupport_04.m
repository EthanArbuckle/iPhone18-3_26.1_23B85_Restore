uint64_t sub_23DA83B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v136 = *(v1 - 8);
  v137 = v1;
  v2 = *(v136 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v135 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v131 = &v110 - v8;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v129 = *(v132 - 8);
  v9 = *(v129 + 64);
  MEMORY[0x28223BE20](v132, v10);
  v128 = &v110 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v120 = *(v123 - 1);
  v12 = *(v120 + 64);
  MEMORY[0x28223BE20](v123, v13);
  v117 = &v110 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v115 = *(v116 - 8);
  v15 = *(v115 + 64);
  MEMORY[0x28223BE20](v116, v16);
  v114 = &v110 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v110 = *(v111 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x28223BE20](v111, v19);
  v21 = &v110 - v20;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v22 = *(v130 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v130, v24);
  v26 = &v110 - v25;
  v27 = sub_23DB6EA8C();
  v138 = *(v27 - 8);
  v28 = v138[8];
  MEMORY[0x28223BE20](v27, v29);
  v124 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v110 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v110 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v110 - v41;
  v122 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB89B70);
  v121 = v43;
  v139 = v0;
  v119 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB89BA0, &unk_284FE60C8);
  v118 = v44;
  sub_23DB6EA7C();
  v45 = type metadata accessor for Page.PracticeVOKeyboardCommand(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v50 = MEMORY[0x277D84F90];
  *&v141 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DB6EECC();
  (*(v22 + 32))(v48 + v49, v26, v130);
  v51 = v138 + 2;
  v52 = v138[2];
  v125 = v42;
  v52(v38, v42, v27);
  v127 = v34;
  v126 = v38;
  v130 = v27;
  v113 = v51;
  v112 = v52;
  v52(v34, v38, v27);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v141) = 0;
  sub_23DB6EECC();
  v54 = *(v110 + 32);
  v55 = v21;
  v56 = v111;
  v54(v48 + v53, v21);
  if (v50 >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v141 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v114;
  sub_23DB6EECC();
  (*(v115 + 32))(v48 + v58, v59, v116);
  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v141 = 0;
  v61 = v117;
  sub_23DB6EECC();
  (*(v120 + 32))(v48 + v60, v61, v123);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v141) = 0;
  sub_23DB6EECC();
  (v54)(v48 + v62, v21, v56);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v120 = xmmword_23DB74320;
  v141 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v64 = v128;
  sub_23DB6EECC();
  v123 = v54;
  v65 = *(v129 + 32);
  v66 = v132;
  v65(v48 + v63, v64, v132);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v141 = v120;
  sub_23DB6EECC();
  v65(v48 + v67, v64, v66);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v141) = 0;
  sub_23DB6EECC();
  v123(v48 + v68, v55, v56);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v141 = 0;
  *(&v141 + 1) = 0xE000000000000000;
  v70 = v131;
  sub_23DB6EECC();
  (*(v133 + 32))(v48 + v69, v70, v134);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v141 = 0uLL;
  sub_23DB6EECC();
  v65(v48 + v71, v64, v66);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v141 = nullsub_1;
  *(&v141 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v73 = v135;
  sub_23DB6EECC();
  (*(v136 + 32))(v48 + v72, v73, v137);
  v74 = v124;
  v75 = v127;
  v76 = v130;
  v112(v124, v127, v130);
  v77 = Page.init(id:title:text:subPages:iconName:)(v74, v122, v121, v119, v118, MEMORY[0x277D84F90], 0, 0);
  v78 = v138[1];
  v78(v75, v76);
  v78(v126, v76);
  v78(v125, v76);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v141) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v79 = (type metadata accessor for CommandToPractice(0) - 8);
  v80 = *(*v79 + 72);
  v81 = (*(*v79 + 80) + 32) & ~*(*v79 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_23DB73BA0;
  v83 = v82 + v81;

  v84 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB89BD0, &unk_284FE60F0);
  v86 = v85;
  *v83 = 0;
  *(v83 + 8) = 0xE000000000000000;
  *(v83 + 17) = 186;
  *(v83 + 19) = 0;
  v87 = v83 + v79[11];
  sub_23DB6EA7C();
  v88 = v79[12];
  *(v83 + v88) = 1;
  v89 = v79[13];
  *(v83 + v89) = 1;
  v90 = v79[14];
  v91 = type metadata accessor for KeyboardKey(0);
  (*(*(v91 - 8) + 56))(v83 + v90, 1, 1, v91);
  v92 = (v83 + v79[15]);
  *v92 = 0;
  v92[1] = 0;
  v93 = *(v83 + 8);
  *v83 = v84;
  *(v83 + 8) = v86;

  *(v83 + 16) = 55;
  *(v83 + 19) = 0;
  v94 = v92[1];
  *v92 = 0;
  v92[1] = 0;

  *(v83 + v88) = 1;
  *(v83 + v89) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v95 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v96 = *(v77 + v95);
  *(v77 + v95) = v82;

  LOBYTE(v140) = 55;
  v97 = sub_23DA9CB90();
  swift_getKeyPath();
  swift_getKeyPath();
  v140 = v97;

  sub_23DB6EF1C();
  v98 = swift_allocObject();
  swift_weakInit();
  v99 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v100 = v99[1];
  *v99 = sub_23DA9E028;
  v99[1] = v98;

  v101 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v102 = v101[1];
  *v101 = sub_23DA9E5CC;
  v101[1] = 0;

  v103 = swift_allocObject();
  swift_weakInit();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  *(v105 + 16) = v103;
  *(v105 + 24) = v104;
  v106 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v107 = *v106;
  v108 = v106[1];
  *v106 = sub_23DA9E6E4;
  v106[1] = v105;

  sub_23DA18BA0(v107);

  return v77;
}

uint64_t sub_23DA84A24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v136 = *(v1 - 8);
  v137 = v1;
  v2 = *(v136 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v135 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v131 = &v110 - v8;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v129 = *(v132 - 8);
  v9 = *(v129 + 64);
  MEMORY[0x28223BE20](v132, v10);
  v128 = &v110 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v120 = *(v123 - 1);
  v12 = *(v120 + 64);
  MEMORY[0x28223BE20](v123, v13);
  v117 = &v110 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v115 = *(v116 - 8);
  v15 = *(v115 + 64);
  MEMORY[0x28223BE20](v116, v16);
  v114 = &v110 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v110 = *(v111 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x28223BE20](v111, v19);
  v21 = &v110 - v20;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v22 = *(v130 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v130, v24);
  v26 = &v110 - v25;
  v27 = sub_23DB6EA8C();
  v138 = *(v27 - 8);
  v28 = v138[8];
  MEMORY[0x28223BE20](v27, v29);
  v124 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v110 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v110 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v110 - v41;
  v122 = sub_23DA9BC60(0xD000000000000024, 0x800000023DB89AE0);
  v121 = v43;
  v139 = v0;
  v119 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89B10, &unk_284FE6078);
  v118 = v44;
  sub_23DB6EA7C();
  v45 = type metadata accessor for Page.PracticeVOKeyboardCommand(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v50 = MEMORY[0x277D84F90];
  *&v141 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DB6EECC();
  (*(v22 + 32))(v48 + v49, v26, v130);
  v51 = v138 + 2;
  v52 = v138[2];
  v125 = v42;
  v52(v38, v42, v27);
  v127 = v34;
  v126 = v38;
  v130 = v27;
  v113 = v51;
  v112 = v52;
  v52(v34, v38, v27);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v141) = 0;
  sub_23DB6EECC();
  v54 = *(v110 + 32);
  v55 = v21;
  v56 = v111;
  v54(v48 + v53, v21);
  if (v50 >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v141 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v114;
  sub_23DB6EECC();
  (*(v115 + 32))(v48 + v58, v59, v116);
  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v141 = 0;
  v61 = v117;
  sub_23DB6EECC();
  (*(v120 + 32))(v48 + v60, v61, v123);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v141) = 0;
  sub_23DB6EECC();
  (v54)(v48 + v62, v21, v56);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v120 = xmmword_23DB74320;
  v141 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v64 = v128;
  sub_23DB6EECC();
  v123 = v54;
  v65 = *(v129 + 32);
  v66 = v132;
  v65(v48 + v63, v64, v132);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v141 = v120;
  sub_23DB6EECC();
  v65(v48 + v67, v64, v66);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v141) = 0;
  sub_23DB6EECC();
  v123(v48 + v68, v55, v56);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v141 = 0;
  *(&v141 + 1) = 0xE000000000000000;
  v70 = v131;
  sub_23DB6EECC();
  (*(v133 + 32))(v48 + v69, v70, v134);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v141 = 0uLL;
  sub_23DB6EECC();
  v65(v48 + v71, v64, v66);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v141 = nullsub_1;
  *(&v141 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v73 = v135;
  sub_23DB6EECC();
  (*(v136 + 32))(v48 + v72, v73, v137);
  v74 = v124;
  v75 = v127;
  v76 = v130;
  v112(v124, v127, v130);
  v77 = Page.init(id:title:text:subPages:iconName:)(v74, v122, v121, v119, v118, MEMORY[0x277D84F90], 0, 0);
  v78 = v138[1];
  v78(v75, v76);
  v78(v126, v76);
  v78(v125, v76);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v141) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v79 = (type metadata accessor for CommandToPractice(0) - 8);
  v80 = *(*v79 + 72);
  v81 = (*(*v79 + 80) + 32) & ~*(*v79 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_23DB73BA0;
  v83 = v82 + v81;

  v84 = sub_23DA9B4E0(0xD00000000000002ALL, 0x800000023DB89B40, &unk_284FE60A0);
  v86 = v85;
  *v83 = 0;
  *(v83 + 8) = 0xE000000000000000;
  *(v83 + 17) = 186;
  *(v83 + 19) = 0;
  v87 = v83 + v79[11];
  sub_23DB6EA7C();
  v88 = v79[12];
  *(v83 + v88) = 1;
  v89 = v79[13];
  *(v83 + v89) = 1;
  v90 = v79[14];
  v91 = type metadata accessor for KeyboardKey(0);
  (*(*(v91 - 8) + 56))(v83 + v90, 1, 1, v91);
  v92 = (v83 + v79[15]);
  *v92 = 0;
  v92[1] = 0;
  v93 = *(v83 + 8);
  *v83 = v84;
  *(v83 + 8) = v86;

  *(v83 + 16) = 54;
  *(v83 + 19) = 0;
  v94 = v92[1];
  *v92 = 0;
  v92[1] = 0;

  *(v83 + v88) = 1;
  *(v83 + v89) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v95 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v96 = *(v77 + v95);
  *(v77 + v95) = v82;

  LOBYTE(v140) = 54;
  v97 = sub_23DA9CB90();
  swift_getKeyPath();
  swift_getKeyPath();
  v140 = v97;

  sub_23DB6EF1C();
  v98 = swift_allocObject();
  swift_weakInit();
  v99 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v100 = v99[1];
  *v99 = sub_23DA9DFF0;
  v99[1] = v98;

  v101 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v102 = v101[1];
  *v101 = sub_23DA9E5D0;
  v101[1] = 0;

  v103 = swift_allocObject();
  swift_weakInit();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  *(v105 + 16) = v103;
  *(v105 + 24) = v104;
  v106 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v107 = *v106;
  v108 = v106[1];
  *v106 = sub_23DA9E6E4;
  v106[1] = v105;

  sub_23DA18BA0(v107);

  return v77;
}

uint64_t sub_23DA858AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v141 = *(v1 - 8);
  v142 = v1;
  v2 = *(v141 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v140 = &v115 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v138 = *(v5 - 8);
  v139 = v5;
  v6 = *(v138 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v136 = &v115 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v134 = *(v137 - 8);
  v9 = *(v134 + 64);
  MEMORY[0x28223BE20](v137, v10);
  v133 = &v115 - v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v125 = *(v128 - 1);
  v12 = *(v125 + 64);
  MEMORY[0x28223BE20](v128, v13);
  v122 = &v115 - v14;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v120 = *(v121 - 8);
  v15 = *(v120 + 64);
  MEMORY[0x28223BE20](v121, v16);
  v119 = &v115 - v17;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v115 = *(v116 - 8);
  v18 = *(v115 + 64);
  MEMORY[0x28223BE20](v116, v19);
  v21 = &v115 - v20;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v22 = *(v135 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v135, v24);
  v26 = &v115 - v25;
  v27 = sub_23DB6EA8C();
  v143 = *(v27 - 8);
  v28 = v143[8];
  MEMORY[0x28223BE20](v27, v29);
  v129 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v115 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v115 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v115 - v41;
  v127 = sub_23DA9BC60(0xD00000000000001FLL, 0x800000023DB89A30);
  v126 = v43;
  v144 = v0;
  v124 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89A50, &unk_284FE6000);
  v123 = v44;
  sub_23DB6EA7C();
  v45 = type metadata accessor for Page.PracticeVOKeyboardCommand(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v50 = MEMORY[0x277D84F90];
  *&v146 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DB6EECC();
  (*(v22 + 32))(v48 + v49, v26, v135);
  v51 = v143 + 2;
  v52 = v143[2];
  v130 = v42;
  v52(v38, v42, v27);
  v132 = v34;
  v131 = v38;
  v135 = v27;
  v118 = v51;
  v117 = v52;
  v52(v34, v38, v27);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v146) = 0;
  sub_23DB6EECC();
  v54 = *(v115 + 32);
  v55 = v21;
  v56 = v116;
  v54(v48 + v53, v21);
  if (v50 >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v146 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v119;
  sub_23DB6EECC();
  (*(v120 + 32))(v48 + v58, v59, v121);
  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v146 = 0;
  v61 = v122;
  sub_23DB6EECC();
  (*(v125 + 32))(v48 + v60, v61, v128);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v146) = 0;
  sub_23DB6EECC();
  (v54)(v48 + v62, v21, v56);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v125 = xmmword_23DB74320;
  v146 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v64 = v133;
  sub_23DB6EECC();
  v128 = v54;
  v65 = *(v134 + 32);
  v66 = v137;
  v65(v48 + v63, v64, v137);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v146 = v125;
  sub_23DB6EECC();
  v65(v48 + v67, v64, v66);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v146) = 0;
  sub_23DB6EECC();
  v128(v48 + v68, v55, v56);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v146 = 0;
  *(&v146 + 1) = 0xE000000000000000;
  v70 = v136;
  sub_23DB6EECC();
  (*(v138 + 32))(v48 + v69, v70, v139);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v146 = 0uLL;
  sub_23DB6EECC();
  v65(v48 + v71, v64, v66);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v146 = nullsub_1;
  *(&v146 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v73 = v140;
  sub_23DB6EECC();
  (*(v141 + 32))(v48 + v72, v73, v142);
  v74 = v129;
  v75 = v132;
  v76 = v135;
  v117(v129, v132, v135);
  v77 = Page.init(id:title:text:subPages:iconName:)(v74, v127, v126, v124, v123, MEMORY[0x277D84F90], 0, 0);
  v78 = v143[1];
  v78(v75, v76);
  v78(v131, v76);
  v78(v130, v76);
  v79 = sub_23DB7087C();
  v80 = MGGetBoolAnswer();

  if (v80)
  {

    v81 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89AB0, &unk_284FE6028);
    v83 = v82;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v146 = v81;
    *(&v146 + 1) = v83;
    sub_23DB6EF1C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v146) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v84 = (type metadata accessor for CommandToPractice(0) - 8);
  v85 = *(*v84 + 72);
  v86 = (*(*v84 + 80) + 32) & ~*(*v84 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_23DB73BA0;
  v88 = v87 + v86;

  v89 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB89A80, &unk_284FE6050);
  v91 = v90;
  *v88 = 0;
  *(v88 + 8) = 0xE000000000000000;
  *(v88 + 17) = 186;
  *(v88 + 19) = 0;
  v92 = v88 + v84[11];
  sub_23DB6EA7C();
  v93 = v84[12];
  *(v88 + v93) = 1;
  v94 = v84[13];
  *(v88 + v94) = 1;
  v95 = v84[14];
  v96 = type metadata accessor for KeyboardKey(0);
  (*(*(v96 - 8) + 56))(v88 + v95, 1, 1, v96);
  v97 = (v88 + v84[15]);
  *v97 = 0;
  v97[1] = 0;
  v98 = *(v88 + 8);
  *v88 = v89;
  *(v88 + 8) = v91;

  *(v88 + 16) = 53;
  *(v88 + 19) = 0;
  v99 = v97[1];
  *v97 = 0;
  v97[1] = 0;

  *(v88 + v93) = 1;
  *(v88 + v94) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v100 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v101 = *(v77 + v100);
  *(v77 + v100) = v87;

  LOBYTE(v145) = 53;
  v102 = sub_23DA9CB90();
  swift_getKeyPath();
  swift_getKeyPath();
  v145 = v102;

  sub_23DB6EF1C();
  v103 = swift_allocObject();
  swift_weakInit();
  v104 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v105 = v104[1];
  *v104 = sub_23DA9DFB0;
  v104[1] = v103;

  v106 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v107 = v106[1];
  *v106 = sub_23DA9E5D0;
  v106[1] = 0;

  v108 = swift_allocObject();
  swift_weakInit();

  v109 = swift_allocObject();
  swift_weakInit();
  v110 = swift_allocObject();
  *(v110 + 16) = v108;
  *(v110 + 24) = v109;
  v111 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v112 = *v111;
  v113 = v111[1];
  *v111 = sub_23DA9E6E4;
  v111[1] = v110;

  sub_23DA18BA0(v112);

  return v77;
}

uint64_t sub_23DA867C4()
{
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
LABEL_3:
    v0 = objc_opt_self();
    v1 = sub_23DB7087C();
    [v0 triggerEventCommand_];
  }

LABEL_4:
  v2 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  *(v2 + 40) = 27;

  sub_23DABC32C();
}

uint64_t sub_23DA868AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v152 = *(v1 - 8);
  v153 = v1;
  v2 = *(v152 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v151 = &v127 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v149 = *(v5 - 8);
  v150 = v5;
  v6 = *(v149 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v147 = &v127 - v8;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v144 = *(v148 - 8);
  v9 = *(v144 + 64);
  MEMORY[0x28223BE20](v148, v10);
  v142 = &v127 - v11;
  *&v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v134 = *(v135 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x28223BE20](v135, v13);
  v133 = &v127 - v14;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v129 = *(v130 - 8);
  v15 = *(v129 + 64);
  MEMORY[0x28223BE20](v130, v16);
  v128 = &v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v127 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v140 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v155 = &v127 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v127 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v127 - v38;
  v139 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB89960);
  v138 = v40;
  v156 = v0;
  v137 = sub_23DA9B4E0(0xD00000000000001DLL, 0x800000023DB89980, &unk_284FE5F60);
  v136 = v41;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v157) = 0;
  sub_23DB6EECC();
  v47 = *(v19 + 32);
  v47(v45 + v46, v23, v18);
  v145 = v25;
  v48 = v25 + 16;
  v49 = *(v25 + 16);
  v141 = v39;
  v49(v35, v39, v24);
  v143 = v35;
  v146 = v24;
  v132 = v48;
  v131 = v49;
  v49(v155, v35, v24);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v157) = 0;
  sub_23DB6EECC();
  v154 = v18;
  v47(v45 + v50, v23, v18);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v157 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v128;
  sub_23DB6EECC();
  (*(v129 + 32))(v45 + v53, v54, v130);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v157 = 0;
  v56 = v133;
  sub_23DB6EECC();
  (*(v134 + 32))(v45 + v55, v56, v135);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v157) = 0;
  sub_23DB6EECC();
  v47(v45 + v57, v23, v154);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v135 = xmmword_23DB74320;
  v157 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v142;
  sub_23DB6EECC();
  v60 = *(v144 + 32);
  v61 = v148;
  v60(v45 + v58, v59, v148);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v157 = v135;
  sub_23DB6EECC();
  v60(v45 + v62, v59, v61);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v157) = 0;
  sub_23DB6EECC();
  v47(v45 + v63, v23, v154);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v157 = 0;
  *(&v157 + 1) = 0xE000000000000000;
  v65 = v147;
  sub_23DB6EECC();
  (*(v149 + 32))(v45 + v64, v65, v150);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v157 = 0uLL;
  sub_23DB6EECC();
  v60(v45 + v66, v59, v61);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v157 = nullsub_1;
  *(&v157 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v151;
  sub_23DB6EECC();
  (*(v152 + 32))(v45 + v67, v68, v153);
  v69 = v140;
  v70 = v155;
  v71 = v146;
  v131(v140, v155, v146);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v139, v138, v137, v136, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v145 + 8);
  v73(v70, v71);
  v73(v143, v71);
  v73(v141, v71);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v157) = 0;
  v153 = v72;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v74 = (type metadata accessor for CommandToPractice(0) - 8);
  v75 = *v74;
  v152 = *(*v74 + 72);
  v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v154 = 2 * v152;
  v77 = swift_allocObject();
  v155 = v77;
  *(v77 + 16) = xmmword_23DB76A80;
  v78 = v77 + v76;
  v79 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB899A0, &unk_284FE5F88);
  v149 = v80;
  v150 = v79;
  *v78 = 0;
  *(v78 + 8) = 0xE000000000000000;
  *(v78 + 17) = 186;
  *(v78 + 19) = 0;
  v81 = v78 + v74[11];
  sub_23DB6EA7C();
  v82 = v74[12];
  *(v78 + v82) = 1;
  v83 = v74[13];
  *(v78 + v83) = 1;
  v84 = v74[14];
  v85 = type metadata accessor for KeyboardKey(0);
  v86 = *(v85 - 8);
  v87 = *(v86 + 56);
  v88 = (v86 + 56);
  v87(v78 + v84, 1, 1, v85);
  v151 = v88;
  v89 = (v78 + v74[15]);
  *v89 = 0;
  v89[1] = 0;
  v90 = *(v78 + 8);
  v91 = v149;
  *v78 = v150;
  *(v78 + 8) = v91;

  *(v78 + 16) = 59;
  *(v78 + 19) = 1;
  v92 = v89[1];
  *v89 = 0;
  v89[1] = 0;

  *(v78 + v82) = 1;
  *(v78 + v83) = 0;
  v93 = v78 + v152;
  v94 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB899D0, &unk_284FE5FB0);
  v96 = v95;
  *v93 = 0;
  *(v93 + 8) = 0xE000000000000000;
  *(v93 + 17) = 186;
  *(v93 + 19) = 0;
  v97 = v93 + v74[11];
  sub_23DB6EA7C();
  v98 = v74[12];
  *(v93 + v98) = 1;
  v99 = v74[13];
  *(v93 + v99) = 1;
  v87(v93 + v74[14], 1, 1, v85);
  v100 = (v93 + v74[15]);
  *v100 = 0;
  v100[1] = 0;
  v101 = *(v93 + 8);
  *v93 = v94;
  *(v93 + 8) = v96;

  *(v93 + 16) = 54;
  *(v93 + 19) = 0;
  v102 = v100[1];
  *v100 = 0;
  v100[1] = 0;

  *(v93 + v98) = 1;
  *(v93 + v99) = 0;
  v103 = v78 + v154;
  v104 = v156;
  v105 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB89A00, &unk_284FE5FD8);
  v107 = v106;
  *v103 = 0;
  *(v103 + 8) = 0xE000000000000000;
  *(v103 + 17) = 186;
  *(v103 + 19) = 0;
  v108 = v103 + v74[11];
  sub_23DB6EA7C();
  v109 = v74[12];
  *(v103 + v109) = 1;
  v110 = v74[13];
  *(v103 + v110) = 1;
  v87(v103 + v74[14], 1, 1, v85);
  v111 = (v103 + v74[15]);
  *v111 = 0;
  v111[1] = 0;
  v112 = *(v103 + 8);
  *v103 = v105;
  *(v103 + 8) = v107;

  *(v103 + 16) = 40;
  *(v103 + 19) = 0;
  v113 = v111[1];
  *v111 = 0;
  v111[1] = 0;

  *(v103 + v109) = 1;
  *(v103 + v110) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v114 = v153;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v115 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v116 = *(v114 + v115);
  *(v114 + v115) = v155;

  v117 = swift_allocObject();
  swift_weakInit();
  v118 = swift_allocObject();
  *(v118 + 16) = v117;
  *(v118 + 24) = v104;
  v119 = (v114 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v120 = *v119;
  v121 = v119[1];
  *v119 = sub_23DA9E6D0;
  v119[1] = v118;
  swift_retain_n();

  sub_23DA18BA0(v120);

  v122 = swift_allocObject();
  swift_weakInit();

  v123 = swift_allocObject();
  *(v123 + 16) = v122;
  *(v123 + 24) = v104;
  v124 = (v114 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v125 = v124[1];
  *v124 = sub_23DA9E6E0;
  v124[1] = v123;

  return v114;
}

uint64_t sub_23DA87784()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v52 = (&v42 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v42 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v16 = result;
    swift_beginAccess();
    v50 = v15;
    v17 = *(v16 + v15);
    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();

    v48 = v19;
    v49 = KeyPath;
    v47 = sub_23DB6EEFC();
    v45 = v20;
    v21 = swift_getKeyPath();
    v22 = swift_getKeyPath();
    v51 = v16;
    v46 = v21;
    v44 = v22;
    v43 = sub_23DB6EEFC();
    v42 = v23;

    v24 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_3:
    v25 = 0;
    v26 = v1 + 7;
    v53 = v17;
    v27 = *(v17 + 16);
    v1 += 6;
    v28 = &qword_27E2FE1C8;
    if (!v27)
    {
LABEL_4:
      v29 = 1;
      v25 = v27;
      goto LABEL_7;
    }

    while (1)
    {
      v17 = v13;
      v13 = v1;
      v1 = v26;
      v30 = v27;
      v31 = v24;
      v32 = v28;
      v33 = v53;
      if (v25 >= *(v53 + 16))
      {
        goto LABEL_16;
      }

      v34 = *(type metadata accessor for CommandToPractice(0) - 8);
      v54 = v25 + 1;
      v35 = v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25;
      v36 = *(v0 + 48);
      v37 = v52;
      *v52 = v25;
      sub_23DA9DDB8(v35, v37 + v36, type metadata accessor for CommandToPractice);
      sub_23DA17A54(v37, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v29 = 0;
      v25 = v54;
      v28 = v32;
      v24 = v31;
      v27 = v30;
      v26 = v1;
      v1 = v13;
      v13 = v17;
LABEL_7:
      (*v26)(v9, v29, 1, v0);
      sub_23DA17A54(v9, v13, v28, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {
        break;
      }

      v17 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v24 = sub_23DAC8B24(v17);
        goto LABEL_3;
      }

      if (v17 >= *(v24 + 16))
      {
        goto LABEL_15;
      }

      v38 = *(type metadata accessor for CommandToPractice(0) - 8);
      v39 = v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v17;
      *(v39 + 18) = 0;
      *(v39 + 19) = v17 == 0;
      sub_23DA9DE28(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
      if (v25 == v27)
      {
        goto LABEL_4;
      }
    }

    *v42 = 0;
    *v45 = 0;
    v43(v55, 0);

    v47(v56, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v40 = v51;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v41 = *(v40 + v50);
    *(v40 + v50) = v24;
  }

  return result;
}

uint64_t sub_23DA87D18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v155 = *(v1 - 8);
  v156 = v1;
  v2 = *(v155 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v154 = v131 - v4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v152 = *(v153 - 8);
  v5 = *(v152 + 64);
  MEMORY[0x28223BE20](v153, v6);
  v149 = v131 - v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v150 = *(v151 - 8);
  v8 = *(v150 + 64);
  MEMORY[0x28223BE20](v151, v9);
  v148 = v131 - v10;
  *&v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v141 = *(v142 - 8);
  v11 = *(v141 + 64);
  MEMORY[0x28223BE20](v142, v12);
  v138 = v131 - v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v136 = *(v137 - 8);
  v14 = *(v136 + 64);
  MEMORY[0x28223BE20](v137, v15);
  v135 = v131 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v17 = *(v132 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v132, v19);
  v21 = v131 - v20;
  v22 = sub_23DB6EA8C();
  v158 = *(v22 - 8);
  v159 = v22;
  v23 = *(v158 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v145 = v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v157 = v131 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v32 = v131 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = v131 - v35;
  v144 = sub_23DA9BC60(0xD000000000000016, 0x800000023DB898C0);
  v143 = v37;
  sub_23DA7194C(0, &v161);
  v38 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v38;
  v160 = v0;
  v140 = sub_23DA9B4E0(0xD000000000000015, 0x800000023DB898E0, inited);
  v139 = v40;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v41 = type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v161) = 0;
  sub_23DB6EECC();
  v47 = *(v17 + 32);
  v46 = v17 + 32;
  v48 = v132;
  v47(v44 + v45, v21, v132);
  v49 = v158 + 16;
  v50 = *(v158 + 16);
  v146 = v36;
  v51 = v159;
  v50(v32, v36, v159);
  v147 = v32;
  v134 = v49;
  v133 = v50;
  v50(v157, v32, v51);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v161) = 0;
  sub_23DB6EECC();
  v53 = v44 + v52;
  v54 = v48;
  v55 = v47;
  v47(v53, v21, v48);
  v56 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v161 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v56;
  v60 = v135;
  sub_23DB6EECC();
  (*(v136 + 32))(v44 + v58, v60, v137);
  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v59;
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v161 = 0;
  v62 = v138;
  sub_23DB6EECC();
  (*(v141 + 32))(v44 + v61, v62, v142);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v161) = 0;
  v64 = v21;
  sub_23DB6EECC();
  v131[1] = v46;
  v65 = v55;
  v55(v44 + v63, v21, v54);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v142 = xmmword_23DB74320;
  v161 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v67 = v148;
  sub_23DB6EECC();
  v68 = *(v150 + 32);
  v69 = v151;
  v68(v44 + v66, v67, v151);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v161 = v142;
  sub_23DB6EECC();
  v68(v44 + v70, v67, v69);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v161) = 0;
  sub_23DB6EECC();
  v65(v44 + v71, v64, v54);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v161 = 0;
  *(&v161 + 1) = 0xE000000000000000;
  v73 = v149;
  sub_23DB6EECC();
  (*(v152 + 32))(v44 + v72, v73, v153);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v161 = 0uLL;
  sub_23DB6EECC();
  v68(v44 + v74, v67, v69);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v161 = nullsub_1;
  *(&v161 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v76 = v154;
  sub_23DB6EECC();
  (*(v155 + 32))(v44 + v75, v76, v156);
  v77 = v145;
  v78 = v157;
  v79 = v159;
  v133(v145, v157, v159);
  v80 = Page.init(id:title:text:subPages:iconName:)(v77, v144, v143, v140, v139, MEMORY[0x277D84F90], 0, 0);
  v81 = *(v158 + 8);
  v81(v78, v79);
  v81(v147, v79);
  v81(v146, v79);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v161) = 1;
  v155 = v80;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v82 = (type metadata accessor for CommandToPractice(0) - 8);
  v83 = *(*v82 + 72);
  v84 = (*(*v82 + 80) + 32) & ~*(*v82 + 80);
  v156 = 2 * v83;
  v85 = swift_allocObject();
  v157 = v85;
  *(v85 + 16) = xmmword_23DB76A80;
  v86 = v85 + v84;
  v154 = sub_23DA9B4E0(0xD00000000000001BLL, 0x800000023DB89900, &unk_284FE5BA0);
  v88 = v87;
  *v86 = 0;
  *(v86 + 8) = 0xE000000000000000;
  *(v86 + 17) = 186;
  *(v86 + 19) = 0;
  v89 = v86 + v82[11];
  sub_23DB6EA7C();
  v90 = v82[12];
  *(v86 + v90) = 1;
  v91 = v82[13];
  *(v86 + v91) = 1;
  v92 = v82[14];
  v159 = type metadata accessor for KeyboardKey(0);
  v158 = *(*(v159 - 8) + 56);
  (v158)(v86 + v92, 1, 1, v159);
  v93 = (v86 + v82[15]);
  *v93 = 0;
  v93[1] = 0;
  v94 = *(v86 + 8);
  *v86 = v154;
  *(v86 + 8) = v88;

  *(v86 + 16) = 38;
  *(v86 + 19) = 1;
  v95 = v93[1];
  *v93 = 0;
  v93[1] = 0;

  *(v86 + v90) = 1;
  *(v86 + v91) = 1;
  v96 = v86 + v83;
  v97 = v160;
  v98 = sub_23DA9B4E0(0xD00000000000001BLL, 0x800000023DB89920, &unk_284FE5BC8);
  v100 = v99;
  *v96 = 0;
  *(v96 + 8) = 0xE000000000000000;
  *(v96 + 17) = 186;
  *(v96 + 19) = 0;
  v101 = v86 + v83 + v82[11];
  sub_23DB6EA7C();
  v102 = v82[12];
  *(v96 + v102) = 1;
  v103 = v82[13];
  *(v96 + v103) = 1;
  (v158)(v86 + v83 + v82[14], 1, 1, v159);
  v104 = (v86 + v83 + v82[15]);
  *v104 = 0;
  v104[1] = 0;
  v105 = *(v96 + 8);
  *v96 = v98;
  *(v96 + 8) = v100;

  *(v96 + 16) = 39;
  *(v96 + 19) = 0;
  v106 = v104[1];
  *v104 = 0;
  v104[1] = 0;

  *(v96 + v102) = 1;
  *(v96 + v103) = 1;
  v107 = v86 + v156;
  v108 = sub_23DA9B4E0(0xD00000000000001BLL, 0x800000023DB89940, &unk_284FE5BF0);
  v110 = v109;
  *v107 = 0;
  *(v107 + 8) = 0xE000000000000000;
  *(v107 + 17) = 186;
  *(v107 + 19) = 0;
  v111 = v107 + v82[11];
  sub_23DB6EA7C();
  v112 = v82[12];
  *(v107 + v112) = 1;
  v113 = v82[13];
  *(v107 + v113) = 1;
  (v158)(v107 + v82[14], 1, 1, v159);
  v114 = (v107 + v82[15]);
  *v114 = 0;
  v114[1] = 0;
  v115 = *(v107 + 8);
  *v107 = v108;
  *(v107 + 8) = v110;

  *(v107 + 16) = 40;
  *(v107 + 19) = 0;
  v116 = v114[1];
  *v114 = 0;
  v114[1] = 0;

  *(v107 + v112) = 1;
  *(v107 + v113) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v117 = v155;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v118 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v119 = *(v117 + v118);
  *(v117 + v118) = v157;

  v120 = swift_allocObject();
  swift_weakInit();
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v97;
  v122 = v97;
  v123 = (v117 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v124 = *v123;
  v125 = v123[1];
  *v123 = sub_23DA9E6D0;
  v123[1] = v121;
  swift_retain_n();

  sub_23DA18BA0(v124);

  v126 = swift_allocObject();
  swift_weakInit();

  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v122;
  v128 = (v117 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v129 = v128[1];
  *v128 = sub_23DA9E6E0;
  v128[1] = v127;

  return v117;
}

uint64_t sub_23DA88C88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v101 = *(v0 - 8);
  v102 = v0;
  v1 = *(v101 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v100 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v98 = *(v4 - 8);
  v99 = v4;
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v95 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v85 = &v76 - v11;
  *&v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v83 = *(v84 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v84, v13);
  v80 = &v76 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v15 = *(v79 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v79, v17);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v76 - v24;
  v26 = sub_23DB6EA8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v90 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v76 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v76 - v37;
  v39 = sub_23DA9BC60(0xD00000000000002ELL, 0x800000023DB89860);
  v88 = v40;
  v89 = v39;
  v41 = sub_23DA9BC60(0xD00000000000002DLL, 0x800000023DB89890);
  v86 = v42;
  v87 = v41;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.CollectionFinished(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v92 = v34;
  v93 = v27;
  v47 = *(v27 + 16);
  v91 = v38;
  v94 = v26;
  v82 = v27 + 16;
  v81 = v47;
  v47(v34, v38, v26);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v103) = 0;
  sub_23DB6EECC();
  v49 = v20;
  v78 = *(v21 + 32);
  v78(v46 + v48, v25, v20);
  v50 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v51 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v51 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v51;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v103 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v15 + 32))(v46 + v52, v19, v79);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v103 = 0;
  v54 = v80;
  sub_23DB6EECC();
  (*(v83 + 32))(v46 + v53, v54, v84);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v103) = 0;
  sub_23DB6EECC();
  v77 = v49;
  v56 = v78;
  v78(v46 + v55, v25, v49);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v84 = xmmword_23DB74320;
  v103 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v58 = v85;
  sub_23DB6EECC();
  v59 = v97;
  v60 = *(v96 + 32);
  v60(v46 + v57, v58, v97);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v103 = v84;
  sub_23DB6EECC();
  v60(v46 + v61, v58, v59);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v103) = 0;
  sub_23DB6EECC();
  v56(v46 + v62, v25, v77);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v103 = 0;
  *(&v103 + 1) = 0xE000000000000000;
  v64 = v95;
  sub_23DB6EECC();
  (*(v98 + 32))(v46 + v63, v64, v99);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v103 = 0uLL;
  sub_23DB6EECC();
  v60(v46 + v65, v58, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v103 = nullsub_1;
  *(&v103 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v67 = v100;
  sub_23DB6EECC();
  (*(v101 + 32))(v46 + v66, v67, v102);
  v68 = v90;
  v69 = v92;
  v70 = v94;
  v81(v90, v92, v94);
  v71 = Page.init(id:title:text:subPages:iconName:)(v68, v89, v88, v87, v86, MEMORY[0x277D84F90], 0, 0);
  v72 = *(v93 + 8);
  v72(v69, v70);
  v72(v91, v70);
  v73 = (v71 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v74 = v73[1];
  *v73 = sub_23DA9E5CC;
  v73[1] = 0;

  return v71;
}

uint64_t sub_23DA89544()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v153 = *(v1 - 8);
  v154 = v1;
  v2 = *(v153 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v152 = &v128 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v150 = *(v5 - 8);
  v151 = v5;
  v6 = *(v150 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v148 = &v128 - v8;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v145 = *(v149 - 8);
  v9 = *(v145 + 64);
  MEMORY[0x28223BE20](v149, v10);
  v143 = &v128 - v11;
  *&v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v135 = *(v136 - 8);
  v12 = *(v135 + 64);
  MEMORY[0x28223BE20](v136, v13);
  v134 = &v128 - v14;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v130 = *(v131 - 8);
  v15 = *(v130 + 64);
  MEMORY[0x28223BE20](v131, v16);
  v129 = &v128 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v128 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v141 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v156 = &v128 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v128 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v128 - v38;
  v140 = sub_23DA9BC60(0xD00000000000001FLL, 0x800000023DB89790);
  v139 = v40;
  v157 = v0;
  v138 = sub_23DA9B4E0(0xD00000000000001ELL, 0x800000023DB897B0, &unk_284FE5948);
  v137 = v41;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  v47 = *(v19 + 32);
  v47(v45 + v46, v23, v18);
  v146 = v25;
  v48 = v25 + 16;
  v49 = *(v25 + 16);
  v142 = v39;
  v49(v35, v39, v24);
  v144 = v35;
  v147 = v24;
  v133 = v48;
  v132 = v49;
  v49(v156, v35, v24);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  v155 = v18;
  v47(v45 + v50, v23, v18);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v158 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v129;
  sub_23DB6EECC();
  (*(v130 + 32))(v45 + v53, v54, v131);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v158 = 0;
  v56 = v134;
  sub_23DB6EECC();
  (*(v135 + 32))(v45 + v55, v56, v136);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  v47(v45 + v57, v23, v155);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v136 = xmmword_23DB74320;
  v158 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v143;
  sub_23DB6EECC();
  v60 = *(v145 + 32);
  v61 = v149;
  v60(v45 + v58, v59, v149);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v158 = v136;
  sub_23DB6EECC();
  v60(v45 + v62, v59, v61);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  v47(v45 + v63, v23, v155);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  v65 = v148;
  sub_23DB6EECC();
  (*(v150 + 32))(v45 + v64, v65, v151);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v158 = 0uLL;
  sub_23DB6EECC();
  v60(v45 + v66, v59, v61);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v158 = nullsub_1;
  *(&v158 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v152;
  sub_23DB6EECC();
  (*(v153 + 32))(v45 + v67, v68, v154);
  v69 = v141;
  v70 = v156;
  v71 = v147;
  v132(v141, v156, v147);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v140, v139, v138, v137, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v146 + 8);
  v73(v70, v71);
  v73(v144, v71);
  v73(v142, v71);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v158) = 0;
  v154 = v72;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v74 = (type metadata accessor for CommandToPractice(0) - 8);
  v75 = *(*v74 + 72);
  v76 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
  v155 = 2 * v75;
  v77 = swift_allocObject();
  v156 = v77;
  *(v77 + 16) = xmmword_23DB76A80;
  v78 = v77 + v76;
  v79 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB897D0, &unk_284FE5970);
  v150 = v80;
  *v78 = 0;
  *(v78 + 8) = 0xE000000000000000;
  *(v78 + 17) = 186;
  *(v78 + 19) = 0;
  v81 = v78 + v74[11];
  sub_23DB6EA7C();
  v82 = v74[12];
  *(v78 + v82) = 1;
  v83 = v74[13];
  *(v78 + v83) = 1;
  v84 = v74[14];
  v85 = type metadata accessor for KeyboardKey(0);
  v86 = *(v85 - 8);
  v151 = *(v86 + 56);
  v152 = v85;
  v87 = v86 + 56;
  v151(v78 + v84, 1, 1, v85);
  v153 = v87;
  v88 = (v78 + v74[15]);
  *v88 = 0;
  v88[1] = 0;
  v89 = *(v78 + 8);
  v90 = v150;
  *v78 = v79;
  *(v78 + 8) = v90;

  *(v78 + 16) = 35;
  *(v78 + 19) = 0;
  v91 = v88[1];
  *v88 = 0;
  v88[1] = 0;

  *(v78 + v82) = 1;
  *(v78 + v83) = 1;
  v92 = v78 + v75;
  v93 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB89800, &unk_284FE5998);
  v95 = v94;
  *v92 = 0;
  *(v92 + 8) = 0xE000000000000000;
  *(v92 + 17) = 186;
  *(v92 + 19) = 0;
  v96 = v78 + v75 + v74[11];
  sub_23DB6EA7C();
  v97 = v74[12];
  *(v92 + v97) = 1;
  v98 = v74[13];
  *(v92 + v98) = 1;
  v99 = v85;
  v100 = v151;
  v151(v92 + v74[14], 1, 1, v99);
  v101 = (v92 + v74[15]);
  *v101 = 0;
  v101[1] = 0;
  v102 = *(v92 + 8);
  *v92 = v93;
  *(v92 + 8) = v95;

  *(v92 + 16) = 28;
  *(v92 + 19) = 0;
  v103 = v101[1];
  *v101 = 0;
  v101[1] = 0;

  *(v92 + v97) = 1;
  *(v92 + v98) = 1;
  v104 = v78 + v155;
  v105 = v157;
  v106 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB89830, &unk_284FE59C0);
  v108 = v107;
  *v104 = 0;
  *(v104 + 8) = 0xE000000000000000;
  *(v104 + 17) = 186;
  *(v104 + 19) = 0;
  v109 = v104 + v74[11];
  sub_23DB6EA7C();
  v110 = v74[12];
  *(v104 + v110) = 1;
  v111 = v74[13];
  *(v104 + v111) = 1;
  v100(v104 + v74[14], 1, 1, v152);
  v112 = (v104 + v74[15]);
  *v112 = 0;
  v112[1] = 0;
  v113 = *(v104 + 8);
  *v104 = v106;
  *(v104 + 8) = v108;

  *(v104 + 16) = 40;
  *(v104 + 19) = 0;
  v114 = v112[1];
  *v112 = 0;
  v112[1] = 0;

  *(v104 + v110) = 1;
  *(v104 + v111) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v115 = v154;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v116 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v117 = *(v115 + v116);
  *(v115 + v116) = v156;

  v118 = swift_allocObject();
  swift_weakInit();
  v119 = swift_allocObject();
  *(v119 + 16) = v118;
  *(v119 + 24) = v105;
  v120 = (v115 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v121 = v120[1];
  *v120 = sub_23DA9DF94;
  v120[1] = v119;
  swift_retain_n();

  v122 = swift_allocObject();
  swift_weakInit();

  v123 = swift_allocObject();
  *(v123 + 16) = v122;
  *(v123 + 24) = v105;
  v124 = (v115 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v125 = *v124;
  v126 = v124[1];
  *v124 = sub_23DA9E6D0;
  v124[1] = v123;

  sub_23DA18BA0(v125);

  return v115;
}

uint64_t sub_23DA8A41C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v186 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v187 = (&v182 - v7);
  v219 = sub_23DB6EAFC();
  v218 = *(v219 - 8);
  v8 = *(v218 + 64);
  MEMORY[0x28223BE20](v219, v9);
  v216 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_23DB6EB1C();
  v214 = *(v215 - 8);
  v11 = *(v214 + 64);
  MEMORY[0x28223BE20](v215, v12);
  v213 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B0, &qword_23DB7A3E8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v217 = &v182 - v17;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v220 = *(v221 - 8);
  v18 = v220[8];
  MEMORY[0x28223BE20](v221, v19);
  v212 = &v182 - v20;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v210 = *(v211 - 8);
  v21 = *(v210 + 64);
  MEMORY[0x28223BE20](v211, v22);
  v207 = &v182 - v23;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v208 = *(v209 - 8);
  v24 = *(v208 + 64);
  MEMORY[0x28223BE20](v209, v25);
  v204 = &v182 - v26;
  *&v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v198 = *(v199 - 8);
  v27 = *(v198 + 64);
  MEMORY[0x28223BE20](v199, v28);
  v195 = &v182 - v29;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v193 = *(v194 - 8);
  v30 = *(v193 + 64);
  MEMORY[0x28223BE20](v194, v31);
  v192 = &v182 - v32;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v33 = *(v189 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v189, v35);
  v37 = &v182 - v36;
  v38 = sub_23DB6EA8C();
  v223 = *(v38 - 8);
  v39 = v223[8];
  MEMORY[0x28223BE20](v38, v40);
  v202 = &v182 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v222 = &v182 - v44;
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v182 - v47;
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v182 - v51;
  v201 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB89640);
  v200 = v53;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v182 = xmmword_23DB76A80;
  *(inited + 16) = xmmword_23DB76A80;
  *(inited + 32) = 10276;
  sub_23DA7194C(0, (inited + 34));
  v185 = "Bar.practice.title";
  v183 = 0xD000000000000021;
  v224 = v0;
  v197 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB89670, inited);
  v196 = v55;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v56 = type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v226) = 0;
  sub_23DB6EECC();
  v62 = *(v33 + 32);
  v61 = v33 + 32;
  v63 = v189;
  v62(v59 + v60, v37, v189);
  v64 = v223 + 2;
  v65 = v223[2];
  v203 = v52;
  v65(v48, v52, v38);
  v205 = v48;
  v206 = v38;
  v191 = v64;
  v190 = v65;
  v65(v222, v48, v38);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v226) = 0;
  sub_23DB6EECC();
  v67 = v63;
  v68 = v62;
  v62(v59 + v66, v37, v63);
  v69 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v70 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v70 = MEMORY[0x277D84FA0];
  }

  *(v59 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v70;
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v226 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v72 = v69;
  v73 = v192;
  sub_23DB6EECC();
  (*(v193 + 32))(v59 + v71, v73, v194);
  *(v59 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v72;
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v226 = 0;
  v75 = v195;
  sub_23DB6EECC();
  (*(v198 + 32))(v59 + v74, v75, v199);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v226) = 0;
  sub_23DB6EECC();
  v188 = v61;
  v68(v59 + v76, v37, v67);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v199 = xmmword_23DB74320;
  v226 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v78 = v204;
  sub_23DB6EECC();
  v79 = *(v208 + 32);
  v80 = v209;
  v79(v59 + v77, v78, v209);
  v81 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v226 = v199;
  sub_23DB6EECC();
  v79(v59 + v81, v78, v80);
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v226) = 0;
  sub_23DB6EECC();
  v68(v59 + v82, v37, v67);
  v83 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v226 = 0;
  *(&v226 + 1) = 0xE000000000000000;
  v84 = v207;
  sub_23DB6EECC();
  (*(v210 + 32))(v59 + v83, v84, v211);
  v85 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v226 = 0uLL;
  sub_23DB6EECC();
  v79(v59 + v85, v78, v80);
  v86 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v226 = nullsub_1;
  *(&v226 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v87 = v212;
  sub_23DB6EECC();
  (v220[4])(v59 + v86, v87, v221);
  v88 = v202;
  v89 = v222;
  v90 = v206;
  v190(v202, v222, v206);
  v211 = Page.init(id:title:text:subPages:iconName:)(v88, v201, v200, v197, v196, MEMORY[0x277D84F90], 0, 0);
  v91 = v223[1];
  v91(v89, v90);
  v91(v205, v90);
  v91(v203, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v92 = (type metadata accessor for CommandToPractice(0) - 8);
  v93 = *v92;
  v221 = *(*v92 + 72);
  v94 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v210 = 4 * v221;
  v95 = swift_allocObject();
  v212 = v95;
  *(v95 + 16) = xmmword_23DB7A0D0;
  v96 = v95 + v94;

  v97 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB896A0, &unk_284FE59E8);
  v99 = v98;
  *v96 = 0;
  *(v96 + 8) = 0xE000000000000000;
  *(v96 + 17) = 186;
  *(v96 + 19) = 0;
  v100 = v96 + v92[11];
  sub_23DB6EA7C();
  v101 = v92[12];
  *(v96 + v101) = 1;
  v102 = v92[13];
  *(v96 + v102) = 1;
  v103 = v92[14];
  v223 = type metadata accessor for KeyboardKey(0);
  v104 = *(v223 - 1);
  v105 = *(v104 + 56);
  v222 = (v104 + 56);
  (v105)(v96 + v103, 1, 1, v223);
  v220 = v105;
  v106 = (v96 + v92[15]);
  *v106 = 0;
  v106[1] = 0;
  v107 = *(v96 + 8);
  *v96 = v97;
  *(v96 + 8) = v99;

  *(v96 + 16) = 36;
  *(v96 + 19) = 1;
  v108 = v106[1];
  *v106 = 0;
  v106[1] = 0;

  *(v96 + v101) = 1;
  *(v96 + v102) = 1;
  v109 = v221;
  v110 = v96 + v221;
  v209 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB896D0, &unk_284FE5A10);
  v112 = v111;
  *v110 = 0;
  *(v110 + 8) = 0xE000000000000000;
  *(v110 + 17) = 186;
  *(v110 + 19) = 0;
  v113 = v110 + v92[11];
  sub_23DB6EA7C();
  v114 = v92[12];
  *(v110 + v114) = 1;
  v115 = v92[13];
  *(v110 + v115) = 1;
  v116 = v223;
  (v105)(v110 + v92[14], 1, 1, v223);
  v117 = (v110 + v92[15]);
  *v117 = 0;
  v117[1] = 0;
  v118 = *(v110 + 8);
  *v110 = v209;
  *(v110 + 8) = v112;

  *(v110 + 16) = 28;
  *(v110 + 19) = 0;
  v119 = v117[1];
  *v117 = 0;
  v117[1] = 0;

  *(v110 + v114) = 1;
  *(v110 + v115) = 1;
  v209 = 2 * v109;
  v120 = v96 + 2 * v109;
  v121 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89700, &unk_284FE5A38);
  v123 = v122;
  *v120 = 0;
  *(v120 + 8) = 0xE000000000000000;
  *(v120 + 17) = 186;
  *(v120 + 19) = 0;
  v124 = v120 + v92[11];
  sub_23DB6EA7C();
  v125 = v92[12];
  *(v120 + v125) = 1;
  v126 = v92[13];
  *(v120 + v126) = 1;
  v127 = v116;
  v128 = v220;
  (v220)(v120 + v92[14], 1, 1, v127);
  v129 = (v120 + v92[15]);
  *v129 = 0;
  v129[1] = 0;
  v130 = *(v120 + 8);
  *v120 = v121;
  *(v120 + 8) = v123;

  *(v120 + 16) = 32;
  *(v120 + 19) = 0;
  v131 = v129[1];
  *v129 = 0;
  v129[1] = 0;

  *(v120 + v125) = 1;
  *(v120 + v126) = 1;
  v132 = v96 + v209 + v221;
  v133 = v224;
  v134 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89730, &unk_284FE5A60);
  v221 = v135;
  *v132 = 0;
  *(v132 + 8) = 0xE000000000000000;
  *(v132 + 17) = 186;
  *(v132 + 19) = 0;
  v136 = v132 + v92[11];
  sub_23DB6EA7C();
  v137 = v92[12];
  *(v132 + v137) = 1;
  v138 = v92[13];
  *(v132 + v138) = 1;
  v128(v132 + v92[14], 1, 1, v223);
  v139 = (v132 + v92[15]);
  *v139 = 0;
  v139[1] = 0;
  v140 = *(v132 + 8);
  v141 = v221;
  *v132 = v134;
  *(v132 + 8) = v141;

  *(v132 + 16) = 30;
  *(v132 + 19) = 0;
  v142 = v139[1];
  *v139 = 0;
  v139[1] = 0;

  *(v132 + v137) = 1;
  *(v132 + v138) = 1;
  v143 = v96 + v210;
  v144 = v133;
  v145 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89760, &unk_284FE5A88);
  v147 = v146;
  *v143 = 0;
  *(v143 + 8) = 0xE000000000000000;
  *(v143 + 17) = 186;
  *(v143 + 19) = 0;
  v148 = v143 + v92[11];
  sub_23DB6EA7C();
  v149 = v92[12];
  *(v143 + v149) = 1;
  v150 = v92[13];
  *(v143 + v150) = 1;
  (v220)(v143 + v92[14], 1, 1, v223);
  v151 = (v143 + v92[15]);
  *v151 = 0;
  v151[1] = 0;
  v152 = *(v143 + 8);
  *v143 = v145;
  *(v143 + 8) = v147;

  *(v143 + 16) = 32;
  *(v143 + 19) = 0;
  v153 = v151[1];
  *v151 = 0;
  v151[1] = 0;

  *(v143 + v149) = 1;
  *(v143 + v150) = 1;
  v154 = v211;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v155 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v156 = *(v154 + v155);
  *(v154 + v155) = v212;

  swift_getKeyPath();
  swift_getKeyPath();
  v225 = 1;
  sub_23DB6EF1C();
  v157 = swift_allocObject();
  swift_weakInit();
  v158 = swift_allocObject();
  *(v158 + 16) = v157;
  *(v158 + 24) = v144;
  v159 = (v154 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v160 = v159[1];
  *v159 = sub_23DA9E6E0;
  v159[1] = v158;
  swift_retain_n();

  v161 = swift_allocObject();
  swift_weakInit();

  v162 = swift_allocObject();
  *(v162 + 16) = v161;
  *(v162 + 24) = v144;
  v163 = (v154 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v164 = *v163;
  v165 = v163[1];
  *v163 = sub_23DA9E6D0;
  v163[1] = v162;

  sub_23DA18BA0(v164);

  v166 = v213;
  sub_23DB6EABC();
  v167 = v216;
  sub_23DB6EB0C();
  (*(v214 + 8))(v166, v215);
  v168 = v217;
  sub_23DB6EADC();
  (*(v218 + 8))(v167, v219);
  v169 = sub_23DB6EAAC();
  v170 = *(v169 - 8);
  if ((*(v170 + 48))(v168, 1, v169) == 1)
  {

    v171 = &qword_27E2FE1B0;
    v172 = &qword_23DB7A3E8;
    v173 = v168;
  }

  else
  {
    v174 = sub_23DB6EA9C();
    v176 = v175;
    (*(v170 + 8))(v168, v169);
    if (v174 == 29286 && v176 == 0xE200000000000000)
    {
    }

    else
    {
      v177 = sub_23DB70DBC();

      if ((v177 & 1) == 0)
      {

        return v154;
      }
    }

    v178 = swift_initStackObject();
    *(v178 + 16) = v182;
    *(v178 + 32) = 10276;
    sub_23DA7194C(0, (v178 + 34));
    v179 = v187;
    sub_23DA9B688(v183, v185 | 0x8000000000000000, v178, v187);
    swift_setDeallocating();
    v180 = sub_23DB6E9BC();
    (*(*(v180 - 8) + 56))(v179, 0, 1, v180);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DA9DF24(v179, v186);
    sub_23DB6EF1C();
    v171 = &qword_27E2FC2F8;
    v172 = &qword_23DB74470;
    v173 = v179;
  }

  sub_23DA17988(v173, v171, v172);
  return v154;
}

char *sub_23DA8BA50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v164 = *(v1 - 8);
  v165 = v1;
  v2 = *(v164 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v163 = &v139 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v161 = *(v5 - 8);
  v162 = v5;
  v6 = *(v161 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v159 = &v139 - v8;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v157 = *(v160 - 8);
  v9 = *(v157 + 64);
  MEMORY[0x28223BE20](v160, v10);
  v154 = &v139 - v11;
  *&v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v146 = *(v147 - 8);
  v12 = *(v146 + 64);
  MEMORY[0x28223BE20](v147, v13);
  v145 = &v139 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v141 = *(v142 - 8);
  v15 = *(v141 + 64);
  MEMORY[0x28223BE20](v142, v16);
  v140 = &v139 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v139 - v22;
  v24 = sub_23DB6EA8C();
  v167 = *(v24 - 8);
  v25 = v167[8];
  MEMORY[0x28223BE20](v24, v26);
  v152 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v139 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v139 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v139 - v38;
  v151 = sub_23DA9BC60(0xD000000000000028, 0x800000023DB89520);
  v150 = v40;
  v168 = v0;
  v149 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89550, &unk_284FE58A8);
  v148 = v41;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v169) = 0;
  sub_23DB6EECC();
  v47 = *(v19 + 32);
  v47(v45 + v46, v23, v18);
  v48 = v167 + 2;
  v49 = v167[2];
  v153 = v39;
  v49(v35, v39, v24);
  v156 = v31;
  v155 = v35;
  v158 = v24;
  v144 = v48;
  v143 = v49;
  v49(v31, v35, v24);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v169) = 0;
  sub_23DB6EECC();
  v51 = v23;
  v166 = v18;
  v47(v45 + v50, v23, v18);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v169 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v140;
  sub_23DB6EECC();
  (*(v141 + 32))(v45 + v54, v55, v142);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v52;
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v169 = 0;
  v57 = v145;
  sub_23DB6EECC();
  (*(v146 + 32))(v45 + v56, v57, v147);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v169) = 0;
  sub_23DB6EECC();
  v47(v45 + v58, v23, v166);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v147 = xmmword_23DB74320;
  v169 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v60 = v154;
  sub_23DB6EECC();
  v61 = *(v157 + 32);
  v62 = v160;
  v61(v45 + v59, v60, v160);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v169 = v147;
  sub_23DB6EECC();
  v61(v45 + v63, v60, v62);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v169) = 0;
  sub_23DB6EECC();
  v47(v45 + v64, v51, v166);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v169 = 0;
  *(&v169 + 1) = 0xE000000000000000;
  v66 = v159;
  sub_23DB6EECC();
  (*(v161 + 32))(v45 + v65, v66, v162);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v169 = 0uLL;
  sub_23DB6EECC();
  v61(v45 + v67, v60, v62);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v169 = nullsub_1;
  *(&v169 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v69 = v163;
  sub_23DB6EECC();
  (*(v164 + 32))(v45 + v68, v69, v165);
  v70 = v152;
  v71 = v156;
  v72 = v158;
  v143(v152, v156, v158);
  v73 = Page.init(id:title:text:subPages:iconName:)(v70, v151, v150, v149, v148, MEMORY[0x277D84F90], 0, 0);
  v74 = v167[1];
  v74(v71, v72);
  v74(v155, v72);
  v74(v153, v72);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v169) = 0;
  swift_retain_n();
  v163 = v73;
  sub_23DB6EF1C();
  v75 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v77 = v76;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v169 = v75;
  *(&v169 + 1) = v77;
  sub_23DB6EF1C();
  sub_23DA7194C(0, &v169);
  LODWORD(v167) = v169;
  sub_23DA7194C(1, &v169);
  LODWORD(v161) = v169;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v78 = (type metadata accessor for CommandToPractice(0) - 8);
  v79 = (*(*v78 + 80) + 32) & ~*(*v78 + 80);
  v80 = *(*v78 + 72);
  v81 = swift_allocObject();
  v162 = v81;
  *(v81 + 16) = xmmword_23DB7A0B0;
  v82 = v81 + v79;
  v83 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB89580, &unk_284FE58D0);
  v85 = v84;
  *v82 = 0;
  *(v82 + 8) = 0xE000000000000000;
  *(v82 + 17) = 186;
  *(v82 + 19) = 0;
  v86 = v82 + v78[11];
  sub_23DB6EA7C();
  v87 = v78[12];
  *(v82 + v87) = 1;
  v88 = v78[13];
  *(v82 + v88) = 1;
  v89 = v78[14];
  v90 = type metadata accessor for KeyboardKey(0);
  v91 = *(v90 - 8);
  v165 = *(v91 + 56);
  v166 = v91 + 56;
  v160 = v90;
  v165(v82 + v89, 1, 1, v90);
  v92 = (v82 + v78[15]);
  *v92 = 0;
  v92[1] = 0;
  v93 = *(v82 + 8);
  *v82 = v83;
  *(v82 + 8) = v85;

  *(v82 + 16) = 53;
  *(v82 + 19) = 0;
  v94 = v92[1];
  *v92 = 0;
  v92[1] = 0;

  *(v82 + v87) = 0;
  *(v82 + v88) = 0;
  v164 = v80;
  v95 = v82 + v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB76A80;
  v97 = v167;
  *(inited + 32) = v167;
  *(inited + 33) = v97;
  LOBYTE(v80) = v161;
  *(inited + 34) = v161;
  v98 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB895B0, inited);
  v159 = v99;
  swift_setDeallocating();
  *v95 = 0;
  *(v95 + 8) = 0xE000000000000000;
  *(v95 + 17) = 186;
  *(v95 + 19) = 0;
  v100 = v95 + v78[11];
  sub_23DB6EA7C();
  v101 = v78[12];
  *(v95 + v101) = 1;
  v102 = v78[13];
  *(v95 + v102) = 1;
  v103 = v165;
  v165(v95 + v78[14], 1, 1, v90);
  v104 = (v95 + v78[15]);
  *v104 = 0;
  v104[1] = 0;
  v105 = *(v95 + 8);
  v106 = v159;
  *v95 = v98;
  *(v95 + 8) = v106;

  *(v95 + 16) = v167;
  *(v95 + 17) = v80;
  *(v95 + 19) = 0;
  *(v95 + v101) = 0;
  *(v95 + v102) = 0;
  v107 = v104[1];
  *v104 = 0;
  v104[1] = 0;

  v167 = (2 * v164);
  v108 = v82 + 2 * v164;
  v109 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB895E0, &unk_284FE58F8);
  v111 = v110;
  *v108 = 0;
  *(v108 + 8) = 0xE000000000000000;
  *(v108 + 17) = 186;
  *(v108 + 19) = 0;
  v112 = v108 + v78[11];
  sub_23DB6EA7C();
  v113 = v78[12];
  *(v108 + v113) = 1;
  v114 = v78[13];
  *(v108 + v114) = 1;
  v115 = v160;
  v103(v108 + v78[14], 1, 1, v160);
  v116 = (v108 + v78[15]);
  *v116 = 0;
  v116[1] = 0;
  v117 = *(v108 + 8);
  *v108 = v109;
  *(v108 + 8) = v111;

  *(v108 + 16) = 32;
  *(v108 + 19) = 0;
  v118 = v116[1];
  *v116 = 0;
  v116[1] = 0;

  *(v108 + v113) = 0;
  *(v108 + v114) = 0;
  v119 = v168;
  v120 = v167 + v164 + v82;
  v121 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB89610, &unk_284FE5920);
  v123 = v122;
  *v120 = 0;
  *(v120 + 1) = 0xE000000000000000;
  *(v120 + 17) = 186;
  v120[19] = 0;
  v124 = &v120[v78[11]];
  sub_23DB6EA7C();
  v125 = v78[12];
  v120[v125] = 1;
  v126 = v78[13];
  v120[v126] = 1;
  v165(&v120[v78[14]], 1, 1, v115);
  v127 = &v120[v78[15]];
  *v127 = 0;
  *(v127 + 1) = 0;
  v128 = *(v120 + 1);
  *v120 = v121;
  *(v120 + 1) = v123;

  v120[16] = 40;
  v120[19] = 0;
  v129 = *(v127 + 1);
  *v127 = 0;
  *(v127 + 1) = 0;

  v120[v125] = 0;
  v120[v126] = 0;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v130 = v163;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v131 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v132 = *&v130[v131];
  *&v130[v131] = v162;

  v133 = swift_allocObject();
  swift_weakInit();
  v134 = swift_allocObject();
  *(v134 + 16) = v133;
  *(v134 + 24) = v119;
  v135 = &v130[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState];
  swift_beginAccess();
  v136 = *v135;
  v137 = v135[1];
  *v135 = sub_23DA9E6D0;
  v135[1] = v134;

  sub_23DA18BA0(v136);

  return v130;
}

uint64_t sub_23DA8CA5C()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v66 - v9;
  v70 = v0;
  v11 = sub_23DA9BC60(0xD000000000000018, 0x800000023DB89470);
  v13 = v12;
  v14 = sub_23DA9BC60(0xD000000000000017, 0x800000023DB89490);
  v16 = v15;
  sub_23DB6EA7C();
  v17 = type metadata accessor for Page.PracticeShortTextVO(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  (*(v2 + 16))(v6, v10, v1);
  v20 = sub_23DA24B98(v6, v11, v13, v14, v16, MEMORY[0x277D84F90], 0, 0);
  (*(v2 + 8))(v10, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  v73[0] = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v21 = (type metadata accessor for CommandToPractice(0) - 8);
  v22 = *v21;
  v68 = *(*v21 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v69 = v24;
  *(v24 + 16) = xmmword_23DB78D60;
  v25 = v24 + v23;
  sub_23DA7194C(0, v73);
  LOBYTE(v14) = v73[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v14;
  v27 = sub_23DA9B4E0(0xD00000000000001DLL, 0x800000023DB894B0, inited);
  v66 = v28;
  v67 = v27;
  swift_setDeallocating();
  *v25 = 0;
  *(v25 + 8) = 0xE000000000000000;
  *(v25 + 17) = 186;
  *(v25 + 19) = 0;
  v29 = v25 + v21[11];
  sub_23DB6EA7C();
  v30 = v21[12];
  *(v25 + v30) = 1;
  v31 = v21[13];
  *(v25 + v31) = 1;
  v32 = v21[14];
  v33 = type metadata accessor for KeyboardKey(0);
  v34 = *(*(v33 - 8) + 56);
  v34(v25 + v32, 1, 1, v33);
  v35 = (v25 + v21[15]);
  *v35 = 0;
  v35[1] = 0;
  v36 = *(v25 + 8);
  v37 = v66;
  *v25 = v67;
  *(v25 + 8) = v37;

  *(v25 + 16) = 62;
  *(v25 + 19) = 1;
  v38 = v35[1];
  *v35 = 0;
  v35[1] = 0;

  *(v25 + v30) = 1;
  *(v25 + v31) = 1;
  v39 = v25 + v68;
  v40 = sub_23DA9BC60(0xD00000000000001DLL, 0x800000023DB894D0);
  v42 = v41;
  *v39 = 0;
  *(v39 + 8) = 0xE000000000000000;
  *(v39 + 17) = 186;
  *(v39 + 19) = 0;
  v43 = v39 + v21[11];
  sub_23DB6EA7C();
  v44 = v21[12];
  *(v39 + v44) = 1;
  v45 = v21[13];
  *(v39 + v45) = 1;
  v34(v39 + v21[14], 1, 1, v33);
  v46 = (v39 + v21[15]);
  *v46 = 0;
  v46[1] = 0;
  v47 = *(v39 + 8);
  *v39 = v40;
  *(v39 + 8) = v42;

  *(v39 + 16) = 63;
  *(v39 + 19) = 0;
  v48 = v46[1];
  *v46 = 0;
  v46[1] = 0;

  *(v39 + v44) = 1;
  *(v39 + v45) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v50 = *(v20 + v49);
  *(v20 + v49) = v69;

  v51 = v70;
  v52 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB894F0);
  v54 = v53;
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v52;
  v72 = v54;
  sub_23DB6EF1C();
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v51;
  v57 = v51;
  v58 = (v20 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v59 = *v58;
  v60 = v58[1];
  *v58 = sub_23DA9E6D0;
  v58[1] = v56;
  swift_retain_n();

  sub_23DA18BA0(v59);

  v61 = swift_allocObject();
  swift_weakInit();

  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v57;
  v63 = (v20 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v64 = v63[1];
  *v63 = sub_23DA9DF0C;
  v63[1] = v62;

  return v20;
}

uint64_t sub_23DA8D134(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3, v6);
  v61 = (&v49 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v49 - v15);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v60 = a2;
    v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v19 = result;
    swift_beginAccess();
    v58 = v18;
    v20 = *(v19 + v18);
    KeyPath = swift_getKeyPath();
    v22 = swift_getKeyPath();

    v57 = KeyPath;
    v56 = v22;
    v55 = sub_23DB6EEFC();
    v53 = v23;
    v24 = swift_getKeyPath();
    v25 = swift_getKeyPath();
    v59 = v19;
    v26 = v20;
    v54 = v24;
    v52 = v25;
    v51 = sub_23DB6EEFC();
    v50 = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v28 = 0;
    v29 = v4 + 7;
    v62 = v26;
    v26 = v26[2];
    v4 += 6;
    v30 = &qword_27E2FE1C8;
    if (!v26)
    {
LABEL_4:
      v31 = 1;
      v28 = v26;
      goto LABEL_7;
    }

    while (1)
    {
      v32 = v16;
      v16 = v4;
      v4 = v29;
      v33 = v26;
      v26 = v20;
      v34 = v30;
      v35 = v62;
      if (v28 >= v62[2])
      {
        goto LABEL_18;
      }

      v36 = *(type metadata accessor for CommandToPractice(0) - 8);
      v63 = (v28 + 1);
      v37 = v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28;
      v38 = *(v3 + 48);
      v39 = v61;
      *v61 = v28;
      sub_23DA9DDB8(v37, v39 + v38, type metadata accessor for CommandToPractice);
      sub_23DA17A54(v39, v12, &qword_27E2FE1C0, &qword_23DB7A440);
      v31 = 0;
      v28 = v63;
      v30 = v34;
      v20 = v26;
      v26 = v33;
      v29 = v4;
      v4 = v16;
      v16 = v32;
LABEL_7:
      (*v29)(v12, v31, 1, v3);
      sub_23DA17A54(v12, v16, v30, &qword_23DB7A448);
      if ((*v4)(v16, 1, v3) == 1)
      {
        break;
      }

      v40 = *v16;
      if ((*v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v20 = sub_23DAC8B24(v26);
        goto LABEL_3;
      }

      if (v40 >= *(v20 + 16))
      {
        goto LABEL_17;
      }

      v41 = *(type metadata accessor for CommandToPractice(0) - 8);
      v42 = v20 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
      *(v42 + 18) = 0;
      *(v42 + 19) = v40 == 0;
      sub_23DA9DE28(v16 + *(v3 + 48), type metadata accessor for CommandToPractice);
      if (v28 == v26)
      {
        goto LABEL_4;
      }
    }

    *v50 = 0;
    *v53 = 0;
    v51(v64, 0);

    v55(v65, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v43 = v59;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v44 = *(v43 + v58);
    *(v43 + v58) = v20;

    swift_getKeyPath();
    swift_getKeyPath();
    v65[0] = 0;
    v65[1] = 0xE000000000000000;

    sub_23DB6EF1C();
    v45 = OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_voEnabledFromWelcomePage;
    v46 = v60;
    if (*(v60 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_voEnabledFromWelcomePage) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v47 = sub_23DB6EEFC();
      *v48 = !*v48;
      v47(v65, 0);

      *(v46 + v45) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DA8D7C4(uint64_t a1, unsigned __int8 a2)
{
  sub_23DAC96A8(a2);
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  *(v2 + 40) = 63;

  sub_23DABC32C();
}

uint64_t sub_23DA8D85C()
{
  v1 = v0;
  v2 = type metadata accessor for ButtonWithIconAndLabel(0);
  v3 = (v2 - 8);
  v126 = *(v2 - 8);
  v127 = v126;
  v4 = *(v126 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v130 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v119 - v9;
  v11 = sub_23DB6EA8C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23DA9BC60(0xD00000000000001FLL, 0x800000023DB892D0);
  v18 = v17;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v125 = xmmword_23DB78D60;
  *(inited + 16) = xmmword_23DB78D60;
  *(inited + 32) = 57;
  sub_23DA7194C(0, (inited + 33));
  v20 = sub_23DA9B4E0(0xD000000000000022, 0x800000023DB892F0, inited);
  v22 = v21;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v23 = type metadata accessor for Page.PracticeVOCustomAction(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_23DA3432C(v15, v16, v18, v20, v22, MEMORY[0x277D84F90], 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v131[0]) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  v27 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v29 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  v131[0] = v27;
  v131[1] = v29;
  sub_23DB6EF1C();
  v30 = sub_23DA9BC60(0xD000000000000026, 0x800000023DB89320);
  v32 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  v131[0] = v30;
  v131[1] = v32;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v131, "speaker.wave.3");
  HIBYTE(v131[1]) = -18;

  sub_23DB6EF1C();
  v33 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB89350);
  v35 = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = v1;
  *(v36 + 24) = 0;

  v37 = v10;
  sub_23DB6EA7C();
  v38 = &v10[v3[7]];
  *v38 = v33;
  v38[1] = v35;
  *&v10[v3[8]] = xmmword_23DB7A0E0;
  v39 = &v10[v3[9]];
  v124 = v10;
  *v39 = sub_23DA9DEE8;
  v39[1] = v36;
  v40 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB89380);
  v42 = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = v1;
  *(v43 + 24) = 2;
  v44 = v1;

  v45 = v130;
  sub_23DB6EA7C();
  v46 = (v45 + v3[7]);
  *v46 = v40;
  v46[1] = v42;
  *(v45 + v3[8]) = xmmword_23DB7A0F0;
  v47 = (v45 + v3[9]);
  *v47 = sub_23DA9E6DC;
  v47[1] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E8, &qword_23DB7A7B0);
  v48 = *(v126 + 72);
  v49 = (*(v127 + 80) + 32) & ~*(v127 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v125;
  v51 = v50 + v49;
  v123 = type metadata accessor for ButtonWithIconAndLabel;
  sub_23DA9DDB8(v37, v51, type metadata accessor for ButtonWithIconAndLabel);
  sub_23DA9DDB8(v45, v51 + v48, type metadata accessor for ButtonWithIconAndLabel);
  swift_getKeyPath();
  swift_getKeyPath();
  v131[0] = v50;
  v122 = v26;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v52 = (type metadata accessor for CommandToPractice(0) - 8);
  v53 = *v52;
  v127 = *(*v52 + 72);
  v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v55 = swift_allocObject();
  v121 = v55;
  *(v55 + 16) = xmmword_23DB7A0B0;
  v56 = v55 + v54;
  sub_23DA7194C(0, v131);
  LOBYTE(v48) = v131[0];
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_23DB73BA0;
  *(v57 + 32) = v48;
  v129 = v44;
  v58 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB893B0, v57);
  v60 = v59;
  swift_setDeallocating();
  *v56 = 0;
  *(v56 + 8) = 0xE000000000000000;
  *(v56 + 17) = 186;
  *(v56 + 19) = 0;
  v61 = v56 + v52[11];
  sub_23DB6EA7C();
  v62 = v52[12];
  *(v56 + v62) = 1;
  v63 = v52[13];
  *(v56 + v63) = 1;
  v64 = v52[14];
  v128 = type metadata accessor for KeyboardKey(0);
  v65 = *(v128 - 8);
  v126 = *(v65 + 56);
  *&v125 = v65 + 56;
  (v126)(v56 + v64, 1, 1, v128);
  v66 = (v56 + v52[15]);
  *v66 = 0;
  v66[1] = 0;
  v67 = *(v56 + 8);
  *v56 = v58;
  *(v56 + 8) = v60;

  *(v56 + 16) = 62;
  *(v56 + 19) = 1;
  v68 = v66[1];
  *v66 = 0;
  v66[1] = 0;

  *(v56 + v62) = 1;
  *(v56 + v63) = 1;
  v69 = v127;
  v70 = v56 + v127;
  v71 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB893E0, &unk_284FE5EE8);
  v120 = v72;
  *v70 = 0;
  *(v70 + 8) = 0xE000000000000000;
  *(v70 + 17) = 186;
  *(v70 + 19) = 0;
  v73 = v70 + v52[11];
  sub_23DB6EA7C();
  v74 = v52[12];
  *(v70 + v74) = 1;
  v75 = v52[13];
  *(v70 + v75) = 1;
  v76 = v126;
  (v126)(v70 + v52[14], 1, 1, v128);
  v77 = (v70 + v52[15]);
  *v77 = 0;
  v77[1] = 0;
  v78 = *(v70 + 8);
  v79 = v120;
  *v70 = v71;
  *(v70 + 8) = v79;

  *(v70 + 16) = 57;
  *(v70 + 19) = 0;
  v80 = v77[1];
  *v77 = 0;
  v77[1] = 0;

  *(v70 + v74) = 1;
  *(v70 + v75) = 1;
  v120 = 2 * v69;
  v81 = v56 + 2 * v69;
  v82 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB89410, &unk_284FE5F10);
  v84 = v83;
  *v81 = 0;
  *(v81 + 8) = 0xE000000000000000;
  *(v81 + 17) = 186;
  *(v81 + 19) = 0;
  v85 = v81 + v52[11];
  sub_23DB6EA7C();
  v86 = v52[12];
  *(v81 + v86) = 1;
  v87 = v52[13];
  *(v81 + v87) = 1;
  v88 = v128;
  v76(v81 + v52[14], 1, 1, v128);
  v89 = (v81 + v52[15]);
  *v89 = 0;
  v89[1] = 0;
  v90 = *(v81 + 8);
  *v81 = v82;
  *(v81 + 8) = v84;

  *(v81 + 16) = 30;
  *(v81 + 19) = 0;
  v91 = v89[1];
  *v89 = 0;
  v89[1] = 0;

  *(v81 + v86) = 1;
  *(v81 + v87) = 1;
  v92 = v56 + v120 + v127;
  v93 = v129;
  v94 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB89440, &unk_284FE5F38);
  v96 = v95;
  *v92 = 0;
  *(v92 + 8) = 0xE000000000000000;
  *(v92 + 17) = 186;
  *(v92 + 19) = 0;
  v97 = v92 + v52[11];
  sub_23DB6EA7C();
  v98 = v52[12];
  *(v92 + v98) = 1;
  v99 = v52[13];
  *(v92 + v99) = 1;
  (v126)(v92 + v52[14], 1, 1, v88);
  v100 = (v92 + v52[15]);
  *v100 = 0;
  v100[1] = 0;
  v101 = *(v92 + 8);
  *v92 = v94;
  *(v92 + 8) = v96;

  *(v92 + 16) = 63;
  *(v92 + 19) = 0;
  v102 = v100[1];
  *v100 = 0;
  v100[1] = 0;

  *(v92 + v98) = 0;
  *(v92 + v99) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v103 = v122;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v104 = v123;
  sub_23DA9DE28(v130, v123);
  sub_23DA9DE28(v124, v104);
  v105 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v106 = *(v103 + v105);
  *(v103 + v105) = v121;
  v107 = v103;

  v108 = swift_allocObject();
  swift_weakInit();
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v93;
  v110 = v93;
  v111 = (v107 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v112 = *v111;
  v113 = v111[1];
  *v111 = sub_23DA9E6D0;
  v111[1] = v109;
  swift_retain_n();

  sub_23DA18BA0(v112);

  v114 = swift_allocObject();
  swift_weakInit();

  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v110;
  v116 = (v107 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v117 = v116[1];
  *v116 = sub_23DA9DEFC;
  v116[1] = v115;

  return v107;
}

uint64_t sub_23DA8E4A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v53 = (&v43 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v43 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v16 = result;
    swift_beginAccess();
    v51 = v15;
    v17 = *(v16 + v15);
    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();

    v49 = v19;
    v50 = KeyPath;
    v48 = sub_23DB6EEFC();
    v46 = v20;
    v21 = swift_getKeyPath();
    v22 = swift_getKeyPath();
    v52 = v16;
    v47 = v21;
    v45 = v22;
    v44 = sub_23DB6EEFC();
    v43 = v23;

    v24 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v25 = 0;
    v26 = v1 + 7;
    v54 = v17;
    v27 = *(v17 + 16);
    v1 += 6;
    v28 = &qword_27E2FE1C8;
    if (!v27)
    {
LABEL_4:
      v29 = 1;
      v25 = v27;
      goto LABEL_7;
    }

    while (1)
    {
      v17 = v13;
      v13 = v1;
      v1 = v26;
      v30 = v27;
      v31 = v24;
      v32 = v28;
      v33 = v54;
      if (v25 >= *(v54 + 16))
      {
        goto LABEL_18;
      }

      v34 = *(type metadata accessor for CommandToPractice(0) - 8);
      v55 = v25 + 1;
      v35 = v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25;
      v36 = *(v0 + 48);
      v37 = v53;
      *v53 = v25;
      sub_23DA9DDB8(v35, v37 + v36, type metadata accessor for CommandToPractice);
      sub_23DA17A54(v37, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v29 = 0;
      v25 = v55;
      v28 = v32;
      v24 = v31;
      v27 = v30;
      v26 = v1;
      v1 = v13;
      v13 = v17;
LABEL_7:
      (*v26)(v9, v29, 1, v0);
      sub_23DA17A54(v9, v13, v28, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {
        break;
      }

      v17 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v24 = sub_23DAC8B24(v17);
        goto LABEL_3;
      }

      if (v17 >= *(v24 + 16))
      {
        goto LABEL_17;
      }

      v38 = *(type metadata accessor for CommandToPractice(0) - 8);
      v39 = v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v17;
      *(v39 + 18) = 0;
      *(v39 + 19) = v17 == 0;
      sub_23DA9DE28(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
      if (v25 == v27)
      {
        goto LABEL_4;
      }
    }

    *v43 = 0;
    *v46 = 0;
    v44(v56, 0);

    v48(v57, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v40 = v52;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v41 = *(v40 + v51);
    *(v40 + v51) = v24;

    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v42 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v42 + 40) = 27;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DA8EAA4()
{
  v1 = v0;
  v2 = type metadata accessor for ButtonWithIconAndLabel(0);
  v3 = (v2 - 8);
  v112 = *(v2 - 8);
  v113 = v112;
  v4 = *(v112 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v115 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v116 = &v107 - v9;
  v10 = sub_23DB6EA8C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB890D0);
  v17 = v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v111 = xmmword_23DB78D60;
  *(inited + 16) = xmmword_23DB78D60;
  *(inited + 32) = 46;
  sub_23DA7194C(0, (inited + 33));
  v19 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB89100, inited);
  v21 = v20;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v22 = type metadata accessor for Page.PracticeVOContextualMenu(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_23DA2FF3C(v14, v15, v17, v19, v21, MEMORY[0x277D84F90], 0, 0);
  v26 = sub_23DA9BC60(0xD00000000000002CLL, 0x800000023DB89130);
  v28 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  v117 = v26;
  v118 = v28;

  sub_23DB6EF1C();

  v29 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v31 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  v117 = v29;
  v118 = v31;

  sub_23DB6EF1C();
  v32 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB89160);
  v34 = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = v25;
  *(v35 + 24) = v1;

  v36 = v116;
  sub_23DB6EA7C();
  v37 = (v36 + v3[7]);
  *v37 = v32;
  v37[1] = v34;
  v38 = (v36 + v3[8]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v36 + v3[9]);
  *v39 = sub_23DA9DDA8;
  v39[1] = v35;
  v40 = sub_23DA9BC60(0xD00000000000002CLL, 0x800000023DB89190);
  v42 = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = v25;
  *(v43 + 24) = v1;

  v44 = v1;

  v45 = v115;
  sub_23DB6EA7C();
  v46 = (v45 + v3[7]);
  *v46 = v40;
  v46[1] = v42;
  v47 = (v45 + v3[8]);
  *v47 = 0;
  v47[1] = 0;
  v48 = (v45 + v3[9]);
  *v48 = sub_23DA9DDB0;
  v48[1] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E8, &qword_23DB7A7B0);
  v49 = *(v112 + 72);
  v50 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v111;
  v52 = v51 + v50;
  *&v111 = type metadata accessor for ButtonWithIconAndLabel;
  sub_23DA9DDB8(v36, v52, type metadata accessor for ButtonWithIconAndLabel);
  sub_23DA9DDB8(v45, v52 + v49, type metadata accessor for ButtonWithIconAndLabel);
  swift_getKeyPath();
  swift_getKeyPath();
  v117 = v51;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v53 = (type metadata accessor for CommandToPractice(0) - 8);
  v54 = *(*v53 + 72);
  v55 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
  v109 = 2 * v54;
  v56 = swift_allocObject();
  v110 = v56;
  *(v56 + 16) = xmmword_23DB76A80;
  v57 = v56 + v55;
  sub_23DA7194C(0, &v117);
  LOBYTE(v51) = v117;
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_23DB73BA0;
  *(v58 + 32) = v51;
  v108 = v44;
  v59 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB891C0, v58);
  v107 = v60;
  swift_setDeallocating();
  *v57 = 0;
  *(v57 + 8) = 0xE000000000000000;
  *(v57 + 17) = 186;
  *(v57 + 19) = 0;
  v61 = v57 + v53[11];
  sub_23DB6EA7C();
  v62 = v53[12];
  *(v57 + v62) = 1;
  v63 = v53[13];
  *(v57 + v63) = 1;
  v64 = v53[14];
  v113 = type metadata accessor for KeyboardKey(0);
  v65 = *(v113 - 8);
  v112 = *(v65 + 56);
  v114 = v65 + 56;
  (v112)(v57 + v64, 1, 1, v113);
  v66 = (v57 + v53[15]);
  *v66 = 0;
  v66[1] = 0;
  v67 = *(v57 + 8);
  v68 = v107;
  *v57 = v59;
  *(v57 + 8) = v68;

  *(v57 + 16) = 62;
  *(v57 + 19) = 1;
  v69 = v66[1];
  *v66 = 0;
  v66[1] = 0;

  *(v57 + v62) = 1;
  *(v57 + v63) = 1;
  v70 = v57 + v54;
  v71 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB891F0, &unk_284FE5E98);
  v73 = v72;
  *v70 = 0;
  *(v70 + 8) = 0xE000000000000000;
  *(v70 + 17) = 186;
  *(v70 + 19) = 0;
  v74 = v57 + v54 + v53[11];
  sub_23DB6EA7C();
  v75 = v53[12];
  *(v70 + v75) = 1;
  v76 = v53[13];
  *(v70 + v76) = 1;
  (v112)(v70 + v53[14], 1, 1, v113);
  v77 = (v70 + v53[15]);
  *v77 = 0;
  v77[1] = 0;
  v78 = *(v70 + 8);
  *v70 = v71;
  *(v70 + 8) = v73;

  *(v70 + 16) = 46;
  *(v70 + 19) = 0;
  v79 = v77[1];
  *v77 = 0;
  v77[1] = 0;

  *(v70 + v75) = 1;
  *(v70 + v76) = 1;
  v80 = v57 + v109;
  v81 = v108;
  v82 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB89220, &unk_284FE5EC0);
  v84 = v83;
  *v80 = 0;
  *(v80 + 8) = 0xE000000000000000;
  *(v80 + 17) = 186;
  *(v80 + 19) = 0;
  v85 = v80 + v53[11];
  sub_23DB6EA7C();
  v86 = v53[12];
  *(v80 + v86) = 1;
  v87 = v53[13];
  *(v80 + v87) = 1;
  (v112)(v80 + v53[14], 1, 1, v113);
  v88 = (v80 + v53[15]);
  *v88 = 0;
  v88[1] = 0;
  v89 = *(v80 + 8);
  *v80 = v82;
  *(v80 + 8) = v84;

  *(v80 + 16) = 32;
  *(v80 + 19) = 0;
  v90 = v88[1];
  *v88 = 0;
  v88[1] = 0;

  *(v80 + v86) = 1;
  *(v80 + v87) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v91 = v111;
  sub_23DA9DE28(v115, v111);
  sub_23DA9DE28(v116, v91);
  v92 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v93 = *(v25 + v92);
  *(v25 + v92) = v110;

  v94 = swift_allocObject();
  swift_weakInit();
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  *(v95 + 24) = v81;
  v96 = (v25 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  *v96 = sub_23DA9E6D0;
  v96[1] = v95;
  swift_retain_n();

  sub_23DA18BA0(v97);

  v99 = swift_allocObject();
  swift_weakInit();
  v100 = (v25 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v101 = v100[1];
  *v100 = sub_23DA9DE88;
  v100[1] = v99;

  v102 = swift_allocObject();
  swift_weakInit();

  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = v81;
  v104 = (v25 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v105 = v104[1];
  *v104 = sub_23DA9DE90;
  v104[1] = v103;

  return v25;
}

uint64_t sub_23DA8F5D0(uint64_t a1)
{
  v2 = sub_23DB6EB3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v18[24] = 0;

  sub_23DB6EF1C();
  v8 = sub_23DA9BC60(0xD000000000000033, 0x800000023DB89290);
  v10 = v9;
  v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel;
  v12 = *(a1 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
  swift_beginAccess();
  v13 = *(v12 + 48);
  *(v12 + 40) = v8;
  *(v12 + 48) = v10;

  sub_23DABC354();

  v14 = *(a1 + v11);
  swift_beginAccess();
  v15 = *(v14 + 40);
  v16 = *(v14 + 48);

  MEMORY[0x23EEF4EF0](v15, v16);
  sub_23DB6EB2C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_23DA8F7A0(uint64_t a1)
{
  v2 = sub_23DB6EB3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v18[24] = 1;

  sub_23DB6EF1C();
  v8 = sub_23DA9BC60(0xD000000000000036, 0x800000023DB89250);
  v10 = v9;
  v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel;
  v12 = *(a1 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
  swift_beginAccess();
  v13 = *(v12 + 48);
  *(v12 + 40) = v8;
  *(v12 + 48) = v10;

  sub_23DABC354();

  v14 = *(a1 + v11);
  swift_beginAccess();
  v15 = *(v14 + 40);
  v16 = *(v14 + 48);

  MEMORY[0x23EEF4EF0](v15, v16);
  sub_23DB6EB2C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_23DA8F974()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v2 = *(v1 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
    swift_beginAccess();
    v3 = *(v2 + 48);
    *(v2 + 40) = v4;
    *(v2 + 48) = v5;

    sub_23DABC354();

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DA8FA94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v60 = (&v49 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v49 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    if (qword_27E2FBBD0 != -1)
    {
      goto LABEL_21;
    }

    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_5;
    }

LABEL_4:
    v16 = objc_opt_self();
    v17 = sub_23DB7087C();
    [v16 triggerEventCommand_];

LABEL_5:
    v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v58 = v18;
    v19 = *(v15 + v18);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();

    v56 = v21;
    v57 = KeyPath;
    v55 = sub_23DB6EEFC();
    v53 = v22;
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v59 = v15;
    v54 = v23;
    v52 = v24;
    v51 = sub_23DB6EEFC();
    v50 = v25;

    v26 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_23DAC8B24(v19);
    }

    v27 = 0;
    v28 = (v1 + 56);
    v29 = v19[2];
    v1 += 48;
    if (!v29)
    {
LABEL_8:
      v30 = 1;
      v27 = v29;
      goto LABEL_11;
    }

    while (1)
    {
      if (v27 >= v19[2])
      {
        goto LABEL_20;
      }

      v31 = *(type metadata accessor for CommandToPractice(0) - 8);
      v61 = v27 + 1;
      v32 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27;
      v33 = *(v0 + 48);
      v34 = v1;
      v35 = v28;
      v36 = v13;
      v37 = v0;
      v38 = v29;
      v39 = v26;
      v40 = v9;
      v41 = v19;
      v42 = v60;
      *v60 = v27;
      sub_23DA9DDB8(v32, v42 + v33, type metadata accessor for CommandToPractice);
      v43 = v42;
      v19 = v41;
      v9 = v40;
      v26 = v39;
      v29 = v38;
      v0 = v37;
      v13 = v36;
      v28 = v35;
      v1 = v34;
      sub_23DA17A54(v43, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v30 = 0;
      v27 = v61;
LABEL_11:
      (*v28)(v9, v30, 1, v0);
      sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {
        break;
      }

      v15 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        swift_once();
        if (UIAccessibilityIsVoiceOverRunning())
        {
          goto LABEL_4;
        }

        goto LABEL_5;
      }

      if (v15 >= *(v26 + 16))
      {
        goto LABEL_19;
      }

      v44 = *(type metadata accessor for CommandToPractice(0) - 8);
      v45 = v26 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v15;
      *(v45 + 18) = 0;
      *(v45 + 19) = v15 == 0;
      sub_23DA9DE28(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
      if (v27 == v29)
      {
        goto LABEL_8;
      }
    }

    *v50 = 0;
    *v53 = 0;
    v51(v62, 0);

    v55(v63, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v46 = v59;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v47 = *(v46 + v58);
    *(v46 + v58) = v26;

    v48 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v48 + 40) = 27;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DA900E8()
{
  v0 = type metadata accessor for ThreeColumnTableInfo(0);
  v1 = v0 - 8;
  v59 = *(v0 - 8);
  v60 = v59;
  v2 = *(v59 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v59 - v8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v59 - v12);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v59 - v16);
  v18 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88E90);
  v20 = v19;
  v21 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88EC0);
  v23 = v22;
  v24 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88EF0);
  *v17 = v18;
  v17[1] = v20;
  v17[2] = v21;
  v17[3] = v23;
  v17[4] = v24;
  v17[5] = v25;
  v26 = v17 + *(v1 + 36);
  sub_23DB6EA7C();
  v27 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88F20);
  v29 = v28;
  v30 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88F50);
  v32 = v31;
  v33 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88F80);
  *v13 = v27;
  v13[1] = v29;
  v13[2] = v30;
  v13[3] = v32;
  v13[4] = v33;
  v13[5] = v34;
  v35 = v13 + *(v1 + 36);
  sub_23DB6EA7C();
  v36 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88FB0);
  v38 = v37;
  v39 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88FE0);
  v41 = v40;
  v42 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB89010);
  *v9 = v36;
  v9[1] = v38;
  v9[2] = v39;
  v9[3] = v41;
  v9[4] = v42;
  v9[5] = v43;
  v44 = v9 + *(v1 + 36);
  sub_23DB6EA7C();
  v45 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB89040);
  v47 = v46;
  v48 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB89070);
  v50 = v49;
  v51 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB890A0);
  *v5 = v45;
  v5[1] = v47;
  v5[2] = v48;
  v5[3] = v50;
  v5[4] = v51;
  v5[5] = v52;
  v53 = v5 + *(v1 + 36);
  sub_23DB6EA7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E0, &qword_23DB7A718);
  v54 = *(v59 + 72);
  v55 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_23DB7A0B0;
  v57 = v56 + v55;
  sub_23DA9DDB8(v17, v57, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DDB8(v13, v57 + v54, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DDB8(v9, v57 + 2 * v54, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DD18(v5, v57 + 3 * v54);
  sub_23DA9DE28(v9, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DE28(v13, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DE28(v17, type metadata accessor for ThreeColumnTableInfo);
  return v56;
}

uint64_t sub_23DA904C4()
{
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v195 = *(v196 - 8);
  v1 = *(v195 + 64);
  MEMORY[0x28223BE20](v196, v2);
  v194 = &v165 - v3;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v191 = *(v192 - 8);
  v4 = *(v191 + 64);
  MEMORY[0x28223BE20](v192, v5);
  v189 = &v165 - v6;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v188 = *(v190 - 8);
  v7 = *(v188 + 8);
  MEMORY[0x28223BE20](v190, v8);
  v186 = &v165 - v9;
  *&v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v179 = *(v181 - 8);
  v10 = *(v179 + 64);
  MEMORY[0x28223BE20](v181, v11);
  v178 = &v165 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v174 = *(v175 - 8);
  v13 = *(v174 + 64);
  MEMORY[0x28223BE20](v175, v14);
  v171 = &v165 - v15;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v169 = *(v170 - 8);
  v16 = *(v169 + 64);
  MEMORY[0x28223BE20](v170, v17);
  v166 = &v165 - v18;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  v184 = *(v187 - 8);
  v19 = *(v184 + 8);
  MEMORY[0x28223BE20](v187, v20);
  v183 = &v165 - v21;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  v22 = *(v180 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v180, v24);
  v26 = &v165 - v25;
  v27 = sub_23DB6EA8C();
  v197 = *(v27 - 8);
  v28 = v197[8];
  MEMORY[0x28223BE20](v27, v29);
  v182 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v165 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v165 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v165 - v41;
  v177 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB88CD0);
  v176 = v43;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v185 = xmmword_23DB76A80;
  *(inited + 16) = xmmword_23DB76A80;
  *(inited + 32) = 12081;
  sub_23DA7194C(0, (inited + 34));
  v198 = v0;
  v173 = sub_23DA9B4E0(0xD00000000000001DLL, 0x800000023DB88CF0, inited);
  v172 = v45;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v46 = type metadata accessor for Page.PracticeVOTables(0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;
  v51 = MEMORY[0x277D84F90];
  *&v199 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC810, &unk_23DB7A670);
  sub_23DB6EECC();
  (*(v22 + 32))(v49 + v50, v26, v180);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  *&v199 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC820, &unk_23DB74E50);
  v53 = v183;
  sub_23DB6EECC();
  (*(v184 + 4))(v49 + v52, v53, v187);
  v54 = v197 + 2;
  v55 = v197[2];
  v180 = v42;
  v55(v38, v42, v27);
  v184 = v34;
  v183 = v38;
  v187 = v27;
  v168 = v54;
  v167 = v55;
  v55(v34, v38, v27);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v199) = 0;
  v57 = v166;
  sub_23DB6EECC();
  v58 = *(v169 + 32);
  v59 = v170;
  v58(v49 + v56, v57);
  if (v51 >> 62 && sub_23DB70C3C())
  {
    v60 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v60 = MEMORY[0x277D84FA0];
  }

  *(v49 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v60;
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v199 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v62 = v171;
  sub_23DB6EECC();
  (*(v174 + 32))(v49 + v61, v62, v175);
  *(v49 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v199 = 0;
  v64 = v178;
  sub_23DB6EECC();
  (*(v179 + 32))(v49 + v63, v64, v181);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v199) = 0;
  sub_23DB6EECC();
  (v58)(v49 + v65, v57, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v181 = xmmword_23DB74320;
  v199 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v67 = v186;
  sub_23DB6EECC();
  v68 = *(v188 + 4);
  v188 = v58;
  v69 = v190;
  v68(v49 + v66, v67, v190);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v199 = v181;
  sub_23DB6EECC();
  v68(v49 + v70, v67, v69);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v199) = 0;
  sub_23DB6EECC();
  v188(v49 + v71, v57, v59);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v199 = 0;
  *(&v199 + 1) = 0xE000000000000000;
  v73 = v189;
  sub_23DB6EECC();
  (*(v191 + 32))(v49 + v72, v73, v192);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v199 = 0uLL;
  sub_23DB6EECC();
  v68(v49 + v74, v67, v69);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v199 = nullsub_1;
  *(&v199 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v76 = v194;
  sub_23DB6EECC();
  (*(v195 + 32))(v49 + v75, v76, v196);
  v77 = v182;
  v78 = v184;
  v79 = v187;
  v167(v182, v184, v187);
  v80 = Page.init(id:title:text:subPages:iconName:)(v77, v177, v176, v173, v172, MEMORY[0x277D84F90], 0, 0);
  v81 = v197[1];
  v81(v180, v79);
  v81(v78, v79);
  v81(v183, v79);
  v82 = sub_23DA900E8();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v199 = v82;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v83 = swift_allocObject();
  *(v83 + 16) = v185;
  *(v83 + 32) = sub_23DA9BC60(0xD000000000000022, 0x800000023DB88D10);
  *(v83 + 40) = v84;
  *(v83 + 48) = sub_23DA9BC60(0xD000000000000022, 0x800000023DB88D40);
  *(v83 + 56) = v85;
  *(v83 + 64) = sub_23DA9BC60(0xD000000000000022, 0x800000023DB88D70);
  *(v83 + 72) = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v199 = v83;

  v192 = v80;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v199) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v87 = (type metadata accessor for CommandToPractice(0) - 8);
  v88 = *v87;
  v195 = *(*v87 + 72);
  v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v190 = 4 * v195;
  v90 = swift_allocObject();
  v191 = v90;
  *(v90 + 16) = xmmword_23DB7A0D0;
  v91 = v90 + v89;
  sub_23DA7194C(0, &v199);
  LOBYTE(v89) = v199;
  v92 = swift_initStackObject();
  *(v92 + 16) = xmmword_23DB73BA0;
  *(v92 + 32) = v89;
  v93 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88DA0, v92);
  v95 = v94;
  swift_setDeallocating();
  *v91 = 0;
  *(v91 + 8) = 0xE000000000000000;
  *(v91 + 17) = 186;
  *(v91 + 19) = 0;
  v96 = v91 + v87[11];
  sub_23DB6EA7C();
  v97 = v87[12];
  *(v91 + v97) = 1;
  v98 = v87[13];
  *(v91 + v98) = 1;
  v99 = v87[14];
  v197 = type metadata accessor for KeyboardKey(0);
  v100 = *(v197 - 1);
  v101 = *(v100 + 56);
  v196 = v100 + 56;
  (v101)(v91 + v99, 1, 1, v197);
  v194 = v101;
  v102 = (v91 + v87[15]);
  *v102 = 0;
  v102[1] = 0;
  v103 = *(v91 + 8);
  *v91 = v93;
  *(v91 + 8) = v95;

  *(v91 + 16) = 62;
  *(v91 + 19) = 1;
  v104 = v102[1];
  *v102 = 0;
  v102[1] = 0;

  *(v91 + v97) = 1;
  *(v91 + v98) = 1;
  v105 = v195;
  v106 = v91 + v195;
  v107 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88DD0, &unk_284FE5DF8);
  v109 = v108;
  *v106 = 0;
  *(v106 + 8) = 0xE000000000000000;
  *(v106 + 17) = 186;
  *(v106 + 19) = 0;
  v110 = v106 + v87[11];
  sub_23DB6EA7C();
  v111 = v87[12];
  *(v106 + v111) = 1;
  v112 = v87[13];
  *(v106 + v112) = 1;
  v113 = v197;
  (v101)(v106 + v87[14], 1, 1, v197);
  v114 = (v106 + v87[15]);
  *v114 = 0;
  v114[1] = 0;
  v115 = *(v106 + 8);
  *v106 = v107;
  *(v106 + 8) = v109;

  *(v106 + 16) = 33;
  *(v106 + 19) = 0;
  v116 = v114[1];
  *v114 = 0;
  v114[1] = 0;

  *(v106 + v111) = 1;
  *(v106 + v112) = 1;
  v193 = 2 * v105;
  v117 = v91 + 2 * v105;
  v118 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88E00, &unk_284FE5E20);
  v120 = v119;
  *v117 = 0;
  *(v117 + 8) = 0xE000000000000000;
  *(v117 + 17) = 186;
  *(v117 + 19) = 0;
  v121 = v117 + v87[11];
  sub_23DB6EA7C();
  v122 = v87[12];
  *(v117 + v122) = 1;
  v123 = v87[13];
  *(v117 + v123) = 1;
  v124 = v194;
  (v194)(v117 + v87[14], 1, 1, v113);
  v125 = (v117 + v87[15]);
  *v125 = 0;
  v125[1] = 0;
  v126 = *(v117 + 8);
  *v117 = v118;
  *(v117 + 8) = v120;

  *(v117 + 16) = 47;
  *(v117 + 19) = 0;
  v127 = v125[1];
  *v125 = 0;
  v125[1] = 0;

  *(v117 + v122) = 1;
  *(v117 + v123) = 1;
  v128 = v91 + v193 + v195;
  v129 = v198;
  v130 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88E30, &unk_284FE5E48);
  v195 = v131;
  *v128 = 0;
  *(v128 + 8) = 0xE000000000000000;
  *(v128 + 17) = 186;
  *(v128 + 19) = 0;
  v132 = v128 + v87[11];
  sub_23DB6EA7C();
  v133 = v87[12];
  *(v128 + v133) = 1;
  v134 = v87[13];
  *(v128 + v134) = 1;
  v124(v128 + v87[14], 1, 1, v197);
  v135 = (v128 + v87[15]);
  *v135 = 0;
  v135[1] = 0;
  v136 = *(v128 + 8);
  v137 = v195;
  *v128 = v130;
  *(v128 + 8) = v137;

  *(v128 + 16) = 49;
  *(v128 + 19) = 0;
  v138 = v135[1];
  *v135 = 0;
  v135[1] = 0;

  *(v128 + v133) = 1;
  *(v128 + v134) = 1;
  v139 = v91 + v190;
  v140 = v129;
  v141 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88E60, &unk_284FE5E70);
  v143 = v142;
  *v139 = 0;
  *(v139 + 8) = 0xE000000000000000;
  *(v139 + 17) = 186;
  *(v139 + 19) = 0;
  v144 = v139 + v87[11];
  sub_23DB6EA7C();
  v145 = v87[12];
  *(v139 + v145) = 1;
  v146 = v87[13];
  *(v139 + v146) = 1;
  (v194)(v139 + v87[14], 1, 1, v197);
  v147 = (v139 + v87[15]);
  *v147 = 0;
  v147[1] = 0;
  v148 = *(v139 + 8);
  *v139 = v141;
  *(v139 + 8) = v143;

  *(v139 + 16) = 34;
  *(v139 + 19) = 0;
  v149 = v147[1];
  *v147 = 0;
  v147[1] = 0;

  *(v139 + v145) = 1;
  *(v139 + v146) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v150 = v192;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v151 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v152 = *(v150 + v151);
  *(v150 + v151) = v191;
  v153 = v150;

  v154 = swift_allocObject();
  swift_weakInit();
  v155 = swift_allocObject();
  *(v155 + 16) = v154;
  *(v155 + 24) = v140;
  v156 = v140;
  v157 = (v153 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v158 = *v157;
  v159 = v157[1];
  *v157 = sub_23DA9E6D0;
  v157[1] = v155;
  swift_retain_n();

  sub_23DA18BA0(v158);

  v160 = swift_allocObject();
  swift_weakInit();

  v161 = swift_allocObject();
  *(v161 + 16) = v160;
  *(v161 + 24) = v156;
  v162 = (v153 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v163 = v162[1];
  *v162 = sub_23DA9DD7C;
  v162[1] = v161;

  return v153;
}

uint64_t sub_23DA9196C()
{
  v0 = type metadata accessor for ThreeColumnTableInfo(0);
  v1 = v0 - 8;
  v48 = *(v0 - 8);
  v2 = v48;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v0, v4);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v47 - v9);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v47 - v13);
  v15 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88B20);
  v17 = v16;
  v18 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88B50);
  v20 = v19;
  v21 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88B80);
  *v14 = v15;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v20;
  v14[4] = v21;
  v14[5] = v22;
  v23 = v14 + *(v1 + 36);
  sub_23DB6EA7C();
  v24 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88BB0);
  v26 = v25;
  v27 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88BE0);
  v29 = v28;
  v30 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88C10);
  *v10 = v24;
  v10[1] = v26;
  v10[2] = v27;
  v10[3] = v29;
  v10[4] = v30;
  v10[5] = v31;
  v32 = v10 + *(v1 + 36);
  sub_23DB6EA7C();
  v33 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88C40);
  v35 = v34;
  v36 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88C70);
  v38 = v37;
  v39 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88CA0);
  *v6 = v33;
  v6[1] = v35;
  v6[2] = v36;
  v6[3] = v38;
  v6[4] = v39;
  v6[5] = v40;
  v41 = v6 + *(v1 + 36);
  sub_23DB6EA7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E0, &qword_23DB7A718);
  v42 = *(v2 + 72);
  v43 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_23DB76A80;
  v45 = v44 + v43;
  sub_23DA9DDB8(v14, v45, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DDB8(v10, v45 + v42, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DD18(v6, v45 + 2 * v42);
  sub_23DA9DE28(v10, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DE28(v14, type metadata accessor for ThreeColumnTableInfo);
  return v44;
}

uint64_t sub_23DA91C94()
{
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v195 = *(v196 - 8);
  v1 = *(v195 + 64);
  MEMORY[0x28223BE20](v196, v2);
  v194 = &v165 - v3;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v191 = *(v192 - 8);
  v4 = *(v191 + 64);
  MEMORY[0x28223BE20](v192, v5);
  v189 = &v165 - v6;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v188 = *(v190 - 8);
  v7 = *(v188 + 8);
  MEMORY[0x28223BE20](v190, v8);
  v186 = &v165 - v9;
  *&v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v179 = *(v181 - 8);
  v10 = *(v179 + 64);
  MEMORY[0x28223BE20](v181, v11);
  v178 = &v165 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v174 = *(v175 - 8);
  v13 = *(v174 + 64);
  MEMORY[0x28223BE20](v175, v14);
  v171 = &v165 - v15;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v169 = *(v170 - 8);
  v16 = *(v169 + 64);
  MEMORY[0x28223BE20](v170, v17);
  v166 = &v165 - v18;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  v184 = *(v187 - 8);
  v19 = *(v184 + 8);
  MEMORY[0x28223BE20](v187, v20);
  v183 = &v165 - v21;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  v22 = *(v180 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v180, v24);
  v26 = &v165 - v25;
  v27 = sub_23DB6EA8C();
  v197 = *(v27 - 8);
  v28 = v197[8];
  MEMORY[0x28223BE20](v27, v29);
  v182 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v165 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v165 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v165 - v41;
  v177 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88960);
  v176 = v43;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v185 = xmmword_23DB76A80;
  *(inited + 16) = xmmword_23DB76A80;
  *(inited + 32) = 12848;
  sub_23DA7194C(0, (inited + 34));
  v198 = v0;
  v173 = sub_23DA9B4E0(0xD00000000000001BLL, 0x800000023DB88980, inited);
  v172 = v45;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v46 = type metadata accessor for Page.PracticeVOTables(0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;
  v51 = MEMORY[0x277D84F90];
  *&v199 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC810, &unk_23DB7A670);
  sub_23DB6EECC();
  (*(v22 + 32))(v49 + v50, v26, v180);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  *&v199 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC820, &unk_23DB74E50);
  v53 = v183;
  sub_23DB6EECC();
  (*(v184 + 4))(v49 + v52, v53, v187);
  v54 = v197 + 2;
  v55 = v197[2];
  v180 = v42;
  v55(v38, v42, v27);
  v184 = v34;
  v183 = v38;
  v187 = v27;
  v168 = v54;
  v167 = v55;
  v55(v34, v38, v27);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v199) = 0;
  v57 = v166;
  sub_23DB6EECC();
  v58 = *(v169 + 32);
  v59 = v170;
  v58(v49 + v56, v57);
  if (v51 >> 62 && sub_23DB70C3C())
  {
    v60 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v60 = MEMORY[0x277D84FA0];
  }

  *(v49 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v60;
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v199 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v62 = v171;
  sub_23DB6EECC();
  (*(v174 + 32))(v49 + v61, v62, v175);
  *(v49 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v199 = 0;
  v64 = v178;
  sub_23DB6EECC();
  (*(v179 + 32))(v49 + v63, v64, v181);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v199) = 0;
  sub_23DB6EECC();
  (v58)(v49 + v65, v57, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v181 = xmmword_23DB74320;
  v199 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v67 = v186;
  sub_23DB6EECC();
  v68 = *(v188 + 4);
  v188 = v58;
  v69 = v190;
  v68(v49 + v66, v67, v190);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v199 = v181;
  sub_23DB6EECC();
  v68(v49 + v70, v67, v69);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v199) = 0;
  sub_23DB6EECC();
  v188(v49 + v71, v57, v59);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v199 = 0;
  *(&v199 + 1) = 0xE000000000000000;
  v73 = v189;
  sub_23DB6EECC();
  (*(v191 + 32))(v49 + v72, v73, v192);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v199 = 0uLL;
  sub_23DB6EECC();
  v68(v49 + v74, v67, v69);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v199 = nullsub_1;
  *(&v199 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v76 = v194;
  sub_23DB6EECC();
  (*(v195 + 32))(v49 + v75, v76, v196);
  v77 = v182;
  v78 = v184;
  v79 = v187;
  v167(v182, v184, v187);
  v80 = Page.init(id:title:text:subPages:iconName:)(v77, v177, v176, v173, v172, MEMORY[0x277D84F90], 0, 0);
  v81 = v197[1];
  v81(v180, v79);
  v81(v78, v79);
  v81(v183, v79);
  v82 = sub_23DA9196C();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v199 = v82;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v83 = swift_allocObject();
  *(v83 + 16) = v185;
  *(v83 + 32) = sub_23DA9BC60(0xD000000000000026, 0x800000023DB889A0);
  *(v83 + 40) = v84;
  *(v83 + 48) = sub_23DA9BC60(0xD000000000000026, 0x800000023DB889D0);
  *(v83 + 56) = v85;
  *(v83 + 64) = sub_23DA9BC60(0xD000000000000026, 0x800000023DB88A00);
  *(v83 + 72) = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v199 = v83;

  v192 = v80;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v199) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v87 = (type metadata accessor for CommandToPractice(0) - 8);
  v88 = *v87;
  v195 = *(*v87 + 72);
  v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v190 = 4 * v195;
  v90 = swift_allocObject();
  v191 = v90;
  *(v90 + 16) = xmmword_23DB7A0D0;
  v91 = v90 + v89;
  sub_23DA7194C(0, &v199);
  LOBYTE(v89) = v199;
  v92 = swift_initStackObject();
  *(v92 + 16) = xmmword_23DB73BA0;
  *(v92 + 32) = v89;
  v93 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88A30, v92);
  v95 = v94;
  swift_setDeallocating();
  *v91 = 0;
  *(v91 + 8) = 0xE000000000000000;
  *(v91 + 17) = 186;
  *(v91 + 19) = 0;
  v96 = v91 + v87[11];
  sub_23DB6EA7C();
  v97 = v87[12];
  *(v91 + v97) = 1;
  v98 = v87[13];
  *(v91 + v98) = 1;
  v99 = v87[14];
  v197 = type metadata accessor for KeyboardKey(0);
  v100 = *(v197 - 1);
  v101 = *(v100 + 56);
  v196 = v100 + 56;
  (v101)(v91 + v99, 1, 1, v197);
  v194 = v101;
  v102 = (v91 + v87[15]);
  *v102 = 0;
  v102[1] = 0;
  v103 = *(v91 + 8);
  *v91 = v93;
  *(v91 + 8) = v95;

  *(v91 + 16) = 62;
  *(v91 + 19) = 1;
  v104 = v102[1];
  *v102 = 0;
  v102[1] = 0;

  *(v91 + v97) = 1;
  *(v91 + v98) = 1;
  v105 = v195;
  v106 = v91 + v195;
  v193 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88A60, &unk_284FE5D58);
  v108 = v107;
  *v106 = 0;
  *(v106 + 8) = 0xE000000000000000;
  *(v106 + 17) = 186;
  *(v106 + 19) = 0;
  v109 = v106 + v87[11];
  sub_23DB6EA7C();
  v110 = v87[12];
  *(v106 + v110) = 1;
  v111 = v87[13];
  *(v106 + v111) = 1;
  v112 = v197;
  (v101)(v106 + v87[14], 1, 1, v197);
  v113 = (v106 + v87[15]);
  *v113 = 0;
  v113[1] = 0;
  v114 = *(v106 + 8);
  *v106 = v193;
  *(v106 + 8) = v108;

  *(v106 + 16) = 33;
  *(v106 + 19) = 0;
  v115 = v113[1];
  *v113 = 0;
  v113[1] = 0;

  *(v106 + v110) = 1;
  *(v106 + v111) = 1;
  v193 = 2 * v105;
  v116 = v91 + 2 * v105;
  v117 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88A90, &unk_284FE5D80);
  v119 = v118;
  *v116 = 0;
  *(v116 + 8) = 0xE000000000000000;
  *(v116 + 17) = 186;
  *(v116 + 19) = 0;
  v120 = v116 + v87[11];
  sub_23DB6EA7C();
  v121 = v87[12];
  *(v116 + v121) = 1;
  v122 = v87[13];
  *(v116 + v122) = 1;
  v123 = v112;
  v124 = v194;
  (v194)(v116 + v87[14], 1, 1, v123);
  v125 = (v116 + v87[15]);
  *v125 = 0;
  v125[1] = 0;
  v126 = *(v116 + 8);
  *v116 = v117;
  *(v116 + 8) = v119;

  *(v116 + 16) = 50;
  *(v116 + 19) = 0;
  v127 = v125[1];
  *v125 = 0;
  v125[1] = 0;

  *(v116 + v121) = 1;
  *(v116 + v122) = 1;
  v128 = v91 + v193 + v195;
  v129 = v198;
  v130 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88AC0, &unk_284FE5DA8);
  v195 = v131;
  *v128 = 0;
  *(v128 + 8) = 0xE000000000000000;
  *(v128 + 17) = 186;
  *(v128 + 19) = 0;
  v132 = v128 + v87[11];
  sub_23DB6EA7C();
  v133 = v87[12];
  *(v128 + v133) = 1;
  v134 = v87[13];
  *(v128 + v134) = 1;
  v124(v128 + v87[14], 1, 1, v197);
  v135 = (v128 + v87[15]);
  *v135 = 0;
  v135[1] = 0;
  v136 = *(v128 + 8);
  v137 = v195;
  *v128 = v130;
  *(v128 + 8) = v137;

  *(v128 + 16) = 48;
  *(v128 + 19) = 0;
  v138 = v135[1];
  *v135 = 0;
  v135[1] = 0;

  *(v128 + v133) = 1;
  *(v128 + v134) = 1;
  v139 = v91 + v190;
  v140 = v129;
  v141 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88AF0, &unk_284FE5DD0);
  v143 = v142;
  *v139 = 0;
  *(v139 + 8) = 0xE000000000000000;
  *(v139 + 17) = 186;
  *(v139 + 19) = 0;
  v144 = v139 + v87[11];
  sub_23DB6EA7C();
  v145 = v87[12];
  *(v139 + v145) = 1;
  v146 = v87[13];
  *(v139 + v146) = 1;
  (v194)(v139 + v87[14], 1, 1, v197);
  v147 = (v139 + v87[15]);
  *v147 = 0;
  v147[1] = 0;
  v148 = *(v139 + 8);
  *v139 = v141;
  *(v139 + 8) = v143;

  *(v139 + 16) = 34;
  *(v139 + 19) = 0;
  v149 = v147[1];
  *v147 = 0;
  v147[1] = 0;

  *(v139 + v145) = 1;
  *(v139 + v146) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v150 = v192;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v151 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v152 = *(v150 + v151);
  *(v150 + v151) = v191;
  v153 = v150;

  v154 = swift_allocObject();
  swift_weakInit();
  v155 = swift_allocObject();
  *(v155 + 16) = v154;
  *(v155 + 24) = v140;
  v156 = v140;
  v157 = (v153 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v158 = *v157;
  v159 = v157[1];
  *v157 = sub_23DA9E6D0;
  v157[1] = v155;
  swift_retain_n();

  sub_23DA18BA0(v158);

  v160 = swift_allocObject();
  swift_weakInit();

  v161 = swift_allocObject();
  *(v161 + 16) = v160;
  *(v161 + 24) = v156;
  v162 = (v153 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v163 = v162[1];
  *v162 = sub_23DA9E6D8;
  v162[1] = v161;

  return v153;
}

uint64_t sub_23DA9313C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v99 = *(v0 - 8);
  v100 = v0;
  v1 = *(v99 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v98 = &v74 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v93 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v83 = &v74 - v11;
  *&v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v82, v13);
  v78 = &v74 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v15 = *(v77 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v77, v17);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v74 - v24;
  v26 = sub_23DB6EA8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v88 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v74 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v74 - v37;
  v39 = sub_23DA9BC60(0xD00000000000002BLL, 0x800000023DB88900);
  v86 = v40;
  v87 = v39;
  v41 = sub_23DA9BC60(0xD00000000000002ALL, 0x800000023DB88930);
  v84 = v42;
  v85 = v41;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.CollectionFinished(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v90 = v34;
  v91 = v27;
  v47 = *(v27 + 16);
  v89 = v38;
  v92 = v26;
  v80 = v27 + 16;
  v79 = v47;
  v47(v34, v38, v26);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v49 = v20;
  v76 = *(v21 + 32);
  v76(v46 + v48, v25, v20);
  v50 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v51 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v51 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v51;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v101 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v15 + 32))(v46 + v52, v19, v77);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v101 = 0;
  v54 = v78;
  sub_23DB6EECC();
  (*(v81 + 32))(v46 + v53, v54, v82);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v75 = v49;
  v56 = v76;
  v76(v46 + v55, v25, v49);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v82 = xmmword_23DB74320;
  v101 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v58 = v83;
  sub_23DB6EECC();
  v59 = v95;
  v60 = *(v94 + 32);
  v60(v46 + v57, v58, v95);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v101 = v82;
  sub_23DB6EECC();
  v60(v46 + v61, v58, v59);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v56(v46 + v62, v25, v75);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  v64 = v93;
  sub_23DB6EECC();
  (*(v96 + 32))(v46 + v63, v64, v97);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v101 = 0uLL;
  sub_23DB6EECC();
  v60(v46 + v65, v58, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v101 = nullsub_1;
  *(&v101 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v67 = v98;
  sub_23DB6EECC();
  (*(v99 + 32))(v46 + v66, v67, v100);
  v68 = v88;
  v69 = v90;
  v70 = v92;
  v79(v88, v90, v92);
  v71 = Page.init(id:title:text:subPages:iconName:)(v68, v87, v86, v85, v84, MEMORY[0x277D84F90], 0, 0);
  v72 = *(v91 + 8);
  v72(v69, v70);
  v72(v89, v70);
  return v71;
}

uint64_t sub_23DA939B8()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v152 = v1;
  v153 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v157 = (&v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v156 = (&v125 - v8);
  MEMORY[0x28223BE20](v9, v10);
  v155 = (&v125 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v150 = *(v12 - 8);
  v151 = v12;
  v13 = *(v150 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v149 = &v125 - v15;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v147 = *(v148 - 8);
  v16 = *(v147 + 64);
  MEMORY[0x28223BE20](v148, v17);
  v145 = &v125 - v18;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v139 = *(v142 - 1);
  v19 = *(v139 + 64);
  MEMORY[0x28223BE20](v142, v20);
  v138 = &v125 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v134 = *(v135 - 8);
  v22 = *(v134 + 64);
  MEMORY[0x28223BE20](v135, v23);
  v133 = &v125 - v24;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v129 = *(v130 - 8);
  v25 = *(v129 + 64);
  MEMORY[0x28223BE20](v130, v26);
  v126 = &v125 - v27;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v161 = *(v158 - 8);
  v28 = *(v161 + 64);
  MEMORY[0x28223BE20](v158, v29);
  v31 = &v125 - v30;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v144 = *(v146 - 8);
  v32 = *(v144 + 8);
  MEMORY[0x28223BE20](v146, v33);
  v35 = &v125 - v34;
  v36 = sub_23DB6EA8C();
  v160 = *(v36 - 8);
  v37 = v160[8];
  MEMORY[0x28223BE20](v36, v38);
  v143 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v159 = &v125 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v125 - v45;
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v125 - v49;
  v137 = sub_23DA9BC60(0xD000000000000021, 0x800000023DB88750);
  v136 = v51;
  sub_23DA7194C(0, &v162);
  v52 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v52;
  v154 = v0;
  v132 = sub_23DA9B4E0(0xD000000000000020, 0x800000023DB88780, inited);
  v131 = v54;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v55 = type metadata accessor for Page.PracticeVOExplanation(0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v60 = MEMORY[0x277D84F90];
  *&v162 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  (*(v144 + 4))(v58 + v59, v35, v146);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v162 = 0;
  *(&v162 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v62 = *(v161 + 32);
  v141 = v31;
  v161 += 32;
  v125 = v62;
  v62(v58 + v61, v31, v158);
  v63 = v160 + 2;
  v64 = v160[2];
  v140 = v50;
  v64(v46, v50, v36);
  v144 = v46;
  v146 = v36;
  v128 = v63;
  v127 = v64;
  v64(v159, v46, v36);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v162) = 0;
  v66 = v126;
  sub_23DB6EECC();
  v67 = *(v129 + 32);
  v68 = v66;
  v69 = v66;
  v70 = v130;
  v67(v58 + v65, v69);
  if (v60 >> 62 && sub_23DB70C3C())
  {
    v71 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v71 = MEMORY[0x277D84FA0];
  }

  *(v58 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v71;
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v162 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v73 = v133;
  sub_23DB6EECC();
  (*(v134 + 32))(v58 + v72, v73, v135);
  *(v58 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v60;
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v162 = 0;
  v75 = v138;
  sub_23DB6EECC();
  (*(v139 + 32))(v58 + v74, v75, v142);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v162) = 0;
  sub_23DB6EECC();
  (v67)(v58 + v76, v68, v70);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v139 = xmmword_23DB74320;
  v162 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v142 = v67;
  v78 = v145;
  sub_23DB6EECC();
  v79 = *(v147 + 32);
  v80 = v148;
  v79(v58 + v77, v78, v148);
  v81 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v162 = v139;
  sub_23DB6EECC();
  v79(v58 + v81, v78, v80);
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v162) = 0;
  sub_23DB6EECC();
  v142(v58 + v82, v68, v70);
  v83 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v162 = 0;
  *(&v162 + 1) = 0xE000000000000000;
  v84 = v141;
  sub_23DB6EECC();
  v125(v58 + v83, v84, v158);
  v85 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v162 = 0uLL;
  sub_23DB6EECC();
  v79(v58 + v85, v78, v80);
  v86 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v162 = nullsub_1;
  *(&v162 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v87 = v149;
  sub_23DB6EECC();
  (*(v150 + 32))(v58 + v86, v87, v151);
  v88 = v143;
  v89 = v159;
  v90 = v146;
  v127(v143, v159, v146);
  v91 = Page.init(id:title:text:subPages:iconName:)(v88, v137, v136, v132, v131, MEMORY[0x277D84F90], 0, 0);
  v92 = v160[1];
  v92(v140, v90);
  v92(v89, v90);
  v92(v144, v90);
  v93 = sub_23DA9BC60(0xD000000000000024, 0x800000023DB887B0);
  v95 = v94;
  v96 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB887E0);
  v98 = v97;
  v99 = v152;
  v100 = v155;
  v101 = v155 + *(v152 + 24);
  sub_23DB6EA7C();
  *v100 = v93;
  v100[1] = v95;
  v100[2] = v96;
  v100[3] = v98;
  v102 = sub_23DA9BC60(0xD000000000000024, 0x800000023DB88810);
  v104 = v103;
  v105 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB88840);
  v107 = v106;
  v108 = v156;
  v109 = v156 + *(v99 + 24);
  sub_23DB6EA7C();
  *v108 = v102;
  v108[1] = v104;
  v108[2] = v105;
  v108[3] = v107;
  v110 = sub_23DA9BC60(0xD000000000000024, 0x800000023DB88870);
  v112 = v111;
  v113 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB888A0);
  v115 = v114;
  v116 = *(v99 + 24);
  v117 = v157;
  sub_23DB6EA7C();
  *v117 = v110;
  v117[1] = v112;
  v117[2] = v113;
  v117[3] = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v118 = *(v153 + 72);
  v119 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_23DB76A80;
  sub_23DA9DDB8(v100, v120 + v119, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v108, v120 + v119 + v118, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v117, v120 + v119 + 2 * v118, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v162 = v120;

  sub_23DB6EF1C();
  v121 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB888D0);
  v123 = v122;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v162 = v121;
  *(&v162 + 1) = v123;

  sub_23DB6EF1C();
  sub_23DA9DE28(v117, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v108, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v100, type metadata accessor for HeaderWithBody);
  return v91;
}

uint64_t sub_23DA947FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v136 = *(v1 - 8);
  v137 = v1;
  v2 = *(v136 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v135 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v131 = &v110 - v8;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v129 = *(v132 - 8);
  v9 = *(v129 + 64);
  MEMORY[0x28223BE20](v132, v10);
  v128 = &v110 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v120 = *(v123 - 1);
  v12 = *(v120 + 64);
  MEMORY[0x28223BE20](v123, v13);
  v117 = &v110 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v115 = *(v116 - 8);
  v15 = *(v115 + 64);
  MEMORY[0x28223BE20](v116, v16);
  v114 = &v110 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v110 = *(v111 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x28223BE20](v111, v19);
  v21 = &v110 - v20;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v22 = *(v130 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v130, v24);
  v26 = &v110 - v25;
  v27 = sub_23DB6EA8C();
  v138 = *(v27 - 8);
  v28 = v138[8];
  MEMORY[0x28223BE20](v27, v29);
  v124 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v110 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v110 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v110 - v41;
  v122 = sub_23DA9BC60(0xD00000000000001FLL, 0x800000023DB886B0);
  v121 = v43;
  v139 = v0;
  v119 = sub_23DA9B4E0(0xD00000000000001ELL, 0x800000023DB886D0, &unk_284FE5D08);
  v118 = v44;
  sub_23DB6EA7C();
  v45 = type metadata accessor for Page.PracticeVOKeyboardCommand(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v50 = MEMORY[0x277D84F90];
  *&v141 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DB6EECC();
  (*(v22 + 32))(v48 + v49, v26, v130);
  v51 = v138 + 2;
  v52 = v138[2];
  v125 = v42;
  v52(v38, v42, v27);
  v127 = v34;
  v126 = v38;
  v130 = v27;
  v113 = v51;
  v112 = v52;
  v52(v34, v38, v27);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v141) = 0;
  sub_23DB6EECC();
  v54 = *(v110 + 32);
  v55 = v21;
  v56 = v111;
  v54(v48 + v53, v21);
  if (v50 >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v141 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v114;
  sub_23DB6EECC();
  (*(v115 + 32))(v48 + v58, v59, v116);
  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v141 = 0;
  v61 = v117;
  sub_23DB6EECC();
  (*(v120 + 32))(v48 + v60, v61, v123);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v141) = 0;
  sub_23DB6EECC();
  (v54)(v48 + v62, v21, v56);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v120 = xmmword_23DB74320;
  v141 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v64 = v128;
  sub_23DB6EECC();
  v123 = v54;
  v65 = *(v129 + 32);
  v66 = v132;
  v65(v48 + v63, v64, v132);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v141 = v120;
  sub_23DB6EECC();
  v65(v48 + v67, v64, v66);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v141) = 0;
  sub_23DB6EECC();
  v123(v48 + v68, v55, v56);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v141 = 0;
  *(&v141 + 1) = 0xE000000000000000;
  v70 = v131;
  sub_23DB6EECC();
  (*(v133 + 32))(v48 + v69, v70, v134);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v141 = 0uLL;
  sub_23DB6EECC();
  v65(v48 + v71, v64, v66);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v141 = nullsub_1;
  *(&v141 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v73 = v135;
  sub_23DB6EECC();
  (*(v136 + 32))(v48 + v72, v73, v137);
  v74 = v124;
  v75 = v127;
  v76 = v130;
  v112(v124, v127, v130);
  v77 = Page.init(id:title:text:subPages:iconName:)(v74, v122, v121, v119, v118, MEMORY[0x277D84F90], 0, 0);
  v78 = v138[1];
  v78(v75, v76);
  v78(v126, v76);
  v78(v125, v76);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v141) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v79 = (type metadata accessor for CommandToPractice(0) - 8);
  v80 = *(*v79 + 72);
  v81 = (*(*v79 + 80) + 32) & ~*(*v79 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_23DB73BA0;
  v83 = v82 + v81;

  v84 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB886F0, &unk_284FE5D30);
  v86 = v85;
  *v83 = 0;
  *(v83 + 8) = 0xE000000000000000;
  *(v83 + 17) = 186;
  *(v83 + 19) = 0;
  v87 = v83 + v79[11];
  sub_23DB6EA7C();
  v88 = v79[12];
  *(v83 + v88) = 1;
  v89 = v79[13];
  *(v83 + v89) = 1;
  v90 = v79[14];
  v91 = type metadata accessor for KeyboardKey(0);
  (*(*(v91 - 8) + 56))(v83 + v90, 1, 1, v91);
  v92 = (v83 + v79[15]);
  *v92 = 0;
  v92[1] = 0;
  v93 = *(v83 + 8);
  *v83 = v84;
  *(v83 + 8) = v86;

  *(v83 + 16) = 51;
  *(v83 + 19) = 0;
  v94 = v92[1];
  *v92 = 0;
  v92[1] = 0;

  *(v83 + v88) = 1;
  *(v83 + v89) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v95 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v96 = *(v77 + v95);
  *(v77 + v95) = v82;

  LOBYTE(v140) = 51;
  v97 = sub_23DA9CB90();
  swift_getKeyPath();
  swift_getKeyPath();
  v140 = v97;

  sub_23DB6EF1C();
  v98 = swift_allocObject();
  swift_weakInit();
  v99 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v100 = v99[1];
  *v99 = sub_23DA9DC40;
  v99[1] = v98;

  v101 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v102 = v101[1];
  *v101 = sub_23DA9E5CC;
  v101[1] = 0;

  v103 = swift_allocObject();
  swift_weakInit();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  *(v105 + 16) = v103;
  *(v105 + 24) = v104;
  v106 = (v77 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v107 = *v106;
  v108 = v106[1];
  *v106 = sub_23DA9E6E4;
  v106[1] = v105;

  sub_23DA18BA0(v107);

  return v77;
}

void sub_23DA95684()
{
  if (qword_27E2FBBD0 == -1)
  {
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      return;
    }
  }

  else
  {
    swift_once();
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      return;
    }
  }

  v0 = objc_opt_self();
  v1 = sub_23DB7087C();
  [v0 triggerEventCommand_];
}

uint64_t sub_23DA9574C()
{
  v1 = v0;
  v2 = type metadata accessor for HeaderWithBody(0);
  v3 = v2 - 8;
  v134 = *(v2 - 8);
  v141 = v134;
  v4 = *(v134 + 8);
  MEMORY[0x28223BE20](v2, v5);
  v139 = (&v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v8);
  v140 = (&v130 - v9);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v130 - v12);
  v14 = sub_23DB6EA8C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88450);
  v21 = v20;
  sub_23DA7194C(0, &v142);
  v22 = v142;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v136 = xmmword_23DB73BA0;
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v22;
  v24 = sub_23DA9B4E0(0xD00000000000001FLL, 0x800000023DB88480, inited);
  v26 = v25;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v27 = type metadata accessor for Page.PracticeVOWithText(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v138 = sub_23DA2D914(v18, v19, v21, v24, v26, MEMORY[0x277D84F90], 0, 0);
  v133 = "tutorial.vo.rotor.practice.text";
  v30 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB884A0);
  v32 = v31;
  v33 = sub_23DA9BC60(0xD000000000000021, 0x800000023DB884D0);
  v35 = v34;
  v36 = v13;
  v37 = v13 + *(v3 + 32);
  sub_23DB6EA7C();
  *v13 = v30;
  v13[1] = v32;
  v13[2] = v33;
  v13[3] = v35;
  v135 = v13;
  v38 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB88500);
  v40 = v39;
  v41 = sub_23DA9BC60(0xD000000000000021, 0x800000023DB88530);
  v43 = v42;
  v44 = v140;
  v45 = v140 + *(v3 + 32);
  sub_23DB6EA7C();
  *v44 = v38;
  v44[1] = v40;
  v44[2] = v41;
  v44[3] = v43;
  v46 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB88560);
  v48 = v47;
  v49 = sub_23DA9BC60(0xD000000000000021, 0x800000023DB88590);
  v51 = v50;
  v52 = v139;
  v53 = v139 + *(v3 + 32);
  sub_23DB6EA7C();
  *v52 = v46;
  v52[1] = v48;
  v52[2] = v49;
  v52[3] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v54 = *(v134 + 9);
  v55 = (*(v141 + 80) + 32) & ~*(v141 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_23DB76A80;
  v57 = v56 + v55;
  v134 = type metadata accessor for HeaderWithBody;
  sub_23DA9DDB8(v36, v57, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v44, v57 + v54, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v52, v57 + 2 * v54, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  v142 = v56;

  sub_23DB6EF1C();
  v58 = sub_23DA9BC60(0xD000000000000023, v133 | 0x8000000000000000);
  v60 = v59;
  swift_getKeyPath();
  swift_getKeyPath();
  v142 = v58;
  v143 = v60;

  sub_23DB6EF1C();
  v61 = sub_23DA9BC60(0xD000000000000024, 0x800000023DB885C0);
  v63 = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  v142 = v61;
  v143 = v63;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v142) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v64 = (type metadata accessor for CommandToPractice(0) - 8);
  v65 = *v64;
  v141 = *(*v64 + 72);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  v133 = v67;
  *(v67 + 16) = xmmword_23DB7A0B0;
  v68 = v67 + v66;
  sub_23DA7194C(0, &v142);
  LOBYTE(v61) = v142;
  v69 = swift_initStackObject();
  *(v69 + 16) = v136;
  *(v69 + 32) = v61;
  v132 = v1;
  v70 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB885F0, v69);
  v131 = v71;
  swift_setDeallocating();
  *v68 = 0;
  *(v68 + 8) = 0xE000000000000000;
  *(v68 + 17) = 186;
  *(v68 + 19) = 0;
  v72 = v68 + v64[11];
  sub_23DB6EA7C();
  v73 = v64[12];
  *(v68 + v73) = 1;
  v74 = v64[13];
  *(v68 + v74) = 1;
  v75 = v64[14];
  *&v136 = type metadata accessor for KeyboardKey(0);
  v76 = *(v136 - 8);
  v77 = *(v76 + 56);
  v78 = v76 + 56;
  v77(v68 + v75, 1, 1, v136);
  v137 = v78;
  v79 = (v68 + v64[15]);
  *v79 = 0;
  v79[1] = 0;
  v80 = *(v68 + 8);
  v81 = v131;
  *v68 = v70;
  *(v68 + 8) = v81;

  *(v68 + 16) = 62;
  *(v68 + 19) = 1;
  v82 = v79[1];
  *v79 = 0;
  v79[1] = 0;

  *(v68 + v73) = 1;
  *(v68 + v74) = 1;
  v83 = v141 + v68;
  v84 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB88620, &unk_284FE5CB8);
  v86 = v85;
  *v83 = 0;
  *(v83 + 1) = 0xE000000000000000;
  *(v83 + 17) = 186;
  v83[19] = 0;
  v87 = &v83[v64[11]];
  sub_23DB6EA7C();
  v88 = v64[12];
  v83[v88] = 1;
  v89 = v64[13];
  v83[v89] = 1;
  v90 = v136;
  v77(&v83[v64[14]], 1, 1, v136);
  v91 = &v83[v64[15]];
  *v91 = 0;
  *(v91 + 1) = 0;
  v92 = *(v83 + 1);
  *v83 = v84;
  *(v83 + 1) = v86;

  v83[16] = 51;
  v83[19] = 0;
  v93 = *(v91 + 1);
  *v91 = 0;
  *(v91 + 1) = 0;

  v83[v88] = 1;
  v83[v89] = 1;
  v131 = 2 * v141;
  v94 = v68 + 2 * v141;
  v95 = v132;
  v130 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88650);
  v97 = v96;
  *v94 = 0;
  *(v94 + 8) = 0xE000000000000000;
  *(v94 + 17) = 186;
  *(v94 + 19) = 0;
  v98 = v94 + v64[11];
  sub_23DB6EA7C();
  v99 = v64[12];
  *(v94 + v99) = 1;
  v100 = v64[13];
  *(v94 + v100) = 1;
  v77(v94 + v64[14], 1, 1, v90);
  v101 = (v94 + v64[15]);
  *v101 = 0;
  v101[1] = 0;
  v102 = *(v94 + 8);
  *v94 = v130;
  *(v94 + 8) = v97;

  *(v94 + 16) = 30;
  *(v94 + 19) = 0;
  v103 = v101[1];
  *v101 = 0;
  v101[1] = 0;

  *(v94 + v99) = 1;
  *(v94 + v100) = 1;
  v104 = v141 + v131 + v68;
  v105 = v95;
  v106 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB88680, &unk_284FE5CE0);
  v108 = v107;
  *v104 = 0;
  *(v104 + 1) = 0xE000000000000000;
  *(v104 + 17) = 186;
  v104[19] = 0;
  v109 = &v104[v64[11]];
  sub_23DB6EA7C();
  v110 = v64[12];
  v104[v110] = 1;
  v111 = v64[13];
  v104[v111] = 1;
  v77(&v104[v64[14]], 1, 1, v136);
  v112 = &v104[v64[15]];
  *v112 = 0;
  *(v112 + 1) = 0;
  v113 = *(v104 + 1);
  *v104 = v106;
  *(v104 + 1) = v108;

  v104[16] = 52;
  v104[19] = 0;
  v114 = *(v112 + 1);
  *v112 = 0;
  *(v112 + 1) = 0;

  v104[v110] = 1;
  v104[v111] = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v115 = v138;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v116 = v134;
  sub_23DA9DE28(v139, v134);
  sub_23DA9DE28(v140, v116);
  sub_23DA9DE28(v135, v116);
  v117 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v118 = *(v115 + v117);
  *(v115 + v117) = v133;

  v119 = swift_allocObject();
  swift_weakInit();
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  *(v120 + 24) = v105;
  v121 = v105;
  v122 = (v115 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v123 = *v122;
  v124 = v122[1];
  *v122 = sub_23DA9E6D0;
  v122[1] = v120;
  swift_retain_n();

  sub_23DA18BA0(v123);

  v125 = swift_allocObject();
  swift_weakInit();

  v126 = swift_allocObject();
  *(v126 + 16) = v125;
  *(v126 + 24) = v121;
  v127 = (v115 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v128 = v127[1];
  *v127 = sub_23DA9E6D4;
  v127[1] = v126;

  return v115;
}

uint64_t sub_23DA963A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v60 = (&v49 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v49 - v12);
  if (qword_27E2FBBD0 != -1)
  {
    goto LABEL_23;
  }

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_4;
  }

LABEL_3:
  v14 = objc_opt_self();
  v15 = sub_23DB7087C();
  [v14 triggerEventCommand_];

LABEL_4:
  while (1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v17 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v18 = result;
    swift_beginAccess();
    v58 = v17;
    v19 = *(v18 + v17);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();

    v56 = v21;
    v57 = KeyPath;
    v55 = sub_23DB6EEFC();
    v53 = v22;
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v59 = v18;
    v54 = v23;
    v52 = v24;
    v51 = sub_23DB6EEFC();
    v50 = v25;

    v26 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_23DAC8B24(v19);
    }

    v27 = 0;
    v28 = (v1 + 56);
    v29 = v19[2];
    v1 += 48;
    if (!v29)
    {
LABEL_8:
      v30 = 1;
      v27 = v29;
      goto LABEL_12;
    }

    while ((v27 & 0x8000000000000000) == 0)
    {
      if (v27 >= v19[2])
      {
        goto LABEL_22;
      }

      v31 = *(type metadata accessor for CommandToPractice(0) - 8);
      v61 = v27 + 1;
      v32 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27;
      v33 = *(v0 + 48);
      v34 = v1;
      v35 = v13;
      v36 = v28;
      v37 = v0;
      v38 = v29;
      v39 = v26;
      v40 = v9;
      v41 = v19;
      v42 = v60;
      *v60 = v27;
      sub_23DA9DDB8(v32, v42 + v33, type metadata accessor for CommandToPractice);
      v43 = v42;
      v19 = v41;
      v9 = v40;
      v26 = v39;
      v29 = v38;
      v0 = v37;
      v28 = v36;
      v13 = v35;
      v1 = v34;
      sub_23DA17A54(v43, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v30 = 0;
      v27 = v61;
LABEL_12:
      (*v28)(v9, v30, 1, v0);
      sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {

        *v50 = 0;
        *v53 = 0;
        v51(v62, 0);

        v55(v63, 0);

        type metadata accessor for Page.Practice(0);
        sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
        v47 = v59;
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v48 = *(v47 + v58);
        *(v47 + v58) = v26;
      }

      v44 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        break;
      }

      if (v44 >= *(v26 + 16))
      {
        goto LABEL_20;
      }

      v45 = *(type metadata accessor for CommandToPractice(0) - 8);
      v46 = v26 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44;
      *(v46 + 18) = 0;
      *(v46 + 19) = v44 == 0;
      sub_23DA9DE28(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
      if (v27 == v29)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_23DA969C8()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v157 = v1;
  v158 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v162 = (&v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v161 = (&v127 - v8);
  MEMORY[0x28223BE20](v9, v10);
  v160 = (&v127 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v155 = *(v12 - 8);
  v156 = v12;
  v13 = *(v155 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v154 = &v127 - v15;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v151 = *(v153 - 8);
  v16 = *(v151 + 8);
  MEMORY[0x28223BE20](v153, v17);
  v150 = &v127 - v18;
  *&v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v142 = *(v145 - 8);
  v19 = *(v142 + 64);
  MEMORY[0x28223BE20](v145, v20);
  v141 = &v127 - v21;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v135 = *(v136 - 8);
  v22 = *(v135 + 64);
  MEMORY[0x28223BE20](v136, v23);
  v134 = &v127 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v130 = *(v131 - 8);
  v25 = *(v130 + 64);
  MEMORY[0x28223BE20](v131, v26);
  v129 = &v127 - v27;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v28 = *(v163 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v163, v30);
  v32 = &v127 - v31;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v33 = *(v152 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v152, v35);
  v37 = &v127 - v36;
  v38 = sub_23DB6EA8C();
  v164 = *(v38 - 8);
  v39 = v164[8];
  MEMORY[0x28223BE20](v38, v40);
  v146 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v127 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v127 - v48;
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v127 - v52;
  v140 = sub_23DA9BC60(0xD000000000000019, 0x800000023DB88350);
  v139 = v54;
  v159 = v0;
  v138 = sub_23DA9BC60(0xD000000000000018, 0x800000023DB88370);
  v137 = v55;
  sub_23DB6EA7C();
  v56 = type metadata accessor for Page.PracticeVOExplanation(0);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  *&v165 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  (*(v33 + 32))(v59 + v60, v37, v152);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v62 = *(v28 + 32);
  v144 = v32;
  v147 = v28 + 32;
  v128 = v62;
  v62(v59 + v61, v32, v163);
  v63 = v164 + 2;
  v64 = v164[2];
  v143 = v53;
  v64(v49, v53, v38);
  v148 = v49;
  v149 = v45;
  v152 = v38;
  v133 = v63;
  v132 = v64;
  v64(v45, v49, v38);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v165) = 0;
  v66 = v129;
  sub_23DB6EECC();
  v67 = *(v130 + 32);
  v68 = v66;
  v69 = v66;
  v70 = v131;
  v67(v59 + v65, v69);
  v71 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v72 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v72 = MEMORY[0x277D84FA0];
  }

  *(v59 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v72;
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v165 = v71;
  v74 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v75 = v134;
  sub_23DB6EECC();
  (*(v135 + 32))(v59 + v73, v75, v136);
  *(v59 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v74;
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v165 = 0;
  v77 = v141;
  sub_23DB6EECC();
  (*(v142 + 32))(v59 + v76, v77, v145);
  v78 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v165) = 0;
  sub_23DB6EECC();
  (v67)(v59 + v78, v68, v70);
  v79 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v145 = xmmword_23DB74320;
  v165 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v80 = v150;
  sub_23DB6EECC();
  v81 = *(v151 + 4);
  v151 = v67;
  v82 = v153;
  v81(v59 + v79, v80, v153);
  v83 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v165 = v145;
  sub_23DB6EECC();
  v81(v59 + v83, v80, v82);
  v84 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v165) = 0;
  sub_23DB6EECC();
  v151(v59 + v84, v68, v70);
  v85 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  v86 = v144;
  sub_23DB6EECC();
  v128(v59 + v85, v86, v163);
  v87 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v165 = 0uLL;
  sub_23DB6EECC();
  v81(v59 + v87, v80, v82);
  v88 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v165 = nullsub_1;
  *(&v165 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v89 = v154;
  sub_23DB6EECC();
  (*(v155 + 32))(v59 + v88, v89, v156);
  v90 = v146;
  v91 = v149;
  v92 = v152;
  v132(v146, v149, v152);
  v93 = Page.init(id:title:text:subPages:iconName:)(v90, v140, v139, v138, v137, MEMORY[0x277D84F90], 0, 0);
  v94 = v164[1];
  v94(v143, v92);
  v94(v91, v92);
  v94(v148, v92);
  v95 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88390);
  v97 = v96;
  v98 = sub_23DA9B4E0(0xD00000000000001ALL, 0x800000023DB883B0, &unk_284FE5C68);
  v100 = v99;
  v101 = v157;
  v102 = v160;
  v103 = v160 + *(v157 + 24);
  sub_23DB6EA7C();
  *v102 = v95;
  v102[1] = v97;
  v102[2] = v98;
  v102[3] = v100;
  v104 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB883D0);
  v106 = v105;
  v107 = sub_23DA9BC60(0xD00000000000001ALL, 0x800000023DB883F0);
  v109 = v108;
  v110 = v161;
  v111 = v161 + *(v101 + 24);
  sub_23DB6EA7C();
  *v110 = v104;
  v110[1] = v106;
  v110[2] = v107;
  v110[3] = v109;
  v112 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88410);
  v114 = v113;
  v115 = sub_23DA9B4E0(0xD00000000000001ALL, 0x800000023DB88430, &unk_284FE5C90);
  v117 = v116;
  v118 = *(v101 + 24);
  v119 = v162;
  sub_23DB6EA7C();
  *v119 = v112;
  v119[1] = v114;
  v119[2] = v115;
  v119[3] = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v120 = *(v158 + 72);
  v121 = (*(v158 + 80) + 32) & ~*(v158 + 80);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_23DB76A80;
  sub_23DA9DDB8(v102, v122 + v121, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v110, v122 + v121 + v120, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v119, v122 + v121 + 2 * v120, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v165 = v122;

  sub_23DB6EF1C();
  v123 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v125 = v124;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v165 = v123;
  *(&v165 + 1) = v125;

  sub_23DB6EF1C();
  sub_23DA9DE28(v119, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v110, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v102, type metadata accessor for HeaderWithBody);
  return v93;
}

uint64_t sub_23DA977AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v99 = *(v0 - 8);
  v100 = v0;
  v1 = *(v99 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v98 = &v74 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v93 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v83 = &v74 - v11;
  *&v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v82, v13);
  v78 = &v74 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v15 = *(v77 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v77, v17);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v74 - v24;
  v26 = sub_23DB6EA8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v88 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v74 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v74 - v37;
  v39 = sub_23DA9BC60(0xD000000000000028, 0x800000023DB882F0);
  v86 = v40;
  v87 = v39;
  v41 = sub_23DA9BC60(0xD000000000000027, 0x800000023DB88320);
  v84 = v42;
  v85 = v41;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.CollectionFinished(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v90 = v34;
  v91 = v27;
  v47 = *(v27 + 16);
  v89 = v38;
  v92 = v26;
  v80 = v27 + 16;
  v79 = v47;
  v47(v34, v38, v26);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v49 = v20;
  v76 = *(v21 + 32);
  v76(v46 + v48, v25, v20);
  v50 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v51 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v51 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v51;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v101 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v15 + 32))(v46 + v52, v19, v77);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v101 = 0;
  v54 = v78;
  sub_23DB6EECC();
  (*(v81 + 32))(v46 + v53, v54, v82);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v75 = v49;
  v56 = v76;
  v76(v46 + v55, v25, v49);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v82 = xmmword_23DB74320;
  v101 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v58 = v83;
  sub_23DB6EECC();
  v59 = v95;
  v60 = *(v94 + 32);
  v60(v46 + v57, v58, v95);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v101 = v82;
  sub_23DB6EECC();
  v60(v46 + v61, v58, v59);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v56(v46 + v62, v25, v75);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  v64 = v93;
  sub_23DB6EECC();
  (*(v96 + 32))(v46 + v63, v64, v97);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v101 = 0uLL;
  sub_23DB6EECC();
  v60(v46 + v65, v58, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v101 = nullsub_1;
  *(&v101 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v67 = v98;
  sub_23DB6EECC();
  (*(v99 + 32))(v46 + v66, v67, v100);
  v68 = v88;
  v69 = v90;
  v70 = v92;
  v79(v88, v90, v92);
  v71 = Page.init(id:title:text:subPages:iconName:)(v68, v87, v86, v85, v84, MEMORY[0x277D84F90], 0, 0);
  v72 = *(v91 + 8);
  v72(v69, v70);
  v72(v89, v70);
  return v71;
}

uint64_t sub_23DA98028()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v152 = v1;
  v153 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v157 = (&v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v156 = (&v125 - v8);
  MEMORY[0x28223BE20](v9, v10);
  v155 = (&v125 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v150 = *(v12 - 8);
  v151 = v12;
  v13 = *(v150 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v149 = &v125 - v15;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v147 = *(v148 - 8);
  v16 = *(v147 + 64);
  MEMORY[0x28223BE20](v148, v17);
  v145 = &v125 - v18;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v139 = *(v142 - 1);
  v19 = *(v139 + 64);
  MEMORY[0x28223BE20](v142, v20);
  v138 = &v125 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v134 = *(v135 - 8);
  v22 = *(v134 + 64);
  MEMORY[0x28223BE20](v135, v23);
  v133 = &v125 - v24;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v129 = *(v130 - 8);
  v25 = *(v129 + 64);
  MEMORY[0x28223BE20](v130, v26);
  v126 = &v125 - v27;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v161 = *(v158 - 8);
  v28 = *(v161 + 64);
  MEMORY[0x28223BE20](v158, v29);
  v31 = &v125 - v30;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v144 = *(v146 - 8);
  v32 = *(v144 + 8);
  MEMORY[0x28223BE20](v146, v33);
  v35 = &v125 - v34;
  v36 = sub_23DB6EA8C();
  v160 = *(v36 - 8);
  v37 = v160[8];
  MEMORY[0x28223BE20](v36, v38);
  v143 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v159 = &v125 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v125 - v45;
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v125 - v49;
  v137 = sub_23DA9BC60(0xD00000000000001BLL, 0x800000023DB881F0);
  v136 = v51;
  sub_23DA7194C(0, &v162);
  v52 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v52;
  v154 = v0;
  v132 = sub_23DA9B4E0(0xD00000000000001ALL, 0x800000023DB88210, inited);
  v131 = v54;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v55 = type metadata accessor for Page.PracticeVOExplanation(0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v60 = MEMORY[0x277D84F90];
  *&v162 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  (*(v144 + 4))(v58 + v59, v35, v146);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v162 = 0;
  *(&v162 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v62 = *(v161 + 32);
  v141 = v31;
  v161 += 32;
  v125 = v62;
  v62(v58 + v61, v31, v158);
  v63 = v160 + 2;
  v64 = v160[2];
  v140 = v50;
  v64(v46, v50, v36);
  v144 = v46;
  v146 = v36;
  v128 = v63;
  v127 = v64;
  v64(v159, v46, v36);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v162) = 0;
  v66 = v126;
  sub_23DB6EECC();
  v67 = *(v129 + 32);
  v68 = v66;
  v69 = v66;
  v70 = v130;
  v67(v58 + v65, v69);
  if (v60 >> 62 && sub_23DB70C3C())
  {
    v71 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v71 = MEMORY[0x277D84FA0];
  }

  *(v58 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v71;
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v162 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v73 = v133;
  sub_23DB6EECC();
  (*(v134 + 32))(v58 + v72, v73, v135);
  *(v58 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v60;
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v162 = 0;
  v75 = v138;
  sub_23DB6EECC();
  (*(v139 + 32))(v58 + v74, v75, v142);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v162) = 0;
  sub_23DB6EECC();
  (v67)(v58 + v76, v68, v70);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v139 = xmmword_23DB74320;
  v162 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v142 = v67;
  v78 = v145;
  sub_23DB6EECC();
  v79 = *(v147 + 32);
  v80 = v148;
  v79(v58 + v77, v78, v148);
  v81 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v162 = v139;
  sub_23DB6EECC();
  v79(v58 + v81, v78, v80);
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v162) = 0;
  sub_23DB6EECC();
  v142(v58 + v82, v68, v70);
  v83 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v162 = 0;
  *(&v162 + 1) = 0xE000000000000000;
  v84 = v141;
  sub_23DB6EECC();
  v125(v58 + v83, v84, v158);
  v85 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v162 = 0uLL;
  sub_23DB6EECC();
  v79(v58 + v85, v78, v80);
  v86 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v162 = nullsub_1;
  *(&v162 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v87 = v149;
  sub_23DB6EECC();
  (*(v150 + 32))(v58 + v86, v87, v151);
  v88 = v143;
  v89 = v159;
  v90 = v146;
  v127(v143, v159, v146);
  v91 = Page.init(id:title:text:subPages:iconName:)(v88, v137, v136, v132, v131, MEMORY[0x277D84F90], 0, 0);
  v92 = v160[1];
  v92(v140, v90);
  v92(v89, v90);
  v92(v144, v90);
  v93 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB88230);
  v95 = v94;
  v96 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88250);
  v98 = v97;
  v99 = v152;
  v100 = v155;
  v101 = v155 + *(v152 + 24);
  sub_23DB6EA7C();
  *v100 = v93;
  v100[1] = v95;
  v100[2] = v96;
  v100[3] = v98;
  v102 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB88270);
  v104 = v103;
  v105 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88290);
  v107 = v106;
  v108 = v156;
  v109 = v156 + *(v99 + 24);
  sub_23DB6EA7C();
  *v108 = v102;
  v108[1] = v104;
  v108[2] = v105;
  v108[3] = v107;
  v110 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB882B0);
  v112 = v111;
  v113 = sub_23DA9B4E0(0xD00000000000001CLL, 0x800000023DB882D0, &unk_284FE5B00);
  v115 = v114;
  v116 = *(v99 + 24);
  v117 = v157;
  sub_23DB6EA7C();
  *v117 = v110;
  v117[1] = v112;
  v117[2] = v113;
  v117[3] = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v118 = *(v153 + 72);
  v119 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_23DB76A80;
  sub_23DA9DDB8(v100, v120 + v119, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v108, v120 + v119 + v118, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v117, v120 + v119 + 2 * v118, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v162 = v120;

  sub_23DB6EF1C();
  v121 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v123 = v122;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v162 = v121;
  *(&v162 + 1) = v123;

  sub_23DB6EF1C();
  sub_23DA9DE28(v117, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v108, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v100, type metadata accessor for HeaderWithBody);
  return v91;
}

uint64_t sub_23DA98E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v150 = *(v1 - 8);
  v151 = v1;
  v2 = *(v150 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v149 = &v125 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v147 = *(v5 - 8);
  v148 = v5;
  v6 = *(v147 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v145 = &v125 - v8;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v142 = *(v146 - 8);
  v9 = *(v142 + 64);
  MEMORY[0x28223BE20](v146, v10);
  v140 = &v125 - v11;
  *&v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v132 = *(v133 - 8);
  v12 = *(v132 + 64);
  MEMORY[0x28223BE20](v133, v13);
  v131 = &v125 - v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v127 = *(v128 - 8);
  v15 = *(v127 + 64);
  MEMORY[0x28223BE20](v128, v16);
  v126 = &v125 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v125 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v138 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v154 = &v125 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v125 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v125 - v38;
  v137 = sub_23DA9BC60(0xD00000000000001DLL, 0x800000023DB88050);
  v136 = v40;
  v152 = v0;
  v135 = sub_23DA9B4E0(0xD00000000000001CLL, 0x800000023DB88070, &unk_284FE5C18);
  v134 = v41;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v47 = *(v19 + 32);
  v47(v45 + v46, v23, v18);
  v143 = v25;
  v48 = v25 + 16;
  v49 = *(v25 + 16);
  v139 = v39;
  v49(v35, v39, v24);
  v141 = v35;
  v144 = v24;
  v130 = v48;
  v129 = v49;
  v49(v154, v35, v24);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v153 = v18;
  v47(v45 + v50, v23, v18);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v155 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v126;
  sub_23DB6EECC();
  (*(v127 + 32))(v45 + v53, v54, v128);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v155 = 0;
  v56 = v131;
  sub_23DB6EECC();
  (*(v132 + 32))(v45 + v55, v56, v133);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v47(v45 + v57, v23, v153);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v133 = xmmword_23DB74320;
  v155 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v140;
  sub_23DB6EECC();
  v60 = *(v142 + 32);
  v61 = v146;
  v60(v45 + v58, v59, v146);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v155 = v133;
  sub_23DB6EECC();
  v60(v45 + v62, v59, v61);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v47(v45 + v63, v23, v153);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v155 = 0;
  *(&v155 + 1) = 0xE000000000000000;
  v65 = v145;
  sub_23DB6EECC();
  (*(v147 + 32))(v45 + v64, v65, v148);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v155 = 0uLL;
  sub_23DB6EECC();
  v60(v45 + v66, v59, v61);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v155 = nullsub_1;
  *(&v155 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v149;
  sub_23DB6EECC();
  (*(v150 + 32))(v45 + v67, v68, v151);
  v69 = v138;
  v70 = v154;
  v71 = v144;
  v129(v138, v154, v144);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v137, v136, v135, v134, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v143 + 8);
  v73(v70, v71);
  v73(v141, v71);
  v73(v139, v71);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v155) = 1;
  v150 = v72;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v74 = (type metadata accessor for CommandToPractice(0) - 8);
  v75 = *(*v74 + 72);
  v76 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
  v151 = 2 * v75;
  v77 = swift_allocObject();
  v153 = v77;
  *(v77 + 16) = xmmword_23DB76A80;
  v78 = v77 + v76;
  v79 = v152;
  v80 = sub_23DA9B4E0(0xD000000000000022, 0x800000023DB88090, &unk_284FE5C40);
  v147 = v81;
  v148 = v80;
  *v78 = 0;
  *(v78 + 8) = 0xE000000000000000;
  *(v78 + 17) = 186;
  *(v78 + 19) = 0;
  v82 = v78 + v74[11];
  sub_23DB6EA7C();
  v83 = v74[12];
  *(v78 + v83) = 1;
  v84 = v74[13];
  *(v78 + v84) = 1;
  v85 = v74[14];
  v86 = type metadata accessor for KeyboardKey(0);
  v154 = *(*(v86 - 8) + 56);
  v149 = v86;
  (v154)(v78 + v85, 1, 1, v86);
  v87 = (v78 + v74[15]);
  *v87 = 0;
  v87[1] = 0;
  v88 = *(v78 + 8);
  v89 = v147;
  *v78 = v148;
  *(v78 + 8) = v89;

  *(v78 + 16) = 58;
  *(v78 + 19) = 1;
  v90 = v87[1];
  *v87 = 0;
  v87[1] = 0;

  *(v78 + v83) = 1;
  *(v78 + v84) = 1;
  v91 = v78 + v75;
  v92 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB880C0);
  v94 = v93;
  *v91 = 0;
  *(v91 + 8) = 0xE000000000000000;
  *(v91 + 17) = 186;
  *(v91 + 19) = 0;
  v95 = v91 + v74[11];
  sub_23DB6EA7C();
  v96 = v74[12];
  *(v91 + v96) = 1;
  v97 = v74[13];
  *(v91 + v97) = 1;
  (v154)(v91 + v74[14], 1, 1, v86);
  v98 = (v91 + v74[15]);
  *v98 = 0;
  v98[1] = 0;
  v99 = *(v91 + 8);
  *v91 = v92;
  *(v91 + 8) = v94;

  *(v91 + 16) = 30;
  *(v91 + 19) = 0;
  v100 = v98[1];
  *v98 = 0;
  v98[1] = 0;

  *(v91 + v96) = 1;
  *(v91 + v97) = 1;
  v101 = v78 + v151;
  v102 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB880F0);
  v104 = v103;
  *v101 = 0;
  *(v101 + 8) = 0xE000000000000000;
  *(v101 + 17) = 186;
  *(v101 + 19) = 0;
  v105 = v101 + v74[11];
  sub_23DB6EA7C();
  v106 = v74[12];
  *(v101 + v106) = 1;
  v107 = v74[13];
  *(v101 + v107) = 1;
  (v154)(v101 + v74[14], 1, 1, v149);
  v108 = (v101 + v74[15]);
  *v108 = 0;
  v108[1] = 0;
  v109 = *(v101 + 8);
  *v101 = v102;
  *(v101 + 8) = v104;

  *(v101 + 16) = 32;
  *(v101 + 19) = 0;
  v110 = v108[1];
  *v108 = 0;
  v108[1] = 0;

  *(v101 + v106) = 1;
  *(v101 + v107) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v111 = v150;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v112 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v113 = *(v111 + v112);
  *(v111 + v112) = v153;

  v114 = swift_allocObject();
  swift_weakInit();
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v79;
  v116 = v79;
  v117 = (v111 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v118 = *v117;
  v119 = v117[1];
  *v117 = sub_23DA9E6D0;
  v117[1] = v115;
  swift_retain_n();

  sub_23DA18BA0(v118);

  v120 = swift_allocObject();
  swift_weakInit();

  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v116;
  v122 = (v111 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v123 = v122[1];
  *v122 = sub_23DA9E6D4;
  v122[1] = v121;

  return v111;
}

uint64_t sub_23DA99D58()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v142 = v1;
  v143 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v146 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v145 = (&v114 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v140 = *(v9 - 8);
  v141 = v9;
  v10 = *(v140 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v139 = &v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v137 = *(v13 - 8);
  v138 = v13;
  v14 = *(v137 + 8);
  MEMORY[0x28223BE20](v13, v15);
  v135 = &v114 - v16;
  *&v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v129 = *(v132 - 8);
  v17 = *(v129 + 64);
  MEMORY[0x28223BE20](v132, v18);
  v128 = &v114 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v124 = *(v125 - 8);
  v20 = *(v124 + 64);
  MEMORY[0x28223BE20](v125, v21);
  v123 = &v114 - v22;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v119 = *(v120 - 8);
  v23 = *(v119 + 64);
  MEMORY[0x28223BE20](v120, v24);
  v116 = &v114 - v25;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v150 = *(v147 - 8);
  v26 = *(v150 + 64);
  MEMORY[0x28223BE20](v147, v27);
  v29 = &v114 - v28;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v134 = *(v136 - 8);
  v30 = *(v134 + 8);
  MEMORY[0x28223BE20](v136, v31);
  v33 = &v114 - v32;
  v34 = sub_23DB6EA8C();
  v149 = *(v34 - 8);
  v35 = v149[8];
  MEMORY[0x28223BE20](v34, v36);
  v133 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v148 = &v114 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v114 - v43;
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v114 - v47;
  v127 = sub_23DA9BC60(0xD00000000000001FLL, 0x800000023DB87F20);
  v126 = v49;
  sub_23DA7194C(0, &v151);
  v50 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v50;
  v144 = v0;
  v122 = sub_23DA9B4E0(0xD00000000000001ELL, 0x800000023DB87F40, inited);
  v121 = v52;
  swift_setDeallocating();
  sub_23DB6EA7C();
  v53 = type metadata accessor for Page.PracticeVOExplanation(0);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  v56 = swift_allocObject();
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v58 = MEMORY[0x277D84F90];
  *&v151 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  (*(v134 + 4))(v56 + v57, v33, v136);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v151 = 0;
  *(&v151 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v60 = *(v150 + 32);
  v131 = v29;
  v150 += 32;
  v115 = v60;
  v60(v56 + v59, v29, v147);
  v61 = v149 + 2;
  v62 = v149[2];
  v130 = v48;
  v62(v44, v48, v34);
  v134 = v44;
  v136 = v34;
  v118 = v61;
  v117 = v62;
  v62(v148, v44, v34);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v151) = 0;
  v64 = v116;
  sub_23DB6EECC();
  v65 = *(v119 + 32);
  v66 = v64;
  v67 = v120;
  v65(v56 + v63, v64);
  if (v58 >> 62 && sub_23DB70C3C())
  {
    v68 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v68 = MEMORY[0x277D84FA0];
  }

  *(v56 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v68;
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v151 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v70 = v123;
  sub_23DB6EECC();
  (*(v124 + 32))(v56 + v69, v70, v125);
  *(v56 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v58;
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v151 = 0;
  v72 = v128;
  sub_23DB6EECC();
  (*(v129 + 32))(v56 + v71, v72, v132);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v151) = 0;
  sub_23DB6EECC();
  (v65)(v56 + v73, v66, v67);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v132 = xmmword_23DB74320;
  v151 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v75 = v135;
  sub_23DB6EECC();
  v76 = *(v137 + 4);
  v137 = v65;
  v77 = v138;
  v76(v56 + v74, v75, v138);
  v78 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v151 = v132;
  sub_23DB6EECC();
  v76(v56 + v78, v75, v77);
  v79 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v151) = 0;
  sub_23DB6EECC();
  v137(v56 + v79, v66, v67);
  v80 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v151 = 0;
  *(&v151 + 1) = 0xE000000000000000;
  v81 = v131;
  sub_23DB6EECC();
  v115(v56 + v80, v81, v147);
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v151 = 0uLL;
  sub_23DB6EECC();
  v76(v56 + v82, v75, v77);
  v83 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v151 = nullsub_1;
  *(&v151 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v84 = v139;
  sub_23DB6EECC();
  (*(v140 + 32))(v56 + v83, v84, v141);
  v85 = v133;
  v86 = v148;
  v87 = v136;
  v117(v133, v148, v136);
  v88 = Page.init(id:title:text:subPages:iconName:)(v85, v127, v126, v122, v121, MEMORY[0x277D84F90], 0, 0);
  v89 = v149[1];
  v89(v130, v87);
  v89(v86, v87);
  v89(v134, v87);
  v90 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB87F60);
  v92 = v91;
  v93 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB87F90);
  v95 = v94;
  v96 = v142;
  v97 = v145;
  v98 = v145 + *(v142 + 24);
  sub_23DB6EA7C();
  *v97 = v90;
  v97[1] = v92;
  v97[2] = v93;
  v97[3] = v95;
  v99 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB87FC0);
  v101 = v100;
  v102 = sub_23DA9B4E0(0xD000000000000020, 0x800000023DB87FF0, &unk_284FE5AD8);
  v104 = v103;
  v105 = *(v96 + 24);
  v106 = v146;
  sub_23DB6EA7C();
  *v106 = v99;
  v106[1] = v101;
  v106[2] = v102;
  v106[3] = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v107 = *(v143 + 72);
  v108 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_23DB78D60;
  sub_23DA9DDB8(v97, v109 + v108, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v106, v109 + v108 + v107, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v151 = v109;

  sub_23DB6EF1C();
  v110 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v112 = v111;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v151 = v110;
  *(&v151 + 1) = v112;

  sub_23DB6EF1C();
  sub_23DA9DE28(v106, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v97, type metadata accessor for HeaderWithBody);
  return v88;
}

uint64_t sub_23DA9AAE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v99 = *(v0 - 8);
  v100 = v0;
  v1 = *(v99 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v98 = &v74 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v93 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v83 = &v74 - v11;
  *&v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v82, v13);
  v78 = &v74 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v15 = *(v77 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v77, v17);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v74 - v24;
  v26 = sub_23DB6EA8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v88 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v74 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v74 - v37;
  v39 = sub_23DA9BC60(0xD00000000000002ELL, 0x800000023DB87EC0);
  v86 = v40;
  v87 = v39;
  v41 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB87EF0, &unk_284FE5AB0);
  v84 = v42;
  v85 = v41;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.CollectionFinished(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v90 = v34;
  v91 = v27;
  v47 = *(v27 + 16);
  v89 = v38;
  v92 = v26;
  v80 = v27 + 16;
  v79 = v47;
  v47(v34, v38, v26);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v49 = v20;
  v76 = *(v21 + 32);
  v76(v46 + v48, v25, v20);
  v50 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v51 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v51 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v51;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v101 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v15 + 32))(v46 + v52, v19, v77);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v101 = 0;
  v54 = v78;
  sub_23DB6EECC();
  (*(v81 + 32))(v46 + v53, v54, v82);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v75 = v49;
  v56 = v76;
  v76(v46 + v55, v25, v49);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v82 = xmmword_23DB74320;
  v101 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v58 = v83;
  sub_23DB6EECC();
  v59 = v95;
  v60 = *(v94 + 32);
  v60(v46 + v57, v58, v95);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v101 = v82;
  sub_23DB6EECC();
  v60(v46 + v61, v58, v59);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v56(v46 + v62, v25, v75);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  v64 = v93;
  sub_23DB6EECC();
  (*(v96 + 32))(v46 + v63, v64, v97);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v101 = 0uLL;
  sub_23DB6EECC();
  v60(v46 + v65, v58, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v101 = nullsub_1;
  *(&v101 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v67 = v98;
  sub_23DB6EECC();
  (*(v99 + 32))(v46 + v66, v67, v100);
  v68 = v88;
  v69 = v90;
  v70 = v92;
  v79(v88, v90, v92);
  v71 = Page.init(id:title:text:subPages:iconName:)(v68, v87, v86, v85, v84, MEMORY[0x277D84F90], 0, 0);
  v72 = *(v91 + 8);
  v72(v69, v70);
  v72(v89, v70);
  return v71;
}

uint64_t sub_23DA9B36C(uint64_t result)
{
  if (result)
  {
    if (!*MEMORY[0x277CE6CE8])
    {
      __break(1u);
      return result;
    }

    v1 = *MEMORY[0x277D76438];
    v2 = *MEMORY[0x277CE6CE8];
    UIAccessibilityPostNotification(v1, v2);
  }

  return sub_23DA9CBE4();
}

uint64_t sub_23DA9B3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6EB3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  MEMORY[0x23EEF4EF0](a1, a2);
  sub_23DB6EB2C();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_23DA9B4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v17 = a2;
    v18 = a1;
    v22 = MEMORY[0x277D84F90];
    sub_23DA9C6BC(0, v3, 0);
    v5 = v22;
    v6 = (a3 + 32);
    v7 = MEMORY[0x277D837D0];
    do
    {
      v8 = *v6++;
      LOBYTE(v19) = v8;
      v9 = sub_23DA9E6F0();
      v11 = v10;
      v22 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23DA9C6BC((v12 > 1), v13 + 1, 1);
        v5 = v22;
      }

      v20 = v7;
      v21 = sub_23DA40598();
      *&v19 = v9;
      *(&v19 + 1) = v11;
      *(v5 + 16) = v13 + 1;
      sub_23DA9CB50(&v19, v5 + 40 * v13 + 32);
      --v3;
    }

    while (v3);
    a2 = v17;
    a1 = v18;
  }

  sub_23DA9BC60(a1, a2);
  v14 = [objc_opt_self() mainBundle];
  sub_23DB6E9FC();

  v15 = sub_23DB708CC();

  return v15;
}

uint64_t sub_23DA9B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v61 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE180, &qword_23DB7A2D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v63 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE188, &unk_23DB7A2D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v64 = &v54 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC220, &qword_23DB74260);
  v59 = *(v62 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v62 - 8, v17);
  v57 = &v54 - v18;
  v19 = sub_23DB6E9BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v54 - v27;
  v29 = sub_23DB6EA1C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v60 = (&v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = a3;
  v34 = *(a3 + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v54 = a1;
    v55 = a2;
    v56 = v28;
    v58 = v4;
    v65 = MEMORY[0x277D84F90];
    sub_23DA9C6DC(0, v34, 0);
    v35 = v65;
    v36 = (v33 + 32);
    do
    {
      v37 = *v36++;
      v67 = v37;
      sub_23DA9E6FC();
      v65 = v35;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_23DA9C6DC(v38 > 1, v39 + 1, 1);
        v35 = v65;
      }

      *(v35 + 16) = v39 + 1;
      (*(v20 + 32))(v35 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v39, v24, v19);
      --v34;
    }

    while (v34);
    v40 = v61;
    a2 = v55;
    v28 = v56;
    a1 = v54;
  }

  else
  {
    v40 = v61;
  }

  sub_23DA9BC60(a1, a2);
  sub_23DB6EA0C();
  sub_23DB6E9CC();
  v41 = *(v35 + 16);
  if (v41)
  {
    v43 = *(v20 + 16);
    v42 = v20 + 16;
    v44 = v35 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v60 = (v59 + 48);
    v61 = v43;
    v45 = *(v42 + 56);
    v58 = (v42 - 8);
    v59 = v45;
    v55 = v42;
    v56 = v35;
    v43(v28, v44, v19);
    while (1)
    {
      v65 = 16421;
      v66 = 0xE200000000000000;
      v46 = sub_23DB6EB1C();
      v47 = v63;
      (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
      sub_23DA9DAAC(&qword_27E2FC240, MEMORY[0x277CC8C40]);
      sub_23DA16E70();
      sub_23DB6EA4C();
      v48 = v64;
      sub_23DA17988(v47, &qword_27E2FE180, &qword_23DB7A2D0);
      if ((*v60)(v48, 1, v62) == 1)
      {
        (*v58)(v28, v19);
        sub_23DA17988(v48, &qword_27E2FE188, &unk_23DB7A2D8);
      }

      else
      {
        v49 = v28;
        v50 = v40;
        v51 = v57;
        sub_23DA17A54(v48, v57, &qword_27E2FC220, &qword_23DB74260);
        sub_23DA17B80(&qword_27E2FC250, &qword_27E2FC220, &qword_23DB74260);
        sub_23DB6E95C();
        v52 = v51;
        v40 = v50;
        v28 = v49;
        sub_23DA17988(v52, &qword_27E2FC220, &qword_23DB74260);
        (*v58)(v49, v19);
      }

      v44 += v59;
      if (!--v41)
      {
        break;
      }

      v61(v28, v44, v19);
    }
  }
}

uint64_t sub_23DA9BC60(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8 = sub_23DB7087C();

  v9 = [objc_opt_self() bundleWithIdentifier_];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_23DB7087C();
  v11 = sub_23DB7087C();
  v12 = sub_23DB7087C();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23DB708BC();
  v16 = v15;

  v17 = v14 == a1 && v16 == a2;
  if (v17 || (sub_23DB70DBC()) && ((v18 = objc_opt_self(), v19 = [v18 currentDevice], v20 = objc_msgSend(v19, sel_userInterfaceIdiom), v19, !v20) || (v21 = objc_msgSend(v18, sel_currentDevice), v22 = objc_msgSend(v21, sel_userInterfaceIdiom), v21, v22 == 1)))
  {

    MEMORY[0x23EEF6D00](0x656E6F68702ELL, 0xE600000000000000);
    v23 = sub_23DB7087C();

    v24 = sub_23DB7087C();
    v25 = sub_23DB7087C();
    v26 = [v9 localizedStringForKey:v23 value:v24 table:v25];

    v14 = sub_23DB708BC();
  }

  else
  {
  }

  return v14;
}

uint64_t sub_23DA9BF1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (v4)
  {
    if (v4 >> 62)
    {
      result = sub_23DB70C3C();
      v1 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v1)
      {
LABEL_4:
        if (v1 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v1; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            MEMORY[0x23EEF70C0](i);
          }

          else
          {
            v3 = *(v4 + 8 * i + 32);
          }

          swift_getKeyPath();
          swift_getKeyPath();

          sub_23DB6EF1C();
          type metadata accessor for Page.Practice(0);
          if (swift_dynamicCastClass())
          {

            sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB87EA0);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_23DB6EF1C();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23DA9C114()
{
  v1 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_subscribers);

  v2 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_computedKeyboardShortcutSpelledOutForVOCommand);
}

uint64_t AXOnboardingModelVoiceOverMac.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_subscribers);

  v5 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_computedKeyboardShortcutSpelledOutForVOCommand);

  return v0;
}

uint64_t AXOnboardingModelVoiceOverMac.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_subscribers);

  v5 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_computedKeyboardShortcutSpelledOutForVOCommand);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA9C318()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_23DA9C478@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23DA9C4F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

void *sub_23DA9C6BC(void *a1, int64_t a2, char a3)
{
  result = sub_23DA9C6FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23DA9C6DC(size_t a1, int64_t a2, char a3)
{
  result = sub_23DA9C844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23DA9C6FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE198, &qword_23DB7A2F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23DA9C844(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE190, &unk_23DB7A2E8);
  v10 = *(sub_23DB6E9BC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23DB6E9BC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for AXOnboardingModelVoiceOverMac()
{
  result = qword_27E2FE170;
  if (!qword_27E2FE170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DA9CB50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23DA9CB90()
{
  sub_23DA40018(&unk_284FE57A8);
  swift_arrayDestroy();

  return MEMORY[0x277D84F90];
}

uint64_t sub_23DA9CBE4()
{
  v0 = sub_23DB6EB3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D0, &unk_23DB7E160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = sub_23DB7087C();
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 10000;
  sub_23DB6BC44(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE1D8, &qword_23DB7A4F0);
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = sub_23DB7087C();
  type metadata accessor for Key(0);
  sub_23DA9DAAC(&qword_27E2FBE30, type metadata accessor for Key);
  v9 = sub_23DB7080C();

  v10 = [v7 initWithString:v8 attributes:v9];

  v11 = v10;
  sub_23DB6EB5C();
  sub_23DB6EB2C();

  return (*(v1 + 8))(v5, v0);
}

void sub_23DA9CE18(char *a1)
{
  v2 = v1;
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v4 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  v5 = *(v4 + 40);
  v6 = a1[16];
  v7 = a1[17];
  if (VOCommandIdentifier.rawValue.getter() == 0x736547726568744FLL && v8 == 0xEC00000065727574)
  {

    return;
  }

  v9 = sub_23DB70DBC();

  if ((v9 & 1) == 0 && (a1[18] & 1) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      v10 = VOCommandIdentifier.rawValue.getter();
      v12 = v11;
      if (v10 == VOCommandIdentifier.rawValue.getter() && v12 == v13)
      {
        goto LABEL_15;
      }

      v14 = sub_23DB70DBC();

      if (v14)
      {
LABEL_16:
        if (*MEMORY[0x277CE6CE8])
        {
          v19 = *MEMORY[0x277D76438];
          v20 = *MEMORY[0x277CE6CE8];
          UIAccessibilityPostNotification(v19, v20);

          a1[18] = 1;
          sub_23DA9CBE4();
          v21 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
          [*(v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) invalidate];
          v22 = *(v2 + v21);
          *(v2 + v21) = 0;

          *(v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
          return;
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    if ((v7 & 0x80000000) == 0)
    {
      v15 = VOCommandIdentifier.rawValue.getter();
      v17 = v16;
      if (v15 == VOCommandIdentifier.rawValue.getter() && v17 == v18)
      {
LABEL_15:

        goto LABEL_16;
      }

      v23 = sub_23DB70DBC();

      if (v23)
      {
        goto LABEL_16;
      }
    }

    if (!*MEMORY[0x277CE6CC0])
    {
LABEL_23:
      __break(1u);
      return;
    }

    v24 = *MEMORY[0x277D76438];
    v25 = *MEMORY[0x277CE6CC0];
    UIAccessibilityPostNotification(v24, v25);
  }
}

uint64_t sub_23DA9D0D8(void *a1, uint64_t a2)
{
  v4 = sub_23DB707AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DB707CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_23DB707EC();
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v83 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v84 = &v76 - v22;
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v23 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  v24 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v82 = v15;
  v15 = *a1;
  if (v24 >= *(*a1 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v88 = a2;
  v92 = a1;
  v77 = v11;
  v78 = v9;
  v79 = v10;
  v80 = v5;
  v81 = v4;
  LODWORD(v93) = *(v23 + 40);
  result = type metadata accessor for CommandToPractice(0);
  v9 = result;
  v11 = (*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80);
  v87 = *(*(result - 8) + 72);
  a2 = v87 * v24;
  v26 = v15 + v11 + v87 * v24;
  v27 = v26[16];
  v28 = v26[17];
  v29 = v26[*(result + 44)];
  v89 = v26[*(result + 40)];
  v90 = v29;
  if ((v27 & 0x80000000) == 0)
  {
    LOBYTE(aBlock[0]) = v93;
    LOBYTE(v94) = v27;
    v30 = VOCommandIdentifier.rawValue.getter();
    v32 = v31;
    if (v30 == VOCommandIdentifier.rawValue.getter() && v32 == v33)
    {
LABEL_12:

      goto LABEL_13;
    }

    v34 = sub_23DB70DBC();

    if (v34)
    {
      goto LABEL_13;
    }
  }

  if (v28 < 0)
  {
    return result;
  }

  LOBYTE(aBlock[0]) = v93;
  LOBYTE(v94) = v28;
  v35 = VOCommandIdentifier.rawValue.getter();
  v37 = v36;
  if (v35 == VOCommandIdentifier.rawValue.getter() && v37 == v38)
  {
    goto LABEL_12;
  }

  v69 = sub_23DB70DBC();

  if ((v69 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  if (v24 >= v15[2])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_23DAC8B24(v15);
    v15 = result;
    goto LABEL_16;
  }

  if (v26[18])
  {
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_16:
  v39 = v15[2];
  if (v24 >= v39)
  {
    __break(1u);
    goto LABEL_45;
  }

  v40 = v15 + v11;
  *(v15 + v11 + a2 + 18) = 1;
  v41 = v92;
  *v92 = v15;
  v42 = v24 + 1;
  if (v42 != v39)
  {
    *v88 = v42;
    if (v42 < v39)
    {
      v59 = &v40[v87 * v42];
      v60 = &v59[*(v9 + 13)];
      v61 = *(v60 + 1);
      if (v61)
      {
        v62 = *v60;

        v88 = sub_23DA9BC60(0xD000000000000036, 0x800000023DB88150);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
        result = swift_allocObject();
        *(result + 16) = xmmword_23DB78D60;
        if (v42 >= v15[2])
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v63 = result;
        v65 = *v59;
        v64 = *(v59 + 1);
        v66 = MEMORY[0x277D837D0];
        *(result + 56) = MEMORY[0x277D837D0];
        v67 = sub_23DA40598();
        v63[4] = v65;
        v63[5] = v64;
        v63[12] = v66;
        v63[13] = v67;
        v63[8] = v67;
        v63[9] = v62;
        v63[10] = v61;

        v43 = sub_23DB708CC();
        v45 = v68;
        v41 = v92;
      }

      else
      {
        sub_23DA9BC60(0xD00000000000002DLL, 0x800000023DB88120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
        result = swift_allocObject();
        *(result + 16) = xmmword_23DB73BA0;
        if (v42 >= v15[2])
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v70 = result;
        v72 = *v59;
        v71 = *(v59 + 1);
        *(result + 56) = MEMORY[0x277D837D0];
        *(result + 64) = sub_23DA40598();
        *(v70 + 32) = v72;
        *(v70 + 40) = v71;

        v43 = sub_23DB708CC();
        v45 = v73;
      }

      if (v42 < v15[2])
      {
        v59[19] = 1;
        *v41 = v15;
        v46 = v90;
        if (!v90)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v43 = sub_23DA9BC60(0xD000000000000031, 0x800000023DB88190);
  v45 = v44;

  v46 = v90;
  if (!v90)
  {
    goto LABEL_33;
  }

LABEL_19:
  v47 = sub_23DB6BEA8(&unk_284FE65A0);
  if (*(v47 + 16))
  {
    v48 = sub_23DB6B4E4(v93);
    if (v49)
    {
      v50 = *(*(v47 + 56) + 8 * v48);

      sub_23DA5295C();
      v92 = sub_23DB70AEC();
      v51 = v83;
      sub_23DB707DC();
      v52 = v84;
      sub_23DB707FC();
      v93 = *(v85 + 8);
      v93(v51, v86);
      v53 = swift_allocObject();
      *(v53 + 16) = v89;
      *(v53 + 24) = v91;
      *(v53 + 32) = v43;
      *(v53 + 40) = v45;
      aBlock[4] = sub_23DA9DA84;
      aBlock[5] = v53;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DABB3DC;
      aBlock[3] = &block_descriptor_1;
      v54 = _Block_copy(aBlock);

      v55 = v82;
      sub_23DB707BC();
      v94 = MEMORY[0x277D84F90];
      sub_23DA9DAAC(&qword_27E2FE2F0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
      sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
      v56 = v78;
      v57 = v81;
      sub_23DB70C0C();
      v58 = v92;
      MEMORY[0x23EEF6E80](v52, v55, v56, v54);
      _Block_release(v54);

      (*(v80 + 8))(v56, v57);
      (*(v77 + 8))(v55, v79);
      v93(v52, v86);
      swift_bridgeObjectRelease_n();
    }
  }

LABEL_33:

  if (v89)
  {
    if (*MEMORY[0x277CE6CE8])
    {
      v74 = *MEMORY[0x277D76438];
      v75 = *MEMORY[0x277CE6CE8];
      UIAccessibilityPostNotification(v74, v75);

      goto LABEL_36;
    }

LABEL_49:
    __break(1u);
    return result;
  }

LABEL_36:
  if (v46)
  {
    sub_23DA9CBE4();
  }
}

uint64_t sub_23DA9DA44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_23DA9DA84()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_23DA9B36C(*(v0 + 16));
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DA9DAAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DA9DD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnTableInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA9DD7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA7B2F8();
}

uint64_t sub_23DA9DDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DA9DE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DA9DE90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA8FA94();
}

uint64_t sub_23DA9DEB0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_23DA9DEFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA8E4A4();
}

uint64_t sub_23DA9DF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA9DF94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA87784();
}

uint64_t sub_23DA9E188()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA81694();
}

uint64_t sub_23DA9E190()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA81CA4();
}

uint64_t sub_23DA9E1A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA7F5E0();
}

uint64_t sub_23DA9E1C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA963A8();
}

size_t sub_23DA9E250()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA7D8F4();
}

uint64_t sub_23DA9E2C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA7986C();
}

size_t sub_23DA9E480()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA74A6C();
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

size_t sub_23DA9E4E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DA76130();
}

uint64_t sub_23DA9E560()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23DA9E6FC()
{
  sub_23DB6EA1C();
  sub_23DB6E9BC();

  return MEMORY[0x28211C098](0, 0xE000000000000000);
}

AccessibilitySharedUISupport::VOTutorialPage_optional __swiftcall VOTutorialPage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23DB70D8C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VOTutorialPage.rawValue.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000016;
  if (v2 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_23DA9E860()
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DA9E950()
{
  *v0;
  *v0;
  *v0;
  sub_23DB7091C();
}

uint64_t sub_23DA9EA30()
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

void sub_23DA9EB28(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "arrowtriangle.down.fill";
  v5 = "VO.Tutorial.Navigation.Next";
  v6 = 0xD00000000000001FLL;
  v7 = "VO.Tutorial.Navigation.Previous";
  v8 = 0xD000000000000016;
  if (v3 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = "VO.Tutorial.Activation";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "VO.Tutorial.Home";
  v10 = 0xD000000000000013;
  if (v3 != 1)
  {
    v10 = 0xD00000000000001BLL;
    v9 = "VO.Tutorial.Welcome";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t CommandType.hash(into:)()
{
  if (*v0 < 0)
  {
    MEMORY[0x23EEF71C0](1);
    VCCommandIdentifier.rawValue.getter();
  }

  else
  {
    MEMORY[0x23EEF71C0](0);
    VOCommandIdentifier.rawValue.getter();
  }

  sub_23DB7091C();
}

uint64_t CommandType.hashValue.getter()
{
  v1 = *v0;
  sub_23DB70E0C();
  if (v1 < 0)
  {
    MEMORY[0x23EEF71C0](1);
    VCCommandIdentifier.rawValue.getter();
  }

  else
  {
    MEMORY[0x23EEF71C0](0);
    VOCommandIdentifier.rawValue.getter();
  }

  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DA9ED20()
{
  if (*v0 < 0)
  {
    MEMORY[0x23EEF71C0](1);
    VCCommandIdentifier.rawValue.getter();
  }

  else
  {
    MEMORY[0x23EEF71C0](0);
    VOCommandIdentifier.rawValue.getter();
  }

  sub_23DB7091C();
}

uint64_t sub_23DA9EDB0()
{
  v1 = *v0;
  sub_23DB70E0C();
  if (v1 < 0)
  {
    MEMORY[0x23EEF71C0](1);
    VCCommandIdentifier.rawValue.getter();
  }

  else
  {
    MEMORY[0x23EEF71C0](0);
    VOCommandIdentifier.rawValue.getter();
  }

  sub_23DB7091C();

  return sub_23DB70E4C();
}

AccessibilitySharedUISupport::VOCommandIdentifier_optional __swiftcall VOCommandIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23DB70DCC();

  v5 = 0;
  v6 = 46;
  switch(v3)
  {
    case 0:
      goto LABEL_63;
    case 1:
      v5 = 1;
      goto LABEL_63;
    case 2:
      v5 = 2;
      goto LABEL_63;
    case 3:
      v5 = 3;
      goto LABEL_63;
    case 4:
      v5 = 4;
      goto LABEL_63;
    case 5:
      v5 = 5;
      goto LABEL_63;
    case 6:
      v5 = 6;
      goto LABEL_63;
    case 7:
      v5 = 7;
      goto LABEL_63;
    case 8:
      v5 = 8;
      goto LABEL_63;
    case 9:
      v5 = 9;
      goto LABEL_63;
    case 10:
      v5 = 10;
      goto LABEL_63;
    case 11:
      v5 = 11;
      goto LABEL_63;
    case 12:
      v5 = 12;
      goto LABEL_63;
    case 13:
      v5 = 13;
      goto LABEL_63;
    case 14:
      v5 = 14;
      goto LABEL_63;
    case 15:
      v5 = 15;
      goto LABEL_63;
    case 16:
      v5 = 16;
      goto LABEL_63;
    case 17:
      v5 = 17;
      goto LABEL_63;
    case 18:
      v5 = 18;
      goto LABEL_63;
    case 19:
      v5 = 19;
      goto LABEL_63;
    case 20:
      v5 = 20;
      goto LABEL_63;
    case 21:
      v5 = 21;
      goto LABEL_63;
    case 22:
      v5 = 22;
      goto LABEL_63;
    case 23:
      v5 = 23;
      goto LABEL_63;
    case 24:
      v5 = 24;
      goto LABEL_63;
    case 25:
      v5 = 25;
      goto LABEL_63;
    case 26:
      v5 = 26;
      goto LABEL_63;
    case 27:
      v5 = 27;
      goto LABEL_63;
    case 28:
      v5 = 28;
      goto LABEL_63;
    case 29:
      v5 = 29;
      goto LABEL_63;
    case 30:
      v5 = 30;
      goto LABEL_63;
    case 31:
      v5 = 31;
      goto LABEL_63;
    case 32:
      v5 = 32;
      goto LABEL_63;
    case 33:
      v5 = 33;
      goto LABEL_63;
    case 34:
      v5 = 34;
      goto LABEL_63;
    case 35:
      v5 = 35;
      goto LABEL_63;
    case 36:
      v5 = 36;
      goto LABEL_63;
    case 37:
      v5 = 37;
      goto LABEL_63;
    case 38:
      v5 = 38;
      goto LABEL_63;
    case 39:
      v5 = 39;
      goto LABEL_63;
    case 40:
      v5 = 40;
      goto LABEL_63;
    case 41:
      v5 = 41;
      goto LABEL_63;
    case 42:
      v5 = 42;
      goto LABEL_63;
    case 43:
      v5 = 43;
      goto LABEL_63;
    case 44:
      v5 = 44;
      goto LABEL_63;
    case 45:
      v5 = 45;
LABEL_63:
      v6 = v5;
      break;
    case 46:
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    default:
      v6 = 64;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VOCommandIdentifier.rawValue.getter()
{
  result = 0x726F57726F746F52;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
    case 0x29:
      result = 0xD000000000000020;
      break;
    case 3:
    case 0x21:
    case 0x3C:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
    case 0x18:
    case 0x19:
    case 0x30:
    case 0x3F:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 0xF:
    case 0x13:
    case 0x15:
    case 0x2C:
    case 0x3B:
      result = 0xD00000000000001DLL;
      break;
    case 8:
    case 0x2A:
    case 0x2B:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xB:
      result = 0xD00000000000001CLL;
      break;
    case 0xC:
      return result;
    case 0xD:
    case 0x25:
    case 0x32:
      result = 0xD000000000000017;
      break;
    case 0xE:
    case 0x2E:
    case 0x2F:
    case 0x3D:
      result = 0xD000000000000015;
      break;
    case 0x11:
      result = 0xD00000000000001ELL;
      break;
    case 0x12:
      result = 0xD000000000000022;
      break;
    case 0x14:
      result = 0xD00000000000001BLL;
      break;
    case 0x16:
      result = 0xD00000000000001ELL;
      break;
    case 0x17:
    case 0x27:
      result = 0xD000000000000019;
      break;
    case 0x1A:
    case 0x33:
      result = 0xD000000000000010;
      break;
    case 0x1B:
      result = 0x736547726568744FLL;
      break;
    case 0x1C:
    case 0x20:
    case 0x24:
      result = 0xD000000000000014;
      break;
    case 0x1D:
    case 0x1E:
      result = 0xD000000000000013;
      break;
    case 0x1F:
    case 0x23:
    case 0x3E:
      result = 0xD000000000000011;
      break;
    case 0x22:
    case 0x26:
    case 0x39:
    case 0x3A:
      result = 0xD000000000000016;
      break;
    case 0x28:
      result = 0x6564697547524353;
      break;
    case 0x2D:
      result = 0xD000000000000025;
      break;
    case 0x31:
      result = 0xD000000000000012;
      break;
    case 0x34:
      result = 0x2E756E654D524353;
      break;
    case 0x35:
      result = 0xD00000000000001ELL;
      break;
    case 0x36:
    case 0x37:
      result = 0xD000000000000023;
      break;
    case 0x38:
      result = 0x6573756150;
      break;
    default:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t sub_23DA9F828(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = VOCommandIdentifier.rawValue.getter();
  v4 = v3;
  if (v2 == VOCommandIdentifier.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23DB70DBC();
  }

  return v7 & 1;
}

uint64_t sub_23DA9F8C4()
{
  v1 = *v0;
  sub_23DB70E0C();
  VOCommandIdentifier.rawValue.getter();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DA9F92C()
{
  v2 = *v0;
  VOCommandIdentifier.rawValue.getter();
  sub_23DB7091C();
}

uint64_t sub_23DA9F990()
{
  v1 = *v0;
  sub_23DB70E0C();
  VOCommandIdentifier.rawValue.getter();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

unint64_t sub_23DA9FA00@<X0>(unint64_t *a1@<X8>)
{
  result = VOCommandIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_23DA9FA38()
{
  type metadata accessor for VoiceOverController();
  swift_allocObject();
  result = sub_23DA9FA74();
  qword_27E30A6A8 = result;
  return result;
}

void *sub_23DA9FA74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE240, &qword_23DB7B4B0);
  swift_allocObject();
  v0[2] = sub_23DABC744(27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE320, &qword_23DB7B4B8);
  swift_allocObject();
  v0[3] = sub_23DABC940(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE248, &qword_23DB7B4C0);
  swift_allocObject();
  v0[4] = sub_23DABCB3C(50.0);
  v0[5] = sub_23DA9FE08;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v2 = v0[3];
    swift_beginAccess();
    *(v2 + 40) = 1;

    sub_23DABC004();

    v3 = objc_opt_self();
    [v3 connectToVO];
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v4 = sub_23DB7087C();
      [v3 triggerEventCommand_];
    }
  }

  v5 = *MEMORY[0x277D81E80];
  if (*MEMORY[0x277D81E80])
  {
    v6 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v6, 0, v1[5], v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  [v8 addObserver:v1 selector:sel_keyboardWillShowWithNotification_ name:*MEMORY[0x277D76C60] object:0];

  v9 = [v7 defaultCenter];
  [v9 addObserver:v1 selector:sel_keyboardWillHideWithNotification_ name:*MEMORY[0x277D76C50] object:0];

  v10 = [v7 defaultCenter];

  v11 = sub_23DB7087C();
  [v10 addObserver:v1 selector:sel__votTrainingInfoDidUpdateWithNotification_ name:v11 object:0];

  v12 = [v7 defaultCenter];

  v13 = sub_23DB7087C();
  [v12 addObserver:v1 selector:sel__votTrainingSpeakingRateDidUpdateWithNotification_ name:v13 object:0];

  [objc_opt_self() getSpeakingRate];
  v15 = v14;
  v16 = v1[4];
  swift_beginAccess();
  *(v16 + 40) = v15;

  sub_23DABC02C();

  return v1;
}

uint64_t sub_23DA9FE1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  *(v5 + 40) = a4;

  sub_23DABC32C();
}

uint64_t sub_23DA9FED8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

uint64_t sub_23DA9FF34()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_23DA9FF7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VoiceOverController();
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

uint64_t _s28AccessibilitySharedUISupport11CommandTypeO2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    if ((v2 & 0x80000000) == 0)
    {
      v3 = VOCommandIdentifier.rawValue.getter();
      v5 = v4;
      v6 = VOCommandIdentifier.rawValue.getter();
      goto LABEL_7;
    }

LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v3 = VCCommandIdentifier.rawValue.getter();
  v5 = v9;
  v6 = VCCommandIdentifier.rawValue.getter();
LABEL_7:
  if (v3 == v6 && v5 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23DB70DBC();
  }

  return v8 & 1;
}

unint64_t sub_23DAA009C()
{
  result = qword_27E2FE208;
  if (!qword_27E2FE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE208);
  }

  return result;
}

unint64_t sub_23DAA00F4()
{
  result = qword_27E2FE210;
  if (!qword_27E2FE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE210);
  }

  return result;
}

unint64_t sub_23DAA014C()
{
  result = qword_27E2FE218;
  if (!qword_27E2FE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE218);
  }

  return result;
}

unint64_t sub_23DAA01A4()
{
  result = qword_27E2FE220;
  if (!qword_27E2FE220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE228, &qword_23DB7B1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE220);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VOTutorialPage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VOTutorialPage(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommandType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 3)
  {
    goto LABEL_17;
  }

  if (a2 + 253 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 253) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 253;
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

      return (*a1 | (v4 << 8)) - 253;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 253;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 2 | (*a1 >> 7)) ^ 3;
  if (v6 >= 2)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CommandType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 253 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 253) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 3)
  {
    v4 = 0;
  }

  if (a2 > 2)
  {
    v5 = ((a2 - 3) >> 8) + 1;
    *result = a2 - 3;
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
    *result = (a2 << 7) | 0x40;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23DAA0538(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC1)
  {
    goto LABEL_17;
  }

  if (a2 + 63 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 63) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 63;
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

      return (*a1 | (v4 << 8)) - 63;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 63;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v8 = v6 - 64;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23DAA05CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC1)
  {
    v4 = 0;
  }

  if (a2 > 0xC0)
  {
    v5 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
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
    *result = a2 + 63;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}