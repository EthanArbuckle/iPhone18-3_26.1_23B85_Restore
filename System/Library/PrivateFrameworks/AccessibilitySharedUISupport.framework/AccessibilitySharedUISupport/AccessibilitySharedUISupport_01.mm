uint64_t sub_23DA29A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = a7;
  v96 = a8;
  v93 = a5;
  v94 = a6;
  v91 = a3;
  v92 = a4;
  v90 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v87 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = *(v85 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v82 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v72 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v75 = *(v72 - 8);
  v23 = *(v75 + 64);
  MEMORY[0x28223BE20](v72, v24);
  *&v74 = &v72 - v25;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v26 = *(v73 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v73, v28);
  v30 = &v72 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v72 - v35;
  v37 = sub_23DB6EA8C();
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v78 = &v72 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v80 = v43;
  v44 = *(v43 + 16);
  v79 = &v72 - v45;
  v97 = a1;
  v81 = v46;
  v77 = v43 + 16;
  v76 = v44;
  v44();
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v98) = 0;
  sub_23DB6EECC();
  v49 = *(v32 + 32);
  v48 = v32 + 32;
  v50 = v49;
  v49(v8 + v47, v36, v31);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v98 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v26 + 32))(v8 + v53, v30, v73);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v98 = 0;
  v55 = v74;
  sub_23DB6EECC();
  (*(v75 + 32))(v8 + v54, v55, v72);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v98) = 0;
  sub_23DB6EECC();
  v50(v8 + v56, v36, v31);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v74 = xmmword_23DB74320;
  v98 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v75 = v48;
  v58 = v84;
  v59 = *(v83 + 32);
  v59(v8 + v57, v22, v84);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v98 = v74;
  sub_23DB6EECC();
  v59(v8 + v60, v22, v58);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v98) = 0;
  sub_23DB6EECC();
  v50(v8 + v61, v36, v31);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  v63 = v82;
  sub_23DB6EECC();
  (*(v85 + 32))(v8 + v62, v63, v86);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v98 = 0uLL;
  sub_23DB6EECC();
  v59(v8 + v64, v22, v58);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v98 = nullsub_1;
  *(&v98 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v66 = v87;
  sub_23DB6EECC();
  (*(v88 + 32))(v8 + v65, v66, v89);
  v67 = v78;
  v68 = v79;
  v69 = v81;
  (v76)(v78, v79, v81);
  Page.init(id:title:text:subPages:iconName:)(v67, v90, v91, v92, v93, v94, v95, v96);
  v70 = *(v80 + 8);
  v70(v97, v69);
  v70(v68, v69);
  return v8;
}

uint64_t sub_23DA2A298(uint64_t a1)
{
  sub_23DB70E0C();
  v2 = *(a1 + 28);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA2A338(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  return sub_23DB7083C();
}

uint64_t sub_23DA2A3BC(uint64_t a1, uint64_t a2)
{
  sub_23DB70E0C();
  v3 = *(a2 + 28);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t Page.PracticeVOKeyboardCommand.__allocating_init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = a7;
  v112 = a8;
  v109 = a5;
  v110 = a6;
  v107 = a3;
  v108 = a4;
  v106 = a2;
  v114 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v103 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = *(v101 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v99 = &v83 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v98 = *(v100 - 8);
  v17 = *(v98 + 64);
  MEMORY[0x28223BE20](v100, v18);
  v96 = &v83 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v91 = *(v92 - 1);
  v20 = *(v91 + 64);
  MEMORY[0x28223BE20](v92, v21);
  v90 = &v83 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v86 = *(v87 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v87, v24);
  v85 = &v83 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v26 = *(v84 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v84, v28);
  v30 = &v83 - v29;
  v31 = sub_23DB6EA8C();
  v113 = *(v31 - 8);
  v32 = v113[8];
  v34 = MEMORY[0x28223BE20](v31, v33);
  v93 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v83 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v83 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v83 - v47;
  v49 = *(v8 + 48);
  v50 = *(v8 + 52);
  v51 = swift_allocObject();
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  *&v115 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DB6EECC();
  (*(v44 + 32))(v51 + v52, v48, v43);
  v53 = v113 + 2;
  v54 = v113[2];
  v54(v42, v114, v31);
  v95 = v39;
  v94 = v42;
  v55 = v84;
  v97 = v31;
  v89 = v53;
  v88 = v54;
  v54(v39, v42, v31);
  v56 = MEMORY[0x277D84F90];
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v58 = *(v26 + 32);
  v59 = v30;
  v60 = v55;
  v58(v51 + v57, v30, v55);
  if (v56 >> 62 && sub_23DB70C3C())
  {
    v61 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v61 = MEMORY[0x277D84FA0];
  }

  *(v51 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v61;
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v115 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v63 = v85;
  sub_23DB6EECC();
  (*(v86 + 32))(v51 + v62, v63, v87);
  *(v51 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v56;
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v115 = 0;
  v65 = v90;
  sub_23DB6EECC();
  (*(v91 + 32))(v51 + v64, v65, v92);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v58(v51 + v66, v59, v55);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v91 = xmmword_23DB74320;
  v115 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v92 = v58;
  v68 = v96;
  sub_23DB6EECC();
  v69 = *(v98 + 32);
  v70 = v100;
  v69(v51 + v67, v68, v100);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v115 = v91;
  sub_23DB6EECC();
  v69(v51 + v71, v68, v70);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v92(v51 + v72, v59, v60);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  v74 = v99;
  sub_23DB6EECC();
  (*(v101 + 32))(v51 + v73, v74, v102);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v115 = 0uLL;
  sub_23DB6EECC();
  v69(v51 + v75, v68, v70);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v115 = nullsub_1;
  *(&v115 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v77 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v51 + v76, v77, v105);
  v78 = v93;
  v79 = v95;
  v80 = v97;
  v88(v93, v95, v97);
  Page.init(id:title:text:subPages:iconName:)(v78, v106, v107, v108, v109, v110, v111, v112);
  v81 = v113[1];
  v81(v114, v80);
  v81(v79, v80);
  v81(v94, v80);
  return v51;
}

uint64_t Page.PracticeVOKeyboardCommand.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = a7;
  v108 = a8;
  v105 = a5;
  v106 = a6;
  v103 = a3;
  v104 = a4;
  v102 = a2;
  v110 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v99 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v97 = *(v13 - 8);
  v98 = v13;
  v14 = *(v97 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v95 = &v79 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v93 = *(v96 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x28223BE20](v96, v18);
  v90 = &v79 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v87 = *(v88 - 1);
  v20 = *(v87 + 64);
  MEMORY[0x28223BE20](v88, v21);
  v84 = &v79 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v82 = *(v83 - 8);
  v23 = *(v82 + 64);
  MEMORY[0x28223BE20](v83, v24);
  v81 = &v79 - v25;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v26 = *(v80 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v80, v28);
  v30 = &v79 - v29;
  v31 = sub_23DB6EA8C();
  v109 = *(v31 - 8);
  v32 = v109[8];
  v34 = MEMORY[0x28223BE20](v31, v33);
  v89 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v79 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v79 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v79 - v47;
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  *&v111 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DB6EECC();
  (*(v44 + 32))(v8 + v49, v48, v43);
  v50 = v109 + 2;
  v51 = v109[2];
  v51(v42, v110, v31);
  v92 = v39;
  v91 = v42;
  v94 = v31;
  v86 = v50;
  v85 = v51;
  v51(v39, v42, v31);
  v52 = MEMORY[0x277D84F90];
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v111) = 0;
  sub_23DB6EECC();
  v54 = *(v26 + 32);
  v55 = v30;
  v56 = v80;
  v54(v8 + v53, v30);
  if (v52 >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v111 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v8 + v58, v59, v83);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v52;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v111 = 0;
  v61 = v84;
  sub_23DB6EECC();
  (*(v87 + 32))(v8 + v60, v61, v88);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v111) = 0;
  sub_23DB6EECC();
  (v54)(v8 + v62, v30, v56);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v87 = xmmword_23DB74320;
  v111 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v64 = v90;
  sub_23DB6EECC();
  v88 = v54;
  v65 = *(v93 + 32);
  v66 = v96;
  v65(v8 + v63, v64, v96);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v111 = v87;
  sub_23DB6EECC();
  v65(v8 + v67, v64, v66);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v111) = 0;
  sub_23DB6EECC();
  v88(v8 + v68, v55, v56);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  v70 = v95;
  sub_23DB6EECC();
  (*(v97 + 32))(v8 + v69, v70, v98);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v111 = 0uLL;
  sub_23DB6EECC();
  v65(v8 + v71, v64, v66);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v111 = nullsub_1;
  *(&v111 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v73 = v99;
  sub_23DB6EECC();
  (*(v100 + 32))(v8 + v72, v73, v101);
  v74 = v89;
  v75 = v92;
  v76 = v94;
  v85(v89, v92, v94);
  Page.init(id:title:text:subPages:iconName:)(v74, v102, v103, v104, v105, v106, v107, v108);
  v77 = v109[1];
  v77(v110, v76);
  v77(v75, v76);
  v77(v91, v76);
  return v8;
}

uint64_t sub_23DA2B768(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  Page.Practice.deinit();
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  return v3;
}

uint64_t (*sub_23DA2B860())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40738;
}

uint64_t Page.PracticeVOKeyboardCommandWithAlert.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v118 = a7;
  v119 = a8;
  v116 = a5;
  v117 = a6;
  v114 = a3;
  v115 = a4;
  v113 = a2;
  v128 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v111 = *(v112 - 8);
  v9 = *(v111 + 64);
  MEMORY[0x28223BE20](v112, v10);
  v110 = &v92 - v11;
  *&v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v107 = *(v108 - 8);
  v12 = *(v107 + 64);
  MEMORY[0x28223BE20](v108, v13);
  v106 = &v92 - v14;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v104 = *(v105 - 8);
  v15 = *(v104 + 64);
  MEMORY[0x28223BE20](v105, v16);
  v101 = &v92 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v97 = *(v98 - 8);
  v18 = *(v97 + 8);
  MEMORY[0x28223BE20](v98, v19);
  v94 = &v92 - v20;
  v21 = sub_23DB6EA8C();
  v126 = *(v21 - 8);
  v127 = v21;
  v22 = v126[8];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v109 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v125 = &v92 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v124 = &v92 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v123 = &v92 - v33;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v129 = *(v122 - 8);
  v34 = *(v129 + 64);
  MEMORY[0x28223BE20](v122, v35);
  v121 = &v92 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v92 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v120 = v43;
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v92 - v47;
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__showAlert;
  LOBYTE(v130) = 0;
  sub_23DB6EECC();
  v93 = *(v44 + 32);
  v93(v8 + v49, v48, v43);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertHeader;
  *&v130 = 0;
  *(&v130 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v51 = *(v38 + 32);
  v51(v8 + v50, v42, v37);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertMessage;
  *&v130 = 0;
  *(&v130 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v51(v8 + v52, v42, v37);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonName;
  *&v130 = 0;
  *(&v130 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v51(v8 + v53, v42, v37);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__cancelButtonName;
  *&v130 = 0;
  *(&v130 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v100 = v42;
  v103 = v37;
  v102 = v38 + 32;
  v99 = v51;
  v51(v8 + v54, v42, v37);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonAction;
  *&v130 = nullsub_1;
  *(&v130 + 1) = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v57 = v121;
  v96 = v56;
  sub_23DB6EECC();
  v58 = *(v129 + 32);
  v129 += 32;
  v95 = v58;
  v58(v8 + v55, v57, v122);
  v59 = v127;
  v60 = v126 + 2;
  v61 = v126[2];
  v62 = v123;
  v61(v123, v128, v127);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v64 = MEMORY[0x277D84F90];
  *&v130 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  v65 = v94;
  sub_23DB6EECC();
  (*(v97 + 4))(v8 + v63, v65, v98);
  v66 = v124;
  v61(v124, v62, v59);
  v98 = v60;
  v97 = v61;
  v61(v125, v66, v59);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v130) = 0;
  sub_23DB6EECC();
  v68 = v120;
  v69 = v93;
  (v93)(v8 + v67, v48);
  if (v64 >> 62 && sub_23DB70C3C())
  {
    v70 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v70 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v70;
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v130 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v72 = v101;
  sub_23DB6EECC();
  (*(v104 + 32))(v8 + v71, v72, v105);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v64;
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v130 = 0;
  v74 = v106;
  sub_23DB6EECC();
  (*(v107 + 32))(v8 + v73, v74, v108);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v130) = 0;
  sub_23DB6EECC();
  v69(v8 + v75, v48, v68);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v108 = xmmword_23DB74320;
  v130 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v77 = v110;
  sub_23DB6EECC();
  v78 = *(v111 + 32);
  v79 = v112;
  v78(v8 + v76, v77, v112);
  v80 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v130 = v108;
  sub_23DB6EECC();
  v78(v8 + v80, v77, v79);
  v81 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v130) = 0;
  sub_23DB6EECC();
  v69(v8 + v81, v48, v120);
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v130 = 0;
  *(&v130 + 1) = 0xE000000000000000;
  v83 = v100;
  sub_23DB6EECC();
  v99(v8 + v82, v83, v103);
  v84 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v130 = 0uLL;
  sub_23DB6EECC();
  v78(v8 + v84, v77, v79);
  v85 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v130 = nullsub_1;
  *(&v130 + 1) = 0;
  v86 = v121;
  sub_23DB6EECC();
  v95(v8 + v85, v86, v122);
  v87 = v109;
  v88 = v125;
  v89 = v127;
  v97(v109, v125, v127);
  Page.init(id:title:text:subPages:iconName:)(v87, v113, v114, v115, v116, v117, v118, v119);
  v90 = v126[1];
  v90(v128, v89);
  v90(v88, v89);
  v90(v124, v89);
  v90(v123, v89);
  return v8;
}

uint64_t sub_23DA2C4C0()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__showAlert;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertHeader;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertMessage, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonName, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__cancelButtonName, v4);
  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonAction;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v8 = *(*(v7 - 8) + 8);

  return v8(v0 + v6, v7);
}

uint64_t Page.PracticeVOKeyboardCommandWithAlert.deinit()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__showAlert;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertHeader;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertMessage, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonName, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__cancelButtonName, v6);
  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonAction;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t Page.PracticeVOKeyboardCommandWithAlert.__deallocating_deinit()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__showAlert;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertHeader;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertMessage, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonName, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__cancelButtonName, v6);
  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonAction;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v10, v11);
}

uint64_t sub_23DA2CA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = a7;
  v112 = a8;
  v109 = a5;
  v110 = a6;
  v107 = a3;
  v108 = a4;
  v106 = a2;
  v114 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v103 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = *(v101 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v99 = &v83 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v98 = *(v100 - 8);
  v17 = *(v98 + 64);
  MEMORY[0x28223BE20](v100, v18);
  v96 = &v83 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v91 = *(v92 - 1);
  v20 = *(v91 + 64);
  MEMORY[0x28223BE20](v92, v21);
  v90 = &v83 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v86 = *(v87 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v87, v24);
  v85 = &v83 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v26 = *(v84 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v84, v28);
  v30 = &v83 - v29;
  v31 = sub_23DB6EA8C();
  v113 = *(v31 - 8);
  v32 = v113[8];
  v34 = MEMORY[0x28223BE20](v31, v33);
  v93 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v83 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v83 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB20, &qword_23DB75E70);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v83 - v47;
  v49 = *(v8 + 48);
  v50 = *(v8 + 52);
  v51 = swift_allocObject();
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page13PracticeVOBox__boxes;
  *&v115 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC778, &qword_23DB800B0);
  sub_23DB6EECC();
  (*(v44 + 32))(v51 + v52, v48, v43);
  v53 = v113 + 2;
  v54 = v113[2];
  v54(v42, v114, v31);
  v95 = v39;
  v94 = v42;
  v55 = v84;
  v97 = v31;
  v89 = v53;
  v88 = v54;
  v54(v39, v42, v31);
  v56 = MEMORY[0x277D84F90];
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v58 = *(v26 + 32);
  v59 = v30;
  v60 = v55;
  v58(v51 + v57, v30, v55);
  if (v56 >> 62 && sub_23DB70C3C())
  {
    v61 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v61 = MEMORY[0x277D84FA0];
  }

  *(v51 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v61;
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v115 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v63 = v85;
  sub_23DB6EECC();
  (*(v86 + 32))(v51 + v62, v63, v87);
  *(v51 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v56;
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v115 = 0;
  v65 = v90;
  sub_23DB6EECC();
  (*(v91 + 32))(v51 + v64, v65, v92);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v58(v51 + v66, v59, v55);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v91 = xmmword_23DB74320;
  v115 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v92 = v58;
  v68 = v96;
  sub_23DB6EECC();
  v69 = *(v98 + 32);
  v70 = v100;
  v69(v51 + v67, v68, v100);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v115 = v91;
  sub_23DB6EECC();
  v69(v51 + v71, v68, v70);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v92(v51 + v72, v59, v60);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  v74 = v99;
  sub_23DB6EECC();
  (*(v101 + 32))(v51 + v73, v74, v102);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v115 = 0uLL;
  sub_23DB6EECC();
  v69(v51 + v75, v68, v70);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v115 = nullsub_1;
  *(&v115 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v77 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v51 + v76, v77, v105);
  v78 = v93;
  v79 = v95;
  v80 = v97;
  v88(v93, v95, v97);
  Page.init(id:title:text:subPages:iconName:)(v78, v106, v107, v108, v109, v110, v111, v112);
  v81 = v113[1];
  v81(v114, v80);
  v81(v79, v80);
  v81(v94, v80);
  return v51;
}

uint64_t HeaderWithBody.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeaderWithBody(0) + 24);
  v4 = sub_23DB6EA8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeaderWithBody.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeaderWithBody(0) + 24);
  v4 = sub_23DB6EA8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeaderWithBody.hash(into:)()
{
  v0 = *(type metadata accessor for HeaderWithBody(0) + 24);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  return sub_23DB7083C();
}

uint64_t static HeaderWithBody.== infix(_:_:)()
{
  v0 = *(type metadata accessor for HeaderWithBody(0) + 24);

  return sub_23DB6EA6C();
}

uint64_t HeaderWithBody.hashValue.getter()
{
  sub_23DB70E0C();
  v0 = *(type metadata accessor for HeaderWithBody(0) + 24);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA2D680(uint64_t a1)
{
  sub_23DB70E0C();
  v2 = *(a1 + 24);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA2D71C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  return sub_23DB7083C();
}

uint64_t sub_23DA2D79C(uint64_t a1, uint64_t a2)
{
  sub_23DB70E0C();
  v3 = *(a2 + 24);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA2D844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_23DB6EA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23DA2D914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v114 = a7;
  v115 = a8;
  v112 = a5;
  v113 = a6;
  v110 = a3;
  v111 = a4;
  v109 = a2;
  v118 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v107 = *(v9 - 8);
  v108 = v9;
  v10 = *(v107 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v106 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v104 = *(v13 - 8);
  v105 = v13;
  v14 = *(v104 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v102 = &v84 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v98 = *(v99 - 1);
  v17 = *(v98 + 64);
  MEMORY[0x28223BE20](v99, v18);
  v97 = &v84 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v92 = *(v93 - 8);
  v20 = *(v92 + 64);
  MEMORY[0x28223BE20](v93, v21);
  v91 = &v84 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v86 = *(v87 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v87, v24);
  v85 = &v84 - v25;
  v26 = sub_23DB6EA8C();
  v117 = *(v26 - 8);
  v27 = v117[8];
  v29 = MEMORY[0x28223BE20](v26, v28);
  v100 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v116 = &v84 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v84 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v84 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v84 - v47;
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__fullText;
  *&v119 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  (*(v44 + 32))(v8 + v49, v48, v43);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__rotorName;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v51 = *(v38 + 32);
  v51(v8 + v50, v42, v37);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__textLabel;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v94 = v42;
  v96 = v37;
  v95 = v38 + 32;
  v88 = v51;
  v51(v8 + v52, v42, v37);
  v53 = MEMORY[0x277D84F90];
  v54 = v117 + 2;
  v55 = v117[2];
  v55(v36, v118, v26);
  v101 = v36;
  v103 = v26;
  v90 = v54;
  v89 = v55;
  v55(v116, v36, v26);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v119) = 0;
  v57 = v85;
  sub_23DB6EECC();
  v58 = *(v86 + 32);
  v59 = v57;
  v60 = v57;
  v61 = v87;
  v58(v8 + v56, v60);
  if (v53 >> 62 && sub_23DB70C3C())
  {
    v62 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v62 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v62;
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v119 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v64 = v91;
  sub_23DB6EECC();
  (*(v92 + 32))(v8 + v63, v64, v93);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v53;
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v119 = 0;
  v66 = v97;
  sub_23DB6EECC();
  (*(v98 + 32))(v8 + v65, v66, v99);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  (v58)(v8 + v67, v59, v61);
  v99 = v58;
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v98 = xmmword_23DB74320;
  v119 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v69 = v102;
  sub_23DB6EECC();
  v70 = v105;
  v71 = *(v104 + 32);
  v71(v8 + v68, v69, v105);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v119 = v98;
  sub_23DB6EECC();
  v71(v8 + v72, v69, v70);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v99(v8 + v73, v59, v61);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  v75 = v94;
  sub_23DB6EECC();
  v88(v8 + v74, v75, v96);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v119 = 0uLL;
  sub_23DB6EECC();
  v71(v8 + v76, v69, v70);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v119 = nullsub_1;
  *(&v119 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v78 = v106;
  sub_23DB6EECC();
  (*(v107 + 32))(v8 + v77, v78, v108);
  v79 = v100;
  v80 = v116;
  v81 = v103;
  v89(v100, v116, v103);
  Page.init(id:title:text:subPages:iconName:)(v79, v109, v110, v111, v112, v113, v114, v115);
  v82 = v117[1];
  v82(v118, v81);
  v82(v80, v81);
  v82(v101, v81);
  return v8;
}

uint64_t sub_23DA2E31C()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__fullText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__rotorName;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), v0 + v3, v4);
  v5 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__textLabel;

  return v7(v5, v4);
}

uint64_t sub_23DA2E418()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__fullText;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__rotorName;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__textLabel, v4);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA2E578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = a7;
  v109 = a8;
  v106 = a5;
  v107 = a6;
  v104 = a3;
  v105 = a4;
  v103 = a2;
  v112 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v101 = *(v9 - 8);
  v102 = v9;
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v100 = &v81 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v97 = *(v99 - 8);
  v13 = *(v97 + 64);
  MEMORY[0x28223BE20](v99, v14);
  v95 = &v81 - v15;
  *&v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v92 = *(v93 - 8);
  v16 = *(v92 + 64);
  MEMORY[0x28223BE20](v93, v17);
  v91 = &v81 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v84 = *(v87 - 8);
  v19 = *(v84 + 64);
  MEMORY[0x28223BE20](v87, v20);
  v83 = &v81 - v21;
  v22 = sub_23DB6EA8C();
  v111 = *(v22 - 8);
  v23 = v111[8];
  v25 = MEMORY[0x28223BE20](v22, v24);
  v94 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v110 = &v81 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v81 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v81 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v81 - v43;
  v45 = *(v8 + 48);
  v46 = *(v8 + 52);
  v47 = swift_allocObject();
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeUneditableTextVO__exampleText;
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v49 = *(v40 + 32);
  v88 = v44;
  v90 = v39;
  v89 = v40 + 32;
  v82 = v49;
  v49(v47 + v48, v44, v39);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeUneditableTextVO__showRetryPractice;
  LOBYTE(v113) = 1;
  sub_23DB6EECC();
  v51 = *(v34 + 32);
  v51(v47 + v50, v38, v33);
  v52 = v111 + 2;
  v53 = v111[2];
  v53(v32, v112, v22);
  v96 = v32;
  v98 = v22;
  v86 = v52;
  v85 = v53;
  v53(v110, v32, v22);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v55 = v38;
  v56 = v38;
  v57 = v33;
  v51(v47 + v54, v56, v33);
  v58 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v59 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v59 = MEMORY[0x277D84FA0];
  }

  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v59;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v113 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v61 = v83;
  sub_23DB6EECC();
  (*(v84 + 32))(v47 + v60, v61, v87);
  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v58;
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v113 = 0;
  v63 = v91;
  sub_23DB6EECC();
  (*(v92 + 32))(v47 + v62, v63, v93);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v81 = v51;
  v51(v47 + v64, v55, v57);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v93 = xmmword_23DB74320;
  v113 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v66 = v95;
  sub_23DB6EECC();
  v67 = *(v97 + 32);
  v68 = v99;
  v67(v47 + v65, v66, v99);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v113 = v93;
  sub_23DB6EECC();
  v67(v47 + v69, v66, v68);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v81(v47 + v70, v55, v57);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  v72 = v88;
  sub_23DB6EECC();
  v82(v47 + v71, v72, v90);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v113 = 0uLL;
  sub_23DB6EECC();
  v67(v47 + v73, v66, v68);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v113 = nullsub_1;
  *(&v113 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v75 = v100;
  sub_23DB6EECC();
  (*(v101 + 32))(v47 + v74, v75, v102);
  v76 = v94;
  v77 = v110;
  v78 = v98;
  v85(v94, v110, v98);
  Page.init(id:title:text:subPages:iconName:)(v76, v103, v104, v105, v106, v107, v108, v109);
  v79 = v111[1];
  v79(v112, v78);
  v79(v77, v78);
  v79(v96, v78);
  return v47;
}

uint64_t sub_23DA2EEDC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = *a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(*(v11 - 8) + 8);

  return v12(v4 + v10, v11);
}

uint64_t sub_23DA2EFCC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  Page.Practice.deinit();
  v9 = *a1;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v12 - 8) + 8))(v4 + v11, v12);

  v13 = *(*v4 + 48);
  v14 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v13, v14);
}

uint64_t sub_23DA2F0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_23DB6EA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23DA2F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v118 = a7;
  v119 = a8;
  v116 = a5;
  v117 = a6;
  v114 = a3;
  v115 = a4;
  v113 = a2;
  v122 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v111 = *(v9 - 8);
  v112 = v9;
  v10 = *(v111 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v110 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v108 = *(v13 - 8);
  v109 = v13;
  v14 = *(v108 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v105 = &v89 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = *(v106 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v104 = &v89 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v99 = *(v100 - 1);
  v21 = *(v99 + 64);
  MEMORY[0x28223BE20](v100, v22);
  v98 = &v89 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v96 = *(v97 - 8);
  v24 = *(v96 + 64);
  MEMORY[0x28223BE20](v97, v25);
  v95 = &v89 - v26;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v91 = *(v92 - 8);
  v27 = *(v91 + 64);
  MEMORY[0x28223BE20](v92, v28);
  v90 = &v89 - v29;
  v30 = sub_23DB6EA8C();
  v121 = *(v30 - 8);
  v31 = v121[8];
  v33 = MEMORY[0x28223BE20](v30, v32);
  v102 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v120 = &v89 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v89 - v39;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  v41 = *(v103 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v103, v43);
  v45 = &v89 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  v51 = &v89 - v50;
  v52 = *(v8 + 48);
  v53 = *(v8 + 52);
  v54 = swift_allocObject();
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;
  v56 = MEMORY[0x277D84F90];
  *&v123 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC810, &unk_23DB7A670);
  sub_23DB6EECC();
  v57 = v54 + v55;
  v58 = v56;
  (*(v47 + 32))(v57, v51, v46);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  *&v123 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC820, &unk_23DB74E50);
  sub_23DB6EECC();
  (*(v41 + 32))(v54 + v59, v45, v103);
  v60 = v121 + 2;
  v61 = v121[2];
  v61(v40, v122, v30);
  v101 = v40;
  v103 = v30;
  v94 = v60;
  v93 = v61;
  v61(v120, v40, v30);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v123) = 0;
  v63 = v90;
  sub_23DB6EECC();
  v64 = *(v91 + 32);
  v65 = v63;
  v66 = v92;
  v64(v54 + v62, v63);
  if (v58 >> 62 && sub_23DB70C3C())
  {
    v67 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v67 = MEMORY[0x277D84FA0];
  }

  *(v54 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v67;
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v123 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v69 = v95;
  sub_23DB6EECC();
  (*(v96 + 32))(v54 + v68, v69, v97);
  *(v54 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v58;
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v123 = 0;
  v71 = v98;
  sub_23DB6EECC();
  (*(v99 + 32))(v54 + v70, v71, v100);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  (v64)(v54 + v72, v65, v66);
  v100 = v64;
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v99 = xmmword_23DB74320;
  v123 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v74 = v104;
  sub_23DB6EECC();
  v75 = v107;
  v76 = *(v106 + 32);
  v76(v54 + v73, v74, v107);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v123 = v99;
  sub_23DB6EECC();
  v76(v54 + v77, v74, v75);
  v78 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  v100(v54 + v78, v65, v66);
  v79 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  v80 = v105;
  sub_23DB6EECC();
  (*(v108 + 32))(v54 + v79, v80, v109);
  v81 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v123 = 0uLL;
  sub_23DB6EECC();
  v76(v54 + v81, v74, v75);
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v123 = nullsub_1;
  *(&v123 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v83 = v110;
  sub_23DB6EECC();
  (*(v111 + 32))(v54 + v82, v83, v112);
  v84 = v102;
  v85 = v120;
  v86 = v103;
  v93(v102, v120, v103);
  Page.init(id:title:text:subPages:iconName:)(v84, v113, v114, v115, v116, v117, v118, v119);
  v87 = v121[1];
  v87(v122, v86);
  v87(v85, v86);
  v87(v101, v86);
  return v54;
}

uint64_t sub_23DA2FBD8()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_23DA2FC98()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DA2FDC8()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t sub_23DA2FE3C()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t sub_23DA2FE94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA2FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v119 = a7;
  v120 = a8;
  v117 = a5;
  v118 = a6;
  v115 = a3;
  v116 = a4;
  v114 = a2;
  v125 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v112 = *(v10 - 8);
  v113 = v10;
  v11 = *(v112 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v111 = &v91 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v109 = *(v14 - 8);
  v110 = v14;
  v15 = *(v109 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v108 = &v91 - v17;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v105 = *(v106 - 1);
  v18 = *(v105 + 64);
  MEMORY[0x28223BE20](v106, v19);
  v104 = &v91 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v102 = *(v103 - 8);
  v21 = *(v102 + 64);
  MEMORY[0x28223BE20](v103, v22);
  v101 = &v91 - v23;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v93 = *(v96 - 8);
  v24 = *(v93 + 64);
  MEMORY[0x28223BE20](v96, v25);
  v92 = &v91 - v26;
  v27 = sub_23DB6EA8C();
  v123 = *(v27 - 8);
  v124 = v27;
  v28 = v123[8];
  v30 = MEMORY[0x28223BE20](v27, v29);
  v107 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v122 = &v91 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v121 = &v91 - v36;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD0, &qword_23DB75320);
  v37 = *(v95 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v95, v39);
  v41 = &v91 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v91 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48, v51);
  v53 = &v91 - v52;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__message;
  *&v126 = 0;
  *(&v126 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v55 = *(v49 + 32);
  v98 = v53;
  v100 = v48;
  v99 = v49 + 32;
  v97 = v55;
  v55(v9 + v54, v53, v48);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__contextualMenuButtons;
  v57 = MEMORY[0x277D84F90];
  *&v126 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC860, &unk_23DB74E80);
  sub_23DB6EECC();
  (*(v43 + 32))(v9 + v56, v47, v42);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__messageReaction;
  LOBYTE(v126) = 2;
  sub_23DB6EECC();
  (*(v37 + 32))(v9 + v58, v41, v95);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE340, &qword_23DB75330);
  swift_allocObject();
  *(v9 + v59) = sub_23DABD334(0, 0xE000000000000000);
  v60 = v124;
  v61 = v123 + 2;
  v62 = v123[2];
  v63 = v121;
  v62(v121, v125, v124);
  v95 = v61;
  v94 = v62;
  v62(v122, v63, v60);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v126) = 0;
  v65 = v92;
  sub_23DB6EECC();
  v66 = *(v93 + 32);
  v67 = v65;
  v68 = v96;
  v66(v9 + v64, v65);
  if (v57 >> 62 && sub_23DB70C3C())
  {
    v69 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v69 = MEMORY[0x277D84FA0];
  }

  *(v9 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v69;
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v126 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v71 = v101;
  sub_23DB6EECC();
  (*(v102 + 32))(v9 + v70, v71, v103);
  *(v9 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v57;
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v126 = 0;
  v73 = v104;
  sub_23DB6EECC();
  (*(v105 + 32))(v9 + v72, v73, v106);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v126) = 0;
  sub_23DB6EECC();
  (v66)(v9 + v74, v65, v68);
  v106 = v66;
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v105 = xmmword_23DB74320;
  v126 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v76 = v108;
  sub_23DB6EECC();
  v77 = v110;
  v78 = *(v109 + 32);
  v78(v9 + v75, v76, v110);
  v79 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v126 = v105;
  sub_23DB6EECC();
  v78(v9 + v79, v76, v77);
  v80 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v126) = 0;
  sub_23DB6EECC();
  v106(v9 + v80, v67, v68);
  v81 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v126 = 0;
  *(&v126 + 1) = 0xE000000000000000;
  v82 = v98;
  sub_23DB6EECC();
  v97(v9 + v81, v82, v100);
  v83 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v126 = 0uLL;
  sub_23DB6EECC();
  v78(v9 + v83, v76, v77);
  v84 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v126 = nullsub_1;
  *(&v126 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v85 = v111;
  sub_23DB6EECC();
  (*(v112 + 32))(v9 + v84, v85, v113);
  v86 = v107;
  v87 = v122;
  v88 = v124;
  v94(v107, v122, v124);
  Page.init(id:title:text:subPages:iconName:)(v86, v114, v115, v116, v117, v118, v119, v120);
  v89 = v123[1];
  v89(v125, v88);
  v89(v87, v88);
  v89(v121, v88);
  return v9;
}

uint64_t sub_23DA30A10()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__message;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__contextualMenuButtons;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__messageReaction;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD0, &qword_23DB75320);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
}

uint64_t sub_23DA30B2C()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__message;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__contextualMenuButtons;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__messageReaction;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD0, &qword_23DB75320);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t sub_23DA30CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = a7;
  v106 = a8;
  v103 = a5;
  v104 = a6;
  v101 = a3;
  v102 = a4;
  v100 = a2;
  v107 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v98 = *(v9 - 8);
  v99 = v9;
  v10 = *(v98 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v97 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v95 = *(v13 - 8);
  v96 = v13;
  v14 = *(v95 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v93 = &v77 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v90 = *(v94 - 8);
  v17 = *(v90 + 64);
  MEMORY[0x28223BE20](v94, v18);
  v89 = &v77 - v19;
  *&v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v82 = *(v83 - 8);
  v20 = *(v82 + 64);
  MEMORY[0x28223BE20](v83, v21);
  v81 = &v77 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v79 = *(v80 - 8);
  v23 = *(v79 + 64);
  MEMORY[0x28223BE20](v80, v24);
  v78 = &v77 - v25;
  v26 = sub_23DB6EA8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v86 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v77 - v34;
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v77 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v77 - v43;
  v45 = *(v8 + 48);
  v46 = *(v8 + 52);
  v47 = swift_allocObject();
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v108) = 0;
  sub_23DB6EECC();
  v49 = *(v40 + 32);
  v49(v47 + v48, v44, v39);
  v91 = v27;
  v50 = *(v27 + 16);
  v50(v38, v107, v26);
  v88 = v35;
  v87 = v38;
  v92 = v26;
  v85 = v27 + 16;
  v84 = v50;
  v50(v35, v38, v26);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v108) = 0;
  sub_23DB6EECC();
  v52 = v39;
  v53 = v49;
  v49(v47 + v51, v44, v39);
  v54 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v55 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v55 = MEMORY[0x277D84FA0];
  }

  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v55;
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v108 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v57 = v78;
  sub_23DB6EECC();
  (*(v79 + 32))(v47 + v56, v57, v80);
  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v54;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v108 = 0;
  v59 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v47 + v58, v59, v83);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v108) = 0;
  sub_23DB6EECC();
  v77 = v53;
  v53(v47 + v60, v44, v52);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v83 = xmmword_23DB74320;
  v108 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v62 = v89;
  sub_23DB6EECC();
  v63 = *(v90 + 32);
  v64 = v94;
  v63(v47 + v61, v62, v94);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v108 = v83;
  sub_23DB6EECC();
  v63(v47 + v65, v62, v64);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v108) = 0;
  sub_23DB6EECC();
  v77(v47 + v66, v44, v52);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v108 = 0;
  *(&v108 + 1) = 0xE000000000000000;
  v68 = v93;
  sub_23DB6EECC();
  (*(v95 + 32))(v47 + v67, v68, v96);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v108 = 0uLL;
  sub_23DB6EECC();
  v63(v47 + v69, v62, v64);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v108 = nullsub_1;
  *(&v108 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v71 = v97;
  sub_23DB6EECC();
  (*(v98 + 32))(v47 + v70, v71, v99);
  v72 = v86;
  v73 = v88;
  v74 = v92;
  v84(v86, v88, v92);
  Page.init(id:title:text:subPages:iconName:)(v72, v100, v101, v102, v103, v104, v105, v106);
  v75 = *(v91 + 8);
  v75(v107, v74);
  v75(v73, v74);
  v75(v87, v74);
  return v47;
}

uint64_t sub_23DA315B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = a7;
  v102 = a8;
  v99 = a5;
  v100 = a6;
  v97 = a3;
  v98 = a4;
  v96 = a2;
  v103 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = *(v94 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v93 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v91 = *(v13 - 8);
  v92 = v13;
  v14 = *(v91 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v89 = &v75 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v85 = *(v90 - 8);
  v17 = *(v85 + 8);
  MEMORY[0x28223BE20](v90, v18);
  v81 = &v75 - v19;
  *&v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v78 = *(v79 - 8);
  v20 = *(v78 + 64);
  MEMORY[0x28223BE20](v79, v21);
  v77 = &v75 - v22;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v75 = *(v76 - 8);
  v23 = *(v75 + 64);
  MEMORY[0x28223BE20](v76, v24);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v75 - v31;
  v33 = sub_23DB6EA8C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v84 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v75 - v41;
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v75 - v44;
  v46 = *(v8 + 48);
  v47 = *(v8 + 52);
  v48 = swift_allocObject();
  v88 = v34;
  v49 = *(v34 + 16);
  v49(v45, v103, v33);
  v86 = v45;
  v87 = v42;
  v80 = v33;
  v83 = v34 + 16;
  v82 = v49;
  v49(v42, v45, v33);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v104) = 0;
  sub_23DB6EECC();
  v51 = *(v28 + 32);
  v51(v48 + v50, v32, v27);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v104 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v75 + 32))(v48 + v54, v26, v76);
  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v52;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v104 = 0;
  v56 = v77;
  sub_23DB6EECC();
  (*(v78 + 32))(v48 + v55, v56, v79);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v104) = 0;
  sub_23DB6EECC();
  v58 = v27;
  v51(v48 + v57, v32, v27);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v79 = xmmword_23DB74320;
  v104 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v60 = v81;
  sub_23DB6EECC();
  v61 = *(v85 + 4);
  v85 = v51;
  v62 = v90;
  v61(v48 + v59, v60, v90);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v104 = v79;
  sub_23DB6EECC();
  v61(v48 + v63, v60, v62);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v104) = 0;
  sub_23DB6EECC();
  v85(v48 + v64, v32, v58);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v104 = 0;
  *(&v104 + 1) = 0xE000000000000000;
  v66 = v89;
  sub_23DB6EECC();
  (*(v91 + 32))(v48 + v65, v66, v92);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v104 = 0uLL;
  sub_23DB6EECC();
  v61(v48 + v67, v60, v62);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v104 = nullsub_1;
  *(&v104 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v69 = v93;
  sub_23DB6EECC();
  (*(v94 + 32))(v48 + v68, v69, v95);
  v70 = v84;
  v71 = v87;
  v72 = v80;
  v82(v84, v87, v80);
  Page.init(id:title:text:subPages:iconName:)(v70, v96, v97, v98, v99, v100, v101, v102);
  v73 = *(v88 + 8);
  v73(v103, v72);
  v73(v71, v72);
  v73(v86, v72);
  return v48;
}

uint64_t sub_23DA31E3C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_23DA31E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = a7;
  v106 = a8;
  v103 = a5;
  v104 = a6;
  v101 = a3;
  v102 = a4;
  v100 = a2;
  v107 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v98 = *(v9 - 8);
  v99 = v9;
  v10 = *(v98 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v97 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v95 = *(v13 - 8);
  v96 = v13;
  v14 = *(v95 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v93 = &v77 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v88 = *(v94 - 8);
  v17 = *(v88 + 8);
  MEMORY[0x28223BE20](v94, v18);
  v87 = &v77 - v19;
  *&v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v82 = *(v83 - 8);
  v20 = *(v82 + 64);
  MEMORY[0x28223BE20](v83, v21);
  v81 = &v77 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v79 = *(v80 - 8);
  v23 = *(v79 + 64);
  MEMORY[0x28223BE20](v80, v24);
  v78 = &v77 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v77 - v30;
  v32 = sub_23DB6EA8C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v32, v35);
  v89 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v77 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v77 - v43;
  v45 = *(v8 + 48);
  v46 = *(v8 + 52);
  v47 = swift_allocObject();
  v48 = (v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_header);
  *v48 = 0;
  v48[1] = 0xE000000000000000;
  v49 = MEMORY[0x277D84F90];
  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_bodyTexts) = MEMORY[0x277D84F90];
  v50 = (v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_textToFocus);
  *v50 = 0;
  v50[1] = 0xE000000000000000;
  v92 = v33;
  v51 = *(v33 + 16);
  v51(v44, v107, v32);
  v90 = v44;
  v91 = v41;
  v86 = v32;
  v85 = v33 + 16;
  v84 = v51;
  v51(v41, v44, v32);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v108) = 0;
  sub_23DB6EECC();
  v53 = *(v27 + 32);
  v54 = v26;
  v53(v47 + v52, v31, v26);
  if (v49 >> 62 && sub_23DB70C3C())
  {
    v55 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v55 = MEMORY[0x277D84FA0];
  }

  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v55;
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v108 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v57 = v78;
  sub_23DB6EECC();
  (*(v79 + 32))(v47 + v56, v57, v80);
  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v49;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v108 = 0;
  v59 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v47 + v58, v59, v83);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v108) = 0;
  sub_23DB6EECC();
  v53(v47 + v60, v31, v26);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v83 = xmmword_23DB74320;
  v108 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v62 = v87;
  sub_23DB6EECC();
  v63 = *(v88 + 4);
  v88 = v53;
  v64 = v94;
  v63(v47 + v61, v62, v94);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v108 = v83;
  sub_23DB6EECC();
  v63(v47 + v65, v62, v64);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v108) = 0;
  sub_23DB6EECC();
  v88(v47 + v66, v31, v54);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v108 = 0;
  *(&v108 + 1) = 0xE000000000000000;
  v68 = v93;
  sub_23DB6EECC();
  (*(v95 + 32))(v47 + v67, v68, v96);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v108 = 0uLL;
  sub_23DB6EECC();
  v63(v47 + v69, v62, v64);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v108 = nullsub_1;
  *(&v108 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v71 = v97;
  sub_23DB6EECC();
  (*(v98 + 32))(v47 + v70, v71, v99);
  v72 = v89;
  v73 = v91;
  v74 = v86;
  v84(v89, v91, v86);
  Page.init(id:title:text:subPages:iconName:)(v72, v100, v101, v102, v103, v104, v105, v106);
  v75 = *(v92 + 8);
  v75(v107, v74);
  v75(v73, v74);
  v75(v90, v74);
  return v47;
}

uint64_t sub_23DA32758()
{
  v1 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_header + 8);

  v2 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_bodyTexts);

  v3 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_textToFocus + 8);
}

uint64_t sub_23DA327B0()
{
  Page.Practice.deinit();
  v1 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_header + 8);

  v2 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_bodyTexts);

  v3 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_textToFocus + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t (*sub_23DA32888())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40738;
}

uint64_t (*sub_23DA3292C())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40310;
}

uint64_t sub_23DA32A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v112 = a7;
  v113 = a8;
  v110 = a5;
  v111 = a6;
  v108 = a3;
  v109 = a4;
  v107 = a2;
  v118 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v105 = *(v9 - 8);
  v106 = v9;
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v104 = &v83 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v99 = *(v100 - 1);
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v100, v14);
  v97 = &v83 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v94 = *(v95 - 8);
  v16 = *(v94 + 64);
  MEMORY[0x28223BE20](v95, v17);
  v92 = &v83 - v18;
  v19 = sub_23DB6EA8C();
  v116 = *(v19 - 8);
  v117 = v19;
  v20 = v116[8];
  v22 = MEMORY[0x28223BE20](v19, v21);
  v103 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v115 = &v83 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v114 = &v83 - v28;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v87 = *(v85 - 8);
  v29 = v87[8];
  MEMORY[0x28223BE20](v85, v30);
  v84 = &v83 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v83 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v83 - v42;
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonName;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v45 = *(v39 + 32);
  v45(v8 + v44, v43, v38);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonIconName;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v91 = v43;
  v96 = v38;
  v93 = v39 + 32;
  v90 = v45;
  v45(v8 + v46, v43, v38);
  v47 = v84;
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonEnabledAction;
  *&v119 = nullsub_1;
  *(&v119 + 1) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  sub_23DB6EECC();
  v50 = *(v33 + 32);
  v50(v8 + v48, v37, v32);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonDisabledAction;
  *&v119 = nullsub_1;
  *(&v119 + 1) = 0;
  v89 = v49;
  sub_23DB6EECC();
  v98 = v37;
  v101 = v33 + 32;
  v102 = v32;
  v88 = v50;
  v50(v8 + v51, v37, v32);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonPressed;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v53 = v87[4];
  v54 = v85;
  v53(v8 + v52, v47, v85);
  v55 = v117;
  v56 = v116 + 2;
  v57 = v116[2];
  v58 = v114;
  v57(v114, v118, v117);
  v87 = v56;
  v86 = v57;
  v57(v115, v58, v55);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v53(v8 + v59, v47, v54);
  v60 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v61 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v61 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v61;
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v119 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v63 = v92;
  sub_23DB6EECC();
  (*(v94 + 32))(v8 + v62, v63, v95);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v60;
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v119 = 0;
  v65 = v97;
  sub_23DB6EECC();
  (*(v99 + 32))(v8 + v64, v65, v100);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v53(v8 + v66, v47, v54);
  v100 = v53;
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v99 = xmmword_23DB74320;
  v119 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v68 = v104;
  sub_23DB6EECC();
  v69 = v106;
  v70 = *(v105 + 32);
  v70(v8 + v67, v68, v106);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v119 = v99;
  sub_23DB6EECC();
  v70(v8 + v71, v68, v69);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v100(v8 + v72, v47, v54);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  v74 = v91;
  sub_23DB6EECC();
  v90(v8 + v73, v74, v96);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v119 = 0uLL;
  sub_23DB6EECC();
  v70(v8 + v75, v68, v69);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v119 = nullsub_1;
  *(&v119 + 1) = 0;
  v77 = v98;
  sub_23DB6EECC();
  v88(v8 + v76, v77, v102);
  v78 = v103;
  v79 = v115;
  v80 = v117;
  v86(v103, v115, v117);
  Page.init(id:title:text:subPages:iconName:)(v78, v107, v108, v109, v110, v111, v112, v113);
  v81 = v116[1];
  v81(v118, v80);
  v81(v79, v80);
  v81(v114, v80);
  return v8;
}

uint64_t sub_23DA33438()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonIconName, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonEnabledAction;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonDisabledAction, v5);
  v7 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonPressed;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(*(v8 - 8) + 8);

  return v9(v0 + v7, v8);
}

uint64_t sub_23DA33594()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonName;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonIconName, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonEnabledAction;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonDisabledAction, v5);
  v7 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonPressed;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_23DA33760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v109 = a7;
  v110 = a8;
  v107 = a5;
  v108 = a6;
  v105 = a3;
  v106 = a4;
  v104 = a2;
  v114 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = *(v102 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v101 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = *(v99 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v94 = &v82 - v16;
  *&v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v92 = *(v96 - 8);
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](v96, v18);
  v90 = &v82 - v19;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v86 = *(v89 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x28223BE20](v89, v21);
  v85 = &v82 - v22;
  v23 = sub_23DB6EA8C();
  v112 = *(v23 - 8);
  v113 = v23;
  v24 = v112[8];
  v26 = MEMORY[0x28223BE20](v23, v25);
  v97 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v111 = &v82 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v82 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v82 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v82 - v44;
  v46 = *(v8 + 48);
  v47 = *(v8 + 52);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__readyToAdvance;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v50 = *(v41 + 32);
  v50(v48 + v49, v45, v40);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__currentGesture;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v52 = *(v35 + 32);
  v91 = v39;
  v95 = v34;
  v93 = v35 + 32;
  v83 = v52;
  v52(v48 + v51, v39, v34);
  v53 = v113;
  v54 = v112 + 2;
  v55 = v112[2];
  v55(v33, v114, v113);
  v98 = v33;
  v88 = v54;
  v87 = v55;
  v55(v111, v33, v53);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v57 = v40;
  v84 = v50;
  v50(v48 + v56, v45, v40);
  v58 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v59 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v59 = MEMORY[0x277D84FA0];
  }

  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v59;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v115 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v61 = v85;
  sub_23DB6EECC();
  (*(v86 + 32))(v48 + v60, v61, v89);
  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v58;
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v115 = 0;
  v63 = v90;
  sub_23DB6EECC();
  (*(v92 + 32))(v48 + v62, v63, v96);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v82 = v57;
  v65 = v84;
  v84(v48 + v64, v45, v57);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v96 = xmmword_23DB74320;
  v115 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v67 = v94;
  sub_23DB6EECC();
  v68 = v100;
  v69 = *(v99 + 32);
  v69(v48 + v66, v67, v100);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v115 = v96;
  sub_23DB6EECC();
  v69(v48 + v70, v67, v68);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v65(v48 + v71, v45, v82);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  v73 = v91;
  sub_23DB6EECC();
  v83(v48 + v72, v73, v95);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v115 = 0uLL;
  sub_23DB6EECC();
  v69(v48 + v74, v67, v68);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v115 = nullsub_1;
  *(&v115 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v76 = v101;
  sub_23DB6EECC();
  (*(v102 + 32))(v48 + v75, v76, v103);
  v77 = v97;
  v78 = v111;
  v79 = v113;
  v87(v97, v111, v113);
  Page.init(id:title:text:subPages:iconName:)(v77, v104, v105, v106, v107, v108, v109, v110);
  v80 = v112[1];
  v80(v114, v79);
  v80(v78, v79);
  v80(v98, v79);
  return v48;
}

uint64_t sub_23DA34088()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__readyToAdvance;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__currentGesture;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_23DA34148()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__readyToAdvance;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__currentGesture;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DA34264@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DB6EA8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23DA3432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v112 = a7;
  v113 = a8;
  v110 = a5;
  v111 = a6;
  v108 = a3;
  v109 = a4;
  v107 = a2;
  v116 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v105 = *(v9 - 8);
  v106 = v9;
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v104 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v102 = *(v13 - 8);
  v103 = v13;
  v14 = *(v102 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v100 = &v82 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v96 = *(v97 - 1);
  v17 = *(v96 + 64);
  MEMORY[0x28223BE20](v97, v18);
  v95 = &v82 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v92 = *(v94 - 8);
  v20 = *(v92 + 64);
  MEMORY[0x28223BE20](v94, v21);
  v90 = &v82 - v22;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v84 = *(v85 - 8);
  v23 = *(v84 + 64);
  MEMORY[0x28223BE20](v85, v24);
  v83 = &v82 - v25;
  v26 = sub_23DB6EA8C();
  v115 = *(v26 - 8);
  v27 = v115[8];
  v29 = MEMORY[0x28223BE20](v26, v28);
  v98 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v114 = &v82 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v82 - v35;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  v37 = *(v101 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v101, v39);
  v41 = &v82 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v82 - v46;
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationBody;
  *&v117 = 0;
  *(&v117 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v49 = *(v43 + 32);
  v49(v8 + v48, v47, v42);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationActions;
  *&v117 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC860, &unk_23DB74E80);
  sub_23DB6EECC();
  (*(v37 + 32))(v8 + v50, v41, v101);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationAppIcon;
  *&v117 = 0;
  *(&v117 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v89 = v47;
  v93 = v42;
  v91 = v43 + 32;
  v88 = v49;
  v49(v8 + v51, v47, v42);
  v52 = MEMORY[0x277D84F90];
  v53 = v115 + 2;
  v54 = v115[2];
  v54(v36, v116, v26);
  v99 = v36;
  v101 = v26;
  v87 = v53;
  v86 = v54;
  v54(v114, v36, v26);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v117) = 0;
  v56 = v83;
  sub_23DB6EECC();
  v57 = *(v84 + 32);
  v58 = v56;
  v59 = v85;
  v57(v8 + v55, v56);
  if (v52 >> 62 && sub_23DB70C3C())
  {
    v60 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v60 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v60;
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v117 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v62 = v90;
  sub_23DB6EECC();
  (*(v92 + 32))(v8 + v61, v62, v94);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v52;
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v117 = 0;
  v64 = v95;
  sub_23DB6EECC();
  (*(v96 + 32))(v8 + v63, v64, v97);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v117) = 0;
  sub_23DB6EECC();
  (v57)(v8 + v65, v56, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v96 = xmmword_23DB74320;
  v117 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v67 = v100;
  sub_23DB6EECC();
  v97 = v57;
  v68 = v103;
  v69 = *(v102 + 32);
  v69(v8 + v66, v67, v103);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v117 = v96;
  sub_23DB6EECC();
  v69(v8 + v70, v67, v68);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v117) = 0;
  sub_23DB6EECC();
  v97(v8 + v71, v58, v59);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v117 = 0;
  *(&v117 + 1) = 0xE000000000000000;
  v73 = v89;
  sub_23DB6EECC();
  v88(v8 + v72, v73, v93);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v117 = 0uLL;
  sub_23DB6EECC();
  v69(v8 + v74, v67, v68);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v117 = nullsub_1;
  *(&v117 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v76 = v104;
  sub_23DB6EECC();
  (*(v105 + 32))(v8 + v75, v76, v106);
  v77 = v98;
  v78 = v114;
  v79 = v101;
  v86(v98, v114, v101);
  Page.init(id:title:text:subPages:iconName:)(v77, v107, v108, v109, v110, v111, v112, v113);
  v80 = v115[1];
  v80(v116, v79);
  v80(v78, v79);
  v80(v99, v79);
  return v8;
}

uint64_t sub_23DA34D38()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationBody;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v2 - 8) + 8);
  (v7)((v2 - 8), v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationActions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationAppIcon;

  return v7(v5, v2);
}

uint64_t sub_23DA34E34()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationBody;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationActions;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationAppIcon, v2);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA34FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v109 = a7;
  v110 = a8;
  v107 = a5;
  v108 = a6;
  v105 = a3;
  v106 = a4;
  v104 = a2;
  v114 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v102 = *(v10 - 8);
  v103 = v10;
  v11 = *(v102 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v101 = &v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v98 = &v82 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v94 = *(v95 - 1);
  v18 = *(v94 + 64);
  MEMORY[0x28223BE20](v95, v19);
  v93 = &v82 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v88 = *(v89 - 8);
  v21 = *(v88 + 64);
  MEMORY[0x28223BE20](v89, v22);
  v84 = &v82 - v23;
  v24 = sub_23DB6EA8C();
  v112 = *(v24 - 8);
  v113 = v24;
  v25 = v112[8];
  v27 = MEMORY[0x28223BE20](v24, v26);
  v96 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v111 = &v82 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v82 - v33;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v35 = *(v83 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v83, v37);
  v39 = &v82 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v82 - v44;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__currentPhrase;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v47 = *(v41 + 32);
  v47(v8 + v46, v45, v40);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__backingPhrase;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v90 = v45;
  v92 = v40;
  v91 = v41 + 32;
  v85 = v47;
  v47(v8 + v48, v45, v40);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__textFieldPreviouslyGotInput;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v50 = *(v35 + 32);
  v51 = v83;
  v50(v8 + v49, v39, v83);
  v52 = v113;
  v53 = v112 + 2;
  v54 = v112[2];
  v54(v34, v114, v113);
  v97 = v34;
  v87 = v53;
  v86 = v54;
  v54(v111, v34, v52);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v56 = v51;
  v50(v9 + v55, v39, v51);
  v57 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v58 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v58 = MEMORY[0x277D84FA0];
  }

  v59 = v9;
  *(v9 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v58;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v115 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v61 = v84;
  sub_23DB6EECC();
  (*(v88 + 32))(v9 + v60, v61, v89);
  *(v9 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v57;
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v115 = 0;
  v63 = v93;
  sub_23DB6EECC();
  (*(v94 + 32))(v9 + v62, v63, v95);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v65 = v56;
  v50(v9 + v64, v39, v56);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v94 = xmmword_23DB74320;
  v115 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v67 = v98;
  sub_23DB6EECC();
  v95 = v50;
  v68 = v100;
  v69 = *(v99 + 32);
  v69(v59 + v66, v67, v100);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v115 = v94;
  sub_23DB6EECC();
  v69(v59 + v70, v67, v68);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v95(v59 + v71, v39, v65);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  v73 = v90;
  sub_23DB6EECC();
  v85(v59 + v72, v73, v92);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v115 = 0uLL;
  sub_23DB6EECC();
  v69(v59 + v74, v67, v68);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v115 = nullsub_1;
  *(&v115 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v76 = v101;
  sub_23DB6EECC();
  (*(v102 + 32))(v59 + v75, v76, v103);
  v77 = v96;
  v78 = v111;
  v79 = v113;
  v86(v96, v111, v113);
  Page.init(id:title:text:subPages:iconName:)(v77, v104, v105, v106, v107, v108, v109, v110);
  v80 = v112[1];
  v80(v114, v79);
  v80(v78, v79);
  v80(v97, v79);
  return v59;
}

uint64_t sub_23DA35938()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__currentPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__backingPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__textFieldPreviouslyGotInput;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_23DA35A28()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__currentPhrase;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__backingPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__textFieldPreviouslyGotInput;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA35B60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA35C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v118 = a7;
  v119 = a8;
  v116 = a5;
  v117 = a6;
  v114 = a3;
  v115 = a4;
  v113 = a2;
  v124 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v111 = *(v9 - 8);
  v112 = v9;
  v10 = *(v111 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v110 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v108 = *(v13 - 8);
  v109 = v13;
  v14 = *(v108 + 8);
  MEMORY[0x28223BE20](v13, v15);
  v107 = &v90 - v16;
  *&v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v103 = *(v104 - 8);
  v17 = *(v103 + 64);
  MEMORY[0x28223BE20](v104, v18);
  v102 = &v90 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v98 = *(v99 - 8);
  v20 = *(v98 + 64);
  MEMORY[0x28223BE20](v99, v21);
  v97 = &v90 - v22;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v94 = *(v93 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x28223BE20](v93, v24);
  v92 = &v90 - v25;
  v26 = sub_23DB6EA8C();
  v122 = *(v26 - 8);
  v123 = v26;
  v27 = v122[8];
  v29 = MEMORY[0x28223BE20](v26, v28);
  v105 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v121 = &v90 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v90 - v35;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v37 = *(v120 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v120, v39);
  v41 = &v90 - v40;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE0, &qword_23DB75338);
  v42 = *(v106 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v106, v44);
  v46 = &v90 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE8, &qword_23DB75340);
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47, v50);
  v52 = &v90 - v51;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__selectedMode;
  *&v125 = -1;
  type metadata accessor for AXSVoiceOverTouchTypingMode(0);
  sub_23DB6EECC();
  (*(v48 + 32))(v8 + v53, v52, v47);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__allModes;
  v55 = MEMORY[0x277D84F90];
  *&v125 = sub_23DB6BD6C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC988, &unk_23DB74F90);
  sub_23DB6EECC();
  (*(v42 + 32))(v8 + v54, v46, v106);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__pickerHeader;
  *&v125 = 0;
  *(&v125 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v57 = *(v37 + 32);
  v100 = v41;
  v101 = v37 + 32;
  v91 = v57;
  v57(v8 + v56, v41, v120);
  v58 = v123;
  v59 = v122 + 2;
  v60 = v122[2];
  v60(v36, v124, v123);
  v106 = v36;
  v61 = v93;
  v96 = v59;
  v95 = v60;
  v60(v121, v36, v58);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v125) = 0;
  v63 = v92;
  sub_23DB6EECC();
  v64 = *(v94 + 32);
  v65 = v63;
  v66 = v63;
  v67 = v61;
  v64(v8 + v62, v66, v61);
  if (v55 >> 62 && sub_23DB70C3C())
  {
    v68 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v68 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v68;
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v125 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v70 = v97;
  sub_23DB6EECC();
  (*(v98 + 32))(v8 + v69, v70, v99);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v55;
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v125 = 0;
  v72 = v102;
  sub_23DB6EECC();
  (*(v103 + 32))(v8 + v71, v72, v104);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v125) = 0;
  sub_23DB6EECC();
  v64(v8 + v73, v65, v67);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v104 = xmmword_23DB74320;
  v125 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v75 = v107;
  sub_23DB6EECC();
  v76 = *(v108 + 4);
  v108 = v64;
  v77 = v109;
  v76(v8 + v74, v75, v109);
  v78 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v125 = v104;
  sub_23DB6EECC();
  v76(v8 + v78, v75, v77);
  v79 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v125) = 0;
  sub_23DB6EECC();
  v108(v8 + v79, v65, v67);
  v80 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v125 = 0;
  *(&v125 + 1) = 0xE000000000000000;
  v81 = v100;
  sub_23DB6EECC();
  v91(v8 + v80, v81, v120);
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v125 = 0uLL;
  sub_23DB6EECC();
  v76(v8 + v82, v75, v77);
  v83 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v125 = nullsub_1;
  *(&v125 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v84 = v110;
  sub_23DB6EECC();
  (*(v111 + 32))(v8 + v83, v84, v112);
  v85 = v105;
  v86 = v121;
  v87 = v123;
  v95(v105, v121, v123);
  Page.init(id:title:text:subPages:iconName:)(v85, v113, v114, v115, v116, v117, v118, v119);
  v88 = v122[1];
  v88(v124, v87);
  v88(v86, v87);
  v88(v106, v87);
  return v8;
}

uint64_t sub_23DA366CC()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__selectedMode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE8, &qword_23DB75340);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__allModes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE0, &qword_23DB75338);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__pickerHeader;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

uint64_t sub_23DA367D8()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__selectedMode;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE8, &qword_23DB75340);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__allModes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE0, &qword_23DB75338);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__pickerHeader;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_23DA36954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v117 = a7;
  v118 = a8;
  v115 = a5;
  v116 = a6;
  v113 = a3;
  v114 = a4;
  v112 = a2;
  v121 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v110 = *(v9 - 8);
  v111 = v9;
  v10 = *(v110 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v109 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v107 = *(v13 - 8);
  v108 = v13;
  v14 = *(v107 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v105 = &v87 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v101 = *(v102 - 1);
  v17 = *(v101 + 64);
  MEMORY[0x28223BE20](v102, v18);
  v100 = &v87 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v95 = *(v96 - 8);
  v20 = *(v95 + 64);
  MEMORY[0x28223BE20](v96, v21);
  v94 = &v87 - v22;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v89 = *(v90 - 8);
  v23 = *(v89 + 64);
  MEMORY[0x28223BE20](v90, v24);
  v88 = &v87 - v25;
  v26 = sub_23DB6EA8C();
  v120 = *(v26 - 8);
  v27 = v120[8];
  v29 = MEMORY[0x28223BE20](v26, v28);
  v103 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v119 = &v87 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v87 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v87 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v87 - v47;
  v49 = *(v8 + 48);
  v50 = *(v8 + 52);
  v51 = swift_allocObject();
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  *&v122 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  (*(v44 + 32))(v51 + v52, v48, v43);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v122 = 0;
  *(&v122 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v54 = *(v38 + 32);
  v97 = v42;
  v99 = v37;
  v55 = v37;
  v56 = v88;
  v98 = v38 + 32;
  v91 = v54;
  v54(v51 + v53, v42, v55);
  v57 = v120 + 2;
  v58 = v120[2];
  v58(v36, v121, v26);
  v104 = v36;
  v106 = v26;
  v93 = v57;
  v92 = v58;
  v58(v119, v36, v26);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v122) = 0;
  sub_23DB6EECC();
  v60 = *(v89 + 32);
  v61 = v56;
  v62 = v56;
  v63 = MEMORY[0x277D84F90];
  v64 = v90;
  v60(v51 + v59, v62);
  if (v63 >> 62 && sub_23DB70C3C())
  {
    v65 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v65 = MEMORY[0x277D84FA0];
  }

  *(v51 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v65;
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v122 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v67 = v94;
  sub_23DB6EECC();
  (*(v95 + 32))(v51 + v66, v67, v96);
  *(v51 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v63;
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v122 = 0;
  v69 = v100;
  sub_23DB6EECC();
  (*(v101 + 32))(v51 + v68, v69, v102);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v122) = 0;
  sub_23DB6EECC();
  (v60)(v51 + v70, v61, v64);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v101 = xmmword_23DB74320;
  v122 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v72 = v105;
  sub_23DB6EECC();
  v102 = v60;
  v73 = v108;
  v74 = *(v107 + 32);
  v74(v51 + v71, v72, v108);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v122 = v101;
  sub_23DB6EECC();
  v74(v51 + v75, v72, v73);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v122) = 0;
  sub_23DB6EECC();
  v102(v51 + v76, v61, v64);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v122 = 0;
  *(&v122 + 1) = 0xE000000000000000;
  v78 = v97;
  sub_23DB6EECC();
  v91(v51 + v77, v78, v99);
  v79 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v122 = 0uLL;
  sub_23DB6EECC();
  v74(v51 + v79, v72, v73);
  v80 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v122 = nullsub_1;
  *(&v122 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v81 = v109;
  sub_23DB6EECC();
  (*(v110 + 32))(v51 + v80, v81, v111);
  v82 = v103;
  v83 = v119;
  v84 = v106;
  v92(v103, v119, v106);
  Page.init(id:title:text:subPages:iconName:)(v82, v112, v113, v114, v115, v116, v117, v118);
  v85 = v120[1];
  v85(v121, v84);
  v85(v83, v84);
  v85(v104, v84);
  return v51;
}

uint64_t sub_23DA3733C()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_23DA373FC()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DA37518()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_23DB70E0C();
  sub_23DB7091C();
  sub_23DB7015C();
  sub_23DB70E2C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA37594()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_23DB7091C();
  sub_23DB7015C();
  return sub_23DB70E2C();
}

uint64_t sub_23DA375E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_23DB70E0C();
  sub_23DB7091C();
  sub_23DB7015C();
  sub_23DB70E2C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA3765C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_23DB70DBC(), result = 0, (v7 & 1) != 0))
  {
    if (sub_23DB7010C())
    {
      return v3 ^ v5 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23DA376F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = a7;
  v112 = a8;
  v109 = a5;
  v110 = a6;
  v107 = a3;
  v108 = a4;
  v106 = a2;
  v114 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v103 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = *(v101 + 8);
  MEMORY[0x28223BE20](v13, v15);
  v97 = &v81 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v95 = *(v92 - 8);
  v17 = *(v95 + 64);
  MEMORY[0x28223BE20](v92, v18);
  v94 = &v81 - v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v86 = *(v87 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x28223BE20](v87, v21);
  v85 = &v81 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v82 = *(v83 - 8);
  v23 = *(v82 + 64);
  MEMORY[0x28223BE20](v83, v24);
  v81 = &v81 - v25;
  v26 = sub_23DB6EA8C();
  v113 = *(v26 - 8);
  v27 = v113[8];
  v29 = MEMORY[0x28223BE20](v26, v28);
  v96 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v81 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v81 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v81 - v42;
  v44 = *(v8 + 48);
  v45 = *(v8 + 52);
  v46 = swift_allocObject();
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__verticalScrollViewLabel;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v48 = *(v39 + 32);
  v48(v46 + v47, v43, v38);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__horizontalScrollViewLabel;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v90 = v43;
  v93 = v38;
  v91 = v39 + 32;
  v84 = v48;
  v48(v46 + v49, v43, v38);
  v50 = v113 + 2;
  v51 = v113[2];
  v51(v37, v114, v26);
  v98 = v37;
  v99 = v34;
  v100 = v26;
  v89 = v50;
  v88 = v51;
  v51(v34, v37, v26);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v115) = 0;
  v53 = v81;
  sub_23DB6EECC();
  v54 = *(v82 + 32);
  v55 = v53;
  v56 = v53;
  v57 = v83;
  v54(v46 + v52, v56);
  v58 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v59 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v59 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v59;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v115 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v61 = v85;
  sub_23DB6EECC();
  (*(v86 + 32))(v46 + v60, v61, v87);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v58;
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v115 = 0;
  v63 = v94;
  sub_23DB6EECC();
  (*(v95 + 32))(v46 + v62, v63, v92);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  (v54)(v46 + v64, v55, v57);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v95 = xmmword_23DB74320;
  v115 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v66 = v97;
  sub_23DB6EECC();
  v67 = *(v101 + 4);
  v101 = v54;
  v68 = v102;
  v67(v46 + v65, v66, v102);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v115 = v95;
  sub_23DB6EECC();
  v67(v46 + v69, v66, v68);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v101(v46 + v70, v55, v57);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  v72 = v90;
  sub_23DB6EECC();
  v84(v46 + v71, v72, v93);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v115 = 0uLL;
  sub_23DB6EECC();
  v67(v46 + v73, v66, v68);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v115 = nullsub_1;
  *(&v115 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v75 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v46 + v74, v75, v105);
  v76 = v96;
  v78 = v99;
  v77 = v100;
  v88(v96, v99, v100);
  Page.init(id:title:text:subPages:iconName:)(v76, v106, v107, v108, v109, v110, v111, v112);
  v79 = v113[1];
  v79(v114, v77);
  v79(v78, v77);
  v79(v98, v77);
  return v46;
}

uint64_t sub_23DA38028()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__verticalScrollViewLabel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__horizontalScrollViewLabel;

  return v5(v3, v2);
}

uint64_t sub_23DA380D8()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__verticalScrollViewLabel;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__horizontalScrollViewLabel, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_23DA381D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = a7;
  v112 = a8;
  v109 = a5;
  v110 = a6;
  v107 = a3;
  v108 = a4;
  v106 = a2;
  v114 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v103 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = *(v101 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v99 = &v83 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v98 = *(v100 - 8);
  v17 = *(v98 + 64);
  MEMORY[0x28223BE20](v100, v18);
  v96 = &v83 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v91 = *(v92 - 1);
  v20 = *(v91 + 64);
  MEMORY[0x28223BE20](v92, v21);
  v90 = &v83 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v86 = *(v87 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v87, v24);
  v85 = &v83 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v26 = *(v84 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v84, v28);
  v30 = &v83 - v29;
  v31 = sub_23DB6EA8C();
  v113 = *(v31 - 8);
  v32 = v113[8];
  v34 = MEMORY[0x28223BE20](v31, v33);
  v93 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v83 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v83 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB08, &unk_23DB7AC00);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v83 - v47;
  v49 = *(v8 + 48);
  v50 = *(v8 + 52);
  v51 = swift_allocObject();
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeVOGrid__matrix;
  *&v115 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC9F0, &unk_23DB74FE0);
  sub_23DB6EECC();
  (*(v44 + 32))(v51 + v52, v48, v43);
  v53 = v113 + 2;
  v54 = v113[2];
  v54(v42, v114, v31);
  v95 = v39;
  v94 = v42;
  v55 = v84;
  v97 = v31;
  v89 = v53;
  v88 = v54;
  v54(v39, v42, v31);
  v56 = MEMORY[0x277D84F90];
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v58 = *(v26 + 32);
  v59 = v30;
  v60 = v55;
  v58(v51 + v57, v30, v55);
  if (v56 >> 62 && sub_23DB70C3C())
  {
    v61 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v61 = MEMORY[0x277D84FA0];
  }

  *(v51 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v61;
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v115 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v63 = v85;
  sub_23DB6EECC();
  (*(v86 + 32))(v51 + v62, v63, v87);
  *(v51 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v56;
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v115 = 0;
  v65 = v90;
  sub_23DB6EECC();
  (*(v91 + 32))(v51 + v64, v65, v92);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v58(v51 + v66, v59, v55);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v91 = xmmword_23DB74320;
  v115 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v92 = v58;
  v68 = v96;
  sub_23DB6EECC();
  v69 = *(v98 + 32);
  v70 = v100;
  v69(v51 + v67, v68, v100);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v115 = v91;
  sub_23DB6EECC();
  v69(v51 + v71, v68, v70);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v92(v51 + v72, v59, v60);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  v74 = v99;
  sub_23DB6EECC();
  (*(v101 + 32))(v51 + v73, v74, v102);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v115 = 0uLL;
  sub_23DB6EECC();
  v69(v51 + v75, v68, v70);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v115 = nullsub_1;
  *(&v115 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v77 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v51 + v76, v77, v105);
  v78 = v93;
  v79 = v95;
  v80 = v97;
  v88(v93, v95, v97);
  Page.init(id:title:text:subPages:iconName:)(v78, v106, v107, v108, v109, v110, v111, v112);
  v81 = v113[1];
  v81(v114, v80);
  v81(v79, v80);
  v81(v94, v80);
  return v51;
}

uint64_t sub_23DA38B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v110 = a7;
  v111 = a8;
  v108 = a5;
  v109 = a6;
  v106 = a3;
  v107 = a4;
  v105 = a2;
  v112 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v103 = *(v9 - 8);
  v104 = v9;
  v10 = *(v103 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v102 = &v79 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v96 = *(v101 - 8);
  v13 = *(v96 + 8);
  MEMORY[0x28223BE20](v101, v14);
  v94 = &v79 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v93 = *(v90 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v90, v17);
  v92 = &v79 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v84 = *(v85 - 8);
  v19 = *(v84 + 64);
  MEMORY[0x28223BE20](v85, v20);
  v83 = &v79 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v22 = *(v81 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v81, v24);
  v80 = &v79 - v25;
  v26 = sub_23DB6EA8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v95 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v79 - v34;
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v79 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v79 - v43;
  v45 = *(v8 + 48);
  v46 = *(v8 + 52);
  v47 = swift_allocObject();
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOSingleButton__buttonName;
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v49 = *(v40 + 32);
  v86 = v44;
  v50 = v44;
  v51 = v80;
  v91 = v39;
  v87 = v40 + 32;
  v82 = v49;
  v49(v47 + v48, v50, v39);
  v99 = v27;
  v52 = *(v27 + 16);
  v52(v38, v112, v26);
  v97 = v38;
  v98 = v35;
  v100 = v26;
  v89 = v27 + 16;
  v88 = v52;
  v52(v35, v38, v26);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v54 = *(v22 + 32);
  v55 = v81;
  v54(v47 + v53, v51);
  v56 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v113 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v83;
  sub_23DB6EECC();
  (*(v84 + 32))(v47 + v58, v59, v85);
  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v56;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v113 = 0;
  v61 = v92;
  sub_23DB6EECC();
  (*(v93 + 32))(v47 + v60, v61, v90);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  (v54)(v47 + v62, v51, v55);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v93 = xmmword_23DB74320;
  v113 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v64 = v94;
  sub_23DB6EECC();
  v65 = *(v96 + 4);
  v96 = v54;
  v66 = v101;
  v65(v47 + v63, v64, v101);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v113 = v93;
  sub_23DB6EECC();
  v65(v47 + v67, v64, v66);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v96(v47 + v68, v51, v55);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  v70 = v86;
  sub_23DB6EECC();
  v82(v47 + v69, v70, v91);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v113 = 0uLL;
  sub_23DB6EECC();
  v65(v47 + v71, v64, v66);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v113 = nullsub_1;
  *(&v113 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v73 = v102;
  sub_23DB6EECC();
  (*(v103 + 32))(v47 + v72, v73, v104);
  v74 = v95;
  v75 = v98;
  v76 = v100;
  v88(v95, v98, v100);
  Page.init(id:title:text:subPages:iconName:)(v74, v105, v106, v107, v108, v109, v110, v111);
  v77 = *(v99 + 8);
  v77(v112, v76);
  v77(v75, v76);
  v77(v97, v76);
  return v47;
}

uint64_t sub_23DA394C0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = *(*(v5 - 8) + 8);

  return v6(v3 + v4, v5);
}

uint64_t sub_23DA39544(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  Page.Practice.deinit();
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = *(*v3 + 48);
  v10 = *(*v3 + 52);

  return MEMORY[0x2821FE8D8](v3, v9, v10);
}

float sub_23DA39620()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA396A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA3977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  a9(a1, a2, a3, a4, a5, a6, a7, a8);
  return v20;
}

uint64_t sub_23DA3981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v116 = a7;
  v117 = a8;
  v114 = a5;
  v115 = a6;
  v112 = a3;
  v113 = a4;
  v111 = a2;
  v121 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v109 = *(v10 - 8);
  v110 = v10;
  v11 = *(v109 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v108 = v92 - v13;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v105 = *(v106 - 1);
  v14 = *(v105 + 64);
  MEMORY[0x28223BE20](v106, v15);
  v104 = v92 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v102 = *(v103 - 8);
  v17 = *(v102 + 64);
  MEMORY[0x28223BE20](v103, v18);
  v101 = v92 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v126 = *(v96 - 8);
  v20 = *(v126 + 64);
  MEMORY[0x28223BE20](v96, v21);
  v95 = v92 - v22;
  v120 = sub_23DB6EA8C();
  v124 = *(v120 - 8);
  v23 = v124[8];
  v25 = MEMORY[0x28223BE20](v120, v24);
  v107 = v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v123 = v92 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v122 = v92 - v31;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v125 = *(v119 - 8);
  v32 = *(v125 + 64);
  MEMORY[0x28223BE20](v119, v33);
  v118 = v92 - v34;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF0, &qword_23DB75348);
  v35 = *(v100 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v100, v37);
  v39 = v92 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v45 = v92 - v44;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderName;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v47 = *(v41 + 32);
  v47(v9 + v46, v45, v40);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderValue;
  LODWORD(v127) = 1112014848;
  sub_23DB6EECC();
  v49 = *(v35 + 32);
  v50 = v100;
  v49(v9 + v48, v39, v100);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderUpdatedValue;
  LODWORD(v127) = 1112014848;
  sub_23DB6EECC();
  v49(v9 + v51, v39, v50);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderExplanation;
  v127 = 0uLL;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v54 = v118;
  v94 = v53;
  sub_23DB6EECC();
  v55 = *(v125 + 32);
  v125 += 32;
  v93 = v55;
  v55(v9 + v52, v54, v119);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderAccessibilityValueTemplate;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v47(v9 + v56, v45, v40);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMinLabel;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v47(v9 + v57, v45, v40);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMaxLabel;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v97 = v45;
  v100 = v40;
  v99 = v41 + 32;
  v98 = v47;
  v47(v9 + v58, v45, v40);
  v59 = v124 + 2;
  v60 = v124[2];
  v61 = v122;
  v62 = v120;
  v60(v122, v121, v120);
  v92[1] = v59;
  v92[0] = v60;
  v60(v123, v61, v62);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v127) = 0;
  v64 = v95;
  sub_23DB6EECC();
  v65 = *(v126 + 32);
  v66 = v9;
  v67 = v64;
  v68 = v96;
  v126 += 32;
  v65(v9 + v63, v64);
  v69 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v70 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v70 = MEMORY[0x277D84FA0];
  }

  *(v66 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v70;
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v127 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v72 = v101;
  sub_23DB6EECC();
  (*(v102 + 32))(v66 + v71, v72, v103);
  *(v66 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v69;
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v127 = 0;
  v74 = v104;
  sub_23DB6EECC();
  (*(v105 + 32))(v66 + v73, v74, v106);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v127) = 0;
  sub_23DB6EECC();
  (v65)(v66 + v75, v67, v68);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v105 = xmmword_23DB74320;
  v127 = xmmword_23DB74320;
  v77 = v118;
  v106 = v65;
  sub_23DB6EECC();
  v78 = v119;
  v79 = v93;
  v93(v66 + v76, v77, v119);
  v80 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v127 = v105;
  sub_23DB6EECC();
  v79(v66 + v80, v77, v78);
  v81 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v127) = 0;
  sub_23DB6EECC();
  v106(v66 + v81, v67, v68);
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  v83 = v97;
  sub_23DB6EECC();
  v98(v66 + v82, v83, v100);
  v84 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v127 = 0uLL;
  sub_23DB6EECC();
  v79(v66 + v84, v77, v78);
  v85 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v127 = nullsub_1;
  *(&v127 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v86 = v108;
  sub_23DB6EECC();
  (*(v109 + 32))(v66 + v85, v86, v110);
  v87 = v107;
  v88 = v123;
  v89 = v120;
  (v92[0])(v107, v123, v120);
  Page.init(id:title:text:subPages:iconName:)(v87, v111, v112, v113, v114, v115, v116, v117);
  v90 = v124[1];
  v90(v121, v89);
  v90(v88, v89);
  v90(v122, v89);
  return v66;
}

uint64_t sub_23DA3A33C()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v10 = *(*(v2 - 8) + 8);
  (v10)((v2 - 8), v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderValue;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF0, &qword_23DB75348);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderUpdatedValue, v4);
  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderExplanation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v10(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderAccessibilityValueTemplate, v2);
  v10(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMinLabel, v2);
  v8 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMaxLabel;

  return (v10)(v8, v2);
}

uint64_t sub_23DA3A4EC()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderName;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderValue;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF0, &qword_23DB75348);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderUpdatedValue, v5);
  v7 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderExplanation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderAccessibilityValueTemplate, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMinLabel, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMaxLabel, v2);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_23DA3A6E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DA3A774(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA3A850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_23DA3A8E0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23DB70DBC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_23DB70DBC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v9 = *(type metadata accessor for KeyboardKey(0) + 28);

  return sub_23DB6EA6C();
}

uint64_t _s28AccessibilitySharedUISupport17CommandToPracticeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyboardKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v34[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB50, &qword_23DB76A68);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v34[-v18];
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23DB70DBC() & 1) == 0)
  {
    return 0;
  }

  v38 = *(a1 + 16);
  v37 = *(a2 + 16);
  if ((_s28AccessibilitySharedUISupport11CommandTypeO2eeoiySbAC_ACtFZ_0(&v38, &v37) & 1) == 0)
  {
    return 0;
  }

  v36 = *(a1 + 17);
  v35 = *(a2 + 17);
  if ((_s28AccessibilitySharedUISupport11CommandTypeO2eeoiySbAC_ACtFZ_0(&v36, &v35) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  if (*(a1 + 19) != *(a2 + 19))
  {
    return 0;
  }

  v20 = type metadata accessor for CommandToPractice(0);
  v21 = v20[9];
  if ((sub_23DB6EA6C() & 1) == 0 || *(a1 + v20[10]) != *(a2 + v20[10]) || *(a1 + v20[11]) != *(a2 + v20[11]))
  {
    return 0;
  }

  v22 = v20[12];
  v23 = *(v15 + 48);
  sub_23DA0E2B4(a1 + v22, v19, &qword_27E2FC4F0, &qword_23DB74AB8);
  v24 = a2 + v22;
  v25 = v23;
  sub_23DA0E2B4(v24, &v19[v23], &qword_27E2FC4F0, &qword_23DB74AB8);
  v26 = *(v5 + 48);
  if (v26(v19, 1, v4) != 1)
  {
    sub_23DA0E2B4(v19, v14, &qword_27E2FC4F0, &qword_23DB74AB8);
    if (v26(&v19[v25], 1, v4) != 1)
    {
      sub_23DA40668(&v19[v25], v9);
      v28 = sub_23DA3A8E0(v14, v9);
      sub_23DA4060C(v9);
      sub_23DA4060C(v14);
      sub_23DA17988(v19, &qword_27E2FC4F0, &qword_23DB74AB8);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    sub_23DA4060C(v14);
LABEL_16:
    sub_23DA17988(v19, &qword_27E2FCB50, &qword_23DB76A68);
    return 0;
  }

  if (v26(&v19[v25], 1, v4) != 1)
  {
    goto LABEL_16;
  }

  sub_23DA17988(v19, &qword_27E2FC4F0, &qword_23DB74AB8);
LABEL_20:
  v29 = v20[13];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33 && (*v30 == *v32 && v31 == v33 || (sub_23DB70DBC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v33)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_23DA3AD70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1496))();
  *a2 = result;
  return result;
}

uint64_t sub_23DA3ADC4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 1504);

  return v3(v4);
}

uint64_t sub_23DA3AE40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23DA3AE98(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23DB70C3C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB38, &qword_23DB76A60);
      result = sub_23DB70CCC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_23DB70C3C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x23EEF70C0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_23DB6EE4C();
    sub_23DA3AE40(&qword_27E2FCB40, MEMORY[0x277CBCDA8]);
    result = sub_23DB7082C();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_23DA3AE40(&qword_27E2FCB48, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_23DB7086C();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_23DA3B1C0()
{
  result = qword_27E2FC498;
  if (!qword_27E2FC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC498);
  }

  return result;
}

uint64_t sub_23DA3B2B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_23DA3B644@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_23DA3B6F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_23DA3B7F4()
{
  v0 = sub_23DB6EA8C();
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_23DA3F3D4(319, &qword_27E2FC4B8, &qword_27E2FC358, &qword_23DB74690);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
      if (v6 <= 0x3F)
      {
        v15 = *(v5 - 8) + 64;
        sub_23DA3F3D4(319, &qword_27E2FC4C0, &qword_27E2FC2F8, &qword_23DB74470);
        if (v8 <= 0x3F)
        {
          v16 = *(v7 - 8) + 64;
          sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
          if (v10 <= 0x3F)
          {
            v11 = *(v9 - 8) + 64;
            sub_23DA3F3D4(319, &qword_27E2FC4C8, &qword_27E2FC370, &qword_23DB74698);
            if (v13 <= 0x3F)
            {
              v17 = *(v12 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23DA3CA1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23DB6EA8C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23DA3CB60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23DB6EA8C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23DA3CCB0()
{
  sub_23DB6EA8C();
  if (v0 <= 0x3F)
  {
    sub_23DA3DAF4(319, &qword_27E2FC508, type metadata accessor for KeyboardKey, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23DA3FC58(319, &qword_27E2FC298, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DA3CDFC()
{
  sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_23DA3F3D4(319, &qword_27E2FC520, &qword_27E2FC3F0, &unk_23DB74790);
    if (v4 <= 0x3F)
    {
      v14 = *(v3 - 8) + 64;
      sub_23DA3FC58(319, &qword_27E2FBFA8, MEMORY[0x277D83B88], MEMORY[0x277CBCED0]);
      if (v6 <= 0x3F)
      {
        v15 = *(v5 - 8) + 64;
        sub_23DA3F3D4(319, &qword_27E2FC4B8, &qword_27E2FC358, &qword_23DB74690);
        if (v8 <= 0x3F)
        {
          v9 = *(v7 - 8) + 64;
          sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
          if (v11 <= 0x3F)
          {
            v16 = *(v10 - 8) + 64;
            sub_23DA3F3D4(319, &qword_27E2FC528, &qword_27E2FC428, &unk_23DB7A330);
            if (v13 <= 0x3F)
            {
              v17 = *(v12 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23DA3D5AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23DA3D5F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23DA3D744()
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DA3D84C()
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23DA3F3D4(319, &qword_27E2FC630, &qword_27E2FC638, &qword_23DB779A0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3DA30()
{
  sub_23DA3DAF4(319, &qword_27E2FC698, sub_23DA3DB58, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DA3DAF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23DA3DB58()
{
  result = qword_27E2FC6A0;
  if (!qword_27E2FC6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FC6A0);
  }

  return result;
}

uint64_t sub_23DA3DBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23DA3DCC4()
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DA3DE10()
{
  sub_23DA3F3D4(319, &qword_27E2FC528, &qword_27E2FC428, &unk_23DB7A330);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3E040()
{
  sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23DA3F3D4(319, &qword_27E2FC528, &qword_27E2FC428, &unk_23DB7A330);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_23DA3E22C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23DB6EA8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DA3E2EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23DB6EA8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DA3E390()
{
  result = sub_23DB6EA8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23DA3E434()
{
  sub_23DA3F3D4(319, &qword_27E2FC7B8, &qword_27E2FC7C0, &unk_23DB7E2F0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v12 <= 0x3F)
  {
    v15 = *(v11 - 8) + 64;
    v13 = a7(319, a4, a5, a6);
    if (v14 <= 0x3F)
    {
      v16 = *(v13 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3E6E4()
{
  sub_23DA3F3D4(319, &qword_27E2FC808, &qword_27E2FC810, &unk_23DB7A670);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23DA3F3D4(319, &qword_27E2FC818, &qword_27E2FC820, &unk_23DB74E50);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3E804()
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23DA3F3D4(319, &qword_27E2FC858, &qword_27E2FC860, &unk_23DB74E80);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23DA3FC58(319, &qword_27E2FC868, &type metadata for MessageReaction, MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DA3EADC()
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23DA3F3D4(319, &qword_27E2FC528, &qword_27E2FC428, &unk_23DB7A330);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DA3EC68()
{
  sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3EDA0()
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_23DA3F3D4(319, &qword_27E2FC858, &qword_27E2FC860, &unk_23DB74E80);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3EECC()
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3F004()
{
  sub_23DA3DAF4(319, &qword_27E2FC978, type metadata accessor for AXSVoiceOverTouchTypingMode, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23DA3F3D4(319, &qword_27E2FC980, &qword_27E2FC988, &unk_23DB74F90);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DA3F19C()
{
  sub_23DA3F3D4(319, &qword_27E2FC7B8, &qword_27E2FC7C0, &unk_23DB7E2F0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3F2C8()
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DA3F3D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23DB6EF2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23DA3F478()
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_23DA3FC58(319, &qword_27E2FCA58, MEMORY[0x277D83A90], MEMORY[0x277CBCED0]);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_23DA3F3D4(319, &qword_27E2FC4B8, &qword_27E2FC358, &qword_23DB74690);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_23DA3F5E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_23DA3F628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageReaction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageReaction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23DA3F7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB6EA8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23DA3F8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23DB6EA8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23DA3F9AC()
{
  sub_23DB6EA8C();
  if (v0 <= 0x3F)
  {
    sub_23DA3FC58(319, &qword_27E2FC298, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23DA184C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23DA3FABC()
{
  result = sub_23DB6EA8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23DA3FB88()
{
  sub_23DA184C8();
  if (v0 <= 0x3F)
  {
    sub_23DA3FC58(319, &qword_27E2FCA90, &type metadata for NavigationDirection, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23DB6EA8C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DA3FC58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_8823Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23DB6EA8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_8824Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23DB6EA8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DA3FE20()
{
  sub_23DA3FC58(319, &qword_27E2FC298, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23DB6EA8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23DA3FF6C()
{
  result = qword_27E2FCAB8;
  if (!qword_27E2FCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCAB8);
  }

  return result;
}

unint64_t sub_23DA3FFC4()
{
  result = qword_27E2FCAC0;
  if (!qword_27E2FCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCAC0);
  }

  return result;
}

uint64_t sub_23DA40018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB00, &qword_23DB75358);
    v3 = sub_23DB70CCC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_23DB70E0C();

      sub_23DB7091C();
      result = sub_23DB70E4C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_23DB70DBC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_23DA402D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_23DA40598()
{
  result = qword_27E2FCB30;
  if (!qword_27E2FCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCB30);
  }

  return result;
}

uint64_t sub_23DA4060C(uint64_t a1)
{
  v2 = type metadata accessor for KeyboardKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DA40668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyboardKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA40790@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CommandToPractice(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v20 = v3;
    v21 = a1;
    v13 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

    v15 = 0;
    while (v15 < *(v11 + 16))
    {
      sub_23DA52A58(v13 + *(v4 + 72) * v15, v8, type metadata accessor for CommandToPractice);
      v17 = v8[16];
      if (v17 < 0)
      {
        v22 = v17 & 0x7F;
        if (VCCommandIdentifier.rawValue.getter() == 0xD000000000000019 && 0x800000023DB86130 == v18)
        {

LABEL_12:

          a1 = v21;
          sub_23DA53A24(v8, v21, type metadata accessor for CommandToPractice);
          v19 = 0;
LABEL_13:
          v3 = v20;
          return (*(v4 + 56))(a1, v19, 1, v3);
        }

        v16 = sub_23DB70DBC();

        if (v16)
        {
          goto LABEL_12;
        }
      }

      ++v15;
      result = sub_23DA53A8C(v8, type metadata accessor for CommandToPractice);
      if (v12 == v15)
      {

        v19 = 1;
        a1 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = 1;
    return (*(v4 + 56))(a1, v19, 1, v3);
  }

  return result;
}

uint64_t sub_23DA409E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (*(&v36 + 1))
  {
    v5 = *(a1 + 16);
    sub_23DB7063C();
    sub_23DB6F34C();
    v27 = v36;
    LOBYTE(v28) = 1;
    *(&v28 + 1) = 0;
    nullsub_1(&v27);
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v36 = v27;
    v37 = v28;
  }

  else
  {
    sub_23DA52AD0(&v36);
  }

  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v7 = *(v4 + v6);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v8 = v41;
  v23 = v42;
  v24 = v43;
  v9 = v43;
  v25 = v44;
  v10 = v37;
  v19 = v38;
  v11 = v38;
  v20 = v39;
  v12 = v39;
  v21 = v40;
  v13 = v40;
  v22 = v41;
  v17 = v36;
  v18 = v37;
  v26[6] = v42;
  v26[7] = v43;
  v26[8] = v44;
  v14 = v36;
  v26[2] = v38;
  v26[3] = v39;
  v26[4] = v40;
  v26[5] = v41;
  v26[0] = v36;
  v26[1] = v37;
  *(a2 + 96) = v42;
  *(a2 + 112) = v9;
  *(a2 + 128) = v44;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v8;
  v15 = v27;
  *a2 = v14;
  *(a2 + 16) = v10;
  *(a2 + 144) = v7;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 161) = v15;
  sub_23DA0E2B4(v26, &v27, &qword_27E2FCFF0, &qword_23DB77AE0);
  v33 = v23;
  v34 = v24;
  v35 = v25;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v27 = v17;
  v28 = v18;
  return sub_23DA17988(&v27, &qword_27E2FCFF0, &qword_23DB77AE0);
}

uint64_t sub_23DA40CDC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_23DB6FA4C();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v70 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF58, &unk_23DB77960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2B8, &qword_23DB74308);
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v60 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF60, &qword_23DB77970);
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v64, v18);
  v20 = &v60 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF68, &qword_23DB77978);
  v21 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60, v22);
  v24 = &v60 - v23;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF70, &qword_23DB77980);
  v25 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65, v26);
  v28 = &v60 - v27;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF78, &qword_23DB77988);
  v67 = *(v69 - 8);
  v29 = *(v67 + 64);
  MEMORY[0x28223BE20](v69, v30);
  v66 = &v60 - v31;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF80, &qword_23DB77990);
  v32 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61, v33);
  v35 = &v60 - v34;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF88, &qword_23DB77998);
  v36 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68, v37);
  v39 = &v60 - v38;
  v74 = a1;
  sub_23DB703CC();
  sub_23DA40790(v11);
  v40 = type metadata accessor for CommandToPractice(0);
  if ((*(*(v40 - 8) + 48))(v11, 1, v40) == 1)
  {
    sub_23DA17988(v11, &qword_27E2FCF58, &unk_23DB77960);
    v41 = 2;
  }

  else
  {
    v41 = v11[18];
    sub_23DA53A8C(v11, type metadata accessor for CommandToPractice);
  }

  LOBYTE(v75) = v41;
  v42 = *a1;
  v77 = *(a1 + 24);
  v78 = v42;
  v43 = swift_allocObject();
  v44 = a1[1];
  *(v43 + 16) = *a1;
  *(v43 + 32) = v44;
  *(v43 + 48) = *(a1 + 4);
  sub_23DA0E2B4(&v78, &v76, &qword_27E2FCE48, &qword_23DB76EF8);
  sub_23DA0E2B4(&v77, &v76, &qword_27E2FCE50, &qword_23DB76F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC638, &qword_23DB779A0);
  sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308);
  sub_23DA52490();
  sub_23DB700BC();

  (*(v62 + 8))(v16, v12);
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v45 = qword_27E30A658;
  KeyPath = swift_getKeyPath();
  (*(v63 + 32))(v24, v20, v64);
  v47 = &v24[*(v60 + 36)];
  *v47 = KeyPath;
  v47[1] = v45;

  v48 = sub_23DB700EC();
  v49 = swift_getKeyPath();
  sub_23DA17A54(v24, v28, &qword_27E2FCF68, &qword_23DB77978);
  v50 = &v28[*(v65 + 36)];
  *v50 = v49;
  v50[1] = v48;
  v51 = v70;
  sub_23DB6FA3C();
  sub_23DA5251C();
  sub_23DA5425C(&qword_27E2FCFB8, MEMORY[0x277CDE400]);
  v52 = v66;
  v53 = v72;
  sub_23DB6FE2C();
  (*(v71 + 8))(v51, v53);
  sub_23DA17988(v28, &qword_27E2FCF70, &qword_23DB77980);
  v54 = &v35[*(v61 + 36)];
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFC0, &qword_23DB77A10) + 28);
  v56 = *MEMORY[0x277CDF420];
  v57 = sub_23DB6F04C();
  (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
  *v54 = swift_getKeyPath();
  (*(v67 + 32))(v35, v52, v69);
  v76 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE50, &qword_23DB76F00);
  sub_23DB7038C();
  v58 = v75;
  sub_23DA17A54(v35, v39, &qword_27E2FCF80, &qword_23DB77990);
  *&v39[*(v68 + 36)] = v58;
  sub_23DA5278C();
  sub_23DB6FFDC();
  return sub_23DA17988(v39, &qword_27E2FCF88, &qword_23DB77998);
}

uint64_t sub_23DA41590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  sub_23DA16E70();
  result = sub_23DB6FD8C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_23DA41638(__int128 *a1)
{
  v2 = sub_23DB707AC();
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DB707CC();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DB707EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF58, &unk_23DB77960);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = v35 - v25;
  sub_23DA40790(v35 - v25);
  v27 = type metadata accessor for CommandToPractice(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    return sub_23DA17988(v26, &qword_27E2FCF58, &unk_23DB77960);
  }

  v29 = v26[18];
  result = sub_23DA53A8C(v26, type metadata accessor for CommandToPractice);
  if (v29 == 1)
  {
    v47 = *(a1 + 24);
    aBlock = *(a1 + 24);
    *&v46 = 0x3FE0000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE50, &qword_23DB76F00);
    sub_23DB7039C();
    sub_23DA5295C();
    v35[0] = sub_23DB70AEC();
    sub_23DB707DC();
    sub_23DB707FC();
    v30 = *(v13 + 8);
    v35[1] = v13 + 8;
    v36 = v30;
    v30(v18, v12);
    v46 = *a1;
    v31 = swift_allocObject();
    v32 = a1[1];
    *(v31 + 16) = *a1;
    *(v31 + 32) = v32;
    *(v31 + 48) = *(a1 + 4);
    v44 = sub_23DA529E8;
    v45 = v31;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v42 = sub_23DABB3DC;
    v43 = &block_descriptor_0;
    v33 = _Block_copy(&aBlock);
    sub_23DA0E2B4(&v46, v40, &qword_27E2FCE48, &qword_23DB76EF8);
    sub_23DA0E2B4(&v47, v40, &qword_27E2FCE50, &qword_23DB76F00);

    sub_23DB707BC();
    *&aBlock = MEMORY[0x277D84F90];
    sub_23DA5425C(&qword_27E2FE2F0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
    sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
    sub_23DB70C0C();
    v34 = v35[0];
    MEMORY[0x23EEF6E80](v21, v11, v6, v33);
    _Block_release(v33);

    (*(v37 + 8))(v6, v2);
    (*(v38 + 8))(v11, v39);
    return v36(v21, v12);
  }

  return result;
}

uint64_t sub_23DA41B64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF38, &qword_23DB77940);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - v11;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &v12[*(v4 + 72)];
  sub_23DB6F91C();
  *(v12 + 2) = 0x4020000000000000;
  v14 = sub_23DB6F68C();
  v45 = 1;
  sub_23DA409E8(v2, &v33);
  v54 = v41;
  v55 = v42;
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v53 = v40;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v49 = v36;
  v57[8] = v41;
  v57[9] = v42;
  v57[4] = v37;
  v57[5] = v38;
  v57[6] = v39;
  v57[7] = v40;
  v57[0] = v33;
  v57[1] = v34;
  v56 = v43;
  v58 = v43;
  v57[2] = v35;
  v57[3] = v36;
  sub_23DA0E2B4(&v46, &v32, &qword_27E2FCF40, &qword_23DB77948);
  sub_23DA17988(v57, &qword_27E2FCF40, &qword_23DB77948);
  *(&v44[7] + 7) = v53;
  *(&v44[8] + 7) = v54;
  *(&v44[9] + 7) = v55;
  *(&v44[10] + 7) = v56;
  *(&v44[3] + 7) = v49;
  *(&v44[4] + 7) = v50;
  *(&v44[5] + 7) = v51;
  *(&v44[6] + 7) = v52;
  *(v44 + 7) = v46;
  *(&v44[1] + 7) = v47;
  *(&v44[2] + 7) = v48;
  v15 = v44[6];
  *(v12 + 153) = v44[7];
  v16 = v44[9];
  *(v12 + 169) = v44[8];
  *(v12 + 185) = v16;
  *(v12 + 194) = *(&v44[9] + 9);
  v17 = v44[2];
  *(v12 + 89) = v44[3];
  v18 = v44[5];
  *(v12 + 105) = v44[4];
  *(v12 + 121) = v18;
  *(v12 + 137) = v15;
  v19 = v44[0];
  *(v12 + 57) = v44[1];
  *(v12 + 73) = v17;
  v20 = v45;
  *(v12 + 3) = v14;
  *(v12 + 4) = 0;
  v12[40] = v20;
  v21 = &v12[*(v4 + 68)];
  *(v12 + 41) = v19;
  *v21 = sub_23DB6F68C();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF48, &qword_23DB77950);
  sub_23DA40CDC(v2, &v21[*(v22 + 44)]);
  v23 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v24 = *(&v33 + 1);
  if (*(&v33 + 1))
  {
    v25 = v33;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v33)
    {
      v27 = 0x3FF0000000000000;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v25 = 0;
    KeyPath = 0;
    v27 = 0;
  }

  sub_23DA0E2B4(v12, v9, &qword_27E2FCF38, &qword_23DB77940);
  v28 = v31;
  sub_23DA0E2B4(v9, v31, &qword_27E2FCF38, &qword_23DB77940);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF50, &qword_23DB77958) + 48));
  sub_23DA52040(v25, v24, KeyPath, 0);
  sub_23DA17988(v12, &qword_27E2FCF38, &qword_23DB77940);
  *v29 = v25;
  v29[1] = v24;
  v29[2] = KeyPath;
  v29[3] = 0;
  v29[4] = v27;
  sub_23DA52098(v25, v24, KeyPath, 0);
  return sub_23DA17988(v9, &qword_27E2FCF38, &qword_23DB77940);
}

uint64_t sub_23DA41F98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_23DA41B64(a1);
}

uint64_t sub_23DA41FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F55C();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = *a1;
  v56 = *(a1 + 16);
  v57 = *(a1 + 24);
  v55 = *(a1 + 32);
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  v11 = v56;
  v12 = v57;
  sub_23DA0E2B4(v58, v35, &qword_27E2FD010, &unk_23DB77B00);
  sub_23DA0E2B4(&v56, v35, &qword_27E2FCBA0, &qword_23DB76C70);
  sub_23DA0E2B4(&v55, v35, &qword_27E2FD018, &qword_23DB7D950);
  v13 = sub_23DB6F5BC();
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  v14[1] = *a1;
  v14[2] = v15;
  v14[3] = *(a1 + 32);
  if (v12 == 1)
  {
    sub_23DA0E2B4(v58, v35, &qword_27E2FD010, &unk_23DB77B00);
    sub_23DA0E2B4(&v55, v35, &qword_27E2FD018, &qword_23DB7D950);
  }

  else
  {
    sub_23DA0E2B4(&v56, v35, &qword_27E2FCBA0, &qword_23DB76C70);
    sub_23DA0E2B4(v58, v35, &qword_27E2FD010, &unk_23DB77B00);
    sub_23DA0E2B4(&v56, v35, &qword_27E2FCBA0, &qword_23DB76C70);
    sub_23DA0E2B4(&v55, v35, &qword_27E2FD018, &qword_23DB7D950);
    sub_23DB70ACC();
    v16 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v56, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v25 + 8))(v8, v26);
    v11 = v35[0];
  }

  v17 = (v11 & 1) == 0;
  v27[104] = 1;
  v18 = v11 & 1;
  v27[103] = v18;
  v19 = sub_23DB6FB4C();
  v50 = 1;
  v28 = v13;
  LOBYTE(v29) = 1;
  *(&v29 + 1) = *v54;
  DWORD1(v29) = *&v54[3];
  *(&v29 + 1) = sub_23DA52B44;
  v30 = v14;
  LOBYTE(v31) = v17;
  BYTE1(v31) = v18;
  *(&v31 + 2) = v52;
  WORD3(v31) = v53;
  BYTE8(v31) = v19;
  *(&v31 + 9) = *v51;
  HIDWORD(v31) = *&v51[3];
  v32 = 0u;
  v33 = 0u;
  v34 = 1;
  *a2 = sub_23DA52AF0;
  *(a2 + 8) = v9;
  *(a2 + 112) = 1;
  v20 = v29;
  *(a2 + 16) = v28;
  *(a2 + 32) = v20;
  v21 = v33;
  *(a2 + 80) = v32;
  *(a2 + 96) = v21;
  v22 = v31;
  *(a2 + 48) = v30;
  *(a2 + 64) = v22;
  v35[0] = v13;
  v35[1] = 0;
  v36 = 1;
  *&v37[3] = *&v54[3];
  *v37 = *v54;
  v38 = sub_23DA52B44;
  v39 = v14;
  v40 = 0;
  v41 = v17;
  v42 = v18;
  v44 = v53;
  v43 = v52;
  v45 = v19;
  *&v46[3] = *&v51[3];
  *v46 = *v51;
  v48 = 0u;
  v47 = 0u;
  v49 = 1;

  sub_23DA0E2B4(&v28, v27, &qword_27E2FD020, &qword_23DB77B10);
  sub_23DA17988(v35, &qword_27E2FD020, &qword_23DB77B10);
}

uint64_t sub_23DA42414@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v47 = a3;
  v46 = sub_23DB6F2FC();
  v41 = *(v46 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v46, v5);
  v49 = v6;
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_23DB6F55C();
  v39 = *(v40 - 1);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v40, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD028, &qword_23DB77B18);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v37 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD030, &qword_23DB77B20);
  v17 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42, v18);
  v20 = &v37 - v19;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD038, &qword_23DB77B28);
  v43 = *(v44 - 8);
  v21 = *(v43 + 64);
  MEMORY[0x28223BE20](v44, v22);
  v48 = &v37 - v23;
  v51 = a2;
  sub_23DB6FB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD040, &qword_23DB77B30);
  sub_23DA17B80(&qword_27E2FD048, &qword_27E2FD040, &qword_23DB77B30);
  sub_23DB6F01C();
  v59 = *(a2 + 24);
  v58 = *(a2 + 2);
  if (v59 != 1)
  {

    sub_23DB70ACC();
    v24 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v58, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v39 + 8))(v10, v40);
  }

  sub_23DA430E4(v20);
  (*(v12 + 8))(v16, v11);
  v57 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v39 = *(&v52 + 1);
  v56 = a2[2];
  v25 = v41;
  v40 = *(v41 + 16);
  v26 = v45;
  v27 = v46;
  v40(v45, v50, v46);
  v28 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v29 = swift_allocObject();
  v30 = a2[1];
  v29[1] = *a2;
  v29[2] = v30;
  v29[3] = a2[2];
  v41 = *(v25 + 32);
  (v41)(v29 + v28, v26, v27);
  sub_23DA0E2B4(&v58, v55, &qword_27E2FCBA0, &qword_23DB76C70);
  sub_23DA0E2B4(&v57, v55, &qword_27E2FD010, &unk_23DB77B00);
  sub_23DA0E2B4(&v56, v55, &qword_27E2FD018, &qword_23DB7D950);
  v38 = sub_23DA52BC4();
  v31 = v42;
  sub_23DB700BC();

  sub_23DA17988(v20, &qword_27E2FD030, &qword_23DB77B20);
  v52 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  sub_23DB7038C();
  v40(v26, v50, v27);
  v32 = swift_allocObject();
  v33 = a2[1];
  v32[1] = *a2;
  v32[2] = v33;
  v32[3] = a2[2];
  (v41)(v32 + v28, v26, v27);
  sub_23DA0E2B4(&v58, &v52, &qword_27E2FCBA0, &qword_23DB76C70);
  sub_23DA0E2B4(&v57, &v52, &qword_27E2FD010, &unk_23DB77B00);
  sub_23DA0E2B4(&v56, &v52, &qword_27E2FD018, &qword_23DB7D950);
  *&v52 = v31;
  *(&v52 + 1) = MEMORY[0x277D837D0];
  v53 = v38;
  v54 = MEMORY[0x277D837F8];
  swift_getOpaqueTypeConformance2();
  v34 = v48;
  v35 = v44;
  sub_23DB700BC();

  return (*(v43 + 8))(v34, v35);
}

uint64_t sub_23DA42BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v3 = sub_23DB6F55C();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  sub_23DA16E70();
  v8 = sub_23DB6FD8C();
  v10 = v9;
  v12 = v11;
  sub_23DB7021C();
  v13 = sub_23DB6FCDC();
  v15 = v14;
  v17 = v16;

  sub_23DA16EC4(v8, v10, v12 & 1);

  sub_23DB6FBDC();
  v18 = sub_23DB6FD3C();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_23DA16EC4(v13, v15, v17 & 1);

  v103 = *(v51 + 24);
  v102 = *(v51 + 16);
  if (v103 != 1)
  {

    sub_23DB70ACC();
    v25 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    v26 = v48;
    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v102, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v49 + 8))(v26, v50);
  }

  sub_23DB7063C();
  sub_23DB6F34C();
  v98 = v22 & 1;
  v27 = sub_23DB6FB5C();
  sub_23DB6EFAC();
  *&v64 = v18;
  *(&v64 + 1) = v20;
  LOBYTE(v65) = v22 & 1;
  *(&v65 + 1) = *v97;
  DWORD1(v65) = *&v97[3];
  *(&v65 + 1) = v24;
  v28 = v57;
  v29 = v58;
  v66 = v57;
  v67 = v58;
  v31 = v62;
  v30 = v63;
  v71 = v62;
  v72 = v63;
  v69 = v60;
  v70 = v61;
  v32 = v60;
  v33 = v61;
  v34 = v59;
  v68 = v59;
  LOBYTE(v73) = v27;
  DWORD1(v73) = *&v100[3];
  *(&v73 + 1) = *v100;
  *(&v73 + 1) = v35;
  *&v74 = v36;
  *(&v74 + 1) = v37;
  *&v75 = v38;
  BYTE8(v75) = 0;
  HIDWORD(v75) = *&v101[3];
  *(&v75 + 9) = *v101;
  *(&v55[11] + 7) = v75;
  *(&v55[10] + 7) = v74;
  *(&v55[9] + 7) = v73;
  *(v55 + 7) = v64;
  *(&v55[4] + 7) = v59;
  *(&v55[3] + 7) = v58;
  *(&v55[12] + 7) = 5;
  *(&v55[2] + 7) = v57;
  *(&v55[1] + 7) = v65;
  *(&v55[8] + 7) = v63;
  *(&v55[7] + 7) = v62;
  *(&v55[6] + 7) = v61;
  *(&v55[5] + 7) = v60;
  v39 = v55[8];
  v40 = v52;
  *(v52 + 153) = v55[9];
  v41 = v55[11];
  *(v40 + 169) = v55[10];
  *(v40 + 185) = v41;
  *(v40 + 200) = *(&v55[11] + 15);
  v42 = v55[4];
  *(v40 + 89) = v55[5];
  v43 = v55[7];
  *(v40 + 105) = v55[6];
  *(v40 + 121) = v43;
  *(v40 + 137) = v39;
  v44 = v55[0];
  *(v40 + 25) = v55[1];
  v45 = v55[3];
  *(v40 + 41) = v55[2];
  *(v40 + 57) = v45;
  *(v40 + 73) = v42;
  *(v40 + 9) = v44;
  v85 = v33;
  v86 = v31;
  v87 = v30;
  v99 = 0;
  v56 = 0;
  v76 = 5;
  v46 = KeyPath;
  *v40 = KeyPath;
  *(v40 + 8) = 0;
  v77[0] = v18;
  v77[1] = v20;
  v78 = v22 & 1;
  *v79 = *v97;
  *&v79[3] = *&v97[3];
  v80 = v24;
  v81 = v28;
  v82 = v29;
  v83 = v34;
  v84 = v32;
  v88 = v27;
  *&v89[3] = *&v100[3];
  *v89 = *v100;
  v90 = v35;
  v91 = v36;
  v92 = v37;
  v93 = v38;
  v94 = 0;
  *&v95[3] = *&v101[3];
  *v95 = *v101;
  v96 = 5;
  sub_23DA5208C(v46, 0);
  sub_23DA0E2B4(&v64, &v54, &qword_27E2FD098, &qword_23DB77C78);
  sub_23DA17988(v77, &qword_27E2FD098, &qword_23DB77C78);
  return sub_23DA4FF14(v46, 0);
}

uint64_t sub_23DA430E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD070, &qword_23DB77B88);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD060, &qword_23DB77B80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v33 - v13;
  sub_23DB7062C();
  sub_23DB6F34C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD028, &qword_23DB77B18);
  (*(*(v15 - 8) + 16))(v9, v2, v15);
  v16 = &v9[*(v5 + 44)];
  v17 = v33[5];
  *(v16 + 4) = v33[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v33[6];
  v18 = v33[1];
  *v16 = v33[0];
  *(v16 + 1) = v18;
  v19 = v33[3];
  *(v16 + 2) = v33[2];
  *(v16 + 3) = v19;
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v20 = qword_27E30A658;
  v21 = sub_23DB6FB3C();
  sub_23DA17A54(v9, v14, &qword_27E2FD070, &qword_23DB77B88);
  v22 = &v14[*(v10 + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD030, &qword_23DB77B20) + 36));
  v24 = *(sub_23DB6F32C() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_23DB6F63C();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #8.0 }

  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  sub_23DA17A54(v14, a1, &qword_27E2FD060, &qword_23DB77B80);
}

uint64_t sub_23DA433D8(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_23DA0E2B4(&v7, v4, &qword_27E2FD090, &qword_23DB77B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  sub_23DB7038C();
  if (v4[0] == 1)
  {
    sub_23DB7067C();
    sub_23DB7065C();

    MEMORY[0x28223BE20](v1, v2);
    sub_23DB6F19C();

    v5 = v6;
    v4[0] = 0;
    sub_23DB7039C();
  }

  return sub_23DA17988(&v6, &qword_27E2FD018, &qword_23DB7D950);
}

uint64_t sub_23DA4351C(uint64_t a1)
{
  v2 = *(a1 + 8) + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction;
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 8);

  v4(v5);

  v7 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  return sub_23DB7039C();
}

uint64_t sub_23DA435C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFF8, &qword_23DB77AE8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v30 - v12;
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v13[*(v5 + 72)];
  sub_23DB6F91C();
  *(v13 + 2) = 0x4020000000000000;
  v15 = *(v2 + 8);
  v16 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v17 = *(v15 + v16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v18 = v50[0];
  *(v13 + 3) = v17;
  *(v13 + 4) = 0;
  v13[40] = 1;
  v13[41] = v18;
  v19 = sub_23DB6F68C();
  v41 = 1;
  sub_23DA41FD4(v2, &v32);
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v50[0] = v32;
  v50[1] = v33;
  v50[2] = v34;
  v50[3] = v35;
  v50[4] = v36;
  v50[5] = v37;
  v50[6] = v38;
  v51 = v39;
  sub_23DA0E2B4(&v42, &v31, &qword_27E2FD000, &qword_23DB77AF0);
  sub_23DA17988(v50, &qword_27E2FD000, &qword_23DB77AF0);
  *&v40[71] = v46;
  *&v40[87] = v47;
  *&v40[103] = v48;
  *&v40[7] = v42;
  *&v40[23] = v43;
  *&v40[39] = v44;
  *&v40[55] = v45;
  v20 = *&v40[80];
  *(v13 + 129) = *&v40[64];
  *(v13 + 145) = v20;
  *(v13 + 161) = *&v40[96];
  v21 = *&v40[16];
  *(v13 + 65) = *v40;
  *(v13 + 81) = v21;
  v22 = *&v40[48];
  *(v13 + 97) = *&v40[32];
  v40[119] = v49;
  v23 = v41;
  *(v13 + 6) = v19;
  *(v13 + 7) = 0;
  v13[64] = v23;
  *(v13 + 177) = *&v40[112];
  *(v13 + 113) = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v24 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    v25 = v32;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v32)
    {
      v27 = 0x3FF0000000000000;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v25 = 0;
    KeyPath = 0;
    v27 = 0;
  }

  sub_23DA0E2B4(v13, v10, &qword_27E2FCFF8, &qword_23DB77AE8);
  sub_23DA0E2B4(v10, a1, &qword_27E2FCFF8, &qword_23DB77AE8);
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD008, &qword_23DB77AF8) + 48));
  sub_23DA52040(v25, v24, KeyPath, 0);
  sub_23DA17988(v13, &qword_27E2FCFF8, &qword_23DB77AE8);
  *v28 = v25;
  v28[1] = v24;
  v28[2] = KeyPath;
  v28[3] = 0;
  v28[4] = v27;
  sub_23DA52098(v25, v24, KeyPath, 0);
  return sub_23DA17988(v10, &qword_27E2FCFF8, &qword_23DB77AE8);
}

uint64_t sub_23DA439D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_23DA435C4(a1);
}

uint64_t sub_23DA43A0C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = sub_23DB6F55C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v66[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD448, &qword_23DB78358);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v66[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD438, &qword_23DB78350);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v66[-v21];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD428, &qword_23DB78348);
  v23 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68, v24);
  v26 = &v66[-v25];
  v27 = *a1;
  *v17 = sub_23DB6F5BC();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD450, &unk_23DB78360);
  sub_23DA43FD0(v27, a2, a3 & 1, &v17[*(v28 + 44)]);
  v67 = a3;
  v69 = v8;
  if (a3)
  {
    v29 = v7;
  }

  else
  {

    sub_23DB70ACC();
    v30 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    v31 = *(v8 + 8);
    v29 = v7;
    v31(v12, v7);
  }

  sub_23DB7063C();
  sub_23DB6F34C();
  sub_23DA17A54(v17, v22, &qword_27E2FD448, &qword_23DB78358);
  v32 = &v22[*(v18 + 36)];
  v33 = v76;
  v32[4] = v75;
  v32[5] = v33;
  v32[6] = v77;
  v34 = v72;
  *v32 = v71;
  v32[1] = v34;
  v35 = v74;
  v32[2] = v73;
  v32[3] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB76A80;
  v37 = sub_23DB6FB8C();
  *(inited + 32) = v37;
  v38 = sub_23DB6FB6C();
  *(inited + 33) = v38;
  v39 = sub_23DB6FB4C();
  *(inited + 34) = v39;
  v40 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v37)
  {
    v40 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v38)
  {
    v40 = sub_23DB6FB7C();
  }

  v41 = v29;

  sub_23DB6FB7C();
  v42 = sub_23DB6FB7C();
  v43 = v69;
  if (v42 != v39)
  {
    v40 = sub_23DB6FB7C();
  }

  if ((v67 & 1) == 0)
  {

    sub_23DB70ACC();
    v44 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v43 + 8))(v12, v41);
  }

  sub_23DB6EFAC();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_23DA17A54(v22, v26, &qword_27E2FD438, &qword_23DB78350);
  v53 = &v26[*(v68 + 36)];
  *v53 = v40;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  v54 = sub_23DB6FB5C();
  sub_23DB6EFAC();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v70;
  sub_23DA17A54(v26, v70, &qword_27E2FD428, &qword_23DB78348);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD410, &qword_23DB78340);
  v65 = v63 + *(result + 36);
  *v65 = v54;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  return result;
}

uint64_t sub_23DA43FD0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v106 = a3;
  v107 = a2;
  v101 = a4;
  v5 = sub_23DB6F55C();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v90 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_23DB6F32C();
  v9 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105, v10);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD458, &qword_23DB78BD0);
  v13 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97, v14);
  v16 = &v89 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD460, &qword_23DB78370);
  v17 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98, v18);
  v100 = &v89 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD468, &qword_23DB78378);
  v20 = *(*(v99 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v99, v21);
  v104 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v89 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v103 = &v89 - v29;
  v30 = sub_23DB702CC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB702BC();
  (*(v31 + 104))(v35, *MEMORY[0x277CE0FE0], v30);
  v102 = sub_23DB702EC();

  (*(v31 + 8))(v35, v30);
  sub_23DB7062C();
  result = sub_23DB6F10C();
  v37 = v145;
  v113 = v146;
  v38 = v147;
  v39 = v148;
  v40 = v149;
  v41 = v150;
  if (qword_27E2FBBF8 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = swift_once();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (*(qword_27E30A708 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v111 = v37;
  v95 = v38;
  v42 = *(qword_27E30A708 + 8 * a1 + 32);
  KeyPath = swift_getKeyPath();
  v110 = v42;
  LOBYTE(v114) = v113;
  v94 = v39;
  LOBYTE(v151) = v39;

  v108 = sub_23DB6FB8C();
  sub_23DB6EFAC();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  LOBYTE(v122[0]) = 0;
  v51 = *(v105 + 20);
  v52 = *MEMORY[0x277CE0118];
  v53 = sub_23DB6F63C();
  result = (*(*(v53 - 8) + 104))(&v12[v51], v52, v53);
  __asm { FMOV            V0.2D, #8.0 }

  *v12 = _Q0;
  v112 = v40;
  v96 = v41;
  if (v106)
  {
    if ((v107 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v107;

    sub_23DB70ACC();
    v61 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    v62 = v90;
    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v60, 0);
    result = (*(v91 + 8))(v62, v92);
    if (LOBYTE(v122[0]) != 1)
    {
LABEL_6:
      if (a1 <= 4)
      {
        v59 = &unk_284FE5738;
LABEL_11:
        v63 = v59[a1];
        sub_23DB7062C();
        sub_23DB6F10C();
        sub_23DA53A24(v12, v16, MEMORY[0x277CDFC08]);
        v64 = &v16[*(v97 + 36)];
        v65 = v152;
        *v64 = v151;
        *(v64 + 1) = v65;
        *(v64 + 2) = v153;
        LODWORD(v63) = sub_23DB6F88C();
        v66 = v100;
        sub_23DA17A54(v16, v100, &qword_27E2FD458, &qword_23DB78BD0);
        *(v66 + *(v98 + 36)) = v63;
        LOBYTE(v63) = sub_23DB6FB8C();
        sub_23DB6EFAC();
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v74 = v73;
        sub_23DA17A54(v66, v27, &qword_27E2FD460, &qword_23DB78370);
        v75 = &v27[*(v99 + 36)];
        *v75 = v63;
        *(v75 + 1) = v68;
        *(v75 + 2) = v70;
        *(v75 + 3) = v72;
        *(v75 + 4) = v74;
        v75[40] = 0;
        v76 = v103;
        sub_23DA17A54(v27, v103, &qword_27E2FD468, &qword_23DB78378);
        v77 = v104;
        sub_23DA0E2B4(v76, v104, &qword_27E2FD468, &qword_23DB78378);
        v78 = v102;
        *&v114 = v102;
        *(&v114 + 1) = v111;
        LOBYTE(v115) = v113;
        *(&v115 + 1) = *v142;
        DWORD1(v115) = *&v142[3];
        v79 = v95;
        v80 = v96;
        *(&v115 + 1) = v95;
        LOBYTE(v66) = v94;
        LOBYTE(v116) = v94;
        *(&v116 + 1) = *v141;
        DWORD1(v116) = *&v141[3];
        v93 = a1;
        *(&v116 + 1) = v112;
        *&v117 = v96;
        *(&v117 + 1) = KeyPath;
        *&v118 = v110;
        BYTE8(v118) = v108;
        *(&v118 + 9) = *v143;
        HIDWORD(v118) = *&v143[3];
        *&v119 = v44;
        *(&v119 + 1) = v46;
        *&v120 = v48;
        *(&v120 + 1) = v50;
        LOBYTE(v121) = 0;
        *(&v121 + 1) = *v144;
        DWORD1(v121) = *&v144[3];
        *(&v121 + 1) = a1;
        v81 = v114;
        v82 = v115;
        v83 = v117;
        v84 = v101;
        v101[2] = v116;
        v84[3] = v83;
        *v84 = v81;
        v84[1] = v82;
        v85 = v118;
        v86 = v119;
        v87 = v121;
        v84[6] = v120;
        v84[7] = v87;
        v84[4] = v85;
        v84[5] = v86;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD470, &qword_23DB78380);
        sub_23DA0E2B4(v77, v84 + *(v88 + 48), &qword_27E2FD468, &qword_23DB78378);
        sub_23DA0E2B4(&v114, v122, &qword_27E2FD478, &qword_23DB78388);
        sub_23DA17988(v76, &qword_27E2FD468, &qword_23DB78378);
        sub_23DA17988(v77, &qword_27E2FD468, &qword_23DB78378);
        v122[0] = v78;
        v122[1] = v111;
        v123 = v113;
        *v124 = *v142;
        *&v124[3] = *&v142[3];
        v125 = v79;
        v126 = v66;
        *v127 = *v141;
        *&v127[3] = *&v141[3];
        v128 = v112;
        v129 = v80;
        v130 = KeyPath;
        v131 = v110;
        v132 = v108;
        *&v133[3] = *&v143[3];
        *v133 = *v143;
        v134 = v44;
        v135 = v46;
        v136 = v48;
        v137 = v50;
        v138 = 0;
        *v139 = *v144;
        *&v139[3] = *&v144[3];
        v140 = v93;
        return sub_23DA17988(v122, &qword_27E2FD478, &qword_23DB78388);
      }

      goto LABEL_15;
    }
  }

  if (a1 <= 4)
  {
    v59 = &unk_284FE5780;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_23DA448A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_23DA5208C(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD410, &qword_23DB78340);
  sub_23DA52254();
  sub_23DA54580(&qword_27E2FD418, &qword_27E2FD410, &qword_23DB78340, sub_23DA54604);
  return sub_23DB704FC();
}

uint64_t sub_23DA449D8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_23DA44A58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v40 = a7;
  v38 = a4;
  v39 = a6;
  v42 = sub_23DB707AC();
  v45 = *(v42 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v42, v10);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DB707CC();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23DB707EC();
  v37 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v36 - v25;
  v28 = *a1;
  v27 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v28;
  v47 = v27;

  sub_23DB6EF1C();
  sub_23DA5295C();
  v29 = sub_23DB70AEC();
  sub_23DB707DC();
  sub_23DB707FC();
  v36 = *(v18 + 8);
  v36(v23, v17);
  v30 = swift_allocObject();
  v31 = v39;
  *(v30 + 16) = v38;
  *(v30 + 24) = a5;
  *(v30 + 32) = v31;
  LOBYTE(v27) = v40 & 1;
  *(v30 + 40) = v40 & 1;
  v50 = sub_23DA542F0;
  v51 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_23DABB3DC;
  v49 = &block_descriptor_300;
  v32 = _Block_copy(&aBlock);

  sub_23DA5208C(v31, v27);

  sub_23DB707BC();
  aBlock = MEMORY[0x277D84F90];
  sub_23DA5425C(&qword_27E2FE2F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
  v33 = v41;
  v34 = v42;
  sub_23DB70C0C();
  MEMORY[0x23EEF6E80](v26, v16, v33, v32);
  _Block_release(v32);

  (*(v45 + 8))(v33, v34);
  (*(v43 + 8))(v16, v44);
  return (v36)(v26, v37);
}

uint64_t sub_23DA44EA4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_23DB6EF1C();
}

__n128 sub_23DA44F54@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_23DB6F55C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_23DB70ACC();
    v17 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v9 + 8))(v13, v8);
    if (v45 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v19 = *(a1 + v18);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v20 = v30;
    KeyPath = swift_getKeyPath();
    v29 = 0;
    sub_23DB7037C();
    v22 = v30;
    v23 = v31;
    v29 = 0;
    sub_23DB7037C();
    v24 = v30;
    v25 = v31;
    v39 = 0;
    LOBYTE(v29) = 0;
    v30 = v19;
    v31 = v20;
    v32 = KeyPath;
    v33 = 0;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v38 = 0;
    goto LABEL_6;
  }

  v45 = a2 & 1;
  if (a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v15 = *(a1 + v14);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v16 = v30;
  LOBYTE(v29) = 0;
  v39 = 1;
  v30 = v15;
  v31 = 0x4014000000000000;
  LOBYTE(v32) = 0;
  BYTE1(v32) = v16;
  v38 = 1;
LABEL_6:
  sub_23DA5346C();
  sub_23DA534C0();
  sub_23DB6F79C();
  v26 = v43;
  *(a4 + 32) = v42;
  *(a4 + 48) = v26;
  *(a4 + 64) = v44;
  result = v41;
  *a4 = v40;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_23DA452DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v54 = a5;
  v8 = sub_23DB6F55C();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DB6F03C();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD320, &qword_23DB781F0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v55 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v53 = &v46 - v23;
  sub_23DB70A3C();

  sub_23DA5208C(a3, a4 & 1);
  v24 = sub_23DB70A2C();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = v50;
  *(v25 + 32) = v50;
  *(v25 + 40) = a2;
  *(v25 + 48) = a3;
  *(v25 + 56) = a4 & 1;

  sub_23DA5208C(a3, a4 & 1);
  v28 = sub_23DB70A2C();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v26;
  v30 = a4;
  *(v29 + 32) = v27;
  *(v29 + 40) = a2;
  *(v29 + 48) = a3;
  *(v29 + 56) = a4 & 1;
  sub_23DB704AC();
  sub_23DB6F02C();
  if (a4)
  {
    v70 = a3 & 1;
    v31 = a3;
  }

  else
  {

    sub_23DB70ACC();
    v32 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    v33 = v47;
    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a3, 0);
    (*(v48 + 8))(v33, v49);
    v31 = v70;
  }

  v34 = v53;
  sub_23DA45838(v31 & 1, v53);
  (*(v51 + 8))(v16, v52);
  v35 = sub_23DB6F5BC();
  v57 = 1;
  sub_23DA45DF0(a2, a3, v30 & 1, &v66);
  v60 = *&v67[16];
  v61[0] = *&v67[32];
  *(v61 + 10) = *&v67[42];
  v58 = v66;
  v59 = *v67;
  v62[2] = *&v67[16];
  v63[0] = *&v67[32];
  *(v63 + 10) = *&v67[42];
  v62[0] = v66;
  v62[1] = *v67;
  sub_23DA0E2B4(&v58, &v64, &qword_27E2FCEC8, &qword_23DB77828);
  sub_23DA17988(v62, &qword_27E2FCEC8, &qword_23DB77828);
  *&v56[23] = v59;
  *&v56[39] = v60;
  *&v56[55] = v61[0];
  *&v56[65] = *(v61 + 10);
  *&v56[7] = v58;
  v36 = v57;
  v37 = v55;
  sub_23DA0E2B4(v34, v55, &qword_27E2FD320, &qword_23DB781F0);
  v38 = v54;
  sub_23DA0E2B4(v37, v54, &qword_27E2FD320, &qword_23DB781F0);
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD328, &qword_23DB781F8) + 48);
  v64 = v35;
  v65[0] = v36;
  *&v65[1] = *v56;
  *&v65[17] = *&v56[16];
  *&v65[33] = *&v56[32];
  v65[81] = v56[80];
  *&v65[65] = *&v56[64];
  *&v65[49] = *&v56[48];
  v40 = *v65;
  *v39 = v35;
  *(v39 + 16) = v40;
  v41 = *&v65[16];
  v42 = *&v65[32];
  v43 = *&v65[48];
  v44 = *&v65[64];
  *(v39 + 96) = *&v65[80];
  *(v39 + 64) = v43;
  *(v39 + 80) = v44;
  *(v39 + 32) = v41;
  *(v39 + 48) = v42;
  sub_23DA0E2B4(&v64, &v66, &qword_27E2FCED0, &qword_23DB77830);
  sub_23DA17988(v34, &qword_27E2FD320, &qword_23DB781F0);
  *&v67[33] = *&v56[32];
  *&v67[49] = *&v56[48];
  v68 = *&v56[64];
  *&v67[1] = *v56;
  v66 = v35;
  v67[0] = v36;
  v69 = v56[80];
  *&v67[17] = *&v56[16];
  sub_23DA17988(&v66, &qword_27E2FCED0, &qword_23DB77830);
  return sub_23DA17988(v37, &qword_27E2FD320, &qword_23DB781F0);
}

uint64_t sub_23DA45838@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v62 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD330, &unk_23DB78200);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v55[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD338, &unk_23DB788B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v55[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD340, &unk_23DB78210);
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v55[-v16];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD348, &unk_23DB788C0);
  v18 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58, v19);
  v21 = &v55[-v20];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD350, &qword_23DB78220);
  v22 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59, v23);
  v25 = &v55[-v24];
  byte_27E30A720 = 1;
  v26 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD128, &qword_23DB77D08) + 36)];
  v27 = *(sub_23DB6F32C() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_23DB6F63C();
  v30 = v28;
  v31 = v56;
  (*(*(v29 - 8) + 104))(&v26[v27], v30, v29);
  __asm { FMOV            V0.2D, #8.0 }

  *v26 = _Q0;
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  v37 = sub_23DB6F03C();
  (*(*(v37 - 8) + 16))(v7, v57, v37);
  *&v7[*(v3 + 44)] = sub_23DB6F87C();
  if (v31)
  {
    v38 = sub_23DB6FBCC();
  }

  else
  {
    v38 = sub_23DB6FBDC();
  }

  v39 = v38;
  KeyPath = swift_getKeyPath();
  sub_23DA17A54(v7, v12, &qword_27E2FD330, &unk_23DB78200);
  v41 = &v12[*(v8 + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  sub_23DA54004();
  sub_23DB6FEAC();
  sub_23DA17988(v12, &qword_27E2FD338, &unk_23DB788B0);
  if ((v31 & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  if (qword_27E2FBC08 != -1)
  {
    swift_once();
  }

  sub_23DB7062C();
  sub_23DB6F34C();
  (*(v60 + 32))(v21, v17, v61);
  v42 = &v21[*(v58 + 36)];
  v43 = v68;
  v42[4] = v67;
  v42[5] = v43;
  v42[6] = v69;
  v44 = v64;
  *v42 = v63;
  v42[1] = v44;
  v45 = v66;
  v42[2] = v65;
  v42[3] = v45;
  v46 = swift_getKeyPath();
  sub_23DA17A54(v21, v25, &qword_27E2FD348, &unk_23DB788C0);
  v47 = &v25[*(v59 + 36)];
  *v47 = v46;
  v47[1] = 0x4014000000000000;
  LOBYTE(v46) = sub_23DB6EFDC();
  v49 = v48;
  v51 = v50;
  v52 = v62;
  sub_23DA17A54(v25, v62, &qword_27E2FD350, &qword_23DB78220);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD320, &qword_23DB781F0);
  v54 = v52 + *(result + 36);
  *v54 = v46 & 1;
  *(v54 + 8) = v49;
  *(v54 + 16) = v51 & 1;
  return result;
}

double sub_23DA45DF0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_23DB6F55C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];

  v17 = sub_23DB6FB4C();
  v22 = 1;
  if ((a3 & 1) == 0)
  {

    sub_23DB70ACC();
    v18 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v9 + 8))(v13, v8);
    LOBYTE(a2) = v21[15];
  }

  v19 = v22;
  *a4 = v16;
  *(a4 + 8) = v15;
  *(a4 + 16) = v17;
  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = v19;
  *(a4 + 64) = 0;
  *(a4 + 72) = (a2 & 1) == 0;
  *(a4 + 73) = a2 & 1;
  return result;
}

uint64_t sub_23DA45FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD308, &qword_23DB781D8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v19[*(v11 + 72)];
  sub_23DB6F91C();
  *(v19 + 2) = 0x4020000000000000;
  sub_23DA44F54(a2, a3, a4 & 1, v34);
  v21 = v34[3];
  *(v19 + 56) = v34[2];
  *(v19 + 72) = v21;
  v19[88] = v35;
  v22 = v34[0];
  *(v19 + 40) = v34[1];
  *(v19 + 24) = v22;
  v23 = &v19[*(v11 + 68)];
  *v23 = sub_23DB6F68C();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD310, &qword_23DB781E0);
  sub_23DA452DC(a1, a2, a3, a4 & 1, &v23[*(v24 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v25 = v33;
  if (v33)
  {
    v26 = v32;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v32)
    {
      v28 = 0x3FF0000000000000;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v26 = 0;
    KeyPath = 0;
    v28 = 0;
  }

  sub_23DA0E2B4(v19, v16, &qword_27E2FD308, &qword_23DB781D8);
  sub_23DA0E2B4(v16, a5, &qword_27E2FD308, &qword_23DB781D8);
  v29 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD318, &qword_23DB781E8) + 48));
  sub_23DA52040(v26, v25, KeyPath, 0);
  sub_23DA17988(v19, &qword_27E2FD308, &qword_23DB781D8);
  *v29 = v26;
  v29[1] = v25;
  v29[2] = KeyPath;
  v29[3] = 0;
  v29[4] = v28;
  sub_23DA52098(v26, v25, KeyPath, 0);
  return sub_23DA17988(v16, &qword_27E2FD308, &qword_23DB781D8);
}

__n128 sub_23DA462C0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_23DB6F55C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v46 = a2 & 1;
    if ((a2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_23DB70ACC();
    v14 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v9 + 8))(v13, v8);
    if (v46 != 1)
    {
LABEL_7:
      v23 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v24 = *(a1 + v23);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      v25 = v29;
      v40 = 0;
      v39 = 1;
      v29 = v24;
      v30 = 0x4014000000000000;
      LOBYTE(v31) = 0;
      BYTE1(v31) = v25;
      v37 = 1;
      goto LABEL_8;
    }
  }

  v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (*(v16 + 16) < 4uLL)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v17 = v29;
  KeyPath = swift_getKeyPath();
  v38 = 0;
  sub_23DB7037C();
  v19 = v29;
  v20 = v30;
  v38 = 0;
  sub_23DB7037C();
  v21 = v29;
  v22 = v30;
  v40 = 0;
  LOBYTE(v38) = 0;
  v29 = v16;
  v30 = v17;
  v31 = KeyPath;
  v32 = 0;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = 0;
LABEL_8:
  sub_23DA5346C();
  sub_23DA534C0();
  sub_23DB6F79C();
  v26 = v44;
  *(a4 + 32) = v43;
  *(a4 + 48) = v26;
  *(a4 + 64) = v45;
  result = v42;
  *a4 = v41;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_23DA4664C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v45 = a3;
  v49 = a5;
  v8 = sub_23DB6F55C();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_23DB6F03C();
  v13 = *(v43 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v43, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0E8, &qword_23DB77CA0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v48 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v46 = &v41 - v24;
  type metadata accessor for Page.PracticeUneditableText(0);
  sub_23DA5425C(&qword_27E2FCE30, type metadata accessor for Page.PracticeUneditableText);
  v44 = a1;
  v47 = a2;
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  sub_23DB6F02C();
  v25 = a4;
  if (a4)
  {
    v26 = v45;
    v64 = v45 & 1;
    v27 = v45;
  }

  else
  {
    v26 = v45;

    sub_23DB70ACC();
    v28 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v26, 0);
    (*(v41 + 8))(v12, v42);
    v27 = v64;
  }

  v29 = v46;
  sub_23DA46B74(v27 & 1, v46);
  (*(v13 + 8))(v17, v43);
  v30 = sub_23DB6F5BC();
  v51 = 1;
  sub_23DA45DF0(v47, v26, v25 & 1, &v60);
  v54 = *&v61[16];
  v55[0] = *&v61[32];
  *(v55 + 10) = *&v61[42];
  v52 = v60;
  v53 = *v61;
  v56[2] = *&v61[16];
  v57[0] = *&v61[32];
  *(v57 + 10) = *&v61[42];
  v56[0] = v60;
  v56[1] = *v61;
  sub_23DA0E2B4(&v52, v58, &qword_27E2FCEC8, &qword_23DB77828);
  sub_23DA17988(v56, &qword_27E2FCEC8, &qword_23DB77828);
  *&v50[23] = v53;
  *&v50[39] = v54;
  *&v50[55] = v55[0];
  *&v50[65] = *(v55 + 10);
  *&v50[7] = v52;
  v31 = v51;
  v32 = v48;
  sub_23DA0E2B4(v29, v48, &qword_27E2FD0E8, &qword_23DB77CA0);
  v33 = v49;
  sub_23DA0E2B4(v32, v49, &qword_27E2FD0E8, &qword_23DB77CA0);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0F0, &qword_23DB77CD0) + 48);
  v58[0] = v30;
  v58[1] = 0;
  v59[0] = v31;
  *&v59[1] = *v50;
  *&v59[17] = *&v50[16];
  *&v59[33] = *&v50[32];
  v59[81] = v50[80];
  *&v59[65] = *&v50[64];
  *&v59[49] = *&v50[48];
  v35 = *v59;
  *v34 = v30;
  *(v34 + 16) = v35;
  v36 = *&v59[16];
  v37 = *&v59[32];
  v38 = *&v59[48];
  v39 = *&v59[64];
  *(v34 + 96) = *&v59[80];
  *(v34 + 64) = v38;
  *(v34 + 80) = v39;
  *(v34 + 32) = v36;
  *(v34 + 48) = v37;
  sub_23DA0E2B4(v58, &v60, &qword_27E2FCED0, &qword_23DB77830);
  sub_23DA17988(v29, &qword_27E2FD0E8, &qword_23DB77CA0);
  *&v61[33] = *&v50[32];
  *&v61[49] = *&v50[48];
  v62 = *&v50[64];
  *&v61[1] = *v50;
  v60 = v30;
  v61[0] = v31;
  v63 = v50[80];
  *&v61[17] = *&v50[16];
  sub_23DA17988(&v60, &qword_27E2FCED0, &qword_23DB77830);
  return sub_23DA17988(v32, &qword_27E2FD0E8, &qword_23DB77CA0);
}

uint64_t sub_23DA46B74@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0F8, &qword_23DB77CD8);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v73 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD100, &qword_23DB77CE0);
  v9 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73, v10);
  v12 = &v73 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD108, &qword_23DB77CE8);
  v13 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74, v14);
  v16 = &v73 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD110, &qword_23DB77CF0);
  v17 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75, v18);
  v20 = &v73 - v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD118, &qword_23DB77CF8);
  v21 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77, v22);
  v78 = &v73 - v23;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD120, &qword_23DB77D00);
  v24 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76, v25);
  v27 = &v73 - v26;
  byte_27E30A720 = 1;
  v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD128, &qword_23DB77D08) + 36)];
  v29 = *(sub_23DB6F32C() + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_23DB6F63C();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #8.0 }

  *v28 = _Q0;
  *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  v37 = sub_23DB6F03C();
  (*(*(v37 - 8) + 16))(v8, v79, v37);
  KeyPath = swift_getKeyPath();
  v39 = &v8[*(v4 + 44)];
  *v39 = KeyPath;
  v39[8] = 0;
  LODWORD(v79) = a1;
  if ((a1 & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  if (qword_27E2FBC08 != -1)
  {
    swift_once();
  }

  sub_23DB705FC();
  sub_23DB6F34C();
  sub_23DA17A54(v8, v12, &qword_27E2FD0F8, &qword_23DB77CD8);
  v40 = &v12[*(v73 + 36)];
  v41 = v86;
  *(v40 + 4) = v85;
  *(v40 + 5) = v41;
  *(v40 + 6) = v87;
  v42 = v82;
  *v40 = v81;
  *(v40 + 1) = v42;
  v43 = v84;
  *(v40 + 2) = v83;
  *(v40 + 3) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB76A80;
  v45 = sub_23DB6FB8C();
  *(inited + 32) = v45;
  v46 = sub_23DB6FB6C();
  *(inited + 33) = v46;
  v47 = sub_23DB6FB5C();
  *(inited + 34) = v47;
  v48 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v45)
  {
    v48 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v46)
  {
    v48 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v47)
  {
    v48 = sub_23DB6FB7C();
  }

  v49 = v79;
  sub_23DB6EFAC();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_23DA17A54(v12, v16, &qword_27E2FD100, &qword_23DB77CE0);
  v58 = &v16[*(v74 + 36)];
  *v58 = v48;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  v59 = sub_23DB6F87C();
  sub_23DA17A54(v16, v20, &qword_27E2FD108, &qword_23DB77CE8);
  *&v20[*(v75 + 36)] = v59;
  if (v49)
  {
    v60 = sub_23DB6FBCC();
  }

  else
  {
    v60 = sub_23DB6FBDC();
  }

  v61 = v60;
  v62 = swift_getKeyPath();
  v63 = v78;
  sub_23DA17A54(v20, v78, &qword_27E2FD110, &qword_23DB77CF0);
  v64 = (v63 + *(v77 + 36));
  *v64 = v62;
  v64[1] = v61;
  v65 = swift_getKeyPath();
  sub_23DA17A54(v63, v27, &qword_27E2FD118, &qword_23DB77CF8);
  v66 = &v27[*(v76 + 36)];
  *v66 = v65;
  v66[1] = 0x4014000000000000;
  LOBYTE(v65) = sub_23DB6EFDC();
  v68 = v67;
  LOBYTE(v63) = v69;
  v70 = v80;
  sub_23DA17A54(v27, v80, &qword_27E2FD120, &qword_23DB77D00);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0E8, &qword_23DB77CA0);
  v72 = v70 + *(result + 36);
  *v72 = v65 & 1;
  *(v72 + 8) = v68;
  *(v72 + 16) = v63 & 1;
  return result;
}

uint64_t sub_23DA472EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0D0, &qword_23DB77C88);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v19[*(v11 + 72)];
  sub_23DB6F91C();
  *(v19 + 2) = 0x4020000000000000;
  sub_23DA462C0(a2, a3, a4 & 1, v34);
  v21 = v34[3];
  *(v19 + 56) = v34[2];
  *(v19 + 72) = v21;
  v19[88] = v35;
  v22 = v34[0];
  *(v19 + 40) = v34[1];
  *(v19 + 24) = v22;
  v23 = &v19[*(v11 + 68)];
  *v23 = sub_23DB6F68C();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0D8, &qword_23DB77C90);
  sub_23DA4664C(a1, a2, a3, a4 & 1, &v23[*(v24 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v25 = v33;
  if (v33)
  {
    v26 = v32;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v32)
    {
      v28 = 0x3FF0000000000000;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v26 = 0;
    KeyPath = 0;
    v28 = 0;
  }

  sub_23DA0E2B4(v19, v16, &qword_27E2FD0D0, &qword_23DB77C88);
  sub_23DA0E2B4(v16, a5, &qword_27E2FD0D0, &qword_23DB77C88);
  v29 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0E0, &qword_23DB77C98) + 48));
  sub_23DA52040(v26, v25, KeyPath, 0);
  sub_23DA17988(v19, &qword_27E2FD0D0, &qword_23DB77C88);
  *v29 = v26;
  v29[1] = v25;
  v29[2] = KeyPath;
  v29[3] = 0;
  v29[4] = v28;
  sub_23DA52098(v26, v25, KeyPath, 0);
  return sub_23DA17988(v16, &qword_27E2FD0D0, &qword_23DB77C88);
}

uint64_t sub_23DA4760C()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 40);
  v7 = *(v0 + 32);
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

uint64_t sub_23DA4776C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v68) = a2;
  v73 = a1;
  v74 = sub_23DB6F32C();
  v5 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74, v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD208, &qword_23DB7C3F0);
  v9 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76, v10);
  v12 = &v62 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD210, &qword_23DB77E90);
  v13 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75, v14);
  v16 = &v62 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD218, &qword_23DB77E98);
  v17 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77, v18);
  v20 = &v62 - v19;
  v21 = sub_23DB702CC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_23DA4760C();
  v66 = sub_23DA4760C();

  sub_23DB702BC();
  (*(v22 + 104))(v26, *MEMORY[0x277CE0FE0], v21);
  v73 = sub_23DB702EC();

  (*(v22 + 8))(v26, v21);
  sub_23DB7062C();
  sub_23DB6F10C();
  v72 = v81;
  v27 = v82;
  v71 = v83;
  v28 = v84;
  v70 = v85;
  v69 = v86;
  if (v68)
  {
    v29 = 48;
    v30 = sub_23DB7020C();
  }

  else
  {
    v29 = 56;
    v30 = sub_23DB7021C();
  }

  v68 = v30;
  KeyPath = swift_getKeyPath();
  v79 = v27;
  v78 = v28;
  v64 = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v80 = 0;
  v63 = v28;
  v39 = *(v74 + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_23DB6F63C();
  (*(*(v41 - 8) + 104))(&v8[v39], v40, v41);
  __asm { FMOV            V0.2D, #8.0 }

  *v8 = _Q0;
  v47 = *(v3 + v29);
  sub_23DA53A24(v8, v12, MEMORY[0x277CDFC08]);
  v48 = v76;
  *&v12[*(v76 + 52)] = v47;
  *&v12[*(v48 + 56)] = 256;

  v49 = sub_23DB7014C();
  sub_23DA17A54(v12, v16, &qword_27E2FD208, &qword_23DB7C3F0);
  v50 = &v16[*(v75 + 36)];
  *v50 = v49;
  v50[1] = 0x4008000000000000;
  v50[2] = 0;
  v50[3] = 0;
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DA17A54(v16, v20, &qword_27E2FD210, &qword_23DB77E90);
  v51 = &v20[*(v77 + 36)];
  v52 = v88;
  *v51 = v87;
  *(v51 + 1) = v52;
  *(v51 + 2) = v89;
  v53 = sub_23DB7062C();
  v55 = v54;
  v56 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD178, &qword_23DB77DF0) + 36);
  sub_23DA17A54(v20, v56, &qword_27E2FD218, &qword_23DB77E98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD1C0, &qword_23DB77E10);
  v58 = (v56 + *(result + 36));
  *v58 = v53;
  v58[1] = v55;
  v59 = v72;
  *a3 = v73;
  *(a3 + 8) = v59;
  *(a3 + 16) = v27;
  *(a3 + 24) = v71;
  *(a3 + 32) = v63;
  v60 = v69;
  *(a3 + 40) = v70;
  *(a3 + 48) = v60;
  v61 = v68;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = v61;
  *(a3 + 72) = v64;
  *(a3 + 80) = v32;
  *(a3 + 88) = v34;
  *(a3 + 96) = v36;
  *(a3 + 104) = v38;
  *(a3 + 112) = 0;
  return result;
}

uint64_t sub_23DA47D5C(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v5 = *a2;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27E30A6B0 + 112);
  swift_beginAccess();
  *(v2 + 56) = v4;
  *(v2 + 40) = v5;

  sub_23DABC37C();
}

uint64_t sub_23DA47DF8()
{
  v0 = sub_23DB6F82C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB6F95C();
  sub_23DB6F14C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v1 + 8))(v5, v0);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v14 = *(qword_27E30A6B0 + 112);
  swift_beginAccess();
  v14[5] = v7;
  v14[6] = v9;
  v14[7] = v11;
  v14[8] = v13;

  sub_23DABC37C();
}

uint64_t sub_23DA47F60(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = v6;
  v8 = *(&v6 + 1);
  sub_23DA0E2B4(&v8, v5, &qword_27E2FD090, &qword_23DB77B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  sub_23DB7038C();
  if (!v5[0])
  {
    return sub_23DA17988(&v7, &qword_27E2FD018, &qword_23DB7D950);
  }

  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_23DB6EF0C();

  v3 = v6;
  v6 = v7;
  v5[0] = (v3 & 1) == 0;
  sub_23DB7039C();
  sub_23DA17988(&v7, &qword_27E2FD018, &qword_23DB7D950);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v6) = 1;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v6) = 1;
  return sub_23DB6EF1C();
}

uint64_t sub_23DA4810C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v4 = v3 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols;
  v5 = 16;
  if (!v11)
  {
    v5 = 0;
  }

  v6 = 8;
  if (v11)
  {
    v6 = 24;
  }

  v7 = *(v4 + v5);
  v8 = *(v4 + v6);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  sub_23DA4776C(v7, v10, a2);
}

uint64_t sub_23DA48234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[0] = a2;
  v3 = sub_23DB6F15C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = sub_23DB6F82C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[5] = sub_23DB7018C();
  sub_23DB6F95C();
  sub_23DB6F14C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v8 + 8))(v12, v7);
  v26[1] = v14;
  v26[2] = v16;
  v26[3] = v18;
  v26[4] = v20;
  type metadata accessor for CGRect(0);
  sub_23DA5425C(&qword_27E2FD1F8, type metadata accessor for CGRect);
  v21 = v26[0];
  sub_23DB700AC();

  (*(v4 + 16))(v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  (*(v4 + 32))(v23 + v22, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD200, &qword_23DB77E38);
  v25 = (v21 + *(result + 36));
  *v25 = sub_23DA5389C;
  v25[1] = v23;
  v25[2] = 0;
  v25[3] = 0;
  return result;
}

uint64_t sub_23DA48500@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_23DB6F31C();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD160, &qword_23DB77DD8);
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD168, &qword_23DB77DE0);
  v14 = *(v13 - 8);
  v53 = v13;
  v54 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD170, &qword_23DB77DE8);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v56 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v51 = &v50 - v26;
  v27 = swift_allocObject();
  v28 = a1[1];
  v27[1] = *a1;
  v27[2] = v28;
  v29 = a1[3];
  v27[3] = a1[2];
  v27[4] = v29;
  v58 = a1;
  sub_23DA5121C(a1, &v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD178, &qword_23DB77DF0);
  sub_23DA53530();
  sub_23DB703CC();
  sub_23DB6F30C();
  v30 = sub_23DA17B80(&qword_27E2FD1C8, &qword_27E2FD160, &qword_23DB77DD8);
  v31 = sub_23DA5425C(&qword_27E2FD1D0, MEMORY[0x277CDDB18]);
  sub_23DB6FE2C();
  (*(v55 + 8))(v7, v3);
  (*(v52 + 8))(v12, v8);
  *&v72 = v8;
  *(&v72 + 1) = v3;
  *v73 = v30;
  *&v73[8] = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v51;
  v33 = v53;
  sub_23DB6FE7C();
  (*(v54 + 8))(v18, v33);
  v34 = swift_allocObject();
  v35 = a1[1];
  *(v34 + 1) = *a1;
  *(v34 + 2) = v35;
  v36 = a1[3];
  *(v34 + 3) = a1[2];
  *(v34 + 4) = v36;
  sub_23DA5121C(a1, &v72);
  v37 = sub_23DB7062C();
  v38 = (v32 + *(v20 + 44));
  *v38 = sub_23DA5380C;
  v38[1] = v34;
  v38[2] = v37;
  v38[3] = v39;
  v40 = sub_23DB6F5BC();
  v60 = 1;
  sub_23DA48BB0(a1, &v72);
  v65 = *&v73[48];
  v66 = *&v73[64];
  v67[0] = *&v73[80];
  *(v67 + 10) = *&v73[90];
  v61 = v72;
  v62 = *v73;
  v63 = *&v73[16];
  v64 = *&v73[32];
  v68[0] = v72;
  v68[1] = *v73;
  v68[2] = *&v73[16];
  v68[3] = *&v73[32];
  v68[4] = *&v73[48];
  v68[5] = *&v73[64];
  v69[0] = *&v73[80];
  *(v69 + 10) = *&v73[90];
  sub_23DA0E2B4(&v61, &v70, &qword_27E2FD1D8, &qword_23DB77E18);
  sub_23DA17988(v68, &qword_27E2FD1D8, &qword_23DB77E18);
  *&v59[71] = v65;
  *&v59[87] = v66;
  *&v59[103] = v67[0];
  *&v59[113] = *(v67 + 10);
  *&v59[7] = v61;
  *&v59[23] = v62;
  *&v59[39] = v63;
  *&v59[55] = v64;
  LOBYTE(v7) = v60;
  v41 = v56;
  sub_23DA0E2B4(v32, v56, &qword_27E2FD170, &qword_23DB77DE8);
  v42 = v57;
  sub_23DA0E2B4(v41, v57, &qword_27E2FD170, &qword_23DB77DE8);
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD1E0, &qword_23DB77E20) + 48);
  *&v71[17] = *&v59[16];
  *&v71[81] = *&v59[80];
  *&v71[97] = *&v59[96];
  *&v71[113] = *&v59[112];
  *&v71[33] = *&v59[32];
  *&v71[49] = *&v59[48];
  v44 = v42 + v43;
  v70 = v40;
  v71[0] = v7;
  v71[129] = v59[128];
  *&v71[65] = *&v59[64];
  *&v71[1] = *v59;
  v45 = *&v71[96];
  *(v44 + 96) = *&v71[80];
  *(v44 + 112) = v45;
  *(v44 + 128) = *&v71[112];
  *(v44 + 144) = *&v71[128];
  v46 = *&v71[32];
  *(v44 + 32) = *&v71[16];
  *(v44 + 48) = v46;
  v47 = *&v71[64];
  *(v44 + 64) = *&v71[48];
  *(v44 + 80) = v47;
  v48 = *v71;
  *v44 = v70;
  *(v44 + 16) = v48;
  sub_23DA0E2B4(&v70, &v72, &qword_27E2FD1E8, &qword_23DB77E28);
  sub_23DA17988(v32, &qword_27E2FD170, &qword_23DB77DE8);
  *&v73[81] = *&v59[80];
  *&v73[97] = *&v59[96];
  v74 = *&v59[112];
  *&v73[17] = *&v59[16];
  *&v73[33] = *&v59[32];
  *&v73[49] = *&v59[48];
  *&v73[65] = *&v59[64];
  v72 = v40;
  v73[0] = v7;
  v75 = v59[128];
  *&v73[1] = *v59;
  sub_23DA17988(&v72, &qword_27E2FD1E8, &qword_23DB77E28);
  return sub_23DA17988(v41, &qword_27E2FD170, &qword_23DB77DE8);
}

uint64_t sub_23DA48BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8) + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_23DB6FB4C();
  sub_23DA4760C();
  sub_23DB6EFAC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_23DB6FB6C();
  sub_23DA4760C();
  v57 = 0;
  sub_23DB6EFAC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v58 = 0;
  v24 = sub_23DA4760C();
  *&v32 = v5;
  *(&v32 + 1) = v4;
  LOBYTE(v33) = v6;
  *(&v33 + 1) = v8;
  *&v34 = v10;
  *(&v34 + 1) = v12;
  *&v35 = v14;
  BYTE8(v35) = 0;
  LOBYTE(v36) = v15;
  *(&v36 + 1) = v17;
  *v37 = v19;
  *&v37[8] = v21;
  *&v37[16] = v23;
  v37[24] = 0;
  v38 = v32;
  v39 = v33;
  *&v43[9] = *&v37[9];
  v42 = v36;
  *v43 = *v37;
  v40 = v34;
  v41 = v35;
  v31[111] = v24 & 1;
  v25 = v33;
  *a2 = v32;
  *(a2 + 16) = v25;
  v26 = v40;
  v27 = v41;
  v28 = *&v43[16];
  *(a2 + 80) = *v43;
  *(a2 + 96) = v28;
  v29 = v42;
  *(a2 + 48) = v27;
  *(a2 + 64) = v29;
  *(a2 + 32) = v26;
  *(a2 + 112) = 0;
  *(a2 + 120) = (v24 & 1) == 0;
  *(a2 + 121) = v24 & 1;
  v44[0] = v5;
  v44[1] = v4;
  v45 = v6;
  v46 = v8;
  v47 = v10;
  v48 = v12;
  v49 = v14;
  v50 = 0;
  v51 = v15;
  v52 = v17;
  v53 = v19;
  v54 = v21;
  v55 = v23;
  v56 = 0;
  sub_23DA0E2B4(&v32, v31, &qword_27E2FD1F0, &qword_23DB77E30);
  return sub_23DA17988(v44, &qword_27E2FD1F0, &qword_23DB77E30);
}

uint64_t sub_23DA48DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD148, &qword_23DB77DC0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v27 - v12;
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v13[*(v5 + 72)];
  sub_23DB6F91C();
  *(v13 + 2) = 0x4020000000000000;
  v15 = *(v2 + 8);
  v16 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v17 = *(v15 + v16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v18 = v28;
  *(v13 + 3) = v17;
  *(v13 + 4) = 0;
  v13[40] = 1;
  v13[41] = v18;
  v19 = &v13[*(v5 + 68)];
  *v19 = sub_23DB6F68C();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD150, &qword_23DB77DC8);
  sub_23DA48500(v2, &v19[*(v20 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v21 = v29;
  if (v29)
  {
    v22 = v28;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v28)
    {
      v24 = 0x3FF0000000000000;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v22 = 0;
    KeyPath = 0;
    v24 = 0;
  }

  sub_23DA0E2B4(v13, v10, &qword_27E2FD148, &qword_23DB77DC0);
  sub_23DA0E2B4(v10, a1, &qword_27E2FD148, &qword_23DB77DC0);
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD158, &qword_23DB77DD0) + 48));
  sub_23DA52040(v22, v21, KeyPath, 0);
  sub_23DA17988(v13, &qword_27E2FD148, &qword_23DB77DC0);
  *v25 = v22;
  v25[1] = v21;
  v25[2] = KeyPath;
  v25[3] = 0;
  v25[4] = v24;
  sub_23DA52098(v22, v21, KeyPath, 0);
  return sub_23DA17988(v10, &qword_27E2FD148, &qword_23DB77DC0);
}

uint64_t sub_23DA490C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_23DA48DA8(a1);
}

uint64_t sub_23DA49100@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = sub_23DB7079C();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DB7077C();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE8, &qword_23DB846E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEF0, &qword_23DB77850);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = (&v37 - v25);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (v45)
  {
    v43 = sub_23DB702DC();
    v27 = sub_23DB6FBEC();
    (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
    v39 = sub_23DB6FC2C();
    sub_23DA17988(v20, &qword_27E2FCEE8, &qword_23DB846E0);
    KeyPath = swift_getKeyPath();
    sub_23DB7076C();
    sub_23DB7075C();
    v28 = *(v40 + 8);
    v28(v15, v7);
    sub_23DB7078C();
    v29 = (v26 + *(v21 + 36));
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEF8, &qword_23DB778D0) + 28);
    sub_23DA5425C(&qword_27E2FCF00, MEMORY[0x277CE1598]);
    sub_23DB6F36C();
    (*(v41 + 8))(v6, v42);
    v28(v12, v7);
    *v29 = swift_getKeyPath();
    v31 = v44;
    v33 = KeyPath;
    v32 = v39;
    *v26 = v43;
    v26[1] = v33;
    v26[2] = v32;
    sub_23DA17A54(v26, v31, &qword_27E2FCEF0, &qword_23DB77850);
    v34 = 0;
    v35 = v31;
  }

  else
  {
    v34 = 1;
    v35 = v44;
  }

  return (*(v22 + 56))(v35, v34, 1, v21);
}

uint64_t sub_23DA49530@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCED8, &qword_23DB77838);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = (&v31 - v12);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31 - v15;
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18)
  {
    v19 = 100.0;
  }

  else
  {
    v19 = 8.0;
  }

  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v20 = v13 + *(v4 + 72);
  sub_23DB6F91C();
  v13[2] = v19;
  v21 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v22 = *(a1 + v21);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v23 = v32;
  *(v13 + 3) = v22;
  v13[4] = 30.0;
  *(v13 + 40) = 0;
  *(v13 + 41) = v23;
  sub_23DA49100(a1, v13 + *(v4 + 68));
  sub_23DA17A54(v13, v16, &qword_27E2FCED8, &qword_23DB77838);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v24 = v33;
  if (v33)
  {
    v25 = v32;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v32)
    {
      v27 = 0x3FF0000000000000;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v25 = 0;
    KeyPath = 0;
    v27 = 0;
  }

  sub_23DA0E2B4(v16, v9, &qword_27E2FCED8, &qword_23DB77838);
  v28 = v31;
  sub_23DA0E2B4(v9, v31, &qword_27E2FCED8, &qword_23DB77838);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE0, &unk_23DB77840) + 48));
  sub_23DA52040(v25, v24, KeyPath, 0);
  sub_23DA17988(v16, &qword_27E2FCED8, &qword_23DB77838);
  *v29 = v25;
  v29[1] = v24;
  v29[2] = KeyPath;
  v29[3] = 0;
  v29[4] = v27;
  sub_23DA52098(v25, v24, KeyPath, 0);
  return sub_23DA17988(v9, &qword_27E2FCED8, &qword_23DB77838);
}

uint64_t sub_23DA498C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = *(v1 + 24);
  return sub_23DA49530(v1[1], a1);
}

uint64_t sub_23DA498D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  type metadata accessor for Page.PracticeAppNavigationCommands(0);
  sub_23DA5425C(&qword_27E2FCE18, type metadata accessor for Page.PracticeAppNavigationCommands);

  v21 = sub_23DB6F1EC();
  v7 = v6;
  if (qword_27E2FBB88 != -1)
  {
    swift_once();
  }

  v8 = qword_27E30A660;
  v9 = qword_27E2FBB90;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27E30A668;

  v11 = sub_23DB6F5BC();
  v22[0] = 1;
  sub_23DA49BFC(a1, &v32);
  v25 = *v33;
  v26 = *&v33[16];
  v27[0] = *&v33[32];
  *(v27 + 10) = *&v33[42];
  v24 = v32;
  v28[1] = *v33;
  v28[2] = *&v33[16];
  v29[0] = *&v33[32];
  *(v29 + 10) = *&v33[42];
  v28[0] = v32;
  sub_23DA0E2B4(&v24, v30, &qword_27E2FCEC8, &qword_23DB77828);
  sub_23DA17988(v28, &qword_27E2FCEC8, &qword_23DB77828);
  *&v23[65] = *(v27 + 10);
  *&v23[55] = v27[0];
  *&v23[39] = v26;
  *&v23[23] = v25;
  *&v23[7] = v24;
  v30[0] = v11;
  v30[1] = 0;
  v31[0] = 1;
  v12 = *&v23[16];
  *&v31[17] = *&v23[16];
  v13 = *v23;
  *&v31[1] = *v23;
  v14 = *&v23[64];
  *&v31[65] = *&v23[64];
  v15 = *&v23[48];
  *&v31[49] = *&v23[48];
  v16 = *&v23[32];
  *&v31[33] = *&v23[32];
  v17 = *v31;
  *(a2 + 48) = v11;
  *(a2 + 64) = v17;
  v18 = *&v31[64];
  *(a2 + 112) = *&v31[48];
  *(a2 + 128) = v18;
  v19 = *&v31[32];
  *(a2 + 80) = *&v31[16];
  *(a2 + 96) = v19;
  *&v33[17] = v12;
  *&v33[1] = v13;
  v22[104] = 0;
  v31[81] = v23[80];
  *a2 = v21;
  *(a2 + 8) = v7;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 144) = *&v31[80];
  v32 = v11;
  v33[0] = 1;
  v35 = v23[80];
  v34 = v14;
  *&v33[49] = v15;
  *&v33[33] = v16;

  sub_23DA5208C(KeyPath, 0);

  sub_23DA0E2B4(v30, v22, &qword_27E2FCED0, &qword_23DB77830);
  sub_23DA17988(&v32, &qword_27E2FCED0, &qword_23DB77830);

  sub_23DA4FF14(KeyPath, 0);
}

double sub_23DA49BFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = (*(a1 + 8) + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];

  v13 = sub_23DB6FB4C();
  v21 = 1;
  v20 = *(a1 + 40);
  v14 = *(a1 + 32);
  v19 = v14;
  if (v20 != 1)
  {

    sub_23DB70ACC();
    v15 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v19, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v5 + 8))(v9, v4);
    LOBYTE(v14) = v18[15];
  }

  v16 = v21;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = v16;
  *(a2 + 64) = 0;
  *(a2 + 72) = (v14 & 1) == 0;
  *(a2 + 73) = v14 & 1;
  return result;
}

uint64_t sub_23DA49DEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEB0, &qword_23DB77738);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - v11;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &v12[*(v4 + 72)];
  sub_23DB6F91C();
  *(v12 + 2) = 0x4020000000000000;
  v14 = *(v2 + 8);
  v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v16 = *(v14 + v15);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v17 = v56[0];
  *(v12 + 3) = v16;
  *(v12 + 4) = 0;
  v12[40] = 1;
  v12[41] = v17;
  v18 = sub_23DB6F68C();
  v45 = 1;
  sub_23DA498D8(v2, &v34);
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v51 = v39;
  v46 = v34;
  v47 = v35;
  v56[6] = v40;
  v56[7] = v41;
  v56[8] = v42;
  v56[2] = v36;
  v56[3] = v37;
  v56[4] = v38;
  v56[5] = v39;
  v55 = v43;
  v57 = v43;
  v56[0] = v34;
  v56[1] = v35;
  sub_23DA0E2B4(&v46, &v33, &qword_27E2FCEB8, &qword_23DB77788);
  sub_23DA17988(v56, &qword_27E2FCEB8, &qword_23DB77788);
  *(&v44[3] + 7) = v49;
  *(&v44[2] + 7) = v48;
  *(&v44[6] + 7) = v52;
  *(&v44[7] + 7) = v53;
  *(&v44[8] + 7) = v54;
  *(&v44[9] + 7) = v55;
  *(&v44[4] + 7) = v50;
  *(&v44[5] + 7) = v51;
  *(v44 + 7) = v46;
  *(&v44[1] + 7) = v47;
  v19 = v44[7];
  *(v12 + 161) = v44[6];
  *(v12 + 177) = v19;
  *(v12 + 193) = v44[8];
  *(v12 + 202) = *(&v44[8] + 9);
  v20 = v44[3];
  *(v12 + 97) = v44[2];
  *(v12 + 113) = v20;
  v21 = v44[5];
  *(v12 + 129) = v44[4];
  *(v12 + 145) = v21;
  v22 = v44[1];
  *(v12 + 65) = v44[0];
  v23 = v45;
  *(v12 + 6) = v18;
  *(v12 + 7) = 0;
  v12[64] = v23;
  *(v12 + 81) = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v24 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    v25 = v34;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v34)
    {
      v27 = 0x3FF0000000000000;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v25 = 0;
    KeyPath = 0;
    v27 = 0;
  }

  sub_23DA0E2B4(v12, v9, &qword_27E2FCEB0, &qword_23DB77738);
  v28 = v32;
  sub_23DA0E2B4(v9, v32, &qword_27E2FCEB0, &qword_23DB77738);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEC0, &qword_23DB777D8) + 48));
  sub_23DA52040(v25, v24, KeyPath, 0);
  sub_23DA17988(v12, &qword_27E2FCEB0, &qword_23DB77738);
  *v29 = v25;
  v29[1] = v24;
  v29[2] = KeyPath;
  v29[3] = 0;
  v29[4] = v27;
  sub_23DA52098(v25, v24, KeyPath, 0);
  return sub_23DA17988(v9, &qword_27E2FCEB0, &qword_23DB77738);
}

uint64_t sub_23DA4A218@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_23DA49DEC(a1);
}

uint64_t sub_23DA4A254@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DB7079C();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v34 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB7077C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &KeyPath - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE8, &qword_23DB846E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &KeyPath - v19;

  v33 = sub_23DB702BC();
  sub_23DB6FC0C();
  v21 = sub_23DB6FBEC();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v32 = sub_23DB6FC2C();
  sub_23DA17988(v20, &qword_27E2FCEE8, &qword_23DB846E0);
  KeyPath = swift_getKeyPath();
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v22 = qword_27E30A658;
  v23 = swift_getKeyPath();

  sub_23DB7076C();
  sub_23DB7075C();
  v24 = *(v7 + 8);
  v24(v15, v6);
  v25 = v34;
  sub_23DB7078C();
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD398, &qword_23DB782C8) + 36));
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEF8, &qword_23DB778D0) + 28);
  sub_23DA5425C(&qword_27E2FCF00, MEMORY[0x277CE1598]);
  sub_23DB6F36C();
  (*(v35 + 8))(v25, v36);
  v24(v12, v6);
  result = swift_getKeyPath();
  *v26 = result;
  v30 = KeyPath;
  v29 = v32;
  *a1 = v33;
  a1[1] = v30;
  a1[2] = v29;
  a1[3] = v23;
  a1[4] = v22;
  return result;
}

uint64_t sub_23DA4A608@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD388, &qword_23DB782B8);
  v2 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41, v3);
  v38 = (&v36 - v4);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD390, &qword_23DB782C0);
  v5 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39, v6);
  v8 = &v36 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD398, &qword_23DB782C8);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40, v10);
  v12 = (&v36 - v11);
  v13 = sub_23DB6F55C();
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = [v18 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (!v20)
  {
    goto LABEL_3;
  }

  v21 = [v18 currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 1)
  {
    goto LABEL_3;
  }

  v45 = *(v1 + 24);
  v30 = *(v1 + 16);
  v44 = v30;
  if (v45 == 1)
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_23DB70ACC();
    v31 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v44, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v37 + 8))(v17, v13);
    if (v43 != 1)
    {
LABEL_9:
      v32 = sub_23DB7062C();
      v33 = v38;
      *v38 = v32;
      *(v33 + 8) = v34;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3A0, &qword_23DB782D0);
      sub_23DA4AA7C(v1, v33 + *(v35 + 44));
      v26 = &qword_27E2FD388;
      v27 = &qword_23DB782B8;
      sub_23DA0E2B4(v33, v8, &qword_27E2FD388, &qword_23DB782B8);
      swift_storeEnumTagMultiPayload();
      sub_23DA54308();
      sub_23DA17B80(&qword_27E2FD3D8, &qword_27E2FD388, &qword_23DB782B8);
      sub_23DB6F79C();
      v28 = v33;
      return sub_23DA17988(v28, v26, v27);
    }
  }

LABEL_3:
  v23 = (*(v1 + 8) + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon);
  v24 = *v23;
  v25 = v23[1];

  sub_23DA4A254(v12);

  v26 = &qword_27E2FD398;
  v27 = &qword_23DB782C8;
  sub_23DA0E2B4(v12, v8, &qword_27E2FD398, &qword_23DB782C8);
  swift_storeEnumTagMultiPayload();
  sub_23DA54308();
  sub_23DA17B80(&qword_27E2FD3D8, &qword_27E2FD388, &qword_23DB782B8);
  sub_23DB6F79C();
  v28 = v12;
  return sub_23DA17988(v28, v26, v27);
}

uint64_t sub_23DA4AA7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3E0, &qword_23DB7E020);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v68 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3E8, &qword_23DB782F0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v78 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v75 = &v67 - v13;
  v73 = sub_23DB6F03C();
  v72 = *(v73 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v73, v15);
  v70 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3F0, &qword_23DB782F8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v20);
  v71 = &v67 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3F8, &qword_23DB78300);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v67 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD400, &qword_23DB78308);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v74 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v67 - v36;
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v67 - v39;
  v41 = *a1;
  v69 = a1[1];
  type metadata accessor for Page.PracticeAppNavigationCommands(0);
  sub_23DA5425C(&qword_27E2FCE18, type metadata accessor for Page.PracticeAppNavigationCommands);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();
  v42 = v40;

  v43 = v70;
  sub_23DB6F02C();
  sub_23DB7062C();
  v44 = 1;
  sub_23DB6F34C();
  v45 = v71;
  (*(v72 + 32))(v71, v43, v73);
  v46 = (v45 + *(v18 + 44));
  v47 = v85;
  v46[4] = v84;
  v46[5] = v47;
  v46[6] = v86;
  v48 = v81;
  *v46 = v80;
  v46[1] = v48;
  v49 = v83;
  v46[2] = v82;
  v46[3] = v49;
  LOBYTE(v18) = sub_23DB6EFDC();
  v51 = v50;
  v53 = v52;
  sub_23DA17A54(v45, v27, &qword_27E2FD3F0, &qword_23DB782F8);
  v54 = &v27[*(v23 + 44)];
  *v54 = v18 & 1;
  *(v54 + 1) = v51;
  v54[16] = v53 & 1;
  sub_23DA17A54(v27, v37, &qword_27E2FD3F8, &qword_23DB78300);
  *&v37[*(v29 + 44)] = 0;
  v55 = v42;
  sub_23DA17A54(v37, v42, &qword_27E2FD400, &qword_23DB78308);
  if (*(v69 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon + 8))
  {
    v56 = *(v69 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon);
    v57 = *(v69 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon + 8);

    v58 = sub_23DB702BC();
    v59 = v68;
    sub_23DAE072C(v58, v68);

    v60 = v75;
    sub_23DA17A54(v59, v75, &qword_27E2FD3E0, &qword_23DB7E020);
    v44 = 0;
  }

  else
  {
    v60 = v75;
  }

  (*(v76 + 56))(v60, v44, 1, v77);
  v61 = v42;
  v62 = v74;
  sub_23DA0E2B4(v61, v74, &qword_27E2FD400, &qword_23DB78308);
  v63 = v78;
  sub_23DA0E2B4(v60, v78, &qword_27E2FD3E8, &qword_23DB782F0);
  v64 = v79;
  sub_23DA0E2B4(v62, v79, &qword_27E2FD400, &qword_23DB78308);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD408, &qword_23DB78338);
  sub_23DA0E2B4(v63, v64 + *(v65 + 64), &qword_27E2FD3E8, &qword_23DB782F0);
  sub_23DA17988(v60, &qword_27E2FD3E8, &qword_23DB782F0);
  sub_23DA17988(v55, &qword_27E2FD400, &qword_23DB78308);
  sub_23DA17988(v63, &qword_27E2FD3E8, &qword_23DB782F0);
  return sub_23DA17988(v62, &qword_27E2FD400, &qword_23DB78308);
}

uint64_t sub_23DA4B0EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_23DA4A608(a1);
}

uint64_t sub_23DA4B128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for KeyboardKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CommandToPractice(0);
  sub_23DA0E2B4(a1 + *(v15 + 48), v8, &qword_27E2FC4F0, &qword_23DB74AB8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_23DA17988(v8, &qword_27E2FC4F0, &qword_23DB74AB8);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    result = 0;
  }

  else
  {
    sub_23DA53A24(v8, v14, type metadata accessor for KeyboardKey);
    v16 = *v14;
    v17 = *(v14 + 1);
    v18 = *(v14 + 2);
    v19 = *(v14 + 3);
    v20 = v14[32];

    sub_23DA53A8C(v14, type metadata accessor for KeyboardKey);
    result = swift_getKeyPath();
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_23DA4B320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD220, &qword_23DB77EA0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26 - v11;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &v12[*(v4 + 72)];
  sub_23DB6F91C();
  *(v12 + 2) = 0x4020000000000000;
  v14 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v15 = *(a1 + v14);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v16 = v27;
  *(v12 + 3) = v15;
  *(v12 + 4) = 0;
  v12[40] = 1;
  v12[41] = v16;
  v17 = &v12[*(v4 + 68)];
  *v17 = sub_23DB6F68C();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD228, &qword_23DB77EA8) + 44);
  v27 = *(a1 + v14);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD230, &qword_23DB77ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD238, &qword_23DB77ED8);
  sub_23DA17B80(&qword_27E2FD240, &qword_27E2FD230, &qword_23DB77ED0);
  sub_23DA5425C(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DA5394C();
  sub_23DB704FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v19 = v28;
  if (v28)
  {
    v20 = v27;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v27)
    {
      v22 = 0x3FF0000000000000;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v20 = 0;
    KeyPath = 0;
    v22 = 0;
  }

  sub_23DA0E2B4(v12, v9, &qword_27E2FD220, &qword_23DB77EA0);
  v23 = v26;
  sub_23DA0E2B4(v9, v26, &qword_27E2FD220, &qword_23DB77EA0);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD258, &qword_23DB77EE0) + 48));
  sub_23DA52040(v20, v19, KeyPath, 0);
  sub_23DA17988(v12, &qword_27E2FD220, &qword_23DB77EA0);
  *v24 = v20;
  v24[1] = v19;
  v24[2] = KeyPath;
  v24[3] = 0;
  v24[4] = v22;
  sub_23DA52098(v20, v19, KeyPath, 0);
  return sub_23DA17988(v9, &qword_27E2FD220, &qword_23DB77EA0);
}

uint64_t sub_23DA4B738@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *&v44 = *v1;
  *(&v44 + 1) = v3;
  sub_23DA16E70();

  v4 = sub_23DB6FD8C();
  v6 = v5;
  v8 = v7;
  sub_23DB6FBDC();
  v9 = sub_23DB6FD3C();
  v35 = v10;
  v36 = v9;
  v12 = v11;
  v37 = v13;

  sub_23DA16EC4(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  v15 = sub_23DB6FB5C();
  v16 = v12 & 1;
  LOBYTE(v52[0]) = v12 & 1;
  LOBYTE(v38) = 1;
  v17 = sub_23DB6FB2C();
  if (qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v44) = 0;
  v77[0] = *(v1 + 16);
  v26 = *(&v77[0] + 1);
  if (*(&v77[0] + 1))
  {
    v27 = *&v77[0];
    v29 = *(v1 + 32);
    v28 = *(v1 + 40);
    swift_retain_n();
  }

  else
  {
    v29 = 0;
    v28 = 0;
    v27 = 0;
  }

  *&v38 = v36;
  *(&v38 + 1) = v35;
  LOBYTE(v39) = v16;
  *(&v39 + 1) = *v74;
  DWORD1(v39) = *&v74[3];
  *(&v39 + 1) = v37;
  *&v40 = KeyPath;
  BYTE8(v40) = 1;
  *(&v40 + 9) = *v73;
  HIDWORD(v40) = *&v73[3];
  v41[0] = v15;
  *&v41[4] = *&v72[3];
  *&v41[1] = *v72;
  memset(&v41[8], 0, 32);
  v41[40] = 1;
  *&v41[44] = *&v76[3];
  *&v41[41] = *v76;
  LOBYTE(v42) = v17;
  DWORD1(v42) = *&v75[3];
  *(&v42 + 1) = *v75;
  *(&v42 + 1) = v19;
  *v43 = v21;
  *&v43[8] = v23;
  *&v43[16] = v25;
  v43[24] = 0;
  v46 = v40;
  v47 = *v41;
  v44 = v38;
  v45 = v39;
  *&v51[9] = *&v43[9];
  v50 = v42;
  *v51 = *v43;
  v48 = *&v41[16];
  v49 = *&v41[32];
  sub_23DA0E2B4(v77, v52, &qword_27E2FC358, &qword_23DB74690);
  sub_23DA0E2B4(v77, v52, &qword_27E2FC358, &qword_23DB74690);
  sub_23DA0E2B4(&v38, v52, &qword_27E2FD260, &qword_23DB77EE8);
  sub_23DA53AEC(v29);
  sub_23DA53B30(v29);
  v30 = *v51;
  *(a1 + 96) = v50;
  *(a1 + 112) = v30;
  *(a1 + 128) = *&v51[16];
  v31 = v47;
  *(a1 + 32) = v46;
  *(a1 + 48) = v31;
  v32 = v49;
  *(a1 + 64) = v48;
  *(a1 + 80) = v32;
  v33 = v45;
  *a1 = v44;
  *(a1 + 16) = v33;
  *(a1 + 144) = v29;
  *(a1 + 152) = v28;
  *(a1 + 160) = v27;
  *(a1 + 168) = v26;
  sub_23DA53B30(v29);
  v52[0] = v36;
  v52[1] = v35;
  v53 = v16;
  *v54 = *v74;
  *&v54[3] = *&v74[3];
  v55 = v37;
  v56 = KeyPath;
  v57 = 1;
  *v58 = *v73;
  *&v58[3] = *&v73[3];
  v59 = v15;
  *&v60[3] = *&v72[3];
  *v60 = *v72;
  v61 = 0u;
  v62 = 0u;
  v63 = 1;
  *&v64[3] = *&v76[3];
  *v64 = *v76;
  v65 = v17;
  *&v66[3] = *&v75[3];
  *v66 = *v75;
  v67 = v19;
  v68 = v21;
  v69 = v23;
  v70 = v25;
  v71 = 0;
  return sub_23DA17988(v52, &qword_27E2FD260, &qword_23DB77EE8);
}