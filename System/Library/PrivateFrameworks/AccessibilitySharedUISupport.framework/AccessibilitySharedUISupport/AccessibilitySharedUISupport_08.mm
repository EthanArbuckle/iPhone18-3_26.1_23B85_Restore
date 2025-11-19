uint64_t sub_23DAEB92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (([objc_opt_self() voTutorialUsageConfirmed] & 1) == 0)
    {
      if (qword_27E2FBBD0 != -1)
      {
        swift_once();
      }

      sub_23DAA0760(a3);
    }

    v6 = (v5 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v9 = MEMORY[0x277D764B0];
    sub_23DB05C14(v8, v7, MEMORY[0x277D764B0]);

    sub_23DB05C14(v10, v11, v9);
  }

  return result;
}

uint64_t sub_23DAEBAB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v59 = (&v48 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v48 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    if (qword_27E2FBBD0 == -1)
    {
      goto LABEL_3;
    }

LABEL_21:
    swift_once();
LABEL_3:
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v16 = objc_opt_self();
      v17 = sub_23DB7087C();
      [v16 triggerEventCommand_];
    }

    v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v57 = v18;
    v19 = *(v15 + v18);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();

    v55 = v21;
    v56 = KeyPath;
    v54 = sub_23DB6EEFC();
    v52 = v22;
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v58 = v15;
    v53 = v23;
    v51 = v24;
    v50 = sub_23DB6EEFC();
    v49 = v25;

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
      v60 = v27 + 1;
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
      v42 = v59;
      *v59 = v27;
      sub_23DB06674(v32, v42 + v33, type metadata accessor for CommandToPractice);
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
      v27 = v60;
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
        goto LABEL_21;
      }

      if (v15 >= *(v26 + 16))
      {
        goto LABEL_19;
      }

      v44 = *(type metadata accessor for CommandToPractice(0) - 8);
      v45 = v26 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v15;
      *(v45 + 18) = 0;
      *(v45 + 19) = v15 == 0;
      sub_23DB0672C(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
      if (v27 == v29)
      {
        goto LABEL_8;
      }
    }

    *v49 = 0;
    *v52 = 0;
    v50(v61, 0);

    v54(v62, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v46 = v58;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v47 = *(v46 + v57);
    *(v46 + v57) = v26;

    [objc_opt_self() setVOTutorialUsageConfirmed_];
  }

  return result;
}

uint64_t sub_23DAEC0E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      if (v7[0])
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C();

        v2 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
        swift_beginAccess();
        v8 = *(v1 + v2);
        swift_getKeyPath();
        swift_getKeyPath();

        v3 = sub_23DB6EEFC();
        sub_23DB05F68(&v8, v4);
        v3(v7, 0);

        v5 = v8;
        type metadata accessor for Page.Practice(0);
        sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v6 = *(v1 + v2);
        *(v1 + v2) = v5;
      }
    }
  }

  return result;
}

uint64_t sub_23DAEC348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v102 = *(v1 - 8);
  v103 = v1;
  v2 = *(v102 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v101 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v96 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v88 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v85 = *(v13 - 8);
  v14 = *(v85 + 8);
  MEMORY[0x28223BE20](v13, v15);
  *&v82 = &v80 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v80 = *(v81 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v18);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v80 - v25;
  v27 = sub_23DB6EA8C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v91 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v80 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v80 - v38;
  v40 = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8A130);
  v89 = v41;
  v90 = v40;
  v104 = v0;
  v87 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8A160);
  v86 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.CollectionFinished(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v93 = v35;
  v94 = v28;
  v47 = *(v28 + 16);
  v92 = v39;
  v95 = v27;
  v84 = v28 + 16;
  v83 = v47;
  v47(v35, v39, v27);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v49 = *(v22 + 32);
  v50 = v21;
  v49(v46 + v48, v26, v21);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v105 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v80 + 32))(v46 + v53, v20, v81);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v105 = 0;
  v55 = v82;
  sub_23DB6EECC();
  (*(v85 + 4))(v46 + v54, v55, v13);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v57 = v50;
  v49(v46 + v56, v26, v50);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v82 = xmmword_23DB74320;
  v105 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v88;
  sub_23DB6EECC();
  v85 = v49;
  v60 = v98;
  v61 = *(v97 + 32);
  v61(v46 + v58, v59, v98);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v105 = v82;
  sub_23DB6EECC();
  v61(v46 + v62, v59, v60);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v85(v46 + v63, v26, v57);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  v65 = v96;
  sub_23DB6EECC();
  (*(v99 + 32))(v46 + v64, v65, v100);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v105 = 0uLL;
  sub_23DB6EECC();
  v61(v46 + v66, v59, v60);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v105 = nullsub_1;
  *(&v105 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v101;
  sub_23DB6EECC();
  (*(v102 + 32))(v46 + v67, v68, v103);
  v69 = v91;
  v70 = v93;
  v71 = v95;
  v83(v91, v93, v95);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v90, v89, v87, v86, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v94 + 8);
  v73(v70, v71);
  v73(v92, v71);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  v76 = v104;
  *(v75 + 16) = v74;
  *(v75 + 24) = v76;
  v77 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v78 = v77[1];
  *v77 = sub_23DB071F4;
  v77[1] = v75;

  return v72;
}

uint64_t sub_23DAECC88()
{
  v1 = sub_23DB6EA8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB04C74(0xD000000000000024, 0x800000023DB89CE0);
  v8 = sub_23DB04C74(v6, v7);
  v10 = v9;

  v105 = v0;
  v11 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8CE00);
  v13 = v12;
  sub_23DB6EA7C();
  v14 = type metadata accessor for Page.PracticeVOSlider(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v103 = sub_23DA3981C(v5, v8, v10, v11, v13, MEMORY[0x277D84F90], 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v111 = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v17 = (type metadata accessor for CommandToPractice(0) - 8);
  v18 = *v17;
  v108 = *(*v17 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23DB7A0B0;
  v21 = v20;
  v104 = v20;
  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23)
  {
    v24 = 0xD00000000000001DLL;
  }

  else
  {
    v24 = 0xD00000000000001FLL;
  }

  if (v23)
  {
    v25 = "tutorial.vo.magicTap.text";
  }

  else
  {
    v25 = "cTap.button.play";
  }

  v26 = v21 + v19;
  v27 = sub_23DB04C74(v24, v25 | 0x8000000000000000);
  v29 = v28;

  *v26 = 0;
  *(v26 + 8) = 0xE000000000000000;
  *(v26 + 17) = 186;
  *(v26 + 19) = 0;
  v30 = v21 + v19 + v17[11];
  sub_23DB6EA7C();
  v31 = v17[12];
  *(v26 + v31) = 1;
  v32 = v17[13];
  *(v26 + v32) = 1;
  v33 = v17[14];
  v106 = type metadata accessor for KeyboardKey(0);
  v34 = *(v106 - 8);
  v35 = *(v34 + 56);
  v36 = v34 + 56;
  v35(v26 + v33, 1, 1, v106);
  v107 = v36;
  v37 = (v26 + v17[15]);
  *v37 = 0;
  v37[1] = 0;
  v38 = *(v26 + 8);
  *v26 = v27;
  *(v26 + 8) = v29;

  *(v26 + 16) = 62;
  *(v26 + 19) = 1;
  v39 = v37[1];
  *v37 = 0;
  v37[1] = 0;

  *(v26 + v31) = 1;
  *(v26 + v32) = 1;
  v40 = v108;
  v41 = v26 + v108;
  v101 = sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB8CE30);
  v43 = v42;
  *v41 = 0;
  *(v41 + 8) = 0xE000000000000000;
  *(v41 + 17) = 186;
  *(v41 + 19) = 0;
  v44 = v41 + v17[11];
  sub_23DB6EA7C();
  v45 = v17[12];
  *(v41 + v45) = 1;
  v46 = v17[13];
  *(v41 + v46) = 1;
  v47 = v41 + v17[14];
  v102 = v35;
  v35(v47, 1, 1, v106);
  v48 = (v41 + v17[15]);
  *v48 = 0;
  v48[1] = 0;
  v49 = *(v41 + 8);
  *v41 = v101;
  *(v41 + 8) = v43;

  *(v41 + 16) = 10;
  *(v41 + 19) = 0;
  v50 = v48[1];
  *v48 = 0;
  v48[1] = 0;

  *(v41 + v45) = 1;
  *(v41 + v46) = 1;
  v51 = 2 * v40;
  v52 = v26 + 2 * v40;
  v53 = sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB8CE60);
  v55 = v54;
  *v52 = 0;
  *(v52 + 8) = 0xE000000000000000;
  *(v52 + 17) = 186;
  *(v52 + 19) = 0;
  v56 = v52 + v17[11];
  sub_23DB6EA7C();
  v57 = v17[12];
  *(v52 + v57) = 1;
  v58 = v17[13];
  *(v52 + v58) = 1;
  v59 = v106;
  v35(v52 + v17[14], 1, 1, v106);
  v60 = (v52 + v17[15]);
  *v60 = 0;
  v60[1] = 0;
  v61 = *(v52 + 8);
  *v52 = v53;
  *(v52 + 8) = v55;

  *(v52 + 16) = 11;
  *(v52 + 19) = 0;
  v62 = v60[1];
  *v60 = 0;
  v60[1] = 0;

  *(v52 + v57) = 1;
  *(v52 + v58) = 1;
  v63 = v26 + v51 + v108;
  v64 = v105;
  v65 = sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB8CE90);
  v67 = v66;
  *v63 = 0;
  *(v63 + 8) = 0xE000000000000000;
  *(v63 + 17) = 186;
  *(v63 + 19) = 0;
  v68 = v63 + v17[11];
  sub_23DB6EA7C();
  v69 = v17[12];
  *(v63 + v69) = 1;
  v70 = v17[13];
  *(v63 + v70) = 1;
  v102(v63 + v17[14], 1, 1, v59);
  v71 = (v63 + v17[15]);
  *v71 = 0;
  v71[1] = 0;
  v72 = *(v63 + 8);
  *v63 = v65;
  *(v63 + 8) = v67;

  *(v63 + 16) = 5;
  *(v63 + 19) = 0;
  v73 = v71[1];
  *v71 = 0;
  v71[1] = 0;

  *(v63 + v69) = 1;
  *(v63 + v70) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v74 = v103;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v76 = *(v74 + v75);
  *(v74 + v75) = v104;

  [objc_opt_self() getSpeakingRate];
  v78 = v77;
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v109) = v78;

  sub_23DB6EF1C();
  v79 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB89E30);
  v81 = v80;
  swift_getKeyPath();
  swift_getKeyPath();
  v109 = v79;
  v110 = v81;

  sub_23DB6EF1C();
  v82 = v64;
  v83 = sub_23DB04C74(0xD000000000000040, 0x800000023DB89E60);
  v85 = v84;
  swift_getKeyPath();
  swift_getKeyPath();
  v109 = v83;
  v110 = v85;

  sub_23DB6EF1C();
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  *(v87 + 24) = v64;
  v88 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  *v88 = sub_23DB06D9C;
  v88[1] = v87;
  swift_retain_n();

  sub_23DA18BA0(v89);

  v91 = swift_allocObject();
  swift_weakInit();
  v92 = swift_allocObject();
  *(v92 + 16) = v91;
  *(v92 + 24) = v82;
  v93 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v94 = v93[1];
  *v93 = sub_23DB06DA4;
  v93[1] = v92;

  v95 = swift_allocObject();
  swift_weakInit();

  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  *(v96 + 24) = v82;
  v97 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v98 = v97[1];
  *v97 = sub_23DB07208;
  v97[1] = v96;

  return v74;
}

uint64_t sub_23DAED5F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v9[0] == 1)
    {
      v2 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v10 = *(v1 + v2);
      swift_getKeyPath();
      swift_getKeyPath();

      v3 = sub_23DB6EEFC();
      sub_23DB05F68(&v10, v4);
      v3(v9, 0);

      v5 = v10;
      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v6 = *(v1 + v2);
      *(v1 + v2) = v5;

      if (qword_27E2FBBD0 != -1)
      {
        swift_once();
      }

      v7 = *(qword_27E30A6A8 + 32);
      swift_beginAccess();
      v8 = *(v7 + 40);
      swift_getKeyPath();
      swift_getKeyPath();
      LODWORD(v10) = v8;
      return sub_23DB6EF1C();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DAED874()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v3 = *v1;
    v2 = v1[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v4 = MEMORY[0x277D764B0];
    sub_23DB05C14(v3, v2, MEMORY[0x277D764B0]);

    sub_23DB05C14(v7, v8, v4);

    [objc_opt_self() getSpeakingRate];
    v6 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v6 == *&v7)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF1C();
      sub_23DB04C74(0xD00000000000002ELL, 0x800000023DB8CEC0);
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_23DB6EF1C();
    }
  }

  return result;
}

uint64_t sub_23DAEDAC0()
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
      sub_23DB06674(v35, v37 + v36, type metadata accessor for CommandToPractice);
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
      sub_23DB0672C(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
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
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v40 = v51;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v41 = *(v40 + v50);
    *(v40 + v50) = v24;
  }

  return result;
}

uint64_t sub_23DAEE054()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v134 = *(v1 - 8);
  v135 = v1;
  v2 = *(v134 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v133 = &v108 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v131 = *(v5 - 8);
  v132 = v5;
  v6 = *(v131 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v129 = &v108 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v120 = *(v130 - 8);
  v9 = *(v120 + 8);
  MEMORY[0x28223BE20](v130, v10);
  v119 = &v108 - v11;
  *&v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v115 = *(v116 - 8);
  v12 = *(v115 + 64);
  MEMORY[0x28223BE20](v116, v13);
  v112 = &v108 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v110 = *(v111 - 8);
  v15 = *(v110 + 64);
  MEMORY[0x28223BE20](v111, v16);
  v109 = &v108 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v108 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v123 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v108 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v108 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v108 - v39;
  v122 = sub_23DB04C74(0xD000000000000021, 0x800000023DB88750);
  v121 = v41;
  v136 = v0;
  v118 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8CDA0);
  v117 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.PracticeVOSingleGesture(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v127 = v25;
  v47 = *(v25 + 16);
  v124 = v40;
  v47(v36, v40, v24);
  v126 = v32;
  v125 = v36;
  v128 = v24;
  v114 = v25 + 16;
  v113 = v47;
  v47(v32, v36, v24);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v137) = 0;
  sub_23DB6EECC();
  v49 = *(v19 + 32);
  v50 = v18;
  v49(v46 + v48, v23, v18);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v137 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v109;
  sub_23DB6EECC();
  (*(v110 + 32))(v46 + v53, v54, v111);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v137 = 0;
  v56 = v112;
  sub_23DB6EECC();
  (*(v115 + 32))(v46 + v55, v56, v116);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v137) = 0;
  sub_23DB6EECC();
  v49(v46 + v57, v23, v18);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v116 = xmmword_23DB74320;
  v137 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v119;
  sub_23DB6EECC();
  v60 = *(v120 + 4);
  v120 = v49;
  v61 = v130;
  v60(v46 + v58, v59, v130);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v137 = v116;
  sub_23DB6EECC();
  v60(v46 + v62, v59, v61);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v137) = 0;
  sub_23DB6EECC();
  v120(v46 + v63, v23, v50);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v137 = 0;
  *(&v137 + 1) = 0xE000000000000000;
  v65 = v129;
  sub_23DB6EECC();
  (*(v131 + 32))(v46 + v64, v65, v132);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v137 = 0uLL;
  sub_23DB6EECC();
  v60(v46 + v66, v59, v61);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v137 = nullsub_1;
  *(&v137 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v133;
  sub_23DB6EECC();
  (*(v134 + 32))(v46 + v67, v68, v135);
  v69 = v123;
  v70 = v126;
  v71 = v128;
  v113(v123, v126, v128);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v122, v121, v118, v117, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v127 + 8);
  v73(v70, v71);
  v73(v125, v71);
  v73(v124, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v74 = (type metadata accessor for CommandToPractice(0) - 8);
  v75 = *(*v74 + 72);
  v76 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_23DB73BA0;
  v78 = v77 + v76;

  v79 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8CDD0);
  v81 = v80;
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
  (*(*(v86 - 8) + 56))(v78 + v85, 1, 1, v86);
  v87 = (v78 + v74[15]);
  *v87 = 0;
  v87[1] = 0;
  v88 = *(v78 + 8);
  *v78 = v79;
  *(v78 + 8) = v81;

  *(v78 + 16) = 2312;
  *(v78 + 19) = 1;
  *(v78 + v83) = 1;
  *(v78 + v84) = 1;
  v89 = v87[1];
  *v87 = 0;
  v87[1] = 0;

  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v90 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v91 = *(v72 + v90);
  *(v72 + v90) = v77;

  v92 = swift_allocObject();
  swift_weakInit();
  v93 = swift_allocObject();
  v94 = v136;
  swift_weakInit();
  v95 = swift_allocObject();
  *(v95 + 16) = v92;
  *(v95 + 24) = v93;
  v96 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  *v96 = sub_23DB06C9C;
  v96[1] = v95;
  swift_retain_n();

  sub_23DA18BA0(v97);

  v99 = swift_allocObject();
  swift_weakInit();
  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = v94;
  v101 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v102 = v101[1];
  *v101 = sub_23DB06CA4;
  v101[1] = v100;

  v103 = swift_allocObject();
  swift_weakInit();

  v104 = swift_allocObject();
  *(v104 + 16) = v103;
  *(v104 + 24) = v94;
  v105 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v106 = v105[1];
  *v105 = sub_23DB071FC;
  v105[1] = v104;

  return v72;
}

size_t sub_23DAEEDC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if ((v9 & 1) == 0)
  {
  }

  v2 = sub_23DB04C74(0xD000000000000031, 0x800000023DB88190);
  v4 = v3;
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v6 = *(v1 + v5);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v6 + 2))
    {
LABEL_6:
      v7 = *(type metadata accessor for CommandToPractice(0) - 8);
      sub_23DB0496C(&v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v2, v4);

      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v8 = *(v1 + v5);
      *(v1 + v5) = v6;
    }
  }

  else
  {
    result = sub_23DAC8B24(v6);
    v6 = result;
    if (*(result + 16))
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DAEF010()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v2 = objc_opt_self();
      v3 = sub_23DB7087C();
      [v2 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v4 = objc_opt_self();
      v5 = sub_23DB7087C();
      [v4 triggerEventCommand_];
    }

    v6 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v9 = MEMORY[0x277D764B0];
    sub_23DB05C14(v8, v7, MEMORY[0x277D764B0]);

    sub_23DB05C14(v10, v11, v9);
  }

  return result;
}

uint64_t sub_23DAEF20C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v159 = *(v1 - 8);
  v160 = v1;
  v2 = *(v159 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v158 = &v134 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v156 = *(v5 - 8);
  v157 = v5;
  v6 = *(v156 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v154 = &v134 - v8;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v152 = *(v155 - 8);
  v9 = *(v152 + 64);
  MEMORY[0x28223BE20](v155, v10);
  v149 = &v134 - v11;
  *&v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v141 = *(v142 - 8);
  v12 = *(v141 + 64);
  MEMORY[0x28223BE20](v142, v13);
  v140 = &v134 - v14;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v136 = *(v137 - 8);
  v15 = *(v136 + 64);
  MEMORY[0x28223BE20](v137, v16);
  v135 = &v134 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v134 - v22;
  v24 = sub_23DB6EA8C();
  v162 = *(v24 - 8);
  v25 = v162[8];
  MEMORY[0x28223BE20](v24, v26);
  v147 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v134 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v134 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v134 - v38;
  v146 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8CB60);
  v145 = v40;
  v163 = v0;
  v144 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8CB90);
  v143 = v41;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v165) = 0;
  sub_23DB6EECC();
  v47 = *(v19 + 32);
  v47(v45 + v46, v23, v18);
  v48 = v162 + 2;
  v49 = v162[2];
  v148 = v39;
  v49(v35, v39, v24);
  v151 = v31;
  v150 = v35;
  v153 = v24;
  v139 = v48;
  v138 = v49;
  v49(v31, v35, v24);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v165) = 0;
  sub_23DB6EECC();
  v51 = v23;
  v161 = v18;
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
  *&v165 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v135;
  sub_23DB6EECC();
  (*(v136 + 32))(v45 + v54, v55, v137);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v52;
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v165 = 0;
  v57 = v140;
  sub_23DB6EECC();
  (*(v141 + 32))(v45 + v56, v57, v142);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v165) = 0;
  sub_23DB6EECC();
  v47(v45 + v58, v23, v161);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v142 = xmmword_23DB74320;
  v165 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v60 = v149;
  sub_23DB6EECC();
  v61 = *(v152 + 32);
  v62 = v155;
  v61(v45 + v59, v60, v155);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v165 = v142;
  sub_23DB6EECC();
  v61(v45 + v63, v60, v62);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v165) = 0;
  sub_23DB6EECC();
  v47(v45 + v64, v51, v161);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  v66 = v154;
  sub_23DB6EECC();
  (*(v156 + 32))(v45 + v65, v66, v157);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v165 = 0uLL;
  sub_23DB6EECC();
  v61(v45 + v67, v60, v62);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v165 = nullsub_1;
  *(&v165 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v69 = v158;
  sub_23DB6EECC();
  (*(v159 + 32))(v45 + v68, v69, v160);
  v70 = v147;
  v71 = v151;
  v72 = v153;
  v138(v147, v151, v153);
  v73 = Page.init(id:title:text:subPages:iconName:)(v70, v146, v145, v144, v143, MEMORY[0x277D84F90], 0, 0);
  v74 = v162[1];
  v74(v71, v72);
  v74(v150, v72);
  v74(v148, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v75 = (type metadata accessor for CommandToPractice(0) - 8);
  v76 = *(*v75 + 72);
  v77 = (*(*v75 + 80) + 32) & ~*(*v75 + 80);
  v159 = 2 * v76;
  v78 = swift_allocObject();
  v160 = v78;
  *(v78 + 16) = xmmword_23DB76A80;
  v79 = v78 + v77;

  v156 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8CBC0);
  v155 = v80;
  v81 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8CBF0);
  v157 = v82;
  *v79 = 0;
  *(v79 + 8) = 0xE000000000000000;
  *(v79 + 17) = 186;
  *(v79 + 19) = 0;
  v83 = v79 + v75[11];
  sub_23DB6EA7C();
  v84 = v75[12];
  *(v79 + v84) = 1;
  v85 = v75[13];
  *(v79 + v85) = 1;
  v86 = v75[14];
  v87 = type metadata accessor for KeyboardKey(0);
  v88 = *(v87 - 8);
  v161 = *(v88 + 56);
  v162 = (v88 + 56);
  v158 = v87;
  v161(v79 + v86, 1, 1, v87);
  v89 = (v79 + v75[15]);
  *v89 = 0;
  v89[1] = 0;
  v90 = *(v79 + 8);
  v91 = v155;
  *v79 = v156;
  *(v79 + 8) = v91;

  *(v79 + 16) = 2312;
  *(v79 + 19) = 1;
  *(v79 + v84) = 1;
  *(v79 + v85) = 1;
  v92 = v89[1];
  v93 = v157;
  *v89 = v81;
  v89[1] = v93;

  v94 = v79 + v76;
  v95 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8CC20);
  v157 = v96;
  v156 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8CC50);
  v98 = v97;
  *v94 = 0;
  *(v94 + 8) = 0xE000000000000000;
  *(v94 + 17) = 186;
  *(v94 + 19) = 0;
  v99 = v94 + v75[11];
  sub_23DB6EA7C();
  v100 = v75[12];
  *(v94 + v100) = 1;
  v101 = v75[13];
  *(v94 + v101) = 1;
  v161(v94 + v75[14], 1, 1, v87);
  v102 = (v94 + v75[15]);
  *v102 = 0;
  v102[1] = 0;
  v103 = *(v94 + 8);
  v104 = v157;
  *v94 = v95;
  *(v94 + 8) = v104;

  *(v94 + 16) = 10;
  *(v94 + 19) = 0;
  v105 = v102[1];
  *v102 = v156;
  v102[1] = v98;

  *(v94 + v100) = 1;
  *(v94 + v101) = 1;
  v106 = v79 + v159;
  v107 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8CC80);
  v109 = v108;
  v110 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8CCB0);
  v112 = v111;
  *v106 = 0;
  *(v106 + 8) = 0xE000000000000000;
  *(v106 + 17) = 186;
  *(v106 + 19) = 0;
  v113 = v106 + v75[11];
  sub_23DB6EA7C();
  v114 = v75[12];
  *(v106 + v114) = 1;
  v115 = v75[13];
  *(v106 + v115) = 1;
  v161(v106 + v75[14], 1, 1, v158);
  v116 = (v106 + v75[15]);
  *v116 = 0;
  v116[1] = 0;
  v117 = *(v106 + 8);
  *v106 = v107;
  *(v106 + 8) = v109;

  *(v106 + 16) = 11;
  *(v106 + 19) = 0;
  v118 = v116[1];
  *v116 = v110;
  v116[1] = v112;

  *(v106 + v114) = 1;
  *(v106 + v115) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v119 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v120 = *(v73 + v119);
  *(v73 + v119) = v160;

  swift_getKeyPath();
  swift_getKeyPath();
  v164 = 1;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v164 = 1;

  sub_23DB6EF1C();
  v121 = swift_allocObject();
  swift_weakInit();
  v122 = swift_allocObject();
  v123 = v163;
  *(v122 + 16) = v121;
  *(v122 + 24) = v123;
  v124 = (v73 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v125 = *v124;
  v126 = v124[1];
  *v124 = sub_23DB071F8;
  v124[1] = v122;
  swift_retain_n();

  sub_23DA18BA0(v125);

  v127 = swift_allocObject();
  swift_weakInit();
  v128 = swift_allocObject();
  *(v128 + 16) = v127;
  *(v128 + 24) = v123;
  v129 = (v73 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v130 = v129[1];
  *v129 = sub_23DB06C94;
  v129[1] = v128;

  swift_weakInit();

  swift_weakDestroy();
  v131 = (v73 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v132 = v131[1];
  *v131 = sub_23DA9E5CC;
  v131[1] = 0;

  return v73;
}

uint64_t sub_23DAF0208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v72 = (&v62 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v62 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  v73 = v1;
  if (qword_27E2FBBD0 != -1)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v56 = objc_opt_self();
    v57 = sub_23DB7087C();
    [v56 triggerEventCommand_];

    if (!UIAccessibilityIsVoiceOverRunning())
    {
LABEL_5:
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_6;
      }

LABEL_23:
      v60 = objc_opt_self();
      v61 = sub_23DB7087C();
      [v60 triggerEventCommand_];

      if (!UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (!UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_5;
  }

  v58 = objc_opt_self();
  v59 = sub_23DB7087C();
  [v58 triggerEventCommand_];

  if (UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_23;
  }

LABEL_6:
  if (UIAccessibilityIsVoiceOverRunning())
  {
LABEL_7:
    v16 = objc_opt_self();
    v17 = sub_23DB7087C();
    [v16 triggerEventCommand_];
  }

LABEL_8:
  v18 = (v15 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v21 = v75[0];
  v22 = v75[1];
  UIAccessibilityPostNotification(0x438u, 0);
  v23 = v15;
  v24 = MEMORY[0x277D764B0];
  sub_23DB05C14(v20, v19, MEMORY[0x277D764B0]);

  sub_23DB05C14(v21, v22, v24);

  v25 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v70 = v25;
  v26 = *(v23 + v25);
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();

  v69 = KeyPath;
  v68 = v28;
  v67 = sub_23DB6EEFC();
  v65 = v29;
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v71 = v23;
  v66 = v30;
  v64 = v31;
  v63 = sub_23DB6EEFC();
  v62 = v32;

  v15 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_23DAC8B24(v26);
  }

  v33 = 0;
  v34 = (v73 + 56);
  v35 = v26[2];
  v36 = (v73 + 48);
  if (!v35)
  {
LABEL_11:
    v37 = 1;
    v33 = v35;
    goto LABEL_14;
  }

  while (1)
  {
    if (v33 >= v26[2])
    {
      goto LABEL_27;
    }

    v38 = *(type metadata accessor for CommandToPractice(0) - 8);
    v73 = v33 + 1;
    v39 = v26 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v33;
    v40 = *(v0 + 48);
    v41 = v36;
    v42 = v34;
    v43 = v35;
    v44 = v13;
    v45 = v15;
    v46 = v0;
    v47 = v9;
    v48 = v26;
    v49 = v72;
    *v72 = v33;
    sub_23DB06674(v39, v49 + v40, type metadata accessor for CommandToPractice);
    v50 = v49;
    v26 = v48;
    v9 = v47;
    v0 = v46;
    v15 = v45;
    v13 = v44;
    v35 = v43;
    v34 = v42;
    v36 = v41;
    sub_23DA17A54(v50, v9, &qword_27E2FE1C0, &qword_23DB7A440);
    v37 = 0;
    v33 = v73;
LABEL_14:
    (*v34)(v9, v37, 1, v0);
    sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
    if ((*v36)(v13, 1, v0) == 1)
    {
      break;
    }

    v51 = *v13;
    if ((*v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_3;
    }

    if (v51 >= *(v15 + 16))
    {
      goto LABEL_26;
    }

    v52 = *(type metadata accessor for CommandToPractice(0) - 8);
    v53 = v15 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51;
    *(v53 + 18) = 0;
    *(v53 + 19) = v51 == 0;
    sub_23DB0672C(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
    if (v33 == v35)
    {
      goto LABEL_11;
    }
  }

  *v62 = 0;
  *v65 = 0;
  v63(v74, 0);

  v67(v75, 0);

  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v54 = v71;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v55 = *(v54 + v70);
  *(v54 + v70) = v15;

  swift_beginAccess();
  byte_27E2FE958 = (byte_27E2FE958 & 1) == 0;
}

char *sub_23DAF0A44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v187 = *(v1 - 8);
  v188 = v1;
  v2 = *(v187 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v186 = v161 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v184 = *(v5 - 8);
  v185 = v5;
  v6 = *(v184 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v181 = v161 - v8;
  *&v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v174 = *(v176 - 8);
  v9 = *(v174 + 64);
  MEMORY[0x28223BE20](v176, v10);
  v171 = v161 - v11;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v167 = *(v168 - 8);
  v12 = *(v167 + 64);
  MEMORY[0x28223BE20](v168, v13);
  v166 = v161 - v14;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v15 = *(v162 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v162, v17);
  v19 = v161 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v161 - v24;
  v26 = sub_23DB6EA8C();
  v190 = *(v26 - 8);
  v27 = v190[8];
  MEMORY[0x28223BE20](v26, v28);
  v180 = v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v189 = v161 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v36 = v161 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = v161 - v39;
  v173 = sub_23DB04C74(0xD000000000000020, 0x800000023DB88450);
  v172 = v41;
  v191 = v0;
  v170 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8CB00);
  v169 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.PracticeUneditableTextVO(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeUneditableTextVO__exampleText;
  *&v192 = 0;
  *(&v192 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v48 = *(v21 + 32);
  v175 = v25;
  v178 = v20;
  v177 = v21 + 32;
  v163 = v48;
  v48(v46 + v47, v25, v20);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeUneditableTextVO__showRetryPractice;
  LOBYTE(v192) = 1;
  sub_23DB6EECC();
  v52 = *(v15 + 32);
  v50 = v15 + 32;
  v51 = v52;
  v53 = v162;
  v52(v46 + v49, v19, v162);
  v54 = v190 + 2;
  v55 = v190[2];
  v179 = v40;
  v55(v36, v40, v26);
  v182 = v36;
  v183 = v26;
  v165 = v54;
  v164 = v55;
  v55(v189, v36, v26);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v192) = 0;
  sub_23DB6EECC();
  v57 = v19;
  v58 = v53;
  v52(v46 + v56, v19, v53);
  v59 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v60 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v60 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v60;
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v192 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v62 = v59;
  v63 = v166;
  sub_23DB6EECC();
  (*(v167 + 32))(v46 + v61, v63, v168);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v62;
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v192 = 0;
  v65 = v171;
  sub_23DB6EECC();
  (*(v174 + 32))(v46 + v64, v65, v176);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v192) = 0;
  v67 = v57;
  sub_23DB6EECC();
  v161[1] = v50;
  v51(v46 + v66, v57, v53);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v176 = xmmword_23DB74320;
  v192 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v69 = v181;
  sub_23DB6EECC();
  v70 = v185;
  v71 = *(v184 + 32);
  v71(v46 + v68, v69, v185);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v192 = v176;
  sub_23DB6EECC();
  v71(v46 + v72, v69, v70);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v192) = 0;
  sub_23DB6EECC();
  v51(v46 + v73, v67, v58);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v192 = 0;
  *(&v192 + 1) = 0xE000000000000000;
  v75 = v175;
  sub_23DB6EECC();
  v163(v46 + v74, v75, v178);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v192 = 0uLL;
  sub_23DB6EECC();
  v71(v46 + v76, v69, v70);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v192 = nullsub_1;
  *(&v192 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v78 = v186;
  sub_23DB6EECC();
  (*(v187 + 32))(v46 + v77, v78, v188);
  v79 = v180;
  v80 = v189;
  v81 = v183;
  v164(v180, v189, v183);
  v82 = Page.init(id:title:text:subPages:iconName:)(v79, v173, v172, v170, v169, MEMORY[0x277D84F90], 0, 0);
  v83 = v190[1];
  v83(v179, v81);
  v83(v80, v81);
  v83(v182, v81);
  v84 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8CB30);
  v86 = v85;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v192 = v84;
  *(&v192 + 1) = v86;

  v186 = v82;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v192) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v87 = (type metadata accessor for CommandToPractice(0) - 8);
  v88 = *v87;
  v190 = *(*v87 + 72);
  v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_23DB7A0B0;
  v91 = v90;
  v187 = v90;
  v92 = [objc_opt_self() currentDevice];
  v93 = [v92 userInterfaceIdiom];

  v94 = "tutorial.vo.magicTap.text";
  if (v93)
  {
    v95 = 0xD00000000000001DLL;
  }

  else
  {
    v94 = "cTap.button.play";
    v95 = 0xD00000000000001FLL;
  }

  v96 = sub_23DB04C74(v95, v94 | 0x8000000000000000);
  v98 = v97;
  v99 = v91 + v89;
  *v99 = 0;
  *(v99 + 8) = 0xE000000000000000;
  *(v99 + 17) = 186;
  *(v99 + 19) = 0;
  v100 = v99 + v87[11];
  sub_23DB6EA7C();
  v101 = v87[12];
  *(v99 + v101) = 1;
  v102 = v87[13];
  *(v99 + v102) = 1;
  v103 = v87[14];
  v104 = type metadata accessor for KeyboardKey(0);
  v105 = *(v104 - 8);
  v188 = *(v105 + 56);
  v106 = (v105 + 56);
  v185 = v104;
  v188(v99 + v103, 1, 1, v104);
  v189 = v106;
  v107 = (v99 + v87[15]);
  *v107 = 0;
  v107[1] = 0;
  v108 = *(v99 + 8);
  *v99 = v96;
  *(v99 + 8) = v98;

  *(v99 + 16) = 62;
  *(v99 + 19) = 1;
  v109 = v107[1];
  *v107 = 0;
  v107[1] = 0;

  *(v99 + v101) = 1;
  *(v99 + v102) = 1;
  v110 = v190;
  v111 = v190 + v99;
  v112 = sub_23DB04C74(0xD000000000000025, 0x800000023DB88620);
  v114 = v113;
  *v111 = 0;
  *(v111 + 1) = 0xE000000000000000;
  *(v111 + 17) = 186;
  v111[19] = 0;
  v115 = &v111[v87[11]];
  sub_23DB6EA7C();
  v116 = v87[12];
  v111[v116] = 1;
  v117 = v87[13];
  v111[v117] = 1;
  v118 = v104;
  v119 = v188;
  v188(&v111[v87[14]], 1, 1, v118);
  v120 = &v111[v87[15]];
  *v120 = 0;
  *(v120 + 1) = 0;
  v121 = *(v111 + 1);
  *v111 = v112;
  *(v111 + 1) = v114;

  *(v111 + 8) = 2312;
  v111[19] = 0;
  v111[v116] = 0;
  v111[v117] = 1;
  v122 = *(v120 + 1);
  *v120 = 0;
  *(v120 + 1) = 0;

  v123 = 2 * v110;
  v124 = v99 + 2 * v110;
  v125 = sub_23DB04C74(0xD000000000000025, 0x800000023DB88650);
  v127 = v126;
  *v124 = 0;
  *(v124 + 8) = 0xE000000000000000;
  *(v124 + 17) = 186;
  *(v124 + 19) = 0;
  v128 = v124 + v87[11];
  sub_23DB6EA7C();
  v129 = v87[12];
  *(v124 + v129) = 1;
  v130 = v87[13];
  *(v124 + v130) = 1;
  v131 = v185;
  v119(v124 + v87[14], 1, 1, v185);
  v132 = (v124 + v87[15]);
  *v132 = 0;
  v132[1] = 0;
  v133 = *(v124 + 8);
  *v124 = v125;
  *(v124 + 8) = v127;

  *(v124 + 16) = 12;
  *(v124 + 19) = 0;
  v134 = v132[1];
  *v132 = 0;
  v132[1] = 0;

  *(v124 + v129) = 1;
  *(v124 + v130) = 1;
  v135 = v191;
  v136 = v190 + v123 + v99;
  v137 = sub_23DB04C74(0xD000000000000025, 0x800000023DB88680);
  v139 = v138;
  *v136 = 0;
  *(v136 + 1) = 0xE000000000000000;
  *(v136 + 17) = 186;
  v136[19] = 0;
  v140 = &v136[v87[11]];
  sub_23DB6EA7C();
  v141 = v87[12];
  v136[v141] = 1;
  v142 = v87[13];
  v136[v142] = 1;
  v188(&v136[v87[14]], 1, 1, v131);
  v143 = &v136[v87[15]];
  *v143 = 0;
  *(v143 + 1) = 0;
  v144 = *(v136 + 1);
  *v136 = v137;
  *(v136 + 1) = v139;

  v136[16] = 10;
  v136[19] = 0;
  v145 = *(v143 + 1);
  *v143 = 0;
  *(v143 + 1) = 0;

  v136[v141] = 1;
  v136[v142] = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v146 = v186;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v147 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v148 = *&v146[v147];
  *&v146[v147] = v187;

  v149 = swift_allocObject();
  swift_weakInit();
  v150 = swift_allocObject();
  *(v150 + 16) = v149;
  *(v150 + 24) = v135;
  v151 = &v146[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState];
  swift_beginAccess();
  v152 = *v151;
  v153 = v151[1];
  *v151 = sub_23DB06C20;
  v151[1] = v150;
  swift_retain_n();

  sub_23DA18BA0(v152);

  v154 = swift_allocObject();
  swift_weakInit();
  v155 = swift_allocObject();
  *(v155 + 16) = v154;
  *(v155 + 24) = v135;
  v156 = &v146[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction];
  swift_beginAccess();
  v157 = v156[1];
  *v156 = sub_23DB06C3C;
  v156[1] = v155;

  swift_weakInit();

  swift_weakDestroy();
  v158 = &v146[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction];
  swift_beginAccess();
  v159 = *(v158 + 1);
  *v158 = sub_23DA9E5CC;
  *(v158 + 1) = 0;

  return v146;
}

uint64_t sub_23DAF1B70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v63 = (&v53 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v53 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    v16 = result;
    swift_beginAccess();
    v18 = *v15;
    v17 = v15[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v19 = v66[0];
    v20 = v66[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v21 = MEMORY[0x277D764B0];
    sub_23DB05C14(v18, v17, MEMORY[0x277D764B0]);

    sub_23DB05C14(v19, v20, v21);

    v22 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v61 = v22;
    v23 = *(v16 + v22);
    KeyPath = swift_getKeyPath();
    v25 = swift_getKeyPath();

    v60 = KeyPath;
    v59 = v25;
    v58 = sub_23DB6EEFC();
    v56 = v26;
    v27 = swift_getKeyPath();
    v28 = swift_getKeyPath();
    v62 = v16;
    v57 = v27;
    v55 = v28;
    v54 = sub_23DB6EEFC();
    v53 = v29;

    v30 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_3:
    v31 = 0;
    v32 = (v1 + 56);
    v33 = v23[2];
    v1 += 48;
    if (!v33)
    {
LABEL_4:
      v34 = 1;
      v31 = v33;
      goto LABEL_7;
    }

    while (1)
    {
      if (v31 >= v23[2])
      {
        goto LABEL_16;
      }

      v35 = *(type metadata accessor for CommandToPractice(0) - 8);
      v64 = v31 + 1;
      v36 = v23 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31;
      v37 = *(v0 + 48);
      v38 = v1;
      v39 = v32;
      v40 = v13;
      v41 = v33;
      v42 = v0;
      v43 = v30;
      v44 = v9;
      v45 = v23;
      v46 = v63;
      *v63 = v31;
      sub_23DB06674(v36, v46 + v37, type metadata accessor for CommandToPractice);
      v47 = v46;
      v23 = v45;
      v9 = v44;
      v30 = v43;
      v0 = v42;
      v33 = v41;
      v13 = v40;
      v32 = v39;
      v1 = v38;
      sub_23DA17A54(v47, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v34 = 0;
      v31 = v64;
LABEL_7:
      (*v32)(v9, v34, 1, v0);
      sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {
        break;
      }

      v48 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v30 = sub_23DAC8B24(v23);
        goto LABEL_3;
      }

      if (v48 >= *(v30 + 16))
      {
        goto LABEL_15;
      }

      v49 = *(type metadata accessor for CommandToPractice(0) - 8);
      v50 = v30 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48;
      *(v50 + 18) = 0;
      *(v50 + 19) = v48 == 0;
      sub_23DB0672C(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
      if (v31 == v33)
      {
        goto LABEL_4;
      }
    }

    *v53 = 0;
    *v56 = 0;
    v54(v65, 0);

    v58(v66, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v51 = v62;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v52 = *(v51 + v61);
    *(v51 + v61) = v30;

    swift_beginAccess();
    byte_27E2FE958 = (byte_27E2FE958 & 1) == 0;
  }

  return result;
}

uint64_t sub_23DAF2214()
{
  v1 = v0;
  v2 = type metadata accessor for ButtonWithIconAndLabel(0);
  v4 = (v2 - 8);
  v133 = *(v2 - 8);
  v3 = v133;
  v5 = *(v133 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v134 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v123 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = 0xD00000000000001FLL;
  v17 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB892D0);
  v19 = v18;
  v20 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8CA40);
  v22 = v21;
  sub_23DB6EA7C();
  v23 = type metadata accessor for Page.PracticeVOCustomAction(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_23DA3432C(v16, v17, v19, v20, v22, MEMORY[0x277D84F90], 0, 0);

  v27 = sub_23DB04C74(0xD000000000000020, 0x800000023DB88020);
  v29 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  v135[0] = v27;
  v135[1] = v29;

  sub_23DB6EF1C();
  v30 = sub_23DB04C74(0xD000000000000026, 0x800000023DB89320);
  v32 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  v135[0] = v30;
  v135[1] = v32;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v135, "speaker.wave.3");
  HIBYTE(v135[1]) = -18;

  sub_23DB6EF1C();
  v33 = sub_23DB04C74(0xD000000000000023, 0x800000023DB89350);
  v35 = v34;

  v36 = v11;
  sub_23DB6EA7C();
  v37 = &v11[v4[7]];
  *v37 = v33;
  v37[1] = v35;
  *&v11[v4[8]] = xmmword_23DB7A0E0;
  v38 = &v11[v4[9]];
  v129 = v11;
  *v38 = sub_23DB06A8C;
  v38[1] = v1;
  v39 = sub_23DB04C74(0xD000000000000023, 0x800000023DB89380);
  v41 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = v1;
  *(v42 + 24) = v26;
  v43 = v26;

  v44 = v1;

  v45 = v134;
  sub_23DB6EA7C();
  v46 = (v45 + v4[7]);
  *v46 = v39;
  v46[1] = v41;
  *(v45 + v4[8]) = xmmword_23DB7A0F0;
  v47 = (v45 + v4[9]);
  *v47 = sub_23DB06A94;
  v47[1] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E8, &qword_23DB7A7B0);
  v48 = *(v3 + 72);
  v49 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_23DB78D60;
  v128 = type metadata accessor for ButtonWithIconAndLabel;
  sub_23DB06674(v36, v50 + v49, type metadata accessor for ButtonWithIconAndLabel);
  sub_23DB06674(v45, v50 + v49 + v48, type metadata accessor for ButtonWithIconAndLabel);
  swift_getKeyPath();
  swift_getKeyPath();
  v135[0] = v50;
  v127 = v43;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v51 = (type metadata accessor for CommandToPractice(0) - 8);
  v52 = *v51;
  v133 = *(*v51 + 72);
  v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_23DB7A0B0;
  v55 = v54;
  v126 = v54;
  v56 = [objc_opt_self() currentDevice];
  v57 = [v56 userInterfaceIdiom];

  v58 = "tutorial.vo.magicTap.text";
  if (v57)
  {
    v59 = 0xD00000000000001DLL;
  }

  else
  {
    v58 = "cTap.button.play";
    v59 = v132;
  }

  v130 = v44;
  v60 = sub_23DB04C74(v59, v58 | 0x8000000000000000);
  v62 = v61;
  v63 = v55 + v53;
  *v63 = 0;
  *(v63 + 8) = 0xE000000000000000;
  *(v63 + 17) = 186;
  *(v63 + 19) = 0;
  v64 = v63 + v51[11];
  sub_23DB6EA7C();
  v65 = v51[12];
  *(v63 + v65) = 1;
  v66 = v51[13];
  *(v63 + v66) = 1;
  v67 = v51[14];
  v68 = type metadata accessor for KeyboardKey(0);
  v69 = *(v68 - 8);
  v131 = *(v69 + 56);
  v132 = v69 + 56;
  v131(v63 + v67, 1, 1, v68);
  v70 = (v63 + v51[15]);
  *v70 = 0;
  v70[1] = 0;
  v71 = *(v63 + 8);
  *v63 = v60;
  *(v63 + 8) = v62;

  *(v63 + 16) = 62;
  *(v63 + 19) = 1;
  v72 = v70[1];
  *v70 = 0;
  v70[1] = 0;

  *(v63 + v65) = 1;
  *(v63 + v66) = 1;
  v73 = v133;
  v74 = v63 + v133;
  v75 = sub_23DB04C74(0xD000000000000028, 0x800000023DB8CA70);
  v124 = v76;
  *v74 = 0;
  *(v74 + 8) = 0xE000000000000000;
  *(v74 + 17) = 186;
  *(v74 + 19) = 0;
  v77 = v74 + v51[11];
  sub_23DB6EA7C();
  v78 = v51[12];
  *(v74 + v78) = 1;
  v79 = v51[13];
  *(v74 + v79) = 1;
  v80 = v74 + v51[14];
  v125 = v68;
  v81 = v131;
  v131(v80, 1, 1, v68);
  v82 = (v74 + v51[15]);
  *v82 = 0;
  v82[1] = 0;
  v83 = *(v74 + 8);
  v84 = v124;
  *v74 = v75;
  *(v74 + 8) = v84;

  *(v74 + 16) = 26;
  *(v74 + 19) = 0;
  v85 = v82[1];
  *v82 = 0;
  v82[1] = 0;

  *(v74 + v78) = 1;
  *(v74 + v79) = 1;
  v124 = 2 * v73;
  v86 = v63 + 2 * v73;
  v87 = sub_23DB04C74(0xD000000000000028, 0x800000023DB8CAA0);
  v89 = v88;
  *v86 = 0;
  *(v86 + 8) = 0xE000000000000000;
  *(v86 + 17) = 186;
  *(v86 + 19) = 0;
  v90 = v86 + v51[11];
  sub_23DB6EA7C();
  v91 = v51[12];
  *(v86 + v91) = 1;
  v92 = v51[13];
  *(v86 + v92) = 1;
  v81(v86 + v51[14], 1, 1, v68);
  v93 = (v86 + v51[15]);
  *v93 = 0;
  v93[1] = 0;
  v94 = *(v86 + 8);
  *v86 = v87;
  *(v86 + 8) = v89;

  *(v86 + 16) = 3;
  *(v86 + 19) = 0;
  v95 = v93[1];
  *v93 = 0;
  v93[1] = 0;

  *(v86 + v91) = 0;
  *(v86 + v92) = 1;
  v96 = v63 + v124 + v133;
  v97 = v130;
  v98 = sub_23DB04C74(0xD000000000000028, 0x800000023DB8CAD0);
  v100 = v99;
  *v96 = 0;
  *(v96 + 8) = 0xE000000000000000;
  *(v96 + 17) = 186;
  *(v96 + 19) = 0;
  v101 = v96 + v51[11];
  sub_23DB6EA7C();
  v102 = v51[12];
  *(v96 + v102) = 1;
  v103 = v51[13];
  *(v96 + v103) = 1;
  v131(v96 + v51[14], 1, 1, v125);
  v104 = (v96 + v51[15]);
  *v104 = 0;
  v104[1] = 0;
  v105 = *(v96 + 8);
  *v96 = v98;
  *(v96 + 8) = v100;

  *(v96 + 16) = 63;
  *(v96 + 19) = 0;
  v106 = v104[1];
  *v104 = 0;
  v104[1] = 0;

  *(v96 + v102) = 0;
  *(v96 + v103) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v107 = v127;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v108 = v128;
  sub_23DB0672C(v134, v128);
  sub_23DB0672C(v129, v108);
  v109 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v110 = *(v107 + v109);
  *(v107 + v109) = v126;
  v111 = v107;

  v112 = swift_allocObject();
  swift_weakInit();
  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  *(v113 + 24) = v97;
  v114 = v97;
  v115 = (v111 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v116 = *v115;
  v117 = v115[1];
  *v115 = sub_23DB06AEC;
  v115[1] = v113;
  swift_retain_n();

  sub_23DA18BA0(v116);

  v118 = swift_allocObject();
  swift_weakInit();

  v119 = swift_allocObject();
  *(v119 + 16) = v118;
  *(v119 + 24) = v114;
  v120 = (v111 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v121 = v120[1];
  *v120 = sub_23DB06AF4;
  v120[1] = v119;

  return v111;
}

void sub_23DAF2D3C()
{
  if (*MEMORY[0x277CE6CD8])
  {
    v0 = *MEMORY[0x277D76438];
    v1 = *MEMORY[0x277CE6CD8];
    UIAccessibilityPostNotification(v0, v1);
  }

  else
  {
    __break(1u);
  }
}

void sub_23DAF2DA8(uint64_t a1, uint64_t a2)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF480, &unk_23DB7E9A0);
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54, v4);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF58, &unk_23DB77960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v57 = &v46 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v46 - v17;
  v19 = type metadata accessor for CommandToPractice(0);
  v55 = *(v19 - 8);
  v20 = *(v55 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v47 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v46 - v25;
  if (*MEMORY[0x277CE6CE0])
  {
    v27 = *MEMORY[0x277D76438];
    v28 = *MEMORY[0x277CE6CE0];
    UIAccessibilityPostNotification(v27, v28);

    v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v53 = v29;
    v60 = *(a2 + v29);
    v49 = *(v60 + 16);
    if (v49)
    {
      v46 = v11;
      v30 = v55;
      v48 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v59 = v60 + v48;
      v58 = (v55 + 56);
      v51 = (v55 + 48);
      v52 = a2;

      v31 = 0;
      v32 = v49;
      v50 = v18;
      v56 = v6;
      while (v31 < *(v60 + 16))
      {
        v33 = *(v30 + 72);
        sub_23DB06674(v59 + v33 * v31, v26, type metadata accessor for CommandToPractice);
        if (v26[18])
        {
          sub_23DB0672C(v26, type metadata accessor for CommandToPractice);
        }

        else
        {
          sub_23DB06674(v26, v18, type metadata accessor for CommandToPractice);
          v34 = *v58;
          v35 = 1;
          (*v58)(v18, 0, 1, v19);
          v36 = *(v52 + v53);
          v37 = *(v36 + 16);
          if (v37)
          {
            v38 = v36 + v48 + (v37 - 1) * v33;
            v39 = v57;
            sub_23DB06674(v38, v57, type metadata accessor for CommandToPractice);
            v35 = 0;
          }

          else
          {
            v39 = v57;
          }

          v34(v39, v35, 1, v19);
          v40 = *(v54 + 48);
          sub_23DB06AFC(v18, v6);
          sub_23DB06AFC(v39, &v6[v40]);
          v41 = *v51;
          if ((*v51)(v6, 1, v19) == 1)
          {
            sub_23DA17988(v39, &qword_27E2FCF58, &unk_23DB77960);
            v6 = v56;
            sub_23DA17988(v18, &qword_27E2FCF58, &unk_23DB77960);
            sub_23DB0672C(v26, type metadata accessor for CommandToPractice);
            if (v41(&v6[v40], 1, v19) != 1)
            {
              goto LABEL_21;
            }

            sub_23DA17988(v6, &qword_27E2FCF58, &unk_23DB77960);
            v30 = v55;
            v18 = v50;
          }

          else
          {
            v42 = v46;
            sub_23DB06AFC(v6, v46);
            if (v41(&v6[v40], 1, v19) == 1)
            {
              sub_23DA17988(v57, &qword_27E2FCF58, &unk_23DB77960);
              sub_23DA17988(v50, &qword_27E2FCF58, &unk_23DB77960);
              sub_23DB0672C(v26, type metadata accessor for CommandToPractice);
              sub_23DB0672C(v42, type metadata accessor for CommandToPractice);
LABEL_21:
              sub_23DA17988(v6, &qword_27E2FF480, &unk_23DB7E9A0);
LABEL_22:

              return;
            }

            v43 = v47;
            sub_23DB06B6C(&v6[v40], v47);
            v44 = _s28AccessibilitySharedUISupport17CommandToPracticeV2eeoiySbAC_ACtFZ_0(v42, v43);
            v32 = v49;
            sub_23DB0672C(v43, type metadata accessor for CommandToPractice);
            sub_23DA17988(v57, &qword_27E2FCF58, &unk_23DB77960);
            v18 = v50;
            sub_23DA17988(v50, &qword_27E2FCF58, &unk_23DB77960);
            sub_23DB0672C(v26, type metadata accessor for CommandToPractice);
            sub_23DB0672C(v42, type metadata accessor for CommandToPractice);
            v6 = v56;
            sub_23DA17988(v56, &qword_27E2FCF58, &unk_23DB77960);
            v30 = v55;
            if ((v44 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        if (v32 == ++v31)
        {

          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      if (qword_27E2FBBD0 == -1)
      {
LABEL_19:
        v45 = *(qword_27E30A6A8 + 16);
        swift_beginAccess();
        *(v45 + 40) = 63;

        sub_23DABC32C();

        return;
      }
    }

    swift_once();
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_23DAF3400()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v12[0] != 1)
    {
    }

    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v2 = qword_27E30A6A8;
    v3 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    v12[0] = *(v3 + 40);
    if (VOCommandIdentifier.rawValue.getter() == 0xD00000000000001ELL && 0x800000023DB852C0 == v4)
    {
    }

    else
    {
      v5 = sub_23DB70DBC();

      if ((v5 & 1) == 0)
      {
LABEL_11:
        v7 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
        swift_beginAccess();
        v13 = *(v1 + v7);
        swift_getKeyPath();
        swift_getKeyPath();

        v8 = sub_23DB6EEFC();
        sub_23DB05F68(&v13, v9);
        v8(v12, 0);

        v10 = v13;
        type metadata accessor for Page.Practice(0);
        sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v11 = *(v1 + v7);
        *(v1 + v7) = v10;
      }
    }

    v6 = *(v2 + 16);
    swift_beginAccess();
    *(v6 + 40) = 26;

    sub_23DABC32C();

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_23DAF36E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v63 = (&v53 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v53 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    v16 = result;
    swift_beginAccess();
    v18 = *v15;
    v17 = v15[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v19 = v66[0];
    v20 = v66[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v21 = MEMORY[0x277D764B0];
    sub_23DB05C14(v18, v17, MEMORY[0x277D764B0]);

    sub_23DB05C14(v19, v20, v21);

    v22 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v61 = v22;
    v23 = *(v16 + v22);
    KeyPath = swift_getKeyPath();
    v25 = swift_getKeyPath();

    v60 = KeyPath;
    v59 = v25;
    v58 = sub_23DB6EEFC();
    v56 = v26;
    v27 = swift_getKeyPath();
    v28 = swift_getKeyPath();
    v62 = v16;
    v57 = v27;
    v55 = v28;
    v54 = sub_23DB6EEFC();
    v53 = v29;

    v30 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_3:
    v31 = 0;
    v32 = (v1 + 56);
    v33 = v23[2];
    v1 += 48;
    if (!v33)
    {
LABEL_4:
      v34 = 1;
      v31 = v33;
      goto LABEL_7;
    }

    while (1)
    {
      if (v31 >= v23[2])
      {
        goto LABEL_16;
      }

      v35 = *(type metadata accessor for CommandToPractice(0) - 8);
      v64 = v31 + 1;
      v36 = v23 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31;
      v37 = *(v0 + 48);
      v38 = v1;
      v39 = v32;
      v40 = v13;
      v41 = v33;
      v42 = v0;
      v43 = v30;
      v44 = v9;
      v45 = v23;
      v46 = v63;
      *v63 = v31;
      sub_23DB06674(v36, v46 + v37, type metadata accessor for CommandToPractice);
      v47 = v46;
      v23 = v45;
      v9 = v44;
      v30 = v43;
      v0 = v42;
      v33 = v41;
      v13 = v40;
      v32 = v39;
      v1 = v38;
      sub_23DA17A54(v47, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v34 = 0;
      v31 = v64;
LABEL_7:
      (*v32)(v9, v34, 1, v0);
      sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {
        break;
      }

      v48 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v30 = sub_23DAC8B24(v23);
        goto LABEL_3;
      }

      if (v48 >= *(v30 + 16))
      {
        goto LABEL_15;
      }

      v49 = *(type metadata accessor for CommandToPractice(0) - 8);
      v50 = v30 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48;
      *(v50 + 18) = 0;
      *(v50 + 19) = v48 == 0;
      sub_23DB0672C(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
      if (v31 == v33)
      {
        goto LABEL_4;
      }
    }

    *v53 = 0;
    *v56 = 0;
    v54(v65, 0);

    v58(v66, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v51 = v62;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v52 = *(v51 + v61);
    *(v51 + v61) = v30;
  }

  return result;
}

uint64_t sub_23DAF3D5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v131 = *(v1 - 8);
  v132 = v1;
  v2 = *(v131 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v130 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v128 = *(v5 - 8);
  v129 = v5;
  v6 = *(v128 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v126 = &v106 - v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v120 = *(v127 - 8);
  v9 = *(v120 + 64);
  MEMORY[0x28223BE20](v127, v10);
  v116 = &v106 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v112 = *(v113 - 1);
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v113, v13);
  v109 = &v106 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v107 = *(v108 - 8);
  v15 = *(v107 + 64);
  MEMORY[0x28223BE20](v108, v16);
  v106 = &v106 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v106 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v119 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v106 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v106 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v106 - v39;
  v118 = sub_23DB04C74(0xD000000000000017, 0x800000023DB89F10);
  v117 = v41;
  v133 = v0;
  v115 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8C9F0);
  v114 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.PracticeVOSingleGesture(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v124 = v25;
  v47 = *(v25 + 16);
  v121 = v40;
  v47(v36, v40, v24);
  v123 = v32;
  v122 = v36;
  v125 = v24;
  v111 = v25 + 16;
  v110 = v47;
  v47(v32, v36, v24);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v134) = 0;
  sub_23DB6EECC();
  v49 = *(v19 + 32);
  v49(v46 + v48, v23, v18);
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
  *&v134 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v53 = v106;
  sub_23DB6EECC();
  (*(v107 + 32))(v46 + v52, v53, v108);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v134 = 0;
  v55 = v109;
  sub_23DB6EECC();
  (*(v112 + 32))(v46 + v54, v55, v113);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v134) = 0;
  sub_23DB6EECC();
  v49(v46 + v56, v23, v18);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v112 = xmmword_23DB74320;
  v134 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v113 = v49;
  v58 = v116;
  sub_23DB6EECC();
  v59 = *(v120 + 32);
  v60 = v127;
  v59(v46 + v57, v58, v127);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v134 = v112;
  sub_23DB6EECC();
  v59(v46 + v61, v58, v60);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v134) = 0;
  sub_23DB6EECC();
  v113(v46 + v62, v23, v18);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v134 = 0;
  *(&v134 + 1) = 0xE000000000000000;
  v64 = v126;
  sub_23DB6EECC();
  (*(v128 + 32))(v46 + v63, v64, v129);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v134 = 0uLL;
  sub_23DB6EECC();
  v59(v46 + v65, v58, v60);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v134 = nullsub_1;
  *(&v134 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v67 = v130;
  sub_23DB6EECC();
  (*(v131 + 32))(v46 + v66, v67, v132);
  v68 = v119;
  v69 = v123;
  v70 = v125;
  v110(v119, v123, v125);
  v71 = Page.init(id:title:text:subPages:iconName:)(v68, v118, v117, v115, v114, MEMORY[0x277D84F90], 0, 0);
  v72 = *(v124 + 8);
  v72(v69, v70);
  v72(v122, v70);
  v72(v121, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v73 = (type metadata accessor for CommandToPractice(0) - 8);
  v74 = *(*v73 + 72);
  v75 = (*(*v73 + 80) + 32) & ~*(*v73 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_23DB73BA0;
  v77 = v76 + v75;

  v78 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8CA10);
  v80 = v79;
  *v77 = 0;
  *(v77 + 8) = 0xE000000000000000;
  *(v77 + 17) = 186;
  *(v77 + 19) = 0;
  v81 = v77 + v73[11];
  sub_23DB6EA7C();
  v82 = v73[12];
  *(v77 + v82) = 1;
  v83 = v73[13];
  *(v77 + v83) = 1;
  v84 = v73[14];
  v85 = type metadata accessor for KeyboardKey(0);
  (*(*(v85 - 8) + 56))(v77 + v84, 1, 1, v85);
  v86 = (v77 + v73[15]);
  *v86 = 0;
  v86[1] = 0;
  v87 = *(v77 + 8);
  *v77 = v78;
  *(v77 + 8) = v80;

  *(v77 + 16) = 15;
  *(v77 + 19) = 0;
  v88 = v86[1];
  *v86 = 0;
  v86[1] = 0;

  *(v77 + v82) = 1;
  *(v77 + v83) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v89 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v90 = *(v71 + v89);
  *(v71 + v89) = v76;

  v91 = swift_allocObject();
  swift_weakInit();
  v92 = swift_allocObject();
  v93 = v133;
  *(v92 + 16) = v91;
  *(v92 + 24) = v93;
  v94 = (v71 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  *v94 = sub_23DB06990;
  v94[1] = v92;
  swift_retain_n();

  sub_23DA18BA0(v95);

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = v93;
  v99 = (v71 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v100 = v99[1];
  *v99 = sub_23DB069AC;
  v99[1] = v98;

  v101 = swift_allocObject();
  swift_weakInit();

  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  *(v102 + 24) = v93;
  v103 = (v71 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v104 = v103[1];
  *v103 = sub_23DB069C8;
  v103[1] = v102;

  return v71;
}

uint64_t sub_23DAF4A94()
{
  v1 = sub_23DB6EA8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8C8D0);
  v8 = v7;
  v9 = v0;
  v10 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8C900);
  v12 = v11;
  sub_23DB6EA7C();
  v13 = type metadata accessor for Page.PracticeVOTyping(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v98 = sub_23DA34FDC(v5, v6, v8, v10, v12, MEMORY[0x277D84F90], 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v16 = (type metadata accessor for CommandToPractice(0) - 8);
  v17 = *v16;
  v101 = *(*v16 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23DB7A0B0;
  v20 = v19;
  v97 = v19;
  v21 = objc_opt_self();

  v22 = [v21 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = "tutorial.vo.magicTap.text";
  if (v23)
  {
    v25 = 0xD00000000000001DLL;
  }

  else
  {
    v24 = "cTap.button.play";
    v25 = 0xD00000000000001FLL;
  }

  v100 = v9;
  v26 = sub_23DB04C74(v25, v24 | 0x8000000000000000);
  v28 = v27;
  v29 = v20 + v18;
  *v29 = 0;
  *(v29 + 8) = 0xE000000000000000;
  *(v29 + 17) = 186;
  *(v29 + 19) = 0;
  v30 = v20 + v18 + v16[11];
  sub_23DB6EA7C();
  v31 = v16[12];
  *(v29 + v31) = 1;
  v32 = v16[13];
  *(v29 + v32) = 1;
  v33 = v16[14];
  v99 = type metadata accessor for KeyboardKey(0);
  v34 = *(v99 - 8);
  v35 = *(v34 + 56);
  v94[1] = v34 + 56;
  v35(v29 + v33, 1, 1, v99);
  v96 = v35;
  v36 = (v29 + v16[15]);
  *v36 = 0;
  v36[1] = 0;
  v37 = *(v29 + 8);
  *v29 = v26;
  *(v29 + 8) = v28;

  *(v29 + 16) = 62;
  *(v29 + 19) = 1;
  v38 = v36[1];
  *v36 = 0;
  v36[1] = 0;

  *(v29 + v31) = 1;
  *(v29 + v32) = 1;
  v39 = v101;
  v40 = v29 + v101;
  v41 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C930);
  v95 = v42;
  *v40 = 0;
  *(v40 + 8) = 0xE000000000000000;
  *(v40 + 17) = 186;
  *(v40 + 19) = 0;
  v43 = v40 + v16[11];
  sub_23DB6EA7C();
  v44 = v16[12];
  *(v40 + v44) = 1;
  v45 = v16[13];
  *(v40 + v45) = 1;
  v46 = v99;
  v35(v40 + v16[14], 1, 1, v99);
  v47 = (v40 + v16[15]);
  *v47 = 0;
  v47[1] = 0;
  v48 = *(v40 + 8);
  v49 = v95;
  *v40 = v41;
  *(v40 + 8) = v49;

  *(v40 + 16) = 25;
  *(v40 + 19) = 0;
  v50 = v47[1];
  *v47 = 0;
  v47[1] = 0;

  *(v40 + v44) = 1;
  *(v40 + v45) = 1;
  v95 = 2 * v39;
  v51 = v29 + 2 * v39;
  v52 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C960);
  v54 = v53;
  *v51 = 0;
  *(v51 + 8) = 0xE000000000000000;
  *(v51 + 17) = 186;
  *(v51 + 19) = 0;
  v55 = v51 + v16[11];
  sub_23DB6EA7C();
  v56 = v16[12];
  *(v51 + v56) = 1;
  v57 = v16[13];
  *(v51 + v57) = 1;
  v58 = v46;
  v59 = v96;
  v96(v51 + v16[14], 1, 1, v58);
  v60 = (v51 + v16[15]);
  *v60 = 0;
  v60[1] = 0;
  v61 = *(v51 + 8);
  *v51 = v52;
  *(v51 + 8) = v54;

  *(v51 + 16) = 63;
  *(v51 + 19) = 0;
  v62 = v60[1];
  *v60 = 0;
  v60[1] = 0;

  *(v51 + v56) = 1;
  *(v51 + v57) = 1;
  v63 = v29 + v95 + v101;
  v64 = v100;
  v65 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C990);
  v67 = v66;
  *v63 = 0;
  *(v63 + 8) = 0xE000000000000000;
  *(v63 + 17) = 186;
  *(v63 + 19) = 0;
  v68 = v63 + v16[11];
  sub_23DB6EA7C();
  v69 = v16[12];
  *(v63 + v69) = 1;
  v70 = v16[13];
  *(v63 + v70) = 1;
  v59(v63 + v16[14], 1, 1, v99);
  v71 = (v63 + v16[15]);
  *v71 = 0;
  v71[1] = 0;
  v72 = *(v63 + 8);
  *v63 = v65;
  *(v63 + 8) = v67;

  *(v63 + 16) = 24;
  *(v63 + 19) = 0;
  v73 = v71[1];
  *v71 = 0;
  v71[1] = 0;

  *(v63 + v69) = 1;
  *(v63 + v70) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v74 = v98;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v76 = *(v74 + v75);
  *(v74 + v75) = v97;

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v102) = 1;
  sub_23DB6EF1C();
  v77 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C9C0);
  v79 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v77;
  v103 = v79;

  sub_23DB6EF1C();
  v80 = swift_allocObject();
  swift_weakInit();
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v64;
  v82 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v83 = v82[1];
  *v82 = sub_23DB068E0;
  v82[1] = v81;
  swift_retain_n();

  v84 = swift_allocObject();
  swift_weakInit();
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  *(v85 + 24) = v64;
  v86 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  *v86 = sub_23DB068E8;
  v86[1] = v85;

  sub_23DA18BA0(v87);

  v89 = swift_allocObject();
  swift_weakInit();

  v90 = swift_allocObject();
  *(v90 + 16) = v89;
  *(v90 + 24) = v64;
  v91 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v92 = v91[1];
  *v91 = sub_23DB071FC;
  v91[1] = v90;

  return v74;
}

uint64_t sub_23DAF531C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v3 = *v1;
    v2 = v1[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v4 = MEMORY[0x277D764B0];
    sub_23DB05C14(v3, v2, MEMORY[0x277D764B0]);

    sub_23DB05C14(v5, v6, v4);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DAF54BC()
{
  v0 = type metadata accessor for CommandToPractice(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v16[0] == 1)
    {
      v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v17 = *(v7 + v8);
      swift_getKeyPath();
      swift_getKeyPath();

      v9 = sub_23DB6EEFC();
      sub_23DB05F68(&v17, v10);
      v9(v16, 0);

      v11 = v17;
      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v12 = *(v7 + v8);
      *(v7 + v8) = v11;

      v13 = *(v7 + v8);

      if (*(v13 + 16) < 3uLL)
      {
        __break(1u);
        return result;
      }

      sub_23DB06674(v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 2 * *(v1 + 72), v5, type metadata accessor for CommandToPractice);

      v14 = v5[18];
      sub_23DB0672C(v5, type metadata accessor for CommandToPractice);
      if (v14 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF0C();

        if ((v16[0] & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v16[0] = 1;
          return sub_23DB6EF1C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_23DAF5814()
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
      sub_23DB06674(v32, v42 + v33, type metadata accessor for CommandToPractice);
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
        sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
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
      sub_23DB0672C(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
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

uint64_t sub_23DAF5E34()
{
  v1 = v0;
  v2 = sub_23DB6EA8C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8C740);
  v9 = v8;
  v10 = sub_23DB04C74(0xD00000000000001ELL, 0x800000023DB8C760);
  v12 = v11;
  sub_23DB6EA7C();
  v13 = type metadata accessor for Page.PracticeVOTypingSettings(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_23DA35C30(v6, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v1;
  v19 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v20 = v19[1];
  *v19 = sub_23DB067E0;
  v19[1] = v18;

  v21 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C780);
  v23 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v21;
  v35 = v23;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF470, &qword_23DB7E708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB7A0B0;
  *(inited + 32) = xmmword_23DB7E120;
  *(inited + 48) = 0xE000000000000000;
  *(inited + 56) = 0;
  *(inited + 64) = 0xE000000000000000;
  *(inited + 72) = 0;
  *(inited + 80) = sub_23DB04C74(0xD000000000000028, 0x800000023DB8C7B0);
  *(inited + 88) = v25;
  *(inited + 96) = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C7E0);
  *(inited + 104) = v26;
  *(inited + 112) = 1;
  *(inited + 120) = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8C810);
  *(inited + 128) = v27;
  *(inited + 136) = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8C840);
  *(inited + 144) = v28;
  *(inited + 152) = 2;
  *(inited + 160) = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8C870);
  *(inited + 168) = v29;
  *(inited + 176) = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8C8A0);
  *(inited + 184) = v30;
  v31 = sub_23DB6BD6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF478, &qword_23DB7E710);
  swift_arrayDestroy();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v31;

  sub_23DB6EF1C();
  return v16;
}

uint64_t sub_23DAF61F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    _AXSVoiceOverTouchTypingMode();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    _AXSVoiceOverTouchSetTypingMode();
    v2 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v4 = *v2;
    v3 = v2[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v5 = MEMORY[0x277D764B0];
    sub_23DB05C14(v4, v3, MEMORY[0x277D764B0]);

    sub_23DB05C14(v6, v7, v5);
  }

  return result;
}

size_t sub_23DAF63B4()
{
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v172 = *(v174 - 8);
  v1 = *(v172 + 64);
  MEMORY[0x28223BE20](v174, v2);
  v171 = &v145 - v3;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v169 = *(v170 - 8);
  v4 = *(v169 + 64);
  MEMORY[0x28223BE20](v170, v5);
  v167 = &v145 - v6;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v164 = *(v168 - 8);
  v7 = *(v164 + 64);
  MEMORY[0x28223BE20](v168, v8);
  v163 = &v145 - v9;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v155 = *(v156 - 1);
  v10 = *(v155 + 64);
  MEMORY[0x28223BE20](v156, v11);
  v154 = &v145 - v12;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v149 = *(v151 - 8);
  v13 = *(v149 + 64);
  MEMORY[0x28223BE20](v151, v14);
  v147 = &v145 - v15;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v16 = *(v146 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v146, v18);
  v20 = &v145 - v19;
  v21 = sub_23DB6EA8C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v159 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v145 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v145 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v145 - v36;
  v158 = sub_23DB04C74(0xD000000000000016, 0x800000023DB8C5E0);
  v157 = v38;
  v173 = objc_opt_self();
  v39 = [v173 currentDevice];
  v40 = [v39 userInterfaceIdiom];

  v41 = "tutorial.vo.home.title";
  if (v40)
  {
    v42 = 0xD00000000000001ALL;
  }

  else
  {
    v41 = ".text.homeButton.ipad";
    v42 = 0xD00000000000001CLL;
  }

  v175 = v0;
  v152 = sub_23DB04C74(v42, v41 | 0x8000000000000000);
  v153 = v43;
  sub_23DB6EA7C();
  v44 = type metadata accessor for Page.PracticeVOSingleGesture(0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  v165 = v22;
  v48 = *(v22 + 16);
  v160 = v37;
  v48(v33, v37, v21);
  v162 = v29;
  v161 = v33;
  v166 = v21;
  v150 = v22 + 16;
  v148 = v48;
  v48(v29, v33, v21);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v178) = 0;
  sub_23DB6EECC();
  v50 = *(v16 + 32);
  v51 = v146;
  v50(v47 + v49, v20);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v178 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v52;
  v56 = v147;
  sub_23DB6EECC();
  (*(v149 + 32))(v47 + v54, v56, v151);
  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v55;
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v178 = 0;
  v58 = v154;
  sub_23DB6EECC();
  (*(v155 + 32))(v47 + v57, v58, v156);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v178) = 0;
  sub_23DB6EECC();
  (v50)(v47 + v59, v20, v51);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v155 = xmmword_23DB74320;
  v178 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v61 = v163;
  sub_23DB6EECC();
  v156 = v50;
  v62 = *(v164 + 32);
  v63 = v168;
  v62(v47 + v60, v61, v168);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v178 = v155;
  sub_23DB6EECC();
  v62(v47 + v64, v61, v63);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v178) = 0;
  sub_23DB6EECC();
  v156(v47 + v65, v20, v51);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v178 = 0;
  *(&v178 + 1) = 0xE000000000000000;
  v67 = v167;
  sub_23DB6EECC();
  (*(v169 + 32))(v47 + v66, v67, v170);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v178 = 0uLL;
  sub_23DB6EECC();
  v62(v47 + v68, v61, v63);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v178 = nullsub_1;
  *(&v178 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v70 = v171;
  sub_23DB6EECC();
  (*(v172 + 32))(v47 + v69, v70, v174);
  v71 = v159;
  v72 = v162;
  v73 = v166;
  v148(v159, v162, v166);
  v74 = Page.init(id:title:text:subPages:iconName:)(v71, v158, v157, v152, v153, MEMORY[0x277D84F90], 0, 0);
  v75 = *(v165 + 8);
  v75(v72, v73);
  v75(v161, v73);
  v75(v160, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v76 = (type metadata accessor for CommandToPractice(0) - 8);
  v77 = *(*v76 + 72);
  v78 = (*(*v76 + 80) + 32) & ~*(*v76 + 80);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_23DB73BA0;
  v174 = v78;
  v80 = v79 + v78;

  v81 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8C620);
  v83 = v82;
  *v80 = 0;
  *(v80 + 8) = 0xE000000000000000;
  *(v80 + 17) = 186;
  *(v80 + 19) = 0;
  v84 = v80 + v76[11];
  sub_23DB6EA7C();
  v85 = v76[12];
  *(v80 + v85) = 1;
  v86 = v76[13];
  *(v80 + v86) = 1;
  v87 = v76[14];
  v88 = type metadata accessor for KeyboardKey(0);
  (*(*(v88 - 8) + 56))(v80 + v87, 1, 1, v88);
  v89 = (v80 + v76[15]);
  *v89 = 0;
  v89[1] = 0;
  v90 = *(v80 + 8);
  *v80 = v81;
  *(v80 + 8) = v83;

  *(v80 + 16) = 0;
  *(v80 + 19) = 0;
  v91 = v89[1];
  *v89 = 0;
  v89[1] = 0;

  *(v80 + v85) = 1;
  *(v80 + v86) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v92 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v93 = *(v74 + v92);
  *(v74 + v92) = v79;

  v94 = v173;
  v95 = [v173 currentDevice];
  v96 = [v95 userInterfaceIdiom];

  if (v96 == 1)
  {
    if ([objc_opt_self() deviceHasHomeButton])
    {
      v97 = v175;
      v98 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8C640);
      v100 = v99;
      v101 = *(v74 + v92);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v101[2])
        {
LABEL_10:
          v102 = (v101 + v174);
          v103 = *(v101 + v174 + 8);
          *v102 = v98;
          v102[1] = v100;

          sub_23DB6EE6C();
          sub_23DB6EEBC();

          v104 = *(v74 + v92);
          *(v74 + v92) = v101;

          v105 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8C670);
          v107 = v106;
          v108 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
          swift_beginAccess();
          v109 = v108[1];
          *v108 = v105;
          v108[1] = v107;

          v110 = "tutorial.vo.home.command.ipad";
          v111 = 0xD000000000000025;
LABEL_20:
          v129 = sub_23DB04C74(v111, v110 | 0x8000000000000000);
          v131 = v130;
          swift_getKeyPath();
          swift_getKeyPath();
          v176 = v129;
          v177 = v131;
          sub_23DB6EF1C();
          goto LABEL_22;
        }
      }

      else
      {
        v101 = sub_23DAC8B24(v101);
        if (v101[2])
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
      v97 = v175;
      v98 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8C6D0);
      v100 = v114;
      v101 = *(v74 + v92);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (!v101[2])
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        goto LABEL_15;
      }
    }

    v101 = sub_23DAC8B24(v101);
    if (!v101[2])
    {
      goto LABEL_28;
    }

LABEL_15:
    v115 = (v101 + v174);
    v116 = *(v101 + v174 + 8);
    *v115 = v98;
    v115[1] = v100;

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v117 = *(v74 + v92);
    *(v74 + v92) = v101;

    goto LABEL_22;
  }

  v112 = [v94 currentDevice];
  v113 = [v112 userInterfaceIdiom];

  if (v113)
  {

    v97 = v175;
LABEL_22:
    v132 = swift_allocObject();
    swift_weakInit();
    v133 = swift_allocObject();
    *(v133 + 16) = v132;
    *(v133 + 24) = v97;
    v134 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v135 = *v134;
    v136 = v134[1];
    *v134 = sub_23DB07200;
    v134[1] = v133;
    swift_retain_n();

    sub_23DA18BA0(v135);

    v137 = swift_allocObject();
    swift_weakInit();
    v138 = swift_allocObject();
    *(v138 + 16) = v137;
    *(v138 + 24) = v97;
    v139 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v140 = v139[1];
    *v139 = sub_23DB067D8;
    v139[1] = v138;

    v141 = swift_allocObject();
    swift_weakInit();

    v142 = swift_allocObject();
    *(v142 + 16) = v141;
    *(v142 + 24) = v97;
    v143 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    v144 = v143[1];
    *v143 = sub_23DB071FC;
    v143[1] = v142;

    return v74;
  }

  v118 = [objc_opt_self() deviceHasHomeButton];
  v97 = v175;
  if (!v118)
  {

    goto LABEL_22;
  }

  v98 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8C640);
  v100 = v119;
  v101 = *(v74 + v92);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_29:
    result = sub_23DAC8B24(v101);
    v101 = result;
    if (!*(result + 16))
    {
      goto LABEL_30;
    }

LABEL_19:
    v121 = (v101 + v174);
    v122 = *(v101 + v174 + 8);
    *v121 = v98;
    v121[1] = v100;

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v123 = *(v74 + v92);
    *(v74 + v92) = v101;

    v124 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8C670);
    v126 = v125;
    v127 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v128 = v127[1];
    *v127 = v124;
    v127[1] = v126;

    v110 = ".title.homeButton";
    v111 = 0xD000000000000027;
    goto LABEL_20;
  }

  if (v101[2])
  {
    goto LABEL_19;
  }

LABEL_30:
  __break(1u);
  return result;
}

size_t sub_23DAF7584()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v9 == 1)
    {

      v2 = sub_23DB04C74(0xD000000000000031, 0x800000023DB88190);
      v4 = v3;
      v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v6 = *(v1 + v5);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (*(v6 + 2))
        {
LABEL_5:
          v7 = *(type metadata accessor for CommandToPractice(0) - 8);
          sub_23DB0496C(&v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v2, v4);

          type metadata accessor for Page.Practice(0);
          sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
          sub_23DB6EE6C();
          sub_23DB6EEBC();

          v8 = *(v1 + v5);
          *(v1 + v5) = v6;
        }
      }

      else
      {
        result = sub_23DAC8B24(v6);
        v6 = result;
        if (*(result + 16))
        {
          goto LABEL_5;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DAF779C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v2 = objc_opt_self();
      v3 = sub_23DB7087C();
      [v2 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v4 = objc_opt_self();
      v5 = sub_23DB7087C();
      [v4 triggerEventCommand_];
    }

    v6 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v9 = MEMORY[0x277D764B0];
    sub_23DB05C14(v8, v7, MEMORY[0x277D764B0]);

    sub_23DB05C14(v10, v11, v9);
  }

  return result;
}

size_t sub_23DAF7998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v149 = *(v1 - 8);
  v150 = v1;
  v2 = *(v149 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v148 = &v123 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v146 = *(v5 - 8);
  v147 = v5;
  v6 = *(v146 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v144 = &v123 - v8;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v135 = *(v145 - 8);
  v9 = *(v135 + 8);
  MEMORY[0x28223BE20](v145, v10);
  v134 = &v123 - v11;
  *&v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v130 = *(v131 - 8);
  v12 = *(v130 + 64);
  MEMORY[0x28223BE20](v131, v13);
  v127 = &v123 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v125 = *(v126 - 8);
  v15 = *(v125 + 64);
  MEMORY[0x28223BE20](v126, v16);
  v124 = &v123 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v123 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v138 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v123 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v123 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v123 - v39;
  v137 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8C460);
  v136 = v41;
  v151 = v0;
  v133 = sub_23DB04C74(0xD00000000000001CLL, 0x800000023DB8C480);
  v132 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.PracticeVOSingleGesture(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v142 = v25;
  v47 = *(v25 + 16);
  v139 = v40;
  v47(v36, v40, v24);
  v141 = v32;
  v140 = v36;
  v143 = v24;
  v129 = v25 + 16;
  v128 = v47;
  v47(v32, v36, v24);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v154) = 0;
  sub_23DB6EECC();
  v49 = *(v19 + 32);
  v50 = v18;
  v49(v46 + v48, v23, v18);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v154 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v124;
  sub_23DB6EECC();
  (*(v125 + 32))(v46 + v53, v54, v126);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v154 = 0;
  v56 = v127;
  sub_23DB6EECC();
  (*(v130 + 32))(v46 + v55, v56, v131);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v154) = 0;
  sub_23DB6EECC();
  v49(v46 + v57, v23, v18);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v131 = xmmword_23DB74320;
  v154 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v134;
  sub_23DB6EECC();
  v60 = *(v135 + 4);
  v135 = v49;
  v61 = v145;
  v60(v46 + v58, v59, v145);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v154 = v131;
  sub_23DB6EECC();
  v60(v46 + v62, v59, v61);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v154) = 0;
  sub_23DB6EECC();
  v135(v46 + v63, v23, v50);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v154 = 0;
  *(&v154 + 1) = 0xE000000000000000;
  v65 = v144;
  sub_23DB6EECC();
  (*(v146 + 32))(v46 + v64, v65, v147);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v154 = 0uLL;
  sub_23DB6EECC();
  v60(v46 + v66, v59, v61);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v154 = nullsub_1;
  *(&v154 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v148;
  sub_23DB6EECC();
  (*(v149 + 32))(v46 + v67, v68, v150);
  v69 = v138;
  v70 = v141;
  v71 = v143;
  v128(v138, v141, v143);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v137, v136, v133, v132, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v142 + 8);
  v73(v70, v71);
  v73(v140, v71);
  v73(v139, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v74 = (type metadata accessor for CommandToPractice(0) - 8);
  v75 = *(*v74 + 72);
  v76 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_23DB73BA0;
  v150 = v76;
  v78 = v77 + v76;

  v79 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C4A0);
  v81 = v80;
  *v78 = 0;
  *(v78 + 8) = 0xE000000000000000;
  *(v78 + 17) = 186;
  *(v78 + 19) = 0;
  v82 = v78 + v74[11];
  sub_23DB6EA7C();
  v83 = v74[12];
  v84 = 1;
  *(v78 + v83) = 1;
  v85 = v74[13];
  *(v78 + v85) = 1;
  v86 = v74[14];
  v87 = type metadata accessor for KeyboardKey(0);
  (*(*(v87 - 8) + 56))(v78 + v86, 1, 1, v87);
  v88 = (v78 + v74[15]);
  *v88 = 0;
  v88[1] = 0;
  v89 = *(v78 + 8);
  *v78 = v79;
  *(v78 + 8) = v81;

  *(v78 + 16) = 2;
  *(v78 + 19) = 0;
  v90 = v88[1];
  *v88 = 0;
  v88[1] = 0;

  *(v78 + v83) = 1;
  *(v78 + v85) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v91 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v92 = *(v72 + v91);
  *(v72 + v91) = v77;

  v93 = [objc_opt_self() currentDevice];
  v94 = [v93 userInterfaceIdiom];

  if (v94 == 1)
  {
    v95 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8C530);
    v97 = v96;
    v98 = *(v72 + v91);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v98[2])
      {
LABEL_6:
        v99 = (v98 + v150);
        v100 = *(v98 + v150 + 8);
        *v99 = v95;
        v99[1] = v97;

        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v101 = *(v72 + v91);
        *(v72 + v91) = v98;

        goto LABEL_7;
      }
    }

    else
    {
      v98 = sub_23DAC8B24(v98);
      if (v98[2])
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_7:
  if (![objc_opt_self() deviceHasHomeButton])
  {

    v84 = v151;
    goto LABEL_12;
  }

  v84 = v151;
  v95 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8C4D0);
  v97 = v102;
  v98 = *(v72 + v91);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_17:
    result = sub_23DAC8B24(v98);
    v98 = result;
    if (*(result + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (v98[2])
  {
LABEL_10:
    v104 = (v98 + v150);
    v105 = *(v98 + v150 + 8);
    *v104 = v95;
    v104[1] = v97;

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v106 = *(v72 + v91);
    *(v72 + v91) = v98;

    v107 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C500);
    v109 = v108;
    swift_getKeyPath();
    swift_getKeyPath();
    v152 = v107;
    v153 = v109;
    sub_23DB6EF1C();
LABEL_12:
    v110 = swift_allocObject();
    swift_weakInit();
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *(v111 + 24) = v84;
    v112 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v113 = *v112;
    v114 = v112[1];
    *v112 = sub_23DB07200;
    v112[1] = v111;
    swift_retain_n();

    sub_23DA18BA0(v113);

    v115 = swift_allocObject();
    swift_weakInit();
    v116 = swift_allocObject();
    *(v116 + 16) = v115;
    *(v116 + 24) = v84;
    v117 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v118 = v117[1];
    *v117 = sub_23DB067B4;
    v117[1] = v116;

    v119 = swift_allocObject();
    swift_weakInit();

    v120 = swift_allocObject();
    *(v120 + 16) = v119;
    *(v120 + 24) = v84;
    v121 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    v122 = v121[1];
    *v121 = sub_23DB067BC;
    v121[1] = v120;

    return v72;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23DAF88E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v2 = objc_opt_self();
      v3 = sub_23DB7087C();
      [v2 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v4 = objc_opt_self();
      v5 = sub_23DB7087C();
      [v4 triggerEventCommand_];
    }

    UIAccessibilityPostNotification(0x438u, 0);
    v6 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];

    v9 = MEMORY[0x277D764B0];
    sub_23DB05C14(v8, v7, MEMORY[0x277D764B0]);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    sub_23DB05C14(v10, v11, v9);
  }

  return result;
}

size_t sub_23DAF8ADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v150 = *(v1 - 8);
  v151 = v1;
  v2 = *(v150 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v149 = &v124 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v147 = *(v5 - 8);
  v148 = v5;
  v6 = *(v147 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v145 = &v124 - v8;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v136 = *(v146 - 8);
  v9 = *(v136 + 8);
  MEMORY[0x28223BE20](v146, v10);
  v135 = &v124 - v11;
  *&v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v131 = *(v132 - 8);
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v132, v13);
  v128 = &v124 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v126 = *(v127 - 8);
  v15 = *(v126 + 64);
  MEMORY[0x28223BE20](v127, v16);
  v125 = &v124 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v124 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v139 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v124 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v124 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v124 - v39;
  v138 = sub_23DB04C74(0xD000000000000024, 0x800000023DB89AE0);
  v137 = v41;
  v152 = v0;
  v134 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C350);
  v133 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.PracticeVOSingleGesture(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v143 = v25;
  v47 = *(v25 + 16);
  v140 = v40;
  v47(v36, v40, v24);
  v142 = v32;
  v141 = v36;
  v144 = v24;
  v130 = v25 + 16;
  v129 = v47;
  v47(v32, v36, v24);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v49 = *(v19 + 32);
  v50 = v18;
  v49(v46 + v48, v23, v18);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v155 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v125;
  sub_23DB6EECC();
  (*(v126 + 32))(v46 + v53, v54, v127);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v155 = 0;
  v56 = v128;
  sub_23DB6EECC();
  (*(v131 + 32))(v46 + v55, v56, v132);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v49(v46 + v57, v23, v18);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v132 = xmmword_23DB74320;
  v155 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v135;
  sub_23DB6EECC();
  v60 = *(v136 + 4);
  v136 = v49;
  v61 = v146;
  v60(v46 + v58, v59, v146);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v155 = v132;
  sub_23DB6EECC();
  v60(v46 + v62, v59, v61);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v136(v46 + v63, v23, v50);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v155 = 0;
  *(&v155 + 1) = 0xE000000000000000;
  v65 = v145;
  sub_23DB6EECC();
  (*(v147 + 32))(v46 + v64, v65, v148);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v155 = 0uLL;
  sub_23DB6EECC();
  v60(v46 + v66, v59, v61);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v155 = nullsub_1;
  *(&v155 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v149;
  sub_23DB6EECC();
  (*(v150 + 32))(v46 + v67, v68, v151);
  v69 = v139;
  v70 = v142;
  v71 = v144;
  v129(v139, v142, v144);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v138, v137, v134, v133, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v143 + 8);
  v73(v70, v71);
  v73(v141, v71);
  v73(v140, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v74 = (type metadata accessor for CommandToPractice(0) - 8);
  v75 = *(*v74 + 72);
  v76 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_23DB73BA0;
  v151 = v76;
  v78 = v77 + v76;

  v79 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8C380);
  v81 = v80;
  *v78 = 0;
  *(v78 + 8) = 0xE000000000000000;
  *(v78 + 17) = 186;
  *(v78 + 19) = 0;
  v82 = v78 + v74[11];
  sub_23DB6EA7C();
  v83 = v74[12];
  v84 = 1;
  *(v78 + v83) = 1;
  v85 = v74[13];
  *(v78 + v85) = 1;
  v86 = v74[14];
  v87 = type metadata accessor for KeyboardKey(0);
  (*(*(v87 - 8) + 56))(v78 + v86, 1, 1, v87);
  v88 = (v78 + v74[15]);
  *v88 = 0;
  v88[1] = 0;
  v89 = *(v78 + 8);
  *v78 = v79;
  *(v78 + 8) = v81;

  *(v78 + 16) = 7;
  *(v78 + 19) = 0;
  v90 = v88[1];
  *v88 = 0;
  v88[1] = 0;

  *(v78 + v83) = 1;
  *(v78 + v85) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v91 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v92 = *(v72 + v91);
  *(v72 + v91) = v77;

  v93 = [objc_opt_self() currentDevice];
  v94 = [v93 userInterfaceIdiom];

  if (v94 == 1)
  {
    v95 = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8C430);
    v97 = v96;
    v98 = *(v72 + v91);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v98[2])
      {
LABEL_6:
        v99 = (v98 + v151);
        v100 = *(v98 + v151 + 8);
        *v99 = v95;
        v99[1] = v97;

        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v101 = *(v72 + v91);
        *(v72 + v91) = v98;

        goto LABEL_7;
      }
    }

    else
    {
      v98 = sub_23DAC8B24(v98);
      if (v98[2])
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (![objc_opt_self() deviceHasHomeButton])
  {

    v84 = v152;
    goto LABEL_14;
  }

  v84 = v152;
  v95 = sub_23DB04C74(0xD000000000000035, 0x800000023DB8C3B0);
  v97 = v102;
  v98 = *(v72 + v91);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v98[2])
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_23DAC8B24(v98);
    v98 = result;
    if (*(result + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_19:
  v98 = sub_23DAC8B24(v98);
  if (!v98[2])
  {
    goto LABEL_20;
  }

LABEL_10:
  v103 = (v98 + v151);
  v104 = *(v98 + v151 + 8);
  *v103 = v95;
  v103[1] = v97;

  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v105 = *(v72 + v91);
  *(v72 + v91) = v98;

  v98 = *(v72 + v91);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v98[2])
  {
LABEL_12:
    *(v98 + v151 + 16) = 20;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v107 = *(v72 + v91);
    *(v72 + v91) = v98;

    v108 = sub_23DB04C74(0xD000000000000032, 0x800000023DB8C3F0);
    v110 = v109;
    swift_getKeyPath();
    swift_getKeyPath();
    v153 = v108;
    v154 = v110;
    sub_23DB6EF1C();
LABEL_14:
    v111 = swift_allocObject();
    swift_weakInit();
    v112 = swift_allocObject();
    *(v112 + 16) = v111;
    *(v112 + 24) = v84;
    v113 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v114 = *v113;
    v115 = v113[1];
    *v113 = sub_23DB07200;
    v113[1] = v112;
    swift_retain_n();

    sub_23DA18BA0(v114);

    v116 = swift_allocObject();
    swift_weakInit();
    v117 = swift_allocObject();
    *(v117 + 16) = v116;
    *(v117 + 24) = v84;
    v118 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v119 = v118[1];
    *v118 = sub_23DB067AC;
    v118[1] = v117;

    v120 = swift_allocObject();
    swift_weakInit();

    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    *(v121 + 24) = v84;
    v122 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    v123 = v122[1];
    *v122 = sub_23DB071FC;
    v122[1] = v121;

    return v72;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_23DAF9A98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v2 = objc_opt_self();
      v3 = sub_23DB7087C();
      [v2 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v4 = objc_opt_self();
      v5 = sub_23DB7087C();
      [v4 triggerEventCommand_];
    }

    v6 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v9 = MEMORY[0x277D764B0];
    sub_23DB05C14(v8, v7, MEMORY[0x277D764B0]);

    sub_23DB05C14(v10, v11, v9);
  }

  return result;
}

size_t sub_23DAF9C94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v153 = *(v1 - 8);
  v154 = v1;
  v2 = *(v153 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v152 = &v127 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v150 = *(v5 - 8);
  v151 = v5;
  v6 = *(v150 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v148 = &v127 - v8;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v141 = *(v149 - 8);
  v9 = *(v141 + 8);
  MEMORY[0x28223BE20](v149, v10);
  v138 = &v127 - v11;
  *&v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v134 = *(v135 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x28223BE20](v135, v13);
  v132 = &v127 - v14;
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
  v142 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v127 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v127 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v127 - v39;
  v140 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB89A30);
  v139 = v41;
  v155 = v0;
  v137 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C1C0);
  v136 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.PracticeVOSingleGesture(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v146 = v25;
  v47 = *(v25 + 16);
  v143 = v40;
  v47(v36, v40, v24);
  v145 = v32;
  v144 = v36;
  v147 = v24;
  v133 = v25 + 16;
  v131 = v47;
  v47(v32, v36, v24);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  v49 = *(v19 + 32);
  v50 = v18;
  v49(v46 + v48, v23, v18);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v158 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v128;
  sub_23DB6EECC();
  (*(v129 + 32))(v46 + v53, v54, v130);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v158 = 0;
  v56 = v132;
  sub_23DB6EECC();
  (*(v134 + 32))(v46 + v55, v56, v135);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  v49(v46 + v57, v23, v18);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v135 = xmmword_23DB74320;
  v158 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v138;
  sub_23DB6EECC();
  v60 = *(v141 + 4);
  v141 = v49;
  v61 = v149;
  v60(v46 + v58, v59, v149);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v158 = v135;
  sub_23DB6EECC();
  v60(v46 + v62, v59, v61);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  v141(v46 + v63, v23, v50);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  v65 = v148;
  sub_23DB6EECC();
  (*(v150 + 32))(v46 + v64, v65, v151);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v158 = 0uLL;
  sub_23DB6EECC();
  v60(v46 + v66, v59, v61);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v158 = nullsub_1;
  *(&v158 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v152;
  sub_23DB6EECC();
  (*(v153 + 32))(v46 + v67, v68, v154);
  v69 = v142;
  v70 = v145;
  v71 = v147;
  v131(v142, v145, v147);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v140, v139, v137, v136, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v146 + 8);
  v73(v70, v71);
  v73(v144, v71);
  v73(v143, v71);
  v74 = sub_23DB7087C();
  LODWORD(v71) = MGGetBoolAnswer();

  if (v71)
  {

    v75 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C2C0);
    v77 = v76;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v158 = v75;
    *(&v158 + 1) = v77;
    sub_23DB6EF1C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v78 = (type metadata accessor for CommandToPractice(0) - 8);
  v79 = *(*v78 + 72);
  v80 = (*(*v78 + 80) + 32) & ~*(*v78 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_23DB73BA0;
  v154 = v80;
  v82 = v81 + v80;

  v83 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8C1F0);
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
  (*(*(v90 - 8) + 56))(v82 + v89, 1, 1, v90);
  v91 = (v82 + v78[15]);
  *v91 = 0;
  v91[1] = 0;
  v92 = *(v82 + 8);
  *v82 = v83;
  *(v82 + 8) = v85;

  *(v82 + 16) = 6;
  *(v82 + 19) = 0;
  v93 = v91[1];
  *v91 = 0;
  v91[1] = 0;

  *(v82 + v87) = 1;
  *(v82 + v88) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v94 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v95 = *(v72 + v94);
  *(v72 + v94) = v81;

  v96 = [objc_opt_self() currentDevice];
  v97 = [v96 userInterfaceIdiom];

  if (v97 == 1)
  {
    v98 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C290);
    v100 = v99;
    v101 = *(v72 + v94);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v101[2])
      {
LABEL_8:
        v102 = (v101 + v154);
        v103 = *(v101 + v154 + 8);
        *v102 = v98;
        v102[1] = v100;

        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v104 = *(v72 + v94);
        *(v72 + v94) = v101;

        goto LABEL_9;
      }
    }

    else
    {
      v101 = sub_23DAC8B24(v101);
      if (v101[2])
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_9:
  if (![objc_opt_self() deviceHasHomeButton])
  {

    v89 = v155;
    goto LABEL_16;
  }

  v89 = v155;
  v98 = sub_23DB04C74(0xD000000000000030, 0x800000023DB8C220);
  v100 = v105;
  v101 = *(v72 + v94);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v101[2])
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_23DAC8B24(v101);
    v101 = result;
    if (*(result + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_21:
  v101 = sub_23DAC8B24(v101);
  if (!v101[2])
  {
    goto LABEL_22;
  }

LABEL_12:
  v106 = (v101 + v154);
  v107 = *(v101 + v154 + 8);
  *v106 = v98;
  v106[1] = v100;

  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v108 = *(v72 + v94);
  *(v72 + v94) = v101;

  v101 = *(v72 + v94);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v101[2])
  {
LABEL_14:
    *(v101 + v154 + 16) = 19;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v110 = *(v72 + v94);
    *(v72 + v94) = v101;

    v111 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8C260);
    v113 = v112;
    swift_getKeyPath();
    swift_getKeyPath();
    v156 = v111;
    v157 = v113;
    sub_23DB6EF1C();
LABEL_16:
    v114 = swift_allocObject();
    swift_weakInit();
    v115 = swift_allocObject();
    *(v115 + 16) = v114;
    *(v115 + 24) = v89;
    v116 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v117 = v116[1];
    *v116 = sub_23DB067A4;
    v116[1] = v115;
    swift_retain_n();

    v118 = swift_allocObject();
    swift_weakInit();
    v119 = swift_allocObject();
    *(v119 + 16) = v118;
    *(v119 + 24) = v89;
    v120 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    v121 = v120[1];
    *v120 = sub_23DB071FC;
    v120[1] = v119;

    v122 = swift_allocObject();
    swift_weakInit();

    v123 = swift_allocObject();
    *(v123 + 16) = v122;
    *(v123 + 24) = v89;
    v124 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v125 = *v124;
    v126 = v124[1];
    *v124 = sub_23DB07200;
    v124[1] = v123;

    sub_23DA18BA0(v125);

    return v72;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_23DAFACE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v2 = objc_opt_self();
      v3 = sub_23DB7087C();
      [v2 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v4 = objc_opt_self();
      v5 = sub_23DB7087C();
      [v4 triggerEventCommand_];
    }

    v6 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v9 = MEMORY[0x277D764B0];
    sub_23DB05C14(v8, v7, MEMORY[0x277D764B0]);

    sub_23DB05C14(v10, v11, v9);
  }

  return result;
}

uint64_t sub_23DAFAEE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v131 = *(v1 - 8);
  v132 = v1;
  v2 = *(v131 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v130 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v128 = *(v5 - 8);
  v129 = v5;
  v6 = *(v128 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v126 = &v106 - v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v120 = *(v127 - 8);
  v9 = *(v120 + 64);
  MEMORY[0x28223BE20](v127, v10);
  v116 = &v106 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v112 = *(v113 - 1);
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v113, v13);
  v109 = &v106 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v107 = *(v108 - 8);
  v15 = *(v107 + 64);
  MEMORY[0x28223BE20](v108, v16);
  v106 = &v106 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v106 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v119 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v106 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v106 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v106 - v39;
  v118 = sub_23DB04C74(0xD000000000000018, 0x800000023DB8C130);
  v117 = v41;
  v133 = v0;
  v115 = sub_23DB04C74(0xD000000000000017, 0x800000023DB8C150);
  v114 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.PracticeVOSingleGesture(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v124 = v25;
  v47 = *(v25 + 16);
  v121 = v40;
  v47(v36, v40, v24);
  v123 = v32;
  v122 = v36;
  v125 = v24;
  v111 = v25 + 16;
  v110 = v47;
  v47(v32, v36, v24);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v134) = 0;
  sub_23DB6EECC();
  v49 = *(v19 + 32);
  v49(v46 + v48, v23, v18);
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
  *&v134 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v53 = v106;
  sub_23DB6EECC();
  (*(v107 + 32))(v46 + v52, v53, v108);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v50;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v134 = 0;
  v55 = v109;
  sub_23DB6EECC();
  (*(v112 + 32))(v46 + v54, v55, v113);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v134) = 0;
  sub_23DB6EECC();
  v49(v46 + v56, v23, v18);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v112 = xmmword_23DB74320;
  v134 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v113 = v49;
  v58 = v116;
  sub_23DB6EECC();
  v59 = *(v120 + 32);
  v60 = v127;
  v59(v46 + v57, v58, v127);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v134 = v112;
  sub_23DB6EECC();
  v59(v46 + v61, v58, v60);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v134) = 0;
  sub_23DB6EECC();
  v113(v46 + v62, v23, v18);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v134 = 0;
  *(&v134 + 1) = 0xE000000000000000;
  v64 = v126;
  sub_23DB6EECC();
  (*(v128 + 32))(v46 + v63, v64, v129);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v134 = 0uLL;
  sub_23DB6EECC();
  v59(v46 + v65, v58, v60);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v134 = nullsub_1;
  *(&v134 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v67 = v130;
  sub_23DB6EECC();
  (*(v131 + 32))(v46 + v66, v67, v132);
  v68 = v119;
  v69 = v123;
  v70 = v125;
  v110(v119, v123, v125);
  v71 = Page.init(id:title:text:subPages:iconName:)(v68, v118, v117, v115, v114, MEMORY[0x277D84F90], 0, 0);
  v72 = *(v124 + 8);
  v72(v69, v70);
  v72(v122, v70);
  v72(v121, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v73 = (type metadata accessor for CommandToPractice(0) - 8);
  v74 = *(*v73 + 72);
  v75 = (*(*v73 + 80) + 32) & ~*(*v73 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_23DB73BA0;
  v77 = v76 + v75;

  v78 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8C170);
  v80 = v79;
  *v77 = 0;
  *(v77 + 8) = 0xE000000000000000;
  *(v77 + 17) = 186;
  *(v77 + 19) = 0;
  v81 = v77 + v73[11];
  sub_23DB6EA7C();
  v82 = v73[12];
  *(v77 + v82) = 1;
  v83 = v73[13];
  *(v77 + v83) = 1;
  v84 = v73[14];
  v85 = type metadata accessor for KeyboardKey(0);
  (*(*(v85 - 8) + 56))(v77 + v84, 1, 1, v85);
  v86 = (v77 + v73[15]);
  *v86 = 0;
  v86[1] = 0;
  v87 = *(v77 + 8);
  *v77 = v78;
  *(v77 + 8) = v80;

  *(v77 + 16) = 14;
  *(v77 + 19) = 0;
  v88 = v86[1];
  *v86 = 0;
  v86[1] = 0;

  *(v77 + v82) = 1;
  *(v77 + v83) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v89 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v90 = *(v71 + v89);
  *(v71 + v89) = v76;

  v91 = swift_allocObject();
  swift_weakInit();
  v92 = swift_allocObject();
  v93 = v133;
  *(v92 + 16) = v91;
  *(v92 + 24) = v93;
  v94 = (v71 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v95 = v94[1];
  *v94 = sub_23DB0679C;
  v94[1] = v92;
  swift_retain_n();

  v96 = swift_allocObject();
  swift_weakInit();
  v97 = swift_allocObject();
  *(v97 + 16) = v96;
  *(v97 + 24) = v93;
  v98 = (v71 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v99 = v98[1];
  *v98 = sub_23DB071FC;
  v98[1] = v97;

  v100 = swift_allocObject();
  swift_weakInit();

  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = v93;
  v102 = (v71 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v103 = *v102;
  v104 = v102[1];
  *v102 = sub_23DB07200;
  v102[1] = v101;

  sub_23DA18BA0(v103);

  return v71;
}

uint64_t sub_23DAFBC28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27E2FBBD0 == -1)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
LABEL_5:
        v4 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
        swift_beginAccess();
        v6 = *v4;
        v5 = v4[1];
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C();

        UIAccessibilityPostNotification(0x438u, 0);
        v7 = MEMORY[0x277D764B0];
        sub_23DB05C14(v6, v5, MEMORY[0x277D764B0]);

        sub_23DB05C14(v8, v9, v7);
      }
    }

    else
    {
      swift_once();
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_5;
      }
    }

    v2 = objc_opt_self();
    v3 = sub_23DB7087C();
    [v2 triggerEventCommand_];

    goto LABEL_5;
  }

  return result;
}

uint64_t sub_23DAFBDE0()
{
  v1 = v0;
  v2 = type metadata accessor for ButtonWithIconAndLabel(0);
  v3 = (v2 - 8);
  v118 = *(v2 - 8);
  v4 = v118;
  v5 = *(v118 + 8);
  MEMORY[0x28223BE20](v2, v6);
  v121 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v111 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23DB04C74(0xD000000000000020, 0x800000023DB890D0);
  v19 = v18;
  v20 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8C0A0);
  v22 = v21;
  sub_23DB6EA7C();
  v23 = type metadata accessor for Page.PracticeVOContextualMenu(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_23DA2FF3C(v16, v17, v19, v20, v22, MEMORY[0x277D84F90], 0, 0);
  v27 = sub_23DB04C74(0xD00000000000002CLL, 0x800000023DB89130);
  v29 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v27;
  v123 = v29;

  sub_23DB6EF1C();
  v30 = sub_23DB04C74(0xD000000000000029, 0x800000023DB89160);
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  *(v33 + 24) = v1;

  v34 = v11;
  sub_23DB6EA7C();
  v35 = &v11[v3[7]];
  *v35 = v30;
  v35[1] = v32;
  v36 = &v11[v3[8]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v11[v3[9]];
  v119 = v11;
  *v37 = sub_23DB06664;
  v37[1] = v33;
  v38 = sub_23DB04C74(0xD00000000000002CLL, 0x800000023DB89190);
  v40 = v39;
  v41 = swift_allocObject();
  *(v41 + 16) = v26;
  *(v41 + 24) = v1;

  v42 = v1;

  v43 = v121;
  sub_23DB6EA7C();
  v44 = (v43 + v3[7]);
  *v44 = v38;
  v44[1] = v40;
  v45 = (v43 + v3[8]);
  *v45 = 0;
  v45[1] = 0;
  v46 = (v43 + v3[9]);
  v47 = v43;
  *v46 = sub_23DB0666C;
  v46[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E8, &qword_23DB7A7B0);
  v48 = *(v4 + 9);
  v49 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_23DB78D60;
  v118 = type metadata accessor for ButtonWithIconAndLabel;
  sub_23DB06674(v34, v50 + v49, type metadata accessor for ButtonWithIconAndLabel);
  sub_23DB06674(v47, v50 + v49 + v48, type metadata accessor for ButtonWithIconAndLabel);
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v50;

  v114 = v26;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v51 = (type metadata accessor for CommandToPractice(0) - 8);
  v52 = (*(*v51 + 80) + 32) & ~*(*v51 + 80);
  v115 = *(*v51 + 72);
  v116 = 2 * v115;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_23DB76A80;
  v54 = v53;
  v117 = v53;
  v55 = objc_opt_self();

  v56 = [v55 currentDevice];
  v57 = [v56 userInterfaceIdiom];

  v58 = "tutorial.vo.magicTap.text";
  if (v57)
  {
    v59 = 0xD00000000000001DLL;
  }

  else
  {
    v58 = "cTap.button.play";
    v59 = 0xD00000000000001FLL;
  }

  v120 = v42;
  v112 = sub_23DB04C74(v59, v58 | 0x8000000000000000);
  v111 = v60;
  v61 = v54 + v52;
  *v61 = 0;
  *(v61 + 8) = 0xE000000000000000;
  *(v61 + 17) = 186;
  *(v61 + 19) = 0;
  v62 = v61 + v51[11];
  sub_23DB6EA7C();
  v63 = v51[12];
  *(v61 + v63) = 1;
  v64 = v51[13];
  *(v61 + v64) = 1;
  v65 = v51[14];
  v66 = type metadata accessor for KeyboardKey(0);
  v67 = *(*(v66 - 8) + 56);
  v67(v61 + v65, 1, 1, v66);
  v113 = v67;
  v68 = (v61 + v51[15]);
  *v68 = 0;
  v68[1] = 0;
  v69 = *(v61 + 8);
  v70 = v111;
  *v61 = v112;
  *(v61 + 8) = v70;

  *(v61 + 16) = 62;
  *(v61 + 19) = 1;
  v71 = v68[1];
  *v68 = 0;
  v68[1] = 0;

  *(v61 + v63) = 1;
  *(v61 + v64) = 1;
  v72 = v61 + v115;
  v73 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8C0D0);
  v75 = v74;
  *v72 = 0;
  *(v72 + 8) = 0xE000000000000000;
  *(v72 + 17) = 186;
  *(v72 + 19) = 0;
  v76 = v72 + v51[11];
  sub_23DB6EA7C();
  v77 = v51[12];
  *(v72 + v77) = 1;
  v78 = v51[13];
  *(v72 + v78) = 1;
  v67(v72 + v51[14], 1, 1, v66);
  v79 = (v72 + v51[15]);
  *v79 = 0;
  v79[1] = 0;
  v80 = *(v72 + 8);
  *v72 = v73;
  *(v72 + 8) = v75;

  *(v72 + 16) = 16;
  *(v72 + 19) = 0;
  v81 = v79[1];
  *v79 = 0;
  v79[1] = 0;

  *(v72 + v77) = 0;
  *(v72 + v78) = 1;
  v82 = v61 + v116;
  v83 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8C100);
  v85 = v84;
  *v82 = 0;
  *(v82 + 8) = 0xE000000000000000;
  *(v82 + 17) = 186;
  *(v82 + 19) = 0;
  v86 = v82 + v51[11];
  sub_23DB6EA7C();
  v87 = v51[12];
  *(v82 + v87) = 1;
  v88 = v51[13];
  *(v82 + v88) = 1;
  v113(v82 + v51[14], 1, 1, v66);
  v89 = (v82 + v51[15]);
  *v89 = 0;
  v89[1] = 0;
  v90 = *(v82 + 8);
  *v82 = v83;
  *(v82 + 8) = v85;

  *(v82 + 16) = 3;
  *(v82 + 19) = 0;
  v91 = v89[1];
  *v89 = 0;
  v89[1] = 0;

  *(v82 + v87) = 1;
  *(v82 + v88) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v92 = v114;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v93 = v118;
  sub_23DB0672C(v121, v118);
  sub_23DB0672C(v119, v93);
  v94 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v95 = *(v92 + v94);
  *(v92 + v94) = v117;

  v96 = swift_allocObject();
  swift_weakInit();
  v97 = swift_allocObject();
  v98 = v120;
  *(v97 + 16) = v96;
  *(v97 + 24) = v98;
  v99 = (v92 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v100 = *v99;
  v101 = v99[1];
  *v99 = sub_23DB071F8;
  v99[1] = v97;
  swift_retain_n();

  sub_23DA18BA0(v100);

  v102 = swift_allocObject();
  swift_weakInit();
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = v98;
  v104 = (v92 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v105 = v104[1];
  *v104 = sub_23DB0678C;
  v104[1] = v103;

  v106 = swift_allocObject();
  swift_weakInit();

  v107 = swift_allocObject();
  *(v107 + 16) = v106;
  *(v107 + 24) = v98;
  v108 = (v92 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v109 = v108[1];
  *v108 = sub_23DB071FC;
  v108[1] = v107;

  return v92;
}

uint64_t sub_23DAFC828(uint64_t a1)
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
  v8 = sub_23DB04C74(0xD000000000000033, 0x800000023DB89290);
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

uint64_t sub_23DAFC9F8(uint64_t a1)
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
  v8 = sub_23DB04C74(0xD000000000000036, 0x800000023DB89250);
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

uint64_t sub_23DAFCBCC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    v2 = result;
    swift_beginAccess();
    v4 = *v1;
    v3 = v1[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v5 = MEMORY[0x277D764B0];
    sub_23DB05C14(v4, v3, MEMORY[0x277D764B0]);

    sub_23DB05C14(v8, v9, v5);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v6 = *(v2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
    swift_beginAccess();
    v7 = *(v6 + 48);
    *(v6 + 40) = v8;
    *(v6 + 48) = v9;

    sub_23DABC354();

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DAFCDB8()
{
  v1 = sub_23DB6EA8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8BF80);
  v8 = v7;
  v9 = v0;
  v10 = sub_23DB04C74(0xD000000000000019, 0x800000023DB8BFA0);
  v12 = v11;
  sub_23DB6EA7C();
  v13 = type metadata accessor for Page.PracticeVOMagicTapButton(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_23DA32A18(v5, v6, v8, v10, v12, MEMORY[0x277D84F90], 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v17 = (type metadata accessor for CommandToPractice(0) - 8);
  v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v88 = *(*v17 + 72);
  v89 = 2 * v88;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23DB76A80;
  v20 = v19;
  v90 = v19;
  v21 = objc_opt_self();

  v22 = [v21 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = "tutorial.vo.magicTap.text";
  if (v23)
  {
    v25 = 0xD00000000000001DLL;
  }

  else
  {
    v24 = "cTap.button.play";
    v25 = 0xD00000000000001FLL;
  }

  v26 = v9;
  v27 = sub_23DB04C74(v25, v24 | 0x8000000000000000);
  v85 = v28;
  v86 = v27;
  v29 = v20 + v18;
  *v29 = 0;
  *(v29 + 8) = 0xE000000000000000;
  *(v29 + 17) = 186;
  *(v29 + 19) = 0;
  v30 = v29 + v17[11];
  sub_23DB6EA7C();
  v31 = v17[12];
  *(v29 + v31) = 1;
  v32 = v17[13];
  *(v29 + v32) = 1;
  v33 = v17[14];
  v92 = type metadata accessor for KeyboardKey(0);
  v34 = *(v92 - 8);
  v91 = *(v34 + 56);
  v35 = v34 + 56;
  v91(v29 + v33, 1, 1, v92);
  v87 = v35;
  v36 = (v29 + v17[15]);
  *v36 = 0;
  v36[1] = 0;
  v37 = *(v29 + 8);
  v38 = v85;
  *v29 = v86;
  *(v29 + 8) = v38;

  *(v29 + 16) = 62;
  *(v29 + 19) = 1;
  v39 = v36[1];
  *v36 = 0;
  v36[1] = 0;

  *(v29 + v31) = 1;
  *(v29 + v32) = 1;
  v40 = v29 + v88;
  v41 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8BFE0);
  v43 = v42;
  *v40 = 0;
  *(v40 + 8) = 0xE000000000000000;
  *(v40 + 17) = 186;
  *(v40 + 19) = 0;
  v44 = v40 + v17[11];
  sub_23DB6EA7C();
  v45 = v17[12];
  *(v40 + v45) = 1;
  v46 = v17[13];
  *(v40 + v46) = 1;
  v91(v40 + v17[14], 1, 1, v92);
  v47 = (v40 + v17[15]);
  *v47 = 0;
  v47[1] = 0;
  v48 = *(v40 + 8);
  *v40 = v41;
  *(v40 + 8) = v43;

  *(v40 + 16) = 3;
  *(v40 + 19) = 0;
  v49 = v47[1];
  *v47 = 0;
  v47[1] = 0;

  *(v40 + v45) = 0;
  *(v40 + v46) = 1;
  v50 = v29 + v89;
  v51 = v26;
  v52 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8C000);
  v54 = v53;
  *v50 = 0;
  *(v50 + 8) = 0xE000000000000000;
  *(v50 + 17) = 186;
  *(v50 + 19) = 0;
  v55 = v50 + v17[11];
  sub_23DB6EA7C();
  v56 = v17[12];
  *(v50 + v56) = 1;
  v57 = v17[13];
  *(v50 + v57) = 1;
  v91(v50 + v17[14], 1, 1, v92);
  v58 = (v50 + v17[15]);
  *v58 = 0;
  v58[1] = 0;
  v59 = *(v50 + 8);
  *v50 = v52;
  *(v50 + 8) = v54;

  *(v50 + 16) = 17;
  *(v50 + 19) = 0;
  v60 = v58[1];
  *v58 = 0;
  v58[1] = 0;

  *(v50 + v56) = 0;
  *(v50 + v57) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v62 = *(v16 + v61);
  *(v16 + v61) = v90;

  v63 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8C020);
  v65 = v64;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v63;
  v94 = v65;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = 2036427888;
  v94 = 0xE400000000000000;

  sub_23DB6EF1C();
  v66 = swift_allocObject();
  *(v66 + 16) = v26;
  *(v66 + 24) = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = sub_23DB064D4;
  *(v67 + 24) = v66;
  v93 = sub_23DA40604;
  v94 = v67;
  swift_retain_n();

  sub_23DB6EF1C();
  v68 = swift_allocObject();
  *(v68 + 16) = v26;
  *(v68 + 24) = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_23DB06564;
  *(v69 + 24) = v68;
  v93 = sub_23DA40770;
  v94 = v69;
  swift_retain_n();

  sub_23DB6EF1C();
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = v26;
  v72 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v73 = *v72;
  v74 = v72[1];
  *v72 = sub_23DB071F8;
  v72[1] = v71;
  swift_retain_n();

  sub_23DA18BA0(v73);

  v75 = swift_allocObject();
  swift_weakInit();
  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  *(v76 + 24) = v51;
  v77 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v78 = v77[1];
  *v77 = sub_23DB065BC;
  v77[1] = v76;

  v79 = swift_allocObject();
  swift_weakInit();

  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v51;
  v81 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v82 = v81[1];
  *v81 = sub_23DB071FC;
  v81[1] = v80;

  return v16;
}

void sub_23DAFD6C0()
{
  if (*MEMORY[0x277CE6CD8])
  {
    v0 = *MEMORY[0x277D76438];
    v1 = *MEMORY[0x277CE6CD8];
    UIAccessibilityPostNotification(v0, v1);

    sub_23DB04C74(0xD000000000000021, 0x800000023DB8C070);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
  }

  else
  {
    __break(1u);
  }
}

void sub_23DAFD7F8()
{
  if (*MEMORY[0x277CE6CE0])
  {
    v0 = *MEMORY[0x277D76438];
    v1 = *MEMORY[0x277CE6CE0];
    UIAccessibilityPostNotification(v0, v1);

    sub_23DB04C74(0xD000000000000020, 0x800000023DB8C020);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DAFD930()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v3 = *v1;
    v2 = v1[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v4 = MEMORY[0x277D764B0];
    sub_23DB05C14(v3, v2, MEMORY[0x277D764B0]);

    sub_23DB05C14(v5, v6, v4);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    sub_23DB04C74(0xD000000000000020, 0x800000023DB8C020);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DAFDB5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v143 = *(v1 - 8);
  v144 = v1;
  v2 = *(v143 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v142 = &v118 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v140 = *(v5 - 8);
  v141 = v5;
  v6 = *(v140 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v138 = &v118 - v8;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v135 = *(v139 - 8);
  v9 = *(v135 + 64);
  MEMORY[0x28223BE20](v139, v10);
  v133 = &v118 - v11;
  *&v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v125 = *(v126 - 8);
  v12 = *(v125 + 64);
  MEMORY[0x28223BE20](v126, v13);
  v124 = &v118 - v14;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v120 = *(v121 - 8);
  v15 = *(v120 + 64);
  MEMORY[0x28223BE20](v121, v16);
  v119 = &v118 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v118 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v131 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v146 = &v118 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v118 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v118 - v38;
  v130 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8BEB0);
  v129 = v40;
  v147 = v0;
  v128 = sub_23DB04C74(0xD00000000000001ELL, 0x800000023DB8BED0);
  v127 = v41;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v148) = 0;
  sub_23DB6EECC();
  v47 = *(v19 + 32);
  v47(v45 + v46, v23, v18);
  v136 = v25;
  v48 = v25 + 16;
  v49 = *(v25 + 16);
  v132 = v39;
  v49(v35, v39, v24);
  v134 = v35;
  v137 = v24;
  v123 = v48;
  v122 = v49;
  v49(v146, v35, v24);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v148) = 0;
  sub_23DB6EECC();
  v145 = v18;
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
  *&v148 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v119;
  sub_23DB6EECC();
  (*(v120 + 32))(v45 + v53, v54, v121);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v148 = 0;
  v56 = v124;
  sub_23DB6EECC();
  (*(v125 + 32))(v45 + v55, v56, v126);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v148) = 0;
  sub_23DB6EECC();
  v47(v45 + v57, v23, v145);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v126 = xmmword_23DB74320;
  v148 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v133;
  sub_23DB6EECC();
  v60 = *(v135 + 32);
  v61 = v139;
  v60(v45 + v58, v59, v139);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v148 = v126;
  sub_23DB6EECC();
  v60(v45 + v62, v59, v61);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v148) = 0;
  sub_23DB6EECC();
  v47(v45 + v63, v23, v145);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v148 = 0;
  *(&v148 + 1) = 0xE000000000000000;
  v65 = v138;
  sub_23DB6EECC();
  (*(v140 + 32))(v45 + v64, v65, v141);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v148 = 0uLL;
  sub_23DB6EECC();
  v60(v45 + v66, v59, v61);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v148 = nullsub_1;
  *(&v148 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v142;
  sub_23DB6EECC();
  (*(v143 + 32))(v45 + v67, v68, v144);
  v69 = v131;
  v70 = v146;
  v71 = v137;
  v122(v131, v146, v137);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v130, v129, v128, v127, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v136 + 8);
  v73(v70, v71);
  v73(v134, v71);
  v73(v132, v71);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v148) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v74 = (type metadata accessor for CommandToPractice(0) - 8);
  v75 = *v74;
  v145 = *(*v74 + 72);
  v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v77 = swift_allocObject();
  v146 = v77;
  *(v77 + 16) = xmmword_23DB78D60;
  v78 = v77 + v76;
  v79 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8BEF0);
  v143 = v80;
  v144 = v79;
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
  v86 = *(*(v85 - 8) + 56);
  v86(v78 + v84, 1, 1, v85);
  v87 = (v78 + v74[15]);
  *v87 = 0;
  v87[1] = 0;
  v88 = *(v78 + 8);
  v89 = v143;
  *v78 = v144;
  *(v78 + 8) = v89;

  *(v78 + 16) = 18;
  *(v78 + 19) = 1;
  v90 = v87[1];
  *v87 = 0;
  v87[1] = 0;

  *(v78 + v82) = 1;
  *(v78 + v83) = 1;
  v91 = v78 + v145;
  v92 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8BF20);
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
  v86(v91 + v74[14], 1, 1, v85);
  v98 = (v91 + v74[15]);
  *v98 = 0;
  v98[1] = 0;
  v99 = *(v91 + 8);
  *v91 = v92;
  *(v91 + 8) = v94;

  *(v91 + 16) = 18;
  *(v91 + 19) = 0;
  v100 = v98[1];
  *v98 = 0;
  v98[1] = 0;

  *(v91 + v96) = 1;
  *(v91 + v97) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v101 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v102 = *(v72 + v101);
  *(v72 + v101) = v146;

  v103 = swift_allocObject();
  swift_weakInit();
  v104 = swift_allocObject();
  v105 = v147;
  *(v104 + 16) = v103;
  *(v104 + 24) = v105;
  v106 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v107 = v106[1];
  *v106 = sub_23DB05F48;
  v106[1] = v104;
  swift_retain_n();

  v108 = swift_allocObject();
  swift_weakInit();
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v105;
  v110 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v111 = v110[1];
  *v110 = sub_23DB05F50;
  v110[1] = v109;

  v112 = swift_allocObject();
  swift_weakInit();

  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  *(v113 + 24) = v105;
  v114 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v115 = *v114;
  v116 = v114[1];
  *v114 = sub_23DB05F58;
  v114[1] = v113;

  sub_23DA18BA0(v115);

  return v72;
}

uint64_t sub_23DAFE9F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v3 = *v1;
    v2 = v1[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v4 = MEMORY[0x277D764B0];
    sub_23DB05C14(v3, v2, MEMORY[0x277D764B0]);

    sub_23DB05C14(v7, v8, v4);

    if (qword_27E2FBBD0 == -1)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
      }
    }

    else
    {
      swift_once();
      if (!UIAccessibilityIsVoiceOverRunning())
      {
      }
    }

    v5 = objc_opt_self();
    v6 = sub_23DB7087C();
    [v5 triggerEventCommand_];
  }

  return result;
}

uint64_t sub_23DAFEBB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v54 = (&v44 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v44 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v16 = result;
    swift_beginAccess();
    v52 = v15;
    v17 = *(v16 + v15);
    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();

    v50 = v19;
    v51 = KeyPath;
    v49 = sub_23DB6EEFC();
    v47 = v20;
    v21 = swift_getKeyPath();
    v22 = swift_getKeyPath();
    v53 = v16;
    v48 = v21;
    v46 = v22;
    v45 = sub_23DB6EEFC();
    v44 = v23;

    v24 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_3:
    v25 = 0;
    v26 = v1 + 7;
    v55 = v17;
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
      v33 = v55;
      if (v25 >= *(v55 + 16))
      {
        goto LABEL_19;
      }

      v34 = *(type metadata accessor for CommandToPractice(0) - 8);
      v56 = v25 + 1;
      v35 = v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25;
      v36 = *(v0 + 48);
      v37 = v54;
      *v54 = v25;
      sub_23DB06674(v35, v37 + v36, type metadata accessor for CommandToPractice);
      sub_23DA17A54(v37, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v29 = 0;
      v25 = v56;
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
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        v24 = sub_23DAC8B24(v17);
        goto LABEL_3;
      }

      if (v17 >= *(v24 + 16))
      {
        goto LABEL_18;
      }

      v38 = *(type metadata accessor for CommandToPractice(0) - 8);
      v39 = v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v17;
      *(v39 + 18) = 0;
      *(v39 + 19) = v17 == 0;
      sub_23DB0672C(v13 + *(v0 + 48), type metadata accessor for CommandToPractice);
      if (v25 == v27)
      {
        goto LABEL_4;
      }
    }

    *v44 = 0;
    *v47 = 0;
    v45(v57, 0);

    v49(v58, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v40 = v53;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v41 = *(v40 + v52);
    *(v40 + v52) = v24;

    if (qword_27E2FBBD0 == -1)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
      }
    }

    else
    {
      swift_once();
      if (!UIAccessibilityIsVoiceOverRunning())
      {
      }
    }

    v42 = objc_opt_self();
    v43 = sub_23DB7087C();
    [v42 triggerEventCommand_];
  }

  return result;
}

uint64_t sub_23DAFF1CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v13[0] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      v2 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v12[0] = *(v1 + v2);
      swift_getKeyPath();
      swift_getKeyPath();

      v3 = sub_23DB6EEFC();
      sub_23DB05F68(v12, v4);
      v3(v13, 0);

      v5 = v12[0];
      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v6 = *(v1 + v2);
      *(v1 + v2) = v5;

      if (qword_27E2FBBD0 != -1)
      {
        swift_once();
      }

      v7 = qword_27E30A6A8;
      v8 = *(qword_27E30A6A8 + 16);
      swift_beginAccess();
      LOBYTE(v12[0]) = *(v8 + 40);
      if (VOCommandIdentifier.rawValue.getter() == 0xD000000000000022 && 0x800000023DB853C0 == v9)
      {

LABEL_9:
        v11 = *(v7 + 16);
        swift_beginAccess();
        *(v11 + 40) = 27;

        sub_23DABC32C();
      }

      v10 = sub_23DB70DBC();

      if (v10)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_23DAFF4E8()
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
  v140 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8BDB0);
  v139 = v54;
  v159 = v0;
  v138 = sub_23DB04C74(0xD000000000000019, 0x800000023DB8BDD0);
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
  v95 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8BDF0);
  v97 = v96;
  v98 = sub_23DB04C74(0xD00000000000001BLL, 0x800000023DB8BE10);
  v100 = v99;
  v101 = v157;
  v102 = v160;
  v103 = v160 + *(v157 + 24);
  sub_23DB6EA7C();
  *v102 = v95;
  v102[1] = v97;
  v102[2] = v98;
  v102[3] = v100;
  v104 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8BE30);
  v106 = v105;
  v107 = sub_23DB04C74(0xD00000000000001BLL, 0x800000023DB8BE50);
  v109 = v108;
  v110 = v161;
  v111 = v161 + *(v101 + 24);
  sub_23DB6EA7C();
  *v110 = v104;
  v110[1] = v106;
  v110[2] = v107;
  v110[3] = v109;
  v112 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8BE70);
  v114 = v113;
  v115 = sub_23DB04C74(0xD00000000000001BLL, 0x800000023DB8BE90);
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
  sub_23DB06674(v102, v122 + v121, type metadata accessor for HeaderWithBody);
  sub_23DB06674(v110, v122 + v121 + v120, type metadata accessor for HeaderWithBody);
  sub_23DB06674(v119, v122 + v121 + 2 * v120, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v165 = v122;

  sub_23DB6EF1C();
  v123 = sub_23DB04C74(0xD000000000000020, 0x800000023DB88020);
  v125 = v124;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v165 = v123;
  *(&v165 + 1) = v125;

  sub_23DB6EF1C();
  sub_23DB0672C(v119, type metadata accessor for HeaderWithBody);
  sub_23DB0672C(v110, type metadata accessor for HeaderWithBody);
  sub_23DB0672C(v102, type metadata accessor for HeaderWithBody);
  return v93;
}

uint64_t sub_23DB002BC()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v159 = v1;
  v160 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v164 = (&v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v163 = (&v133 - v8);
  MEMORY[0x28223BE20](v9, v10);
  v162 = (&v133 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v157 = *(v12 - 8);
  v158 = v12;
  v13 = *(v157 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v156 = &v133 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v154 = *(v16 - 8);
  v155 = v16;
  v17 = *(v154 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v152 = &v133 - v19;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v147 = *(v149 - 1);
  v20 = *(v147 + 64);
  MEMORY[0x28223BE20](v149, v21);
  v146 = &v133 - v22;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v144 = *(v145 - 8);
  v23 = *(v144 + 64);
  MEMORY[0x28223BE20](v145, v24);
  v143 = &v133 - v25;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v137 = *(v138 - 8);
  v26 = *(v137 + 64);
  MEMORY[0x28223BE20](v138, v27);
  v136 = &v133 - v28;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v169 = *(v166 - 8);
  v29 = *(v169 + 64);
  MEMORY[0x28223BE20](v166, v30);
  v165 = &v133 - v31;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v151 = *(v153 - 8);
  v32 = *(v151 + 8);
  MEMORY[0x28223BE20](v153, v33);
  v148 = &v133 - v34;
  v35 = sub_23DB6EA8C();
  v168 = *(v35 - 8);
  v36 = v168[8];
  MEMORY[0x28223BE20](v35, v37);
  v150 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v167 = &v133 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v133 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v133 - v48;
  v50 = objc_opt_self();
  v51 = [v50 currentDevice];
  v52 = [v51 userInterfaceIdiom];

  v53 = "Finished.title.iphone";
  if (v52)
  {
    v54 = 0xD000000000000020;
  }

  else
  {
    v53 = "Guide.text.iphone";
    v54 = 0xD000000000000022;
  }

  v142 = sub_23DB04C74(v54, v53 | 0x8000000000000000);
  v141 = v55;
  v56 = [v50 currentDevice];
  v57 = [v56 userInterfaceIdiom];

  v58 = "Guide.title.ipad";
  if (v57)
  {
    v59 = 0xD00000000000001FLL;
  }

  else
  {
    v58 = "Guide.body.3.ios";
    v59 = 0xD000000000000021;
  }

  v161 = v0;
  v140 = sub_23DB04C74(v59, v58 | 0x8000000000000000);
  v139 = v60;
  sub_23DB6EA7C();
  v61 = type metadata accessor for Page.PracticeVOExplanation(0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  v64 = swift_allocObject();
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v66 = MEMORY[0x277D84F90];
  *&v170 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  v67 = v148;
  sub_23DB6EECC();
  (*(v151 + 4))(v64 + v65, v67, v153);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v170 = 0;
  *(&v170 + 1) = 0xE000000000000000;
  v69 = v165;
  sub_23DB6EECC();
  v70 = *(v169 + 32);
  v169 += 32;
  v133 = v70;
  v70(v64 + v68, v69, v166);
  v71 = v168 + 2;
  v72 = v168[2];
  v148 = v49;
  v72(v45, v49, v35);
  v151 = v45;
  v153 = v35;
  v135 = v71;
  v134 = v72;
  v72(v167, v45, v35);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v170) = 0;
  v74 = v136;
  sub_23DB6EECC();
  v75 = *(v137 + 32);
  v76 = v74;
  v77 = v74;
  v78 = v138;
  v75(v64 + v73, v77);
  if (v66 >> 62 && sub_23DB70C3C())
  {
    v79 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v79 = MEMORY[0x277D84FA0];
  }

  *(v64 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v79;
  v80 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v170 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v81 = v143;
  sub_23DB6EECC();
  (*(v144 + 32))(v64 + v80, v81, v145);
  *(v64 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v66;
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v170 = 0;
  v83 = v146;
  sub_23DB6EECC();
  (*(v147 + 32))(v64 + v82, v83, v149);
  v84 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v170) = 0;
  sub_23DB6EECC();
  (v75)(v64 + v84, v76, v78);
  v85 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v147 = xmmword_23DB74320;
  v170 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v149 = v75;
  v86 = v152;
  sub_23DB6EECC();
  v87 = v155;
  v88 = *(v154 + 32);
  v88(v64 + v85, v86, v155);
  v89 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v170 = v147;
  sub_23DB6EECC();
  v88(v64 + v89, v86, v87);
  v90 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v170) = 0;
  sub_23DB6EECC();
  v149(v64 + v90, v76, v78);
  v91 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v170 = 0;
  *(&v170 + 1) = 0xE000000000000000;
  v92 = v165;
  sub_23DB6EECC();
  v133(v64 + v91, v92, v166);
  v93 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v170 = 0uLL;
  sub_23DB6EECC();
  v88(v64 + v93, v86, v87);
  v94 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v170 = nullsub_1;
  *(&v170 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v95 = v156;
  sub_23DB6EECC();
  (*(v157 + 32))(v64 + v94, v95, v158);
  v96 = v150;
  v97 = v167;
  v98 = v153;
  v134(v150, v167, v153);
  v99 = Page.init(id:title:text:subPages:iconName:)(v96, v142, v141, v140, v139, MEMORY[0x277D84F90], 0, 0);
  v100 = v168[1];
  v100(v148, v98);
  v100(v97, v98);
  v100(v151, v98);
  v101 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8BC30);
  v103 = v102;
  v104 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8BC60);
  v106 = v105;
  v107 = v159;
  v108 = v162;
  v109 = v162 + *(v159 + 24);
  sub_23DB6EA7C();
  *v108 = v101;
  v108[1] = v103;
  v108[2] = v104;
  v108[3] = v106;
  v110 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8BC90);
  v112 = v111;
  v113 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8BCC0);
  v115 = v114;
  v116 = v163;
  v117 = v163 + *(v107 + 24);
  sub_23DB6EA7C();
  *v116 = v110;
  v116[1] = v112;
  v116[2] = v113;
  v116[3] = v115;
  v118 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8BCF0);
  v120 = v119;
  v121 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8BD20);
  v123 = v122;
  v124 = *(v107 + 24);
  v125 = v164;
  sub_23DB6EA7C();
  *v125 = v118;
  v125[1] = v120;
  v125[2] = v121;
  v125[3] = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v126 = *(v160 + 72);
  v127 = (*(v160 + 80) + 32) & ~*(v160 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_23DB76A80;
  sub_23DB06674(v108, v128 + v127, type metadata accessor for HeaderWithBody);
  sub_23DB06674(v116, v128 + v127 + v126, type metadata accessor for HeaderWithBody);
  sub_23DB06674(v125, v128 + v127 + 2 * v126, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v170 = v128;

  sub_23DB6EF1C();
  v129 = sub_23DB04C74(0xD000000000000020, 0x800000023DB88020);
  v131 = v130;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v170 = v129;
  *(&v170 + 1) = v131;

  sub_23DB6EF1C();
  sub_23DB0672C(v125, type metadata accessor for HeaderWithBody);
  sub_23DB0672C(v116, type metadata accessor for HeaderWithBody);
  sub_23DB0672C(v108, type metadata accessor for HeaderWithBody);
  return v99;
}

uint64_t sub_23DB01134()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v111 = *(v1 - 8);
  v112 = v1;
  v2 = *(v111 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v110 = &v86 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v108 = *(v5 - 8);
  v109 = v5;
  v6 = *(v108 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v106 = &v86 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v105 = *(v107 - 8);
  v9 = *(v105 + 64);
  MEMORY[0x28223BE20](v107, v10);
  v103 = &v86 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v98 = *(v99 - 1);
  v12 = *(v98 + 64);
  MEMORY[0x28223BE20](v99, v13);
  v95 = &v86 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v91 = *(v92 - 8);
  v15 = *(v91 + 64);
  MEMORY[0x28223BE20](v92, v16);
  v90 = &v86 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v18 = *(v87 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v87, v20);
  v22 = &v86 - v21;
  v23 = sub_23DB6EA8C();
  v114 = *(v23 - 8);
  v24 = v114[8];
  MEMORY[0x28223BE20](v23, v25);
  v100 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v86 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v86 - v33;
  v35 = objc_opt_self();
  v36 = [v35 currentDevice];
  v37 = [v36 userInterfaceIdiom];

  v38 = "r.collectionFinished.text";
  if (v37)
  {
    v39 = 0xD000000000000033;
  }

  else
  {
    v38 = "Finished.text.iphone";
    v39 = 0xD000000000000035;
  }

  v97 = sub_23DB04C74(v39, v38 | 0x8000000000000000);
  v96 = v40;
  v41 = [v35 currentDevice];
  v42 = [v41 userInterfaceIdiom];

  v43 = "Finished.title.ipad";
  if (v42)
  {
    v44 = 0xD000000000000032;
  }

  else
  {
    v43 = "Finished.text.ipad";
    v44 = 0xD000000000000034;
  }

  v113 = v0;
  v94 = sub_23DB04C74(v44, v43 | 0x8000000000000000);
  v93 = v45;
  sub_23DB6EA7C();
  v46 = type metadata accessor for Page.CollectionFinished(0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  v50 = v114[2];
  v101 = v34;
  v102 = v30;
  v104 = v23;
  v89 = v114 + 2;
  v88 = v50;
  v50(v30, v34, v23);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v52 = *(v18 + 32);
  v53 = v22;
  v54 = v87;
  v52(v49 + v51, v22);
  v55 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v56 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v56 = MEMORY[0x277D84FA0];
  }

  *(v49 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v56;
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v115 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v58 = v55;
  v59 = v90;
  sub_23DB6EECC();
  (*(v91 + 32))(v49 + v57, v59, v92);
  *(v49 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v58;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v115 = 0;
  v61 = v95;
  sub_23DB6EECC();
  (*(v98 + 32))(v49 + v60, v61, v99);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v115) = 0;
  v63 = v53;
  sub_23DB6EECC();
  (v52)(v49 + v62, v53, v54);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v98 = xmmword_23DB74320;
  v115 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v65 = v103;
  sub_23DB6EECC();
  v99 = v52;
  v66 = *(v105 + 32);
  v67 = v107;
  v66(v49 + v64, v65, v107);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v115 = v98;
  sub_23DB6EECC();
  v66(v49 + v68, v65, v67);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v115) = 0;
  sub_23DB6EECC();
  v99(v49 + v69, v63, v54);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  v71 = v106;
  sub_23DB6EECC();
  (*(v108 + 32))(v49 + v70, v71, v109);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v115 = 0uLL;
  sub_23DB6EECC();
  v66(v49 + v72, v65, v67);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v115 = nullsub_1;
  *(&v115 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v74 = v110;
  sub_23DB6EECC();
  (*(v111 + 32))(v49 + v73, v74, v112);
  v75 = v100;
  v76 = v102;
  v77 = v104;
  v88(v100, v102, v104);
  v78 = Page.init(id:title:text:subPages:iconName:)(v75, v97, v96, v94, v93, MEMORY[0x277D84F90], 0, 0);
  v79 = v114[1];
  v79(v76, v77);
  v79(v101, v77);
  v80 = swift_allocObject();
  swift_weakInit();
  v81 = swift_allocObject();
  v82 = v113;
  *(v81 + 16) = v80;
  *(v81 + 24) = v82;
  v83 = (v78 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v84 = v83[1];
  *v83 = sub_23DB071F4;
  v83[1] = v81;

  return v78;
}

uint64_t sub_23DB01B38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v102 = *(v1 - 8);
  v103 = v1;
  v2 = *(v102 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v101 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v96 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v88 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v85 = *(v13 - 8);
  v14 = *(v85 + 8);
  MEMORY[0x28223BE20](v13, v15);
  *&v82 = &v80 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v80 = *(v81 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v18);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v80 - v25;
  v27 = sub_23DB6EA8C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v91 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v80 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v80 - v38;
  v40 = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB88900);
  v89 = v41;
  v90 = v40;
  v104 = v0;
  v87 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB88930);
  v86 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.CollectionFinished(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v93 = v35;
  v94 = v28;
  v47 = *(v28 + 16);
  v92 = v39;
  v95 = v27;
  v84 = v28 + 16;
  v83 = v47;
  v47(v35, v39, v27);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v49 = *(v22 + 32);
  v50 = v21;
  v49(v46 + v48, v26, v21);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v105 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v80 + 32))(v46 + v53, v20, v81);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v105 = 0;
  v55 = v82;
  sub_23DB6EECC();
  (*(v85 + 4))(v46 + v54, v55, v13);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v57 = v50;
  v49(v46 + v56, v26, v50);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v82 = xmmword_23DB74320;
  v105 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v88;
  sub_23DB6EECC();
  v85 = v49;
  v60 = v98;
  v61 = *(v97 + 32);
  v61(v46 + v58, v59, v98);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v105 = v82;
  sub_23DB6EECC();
  v61(v46 + v62, v59, v60);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v85(v46 + v63, v26, v57);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  v65 = v96;
  sub_23DB6EECC();
  (*(v99 + 32))(v46 + v64, v65, v100);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v105 = 0uLL;
  sub_23DB6EECC();
  v61(v46 + v66, v59, v60);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v105 = nullsub_1;
  *(&v105 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v101;
  sub_23DB6EECC();
  (*(v102 + 32))(v46 + v67, v68, v103);
  v69 = v91;
  v70 = v93;
  v71 = v95;
  v83(v91, v93, v95);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v90, v89, v87, v86, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v94 + 8);
  v73(v70, v71);
  v73(v92, v71);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  v76 = v104;
  *(v75 + 16) = v74;
  *(v75 + 24) = v76;
  v77 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v78 = v77[1];
  *v77 = sub_23DB071F4;
  v77[1] = v75;

  return v72;
}

uint64_t sub_23DB02478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v102 = *(v1 - 8);
  v103 = v1;
  v2 = *(v102 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v101 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v96 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v88 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v85 = *(v13 - 8);
  v14 = *(v85 + 8);
  MEMORY[0x28223BE20](v13, v15);
  *&v82 = &v80 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v80 = *(v81 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v18);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v80 - v25;
  v27 = sub_23DB6EA8C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v91 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v80 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v80 - v38;
  v40 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8BA80);
  v89 = v41;
  v90 = v40;
  v104 = v0;
  v87 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8BAB0);
  v86 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.CollectionFinished(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v93 = v35;
  v94 = v28;
  v47 = *(v28 + 16);
  v92 = v39;
  v95 = v27;
  v84 = v28 + 16;
  v83 = v47;
  v47(v35, v39, v27);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v49 = *(v22 + 32);
  v50 = v21;
  v49(v46 + v48, v26, v21);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v105 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v80 + 32))(v46 + v53, v20, v81);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v105 = 0;
  v55 = v82;
  sub_23DB6EECC();
  (*(v85 + 4))(v46 + v54, v55, v13);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v57 = v50;
  v49(v46 + v56, v26, v50);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v82 = xmmword_23DB74320;
  v105 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v88;
  sub_23DB6EECC();
  v85 = v49;
  v60 = v98;
  v61 = *(v97 + 32);
  v61(v46 + v58, v59, v98);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v105 = v82;
  sub_23DB6EECC();
  v61(v46 + v62, v59, v60);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v85(v46 + v63, v26, v57);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  v65 = v96;
  sub_23DB6EECC();
  (*(v99 + 32))(v46 + v64, v65, v100);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v105 = 0uLL;
  sub_23DB6EECC();
  v61(v46 + v66, v59, v60);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v105 = nullsub_1;
  *(&v105 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v101;
  sub_23DB6EECC();
  (*(v102 + 32))(v46 + v67, v68, v103);
  v69 = v91;
  v70 = v93;
  v71 = v95;
  v83(v91, v93, v95);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v90, v89, v87, v86, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v94 + 8);
  v73(v70, v71);
  v73(v92, v71);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  v76 = v104;
  *(v75 + 16) = v74;
  *(v75 + 24) = v76;
  v77 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v78 = v77[1];
  *v77 = sub_23DB05E38;
  v77[1] = v75;

  return v72;
}

uint64_t sub_23DB02DB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v102 = *(v1 - 8);
  v103 = v1;
  v2 = *(v102 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v101 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v96 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v88 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v85 = *(v13 - 8);
  v14 = *(v85 + 8);
  MEMORY[0x28223BE20](v13, v15);
  *&v82 = &v80 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v80 = *(v81 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v18);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v80 - v25;
  v27 = sub_23DB6EA8C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v91 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v80 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v80 - v38;
  v40 = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8BA20);
  v89 = v41;
  v90 = v40;
  v104 = v0;
  v87 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8BA50);
  v86 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.CollectionFinished(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v93 = v35;
  v94 = v28;
  v47 = *(v28 + 16);
  v92 = v39;
  v95 = v27;
  v84 = v28 + 16;
  v83 = v47;
  v47(v35, v39, v27);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v49 = *(v22 + 32);
  v50 = v21;
  v49(v46 + v48, v26, v21);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v105 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v80 + 32))(v46 + v53, v20, v81);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v105 = 0;
  v55 = v82;
  sub_23DB6EECC();
  (*(v85 + 4))(v46 + v54, v55, v13);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v57 = v50;
  v49(v46 + v56, v26, v50);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v82 = xmmword_23DB74320;
  v105 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v88;
  sub_23DB6EECC();
  v85 = v49;
  v60 = v98;
  v61 = *(v97 + 32);
  v61(v46 + v58, v59, v98);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v105 = v82;
  sub_23DB6EECC();
  v61(v46 + v62, v59, v60);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v85(v46 + v63, v26, v57);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  v65 = v96;
  sub_23DB6EECC();
  (*(v99 + 32))(v46 + v64, v65, v100);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v105 = 0uLL;
  sub_23DB6EECC();
  v61(v46 + v66, v59, v60);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v105 = nullsub_1;
  *(&v105 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v101;
  sub_23DB6EECC();
  (*(v102 + 32))(v46 + v67, v68, v103);
  v69 = v91;
  v70 = v93;
  v71 = v95;
  v83(v91, v93, v95);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v90, v89, v87, v86, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v94 + 8);
  v73(v70, v71);
  v73(v92, v71);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  v76 = v104;
  *(v75 + 16) = v74;
  *(v75 + 24) = v76;
  v77 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v78 = v77[1];
  *v77 = sub_23DB071F4;
  v77[1] = v75;

  return v72;
}

uint64_t sub_23DB036F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27E2FBBD0 == -1)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
LABEL_5:
        v4 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
        swift_beginAccess();
        v6 = *v4;
        v5 = v4[1];
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C();

        UIAccessibilityPostNotification(0x438u, 0);
        v7 = MEMORY[0x277D764B0];
        sub_23DB05C14(v6, v5, MEMORY[0x277D764B0]);

        sub_23DB05C14(v8, v9, v7);
      }
    }

    else
    {
      swift_once();
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_5;
      }
    }

    v2 = objc_opt_self();
    v3 = sub_23DB7087C();
    [v2 triggerEventCommand_];

    goto LABEL_5;
  }

  return result;
}

uint64_t sub_23DB038B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v102 = *(v1 - 8);
  v103 = v1;
  v2 = *(v102 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v101 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v96 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v88 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v85 = *(v13 - 8);
  v14 = *(v85 + 8);
  MEMORY[0x28223BE20](v13, v15);
  *&v82 = &v80 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v80 = *(v81 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v18);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v80 - v25;
  v27 = sub_23DB6EA8C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v91 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v80 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v80 - v38;
  v40 = sub_23DB04C74(0xD00000000000002ELL, 0x800000023DB87EC0);
  v89 = v41;
  v90 = v40;
  v104 = v0;
  v87 = sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB87EF0);
  v86 = v42;
  sub_23DB6EA7C();
  v43 = type metadata accessor for Page.CollectionFinished(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v93 = v35;
  v94 = v28;
  v47 = *(v28 + 16);
  v92 = v39;
  v95 = v27;
  v84 = v28 + 16;
  v83 = v47;
  v47(v35, v39, v27);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v49 = *(v22 + 32);
  v50 = v21;
  v49(v46 + v48, v26, v21);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v105 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v80 + 32))(v46 + v53, v20, v81);
  *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v105 = 0;
  v55 = v82;
  sub_23DB6EECC();
  (*(v85 + 4))(v46 + v54, v55, v13);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v57 = v50;
  v49(v46 + v56, v26, v50);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v82 = xmmword_23DB74320;
  v105 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v88;
  sub_23DB6EECC();
  v85 = v49;
  v60 = v98;
  v61 = *(v97 + 32);
  v61(v46 + v58, v59, v98);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v105 = v82;
  sub_23DB6EECC();
  v61(v46 + v62, v59, v60);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v85(v46 + v63, v26, v57);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  v65 = v96;
  sub_23DB6EECC();
  (*(v99 + 32))(v46 + v64, v65, v100);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v105 = 0uLL;
  sub_23DB6EECC();
  v61(v46 + v66, v59, v60);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v105 = nullsub_1;
  *(&v105 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v101;
  sub_23DB6EECC();
  (*(v102 + 32))(v46 + v67, v68, v103);
  v69 = v91;
  v70 = v93;
  v71 = v95;
  v83(v91, v93, v95);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v90, v89, v87, v86, MEMORY[0x277D84F90], 0, 0);
  v73 = *(v94 + 8);
  v73(v70, v71);
  v73(v92, v71);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  v76 = v104;
  *(v75 + 16) = v74;
  *(v75 + 24) = v76;
  v77 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v78 = v77[1];
  *v77 = sub_23DB07204;
  v77[1] = v75;

  return v72;
}

uint64_t sub_23DB041F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v3 = *v1;
    v2 = v1[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    UIAccessibilityPostNotification(0x438u, 0);
    v4 = MEMORY[0x277D764B0];
    sub_23DB05C14(v3, v2, MEMORY[0x277D764B0]);

    sub_23DB05C14(v5, v6, v4);
  }

  return result;
}

void sub_23DB04320(char *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v51 = a2;
  v52 = a3;
  v9 = sub_23DB707AC();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23DB707CC();
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23DB707EC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v29 = &v44 - v28;
  v30 = *a1;
  if (a5)
  {
    v47 = v26;
    v48 = v27;
    v46 = v5;
    v31 = sub_23DB6BEA8(&unk_284FE7938);
    if (*(v31 + 16))
    {
      v32 = sub_23DB6B4E4(v30);
      if (v33)
      {
        v34 = *(*(v31 + 56) + 8 * v32);

        sub_23DA5295C();
        v44 = sub_23DB70AEC();
        sub_23DB707DC();
        sub_23DB707FC();
        v35 = *(v48 + 8);
        v48 += 8;
        v45 = v35;
        v35(v23, v47);
        v36 = swift_allocObject();
        *(v36 + 16) = a4 & 1;
        v37 = v51;
        v38 = v52;
        *(v36 + 24) = v46;
        *(v36 + 32) = v37;
        *(v36 + 40) = v38;
        aBlock[4] = sub_23DB05E08;
        aBlock[5] = v36;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23DABB3DC;
        aBlock[3] = &block_descriptor_7;
        v39 = _Block_copy(aBlock);

        sub_23DB707BC();
        v53 = MEMORY[0x277D84F90];
        sub_23DB05EFC(&qword_27E2FE2F0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
        sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
        sub_23DB70C0C();
        v40 = v44;
        MEMORY[0x23EEF6E80](v29, v18, v13, v39);
        _Block_release(v39);

        (*(v50 + 8))(v13, v9);
        (*(v49 + 8))(v18, v14);
        v45(v29, v47);

        return;
      }
    }
  }

  if (a4)
  {
    if (!*MEMORY[0x277CE6CE8])
    {
      __break(1u);
      return;
    }

    v41 = *MEMORY[0x277D76438];
    v42 = *MEMORY[0x277CE6CE8];
    UIAccessibilityPostNotification(v41, v42);
  }

  if (a5)
  {
    if (sub_23DB047DC(v30, &unk_284FE79B8))
    {
      v43 = MEMORY[0x277D764B0];
    }

    else
    {
      v43 = MEMORY[0x277D764B8];
    }

    sub_23DB05C14(v51, v52, v43);
  }
}

uint64_t sub_23DB047DC(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (a2 + 32);
  while (1)
  {
    v6 = *v4++;
    if (v6 < 0)
    {
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      v7 = VCCommandIdentifier.rawValue.getter();
      v9 = v12;
      v10 = VCCommandIdentifier.rawValue.getter();
    }

    else
    {
      if (a1 < 0)
      {
        goto LABEL_4;
      }

      v7 = VOCommandIdentifier.rawValue.getter();
      v9 = v8;
      v10 = VOCommandIdentifier.rawValue.getter();
    }

    if (v7 == v10 && v9 == v11)
    {
      break;
    }

    v5 = sub_23DB70DBC();

    if (v5)
    {
      return 1;
    }

LABEL_4:
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

void sub_23DB048F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*MEMORY[0x277CE6CE8])
  {
    v6 = *MEMORY[0x277D76438];
    v7 = *MEMORY[0x277CE6CE8];
    UIAccessibilityPostNotification(v6, v7);

LABEL_4:
    sub_23DB05C14(a3, a4, MEMORY[0x277D764B0]);
    return;
  }

  __break(1u);
}

void sub_23DB0496C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v8 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  v9 = *(v8 + 40);
  v10 = a1[17];
  if ((a1[16] & 0x80000000) == 0)
  {
    v29 = *(v8 + 40);
    v11 = VOCommandIdentifier.rawValue.getter();
    v13 = v12;
    if (v11 == VOCommandIdentifier.rawValue.getter() && v13 == v14)
    {
      goto LABEL_10;
    }

    v15 = sub_23DB70DBC();

    if (v15)
    {
LABEL_11:
      if (*MEMORY[0x277CE6CE8])
      {
        v20 = *MEMORY[0x277D76438];
        v21 = *MEMORY[0x277CE6CE8];
        UIAccessibilityPostNotification(v20, v21);

        if ((a1[18] & 1) == 0)
        {
          a1[18] = 1;
          v22 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
          [*(v4 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) invalidate];
          v23 = *(v4 + v22);
          *(v4 + v22) = 0;

          *(v4 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
          if (a3)
          {
            UIAccessibilityPostNotification(0x438u, 0);
            sub_23DB05C14(a2, a3, MEMORY[0x277D764B0]);
          }
        }

        return;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }
  }

  if ((v10 & 0x80000000) == 0)
  {
    v16 = VOCommandIdentifier.rawValue.getter();
    v18 = v17;
    if (v16 == VOCommandIdentifier.rawValue.getter() && v18 == v19)
    {
LABEL_10:

      goto LABEL_11;
    }

    v24 = sub_23DB70DBC();

    if (v24)
    {
      goto LABEL_11;
    }
  }

  if (VOCommandIdentifier.rawValue.getter() == 0xD000000000000017 && 0x800000023DB85310 == v25)
  {

    return;
  }

  v26 = sub_23DB70DBC();

  if ((v26 & 1) == 0 && (a1[18] & 1) == 0)
  {
    if (*MEMORY[0x277CE6CC0])
    {
      v27 = *MEMORY[0x277D76438];
      v28 = *MEMORY[0x277CE6CC0];
      UIAccessibilityPostNotification(v27, v28);

      return;
    }

    goto LABEL_25;
  }
}

uint64_t sub_23DB04C74(uint64_t a1, uint64_t a2)
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

    MEMORY[0x23EEF6D00](1936681262, 0xE400000000000000);
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

uint64_t sub_23DB04F2C()
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

            sub_23DB04C74(0xD000000000000022, 0x800000023DB8B9F0);
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

void sub_23DB05124()
{
  v1 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverIOS_subscribers);

  v2 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverIOS_synthesizer);
}

uint64_t AXOnboardingModelVoiceOverIOS.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverIOS_subscribers);

  return v0;
}

uint64_t AXOnboardingModelVoiceOverIOS.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverIOS_subscribers);

  v5 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverIOS_synthesizer);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DB0534C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DB053CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return _AXSVoiceOverTouchSetTypingMode();
}

uint64_t sub_23DB05584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DB05604(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DB05740(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

float sub_23DB059DC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23DB05A6C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t type metadata accessor for AXOnboardingModelVoiceOverIOS()
{
  result = qword_27E2FF460;
  if (!qword_27E2FF460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DB05C14(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v5 = sub_23DB7087C();
  v6 = [v4 initWithString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D0, &unk_23DB7E160);
  inited = swift_initStackObject();
  v8 = MEMORY[0x277D764E8];
  *(inited + 16) = xmmword_23DB73BA0;
  v9 = *v8;
  *(inited + 32) = *v8;
  v10 = *a3;
  type metadata accessor for UIAccessibilityPriority(0);
  *(inited + 64) = v11;
  *(inited + 40) = v10;
  v12 = v9;
  v13 = v10;
  sub_23DB6BC44(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE1D8, &qword_23DB7A4F0);
  type metadata accessor for Key(0);
  sub_23DB05EFC(&qword_27E2FBE30, type metadata accessor for Key);
  v14 = sub_23DB7080C();

  [v6 setAttributes:v14 range:{0, objc_msgSend(v6, sel_length)}];

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v6);
}

uint64_t sub_23DB05DC8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DB05E38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB036F8();
}

uint64_t sub_23DB05EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DB05F48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAFE9F8();
}

uint64_t sub_23DB05F50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAFEBB0();
}

uint64_t sub_23DB05F58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAFF1CC();
}

uint64_t sub_23DB05F68(uint64_t a1, unint64_t *a2)
{
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v7 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  v8 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v2 = *a1;
  if (v8 >= *(*a1 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v44 = a2;
  v49 = a1;
  v4 = *(v7 + 40);
  result = type metadata accessor for CommandToPractice(0);
  v3 = result;
  v47 = (*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80);
  v43 = *(*(result - 8) + 72);
  a1 = v43 * v8;
  v10 = v2 + v47 + v43 * v8;
  v11 = v10[17];
  v45 = v10[*(result + 40)];
  v46 = v10[*(result + 44)];
  if ((v10[16] & 0x80000000) == 0)
  {
    v12 = v4;
    v50 = v4;
    v13 = VOCommandIdentifier.rawValue.getter();
    v15 = v14;
    if (v13 == VOCommandIdentifier.rawValue.getter() && v15 == v16)
    {
LABEL_12:

      v4 = v12;
      goto LABEL_13;
    }

    v17 = sub_23DB70DBC();

    v4 = v12;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  if (v11 < 0)
  {
    return result;
  }

  v12 = v4;
  v50 = v4;
  v18 = VOCommandIdentifier.rawValue.getter();
  v20 = v19;
  if (v18 == VOCommandIdentifier.rawValue.getter() && v20 == v21)
  {
    goto LABEL_12;
  }

  v37 = sub_23DB70DBC();

  v4 = v12;
  if ((v37 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  if (v8 >= v2[2])
  {
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_23DAC8B24(v2);
    v2 = result;
    goto LABEL_16;
  }

  if (v10[18])
  {
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  v22 = v2[2];
  if (v8 >= v22)
  {
    __break(1u);
    goto LABEL_36;
  }

  v23 = v49;
  *(v2 + v47 + a1 + 18) = 1;
  *v49 = v2;
  v24 = v8 + 1;
  if (v24 != v22)
  {
    *v44 = v24;
    if (v24 < v22)
    {
      v28 = v2 + v47 + v43 * v24;
      v29 = &v28[*(v3 + 52)];
      v30 = *(v29 + 1);
      v42 = v4;
      if (v30)
      {
        v48 = *v29;

        sub_23DB04C74(0xD000000000000036, 0x800000023DB88150);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
        result = swift_allocObject();
        *(result + 16) = xmmword_23DB78D60;
        if (v24 >= v2[2])
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v31 = result;
        v32 = *v28;
        v33 = *(v28 + 1);
        v34 = MEMORY[0x277D837D0];
        *(result + 56) = MEMORY[0x277D837D0];
        v35 = sub_23DA40598();
        v31[4] = v32;
        v31[5] = v33;
        v31[12] = v34;
        v31[13] = v35;
        v31[8] = v35;
        v31[9] = v48;
        v31[10] = v30;

        v25 = sub_23DB708CC();
        v27 = v36;
        v23 = v49;
      }

      else
      {
        sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB88120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
        result = swift_allocObject();
        *(result + 16) = xmmword_23DB73BA0;
        if (v24 >= v2[2])
        {
LABEL_39:
          __break(1u);
          return result;
        }

        v38 = result;
        v39 = *v28;
        v40 = *(v28 + 1);
        *(result + 56) = MEMORY[0x277D837D0];
        *(result + 64) = sub_23DA40598();
        *(v38 + 32) = v39;
        *(v38 + 40) = v40;

        v25 = sub_23DB708CC();
        v27 = v41;
      }

      v4 = v42;
      if (v24 < v2[2])
      {
        v28[19] = 1;
        *v23 = v2;
        goto LABEL_29;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v25 = sub_23DB04C74(0xD000000000000031, 0x800000023DB88190);
  v27 = v26;
LABEL_29:
  v50 = v4;
  sub_23DB04320(&v50, v25, v27, v45, v46);
}

void sub_23DB064D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23DAFD6C0();
}

uint64_t sub_23DB0652C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_23DB06564()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23DAFD7F8();
}

uint64_t sub_23DB065BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAFD930();
}

uint64_t sub_23DB06674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB0672C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DB0678C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAFCBCC();
}

uint64_t sub_23DB0679C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAFBC28();
}

uint64_t sub_23DB067A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAFACE4();
}

uint64_t sub_23DB067AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF9A98();
}

uint64_t sub_23DB067B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF88E4();
}

uint64_t sub_23DB067BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF5814();
}

uint64_t sub_23DB067D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF779C();
}

uint64_t sub_23DB067E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF61F0();
}

uint64_t sub_23DB068E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF531C();
}

uint64_t sub_23DB068E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF54BC();
}

size_t sub_23DB06990()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF7584();
}

uint64_t sub_23DB069AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB041F0();
}

uint64_t sub_23DB069C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAEDAC0();
}

uint64_t sub_23DB06AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF3400();
}

uint64_t sub_23DB06AF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF36E4();
}

uint64_t sub_23DB06AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF58, &unk_23DB77960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DB06B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandToPractice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DB06C20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAEA36C();
}

uint64_t sub_23DB06C3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF1B70();
}

uint64_t sub_23DB06C94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAF0208();
}

size_t sub_23DB06C9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAEEDC0();
}

uint64_t sub_23DB06CA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAEF010();
}

uint64_t sub_23DB06D9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAED5F8();
}

uint64_t sub_23DB06DA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAED874();
}

uint64_t sub_23DB06E20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAEBAB4();
}

uint64_t sub_23DB06E28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAEC0E0();
}

uint64_t sub_23DB06F44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAE8AA4();
}

uint64_t sub_23DB07034()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAE60A4();
}

size_t sub_23DB07050()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAE67B4();
}

uint64_t sub_23DB0706C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DAE500C();
}

uint64_t sub_23DB07240@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v433 = a2;
  v346 = type metadata accessor for PracticeVOTapToSpeakView(0);
  v3 = *(*(v346 - 8) + 64);
  MEMORY[0x28223BE20](v346, v4);
  v343 = &v339 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF488, &qword_23DB7EED8);
  v6 = *(*(v342 - 8) + 64);
  MEMORY[0x28223BE20](v342, v7);
  v345 = &v339 - v8;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF490, &qword_23DB7EEE0);
  v9 = *(*(v357 - 8) + 64);
  MEMORY[0x28223BE20](v357, v10);
  v347 = &v339 - v11;
  v344 = type metadata accessor for PracticeVOSliderView(0);
  v12 = *(*(v344 - 8) + 64);
  MEMORY[0x28223BE20](v344, v13);
  v341 = &v339 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF498, &qword_23DB7EEE8);
  v15 = *(*(v360 - 8) + 64);
  MEMORY[0x28223BE20](v360, v16);
  v359 = &v339 - v17;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4A0, &qword_23DB7EEF0);
  v18 = *(*(v354 - 8) + 64);
  MEMORY[0x28223BE20](v354, v19);
  v353 = &v339 - v20;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4A8, &qword_23DB7EEF8);
  v21 = *(*(v349 - 8) + 64);
  MEMORY[0x28223BE20](v349, v22);
  v350 = &v339 - v23;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4B0, &qword_23DB7EF00);
  v24 = *(*(v355 - 8) + 64);
  MEMORY[0x28223BE20](v355, v25);
  v352 = &v339 - v26;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4B8, &qword_23DB7EF08);
  v27 = *(*(v358 - 8) + 64);
  MEMORY[0x28223BE20](v358, v28);
  v356 = &v339 - v29;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4C0, &unk_23DB7EF10);
  v30 = *(*(v430 - 8) + 64);
  MEMORY[0x28223BE20](v430, v31);
  v361 = &v339 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v363 = &v339 - v36;
  v348 = type metadata accessor for PracticeVOSingleButtonView(0);
  v37 = *(*(v348 - 8) + 64);
  MEMORY[0x28223BE20](v348, v38);
  v362 = (&v339 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40, v41);
  v351 = &v339 - v42;
  v368 = type metadata accessor for PracticeVOGridView(0);
  v43 = *(*(v368 - 8) + 64);
  MEMORY[0x28223BE20](v368, v44);
  v364 = &v339 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4C8, &qword_23DB7EF20);
  v46 = *(*(v365 - 8) + 64);
  MEMORY[0x28223BE20](v365, v47);
  v366 = &v339 - v48;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4D0, &qword_23DB7EF28);
  v49 = *(*(v373 - 8) + 64);
  MEMORY[0x28223BE20](v373, v50);
  v367 = &v339 - v51;
  v370 = type metadata accessor for PracticeVOScrollView(0);
  v52 = *(*(v370 - 1) + 64);
  MEMORY[0x28223BE20](v370, v53);
  v369 = &v339 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4D8, &qword_23DB7EF30);
  v55 = *(*(v371 - 8) + 64);
  MEMORY[0x28223BE20](v371, v56);
  v372 = (&v339 - v57);
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4E0, &qword_23DB7EF38);
  v58 = *(*(v396 - 8) + 64);
  MEMORY[0x28223BE20](v396, v59);
  v374 = &v339 - v60;
  v380 = type metadata accessor for PracticeVOTypingView(0);
  v61 = *(*(v380 - 8) + 64);
  MEMORY[0x28223BE20](v380, v62);
  v375 = &v339 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4E8, &qword_23DB7EF40);
  v64 = *(*(v377 - 8) + 64);
  MEMORY[0x28223BE20](v377, v65);
  v379 = &v339 - v66;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4F0, &qword_23DB7EF48);
  v67 = *(*(v390 - 8) + 64);
  MEMORY[0x28223BE20](v390, v68);
  v381 = &v339 - v69;
  v378 = type metadata accessor for PracticeVOCustomActionView(0);
  v70 = *(*(v378 - 8) + 64);
  MEMORY[0x28223BE20](v378, v71);
  v376 = &v339 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4F8, &qword_23DB7EF50);
  v73 = *(*(v393 - 8) + 64);
  MEMORY[0x28223BE20](v393, v74);
  v392 = &v339 - v75;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF500, &qword_23DB7EF58);
  v76 = *(*(v387 - 8) + 64);
  MEMORY[0x28223BE20](v387, v77);
  v389 = &v339 - v78;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF508, &qword_23DB7EF60);
  v79 = *(*(v384 - 8) + 64);
  MEMORY[0x28223BE20](v384, v80);
  v385 = (&v339 - v81);
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF510, &qword_23DB7EF68);
  v82 = *(*(v388 - 8) + 64);
  MEMORY[0x28223BE20](v388, v83);
  v386 = &v339 - v84;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF518, &qword_23DB7EF70);
  v85 = *(*(v394 - 8) + 64);
  MEMORY[0x28223BE20](v394, v86);
  v391 = &v339 - v87;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF520, &qword_23DB7EF78);
  v88 = *(*(v427 - 8) + 64);
  MEMORY[0x28223BE20](v427, v89);
  v395 = &v339 - v90;
  v383 = type metadata accessor for PracticeVOMagicTapButtonView(0);
  v91 = *(*(v383 - 8) + 64);
  MEMORY[0x28223BE20](v383, v92);
  v382 = &v339 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = type metadata accessor for PracticeUneditableTextVOView(0);
  v94 = *(*(v399 - 8) + 64);
  MEMORY[0x28223BE20](v399, v95);
  v415 = &v339 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF528, &qword_23DB7EF80);
  v97 = *(*(v397 - 8) + 64);
  MEMORY[0x28223BE20](v397, v98);
  v398 = (&v339 - v99);
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF530, &qword_23DB7EF88);
  v100 = *(*(v408 - 8) + 64);
  MEMORY[0x28223BE20](v408, v101);
  v400 = &v339 - v102;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF538, &qword_23DB7EF90);
  v103 = *(*(v405 - 8) + 64);
  MEMORY[0x28223BE20](v405, v104);
  v407 = &v339 - v105;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF540, &qword_23DB7EF98);
  v106 = *(*(v402 - 8) + 64);
  MEMORY[0x28223BE20](v402, v107);
  v410 = &v339 - v108;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF548, &qword_23DB7EFA0);
  v109 = *(*(v406 - 8) + 64);
  MEMORY[0x28223BE20](v406, v110);
  v404 = &v339 - v111;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF550, &qword_23DB7EFA8);
  v112 = *(*(v423 - 8) + 64);
  MEMORY[0x28223BE20](v423, v113);
  v409 = &v339 - v114;
  v403 = type metadata accessor for PracticeVOContextualMenuView(0);
  v115 = *(*(v403 - 8) + 64);
  MEMORY[0x28223BE20](v403, v116);
  v401 = &v339 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF558, &qword_23DB7EFB0);
  v118 = *(*(v411 - 8) + 64);
  MEMORY[0x28223BE20](v411, v119);
  v413 = (&v339 - v120);
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF560, &qword_23DB7EFB8);
  v121 = *(*(v419 - 8) + 64);
  MEMORY[0x28223BE20](v419, v122);
  v414 = &v339 - v123;
  v412 = type metadata accessor for PracticeVOTablesView(0);
  v124 = *(*(v412 - 8) + 64);
  MEMORY[0x28223BE20](v412, v125);
  v127 = &v339 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = type metadata accessor for PracticeVoiceOverHeadersView(0);
  v128 = *(*(v416 - 8) + 64);
  MEMORY[0x28223BE20](v416, v129);
  v131 = &v339 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF568, &qword_23DB7EFC0);
  v132 = *(*(v428 - 8) + 64);
  MEMORY[0x28223BE20](v428, v133);
  v432 = &v339 - v134;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF570, &qword_23DB7EFC8);
  v135 = *(*(v425 - 8) + 64);
  MEMORY[0x28223BE20](v425, v136);
  v424 = &v339 - v137;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF578, &qword_23DB7EFD0);
  v138 = *(*(v420 - 8) + 64);
  MEMORY[0x28223BE20](v420, v139);
  v422 = &v339 - v140;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF580, &qword_23DB7EFD8);
  v141 = *(*(v417 - 8) + 64);
  MEMORY[0x28223BE20](v417, v142);
  v144 = &v339 - v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF588, &qword_23DB7EFE0);
  v146 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145, v147);
  v149 = &v339 - v148;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF590, &qword_23DB7EFE8);
  v150 = *(*(v418 - 8) + 64);
  MEMORY[0x28223BE20](v418, v151);
  v153 = &v339 - v152;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF598, &qword_23DB7EFF0);
  v154 = *(*(v421 - 8) + 64);
  MEMORY[0x28223BE20](v421, v155);
  v157 = &v339 - v156;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF5A0, &qword_23DB7EFF8);
  v158 = *(*(v426 - 8) + 64);
  MEMORY[0x28223BE20](v426, v159);
  v161 = &v339 - v160;
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF5A8, &qword_23DB7F000);
  v162 = *(*(v429 - 8) + 64);
  MEMORY[0x28223BE20](v429, v163);
  v431 = &v339 - v164;
  type metadata accessor for Page.PracticeVOBox(0);
  v434 = a1;
  if (swift_dynamicCastClass())
  {
    KeyPath = swift_getKeyPath();
    sub_23DB0C6AC(&qword_27E2FF778, type metadata accessor for Page.PracticeVOBox);

    v166 = sub_23DB6F1EC();
    v168 = v167;
    v435 = 0;
    sub_23DB7037C();
    v169 = v439;
    *v149 = v166;
    *(v149 + 1) = v168;
    v415 = KeyPath;
    *(v149 + 2) = KeyPath;
    v149[24] = 0;
    *(v149 + 2) = v169;
    swift_storeEnumTagMultiPayload();
    sub_23DB0CA40();
    sub_23DB0C6AC(&qword_27E2FF610, type metadata accessor for PracticeVoiceOverHeadersView);

    sub_23DB6F79C();
    sub_23DA0E2B4(v153, v144, &qword_27E2FF590, &qword_23DB7EFE8);
    swift_storeEnumTagMultiPayload();
    sub_23DB0C984();
    sub_23DB0CA94();
    sub_23DB6F79C();
    sub_23DA17988(v153, &qword_27E2FF590, &qword_23DB7EFE8);
    sub_23DA0E2B4(v157, v422, &qword_27E2FF598, &qword_23DB7EFF0);
    swift_storeEnumTagMultiPayload();
    sub_23DB0C8F8();
    sub_23DB0CBA4();
    sub_23DB6F79C();
    sub_23DA17988(v157, &qword_27E2FF598, &qword_23DB7EFF0);
    sub_23DA0E2B4(v161, v424, &qword_27E2FF5A0, &qword_23DB7EFF8);
    swift_storeEnumTagMultiPayload();
    sub_23DB0C86C();
    sub_23DB0CE50();
    v170 = v431;
    sub_23DB6F79C();
    sub_23DA17988(v161, &qword_27E2FF5A0, &qword_23DB7EFF8);
    sub_23DA0E2B4(v170, v432, &qword_27E2FF5A8, &qword_23DB7F000);
    swift_storeEnumTagMultiPayload();
    sub_23DB0C7E0();
    sub_23DB0D410();
    sub_23DB6F79C();

    v171 = v170;
LABEL_3:
    v172 = &qword_27E2FF5A8;
    v173 = &qword_23DB7F000;
    return sub_23DA17988(v171, v172, v173);
  }

  v339 = v153;
  v175 = v127;
  v340 = v157;
  v176 = v415;
  type metadata accessor for Page.PracticeVOWithText(0);
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for Page.PracticeVOTables(0);
    if (swift_dynamicCastClass())
    {
      v186 = swift_getKeyPath();
      v187 = *(v412 + 24);

      sub_23DB6F91C();
      sub_23DB0C6AC(&qword_27E2FF768, type metadata accessor for Page.PracticeVOTables);
      *v127 = sub_23DB6F1EC();
      *(v127 + 1) = v188;
      *(v127 + 2) = v186;
      v127[24] = 0;
      sub_23DB0D4A4(v127, v413, type metadata accessor for PracticeVOTablesView);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF620, type metadata accessor for PracticeVOTablesView);
      sub_23DB0CB50();
      v189 = v414;
      sub_23DB6F79C();
      sub_23DA0E2B4(v189, v144, &qword_27E2FF560, &qword_23DB7EFB8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C984();
      sub_23DB0CA94();
      v190 = v340;
      sub_23DB6F79C();
      sub_23DA17988(v189, &qword_27E2FF560, &qword_23DB7EFB8);
      sub_23DA0E2B4(v190, v422, &qword_27E2FF598, &qword_23DB7EFF0);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      sub_23DB6F79C();
      sub_23DA17988(v190, &qword_27E2FF598, &qword_23DB7EFF0);
      sub_23DA0E2B4(v161, v424, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      v191 = v431;
      sub_23DB6F79C();
      sub_23DA17988(v161, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v191, v432, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();
      sub_23DA17988(v191, &qword_27E2FF5A8, &qword_23DB7F000);
      v192 = type metadata accessor for PracticeVOTablesView;
LABEL_10:
      v184 = v192;
      v185 = v175;
      return sub_23DB0D50C(v185, v184);
    }

    type metadata accessor for Page.PracticeVOKeyboardCommand(0);
    v193 = swift_dynamicCastClass();
    v195 = v431;
    v194 = v432;
    if (v193)
    {
      sub_23DB0C6AC(&qword_27E2FF760, type metadata accessor for Page.PracticeVOKeyboardCommand);

      v196 = sub_23DB6F1EC();
      v197 = v413;
      *v413 = v196;
      v197[1] = v198;
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF620, type metadata accessor for PracticeVOTablesView);
      sub_23DB0CB50();

      v199 = v414;
      sub_23DB6F79C();
      sub_23DA0E2B4(v199, v144, &qword_27E2FF560, &qword_23DB7EFB8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C984();
      sub_23DB0CA94();
      v200 = v340;
      sub_23DB6F79C();
      sub_23DA17988(v199, &qword_27E2FF560, &qword_23DB7EFB8);
      sub_23DA0E2B4(v200, v422, &qword_27E2FF598, &qword_23DB7EFF0);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      sub_23DB6F79C();
      sub_23DA17988(v200, &qword_27E2FF598, &qword_23DB7EFF0);
      sub_23DA0E2B4(v161, v424, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      sub_23DB6F79C();
      sub_23DA17988(v161, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v195, v194, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();

      v171 = v195;
      goto LABEL_3;
    }

    type metadata accessor for Page.PracticeVOContextualMenu(0);
    if (swift_dynamicCastClass())
    {
      v201 = swift_getKeyPath();
      v202 = *(v403 + 24);

      v203 = v401;
      sub_23DB6F91C();
      sub_23DB0C6AC(&qword_27E2FF758, type metadata accessor for Page.PracticeVOContextualMenu);
      *v203 = sub_23DB6F1EC();
      *(v203 + 8) = v204;
      *(v203 + 16) = v201;
      *(v203 + 24) = 0;
      sub_23DB0D4A4(v203, v410, type metadata accessor for PracticeVOContextualMenuView);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF640, type metadata accessor for PracticeVOContextualMenuView);
      sub_23DB0CCEC();
      v205 = v195;
      v206 = v404;
      sub_23DB6F79C();
      sub_23DA0E2B4(v206, v407, &qword_27E2FF548, &qword_23DB7EFA0);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CC30();
      sub_23DB0CD40();
      v207 = v409;
      sub_23DB6F79C();
      sub_23DA17988(v206, &qword_27E2FF548, &qword_23DB7EFA0);
      sub_23DA0E2B4(v207, v422, &qword_27E2FF550, &qword_23DB7EFA8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      sub_23DB6F79C();
      sub_23DA17988(v207, &qword_27E2FF550, &qword_23DB7EFA8);
      sub_23DA0E2B4(v161, v424, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      sub_23DB6F79C();
      sub_23DA17988(v161, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v205, v432, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();
      sub_23DA17988(v205, &qword_27E2FF5A8, &qword_23DB7F000);
      v184 = type metadata accessor for PracticeVOContextualMenuView;
      v185 = v203;
      return sub_23DB0D50C(v185, v184);
    }

    type metadata accessor for Page.PracticeVOOnlyCommands(0);
    v208 = swift_dynamicCastClass();
    v209 = v410;
    if (v208)
    {
      v210 = swift_getKeyPath();
      sub_23DB0C6AC(&qword_27E2FF750, type metadata accessor for Page.PracticeVOOnlyCommands);

      v211 = sub_23DB6F1EC();
      v213 = v212;
      type metadata accessor for NavigationModel();
      sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel);
      v214 = sub_23DB6F39C();
      *v209 = v211;
      *(v209 + 8) = v213;
      v419 = v210;
      *(v209 + 16) = v210;
      *(v209 + 24) = 0;
      *(v209 + 32) = v214;
      *(v209 + 40) = v215;
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF640, type metadata accessor for PracticeVOContextualMenuView);
      sub_23DB0CCEC();

      v216 = v404;
      sub_23DB6F79C();
      sub_23DA0E2B4(v216, v407, &qword_27E2FF548, &qword_23DB7EFA0);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CC30();
      sub_23DB0CD40();
      v217 = v409;
      sub_23DB6F79C();
      sub_23DA17988(v216, &qword_27E2FF548, &qword_23DB7EFA0);
      sub_23DA0E2B4(v217, v422, &qword_27E2FF550, &qword_23DB7EFA8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      sub_23DB6F79C();
      sub_23DA17988(v217, &qword_27E2FF550, &qword_23DB7EFA8);
      sub_23DA0E2B4(v161, v424, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      v218 = v431;
      sub_23DB6F79C();
      sub_23DA17988(v161, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v218, v432, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();

      v171 = v218;
      v172 = &qword_27E2FF5A8;
      v173 = &qword_23DB7F000;
      return sub_23DA17988(v171, v172, v173);
    }

    type metadata accessor for Page.PracticeVOSingleGesture(0);
    if (swift_dynamicCastClass())
    {
      sub_23DB0C6AC(&qword_27E2FF748, type metadata accessor for Page.PracticeVOSingleGesture);

      v219 = sub_23DB6F1EC();
      v221 = v220;
      type metadata accessor for NavigationModel();
      sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel);
      v222 = sub_23DB6F39C();
      v223 = v398;
      *v398 = v219;
      v223[1] = v221;
      v434 = v221;
      v223[2] = v222;
      v223[3] = v224;
      swift_storeEnumTagMultiPayload();
      sub_23DB0CDFC();
      sub_23DB0C6AC(&qword_27E2FF660, type metadata accessor for PracticeUneditableTextVOView);

      v225 = v400;
      sub_23DB6F79C();
      sub_23DA0E2B4(v225, v407, &qword_27E2FF530, &qword_23DB7EF88);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CC30();
      sub_23DB0CD40();
      v226 = v409;
      sub_23DB6F79C();
      sub_23DA17988(v225, &qword_27E2FF530, &qword_23DB7EF88);
      sub_23DA0E2B4(v226, v422, &qword_27E2FF550, &qword_23DB7EFA8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      v227 = v161;
      sub_23DB6F79C();
      sub_23DA17988(v226, &qword_27E2FF550, &qword_23DB7EFA8);
      sub_23DA0E2B4(v161, v424, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      v228 = v431;
      sub_23DB6F79C();
      sub_23DA17988(v227, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v228, v194, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();
    }

    else
    {
      type metadata accessor for Page.PracticeUneditableTextVO(0);
      if (swift_dynamicCastClass())
      {
        v229 = swift_getKeyPath();
        v230 = v194;
        v231 = *(v399 + 24);

        sub_23DB6F91C();
        sub_23DB0C6AC(&qword_27E2FF740, type metadata accessor for Page.PracticeUneditableTextVO);
        *v176 = sub_23DB6F1EC();
        *(v176 + 8) = v232;
        *(v176 + 16) = v229;
        *(v176 + 24) = 0;
        sub_23DB0D4A4(v176, v398, type metadata accessor for PracticeUneditableTextVOView);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CDFC();
        sub_23DB0C6AC(&qword_27E2FF660, type metadata accessor for PracticeUneditableTextVOView);
        v233 = v400;
        sub_23DB6F79C();
        sub_23DA0E2B4(v233, v407, &qword_27E2FF530, &qword_23DB7EF88);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CC30();
        sub_23DB0CD40();
        v234 = v409;
        sub_23DB6F79C();
        sub_23DA17988(v233, &qword_27E2FF530, &qword_23DB7EF88);
        sub_23DA0E2B4(v234, v422, &qword_27E2FF550, &qword_23DB7EFA8);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C8F8();
        sub_23DB0CBA4();
        sub_23DB6F79C();
        sub_23DA17988(v234, &qword_27E2FF550, &qword_23DB7EFA8);
        sub_23DA0E2B4(v161, v424, &qword_27E2FF5A0, &qword_23DB7EFF8);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C86C();
        sub_23DB0CE50();
        v235 = v431;
        sub_23DB6F79C();
        sub_23DA17988(v161, &qword_27E2FF5A0, &qword_23DB7EFF8);
        sub_23DA0E2B4(v235, v230, &qword_27E2FF5A8, &qword_23DB7F000);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C7E0();
        sub_23DB0D410();
        sub_23DB6F79C();
        sub_23DA17988(v235, &qword_27E2FF5A8, &qword_23DB7F000);
        v184 = type metadata accessor for PracticeUneditableTextVOView;
        v185 = v176;
        return sub_23DB0D50C(v185, v184);
      }

      type metadata accessor for Page.PracticeVOMagicTapButton(0);
      if (swift_dynamicCastClass())
      {
        v236 = swift_getKeyPath();
        v237 = v194;
        v238 = *(v383 + 24);

        v175 = v382;
        sub_23DB6F91C();
        sub_23DB0C6AC(&qword_27E2FF738, type metadata accessor for Page.PracticeVOMagicTapButton);
        *v175 = sub_23DB6F1EC();
        *(v175 + 8) = v239;
        *(v175 + 16) = v236;
        *(v175 + 24) = 0;
        sub_23DB0D4A4(v175, v385, type metadata accessor for PracticeVOMagicTapButtonView);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C6AC(&qword_27E2FF680, type metadata accessor for PracticeVOMagicTapButtonView);
        sub_23DB0D024();
        v240 = v386;
        sub_23DB6F79C();
        sub_23DA0E2B4(v240, v389, &qword_27E2FF510, &qword_23DB7EF68);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CF68();
        sub_23DB0D078();
        v241 = v391;
        sub_23DB6F79C();
        sub_23DA17988(v240, &qword_27E2FF510, &qword_23DB7EF68);
        sub_23DA0E2B4(v241, v392, &qword_27E2FF518, &qword_23DB7EF70);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CEDC();
        sub_23DB0D164();
        v242 = v395;
        sub_23DB6F79C();
        sub_23DA17988(v241, &qword_27E2FF518, &qword_23DB7EF70);
        sub_23DA0E2B4(v242, v424, &qword_27E2FF520, &qword_23DB7EF78);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C86C();
        sub_23DB0CE50();
        v243 = v431;
        sub_23DB6F79C();
        sub_23DA17988(v242, &qword_27E2FF520, &qword_23DB7EF78);
        sub_23DA0E2B4(v243, v237, &qword_27E2FF5A8, &qword_23DB7F000);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C7E0();
        sub_23DB0D410();
        sub_23DB6F79C();
        sub_23DA17988(v243, &qword_27E2FF5A8, &qword_23DB7F000);
        v192 = type metadata accessor for PracticeVOMagicTapButtonView;
        goto LABEL_10;
      }

      type metadata accessor for Page.PracticeVOAnyGesture(0);
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for Page.PracticeVOCustomAction(0);
        if (swift_dynamicCastClass())
        {
          v253 = swift_getKeyPath();
          v254 = *(v378 + 28);

          v131 = v376;
          sub_23DB6F91C();
          sub_23DB0C6AC(&qword_27E2FF728, type metadata accessor for Page.PracticeVOCustomAction);
          *v131 = sub_23DB6F1EC();
          *(v131 + 1) = v255;
          *(v131 + 2) = v253;
          v131[24] = 0;
          v435 = 0;
          sub_23DB7037C();
          v256 = *(&v439 + 1);
          *(v131 + 4) = v439;
          *(v131 + 5) = v256;
          sub_23DB0D4A4(v131, v379, type metadata accessor for PracticeVOCustomActionView);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C6AC(&qword_27E2FF698, type metadata accessor for PracticeVOCustomActionView);
          sub_23DB0C6AC(&qword_27E2FF6A0, type metadata accessor for PracticeVOTypingView);
          v257 = v381;
          sub_23DB6F79C();
          sub_23DA0E2B4(v257, v389, &qword_27E2FF4F0, &qword_23DB7EF48);
          swift_storeEnumTagMultiPayload();
          sub_23DB0CF68();
          sub_23DB0D078();
          v258 = v391;
          sub_23DB6F79C();
          sub_23DA17988(v257, &qword_27E2FF4F0, &qword_23DB7EF48);
          sub_23DA0E2B4(v258, v392, &qword_27E2FF518, &qword_23DB7EF70);
          swift_storeEnumTagMultiPayload();
          sub_23DB0CEDC();
          sub_23DB0D164();
          v259 = v395;
          sub_23DB6F79C();
          sub_23DA17988(v258, &qword_27E2FF518, &qword_23DB7EF70);
          sub_23DA0E2B4(v259, v424, &qword_27E2FF520, &qword_23DB7EF78);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C86C();
          sub_23DB0CE50();
          v260 = v431;
          sub_23DB6F79C();
          sub_23DA17988(v259, &qword_27E2FF520, &qword_23DB7EF78);
          sub_23DA0E2B4(v260, v432, &qword_27E2FF5A8, &qword_23DB7F000);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C7E0();
          sub_23DB0D410();
          sub_23DB6F79C();
          sub_23DA17988(v260, &qword_27E2FF5A8, &qword_23DB7F000);
          v183 = type metadata accessor for PracticeVOCustomActionView;
          goto LABEL_7;
        }

        type metadata accessor for Page.PracticeVOTyping(0);
        if (swift_dynamicCastClass())
        {
          v261 = swift_getKeyPath();
          v262 = *(v380 + 24);

          v131 = v375;
          sub_23DB6F91C();
          sub_23DB0C6AC(&qword_27E2FF720, type metadata accessor for Page.PracticeVOTyping);
          *v131 = sub_23DB6F1EC();
          *(v131 + 1) = v263;
          *(v131 + 2) = v261;
          v131[24] = 0;
          sub_23DB0D4A4(v131, v379, type metadata accessor for PracticeVOTypingView);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C6AC(&qword_27E2FF698, type metadata accessor for PracticeVOCustomActionView);
          sub_23DB0C6AC(&qword_27E2FF6A0, type metadata accessor for PracticeVOTypingView);
          v264 = v381;
          sub_23DB6F79C();
          sub_23DA0E2B4(v264, v389, &qword_27E2FF4F0, &qword_23DB7EF48);
          swift_storeEnumTagMultiPayload();
          sub_23DB0CF68();
          sub_23DB0D078();
          v265 = v391;
          sub_23DB6F79C();
          sub_23DA17988(v264, &qword_27E2FF4F0, &qword_23DB7EF48);
          sub_23DA0E2B4(v265, v392, &qword_27E2FF518, &qword_23DB7EF70);
          swift_storeEnumTagMultiPayload();
          sub_23DB0CEDC();
          sub_23DB0D164();
          v266 = v395;
          sub_23DB6F79C();
          sub_23DA17988(v265, &qword_27E2FF518, &qword_23DB7EF70);
          sub_23DA0E2B4(v266, v424, &qword_27E2FF520, &qword_23DB7EF78);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C86C();
          sub_23DB0CE50();
          v267 = v431;
          sub_23DB6F79C();
          sub_23DA17988(v266, &qword_27E2FF520, &qword_23DB7EF78);
          sub_23DA0E2B4(v267, v432, &qword_27E2FF5A8, &qword_23DB7F000);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C7E0();
          sub_23DB0D410();
          sub_23DB6F79C();
          sub_23DA17988(v267, &qword_27E2FF5A8, &qword_23DB7F000);
          v183 = type metadata accessor for PracticeVOTypingView;
          goto LABEL_7;
        }

        type metadata accessor for Page.PracticeVOTypingSettings(0);
        if (swift_dynamicCastClass())
        {
          v268 = swift_getKeyPath();
          sub_23DB0C6AC(&qword_27E2FF718, type metadata accessor for Page.PracticeVOTypingSettings);

          v435 = sub_23DB6F1EC();
          v436 = v269;
          v437 = v268;
          v438 = 0;
        }

        else
        {
          type metadata accessor for Page.PracticeVOExplanation(0);
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for Page.PracticeVOScroll(0);
            if (swift_dynamicCastClass())
            {
              v279 = swift_getKeyPath();
              v280 = v370;
              v281 = v370[6];

              v282 = v369;
              sub_23DB6F91C();
              v283 = &v282[v280[7]];
              sub_23DB6F91C();
              sub_23DB0C6AC(&qword_27E2FF708, type metadata accessor for Page.PracticeVOScroll);
              *v282 = sub_23DB6F1EC();
              *(v282 + 1) = v284;
              *(v282 + 2) = v279;
              v282[24] = 0;
              v285 = v280[8];
              if (qword_27E2FBB68 != -1)
              {
                swift_once();
              }

              *&v369[v285] = qword_27E30A640;
              v286 = v370[9];
              v287 = qword_27E2FBB70;

              if (v287 != -1)
              {
                swift_once();
              }

              v288 = v369;
              *&v369[v286] = qword_27E30A648;
              v289 = v370;
              *(v288 + v370[10]) = 0x4070C00000000000;
              *(v288 + v289[11]) = 0x4059000000000000;
              *(v288 + v289[12]) = 0x4051800000000000;
              sub_23DB0D4A4(v288, v366, type metadata accessor for PracticeVOScrollView);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C6AC(&qword_27E2FF6D8, type metadata accessor for PracticeVOScrollView);
              sub_23DB0C6AC(&qword_27E2FF5C0, type metadata accessor for PracticeVOGridView);

              v290 = v367;
              sub_23DB6F79C();
              sub_23DA0E2B4(v290, v372, &qword_27E2FF4D0, &qword_23DB7EF28);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF6B8, &qword_23DB7F008);
              sub_23DB0D1F0();
              sub_23DB0D324();
              v291 = v374;
              sub_23DB6F79C();
              sub_23DA17988(v290, &qword_27E2FF4D0, &qword_23DB7EF28);
              sub_23DA0E2B4(v291, v392, &qword_27E2FF4E0, &qword_23DB7EF38);
              swift_storeEnumTagMultiPayload();
              sub_23DB0CEDC();
              sub_23DB0D164();
              v292 = v395;
              sub_23DB6F79C();
              sub_23DA17988(v291, &qword_27E2FF4E0, &qword_23DB7EF38);
              sub_23DA0E2B4(v292, v424, &qword_27E2FF520, &qword_23DB7EF78);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C86C();
              sub_23DB0CE50();
              v293 = v431;
              sub_23DB6F79C();
              sub_23DA17988(v292, &qword_27E2FF520, &qword_23DB7EF78);
              sub_23DA0E2B4(v293, v432, &qword_27E2FF5A8, &qword_23DB7F000);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C7E0();
              sub_23DB0D410();
              sub_23DB6F79C();
              sub_23DA17988(v293, &qword_27E2FF5A8, &qword_23DB7F000);
              v294 = type metadata accessor for PracticeVOScrollView;
            }

            else
            {
              type metadata accessor for Page.PracticeVOGrid(0);
              if (!swift_dynamicCastClass())
              {
                type metadata accessor for Page.PracticeVOSingleButton(0);
                if (swift_dynamicCastClass())
                {

                  sub_23DB6F91C();
                  v307 = swift_getKeyPath();
                  sub_23DB0C6AC(&qword_27E2FF6F8, type metadata accessor for Page.PracticeVOSingleButton);
                  v308 = sub_23DB6F1EC();
                  v309 = v362;
                  *v362 = v308;
                  *(v309 + 1) = v310;
                  v311 = [objc_opt_self() mainScreen];
                  [v311 bounds];
                  v313 = v312;

                  if (v313 >= 850.0)
                  {
                    v321 = [objc_opt_self() currentDevice];
                    v322 = [v321 userInterfaceIdiom];

                    v314 = INFINITY;
                    if (!v322)
                    {
                      v314 = 280.0;
                    }
                  }

                  else
                  {
                    v314 = 280.0;
                  }

                  v323 = v362;
                  v362[2] = v314;
                  v435 = 0x3FF0000000000000;
                  sub_23DB7037C();
                  v324 = *(&v439 + 1);
                  *(v323 + 24) = v439;
                  *(v323 + 32) = v324;
                  v325 = v348;
                  sub_23DA17A54(v363, v323 + *(v348 + 28), &qword_27E2FD4F8, &unk_23DB7D3A0);
                  v326 = v323 + *(v325 + 32);
                  *v326 = v307;
                  *(v326 + 8) = 0;
                  v131 = v351;
                  sub_23DB25CF0(v323, v351, type metadata accessor for PracticeVOSingleButtonView);
                  sub_23DB0D4A4(v131, v350, type metadata accessor for PracticeVOSingleButtonView);
                  swift_storeEnumTagMultiPayload();
                  sub_23DB0C6AC(&qword_27E2FF5C0, type metadata accessor for PracticeVOGridView);
                  sub_23DB0C6AC(&qword_27E2FF5C8, type metadata accessor for PracticeVOSingleButtonView);
                  v327 = v352;
                  sub_23DB6F79C();
                  sub_23DA0E2B4(v327, v353, &qword_27E2FF4B0, &qword_23DB7EF00);
                  swift_storeEnumTagMultiPayload();
                  sub_23DB0C5C0();
                  sub_23DB0C6F4();
                  v328 = v356;
                  sub_23DB6F79C();
                  sub_23DA17988(v327, &qword_27E2FF4B0, &qword_23DB7EF00);
                  sub_23DA0E2B4(v328, v359, &qword_27E2FF4B8, &qword_23DB7EF08);
                  swift_storeEnumTagMultiPayload();
                  sub_23DB0C534();
                  v329 = v361;
                  sub_23DB6F79C();
                  sub_23DA17988(v328, &qword_27E2FF4B8, &qword_23DB7EF08);
                  sub_23DA0E2B4(v329, v432, &qword_27E2FF4C0, &unk_23DB7EF10);
                  swift_storeEnumTagMultiPayload();
                  sub_23DB0C7E0();
                  sub_23DB0D410();
                  sub_23DB6F79C();
                  sub_23DA17988(v329, &qword_27E2FF4C0, &unk_23DB7EF10);
                  v183 = type metadata accessor for PracticeVOSingleButtonView;
                }

                else
                {
                  type metadata accessor for Page.PracticeVOSlider(0);
                  if (swift_dynamicCastClass())
                  {
                    v315 = swift_getKeyPath();
                    v316 = *(v344 + 24);

                    v131 = v341;
                    sub_23DB6F91C();
                    sub_23DB0C6AC(&qword_27E2FF6F0, type metadata accessor for Page.PracticeVOSlider);
                    *v131 = sub_23DB6F1EC();
                    *(v131 + 1) = v317;
                    *(v131 + 2) = v315;
                    v131[24] = 0;
                    sub_23DB0D4A4(v131, v345, type metadata accessor for PracticeVOSliderView);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C6AC(&qword_27E2FF5D8, type metadata accessor for PracticeVOSliderView);
                    sub_23DB0C6AC(&qword_27E2FF5E0, type metadata accessor for PracticeVOTapToSpeakView);
                    v318 = v347;
                    sub_23DB6F79C();
                    sub_23DA0E2B4(v318, v353, &qword_27E2FF490, &qword_23DB7EEE0);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C5C0();
                    sub_23DB0C6F4();
                    v319 = v356;
                    sub_23DB6F79C();
                    sub_23DA17988(v318, &qword_27E2FF490, &qword_23DB7EEE0);
                    sub_23DA0E2B4(v319, v359, &qword_27E2FF4B8, &qword_23DB7EF08);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C534();
                    v320 = v361;
                    sub_23DB6F79C();
                    sub_23DA17988(v319, &qword_27E2FF4B8, &qword_23DB7EF08);
                    sub_23DA0E2B4(v320, v432, &qword_27E2FF4C0, &unk_23DB7EF10);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C7E0();
                    sub_23DB0D410();
                    sub_23DB6F79C();
                    sub_23DA17988(v320, &qword_27E2FF4C0, &unk_23DB7EF10);
                    v183 = type metadata accessor for PracticeVOSliderView;
                  }

                  else
                  {
                    type metadata accessor for Page.PracticeVOTapToSpeak(0);
                    if (!swift_dynamicCastClass())
                    {
                      swift_storeEnumTagMultiPayload();
                      sub_23DB0C534();
                      v338 = v361;
                      sub_23DB6F79C();
                      sub_23DA0E2B4(v338, v432, &qword_27E2FF4C0, &unk_23DB7EF10);
                      swift_storeEnumTagMultiPayload();
                      sub_23DB0C7E0();
                      sub_23DB0D410();
                      sub_23DB6F79C();
                      v171 = v338;
                      v172 = &qword_27E2FF4C0;
                      v173 = &unk_23DB7EF10;
                      return sub_23DA17988(v171, v172, v173);
                    }

                    v330 = swift_getKeyPath();
                    v331 = v346;
                    v332 = *(v346 + 24);

                    v131 = v343;
                    sub_23DB6F91C();
                    v333 = &v131[*(v331 + 28)];
                    sub_23DB6F91C();
                    sub_23DB0C6AC(&qword_27E2FF6E8, type metadata accessor for Page.PracticeVOTapToSpeak);
                    *v131 = sub_23DB6F1EC();
                    *(v131 + 1) = v334;
                    *(v131 + 2) = v330;
                    v131[24] = 0;
                    sub_23DB0D4A4(v131, v345, type metadata accessor for PracticeVOTapToSpeakView);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C6AC(&qword_27E2FF5D8, type metadata accessor for PracticeVOSliderView);
                    sub_23DB0C6AC(&qword_27E2FF5E0, type metadata accessor for PracticeVOTapToSpeakView);
                    v335 = v347;
                    sub_23DB6F79C();
                    sub_23DA0E2B4(v335, v353, &qword_27E2FF490, &qword_23DB7EEE0);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C5C0();
                    sub_23DB0C6F4();
                    v336 = v356;
                    sub_23DB6F79C();
                    sub_23DA17988(v335, &qword_27E2FF490, &qword_23DB7EEE0);
                    sub_23DA0E2B4(v336, v359, &qword_27E2FF4B8, &qword_23DB7EF08);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C534();
                    v337 = v361;
                    sub_23DB6F79C();
                    sub_23DA17988(v336, &qword_27E2FF4B8, &qword_23DB7EF08);
                    sub_23DA0E2B4(v337, v432, &qword_27E2FF4C0, &unk_23DB7EF10);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C7E0();
                    sub_23DB0D410();
                    sub_23DB6F79C();
                    sub_23DA17988(v337, &qword_27E2FF4C0, &unk_23DB7EF10);
                    v183 = type metadata accessor for PracticeVOTapToSpeakView;
                  }
                }

                goto LABEL_7;
              }

              v295 = swift_getKeyPath();
              v296 = v368;
              v297 = *(v368 + 24);

              v298 = v364;
              sub_23DB6F91C();
              sub_23DB0C6AC(&qword_27E2FF700, type metadata accessor for Page.PracticeVOGrid);
              *v298 = sub_23DB6F1EC();
              *(v298 + 1) = v299;
              *(v298 + 2) = v295;
              v298[24] = 0;
              v300 = *(v296 + 28);
              if (qword_27E2FBB68 != -1)
              {
                swift_once();
              }

              *&v364[v300] = qword_27E30A640;
              v301 = *(v368 + 32);
              v302 = qword_27E2FBB70;

              if (v302 != -1)
              {
                swift_once();
              }

              v288 = v364;
              *&v364[v301] = qword_27E30A648;
              sub_23DB0D4A4(v288, v366, type metadata accessor for PracticeVOGridView);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C6AC(&qword_27E2FF6D8, type metadata accessor for PracticeVOScrollView);
              sub_23DB0C6AC(&qword_27E2FF5C0, type metadata accessor for PracticeVOGridView);

              v303 = v367;
              sub_23DB6F79C();
              sub_23DA0E2B4(v303, v372, &qword_27E2FF4D0, &qword_23DB7EF28);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF6B8, &qword_23DB7F008);
              sub_23DB0D1F0();
              sub_23DB0D324();
              v304 = v374;
              sub_23DB6F79C();
              sub_23DA17988(v303, &qword_27E2FF4D0, &qword_23DB7EF28);
              sub_23DA0E2B4(v304, v392, &qword_27E2FF4E0, &qword_23DB7EF38);
              swift_storeEnumTagMultiPayload();
              sub_23DB0CEDC();
              sub_23DB0D164();
              v305 = v395;
              sub_23DB6F79C();
              sub_23DA17988(v304, &qword_27E2FF4E0, &qword_23DB7EF38);
              sub_23DA0E2B4(v305, v424, &qword_27E2FF520, &qword_23DB7EF78);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C86C();
              sub_23DB0CE50();
              v306 = v431;
              sub_23DB6F79C();
              sub_23DA17988(v305, &qword_27E2FF520, &qword_23DB7EF78);
              sub_23DA0E2B4(v306, v432, &qword_27E2FF5A8, &qword_23DB7F000);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C7E0();
              sub_23DB0D410();
              sub_23DB6F79C();
              sub_23DA17988(v306, &qword_27E2FF5A8, &qword_23DB7F000);
              v294 = type metadata accessor for PracticeVOGridView;
            }

            v184 = v294;
            v185 = v288;
            return sub_23DB0D50C(v185, v184);
          }

          v270 = swift_getKeyPath();
          sub_23DB0C6AC(&qword_27E2FF710, type metadata accessor for Page.PracticeVOExplanation);

          v435 = sub_23DB6F1EC();
          v436 = v271;
          v437 = v270;
          v438 = 256;
        }

        sub_23DB0D27C();
        sub_23DB0D2D0();

        sub_23DB6F79C();
        v272 = v440;
        v273 = v441;
        v274 = v442;
        v275 = v372;
        *v372 = v439;
        *(v275 + 2) = v272;
        *(v275 + 24) = v273;
        *(v275 + 25) = v274;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF6B8, &qword_23DB7F008);
        sub_23DB0D1F0();
        sub_23DB0D324();
        v276 = v374;
        sub_23DB6F79C();
        sub_23DA0E2B4(v276, v392, &qword_27E2FF4E0, &qword_23DB7EF38);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CEDC();
        sub_23DB0D164();
        v277 = v395;
        sub_23DB6F79C();
        sub_23DA17988(v276, &qword_27E2FF4E0, &qword_23DB7EF38);
        sub_23DA0E2B4(v277, v424, &qword_27E2FF520, &qword_23DB7EF78);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C86C();
        sub_23DB0CE50();
        v278 = v431;
        sub_23DB6F79C();
        sub_23DA17988(v277, &qword_27E2FF520, &qword_23DB7EF78);
        sub_23DA0E2B4(v278, v432, &qword_27E2FF5A8, &qword_23DB7F000);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C7E0();
        sub_23DB0D410();
        sub_23DB6F79C();

        v171 = v278;
LABEL_21:
        v172 = &qword_27E2FF5A8;
        v173 = &qword_23DB7F000;
        return sub_23DA17988(v171, v172, v173);
      }

      sub_23DB0C6AC(&qword_27E2FF730, type metadata accessor for Page.PracticeVOAnyGesture);

      v244 = sub_23DB6F1EC();
      v246 = v245;
      type metadata accessor for NavigationModel();
      sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel);
      v247 = sub_23DB6F39C();
      v248 = v385;
      *v385 = v244;
      v248[1] = v246;
      v248[2] = v247;
      v248[3] = v249;
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF680, type metadata accessor for PracticeVOMagicTapButtonView);
      sub_23DB0D024();

      v250 = v386;
      sub_23DB6F79C();
      sub_23DA0E2B4(v250, v389, &qword_27E2FF510, &qword_23DB7EF68);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CF68();
      sub_23DB0D078();
      v251 = v391;
      sub_23DB6F79C();
      sub_23DA17988(v250, &qword_27E2FF510, &qword_23DB7EF68);
      sub_23DA0E2B4(v251, v392, &qword_27E2FF518, &qword_23DB7EF70);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CEDC();
      sub_23DB0D164();
      v252 = v395;
      sub_23DB6F79C();
      sub_23DA17988(v251, &qword_27E2FF518, &qword_23DB7EF70);
      sub_23DA0E2B4(v252, v424, &qword_27E2FF520, &qword_23DB7EF78);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      v228 = v431;
      sub_23DB6F79C();
      sub_23DA17988(v252, &qword_27E2FF520, &qword_23DB7EF78);
      sub_23DA0E2B4(v228, v194, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();
    }

    v171 = v228;
    goto LABEL_21;
  }

  v177 = swift_getKeyPath();
  v178 = *(v416 + 24);

  sub_23DB6F91C();
  sub_23DB0C6AC(&qword_27E2FF770, type metadata accessor for Page.PracticeVOWithText);
  *v131 = sub_23DB6F1EC();
  *(v131 + 1) = v179;
  *(v131 + 2) = v177;
  v131[24] = 0;
  sub_23DB0D4A4(v131, v149, type metadata accessor for PracticeVoiceOverHeadersView);
  swift_storeEnumTagMultiPayload();
  sub_23DB0CA40();
  sub_23DB0C6AC(&qword_27E2FF610, type metadata accessor for PracticeVoiceOverHeadersView);
  v180 = v339;
  sub_23DB6F79C();
  sub_23DA0E2B4(v180, v144, &qword_27E2FF590, &qword_23DB7EFE8);
  swift_storeEnumTagMultiPayload();
  sub_23DB0C984();
  sub_23DB0CA94();
  v181 = v340;
  sub_23DB6F79C();
  sub_23DA17988(v180, &qword_27E2FF590, &qword_23DB7EFE8);
  sub_23DA0E2B4(v181, v422, &qword_27E2FF598, &qword_23DB7EFF0);
  swift_storeEnumTagMultiPayload();
  sub_23DB0C8F8();
  sub_23DB0CBA4();
  sub_23DB6F79C();
  sub_23DA17988(v181, &qword_27E2FF598, &qword_23DB7EFF0);
  sub_23DA0E2B4(v161, v424, &qword_27E2FF5A0, &qword_23DB7EFF8);
  swift_storeEnumTagMultiPayload();
  sub_23DB0C86C();
  sub_23DB0CE50();
  v182 = v431;
  sub_23DB6F79C();
  sub_23DA17988(v161, &qword_27E2FF5A0, &qword_23DB7EFF8);
  sub_23DA0E2B4(v182, v432, &qword_27E2FF5A8, &qword_23DB7F000);
  swift_storeEnumTagMultiPayload();
  sub_23DB0C7E0();
  sub_23DB0D410();
  sub_23DB6F79C();
  sub_23DA17988(v182, &qword_27E2FF5A8, &qword_23DB7F000);
  v183 = type metadata accessor for PracticeVoiceOverHeadersView;
LABEL_7:
  v184 = v183;
  v185 = v131;
  return sub_23DB0D50C(v185, v184);
}